package p243x8;

import ai.onnxruntime.AbstractC0074a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
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
import org.apache.commons.net.ftp.C2930a;
import p009a8.C0034f;
import p010a9.AbstractC0035a;
import p010a9.AbstractC0041d;
import p010a9.AbstractC0043e;
import p010a9.AbstractC0059u;
import p010a9.C0061w;
import p023b8.InterfaceC0930d;
import p099j1.C1929i;
import p130l9.C2237i;
import p142n0.C2467b;
import p224v8.AbstractC3366a0;
import p224v8.C3377e;
import p224v8.InterfaceC3374d;
import p224v8.InterfaceC3427u1;

/* JADX INFO: renamed from: x8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C3598b implements InterfaceC3602f {

    /* JADX INFO: renamed from: c */
    public static final AtomicLongFieldUpdater f10660c = AtomicLongFieldUpdater.newUpdater(C3598b.class, "sendersAndCloseStatus");

    /* JADX INFO: renamed from: d */
    public static final AtomicLongFieldUpdater f10661d = AtomicLongFieldUpdater.newUpdater(C3598b.class, "receivers");

    /* JADX INFO: renamed from: e */
    public static final AtomicLongFieldUpdater f10662e = AtomicLongFieldUpdater.newUpdater(C3598b.class, "bufferEnd");

    /* JADX INFO: renamed from: f */
    public static final AtomicLongFieldUpdater f10663f = AtomicLongFieldUpdater.newUpdater(C3598b.class, "completedExpandBuffersAndPauseFlag");

    /* JADX INFO: renamed from: g */
    public static final AtomicReferenceFieldUpdater f10664g = AtomicReferenceFieldUpdater.newUpdater(C3598b.class, Object.class, "sendSegment");

    /* JADX INFO: renamed from: h */
    public static final AtomicReferenceFieldUpdater f10665h = AtomicReferenceFieldUpdater.newUpdater(C3598b.class, Object.class, "receiveSegment");

    /* JADX INFO: renamed from: i */
    public static final AtomicReferenceFieldUpdater f10666i = AtomicReferenceFieldUpdater.newUpdater(C3598b.class, Object.class, "bufferEndSegment");

    /* JADX INFO: renamed from: j */
    public static final AtomicReferenceFieldUpdater f10667j = AtomicReferenceFieldUpdater.newUpdater(C3598b.class, Object.class, "_closeCause");

    /* JADX INFO: renamed from: k */
    public static final AtomicReferenceFieldUpdater f10668k = AtomicReferenceFieldUpdater.newUpdater(C3598b.class, Object.class, "closeHandler");

    @Volatile
    private volatile Object _closeCause;

    /* JADX INFO: renamed from: b */
    public final int f10669b;

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

    public C3598b(int i10) {
        this.f10669b = i10;
        if (i10 < 0) {
            C2237i.m3597d(AbstractC0074a.m155f(i10, "Invalid channel capacity: ", ", should be >=0"));
            throw null;
        }
        C3607k c3607k = AbstractC3600d.f10671a;
        this.bufferEnd = i10 != 0 ? i10 != Integer.MAX_VALUE ? i10 : Long.MAX_VALUE : 0L;
        this.completedExpandBuffersAndPauseFlag = f10662e.get(this);
        C3607k c3607k2 = new C3607k(0L, null, this, 3);
        this.sendSegment = c3607k2;
        this.receiveSegment = c3607k2;
        if (m5746t()) {
            c3607k2 = AbstractC3600d.f10671a;
            c3607k2.getClass();
        }
        this.bufferEndSegment = c3607k2;
        this._closeCause = AbstractC3600d.f10689s;
    }

    /* JADX INFO: renamed from: a */
    public static final C3607k m5725a(C3598b c3598b, long j10, C3607k c3607k) {
        Object objM108a;
        C3598b c3598b2;
        C3607k c3607k2 = AbstractC3600d.f10671a;
        C3599c c3599c = C3599c.f10670b;
        loop0: while (true) {
            objM108a = AbstractC0041d.m108a(c3607k, j10, c3599c);
            if (!AbstractC0035a.m97d(objM108a)) {
                AbstractC0059u abstractC0059uM95b = AbstractC0035a.m95b(objM108a);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10664g;
                    AbstractC0059u abstractC0059u = (AbstractC0059u) atomicReferenceFieldUpdater.get(c3598b);
                    if (abstractC0059u.f149d >= abstractC0059uM95b.f149d) {
                        break loop0;
                    }
                    if (!abstractC0059uM95b.m142i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(c3598b, abstractC0059u, abstractC0059uM95b)) {
                            if (!abstractC0059u.m138e()) {
                                break loop0;
                            }
                            abstractC0059u.m112d();
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(c3598b) == abstractC0059u);
                    if (abstractC0059uM95b.m138e()) {
                        abstractC0059uM95b.m112d();
                    }
                }
            } else {
                break;
            }
        }
        boolean zM97d = AbstractC0035a.m97d(objM108a);
        AtomicLongFieldUpdater atomicLongFieldUpdater = f10661d;
        if (zM97d) {
            c3598b.m5744r();
            if (c3607k.f149d * ((long) AbstractC3600d.f10672b) < atomicLongFieldUpdater.get(c3598b)) {
                c3607k.m109a();
                return null;
            }
        } else {
            C3607k c3607k3 = (C3607k) AbstractC0035a.m95b(objM108a);
            long j11 = c3607k3.f149d;
            if (j11 <= j10) {
                return c3607k3;
            }
            long j12 = ((long) AbstractC3600d.f10672b) * j11;
            while (true) {
                long j13 = f10660c.get(c3598b);
                long j14 = 1152921504606846975L & j13;
                if (j14 >= j12) {
                    c3598b2 = c3598b;
                    break;
                }
                c3598b2 = c3598b;
                if (f10660c.compareAndSet(c3598b2, j13, (((long) ((int) (j13 >> 60))) << 60) + j14)) {
                    break;
                }
                c3598b = c3598b2;
            }
            if (j11 * ((long) AbstractC3600d.f10672b) < atomicLongFieldUpdater.get(c3598b2)) {
                c3607k3.m109a();
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public static final void m5726b(C3598b c3598b, Object obj, C3377e c3377e) {
        Throwable thM5741n = c3598b.m5741n();
        Result.Companion companion = Result.INSTANCE;
        c3377e.resumeWith(Result.m6088constructorimpl(ResultKt.createFailure(thM5741n)));
    }

    /* JADX INFO: renamed from: d */
    public static final int m5727d(C3598b c3598b, C3607k c3607k, int i10, Object obj, long j10, Object obj2, boolean z9) {
        c3607k.m5757m(i10, obj);
        if (z9) {
            return c3598b.m5730A(c3607k, i10, obj, j10, obj2, z9);
        }
        Object objM5755k = c3607k.m5755k(i10);
        if (objM5755k == null) {
            if (c3598b.m5734g(j10)) {
                if (c3607k.m5754j(i10, null, AbstractC3600d.f10674d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (c3607k.m5754j(i10, null, obj2)) {
                    return 2;
                }
            }
        } else if (objM5755k instanceof InterfaceC3427u1) {
            c3607k.m5757m(i10, null);
            if (c3598b.m5750x(objM5755k, obj)) {
                c3607k.m5758n(i10, AbstractC3600d.f10679i);
                return 0;
            }
            C0061w c0061w = AbstractC3600d.f10681k;
            if (c3607k.f10697g.getAndSet((i10 * 2) + 1, c0061w) == c0061w) {
                return 5;
            }
            c3607k.m5756l(i10, true);
            return 5;
        }
        return c3598b.m5730A(c3607k, i10, obj, j10, obj2, z9);
    }

    /* JADX INFO: renamed from: p */
    public static void m5728p(C3598b c3598b) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f10663f;
        if ((atomicLongFieldUpdater.addAndGet(c3598b, 1L) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(c3598b) & 4611686018427387904L) != 0) {
            }
        }
    }

    /* JADX INFO: renamed from: y */
    public static boolean m5729y(Object obj) {
        if (!(obj instanceof InterfaceC3374d)) {
            C2930a.m4661c(obj, "Unexpected waiter: ");
            return false;
        }
        InterfaceC3374d interfaceC3374d = (InterfaceC3374d) obj;
        Unit unit = Unit.INSTANCE;
        C3607k c3607k = AbstractC3600d.f10671a;
        C0061w c0061wMo2358a = interfaceC3374d.mo2358a(unit, null);
        if (c0061wMo2358a == null) {
            return false;
        }
        interfaceC3374d.mo2361g(c0061wMo2358a);
        return true;
    }

    /* JADX INFO: renamed from: A */
    public final int m5730A(C3607k c3607k, int i10, Object obj, long j10, Object obj2, boolean z9) {
        while (true) {
            Object objM5755k = c3607k.m5755k(i10);
            if (objM5755k == null) {
                if (!m5734g(j10) || z9) {
                    if (z9) {
                        if (c3607k.m5754j(i10, null, AbstractC3600d.f10680j)) {
                            c3607k.m141h();
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (c3607k.m5754j(i10, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (c3607k.m5754j(i10, null, AbstractC3600d.f10674d)) {
                    break;
                }
            } else {
                if (objM5755k != AbstractC3600d.f10675e) {
                    C0061w c0061w = AbstractC3600d.f10681k;
                    if (objM5755k == c0061w) {
                        c3607k.m5757m(i10, null);
                        return 5;
                    }
                    if (objM5755k == AbstractC3600d.f10678h) {
                        c3607k.m5757m(i10, null);
                        return 5;
                    }
                    if (objM5755k == AbstractC3600d.f10682l) {
                        c3607k.m5757m(i10, null);
                        m5744r();
                        return 4;
                    }
                    c3607k.m5757m(i10, null);
                    if (objM5755k instanceof C3615s) {
                        objM5755k = ((C3615s) objM5755k).f10702a;
                    }
                    if (m5750x(objM5755k, obj)) {
                        c3607k.m5758n(i10, AbstractC3600d.f10679i);
                        return 0;
                    }
                    if (c3607k.f10697g.getAndSet((i10 * 2) + 1, c0061w) != c0061w) {
                        c3607k.m5756l(i10, true);
                    }
                    return 5;
                }
                if (c3607k.m5754j(i10, objM5755k, AbstractC3600d.f10674d)) {
                    break;
                }
            }
        }
        return 1;
    }

    @Override // p243x8.InterfaceC3602f
    /* JADX INFO: renamed from: c */
    public final void mo5731c(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        m5735h(true, cancellationException);
    }

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
    @Override // p243x8.InterfaceC3614r
    /* JADX INFO: renamed from: e */
    public Object mo5732e(Object obj) {
        int iM5727d;
        InterfaceC3427u1 interfaceC3427u1;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f10660c;
        long j10 = atomicLongFieldUpdater.get(this);
        boolean z9 = false;
        long j11 = 1152921504606846975L;
        boolean z10 = m5743q(j10, false) ? false : !m5734g(j10 & 1152921504606846975L);
        C3605i c3605i = AbstractC3606j.f10695a;
        if (z10) {
            return c3605i;
        }
        InterfaceC0930d interfaceC0930d = AbstractC3600d.f10680j;
        C3607k c3607k = (C3607k) f10664g.get(this);
        while (true) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j12 = andIncrement & j11;
            boolean zM5743q = m5743q(andIncrement, z9);
            int i10 = AbstractC3600d.f10672b;
            long j13 = i10;
            long j14 = j12 / j13;
            int i11 = (int) (j12 % j13);
            if (c3607k.f149d == j14) {
                iM5727d = m5727d(this, c3607k, i11, obj, j12, interfaceC0930d, zM5743q);
                if (iM5727d != 0) {
                    c3607k.m109a();
                    return Unit.INSTANCE;
                }
                if (iM5727d != 1) {
                    return Unit.INSTANCE;
                }
                if (iM5727d != 2) {
                    if (zM5743q) {
                        c3607k.m141h();
                        return new C3604h(m5741n());
                    }
                    if (interfaceC0930d instanceof InterfaceC3427u1) {
                        interfaceC3427u1 = (InterfaceC3427u1) interfaceC0930d;
                    } else {
                        interfaceC3427u1 = null;
                    }
                    if (interfaceC3427u1 != null) {
                        interfaceC3427u1.mo2359b(c3607k, i11 + i10);
                    }
                    c3607k.m141h();
                    return c3605i;
                }
                if (iM5727d != 3) {
                    C1929i.m3030l("unexpected");
                    return null;
                }
                if (iM5727d != 4) {
                    if (j12 < f10661d.get(this)) {
                        c3607k.m109a();
                    }
                    return new C3604h(m5741n());
                }
                if (iM5727d == 5) {
                    c3607k.m109a();
                }
                z9 = false;
            } else {
                C3607k c3607kM5725a = m5725a(this, j14, c3607k);
                if (c3607kM5725a != null) {
                    c3607k = c3607kM5725a;
                    iM5727d = m5727d(this, c3607k, i11, obj, j12, interfaceC0930d, zM5743q);
                    if (iM5727d != 0) {
                        c3607k.m109a();
                        return Unit.INSTANCE;
                    }
                    if (iM5727d != 1) {
                        return Unit.INSTANCE;
                    }
                    if (iM5727d != 2) {
                        if (zM5743q) {
                            c3607k.m141h();
                            return new C3604h(m5741n());
                        }
                        if (interfaceC0930d instanceof InterfaceC3427u1) {
                            interfaceC3427u1 = (InterfaceC3427u1) interfaceC0930d;
                        } else {
                            interfaceC3427u1 = null;
                        }
                        if (interfaceC3427u1 != null) {
                            interfaceC3427u1.mo2359b(c3607k, i11 + i10);
                        }
                        c3607k.m141h();
                        return c3605i;
                    }
                    if (iM5727d != 3) {
                        C1929i.m3030l("unexpected");
                        return null;
                    }
                    if (iM5727d != 4) {
                        if (j12 < f10661d.get(this)) {
                            c3607k.m109a();
                        }
                        return new C3604h(m5741n());
                    }
                    if (iM5727d == 5) {
                        c3607k.m109a();
                    }
                    z9 = false;
                } else {
                    if (zM5743q) {
                        return new C3604h(m5741n());
                    }
                    z9 = false;
                }
            }
            j11 = 1152921504606846975L;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0190 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:93:0x017e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0188  */
    @Override // p243x8.InterfaceC3614r
    /* JADX INFO: renamed from: f */
    public Object mo5733f(Object obj, Continuation continuation) throws Throwable {
        Unit unit;
        Object objM5306q;
        Object obj2;
        C3598b c3598b;
        C3607k c3607k;
        boolean z9;
        C3598b c3598b2 = this;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10664g;
        C3607k c3607k2 = (C3607k) atomicReferenceFieldUpdater.get(c3598b2);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f10660c;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(c3598b2);
            long j10 = andIncrement & 1152921504606846975L;
            boolean zM5743q = c3598b2.m5743q(andIncrement, false);
            int i10 = AbstractC3600d.f10672b;
            long j11 = i10;
            long j12 = j10 / j11;
            int i11 = (int) (j10 % j11);
            if (c3607k2.f149d != j12) {
                C3607k c3607kM5725a = m5725a(c3598b2, j12, c3607k2);
                if (c3607kM5725a != null) {
                    c3607k2 = c3607kM5725a;
                } else if (zM5743q) {
                    Object objM5748v = m5748v(obj, continuation);
                    if (objM5748v != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        break;
                    }
                    return objM5748v;
                }
            }
            int iM5727d = m5727d(c3598b2, c3607k2, i11, obj, j10, null, zM5743q);
            if (iM5727d == 0) {
                c3607k2.m109a();
            } else {
                if (iM5727d == 1) {
                    break;
                }
                if (iM5727d != 2) {
                    AtomicLongFieldUpdater atomicLongFieldUpdater2 = f10661d;
                    if (iM5727d == 3) {
                        C3377e c3377eM5283b = AbstractC3366a0.m5283b(IntrinsicsKt.intercepted(continuation));
                        Object obj3 = obj;
                        try {
                            int iM5727d2 = m5727d(c3598b2, c3607k2, i11, obj3, j10, c3377eM5283b, false);
                            try {
                                if (iM5727d2 == 0) {
                                    c3607k2.m109a();
                                    Result.Companion companion = Result.INSTANCE;
                                    unit = Unit.INSTANCE;
                                } else if (iM5727d2 != 1) {
                                    if (iM5727d2 != 2) {
                                        if (iM5727d2 != 4) {
                                            String str = "unexpected";
                                            if (iM5727d2 != 5) {
                                                throw new IllegalStateException("unexpected");
                                            }
                                            c3607k2.m109a();
                                            C3607k c3607k3 = (C3607k) atomicReferenceFieldUpdater.get(c3598b2);
                                            while (true) {
                                                long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(c3598b2);
                                                long j13 = andIncrement2 & 1152921504606846975L;
                                                boolean zM5743q2 = c3598b2.m5743q(andIncrement2, false);
                                                int i12 = AbstractC3600d.f10672b;
                                                atomicLongFieldUpdater = atomicLongFieldUpdater;
                                                long j14 = i12;
                                                str = str;
                                                long j15 = j13 / j14;
                                                int i13 = (int) (j13 % j14);
                                                if (c3607k3.f149d != j15) {
                                                    C3607k c3607kM5725a2 = m5725a(c3598b2, j15, c3607k3);
                                                    if (c3607kM5725a2 != null) {
                                                        z9 = zM5743q2;
                                                        c3607k = c3607kM5725a2;
                                                    } else if (zM5743q2) {
                                                        m5726b(c3598b2, obj3, c3377eM5283b);
                                                    }
                                                } else {
                                                    c3607k = c3607k3;
                                                    z9 = zM5743q2;
                                                }
                                                int iM5727d3 = m5727d(c3598b2, c3607k, i13, obj3, j13, c3377eM5283b, z9);
                                                Object obj4 = obj3;
                                                c3598b = c3598b2;
                                                C3607k c3607k4 = c3607k;
                                                obj2 = obj4;
                                                if (iM5727d3 == 0) {
                                                    c3607k4.m109a();
                                                    Result.Companion companion2 = Result.INSTANCE;
                                                    unit = Unit.INSTANCE;
                                                } else if (iM5727d3 == 1) {
                                                    Result.Companion companion3 = Result.INSTANCE;
                                                    unit = Unit.INSTANCE;
                                                } else if (iM5727d3 != 2) {
                                                    if (iM5727d3 == 3) {
                                                        throw new IllegalStateException(str);
                                                    }
                                                    if (iM5727d3 != 4) {
                                                        if (iM5727d3 == 5) {
                                                            c3607k4.m109a();
                                                        }
                                                        c3607k3 = c3607k4;
                                                        c3598b2 = c3598b;
                                                        obj3 = obj2;
                                                    } else if (j13 < atomicLongFieldUpdater2.get(c3598b)) {
                                                        c3607k4.m109a();
                                                    }
                                                } else if (z9) {
                                                    c3607k4.m141h();
                                                } else {
                                                    c3377eM5283b.mo2359b(c3607k4, i13 + i12);
                                                }
                                            }
                                            c3377eM5283b.m5312x();
                                            throw th;
                                        }
                                        obj2 = obj3;
                                        c3598b = c3598b2;
                                        if (j10 < atomicLongFieldUpdater2.get(c3598b)) {
                                            c3607k2.m109a();
                                        }
                                        m5726b(c3598b, obj2, c3377eM5283b);
                                    } else {
                                        c3377eM5283b.mo2359b(c3607k2, i11 + i10);
                                    }
                                    objM5306q = c3377eM5283b.m5306q();
                                    if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                        DebugProbesKt.probeCoroutineSuspended(continuation);
                                    }
                                    if (objM5306q != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                        objM5306q = Unit.INSTANCE;
                                    }
                                    if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                        return objM5306q;
                                    }
                                } else {
                                    Result.Companion companion4 = Result.INSTANCE;
                                    unit = Unit.INSTANCE;
                                }
                                c3377eM5283b.resumeWith(Result.m6088constructorimpl(unit));
                                objM5306q = c3377eM5283b.m5306q();
                                if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    DebugProbesKt.probeCoroutineSuspended(continuation);
                                }
                                if (objM5306q != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    objM5306q = Unit.INSTANCE;
                                }
                                if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    return objM5306q;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } else {
                        if (iM5727d == 4) {
                            if (j10 < atomicLongFieldUpdater2.get(c3598b2)) {
                                c3607k2.m109a();
                            }
                            Object objM5748v2 = m5748v(obj, continuation);
                            if (objM5748v2 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                break;
                            }
                            return objM5748v2;
                        }
                        if (iM5727d == 5) {
                            c3607k2.m109a();
                        }
                    }
                } else if (zM5743q) {
                    c3607k2.m141h();
                    Object objM5748v3 = m5748v(obj, continuation);
                    if (objM5748v3 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objM5748v3;
                    }
                }
            }
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m5734g(long j10) {
        return j10 < f10662e.get(this) || j10 < f10661d.get(this) + ((long) this.f10669b);
    }

    /* JADX INFO: renamed from: h */
    public final boolean m5735h(boolean z9, Throwable th) {
        C3598b c3598b;
        boolean z10;
        long j10;
        long j11;
        long j12;
        Object obj;
        long j13;
        long j14;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f10660c;
        if (!z9) {
            c3598b = this;
            break;
        }
        do {
            j14 = atomicLongFieldUpdater.get(this);
            if (((int) (j14 >> 60)) != 0) {
                c3598b = this;
                break;
            }
            C3607k c3607k = AbstractC3600d.f10671a;
            c3598b = this;
        } while (!atomicLongFieldUpdater.compareAndSet(c3598b, j14, (j14 & 1152921504606846975L) + (((long) 1) << 60)));
        C0061w c0061w = AbstractC3600d.f10689s;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10667j;
            if (atomicReferenceFieldUpdater.compareAndSet(this, c0061w, th)) {
                z10 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != c0061w) {
                z10 = false;
                break;
            }
        }
        if (z9) {
            do {
                j13 = atomicLongFieldUpdater.get(this);
            } while (!atomicLongFieldUpdater.compareAndSet(c3598b, j13, (((long) 3) << 60) + (j13 & 1152921504606846975L)));
        } else {
            do {
                j10 = atomicLongFieldUpdater.get(this);
                int i10 = (int) (j10 >> 60);
                if (i10 == 0) {
                    j11 = j10 & 1152921504606846975L;
                    j12 = 2;
                } else {
                    if (i10 != 1) {
                        break;
                    }
                    j11 = j10 & 1152921504606846975L;
                    j12 = 3;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(c3598b, j10, (j12 << 60) + j11));
        }
        m5744r();
        if (z10) {
            loop3: while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f10668k;
                obj = atomicReferenceFieldUpdater2.get(this);
                C0061w c0061w2 = obj == null ? AbstractC3600d.f10687q : AbstractC3600d.f10688r;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, c0061w2)) {
                        break loop3;
                    }
                } while (atomicReferenceFieldUpdater2.get(this) == obj);
            }
            if (obj != null) {
                ((Function1) obj).invoke(m5740m());
                return z10;
            }
        }
        return z10;
    }

    /* JADX INFO: renamed from: i */
    public final C3607k m5736i(long j10) {
        Object objM98e;
        long j11;
        Object obj = f10666i.get(this);
        C3607k c3607k = (C3607k) f10664g.get(this);
        if (c3607k.f149d > ((C3607k) obj).f149d) {
            obj = c3607k;
        }
        C3607k c3607k2 = (C3607k) f10665h.get(this);
        if (c3607k2.f149d > ((C3607k) obj).f149d) {
            obj = c3607k2;
        }
        AbstractC0043e abstractC0043e = (AbstractC0043e) obj;
        loop0: while (true) {
            abstractC0043e.getClass();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = AbstractC0043e.f116b;
            Object obj2 = atomicReferenceFieldUpdater.get(abstractC0043e);
            objM98e = null;
            C0061w c0061w = AbstractC0041d.f112a;
            if (obj2 == c0061w) {
                break;
            }
            AbstractC0043e abstractC0043e2 = (AbstractC0043e) obj2;
            if (abstractC0043e2 == null) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(abstractC0043e, null, c0061w)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(abstractC0043e) == null);
            } else {
                abstractC0043e = abstractC0043e2;
            }
        }
        C3607k c3607k3 = (C3607k) abstractC0043e;
        if (mo5745s()) {
            C3607k c3607k4 = c3607k3;
            loop2: while (true) {
                int i10 = AbstractC3600d.f10672b - 1;
                while (true) {
                    if (-1 < i10) {
                        j11 = (c3607k4.f149d * ((long) AbstractC3600d.f10672b)) + ((long) i10);
                        if (j11 >= f10661d.get(this)) {
                            while (true) {
                                Object objM5755k = c3607k4.m5755k(i10);
                                if (objM5755k != null && objM5755k != AbstractC3600d.f10675e) {
                                    if (objM5755k != AbstractC3600d.f10674d) {
                                        break;
                                    }
                                    break loop2;
                                }
                                if (c3607k4.m5754j(i10, objM5755k, AbstractC3600d.f10682l)) {
                                    c3607k4.m141h();
                                    break;
                                }
                            }
                            i10--;
                        }
                    } else {
                        c3607k4 = (C3607k) ((AbstractC0043e) AbstractC0043e.f117c.get(c3607k4));
                        if (c3607k4 == null) {
                        }
                    }
                    j11 = -1;
                    break;
                }
            }
            if (j11 != -1) {
                m5737j(j11);
            }
        }
        loop5: for (C3607k c3607k5 = c3607k3; c3607k5 != null; c3607k5 = (C3607k) ((AbstractC0043e) AbstractC0043e.f117c.get(c3607k5))) {
            for (int i11 = AbstractC3600d.f10672b - 1; -1 < i11; i11--) {
                if ((c3607k5.f149d * ((long) AbstractC3600d.f10672b)) + ((long) i11) < j10) {
                    break loop5;
                }
                while (true) {
                    Object objM5755k2 = c3607k5.m5755k(i11);
                    if (objM5755k2 != null && objM5755k2 != AbstractC3600d.f10675e) {
                        if (!(objM5755k2 instanceof C3615s)) {
                            if (!(objM5755k2 instanceof InterfaceC3427u1)) {
                                break;
                            }
                            if (c3607k5.m5754j(i11, objM5755k2, AbstractC3600d.f10682l)) {
                                objM98e = AbstractC0035a.m98e(objM98e, objM5755k2);
                                c3607k5.m5756l(i11, true);
                                break;
                            }
                        } else {
                            if (c3607k5.m5754j(i11, objM5755k2, AbstractC3600d.f10682l)) {
                                objM98e = AbstractC0035a.m98e(objM98e, ((C3615s) objM5755k2).f10702a);
                                c3607k5.m5756l(i11, true);
                                break;
                            }
                        }
                    } else {
                        if (c3607k5.m5754j(i11, objM5755k2, AbstractC3600d.f10682l)) {
                            c3607k5.m141h();
                            break;
                        }
                    }
                }
            }
        }
        if (objM98e != null) {
            if (!(objM98e instanceof ArrayList)) {
                m5749w((InterfaceC3427u1) objM98e, true);
                return c3607k3;
            }
            ArrayList arrayList = (ArrayList) objM98e;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                m5749w((InterfaceC3427u1) arrayList.get(size), true);
            }
        }
        return c3607k3;
    }

    /* JADX INFO: renamed from: j */
    public final void m5737j(long j10) {
        C3607k c3607k = (C3607k) f10665h.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f10661d;
            long j11 = atomicLongFieldUpdater.get(this);
            if (j10 < Math.max(((long) this.f10669b) + j11, f10662e.get(this))) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j11, 1 + j11)) {
                long j12 = AbstractC3600d.f10672b;
                long j13 = j11 / j12;
                int i10 = (int) (j11 % j12);
                if (c3607k.f149d != j13) {
                    C3607k c3607kM5739l = m5739l(j13, c3607k);
                    if (c3607kM5739l != null) {
                        c3607k = c3607kM5739l;
                    }
                }
                C3607k c3607k2 = c3607k;
                if (m5751z(c3607k2, i10, j11, null) != AbstractC3600d.f10685o || j11 < m5742o()) {
                    c3607k2.m109a();
                }
                c3607k = c3607k2;
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m5738k() {
        Object objM108a;
        if (m5746t()) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10666i;
        C3607k c3607k = (C3607k) atomicReferenceFieldUpdater.get(this);
        while (true) {
            long andIncrement = f10662e.getAndIncrement(this);
            long j10 = andIncrement / ((long) AbstractC3600d.f10672b);
            if (m5742o() <= andIncrement) {
                if (c3607k.f149d < j10 && c3607k.m110b() != null) {
                    m5747u(j10, c3607k);
                }
                m5728p(this);
                return;
            }
            if (c3607k.f149d != j10) {
                C3599c c3599c = C3599c.f10670b;
                while (true) {
                    objM108a = AbstractC0041d.m108a(c3607k, j10, c3599c);
                    if (!AbstractC0035a.m97d(objM108a)) {
                        AbstractC0059u abstractC0059uM95b = AbstractC0035a.m95b(objM108a);
                        while (true) {
                            AbstractC0059u abstractC0059u = (AbstractC0059u) atomicReferenceFieldUpdater.get(this);
                            if (abstractC0059u.f149d >= abstractC0059uM95b.f149d) {
                                break;
                            }
                            if (!abstractC0059uM95b.m142i()) {
                                break;
                            }
                            do {
                                if (atomicReferenceFieldUpdater.compareAndSet(this, abstractC0059u, abstractC0059uM95b)) {
                                    if (!abstractC0059u.m138e()) {
                                        break;
                                    }
                                    abstractC0059u.m112d();
                                    break;
                                }
                            } while (atomicReferenceFieldUpdater.get(this) == abstractC0059u);
                            if (abstractC0059uM95b.m138e()) {
                                abstractC0059uM95b.m112d();
                            }
                        }
                    } else {
                        break;
                    }
                }
                C3607k c3607k2 = null;
                if (AbstractC0035a.m97d(objM108a)) {
                    m5744r();
                    m5747u(j10, c3607k);
                    m5728p(this);
                } else {
                    C3607k c3607k3 = (C3607k) AbstractC0035a.m95b(objM108a);
                    long j11 = c3607k3.f149d;
                    if (j11 > j10) {
                        long j12 = AbstractC3600d.f10672b;
                        if (f10662e.compareAndSet(this, 1 + andIncrement, j11 * j12)) {
                            AtomicLongFieldUpdater atomicLongFieldUpdater = f10663f;
                            if ((atomicLongFieldUpdater.addAndGet(this, (j11 * j12) - andIncrement) & 4611686018427387904L) != 0) {
                                while ((atomicLongFieldUpdater.get(this) & 4611686018427387904L) != 0) {
                                }
                            }
                        } else {
                            m5728p(this);
                        }
                    } else {
                        c3607k2 = c3607k3;
                    }
                }
                if (c3607k2 == null) {
                    continue;
                } else {
                    c3607k = c3607k2;
                }
            }
            int i10 = (int) (andIncrement % ((long) AbstractC3600d.f10672b));
            Object objM5755k = c3607k.m5755k(i10);
            boolean z9 = objM5755k instanceof InterfaceC3427u1;
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = f10661d;
            if (!z9 || andIncrement < atomicLongFieldUpdater2.get(this) || !c3607k.m5754j(i10, objM5755k, AbstractC3600d.f10677g)) {
                while (true) {
                    Object objM5755k2 = c3607k.m5755k(i10);
                    if (objM5755k2 instanceof InterfaceC3427u1) {
                        if (andIncrement < atomicLongFieldUpdater2.get(this)) {
                            if (c3607k.m5754j(i10, objM5755k2, new C3615s((InterfaceC3427u1) objM5755k2))) {
                                m5728p(this);
                                return;
                            }
                        } else if (c3607k.m5754j(i10, objM5755k2, AbstractC3600d.f10677g)) {
                            if (!m5729y(objM5755k2)) {
                                c3607k.m5758n(i10, AbstractC3600d.f10680j);
                                c3607k.m141h();
                                break;
                            } else {
                                c3607k.m5758n(i10, AbstractC3600d.f10674d);
                                m5728p(this);
                                return;
                            }
                        }
                    } else {
                        if (objM5755k2 == AbstractC3600d.f10680j) {
                            break;
                        }
                        if (objM5755k2 == null) {
                            if (c3607k.m5754j(i10, objM5755k2, AbstractC3600d.f10675e)) {
                                m5728p(this);
                                return;
                            }
                        } else if (objM5755k2 == AbstractC3600d.f10674d || objM5755k2 == AbstractC3600d.f10678h || objM5755k2 == AbstractC3600d.f10679i || objM5755k2 == AbstractC3600d.f10681k || objM5755k2 == AbstractC3600d.f10682l) {
                            m5728p(this);
                            return;
                        } else if (objM5755k2 != AbstractC3600d.f10676f) {
                            C2930a.m4661c(objM5755k2, "Unexpected cell state: ");
                            return;
                        }
                    }
                }
                m5728p(this);
            } else if (m5729y(objM5755k)) {
                c3607k.m5758n(i10, AbstractC3600d.f10674d);
                m5728p(this);
                return;
            } else {
                c3607k.m5758n(i10, AbstractC3600d.f10680j);
                c3607k.m141h();
                m5728p(this);
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public final C3607k m5739l(long j10, C3607k c3607k) {
        Object objM108a;
        long j11;
        C3607k c3607k2 = AbstractC3600d.f10671a;
        C3599c c3599c = C3599c.f10670b;
        loop0: while (true) {
            objM108a = AbstractC0041d.m108a(c3607k, j10, c3599c);
            if (!AbstractC0035a.m97d(objM108a)) {
                AbstractC0059u abstractC0059uM95b = AbstractC0035a.m95b(objM108a);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10665h;
                    AbstractC0059u abstractC0059u = (AbstractC0059u) atomicReferenceFieldUpdater.get(this);
                    if (abstractC0059u.f149d >= abstractC0059uM95b.f149d) {
                        break loop0;
                    }
                    if (!abstractC0059uM95b.m142i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, abstractC0059u, abstractC0059uM95b)) {
                            if (!abstractC0059u.m138e()) {
                                break loop0;
                            }
                            abstractC0059u.m112d();
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == abstractC0059u);
                    if (abstractC0059uM95b.m138e()) {
                        abstractC0059uM95b.m112d();
                    }
                }
            } else {
                break;
            }
        }
        if (AbstractC0035a.m97d(objM108a)) {
            m5744r();
            if (c3607k.f149d * ((long) AbstractC3600d.f10672b) < m5742o()) {
                c3607k.m109a();
                return null;
            }
        } else {
            C3607k c3607k3 = (C3607k) AbstractC0035a.m95b(objM108a);
            long j12 = c3607k3.f149d;
            if (!m5746t() && j10 <= f10662e.get(this) / ((long) AbstractC3600d.f10672b)) {
                loop3: while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f10666i;
                    AbstractC0059u abstractC0059u2 = (AbstractC0059u) atomicReferenceFieldUpdater2.get(this);
                    if (abstractC0059u2.f149d >= j12 || !c3607k3.m142i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, abstractC0059u2, c3607k3)) {
                            if (!abstractC0059u2.m138e()) {
                                break loop3;
                            }
                            abstractC0059u2.m112d();
                            break loop3;
                        }
                    } while (atomicReferenceFieldUpdater2.get(this) == abstractC0059u2);
                    if (c3607k3.m138e()) {
                        c3607k3.m112d();
                    }
                }
            }
            if (j12 <= j10) {
                return c3607k3;
            }
            long j13 = j12 * ((long) AbstractC3600d.f10672b);
            do {
                j11 = f10661d.get(this);
                if (j11 >= j13) {
                    break;
                }
            } while (!f10661d.compareAndSet(this, j11, j13));
            if (j12 * ((long) AbstractC3600d.f10672b) < m5742o()) {
                c3607k3.m109a();
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: m */
    public final Throwable m5740m() {
        return (Throwable) f10667j.get(this);
    }

    /* JADX INFO: renamed from: n */
    public final Throwable m5741n() {
        Throwable thM5740m = m5740m();
        return thM5740m == null ? new C0034f("Channel was closed") : thM5740m;
    }

    /* JADX INFO: renamed from: o */
    public final long m5742o() {
        return f10660c.get(this) & 1152921504606846975L;
    }

    /* JADX INFO: renamed from: q */
    public final boolean m5743q(long j10, boolean z9) {
        int i10 = (int) (j10 >> 60);
        if (i10 != 0 && i10 != 1) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f10661d;
            if (i10 == 2) {
                m5736i(1152921504606846975L & j10);
                if (z9) {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10665h;
                        C3607k c3607kM5739l = (C3607k) atomicReferenceFieldUpdater.get(this);
                        long j11 = atomicLongFieldUpdater.get(this);
                        if (m5742o() <= j11) {
                            break;
                        }
                        long j12 = AbstractC3600d.f10672b;
                        long j13 = j11 / j12;
                        if (c3607kM5739l.f149d != j13 && (c3607kM5739l = m5739l(j13, c3607kM5739l)) == null) {
                            if (((C3607k) atomicReferenceFieldUpdater.get(this)).f149d < j13) {
                                break;
                            }
                        } else {
                            c3607kM5739l.m109a();
                            int i11 = (int) (j11 % j12);
                            while (true) {
                                Object objM5755k = c3607kM5739l.m5755k(i11);
                                if (objM5755k != null && objM5755k != AbstractC3600d.f10675e) {
                                    if (objM5755k != AbstractC3600d.f10674d && (objM5755k == AbstractC3600d.f10680j || objM5755k == AbstractC3600d.f10682l || objM5755k == AbstractC3600d.f10679i || objM5755k == AbstractC3600d.f10678h || (objM5755k != AbstractC3600d.f10677g && (objM5755k == AbstractC3600d.f10676f || j11 != atomicLongFieldUpdater.get(this))))) {
                                        break;
                                        break;
                                        break;
                                        break;
                                        break;
                                        break;
                                    }
                                } else if (c3607kM5739l.m5754j(i11, objM5755k, AbstractC3600d.f10678h)) {
                                    m5738k();
                                    break;
                                }
                            }
                            f10661d.compareAndSet(this, j11, j11 + 1);
                        }
                    }
                }
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException(AbstractC0074a.m154e(i10, "unexpected close status: ").toString());
                }
                C3607k c3607kM5736i = m5736i(1152921504606846975L & j10);
                Object objM98e = null;
                loop0: do {
                    for (int i12 = AbstractC3600d.f10672b - 1; -1 < i12; i12--) {
                        long j14 = (c3607kM5736i.f149d * ((long) AbstractC3600d.f10672b)) + ((long) i12);
                        while (true) {
                            Object objM5755k2 = c3607kM5736i.m5755k(i12);
                            if (objM5755k2 == AbstractC3600d.f10679i) {
                                break loop0;
                            }
                            if (objM5755k2 != AbstractC3600d.f10674d) {
                                if (objM5755k2 != AbstractC3600d.f10675e && objM5755k2 != null) {
                                    if (!(objM5755k2 instanceof InterfaceC3427u1) && !(objM5755k2 instanceof C3615s)) {
                                        C0061w c0061w = AbstractC3600d.f10677g;
                                        if (objM5755k2 == c0061w || objM5755k2 == AbstractC3600d.f10676f) {
                                            break loop0;
                                        }
                                        if (objM5755k2 != c0061w) {
                                            break;
                                        }
                                    } else {
                                        if (j14 < atomicLongFieldUpdater.get(this)) {
                                            break loop0;
                                        }
                                        InterfaceC3427u1 interfaceC3427u1 = objM5755k2 instanceof C3615s ? ((C3615s) objM5755k2).f10702a : (InterfaceC3427u1) objM5755k2;
                                        if (c3607kM5736i.m5754j(i12, objM5755k2, AbstractC3600d.f10682l)) {
                                            objM98e = AbstractC0035a.m98e(objM98e, interfaceC3427u1);
                                            c3607kM5736i.m5757m(i12, null);
                                            c3607kM5736i.m141h();
                                            break;
                                        }
                                    }
                                } else {
                                    if (c3607kM5736i.m5754j(i12, objM5755k2, AbstractC3600d.f10682l)) {
                                        c3607kM5736i.m141h();
                                        break;
                                    }
                                }
                            } else {
                                if (j14 < atomicLongFieldUpdater.get(this)) {
                                    break loop0;
                                }
                                if (c3607kM5736i.m5754j(i12, objM5755k2, AbstractC3600d.f10682l)) {
                                    c3607kM5736i.m5757m(i12, null);
                                    c3607kM5736i.m141h();
                                    break;
                                }
                            }
                        }
                    }
                    c3607kM5736i = (C3607k) ((AbstractC0043e) AbstractC0043e.f117c.get(c3607kM5736i));
                } while (c3607kM5736i != null);
                if (objM98e != null) {
                    if (objM98e instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) objM98e;
                        for (int size = arrayList.size() - 1; -1 < size; size--) {
                            m5749w((InterfaceC3427u1) arrayList.get(size), false);
                        }
                    } else {
                        m5749w((InterfaceC3427u1) objM98e, false);
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: renamed from: r */
    public final boolean m5744r() {
        return m5743q(f10660c.get(this), false);
    }

    /* JADX INFO: renamed from: s */
    public boolean mo5745s() {
        return false;
    }

    /* JADX INFO: renamed from: t */
    public final boolean m5746t() {
        long j10 = f10662e.get(this);
        return j10 == 0 || j10 == Long.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String string;
        StringBuilder sb = new StringBuilder();
        int i10 = (int) (f10660c.get(this) >> 60);
        if (i10 == 2) {
            sb.append("closed,");
        } else if (i10 == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.f10669b + ',');
        sb.append("data=[");
        int i11 = 0;
        boolean z9 = true;
        List listListOf = CollectionsKt.listOf((Object[]) new C3607k[]{f10665h.get(this), f10664g.get(this), f10666i.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((C3607k) obj) != AbstractC3600d.f10671a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            C2467b.m3834x();
            return null;
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j10 = ((C3607k) next).f149d;
            do {
                Object next2 = it.next();
                long j11 = ((C3607k) next2).f149d;
                if (j10 > j11) {
                    next = next2;
                    j10 = j11;
                }
            } while (it.hasNext());
        }
        C3607k c3607k = (C3607k) next;
        long j12 = f10661d.get(this);
        long jM5742o = m5742o();
        loop2: while (true) {
            int i12 = AbstractC3600d.f10672b;
            int i13 = i11;
            while (i13 < i12) {
                long j13 = (c3607k.f149d * ((long) AbstractC3600d.f10672b)) + ((long) i13);
                if (j13 >= jM5742o && j13 >= j12) {
                    break loop2;
                }
                Object objM5755k = c3607k.m5755k(i13);
                boolean z10 = z9;
                Object obj2 = c3607k.f10697g.get(i13 * 2);
                if (objM5755k instanceof InterfaceC3374d) {
                    string = (j13 >= j12 || j13 < jM5742o) ? (j13 >= jM5742o || j13 < j12) ? "cont" : "send" : "receive";
                } else if (objM5755k instanceof C3615s) {
                    string = "EB(" + objM5755k + ')';
                } else if (Intrinsics.areEqual(objM5755k, AbstractC3600d.f10676f) ? z10 : Intrinsics.areEqual(objM5755k, AbstractC3600d.f10677g)) {
                    string = "resuming_sender";
                } else {
                    if (!(objM5755k == null ? z10 : Intrinsics.areEqual(objM5755k, AbstractC3600d.f10675e) ? z10 : Intrinsics.areEqual(objM5755k, AbstractC3600d.f10679i) ? z10 : Intrinsics.areEqual(objM5755k, AbstractC3600d.f10678h) ? z10 : Intrinsics.areEqual(objM5755k, AbstractC3600d.f10681k) ? z10 : Intrinsics.areEqual(objM5755k, AbstractC3600d.f10680j) ? z10 : Intrinsics.areEqual(objM5755k, AbstractC3600d.f10682l))) {
                        string = objM5755k.toString();
                    }
                    i13++;
                    z9 = z10;
                }
                if (obj2 != null) {
                    sb.append("(" + string + ',' + obj2 + "),");
                } else {
                    sb.append(string + ',');
                }
                i13++;
                z9 = z10;
            }
            boolean z11 = z9;
            c3607k = (C3607k) c3607k.m110b();
            if (c3607k == null) {
                break;
            }
            z9 = z11;
            i11 = 0;
        }
        if (StringsKt.last(sb) == ',') {
            sb.deleteCharAt(sb.length() - 1).getClass();
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: renamed from: u */
    public final void m5747u(long j10, C3607k c3607k) {
        C3607k c3607k2;
        C3607k c3607k3;
        while (c3607k.f149d < j10 && (c3607k3 = (C3607k) c3607k.m110b()) != null) {
            c3607k = c3607k3;
        }
        while (true) {
            if (!c3607k.mo111c() || (c3607k2 = (C3607k) c3607k.m110b()) == null) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10666i;
                    AbstractC0059u abstractC0059u = (AbstractC0059u) atomicReferenceFieldUpdater.get(this);
                    if (abstractC0059u.f149d >= c3607k.f149d) {
                        return;
                    }
                    if (!c3607k.m142i()) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, abstractC0059u, c3607k)) {
                            if (abstractC0059u.m138e()) {
                                abstractC0059u.m112d();
                                return;
                            }
                            return;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == abstractC0059u);
                    if (c3607k.m138e()) {
                        c3607k.m112d();
                    }
                }
            } else {
                c3607k = c3607k2;
            }
        }
    }

    /* JADX INFO: renamed from: v */
    public final Object m5748v(Object obj, Continuation continuation) throws Throwable {
        C3377e c3377e = new C3377e(1, IntrinsicsKt.intercepted(continuation));
        c3377e.m5307r();
        Throwable thM5741n = m5741n();
        Result.Companion companion = Result.INSTANCE;
        c3377e.resumeWith(Result.m6088constructorimpl(ResultKt.createFailure(thM5741n)));
        Object objM5306q = c3377e.m5306q();
        if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM5306q : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: w */
    public final void m5749w(InterfaceC3427u1 interfaceC3427u1, boolean z9) {
        Throwable thM5741n;
        if (interfaceC3427u1 instanceof InterfaceC3374d) {
            Continuation continuation = (Continuation) interfaceC3427u1;
            Result.Companion companion = Result.INSTANCE;
            if (z9) {
                thM5741n = m5740m();
                if (thM5741n == null) {
                    thM5741n = new C3608l("Channel was closed");
                }
            } else {
                thM5741n = m5741n();
            }
            continuation.resumeWith(Result.m6088constructorimpl(ResultKt.createFailure(thM5741n)));
            return;
        }
        if (!(interfaceC3427u1 instanceof C3597a)) {
            C2930a.m4661c(interfaceC3427u1, "Unexpected waiter: ");
            return;
        }
        C3597a c3597a = (C3597a) interfaceC3427u1;
        C3377e c3377e = c3597a.f10658c;
        c3377e.getClass();
        c3597a.f10658c = null;
        c3597a.f10657b = AbstractC3600d.f10682l;
        Throwable thM5740m = c3597a.f10659d.m5740m();
        if (thM5740m == null) {
            Result.Companion companion2 = Result.INSTANCE;
            c3377e.resumeWith(Result.m6088constructorimpl(Boolean.FALSE));
        } else {
            Result.Companion companion3 = Result.INSTANCE;
            c3377e.resumeWith(Result.m6088constructorimpl(ResultKt.createFailure(thM5740m)));
        }
    }

    /* JADX INFO: renamed from: x */
    public final boolean m5750x(Object obj, Object obj2) {
        if (!(obj instanceof C3597a)) {
            if (!(obj instanceof InterfaceC3374d)) {
                C2930a.m4661c(obj, "Unexpected receiver type: ");
                return false;
            }
            InterfaceC3374d interfaceC3374d = (InterfaceC3374d) obj;
            C3607k c3607k = AbstractC3600d.f10671a;
            C0061w c0061wMo2358a = interfaceC3374d.mo2358a(obj2, null);
            if (c0061wMo2358a == null) {
                return false;
            }
            interfaceC3374d.mo2361g(c0061wMo2358a);
            return true;
        }
        C3597a c3597a = (C3597a) obj;
        C3377e c3377e = c3597a.f10658c;
        c3377e.getClass();
        c3597a.f10658c = null;
        c3597a.f10657b = obj2;
        Boolean bool = Boolean.TRUE;
        C3607k c3607k2 = AbstractC3600d.f10671a;
        C0061w c0061wMo2358a2 = c3377e.mo2358a(bool, null);
        if (c0061wMo2358a2 == null) {
            return false;
        }
        c3377e.mo2361g(c0061wMo2358a2);
        return true;
    }

    /* JADX INFO: renamed from: z */
    public final Object m5751z(C3607k c3607k, int i10, long j10, C3597a c3597a) {
        AtomicReferenceArray atomicReferenceArray = c3607k.f10697g;
        Object objM5755k = c3607k.m5755k(i10);
        AtomicLongFieldUpdater atomicLongFieldUpdater = f10660c;
        if (objM5755k == null) {
            if (j10 >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (c3597a == null) {
                    return AbstractC3600d.f10684n;
                }
                if (c3607k.m5754j(i10, objM5755k, c3597a)) {
                    m5738k();
                    return AbstractC3600d.f10683m;
                }
            }
        } else if (objM5755k == AbstractC3600d.f10674d && c3607k.m5754j(i10, objM5755k, AbstractC3600d.f10679i)) {
            m5738k();
            Object obj = atomicReferenceArray.get(i10 * 2);
            c3607k.m5757m(i10, null);
            return obj;
        }
        while (true) {
            Object objM5755k2 = c3607k.m5755k(i10);
            if (objM5755k2 == null || objM5755k2 == AbstractC3600d.f10675e) {
                if (j10 < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (c3607k.m5754j(i10, objM5755k2, AbstractC3600d.f10678h)) {
                        m5738k();
                        return AbstractC3600d.f10685o;
                    }
                } else {
                    if (c3597a == null) {
                        return AbstractC3600d.f10684n;
                    }
                    if (c3607k.m5754j(i10, objM5755k2, c3597a)) {
                        m5738k();
                        return AbstractC3600d.f10683m;
                    }
                }
            } else if (objM5755k2 != AbstractC3600d.f10674d) {
                C0061w c0061w = AbstractC3600d.f10680j;
                if (objM5755k2 == c0061w) {
                    return AbstractC3600d.f10685o;
                }
                if (objM5755k2 == AbstractC3600d.f10678h) {
                    return AbstractC3600d.f10685o;
                }
                if (objM5755k2 == AbstractC3600d.f10682l) {
                    m5738k();
                    return AbstractC3600d.f10685o;
                }
                if (objM5755k2 != AbstractC3600d.f10677g && c3607k.m5754j(i10, objM5755k2, AbstractC3600d.f10676f)) {
                    boolean z9 = objM5755k2 instanceof C3615s;
                    if (z9) {
                        objM5755k2 = ((C3615s) objM5755k2).f10702a;
                    }
                    if (m5729y(objM5755k2)) {
                        c3607k.m5758n(i10, AbstractC3600d.f10679i);
                        m5738k();
                        Object obj2 = atomicReferenceArray.get(i10 * 2);
                        c3607k.m5757m(i10, null);
                        return obj2;
                    }
                    c3607k.m5758n(i10, c0061w);
                    c3607k.m141h();
                    if (z9) {
                        m5738k();
                    }
                    return AbstractC3600d.f10685o;
                }
            } else if (c3607k.m5754j(i10, objM5755k2, AbstractC3600d.f10679i)) {
                m5738k();
                Object obj3 = atomicReferenceArray.get(i10 * 2);
                c3607k.m5757m(i10, null);
                return obj3;
            }
        }
    }
}
