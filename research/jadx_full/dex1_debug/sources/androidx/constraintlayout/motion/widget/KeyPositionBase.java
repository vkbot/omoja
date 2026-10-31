package androidx.constraintlayout.motion.widget;

import android.graphics.RectF;
import android.view.View;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
abstract class KeyPositionBase extends Key {
    protected static final float SELECTION_SLOPE = 20.0f;
    int mCurveFit = Key.UNSET;

    public abstract void calcPosition(int i9, int i10, float f8, float f9, float f10, float f11);

    public abstract float getPositionX();

    public abstract float getPositionY();

    public abstract boolean intersects(int i9, int i10, RectF rectF, RectF rectF2, float f8, float f9);

    public abstract void positionAttributes(View view, RectF rectF, RectF rectF2, float f8, float f9, String[] strArr, float[] fArr);

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
    }
}
