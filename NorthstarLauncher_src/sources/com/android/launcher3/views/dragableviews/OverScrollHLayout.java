package com.android.launcher3.views.dragableviews;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.IntProperty;
import android.util.Property;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.core.view.NestedScrollingParent2;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.Workspace$$ExternalSyntheticLambda15;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class OverScrollHLayout extends FrameLayout implements NestedScrollingParent2, LocationNotifier {
    private static final int MAX_SCROLL = 200;
    public static final Property<View, Integer> SCROLL_X = new IntProperty<View>("scrollX") { // from class: com.android.launcher3.views.dragableviews.OverScrollHLayout.1
        @Override // android.util.IntProperty
        public void setValue(View object, int value) {
            object.scrollTo(value, object.getScrollY());
        }

        @Override // android.util.Property
        public Integer get(View object) {
            return Integer.valueOf(object.getScrollX());
        }
    };
    private Animator mAnimator;
    private final List<OnLocationChangedListener> mLocationChangedListeners;

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
    }

    public OverScrollHLayout(Context context) {
        this(context, null);
    }

    public OverScrollHLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mLocationChangedListeners = new ArrayList();
        setClipChildren(false);
        setClipToPadding(false);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View child, View target, int axes, int type) {
        return target instanceof RecyclerView;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View child, View target, int axes, int type) {
        cancelAnimator();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View target, int type) {
        animateBackIfNeeded();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed, int type) {
        getParent().requestDisallowInterceptTouchEvent(true);
        if (type == 0) {
            boolean z = dx > 0 && getScrollX() < 0 && !target.canScrollHorizontally(-1);
            boolean z2 = dx < 0 && !target.canScrollHorizontally(-1);
            boolean z3 = dx < 0 && getScrollX() > 0 && !target.canScrollHorizontally(1);
            boolean z4 = dx > 0 && !target.canScrollHorizontally(1);
            if (z || z2 || z3 || z4) {
                scrollBy(damping(dx), 0);
                consumed[0] = dx;
            }
        }
    }

    private int damping(int dx) {
        int iAbs = (int) (((double) Math.abs(getScrollX())) * 0.05d);
        return iAbs < 2 ? dx : dx / iAbs;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0004 A[PHI: r0
  0x0004: PHI (r0v2 int) = (r0v0 int), (r0v1 int) binds: [B:3:0x0002, B:6:0x0008] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public void scrollTo(int x, int y) {
        int i = -200;
        if (x < -200) {
            x = i;
        } else {
            i = 200;
            if (x > 200) {
                x = i;
            }
        }
        super.scrollTo(x, y);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        notifyLocationChanged();
    }

    @Override // android.view.View
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        notifyLocationChanged();
    }

    @Override // com.android.launcher3.views.dragableviews.LocationNotifier
    public void addOnLocationChangedListener(OnLocationChangedListener listener) {
        this.mLocationChangedListeners.add(listener);
        notifyLocationChanged();
    }

    @Override // com.android.launcher3.views.dragableviews.LocationNotifier
    public void removeOnLocationChangedListener(OnLocationChangedListener listener) {
        this.mLocationChangedListeners.remove(listener);
    }

    private void notifyLocationChanged() {
        this.mLocationChangedListeners.forEach(new Workspace$$ExternalSyntheticLambda15());
    }

    private void cancelAnimator() {
        Animator animator = this.mAnimator;
        if (animator == null || !animator.isStarted()) {
            return;
        }
        this.mAnimator.cancel();
        this.mAnimator = null;
    }

    private void animateBackIfNeeded() {
        cancelAnimator();
        if (getScrollX() != 0) {
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, (Property<OverScrollHLayout, Integer>) SCROLL_X, 0);
            this.mAnimator = objectAnimatorOfInt;
            objectAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
            this.mAnimator.setDuration(260L);
            this.mAnimator.start();
        }
    }
}
