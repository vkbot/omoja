package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintLayoutStates$Variant {
    int mConstraintID;
    ConstraintSet mConstraintSet;
    int mId;
    float mMaxHeight;
    float mMaxWidth;
    float mMinHeight;
    float mMinWidth;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintLayoutStates$Variant(Context context, XmlPullParser xmlPullParser) {
        this.mMinWidth = Float.NaN;
        this.mMinHeight = Float.NaN;
        this.mMaxWidth = Float.NaN;
        this.mMaxHeight = Float.NaN;
        this.mConstraintID = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.Variant);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            if (index == R$styleable.Variant_constraints) {
                this.mConstraintID = typedArrayObtainStyledAttributes.getResourceId(index, this.mConstraintID);
                String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintID);
                context.getResources().getResourceName(this.mConstraintID);
                if ("layout".equals(resourceTypeName)) {
                    ConstraintSet constraintSet = new ConstraintSet();
                    this.mConstraintSet = constraintSet;
                    constraintSet.clone(context, this.mConstraintID);
                }
            } else if (index == R$styleable.Variant_region_heightLessThan) {
                this.mMaxHeight = typedArrayObtainStyledAttributes.getDimension(index, this.mMaxHeight);
            } else if (index == R$styleable.Variant_region_heightMoreThan) {
                this.mMinHeight = typedArrayObtainStyledAttributes.getDimension(index, this.mMinHeight);
            } else if (index == R$styleable.Variant_region_widthLessThan) {
                this.mMaxWidth = typedArrayObtainStyledAttributes.getDimension(index, this.mMaxWidth);
            } else if (index == R$styleable.Variant_region_widthMoreThan) {
                this.mMinWidth = typedArrayObtainStyledAttributes.getDimension(index, this.mMinWidth);
            } else {
                Log.v("ConstraintLayoutStates", "Unknown tag");
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean match(float f8, float f9) {
        if (!Float.isNaN(this.mMinWidth) && f8 < this.mMinWidth) {
            return false;
        }
        if (!Float.isNaN(this.mMinHeight) && f9 < this.mMinHeight) {
            return false;
        }
        if (Float.isNaN(this.mMaxWidth) || f8 <= this.mMaxWidth) {
            return Float.isNaN(this.mMaxHeight) || f9 <= this.mMaxHeight;
        }
        return false;
    }
}
