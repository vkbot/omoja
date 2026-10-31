package d0;

import android.util.Log;
import androidx.core.util.Pools$Pool;
import androidx.core.util.Pools$SynchronizedPool;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements Pools$Pool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f1648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f1649b;
    public final Pools$SynchronizedPool c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(Pools$SynchronizedPool pools$SynchronizedPool, c cVar, f fVar) {
        this.c = pools$SynchronizedPool;
        this.f1648a = cVar;
        this.f1649b = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.util.Pools$Pool
    public final Object acquire() {
        Object objAcquire = this.c.acquire();
        if (objAcquire == null) {
            objAcquire = this.f1648a.create();
            if (Log.isLoggable("FactoryPools", 2)) {
                Log.v("FactoryPools", "Created new " + objAcquire.getClass());
            }
        }
        if (objAcquire instanceof e) {
            ((e) objAcquire).c().f1651a = false;
        }
        return objAcquire;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.util.Pools$Pool
    public final boolean release(Object obj) {
        if (obj instanceof e) {
            ((e) obj).c().f1651a = true;
        }
        this.f1649b.a(obj);
        return this.c.release(obj);
    }
}
