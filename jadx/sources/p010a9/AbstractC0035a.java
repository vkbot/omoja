package p010a9;

import ai.onnxruntime.AbstractC0074a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.text.StringsKt;
import p099j1.C1929i;
import p130l9.C2237i;
import p224v8.AbstractC3399l0;
import p224v8.AbstractC3413q;
import p224v8.AbstractC3415q1;
import p224v8.AbstractC3422t;
import p224v8.C3388h1;
import p224v8.C3395k;
import p224v8.C3421s1;
import p224v8.C3437y0;
import p224v8.InterfaceC3428v;
import p224v8.InterfaceC3439z0;
import p233w8.C3539b;

/* JADX INFO: renamed from: a9.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0035a {

    /* JADX INFO: renamed from: a */
    public static final C0061w f100a = new C0061w("NO_DECISION", 0);

    /* JADX INFO: renamed from: b */
    public static final C0061w f101b = new C0061w("UNDEFINED", 0);

    /* JADX INFO: renamed from: c */
    public static final C0061w f102c = new C0061w("REUSABLE_CLAIMED", 0);

    /* JADX INFO: renamed from: d */
    public static final C0061w f103d = new C0061w("CONDITION_FALSE", 0);

    /* JADX INFO: renamed from: a */
    public static final void m94a(int i10) {
        if (i10 >= 1) {
            return;
        }
        C2237i.m3597d(AbstractC0074a.m154e(i10, "Expected positive parallelism level, but got "));
    }

    /* JADX INFO: renamed from: b */
    public static final AbstractC0059u m95b(Object obj) {
        if (obj != AbstractC0041d.f112a) {
            return (AbstractC0059u) obj;
        }
        C1929i.m3030l("Does not contain segment");
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static final void m96c(Throwable th, CoroutineContext coroutineContext) {
        Throwable runtimeException;
        Iterator it = AbstractC0044f.f118a.iterator();
        while (it.hasNext()) {
            try {
                ((C3539b) ((InterfaceC3428v) it.next())).m5652y(th);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    ExceptionsKt.addSuppressed(runtimeException, th);
                }
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        try {
            ExceptionsKt.addSuppressed(th, new C0045g(coroutineContext));
        } catch (Throwable unused) {
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }

    /* JADX INFO: renamed from: d */
    public static final boolean m97d(Object obj) {
        return obj == AbstractC0041d.f112a;
    }

    /* JADX INFO: renamed from: e */
    public static final Object m98e(Object obj, Object obj2) {
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }

    /* JADX INFO: renamed from: f */
    public static final void m99f(Object obj, Continuation continuation) {
        if (!(continuation instanceof C0046h)) {
            continuation.resumeWith(obj);
            return;
        }
        C0046h c0046h = (C0046h) continuation;
        AbstractC3422t abstractC3422t = c0046h.f121e;
        Continuation continuation2 = c0046h.f122f;
        Throwable thM6091exceptionOrNullimpl = Result.m6091exceptionOrNullimpl(obj);
        Object c3395k = thM6091exceptionOrNullimpl == null ? obj : new C3395k(false, thM6091exceptionOrNullimpl);
        if (abstractC3422t.isDispatchNeeded(continuation2.get$context())) {
            c0046h.f123g = c3395k;
            c0046h.f9869d = 1;
            abstractC3422t.dispatch(continuation2.get$context(), c0046h);
            return;
        }
        AbstractC3399l0 abstractC3399l0M5354a = AbstractC3415q1.m5354a();
        if (abstractC3399l0M5354a.f9895b >= 4294967296L) {
            c0046h.f123g = c3395k;
            c0046h.f9869d = 1;
            ArrayDeque arrayDeque = abstractC3399l0M5354a.f9897d;
            if (arrayDeque == null) {
                arrayDeque = new ArrayDeque();
                abstractC3399l0M5354a.f9897d = arrayDeque;
            }
            arrayDeque.addLast(c0046h);
            return;
        }
        abstractC3399l0M5354a.m5346S(true);
        try {
            InterfaceC3439z0 interfaceC3439z0 = (InterfaceC3439z0) continuation2.get$context().get(C3437y0.f9916b);
            if (interfaceC3439z0 == null || interfaceC3439z0.mo5329b()) {
                Object obj2 = c0046h.f124h;
                CoroutineContext context = continuation2.get$context();
                Object objM107b = AbstractC0038b0.m107b(context, obj2);
                C3421s1 c3421s1M5353b = objM107b != AbstractC0038b0.f106a ? AbstractC3413q.m5353b(continuation2, context, objM107b) : null;
                try {
                    continuation2.resumeWith(obj);
                    Unit unit = Unit.INSTANCE;
                    if (c3421s1M5353b == null || c3421s1M5353b.m5355M()) {
                        AbstractC0038b0.m106a(context, objM107b);
                    }
                } catch (Throwable th) {
                    if (c3421s1M5353b == null || c3421s1M5353b.m5355M()) {
                        AbstractC0038b0.m106a(context, objM107b);
                    }
                    throw th;
                }
            } else {
                CancellationException cancellationExceptionM5339s = ((C3388h1) interfaceC3439z0).m5339s();
                c0046h.mo113c(c3395k, cancellationExceptionM5339s);
                c0046h.resumeWith(Result.m6088constructorimpl(ResultKt.createFailure(cancellationExceptionM5339s)));
            }
            while (abstractC3399l0M5354a.m5347V()) {
            }
        } catch (Throwable th2) {
            try {
                c0046h.m5314i(th2, null);
            } finally {
                abstractC3399l0M5354a.m5348y();
            }
        }
    }

    /* JADX INFO: renamed from: h */
    public static final long m101h(long j10, long j11, long j12, String str) {
        String property;
        int i10 = AbstractC0062x.f153a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j10;
        }
        Long longOrNull = StringsKt.toLongOrNull(property);
        if (longOrNull == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + property + '\'').toString());
        }
        long jLongValue = longOrNull.longValue();
        if (j11 <= jLongValue && jLongValue <= j12) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j11 + ".." + j12 + ", but is '" + jLongValue + '\'').toString());
    }

    /* JADX INFO: renamed from: i */
    public static int m102i(int i10, int i11, String str) {
        return (int) m101h(i10, 1, (i11 & 8) != 0 ? Integer.MAX_VALUE : 2097150, str);
    }
}
