package v8;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class a0 {
    public static final a9.w a = new a9.w("RESUME_TOKEN", 0);
    public static final a9.w b = new a9.w("CLOSED_EMPTY", 0);
    public static final a9.w c = new a9.w("COMPLETING_ALREADY", 0);
    public static final a9.w d = new a9.w("COMPLETING_WAITING_CHILDREN", 0);
    public static final a9.w e = new a9.w("COMPLETING_RETRY", 0);
    public static final a9.w f = new a9.w("TOO_LATE_TO_CANCEL", 0);
    public static final a9.w g = new a9.w("SEALED", 0);
    public static final k0 h = new k0(false);
    public static final k0 i = new k0(true);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final String a(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final e b(Continuation continuation) {
        e eVar;
        e eVar2;
        if (!(continuation instanceof a9.h)) {
            return new e(1, continuation);
        }
        a9.h hVar = (a9.h) continuation;
        a9.w wVar = a9.a.c;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a9.h.i;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(hVar);
            eVar = null;
            if (obj == null) {
                atomicReferenceFieldUpdater.set(hVar, wVar);
                eVar2 = null;
                break;
            }
            if (obj instanceof e) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(hVar, obj, wVar)) {
                        eVar2 = (e) obj;
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(hVar) == obj);
            } else if (obj != wVar && !(obj instanceof Throwable)) {
                org.apache.commons.net.ftp.a.c(obj, "Inconsistent state ");
                return null;
            }
        }
        if (eVar2 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = e.h;
            Object obj2 = atomicReferenceFieldUpdater2.get(eVar2);
            if (!(obj2 instanceof j) || ((j) obj2).d == null) {
                e.g.set(eVar2, 536870911);
                atomicReferenceFieldUpdater2.set(eVar2, b.b);
                eVar = eVar2;
            } else {
                eVar2.o();
            }
            if (eVar != null) {
                return eVar;
            }
        }
        return new e(2, continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n1 c(x xVar, w8.c cVar, Function2 function2, int i2) {
        if ((i2 & 1) != 0) {
            cVar = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContextA = q.a(xVar.getCoroutineContext(), cVar, true);
        CoroutineContext coroutineContext = h0.a;
        if (coroutineContextA != coroutineContext && coroutineContextA.get(ContinuationInterceptor.Key) == null) {
            coroutineContextA = coroutineContextA.plus(coroutineContext);
        }
        n1 n1Var = new n1(coroutineContextA, true);
        n1Var.L(1, n1Var, function2);
        return n1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final String d(Continuation continuation) {
        Object obj;
        if (continuation instanceof a9.h) {
            return continuation.toString();
        }
        try {
            Result$Companion result$Companion = Result.Companion;
            obj = Result.constructor-impl(continuation + '@' + a(continuation));
        } catch (Throwable th) {
            Result$Companion result$Companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        if (Result.exceptionOrNull-impl(obj) != null) {
            obj = continuation.getClass().getName() + '@' + a(continuation);
        }
        return (String) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Object e(t tVar, Function2 function2, Continuation continuation) throws Throwable {
        Object objW;
        u0 u0Var;
        CoroutineContext context = continuation.getContext();
        CoroutineContext coroutineContextPlus = !((Boolean) tVar.fold(Boolean.FALSE, p.b)).booleanValue() ? context.plus(tVar) : q.a(context, tVar, false);
        z0 z0Var = (z0) coroutineContextPlus.get(y0.b);
        if (z0Var != null && !z0Var.b()) {
            throw ((h1) z0Var).s();
        }
        if (coroutineContextPlus == context) {
            a9.t tVar2 = new a9.t(continuation, coroutineContextPlus);
            objW = b1.u.y(tVar2, tVar2, function2);
        } else {
            ContinuationInterceptor$Key continuationInterceptor$Key = ContinuationInterceptor.Key;
            if (Intrinsics.areEqual(coroutineContextPlus.get(continuationInterceptor$Key), context.get(continuationInterceptor$Key))) {
                s1 s1Var = new s1(continuation, coroutineContextPlus);
                CoroutineContext coroutineContext = s1Var.d;
                Object objB = a9.b0.b(coroutineContext, null);
                try {
                    Object objY = b1.u.y(s1Var, s1Var, function2);
                    a9.b0.a(coroutineContext, objB);
                    objW = objY;
                } catch (Throwable th) {
                    a9.b0.a(coroutineContext, objB);
                    throw th;
                }
            } else {
                e0 e0Var = new e0(continuation, coroutineContextPlus);
                b9.a.a(function2, e0Var, e0Var);
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = e0.f;
                while (true) {
                    int i2 = atomicIntegerFieldUpdater.get(e0Var);
                    if (i2 != 0) {
                        if (i2 != 2) {
                            j1.i.l("Already suspended");
                            return null;
                        }
                        objW = e0Var.w();
                        v0 v0Var = objW instanceof v0 ? (v0) objW : null;
                        if (v0Var != null && (u0Var = v0Var.a) != null) {
                            objW = u0Var;
                        }
                        if (!(objW instanceof k)) {
                            break;
                        }
                        throw ((k) objW).a;
                    }
                    if (atomicIntegerFieldUpdater.compareAndSet(e0Var, 0, 1)) {
                        objW = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        break;
                    }
                }
            }
        }
        if (objW == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objW;
    }
}
