package p010a9;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import p000a.AbstractC0000a;

/* JADX INFO: renamed from: a9.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0060v {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int f150a = 0;

    static {
        Object objM6088constructorimpl;
        Object objM6088constructorimpl2;
        Exception exc = new Exception();
        String simpleName = AbstractC0000a.class.getSimpleName();
        StackTraceElement stackTraceElement = exc.getStackTrace()[0];
        new StackTraceElement("_COROUTINE.".concat(simpleName), "_", stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
        try {
            Result.Companion companion = Result.INSTANCE;
            objM6088constructorimpl = Result.m6088constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM6088constructorimpl = Result.m6088constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m6091exceptionOrNullimpl(objM6088constructorimpl) != null) {
            objM6088constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        try {
            objM6088constructorimpl2 = Result.m6088constructorimpl(AbstractC0060v.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM6088constructorimpl2 = Result.m6088constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m6091exceptionOrNullimpl(objM6088constructorimpl2) != null) {
            objM6088constructorimpl2 = "a9.v";
        }
    }
}
