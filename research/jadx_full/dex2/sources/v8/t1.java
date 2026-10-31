package v8;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext$Element;
import kotlin.coroutines.CoroutineContext$Element$DefaultImpls;
import kotlin.coroutines.CoroutineContext$Key;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class t1 implements CoroutineContext$Element, CoroutineContext$Key {
    public static final t1 b = new t1();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext$Element$DefaultImpls.fold(this, obj, function2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext$Element get(CoroutineContext$Key coroutineContext$Key) {
        return CoroutineContext$Element$DefaultImpls.get(this, coroutineContext$Key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext minusKey(CoroutineContext$Key coroutineContext$Key) {
        return CoroutineContext$Element$DefaultImpls.minusKey(this, coroutineContext$Key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext$Element$DefaultImpls.plus(this, coroutineContext);
    }

    public final CoroutineContext$Key getKey() {
        return this;
    }
}
