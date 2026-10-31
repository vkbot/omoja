package androidx.constraintlayout.core;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Cache {
    Pools$Pool<ArrayRow> mOptimizedArrayRowPool = new Pools$SimplePool(256);
    Pools$Pool<ArrayRow> mArrayRowPool = new Pools$SimplePool(256);
    Pools$Pool<SolverVariable> mSolverVariablePool = new Pools$SimplePool(256);
    SolverVariable[] mIndexedVariables = new SolverVariable[32];
}
