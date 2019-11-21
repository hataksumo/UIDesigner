using System;
using System.Collections.Generic;
using UnityEngine;

    [ExecuteInEditMode] // Make water live-update even when not in play mode
    public class GlobalReflectionTex : MonoBehaviour
    {
        public enum WaterMode
        {
            Simple = 0,
            Reflective = 1,
        };


        public WaterMode waterMode = WaterMode.Reflective;
        public bool disablePixelLights = true;
        public int textureSize = 256;
        public float clipPlaneOffset = 0.07f;
        public LayerMask reflectLayers = -1;

        private Dictionary<Camera, Camera> m_ReflectionCameras = new Dictionary<Camera, Camera>(); // Camera -> Camera table
        private RenderTexture m_ReflectionTexture;
  
        private WaterMode m_HardwareWaterSupport = WaterMode.Reflective;
        private int m_OldReflectionTextureSize;
        private static bool s_InsideWater;
        public static GlobalReflectionTex _instance;
        void Awake()
        {
            if (_instance == null)
            {
                _instance = this;
            }
        }



        public void OnWillRenderObject()
        {
            if (!enabled || !GetComponent<Renderer>() || !GetComponent<Renderer>().sharedMaterial ||
                !GetComponent<Renderer>().enabled)
            {
                return;
            }

            Camera cam = Camera.current;
            if (!cam)
            {
                return;
            }

            // Safeguard from recursive water reflections.
            if (s_InsideWater)
            {
                return;
            }
            s_InsideWater = true;

            // Actual water rendering mode depends on both the current setting AND
            // the hardware support. There's no point in rendering refraction textures
            // if they won't be visible in the end.
            m_HardwareWaterSupport = FindHardwareWaterSupport();
            WaterMode mode = GetWaterMode();

            Camera reflectionCamera;
            CreateWaterObjects(cam, out reflectionCamera);

            // find out the reflection plane: position and normal in world space
            Vector3 pos = transform.position;
            Vector3 normal = transform.up;

            // Optionally disable pixel lights for reflection/refraction
            int oldPixelLightCount = QualitySettings.pixelLightCount;
            if (disablePixelLights)
            {
                QualitySettings.pixelLightCount = 0;
            }

            UpdateCameraModes(cam, reflectionCamera);

            // Render reflection if needed
            if (mode >= WaterMode.Reflective)
            {
                // Reflect camera around reflection plane
                float d = -Vector3.Dot(normal, pos) - clipPlaneOffset;
                Vector4 reflectionPlane = new Vector4(normal.x, normal.y, normal.z, d);

                Matrix4x4 reflection = Matrix4x4.zero;
                CalculateReflectionMatrix(ref reflection, reflectionPlane);
                Vector3 oldpos = cam.transform.position;
                Vector3 newpos = reflection.MultiplyPoint(oldpos);
                reflectionCamera.worldToCameraMatrix = cam.worldToCameraMatrix * reflection;

                // Setup oblique projection matrix so that near plane is our reflection
                // plane. This way we clip everything below/above it for free.
                Vector4 clipPlane = CameraSpacePlane(reflectionCamera, pos, normal, 1.0f);
                reflectionCamera.projectionMatrix = cam.CalculateObliqueMatrix(clipPlane);

				// Set custom culling matrix from the current camera
				reflectionCamera.cullingMatrix = cam.projectionMatrix * cam.worldToCameraMatrix;

				reflectionCamera.cullingMask = ~(1 << 4) & reflectLayers.value; // never render water layer
                reflectionCamera.targetTexture = m_ReflectionTexture;
                bool oldCulling = GL.invertCulling;
                GL.invertCulling = !oldCulling;
                reflectionCamera.transform.position = newpos;
                Vector3 euler = cam.transform.eulerAngles;
                reflectionCamera.transform.eulerAngles = new Vector3(-euler.x, euler.y, euler.z);
                reflectionCamera.Render();
                reflectionCamera.transform.position = oldpos;
                GL.invertCulling = oldCulling;
                GetComponent<Renderer>().sharedMaterial.SetTexture("_ReflectionTex", m_ReflectionTexture);
            }

          

            // Restore pixel light count
            if (disablePixelLights)
            {
                QualitySettings.pixelLightCount = oldPixelLightCount;
            }

            // Setup shader keywords based on water mode
            switch (mode)
            {
                case WaterMode.Simple:
                    Shader.EnableKeyword("WATER_SIMPLE");
                    Shader.DisableKeyword("WATER_REFLECTIVE");                  
                    break;
                case WaterMode.Reflective:
                    Shader.DisableKeyword("WATER_SIMPLE");
                    Shader.EnableKeyword("WATER_REFLECTIVE");
                    break;
            }

            s_InsideWater = false;
        }


        // Cleanup all the objects we possibly have created
        void OnDisable()
        {
            if (m_ReflectionTexture)
            {
                DestroyImmediate(m_ReflectionTexture);
                m_ReflectionTexture = null;
            }
          
            foreach (var kvp in m_ReflectionCameras)
            {
                DestroyImmediate((kvp.Value).gameObject);
            }
            m_ReflectionCameras.Clear();
    
        }


        // This just sets up some matrices in the material; for really
        // old cards to make water texture scroll.
        void Update()
        {
            if (!GetComponent<Renderer>())
            {
                return;
            }
            Material mat = GetComponent<Renderer>().sharedMaterial;
            if (!mat)
            {
                return;
            }
        }

        void UpdateCameraModes(Camera src, Camera dest)
        {
            if (dest == null)
            {
                return;
            }
            // set water camera to clear the same way as current camera
            dest.clearFlags = src.clearFlags;
            dest.backgroundColor = src.backgroundColor;
            if (src.clearFlags == CameraClearFlags.Skybox)
            {
                Skybox sky = src.GetComponent<Skybox>();
                Skybox mysky = dest.GetComponent<Skybox>();
                if (!sky || !sky.material)
                {
                    mysky.enabled = false;
                }
                else
                {
                    mysky.enabled = true;
                    mysky.material = sky.material;
                }
            }
            // update other values to match current camera.
            // even if we are supplying custom camera&projection matrices,
            // some of values are used elsewhere (e.g. skybox uses far plane)
            dest.farClipPlane = src.farClipPlane;
            dest.nearClipPlane = src.nearClipPlane;
            dest.orthographic = src.orthographic;
            dest.fieldOfView = src.fieldOfView;
            dest.aspect = src.aspect;
            dest.orthographicSize = src.orthographicSize;
        }


        // On-demand create any objects we need for water
        void CreateWaterObjects(Camera currentCamera, out Camera reflectionCamera)
        {
            WaterMode mode = GetWaterMode();

            reflectionCamera = null;
          


            if (mode >= WaterMode.Reflective)
            {
                // Reflection render texture
                if (!m_ReflectionTexture || m_OldReflectionTextureSize != textureSize)
                {
                    if (m_ReflectionTexture)
                    {
                        DestroyImmediate(m_ReflectionTexture);
                    }
                    m_ReflectionTexture = new RenderTexture(textureSize, textureSize, 16);
                    m_ReflectionTexture.name = "__WaterReflection" + GetInstanceID();
                    m_ReflectionTexture.isPowerOfTwo = true;
                    m_ReflectionTexture.hideFlags = HideFlags.DontSave;
                    m_OldReflectionTextureSize = textureSize;
                }

                // Camera for reflection
                m_ReflectionCameras.TryGetValue(currentCamera, out reflectionCamera);
                if (!reflectionCamera) // catch both not-in-dictionary and in-dictionary-but-deleted-GO
                {
                    GameObject go = new GameObject("Water Refl Camera id" + GetInstanceID() + " for " + currentCamera.GetInstanceID(), typeof(Camera), typeof(Skybox));
                    reflectionCamera = go.GetComponent<Camera>();
                    reflectionCamera.enabled = false;
                    reflectionCamera.transform.position = transform.position;
                    reflectionCamera.transform.rotation = transform.rotation;
                    reflectionCamera.gameObject.AddComponent<FlareLayer>();
                    go.hideFlags = HideFlags.HideAndDontSave;
                    m_ReflectionCameras[currentCamera] = reflectionCamera;
                }
            }
        }

        WaterMode GetWaterMode()
        {
            if (m_HardwareWaterSupport < waterMode)
            {
                return m_HardwareWaterSupport;
            }
            return waterMode;
        }

        WaterMode FindHardwareWaterSupport()
        {
            if (!GetComponent<Renderer>())
            {
                return WaterMode.Simple;
            }

            Material mat = GetComponent<Renderer>().sharedMaterial;
            if (!mat)
            {
                return WaterMode.Simple;
            }

            string mode = mat.GetTag("WATERMODE", false);
            if (mode == "Reflective")
            {
                return WaterMode.Reflective;
            }

            return WaterMode.Simple;
        }

        // Given position/normal of the plane, calculates plane in camera space.
        Vector4 CameraSpacePlane(Camera cam, Vector3 pos, Vector3 normal, float sideSign)
        {
            Vector3 offsetPos = pos + normal * clipPlaneOffset;
            Matrix4x4 m = cam.worldToCameraMatrix;
            Vector3 cpos = m.MultiplyPoint(offsetPos);
            Vector3 cnormal = m.MultiplyVector(normal).normalized * sideSign;
            return new Vector4(cnormal.x, cnormal.y, cnormal.z, -Vector3.Dot(cpos, cnormal));
        }

        static void CalculateReflectionMatrix(ref Matrix4x4 reflectionMat, Vector4 plane)
        {
            reflectionMat.m00 = (1F - 2F * plane[0] * plane[0]);
            reflectionMat.m01 = (- 2F * plane[0] * plane[1]);
            reflectionMat.m02 = (- 2F * plane[0] * plane[2]);
            reflectionMat.m03 = (- 2F * plane[3] * plane[0]);

            reflectionMat.m10 = (- 2F * plane[1] * plane[0]);
            reflectionMat.m11 = (1F - 2F * plane[1] * plane[1]);
            reflectionMat.m12 = (- 2F * plane[1] * plane[2]);
            reflectionMat.m13 = (- 2F * plane[3] * plane[1]);

            reflectionMat.m20 = (- 2F * plane[2] * plane[0]);
            reflectionMat.m21 = (- 2F * plane[2] * plane[1]);
            reflectionMat.m22 = (1F - 2F * plane[2] * plane[2]);
            reflectionMat.m23 = (- 2F * plane[3] * plane[2]);

            reflectionMat.m30 = 0F;
            reflectionMat.m31 = 0F;
            reflectionMat.m32 = 0F;
            reflectionMat.m33 = 1F;
        }

        public static RenderTexture GetReflectTex
        {
            get{
                if (_instance == null) return null;
                return _instance.m_ReflectionTexture;
            }
        }
    }

