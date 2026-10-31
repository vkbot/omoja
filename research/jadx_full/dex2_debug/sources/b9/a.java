package b9;

import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class a {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(Function2 function2, v8.a aVar, v8.a aVar2) {
        try {
            Continuation continuationIntercepted = IntrinsicsKt.intercepted(IntrinsicsKt.createCoroutineUnintercepted(function2, aVar, aVar2));
            Result$Companion result$Companion = Result.Companion;
            a9.a.f(Result.constructor-impl(Unit.INSTANCE), continuationIntercepted);
        } catch (Throwable th) {
            Result$Companion result$Companion2 = Result.Companion;
            aVar2.resumeWith(Result.constructor-impl(ResultKt.createFailure(th)));
            throw th;
        }
    }
}
