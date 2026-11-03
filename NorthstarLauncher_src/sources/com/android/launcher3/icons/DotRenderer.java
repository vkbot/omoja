package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.util.Log;
import android.view.ViewDebug;

/* JADX INFO: loaded from: classes.dex */
public class DotRenderer {
    private static final float SIZE_PERCENTAGE = 0.228f;
    private static final String TAG = "DotRenderer";
    private final Bitmap mBackgroundWithShadow;
    private final float mBitmapOffset;
    private final Paint mCirclePaint = new Paint(3);
    private final float mCircleRadius;
    private final float[] mLeftDotPosition;
    private final float[] mRightDotPosition;

    public static class DrawParams {

        @ViewDebug.ExportedProperty(category = "notification dot", formatToHexString = true)
        public int color;

        @ViewDebug.ExportedProperty(category = "notification dot")
        public Rect iconBounds = new Rect();

        @ViewDebug.ExportedProperty(category = "notification dot")
        public boolean leftAlign;

        @ViewDebug.ExportedProperty(category = "notification dot")
        public float scale;
    }

    public float[] getLeftDotPosition() {
        return this.mLeftDotPosition;
    }

    public float[] getRightDotPosition() {
        return this.mRightDotPosition;
    }

    public DotRenderer(int i, Path path, int i2) {
        int iRound = Math.round(i * SIZE_PERCENTAGE);
        ShadowGenerator.Builder builder = new ShadowGenerator.Builder(0);
        builder.ambientShadowAlpha = 88;
        Bitmap bitmapCreatePill = builder.setupBlurForSize(iRound).createPill(iRound, iRound);
        this.mBackgroundWithShadow = bitmapCreatePill;
        this.mCircleRadius = builder.radius;
        this.mBitmapOffset = (-bitmapCreatePill.getHeight()) * 0.5f;
        float f = i2;
        this.mLeftDotPosition = getPathPoint(path, f, -1.0f);
        this.mRightDotPosition = getPathPoint(path, f, 1.0f);
    }

    private static float[] getPathPoint(Path path, float f, float f2) {
        float f3 = f / 2.0f;
        float f4 = (f2 * f3) + f3;
        Path path2 = new Path();
        path2.moveTo(f3, f3);
        path2.lineTo((f2 * 1.0f) + f4, 0.0f);
        path2.lineTo(f4, -1.0f);
        path2.close();
        path2.op(path, Path.Op.INTERSECT);
        float[] fArr = new float[2];
        new PathMeasure(path2, false).getPosTan(0.0f, fArr, null);
        fArr[0] = fArr[0] / f;
        fArr[1] = fArr[1] / f;
        return fArr;
    }

    public void draw(Canvas canvas, DrawParams drawParams) {
        float fMin;
        if (drawParams == null) {
            Log.e(TAG, "Invalid null argument(s) passed in call to draw.");
            return;
        }
        canvas.save();
        Rect rect = drawParams.iconBounds;
        float[] fArr = drawParams.leftAlign ? this.mLeftDotPosition : this.mRightDotPosition;
        float fWidth = rect.left + (rect.width() * fArr[0]);
        float fHeight = rect.top + (rect.height() * fArr[1]);
        Rect clipBounds = canvas.getClipBounds();
        if (drawParams.leftAlign) {
            fMin = Math.max(0.0f, clipBounds.left - (this.mBitmapOffset + fWidth));
        } else {
            fMin = Math.min(0.0f, clipBounds.right - (fWidth - this.mBitmapOffset));
        }
        canvas.translate(fWidth + fMin, fHeight + Math.max(0.0f, clipBounds.top - (this.mBitmapOffset + fHeight)));
        canvas.scale(drawParams.scale, drawParams.scale);
        this.mCirclePaint.setColor(-16777216);
        Bitmap bitmap = this.mBackgroundWithShadow;
        float f = this.mBitmapOffset;
        canvas.drawBitmap(bitmap, f, f, this.mCirclePaint);
        this.mCirclePaint.setColor(drawParams.color);
        canvas.drawCircle(0.0f, 0.0f, this.mCircleRadius, this.mCirclePaint);
        canvas.restore();
    }
}
