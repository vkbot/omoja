package p224v8;

import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: renamed from: v8.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3401m {
    /* JADX INFO: renamed from: a */
    public static final Object m5349a(Object obj) {
        if (!(obj instanceof C3395k)) {
            return Result.m6088constructorimpl(obj);
        }
        Result.Companion companion = Result.INSTANCE;
        return Result.m6088constructorimpl(ResultKt.createFailure(((C3395k) obj).f9892a));
    }
}
