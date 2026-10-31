package kotlin.coroutines;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class CoroutineContext$Element$DefaultImpls {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <R> R fold(CoroutineContext$Element coroutineContext$Element, R r, Function2<? super R, ? super CoroutineContext$Element, ? extends R> function2) {
        function2.getClass();
        return function2.invoke(r, coroutineContext$Element);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: kotlin.coroutines.CoroutineContext$Element */
    /* JADX WARN: Multi-variable type inference failed */
    public static <E extends CoroutineContext$Element> E get(CoroutineContext$Element coroutineContext$Element, CoroutineContext$Key<E> coroutineContext$Key) {
        coroutineContext$Key.getClass();
        if (Intrinsics.areEqual(coroutineContext$Element.getKey(), coroutineContext$Key)) {
            return coroutineContext$Element;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CoroutineContext minusKey(CoroutineContext$Element coroutineContext$Element, CoroutineContext$Key<?> coroutineContext$Key) {
        coroutineContext$Key.getClass();
        return Intrinsics.areEqual(coroutineContext$Element.getKey(), coroutineContext$Key) ? EmptyCoroutineContext.INSTANCE : coroutineContext$Element;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CoroutineContext plus(CoroutineContext$Element coroutineContext$Element, CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        return CoroutineContext$DefaultImpls.plus(coroutineContext$Element, coroutineContext);
    }
}
