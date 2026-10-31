package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSet$PropertySet {
    public boolean mApply = false;
    public int visibility = 0;
    public int mVisibilityMode = 0;
    public float alpha = 1.0f;
    public float mProgress = Float.NaN;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void copyFrom(ConstraintSet$PropertySet constraintSet$PropertySet) {
        this.mApply = constraintSet$PropertySet.mApply;
        this.visibility = constraintSet$PropertySet.visibility;
        this.alpha = constraintSet$PropertySet.alpha;
        this.mProgress = constraintSet$PropertySet.mProgress;
        this.mVisibilityMode = constraintSet$PropertySet.mVisibilityMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fillFromAttributeList(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PropertySet);
        this.mApply = true;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            if (index == R$styleable.PropertySet_android_alpha) {
                this.alpha = typedArrayObtainStyledAttributes.getFloat(index, this.alpha);
            } else if (index == R$styleable.PropertySet_android_visibility) {
                this.visibility = typedArrayObtainStyledAttributes.getInt(index, this.visibility);
                this.visibility = ConstraintSet.access$200()[this.visibility];
            } else if (index == R$styleable.PropertySet_visibilityMode) {
                this.mVisibilityMode = typedArrayObtainStyledAttributes.getInt(index, this.mVisibilityMode);
            } else if (index == R$styleable.PropertySet_motionProgress) {
                this.mProgress = typedArrayObtainStyledAttributes.getFloat(index, this.mProgress);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
