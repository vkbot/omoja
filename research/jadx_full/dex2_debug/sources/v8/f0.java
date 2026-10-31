package v8;

import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class f0 extends c9.h {
    public int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f0(int i) {
        super(0L, c9.k.g);
        this.d = i;
    }

    public abstract void c(Object obj, CancellationException cancellationException);

    public abstract Continuation e();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Throwable f(Object obj) {
        k kVar = obj instanceof k ? (k) obj : null;
        if (kVar != null) {
            return kVar.a;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(Throwable th, Throwable th2) {
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
        w.a(new z("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th), e().getContext());
    }

    public abstract Object j();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:22:0x004a  */
    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        z0 z0Var;
        Object obj2;
        c9.i iVar = this.c;
        try {
            Continuation continuationE = e();
            continuationE.getClass();
            a9.h hVar = (a9.h) continuationE;
            Continuation continuation = hVar.f;
            Object obj3 = hVar.h;
            CoroutineContext context = continuation.getContext();
            Object objB = a9.b0.b(context, obj3);
            s1 s1VarB = objB != a9.b0.a ? q.b(continuation, context, objB) : null;
            try {
                CoroutineContext context2 = continuation.getContext();
                Object objJ = j();
                Throwable thF = f(objJ);
                if (thF == null) {
                    int i = this.d;
                    boolean z = true;
                    if (i != 1 && i != 2) {
                        z = false;
                    }
                    if (z) {
                        z0Var = (z0) context2.get(y0.b);
                    } else {
                        z0Var = null;
                    }
                } else {
                    z0Var = null;
                }
                if (z0Var != null && !z0Var.b()) {
                    CancellationException cancellationExceptionS = ((h1) z0Var).s();
                    c(objJ, cancellationExceptionS);
                    Result$Companion result$Companion = Result.Companion;
                    continuation.resumeWith(Result.constructor-impl(ResultKt.createFailure(cancellationExceptionS)));
                } else if (thF != null) {
                    Result$Companion result$Companion2 = Result.Companion;
                    continuation.resumeWith(Result.constructor-impl(ResultKt.createFailure(thF)));
                } else {
                    Result$Companion result$Companion3 = Result.Companion;
                    continuation.resumeWith(Result.constructor-impl(h(objJ)));
                }
                Unit unit = Unit.INSTANCE;
                if (s1VarB == null || s1VarB.M()) {
                    a9.b0.a(context, objB);
                }
                try {
                    iVar.getClass();
                    obj2 = Result.constructor-impl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result$Companion result$Companion4 = Result.Companion;
                    obj2 = Result.constructor-impl(ResultKt.createFailure(th));
                }
                i(null, Result.exceptionOrNull-impl(obj2));
            } catch (Throwable th2) {
                if (s1VarB == null || s1VarB.M()) {
                    a9.b0.a(context, objB);
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                Result$Companion result$Companion5 = Result.Companion;
                iVar.getClass();
                obj = Result.constructor-impl(Unit.INSTANCE);
            } catch (Throwable th4) {
                Result$Companion result$Companion6 = Result.Companion;
                obj = Result.constructor-impl(ResultKt.createFailure(th4));
            }
            i(th3, Result.exceptionOrNull-impl(obj));
        }
    }

    public Object h(Object obj) {
        return obj;
    }
}
