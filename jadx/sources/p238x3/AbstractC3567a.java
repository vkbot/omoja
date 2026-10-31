package p238x3;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import androidx.core.graphics.ColorUtils;

/* JADX INFO: renamed from: x3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3567a {

    /* JADX INFO: renamed from: a */
    public static final int[] f10626a = {R.attr.state_pressed};

    /* JADX INFO: renamed from: b */
    public static final int[] f10627b = {R.attr.state_focused};

    /* JADX INFO: renamed from: c */
    public static final int[] f10628c = {R.attr.state_selected, R.attr.state_pressed};

    /* JADX INFO: renamed from: d */
    public static final int[] f10629d = {R.attr.state_selected};

    /* JADX INFO: renamed from: e */
    public static final int[] f10630e = {R.attr.state_enabled, R.attr.state_pressed};

    /* JADX INFO: renamed from: f */
    public static final String f10631f = AbstractC3567a.class.getSimpleName();

    /* JADX INFO: renamed from: a */
    public static int m5683a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return ColorUtils.setAlphaComponent(colorForState, Math.min(Color.alpha(colorForState) * 2, 255));
    }

    /* JADX INFO: renamed from: b */
    public static ColorStateList m5684b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        if (Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f10630e, 0)) != 0) {
            Log.w(f10631f, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
        }
        return colorStateList;
    }
}
