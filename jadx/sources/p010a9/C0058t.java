package p010a9;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import p224v8.AbstractC3365a;
import p224v8.AbstractC3401m;

/* JADX INFO: renamed from: a9.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C0058t extends AbstractC3365a implements CoroutineStackFrame {

    /* JADX INFO: renamed from: e */
    public final Continuation f147e;

    public C0058t(Continuation continuation, CoroutineContext coroutineContext) {
        super(coroutineContext, true);
        this.f147e = continuation;
    }

    @Override // p224v8.C3388h1
    /* JADX INFO: renamed from: A */
    public final boolean mo135A() {
        return true;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f147e;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // p224v8.C3388h1
    /* JADX INFO: renamed from: i */
    public void mo136i(Object obj) {
        AbstractC0035a.m99f(AbstractC3401m.m5349a(obj), IntrinsicsKt.intercepted(this.f147e));
    }

    @Override // p224v8.C3388h1
    /* JADX INFO: renamed from: j */
    public void mo137j(Object obj) {
        this.f147e.resumeWith(AbstractC3401m.m5349a(obj));
    }
}
