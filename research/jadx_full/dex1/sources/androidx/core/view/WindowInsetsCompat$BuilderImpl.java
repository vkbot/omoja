package androidx.core.view;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.Insets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WindowInsetsCompat$BuilderImpl {
    private final WindowInsetsCompat mInsets;
    Insets[] mInsetsTypeMask;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$BuilderImpl() {
        this(new WindowInsetsCompat((WindowInsetsCompat) null));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void applyInsetTypes() {
        Insets[] insetsArr = this.mInsetsTypeMask;
        if (insetsArr != null) {
            Insets insets = insetsArr[WindowInsetsCompat$Type.indexOf(1)];
            Insets insets2 = this.mInsetsTypeMask[WindowInsetsCompat$Type.indexOf(2)];
            if (insets2 == null) {
                insets2 = this.mInsets.getInsets(2);
            }
            if (insets == null) {
                insets = this.mInsets.getInsets(1);
            }
            setSystemWindowInsets(Insets.max(insets, insets2));
            Insets insets3 = this.mInsetsTypeMask[WindowInsetsCompat$Type.indexOf(16)];
            if (insets3 != null) {
                setSystemGestureInsets(insets3);
            }
            Insets insets4 = this.mInsetsTypeMask[WindowInsetsCompat$Type.indexOf(32)];
            if (insets4 != null) {
                setMandatorySystemGestureInsets(insets4);
            }
            Insets insets5 = this.mInsetsTypeMask[WindowInsetsCompat$Type.indexOf(64)];
            if (insets5 != null) {
                setTappableElementInsets(insets5);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsCompat build() {
        applyInsetTypes();
        return this.mInsets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInsets(int i9, @NonNull Insets insets) {
        if (this.mInsetsTypeMask == null) {
            this.mInsetsTypeMask = new Insets[9];
        }
        for (int i10 = 1; i10 <= 256; i10 <<= 1) {
            if ((i9 & i10) != 0) {
                this.mInsetsTypeMask[WindowInsetsCompat$Type.indexOf(i10)] = insets;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInsetsIgnoringVisibility(int i9, @NonNull Insets insets) {
        if (i9 != 8) {
            return;
        }
        j1.i.k("Ignoring visibility inset not available for IME");
    }

    public WindowInsetsCompat$BuilderImpl(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.mInsets = windowInsetsCompat;
    }

    public void setDisplayCutout(@Nullable DisplayCutoutCompat displayCutoutCompat) {
    }

    public void setMandatorySystemGestureInsets(@NonNull Insets insets) {
    }

    public void setStableInsets(@NonNull Insets insets) {
    }

    public void setSystemGestureInsets(@NonNull Insets insets) {
    }

    public void setSystemWindowInsets(@NonNull Insets insets) {
    }

    public void setTappableElementInsets(@NonNull Insets insets) {
    }

    public void setVisible(int i9, boolean z8) {
    }
}
