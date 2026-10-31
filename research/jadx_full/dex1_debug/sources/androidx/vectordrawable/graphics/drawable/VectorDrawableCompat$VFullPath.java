package androidx.vectordrawable.graphics.drawable;

import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Join;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VectorDrawableCompat$VFullPath extends VectorDrawableCompat$VPath {
    float mFillAlpha;
    ComplexColorCompat mFillColor;
    float mStrokeAlpha;
    ComplexColorCompat mStrokeColor;
    Paint$Cap mStrokeLineCap;
    Paint$Join mStrokeLineJoin;
    float mStrokeMiterlimit;
    float mStrokeWidth;
    private int[] mThemeAttrs;
    float mTrimPathEnd;
    float mTrimPathOffset;
    float mTrimPathStart;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VectorDrawableCompat$VFullPath(VectorDrawableCompat$VFullPath vectorDrawableCompat$VFullPath) {
        super(vectorDrawableCompat$VFullPath);
        this.mStrokeWidth = 0.0f;
        this.mStrokeAlpha = 1.0f;
        this.mFillAlpha = 1.0f;
        this.mTrimPathStart = 0.0f;
        this.mTrimPathEnd = 1.0f;
        this.mTrimPathOffset = 0.0f;
        this.mStrokeLineCap = Paint$Cap.BUTT;
        this.mStrokeLineJoin = Paint$Join.MITER;
        this.mStrokeMiterlimit = 4.0f;
        this.mThemeAttrs = vectorDrawableCompat$VFullPath.mThemeAttrs;
        this.mStrokeColor = vectorDrawableCompat$VFullPath.mStrokeColor;
        this.mStrokeWidth = vectorDrawableCompat$VFullPath.mStrokeWidth;
        this.mStrokeAlpha = vectorDrawableCompat$VFullPath.mStrokeAlpha;
        this.mFillColor = vectorDrawableCompat$VFullPath.mFillColor;
        this.mFillRule = vectorDrawableCompat$VFullPath.mFillRule;
        this.mFillAlpha = vectorDrawableCompat$VFullPath.mFillAlpha;
        this.mTrimPathStart = vectorDrawableCompat$VFullPath.mTrimPathStart;
        this.mTrimPathEnd = vectorDrawableCompat$VFullPath.mTrimPathEnd;
        this.mTrimPathOffset = vectorDrawableCompat$VFullPath.mTrimPathOffset;
        this.mStrokeLineCap = vectorDrawableCompat$VFullPath.mStrokeLineCap;
        this.mStrokeLineJoin = vectorDrawableCompat$VFullPath.mStrokeLineJoin;
        this.mStrokeMiterlimit = vectorDrawableCompat$VFullPath.mStrokeMiterlimit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Paint$Cap getStrokeLineCap(int i9, Paint$Cap paint$Cap) {
        if (i9 == 0) {
            return Paint$Cap.BUTT;
        }
        if (i9 != 1) {
            return i9 != 2 ? paint$Cap : Paint$Cap.SQUARE;
        }
        return Paint$Cap.ROUND;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Paint$Join getStrokeLineJoin(int i9, Paint$Join paint$Join) {
        if (i9 == 0) {
            return Paint$Join.MITER;
        }
        if (i9 != 1) {
            return i9 != 2 ? paint$Join : Paint$Join.BEVEL;
        }
        return Paint$Join.ROUND;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateStateFromTypedArray(TypedArray typedArray, XmlPullParser xmlPullParser, Resources$Theme resources$Theme) {
        this.mThemeAttrs = null;
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.mPathName = string;
            }
            String string2 = typedArray.getString(2);
            if (string2 != null) {
                this.mNodes = PathParser.createNodesFromPathData(string2);
            }
            this.mFillColor = TypedArrayUtils.getNamedComplexColor(typedArray, xmlPullParser, resources$Theme, "fillColor", 1, 0);
            this.mFillAlpha = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "fillAlpha", 12, this.mFillAlpha);
            this.mStrokeLineCap = getStrokeLineCap(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.mStrokeLineCap);
            this.mStrokeLineJoin = getStrokeLineJoin(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.mStrokeLineJoin);
            this.mStrokeMiterlimit = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.mStrokeMiterlimit);
            this.mStrokeColor = TypedArrayUtils.getNamedComplexColor(typedArray, xmlPullParser, resources$Theme, "strokeColor", 3, 0);
            this.mStrokeAlpha = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeAlpha", 11, this.mStrokeAlpha);
            this.mStrokeWidth = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeWidth", 4, this.mStrokeWidth);
            this.mTrimPathEnd = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathEnd", 6, this.mTrimPathEnd);
            this.mTrimPathOffset = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathOffset", 7, this.mTrimPathOffset);
            this.mTrimPathStart = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathStart", 5, this.mTrimPathStart);
            this.mFillRule = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "fillType", 13, this.mFillRule);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VPath
    public boolean canApplyTheme() {
        return this.mThemeAttrs != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFillAlpha() {
        return this.mFillAlpha;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public int getFillColor() {
        return this.mFillColor.getColor();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getStrokeAlpha() {
        return this.mStrokeAlpha;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public int getStrokeColor() {
        return this.mStrokeColor.getColor();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getStrokeWidth() {
        return this.mStrokeWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTrimPathEnd() {
        return this.mTrimPathEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTrimPathOffset() {
        return this.mTrimPathOffset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTrimPathStart() {
        return this.mTrimPathStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void inflate(Resources resources, AttributeSet attributeSet, Resources$Theme resources$Theme, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_PATH);
        updateStateFromTypedArray(typedArrayObtainAttributes, xmlPullParser, resources$Theme);
        typedArrayObtainAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VObject
    public boolean isStateful() {
        return this.mFillColor.isStateful() || this.mStrokeColor.isStateful();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VObject
    public boolean onStateChanged(int[] iArr) {
        return this.mStrokeColor.onStateChanged(iArr) | this.mFillColor.onStateChanged(iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFillAlpha(float f8) {
        this.mFillAlpha = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFillColor(int i9) {
        this.mFillColor.setColor(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrokeAlpha(float f8) {
        this.mStrokeAlpha = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrokeColor(int i9) {
        this.mStrokeColor.setColor(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrokeWidth(float f8) {
        this.mStrokeWidth = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTrimPathEnd(float f8) {
        this.mTrimPathEnd = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTrimPathOffset(float f8) {
        this.mTrimPathOffset = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTrimPathStart(float f8) {
        this.mTrimPathStart = f8;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VPath
    public void applyTheme(Resources$Theme resources$Theme) {
    }

    public VectorDrawableCompat$VFullPath() {
        this.mStrokeWidth = 0.0f;
        this.mStrokeAlpha = 1.0f;
        this.mFillAlpha = 1.0f;
        this.mTrimPathStart = 0.0f;
        this.mTrimPathEnd = 1.0f;
        this.mTrimPathOffset = 0.0f;
        this.mStrokeLineCap = Paint$Cap.BUTT;
        this.mStrokeLineJoin = Paint$Join.MITER;
        this.mStrokeMiterlimit = 4.0f;
    }
}
