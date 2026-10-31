package p224v8;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.net.ftp.C2930a;
import p010a9.AbstractC0035a;
import p010a9.AbstractC0038b0;
import p010a9.C0046h;
import p010a9.C0058t;
import p010a9.C0061w;
import p016b1.AbstractC0880u;
import p024b9.AbstractC0931a;
import p034c9.C1018d;
import p099j1.C1929i;
import p233w8.C3540c;

/* JADX INFO: renamed from: v8.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3366a0 {

    /* JADX INFO: renamed from: a */
    public static final C0061w f9841a = new C0061w("RESUME_TOKEN", 0);

    /* JADX INFO: renamed from: b */
    public static final C0061w f9842b = new C0061w("CLOSED_EMPTY", 0);

    /* JADX INFO: renamed from: c */
    public static final C0061w f9843c = new C0061w("COMPLETING_ALREADY", 0);

    /* JADX INFO: renamed from: d */
    public static final C0061w f9844d = new C0061w("COMPLETING_WAITING_CHILDREN", 0);

    /* JADX INFO: renamed from: e */
    public static final C0061w f9845e = new C0061w("COMPLETING_RETRY", 0);

    /* JADX INFO: renamed from: f */
    public static final C0061w f9846f = new C0061w("TOO_LATE_TO_CANCEL", 0);

    /* JADX INFO: renamed from: g */
    public static final C0061w f9847g = new C0061w("SEALED", 0);

    /* JADX INFO: renamed from: h */
    public static final C3396k0 f9848h = new C3396k0(false);

    /* JADX INFO: renamed from: i */
    public static final C3396k0 f9849i = new C3396k0(true);

    /* JADX INFO: renamed from: a */
    public static final String m5282a(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    /* JADX INFO: renamed from: b */
    public static final C3377e m5283b(Continuation continuation) {
        C3377e c3377e;
        C3377e c3377e2;
        if (!(continuation instanceof C0046h)) {
            return new C3377e(1, continuation);
        }
        C0046h c0046h = (C0046h) continuation;
        C0061w c0061w = AbstractC0035a.f102c;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0046h.f120i;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(c0046h);
            c3377e = null;
            if (obj == null) {
                atomicReferenceFieldUpdater.set(c0046h, c0061w);
                c3377e2 = null;
                break;
            }
            if (obj instanceof C3377e) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(c0046h, obj, c0061w)) {
                        c3377e2 = (C3377e) obj;
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(c0046h) == obj);
            } else if (obj != c0061w && !(obj instanceof Throwable)) {
                C2930a.m4661c(obj, "Inconsistent state ");
                return null;
            }
        }
        if (c3377e2 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C3377e.f9859h;
            Object obj2 = atomicReferenceFieldUpdater2.get(c3377e2);
            if (!(obj2 instanceof C3392j) || ((C3392j) obj2).f9887d == null) {
                C3377e.f9858g.set(c3377e2, 536870911);
                atomicReferenceFieldUpdater2.set(c3377e2, C3368b.f9851b);
                c3377e = c3377e2;
            } else {
                c3377e2.m5304o();
            }
            if (c3377e != null) {
                return c3377e;
            }
        }
        return new C3377e(2, continuation);
    }

    /* JADX INFO: renamed from: c */
    public static C3406n1 m5284c(InterfaceC3434x interfaceC3434x, C3540c c3540c, Function2 function2, int i10) {
        CoroutineContext coroutineContext = c3540c;
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContextM5352a = AbstractC3413q.m5352a(interfaceC3434x.getCoroutineContext(), coroutineContext, true);
        C1018d c1018d = AbstractC3387h0.f9879a;
        if (coroutineContextM5352a != c1018d && coroutineContextM5352a.get(ContinuationInterceptor.INSTANCE) == null) {
            coroutineContextM5352a = coroutineContextM5352a.plus(c1018d);
        }
        C3406n1 c3406n1 = new C3406n1(coroutineContextM5352a, true);
        c3406n1.m5279L(1, c3406n1, function2);
        return c3406n1;
    }

    /* JADX INFO: renamed from: d */
    public static final String m5285d(Continuation continuation) {
        Object objM6088constructorimpl;
        if (continuation instanceof C0046h) {
            return continuation.toString();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM6088constructorimpl = Result.m6088constructorimpl(continuation + '@' + m5282a(continuation));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM6088constructorimpl = Result.m6088constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m6091exceptionOrNullimpl(objM6088constructorimpl) != null) {
            objM6088constructorimpl = continuation.getClass().getName() + '@' + m5282a(continuation);
        }
        return (String) objM6088constructorimpl;
    }

    /* JADX INFO: renamed from: e */
    public static final Object m5286e(AbstractC3422t abstractC3422t, Function2 function2, Continuation continuation) throws Throwable {
        Object objM5341w;
        InterfaceC3426u0 interfaceC3426u0;
        CoroutineContext context = continuation.get$context();
        CoroutineContext coroutineContextPlus = !((Boolean) abstractC3422t.fold(Boolean.FALSE, C3410p.f9902b)).booleanValue() ? context.plus(abstractC3422t) : AbstractC3413q.m5352a(context, abstractC3422t, false);
        InterfaceC3439z0 interfaceC3439z0 = (InterfaceC3439z0) coroutineContextPlus.get(C3437y0.f9916b);
        if (interfaceC3439z0 != null && !interfaceC3439z0.mo5329b()) {
            throw ((C3388h1) interfaceC3439z0).m5339s();
        }
        if (coroutineContextPlus == context) {
            C0058t c0058t = new C0058t(continuation, coroutineContextPlus);
            objM5341w = AbstractC0880u.m1007y(c0058t, c0058t, function2);
        } else {
            ContinuationInterceptor.Companion key = ContinuationInterceptor.INSTANCE;
            if (Intrinsics.areEqual(coroutineContextPlus.get(key), context.get(key))) {
                C3421s1 c3421s1 = new C3421s1(continuation, coroutineContextPlus);
                CoroutineContext coroutineContext = c3421s1.f9840d;
                Object objM107b = AbstractC0038b0.m107b(coroutineContext, null);
                try {
                    Object objM1007y = AbstractC0880u.m1007y(c3421s1, c3421s1, function2);
                    AbstractC0038b0.m106a(coroutineContext, objM107b);
                    objM5341w = objM1007y;
                } catch (Throwable th) {
                    AbstractC0038b0.m106a(coroutineContext, objM107b);
                    throw th;
                }
            } else {
                C3378e0 c3378e0 = new C3378e0(continuation, coroutineContextPlus);
                AbstractC0931a.m1064a(function2, c3378e0, c3378e0);
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C3378e0.f9863f;
                while (true) {
                    int i10 = atomicIntegerFieldUpdater.get(c3378e0);
                    if (i10 != 0) {
                        if (i10 != 2) {
                            C1929i.m3030l("Already suspended");
                            return null;
                        }
                        objM5341w = c3378e0.m5341w();
                        C3429v0 c3429v0 = objM5341w instanceof C3429v0 ? (C3429v0) objM5341w : null;
                        if (c3429v0 != null && (interfaceC3426u0 = c3429v0.f9912a) != null) {
                            objM5341w = interfaceC3426u0;
                        }
                        if (!(objM5341w instanceof C3395k)) {
                            break;
                        }
                        throw ((C3395k) objM5341w).f9892a;
                    }
                    if (atomicIntegerFieldUpdater.compareAndSet(c3378e0, 0, 1)) {
                        objM5341w = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        break;
                    }
                }
            }
        }
        if (objM5341w == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objM5341w;
    }
}
