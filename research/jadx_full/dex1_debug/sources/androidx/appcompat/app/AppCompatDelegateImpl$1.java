package androidx.appcompat.app;

import android.content.res.Resources$NotFoundException;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$1 implements Thread$UncaughtExceptionHandler {
    final /* synthetic */ Thread$UncaughtExceptionHandler val$defHandler;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public AppCompatDelegateImpl$1(Thread$UncaughtExceptionHandler thread$UncaughtExceptionHandler) {
        this.val$defHandler = thread$UncaughtExceptionHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean shouldWrapException(Throwable th) {
        String message;
        return (th instanceof Resources$NotFoundException) && (message = th.getMessage()) != null && (message.contains("drawable") || message.contains("Drawable"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread$UncaughtExceptionHandler
    public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
        if (!shouldWrapException(th)) {
            this.val$defHandler.uncaughtException(thread, th);
            return;
        }
        Resources$NotFoundException resources$NotFoundException = new Resources$NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
        resources$NotFoundException.initCause(th.getCause());
        resources$NotFoundException.setStackTrace(th.getStackTrace());
        this.val$defHandler.uncaughtException(thread, resources$NotFoundException);
    }
}
