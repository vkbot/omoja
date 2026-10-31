package androidx.constraintlayout.motion.widget;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionLayout$DevModeDraw {
    private static final int DEBUG_PATH_TICKS_PER_MS = 16;
    DashPathEffect mDashPathEffect;
    Paint mFillPaint;
    int mKeyFrameCount;
    float[] mKeyFramePoints;
    Paint mPaint;
    Paint mPaintGraph;
    Paint mPaintKeyframes;
    Path mPath;
    int[] mPathMode;
    float[] mPoints;
    private float[] mRectangle;
    int mShadowTranslate;
    Paint mTextPaint;
    final /* synthetic */ MotionLayout this$0;
    final int mRedColor = -21965;
    final int mKeyframeColor = -2067046;
    final int mGraphColor = -13391360;
    final int mShadowColor = 1996488704;
    final int mDiamondSize = 10;
    Rect mBounds = new Rect();
    boolean mPresentationMode = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionLayout$DevModeDraw(MotionLayout motionLayout) {
        this.this$0 = motionLayout;
        this.mShadowTranslate = 1;
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setColor(-21965);
        this.mPaint.setStrokeWidth(2.0f);
        Paint paint2 = this.mPaint;
        Paint$Style paint$Style = Paint$Style.STROKE;
        paint2.setStyle(paint$Style);
        Paint paint3 = new Paint();
        this.mPaintKeyframes = paint3;
        paint3.setAntiAlias(true);
        this.mPaintKeyframes.setColor(-2067046);
        this.mPaintKeyframes.setStrokeWidth(2.0f);
        this.mPaintKeyframes.setStyle(paint$Style);
        Paint paint4 = new Paint();
        this.mPaintGraph = paint4;
        paint4.setAntiAlias(true);
        this.mPaintGraph.setColor(-13391360);
        this.mPaintGraph.setStrokeWidth(2.0f);
        this.mPaintGraph.setStyle(paint$Style);
        Paint paint5 = new Paint();
        this.mTextPaint = paint5;
        paint5.setAntiAlias(true);
        this.mTextPaint.setColor(-13391360);
        this.mTextPaint.setTextSize(motionLayout.getContext().getResources().getDisplayMetrics().density * 12.0f);
        this.mRectangle = new float[8];
        Paint paint6 = new Paint();
        this.mFillPaint = paint6;
        paint6.setAntiAlias(true);
        DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
        this.mDashPathEffect = dashPathEffect;
        this.mPaintGraph.setPathEffect(dashPathEffect);
        this.mKeyFramePoints = new float[100];
        this.mPathMode = new int[50];
        if (this.mPresentationMode) {
            this.mPaint.setStrokeWidth(8.0f);
            this.mFillPaint.setStrokeWidth(8.0f);
            this.mPaintKeyframes.setStrokeWidth(8.0f);
            this.mShadowTranslate = 4;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawBasicPath(Canvas canvas) {
        canvas.drawLines(this.mPoints, this.mPaint);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawPathAsConfigured(Canvas canvas) {
        boolean z8 = false;
        boolean z9 = false;
        for (int i9 = 0; i9 < this.mKeyFrameCount; i9++) {
            int i10 = this.mPathMode[i9];
            if (i10 == 1) {
                z8 = true;
            }
            if (i10 == 0) {
                z9 = true;
            }
        }
        if (z8) {
            drawPathRelative(canvas);
        }
        if (z9) {
            drawPathCartesian(canvas);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawPathCartesian(Canvas canvas) {
        float[] fArr = this.mPoints;
        float f8 = fArr[0];
        float f9 = fArr[1];
        float f10 = fArr[fArr.length - 2];
        float f11 = fArr[fArr.length - 1];
        canvas.drawLine(Math.min(f8, f10), Math.max(f9, f11), Math.max(f8, f10), Math.max(f9, f11), this.mPaintGraph);
        canvas.drawLine(Math.min(f8, f10), Math.min(f9, f11), Math.min(f8, f10), Math.max(f9, f11), this.mPaintGraph);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawPathCartesianTicks(Canvas canvas, float f8, float f9) {
        float[] fArr = this.mPoints;
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[fArr.length - 2];
        float f13 = fArr[fArr.length - 1];
        float fMin = Math.min(f10, f12);
        float fMax = Math.max(f11, f13);
        float fMin2 = f8 - Math.min(f10, f12);
        float fMax2 = Math.max(f11, f13) - f9;
        String str = "" + (((int) (((double) ((fMin2 * 100.0f) / Math.abs(f12 - f10))) + 0.5d)) / 100.0f);
        getTextBounds(str, this.mTextPaint);
        canvas.drawText(str, ((fMin2 / 2.0f) - (this.mBounds.width() / 2)) + fMin, f9 - 20.0f, this.mTextPaint);
        canvas.drawLine(f8, f9, Math.min(f10, f12), f9, this.mPaintGraph);
        String str2 = "" + (((int) (((double) ((fMax2 * 100.0f) / Math.abs(f13 - f11))) + 0.5d)) / 100.0f);
        getTextBounds(str2, this.mTextPaint);
        canvas.drawText(str2, f8 + 5.0f, fMax - ((fMax2 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
        canvas.drawLine(f8, f9, f8, Math.max(f11, f13), this.mPaintGraph);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawPathRelative(Canvas canvas) {
        float[] fArr = this.mPoints;
        canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.mPaintGraph);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawPathRelativeTicks(Canvas canvas, float f8, float f9) {
        float[] fArr = this.mPoints;
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[fArr.length - 2];
        float f13 = fArr[fArr.length - 1];
        float fHypot = (float) Math.hypot(f10 - f12, f11 - f13);
        float f14 = f12 - f10;
        float f15 = f13 - f11;
        float f16 = (((f9 - f11) * f15) + ((f8 - f10) * f14)) / (fHypot * fHypot);
        float f17 = f10 + (f14 * f16);
        float f18 = (f16 * f15) + f11;
        Path path = new Path();
        path.moveTo(f8, f9);
        path.lineTo(f17, f18);
        float fHypot2 = (float) Math.hypot(f17 - f8, f18 - f9);
        String str = "" + (((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
        getTextBounds(str, this.mTextPaint);
        canvas.drawTextOnPath(str, path, (fHypot2 / 2.0f) - (this.mBounds.width() / 2), -20.0f, this.mTextPaint);
        canvas.drawLine(f8, f9, f17, f18, this.mPaintGraph);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawPathScreenTicks(Canvas canvas, float f8, float f9, int i9, int i10) {
        String str = "" + (((int) (((double) (((f8 - (i9 / 2)) * 100.0f) / (this.this$0.getWidth() - i9))) + 0.5d)) / 100.0f);
        getTextBounds(str, this.mTextPaint);
        canvas.drawText(str, ((f8 / 2.0f) - (this.mBounds.width() / 2)) + 0.0f, f9 - 20.0f, this.mTextPaint);
        canvas.drawLine(f8, f9, Math.min(0.0f, 1.0f), f9, this.mPaintGraph);
        String str2 = "" + (((int) (((double) (((f9 - (i10 / 2)) * 100.0f) / (this.this$0.getHeight() - i10))) + 0.5d)) / 100.0f);
        getTextBounds(str2, this.mTextPaint);
        canvas.drawText(str2, 5.0f + f8, 0.0f - ((f9 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
        canvas.drawLine(f8, f9, f8, Math.max(0.0f, 1.0f), this.mPaintGraph);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawRectangle(Canvas canvas, MotionController motionController) {
        this.mPath.reset();
        for (int i9 = 0; i9 <= 50; i9++) {
            motionController.buildRect(i9 / 50, this.mRectangle, 0);
            Path path = this.mPath;
            float[] fArr = this.mRectangle;
            path.moveTo(fArr[0], fArr[1]);
            Path path2 = this.mPath;
            float[] fArr2 = this.mRectangle;
            path2.lineTo(fArr2[2], fArr2[3]);
            Path path3 = this.mPath;
            float[] fArr3 = this.mRectangle;
            path3.lineTo(fArr3[4], fArr3[5]);
            Path path4 = this.mPath;
            float[] fArr4 = this.mRectangle;
            path4.lineTo(fArr4[6], fArr4[7]);
            this.mPath.close();
        }
        this.mPaint.setColor(1140850688);
        canvas.translate(2.0f, 2.0f);
        canvas.drawPath(this.mPath, this.mPaint);
        canvas.translate(-2.0f, -2.0f);
        this.mPaint.setColor(SupportMenu.CATEGORY_MASK);
        canvas.drawPath(this.mPath, this.mPaint);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawTicks(Canvas canvas, int i9, int i10, MotionController motionController) {
        int width;
        int height;
        View view = motionController.mView;
        if (view != null) {
            width = view.getWidth();
            height = motionController.mView.getHeight();
        } else {
            width = 0;
            height = 0;
        }
        for (int i11 = 1; i11 < i10 - 1; i11++) {
            if (i9 != 4 || this.mPathMode[i11 - 1] != 0) {
                float[] fArr = this.mKeyFramePoints;
                int i12 = i11 * 2;
                float f8 = fArr[i12];
                float f9 = fArr[i12 + 1];
                this.mPath.reset();
                this.mPath.moveTo(f8, f9 + 10.0f);
                this.mPath.lineTo(f8 + 10.0f, f9);
                this.mPath.lineTo(f8, f9 - 10.0f);
                this.mPath.lineTo(f8 - 10.0f, f9);
                this.mPath.close();
                int i13 = i11 - 1;
                motionController.getKeyFrame(i13);
                if (i9 == 4) {
                    int i14 = this.mPathMode[i13];
                    if (i14 == 1) {
                        drawPathRelativeTicks(canvas, f8 - 0.0f, f9 - 0.0f);
                    } else if (i14 == 0) {
                        drawPathCartesianTicks(canvas, f8 - 0.0f, f9 - 0.0f);
                    } else if (i14 == 2) {
                        drawPathScreenTicks(canvas, f8 - 0.0f, f9 - 0.0f, width, height);
                    }
                    canvas.drawPath(this.mPath, this.mFillPaint);
                }
                if (i9 == 2) {
                    drawPathRelativeTicks(canvas, f8 - 0.0f, f9 - 0.0f);
                }
                if (i9 == 3) {
                    drawPathCartesianTicks(canvas, f8 - 0.0f, f9 - 0.0f);
                }
                if (i9 == 6) {
                    drawPathScreenTicks(canvas, f8 - 0.0f, f9 - 0.0f, width, height);
                }
                canvas.drawPath(this.mPath, this.mFillPaint);
            }
        }
        float[] fArr2 = this.mPoints;
        if (fArr2.length > 1) {
            canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.mPaintKeyframes);
            float[] fArr3 = this.mPoints;
            canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.mPaintKeyframes);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void drawTranslation(Canvas canvas, float f8, float f9, float f10, float f11) {
        canvas.drawRect(f8, f9, f10, f11, this.mPaintGraph);
        canvas.drawLine(f8, f9, f10, f11, this.mPaintGraph);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void draw(Canvas canvas, HashMap<View, MotionController> map, int i9, int i10) {
        if (map == null || map.size() == 0) {
            return;
        }
        canvas.save();
        if (!this.this$0.isInEditMode() && (i10 & 1) == 2) {
            String str = this.this$0.getContext().getResources().getResourceName(MotionLayout.access$100(this.this$0)) + ":" + this.this$0.getProgress();
            canvas.drawText(str, 10.0f, this.this$0.getHeight() - 30, this.mTextPaint);
            canvas.drawText(str, 11.0f, this.this$0.getHeight() - 29, this.mPaint);
        }
        for (MotionController motionController : map.values()) {
            int drawPath = motionController.getDrawPath();
            if (i10 > 0 && drawPath == 0) {
                drawPath = 1;
            }
            if (drawPath != 0) {
                this.mKeyFrameCount = motionController.buildKeyFrames(this.mKeyFramePoints, this.mPathMode);
                if (drawPath >= 1) {
                    int i11 = i9 / 16;
                    float[] fArr = this.mPoints;
                    if (fArr == null || fArr.length != i11 * 2) {
                        this.mPoints = new float[i11 * 2];
                        this.mPath = new Path();
                    }
                    int i12 = this.mShadowTranslate;
                    canvas.translate(i12, i12);
                    this.mPaint.setColor(1996488704);
                    this.mFillPaint.setColor(1996488704);
                    this.mPaintKeyframes.setColor(1996488704);
                    this.mPaintGraph.setColor(1996488704);
                    motionController.buildPath(this.mPoints, i11);
                    drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                    this.mPaint.setColor(-21965);
                    this.mPaintKeyframes.setColor(-2067046);
                    this.mFillPaint.setColor(-2067046);
                    this.mPaintGraph.setColor(-13391360);
                    int i13 = this.mShadowTranslate;
                    canvas.translate(-i13, -i13);
                    drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                    if (drawPath == 5) {
                        drawRectangle(canvas, motionController);
                    }
                }
            }
        }
        canvas.restore();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void drawAll(Canvas canvas, int i9, int i10, MotionController motionController) {
        if (i9 == 4) {
            drawPathAsConfigured(canvas);
        }
        if (i9 == 2) {
            drawPathRelative(canvas);
        }
        if (i9 == 3) {
            drawPathCartesian(canvas);
        }
        drawBasicPath(canvas);
        drawTicks(canvas, i9, i10, motionController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getTextBounds(String str, Paint paint) {
        paint.getTextBounds(str, 0, str.length(), this.mBounds);
    }
}
