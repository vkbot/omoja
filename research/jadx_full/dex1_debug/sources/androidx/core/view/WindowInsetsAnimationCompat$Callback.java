package androidx.core.view;

import android.view.WindowInsets;
import androidx.annotation.NonNull;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class WindowInsetsAnimationCompat$Callback {
    public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
    public static final int DISPATCH_MODE_STOP = 0;
    WindowInsets mDispachedInsets;
    private final int mDispatchMode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsAnimationCompat$Callback(int i9) {
        this.mDispatchMode = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getDispatchMode() {
        return this.mDispatchMode;
    }

    @NonNull
    public abstract WindowInsetsCompat onProgress(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list);

    public void onEnd(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
    }

    public void onPrepare(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
    }

    @NonNull
    public WindowInsetsAnimationCompat$BoundsCompat onStart(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat, @NonNull WindowInsetsAnimationCompat$BoundsCompat windowInsetsAnimationCompat$BoundsCompat) {
        return windowInsetsAnimationCompat$BoundsCompat;
    }
}
