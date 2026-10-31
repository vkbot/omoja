package androidx.core.os;

import android.os.Handler;
import android.os.Handler$Callback;
import android.os.Looper;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public class HandlerCompat$Api28Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private HandlerCompat$Api28Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Handler createAsync(Looper looper) {
        return Handler.createAsync(looper);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean postDelayed(Handler handler, Runnable runnable, Object obj, long j9) {
        return handler.postDelayed(runnable, obj, j9);
    }

    public static Handler createAsync(Looper looper, Handler$Callback handler$Callback) {
        return Handler.createAsync(looper, handler$Callback);
    }
}
