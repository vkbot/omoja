package com.mega.hicar.view.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.mega.hicar.lib.R;

/* JADX INFO: loaded from: classes2.dex */
public class HicarAppListIndicator extends View {
    private int mBackgroundColor;
    private int mCellCount;
    private int mCellMargin;
    private int mCellRadius;
    private int mCurrentPosition;
    private int mIndicatorColor;
    private Paint mPaint;

    public HicarAppListIndicator(Context context) {
        super(context);
        this.mCellRadius = 8;
        this.mCellMargin = 24;
        this.mIndicatorColor = Color.parseColor("#ffffffff");
        this.mBackgroundColor = Color.parseColor("#0D000000");
        init();
    }

    public HicarAppListIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCellRadius = 8;
        this.mCellMargin = 24;
        this.mIndicatorColor = Color.parseColor("#ffffffff");
        this.mBackgroundColor = Color.parseColor("#0D000000");
        init();
    }

    public HicarAppListIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCellRadius = 8;
        this.mCellMargin = 24;
        this.mIndicatorColor = Color.parseColor("#ffffffff");
        this.mBackgroundColor = Color.parseColor("#0D000000");
        init();
    }

    public void init() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
    }

    public void setCellCount(int i) {
        this.mCellCount = i;
        invalidate();
    }

    public void setCurrentPosition(int i) {
        this.mCurrentPosition = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = getMeasuredWidth();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int i = this.mCellRadius * 2;
        int i2 = this.mCellCount;
        int i3 = (measuredWidth - ((paddingLeft + (i * i2)) + (this.mCellMargin * (i2 - 1)))) / 2;
        for (int i4 = 0; i4 < this.mCellCount; i4++) {
            if (i4 == this.mCurrentPosition) {
                this.mPaint.setColor(getResources().getColor(R.color.hicar_txt_app_list_indicator_color, null));
            } else {
                this.mPaint.setColor(getResources().getColor(R.color.hicar_txt_app_list_indicator_bg_color, null));
            }
            int paddingLeft2 = getPaddingLeft() + i3;
            int i5 = this.mCellRadius;
            canvas.drawCircle(paddingLeft2 + (i4 * i5 * 2) + (this.mCellMargin * i4) + i5, getHeight() / 2, this.mCellRadius, this.mPaint);
        }
    }
}
