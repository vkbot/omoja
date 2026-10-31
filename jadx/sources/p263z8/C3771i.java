package p263z8;

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
import p224v8.C3388h1;
import p224v8.C3437y0;
import p224v8.InterfaceC3439z0;
import p253y8.InterfaceC3670g;

/* JADX INFO: renamed from: z8.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3771i extends ContinuationImpl implements InterfaceC3670g {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3670g f11234b;

    /* JADX INFO: renamed from: c */
    public final CoroutineContext f11235c;

    /* JADX INFO: renamed from: d */
    public final int f11236d;

    /* JADX INFO: renamed from: e */
    public CoroutineContext f11237e;

    /* JADX INFO: renamed from: f */
    public Continuation f11238f;

    public C3771i(InterfaceC3670g interfaceC3670g, CoroutineContext coroutineContext) {
        super(C3769g.f11231b, EmptyCoroutineContext.INSTANCE);
        this.f11234b = interfaceC3670g;
        this.f11235c = coroutineContext;
        this.f11236d = ((Number) coroutineContext.fold(0, C3770h.f11233b)).intValue();
    }

    /* JADX INFO: renamed from: c */
    public final Object m5992c(Continuation continuation, Object obj) {
        CoroutineContext coroutineContext = continuation.get$context();
        InterfaceC3439z0 interfaceC3439z0 = (InterfaceC3439z0) coroutineContext.get(C3437y0.f9916b);
        if (interfaceC3439z0 != null && !interfaceC3439z0.mo5329b()) {
            throw ((C3388h1) interfaceC3439z0).m5339s();
        }
        CoroutineContext coroutineContext2 = this.f11237e;
        if (coroutineContext2 != coroutineContext) {
            if (coroutineContext2 instanceof C3768f) {
                throw new IllegalStateException(StringsKt.trimIndent("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((C3768f) coroutineContext2).f11229b + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
            if (((Number) coroutineContext.fold(0, new C3774l(this))).intValue() != this.f11236d) {
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.f11235c + ",\n\t\tbut emission happened in " + coroutineContext + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
            }
            this.f11237e = coroutineContext;
        }
        this.f11238f = continuation;
        Function3 function3 = AbstractC3773k.f11240a;
        InterfaceC3670g interfaceC3670g = this.f11234b;
        interfaceC3670g.getClass();
        Object objInvoke = function3.invoke(interfaceC3670g, obj, this);
        if (!Intrinsics.areEqual(objInvoke, IntrinsicsKt.getCOROUTINE_SUSPENDED())) {
            this.f11238f = null;
        }
        return objInvoke;
    }

    @Override // p253y8.InterfaceC3670g
    public final Object emit(Object obj, Continuation continuation) {
        try {
            Object objM5992c = m5992c(continuation, obj);
            if (objM5992c == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return objM5992c == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM5992c : Unit.INSTANCE;
        } catch (Throwable th) {
            this.f11237e = new C3768f(th, continuation.get$context());
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f11238f;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public final CoroutineContext get$context() {
        CoroutineContext coroutineContext = this.f11237e;
        return coroutineContext == null ? EmptyCoroutineContext.INSTANCE : coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Throwable thM6091exceptionOrNullimpl = Result.m6091exceptionOrNullimpl(obj);
        if (thM6091exceptionOrNullimpl != null) {
            this.f11237e = new C3768f(thM6091exceptionOrNullimpl, get$context());
        }
        Continuation continuation = this.f11238f;
        if (continuation != null) {
            continuation.resumeWith(obj);
        }
        return IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }
}
