package androidx.core.view;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.Insets;
import androidx.core.util.ObjectsCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WindowInsetsCompat$Impl {

    @NonNull
    static final WindowInsetsCompat CONSUMED = new WindowInsetsCompat$Builder().build().consumeDisplayCutout().consumeStableInsets().consumeSystemWindowInsets();
    final WindowInsetsCompat mHost;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$Impl(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.mHost = windowInsetsCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat consumeDisplayCutout() {
        return this.mHost;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat consumeStableInsets() {
        return this.mHost;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return this.mHost;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowInsetsCompat$Impl)) {
            return false;
        }
        WindowInsetsCompat$Impl windowInsetsCompat$Impl = (WindowInsetsCompat$Impl) obj;
        return isRound() == windowInsetsCompat$Impl.isRound() && isConsumed() == windowInsetsCompat$Impl.isConsumed() && ObjectsCompat.equals(getSystemWindowInsets(), windowInsetsCompat$Impl.getSystemWindowInsets()) && ObjectsCompat.equals(getStableInsets(), windowInsetsCompat$Impl.getStableInsets()) && ObjectsCompat.equals(getDisplayCutout(), windowInsetsCompat$Impl.getDisplayCutout());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public DisplayCutoutCompat getDisplayCutout() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getInsets(int i9) {
        return Insets.NONE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getInsetsIgnoringVisibility(int i9) {
        if ((i9 & 8) == 0) {
            return Insets.NONE;
        }
        j1.i.k("Unable to query the maximum insets for IME");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getMandatorySystemGestureInsets() {
        return getSystemWindowInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getStableInsets() {
        return Insets.NONE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getSystemGestureInsets() {
        return getSystemWindowInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getSystemWindowInsets() {
        return Insets.NONE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getTappableElementInsets() {
        return getSystemWindowInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return ObjectsCompat.hash(Boolean.valueOf(isRound()), Boolean.valueOf(isConsumed()), getSystemWindowInsets(), getStableInsets(), getDisplayCutout());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat inset(int i9, int i10, int i11, int i12) {
        return CONSUMED;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isConsumed() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isRound() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isVisible(int i9) {
        return true;
    }

    public void copyRootViewBounds(@NonNull View view) {
    }

    public void copyWindowDataInto(@NonNull WindowInsetsCompat windowInsetsCompat) {
    }

    public void setOverriddenInsets(Insets[] insetsArr) {
    }

    public void setRootViewData(@NonNull Insets insets) {
    }

    public void setRootWindowInsets(@Nullable WindowInsetsCompat windowInsetsCompat) {
    }

    public void setStableInsets(Insets insets) {
    }
}
