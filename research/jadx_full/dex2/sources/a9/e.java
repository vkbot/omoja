package a9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class e {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_next");
    public static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_prev");

    @Volatile
    private volatile Object _next;

    @Volatile
    private volatile Object _prev;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(u uVar) {
        this._prev = uVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        c.lazySet(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final e b() {
        Object obj = b.get(this);
        if (obj == d.a) {
            return null;
        }
        return (e) obj;
    }

    public abstract boolean c();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        e eVarB;
        if (b() == null) {
            return;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
            e eVar = (e) atomicReferenceFieldUpdater.get(this);
            while (eVar != null && eVar.c()) {
                eVar = (e) atomicReferenceFieldUpdater.get(eVar);
            }
            e eVarB2 = b();
            eVarB2.getClass();
            while (eVarB2.c() && (eVarB = eVarB2.b()) != null) {
                eVarB2 = eVarB;
            }
            while (true) {
                Object obj = atomicReferenceFieldUpdater.get(eVarB2);
                e eVar2 = ((e) obj) == null ? null : eVar;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(eVarB2, obj, eVar2)) {
                        break;
                    } else if (atomicReferenceFieldUpdater.get(eVarB2) != obj) {
                    }
                }
            }
            if (eVar != null) {
                b.set(eVar, eVarB2);
            }
            if (!eVarB2.c() || eVarB2.b() == null) {
                if (eVar == null || !eVar.c()) {
                    return;
                }
            }
        }
    }
}
