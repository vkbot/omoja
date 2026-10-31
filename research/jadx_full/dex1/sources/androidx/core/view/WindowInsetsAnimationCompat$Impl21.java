package androidx.core.view;

import android.view.View;
import android.view.View$OnApplyWindowInsetsListener;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.R$id;
import androidx.core.graphics.Insets;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class WindowInsetsAnimationCompat$Impl21 extends WindowInsetsAnimationCompat$Impl {
    private static final Interpolator SHOW_IME_INTERPOLATOR = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);
    private static final Interpolator HIDE_IME_INTERPOLATOR = new FastOutLinearInInterpolator();
    private static final Interpolator DEFAULT_INSET_INTERPOLATOR = new DecelerateInterpolator();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsAnimationCompat$Impl21(int i9, @Nullable Interpolator interpolator, long j9) {
        super(i9, interpolator, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int buildAnimationMask(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat windowInsetsCompat2) {
        int i9 = 0;
        for (int i10 = 1; i10 <= 256; i10 <<= 1) {
            if (!windowInsetsCompat.getInsets(i10).equals(windowInsetsCompat2.getInsets(i10))) {
                i9 |= i10;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static WindowInsetsAnimationCompat$BoundsCompat computeAnimationBounds(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat windowInsetsCompat2, int i9) {
        Insets insets = windowInsetsCompat.getInsets(i9);
        Insets insets2 = windowInsetsCompat2.getInsets(i9);
        return new WindowInsetsAnimationCompat$BoundsCompat(Insets.of(Math.min(insets.left, insets2.left), Math.min(insets.top, insets2.top), Math.min(insets.right, insets2.right), Math.min(insets.bottom, insets2.bottom)), Insets.of(Math.max(insets.left, insets2.left), Math.max(insets.top, insets2.top), Math.max(insets.right, insets2.right), Math.max(insets.bottom, insets2.bottom)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Interpolator createInsetInterpolator(int i9, WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2) {
        if ((i9 & 8) != 0) {
            return windowInsetsCompat.getInsets(WindowInsetsCompat$Type.ime()).bottom > windowInsetsCompat2.getInsets(WindowInsetsCompat$Type.ime()).bottom ? SHOW_IME_INTERPOLATOR : HIDE_IME_INTERPOLATOR;
        }
        return DEFAULT_INSET_INTERPOLATOR;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private static View$OnApplyWindowInsetsListener createProxyListener(@NonNull View view, @NonNull WindowInsetsAnimationCompat$Callback windowInsetsAnimationCompat$Callback) {
        return new WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener(view, windowInsetsAnimationCompat$Callback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void dispatchOnEnd(@NonNull View view, @NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        WindowInsetsAnimationCompat$Callback callback = getCallback(view);
        if (callback != null) {
            callback.onEnd(windowInsetsAnimationCompat);
            if (callback.getDispatchMode() == 0) {
                return;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i9 = 0; i9 < viewGroup.getChildCount(); i9++) {
                dispatchOnEnd(viewGroup.getChildAt(i9), windowInsetsAnimationCompat);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void dispatchOnPrepare(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsets windowInsets, boolean z8) {
        WindowInsetsAnimationCompat$Callback callback = getCallback(view);
        if (callback != null) {
            callback.mDispachedInsets = windowInsets;
            if (!z8) {
                callback.onPrepare(windowInsetsAnimationCompat);
                z8 = callback.getDispatchMode() == 0;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i9 = 0; i9 < viewGroup.getChildCount(); i9++) {
                dispatchOnPrepare(viewGroup.getChildAt(i9), windowInsetsAnimationCompat, windowInsets, z8);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void dispatchOnProgress(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list) {
        WindowInsetsAnimationCompat$Callback callback = getCallback(view);
        if (callback != null) {
            windowInsetsCompat = callback.onProgress(windowInsetsCompat, list);
            if (callback.getDispatchMode() == 0) {
                return;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i9 = 0; i9 < viewGroup.getChildCount(); i9++) {
                dispatchOnProgress(viewGroup.getChildAt(i9), windowInsetsCompat, list);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void dispatchOnStart(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat$BoundsCompat windowInsetsAnimationCompat$BoundsCompat) {
        WindowInsetsAnimationCompat$Callback callback = getCallback(view);
        if (callback != null) {
            callback.onStart(windowInsetsAnimationCompat, windowInsetsAnimationCompat$BoundsCompat);
            if (callback.getDispatchMode() == 0) {
                return;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i9 = 0; i9 < viewGroup.getChildCount(); i9++) {
                dispatchOnStart(viewGroup.getChildAt(i9), windowInsetsAnimationCompat, windowInsetsAnimationCompat$BoundsCompat);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static WindowInsets forwardToViewIfNeeded(@NonNull View view, @NonNull WindowInsets windowInsets) {
        return view.getTag(R$id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static WindowInsetsAnimationCompat$Callback getCallback(View view) {
        Object tag = view.getTag(R$id.tag_window_insets_animation_callback);
        if (tag instanceof WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener) {
            return ((WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener) tag).mCallback;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static WindowInsetsCompat interpolateInsets(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, float f8, int i9) {
        WindowInsetsCompat$Builder windowInsetsCompat$Builder = new WindowInsetsCompat$Builder(windowInsetsCompat);
        for (int i10 = 1; i10 <= 256; i10 <<= 1) {
            if ((i9 & i10) == 0) {
                windowInsetsCompat$Builder.setInsets(i10, windowInsetsCompat.getInsets(i10));
            } else {
                Insets insets = windowInsetsCompat.getInsets(i10);
                Insets insets2 = windowInsetsCompat2.getInsets(i10);
                float f9 = 1.0f - f8;
                windowInsetsCompat$Builder.setInsets(i10, WindowInsetsCompat.insetInsets(insets, (int) (((double) ((insets.left - insets2.left) * f9)) + 0.5d), (int) (((double) ((insets.top - insets2.top) * f9)) + 0.5d), (int) (((double) ((insets.right - insets2.right) * f9)) + 0.5d), (int) (((double) ((insets.bottom - insets2.bottom) * f9)) + 0.5d)));
            }
        }
        return windowInsetsCompat$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCallback(@NonNull View view, @Nullable WindowInsetsAnimationCompat$Callback windowInsetsAnimationCompat$Callback) {
        Object tag = view.getTag(R$id.tag_on_apply_window_listener);
        if (windowInsetsAnimationCompat$Callback == null) {
            view.setTag(R$id.tag_window_insets_animation_callback, null);
            if (tag == null) {
                view.setOnApplyWindowInsetsListener(null);
                return;
            }
            return;
        }
        View$OnApplyWindowInsetsListener view$OnApplyWindowInsetsListenerCreateProxyListener = createProxyListener(view, windowInsetsAnimationCompat$Callback);
        view.setTag(R$id.tag_window_insets_animation_callback, view$OnApplyWindowInsetsListenerCreateProxyListener);
        if (tag == null) {
            view.setOnApplyWindowInsetsListener(view$OnApplyWindowInsetsListenerCreateProxyListener);
        }
    }
}
