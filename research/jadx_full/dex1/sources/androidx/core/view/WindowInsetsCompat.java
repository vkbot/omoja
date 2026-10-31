package androidx.core.view;

import android.graphics.Rect;
import android.os.Build$VERSION;
import android.view.View;
import android.view.WindowInsets;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.Insets;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WindowInsetsCompat {

    @NonNull
    public static final WindowInsetsCompat CONSUMED;
    private static final String TAG = "WindowInsetsCompat";
    private final WindowInsetsCompat$Impl mImpl;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        if (Build$VERSION.SDK_INT >= 30) {
            CONSUMED = WindowInsetsCompat$Impl30.CONSUMED;
        } else {
            CONSUMED = WindowInsetsCompat$Impl.CONSUMED;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat(@Nullable WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat == null) {
            this.mImpl = new WindowInsetsCompat$Impl(this);
            return;
        }
        WindowInsetsCompat$Impl windowInsetsCompat$Impl = windowInsetsCompat.mImpl;
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 30 && (windowInsetsCompat$Impl instanceof WindowInsetsCompat$Impl30)) {
            this.mImpl = new WindowInsetsCompat$Impl30(this, (WindowInsetsCompat$Impl30) windowInsetsCompat$Impl);
        } else if (i9 >= 29 && (windowInsetsCompat$Impl instanceof WindowInsetsCompat$Impl29)) {
            this.mImpl = new WindowInsetsCompat$Impl29(this, (WindowInsetsCompat$Impl29) windowInsetsCompat$Impl);
        } else if (i9 >= 28 && (windowInsetsCompat$Impl instanceof WindowInsetsCompat$Impl28)) {
            this.mImpl = new WindowInsetsCompat$Impl28(this, (WindowInsetsCompat$Impl28) windowInsetsCompat$Impl);
        } else if (windowInsetsCompat$Impl instanceof WindowInsetsCompat$Impl21) {
            this.mImpl = new WindowInsetsCompat$Impl21(this, (WindowInsetsCompat$Impl21) windowInsetsCompat$Impl);
        } else if (windowInsetsCompat$Impl instanceof WindowInsetsCompat$Impl20) {
            this.mImpl = new WindowInsetsCompat$Impl20(this, (WindowInsetsCompat$Impl20) windowInsetsCompat$Impl);
        } else {
            this.mImpl = new WindowInsetsCompat$Impl(this);
        }
        windowInsetsCompat$Impl.copyWindowDataInto(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Insets insetInsets(@NonNull Insets insets, int i9, int i10, int i11, int i12) {
        int iMax = Math.max(0, insets.left - i9);
        int iMax2 = Math.max(0, insets.top - i10);
        int iMax3 = Math.max(0, insets.right - i11);
        int iMax4 = Math.max(0, insets.bottom - i12);
        return (iMax == i9 && iMax2 == i10 && iMax3 == i11 && iMax4 == i12) ? insets : Insets.of(iMax, iMax2, iMax3, iMax4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(20)
    public static WindowInsetsCompat toWindowInsetsCompat(@NonNull WindowInsets windowInsets, @Nullable View view) {
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat((WindowInsets) Preconditions.checkNotNull(windowInsets));
        if (view != null && view.isAttachedToWindow()) {
            windowInsetsCompat.setRootWindowInsets(ViewCompat.getRootWindowInsets(view));
            windowInsetsCompat.copyRootViewBounds(view.getRootView());
        }
        return windowInsetsCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeDisplayCutout() {
        return this.mImpl.consumeDisplayCutout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeStableInsets() {
        return this.mImpl.consumeStableInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return this.mImpl.consumeSystemWindowInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void copyRootViewBounds(@NonNull View view) {
        this.mImpl.copyRootViewBounds(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowInsetsCompat) {
            return ObjectsCompat.equals(this.mImpl, ((WindowInsetsCompat) obj).mImpl);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public DisplayCutoutCompat getDisplayCutout() {
        return this.mImpl.getDisplayCutout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getInsets(int i9) {
        return this.mImpl.getInsets(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getInsetsIgnoringVisibility(int i9) {
        return this.mImpl.getInsetsIgnoringVisibility(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public Insets getMandatorySystemGestureInsets() {
        return this.mImpl.getMandatorySystemGestureInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getStableInsetBottom() {
        return this.mImpl.getStableInsets().bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getStableInsetLeft() {
        return this.mImpl.getStableInsets().left;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getStableInsetRight() {
        return this.mImpl.getStableInsets().right;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getStableInsetTop() {
        return this.mImpl.getStableInsets().top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public Insets getStableInsets() {
        return this.mImpl.getStableInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public Insets getSystemGestureInsets() {
        return this.mImpl.getSystemGestureInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getSystemWindowInsetBottom() {
        return this.mImpl.getSystemWindowInsets().bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getSystemWindowInsetLeft() {
        return this.mImpl.getSystemWindowInsets().left;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getSystemWindowInsetRight() {
        return this.mImpl.getSystemWindowInsets().right;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getSystemWindowInsetTop() {
        return this.mImpl.getSystemWindowInsets().top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public Insets getSystemWindowInsets() {
        return this.mImpl.getSystemWindowInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public Insets getTappableElementInsets() {
        return this.mImpl.getTappableElementInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasInsets() {
        Insets insets = getInsets(WindowInsetsCompat$Type.all());
        Insets insets2 = Insets.NONE;
        return (insets.equals(insets2) && getInsetsIgnoringVisibility(WindowInsetsCompat$Type.all() ^ WindowInsetsCompat$Type.ime()).equals(insets2) && getDisplayCutout() == null) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean hasStableInsets() {
        return !this.mImpl.getStableInsets().equals(Insets.NONE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean hasSystemWindowInsets() {
        return !this.mImpl.getSystemWindowInsets().equals(Insets.NONE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        WindowInsetsCompat$Impl windowInsetsCompat$Impl = this.mImpl;
        if (windowInsetsCompat$Impl == null) {
            return 0;
        }
        return windowInsetsCompat$Impl.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat inset(@NonNull Insets insets) {
        return inset(insets.left, insets.top, insets.right, insets.bottom);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isConsumed() {
        return this.mImpl.isConsumed();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isRound() {
        return this.mImpl.isRound();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isVisible(int i9) {
        return this.mImpl.isVisible(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(int i9, int i10, int i11, int i12) {
        return new WindowInsetsCompat$Builder(this).setSystemWindowInsets(Insets.of(i9, i10, i11, i12)).build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOverriddenInsets(Insets[] insetsArr) {
        this.mImpl.setOverriddenInsets(insetsArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRootViewData(@NonNull Insets insets) {
        this.mImpl.setRootViewData(insets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRootWindowInsets(@Nullable WindowInsetsCompat windowInsetsCompat) {
        this.mImpl.setRootWindowInsets(windowInsetsCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStableInsets(@Nullable Insets insets) {
        this.mImpl.setStableInsets(insets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RequiresApi(20)
    public WindowInsets toWindowInsets() {
        WindowInsetsCompat$Impl windowInsetsCompat$Impl = this.mImpl;
        if (windowInsetsCompat$Impl instanceof WindowInsetsCompat$Impl20) {
            return ((WindowInsetsCompat$Impl20) windowInsetsCompat$Impl).mPlatformInsets;
        }
        return null;
    }

    @NonNull
    public WindowInsetsCompat inset(@IntRange(from = ULong.MIN_VALUE) int i9, @IntRange(from = ULong.MIN_VALUE) int i10, @IntRange(from = ULong.MIN_VALUE) int i11, @IntRange(from = ULong.MIN_VALUE) int i12) {
        return this.mImpl.inset(i9, i10, i11, i12);
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(@NonNull Rect rect) {
        return new WindowInsetsCompat$Builder(this).setSystemWindowInsets(Insets.of(rect)).build();
    }

    @NonNull
    @RequiresApi(20)
    public static WindowInsetsCompat toWindowInsetsCompat(@NonNull WindowInsets windowInsets) {
        return toWindowInsetsCompat(windowInsets, null);
    }

    @RequiresApi(20)
    private WindowInsetsCompat(@NonNull WindowInsets windowInsets) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 30) {
            this.mImpl = new WindowInsetsCompat$Impl30(this, windowInsets);
            return;
        }
        if (i9 >= 29) {
            this.mImpl = new WindowInsetsCompat$Impl29(this, windowInsets);
        } else if (i9 >= 28) {
            this.mImpl = new WindowInsetsCompat$Impl28(this, windowInsets);
        } else {
            this.mImpl = new WindowInsetsCompat$Impl21(this, windowInsets);
        }
    }
}
