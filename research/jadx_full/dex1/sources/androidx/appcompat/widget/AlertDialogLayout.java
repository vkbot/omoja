package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.widget.LinearLayout$LayoutParams;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.R$id;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class AlertDialogLayout extends LinearLayoutCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AlertDialogLayout(@Nullable Context context) {
        super(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    private void forceUniformWidth(int i9, int i10) {
        int i11;
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(getMeasuredWidth(), BasicMeasure.EXACTLY);
        int i12 = 0;
        while (i12 < i9) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) childAt.getLayoutParams();
                if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).width == -1) {
                    int i13 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).height;
                    ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).height = childAt.getMeasuredHeight();
                    i11 = i10;
                    measureChildWithMargins(childAt, iMakeMeasureSpec, 0, i11, 0);
                    ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).height = i13;
                } else {
                    i11 = i10;
                }
            } else {
                i11 = i10;
            }
            i12++;
            i10 = i11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int resolveMinimumHeight(View view) {
        int minimumHeight = ViewCompat.getMinimumHeight(view);
        if (minimumHeight > 0) {
            return minimumHeight;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() == 1) {
                return resolveMinimumHeight(viewGroup.getChildAt(0));
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setChildFrame(View view, int i9, int i10, int i11, int i12) {
        view.layout(i9, i10, i11 + i9, i12 + i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean tryOnMeasure(int i9, int i10) {
        int iCombineMeasuredStates;
        int iResolveMinimumHeight;
        int measuredHeight;
        int measuredHeight2;
        int childCount = getChildCount();
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                int id = childAt.getId();
                if (id == R$id.topPanel) {
                    view = childAt;
                } else if (id == R$id.buttonPanel) {
                    view2 = childAt;
                } else {
                    if ((id != R$id.contentPanel && id != R$id.customPanel) || view3 != null) {
                        return false;
                    }
                    view3 = childAt;
                }
            }
        }
        int mode = View$MeasureSpec.getMode(i10);
        int size = View$MeasureSpec.getSize(i10);
        int mode2 = View$MeasureSpec.getMode(i9);
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (view != null) {
            view.measure(i9, 0);
            paddingBottom += view.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            iCombineMeasuredStates = 0;
        }
        if (view2 != null) {
            view2.measure(i9, 0);
            iResolveMinimumHeight = resolveMinimumHeight(view2);
            measuredHeight = view2.getMeasuredHeight() - iResolveMinimumHeight;
            paddingBottom += iResolveMinimumHeight;
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
        } else {
            iResolveMinimumHeight = 0;
            measuredHeight = 0;
        }
        if (view3 != null) {
            view3.measure(i9, mode == 0 ? 0 : View$MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode));
            measuredHeight2 = view3.getMeasuredHeight();
            paddingBottom += measuredHeight2;
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
        } else {
            measuredHeight2 = 0;
        }
        int i12 = size - paddingBottom;
        if (view2 != null) {
            int i13 = paddingBottom - iResolveMinimumHeight;
            int iMin = Math.min(i12, measuredHeight);
            if (iMin > 0) {
                i12 -= iMin;
                iResolveMinimumHeight += iMin;
            }
            view2.measure(i9, View$MeasureSpec.makeMeasureSpec(iResolveMinimumHeight, BasicMeasure.EXACTLY));
            paddingBottom = i13 + view2.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
        }
        if (view3 != null && i12 > 0) {
            view3.measure(i9, View$MeasureSpec.makeMeasureSpec(measuredHeight2 + i12, mode));
            paddingBottom = (paddingBottom - measuredHeight2) + view3.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
        }
        int iMax = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt2 = getChildAt(i14);
            if (childAt2.getVisibility() != 8) {
                iMax = Math.max(iMax, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(getPaddingRight() + getPaddingLeft() + iMax, i9, iCombineMeasuredStates), View.resolveSizeAndState(paddingBottom, i10, 0));
        if (mode2 == 1073741824) {
            return true;
        }
        forceUniformWidth(childCount, i10);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:32:0x00a0  */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int paddingLeft = getPaddingLeft();
        int i16 = i11 - i9;
        int paddingRight = i16 - getPaddingRight();
        int paddingRight2 = (i16 - paddingLeft) - getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i17 = gravity & 112;
        int i18 = gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int paddingTop = i17 != 16 ? i17 != 80 ? getPaddingTop() : ((getPaddingTop() + i12) - i10) - measuredHeight : (((i12 - i10) - measuredHeight) / 2) + getPaddingTop();
        Drawable dividerDrawable = getDividerDrawable();
        int intrinsicHeight = dividerDrawable == null ? 0 : dividerDrawable.getIntrinsicHeight();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt = getChildAt(i19);
            if (childAt != null && childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight2 = childAt.getMeasuredHeight();
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) childAt.getLayoutParams();
                int i20 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).gravity;
                if (i20 < 0) {
                    i20 = i18;
                }
                int absoluteGravity = GravityCompat.getAbsoluteGravity(i20, getLayoutDirection()) & 7;
                if (absoluteGravity != 1) {
                    if (absoluteGravity != 5) {
                        i15 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin + paddingLeft;
                    } else {
                        i13 = paddingRight - measuredWidth;
                        i14 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin;
                    }
                    int i21 = i15;
                    if (hasDividerBeforeChildAt(i19)) {
                        paddingTop += intrinsicHeight;
                    }
                    int i22 = paddingTop + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).topMargin;
                    setChildFrame(childAt, i21, i22, measuredWidth, measuredHeight2);
                    paddingTop = measuredHeight2 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).bottomMargin + i22;
                } else {
                    i13 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin;
                    i14 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin;
                }
                i15 = i13 - i14;
                int i23 = i15;
                if (hasDividerBeforeChildAt(i19)) {
                    paddingTop += intrinsicHeight;
                }
                int i24 = paddingTop + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).topMargin;
                setChildFrame(childAt, i23, i24, measuredWidth, measuredHeight2);
                paddingTop = measuredHeight2 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).bottomMargin + i24;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i9, int i10) {
        if (tryOnMeasure(i9, i10)) {
            return;
        }
        super.onMeasure(i9, i10);
    }

    public AlertDialogLayout(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
