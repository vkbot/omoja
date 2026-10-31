package p037d0;

import android.util.Log;
import androidx.core.util.Pools;

/* JADX INFO: renamed from: d0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1236d implements Pools.Pool {

    /* JADX INFO: renamed from: a */
    public final InterfaceC1235c f2909a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC1238f f2910b;

    /* JADX INFO: renamed from: c */
    public final Pools.SynchronizedPool f2911c;

    public C1236d(Pools.SynchronizedPool synchronizedPool, InterfaceC1235c interfaceC1235c, InterfaceC1238f interfaceC1238f) {
        this.f2911c = synchronizedPool;
        this.f2909a = interfaceC1235c;
        this.f2910b = interfaceC1238f;
    }

    @Override // androidx.core.util.Pools.Pool
    public final Object acquire() {
        Object objAcquire = this.f2911c.acquire();
        if (objAcquire == null) {
            objAcquire = this.f2909a.create();
            if (Log.isLoggable("FactoryPools", 2)) {
                Log.v("FactoryPools", "Created new " + objAcquire.getClass());
            }
        }
        if (objAcquire instanceof InterfaceC1237e) {
            ((InterfaceC1237e) objAcquire).mo2222c().f2913a = false;
        }
        return objAcquire;
    }

    @Override // androidx.core.util.Pools.Pool
    public final boolean release(Object obj) {
        if (obj instanceof InterfaceC1237e) {
            ((InterfaceC1237e) obj).mo2222c().f2913a = true;
        }
        this.f2910b.mo2221a(obj);
        return this.f2911c.release(obj);
    }
}
