package z8;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext$Element;
import kotlin.coroutines.CoroutineContext$Key;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class f implements CoroutineContext {
    public final Throwable b;
    public final /* synthetic */ CoroutineContext c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(Throwable th, CoroutineContext coroutineContext) {
        this.b = th;
        this.c = coroutineContext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object fold(Object obj, Function2 function2) {
        return this.c.fold(obj, function2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext$Element get(CoroutineContext$Key coroutineContext$Key) {
        return this.c.get(coroutineContext$Key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext minusKey(CoroutineContext$Key coroutineContext$Key) {
        return this.c.minusKey(coroutineContext$Key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return this.c.plus(coroutineContext);
    }
}
