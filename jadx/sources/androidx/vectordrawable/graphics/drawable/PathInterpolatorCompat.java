package androidx.vectordrawable.graphics.drawable;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public class PathInterpolatorCompat implements Interpolator {
    public static final double EPSILON = 1.0E-5d;
    public static final int MAX_NUM_POINTS = 3000;
    private static final float PRECISION = 0.002f;

    /* JADX INFO: renamed from: mX */
    private float[] f523mX;

    /* JADX INFO: renamed from: mY */
    private float[] f524mY;

    public PathInterpolatorCompat(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PATH_INTERPOLATOR);
        parseInterpolatorFromTypeArray(typedArrayObtainAttributes, xmlPullParser);
        typedArrayObtainAttributes.recycle();
    }

    private void initCubic(float f8, float f10, float f11, float f12) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f8, f10, f11, f12, 1.0f, 1.0f);
        initPath(path);
    }

    private void initPath(Path path) {
        int i10 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = Math.min(MAX_NUM_POINTS, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.f523mX = new float[iMin];
        this.f524mY = new float[iMin];
        float[] fArr = new float[2];
        for (int i11 = 0; i11 < iMin; i11++) {
            pathMeasure.getPosTan((i11 * length) / (iMin - 1), fArr, null);
            this.f523mX[i11] = fArr[0];
            this.f524mY[i11] = fArr[1];
        }
        if (Math.abs(this.f523mX[0]) <= 1.0E-5d && Math.abs(this.f524mY[0]) <= 1.0E-5d) {
            int i12 = iMin - 1;
            if (Math.abs(this.f523mX[i12] - 1.0f) <= 1.0E-5d && Math.abs(this.f524mY[i12] - 1.0f) <= 1.0E-5d) {
                float f8 = 0.0f;
                int i13 = 0;
                while (i10 < iMin) {
                    float[] fArr2 = this.f523mX;
                    int i14 = i13 + 1;
                    float f10 = fArr2[i13];
                    if (f10 < f8) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f10);
                    }
                    fArr2[i10] = f10;
                    i10++;
                    f8 = f10;
                    i13 = i14;
                }
                if (pathMeasure.nextContour()) {
                    C1929i.m3029k("The Path should be continuous, can't have 2+ contours");
                    return;
                }
                return;
            }
        }
        int i15 = iMin - 1;
        throw new IllegalArgumentException("The Path must start at (0,0) and end at (1,1) start: " + this.f523mX[0] + "," + this.f524mY[0] + " end:" + this.f523mX[i15] + "," + this.f524mY[i15]);
    }

    private void initQuad(float f8, float f10) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f8, f10, 1.0f, 1.0f);
        initPath(path);
    }

    private void parseInterpolatorFromTypeArray(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
            String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "pathData", 4);
            Path pathCreatePathFromPathData = PathParser.createPathFromPathData(namedString);
            if (pathCreatePathFromPathData == null) {
                throw new InflateException(AbstractC0074a.m161l("The path is null, which is created from ", namedString));
            }
            initPath(pathCreatePathFromPathData);
            return;
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
        float namedFloat2 = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
        boolean zHasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, "controlX2");
        if (zHasAttribute != TypedArrayUtils.hasAttribute(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (zHasAttribute) {
            initCubic(namedFloat, namedFloat2, TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX2", 2, 0.0f), TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
        } else {
            initQuad(namedFloat, namedFloat2);
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f8) {
        float[] fArr;
        if (f8 <= 0.0f) {
            return 0.0f;
        }
        if (f8 >= 1.0f) {
            return 1.0f;
        }
        int length = this.f523mX.length - 1;
        int i10 = 0;
        while (true) {
            int i11 = length - i10;
            fArr = this.f523mX;
            if (i11 <= 1) {
                break;
            }
            int i12 = (i10 + length) / 2;
            if (f8 < fArr[i12]) {
                length = i12;
            } else {
                i10 = i12;
            }
        }
        float f10 = fArr[length];
        float f11 = fArr[i10];
        float f12 = f10 - f11;
        float[] fArr2 = this.f524mY;
        if (f12 == 0.0f) {
            return fArr2[i10];
        }
        float f13 = fArr2[i10];
        return AbstractC0074a.m151b(fArr2[length], f13, (f8 - f11) / f12, f13);
    }

    public PathInterpolatorCompat(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }
}
