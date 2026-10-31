package androidx.appcompat.graphics.drawable;

import android.animation.TimeInterpolator;
import android.graphics.drawable.AnimationDrawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimatedStateListDrawableCompat$FrameInterpolator implements TimeInterpolator {
    private int[] mFrameTimes;
    private int mFrames;
    private int mTotalDuration;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimatedStateListDrawableCompat$FrameInterpolator(AnimationDrawable animationDrawable, boolean z8) {
        updateFrames(animationDrawable, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f8) {
        int i9 = (int) ((f8 * this.mTotalDuration) + 0.5f);
        int i10 = this.mFrames;
        int[] iArr = this.mFrameTimes;
        int i11 = 0;
        while (i11 < i10) {
            int i12 = iArr[i11];
            if (i9 < i12) {
                break;
            }
            i9 -= i12;
            i11++;
        }
        return (i11 / i10) + (i11 < i10 ? i9 / this.mTotalDuration : 0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTotalDuration() {
        return this.mTotalDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int updateFrames(AnimationDrawable animationDrawable, boolean z8) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        this.mFrames = numberOfFrames;
        int[] iArr = this.mFrameTimes;
        if (iArr == null || iArr.length < numberOfFrames) {
            this.mFrameTimes = new int[numberOfFrames];
        }
        int[] iArr2 = this.mFrameTimes;
        int i9 = 0;
        for (int i10 = 0; i10 < numberOfFrames; i10++) {
            int duration = animationDrawable.getDuration(z8 ? (numberOfFrames - i10) - 1 : i10);
            iArr2[i10] = duration;
            i9 += duration;
        }
        this.mTotalDuration = i9;
        return i9;
    }
}
