package v8;

import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class a extends h1 implements Continuation, x {
    public final CoroutineContext d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(CoroutineContext coroutineContext, boolean z) {
        super(z);
        z((z0) coroutineContext.get(y0.b));
        this.d = coroutineContext.plus(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.h1
    public final void E(Object obj) {
        if (!(obj instanceof k)) {
            K(obj);
            return;
        }
        k kVar = (k) obj;
        J(k.b.get(kVar) != 0, kVar.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void L(int i, a aVar, Function2 function2) {
        int iC = com.bumptech.glide.g.c(i);
        if (iC == 0) {
            b9.a.a(function2, aVar, this);
            return;
        }
        if (iC != 1) {
            if (iC == 2) {
                ContinuationKt.startCoroutine(function2, aVar, this);
                return;
            }
            if (iC != 3) {
                throw new NoWhenBranchMatchedException();
            }
            Continuation continuationProbeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(this);
            try {
                CoroutineContext coroutineContext = this.d;
                Object objB = a9.b0.b(coroutineContext, null);
                try {
                    Object objInvoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(aVar, continuationProbeCoroutineCreated);
                    a9.b0.a(coroutineContext, objB);
                    if (objInvoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        continuationProbeCoroutineCreated.resumeWith(Result.constructor-impl(objInvoke));
                    }
                } catch (Throwable th) {
                    a9.b0.a(coroutineContext, objB);
                    throw th;
                }
            } catch (Throwable th2) {
                Result$Companion result$Companion = Result.Companion;
                continuationProbeCoroutineCreated.resumeWith(Result.constructor-impl(ResultKt.createFailure(th2)));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext getContext() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.x
    public final CoroutineContext getCoroutineContext() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.h1
    public final String n() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void resumeWith(Object obj) {
        Throwable th = Result.exceptionOrNull-impl(obj);
        if (th != null) {
            obj = new k(false, th);
        }
        Object objB = B(obj);
        if (objB == a0.d) {
            return;
        }
        j(objB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.h1
    public final void y(a8.a aVar) {
        w.a(aVar, this.d);
    }

    public void K(Object obj) {
    }

    public void J(boolean z, Throwable th) {
    }
}
