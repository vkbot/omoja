package p224v8;

import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import p010a9.AbstractC0038b0;
import p010a9.C0046h;
import p034c9.AbstractC1025k;
import p034c9.AbstractRunnableC1022h;
import p034c9.C1023i;

/* JADX INFO: renamed from: v8.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3381f0 extends AbstractRunnableC1022h {

    /* JADX INFO: renamed from: d */
    public int f9869d;

    public AbstractC3381f0(int i10) {
        super(0L, AbstractC1025k.f1056g);
        this.f9869d = i10;
    }

    /* JADX INFO: renamed from: c */
    public abstract void mo113c(Object obj, CancellationException cancellationException);

    /* JADX INFO: renamed from: e */
    public abstract Continuation mo114e();

    /* JADX INFO: renamed from: f */
    public Throwable mo5298f(Object obj) {
        C3395k c3395k = obj instanceof C3395k ? (C3395k) obj : null;
        if (c3395k != null) {
            return c3395k.f9892a;
        }
        return null;
    }

    /* JADX INFO: renamed from: i */
    public final void m5314i(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            ExceptionsKt.addSuppressed(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        th.getClass();
        AbstractC3431w.m5357a(new C3438z("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th), mo114e().get$context());
    }

    /* JADX INFO: renamed from: j */
    public abstract Object mo115j();

    /* JADX WARN: Code duplicated, block: B:22:0x004a  */
    @Override // java.lang.Runnable
    public final void run() {
        Object objM6088constructorimpl;
        InterfaceC3439z0 interfaceC3439z0;
        Object objM6088constructorimpl2;
        C1023i c1023i = this.f1047c;
        try {
            Continuation continuationMo114e = mo114e();
            continuationMo114e.getClass();
            C0046h c0046h = (C0046h) continuationMo114e;
            Continuation continuation = c0046h.f122f;
            Object obj = c0046h.f124h;
            CoroutineContext context = continuation.get$context();
            Object objM107b = AbstractC0038b0.m107b(context, obj);
            C3421s1 c3421s1M5353b = objM107b != AbstractC0038b0.f106a ? AbstractC3413q.m5353b(continuation, context, objM107b) : null;
            try {
                CoroutineContext context2 = continuation.get$context();
                Object objMo115j = mo115j();
                Throwable thMo5298f = mo5298f(objMo115j);
                if (thMo5298f == null) {
                    int i10 = this.f9869d;
                    boolean z9 = true;
                    if (i10 != 1 && i10 != 2) {
                        z9 = false;
                    }
                    if (z9) {
                        interfaceC3439z0 = (InterfaceC3439z0) context2.get(C3437y0.f9916b);
                    } else {
                        interfaceC3439z0 = null;
                    }
                } else {
                    interfaceC3439z0 = null;
                }
                if (interfaceC3439z0 != null && !interfaceC3439z0.mo5329b()) {
                    CancellationException cancellationExceptionM5339s = ((C3388h1) interfaceC3439z0).m5339s();
                    mo113c(objMo115j, cancellationExceptionM5339s);
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m6088constructorimpl(ResultKt.createFailure(cancellationExceptionM5339s)));
                } else if (thMo5298f != null) {
                    Result.Companion companion2 = Result.INSTANCE;
                    continuation.resumeWith(Result.m6088constructorimpl(ResultKt.createFailure(thMo5298f)));
                } else {
                    Result.Companion companion3 = Result.INSTANCE;
                    continuation.resumeWith(Result.m6088constructorimpl(mo5299h(objMo115j)));
                }
                Unit unit = Unit.INSTANCE;
                if (c3421s1M5353b == null || c3421s1M5353b.m5355M()) {
                    AbstractC0038b0.m106a(context, objM107b);
                }
                try {
                    c1023i.getClass();
                    objM6088constructorimpl2 = Result.m6088constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM6088constructorimpl2 = Result.m6088constructorimpl(ResultKt.createFailure(th));
                }
                m5314i(null, Result.m6091exceptionOrNullimpl(objM6088constructorimpl2));
            } catch (Throwable th2) {
                if (c3421s1M5353b == null || c3421s1M5353b.m5355M()) {
                    AbstractC0038b0.m106a(context, objM107b);
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                Result.Companion companion5 = Result.INSTANCE;
                c1023i.getClass();
                objM6088constructorimpl = Result.m6088constructorimpl(Unit.INSTANCE);
            } catch (Throwable th4) {
                Result.Companion companion6 = Result.INSTANCE;
                objM6088constructorimpl = Result.m6088constructorimpl(ResultKt.createFailure(th4));
            }
            m5314i(th3, Result.m6091exceptionOrNullimpl(objM6088constructorimpl));
        }
    }

    /* JADX INFO: renamed from: h */
    public Object mo5299h(Object obj) {
        return obj;
    }
}
