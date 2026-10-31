package p080h3;

import androidx.dynamicanimation.animation.FloatPropertyCompat;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: renamed from: h3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1655a extends FloatPropertyCompat {
    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public final float getValue(Object obj) {
        return ((MaterialButton) obj).getDisplayedWidthIncrease();
    }

    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public final void setValue(Object obj, float f8) {
        ((MaterialButton) obj).setDisplayedWidthIncrease(f8);
    }
}
