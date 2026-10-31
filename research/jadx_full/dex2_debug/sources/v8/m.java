package v8;

import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.ResultKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class m {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Object a(Object obj) {
        if (!(obj instanceof k)) {
            return Result.constructor-impl(obj);
        }
        Result$Companion result$Companion = Result.Companion;
        return Result.constructor-impl(ResultKt.createFailure(((k) obj).a));
    }
}
