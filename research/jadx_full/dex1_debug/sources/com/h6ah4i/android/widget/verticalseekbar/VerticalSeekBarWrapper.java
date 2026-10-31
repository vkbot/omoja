package com.h6ah4i.android.widget.verticalseekbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VerticalSeekBarWrapper extends FrameLayout {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VerticalSeekBarWrapper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private VerticalSeekBar getChildSeekBar() {
        View childAt = getChildCount() > 0 ? getChildAt(0) : null;
        if (childAt instanceof VerticalSeekBar) {
            return (VerticalSeekBar) childAt;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9, int i10) {
        VerticalSeekBar childSeekBar = getChildSeekBar();
        if (childSeekBar != null) {
            boolean z8 = ViewCompat.getLayoutDirection(this) == 0;
            int rotationAngle = childSeekBar.getRotationAngle();
            int measuredWidth = childSeekBar.getMeasuredWidth();
            int measuredHeight = childSeekBar.getMeasuredHeight();
            int paddingRight = getPaddingRight() + getPaddingLeft();
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            float fMax = (Math.max(0, i9 - paddingRight) - measuredHeight) * 0.5f;
            ViewGroup$LayoutParams layoutParams = childSeekBar.getLayoutParams();
            int i11 = i10 - paddingBottom;
            layoutParams.width = Math.max(0, i11);
            layoutParams.height = -2;
            childSeekBar.setLayoutParams(layoutParams);
            childSeekBar.setPivotX(z8 ? 0.0f : Math.max(0, i11));
            childSeekBar.setPivotY(0.0f);
            if (rotationAngle == 90) {
                childSeekBar.setRotation(90.0f);
                if (z8) {
                    childSeekBar.setTranslationX(measuredHeight + fMax);
                    childSeekBar.setTranslationY(0.0f);
                    return;
                } else {
                    childSeekBar.setTranslationX(-fMax);
                    childSeekBar.setTranslationY(measuredWidth);
                    return;
                }
            }
            if (rotationAngle != 270) {
                return;
            }
            childSeekBar.setRotation(270.0f);
            if (z8) {
                childSeekBar.setTranslationX(fMax);
                childSeekBar.setTranslationY(measuredWidth);
            } else {
                childSeekBar.setTranslationX(-(measuredHeight + fMax));
                childSeekBar.setTranslationY(0.0f);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        int measuredWidth;
        int measuredHeight;
        VerticalSeekBar childSeekBar = getChildSeekBar();
        int mode = View$MeasureSpec.getMode(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        int size = View$MeasureSpec.getSize(i9);
        int size2 = View$MeasureSpec.getSize(i10);
        if (childSeekBar == null || mode == 1073741824) {
            super.onMeasure(i9, i10);
            return;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingRight), mode);
        int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(Math.max(0, size2 - paddingBottom), mode2);
        VerticalSeekBar childSeekBar2 = getChildSeekBar();
        if (childSeekBar2 != null ? childSeekBar2.c() : false) {
            childSeekBar.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
            measuredWidth = childSeekBar.getMeasuredHeight();
            measuredHeight = childSeekBar.getMeasuredWidth();
        } else {
            childSeekBar.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            measuredWidth = childSeekBar.getMeasuredWidth();
            measuredHeight = childSeekBar.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSizeAndState(measuredWidth + paddingRight, i9, 0), View.resolveSizeAndState(measuredHeight + paddingBottom, i10, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onSizeChanged(int i9, int i10, int i11, int i12) {
        VerticalSeekBar childSeekBar = getChildSeekBar();
        if (childSeekBar != null ? childSeekBar.c() : false) {
            VerticalSeekBar childSeekBar2 = getChildSeekBar();
            if (childSeekBar2 != null) {
                childSeekBar2.measure(View$MeasureSpec.makeMeasureSpec(Math.max(0, i10 - (getPaddingBottom() + getPaddingTop())), BasicMeasure.EXACTLY), View$MeasureSpec.makeMeasureSpec(Math.max(0, i9 - (getPaddingRight() + getPaddingLeft())), Integer.MIN_VALUE));
            }
            a(i9, i10);
            super.onSizeChanged(i9, i10, i11, i12);
            return;
        }
        VerticalSeekBar childSeekBar3 = getChildSeekBar();
        if (childSeekBar3 != null) {
            int paddingRight = getPaddingRight() + getPaddingLeft();
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) childSeekBar3.getLayoutParams();
            frameLayout$LayoutParams.width = -2;
            int i13 = i10 - paddingBottom;
            frameLayout$LayoutParams.height = Math.max(0, i13);
            childSeekBar3.setLayoutParams(frameLayout$LayoutParams);
            childSeekBar3.measure(0, 0);
            int measuredWidth = childSeekBar3.getMeasuredWidth();
            int i14 = i9 - paddingRight;
            childSeekBar3.measure(View$MeasureSpec.makeMeasureSpec(Math.max(0, i14), Integer.MIN_VALUE), View$MeasureSpec.makeMeasureSpec(Math.max(0, i13), BasicMeasure.EXACTLY));
            frameLayout$LayoutParams.gravity = 51;
            frameLayout$LayoutParams.leftMargin = (Math.max(0, i14) - measuredWidth) / 2;
            childSeekBar3.setLayoutParams(frameLayout$LayoutParams);
        }
        super.onSizeChanged(i9, i10, i11, i12);
    }
}
