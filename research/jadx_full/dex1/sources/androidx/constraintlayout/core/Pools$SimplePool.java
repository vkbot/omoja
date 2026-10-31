package androidx.constraintlayout.core;

import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Pools$SimplePool<T> implements Pools$Pool<T> {
    private final Object[] mPool;
    private int mPoolSize;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pools$SimplePool(int i9) {
        if (i9 > 0) {
            this.mPool = new Object[i9];
        } else {
            i.k("The max pool size must be > 0");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isInPool(T t) {
        for (int i9 = 0; i9 < this.mPoolSize; i9++) {
            if (this.mPool[i9] == t) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.Pools$Pool
    public T acquire() {
        int i9 = this.mPoolSize;
        if (i9 <= 0) {
            return null;
        }
        int i10 = i9 - 1;
        Object[] objArr = this.mPool;
        T t = (T) objArr[i10];
        objArr[i10] = null;
        this.mPoolSize = i9 - 1;
        return t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.Pools$Pool
    public boolean release(T t) {
        int i9 = this.mPoolSize;
        Object[] objArr = this.mPool;
        if (i9 >= objArr.length) {
            return false;
        }
        objArr[i9] = t;
        this.mPoolSize = i9 + 1;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.Pools$Pool
    public void releaseAll(T[] tArr, int i9) {
        if (i9 > tArr.length) {
            i9 = tArr.length;
        }
        for (int i10 = 0; i10 < i9; i10++) {
            T t = tArr[i10];
            int i11 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (i11 < objArr.length) {
                objArr[i11] = t;
                this.mPoolSize = i11 + 1;
            }
        }
    }
}
