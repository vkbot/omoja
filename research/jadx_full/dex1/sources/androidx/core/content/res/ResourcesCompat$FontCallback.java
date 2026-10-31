package androidx.core.content.res;

import a1.a;
import a4.c;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ResourcesCompat$FontCallback {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(ResourcesCompat$FontCallback resourcesCompat$FontCallback, Typeface typeface) {
        resourcesCompat$FontCallback.lambda$callbackSuccessAsync$0(typeface);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(ResourcesCompat$FontCallback resourcesCompat$FontCallback, int i9) {
        resourcesCompat$FontCallback.lambda$callbackFailAsync$1(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static Handler getHandler(@Nullable Handler handler) {
        return handler == null ? new Handler(Looper.getMainLooper()) : handler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$callbackFailAsync$1(int i9) {
        onFontRetrievalFailed(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$callbackSuccessAsync$0(Typeface typeface) {
        onFontRetrieved(typeface);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public final void callbackFailAsync(int i9, @Nullable Handler handler) {
        getHandler(handler).post(new c(this, i9, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public final void callbackSuccessAsync(@NonNull Typeface typeface, @Nullable Handler handler) {
        getHandler(handler).post(new a(2, this, typeface));
    }

    public abstract void onFontRetrievalFailed(int i9);

    public abstract void onFontRetrieved(@NonNull Typeface typeface);
}
