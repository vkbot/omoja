package d9;

import a9.w;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;
import v8.a0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class e extends j implements a {
    public static final AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "owner");

    @Volatile
    private volatile Object owner = f.a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e() {
        new d(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(Object obj) {
        while (Math.max(j.f.get(this), 0) == 0) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            w wVar = f.a;
            if (obj2 != wVar) {
                if (obj2 != obj && obj != null) {
                    androidx.navigation.b.z("This mutex is locked by ", obj2, ", but ", obj, " is expected");
                    return;
                }
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, wVar)) {
                        b();
                        return;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj2);
            }
        }
        j1.i.l("This mutex is not locked");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("Mutex@");
        sb.append(a0.a(this));
        sb.append("[isLocked=");
        sb.append(Math.max(j.f.get(this), 0) == 0);
        sb.append(",owner=");
        sb.append(g.get(this));
        sb.append(']');
        return sb.toString();
    }
}
