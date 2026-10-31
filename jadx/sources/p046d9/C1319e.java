package p046d9;

import androidx.navigation.C0674b;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;
import p010a9.C0061w;
import p099j1.C1929i;
import p224v8.AbstractC3366a0;

/* JADX INFO: renamed from: d9.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1319e extends C1324j implements InterfaceC1315a {

    /* JADX INFO: renamed from: g */
    public static final AtomicReferenceFieldUpdater f3143g = AtomicReferenceFieldUpdater.newUpdater(C1319e.class, Object.class, "owner");

    @Volatile
    private volatile Object owner = AbstractC1320f.f3144a;

    public C1319e() {
        new C1318d(this);
    }

    /* JADX INFO: renamed from: c */
    public final void m2362c(Object obj) {
        while (Math.max(C1324j.f3153f.get(this), 0) == 0) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3143g;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            C0061w c0061w = AbstractC1320f.f3144a;
            if (obj2 != c0061w) {
                if (obj2 != obj && obj != null) {
                    C0674b.m859z("This mutex is locked by ", obj2, ", but ", obj, " is expected");
                    return;
                }
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, c0061w)) {
                        m2364b();
                        return;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj2);
            }
        }
        C1929i.m3030l("This mutex is not locked");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Mutex@");
        sb.append(AbstractC3366a0.m5282a(this));
        sb.append("[isLocked=");
        sb.append(Math.max(C1324j.f3153f.get(this), 0) == 0);
        sb.append(",owner=");
        sb.append(f3143g.get(this));
        sb.append(']');
        return sb.toString();
    }
}
