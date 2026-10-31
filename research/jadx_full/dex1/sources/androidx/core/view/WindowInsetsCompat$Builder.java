package androidx.core.view;

import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class WindowInsetsCompat$Builder {
    private final WindowInsetsCompat$BuilderImpl mImpl;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$Builder() {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 30) {
            this.mImpl = new WindowInsetsCompat$BuilderImpl30();
        } else if (i9 >= 29) {
            this.mImpl = new WindowInsetsCompat$BuilderImpl29();
        } else {
            this.mImpl = new WindowInsetsCompat$BuilderImpl20();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat build() {
        return this.mImpl.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat$Builder setDisplayCutout(@Nullable DisplayCutoutCompat displayCutoutCompat) {
        this.mImpl.setDisplayCutout(displayCutoutCompat);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat$Builder setInsets(int i9, @NonNull Insets insets) {
        this.mImpl.setInsets(i9, insets);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat$Builder setInsetsIgnoringVisibility(int i9, @NonNull Insets insets) {
        this.mImpl.setInsetsIgnoringVisibility(i9, insets);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public WindowInsetsCompat$Builder setMandatorySystemGestureInsets(@NonNull Insets insets) {
        this.mImpl.setMandatorySystemGestureInsets(insets);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public WindowInsetsCompat$Builder setStableInsets(@NonNull Insets insets) {
        this.mImpl.setStableInsets(insets);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public WindowInsetsCompat$Builder setSystemGestureInsets(@NonNull Insets insets) {
        this.mImpl.setSystemGestureInsets(insets);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public WindowInsetsCompat$Builder setSystemWindowInsets(@NonNull Insets insets) {
        this.mImpl.setSystemWindowInsets(insets);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public WindowInsetsCompat$Builder setTappableElementInsets(@NonNull Insets insets) {
        this.mImpl.setTappableElementInsets(insets);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat$Builder setVisible(int i9, boolean z8) {
        this.mImpl.setVisible(i9, z8);
        return this;
    }

    public WindowInsetsCompat$Builder(@NonNull WindowInsetsCompat windowInsetsCompat) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 30) {
            this.mImpl = new WindowInsetsCompat$BuilderImpl30(windowInsetsCompat);
        } else if (i9 >= 29) {
            this.mImpl = new WindowInsetsCompat$BuilderImpl29(windowInsetsCompat);
        } else {
            this.mImpl = new WindowInsetsCompat$BuilderImpl20(windowInsetsCompat);
        }
    }
}
