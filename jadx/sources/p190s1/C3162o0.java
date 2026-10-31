package p190s1;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;

/* JADX INFO: renamed from: s1.o0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3162o0 extends ViewGroup {
    public C3162o0(Context context) {
        super(context);
        setClipChildren(true);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof FrameLayout.LayoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new FrameLayout.LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof FrameLayout.LayoutParams ? new FrameLayout.LayoutParams((FrameLayout.LayoutParams) layoutParams) : new FrameLayout.LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        int paddingLeft = ((i12 - i10) - getPaddingLeft()) - getPaddingRight();
        int paddingTop = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
        for (int i14 = 0; i14 < getChildCount(); i14++) {
            View childAt = getChildAt(i14);
            if (childAt != null && childAt.getVisibility() != 8) {
                int paddingLeft2 = getPaddingLeft();
                int paddingTop2 = getPaddingTop();
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof FrameLayout.LayoutParams) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                    int i15 = layoutParams2.gravity;
                    paddingLeft2 = (i15 < 0 || (i15 & 5) != 5) ? paddingLeft2 + layoutParams2.leftMargin : ((paddingLeft - childAt.getMeasuredWidth()) - layoutParams2.rightMargin) + paddingLeft2;
                    int i16 = layoutParams2.gravity;
                    paddingTop2 = (i16 < 0 || (i16 & 80) != 80) ? paddingTop2 + layoutParams2.topMargin : paddingTop2 + ((paddingTop - childAt.getMeasuredHeight()) - layoutParams2.bottomMargin);
                }
                childAt.layout(paddingLeft2, paddingTop2, childAt.getMeasuredWidth() + paddingLeft2, childAt.getMeasuredHeight() + paddingTop2);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int iMax = Math.max(0, (View.MeasureSpec.getSize(i10) - getPaddingLeft()) - getPaddingRight());
        int iMax2 = Math.max(0, (View.MeasureSpec.getSize(i11) - getPaddingTop()) - getPaddingBottom());
        int iMax3 = 0;
        int iMax4 = 0;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            if (childAt != null && childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                int i13 = layoutParams.width;
                int iMakeMeasureSpec = i13 >= 0 ? View.MeasureSpec.makeMeasureSpec(i13, BasicMeasure.EXACTLY) : i13 == -1 ? View.MeasureSpec.makeMeasureSpec(iMax, BasicMeasure.EXACTLY) : View.MeasureSpec.makeMeasureSpec(iMax, Integer.MIN_VALUE);
                int i14 = layoutParams.height;
                childAt.measure(iMakeMeasureSpec, i14 >= 0 ? View.MeasureSpec.makeMeasureSpec(i14, BasicMeasure.EXACTLY) : i14 == -1 ? View.MeasureSpec.makeMeasureSpec(iMax2, BasicMeasure.EXACTLY) : View.MeasureSpec.makeMeasureSpec(iMax2, Integer.MIN_VALUE));
                iMax3 = Math.max(iMax3, childAt.getMeasuredWidth());
                iMax4 = Math.max(iMax4, childAt.getMeasuredHeight());
            }
        }
        setMeasuredDimension(View.resolveSize(getPaddingRight() + getPaddingLeft() + iMax3, i10), View.resolveSize(getPaddingBottom() + getPaddingTop() + iMax4, i11));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new FrameLayout.LayoutParams(getContext(), attributeSet);
    }
}
