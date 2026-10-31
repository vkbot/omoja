package v8;

import kotlin.ExceptionsKt;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class w {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void a(Throwable th, CoroutineContext coroutineContext) {
        try {
            v vVar = (v) coroutineContext.get(u.b);
            if (vVar != null) {
                ((w8.b) vVar).y(th);
            } else {
                a9.a.c(th, coroutineContext);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                ExceptionsKt.addSuppressed(runtimeException, th);
                th = runtimeException;
            }
            a9.a.c(th, coroutineContext);
        }
    }
}
