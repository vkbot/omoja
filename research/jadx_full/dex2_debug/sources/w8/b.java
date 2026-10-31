package w8;

import android.os.Build$VERSION;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.coroutines.AbstractCoroutineContextElement;
import v8.u;
import v8.v;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class b extends AbstractCoroutineContextElement implements v {
    private volatile Object _preHandler;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b() {
        super(u.b);
        this._preHandler = this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(Throwable th) {
        Method declaredMethod;
        int i = Build$VERSION.SDK_INT;
        if (26 > i || i >= 28) {
            return;
        }
        Object obj = this._preHandler;
        if (obj != this) {
            declaredMethod = (Method) obj;
        } else {
            try {
                declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", null);
                if (!Modifier.isPublic(declaredMethod.getModifiers()) || !Modifier.isStatic(declaredMethod.getModifiers())) {
                    declaredMethod = null;
                }
            } catch (Throwable unused) {
            }
            this._preHandler = declaredMethod;
        }
        Object objInvoke = declaredMethod != null ? declaredMethod.invoke(null, null) : null;
        Thread$UncaughtExceptionHandler thread$UncaughtExceptionHandler = objInvoke instanceof Thread$UncaughtExceptionHandler ? (Thread$UncaughtExceptionHandler) objInvoke : null;
        if (thread$UncaughtExceptionHandler != null) {
            thread$UncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
    }
}
