package z8;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import v8.h1;
import v8.y0;
import v8.z0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class i extends ContinuationImpl implements y8.g {
    public final y8.g b;
    public final CoroutineContext c;
    public final int d;
    public CoroutineContext e;
    public Continuation f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(y8.g gVar, CoroutineContext coroutineContext) {
        super(g.b, EmptyCoroutineContext.INSTANCE);
        this.b = gVar;
        this.c = coroutineContext;
        this.d = ((Number) coroutineContext.fold(0, h.b)).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object c(Continuation continuation, Object obj) {
        CoroutineContext context = continuation.getContext();
        z0 z0Var = (z0) context.get(y0.b);
        if (z0Var != null && !z0Var.b()) {
            throw ((h1) z0Var).s();
        }
        CoroutineContext coroutineContext = this.e;
        if (coroutineContext != context) {
            if (coroutineContext instanceof f) {
                throw new IllegalStateException(StringsKt.trimIndent("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((f) coroutineContext).b + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
            if (((Number) context.fold(0, new l(this))).intValue() != this.d) {
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.c + ",\n\t\tbut emission happened in " + context + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
            }
            this.e = context;
        }
        this.f = continuation;
        Function3 function3 = k.a;
        y8.g gVar = this.b;
        gVar.getClass();
        Object objInvoke = function3.invoke(gVar, obj, this);
        if (!Intrinsics.areEqual(objInvoke, IntrinsicsKt.getCOROUTINE_SUSPENDED())) {
            this.f = null;
        }
        return objInvoke;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y8.g
    public final Object emit(Object obj, Continuation continuation) {
        try {
            Object objC = c(continuation, obj);
            if (objC == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return objC == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objC : Unit.INSTANCE;
        } catch (Throwable th) {
            this.e = new f(th, continuation.getContext());
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineStackFrame getCallerFrame() {
        CoroutineStackFrame coroutineStackFrame = this.f;
        if (coroutineStackFrame instanceof CoroutineStackFrame) {
            return coroutineStackFrame;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext getContext() {
        CoroutineContext coroutineContext = this.e;
        return coroutineContext == null ? EmptyCoroutineContext.INSTANCE : coroutineContext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invokeSuspend(Object obj) {
        Throwable th = Result.exceptionOrNull-impl(obj);
        if (th != null) {
            this.e = new f(th, getContext());
        }
        Continuation continuation = this.f;
        if (continuation != null) {
            continuation.resumeWith(obj);
        }
        return IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }
}
