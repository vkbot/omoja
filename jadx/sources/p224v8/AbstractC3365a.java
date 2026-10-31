package p224v8;

import com.bumptech.glide.AbstractC1034g;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import p009a8.C0029a;
import p010a9.AbstractC0038b0;
import p024b9.AbstractC0931a;

/* JADX INFO: renamed from: v8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3365a extends C3388h1 implements Continuation, InterfaceC3434x {

    /* JADX INFO: renamed from: d */
    public final CoroutineContext f9840d;

    public AbstractC3365a(CoroutineContext coroutineContext, boolean z9) {
        super(z9);
        m5343z((InterfaceC3439z0) coroutineContext.get(C3437y0.f9916b));
        this.f9840d = coroutineContext.plus(this);
    }

    @Override // p224v8.C3388h1
    /* JADX INFO: renamed from: E */
    public final void mo5276E(Object obj) {
        if (!(obj instanceof C3395k)) {
            mo5278K(obj);
            return;
        }
        C3395k c3395k = (C3395k) obj;
        mo5277J(C3395k.f9891b.get(c3395k) != 0, c3395k.f9892a);
    }

    /* JADX INFO: renamed from: L */
    public final void m5279L(int i10, AbstractC3365a abstractC3365a, Function2 function2) {
        int iM1296c = AbstractC1034g.m1296c(i10);
        if (iM1296c == 0) {
            AbstractC0931a.m1064a(function2, abstractC3365a, this);
            return;
        }
        if (iM1296c != 1) {
            if (iM1296c == 2) {
                ContinuationKt.startCoroutine(function2, abstractC3365a, this);
                return;
            }
            if (iM1296c != 3) {
                throw new NoWhenBranchMatchedException();
            }
            Continuation continuationProbeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(this);
            try {
                CoroutineContext coroutineContext = this.f9840d;
                Object objM107b = AbstractC0038b0.m107b(coroutineContext, null);
                try {
                    Object objInvoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(abstractC3365a, continuationProbeCoroutineCreated);
                    AbstractC0038b0.m106a(coroutineContext, objM107b);
                    if (objInvoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        continuationProbeCoroutineCreated.resumeWith(Result.m6088constructorimpl(objInvoke));
                    }
                } catch (Throwable th) {
                    AbstractC0038b0.m106a(coroutineContext, objM107b);
                    throw th;
                }
            } catch (Throwable th2) {
                Result.Companion companion = Result.INSTANCE;
                continuationProbeCoroutineCreated.resumeWith(Result.m6088constructorimpl(ResultKt.createFailure(th2)));
            }
        }
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public final CoroutineContext get$context() {
        return this.f9840d;
    }

    @Override // p224v8.InterfaceC3434x
    public final CoroutineContext getCoroutineContext() {
        return this.f9840d;
    }

    @Override // p224v8.C3388h1
    /* JADX INFO: renamed from: n */
    public final String mo5280n() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable thM6091exceptionOrNullimpl = Result.m6091exceptionOrNullimpl(obj);
        if (thM6091exceptionOrNullimpl != null) {
            obj = new C3395k(false, thM6091exceptionOrNullimpl);
        }
        Object objM5324B = m5324B(obj);
        if (objM5324B == AbstractC3366a0.f9844d) {
            return;
        }
        mo137j(objM5324B);
    }

    @Override // p224v8.C3388h1
    /* JADX INFO: renamed from: y */
    public final void mo5281y(C0029a c0029a) {
        AbstractC3431w.m5357a(c0029a, this.f9840d);
    }

    /* JADX INFO: renamed from: K */
    public void mo5278K(Object obj) {
    }

    /* JADX INFO: renamed from: J */
    public void mo5277J(boolean z9, Throwable th) {
    }
}
