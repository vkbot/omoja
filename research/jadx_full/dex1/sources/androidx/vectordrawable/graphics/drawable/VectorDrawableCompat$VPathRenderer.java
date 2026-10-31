package androidx.vectordrawable.graphics.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Join;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.Path$FillType;
import android.graphics.PathMeasure;
import android.graphics.Shader;
import androidx.collection.ArrayMap;
import androidx.core.content.res.ComplexColorCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VectorDrawableCompat$VPathRenderer {
    private static final Matrix IDENTITY_MATRIX = new Matrix();
    float mBaseHeight;
    float mBaseWidth;
    private int mChangingConfigurations;
    Paint mFillPaint;
    private final Matrix mFinalPathMatrix;
    Boolean mIsStateful;
    private final Path mPath;
    private PathMeasure mPathMeasure;
    private final Path mRenderPath;
    int mRootAlpha;
    final VectorDrawableCompat$VGroup mRootGroup;
    String mRootName;
    Paint mStrokePaint;
    final ArrayMap<String, Object> mVGTargetsMap;
    float mViewportHeight;
    float mViewportWidth;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VectorDrawableCompat$VPathRenderer(VectorDrawableCompat$VPathRenderer vectorDrawableCompat$VPathRenderer) {
        this.mFinalPathMatrix = new Matrix();
        this.mBaseWidth = 0.0f;
        this.mBaseHeight = 0.0f;
        this.mViewportWidth = 0.0f;
        this.mViewportHeight = 0.0f;
        this.mRootAlpha = 255;
        this.mRootName = null;
        this.mIsStateful = null;
        ArrayMap<String, Object> arrayMap = new ArrayMap<>();
        this.mVGTargetsMap = arrayMap;
        this.mRootGroup = new VectorDrawableCompat$VGroup(vectorDrawableCompat$VPathRenderer.mRootGroup, arrayMap);
        this.mPath = new Path(vectorDrawableCompat$VPathRenderer.mPath);
        this.mRenderPath = new Path(vectorDrawableCompat$VPathRenderer.mRenderPath);
        this.mBaseWidth = vectorDrawableCompat$VPathRenderer.mBaseWidth;
        this.mBaseHeight = vectorDrawableCompat$VPathRenderer.mBaseHeight;
        this.mViewportWidth = vectorDrawableCompat$VPathRenderer.mViewportWidth;
        this.mViewportHeight = vectorDrawableCompat$VPathRenderer.mViewportHeight;
        this.mChangingConfigurations = vectorDrawableCompat$VPathRenderer.mChangingConfigurations;
        this.mRootAlpha = vectorDrawableCompat$VPathRenderer.mRootAlpha;
        this.mRootName = vectorDrawableCompat$VPathRenderer.mRootName;
        String str = vectorDrawableCompat$VPathRenderer.mRootName;
        if (str != null) {
            arrayMap.put(str, this);
        }
        this.mIsStateful = vectorDrawableCompat$VPathRenderer.mIsStateful;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static float cross(float f8, float f9, float f10, float f11) {
        return (f8 * f11) - (f9 * f10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawGroupTree(VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup, Matrix matrix, Canvas canvas, int i9, int i10, ColorFilter colorFilter) {
        VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup2 = vectorDrawableCompat$VGroup;
        vectorDrawableCompat$VGroup2.mStackedMatrix.set(matrix);
        vectorDrawableCompat$VGroup2.mStackedMatrix.preConcat(vectorDrawableCompat$VGroup2.mLocalMatrix);
        canvas.save();
        int i11 = 0;
        while (i11 < vectorDrawableCompat$VGroup2.mChildren.size()) {
            VectorDrawableCompat$VObject vectorDrawableCompat$VObject = vectorDrawableCompat$VGroup2.mChildren.get(i11);
            if (vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VGroup) {
                drawGroupTree((VectorDrawableCompat$VGroup) vectorDrawableCompat$VObject, vectorDrawableCompat$VGroup2.mStackedMatrix, canvas, i9, i10, colorFilter);
            } else if (vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VPath) {
                drawPath(vectorDrawableCompat$VGroup2, (VectorDrawableCompat$VPath) vectorDrawableCompat$VObject, canvas, i9, i10, colorFilter);
            }
            i11++;
            vectorDrawableCompat$VGroup2 = vectorDrawableCompat$VGroup;
        }
        canvas.restore();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawPath(VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup, VectorDrawableCompat$VPath vectorDrawableCompat$VPath, Canvas canvas, int i9, int i10, ColorFilter colorFilter) {
        float f8 = i9 / this.mViewportWidth;
        float f9 = i10 / this.mViewportHeight;
        float fMin = Math.min(f8, f9);
        Matrix matrix = vectorDrawableCompat$VGroup.mStackedMatrix;
        this.mFinalPathMatrix.set(matrix);
        this.mFinalPathMatrix.postScale(f8, f9);
        float matrixScale = getMatrixScale(matrix);
        if (matrixScale == 0.0f) {
            return;
        }
        vectorDrawableCompat$VPath.toPath(this.mPath);
        Path path = this.mPath;
        this.mRenderPath.reset();
        if (vectorDrawableCompat$VPath.isClipPath()) {
            this.mRenderPath.setFillType(vectorDrawableCompat$VPath.mFillRule == 0 ? Path$FillType.WINDING : Path$FillType.EVEN_ODD);
            this.mRenderPath.addPath(path, this.mFinalPathMatrix);
            canvas.clipPath(this.mRenderPath);
            return;
        }
        VectorDrawableCompat$VFullPath vectorDrawableCompat$VFullPath = (VectorDrawableCompat$VFullPath) vectorDrawableCompat$VPath;
        float f10 = vectorDrawableCompat$VFullPath.mTrimPathStart;
        if (f10 != 0.0f || vectorDrawableCompat$VFullPath.mTrimPathEnd != 1.0f) {
            float f11 = vectorDrawableCompat$VFullPath.mTrimPathOffset;
            float f12 = (f10 + f11) % 1.0f;
            float f13 = (vectorDrawableCompat$VFullPath.mTrimPathEnd + f11) % 1.0f;
            if (this.mPathMeasure == null) {
                this.mPathMeasure = new PathMeasure();
            }
            this.mPathMeasure.setPath(this.mPath, false);
            float length = this.mPathMeasure.getLength();
            float f14 = f12 * length;
            float f15 = f13 * length;
            path.reset();
            PathMeasure pathMeasure = this.mPathMeasure;
            if (f14 > f15) {
                pathMeasure.getSegment(f14, length, path, true);
                this.mPathMeasure.getSegment(0.0f, f15, path, true);
            } else {
                pathMeasure.getSegment(f14, f15, path, true);
            }
            path.rLineTo(0.0f, 0.0f);
        }
        this.mRenderPath.addPath(path, this.mFinalPathMatrix);
        if (vectorDrawableCompat$VFullPath.mFillColor.willDraw()) {
            ComplexColorCompat complexColorCompat = vectorDrawableCompat$VFullPath.mFillColor;
            if (this.mFillPaint == null) {
                Paint paint = new Paint(1);
                this.mFillPaint = paint;
                paint.setStyle(Paint$Style.FILL);
            }
            Paint paint2 = this.mFillPaint;
            if (complexColorCompat.isGradient()) {
                Shader shader = complexColorCompat.getShader();
                shader.setLocalMatrix(this.mFinalPathMatrix);
                paint2.setShader(shader);
                paint2.setAlpha(Math.round(vectorDrawableCompat$VFullPath.mFillAlpha * 255.0f));
            } else {
                paint2.setShader(null);
                paint2.setAlpha(255);
                paint2.setColor(VectorDrawableCompat.applyAlpha(complexColorCompat.getColor(), vectorDrawableCompat$VFullPath.mFillAlpha));
            }
            paint2.setColorFilter(colorFilter);
            this.mRenderPath.setFillType(vectorDrawableCompat$VFullPath.mFillRule == 0 ? Path$FillType.WINDING : Path$FillType.EVEN_ODD);
            canvas.drawPath(this.mRenderPath, paint2);
        }
        if (vectorDrawableCompat$VFullPath.mStrokeColor.willDraw()) {
            ComplexColorCompat complexColorCompat2 = vectorDrawableCompat$VFullPath.mStrokeColor;
            if (this.mStrokePaint == null) {
                Paint paint3 = new Paint(1);
                this.mStrokePaint = paint3;
                paint3.setStyle(Paint$Style.STROKE);
            }
            Paint paint4 = this.mStrokePaint;
            Paint$Join paint$Join = vectorDrawableCompat$VFullPath.mStrokeLineJoin;
            if (paint$Join != null) {
                paint4.setStrokeJoin(paint$Join);
            }
            Paint$Cap paint$Cap = vectorDrawableCompat$VFullPath.mStrokeLineCap;
            if (paint$Cap != null) {
                paint4.setStrokeCap(paint$Cap);
            }
            paint4.setStrokeMiter(vectorDrawableCompat$VFullPath.mStrokeMiterlimit);
            if (complexColorCompat2.isGradient()) {
                Shader shader2 = complexColorCompat2.getShader();
                shader2.setLocalMatrix(this.mFinalPathMatrix);
                paint4.setShader(shader2);
                paint4.setAlpha(Math.round(vectorDrawableCompat$VFullPath.mStrokeAlpha * 255.0f));
            } else {
                paint4.setShader(null);
                paint4.setAlpha(255);
                paint4.setColor(VectorDrawableCompat.applyAlpha(complexColorCompat2.getColor(), vectorDrawableCompat$VFullPath.mStrokeAlpha));
            }
            paint4.setColorFilter(colorFilter);
            paint4.setStrokeWidth(vectorDrawableCompat$VFullPath.mStrokeWidth * fMin * matrixScale);
            canvas.drawPath(this.mRenderPath, paint4);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float getMatrixScale(Matrix matrix) {
        float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
        matrix.mapVectors(fArr);
        float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
        float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
        float fCross = cross(fArr[0], fArr[1], fArr[2], fArr[3]);
        float fMax = Math.max(fHypot, fHypot2);
        if (fMax > 0.0f) {
            return Math.abs(fCross) / fMax;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void draw(Canvas canvas, int i9, int i10, ColorFilter colorFilter) {
        drawGroupTree(this.mRootGroup, IDENTITY_MATRIX, canvas, i9, i10, colorFilter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRootAlpha() {
        return this.mRootAlpha;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isStateful() {
        if (this.mIsStateful == null) {
            this.mIsStateful = Boolean.valueOf(this.mRootGroup.isStateful());
        }
        return this.mIsStateful.booleanValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onStateChanged(int[] iArr) {
        return this.mRootGroup.onStateChanged(iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAlpha(float f8) {
        setRootAlpha((int) (f8 * 255.0f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRootAlpha(int i9) {
        this.mRootAlpha = i9;
    }

    public VectorDrawableCompat$VPathRenderer() {
        this.mFinalPathMatrix = new Matrix();
        this.mBaseWidth = 0.0f;
        this.mBaseHeight = 0.0f;
        this.mViewportWidth = 0.0f;
        this.mViewportHeight = 0.0f;
        this.mRootAlpha = 255;
        this.mRootName = null;
        this.mIsStateful = null;
        this.mVGTargetsMap = new ArrayMap<>();
        this.mRootGroup = new VectorDrawableCompat$VGroup();
        this.mPath = new Path();
        this.mRenderPath = new Path();
    }
}
