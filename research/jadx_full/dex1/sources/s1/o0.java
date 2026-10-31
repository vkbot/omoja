package s1;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.FrameLayout$LayoutParams;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class o0 extends ViewGroup {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o0(Context context) {
        super(context);
        setClipChildren(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof FrameLayout$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return new FrameLayout$LayoutParams(-1, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof FrameLayout$LayoutParams ? new FrameLayout$LayoutParams((FrameLayout$LayoutParams) viewGroup$LayoutParams) : new FrameLayout$LayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        int paddingLeft = ((i11 - i9) - getPaddingLeft()) - getPaddingRight();
        int paddingTop = ((i12 - i10) - getPaddingTop()) - getPaddingBottom();
        for (int i13 = 0; i13 < getChildCount(); i13++) {
            View childAt = getChildAt(i13);
            if (childAt != null && childAt.getVisibility() != 8) {
                int paddingLeft2 = getPaddingLeft();
                int paddingTop2 = getPaddingTop();
                ViewGroup$LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof FrameLayout$LayoutParams) {
                    FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) layoutParams;
                    int i14 = frameLayout$LayoutParams.gravity;
                    paddingLeft2 = (i14 < 0 || (i14 & 5) != 5) ? paddingLeft2 + frameLayout$LayoutParams.leftMargin : ((paddingLeft - childAt.getMeasuredWidth()) - frameLayout$LayoutParams.rightMargin) + paddingLeft2;
                    int i15 = frameLayout$LayoutParams.gravity;
                    paddingTop2 = (i15 < 0 || (i15 & 80) != 80) ? paddingTop2 + frameLayout$LayoutParams.topMargin : paddingTop2 + ((paddingTop - childAt.getMeasuredHeight()) - frameLayout$LayoutParams.bottomMargin);
                }
                childAt.layout(paddingLeft2, paddingTop2, childAt.getMeasuredWidth() + paddingLeft2, childAt.getMeasuredHeight() + paddingTop2);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onMeasure(int i9, int i10) {
        int iMax = Math.max(0, (View$MeasureSpec.getSize(i9) - getPaddingLeft()) - getPaddingRight());
        int iMax2 = Math.max(0, (View$MeasureSpec.getSize(i10) - getPaddingTop()) - getPaddingBottom());
        int iMax3 = 0;
        int iMax4 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null && childAt.getVisibility() != 8) {
                ViewGroup$LayoutParams layoutParams = childAt.getLayoutParams();
                int i12 = layoutParams.width;
                int iMakeMeasureSpec = i12 >= 0 ? View$MeasureSpec.makeMeasureSpec(i12, BasicMeasure.EXACTLY) : i12 == -1 ? View$MeasureSpec.makeMeasureSpec(iMax, BasicMeasure.EXACTLY) : View$MeasureSpec.makeMeasureSpec(iMax, Integer.MIN_VALUE);
                int i13 = layoutParams.height;
                childAt.measure(iMakeMeasureSpec, i13 >= 0 ? View$MeasureSpec.makeMeasureSpec(i13, BasicMeasure.EXACTLY) : i13 == -1 ? View$MeasureSpec.makeMeasureSpec(iMax2, BasicMeasure.EXACTLY) : View$MeasureSpec.makeMeasureSpec(iMax2, Integer.MIN_VALUE));
                iMax3 = Math.max(iMax3, childAt.getMeasuredWidth());
                iMax4 = Math.max(iMax4, childAt.getMeasuredHeight());
            }
        }
        setMeasuredDimension(View.resolveSize(getPaddingRight() + getPaddingLeft() + iMax3, i9), View.resolveSize(getPaddingBottom() + getPaddingTop() + iMax4, i10));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new FrameLayout$LayoutParams(getContext(), attributeSet);
    }
}
