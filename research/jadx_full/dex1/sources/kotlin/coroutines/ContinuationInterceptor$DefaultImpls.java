package kotlin.coroutines;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ContinuationInterceptor$DefaultImpls {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <R> R fold(ContinuationInterceptor continuationInterceptor, R r, Function2<? super R, ? super CoroutineContext$Element, ? extends R> function2) {
        function2.getClass();
        return (R) CoroutineContext$Element$DefaultImpls.fold(continuationInterceptor, r, function2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <E extends CoroutineContext$Element> E get(ContinuationInterceptor continuationInterceptor, CoroutineContext$Key<E> coroutineContext$Key) {
        E e;
        coroutineContext$Key.getClass();
        if (!(coroutineContext$Key instanceof AbstractCoroutineContextKey)) {
            if (ContinuationInterceptor.Key != coroutineContext$Key) {
                return null;
            }
            continuationInterceptor.getClass();
            return continuationInterceptor;
        }
        AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) coroutineContext$Key;
        if (!abstractCoroutineContextKey.isSubKey$kotlin_stdlib(continuationInterceptor.getKey()) || (e = (E) abstractCoroutineContextKey.tryCast$kotlin_stdlib(continuationInterceptor)) == null) {
            return null;
        }
        return e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CoroutineContext minusKey(ContinuationInterceptor continuationInterceptor, CoroutineContext$Key<?> coroutineContext$Key) {
        coroutineContext$Key.getClass();
        if (!(coroutineContext$Key instanceof AbstractCoroutineContextKey)) {
            return ContinuationInterceptor.Key == coroutineContext$Key ? EmptyCoroutineContext.INSTANCE : continuationInterceptor;
        }
        AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) coroutineContext$Key;
        return (!abstractCoroutineContextKey.isSubKey$kotlin_stdlib(continuationInterceptor.getKey()) || abstractCoroutineContextKey.tryCast$kotlin_stdlib(continuationInterceptor) == null) ? continuationInterceptor : EmptyCoroutineContext.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CoroutineContext plus(ContinuationInterceptor continuationInterceptor, CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        return CoroutineContext$Element$DefaultImpls.plus(continuationInterceptor, coroutineContext);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void releaseInterceptedContinuation(ContinuationInterceptor continuationInterceptor, Continuation<?> continuation) {
        continuation.getClass();
    }
}
