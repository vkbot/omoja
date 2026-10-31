package androidx.core.view;

import android.view.animation.Interpolator;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WindowInsetsAnimationCompat$Impl {
    private float mAlpha;
    private final long mDurationMillis;
    private float mFraction;

    @Nullable
    private final Interpolator mInterpolator;
    private final int mTypeMask;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsAnimationCompat$Impl(int i9, @Nullable Interpolator interpolator, long j9) {
        this.mTypeMask = i9;
        this.mInterpolator = interpolator;
        this.mDurationMillis = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getAlpha() {
        return this.mAlpha;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getDurationMillis() {
        return this.mDurationMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFraction() {
        return this.mFraction;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getInterpolatedFraction() {
        Interpolator interpolator = this.mInterpolator;
        float f8 = this.mFraction;
        return interpolator != null ? interpolator.getInterpolation(f8) : f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTypeMask() {
        return this.mTypeMask;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAlpha(float f8) {
        this.mAlpha = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFraction(float f8) {
        this.mFraction = f8;
    }
}
