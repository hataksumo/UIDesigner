using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

namespace UnityEditor
{
	public class CartoonLitDevGUI_V2 : ShaderGUI {
		public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties){
            EditorGUI.BeginChangeCheck();
            base.OnGUI(materialEditor,properties);
            if (EditorGUI.EndChangeCheck())
            {
                SetupMaterialKeyword(materialEditor.target as Material);
            }

   //         if ( GUILayout.Button("Apply Detail Texture Params")){
			//	ApplyDetailParams(properties);
			//	ResetMaterialDetailParam(materialEditor);
			//}

		}

		void ApplyDetailParams(MaterialProperty[] properties){
			MaterialProperty _DetailRParam_Add = FindProperty("_DetailRParam_Add",properties);
			MaterialProperty _DetailRParam_Mulit = FindProperty("_DetailRParam_Mulit",properties);
			
			if( _DetailRParam_Add == null || _DetailRParam_Mulit == null) return;
			if( _DetailRParam_Add.floatValue == 0 && _DetailRParam_Mulit.floatValue == 1) return;
			MaterialProperty detailTexP = FindProperty("_Detail",properties);
			if( detailTexP == null || detailTexP.textureValue == null) return;

			Texture2D detailTex = detailTexP.textureValue as Texture2D;
			if( detailTex == null) return;

			var path = AssetDatabase.GetAssetPath(detailTex);
			var ti = AssetImporter.GetAtPath(path) as TextureImporter;
			bool needResetReadable = false;
			if(!ti.isReadable){
				ti.isReadable = true;
				needResetReadable = true;
				ti.SaveAndReimport();
			}			

			var piexls = detailTex.GetPixels();
			float addP = _DetailRParam_Add.floatValue;
			float multP = _DetailRParam_Mulit.floatValue;

			for (int i = 0; i < piexls.Length; i++)
			{
				piexls[i].r = Mathf.Clamp01( (piexls[i].r + addP) * multP);
			}

			Texture2D newTex = new Texture2D(detailTex.width,detailTex.height,TextureFormat.RGBA32,true,true);
			newTex.SetPixels(piexls);

           
            var ext = Path.GetExtension(path).ToLower();
            switch (ext)
            {
                case ".png":
                    File.WriteAllBytes(path, newTex.EncodeToPNG());
                    break;
                case ".tga":
                    File.WriteAllBytes(path, newTex.EncodeToTGA());
                    break;
                case ".jpg":
                    File.WriteAllBytes(path, newTex.EncodeToJPG());
                    break;
                default:
                    var fileName = Path.GetFileNameWithoutExtension(path);
                    var floderName = Path.GetDirectoryName(path);
                    var newtexPath = string.Format("{0}/{1}.png", floderName, fileName);
                    File.WriteAllBytes(newtexPath, newTex.EncodeToPNG());
                    break;
            }           
           
			AssetDatabase.SaveAssets();
			AssetDatabase.Refresh();
			if( needResetReadable){
				ti = AssetImporter.GetAtPath(path) as TextureImporter;
				ti.isReadable = false;
				ti.SaveAndReimport();
			}
		}

		void ResetMaterialDetailParam(MaterialEditor materialEditor){
			var mats = materialEditor.targets;
			if( mats == null || mats.Length < 1) return;

			foreach (var item in mats)
			{
				if( item == null || !(item is Material)) continue;
				var mat = item as Material;
				if( mat.HasProperty("_DetailRParam_Add")){
					mat.SetFloat("_DetailRParam_Add",0);
				}
				if( mat.HasProperty("_DetailRParam_Mulit")){
					mat.SetFloat("_DetailRParam_Mulit",1);
				}				
			}
			MaterialEditor.ApplyMaterialPropertyDrawers(mats);
		}
		
        void SetupMaterialKeyword(Material mat)
        {
            if (mat == null) return;
            //set shadowzone texture
            SetKeyword(mat, "_DIFF_SHADOW_COLOR", mat.GetTexture("_DetailZone"));
        }

        static void SetKeyword( Material m, string keyword, bool state )
        {
            if (state)
                m.EnableKeyword(keyword);
            else
                m.DisableKeyword(keyword);
        }

    }
}

