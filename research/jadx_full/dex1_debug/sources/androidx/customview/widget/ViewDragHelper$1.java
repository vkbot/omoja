package androidx.customview.widget;

import android.view.animation.Interpolator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewDragHelper$1 implements Interpolator {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f8) {
        float f9 = f8 - 1.0f;
        return (f9 * f9 * f9 * f9 * f9) + 1.0f;
    }
}
