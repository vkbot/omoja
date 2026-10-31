package z8;

import a9.t;
import kotlin.coroutines.CoroutineContext$Element;
import kotlin.coroutines.CoroutineContext$Key;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import v8.h1;
import v8.y0;
import v8.z0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class l extends Lambda implements Function2 {
    public final /* synthetic */ i b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(i iVar) {
        super(2);
        this.b = iVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj, Object obj2) {
        int iIntValue = ((Number) obj).intValue();
        CoroutineContext$Element coroutineContext$Element = (CoroutineContext$Element) obj2;
        CoroutineContext$Key key = coroutineContext$Element.getKey();
        CoroutineContext$Element coroutineContext$Element2 = this.b.c.get(key);
        if (key != y0.b) {
            return Integer.valueOf(coroutineContext$Element != coroutineContext$Element2 ? Integer.MIN_VALUE : iIntValue + 1);
        }
        z0 z0Var = (z0) coroutineContext$Element2;
        z0 parent = (z0) coroutineContext$Element;
        while (true) {
            if (parent != null) {
                if (parent == z0Var || !(parent instanceof t)) {
                    break;
                }
                v8.h hVar = (v8.h) h1.c.get((h1) parent);
                parent = hVar != null ? hVar.getParent() : null;
            } else {
                parent = null;
                break;
            }
        }
        if (parent == z0Var) {
            if (z0Var != null) {
                iIntValue++;
            }
            return Integer.valueOf(iIntValue);
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + parent + ", expected child of " + z0Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
    }
}
