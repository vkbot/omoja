package p224v8;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import p010a9.AbstractC0038b0;
import p010a9.C0046h;

/* JADX INFO: renamed from: v8.g0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3384g0 {
    /* JADX INFO: renamed from: a */
    public static final void m5320a(C3377e c3377e, Continuation continuation, boolean z9) {
        Object objMo5299h;
        Object obj = C3377e.f9859h.get(c3377e);
        Throwable thMo5298f = c3377e.mo5298f(obj);
        if (thMo5298f != null) {
            Result.Companion companion = Result.INSTANCE;
            objMo5299h = ResultKt.createFailure(thMo5298f);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            objMo5299h = c3377e.mo5299h(obj);
        }
        Object objM6088constructorimpl = Result.m6088constructorimpl(objMo5299h);
        if (!z9) {
            continuation.resumeWith(objM6088constructorimpl);
            return;
        }
        continuation.getClass();
        C0046h c0046h = (C0046h) continuation;
        Continuation continuation2 = c0046h.f122f;
        Object obj2 = c0046h.f124h;
        CoroutineContext coroutineContext = continuation2.get$context();
        Object objM107b = AbstractC0038b0.m107b(coroutineContext, obj2);
        C3421s1 c3421s1M5353b = objM107b != AbstractC0038b0.f106a ? AbstractC3413q.m5353b(continuation2, coroutineContext, objM107b) : null;
        try {
            continuation2.resumeWith(objM6088constructorimpl);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (c3421s1M5353b == null || c3421s1M5353b.m5355M()) {
                AbstractC0038b0.m106a(coroutineContext, objM107b);
            }
        }
    }
}
