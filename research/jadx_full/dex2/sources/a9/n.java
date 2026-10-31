package a9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class n {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "_cur");

    @Volatile
    private volatile Object _cur = new p(8, false);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a(Runnable runnable) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
            p pVar = (p) atomicReferenceFieldUpdater.get(this);
            int iA = pVar.a(runnable);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                p pVarC = pVar.c();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, pVar, pVarC) && atomicReferenceFieldUpdater.get(this) == pVar) {
                }
            } else if (iA == 2) {
                return false;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
            p pVar = (p) atomicReferenceFieldUpdater.get(this);
            if (pVar.b()) {
                return;
            }
            p pVarC = pVar.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, pVar, pVarC) && atomicReferenceFieldUpdater.get(this) == pVar) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c() {
        p pVar = (p) a.get(this);
        pVar.getClass();
        long j = p.f.get(pVar);
        return (((int) ((j & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j))) & 1073741823;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object d() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
            p pVar = (p) atomicReferenceFieldUpdater.get(this);
            Object objD = pVar.d();
            if (objD != p.g) {
                return objD;
            }
            p pVarC = pVar.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, pVar, pVarC) && atomicReferenceFieldUpdater.get(this) == pVar) {
            }
        }
    }
}
