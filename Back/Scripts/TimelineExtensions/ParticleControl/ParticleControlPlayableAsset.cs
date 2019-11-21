using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using System;

namespace LJ_TimelineExtension
{
    [System.Serializable]
    public class ParticleControlPlayableAsset : PlayableAsset, IPropertyPreview, ITimelineClipAsset //, IClipInitializer, IDirectorDriver
    {
        // Token: 0x060001A0 RID: 416 RVA: 0x000085F9 File Offset: 0x000067F9
        public void OnEnable()
        {
            if (this.particleRandomSeed == 0u)
            {
                this.particleRandomSeed = (uint)UnityEngine.Random.Range(1, 10000);
            }
        }

        // Token: 0x17000078 RID: 120
        // (get) Token: 0x060001A1 RID: 417 RVA: 0x00008618 File Offset: 0x00006818
        public override double duration
        {
            get
            {
                return this.m_Duration;
            }
        }

        // Token: 0x17000079 RID: 121
        // (get) Token: 0x060001A2 RID: 418 RVA: 0x00008634 File Offset: 0x00006834
        public ClipCaps clipCaps
        {
            get
            {
                return ClipCaps.ClipIn | ClipCaps.SpeedMultiplier | ((!this.m_SupportLoop) ? ClipCaps.None : ClipCaps.Looping);
            }
        }

        // Token: 0x060001A3 RID: 419 RVA: 0x00008660 File Offset: 0x00006860
        public override Playable CreatePlayable( PlayableGraph graph, GameObject go )
        {
            if (this.prefabGameObject != null)
            {
                if (s_CreatedPrefabs.Contains(this.prefabGameObject))
                {
                    Debug.LogWarningFormat("Control Track Clip ({0}) is causing a prefab to instantiate itself recursively. Aborting further instances.", new object[]
                    {
                        base.name
                    });
                    return Playable.Create(graph, 0);
                }
                s_CreatedPrefabs.Add(this.prefabGameObject);
            }
            Playable playable = Playable.Null;
            List<Playable> list = new List<Playable>();
            GameObject gameObject = this.sourceGameObject.Resolve(graph.GetResolver());

            if (this.prefabGameObject != null)
            {
                Transform parentTransform = (!(gameObject != null)) ? null : gameObject.transform;
                ScriptPlayable<ParticlePrefabControl> playable2 = ParticlePrefabControl.Create(
                    graph, this.prefabGameObject, parentTransform, posOffset, followType, initResetRotate
                    , this.realLife,this.scaleFactor
                    );
                gameObject = playable2.GetBehaviour().prefabInstance;
                list.Add(playable2);
            }
            //this.m_Duration = PlayableBinding.DefaultDuration;

            this.m_SupportLoop = false;
            if (gameObject != null)
            {
                // IList<PlayableDirector> directors = (!this.updateDirector) ? TestControlPlayableAsset.k_EmptyDirectorsList : this.GetComponent<PlayableDirector>(gameObject);
                // IList<ParticleSystem> particleSystems = (!this.updateParticle) ? ParticleControlPlayableAsset.k_EmptyParticlesList : this.GetParticleSystemRoots(gameObject);
                IList<ParticleSystem> particleSystems = ((!this.updateParticle) || (realLife > 0f && Application.isPlaying)) ? ParticleControlPlayableAsset.k_EmptyParticlesList : this.GetParticleSystemRoots(gameObject);
                //this.UpdateDurationAndLoopFlag(directors, particleSystems);
                PlayableDirector component = go.GetComponent<PlayableDirector>();
                if (component != null)
                {
                    this.m_ControlDirectorAsset = component.playableAsset;
                }
                if (go == gameObject && this.prefabGameObject == null)
                {
                    Debug.LogWarningFormat("Control Playable ({0}) is referencing the same PlayableDirector component than the one in which it is playing.", new object[]
                    {
                        base.name
                    });
                    this.active = false;
                    //if (!this.searchHierarchy)
                    //{
                    //    //this.updateDirector = false;
                    //}
                }
                if (this.active && realLife < 0.01f)
                {
                    this.CreateActivationPlayable(gameObject, graph, list);
                }
                //if (this.updateDirector)
                //{
                //    this.SearchHierarchyAndConnectDirector(directors, graph, list, this.prefabGameObject != null);
                //}
                if (this.updateParticle)
                {
                    this.SearchHiearchyAndConnectParticleSystem(particleSystems, graph, list);
                }
                //if (this.updateITimeControl)
                //{
                //    TestControlPlayableAsset.SearchHierarchyAndConnectControlableScripts(TestControlPlayableAsset.GetControlableScripts(gameObject), graph, list);
                //}
                playable = ParticleControlPlayableAsset.ConnectPlayablesToMixer(graph, list);
            }
            if (this.prefabGameObject != null)
            {
                s_CreatedPrefabs.Remove(this.prefabGameObject);
            }
            if (!playable.IsValid<Playable>())
            {
                playable = Playable.Create(graph, 0);
            }
            return playable;
        }

        // Token: 0x060001A4 RID: 420 RVA: 0x000088C4 File Offset: 0x00006AC4
        protected static Playable ConnectPlayablesToMixer( PlayableGraph graph, List<Playable> playables )
        {
            Playable playable = Playable.Create(graph, playables.Count);
            for (int num = 0 ; num != playables.Count ; num++)
            {
                ConnectMixerAndPlayable(graph, playable, playables[num], num);
            }
            playable.SetPropagateSetTime(true);
            return playable;
        }

        // Token: 0x060001A5 RID: 421 RVA: 0x00008918 File Offset: 0x00006B18
        protected void CreateActivationPlayable( GameObject root, PlayableGraph graph, List<Playable> outplayables )
        {
            ScriptPlayable<ActivationControlPlayable> playable = ActivationControlPlayable.Create(graph, root, this.postPlayback);
            if (playable.IsValid<ScriptPlayable<ActivationControlPlayable>>())
            {
                outplayables.Add(playable);
            }
        }

        // Token: 0x060001A6 RID: 422 RVA: 0x0000894C File Offset: 0x00006B4C
        protected void SearchHiearchyAndConnectParticleSystem( IEnumerable<ParticleSystem> particleSystems, PlayableGraph graph, List<Playable> outplayables )
        {
            foreach (ParticleSystem particleSystem in particleSystems)
            {
                if (particleSystem != null)
                {
                    outplayables.Add(ParticleControlPlayable.Create(graph, particleSystem, this.particleRandomSeed));
                }
            }
        }

        // Token: 0x060001A7 RID: 423 RVA: 0x000089C4 File Offset: 0x00006BC4
        //private void SearchHierarchyAndConnectDirector( IEnumerable<PlayableDirector> directors, PlayableGraph graph, List<Playable> outplayables, bool disableSelfReferences )
        //{
        //    foreach (PlayableDirector playableDirector in directors)
        //    {
        //        if (playableDirector != null)
        //        {
        //            if (playableDirector.playableAsset != this.m_ControlDirectorAsset)
        //            {
        //                outplayables.Add(DirectorControlPlayable.Create(graph, playableDirector));
        //            } else if (disableSelfReferences)
        //            {
        //                playableDirector.enabled = false;
        //            }
        //        }
        //    }
        //}

        // Token: 0x060001A8 RID: 424 RVA: 0x00008A64 File Offset: 0x00006C64
        //private static void SearchHierarchyAndConnectControlableScripts( IEnumerable<MonoBehaviour> controlableScripts, PlayableGraph graph, List<Playable> outplayables )
        //{
        //    foreach (MonoBehaviour monoBehaviour in controlableScripts)
        //    {
        //        outplayables.Add(TimeControlPlayable.Create(graph, (ITimeControl)monoBehaviour));
        //    }
        //}

        // Token: 0x060001A9 RID: 425 RVA: 0x00008ACC File Offset: 0x00006CCC
        protected static void ConnectMixerAndPlayable( PlayableGraph graph, Playable mixer, Playable playable, int portIndex )
        {
            graph.Connect<Playable, Playable>(playable, 0, mixer, portIndex);
            mixer.SetInputWeight(playable, 1f);
        }

        // Token: 0x060001AA RID: 426 RVA: 0x00008AE8 File Offset: 0x00006CE8
        internal IList<T> GetComponent<T>( GameObject gameObject )
        {
            List<T> list = new List<T>();
            if (gameObject != null)
            {
                if (this.searchHierarchy)
                {
                    gameObject.GetComponentsInChildren<T>(true, list);
                } else
                {
                    gameObject.GetComponents<T>(list);
                }
            }
            return list;
        }

        // Token: 0x060001AB RID: 427 RVA: 0x00008B38 File Offset: 0x00006D38
        protected static IEnumerable<MonoBehaviour> GetControlableScripts( GameObject root )
        {
            if (root == null)
            {
                yield break;
            }
            foreach (MonoBehaviour script in root.GetComponentsInChildren<MonoBehaviour>())
            {
                if (script is ITimeControl)
                {
                    yield return script;
                }
            }
            yield break;
        }

        // Token: 0x060001AC RID: 428 RVA: 0x00008B64 File Offset: 0x00006D64
        protected void UpdateDurationAndLoopFlag( IList<PlayableDirector> directors, IList<ParticleSystem> particleSystems )
        {
            if (directors.Count != 0 || particleSystems.Count != 0)
            {
                double num = double.NegativeInfinity;
                bool flag = false;
                foreach (PlayableDirector playableDirector in directors)
                {
                    if (playableDirector.playableAsset != null)
                    {
                        double num2 = playableDirector.playableAsset.duration;
                        if (playableDirector.playableAsset is TimelineAsset && num2 > 0.0)
                        {
                            num2 = (double)((DiscreteTime)num2).OneTickAfter();
                        }
                        num = Math.Max(num, num2);
                        flag = (flag || playableDirector.extrapolationMode == DirectorWrapMode.Loop);
                    }
                }
                foreach (ParticleSystem particleSystem in particleSystems)
                {
                    num = Math.Max(num, (double)particleSystem.main.duration);
                    flag = (flag || particleSystem.main.loop);
                }
                //this.m_Duration = ((!double.IsNegativeInfinity(num)) ? num : PlayableBinding.DefaultDuration);
                this.m_SupportLoop = flag;
            }
        }

        // Token: 0x060001AD RID: 429 RVA: 0x00008CEC File Offset: 0x00006EEC
        protected IList<ParticleSystem> GetParticleSystemRoots( GameObject go )
        {
            IList<ParticleSystem> result;
            if (this.searchHierarchy)
            {
                List<ParticleSystem> list = new List<ParticleSystem>();
                ParticleControlPlayableAsset.GetParticleSystemRoots(go.transform, list);
                result = list;
            } else
            {
                result = this.GetComponent<ParticleSystem>(go);
            }
            return result;
        }

        // Token: 0x060001AE RID: 430 RVA: 0x00008D30 File Offset: 0x00006F30
        protected static void GetParticleSystemRoots( Transform t, ICollection<ParticleSystem> roots )
        {
            ParticleSystem component = t.GetComponent<ParticleSystem>();
            if (component != null)
            {
                roots.Add(component);
            } else
            {
                for (int i = 0 ; i < t.childCount ; i++)
                {
                    ParticleControlPlayableAsset.GetParticleSystemRoots(t.GetChild(i), roots);
                }
            }
        }

        // Token: 0x060001AF RID: 431 RVA: 0x00008D84 File Offset: 0x00006F84
        public void GatherProperties( PlayableDirector director, IPropertyCollector driver )
        {
            if (director != null)
            {
                GameObject gameObject = this.sourceGameObject.Resolve(director);
                if (gameObject != null)
                {
                    if (this.updateParticle)
                    {
                        foreach (ParticleSystem particleSystem in this.GetParticleSystemRoots(gameObject))
                        {
                            driver.AddFromName<ParticleSystem>(particleSystem.gameObject, "randomSeed");
                            driver.AddFromName<ParticleSystem>(particleSystem.gameObject, "autoRandomSeed");
                        }
                    }
                    if (this.active)
                    {
                        driver.AddFromName(gameObject, "m_IsActive");
                    }
                    //if (this.updateITimeControl)
                    //{
                    //    foreach (MonoBehaviour monoBehaviour in TestControlPlayableAsset.GetControlableScripts(gameObject))
                    //    {
                    //        IPropertyPreview propertyPreview = monoBehaviour as IPropertyPreview;
                    //        if (propertyPreview != null)
                    //        {
                    //            propertyPreview.GatherProperties(director, driver);
                    //        } else
                    //        {
                    //            driver.AddFromComponent(monoBehaviour.gameObject, monoBehaviour);
                    //        }
                    //    }
                    //}
                    //if (this.updateDirector)
                    //{
                    //    foreach (PlayableDirector playableDirector in this.GetComponent<PlayableDirector>(gameObject))
                    //    {
                    //        if (!(playableDirector == null))
                    //        {
                    //            TimelineAsset timelineAsset = playableDirector.playableAsset as TimelineAsset;
                    //            if (!(timelineAsset == null))
                    //            {
                    //                timelineAsset.GatherProperties(playableDirector, driver);
                    //            }
                    //        }
                    //    }
                    //}
                }
            }
        }

        // Token: 0x060001B0 RID: 432 RVA: 0x00008F90 File Offset: 0x00007190
        protected void OnCreate( TimelineClip newClip, TrackAsset track, IExposedPropertyTable table )
        {
            GameObject gameObject = null;
            if (table != null)
            {
                gameObject = this.sourceGameObject.Resolve(table);
            }
            if (gameObject == null && this.prefabGameObject != null)
            {
                gameObject = this.prefabGameObject;
            }
            if (gameObject)
            {
                IList<PlayableDirector> component = this.GetComponent<PlayableDirector>(gameObject);
                IList<ParticleSystem> component2 = this.GetComponent<ParticleSystem>(gameObject);
                this.UpdateDurationAndLoopFlag(component, component2);
                newClip.displayName = gameObject.name;
            }
        }

        // Token: 0x060001B1 RID: 433 RVA: 0x00009008 File Offset: 0x00007208
        //IList<PlayableDirector> GetDrivenDirectors( IExposedPropertyTable resolver )
        //{
        //    IList<PlayableDirector> result;
        //    if (/*!this.updateDirector ||*/ this.prefabGameObject != null)
        //    {
        //        result = new List<PlayableDirector>(0);
        //    } else
        //    {
        //        GameObject gameObject = this.sourceGameObject.Resolve(resolver);
        //        if (gameObject == null)
        //        {
        //            result = new List<PlayableDirector>(0);
        //        } else
        //        {
        //            List<PlayableDirector> list = new List<PlayableDirector>();
        //            foreach (PlayableDirector playableDirector in this.GetComponent<PlayableDirector>(gameObject))
        //            {
        //                if (playableDirector.playableAsset is TimelineAsset)
        //                {
        //                    list.Add(playableDirector);
        //                }
        //            }
        //            result = list;
        //        }
        //    }
        //    return result;
        //}

        // Token: 0x040000BE RID: 190
        protected const int k_MaxRandInt = 10000;

        // Token: 0x040000BF RID: 191
        // private static readonly List<PlayableDirector> k_EmptyDirectorsList = new List<PlayableDirector>(0);

        // Token: 0x040000C0 RID: 192
        protected static readonly List<ParticleSystem> k_EmptyParticlesList = new List<ParticleSystem>(0);

        /// <summary>
        ///   <para>GameObject in the scene to control, or the parent of the instantiated prefab.</para>
        /// </summary>
        // Token: 0x040000C1 RID: 193
        [SerializeField]
        public ExposedReference<GameObject> sourceGameObject;
        public bool initResetRotate;
        public FxFollowType followType;
        public Vector3 posOffset;

        /// <summary>
        ///   <para>Prefab object that will be instantiated.</para>
        /// </summary>
        // Token: 0x040000C2 RID: 194
        [SerializeField]
        public GameObject prefabGameObject;

        /// <summary>
        ///   <para>Indicates if user wants to control ParticleSystems.</para>
        /// </summary>
        // Token: 0x040000C3 RID: 195
        [SerializeField]
        public bool updateParticle = true;

        /// <summary>
        ///   <para>Let the particle systems behave the same way on each execution.</para>
        /// </summary>
        // Token: 0x040000C4 RID: 196
        [SerializeField]
        public uint particleRandomSeed;

        /// <summary>
        ///   <para>Indicate if user wants to control PlayableDirectors.</para>
        /// </summary>
        // Token: 0x040000C5 RID: 197
        //[SerializeField]
        //public bool updateDirector = true;

        /// <summary>
        ///   <para>Indicates that whether Monobehaviours implementing ITimeControl on the gameObject will be controlled.</para>
        /// </summary>
        // Token: 0x040000C6 RID: 198
        //[SerializeField]
        //public bool updateITimeControl = true;

        /// <summary>
        ///   <para>Indicate whether to search the entire hierachy for controlable components.</para>
        /// </summary>
        // Token: 0x040000C7 RID: 199
        [SerializeField]
        public bool searchHierarchy = true;

        /// <summary>
        ///   <para>Indicate if the playable will use Activation.</para>
        /// </summary>
        // Token: 0x040000C8 RID: 200
        [SerializeField]
        public bool active = true;

        public float scaleFactor = 1f;

        /// <summary>
        ///   <para>Indicates the active state of the gameObject when the Timeline is stopped.</para>
        /// </summary>
        // Token: 0x040000C9 RID: 201
        [SerializeField]
        public ActivationControlPlayable.PostPlaybackState postPlayback = ActivationControlPlayable.PostPlaybackState.Revert;
        public float realLife = 0f;
        
        // Token: 0x040000CA RID: 202
        protected PlayableAsset m_ControlDirectorAsset;

        // Token: 0x040000CB RID: 203
        //[SerializeField]
        protected double m_Duration = PlayableBinding.DefaultDuration;

        // Token: 0x040000CC RID: 204
        protected bool m_SupportLoop;

        // Token: 0x040000CD RID: 205
        //private static HashSet<PlayableDirector> s_ProcessedDirectors = new HashSet<PlayableDirector>();

        // Token: 0x040000CE RID: 206
        protected static HashSet<GameObject> s_CreatedPrefabs = new HashSet<GameObject>();
    }

    internal struct DiscreteTime : IComparable
    {
        // Token: 0x06000008 RID: 8 RVA: 0x0000216A File Offset: 0x0000036A
        public DiscreteTime( DiscreteTime time )
        {
            this.m_DiscreteTime = time.m_DiscreteTime;
        }

        // Token: 0x06000009 RID: 9 RVA: 0x0000217A File Offset: 0x0000037A
        private DiscreteTime( long time )
        {
            this.m_DiscreteTime = time;
        }

        // Token: 0x0600000A RID: 10 RVA: 0x00002184 File Offset: 0x00000384
        public DiscreteTime( double time )
        {
            this.m_DiscreteTime = DiscreteTime.DoubleToDiscreteTime(time);
        }

        // Token: 0x0600000B RID: 11 RVA: 0x00002193 File Offset: 0x00000393
        public DiscreteTime( float time )
        {
            this.m_DiscreteTime = DiscreteTime.FloatToDiscreteTime(time);
        }

        // Token: 0x0600000C RID: 12 RVA: 0x000021A2 File Offset: 0x000003A2
        public DiscreteTime( int time )
        {
            this.m_DiscreteTime = DiscreteTime.IntToDiscreteTime(time);
        }

        // Token: 0x0600000D RID: 13 RVA: 0x000021B1 File Offset: 0x000003B1
        public DiscreteTime( int frame, double fps )
        {
            this.m_DiscreteTime = DiscreteTime.DoubleToDiscreteTime((double)frame * fps);
        }

        // Token: 0x17000001 RID: 1
        // (get) Token: 0x0600000E RID: 14 RVA: 0x000021C4 File Offset: 0x000003C4
        public static double tickValue
        {
            get
            {
                return 1E-12;
            }
        }

        // Token: 0x0600000F RID: 15 RVA: 0x000021E4 File Offset: 0x000003E4
        public DiscreteTime OneTickBefore()
        {
            return new DiscreteTime(this.m_DiscreteTime - 1L);
        }

        // Token: 0x06000010 RID: 16 RVA: 0x00002208 File Offset: 0x00000408
        public DiscreteTime OneTickAfter()
        {
            return new DiscreteTime(this.m_DiscreteTime + 1L);
        }

        // Token: 0x06000011 RID: 17 RVA: 0x0000222C File Offset: 0x0000042C
        public long GetTick()
        {
            return this.m_DiscreteTime;
        }

        // Token: 0x06000012 RID: 18 RVA: 0x00002248 File Offset: 0x00000448
        public int CompareTo( object obj )
        {
            int result;
            if (obj is DiscreteTime)
            {
                result = this.m_DiscreteTime.CompareTo(((DiscreteTime)obj).m_DiscreteTime);
            } else
            {
                result = 1;
            }
            return result;
        }

        // Token: 0x06000013 RID: 19 RVA: 0x0000228C File Offset: 0x0000048C
        public bool Equals( DiscreteTime other )
        {
            return this.m_DiscreteTime == other.m_DiscreteTime;
        }

        // Token: 0x06000014 RID: 20 RVA: 0x000022B0 File Offset: 0x000004B0
        public override bool Equals( object obj )
        {
            return obj is DiscreteTime && this.Equals((DiscreteTime)obj);
        }

        // Token: 0x06000015 RID: 21 RVA: 0x000022E4 File Offset: 0x000004E4
        private static long DoubleToDiscreteTime( double time )
        {
            double num = time / 1E-12 + 0.5;
            if (num < 9.2233720368547758E+18 && num > -9.2233720368547758E+18)
            {
                return (long)num;
            }
            throw new ArgumentOutOfRangeException("Time is over the discrete range.");
        }

        // Token: 0x06000016 RID: 22 RVA: 0x0000233C File Offset: 0x0000053C
        private static long FloatToDiscreteTime( float time )
        {
            float num = time / 1E-12f + 0.5f;
            if (num < 9.223372E+18f && num > -9.223372E+18f)
            {
                return (long)num;
            }
            throw new ArgumentOutOfRangeException("Time is over the discrete range.");
        }

        // Token: 0x06000017 RID: 23 RVA: 0x00002384 File Offset: 0x00000584
        private static long IntToDiscreteTime( int time )
        {
            return DiscreteTime.DoubleToDiscreteTime((double)time);
        }

        // Token: 0x06000018 RID: 24 RVA: 0x000023A0 File Offset: 0x000005A0
        private static double ToDouble( long time )
        {
            return (double)time * 1E-12;
        }

        // Token: 0x06000019 RID: 25 RVA: 0x000023C4 File Offset: 0x000005C4
        private static float ToFloat( long time )
        {
            return (float)DiscreteTime.ToDouble(time);
        }

        // Token: 0x0600001A RID: 26 RVA: 0x000023E0 File Offset: 0x000005E0
        public static explicit operator double( DiscreteTime b )
        {
            return DiscreteTime.ToDouble(b.m_DiscreteTime);
        }

        // Token: 0x0600001B RID: 27 RVA: 0x00002404 File Offset: 0x00000604
        public static explicit operator float( DiscreteTime b )
        {
            return DiscreteTime.ToFloat(b.m_DiscreteTime);
        }

        // Token: 0x0600001C RID: 28 RVA: 0x00002428 File Offset: 0x00000628
        public static explicit operator long( DiscreteTime b )
        {
            return b.m_DiscreteTime;
        }

        // Token: 0x0600001D RID: 29 RVA: 0x00002444 File Offset: 0x00000644
        public static explicit operator DiscreteTime( double time )
        {
            return new DiscreteTime(time);
        }

        // Token: 0x0600001E RID: 30 RVA: 0x00002460 File Offset: 0x00000660
        public static explicit operator DiscreteTime( float time )
        {
            return new DiscreteTime(time);
        }

        // Token: 0x0600001F RID: 31 RVA: 0x0000247C File Offset: 0x0000067C
        public static implicit operator DiscreteTime( int time )
        {
            return new DiscreteTime(time);
        }

        // Token: 0x06000020 RID: 32 RVA: 0x00002498 File Offset: 0x00000698
        public static explicit operator DiscreteTime( long time )
        {
            return new DiscreteTime(time);
        }

        // Token: 0x06000021 RID: 33 RVA: 0x000024B4 File Offset: 0x000006B4
        public static bool operator ==( DiscreteTime lhs, DiscreteTime rhs )
        {
            return lhs.m_DiscreteTime == rhs.m_DiscreteTime;
        }

        // Token: 0x06000022 RID: 34 RVA: 0x000024DC File Offset: 0x000006DC
        public static bool operator !=( DiscreteTime lhs, DiscreteTime rhs )
        {
            return !(lhs == rhs);
        }

        // Token: 0x06000023 RID: 35 RVA: 0x000024FC File Offset: 0x000006FC
        public static bool operator >( DiscreteTime lhs, DiscreteTime rhs )
        {
            return lhs.m_DiscreteTime > rhs.m_DiscreteTime;
        }

        // Token: 0x06000024 RID: 36 RVA: 0x00002524 File Offset: 0x00000724
        public static bool operator <( DiscreteTime lhs, DiscreteTime rhs )
        {
            return lhs.m_DiscreteTime < rhs.m_DiscreteTime;
        }

        // Token: 0x06000025 RID: 37 RVA: 0x0000254C File Offset: 0x0000074C
        public static bool operator <=( DiscreteTime lhs, DiscreteTime rhs )
        {
            return lhs.m_DiscreteTime <= rhs.m_DiscreteTime;
        }

        // Token: 0x06000026 RID: 38 RVA: 0x00002574 File Offset: 0x00000774
        public static bool operator >=( DiscreteTime lhs, DiscreteTime rhs )
        {
            return lhs.m_DiscreteTime >= rhs.m_DiscreteTime;
        }

        // Token: 0x06000027 RID: 39 RVA: 0x0000259C File Offset: 0x0000079C
        public static DiscreteTime operator +( DiscreteTime lhs, DiscreteTime rhs )
        {
            return new DiscreteTime(lhs.m_DiscreteTime + rhs.m_DiscreteTime);
        }

        // Token: 0x06000028 RID: 40 RVA: 0x000025C8 File Offset: 0x000007C8
        public static DiscreteTime operator -( DiscreteTime lhs, DiscreteTime rhs )
        {
            return new DiscreteTime(lhs.m_DiscreteTime - rhs.m_DiscreteTime);
        }

        // Token: 0x06000029 RID: 41 RVA: 0x000025F4 File Offset: 0x000007F4
        public override string ToString()
        {
            return this.m_DiscreteTime.ToString();
        }

        // Token: 0x0600002A RID: 42 RVA: 0x00002620 File Offset: 0x00000820
        public override int GetHashCode()
        {
            return this.m_DiscreteTime.GetHashCode();
        }

        // Token: 0x0600002B RID: 43 RVA: 0x0000264C File Offset: 0x0000084C
        public static DiscreteTime Min( DiscreteTime lhs, DiscreteTime rhs )
        {
            return new DiscreteTime(Math.Min(lhs.m_DiscreteTime, rhs.m_DiscreteTime));
        }

        // Token: 0x0600002C RID: 44 RVA: 0x0000267C File Offset: 0x0000087C
        public static DiscreteTime Max( DiscreteTime lhs, DiscreteTime rhs )
        {
            return new DiscreteTime(Math.Max(lhs.m_DiscreteTime, rhs.m_DiscreteTime));
        }

        // Token: 0x0600002D RID: 45 RVA: 0x000026AC File Offset: 0x000008AC
        public static double SnapToNearestTick( double time )
        {
            long time2 = DiscreteTime.DoubleToDiscreteTime(time);
            return DiscreteTime.ToDouble(time2);
        }

        // Token: 0x0600002E RID: 46 RVA: 0x000026D0 File Offset: 0x000008D0
        public static float SnapToNearestTick( float time )
        {
            long time2 = DiscreteTime.FloatToDiscreteTime(time);
            return DiscreteTime.ToFloat(time2);
        }

        // Token: 0x0600002F RID: 47 RVA: 0x000026F4 File Offset: 0x000008F4
        public static long GetNearestTick( double time )
        {
            return DiscreteTime.DoubleToDiscreteTime(time);
        }

        // Token: 0x04000009 RID: 9
        private const double k_Tick = 1E-12;

        // Token: 0x0400000A RID: 10
        public static readonly DiscreteTime kMaxTime = new DiscreteTime(long.MaxValue);

        // Token: 0x0400000B RID: 11
        private readonly long m_DiscreteTime;
    }
}
