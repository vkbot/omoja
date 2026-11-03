package com.android.launcher3.activity.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public class DownloadProgress extends ImageView {
    private static final int ROUND_CORNER = 24;
    private static final int START_ANGLE = -90;
    private Bitmap mBgBitmap;
    private RectF mBgRect;
    private final int mEndColor;
    private final Paint mMaskPaint;
    private final Paint mPaint;
    private float mProgress;
    private final int mRadius;
    private RectF mRect;
    private final Paint mRoundPaint;
    private final int mStartColor;
    private final Paint mWhitePaint;

    public void setProgress(float progress) {
        this.mProgress = progress;
    }

    public DownloadProgress(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DownloadProgress(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public DownloadProgress(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.DownloadProgress);
        this.mStartColor = typedArrayObtainStyledAttributes.getColor(2, -12945424);
        this.mEndColor = typedArrayObtainStyledAttributes.getColor(1, -12945424);
        this.mRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 36);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 6);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        float f = dimensionPixelSize;
        paint.setStrokeWidth(f);
        paint.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.mWhitePaint = paint2;
        paint2.setColor(Color.parseColor("#66FFFFFF"));
        paint2.setStrokeWidth(f);
        paint2.setStyle(Paint.Style.STROKE);
        Paint paint3 = new Paint(1);
        this.mRoundPaint = paint3;
        paint3.setStyle(Paint.Style.FILL);
        Paint paint4 = new Paint(1);
        this.mMaskPaint = paint4;
        paint4.setStyle(Paint.Style.FILL);
        paint4.setColor(-1040187392);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        float size = View.MeasureSpec.getSize(widthMeasureSpec);
        float f = size / 2.0f;
        float size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        float f2 = size2 / 2.0f;
        this.mPaint.setShader(new SweepGradient(f, f2, this.mStartColor, this.mEndColor));
        int i = this.mRadius;
        this.mRect = new RectF(f - i, f2 - i, f + i, f2 + i);
        this.mBgRect = new RectF(0.0f, 0.0f, size, size2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawRoundRect(this.mBgRect, 24.0f, 24.0f, this.mMaskPaint);
        canvas.drawRoundRect(this.mRect, getWidth() / 2.0f, getHeight() / 2.0f, this.mWhitePaint);
        canvas.drawArc(this.mRect, -90.0f, (int) ((this.mProgress * 360.0f) / 100.0f), false, this.mPaint);
    }
}
