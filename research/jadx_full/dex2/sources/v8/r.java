package v8;

import kotlin.coroutines.CoroutineContext$Element;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class r extends Lambda implements Function1 {
    public static final r b = new r(1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj) {
        t tVar = (CoroutineContext$Element) obj;
        if (tVar instanceof t) {
            return tVar;
        }
        return null;
    }
}
