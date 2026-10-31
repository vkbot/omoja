package v8;

import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class g0 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void a(e eVar, Continuation continuation, boolean z) {
        Object objH;
        Object obj = e.h.get(eVar);
        Throwable thF = eVar.f(obj);
        if (thF != null) {
            Result$Companion result$Companion = Result.Companion;
            objH = ResultKt.createFailure(thF);
        } else {
            Result$Companion result$Companion2 = Result.Companion;
            objH = eVar.h(obj);
        }
        Object obj2 = Result.constructor-impl(objH);
        if (!z) {
            continuation.resumeWith(obj2);
            return;
        }
        continuation.getClass();
        a9.h hVar = (a9.h) continuation;
        Continuation continuation2 = hVar.f;
        Object obj3 = hVar.h;
        CoroutineContext context = continuation2.getContext();
        Object objB = a9.b0.b(context, obj3);
        s1 s1VarB = objB != a9.b0.a ? q.b(continuation2, context, objB) : null;
        try {
            continuation2.resumeWith(obj2);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (s1VarB == null || s1VarB.M()) {
                a9.b0.a(context, objB);
            }
        }
    }
}
