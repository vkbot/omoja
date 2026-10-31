package androidx.appcompat.graphics.drawable;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$Callback;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DrawableContainerCompat$BlockInvalidateCallback implements Drawable$Callback {
    private Drawable$Callback mCallback;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j9) {
        Drawable$Callback drawable$Callback = this.mCallback;
        if (drawable$Callback != null) {
            drawable$Callback.scheduleDrawable(drawable, runnable, j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable$Callback drawable$Callback = this.mCallback;
        if (drawable$Callback != null) {
            drawable$Callback.unscheduleDrawable(drawable, runnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Drawable$Callback unwrap() {
        Drawable$Callback drawable$Callback = this.mCallback;
        this.mCallback = null;
        return drawable$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DrawableContainerCompat$BlockInvalidateCallback wrap(Drawable$Callback drawable$Callback) {
        this.mCallback = drawable$Callback;
        return this;
    }

    @Override // android.graphics.drawable.Drawable$Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
    }
}
