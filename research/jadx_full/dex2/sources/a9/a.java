package a9;

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
import v8.h1;
import v8.l0;
import v8.q1;
import v8.s1;
import v8.y0;
import v8.z0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class a {
    public static final w a = new w("NO_DECISION", 0);
    public static final w b = new w("UNDEFINED", 0);
    public static final w c = new w("REUSABLE_CLAIMED", 0);
    public static final w d = new w("CONDITION_FALSE", 0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void a(int i) {
        if (i >= 1) {
            return;
        }
        l9.i.d(ai.onnxruntime.a.e(i, "Expected positive parallelism level, but got "));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final u b(Object obj) {
        if (obj != d.a) {
            return (u) obj;
        }
        j1.i.l("Does not contain segment");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void c(Throwable th, CoroutineContext coroutineContext) {
        Throwable runtimeException;
        Iterator it = f.a.iterator();
        while (it.hasNext()) {
            try {
                ((w8.b) ((v8.v) it.next())).y(th);
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
            ExceptionsKt.addSuppressed(th, new g(coroutineContext));
        } catch (Throwable unused) {
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean d(Object obj) {
        return obj == d.a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Object e(Object obj, Object obj2) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void f(Object obj, Continuation continuation) {
        if (!(continuation instanceof h)) {
            continuation.resumeWith(obj);
            return;
        }
        h hVar = (h) continuation;
        v8.t tVar = hVar.e;
        Continuation continuation2 = hVar.f;
        Throwable th = Result.exceptionOrNull-impl(obj);
        Object kVar = th == null ? obj : new v8.k(false, th);
        if (tVar.isDispatchNeeded(continuation2.getContext())) {
            hVar.g = kVar;
            hVar.d = 1;
            tVar.dispatch(continuation2.getContext(), hVar);
            return;
        }
        l0 l0VarA = q1.a();
        if (l0VarA.b >= 4294967296L) {
            hVar.g = kVar;
            hVar.d = 1;
            ArrayDeque arrayDeque = l0VarA.d;
            if (arrayDeque == null) {
                arrayDeque = new ArrayDeque();
                l0VarA.d = arrayDeque;
            }
            arrayDeque.addLast(hVar);
            return;
        }
        l0VarA.S(true);
        try {
            z0 z0Var = (z0) continuation2.getContext().get(y0.b);
            if (z0Var == null || z0Var.b()) {
                Object obj2 = hVar.h;
                CoroutineContext context = continuation2.getContext();
                Object objB = b0.b(context, obj2);
                s1 s1VarB = objB != b0.a ? v8.q.b(continuation2, context, objB) : null;
                try {
                    continuation2.resumeWith(obj);
                    Unit unit = Unit.INSTANCE;
                    if (s1VarB == null || s1VarB.M()) {
                        b0.a(context, objB);
                    }
                } catch (Throwable th2) {
                    if (s1VarB == null || s1VarB.M()) {
                        b0.a(context, objB);
                    }
                    throw th2;
                }
            } else {
                CancellationException cancellationExceptionS = ((h1) z0Var).s();
                hVar.c(kVar, cancellationExceptionS);
                hVar.resumeWith(Result.constructor-impl(ResultKt.createFailure(cancellationExceptionS)));
            }
            while (l0VarA.V()) {
            }
        } catch (Throwable th3) {
            try {
                hVar.i(th3, null);
            } finally {
                l0VarA.y();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void g(Object obj, Continuation continuation) {
        f(obj, continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final long h(long j, long j2, long j3, String str) {
        String property;
        int i = x.a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j;
        }
        Long longOrNull = StringsKt.toLongOrNull(property);
        if (longOrNull == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + property + '\'').toString());
        }
        long jLongValue = longOrNull.longValue();
        if (j2 <= jLongValue && jLongValue <= j3) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + jLongValue + '\'').toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int i(int i, int i2, String str) {
        return (int) h(i, 1, (i2 & 8) != 0 ? Integer.MAX_VALUE : 2097150, str);
    }
}
