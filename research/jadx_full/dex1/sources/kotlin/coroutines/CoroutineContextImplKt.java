package kotlin.coroutines;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0018\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0007¨\u0006\b"}, d2 = {"getPolymorphicElement", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Element;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusPolymorphicKey", "Lkotlin/coroutines/CoroutineContext;", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class CoroutineContextImplKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: kotlin.coroutines.CoroutineContext$Element */
    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    public static final <E extends CoroutineContext$Element> E getPolymorphicElement(CoroutineContext$Element coroutineContext$Element, CoroutineContext$Key<E> coroutineContext$Key) {
        E e;
        coroutineContext$Element.getClass();
        coroutineContext$Key.getClass();
        if (!(coroutineContext$Key instanceof AbstractCoroutineContextKey)) {
            if (coroutineContext$Element.getKey() == coroutineContext$Key) {
                return coroutineContext$Element;
            }
            return null;
        }
        AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) coroutineContext$Key;
        if (!abstractCoroutineContextKey.isSubKey$kotlin_stdlib(coroutineContext$Element.getKey()) || (e = (E) abstractCoroutineContextKey.tryCast$kotlin_stdlib(coroutineContext$Element)) == null) {
            return null;
        }
        return e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    public static final CoroutineContext minusPolymorphicKey(CoroutineContext$Element coroutineContext$Element, CoroutineContext$Key<?> coroutineContext$Key) {
        coroutineContext$Element.getClass();
        coroutineContext$Key.getClass();
        if (!(coroutineContext$Key instanceof AbstractCoroutineContextKey)) {
            return coroutineContext$Element.getKey() == coroutineContext$Key ? EmptyCoroutineContext.INSTANCE : coroutineContext$Element;
        }
        AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) coroutineContext$Key;
        return (!abstractCoroutineContextKey.isSubKey$kotlin_stdlib(coroutineContext$Element.getKey()) || abstractCoroutineContextKey.tryCast$kotlin_stdlib(coroutineContext$Element) == null) ? coroutineContext$Element : EmptyCoroutineContext.INSTANCE;
    }
}
