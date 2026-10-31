package com.google.android.material.carousel;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.C0708R;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import p004a3.AbstractC0007a;
import p047e0.ViewOnLayoutChangeListenerC1409q1;
import p099j1.C1929i;
import p101j3.AbstractC1958e;
import p101j3.C1954a;
import p101j3.C1955b;
import p101j3.C1956c;
import p101j3.C1957d;
import p101j3.C1961h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class CarouselLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {

    /* JADX INFO: renamed from: b */
    public final C1961h f2226b;

    /* JADX INFO: renamed from: c */
    public AbstractC1958e f2227c;

    /* JADX INFO: renamed from: d */
    public final View.OnLayoutChangeListener f2228d;

    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        new C1955b();
        this.f2228d = new ViewOnLayoutChangeListenerC1409q1(1, this);
        this.f2226b = new C1961h();
        requestLayout();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0007a.f26e);
            typedArrayObtainStyledAttributes.getInt(0, 0);
            requestLayout();
            setOrientation(typedArrayObtainStyledAttributes.getInt(C0708R.styleable.RecyclerView_android_orientation, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        return m1787l();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        return !m1787l();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView.State state) {
        getChildCount();
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView.State state) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView.State state) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public final PointF computeScrollVectorForPosition(int i10) {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView.State state) {
        getChildCount();
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView.State state) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollRange(RecyclerView.State state) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        rect.centerY();
        if (m1787l()) {
            rect.centerX();
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    /* JADX INFO: renamed from: k */
    public final float m1786k(float f8, float f10) {
        return m1788m() ? f8 - f10 : f8 + f10;
    }

    /* JADX INFO: renamed from: l */
    public final boolean m1787l() {
        return this.f2227c.f5340a == 0;
    }

    /* JADX INFO: renamed from: m */
    public final boolean m1788m() {
        return m1787l() && getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void measureChildWithMargins(View view, int i10, int i11) {
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        Context context = recyclerView.getContext();
        C1961h c1961h = this.f2226b;
        float dimension = c1961h.f5341a;
        if (dimension <= 0.0f) {
            dimension = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
        }
        c1961h.f5341a = dimension;
        float dimension2 = c1961h.f5342b;
        if (dimension2 <= 0.0f) {
            dimension2 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
        }
        c1961h.f5342b = dimension2;
        requestLayout();
        recyclerView.addOnLayoutChangeListener(this.f2228d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        recyclerView.removeOnLayoutChangeListener(this.f2228d);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0038  */
    /* JADX WARN: Code duplicated, block: B:20:0x003c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0046  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final View onFocusSearchFailed(View view, int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        byte b10;
        if (getChildCount() == 0) {
            return null;
        }
        int i11 = this.f2227c.f5340a;
        if (i10 == 1) {
            b10 = -1;
        } else if (i10 == 2) {
            b10 = 1;
        } else if (i10 != 17) {
            if (i10 != 33) {
                if (i10 != 66) {
                    if (i10 != 130) {
                        Log.d("CarouselLayoutManager", "Unknown focus request:" + i10);
                    } else if (i11 == 1) {
                        b10 = 1;
                    }
                    b10 = -2147483648;
                } else if (i11 != 0) {
                    b10 = -2147483648;
                } else if (m1788m()) {
                    b10 = -1;
                } else {
                    b10 = 1;
                }
            } else if (i11 == 1) {
                b10 = -1;
            } else {
                b10 = -2147483648;
            }
        } else if (i11 != 0) {
            b10 = -2147483648;
        } else if (m1788m()) {
            b10 = 1;
        } else {
            b10 = -1;
        }
        if (b10 == -2147483648) {
            return null;
        }
        if (b10 == -1) {
            if (getPosition(view) == 0) {
                return null;
            }
            int position = getPosition(getChildAt(0)) - 1;
            if (position < 0 || position >= getItemCount()) {
                return getChildAt(m1788m() ? getChildCount() - 1 : 0);
            }
            this.f2227c.mo3055d();
            throw null;
        }
        if (getPosition(view) == getItemCount() - 1) {
            return null;
        }
        int position2 = getPosition(getChildAt(getChildCount() - 1)) + 1;
        if (position2 < 0 || position2 >= getItemCount()) {
            return getChildAt(m1788m() ? 0 : getChildCount() - 1);
        }
        this.f2227c.mo3055d();
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsAdded(recyclerView, i10, i11);
        getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsChanged(RecyclerView recyclerView) {
        super.onItemsChanged(recyclerView);
        getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsRemoved(recyclerView, i10, i11);
        getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() > 0) {
            if ((m1787l() ? getWidth() : getHeight()) > 0.0f) {
                m1788m();
                measureChildWithMargins(recycler.getViewForPosition(0), 0, 0);
                throw null;
            }
        }
        removeAndRecycleAllViews(recycler);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        if (getChildCount() == 0) {
            return;
        }
        getPosition(getChildAt(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z9, boolean z10) {
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!m1787l() || getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        measureChildWithMargins(recycler.getViewForPosition(0), 0, 0);
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!canScrollVertically() || getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        measureChildWithMargins(recycler.getViewForPosition(0), 0, 0);
        throw null;
    }

    public final void setOrientation(int i10) {
        AbstractC1958e c1957d;
        if (i10 != 0 && i10 != 1) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "invalid orientation:"));
            return;
        }
        assertNotInLayoutOrScroll(null);
        AbstractC1958e abstractC1958e = this.f2227c;
        if (abstractC1958e == null || i10 != abstractC1958e.f5340a) {
            if (i10 == 0) {
                c1957d = new C1957d(this);
            } else {
                if (i10 != 1) {
                    C1929i.m3029k("invalid orientation");
                    return;
                }
                c1957d = new C1956c(this);
            }
            this.f2227c = c1957d;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        C1954a c1954a = new C1954a(recyclerView.getContext());
        c1954a.setTargetPosition(i10);
        startSmoothScroll(c1954a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int i10) {
    }

    public CarouselLayoutManager() {
        C1961h c1961h = new C1961h();
        new C1955b();
        this.f2228d = new ViewOnLayoutChangeListenerC1409q1(1, this);
        this.f2226b = c1961h;
        requestLayout();
        setOrientation(0);
    }
}
