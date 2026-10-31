package androidx.core.view;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.GestureDetector$OnDoubleTapListener;
import android.view.GestureDetector$OnGestureListener;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public final class GestureDetectorCompat {
    private final GestureDetector mDetector;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GestureDetectorCompat(@NonNull Context context, @NonNull GestureDetector$OnGestureListener gestureDetector$OnGestureListener, @Nullable Handler handler) {
        this.mDetector = new GestureDetector(context, gestureDetector$OnGestureListener, handler);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isLongpressEnabled() {
        return this.mDetector.isLongpressEnabled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return this.mDetector.onTouchEvent(motionEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIsLongpressEnabled(boolean z8) {
        this.mDetector.setIsLongpressEnabled(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnDoubleTapListener(@Nullable GestureDetector$OnDoubleTapListener gestureDetector$OnDoubleTapListener) {
        this.mDetector.setOnDoubleTapListener(gestureDetector$OnDoubleTapListener);
    }

    public GestureDetectorCompat(@NonNull Context context, @NonNull GestureDetector$OnGestureListener gestureDetector$OnGestureListener) {
        this(context, gestureDetector$OnGestureListener, null);
    }
}
