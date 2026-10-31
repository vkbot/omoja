package androidx.vectordrawable.graphics.drawable;

import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.util.AttributeSet;
import androidx.collection.ArrayMap;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.content.res.TypedArrayUtils;
import j1.i;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VectorDrawableCompat$VGroup extends VectorDrawableCompat$VObject {
    int mChangingConfigurations;
    final ArrayList<VectorDrawableCompat$VObject> mChildren;
    private String mGroupName;
    final Matrix mLocalMatrix;
    private float mPivotX;
    private float mPivotY;
    float mRotate;
    private float mScaleX;
    private float mScaleY;
    final Matrix mStackedMatrix;
    private int[] mThemeAttrs;
    private float mTranslateX;
    private float mTranslateY;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VectorDrawableCompat$VGroup(VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup, ArrayMap<String, Object> arrayMap) {
        VectorDrawableCompat$VPath vectorDrawableCompat$VClipPath;
        super(null);
        this.mStackedMatrix = new Matrix();
        this.mChildren = new ArrayList<>();
        this.mRotate = 0.0f;
        this.mPivotX = 0.0f;
        this.mPivotY = 0.0f;
        this.mScaleX = 1.0f;
        this.mScaleY = 1.0f;
        this.mTranslateX = 0.0f;
        this.mTranslateY = 0.0f;
        Matrix matrix = new Matrix();
        this.mLocalMatrix = matrix;
        this.mGroupName = null;
        this.mRotate = vectorDrawableCompat$VGroup.mRotate;
        this.mPivotX = vectorDrawableCompat$VGroup.mPivotX;
        this.mPivotY = vectorDrawableCompat$VGroup.mPivotY;
        this.mScaleX = vectorDrawableCompat$VGroup.mScaleX;
        this.mScaleY = vectorDrawableCompat$VGroup.mScaleY;
        this.mTranslateX = vectorDrawableCompat$VGroup.mTranslateX;
        this.mTranslateY = vectorDrawableCompat$VGroup.mTranslateY;
        this.mThemeAttrs = vectorDrawableCompat$VGroup.mThemeAttrs;
        String str = vectorDrawableCompat$VGroup.mGroupName;
        this.mGroupName = str;
        this.mChangingConfigurations = vectorDrawableCompat$VGroup.mChangingConfigurations;
        if (str != null) {
            arrayMap.put(str, this);
        }
        matrix.set(vectorDrawableCompat$VGroup.mLocalMatrix);
        ArrayList<VectorDrawableCompat$VObject> arrayList = vectorDrawableCompat$VGroup.mChildren;
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            VectorDrawableCompat$VObject vectorDrawableCompat$VObject = arrayList.get(i9);
            if (vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VGroup) {
                this.mChildren.add(new VectorDrawableCompat$VGroup((VectorDrawableCompat$VGroup) vectorDrawableCompat$VObject, arrayMap));
            } else {
                if (vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VFullPath) {
                    vectorDrawableCompat$VClipPath = new VectorDrawableCompat$VFullPath((VectorDrawableCompat$VFullPath) vectorDrawableCompat$VObject);
                } else {
                    if (!(vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VClipPath)) {
                        i.l("Unknown object in the tree!");
                        throw null;
                    }
                    vectorDrawableCompat$VClipPath = new VectorDrawableCompat$VClipPath((VectorDrawableCompat$VClipPath) vectorDrawableCompat$VObject);
                }
                this.mChildren.add(vectorDrawableCompat$VClipPath);
                String str2 = vectorDrawableCompat$VClipPath.mPathName;
                if (str2 != null) {
                    arrayMap.put(str2, vectorDrawableCompat$VClipPath);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateLocalMatrix() {
        this.mLocalMatrix.reset();
        this.mLocalMatrix.postTranslate(-this.mPivotX, -this.mPivotY);
        this.mLocalMatrix.postScale(this.mScaleX, this.mScaleY);
        this.mLocalMatrix.postRotate(this.mRotate, 0.0f, 0.0f);
        this.mLocalMatrix.postTranslate(this.mTranslateX + this.mPivotX, this.mTranslateY + this.mPivotY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateStateFromTypedArray(TypedArray typedArray, XmlPullParser xmlPullParser) {
        this.mThemeAttrs = null;
        this.mRotate = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, Key.ROTATION, 5, this.mRotate);
        this.mPivotX = typedArray.getFloat(1, this.mPivotX);
        this.mPivotY = typedArray.getFloat(2, this.mPivotY);
        this.mScaleX = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "scaleX", 3, this.mScaleX);
        this.mScaleY = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "scaleY", 4, this.mScaleY);
        this.mTranslateX = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "translateX", 6, this.mTranslateX);
        this.mTranslateY = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "translateY", 7, this.mTranslateY);
        String string = typedArray.getString(0);
        if (string != null) {
            this.mGroupName = string;
        }
        updateLocalMatrix();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getGroupName() {
        return this.mGroupName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Matrix getLocalMatrix() {
        return this.mLocalMatrix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPivotX() {
        return this.mPivotX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPivotY() {
        return this.mPivotY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getRotation() {
        return this.mRotate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getScaleX() {
        return this.mScaleX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getScaleY() {
        return this.mScaleY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTranslateX() {
        return this.mTranslateX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTranslateY() {
        return this.mTranslateY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void inflate(Resources resources, AttributeSet attributeSet, Resources$Theme resources$Theme, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_GROUP);
        updateStateFromTypedArray(typedArrayObtainAttributes, xmlPullParser);
        typedArrayObtainAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VObject
    public boolean isStateful() {
        for (int i9 = 0; i9 < this.mChildren.size(); i9++) {
            if (this.mChildren.get(i9).isStateful()) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VObject
    public boolean onStateChanged(int[] iArr) {
        boolean zOnStateChanged = false;
        for (int i9 = 0; i9 < this.mChildren.size(); i9++) {
            zOnStateChanged |= this.mChildren.get(i9).onStateChanged(iArr);
        }
        return zOnStateChanged;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPivotX(float f8) {
        if (f8 != this.mPivotX) {
            this.mPivotX = f8;
            updateLocalMatrix();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPivotY(float f8) {
        if (f8 != this.mPivotY) {
            this.mPivotY = f8;
            updateLocalMatrix();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRotation(float f8) {
        if (f8 != this.mRotate) {
            this.mRotate = f8;
            updateLocalMatrix();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScaleX(float f8) {
        if (f8 != this.mScaleX) {
            this.mScaleX = f8;
            updateLocalMatrix();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScaleY(float f8) {
        if (f8 != this.mScaleY) {
            this.mScaleY = f8;
            updateLocalMatrix();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTranslateX(float f8) {
        if (f8 != this.mTranslateX) {
            this.mTranslateX = f8;
            updateLocalMatrix();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTranslateY(float f8) {
        if (f8 != this.mTranslateY) {
            this.mTranslateY = f8;
            updateLocalMatrix();
        }
    }

    public VectorDrawableCompat$VGroup() {
        super(null);
        this.mStackedMatrix = new Matrix();
        this.mChildren = new ArrayList<>();
        this.mRotate = 0.0f;
        this.mPivotX = 0.0f;
        this.mPivotY = 0.0f;
        this.mScaleX = 1.0f;
        this.mScaleY = 1.0f;
        this.mTranslateX = 0.0f;
        this.mTranslateY = 0.0f;
        this.mLocalMatrix = new Matrix();
        this.mGroupName = null;
    }
}
