package com.google.android.material.carousel;

import a3.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View$OnLayoutChangeListener;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.R$styleable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$LayoutManager;
import androidx.recyclerview.widget.RecyclerView$LayoutParams;
import androidx.recyclerview.widget.RecyclerView$Recycler;
import androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider;
import androidx.recyclerview.widget.RecyclerView$State;
import e0.q1;
import j1.i;
import j3.b;
import j3.c;
import j3.d;
import j3.e;
import j3.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CarouselLayoutManager extends RecyclerView$LayoutManager implements RecyclerView$SmoothScroller$ScrollVectorProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f1214b;
    public e c;
    public final View$OnLayoutChangeListener d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i9, int i10) {
        new b();
        this.d = new q1(1, this);
        this.f1214b = new h();
        requestLayout();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.e);
            typedArrayObtainStyledAttributes.getInt(0, 0);
            requestLayout();
            setOrientation(typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_orientation, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final boolean canScrollHorizontally() {
        return l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final boolean canScrollVertically() {
        return !l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView$State recyclerView$State) {
        getChildCount();
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider
    public final PointF computeScrollVectorForPosition(int i9) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView$State recyclerView$State) {
        getChildCount();
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeVerticalScrollRange(RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final RecyclerView$LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView$LayoutParams(-2, -2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        rect.centerY();
        if (l()) {
            rect.centerX();
        }
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float k(float f8, float f9) {
        return m() ? f8 - f9 : f8 + f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean l() {
        return this.c.f3041a == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean m() {
        return l() && getLayoutDirection() == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void measureChildWithMargins(View view, int i9, int i10) {
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        Context context = recyclerView.getContext();
        h hVar = this.f1214b;
        float dimension = hVar.f3042a;
        if (dimension <= 0.0f) {
            dimension = context.getResources().getDimension(2131099902);
        }
        hVar.f3042a = dimension;
        float dimension2 = hVar.f3043b;
        if (dimension2 <= 0.0f) {
            dimension2 = context.getResources().getDimension(2131099901);
        }
        hVar.f3043b = dimension2;
        requestLayout();
        recyclerView.addOnLayoutChangeListener(this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView$Recycler recyclerView$Recycler) {
        super.onDetachedFromWindow(recyclerView, recyclerView$Recycler);
        recyclerView.removeOnLayoutChangeListener(this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:18:0x0038  */
    /* JADX WARN: Code duplicated, block: B:20:0x003c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0046  */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final View onFocusSearchFailed(View view, int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        byte b9;
        if (getChildCount() == 0) {
            return null;
        }
        int i10 = this.c.f3041a;
        if (i9 == 1) {
            b9 = -1;
        } else if (i9 == 2) {
            b9 = 1;
        } else if (i9 != 17) {
            if (i9 != 33) {
                if (i9 != 66) {
                    if (i9 != 130) {
                        Log.d("CarouselLayoutManager", "Unknown focus request:" + i9);
                    } else if (i10 == 1) {
                        b9 = 1;
                    }
                    b9 = -2147483648;
                } else if (i10 != 0) {
                    b9 = -2147483648;
                } else if (m()) {
                    b9 = -1;
                } else {
                    b9 = 1;
                }
            } else if (i10 == 1) {
                b9 = -1;
            } else {
                b9 = -2147483648;
            }
        } else if (i10 != 0) {
            b9 = -2147483648;
        } else if (m()) {
            b9 = 1;
        } else {
            b9 = -1;
        }
        if (b9 == -2147483648) {
            return null;
        }
        if (b9 == -1) {
            if (getPosition(view) == 0) {
                return null;
            }
            int position = getPosition(getChildAt(0)) - 1;
            if (position < 0 || position >= getItemCount()) {
                return getChildAt(m() ? getChildCount() - 1 : 0);
            }
            this.c.d();
            throw null;
        }
        if (getPosition(view) == getItemCount() - 1) {
            return null;
        }
        int position2 = getPosition(getChildAt(getChildCount() - 1)) + 1;
        if (position2 < 0 || position2 >= getItemCount()) {
            return getChildAt(m() ? 0 : getChildCount() - 1);
        }
        this.c.d();
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onItemsAdded(RecyclerView recyclerView, int i9, int i10) {
        super.onItemsAdded(recyclerView, i9, i10);
        getItemCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onItemsChanged(RecyclerView recyclerView) {
        super.onItemsChanged(recyclerView);
        getItemCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onItemsRemoved(RecyclerView recyclerView, int i9, int i10) {
        super.onItemsRemoved(recyclerView, i9, i10);
        getItemCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (recyclerView$State.getItemCount() > 0) {
            if ((l() ? getWidth() : getHeight()) > 0.0f) {
                m();
                measureChildWithMargins(recyclerView$Recycler.getViewForPosition(0), 0, 0);
                throw null;
            }
        }
        removeAndRecycleAllViews(recyclerView$Recycler);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onLayoutCompleted(RecyclerView$State recyclerView$State) {
        super.onLayoutCompleted(recyclerView$State);
        if (getChildCount() == 0) {
            return;
        }
        getPosition(getChildAt(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z8, boolean z9) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int scrollHorizontallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (!l() || getChildCount() == 0 || i9 == 0) {
            return 0;
        }
        measureChildWithMargins(recyclerView$Recycler.getViewForPosition(0), 0, 0);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int scrollVerticallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (!canScrollVertically() || getChildCount() == 0 || i9 == 0) {
            return 0;
        }
        measureChildWithMargins(recyclerView$Recycler.getViewForPosition(0), 0, 0);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setOrientation(int i9) {
        e dVar;
        if (i9 != 0 && i9 != 1) {
            i.k(ai.onnxruntime.a.e(i9, "invalid orientation:"));
            return;
        }
        assertNotInLayoutOrScroll(null);
        e eVar = this.c;
        if (eVar == null || i9 != eVar.f3041a) {
            if (i9 == 0) {
                dVar = new d(this);
            } else {
                if (i9 != 1) {
                    i.k("invalid orientation");
                    return;
                }
                dVar = new c(this);
            }
            this.c = dVar;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView$State recyclerView$State, int i9) {
        j3.a aVar = new j3.a(recyclerView.getContext());
        aVar.setTargetPosition(i9);
        startSmoothScroll(aVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void scrollToPosition(int i9) {
    }

    public CarouselLayoutManager() {
        h hVar = new h();
        new b();
        this.d = new q1(1, this);
        this.f1214b = hVar;
        requestLayout();
        setOrientation(0);
    }
}
