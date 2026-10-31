package x8;

import a9.u;
import a9.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import v8.a0;
import v8.u1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class b implements f {
    public static final AtomicLongFieldUpdater c = AtomicLongFieldUpdater.newUpdater(b.class, "sendersAndCloseStatus");
    public static final AtomicLongFieldUpdater d = AtomicLongFieldUpdater.newUpdater(b.class, "receivers");
    public static final AtomicLongFieldUpdater e = AtomicLongFieldUpdater.newUpdater(b.class, "bufferEnd");
    public static final AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(b.class, "completedExpandBuffersAndPauseFlag");
    public static final AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "sendSegment");
    public static final AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "receiveSegment");
    public static final AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "bufferEndSegment");
    public static final AtomicReferenceFieldUpdater j = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_closeCause");
    public static final AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "closeHandler");

    @Volatile
    private volatile Object _closeCause;
    public final int b;

    @Volatile
    private volatile long bufferEnd;

    @Volatile
    private volatile Object bufferEndSegment;

    @Volatile
    private volatile Object closeHandler;

    @Volatile
    private volatile long completedExpandBuffersAndPauseFlag;

    @Volatile
    private volatile Object receiveSegment;

    @Volatile
    private volatile long receivers;

    @Volatile
    private volatile Object sendSegment;

    @Volatile
    private volatile long sendersAndCloseStatus;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(int i2) {
        this.b = i2;
        if (i2 < 0) {
            l9.i.d(ai.onnxruntime.a.f(i2, "Invalid channel capacity: ", ", should be >=0"));
            throw null;
        }
        k kVar = d.a;
        this.bufferEnd = i2 != 0 ? i2 != Integer.MAX_VALUE ? i2 : Long.MAX_VALUE : 0L;
        this.completedExpandBuffersAndPauseFlag = e.get(this);
        k kVar2 = new k(0L, null, this, 3);
        this.sendSegment = kVar2;
        this.receiveSegment = kVar2;
        if (t()) {
            kVar2 = d.a;
            kVar2.getClass();
        }
        this.bufferEndSegment = kVar2;
        this._closeCause = d.s;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final k a(b bVar, long j2, k kVar) {
        Object objA;
        b bVar2;
        k kVar2 = d.a;
        c cVar = c.b;
        loop0: while (true) {
            objA = a9.d.a(kVar, j2, cVar);
            if (!a9.a.d(objA)) {
                u uVarB = a9.a.b(objA);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
                    u uVar = (u) atomicReferenceFieldUpdater.get(bVar);
                    if (uVar.d >= uVarB.d) {
                        break loop0;
                    }
                    if (!uVarB.i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(bVar, uVar, uVarB)) {
                            if (!uVar.e()) {
                                break loop0;
                            }
                            uVar.d();
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(bVar) == uVar);
                    if (uVarB.e()) {
                        uVarB.d();
                    }
                }
            } else {
                break;
            }
        }
        boolean zD = a9.a.d(objA);
        AtomicLongFieldUpdater atomicLongFieldUpdater = d;
        if (zD) {
            bVar.r();
            if (kVar.d * ((long) d.b) < atomicLongFieldUpdater.get(bVar)) {
                kVar.a();
                return null;
            }
        } else {
            k kVar3 = (k) a9.a.b(objA);
            long j3 = kVar3.d;
            if (j3 <= j2) {
                return kVar3;
            }
            long j4 = ((long) d.b) * j3;
            while (true) {
                long j5 = c.get(bVar);
                long j6 = 1152921504606846975L & j5;
                if (j6 >= j4) {
                    bVar2 = bVar;
                    break;
                }
                bVar2 = bVar;
                if (c.compareAndSet(bVar2, j5, (((long) ((int) (j5 >> 60))) << 60) + j6)) {
                    break;
                }
                bVar = bVar2;
            }
            if (j3 * ((long) d.b) < atomicLongFieldUpdater.get(bVar2)) {
                kVar3.a();
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void b(b bVar, Object obj, v8.e eVar) {
        Throwable thN = bVar.n();
        Result$Companion result$Companion = Result.Companion;
        eVar.resumeWith(Result.constructor-impl(ResultKt.createFailure(thN)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final int d(b bVar, k kVar, int i2, Object obj, long j2, Object obj2, boolean z) {
        kVar.m(i2, obj);
        if (z) {
            return bVar.A(kVar, i2, obj, j2, obj2, z);
        }
        Object objK = kVar.k(i2);
        if (objK == null) {
            if (bVar.g(j2)) {
                if (kVar.j(i2, null, d.d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (kVar.j(i2, null, obj2)) {
                    return 2;
                }
            }
        } else if (objK instanceof u1) {
            kVar.m(i2, null);
            if (bVar.x(objK, obj)) {
                kVar.n(i2, d.i);
                return 0;
            }
            w wVar = d.k;
            if (kVar.g.getAndSet((i2 * 2) + 1, wVar) == wVar) {
                return 5;
            }
            kVar.l(i2, true);
            return 5;
        }
        return bVar.A(kVar, i2, obj, j2, obj2, z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void p(b bVar) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f;
        if ((atomicLongFieldUpdater.addAndGet(bVar, 1L) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(bVar) & 4611686018427387904L) != 0) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean y(Object obj) {
        if (!(obj instanceof v8.d)) {
            org.apache.commons.net.ftp.a.c(obj, "Unexpected waiter: ");
            return false;
        }
        v8.d dVar = (v8.d) obj;
        Unit unit = Unit.INSTANCE;
        k kVar = d.a;
        w wVarA = dVar.a(unit, null);
        if (wVarA == null) {
            return false;
        }
        dVar.g(wVarA);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int A(k kVar, int i2, Object obj, long j2, Object obj2, boolean z) {
        while (true) {
            Object objK = kVar.k(i2);
            if (objK == null) {
                if (!g(j2) || z) {
                    if (z) {
                        if (kVar.j(i2, null, d.j)) {
                            kVar.h();
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (kVar.j(i2, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (kVar.j(i2, null, d.d)) {
                    break;
                }
            } else {
                if (objK != d.e) {
                    w wVar = d.k;
                    if (objK == wVar) {
                        kVar.m(i2, null);
                        return 5;
                    }
                    if (objK == d.h) {
                        kVar.m(i2, null);
                        return 5;
                    }
                    if (objK == d.l) {
                        kVar.m(i2, null);
                        r();
                        return 4;
                    }
                    kVar.m(i2, null);
                    if (objK instanceof s) {
                        objK = ((s) objK).a;
                    }
                    if (x(objK, obj)) {
                        kVar.n(i2, d.i);
                        return 0;
                    }
                    if (kVar.g.getAndSet((i2 * 2) + 1, wVar) != wVar) {
                        kVar.l(i2, true);
                    }
                    return 5;
                }
                if (kVar.j(i2, objK, d.d)) {
                    break;
                }
            }
        }
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x8.f
    public final void c(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        h(true, cancellationException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:22:0x0066  */
    /* JADX WARN: Code duplicated, block: B:24:0x0069  */
    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:28:0x006f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0072  */
    /* JADX WARN: Code duplicated, block: B:33:0x0076  */
    /* JADX WARN: Code duplicated, block: B:37:0x0086  */
    /* JADX WARN: Code duplicated, block: B:43:0x009c  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x009a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x007c A[SYNTHETIC] */
    @Override // x8.r
    public Object e(Object obj) {
        int iD;
        u1 u1Var;
        AtomicLongFieldUpdater atomicLongFieldUpdater = c;
        long j2 = atomicLongFieldUpdater.get(this);
        boolean z = false;
        long j3 = 1152921504606846975L;
        boolean z2 = q(j2, false) ? false : !g(j2 & 1152921504606846975L);
        i iVar = j.a;
        if (z2) {
            return iVar;
        }
        b8.d dVar = d.j;
        k kVar = (k) g.get(this);
        while (true) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = andIncrement & j3;
            boolean zQ = q(andIncrement, z);
            int i2 = d.b;
            long j5 = i2;
            long j6 = j4 / j5;
            int i3 = (int) (j4 % j5);
            if (kVar.d == j6) {
                iD = d(this, kVar, i3, obj, j4, dVar, zQ);
                if (iD != 0) {
                    kVar.a();
                    return Unit.INSTANCE;
                }
                if (iD != 1) {
                    return Unit.INSTANCE;
                }
                if (iD != 2) {
                    if (zQ) {
                        kVar.h();
                        return new h(n());
                    }
                    if (dVar instanceof u1) {
                        u1Var = (u1) dVar;
                    } else {
                        u1Var = null;
                    }
                    if (u1Var != null) {
                        u1Var.b(kVar, i3 + i2);
                    }
                    kVar.h();
                    return iVar;
                }
                if (iD != 3) {
                    j1.i.l("unexpected");
                    return null;
                }
                if (iD != 4) {
                    if (j4 < d.get(this)) {
                        kVar.a();
                    }
                    return new h(n());
                }
                if (iD == 5) {
                    kVar.a();
                }
                z = false;
            } else {
                k kVarA = a(this, j6, kVar);
                if (kVarA != null) {
                    kVar = kVarA;
                    iD = d(this, kVar, i3, obj, j4, dVar, zQ);
                    if (iD != 0) {
                        kVar.a();
                        return Unit.INSTANCE;
                    }
                    if (iD != 1) {
                        return Unit.INSTANCE;
                    }
                    if (iD != 2) {
                        if (zQ) {
                            kVar.h();
                            return new h(n());
                        }
                        if (dVar instanceof u1) {
                            u1Var = (u1) dVar;
                        } else {
                            u1Var = null;
                        }
                        if (u1Var != null) {
                            u1Var.b(kVar, i3 + i2);
                        }
                        kVar.h();
                        return iVar;
                    }
                    if (iD != 3) {
                        j1.i.l("unexpected");
                        return null;
                    }
                    if (iD != 4) {
                        if (j4 < d.get(this)) {
                            kVar.a();
                        }
                        return new h(n());
                    }
                    if (iD == 5) {
                        kVar.a();
                    }
                    z = false;
                } else {
                    if (zQ) {
                        return new h(n());
                    }
                    z = false;
                }
            }
            j3 = 1152921504606846975L;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:100:0x0190 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:93:0x017e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0188  */
    @Override // x8.r
    public Object f(Object obj, Continuation continuation) throws Throwable {
        Unit unit;
        Object objQ;
        Object obj2;
        b bVar;
        k kVar;
        boolean z;
        b bVar2 = this;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
        k kVar2 = (k) atomicReferenceFieldUpdater.get(bVar2);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = c;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(bVar2);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zQ = bVar2.q(andIncrement, false);
            int i2 = d.b;
            long j3 = i2;
            long j4 = j2 / j3;
            int i3 = (int) (j2 % j3);
            if (kVar2.d != j4) {
                k kVarA = a(bVar2, j4, kVar2);
                if (kVarA != null) {
                    kVar2 = kVarA;
                } else if (zQ) {
                    Object objV = v(obj, continuation);
                    if (objV != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        break;
                    }
                    return objV;
                }
            }
            int iD = d(bVar2, kVar2, i3, obj, j2, null, zQ);
            if (iD == 0) {
                kVar2.a();
            } else {
                if (iD == 1) {
                    break;
                }
                if (iD != 2) {
                    AtomicLongFieldUpdater atomicLongFieldUpdater2 = d;
                    if (iD == 3) {
                        v8.e eVarB = a0.b(IntrinsicsKt.intercepted(continuation));
                        Object obj3 = obj;
                        try {
                            int iD2 = d(bVar2, kVar2, i3, obj3, j2, eVarB, false);
                            try {
                                if (iD2 == 0) {
                                    kVar2.a();
                                    Result$Companion result$Companion = Result.Companion;
                                    unit = Unit.INSTANCE;
                                } else if (iD2 != 1) {
                                    if (iD2 != 2) {
                                        if (iD2 != 4) {
                                            String str = "unexpected";
                                            if (iD2 != 5) {
                                                throw new IllegalStateException("unexpected");
                                            }
                                            kVar2.a();
                                            k kVar3 = (k) atomicReferenceFieldUpdater.get(bVar2);
                                            while (true) {
                                                long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(bVar2);
                                                long j5 = andIncrement2 & 1152921504606846975L;
                                                boolean zQ2 = bVar2.q(andIncrement2, false);
                                                int i4 = d.b;
                                                atomicLongFieldUpdater = atomicLongFieldUpdater;
                                                long j6 = i4;
                                                str = str;
                                                long j7 = j5 / j6;
                                                int i5 = (int) (j5 % j6);
                                                if (kVar3.d != j7) {
                                                    k kVarA2 = a(bVar2, j7, kVar3);
                                                    if (kVarA2 != null) {
                                                        z = zQ2;
                                                        kVar = kVarA2;
                                                    } else if (zQ2) {
                                                        b(bVar2, obj3, eVarB);
                                                    }
                                                } else {
                                                    kVar = kVar3;
                                                    z = zQ2;
                                                }
                                                int iD3 = d(bVar2, kVar, i5, obj3, j5, eVarB, z);
                                                Object obj4 = obj3;
                                                bVar = bVar2;
                                                k kVar4 = kVar;
                                                obj2 = obj4;
                                                if (iD3 == 0) {
                                                    kVar4.a();
                                                    Result$Companion result$Companion2 = Result.Companion;
                                                    unit = Unit.INSTANCE;
                                                } else if (iD3 == 1) {
                                                    Result$Companion result$Companion3 = Result.Companion;
                                                    unit = Unit.INSTANCE;
                                                } else if (iD3 != 2) {
                                                    if (iD3 == 3) {
                                                        throw new IllegalStateException(str);
                                                    }
                                                    if (iD3 != 4) {
                                                        if (iD3 == 5) {
                                                            kVar4.a();
                                                        }
                                                        kVar3 = kVar4;
                                                        bVar2 = bVar;
                                                        obj3 = obj2;
                                                    } else if (j5 < atomicLongFieldUpdater2.get(bVar)) {
                                                        kVar4.a();
                                                    }
                                                } else if (z) {
                                                    kVar4.h();
                                                } else {
                                                    eVarB.b(kVar4, i5 + i4);
                                                }
                                            }
                                            eVarB.x();
                                            throw th;
                                        }
                                        obj2 = obj3;
                                        bVar = bVar2;
                                        if (j2 < atomicLongFieldUpdater2.get(bVar)) {
                                            kVar2.a();
                                        }
                                        b(bVar, obj2, eVarB);
                                    } else {
                                        eVarB.b(kVar2, i3 + i2);
                                    }
                                    objQ = eVarB.q();
                                    if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                        DebugProbesKt.probeCoroutineSuspended(continuation);
                                    }
                                    if (objQ != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                        objQ = Unit.INSTANCE;
                                    }
                                    if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                        return objQ;
                                    }
                                } else {
                                    Result$Companion result$Companion4 = Result.Companion;
                                    unit = Unit.INSTANCE;
                                }
                                eVarB.resumeWith(Result.constructor-impl(unit));
                                objQ = eVarB.q();
                                if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    DebugProbesKt.probeCoroutineSuspended(continuation);
                                }
                                if (objQ != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    objQ = Unit.INSTANCE;
                                }
                                if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    return objQ;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } else {
                        if (iD == 4) {
                            if (j2 < atomicLongFieldUpdater2.get(bVar2)) {
                                kVar2.a();
                            }
                            Object objV2 = v(obj, continuation);
                            if (objV2 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                break;
                            }
                            return objV2;
                        }
                        if (iD == 5) {
                            kVar2.a();
                        }
                    }
                } else if (zQ) {
                    kVar2.h();
                    Object objV3 = v(obj, continuation);
                    if (objV3 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objV3;
                    }
                }
            }
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean g(long j2) {
        return j2 < e.get(this) || j2 < d.get(this) + ((long) this.b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean h(boolean z, Throwable th) {
        b bVar;
        boolean z2;
        long j2;
        long j3;
        long j4;
        Object obj;
        long j5;
        long j6;
        AtomicLongFieldUpdater atomicLongFieldUpdater = c;
        if (!z) {
            bVar = this;
            break;
        }
        do {
            j6 = atomicLongFieldUpdater.get(this);
            if (((int) (j6 >> 60)) != 0) {
                bVar = this;
                break;
            }
            k kVar = d.a;
            bVar = this;
        } while (!atomicLongFieldUpdater.compareAndSet(bVar, j6, (j6 & 1152921504606846975L) + (((long) 1) << 60)));
        w wVar = d.s;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
            if (atomicReferenceFieldUpdater.compareAndSet(this, wVar, th)) {
                z2 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != wVar) {
                z2 = false;
                break;
            }
        }
        if (z) {
            do {
                j5 = atomicLongFieldUpdater.get(this);
            } while (!atomicLongFieldUpdater.compareAndSet(bVar, j5, (((long) 3) << 60) + (j5 & 1152921504606846975L)));
        } else {
            do {
                j2 = atomicLongFieldUpdater.get(this);
                int i2 = (int) (j2 >> 60);
                if (i2 == 0) {
                    j3 = j2 & 1152921504606846975L;
                    j4 = 2;
                } else {
                    if (i2 != 1) {
                        break;
                    }
                    j3 = j2 & 1152921504606846975L;
                    j4 = 3;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(bVar, j2, (j4 << 60) + j3));
        }
        r();
        if (z2) {
            loop3: while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = k;
                obj = atomicReferenceFieldUpdater2.get(this);
                w wVar2 = obj == null ? d.q : d.r;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, wVar2)) {
                        break loop3;
                    }
                } while (atomicReferenceFieldUpdater2.get(this) == obj);
            }
            if (obj != null) {
                ((Function1) obj).invoke(m());
                return z2;
            }
        }
        return z2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final k i(long j2) {
        Object objE;
        long j3;
        Object obj = i.get(this);
        k kVar = (k) g.get(this);
        if (kVar.d > ((k) obj).d) {
            obj = kVar;
        }
        k kVar2 = (k) h.get(this);
        if (kVar2.d > ((k) obj).d) {
            obj = kVar2;
        }
        a9.e eVar = (a9.e) obj;
        loop0: while (true) {
            eVar.getClass();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a9.e.b;
            Object obj2 = atomicReferenceFieldUpdater.get(eVar);
            objE = null;
            w wVar = a9.d.a;
            if (obj2 == wVar) {
                break;
            }
            a9.e eVar2 = (a9.e) obj2;
            if (eVar2 == null) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(eVar, null, wVar)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(eVar) == null);
            } else {
                eVar = eVar2;
            }
        }
        k kVar3 = (k) eVar;
        if (s()) {
            k kVar4 = kVar3;
            loop2: while (true) {
                int i2 = d.b - 1;
                while (true) {
                    if (-1 < i2) {
                        j3 = (kVar4.d * ((long) d.b)) + ((long) i2);
                        if (j3 >= d.get(this)) {
                            while (true) {
                                Object objK = kVar4.k(i2);
                                if (objK != null && objK != d.e) {
                                    if (objK != d.d) {
                                        break;
                                    }
                                    break loop2;
                                }
                                if (kVar4.j(i2, objK, d.l)) {
                                    kVar4.h();
                                    break;
                                }
                            }
                            i2--;
                        }
                    } else {
                        kVar4 = (k) ((a9.e) a9.e.c.get(kVar4));
                        if (kVar4 == null) {
                        }
                    }
                    j3 = -1;
                    break;
                }
            }
            if (j3 != -1) {
                j(j3);
            }
        }
        loop5: for (k kVar5 = kVar3; kVar5 != null; kVar5 = (k) ((a9.e) a9.e.c.get(kVar5))) {
            for (int i3 = d.b - 1; -1 < i3; i3--) {
                if ((kVar5.d * ((long) d.b)) + ((long) i3) < j2) {
                    break loop5;
                }
                while (true) {
                    Object objK2 = kVar5.k(i3);
                    if (objK2 != null && objK2 != d.e) {
                        if (!(objK2 instanceof s)) {
                            if (!(objK2 instanceof u1)) {
                                break;
                            }
                            if (kVar5.j(i3, objK2, d.l)) {
                                objE = a9.a.e(objE, objK2);
                                kVar5.l(i3, true);
                                break;
                            }
                        } else {
                            if (kVar5.j(i3, objK2, d.l)) {
                                objE = a9.a.e(objE, ((s) objK2).a);
                                kVar5.l(i3, true);
                                break;
                            }
                        }
                    } else {
                        if (kVar5.j(i3, objK2, d.l)) {
                            kVar5.h();
                            break;
                        }
                    }
                }
            }
        }
        if (objE != null) {
            if (!(objE instanceof ArrayList)) {
                w((u1) objE, true);
                return kVar3;
            }
            ArrayList arrayList = (ArrayList) objE;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                w((u1) arrayList.get(size), true);
            }
        }
        return kVar3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j(long j2) {
        k kVar = (k) h.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = d;
            long j3 = atomicLongFieldUpdater.get(this);
            if (j2 < Math.max(((long) this.b) + j3, e.get(this))) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j3, 1 + j3)) {
                long j4 = d.b;
                long j5 = j3 / j4;
                int i2 = (int) (j3 % j4);
                if (kVar.d != j5) {
                    k kVarL = l(j5, kVar);
                    if (kVarL != null) {
                        kVar = kVarL;
                    }
                }
                k kVar2 = kVar;
                if (z(kVar2, i2, j3, null) != d.o || j3 < o()) {
                    kVar2.a();
                }
                kVar = kVar2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k() {
        Object objA;
        if (t()) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
        k kVar = (k) atomicReferenceFieldUpdater.get(this);
        while (true) {
            long andIncrement = e.getAndIncrement(this);
            long j2 = andIncrement / ((long) d.b);
            if (o() <= andIncrement) {
                if (kVar.d < j2 && kVar.b() != null) {
                    u(j2, kVar);
                }
                p(this);
                return;
            }
            if (kVar.d != j2) {
                c cVar = c.b;
                while (true) {
                    objA = a9.d.a(kVar, j2, cVar);
                    if (!a9.a.d(objA)) {
                        u uVarB = a9.a.b(objA);
                        while (true) {
                            u uVar = (u) atomicReferenceFieldUpdater.get(this);
                            if (uVar.d >= uVarB.d) {
                                break;
                            }
                            if (!uVarB.i()) {
                                break;
                            }
                            do {
                                if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, uVarB)) {
                                    if (!uVar.e()) {
                                        break;
                                    }
                                    uVar.d();
                                    break;
                                }
                            } while (atomicReferenceFieldUpdater.get(this) == uVar);
                            if (uVarB.e()) {
                                uVarB.d();
                            }
                        }
                    } else {
                        break;
                    }
                }
                k kVar2 = null;
                if (a9.a.d(objA)) {
                    r();
                    u(j2, kVar);
                    p(this);
                } else {
                    k kVar3 = (k) a9.a.b(objA);
                    long j3 = kVar3.d;
                    if (j3 > j2) {
                        long j4 = d.b;
                        if (e.compareAndSet(this, 1 + andIncrement, j3 * j4)) {
                            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
                            if ((atomicLongFieldUpdater.addAndGet(this, (j3 * j4) - andIncrement) & 4611686018427387904L) != 0) {
                                while ((atomicLongFieldUpdater.get(this) & 4611686018427387904L) != 0) {
                                }
                            }
                        } else {
                            p(this);
                        }
                    } else {
                        kVar2 = kVar3;
                    }
                }
                if (kVar2 == null) {
                    continue;
                } else {
                    kVar = kVar2;
                }
            }
            int i2 = (int) (andIncrement % ((long) d.b));
            Object objK = kVar.k(i2);
            boolean z = objK instanceof u1;
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = d;
            if (!z || andIncrement < atomicLongFieldUpdater2.get(this) || !kVar.j(i2, objK, d.g)) {
                while (true) {
                    Object objK2 = kVar.k(i2);
                    if (objK2 instanceof u1) {
                        if (andIncrement < atomicLongFieldUpdater2.get(this)) {
                            if (kVar.j(i2, objK2, new s((u1) objK2))) {
                                p(this);
                                return;
                            }
                        } else if (kVar.j(i2, objK2, d.g)) {
                            if (!y(objK2)) {
                                kVar.n(i2, d.j);
                                kVar.h();
                                break;
                            } else {
                                kVar.n(i2, d.d);
                                p(this);
                                return;
                            }
                        }
                    } else {
                        if (objK2 == d.j) {
                            break;
                        }
                        if (objK2 == null) {
                            if (kVar.j(i2, objK2, d.e)) {
                                p(this);
                                return;
                            }
                        } else if (objK2 == d.d || objK2 == d.h || objK2 == d.i || objK2 == d.k || objK2 == d.l) {
                            p(this);
                            return;
                        } else if (objK2 != d.f) {
                            org.apache.commons.net.ftp.a.c(objK2, "Unexpected cell state: ");
                            return;
                        }
                    }
                }
                p(this);
            } else if (y(objK)) {
                kVar.n(i2, d.d);
                p(this);
                return;
            } else {
                kVar.n(i2, d.j);
                kVar.h();
                p(this);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final k l(long j2, k kVar) {
        Object objA;
        long j3;
        k kVar2 = d.a;
        c cVar = c.b;
        loop0: while (true) {
            objA = a9.d.a(kVar, j2, cVar);
            if (!a9.a.d(objA)) {
                u uVarB = a9.a.b(objA);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
                    u uVar = (u) atomicReferenceFieldUpdater.get(this);
                    if (uVar.d >= uVarB.d) {
                        break loop0;
                    }
                    if (!uVarB.i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, uVarB)) {
                            if (!uVar.e()) {
                                break loop0;
                            }
                            uVar.d();
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == uVar);
                    if (uVarB.e()) {
                        uVarB.d();
                    }
                }
            } else {
                break;
            }
        }
        if (a9.a.d(objA)) {
            r();
            if (kVar.d * ((long) d.b) < o()) {
                kVar.a();
                return null;
            }
        } else {
            k kVar3 = (k) a9.a.b(objA);
            long j4 = kVar3.d;
            if (!t() && j2 <= e.get(this) / ((long) d.b)) {
                loop3: while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = i;
                    u uVar2 = (u) atomicReferenceFieldUpdater2.get(this);
                    if (uVar2.d >= j4 || !kVar3.i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, uVar2, kVar3)) {
                            if (!uVar2.e()) {
                                break loop3;
                            }
                            uVar2.d();
                            break loop3;
                        }
                    } while (atomicReferenceFieldUpdater2.get(this) == uVar2);
                    if (kVar3.e()) {
                        kVar3.d();
                    }
                }
            }
            if (j4 <= j2) {
                return kVar3;
            }
            long j5 = j4 * ((long) d.b);
            do {
                j3 = d.get(this);
                if (j3 >= j5) {
                    break;
                }
            } while (!d.compareAndSet(this, j3, j5));
            if (j4 * ((long) d.b) < o()) {
                kVar3.a();
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Throwable m() {
        return (Throwable) j.get(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Throwable n() {
        Throwable thM = m();
        return thM == null ? new a8.f("Channel was closed") : thM;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long o() {
        return c.get(this) & 1152921504606846975L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean q(long j2, boolean z) {
        int i2 = (int) (j2 >> 60);
        if (i2 != 0 && i2 != 1) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = d;
            if (i2 == 2) {
                i(1152921504606846975L & j2);
                if (z) {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
                        k kVarL = (k) atomicReferenceFieldUpdater.get(this);
                        long j3 = atomicLongFieldUpdater.get(this);
                        if (o() <= j3) {
                            break;
                        }
                        long j4 = d.b;
                        long j5 = j3 / j4;
                        if (kVarL.d != j5 && (kVarL = l(j5, kVarL)) == null) {
                            if (((k) atomicReferenceFieldUpdater.get(this)).d < j5) {
                                break;
                            }
                        } else {
                            kVarL.a();
                            int i3 = (int) (j3 % j4);
                            while (true) {
                                Object objK = kVarL.k(i3);
                                if (objK != null && objK != d.e) {
                                    if (objK != d.d && (objK == d.j || objK == d.l || objK == d.i || objK == d.h || (objK != d.g && (objK == d.f || j3 != atomicLongFieldUpdater.get(this))))) {
                                        break;
                                        break;
                                        break;
                                        break;
                                        break;
                                        break;
                                    }
                                } else if (kVarL.j(i3, objK, d.h)) {
                                    k();
                                    break;
                                }
                            }
                            d.compareAndSet(this, j3, j3 + 1);
                        }
                    }
                }
            } else {
                if (i2 != 3) {
                    throw new IllegalStateException(ai.onnxruntime.a.e(i2, "unexpected close status: ").toString());
                }
                k kVarI = i(1152921504606846975L & j2);
                Object objE = null;
                loop0: do {
                    for (int i4 = d.b - 1; -1 < i4; i4--) {
                        long j6 = (kVarI.d * ((long) d.b)) + ((long) i4);
                        while (true) {
                            Object objK2 = kVarI.k(i4);
                            if (objK2 == d.i) {
                                break loop0;
                            }
                            if (objK2 != d.d) {
                                if (objK2 != d.e && objK2 != null) {
                                    if (!(objK2 instanceof u1) && !(objK2 instanceof s)) {
                                        w wVar = d.g;
                                        if (objK2 == wVar || objK2 == d.f) {
                                            break loop0;
                                        }
                                        if (objK2 != wVar) {
                                            break;
                                        }
                                    } else {
                                        if (j6 < atomicLongFieldUpdater.get(this)) {
                                            break loop0;
                                        }
                                        u1 u1Var = objK2 instanceof s ? ((s) objK2).a : (u1) objK2;
                                        if (kVarI.j(i4, objK2, d.l)) {
                                            objE = a9.a.e(objE, u1Var);
                                            kVarI.m(i4, null);
                                            kVarI.h();
                                            break;
                                        }
                                    }
                                } else {
                                    if (kVarI.j(i4, objK2, d.l)) {
                                        kVarI.h();
                                        break;
                                    }
                                }
                            } else {
                                if (j6 < atomicLongFieldUpdater.get(this)) {
                                    break loop0;
                                }
                                if (kVarI.j(i4, objK2, d.l)) {
                                    kVarI.m(i4, null);
                                    kVarI.h();
                                    break;
                                }
                            }
                        }
                    }
                    kVarI = (k) ((a9.e) a9.e.c.get(kVarI));
                } while (kVarI != null);
                if (objE != null) {
                    if (objE instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) objE;
                        for (int size = arrayList.size() - 1; -1 < size; size--) {
                            w((u1) arrayList.get(size), false);
                        }
                    } else {
                        w((u1) objE, false);
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean r() {
        return q(c.get(this), false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean s() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean t() {
        long j2 = e.get(this);
        return j2 == 0 || j2 == Long.MAX_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v8, resolved type: x8.k[] */
    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String string;
        StringBuilder sb = new StringBuilder();
        int i2 = (int) (c.get(this) >> 60);
        if (i2 == 2) {
            sb.append("closed,");
        } else if (i2 == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.b + ',');
        sb.append("data=[");
        int i3 = 0;
        boolean z = true;
        List listListOf = CollectionsKt.listOf(new k[]{h.get(this), g.get(this), i.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((k) obj) != d.a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            n0.b.x();
            return null;
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j2 = ((k) next).d;
            do {
                Object next2 = it.next();
                long j3 = ((k) next2).d;
                if (j2 > j3) {
                    next = next2;
                    j2 = j3;
                }
            } while (it.hasNext());
        }
        k kVar = (k) next;
        long j4 = d.get(this);
        long jO = o();
        loop2: while (true) {
            int i4 = d.b;
            int i5 = i3;
            while (i5 < i4) {
                long j5 = (kVar.d * ((long) d.b)) + ((long) i5);
                if (j5 >= jO && j5 >= j4) {
                    break loop2;
                }
                Object objK = kVar.k(i5);
                boolean z2 = z;
                Object obj2 = kVar.g.get(i5 * 2);
                if (objK instanceof v8.d) {
                    string = (j5 >= j4 || j5 < jO) ? (j5 >= jO || j5 < j4) ? "cont" : "send" : "receive";
                } else if (objK instanceof s) {
                    string = "EB(" + objK + ')';
                } else if (Intrinsics.areEqual(objK, d.f) ? z2 : Intrinsics.areEqual(objK, d.g)) {
                    string = "resuming_sender";
                } else {
                    if (!(objK == null ? z2 : Intrinsics.areEqual(objK, d.e) ? z2 : Intrinsics.areEqual(objK, d.i) ? z2 : Intrinsics.areEqual(objK, d.h) ? z2 : Intrinsics.areEqual(objK, d.k) ? z2 : Intrinsics.areEqual(objK, d.j) ? z2 : Intrinsics.areEqual(objK, d.l))) {
                        string = objK.toString();
                    }
                    i5++;
                    z = z2;
                }
                if (obj2 != null) {
                    sb.append("(" + string + ',' + obj2 + "),");
                } else {
                    sb.append(string + ',');
                }
                i5++;
                z = z2;
            }
            boolean z3 = z;
            kVar = (k) kVar.b();
            if (kVar == null) {
                break;
            }
            z = z3;
            i3 = 0;
        }
        if (StringsKt.last(sb) == ',') {
            sb.deleteCharAt(sb.length() - 1).getClass();
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(long j2, k kVar) {
        k kVar2;
        k kVar3;
        while (kVar.d < j2 && (kVar3 = (k) kVar.b()) != null) {
            kVar = kVar3;
        }
        while (true) {
            if (!kVar.c() || (kVar2 = (k) kVar.b()) == null) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
                    u uVar = (u) atomicReferenceFieldUpdater.get(this);
                    if (uVar.d >= kVar.d) {
                        return;
                    }
                    if (!kVar.i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, uVar, kVar)) {
                            if (uVar.e()) {
                                uVar.d();
                                return;
                            }
                            return;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == uVar);
                    if (kVar.e()) {
                        kVar.d();
                    }
                }
            } else {
                kVar = kVar2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object v(Object obj, Continuation continuation) throws Throwable {
        v8.e eVar = new v8.e(1, IntrinsicsKt.intercepted(continuation));
        eVar.r();
        Throwable thN = n();
        Result$Companion result$Companion = Result.Companion;
        eVar.resumeWith(Result.constructor-impl(ResultKt.createFailure(thN)));
        Object objQ = eVar.q();
        if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objQ : Unit.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void w(u1 u1Var, boolean z) {
        Throwable thN;
        if (u1Var instanceof v8.d) {
            Continuation continuation = (Continuation) u1Var;
            Result$Companion result$Companion = Result.Companion;
            if (z) {
                thN = m();
                if (thN == null) {
                    thN = new l("Channel was closed");
                }
            } else {
                thN = n();
            }
            continuation.resumeWith(Result.constructor-impl(ResultKt.createFailure(thN)));
            return;
        }
        if (!(u1Var instanceof a)) {
            org.apache.commons.net.ftp.a.c(u1Var, "Unexpected waiter: ");
            return;
        }
        a aVar = (a) u1Var;
        v8.e eVar = aVar.c;
        eVar.getClass();
        aVar.c = null;
        aVar.b = d.l;
        Throwable thM = aVar.d.m();
        if (thM == null) {
            Result$Companion result$Companion2 = Result.Companion;
            eVar.resumeWith(Result.constructor-impl(Boolean.FALSE));
        } else {
            Result$Companion result$Companion3 = Result.Companion;
            eVar.resumeWith(Result.constructor-impl(ResultKt.createFailure(thM)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean x(Object obj, Object obj2) {
        if (!(obj instanceof a)) {
            if (!(obj instanceof v8.d)) {
                org.apache.commons.net.ftp.a.c(obj, "Unexpected receiver type: ");
                return false;
            }
            v8.d dVar = (v8.d) obj;
            k kVar = d.a;
            w wVarA = dVar.a(obj2, null);
            if (wVarA == null) {
                return false;
            }
            dVar.g(wVarA);
            return true;
        }
        a aVar = (a) obj;
        v8.e eVar = aVar.c;
        eVar.getClass();
        aVar.c = null;
        aVar.b = obj2;
        Boolean bool = Boolean.TRUE;
        k kVar2 = d.a;
        w wVarA2 = eVar.a(bool, null);
        if (wVarA2 == null) {
            return false;
        }
        eVar.g(wVarA2);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object z(k kVar, int i2, long j2, a aVar) {
        AtomicReferenceArray atomicReferenceArray = kVar.g;
        Object objK = kVar.k(i2);
        AtomicLongFieldUpdater atomicLongFieldUpdater = c;
        if (objK == null) {
            if (j2 >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (aVar == null) {
                    return d.n;
                }
                if (kVar.j(i2, objK, aVar)) {
                    k();
                    return d.m;
                }
            }
        } else if (objK == d.d && kVar.j(i2, objK, d.i)) {
            k();
            Object obj = atomicReferenceArray.get(i2 * 2);
            kVar.m(i2, null);
            return obj;
        }
        while (true) {
            Object objK2 = kVar.k(i2);
            if (objK2 == null || objK2 == d.e) {
                if (j2 < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (kVar.j(i2, objK2, d.h)) {
                        k();
                        return d.o;
                    }
                } else {
                    if (aVar == null) {
                        return d.n;
                    }
                    if (kVar.j(i2, objK2, aVar)) {
                        k();
                        return d.m;
                    }
                }
            } else if (objK2 != d.d) {
                w wVar = d.j;
                if (objK2 == wVar) {
                    return d.o;
                }
                if (objK2 == d.h) {
                    return d.o;
                }
                if (objK2 == d.l) {
                    k();
                    return d.o;
                }
                if (objK2 != d.g && kVar.j(i2, objK2, d.f)) {
                    boolean z = objK2 instanceof s;
                    if (z) {
                        objK2 = ((s) objK2).a;
                    }
                    if (y(objK2)) {
                        kVar.n(i2, d.i);
                        k();
                        Object obj2 = atomicReferenceArray.get(i2 * 2);
                        kVar.m(i2, null);
                        return obj2;
                    }
                    kVar.n(i2, wVar);
                    kVar.h();
                    if (z) {
                        k();
                    }
                    return d.o;
                }
            } else if (kVar.j(i2, objK2, d.i)) {
                k();
                Object obj3 = atomicReferenceArray.get(i2 * 2);
                kVar.m(i2, null);
                return obj3;
            }
        }
    }
}
