package androidx.constraintlayout.motion.utils;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewOscillator$CustomSet extends ViewOscillator {
    protected ConstraintAttribute mCustom;
    float[] mValue = new float[1];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
    public void setCustom(Object obj) {
        this.mCustom = (ConstraintAttribute) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.utils.ViewOscillator
    public void setProperty(View view, float f8) {
        this.mValue[0] = get(f8);
        CustomSupport.setInterpolatedValue(this.mCustom, view, this.mValue);
    }
}
