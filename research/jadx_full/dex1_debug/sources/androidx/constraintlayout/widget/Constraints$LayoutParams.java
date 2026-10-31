package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Constraints$LayoutParams extends ConstraintLayout$LayoutParams {
    public float alpha;
    public boolean applyElevation;
    public float elevation;
    public float rotation;
    public float rotationX;
    public float rotationY;
    public float scaleX;
    public float scaleY;
    public float transformPivotX;
    public float transformPivotY;
    public float translationX;
    public float translationY;
    public float translationZ;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraints$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.alpha = 1.0f;
        this.applyElevation = false;
        this.elevation = 0.0f;
        this.rotation = 0.0f;
        this.rotationX = 0.0f;
        this.rotationY = 0.0f;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.transformPivotX = 0.0f;
        this.transformPivotY = 0.0f;
        this.translationX = 0.0f;
        this.translationY = 0.0f;
        this.translationZ = 0.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintSet);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            if (index == R$styleable.ConstraintSet_android_alpha) {
                this.alpha = typedArrayObtainStyledAttributes.getFloat(index, this.alpha);
            } else if (index == R$styleable.ConstraintSet_android_elevation) {
                this.elevation = typedArrayObtainStyledAttributes.getFloat(index, this.elevation);
                this.applyElevation = true;
            } else if (index == R$styleable.ConstraintSet_android_rotationX) {
                this.rotationX = typedArrayObtainStyledAttributes.getFloat(index, this.rotationX);
            } else if (index == R$styleable.ConstraintSet_android_rotationY) {
                this.rotationY = typedArrayObtainStyledAttributes.getFloat(index, this.rotationY);
            } else if (index == R$styleable.ConstraintSet_android_rotation) {
                this.rotation = typedArrayObtainStyledAttributes.getFloat(index, this.rotation);
            } else if (index == R$styleable.ConstraintSet_android_scaleX) {
                this.scaleX = typedArrayObtainStyledAttributes.getFloat(index, this.scaleX);
            } else if (index == R$styleable.ConstraintSet_android_scaleY) {
                this.scaleY = typedArrayObtainStyledAttributes.getFloat(index, this.scaleY);
            } else if (index == R$styleable.ConstraintSet_android_transformPivotX) {
                this.transformPivotX = typedArrayObtainStyledAttributes.getFloat(index, this.transformPivotX);
            } else if (index == R$styleable.ConstraintSet_android_transformPivotY) {
                this.transformPivotY = typedArrayObtainStyledAttributes.getFloat(index, this.transformPivotY);
            } else if (index == R$styleable.ConstraintSet_android_translationX) {
                this.translationX = typedArrayObtainStyledAttributes.getFloat(index, this.translationX);
            } else if (index == R$styleable.ConstraintSet_android_translationY) {
                this.translationY = typedArrayObtainStyledAttributes.getFloat(index, this.translationY);
            } else if (index == R$styleable.ConstraintSet_android_translationZ) {
                this.translationZ = typedArrayObtainStyledAttributes.getFloat(index, this.translationZ);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public Constraints$LayoutParams(Constraints$LayoutParams constraints$LayoutParams) {
        super(constraints$LayoutParams);
        this.alpha = 1.0f;
        this.applyElevation = false;
        this.elevation = 0.0f;
        this.rotation = 0.0f;
        this.rotationX = 0.0f;
        this.rotationY = 0.0f;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.transformPivotX = 0.0f;
        this.transformPivotY = 0.0f;
        this.translationX = 0.0f;
        this.translationY = 0.0f;
        this.translationZ = 0.0f;
    }

    public Constraints$LayoutParams(int i9, int i10) {
        super(i9, i10);
        this.alpha = 1.0f;
        this.applyElevation = false;
        this.elevation = 0.0f;
        this.rotation = 0.0f;
        this.rotationX = 0.0f;
        this.rotationY = 0.0f;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.transformPivotX = 0.0f;
        this.transformPivotY = 0.0f;
        this.translationX = 0.0f;
        this.translationY = 0.0f;
        this.translationZ = 0.0f;
    }
}
