package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$BaseSavedState;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class CoordinatorLayout$Behavior<V extends View> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CoordinatorLayout$Behavior() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static Object getTag(@NonNull View view) {
        return ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).mBehaviorTag;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setTag(@NonNull View view, @Nullable Object obj) {
        ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).mBehaviorTag = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean blocksInteractionBelow(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8) {
        return getScrimOpacity(coordinatorLayout, v8) > 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull Rect rect) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public int getScrimColor(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8) {
        return ViewCompat.MEASURED_STATE_MASK;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @FloatRange(from = 0.0d, to = 1.0d)
    public float getScrimOpacity(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8) {
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull MotionEvent motionEvent) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, int i9) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, int i9, int i10, int i11, int i12) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onNestedFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, float f8, float f9, boolean z8) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, float f8, float f9) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, int i9, int i10, @NonNull int[] iArr, int i11) {
        if (i11 == 0) {
            onNestedPreScroll(coordinatorLayout, v8, view, i9, i10, iArr);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, int i9, int i10, int i11, int i12, int i13, @NonNull int[] iArr) {
        iArr[0] = iArr[0] + i11;
        iArr[1] = iArr[1] + i12;
        onNestedScroll(coordinatorLayout, v8, view, i9, i10, i11, i12, i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onNestedScrollAccepted(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, @NonNull View view2, int i9, int i10) {
        if (i10 == 0) {
            onNestedScrollAccepted(coordinatorLayout, v8, view, view2, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull Rect rect, boolean z8) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8) {
        return View$BaseSavedState.EMPTY_STATE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, @NonNull View view2, int i9, int i10) {
        if (i10 == 0) {
            return onStartNestedScroll(coordinatorLayout, v8, view, view2, i9);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, int i9) {
        if (i9 == 0) {
            onStopNestedScroll(coordinatorLayout, v8, view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull MotionEvent motionEvent) {
        return false;
    }

    public CoordinatorLayout$Behavior(Context context, AttributeSet attributeSet) {
    }

    @Deprecated
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, int i9, int i10, @NonNull int[] iArr) {
    }

    @Deprecated
    public void onNestedScrollAccepted(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, @NonNull View view2, int i9) {
    }

    @Deprecated
    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view) {
    }

    @Deprecated
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, @NonNull View view2, int i9) {
        return false;
    }

    @Deprecated
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, int i9, int i10, int i11, int i12, int i13) {
        if (i13 == 0) {
            onNestedScroll(coordinatorLayout, v8, view, i9, i10, i11, i12);
        }
    }

    @Deprecated
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view, int i9, int i10, int i11, int i12) {
    }

    public void onDetachedFromLayoutParams() {
    }

    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams) {
    }

    @NonNull
    public WindowInsetsCompat onApplyWindowInsets(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull WindowInsetsCompat windowInsetsCompat) {
        return windowInsetsCompat;
    }

    public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull View view) {
    }

    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v8, @NonNull Parcelable parcelable) {
    }
}
