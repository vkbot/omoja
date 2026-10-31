package i9;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class v0 {
    public volatile SoftReference a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized Object a(Function0 function0) {
        Object obj = this.a.get();
        if (obj != null) {
            return obj;
        }
        Object objInvoke = function0.invoke();
        this.a = new SoftReference(objInvoke);
        return objInvoke;
    }
}
