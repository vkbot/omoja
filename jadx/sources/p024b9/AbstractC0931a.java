package p024b9;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import p010a9.AbstractC0035a;
import p224v8.AbstractC3365a;

/* JADX INFO: renamed from: b9.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0931a {
    /* JADX INFO: renamed from: a */
    public static void m1064a(Function2 function2, AbstractC3365a abstractC3365a, AbstractC3365a abstractC3365a2) {
        try {
            Continuation continuationIntercepted = IntrinsicsKt.intercepted(IntrinsicsKt.createCoroutineUnintercepted(function2, abstractC3365a, abstractC3365a2));
            Result.Companion companion = Result.INSTANCE;
            AbstractC0035a.m99f(Result.m6088constructorimpl(Unit.INSTANCE), continuationIntercepted);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            abstractC3365a2.resumeWith(Result.m6088constructorimpl(ResultKt.createFailure(th)));
            throw th;
        }
    }
}
