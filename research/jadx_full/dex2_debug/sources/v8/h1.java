package v8;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext$Element;
import kotlin.coroutines.CoroutineContext$Element$DefaultImpls;
import kotlin.coroutines.CoroutineContext$Key;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class h1 implements z0, m1 {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(h1.class, Object.class, "_state");
    public static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(h1.class, Object.class, "_parentHandle");

    @Volatile
    private volatile Object _parentHandle;

    @Volatile
    private volatile Object _state;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h1(boolean z) {
        this._state = z ? a0.i : a0.h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:7:0x0014 */
    public static i C(a9.m mVar) {
        while (mVar.h()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a9.m.c;
            a9.m mVarD = mVar.d();
            if (mVarD == null) {
                Object obj = atomicReferenceFieldUpdater.get(mVar);
                while (true) {
                    mVar = (a9.m) obj;
                    if (!mVar.h()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(mVar);
                }
            } else {
                mVar = mVarD;
            }
        }
        while (true) {
            mVar = mVar.g();
            if (!mVar.h()) {
                if (mVar instanceof i) {
                    return (i) mVar;
                }
                if (mVar instanceof j1) {
                    return null;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String H(Object obj) {
        if (!(obj instanceof f1)) {
            if (obj instanceof u0) {
                return ((u0) obj).b() ? "Active" : "New";
            }
            return obj instanceof k ? "Cancelled" : "Completed";
        }
        f1 f1Var = (f1) obj;
        if (f1Var.e()) {
            return "Cancelling";
        }
        return f1Var.f() ? "Completing" : "Active";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean A() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object B(Object obj) {
        Object objI;
        do {
            objI = I(w(), obj);
            if (objI == a0.c) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                k kVar = obj instanceof k ? (k) obj : null;
                throw new IllegalStateException(str, kVar != null ? kVar.a : null);
            }
        } while (objI == a0.e);
        return objI;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    public final void D(j1 j1Var, Throwable th) throws a8.a {
        Object objF = j1Var.f();
        objF.getClass();
        a8.a aVar = null;
        for (a9.m mVarG = (a9.m) objF; !Intrinsics.areEqual(mVarG, j1Var); mVarG = mVarG.g()) {
            if (mVarG instanceof b1) {
                d1 d1Var = (d1) mVarG;
                try {
                    d1Var.j(th);
                } catch (Throwable th2) {
                    if (aVar != null) {
                        ExceptionsKt.addSuppressed(aVar, th2);
                    } else {
                        aVar = new a8.a("Exception in completion handler " + d1Var + " for " + this, 6, th2);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (aVar != null) {
            y(aVar);
        }
        m(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void G(d1 d1Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        j1 j1Var = new j1();
        d1Var.getClass();
        a9.m.c.lazySet(j1Var, d1Var);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = a9.m.b;
        atomicReferenceFieldUpdater2.lazySet(j1Var, d1Var);
        loop0: while (d1Var.f() == d1Var) {
            do {
                if (atomicReferenceFieldUpdater2.compareAndSet(d1Var, d1Var, j1Var)) {
                    j1Var.e(d1Var);
                    break loop0;
                }
            } while (atomicReferenceFieldUpdater2.get(d1Var) == d1Var);
        }
        a9.m mVarG = d1Var.g();
        do {
            atomicReferenceFieldUpdater = b;
            if (atomicReferenceFieldUpdater.compareAndSet(this, d1Var, mVarG)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == d1Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    public final Object I(Object obj, Object obj2) throws a8.a {
        if (!(obj instanceof u0)) {
            return a0.c;
        }
        if (((obj instanceof k0) || (obj instanceof d1)) && !(obj instanceof i) && !(obj2 instanceof k)) {
            u0 u0Var = (u0) obj;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
            Object v0Var = obj2 instanceof u0 ? new v0((u0) obj2) : obj2;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, u0Var, v0Var)) {
                if (atomicReferenceFieldUpdater.get(this) != u0Var) {
                    return a0.e;
                }
            }
            E(obj2);
            p(u0Var, obj2);
            return obj2;
        }
        u0 u0Var2 = (u0) obj;
        j1 j1VarV = v(u0Var2);
        if (j1VarV == null) {
            return a0.e;
        }
        i iVarC = null;
        f1 f1Var = u0Var2 instanceof f1 ? (f1) u0Var2 : null;
        if (f1Var == null) {
            f1Var = new f1(j1VarV, null);
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        synchronized (f1Var) {
            if (f1Var.f()) {
                return a0.c;
            }
            f1.c.set(f1Var, 1);
            if (f1Var != u0Var2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = b;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, u0Var2, f1Var)) {
                    if (atomicReferenceFieldUpdater2.get(this) != u0Var2) {
                        return a0.e;
                    }
                }
            }
            boolean zE = f1Var.e();
            k kVar = obj2 instanceof k ? (k) obj2 : null;
            if (kVar != null) {
                f1Var.a(kVar.a);
            }
            Throwable thD = f1Var.d();
            if (zE) {
                thD = null;
            }
            ref$ObjectRef.element = thD;
            Unit unit = Unit.INSTANCE;
            if (thD != null) {
                D(j1VarV, thD);
            }
            i iVar = u0Var2 instanceof i ? (i) u0Var2 : null;
            if (iVar == null) {
                j1 j1VarC = u0Var2.c();
                if (j1VarC != null) {
                    iVarC = C(j1VarC);
                }
            } else {
                iVarC = iVar;
            }
            if (iVarC != null) {
                while (x0.a(iVarC.f, new e1(this, f1Var, iVarC, obj2), 1) == k1.b) {
                    iVarC = C(iVarC);
                    if (iVarC == null) {
                    }
                }
                return a0.d;
            }
            return r(f1Var, obj2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.z0
    public boolean b() {
        Object objW = w();
        return (objW instanceof u0) && ((u0) objW).b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    @Override // v8.z0
    public void c(CancellationException cancellationException) throws a8.a {
        if (cancellationException == null) {
            cancellationException = new a1(n(), null, this);
        }
        l(cancellationException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext$Element$DefaultImpls.fold(this, obj, function2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext$Element get(CoroutineContext$Key coroutineContext$Key) {
        return CoroutineContext$Element$DefaultImpls.get(this, coroutineContext$Key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext$Key getKey() {
        return y0.b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:6:0x0013 */
    public final boolean h(u0 u0Var, j1 j1Var, d1 d1Var) {
        a9.m mVarD;
        g1 g1Var = new g1(d1Var, this, u0Var);
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a9.m.c;
            mVarD = j1Var.d();
            if (mVarD == null) {
                Object obj = atomicReferenceFieldUpdater.get(j1Var);
                while (true) {
                    mVarD = (a9.m) obj;
                    if (!mVarD.h()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(mVarD);
                }
            }
            a9.m.c.lazySet(d1Var, mVarD);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = a9.m.b;
            atomicReferenceFieldUpdater2.lazySet(d1Var, j1Var);
            g1Var.c = j1Var;
            do {
                if (atomicReferenceFieldUpdater2.compareAndSet(mVarD, j1Var, g1Var)) {
                    break loop0;
                }
            } while (atomicReferenceFieldUpdater2.get(mVarD) == j1Var);
        }
        return g1Var.b(mVarD) == null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void j(Object obj) {
        i(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    /* JADX WARN: Code duplicated, block: B:18:0x003a A[PHI: r0
  0x003a: PHI (r0v1 java.lang.Object) = (r0v0 java.lang.Object), (r0v9 java.lang.Object) binds: [B:3:0x0008, B:16:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x003e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0056 A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #0 {, blocks: (B:24:0x0049, B:26:0x0056, B:31:0x005e, B:37:0x0075, B:35:0x006b, B:36:0x006f), top: B:81:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x005e A[Catch: all -> 0x005c, TRY_ENTER, TryCatch #0 {, blocks: (B:24:0x0049, B:26:0x0056, B:31:0x005e, B:37:0x0075, B:35:0x006b, B:36:0x006f), top: B:81:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x006b A[Catch: all -> 0x005c, TryCatch #0 {, blocks: (B:24:0x0049, B:26:0x0056, B:31:0x005e, B:37:0x0075, B:35:0x006b, B:36:0x006f), top: B:81:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x007e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0082  */
    /* JADX WARN: Code duplicated, block: B:46:0x008e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0092 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0094  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ef A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:81:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x00c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x00dd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:? A[LOOP:2: B:56:0x00af->B:98:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x003e, please report this as an issue */
    public final boolean k(Object obj) throws a8.a {
        Throwable thQ;
        Object objW;
        Throwable thD;
        a9.w wVar;
        u0 u0Var;
        j1 j1VarV;
        f1 f1Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Object objI;
        Object objI2 = a0.c;
        if (u()) {
            do {
                Object objW2 = w();
                if (!(objW2 instanceof u0) || ((objW2 instanceof f1) && ((f1) objW2).f())) {
                    objI2 = a0.c;
                    break;
                }
                objI2 = I(objW2, new k(false, q(obj)));
            } while (objI2 == a0.e);
            if (objI2 != a0.d) {
                if (objI2 == a0.c) {
                    thQ = null;
                    loop1: while (true) {
                        objW = w();
                        if (objW instanceof f1) {
                            synchronized (objW) {
                                if (f1.e.get((f1) objW) == a0.g) {
                                    wVar = a0.f;
                                } else {
                                    boolean zE = ((f1) objW).e();
                                    if (obj == null || !zE) {
                                        if (thQ == null) {
                                            thQ = q(obj);
                                        }
                                        ((f1) objW).a(thQ);
                                    }
                                    thD = zE ? null : ((f1) objW).d();
                                    if (thD != null) {
                                        D(((f1) objW).b, thD);
                                    }
                                    wVar = a0.c;
                                }
                            }
                        } else if (objW instanceof u0) {
                            if (thQ == null) {
                                thQ = q(obj);
                            }
                            u0Var = (u0) objW;
                            if (u0Var.b()) {
                                j1VarV = v(u0Var);
                                if (j1VarV == null) {
                                    continue;
                                } else {
                                    f1Var = new f1(j1VarV, thQ);
                                    atomicReferenceFieldUpdater = b;
                                    while (true) {
                                        if (atomicReferenceFieldUpdater.compareAndSet(this, u0Var, f1Var)) {
                                            D(j1VarV, thQ);
                                            wVar = a0.c;
                                        } else if (atomicReferenceFieldUpdater.get(this) != u0Var) {
                                        }
                                    }
                                }
                            } else {
                                objI = I(objW, new k(false, thQ));
                                if (objI != a0.c) {
                                    org.apache.commons.net.ftp.a.c(objW, "Cannot happen in ");
                                    return false;
                                }
                                if (objI != a0.e) {
                                    objI2 = objI;
                                    break;
                                }
                            }
                        } else {
                            wVar = a0.f;
                        }
                        objI2 = wVar;
                        break;
                    }
                }
                if (objI2 != a0.c && objI2 != a0.d) {
                    if (objI2 == a0.f) {
                        return false;
                    }
                    i(objI2);
                    return true;
                }
            }
        } else {
            if (objI2 == a0.c) {
                thQ = null;
                loop1: while (true) {
                    objW = w();
                    if (objW instanceof f1) {
                        synchronized (objW) {
                            if (f1.e.get((f1) objW) == a0.g) {
                                wVar = a0.f;
                            } else {
                                boolean zE2 = ((f1) objW).e();
                                if (obj == null) {
                                    if (thQ == null) {
                                        thQ = q(obj);
                                    }
                                    ((f1) objW).a(thQ);
                                } else {
                                    if (thQ == null) {
                                        thQ = q(obj);
                                    }
                                    ((f1) objW).a(thQ);
                                }
                                if (zE2) {
                                }
                                if (thD != null) {
                                    D(((f1) objW).b, thD);
                                }
                                wVar = a0.c;
                            }
                        }
                    } else if (objW instanceof u0) {
                        if (thQ == null) {
                            thQ = q(obj);
                        }
                        u0Var = (u0) objW;
                        if (u0Var.b()) {
                            j1VarV = v(u0Var);
                            if (j1VarV == null) {
                                continue;
                            } else {
                                f1Var = new f1(j1VarV, thQ);
                                atomicReferenceFieldUpdater = b;
                                while (true) {
                                    if (atomicReferenceFieldUpdater.compareAndSet(this, u0Var, f1Var)) {
                                        D(j1VarV, thQ);
                                        wVar = a0.c;
                                    } else if (atomicReferenceFieldUpdater.get(this) != u0Var) {
                                    }
                                }
                            }
                        } else {
                            objI = I(objW, new k(false, thQ));
                            if (objI != a0.c) {
                                org.apache.commons.net.ftp.a.c(objW, "Cannot happen in ");
                                return false;
                            }
                            if (objI != a0.e) {
                                objI2 = objI;
                                break;
                            }
                        }
                    } else {
                        wVar = a0.f;
                    }
                    objI2 = wVar;
                    break;
                }
            }
            if (objI2 != a0.c) {
                if (objI2 == a0.f) {
                    return false;
                }
                i(objI2);
                return true;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    public void l(CancellationException cancellationException) throws a8.a {
        k(cancellationException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean m(Throwable th) {
        if (A()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        h hVar = (h) c.get(this);
        if (hVar == null || hVar == k1.b) {
            return z;
        }
        return hVar.a(th) || z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext minusKey(CoroutineContext$Key coroutineContext$Key) {
        return CoroutineContext$Element$DefaultImpls.minusKey(this, coroutineContext$Key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String n() {
        return "Job was cancelled";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean o(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return k(th) && t();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    public final void p(u0 u0Var, Object obj) throws a8.a {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
        h hVar = (h) atomicReferenceFieldUpdater.get(this);
        if (hVar != null) {
            hVar.dispose();
            atomicReferenceFieldUpdater.set(this, k1.b);
        }
        a8.a aVar = null;
        k kVar = obj instanceof k ? (k) obj : null;
        Throwable th = kVar != null ? kVar.a : null;
        if (u0Var instanceof d1) {
            try {
                ((d1) u0Var).j(th);
                return;
            } catch (Throwable th2) {
                y(new a8.a("Exception in completion handler " + u0Var + " for " + this, 6, th2));
                return;
            }
        }
        j1 j1VarC = u0Var.c();
        if (j1VarC != null) {
            Object objF = j1VarC.f();
            objF.getClass();
            for (a9.m mVarG = (a9.m) objF; !Intrinsics.areEqual(mVarG, j1VarC); mVarG = mVarG.g()) {
                if (mVarG instanceof d1) {
                    d1 d1Var = (d1) mVarG;
                    try {
                        d1Var.j(th);
                    } catch (Throwable th3) {
                        if (aVar != null) {
                            ExceptionsKt.addSuppressed(aVar, th3);
                        } else {
                            aVar = new a8.a("Exception in completion handler " + d1Var + " for " + this, 6, th3);
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                }
            }
            if (aVar != null) {
                y(aVar);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext$Element$DefaultImpls.plus(this, coroutineContext);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Throwable q(Object obj) {
        Throwable thD;
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new a1(n(), null, this) : th;
        }
        obj.getClass();
        h1 h1Var = (h1) ((m1) obj);
        Object objW = h1Var.w();
        if (objW instanceof f1) {
            thD = ((f1) objW).d();
        } else if (objW instanceof k) {
            thD = ((k) objW).a;
        } else {
            if (objW instanceof u0) {
                org.apache.commons.net.ftp.a.c(objW, "Cannot be cancelling child in this state: ");
                return null;
            }
            thD = null;
        }
        CancellationException cancellationException = thD instanceof CancellationException ? (CancellationException) thD : null;
        return cancellationException == null ? new a1("Parent job is ".concat(H(objW)), thD, h1Var) : cancellationException;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    public final Object r(f1 f1Var, Object obj) throws a8.a {
        Object obj2 = null;
        Throwable a1Var = null;
        k kVar = obj instanceof k ? (k) obj : null;
        Throwable th = kVar != null ? kVar.a : null;
        synchronized (f1Var) {
            f1Var.e();
            ArrayList arrayListG = f1Var.g(th);
            if (!arrayListG.isEmpty()) {
                int size = arrayListG.size();
                int i = 0;
                while (i < size) {
                    Object obj3 = arrayListG.get(i);
                    i++;
                    if (!(((Throwable) obj3) instanceof CancellationException)) {
                        obj2 = obj3;
                        break;
                    }
                }
                a1Var = (Throwable) obj2;
                if (a1Var == null) {
                    a1Var = (Throwable) arrayListG.get(0);
                }
            } else if (f1Var.e()) {
                a1Var = new a1(n(), null, this);
            }
            if (a1Var != null && arrayListG.size() > 1) {
                Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListG.size()));
                int size2 = arrayListG.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj4 = arrayListG.get(i2);
                    i2++;
                    Throwable th2 = (Throwable) obj4;
                    if (th2 != a1Var && th2 != a1Var && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                        ExceptionsKt.addSuppressed(a1Var, th2);
                    }
                }
            }
        }
        if (a1Var != null && a1Var != th) {
            obj = new k(false, a1Var);
        }
        if (a1Var != null && (m(a1Var) || x(a1Var))) {
            obj.getClass();
            k.b.compareAndSet((k) obj, 0, 1);
        }
        E(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
        Object v0Var = obj instanceof u0 ? new v0((u0) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, f1Var, v0Var) && atomicReferenceFieldUpdater.get(this) == f1Var) {
        }
        p(f1Var, obj);
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CancellationException s() {
        CancellationException cancellationException;
        Object objW = w();
        if (objW instanceof f1) {
            Throwable thD = ((f1) objW).d();
            if (thD == null) {
                org.apache.commons.net.ftp.a.c(this, "Job is still new or active: ");
                return null;
            }
            String strConcat = getClass().getSimpleName().concat(" is cancelling");
            cancellationException = thD instanceof CancellationException ? (CancellationException) thD : null;
            return cancellationException == null ? new a1(strConcat, thD, this) : cancellationException;
        }
        if (objW instanceof u0) {
            org.apache.commons.net.ftp.a.c(this, "Job is still new or active: ");
            return null;
        }
        if (!(objW instanceof k)) {
            return new a1(getClass().getSimpleName().concat(" has completed normally"), null, this);
        }
        Throwable th = ((k) objW).a;
        cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        return cancellationException == null ? new a1(n(), th, this) : cancellationException;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean t() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName() + '{' + H(w()) + '}');
        sb.append('@');
        sb.append(a0.a(this));
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean u() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final j1 v(u0 u0Var) {
        j1 j1VarC = u0Var.c();
        if (j1VarC != null) {
            return j1VarC;
        }
        if (u0Var instanceof k0) {
            return new j1();
        }
        if (u0Var instanceof d1) {
            G((d1) u0Var);
            return null;
        }
        org.apache.commons.net.ftp.a.c(u0Var, "State should have list: ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object w() {
        while (true) {
            Object obj = b.get(this);
            if (!(obj instanceof a9.b)) {
                return obj;
            }
            ((a9.b) obj).b(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean x(Throwable th) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void z(z0 z0Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
        k1 k1Var = k1.b;
        if (z0Var == null) {
            atomicReferenceFieldUpdater.set(this, k1Var);
            return;
        }
        h1 h1Var = (h1) z0Var;
        loop0: while (true) {
            Object objW = h1Var.w();
            boolean z = objW instanceof k0;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = b;
            if (!z) {
                if (!(objW instanceof t0)) {
                    break;
                }
                j1 j1Var = ((t0) objW).b;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(h1Var, objW, j1Var)) {
                        h1Var.getClass();
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater2.get(h1Var) == objW);
            } else {
                if (((k0) objW).b) {
                    break;
                }
                k0 k0Var = a0.i;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(h1Var, objW, k0Var)) {
                        h1Var.getClass();
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater2.get(h1Var) == objW);
            }
        }
        h hVar = (h) x0.a(h1Var, new i(this), 2);
        atomicReferenceFieldUpdater.set(this, hVar);
        if (w() instanceof u0) {
            return;
        }
        hVar.dispose();
        atomicReferenceFieldUpdater.set(this, k1Var);
    }

    public void F() {
    }

    public void E(Object obj) {
    }

    public void i(Object obj) {
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    public void y(a8.a aVar) throws a8.a {
        throw aVar;
    }
}
