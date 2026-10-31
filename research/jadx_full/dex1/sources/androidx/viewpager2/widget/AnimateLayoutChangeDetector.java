package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import j1.i;
import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class AnimateLayoutChangeDetector {
    private static final ViewGroup$MarginLayoutParams ZERO_MARGIN_LAYOUT_PARAMS;
    private LinearLayoutManager mLayoutManager;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = new ViewGroup$MarginLayoutParams(-1, -1);
        ZERO_MARGIN_LAYOUT_PARAMS = viewGroup$MarginLayoutParams;
        viewGroup$MarginLayoutParams.setMargins(0, 0, 0, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimateLayoutChangeDetector(@NonNull LinearLayoutManager linearLayoutManager) {
        this.mLayoutManager = linearLayoutManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean arePagesLaidOutContiguously() {
        int top;
        int i9;
        int bottom;
        int i10;
        int childCount = this.mLayoutManager.getChildCount();
        if (childCount == 0) {
            return true;
        }
        boolean z8 = this.mLayoutManager.getOrientation() == 0;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, childCount, 2);
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = this.mLayoutManager.getChildAt(i11);
            if (childAt == null) {
                i.l("null view contained in the view hierarchy");
                return false;
            }
            ViewGroup$LayoutParams layoutParams = childAt.getLayoutParams();
            ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = layoutParams instanceof ViewGroup$MarginLayoutParams ? (ViewGroup$MarginLayoutParams) layoutParams : ZERO_MARGIN_LAYOUT_PARAMS;
            int[] iArr2 = iArr[i11];
            if (z8) {
                top = childAt.getLeft();
                i9 = viewGroup$MarginLayoutParams.leftMargin;
            } else {
                top = childAt.getTop();
                i9 = viewGroup$MarginLayoutParams.topMargin;
            }
            iArr2[0] = top - i9;
            int[] iArr3 = iArr[i11];
            if (z8) {
                bottom = childAt.getRight();
                i10 = viewGroup$MarginLayoutParams.rightMargin;
            } else {
                bottom = childAt.getBottom();
                i10 = viewGroup$MarginLayoutParams.bottomMargin;
            }
            iArr3[1] = bottom + i10;
        }
        Arrays.sort(iArr, new AnimateLayoutChangeDetector$1(this));
        for (int i12 = 1; i12 < childCount; i12++) {
            if (iArr[i12 - 1][1] != iArr[i12][0]) {
                return false;
            }
        }
        int[] iArr4 = iArr[0];
        int i13 = iArr4[1];
        int i14 = iArr4[0];
        return i14 <= 0 && iArr[childCount - 1][1] >= i13 - i14;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean hasRunningChangingLayoutTransition(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                if (hasRunningChangingLayoutTransition(viewGroup.getChildAt(i9))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean mayHaveInterferingAnimations() {
        return (!arePagesLaidOutContiguously() || this.mLayoutManager.getChildCount() <= 1) && hasRunningChangingLayoutTransition();
    }

    private boolean hasRunningChangingLayoutTransition() {
        int childCount = this.mLayoutManager.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            if (hasRunningChangingLayoutTransition(this.mLayoutManager.getChildAt(i9))) {
                return true;
            }
        }
        return false;
    }
}
