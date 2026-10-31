package kotlin.coroutines;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class CoroutineContext$DefaultImpls {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CoroutineContext a(CoroutineContext coroutineContext, CoroutineContext$Element coroutineContext$Element) {
        return plus$lambda$0(coroutineContext, coroutineContext$Element);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CoroutineContext plus(CoroutineContext coroutineContext, CoroutineContext coroutineContext2) {
        coroutineContext2.getClass();
        return coroutineContext2 == EmptyCoroutineContext.INSTANCE ? coroutineContext : (CoroutineContext) coroutineContext2.fold(coroutineContext, new b(1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static CoroutineContext plus$lambda$0(CoroutineContext coroutineContext, CoroutineContext$Element coroutineContext$Element) {
        coroutineContext.getClass();
        coroutineContext$Element.getClass();
        CoroutineContext coroutineContextMinusKey = coroutineContext.minusKey(coroutineContext$Element.getKey());
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        if (coroutineContextMinusKey == emptyCoroutineContext) {
            return coroutineContext$Element;
        }
        ContinuationInterceptor$Key continuationInterceptor$Key = ContinuationInterceptor.Key;
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContextMinusKey.get(continuationInterceptor$Key);
        if (continuationInterceptor == null) {
            return new CombinedContext(coroutineContextMinusKey, coroutineContext$Element);
        }
        CoroutineContext coroutineContextMinusKey2 = coroutineContextMinusKey.minusKey(continuationInterceptor$Key);
        return coroutineContextMinusKey2 == emptyCoroutineContext ? new CombinedContext(coroutineContext$Element, continuationInterceptor) : new CombinedContext(new CombinedContext(coroutineContextMinusKey2, coroutineContext$Element), continuationInterceptor);
    }
}
