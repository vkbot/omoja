package com.android.launcher3.activity.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public class AppListIndicator extends View {
    private int mBackgroundColor;
    private int mCellCount;
    private int mCellMargin;
    private int mCellRadius;
    private int mCurrentPosition;
    private int mIndicatorColor;
    private Paint mPaint;
    private int mSelectedColor;
    private int mUnselectedColor;

    public AppListIndicator(Context context) {
        super(context);
        this.mCellRadius = 8;
        this.mCellMargin = 24;
        this.mIndicatorColor = Color.parseColor("#ffffffff");
        this.mBackgroundColor = Color.parseColor("#0D000000");
        init();
    }

    public AppListIndicator(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mCellRadius = 8;
        this.mCellMargin = 24;
        this.mIndicatorColor = Color.parseColor("#ffffffff");
        this.mBackgroundColor = Color.parseColor("#0D000000");
        init();
    }

    public AppListIndicator(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
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
        this.mSelectedColor = getResources().getColor(R.color.hicar_txt_app_list_indicator_color, null);
        this.mUnselectedColor = getResources().getColor(R.color.hicar_txt_app_list_indicator_bg_color);
    }

    public void setPageCount(int cellCount) {
        this.mCellCount = cellCount;
        invalidate();
    }

    public void setCurrentPosition(int currentPosition) {
        this.mCurrentPosition = currentPosition;
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = getMeasuredWidth();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int i = this.mCellRadius * 2;
        int i2 = this.mCellCount;
        int i3 = (measuredWidth - ((paddingLeft + (i * i2)) + (this.mCellMargin * (i2 - 1)))) / 2;
        int i4 = isLayoutRtl() ? (this.mCellCount - 1) - this.mCurrentPosition : this.mCurrentPosition;
        for (int i5 = 0; i5 < this.mCellCount; i5++) {
            if (i5 == i4) {
                this.mPaint.setColor(this.mSelectedColor);
            } else {
                this.mPaint.setColor(this.mUnselectedColor);
            }
            int paddingLeft2 = getPaddingLeft() + i3;
            int i6 = this.mCellRadius;
            canvas.drawCircle(paddingLeft2 + (i5 * i6 * 2) + (this.mCellMargin * i5) + i6, getHeight() / 2, this.mCellRadius, this.mPaint);
        }
    }

    private boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }
}
