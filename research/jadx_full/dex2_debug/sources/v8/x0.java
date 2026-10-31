package v8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class x0 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:102:0x00b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x00c5 A[EDGE_INSN: B:103:0x00c5->B:81:0x00c5 BREAK  A[LOOP:0: B:20:0x002b->B:111:0x002b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x002b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:79:0x00bf  */
    public static i0 a(z0 z0Var, d1 d1Var, int i) {
        d1 w0Var;
        Throwable thD;
        boolean z = (i & 1) == 0;
        boolean z2 = (i & 2) != 0;
        h1 h1Var = (h1) z0Var;
        h1Var.getClass();
        if (z) {
            w0Var = d1Var instanceof b1 ? (b1) d1Var : null;
            if (w0Var == null) {
                w0Var = new w0(d1Var);
            }
        } else {
            w0Var = d1Var;
        }
        w0Var.e = h1Var;
        loop0: while (true) {
            Object objW = h1Var.w();
            if (objW instanceof k0) {
                k0 k0Var = (k0) objW;
                if (k0Var.b) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h1.b;
                    while (!atomicReferenceFieldUpdater.compareAndSet(h1Var, objW, w0Var)) {
                        if (atomicReferenceFieldUpdater.get(h1Var) != objW) {
                        }
                    }
                    break loop0;
                }
                j1 j1Var = new j1();
                Object t0Var = k0Var.b ? j1Var : new t0(j1Var);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = h1.b;
                while (!atomicReferenceFieldUpdater2.compareAndSet(h1Var, k0Var, t0Var) && atomicReferenceFieldUpdater2.get(h1Var) == k0Var) {
                }
            } else {
                if (!(objW instanceof u0)) {
                    if (z2) {
                        k kVar = objW instanceof k ? (k) objW : null;
                        d1Var.invoke(kVar != null ? kVar.a : null);
                    }
                    return k1.b;
                }
                u0 u0Var = (u0) objW;
                j1 j1VarC = u0Var.c();
                if (j1VarC == null) {
                    h1Var.G((d1) objW);
                } else {
                    i0 i0Var = k1.b;
                    if (z && (objW instanceof f1)) {
                        synchronized (objW) {
                            try {
                                thD = ((f1) objW).d();
                                if (thD == null || ((d1Var instanceof i) && !((f1) objW).f())) {
                                    if (h1Var.h((u0) objW, j1VarC, w0Var)) {
                                        if (thD == null) {
                                            return w0Var;
                                        }
                                        i0Var = w0Var;
                                    }
                                }
                                Unit unit = Unit.INSTANCE;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (thD != null) {
                            if (z2) {
                                d1Var.invoke(thD);
                            }
                            return i0Var;
                        }
                        if (h1Var.h(u0Var, j1VarC, w0Var)) {
                            break;
                            break;
                        }
                    } else {
                        thD = null;
                        if (thD != null) {
                            if (z2) {
                                d1Var.invoke(thD);
                            }
                            return i0Var;
                        }
                        if (h1Var.h(u0Var, j1VarC, w0Var)) {
                            break;
                        }
                    }
                }
            }
        }
        return w0Var;
    }
}
