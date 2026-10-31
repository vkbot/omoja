package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import p047e0.C1421s3;
import p097j.C1897i;
import p153o2.C2575c;
import p153o2.C2578f;
import p153o2.C2579g;
import p153o2.C2580h;
import p153o2.C2581i;
import p153o2.InterfaceC2573a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements InterfaceC2573a, RecyclerView.SmoothScroller.ScrollVectorProvider {

    /* JADX INFO: renamed from: z */
    public static final Rect f2016z = new Rect();

    /* JADX INFO: renamed from: b */
    public int f2017b;

    /* JADX INFO: renamed from: c */
    public final int f2018c;

    /* JADX INFO: renamed from: d */
    public final int f2019d;

    /* JADX INFO: renamed from: f */
    public boolean f2021f;

    /* JADX INFO: renamed from: g */
    public boolean f2022g;

    /* JADX INFO: renamed from: j */
    public RecyclerView.Recycler f2025j;

    /* JADX INFO: renamed from: k */
    public RecyclerView.State f2026k;

    /* JADX INFO: renamed from: l */
    public C2580h f2027l;

    /* JADX INFO: renamed from: m */
    public final C2578f f2028m;

    /* JADX INFO: renamed from: n */
    public OrientationHelper f2029n;

    /* JADX INFO: renamed from: o */
    public OrientationHelper f2030o;

    /* JADX INFO: renamed from: p */
    public C2581i f2031p;

    /* JADX INFO: renamed from: q */
    public int f2032q;

    /* JADX INFO: renamed from: r */
    public int f2033r;

    /* JADX INFO: renamed from: s */
    public int f2034s;

    /* JADX INFO: renamed from: t */
    public int f2035t;

    /* JADX INFO: renamed from: u */
    public final SparseArray f2036u;

    /* JADX INFO: renamed from: v */
    public final Context f2037v;

    /* JADX INFO: renamed from: w */
    public View f2038w;

    /* JADX INFO: renamed from: x */
    public int f2039x;

    /* JADX INFO: renamed from: y */
    public final C1897i f2040y;

    /* JADX INFO: renamed from: e */
    public final int f2020e = -1;

    /* JADX INFO: renamed from: h */
    public List f2023h = new ArrayList();

    /* JADX INFO: renamed from: i */
    public final C1421s3 f2024i = new C1421s3(this);

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        C2578f c2578f = new C2578f(this);
        this.f2028m = c2578f;
        this.f2032q = -1;
        this.f2033r = Integer.MIN_VALUE;
        this.f2034s = Integer.MIN_VALUE;
        this.f2035t = Integer.MIN_VALUE;
        this.f2036u = new SparseArray();
        this.f2039x = -1;
        this.f2040y = new C1897i();
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i10, i11);
        int i12 = properties.orientation;
        if (i12 != 0) {
            if (i12 == 1) {
                if (properties.reverseLayout) {
                    m1730w(3);
                } else {
                    m1730w(2);
                }
            }
        } else if (properties.reverseLayout) {
            m1730w(1);
        } else {
            m1730w(0);
        }
        int i13 = this.f2018c;
        if (i13 != 1) {
            if (i13 == 0) {
                removeAllViews();
                this.f2023h.clear();
                C2578f.m4023b(c2578f);
                c2578f.f7172d = 0;
            }
            this.f2018c = 1;
            this.f2029n = null;
            this.f2030o = null;
            requestLayout();
        }
        if (this.f2019d != 4) {
            removeAllViews();
            this.f2023h.clear();
            C2578f.m4023b(c2578f);
            c2578f.f7172d = 0;
            this.f2019d = 4;
            requestLayout();
        }
        this.f2037v = context;
    }

    public static boolean isMeasurementUpToDate(int i10, int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (i12 > 0 && i10 != i12) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i10;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i10;
        }
        return true;
    }

    /* JADX INFO: renamed from: A */
    public final void m1717A(C2578f c2578f, boolean z9, boolean z10) {
        if (z10) {
            m1729v();
        } else {
            this.f2027l.f7187b = false;
        }
        if (mo1704i() || !this.f2021f) {
            this.f2027l.f7186a = c2578f.f7171c - this.f2029n.getStartAfterPadding();
        } else {
            this.f2027l.f7186a = (this.f2038w.getWidth() - c2578f.f7171c) - this.f2029n.getStartAfterPadding();
        }
        C2580h c2580h = this.f2027l;
        c2580h.f7189d = c2578f.f7169a;
        c2580h.f7193h = -1;
        c2580h.f7190e = c2578f.f7171c;
        c2580h.f7191f = Integer.MIN_VALUE;
        int i10 = c2578f.f7170b;
        c2580h.f7188c = i10;
        if (!z9 || i10 <= 0) {
            return;
        }
        int size = this.f2023h.size();
        int i11 = c2578f.f7170b;
        if (size > i11) {
            C2575c c2575c = (C2575c) this.f2023h.get(i11);
            C2580h c2580h2 = this.f2027l;
            c2580h2.f7188c--;
            c2580h2.f7189d -= c2575c.f7146h;
        }
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: a */
    public final void mo1696a(View view, int i10, int i11, C2575c c2575c) {
        calculateItemDecorationsForChild(view, f2016z);
        if (mo1704i()) {
            int rightDecorationWidth = getRightDecorationWidth(view) + getLeftDecorationWidth(view);
            c2575c.f7143e += rightDecorationWidth;
            c2575c.f7144f += rightDecorationWidth;
            return;
        }
        int bottomDecorationHeight = getBottomDecorationHeight(view) + getTopDecorationHeight(view);
        c2575c.f7143e += bottomDecorationHeight;
        c2575c.f7144f += bottomDecorationHeight;
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: c */
    public final View mo1698c(int i10) {
        return mo1701f(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        if (this.f2018c == 0) {
            return mo1704i();
        }
        if (!mo1704i()) {
            return true;
        }
        int width = getWidth();
        View view = this.f2038w;
        return width > (view != null ? view.getWidth() : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        if (this.f2018c == 0) {
            return !mo1704i();
        }
        if (!mo1704i()) {
            int height = getHeight();
            View view = this.f2038w;
            if (height <= (view != null ? view.getHeight() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof C2579g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public final int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        m1718k();
        View viewM1720m = m1720m(itemCount);
        View viewM1722o = m1722o(itemCount);
        if (state.getItemCount() == 0 || viewM1720m == null || viewM1722o == null) {
            return 0;
        }
        return Math.min(this.f2029n.getTotalSpace(), this.f2029n.getDecoratedEnd(viewM1722o) - this.f2029n.getDecoratedStart(viewM1720m));
    }

    public final int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View viewM1720m = m1720m(itemCount);
        View viewM1722o = m1722o(itemCount);
        if (state.getItemCount() != 0 && viewM1720m != null && viewM1722o != null) {
            int position = getPosition(viewM1720m);
            int position2 = getPosition(viewM1722o);
            int iAbs = Math.abs(this.f2029n.getDecoratedEnd(viewM1722o) - this.f2029n.getDecoratedStart(viewM1720m));
            int[] iArr = (int[]) this.f2024i.f3415e;
            int i10 = iArr[position];
            if (i10 != 0 && i10 != -1) {
                return Math.round((i10 * (iAbs / ((iArr[position2] - i10) + 1))) + (this.f2029n.getStartAfterPadding() - this.f2029n.getDecoratedStart(viewM1720m)));
            }
        }
        return 0;
    }

    public final int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() != 0) {
            int itemCount = state.getItemCount();
            View viewM1720m = m1720m(itemCount);
            View viewM1722o = m1722o(itemCount);
            if (state.getItemCount() != 0 && viewM1720m != null && viewM1722o != null) {
                View viewM1724q = m1724q(0, getChildCount());
                int position = viewM1724q == null ? -1 : getPosition(viewM1724q);
                View viewM1724q2 = m1724q(getChildCount() - 1, -1);
                return (int) ((Math.abs(this.f2029n.getDecoratedEnd(viewM1722o) - this.f2029n.getDecoratedStart(viewM1720m)) / (((viewM1724q2 != null ? getPosition(viewM1724q2) : -1) - position) + 1)) * state.getItemCount());
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public final PointF computeScrollVectorForPosition(int i10) {
        View childAt;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        int i11 = i10 < getPosition(childAt) ? -1 : 1;
        return mo1704i() ? new PointF(0.0f, i11) : new PointF(i11, 0.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: d */
    public final int mo1699d(int i10, int i11, int i12) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), i11, i12, canScrollHorizontally());
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: e */
    public final void mo1700e(int i10, View view) {
        this.f2036u.put(i10, view);
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: f */
    public final View mo1701f(int i10) {
        View view = (View) this.f2036u.get(i10);
        return view != null ? view : this.f2025j.getViewForPosition(i10);
    }

    public final int fixLayoutEndGap(int i10, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z9) {
        int iM1726s;
        int endAfterPadding;
        if (mo1704i() || !this.f2021f) {
            int endAfterPadding2 = this.f2029n.getEndAfterPadding() - i10;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            iM1726s = -m1726s(-endAfterPadding2, recycler, state);
        } else {
            int startAfterPadding = i10 - this.f2029n.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            iM1726s = m1726s(startAfterPadding, recycler, state);
        }
        int i11 = i10 + iM1726s;
        if (!z9 || (endAfterPadding = this.f2029n.getEndAfterPadding() - i11) <= 0) {
            return iM1726s;
        }
        this.f2029n.offsetChildren(endAfterPadding);
        return endAfterPadding + iM1726s;
    }

    public final int fixLayoutStartGap(int i10, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z9) {
        int iM1726s;
        int startAfterPadding;
        if (mo1704i() || !this.f2021f) {
            int startAfterPadding2 = i10 - this.f2029n.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            iM1726s = -m1726s(startAfterPadding2, recycler, state);
        } else {
            int endAfterPadding = this.f2029n.getEndAfterPadding() - i10;
            if (endAfterPadding <= 0) {
                return 0;
            }
            iM1726s = m1726s(-endAfterPadding, recycler, state);
        }
        int i11 = i10 + iM1726s;
        if (!z9 || (startAfterPadding = i11 - this.f2029n.getStartAfterPadding()) <= 0) {
            return iM1726s;
        }
        this.f2029n.offsetChildren(-startAfterPadding);
        return iM1726s - startAfterPadding;
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: g */
    public final int mo1702g(View view, int i10, int i11) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (mo1704i()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return bottomDecorationHeight + topDecorationHeight;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        C2579g c2579g = new C2579g(-2, -2);
        c2579g.f7177b = 0.0f;
        c2579g.f7178c = 1.0f;
        c2579g.f7179d = -1;
        c2579g.f7180e = -1.0f;
        c2579g.f7183h = ViewCompat.MEASURED_SIZE_MASK;
        c2579g.f7184i = ViewCompat.MEASURED_SIZE_MASK;
        return c2579g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        C2579g c2579g = new C2579g(context, attributeSet);
        c2579g.f7177b = 0.0f;
        c2579g.f7178c = 1.0f;
        c2579g.f7179d = -1;
        c2579g.f7180e = -1.0f;
        c2579g.f7183h = ViewCompat.MEASURED_SIZE_MASK;
        c2579g.f7184i = ViewCompat.MEASURED_SIZE_MASK;
        return c2579g;
    }

    @Override // p153o2.InterfaceC2573a
    public final int getAlignContent() {
        return 5;
    }

    @Override // p153o2.InterfaceC2573a
    public final int getAlignItems() {
        return this.f2019d;
    }

    @Override // p153o2.InterfaceC2573a
    public final int getFlexDirection() {
        return this.f2017b;
    }

    @Override // p153o2.InterfaceC2573a
    public final int getFlexItemCount() {
        return this.f2026k.getItemCount();
    }

    @Override // p153o2.InterfaceC2573a
    public final List getFlexLinesInternal() {
        return this.f2023h;
    }

    @Override // p153o2.InterfaceC2573a
    public final int getFlexWrap() {
        return this.f2018c;
    }

    @Override // p153o2.InterfaceC2573a
    public final int getLargestMainSize() {
        if (this.f2023h.size() == 0) {
            return 0;
        }
        int size = this.f2023h.size();
        int iMax = Integer.MIN_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            iMax = Math.max(iMax, ((C2575c) this.f2023h.get(i10)).f7143e);
        }
        return iMax;
    }

    @Override // p153o2.InterfaceC2573a
    public final int getMaxLine() {
        return this.f2020e;
    }

    @Override // p153o2.InterfaceC2573a
    public final int getSumOfCrossSize() {
        int size = this.f2023h.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += ((C2575c) this.f2023h.get(i11)).f7145g;
        }
        return i10;
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: h */
    public final int mo1703h(int i10, int i11, int i12) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), i11, i12, canScrollVertically());
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: i */
    public final boolean mo1704i() {
        int i10 = this.f2017b;
        return i10 == 0 || i10 == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: j */
    public final int mo1705j(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (mo1704i()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return rightDecorationWidth + leftDecorationWidth;
    }

    /* JADX INFO: renamed from: k */
    public final void m1718k() {
        if (this.f2029n != null) {
            return;
        }
        boolean zMo1704i = mo1704i();
        int i10 = this.f2018c;
        if (zMo1704i) {
            if (i10 == 0) {
                this.f2029n = OrientationHelper.createHorizontalHelper(this);
                this.f2030o = OrientationHelper.createVerticalHelper(this);
                return;
            } else {
                this.f2029n = OrientationHelper.createVerticalHelper(this);
                this.f2030o = OrientationHelper.createHorizontalHelper(this);
                return;
            }
        }
        if (i10 == 0) {
            this.f2029n = OrientationHelper.createVerticalHelper(this);
            this.f2030o = OrientationHelper.createHorizontalHelper(this);
        } else {
            this.f2029n = OrientationHelper.createHorizontalHelper(this);
            this.f2030o = OrientationHelper.createVerticalHelper(this);
        }
    }

    /* JADX INFO: renamed from: l */
    public final int m1719l(RecyclerView.Recycler recycler, RecyclerView.State state, C2580h c2580h) {
        int i10;
        boolean z9;
        int i11;
        int i12;
        Rect rect;
        int i13;
        int i14;
        int i15;
        Rect rect2;
        int i16 = c2580h.f7191f;
        if (i16 != Integer.MIN_VALUE) {
            int i17 = c2580h.f7186a;
            if (i17 < 0) {
                c2580h.f7191f = i16 + i17;
            }
            m1728u(recycler, c2580h);
        }
        int i18 = c2580h.f7186a;
        boolean zMo1704i = mo1704i();
        int i19 = i18;
        int i20 = 0;
        while (true) {
            if (i19 <= 0 && !this.f2027l.f7187b) {
                break;
            }
            List list = this.f2023h;
            int i21 = c2580h.f7189d;
            if (i21 < 0 || i21 >= state.getItemCount() || (i10 = c2580h.f7188c) < 0 || i10 >= list.size()) {
                break;
            }
            C2575c c2575c = (C2575c) this.f2023h.get(c2580h.f7188c);
            c2580h.f7189d = c2575c.f7153o;
            boolean zMo1704i2 = mo1704i();
            C2578f c2578f = this.f2028m;
            Rect rect3 = f2016z;
            C1421s3 c1421s3 = this.f2024i;
            if (zMo1704i2) {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int width = getWidth();
                int i22 = c2580h.f7190e;
                if (c2580h.f7193h == -1) {
                    i22 -= c2575c.f7145g;
                }
                int i23 = c2580h.f7189d;
                float f8 = c2578f.f7172d;
                float f10 = paddingLeft - f8;
                float leftDecorationWidth = (width - paddingRight) - f8;
                float fMax = Math.max(0.0f, 0.0f);
                int i24 = c2575c.f7146h;
                int i25 = i22;
                int i26 = i23;
                int i27 = 0;
                while (i26 < i23 + i24) {
                    int i28 = i23;
                    View viewMo1701f = mo1701f(i26);
                    if (viewMo1701f == null) {
                        i27 = i27;
                        i26 = i26;
                        rect2 = rect3;
                    } else {
                        if (c2580h.f7193h == 1) {
                            calculateItemDecorationsForChild(viewMo1701f, rect3);
                            addView(viewMo1701f);
                        } else {
                            calculateItemDecorationsForChild(viewMo1701f, rect3);
                            addView(viewMo1701f, i27);
                            i27++;
                        }
                        long j10 = ((long[]) c1421s3.f3416f)[i26];
                        int i29 = (int) j10;
                        int i30 = (int) (j10 >> 32);
                        C2579g c2579g = (C2579g) viewMo1701f.getLayoutParams();
                        if (m1731x(viewMo1701f, i29, i30, c2579g)) {
                            viewMo1701f.measure(i29, i30);
                        }
                        float leftDecorationWidth2 = f10 + getLeftDecorationWidth(viewMo1701f) + ((ViewGroup.MarginLayoutParams) c2579g).leftMargin;
                        float rightDecorationWidth = leftDecorationWidth - (getRightDecorationWidth(viewMo1701f) + ((ViewGroup.MarginLayoutParams) c2579g).rightMargin);
                        int topDecorationHeight = getTopDecorationHeight(viewMo1701f) + i25;
                        boolean z10 = this.f2021f;
                        C1421s3 c1421s4 = this.f2024i;
                        if (z10) {
                            rect2 = rect3;
                            c1421s4.m2468p(viewMo1701f, c2575c, Math.round(rightDecorationWidth) - viewMo1701f.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), viewMo1701f.getMeasuredHeight() + topDecorationHeight);
                        } else {
                            rect2 = rect3;
                            c1421s4.m2468p(viewMo1701f, c2575c, Math.round(leftDecorationWidth2), topDecorationHeight, viewMo1701f.getMeasuredWidth() + Math.round(leftDecorationWidth2), viewMo1701f.getMeasuredHeight() + topDecorationHeight);
                        }
                        float rightDecorationWidth2 = getRightDecorationWidth(viewMo1701f) + viewMo1701f.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c2579g).rightMargin + fMax + leftDecorationWidth2;
                        leftDecorationWidth = rightDecorationWidth - ((getLeftDecorationWidth(viewMo1701f) + (viewMo1701f.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c2579g).leftMargin)) + fMax);
                        f10 = rightDecorationWidth2;
                    }
                    i26++;
                    i23 = i28;
                    c1421s3 = c1421s3;
                    zMo1704i = zMo1704i;
                    i24 = i24;
                    i27 = i27;
                    rect3 = rect2;
                }
                z9 = zMo1704i;
                c2580h.f7188c += this.f2027l.f7193h;
                i12 = c2575c.f7145g;
            } else {
                z9 = zMo1704i;
                Rect rect4 = rect3;
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i31 = c2580h.f7190e;
                if (c2580h.f7193h == -1) {
                    int i32 = c2575c.f7145g;
                    i11 = i31 + i32;
                    i31 -= i32;
                } else {
                    i11 = i31;
                }
                int i33 = c2580h.f7189d;
                float f11 = height - paddingBottom;
                float f12 = c2578f.f7172d;
                float f13 = paddingTop - f12;
                float topDecorationHeight2 = f11 - f12;
                float fMax2 = Math.max(0.0f, 0.0f);
                int i34 = c2575c.f7146h;
                int i35 = i33;
                int i36 = 0;
                while (i35 < i33 + i34) {
                    int i37 = i33;
                    View viewMo1701f2 = mo1701f(i35);
                    if (viewMo1701f2 == null) {
                        i14 = i34;
                        i13 = i35;
                        rect = rect4;
                        i15 = i37;
                    } else {
                        float f14 = f13;
                        long j11 = ((long[]) c1421s3.f3416f)[i35];
                        float f15 = topDecorationHeight2;
                        int i38 = (int) j11;
                        int i39 = (int) (j11 >> 32);
                        C2579g c2579g2 = (C2579g) viewMo1701f2.getLayoutParams();
                        if (m1731x(viewMo1701f2, i38, i39, c2579g2)) {
                            viewMo1701f2.measure(i38, i39);
                        }
                        float topDecorationHeight3 = f14 + getTopDecorationHeight(viewMo1701f2) + ((ViewGroup.MarginLayoutParams) c2579g2).topMargin;
                        float bottomDecorationHeight = f15 - (getBottomDecorationHeight(viewMo1701f2) + ((ViewGroup.MarginLayoutParams) c2579g2).rightMargin);
                        if (c2580h.f7193h == 1) {
                            rect = rect4;
                            calculateItemDecorationsForChild(viewMo1701f2, rect);
                            addView(viewMo1701f2);
                        } else {
                            rect = rect4;
                            calculateItemDecorationsForChild(viewMo1701f2, rect);
                            addView(viewMo1701f2, i36);
                            i36++;
                        }
                        int i40 = i36;
                        int leftDecorationWidth3 = getLeftDecorationWidth(viewMo1701f2) + i31;
                        int rightDecorationWidth3 = i11 - getRightDecorationWidth(viewMo1701f2);
                        int i41 = i35;
                        boolean z11 = this.f2021f;
                        boolean z12 = this.f2022g;
                        int i42 = i34;
                        C1421s3 c1421s5 = this.f2024i;
                        if (!z11) {
                            i13 = i41;
                            i14 = i42;
                            i15 = i37;
                            if (z12) {
                                c1421s5.m2469q(viewMo1701f2, c2575c, z11, leftDecorationWidth3, Math.round(bottomDecorationHeight) - viewMo1701f2.getMeasuredHeight(), viewMo1701f2.getMeasuredWidth() + leftDecorationWidth3, Math.round(bottomDecorationHeight));
                            } else {
                                c1421s5.m2469q(viewMo1701f2, c2575c, z11, leftDecorationWidth3, Math.round(topDecorationHeight3), viewMo1701f2.getMeasuredWidth() + leftDecorationWidth3, viewMo1701f2.getMeasuredHeight() + Math.round(topDecorationHeight3));
                            }
                        } else if (z12) {
                            i13 = i41;
                            i14 = i42;
                            i15 = i37;
                            c1421s5.m2469q(viewMo1701f2, c2575c, z11, rightDecorationWidth3 - viewMo1701f2.getMeasuredWidth(), Math.round(bottomDecorationHeight) - viewMo1701f2.getMeasuredHeight(), rightDecorationWidth3, Math.round(bottomDecorationHeight));
                        } else {
                            i13 = i41;
                            i14 = i42;
                            i15 = i37;
                            c1421s5.m2469q(viewMo1701f2, c2575c, z11, rightDecorationWidth3 - viewMo1701f2.getMeasuredWidth(), Math.round(topDecorationHeight3), rightDecorationWidth3, viewMo1701f2.getMeasuredHeight() + Math.round(topDecorationHeight3));
                        }
                        float bottomDecorationHeight2 = getBottomDecorationHeight(viewMo1701f2) + viewMo1701f2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c2579g2).topMargin + fMax2 + topDecorationHeight3;
                        topDecorationHeight2 = bottomDecorationHeight - ((getTopDecorationHeight(viewMo1701f2) + (viewMo1701f2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c2579g2).bottomMargin)) + fMax2);
                        f13 = bottomDecorationHeight2;
                        i36 = i40;
                    }
                    i35 = i13 + 1;
                    i33 = i15;
                    i34 = i14;
                    rect4 = rect;
                }
                c2580h.f7188c += this.f2027l.f7193h;
                i12 = c2575c.f7145g;
            }
            i20 += i12;
            if (z9 || !this.f2021f) {
                c2580h.f7190e += c2575c.f7145g * c2580h.f7193h;
            } else {
                c2580h.f7190e -= c2575c.f7145g * c2580h.f7193h;
            }
            i19 -= c2575c.f7145g;
            i18 = i18;
            zMo1704i = z9;
        }
        int i43 = i18;
        int i44 = c2580h.f7186a - i20;
        c2580h.f7186a = i44;
        int i45 = c2580h.f7191f;
        if (i45 != Integer.MIN_VALUE) {
            int i46 = i45 + i20;
            c2580h.f7191f = i46;
            if (i44 < 0) {
                c2580h.f7191f = i46 + i44;
            }
            m1728u(recycler, c2580h);
        }
        return i43 - c2580h.f7186a;
    }

    /* JADX INFO: renamed from: m */
    public final View m1720m(int i10) {
        View viewM1725r = m1725r(0, getChildCount(), i10);
        if (viewM1725r == null) {
            return null;
        }
        int i11 = ((int[]) this.f2024i.f3415e)[getPosition(viewM1725r)];
        if (i11 == -1) {
            return null;
        }
        return m1721n(viewM1725r, (C2575c) this.f2023h.get(i11));
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    /* JADX INFO: renamed from: n */
    public final View m1721n(View view, C2575c c2575c) {
        boolean zMo1704i = mo1704i();
        int i10 = c2575c.f7146h;
        for (int i11 = 1; i11 < i10; i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f2021f || zMo1704i) {
                    if (this.f2029n.getDecoratedStart(view) > this.f2029n.getDecoratedStart(childAt)) {
                        view = childAt;
                    }
                } else if (this.f2029n.getDecoratedEnd(view) < this.f2029n.getDecoratedEnd(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    /* JADX INFO: renamed from: o */
    public final View m1722o(int i10) {
        View viewM1725r = m1725r(getChildCount() - 1, -1, i10);
        if (viewM1725r == null) {
            return null;
        }
        return m1723p(viewM1725r, (C2575c) this.f2023h.get(((int[]) this.f2024i.f3415e)[getPosition(viewM1725r)]));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f2038w = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsAdded(recyclerView, i10, i11);
        m1732y(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        super.onItemsMoved(recyclerView, i10, i11, i12);
        m1732y(Math.min(i10, i11));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsRemoved(recyclerView, i10, i11);
        m1732y(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        super.onItemsUpdated(recyclerView, i10, i11, obj);
        m1732y(i10);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x017d  */
    /* JADX WARN: Code duplicated, block: B:106:0x0194  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:113:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:114:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:116:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:118:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:119:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:128:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:130:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:131:0x0200  */
    /* JADX WARN: Code duplicated, block: B:135:0x0217  */
    /* JADX WARN: Code duplicated, block: B:139:0x021d  */
    /* JADX WARN: Code duplicated, block: B:142:0x022a  */
    /* JADX WARN: Code duplicated, block: B:153:0x0264  */
    /* JADX WARN: Code duplicated, block: B:154:0x0269  */
    /* JADX WARN: Code duplicated, block: B:156:0x0270  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:77:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:79:0x010c  */
    /* JADX WARN: Code duplicated, block: B:80:0x0111  */
    /* JADX WARN: Code duplicated, block: B:82:0x0122  */
    /* JADX WARN: Code duplicated, block: B:83:0x012c  */
    /* JADX WARN: Code duplicated, block: B:85:0x0139  */
    /* JADX WARN: Code duplicated, block: B:86:0x0145  */
    /* JADX WARN: Code duplicated, block: B:88:0x014b  */
    /* JADX WARN: Code duplicated, block: B:89:0x0157  */
    /* JADX WARN: Code duplicated, block: B:91:0x015f  */
    /* JADX WARN: Code duplicated, block: B:97:0x0173  */
    /* JADX WARN: Code duplicated, block: B:98:0x0175  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        View viewM1720m;
        FlexboxLayoutManager flexboxLayoutManager;
        OrientationHelper orientationHelper;
        int position;
        int i10;
        int size;
        int i11;
        boolean z9;
        OrientationHelper orientationHelper2;
        int startAfterPadding;
        int i12;
        View viewFindViewByPosition;
        View childAt;
        boolean z10;
        int decoratedStart;
        OrientationHelper orientationHelper3;
        boolean z11;
        OrientationHelper orientationHelper4;
        int decoratedStart2;
        boolean z12;
        int i13;
        boolean z13;
        int i14;
        int i15;
        int i16;
        this.f2025j = recycler;
        this.f2026k = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.isPreLayout()) {
            return;
        }
        int layoutDirection = getLayoutDirection();
        int i17 = this.f2017b;
        if (i17 == 0) {
            this.f2021f = layoutDirection == 1;
            this.f2022g = this.f2018c == 2;
        } else if (i17 == 1) {
            this.f2021f = layoutDirection != 1;
            this.f2022g = this.f2018c == 2;
        } else if (i17 == 2) {
            boolean z14 = layoutDirection == 1;
            this.f2021f = z14;
            if (this.f2018c == 2) {
                this.f2021f = !z14;
            }
            this.f2022g = false;
        } else if (i17 != 3) {
            this.f2021f = false;
            this.f2022g = false;
        } else {
            boolean z15 = layoutDirection == 1;
            this.f2021f = z15;
            if (this.f2018c == 2) {
                this.f2021f = !z15;
            }
            this.f2022g = true;
        }
        m1718k();
        if (this.f2027l == null) {
            C2580h c2580h = new C2580h();
            c2580h.f7193h = 1;
            this.f2027l = c2580h;
        }
        C1421s3 c1421s3 = this.f2024i;
        c1421s3.m2463k(itemCount);
        c1421s3.m2464l(itemCount);
        c1421s3.m2462j(itemCount);
        this.f2027l.f7194i = false;
        C2581i c2581i = this.f2031p;
        if (c2581i != null && (i16 = c2581i.f7195b) >= 0 && i16 < itemCount) {
            this.f2032q = i16;
        }
        C2578f c2578f = this.f2028m;
        if (!c2578f.f7174f || this.f2032q != -1 || c2581i != null) {
            C2578f.m4023b(c2578f);
            C2581i c2581i2 = this.f2031p;
            if (state.isPreLayout() || (i12 = this.f2032q) == -1) {
                if (getChildCount() != 0) {
                    if (c2578f.f7173e) {
                        viewM1720m = m1722o(state.getItemCount());
                    } else {
                        viewM1720m = m1720m(state.getItemCount());
                    }
                    if (viewM1720m != null) {
                        flexboxLayoutManager = c2578f.f7176h;
                        if (flexboxLayoutManager.f2018c == 0) {
                            orientationHelper = flexboxLayoutManager.f2030o;
                        } else {
                            orientationHelper = flexboxLayoutManager.f2029n;
                        }
                        if (flexboxLayoutManager.mo1704i() && flexboxLayoutManager.f2021f) {
                            if (c2578f.f7173e) {
                                c2578f.f7171c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedStart(viewM1720m);
                            } else {
                                c2578f.f7171c = orientationHelper.getDecoratedEnd(viewM1720m);
                            }
                        } else if (c2578f.f7173e) {
                            c2578f.f7171c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(viewM1720m);
                        } else {
                            c2578f.f7171c = orientationHelper.getDecoratedStart(viewM1720m);
                        }
                        position = flexboxLayoutManager.getPosition(viewM1720m);
                        c2578f.f7169a = position;
                        c2578f.f7175g = false;
                        int[] iArr = (int[]) flexboxLayoutManager.f2024i.f3415e;
                        if (position == -1) {
                            position = 0;
                        }
                        i10 = iArr[position];
                        if (i10 == -1) {
                            i10 = 0;
                        }
                        c2578f.f7170b = i10;
                        size = flexboxLayoutManager.f2023h.size();
                        i11 = c2578f.f7170b;
                        if (size > i11) {
                            c2578f.f7169a = ((C2575c) flexboxLayoutManager.f2023h.get(i11)).f7153o;
                        }
                        if (!state.isPreLayout() && supportsPredictiveItemAnimations() && (this.f2029n.getDecoratedStart(viewM1720m) >= this.f2029n.getEndAfterPadding() || this.f2029n.getDecoratedEnd(viewM1720m) < this.f2029n.getStartAfterPadding())) {
                            z9 = c2578f.f7173e;
                            orientationHelper2 = this.f2029n;
                            if (z9) {
                                startAfterPadding = orientationHelper2.getEndAfterPadding();
                            } else {
                                startAfterPadding = orientationHelper2.getStartAfterPadding();
                            }
                            c2578f.f7171c = startAfterPadding;
                        }
                    } else {
                        C2578f.m4022a(c2578f);
                        c2578f.f7169a = 0;
                        c2578f.f7170b = 0;
                    }
                } else {
                    C2578f.m4022a(c2578f);
                    c2578f.f7169a = 0;
                    c2578f.f7170b = 0;
                }
            } else if (i12 < 0 || i12 >= state.getItemCount()) {
                this.f2032q = -1;
                this.f2033r = Integer.MIN_VALUE;
                if (getChildCount() != 0) {
                    if (c2578f.f7173e) {
                        viewM1720m = m1722o(state.getItemCount());
                    } else {
                        viewM1720m = m1720m(state.getItemCount());
                    }
                    if (viewM1720m != null) {
                        flexboxLayoutManager = c2578f.f7176h;
                        if (flexboxLayoutManager.f2018c == 0) {
                            orientationHelper = flexboxLayoutManager.f2030o;
                        } else {
                            orientationHelper = flexboxLayoutManager.f2029n;
                        }
                        if (flexboxLayoutManager.mo1704i()) {
                            if (c2578f.f7173e) {
                                c2578f.f7171c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(viewM1720m);
                            } else {
                                c2578f.f7171c = orientationHelper.getDecoratedStart(viewM1720m);
                            }
                        } else if (c2578f.f7173e) {
                            c2578f.f7171c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(viewM1720m);
                        } else {
                            c2578f.f7171c = orientationHelper.getDecoratedStart(viewM1720m);
                        }
                        position = flexboxLayoutManager.getPosition(viewM1720m);
                        c2578f.f7169a = position;
                        c2578f.f7175g = false;
                        int[] iArr2 = (int[]) flexboxLayoutManager.f2024i.f3415e;
                        if (position == -1) {
                            position = 0;
                        }
                        i10 = iArr2[position];
                        if (i10 == -1) {
                            i10 = 0;
                        }
                        c2578f.f7170b = i10;
                        size = flexboxLayoutManager.f2023h.size();
                        i11 = c2578f.f7170b;
                        if (size > i11) {
                            c2578f.f7169a = ((C2575c) flexboxLayoutManager.f2023h.get(i11)).f7153o;
                        }
                        if (!state.isPreLayout()) {
                            z9 = c2578f.f7173e;
                            orientationHelper2 = this.f2029n;
                            if (z9) {
                                startAfterPadding = orientationHelper2.getEndAfterPadding();
                            } else {
                                startAfterPadding = orientationHelper2.getStartAfterPadding();
                            }
                            c2578f.f7171c = startAfterPadding;
                        }
                    } else {
                        C2578f.m4022a(c2578f);
                        c2578f.f7169a = 0;
                        c2578f.f7170b = 0;
                    }
                } else {
                    C2578f.m4022a(c2578f);
                    c2578f.f7169a = 0;
                    c2578f.f7170b = 0;
                }
            } else {
                int i18 = this.f2032q;
                c2578f.f7169a = i18;
                c2578f.f7170b = ((int[]) c1421s3.f3415e)[i18];
                C2581i c2581i3 = this.f2031p;
                if (c2581i3 != null) {
                    int itemCount2 = state.getItemCount();
                    int i19 = c2581i3.f7195b;
                    if (i19 >= 0 && i19 < itemCount2) {
                        c2578f.f7171c = this.f2029n.getStartAfterPadding() + c2581i2.f7196c;
                        c2578f.f7175g = true;
                        c2578f.f7170b = -1;
                    } else if (this.f2033r == Integer.MIN_VALUE) {
                        viewFindViewByPosition = findViewByPosition(this.f2032q);
                        if (viewFindViewByPosition != null) {
                            if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                                if (this.f2032q < getPosition(childAt)) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                c2578f.f7173e = z10;
                            }
                            C2578f.m4022a(c2578f);
                        } else if (this.f2029n.getDecoratedMeasurement(viewFindViewByPosition) > this.f2029n.getTotalSpace()) {
                            C2578f.m4022a(c2578f);
                        } else {
                            decoratedStart = this.f2029n.getDecoratedStart(viewFindViewByPosition) - this.f2029n.getStartAfterPadding();
                            orientationHelper3 = this.f2029n;
                            if (decoratedStart < 0) {
                                c2578f.f7171c = orientationHelper3.getStartAfterPadding();
                                c2578f.f7173e = false;
                            } else if (orientationHelper3.getEndAfterPadding() - this.f2029n.getDecoratedEnd(viewFindViewByPosition) < 0) {
                                c2578f.f7171c = this.f2029n.getEndAfterPadding();
                                c2578f.f7173e = true;
                            } else {
                                z11 = c2578f.f7173e;
                                orientationHelper4 = this.f2029n;
                                if (z11) {
                                    decoratedStart2 = this.f2029n.getTotalSpaceChange() + orientationHelper4.getDecoratedEnd(viewFindViewByPosition);
                                } else {
                                    decoratedStart2 = orientationHelper4.getDecoratedStart(viewFindViewByPosition);
                                }
                                c2578f.f7171c = decoratedStart2;
                            }
                        }
                    } else if (mo1704i() && this.f2021f) {
                        c2578f.f7171c = this.f2033r - this.f2029n.getEndPadding();
                    } else {
                        c2578f.f7171c = this.f2029n.getStartAfterPadding() + this.f2033r;
                    }
                } else if (this.f2033r == Integer.MIN_VALUE) {
                    viewFindViewByPosition = findViewByPosition(this.f2032q);
                    if (viewFindViewByPosition != null) {
                        if (getChildCount() > 0) {
                            if (this.f2032q < getPosition(childAt)) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            c2578f.f7173e = z10;
                        }
                        C2578f.m4022a(c2578f);
                    } else if (this.f2029n.getDecoratedMeasurement(viewFindViewByPosition) > this.f2029n.getTotalSpace()) {
                        C2578f.m4022a(c2578f);
                    } else {
                        decoratedStart = this.f2029n.getDecoratedStart(viewFindViewByPosition) - this.f2029n.getStartAfterPadding();
                        orientationHelper3 = this.f2029n;
                        if (decoratedStart < 0) {
                            c2578f.f7171c = orientationHelper3.getStartAfterPadding();
                            c2578f.f7173e = false;
                        } else if (orientationHelper3.getEndAfterPadding() - this.f2029n.getDecoratedEnd(viewFindViewByPosition) < 0) {
                            c2578f.f7171c = this.f2029n.getEndAfterPadding();
                            c2578f.f7173e = true;
                        } else {
                            z11 = c2578f.f7173e;
                            orientationHelper4 = this.f2029n;
                            if (z11) {
                                decoratedStart2 = this.f2029n.getTotalSpaceChange() + orientationHelper4.getDecoratedEnd(viewFindViewByPosition);
                            } else {
                                decoratedStart2 = orientationHelper4.getDecoratedStart(viewFindViewByPosition);
                            }
                            c2578f.f7171c = decoratedStart2;
                        }
                    }
                } else if (mo1704i()) {
                    c2578f.f7171c = this.f2029n.getStartAfterPadding() + this.f2033r;
                } else {
                    c2578f.f7171c = this.f2029n.getStartAfterPadding() + this.f2033r;
                }
            }
            c2578f.f7174f = true;
        }
        detachAndScrapAttachedViews(recycler);
        if (c2578f.f7173e) {
            m1717A(c2578f, false, true);
        } else {
            m1733z(c2578f, false, true);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean zMo1704i = mo1704i();
        Context context = this.f2037v;
        if (zMo1704i) {
            int i20 = this.f2034s;
            z12 = (i20 == Integer.MIN_VALUE || i20 == width) ? false : true;
            C2580h c2580h2 = this.f2027l;
            i13 = c2580h2.f7187b ? context.getResources().getDisplayMetrics().heightPixels : c2580h2.f7186a;
        } else {
            int i21 = this.f2035t;
            z12 = (i21 == Integer.MIN_VALUE || i21 == height) ? false : true;
            C2580h c2580h3 = this.f2027l;
            i13 = c2580h3.f7187b ? context.getResources().getDisplayMetrics().widthPixels : c2580h3.f7186a;
        }
        int i22 = i13;
        this.f2034s = width;
        this.f2035t = height;
        int i23 = this.f2039x;
        C1897i c1897i = this.f2040y;
        if (i23 != -1 || (this.f2032q == -1 && !z12)) {
            int iMin = c2578f.f7169a;
            if (i23 != -1) {
                iMin = Math.min(i23, iMin);
            }
            c1897i.f4930c = null;
            c1897i.f4929b = 0;
            boolean zMo1704i2 = mo1704i();
            List list = this.f2023h;
            if (zMo1704i2) {
                if (list.size() > 0) {
                    c1421s3.m2457d(iMin, this.f2023h);
                    this.f2024i.m2455b(this.f2040y, iMakeMeasureSpec, iMakeMeasureSpec2, i22, iMin, c2578f.f7169a, this.f2023h);
                } else {
                    c1421s3.m2462j(itemCount);
                    this.f2024i.m2455b(this.f2040y, iMakeMeasureSpec, iMakeMeasureSpec2, i22, 0, -1, this.f2023h);
                }
            } else if (list.size() > 0) {
                c1421s3.m2457d(iMin, this.f2023h);
                int i24 = iMin;
                this.f2024i.m2455b(this.f2040y, iMakeMeasureSpec2, iMakeMeasureSpec, i22, i24, c2578f.f7169a, this.f2023h);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
                iMin = i24;
            } else {
                c1421s3.m2462j(itemCount);
                this.f2024i.m2455b(this.f2040y, iMakeMeasureSpec2, iMakeMeasureSpec, i22, 0, -1, this.f2023h);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
            }
            this.f2023h = (List) c1897i.f4930c;
            c1421s3.m2461i(iMakeMeasureSpec, iMakeMeasureSpec2, iMin);
            c1421s3.m2474w(iMin);
        } else if (!c2578f.f7173e) {
            this.f2023h.clear();
            c1897i.f4930c = null;
            c1897i.f4929b = 0;
            boolean zMo1704i3 = mo1704i();
            int i25 = c2578f.f7169a;
            C1421s3 c1421s4 = this.f2024i;
            C1897i c1897i2 = this.f2040y;
            if (zMo1704i3) {
                c1421s4.m2455b(c1897i2, iMakeMeasureSpec, iMakeMeasureSpec2, i22, 0, i25, this.f2023h);
            } else {
                c1421s4.m2455b(c1897i2, iMakeMeasureSpec2, iMakeMeasureSpec, i22, 0, i25, this.f2023h);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
            }
            this.f2023h = (List) c1897i.f4930c;
            c1421s3.m2461i(iMakeMeasureSpec, iMakeMeasureSpec2, 0);
            c1421s3.m2474w(0);
            int i26 = ((int[]) c1421s3.f3415e)[c2578f.f7169a];
            c2578f.f7170b = i26;
            this.f2027l.f7188c = i26;
        }
        m1719l(recycler, state, this.f2027l);
        boolean z16 = c2578f.f7173e;
        C2580h c2580h4 = this.f2027l;
        if (z16) {
            i15 = c2580h4.f7190e;
            z13 = true;
            m1733z(c2578f, true, false);
            m1719l(recycler, state, this.f2027l);
            i14 = this.f2027l.f7190e;
        } else {
            z13 = true;
            i14 = c2580h4.f7190e;
            m1717A(c2578f, true, false);
            m1719l(recycler, state, this.f2027l);
            i15 = this.f2027l.f7190e;
        }
        if (getChildCount() > 0) {
            if (c2578f.f7173e) {
                fixLayoutStartGap(fixLayoutEndGap(i14, recycler, state, z13) + i15, recycler, state, false);
            } else {
                fixLayoutEndGap(fixLayoutStartGap(i15, recycler, state, z13) + i14, recycler, state, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f2031p = null;
        this.f2032q = -1;
        this.f2033r = Integer.MIN_VALUE;
        this.f2039x = -1;
        C2578f.m4023b(this.f2028m);
        this.f2036u.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof C2581i) {
            this.f2031p = (C2581i) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable onSaveInstanceState() {
        C2581i c2581i = this.f2031p;
        if (c2581i != null) {
            C2581i c2581i2 = new C2581i();
            c2581i2.f7195b = c2581i.f7195b;
            c2581i2.f7196c = c2581i.f7196c;
            return c2581i2;
        }
        C2581i c2581i3 = new C2581i();
        if (getChildCount() <= 0) {
            c2581i3.f7195b = -1;
            return c2581i3;
        }
        View childAt = getChildAt(0);
        c2581i3.f7195b = getPosition(childAt);
        c2581i3.f7196c = this.f2029n.getDecoratedStart(childAt) - this.f2029n.getStartAfterPadding();
        return c2581i3;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0047  */
    /* JADX INFO: renamed from: p */
    public final View m1723p(View view, C2575c c2575c) {
        boolean zMo1704i = mo1704i();
        int childCount = (getChildCount() - c2575c.f7146h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f2021f || zMo1704i) {
                    if (this.f2029n.getDecoratedEnd(view) < this.f2029n.getDecoratedEnd(childAt)) {
                        view = childAt;
                    }
                } else if (this.f2029n.getDecoratedStart(view) > this.f2029n.getDecoratedStart(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    /* JADX INFO: renamed from: q */
    public final View m1724q(int i10, int i11) {
        int i12 = i11 > i10 ? 1 : -1;
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int decoratedLeft = getDecoratedLeft(childAt) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).leftMargin;
            int decoratedTop = getDecoratedTop(childAt) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).topMargin;
            int decoratedRight = getDecoratedRight(childAt) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).rightMargin;
            int decoratedBottom = getDecoratedBottom(childAt) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin;
            boolean z9 = decoratedLeft >= width || decoratedRight >= paddingLeft;
            boolean z10 = decoratedTop >= height || decoratedBottom >= paddingTop;
            if (z9 && z10) {
                return childAt;
            }
            i10 += i12;
        }
        return null;
    }

    /* JADX INFO: renamed from: r */
    public final View m1725r(int i10, int i11, int i12) {
        int position;
        m1718k();
        if (this.f2027l == null) {
            C2580h c2580h = new C2580h();
            c2580h.f7193h = 1;
            this.f2027l = c2580h;
        }
        int startAfterPadding = this.f2029n.getStartAfterPadding();
        int endAfterPadding = this.f2029n.getEndAfterPadding();
        int i13 = i11 <= i10 ? -1 : 1;
        View view = null;
        View view2 = null;
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < i12) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.f2029n.getDecoratedStart(childAt) >= startAfterPadding && this.f2029n.getDecoratedEnd(childAt) <= endAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i10 += i13;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x01f7  */
    /* JADX INFO: renamed from: s */
    public final int m1726s(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i11;
        if (getChildCount() != 0 && i10 != 0) {
            m1718k();
            this.f2027l.f7194i = true;
            boolean z9 = !mo1704i() && this.f2021f;
            int i12 = (!z9 ? i10 > 0 : i10 < 0) ? -1 : 1;
            int iAbs = Math.abs(i10);
            this.f2027l.f7193h = i12;
            boolean zMo1704i = mo1704i();
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
            boolean z10 = !zMo1704i && this.f2021f;
            C1421s3 c1421s3 = this.f2024i;
            if (i12 == 1) {
                View childAt = getChildAt(getChildCount() - 1);
                if (childAt != null) {
                    this.f2027l.f7190e = this.f2029n.getDecoratedEnd(childAt);
                    int position = getPosition(childAt);
                    View viewM1723p = m1723p(childAt, (C2575c) this.f2023h.get(((int[]) c1421s3.f3415e)[position]));
                    C2580h c2580h = this.f2027l;
                    c2580h.getClass();
                    int i13 = position + 1;
                    c2580h.f7189d = i13;
                    int[] iArr = (int[]) c1421s3.f3415e;
                    if (iArr.length <= i13) {
                        c2580h.f7188c = -1;
                    } else {
                        c2580h.f7188c = iArr[i13];
                    }
                    OrientationHelper orientationHelper = this.f2029n;
                    if (z10) {
                        c2580h.f7190e = orientationHelper.getDecoratedStart(viewM1723p);
                        this.f2027l.f7191f = this.f2029n.getStartAfterPadding() + (-this.f2029n.getDecoratedStart(viewM1723p));
                        C2580h c2580h2 = this.f2027l;
                        c2580h2.f7191f = Math.max(c2580h2.f7191f, 0);
                    } else {
                        c2580h.f7190e = orientationHelper.getDecoratedEnd(viewM1723p);
                        this.f2027l.f7191f = this.f2029n.getDecoratedEnd(viewM1723p) - this.f2029n.getEndAfterPadding();
                    }
                    int i14 = this.f2027l.f7188c;
                    if ((i14 == -1 || i14 > this.f2023h.size() - 1) && this.f2027l.f7189d <= this.f2026k.getItemCount()) {
                        C2580h c2580h3 = this.f2027l;
                        int i15 = iAbs - c2580h3.f7191f;
                        C1897i c1897i = this.f2040y;
                        c1897i.f4930c = null;
                        c1897i.f4929b = 0;
                        if (i15 > 0) {
                            C1421s3 c1421s4 = this.f2024i;
                            if (zMo1704i) {
                                c1421s4.m2455b(c1897i, iMakeMeasureSpec, iMakeMeasureSpec2, i15, c2580h3.f7189d, -1, this.f2023h);
                            } else {
                                c1421s4.m2455b(c1897i, iMakeMeasureSpec2, iMakeMeasureSpec, i15, c2580h3.f7189d, -1, this.f2023h);
                                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                                iMakeMeasureSpec = iMakeMeasureSpec;
                            }
                            c1421s3.m2461i(iMakeMeasureSpec, iMakeMeasureSpec2, this.f2027l.f7189d);
                            c1421s3.m2474w(this.f2027l.f7189d);
                        }
                    }
                    C2580h c2580h4 = this.f2027l;
                    c2580h4.f7186a = iAbs - c2580h4.f7191f;
                }
            } else {
                View childAt2 = getChildAt(0);
                if (childAt2 != null) {
                    this.f2027l.f7190e = this.f2029n.getDecoratedStart(childAt2);
                    int position2 = getPosition(childAt2);
                    View viewM1721n = m1721n(childAt2, (C2575c) this.f2023h.get(((int[]) c1421s3.f3415e)[position2]));
                    C2580h c2580h5 = this.f2027l;
                    c2580h5.getClass();
                    int i16 = ((int[]) c1421s3.f3415e)[position2];
                    if (i16 == -1) {
                        i16 = 0;
                    }
                    if (i16 > 0) {
                        this.f2027l.f7189d = position2 - ((C2575c) this.f2023h.get(i16 - 1)).f7146h;
                    } else {
                        c2580h5.f7189d = -1;
                    }
                    C2580h c2580h6 = this.f2027l;
                    c2580h6.f7188c = i16 > 0 ? i16 - 1 : 0;
                    OrientationHelper orientationHelper2 = this.f2029n;
                    if (z10) {
                        c2580h6.f7190e = orientationHelper2.getDecoratedEnd(viewM1721n);
                        this.f2027l.f7191f = this.f2029n.getDecoratedEnd(viewM1721n) - this.f2029n.getEndAfterPadding();
                        C2580h c2580h7 = this.f2027l;
                        c2580h7.f7191f = Math.max(c2580h7.f7191f, 0);
                    } else {
                        c2580h6.f7190e = orientationHelper2.getDecoratedStart(viewM1721n);
                        this.f2027l.f7191f = this.f2029n.getStartAfterPadding() + (-this.f2029n.getDecoratedStart(viewM1721n));
                    }
                    C2580h c2580h8 = this.f2027l;
                    c2580h8.f7186a = iAbs - c2580h8.f7191f;
                }
            }
            C2580h c2580h9 = this.f2027l;
            int iM1719l = m1719l(recycler, state, c2580h9) + c2580h9.f7191f;
            if (iM1719l >= 0) {
                if (z9) {
                    if (iAbs > iM1719l) {
                        i11 = (-i12) * iM1719l;
                    } else {
                        i11 = i10;
                    }
                } else if (iAbs > iM1719l) {
                    i11 = i12 * iM1719l;
                } else {
                    i11 = i10;
                }
                this.f2029n.offsetChildren(-i11);
                this.f2027l.f7192g = i11;
                return i11;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!mo1704i() || this.f2018c == 0) {
            int iM1726s = m1726s(i10, recycler, state);
            this.f2036u.clear();
            return iM1726s;
        }
        int iM1727t = m1727t(i10);
        this.f2028m.f7172d += iM1727t;
        this.f2030o.offsetChildren(-iM1727t);
        return iM1727t;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int i10) {
        this.f2032q = i10;
        this.f2033r = Integer.MIN_VALUE;
        C2581i c2581i = this.f2031p;
        if (c2581i != null) {
            c2581i.f7195b = -1;
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (mo1704i() || (this.f2018c == 0 && !mo1704i())) {
            int iM1726s = m1726s(i10, recycler, state);
            this.f2036u.clear();
            return iM1726s;
        }
        int iM1727t = m1727t(i10);
        this.f2028m.f7172d += iM1727t;
        this.f2030o.offsetChildren(-iM1727t);
        return iM1727t;
    }

    @Override // p153o2.InterfaceC2573a
    public final void setFlexLines(List list) {
        this.f2023h = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i10);
        startSmoothScroll(linearSmoothScroller);
    }

    /* JADX INFO: renamed from: t */
    public final int m1727t(int i10) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        m1718k();
        boolean zMo1704i = mo1704i();
        View view = this.f2038w;
        int width = zMo1704i ? view.getWidth() : view.getHeight();
        int width2 = zMo1704i ? getWidth() : getHeight();
        int layoutDirection = getLayoutDirection();
        C2578f c2578f = this.f2028m;
        if (layoutDirection == 1) {
            int iAbs = Math.abs(i10);
            if (i10 < 0) {
                return -Math.min((width2 + c2578f.f7172d) - width, iAbs);
            }
            int i11 = c2578f.f7172d;
            if (i11 + i10 > 0) {
                return -i11;
            }
        } else {
            if (i10 > 0) {
                return Math.min((width2 - c2578f.f7172d) - width, i10);
            }
            int i12 = c2578f.f7172d;
            if (i12 + i10 < 0) {
                return -i12;
            }
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0069  */
    /* JADX WARN: Code duplicated, block: B:34:0x0071 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0075  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:76:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0108 A[EDGE_INSN: B:86:0x0108->B:93:? BREAK  A[LOOP:2: B:52:0x00b7->B:71:0x0104], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x0104 A[SYNTHETIC] */
    /* JADX INFO: renamed from: u */
    public final void m1728u(RecyclerView.Recycler recycler, C2580h c2580h) {
        int childCount;
        int i10;
        int childCount2;
        int i11;
        View childAt;
        int i12;
        if (c2580h.f7194i) {
            int i13 = c2580h.f7193h;
            int i14 = c2580h.f7191f;
            C1421s3 c1421s3 = this.f2024i;
            int i15 = -1;
            if (i13 == -1) {
                if (i14 < 0 || (childCount2 = getChildCount()) == 0 || (childAt = getChildAt((i11 = childCount2 - 1))) == null || (i12 = ((int[]) c1421s3.f3415e)[getPosition(childAt)]) == -1) {
                    return;
                }
                C2575c c2575c = (C2575c) this.f2023h.get(i12);
                for (int i16 = i11; i16 >= 0; i16--) {
                    View childAt2 = getChildAt(i16);
                    if (childAt2 != null) {
                        int i17 = c2580h.f7191f;
                        if (!mo1704i() && this.f2021f) {
                            if (this.f2029n.getDecoratedEnd(childAt2) > i17) {
                                break;
                            }
                            if (c2575c.f7153o != getPosition(childAt2)) {
                                continue;
                            } else if (i12 <= 0) {
                                childCount2 = i16;
                                break;
                            } else {
                                i12 += c2580h.f7193h;
                                c2575c = (C2575c) this.f2023h.get(i12);
                                childCount2 = i16;
                            }
                        } else {
                            if (this.f2029n.getDecoratedStart(childAt2) < this.f2029n.getEnd() - i17) {
                                break;
                            }
                            if (c2575c.f7153o != getPosition(childAt2)) {
                                continue;
                            } else if (i12 <= 0) {
                                childCount2 = i16;
                                break;
                            } else {
                                i12 += c2580h.f7193h;
                                c2575c = (C2575c) this.f2023h.get(i12);
                                childCount2 = i16;
                            }
                        }
                    }
                }
                while (i11 >= childCount2) {
                    removeAndRecycleViewAt(i11, recycler);
                    i11--;
                }
                return;
            }
            if (i14 >= 0 && (childCount = getChildCount()) != 0) {
                int i18 = 0;
                View childAt3 = getChildAt(0);
                if (childAt3 == null || (i10 = ((int[]) c1421s3.f3415e)[getPosition(childAt3)]) == -1) {
                    return;
                }
                C2575c c2575c2 = (C2575c) this.f2023h.get(i10);
                while (true) {
                    if (i18 < childCount) {
                        View childAt4 = getChildAt(i18);
                        if (childAt4 != null) {
                            int i19 = c2580h.f7191f;
                            if (mo1704i() || !this.f2021f) {
                                if (this.f2029n.getDecoratedEnd(childAt4) <= i19) {
                                    if (c2575c2.f7154p != getPosition(childAt4)) {
                                        continue;
                                    } else {
                                        if (i10 >= this.f2023h.size() - 1) {
                                            break;
                                        }
                                        i10 += c2580h.f7193h;
                                        c2575c2 = (C2575c) this.f2023h.get(i10);
                                        i15 = i18;
                                    }
                                }
                            } else if (this.f2029n.getEnd() - this.f2029n.getDecoratedStart(childAt4) <= i19) {
                                if (c2575c2.f7154p != getPosition(childAt4)) {
                                    continue;
                                } else if (i10 >= this.f2023h.size() - 1) {
                                    break;
                                    break;
                                } else {
                                    i10 += c2580h.f7193h;
                                    c2575c2 = (C2575c) this.f2023h.get(i10);
                                    i15 = i18;
                                }
                            }
                        }
                        i18++;
                    }
                    i18 = i15;
                    break;
                }
                while (i18 >= 0) {
                    removeAndRecycleViewAt(i18, recycler);
                    i18--;
                }
            }
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m1729v() {
        int heightMode = mo1704i() ? getHeightMode() : getWidthMode();
        this.f2027l.f7187b = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    /* JADX INFO: renamed from: w */
    public final void m1730w(int i10) {
        if (this.f2017b != i10) {
            removeAllViews();
            this.f2017b = i10;
            this.f2029n = null;
            this.f2030o = null;
            this.f2023h.clear();
            C2578f c2578f = this.f2028m;
            C2578f.m4023b(c2578f);
            c2578f.f7172d = 0;
            requestLayout();
        }
    }

    /* JADX INFO: renamed from: x */
    public final boolean m1731x(View view, int i10, int i11, C2579g c2579g) {
        return (!view.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) c2579g).width) && isMeasurementUpToDate(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) c2579g).height)) ? false : true;
    }

    /* JADX INFO: renamed from: y */
    public final void m1732y(int i10) {
        View viewM1724q = m1724q(getChildCount() - 1, -1);
        if (i10 >= (viewM1724q != null ? getPosition(viewM1724q) : -1)) {
            return;
        }
        int childCount = getChildCount();
        C1421s3 c1421s3 = this.f2024i;
        c1421s3.m2463k(childCount);
        c1421s3.m2464l(childCount);
        c1421s3.m2462j(childCount);
        if (i10 >= ((int[]) c1421s3.f3415e).length) {
            return;
        }
        this.f2039x = i10;
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        this.f2032q = getPosition(childAt);
        if (mo1704i() || !this.f2021f) {
            this.f2033r = this.f2029n.getDecoratedStart(childAt) - this.f2029n.getStartAfterPadding();
        } else {
            this.f2033r = this.f2029n.getEndPadding() + this.f2029n.getDecoratedEnd(childAt);
        }
    }

    /* JADX INFO: renamed from: z */
    public final void m1733z(C2578f c2578f, boolean z9, boolean z10) {
        int i10;
        if (z10) {
            m1729v();
        } else {
            this.f2027l.f7187b = false;
        }
        if (mo1704i() || !this.f2021f) {
            this.f2027l.f7186a = this.f2029n.getEndAfterPadding() - c2578f.f7171c;
        } else {
            this.f2027l.f7186a = c2578f.f7171c - getPaddingRight();
        }
        C2580h c2580h = this.f2027l;
        c2580h.f7189d = c2578f.f7169a;
        c2580h.f7193h = 1;
        c2580h.f7190e = c2578f.f7171c;
        c2580h.f7191f = Integer.MIN_VALUE;
        c2580h.f7188c = c2578f.f7170b;
        if (!z9 || this.f2023h.size() <= 1 || (i10 = c2578f.f7170b) < 0 || i10 >= this.f2023h.size() - 1) {
            return;
        }
        C2575c c2575c = (C2575c) this.f2023h.get(c2578f.f7170b);
        C2580h c2580h2 = this.f2027l;
        c2580h2.f7188c++;
        c2580h2.f7189d += c2575c.f7146h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsUpdated(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsUpdated(recyclerView, i10, i11);
        m1732y(i10);
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: b */
    public final void mo1697b(C2575c c2575c) {
    }
}
