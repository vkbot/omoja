package p018b3;

import ai.onnxruntime.AbstractC0074a;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;

/* JADX INFO: renamed from: b3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0884a {

    /* JADX INFO: renamed from: a */
    public static final LinearInterpolator f661a = new LinearInterpolator();

    /* JADX INFO: renamed from: b */
    public static final FastOutSlowInInterpolator f662b = new FastOutSlowInInterpolator();

    /* JADX INFO: renamed from: c */
    public static final FastOutLinearInInterpolator f663c = new FastOutLinearInInterpolator();

    /* JADX INFO: renamed from: d */
    public static final LinearOutSlowInInterpolator f664d = new LinearOutSlowInInterpolator();

    /* JADX INFO: renamed from: e */
    public static final DecelerateInterpolator f665e = new DecelerateInterpolator();

    /* JADX INFO: renamed from: a */
    public static float m1015a(float f8, float f10, float f11) {
        return AbstractC0074a.m151b(f10, f8, f11, f8);
    }

    /* JADX INFO: renamed from: b */
    public static float m1016b(float f8, float f10, float f11, float f12, float f13) {
        if (f13 <= f11) {
            return f8;
        }
        return f13 >= f12 ? f10 : m1015a(f8, f10, (f13 - f11) / (f12 - f11));
    }

    /* JADX INFO: renamed from: c */
    public static int m1017c(float f8, int i10, int i11) {
        return Math.round(f8 * (i11 - i10)) + i10;
    }
}
