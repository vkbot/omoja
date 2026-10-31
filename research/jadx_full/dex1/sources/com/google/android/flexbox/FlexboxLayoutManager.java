package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$LayoutManager;
import androidx.recyclerview.widget.RecyclerView$LayoutManager$Properties;
import androidx.recyclerview.widget.RecyclerView$LayoutParams;
import androidx.recyclerview.widget.RecyclerView$Recycler;
import androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider;
import androidx.recyclerview.widget.RecyclerView$State;
import e0.s3;
import java.util.ArrayList;
import java.util.List;
import o2.a;
import o2.c;
import o2.f;
import o2.g;
import o2.h;
import o2.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexboxLayoutManager extends RecyclerView$LayoutManager implements a, RecyclerView$SmoothScroller$ScrollVectorProvider {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final Rect f1083z = new Rect();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1084b;
    public final int c;
    public final int d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1085f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1086g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public RecyclerView$Recycler f1089j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public RecyclerView$State f1090k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public h f1091l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final f f1092m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public OrientationHelper f1093n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public OrientationHelper f1094o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public i f1095p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1096q;
    public int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1097s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final SparseArray f1098u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Context f1099v;
    public View w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1100x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final j.i f1101y;
    public final int e = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f1087h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final s3 f1088i = new s3(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i9, int i10) {
        f fVar = new f(this);
        this.f1092m = fVar;
        this.f1096q = -1;
        this.r = Integer.MIN_VALUE;
        this.f1097s = Integer.MIN_VALUE;
        this.t = Integer.MIN_VALUE;
        this.f1098u = new SparseArray();
        this.f1100x = -1;
        this.f1101y = new j.i();
        RecyclerView$LayoutManager$Properties properties = RecyclerView$LayoutManager.getProperties(context, attributeSet, i9, i10);
        int i11 = properties.orientation;
        if (i11 != 0) {
            if (i11 == 1) {
                if (properties.reverseLayout) {
                    w(3);
                } else {
                    w(2);
                }
            }
        } else if (properties.reverseLayout) {
            w(1);
        } else {
            w(0);
        }
        int i12 = this.c;
        if (i12 != 1) {
            if (i12 == 0) {
                removeAllViews();
                this.f1087h.clear();
                f.b(fVar);
                fVar.d = 0;
            }
            this.c = 1;
            this.f1093n = null;
            this.f1094o = null;
            requestLayout();
        }
        if (this.d != 4) {
            removeAllViews();
            this.f1087h.clear();
            f.b(fVar);
            fVar.d = 0;
            this.d = 4;
            requestLayout();
        }
        this.f1099v = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isMeasurementUpToDate(int i9, int i10, int i11) {
        int mode = View$MeasureSpec.getMode(i10);
        int size = View$MeasureSpec.getSize(i10);
        if (i11 > 0 && i9 != i11) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i9;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i9;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void A(f fVar, boolean z8, boolean z9) {
        if (z9) {
            v();
        } else {
            this.f1091l.f4072b = false;
        }
        if (i() || !this.f1085f) {
            this.f1091l.f4071a = fVar.c - this.f1093n.getStartAfterPadding();
        } else {
            this.f1091l.f4071a = (this.w.getWidth() - fVar.c) - this.f1093n.getStartAfterPadding();
        }
        h hVar = this.f1091l;
        hVar.d = fVar.f4060a;
        hVar.f4075h = -1;
        hVar.e = fVar.c;
        hVar.f4073f = Integer.MIN_VALUE;
        int i9 = fVar.f4061b;
        hVar.c = i9;
        if (!z8 || i9 <= 0) {
            return;
        }
        int size = this.f1087h.size();
        int i10 = fVar.f4061b;
        if (size > i10) {
            c cVar = (c) this.f1087h.get(i10);
            h hVar2 = this.f1091l;
            hVar2.c--;
            hVar2.d -= cVar.f4042h;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final void a(View view, int i9, int i10, c cVar) {
        calculateItemDecorationsForChild(view, f1083z);
        if (i()) {
            int rightDecorationWidth = getRightDecorationWidth(view) + getLeftDecorationWidth(view);
            cVar.e += rightDecorationWidth;
            cVar.f4040f += rightDecorationWidth;
            return;
        }
        int bottomDecorationHeight = getBottomDecorationHeight(view) + getTopDecorationHeight(view);
        cVar.e += bottomDecorationHeight;
        cVar.f4040f += bottomDecorationHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final View c(int i9) {
        return f(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final boolean canScrollHorizontally() {
        if (this.c == 0) {
            return i();
        }
        if (!i()) {
            return true;
        }
        int width = getWidth();
        View view = this.w;
        return width > (view != null ? view.getWidth() : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final boolean canScrollVertically() {
        if (this.c == 0) {
            return !i();
        }
        if (!i()) {
            int height = getHeight();
            View view = this.w;
            if (height <= (view != null ? view.getHeight() : 0)) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final boolean checkLayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return recyclerView$LayoutParams instanceof g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView$State recyclerView$State) {
        return computeScrollExtent(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView$State recyclerView$State) {
        return computeScrollOffset(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView$State recyclerView$State) {
        return computeScrollRange(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int computeScrollExtent(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = recyclerView$State.getItemCount();
        k();
        View viewM = m(itemCount);
        View viewO = o(itemCount);
        if (recyclerView$State.getItemCount() == 0 || viewM == null || viewO == null) {
            return 0;
        }
        return Math.min(this.f1093n.getTotalSpace(), this.f1093n.getDecoratedEnd(viewO) - this.f1093n.getDecoratedStart(viewM));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int computeScrollOffset(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = recyclerView$State.getItemCount();
        View viewM = m(itemCount);
        View viewO = o(itemCount);
        if (recyclerView$State.getItemCount() != 0 && viewM != null && viewO != null) {
            int position = getPosition(viewM);
            int position2 = getPosition(viewO);
            int iAbs = Math.abs(this.f1093n.getDecoratedEnd(viewO) - this.f1093n.getDecoratedStart(viewM));
            int[] iArr = (int[]) this.f1088i.e;
            int i9 = iArr[position];
            if (i9 != 0 && i9 != -1) {
                return Math.round((i9 * (iAbs / ((iArr[position2] - i9) + 1))) + (this.f1093n.getStartAfterPadding() - this.f1093n.getDecoratedStart(viewM)));
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int computeScrollRange(RecyclerView$State recyclerView$State) {
        if (getChildCount() != 0) {
            int itemCount = recyclerView$State.getItemCount();
            View viewM = m(itemCount);
            View viewO = o(itemCount);
            if (recyclerView$State.getItemCount() != 0 && viewM != null && viewO != null) {
                View viewQ = q(0, getChildCount());
                int position = viewQ == null ? -1 : getPosition(viewQ);
                View viewQ2 = q(getChildCount() - 1, -1);
                return (int) ((Math.abs(this.f1093n.getDecoratedEnd(viewO) - this.f1093n.getDecoratedStart(viewM)) / (((viewQ2 != null ? getPosition(viewQ2) : -1) - position) + 1)) * recyclerView$State.getItemCount());
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider
    public final PointF computeScrollVectorForPosition(int i9) {
        View childAt;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        int i10 = i9 < getPosition(childAt) ? -1 : 1;
        return i() ? new PointF(0.0f, i10) : new PointF(i10, 0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView$State recyclerView$State) {
        return computeScrollExtent(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView$State recyclerView$State) {
        return computeScrollOffset(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int computeVerticalScrollRange(RecyclerView$State recyclerView$State) {
        return computeScrollRange(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int d(int i9, int i10, int i11) {
        return RecyclerView$LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), i10, i11, canScrollHorizontally());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final void e(int i9, View view) {
        this.f1098u.put(i9, view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final View f(int i9) {
        View view = (View) this.f1098u.get(i9);
        return view != null ? view : this.f1089j.getViewForPosition(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int fixLayoutEndGap(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z8) {
        int iS;
        int endAfterPadding;
        if (i() || !this.f1085f) {
            int endAfterPadding2 = this.f1093n.getEndAfterPadding() - i9;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            iS = -s(-endAfterPadding2, recyclerView$Recycler, recyclerView$State);
        } else {
            int startAfterPadding = i9 - this.f1093n.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            iS = s(startAfterPadding, recyclerView$Recycler, recyclerView$State);
        }
        int i10 = i9 + iS;
        if (!z8 || (endAfterPadding = this.f1093n.getEndAfterPadding() - i10) <= 0) {
            return iS;
        }
        this.f1093n.offsetChildren(endAfterPadding);
        return endAfterPadding + iS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int fixLayoutStartGap(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z8) {
        int iS;
        int startAfterPadding;
        if (i() || !this.f1085f) {
            int startAfterPadding2 = i9 - this.f1093n.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            iS = -s(startAfterPadding2, recyclerView$Recycler, recyclerView$State);
        } else {
            int endAfterPadding = this.f1093n.getEndAfterPadding() - i9;
            if (endAfterPadding <= 0) {
                return 0;
            }
            iS = s(-endAfterPadding, recyclerView$Recycler, recyclerView$State);
        }
        int i10 = i9 + iS;
        if (!z8 || (startAfterPadding = i10 - this.f1093n.getStartAfterPadding()) <= 0) {
            return iS;
        }
        this.f1093n.offsetChildren(-startAfterPadding);
        return iS - startAfterPadding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int g(View view, int i9, int i10) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (i()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return bottomDecorationHeight + topDecorationHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final RecyclerView$LayoutParams generateDefaultLayoutParams() {
        g gVar = new g(-2, -2);
        gVar.f4065b = 0.0f;
        gVar.c = 1.0f;
        gVar.d = -1;
        gVar.e = -1.0f;
        gVar.f4068h = ViewCompat.MEASURED_SIZE_MASK;
        gVar.f4069i = ViewCompat.MEASURED_SIZE_MASK;
        return gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final RecyclerView$LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        g gVar = new g(context, attributeSet);
        gVar.f4065b = 0.0f;
        gVar.c = 1.0f;
        gVar.d = -1;
        gVar.e = -1.0f;
        gVar.f4068h = ViewCompat.MEASURED_SIZE_MASK;
        gVar.f4069i = ViewCompat.MEASURED_SIZE_MASK;
        return gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int getAlignContent() {
        return 5;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int getAlignItems() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int getFlexDirection() {
        return this.f1084b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int getFlexItemCount() {
        return this.f1090k.getItemCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final List getFlexLinesInternal() {
        return this.f1087h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int getFlexWrap() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int getLargestMainSize() {
        if (this.f1087h.size() == 0) {
            return 0;
        }
        int size = this.f1087h.size();
        int iMax = Integer.MIN_VALUE;
        for (int i9 = 0; i9 < size; i9++) {
            iMax = Math.max(iMax, ((c) this.f1087h.get(i9)).e);
        }
        return iMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int getMaxLine() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int getSumOfCrossSize() {
        int size = this.f1087h.size();
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            i9 += ((c) this.f1087h.get(i10)).f4041g;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int h(int i9, int i10, int i11) {
        return RecyclerView$LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), i10, i11, canScrollVertically());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final boolean i() {
        int i9 = this.f1084b;
        return i9 == 0 || i9 == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int j(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (i()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return rightDecorationWidth + leftDecorationWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k() {
        if (this.f1093n != null) {
            return;
        }
        boolean zI = i();
        int i9 = this.c;
        if (zI) {
            if (i9 == 0) {
                this.f1093n = OrientationHelper.createHorizontalHelper(this);
                this.f1094o = OrientationHelper.createVerticalHelper(this);
                return;
            } else {
                this.f1093n = OrientationHelper.createVerticalHelper(this);
                this.f1094o = OrientationHelper.createHorizontalHelper(this);
                return;
            }
        }
        if (i9 == 0) {
            this.f1093n = OrientationHelper.createVerticalHelper(this);
            this.f1094o = OrientationHelper.createHorizontalHelper(this);
        } else {
            this.f1093n = OrientationHelper.createHorizontalHelper(this);
            this.f1094o = OrientationHelper.createVerticalHelper(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int l(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, h hVar) {
        int i9;
        boolean z8;
        int i10;
        int i11;
        Rect rect;
        int i12;
        int i13;
        int i14;
        Rect rect2;
        int i15 = hVar.f4073f;
        if (i15 != Integer.MIN_VALUE) {
            int i16 = hVar.f4071a;
            if (i16 < 0) {
                hVar.f4073f = i15 + i16;
            }
            u(recyclerView$Recycler, hVar);
        }
        int i17 = hVar.f4071a;
        boolean zI = i();
        int i18 = i17;
        int i19 = 0;
        while (true) {
            if (i18 <= 0 && !this.f1091l.f4072b) {
                break;
            }
            List list = this.f1087h;
            int i20 = hVar.d;
            if (i20 < 0 || i20 >= recyclerView$State.getItemCount() || (i9 = hVar.c) < 0 || i9 >= list.size()) {
                break;
            }
            c cVar = (c) this.f1087h.get(hVar.c);
            hVar.d = cVar.f4049o;
            boolean zI2 = i();
            f fVar = this.f1092m;
            Rect rect3 = f1083z;
            s3 s3Var = this.f1088i;
            if (zI2) {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int width = getWidth();
                int i21 = hVar.e;
                if (hVar.f4075h == -1) {
                    i21 -= cVar.f4041g;
                }
                int i22 = hVar.d;
                float f8 = fVar.d;
                float f9 = paddingLeft - f8;
                float leftDecorationWidth = (width - paddingRight) - f8;
                float fMax = Math.max(0.0f, 0.0f);
                int i23 = cVar.f4042h;
                int i24 = i21;
                int i25 = i22;
                int i26 = 0;
                while (i25 < i22 + i23) {
                    int i27 = i22;
                    View viewF = f(i25);
                    if (viewF == null) {
                        i26 = i26;
                        i25 = i25;
                        rect2 = rect3;
                    } else {
                        if (hVar.f4075h == 1) {
                            calculateItemDecorationsForChild(viewF, rect3);
                            addView(viewF);
                        } else {
                            calculateItemDecorationsForChild(viewF, rect3);
                            addView(viewF, i26);
                            i26++;
                        }
                        long j9 = ((long[]) s3Var.f1952f)[i25];
                        int i28 = (int) j9;
                        int i29 = (int) (j9 >> 32);
                        g gVar = (g) viewF.getLayoutParams();
                        if (x(viewF, i28, i29, gVar)) {
                            viewF.measure(i28, i29);
                        }
                        float leftDecorationWidth2 = f9 + getLeftDecorationWidth(viewF) + ((ViewGroup$MarginLayoutParams) gVar).leftMargin;
                        float rightDecorationWidth = leftDecorationWidth - (getRightDecorationWidth(viewF) + ((ViewGroup$MarginLayoutParams) gVar).rightMargin);
                        int topDecorationHeight = getTopDecorationHeight(viewF) + i24;
                        boolean z9 = this.f1085f;
                        s3 s3Var2 = this.f1088i;
                        if (z9) {
                            rect2 = rect3;
                            s3Var2.p(viewF, cVar, Math.round(rightDecorationWidth) - viewF.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), viewF.getMeasuredHeight() + topDecorationHeight);
                        } else {
                            rect2 = rect3;
                            s3Var2.p(viewF, cVar, Math.round(leftDecorationWidth2), topDecorationHeight, viewF.getMeasuredWidth() + Math.round(leftDecorationWidth2), viewF.getMeasuredHeight() + topDecorationHeight);
                        }
                        float rightDecorationWidth2 = getRightDecorationWidth(viewF) + viewF.getMeasuredWidth() + ((ViewGroup$MarginLayoutParams) gVar).rightMargin + fMax + leftDecorationWidth2;
                        leftDecorationWidth = rightDecorationWidth - ((getLeftDecorationWidth(viewF) + (viewF.getMeasuredWidth() + ((ViewGroup$MarginLayoutParams) gVar).leftMargin)) + fMax);
                        f9 = rightDecorationWidth2;
                    }
                    i25++;
                    i22 = i27;
                    s3Var = s3Var;
                    zI = zI;
                    i23 = i23;
                    i26 = i26;
                    rect3 = rect2;
                }
                z8 = zI;
                hVar.c += this.f1091l.f4075h;
                i11 = cVar.f4041g;
            } else {
                z8 = zI;
                Rect rect4 = rect3;
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i30 = hVar.e;
                if (hVar.f4075h == -1) {
                    int i31 = cVar.f4041g;
                    i10 = i30 + i31;
                    i30 -= i31;
                } else {
                    i10 = i30;
                }
                int i32 = hVar.d;
                float f10 = height - paddingBottom;
                float f11 = fVar.d;
                float f12 = paddingTop - f11;
                float topDecorationHeight2 = f10 - f11;
                float fMax2 = Math.max(0.0f, 0.0f);
                int i33 = cVar.f4042h;
                int i34 = i32;
                int i35 = 0;
                while (i34 < i32 + i33) {
                    int i36 = i32;
                    View viewF2 = f(i34);
                    if (viewF2 == null) {
                        i13 = i33;
                        i12 = i34;
                        rect = rect4;
                        i14 = i36;
                    } else {
                        float f13 = f12;
                        long j10 = ((long[]) s3Var.f1952f)[i34];
                        float f14 = topDecorationHeight2;
                        int i37 = (int) j10;
                        int i38 = (int) (j10 >> 32);
                        g gVar2 = (g) viewF2.getLayoutParams();
                        if (x(viewF2, i37, i38, gVar2)) {
                            viewF2.measure(i37, i38);
                        }
                        float topDecorationHeight3 = f13 + getTopDecorationHeight(viewF2) + ((ViewGroup$MarginLayoutParams) gVar2).topMargin;
                        float bottomDecorationHeight = f14 - (getBottomDecorationHeight(viewF2) + ((ViewGroup$MarginLayoutParams) gVar2).rightMargin);
                        if (hVar.f4075h == 1) {
                            rect = rect4;
                            calculateItemDecorationsForChild(viewF2, rect);
                            addView(viewF2);
                        } else {
                            rect = rect4;
                            calculateItemDecorationsForChild(viewF2, rect);
                            addView(viewF2, i35);
                            i35++;
                        }
                        int i39 = i35;
                        int leftDecorationWidth3 = getLeftDecorationWidth(viewF2) + i30;
                        int rightDecorationWidth3 = i10 - getRightDecorationWidth(viewF2);
                        int i40 = i34;
                        boolean z10 = this.f1085f;
                        boolean z11 = this.f1086g;
                        int i41 = i33;
                        s3 s3Var3 = this.f1088i;
                        if (!z10) {
                            i12 = i40;
                            i13 = i41;
                            i14 = i36;
                            if (z11) {
                                s3Var3.q(viewF2, cVar, z10, leftDecorationWidth3, Math.round(bottomDecorationHeight) - viewF2.getMeasuredHeight(), viewF2.getMeasuredWidth() + leftDecorationWidth3, Math.round(bottomDecorationHeight));
                            } else {
                                s3Var3.q(viewF2, cVar, z10, leftDecorationWidth3, Math.round(topDecorationHeight3), viewF2.getMeasuredWidth() + leftDecorationWidth3, viewF2.getMeasuredHeight() + Math.round(topDecorationHeight3));
                            }
                        } else if (z11) {
                            i12 = i40;
                            i13 = i41;
                            i14 = i36;
                            s3Var3.q(viewF2, cVar, z10, rightDecorationWidth3 - viewF2.getMeasuredWidth(), Math.round(bottomDecorationHeight) - viewF2.getMeasuredHeight(), rightDecorationWidth3, Math.round(bottomDecorationHeight));
                        } else {
                            i12 = i40;
                            i13 = i41;
                            i14 = i36;
                            s3Var3.q(viewF2, cVar, z10, rightDecorationWidth3 - viewF2.getMeasuredWidth(), Math.round(topDecorationHeight3), rightDecorationWidth3, viewF2.getMeasuredHeight() + Math.round(topDecorationHeight3));
                        }
                        float bottomDecorationHeight2 = getBottomDecorationHeight(viewF2) + viewF2.getMeasuredHeight() + ((ViewGroup$MarginLayoutParams) gVar2).topMargin + fMax2 + topDecorationHeight3;
                        topDecorationHeight2 = bottomDecorationHeight - ((getTopDecorationHeight(viewF2) + (viewF2.getMeasuredHeight() + ((ViewGroup$MarginLayoutParams) gVar2).bottomMargin)) + fMax2);
                        f12 = bottomDecorationHeight2;
                        i35 = i39;
                    }
                    i34 = i12 + 1;
                    i32 = i14;
                    i33 = i13;
                    rect4 = rect;
                }
                hVar.c += this.f1091l.f4075h;
                i11 = cVar.f4041g;
            }
            i19 += i11;
            if (z8 || !this.f1085f) {
                hVar.e += cVar.f4041g * hVar.f4075h;
            } else {
                hVar.e -= cVar.f4041g * hVar.f4075h;
            }
            i18 -= cVar.f4041g;
            i17 = i17;
            zI = z8;
        }
        int i42 = i17;
        int i43 = hVar.f4071a - i19;
        hVar.f4071a = i43;
        int i44 = hVar.f4073f;
        if (i44 != Integer.MIN_VALUE) {
            int i45 = i44 + i19;
            hVar.f4073f = i45;
            if (i43 < 0) {
                hVar.f4073f = i45 + i43;
            }
            u(recyclerView$Recycler, hVar);
        }
        return i42 - hVar.f4071a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final View m(int i9) {
        View viewR = r(0, getChildCount(), i9);
        if (viewR == null) {
            return null;
        }
        int i10 = ((int[]) this.f1088i.e)[getPosition(viewR)];
        if (i10 == -1) {
            return null;
        }
        return n(viewR, (c) this.f1087h.get(i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    public final View n(View view, c cVar) {
        boolean zI = i();
        int i9 = cVar.f4042h;
        for (int i10 = 1; i10 < i9; i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f1085f || zI) {
                    if (this.f1093n.getDecoratedStart(view) > this.f1093n.getDecoratedStart(childAt)) {
                        view = childAt;
                    }
                } else if (this.f1093n.getDecoratedEnd(view) < this.f1093n.getDecoratedEnd(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final View o(int i9) {
        View viewR = r(getChildCount() - 1, -1, i9);
        if (viewR == null) {
            return null;
        }
        return p(viewR, (c) this.f1087h.get(((int[]) this.f1088i.e)[getPosition(viewR)]));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onAdapterChanged(RecyclerView$Adapter recyclerView$Adapter, RecyclerView$Adapter recyclerView$Adapter2) {
        removeAllViews();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.w = (View) recyclerView.getParent();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onItemsAdded(RecyclerView recyclerView, int i9, int i10) {
        super.onItemsAdded(recyclerView, i9, i10);
        y(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onItemsMoved(RecyclerView recyclerView, int i9, int i10, int i11) {
        super.onItemsMoved(recyclerView, i9, i10, i11);
        y(Math.min(i9, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onItemsRemoved(RecyclerView recyclerView, int i9, int i10) {
        super.onItemsRemoved(recyclerView, i9, i10);
        y(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onItemsUpdated(RecyclerView recyclerView, int i9, int i10, Object obj) {
        super.onItemsUpdated(recyclerView, i9, i10, obj);
        y(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        View viewM;
        FlexboxLayoutManager flexboxLayoutManager;
        OrientationHelper orientationHelper;
        int position;
        int i9;
        int size;
        int i10;
        boolean z8;
        OrientationHelper orientationHelper2;
        int startAfterPadding;
        int i11;
        View viewFindViewByPosition;
        View childAt;
        boolean z9;
        int decoratedStart;
        OrientationHelper orientationHelper3;
        boolean z10;
        OrientationHelper orientationHelper4;
        int decoratedStart2;
        boolean z11;
        int i12;
        boolean z12;
        int i13;
        int i14;
        int i15;
        this.f1089j = recyclerView$Recycler;
        this.f1090k = recyclerView$State;
        int itemCount = recyclerView$State.getItemCount();
        if (itemCount == 0 && recyclerView$State.isPreLayout()) {
            return;
        }
        int layoutDirection = getLayoutDirection();
        int i16 = this.f1084b;
        if (i16 == 0) {
            this.f1085f = layoutDirection == 1;
            this.f1086g = this.c == 2;
        } else if (i16 == 1) {
            this.f1085f = layoutDirection != 1;
            this.f1086g = this.c == 2;
        } else if (i16 == 2) {
            boolean z13 = layoutDirection == 1;
            this.f1085f = z13;
            if (this.c == 2) {
                this.f1085f = !z13;
            }
            this.f1086g = false;
        } else if (i16 != 3) {
            this.f1085f = false;
            this.f1086g = false;
        } else {
            boolean z14 = layoutDirection == 1;
            this.f1085f = z14;
            if (this.c == 2) {
                this.f1085f = !z14;
            }
            this.f1086g = true;
        }
        k();
        if (this.f1091l == null) {
            h hVar = new h();
            hVar.f4075h = 1;
            this.f1091l = hVar;
        }
        s3 s3Var = this.f1088i;
        s3Var.k(itemCount);
        s3Var.l(itemCount);
        s3Var.j(itemCount);
        this.f1091l.f4076i = false;
        i iVar = this.f1095p;
        if (iVar != null && (i15 = iVar.f4077b) >= 0 && i15 < itemCount) {
            this.f1096q = i15;
        }
        f fVar = this.f1092m;
        if (!fVar.f4062f || this.f1096q != -1 || iVar != null) {
            f.b(fVar);
            i iVar2 = this.f1095p;
            if (recyclerView$State.isPreLayout() || (i11 = this.f1096q) == -1) {
                if (getChildCount() != 0) {
                    if (fVar.e) {
                        viewM = o(recyclerView$State.getItemCount());
                    } else {
                        viewM = m(recyclerView$State.getItemCount());
                    }
                    if (viewM != null) {
                        flexboxLayoutManager = fVar.f4064h;
                        if (flexboxLayoutManager.c == 0) {
                            orientationHelper = flexboxLayoutManager.f1094o;
                        } else {
                            orientationHelper = flexboxLayoutManager.f1093n;
                        }
                        if (flexboxLayoutManager.i() && flexboxLayoutManager.f1085f) {
                            if (fVar.e) {
                                fVar.c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedStart(viewM);
                            } else {
                                fVar.c = orientationHelper.getDecoratedEnd(viewM);
                            }
                        } else if (fVar.e) {
                            fVar.c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(viewM);
                        } else {
                            fVar.c = orientationHelper.getDecoratedStart(viewM);
                        }
                        position = flexboxLayoutManager.getPosition(viewM);
                        fVar.f4060a = position;
                        fVar.f4063g = false;
                        int[] iArr = (int[]) flexboxLayoutManager.f1088i.e;
                        if (position == -1) {
                            position = 0;
                        }
                        i9 = iArr[position];
                        if (i9 == -1) {
                            i9 = 0;
                        }
                        fVar.f4061b = i9;
                        size = flexboxLayoutManager.f1087h.size();
                        i10 = fVar.f4061b;
                        if (size > i10) {
                            fVar.f4060a = ((c) flexboxLayoutManager.f1087h.get(i10)).f4049o;
                        }
                        if (!recyclerView$State.isPreLayout() && supportsPredictiveItemAnimations() && (this.f1093n.getDecoratedStart(viewM) >= this.f1093n.getEndAfterPadding() || this.f1093n.getDecoratedEnd(viewM) < this.f1093n.getStartAfterPadding())) {
                            z8 = fVar.e;
                            orientationHelper2 = this.f1093n;
                            if (z8) {
                                startAfterPadding = orientationHelper2.getEndAfterPadding();
                            } else {
                                startAfterPadding = orientationHelper2.getStartAfterPadding();
                            }
                            fVar.c = startAfterPadding;
                        }
                    } else {
                        f.a(fVar);
                        fVar.f4060a = 0;
                        fVar.f4061b = 0;
                    }
                } else {
                    f.a(fVar);
                    fVar.f4060a = 0;
                    fVar.f4061b = 0;
                }
            } else if (i11 < 0 || i11 >= recyclerView$State.getItemCount()) {
                this.f1096q = -1;
                this.r = Integer.MIN_VALUE;
                if (getChildCount() != 0) {
                    if (fVar.e) {
                        viewM = o(recyclerView$State.getItemCount());
                    } else {
                        viewM = m(recyclerView$State.getItemCount());
                    }
                    if (viewM != null) {
                        flexboxLayoutManager = fVar.f4064h;
                        if (flexboxLayoutManager.c == 0) {
                            orientationHelper = flexboxLayoutManager.f1094o;
                        } else {
                            orientationHelper = flexboxLayoutManager.f1093n;
                        }
                        if (flexboxLayoutManager.i()) {
                            if (fVar.e) {
                                fVar.c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(viewM);
                            } else {
                                fVar.c = orientationHelper.getDecoratedStart(viewM);
                            }
                        } else if (fVar.e) {
                            fVar.c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(viewM);
                        } else {
                            fVar.c = orientationHelper.getDecoratedStart(viewM);
                        }
                        position = flexboxLayoutManager.getPosition(viewM);
                        fVar.f4060a = position;
                        fVar.f4063g = false;
                        int[] iArr2 = (int[]) flexboxLayoutManager.f1088i.e;
                        if (position == -1) {
                            position = 0;
                        }
                        i9 = iArr2[position];
                        if (i9 == -1) {
                            i9 = 0;
                        }
                        fVar.f4061b = i9;
                        size = flexboxLayoutManager.f1087h.size();
                        i10 = fVar.f4061b;
                        if (size > i10) {
                            fVar.f4060a = ((c) flexboxLayoutManager.f1087h.get(i10)).f4049o;
                        }
                        if (!recyclerView$State.isPreLayout()) {
                            z8 = fVar.e;
                            orientationHelper2 = this.f1093n;
                            if (z8) {
                                startAfterPadding = orientationHelper2.getEndAfterPadding();
                            } else {
                                startAfterPadding = orientationHelper2.getStartAfterPadding();
                            }
                            fVar.c = startAfterPadding;
                        }
                    } else {
                        f.a(fVar);
                        fVar.f4060a = 0;
                        fVar.f4061b = 0;
                    }
                } else {
                    f.a(fVar);
                    fVar.f4060a = 0;
                    fVar.f4061b = 0;
                }
            } else {
                int i17 = this.f1096q;
                fVar.f4060a = i17;
                fVar.f4061b = ((int[]) s3Var.e)[i17];
                i iVar3 = this.f1095p;
                if (iVar3 != null) {
                    int itemCount2 = recyclerView$State.getItemCount();
                    int i18 = iVar3.f4077b;
                    if (i18 >= 0 && i18 < itemCount2) {
                        fVar.c = this.f1093n.getStartAfterPadding() + iVar2.c;
                        fVar.f4063g = true;
                        fVar.f4061b = -1;
                    } else if (this.r == Integer.MIN_VALUE) {
                        viewFindViewByPosition = findViewByPosition(this.f1096q);
                        if (viewFindViewByPosition != null) {
                            if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                                if (this.f1096q < getPosition(childAt)) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                fVar.e = z9;
                            }
                            f.a(fVar);
                        } else if (this.f1093n.getDecoratedMeasurement(viewFindViewByPosition) > this.f1093n.getTotalSpace()) {
                            f.a(fVar);
                        } else {
                            decoratedStart = this.f1093n.getDecoratedStart(viewFindViewByPosition) - this.f1093n.getStartAfterPadding();
                            orientationHelper3 = this.f1093n;
                            if (decoratedStart < 0) {
                                fVar.c = orientationHelper3.getStartAfterPadding();
                                fVar.e = false;
                            } else if (orientationHelper3.getEndAfterPadding() - this.f1093n.getDecoratedEnd(viewFindViewByPosition) < 0) {
                                fVar.c = this.f1093n.getEndAfterPadding();
                                fVar.e = true;
                            } else {
                                z10 = fVar.e;
                                orientationHelper4 = this.f1093n;
                                if (z10) {
                                    decoratedStart2 = this.f1093n.getTotalSpaceChange() + orientationHelper4.getDecoratedEnd(viewFindViewByPosition);
                                } else {
                                    decoratedStart2 = orientationHelper4.getDecoratedStart(viewFindViewByPosition);
                                }
                                fVar.c = decoratedStart2;
                            }
                        }
                    } else if (i() && this.f1085f) {
                        fVar.c = this.r - this.f1093n.getEndPadding();
                    } else {
                        fVar.c = this.f1093n.getStartAfterPadding() + this.r;
                    }
                } else if (this.r == Integer.MIN_VALUE) {
                    viewFindViewByPosition = findViewByPosition(this.f1096q);
                    if (viewFindViewByPosition != null) {
                        if (getChildCount() > 0) {
                            if (this.f1096q < getPosition(childAt)) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            fVar.e = z9;
                        }
                        f.a(fVar);
                    } else if (this.f1093n.getDecoratedMeasurement(viewFindViewByPosition) > this.f1093n.getTotalSpace()) {
                        f.a(fVar);
                    } else {
                        decoratedStart = this.f1093n.getDecoratedStart(viewFindViewByPosition) - this.f1093n.getStartAfterPadding();
                        orientationHelper3 = this.f1093n;
                        if (decoratedStart < 0) {
                            fVar.c = orientationHelper3.getStartAfterPadding();
                            fVar.e = false;
                        } else if (orientationHelper3.getEndAfterPadding() - this.f1093n.getDecoratedEnd(viewFindViewByPosition) < 0) {
                            fVar.c = this.f1093n.getEndAfterPadding();
                            fVar.e = true;
                        } else {
                            z10 = fVar.e;
                            orientationHelper4 = this.f1093n;
                            if (z10) {
                                decoratedStart2 = this.f1093n.getTotalSpaceChange() + orientationHelper4.getDecoratedEnd(viewFindViewByPosition);
                            } else {
                                decoratedStart2 = orientationHelper4.getDecoratedStart(viewFindViewByPosition);
                            }
                            fVar.c = decoratedStart2;
                        }
                    }
                } else if (i()) {
                    fVar.c = this.f1093n.getStartAfterPadding() + this.r;
                } else {
                    fVar.c = this.f1093n.getStartAfterPadding() + this.r;
                }
            }
            fVar.f4062f = true;
        }
        detachAndScrapAttachedViews(recyclerView$Recycler);
        if (fVar.e) {
            A(fVar, false, true);
        } else {
            z(fVar, false, true);
        }
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean zI = i();
        Context context = this.f1099v;
        if (zI) {
            int i19 = this.f1097s;
            z11 = (i19 == Integer.MIN_VALUE || i19 == width) ? false : true;
            h hVar2 = this.f1091l;
            i12 = hVar2.f4072b ? context.getResources().getDisplayMetrics().heightPixels : hVar2.f4071a;
        } else {
            int i20 = this.t;
            z11 = (i20 == Integer.MIN_VALUE || i20 == height) ? false : true;
            h hVar3 = this.f1091l;
            i12 = hVar3.f4072b ? context.getResources().getDisplayMetrics().widthPixels : hVar3.f4071a;
        }
        int i21 = i12;
        this.f1097s = width;
        this.t = height;
        int i22 = this.f1100x;
        j.i iVar4 = this.f1101y;
        if (i22 != -1 || (this.f1096q == -1 && !z11)) {
            int iMin = fVar.f4060a;
            if (i22 != -1) {
                iMin = Math.min(i22, iMin);
            }
            iVar4.c = null;
            iVar4.f2793b = 0;
            boolean zI2 = i();
            List list = this.f1087h;
            if (zI2) {
                if (list.size() > 0) {
                    s3Var.d(iMin, this.f1087h);
                    this.f1088i.b(this.f1101y, iMakeMeasureSpec, iMakeMeasureSpec2, i21, iMin, fVar.f4060a, this.f1087h);
                } else {
                    s3Var.j(itemCount);
                    this.f1088i.b(this.f1101y, iMakeMeasureSpec, iMakeMeasureSpec2, i21, 0, -1, this.f1087h);
                }
            } else if (list.size() > 0) {
                s3Var.d(iMin, this.f1087h);
                int i23 = iMin;
                this.f1088i.b(this.f1101y, iMakeMeasureSpec2, iMakeMeasureSpec, i21, i23, fVar.f4060a, this.f1087h);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
                iMin = i23;
            } else {
                s3Var.j(itemCount);
                this.f1088i.b(this.f1101y, iMakeMeasureSpec2, iMakeMeasureSpec, i21, 0, -1, this.f1087h);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
            }
            this.f1087h = (List) iVar4.c;
            s3Var.i(iMakeMeasureSpec, iMakeMeasureSpec2, iMin);
            s3Var.w(iMin);
        } else if (!fVar.e) {
            this.f1087h.clear();
            iVar4.c = null;
            iVar4.f2793b = 0;
            boolean zI3 = i();
            int i24 = fVar.f4060a;
            s3 s3Var2 = this.f1088i;
            j.i iVar5 = this.f1101y;
            if (zI3) {
                s3Var2.b(iVar5, iMakeMeasureSpec, iMakeMeasureSpec2, i21, 0, i24, this.f1087h);
            } else {
                s3Var2.b(iVar5, iMakeMeasureSpec2, iMakeMeasureSpec, i21, 0, i24, this.f1087h);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
            }
            this.f1087h = (List) iVar4.c;
            s3Var.i(iMakeMeasureSpec, iMakeMeasureSpec2, 0);
            s3Var.w(0);
            int i25 = ((int[]) s3Var.e)[fVar.f4060a];
            fVar.f4061b = i25;
            this.f1091l.c = i25;
        }
        l(recyclerView$Recycler, recyclerView$State, this.f1091l);
        boolean z15 = fVar.e;
        h hVar4 = this.f1091l;
        if (z15) {
            i14 = hVar4.e;
            z12 = true;
            z(fVar, true, false);
            l(recyclerView$Recycler, recyclerView$State, this.f1091l);
            i13 = this.f1091l.e;
        } else {
            z12 = true;
            i13 = hVar4.e;
            A(fVar, true, false);
            l(recyclerView$Recycler, recyclerView$State, this.f1091l);
            i14 = this.f1091l.e;
        }
        if (getChildCount() > 0) {
            if (fVar.e) {
                fixLayoutStartGap(fixLayoutEndGap(i13, recyclerView$Recycler, recyclerView$State, z12) + i14, recyclerView$Recycler, recyclerView$State, false);
            } else {
                fixLayoutEndGap(fixLayoutStartGap(i14, recyclerView$Recycler, recyclerView$State, z12) + i13, recyclerView$Recycler, recyclerView$State, false);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onLayoutCompleted(RecyclerView$State recyclerView$State) {
        super.onLayoutCompleted(recyclerView$State);
        this.f1095p = null;
        this.f1096q = -1;
        this.r = Integer.MIN_VALUE;
        this.f1100x = -1;
        f.b(this.f1092m);
        this.f1098u.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof i) {
            this.f1095p = (i) parcelable;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final Parcelable onSaveInstanceState() {
        i iVar = this.f1095p;
        if (iVar != null) {
            i iVar2 = new i();
            iVar2.f4077b = iVar.f4077b;
            iVar2.c = iVar.c;
            return iVar2;
        }
        i iVar3 = new i();
        if (getChildCount() <= 0) {
            iVar3.f4077b = -1;
            return iVar3;
        }
        View childAt = getChildAt(0);
        iVar3.f4077b = getPosition(childAt);
        iVar3.c = this.f1093n.getDecoratedStart(childAt) - this.f1093n.getStartAfterPadding();
        return iVar3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:17:0x0047  */
    public final View p(View view, c cVar) {
        boolean zI = i();
        int childCount = (getChildCount() - cVar.f4042h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f1085f || zI) {
                    if (this.f1093n.getDecoratedEnd(view) < this.f1093n.getDecoratedEnd(childAt)) {
                        view = childAt;
                    }
                } else if (this.f1093n.getDecoratedStart(view) > this.f1093n.getDecoratedStart(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final View q(int i9, int i10) {
        int i11 = i10 > i9 ? 1 : -1;
        while (i9 != i10) {
            View childAt = getChildAt(i9);
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int decoratedLeft = getDecoratedLeft(childAt) - ((ViewGroup$MarginLayoutParams) ((RecyclerView$LayoutParams) childAt.getLayoutParams())).leftMargin;
            int decoratedTop = getDecoratedTop(childAt) - ((ViewGroup$MarginLayoutParams) ((RecyclerView$LayoutParams) childAt.getLayoutParams())).topMargin;
            int decoratedRight = getDecoratedRight(childAt) + ((ViewGroup$MarginLayoutParams) ((RecyclerView$LayoutParams) childAt.getLayoutParams())).rightMargin;
            int decoratedBottom = getDecoratedBottom(childAt) + ((ViewGroup$MarginLayoutParams) ((RecyclerView$LayoutParams) childAt.getLayoutParams())).bottomMargin;
            boolean z8 = decoratedLeft >= width || decoratedRight >= paddingLeft;
            boolean z9 = decoratedTop >= height || decoratedBottom >= paddingTop;
            if (z8 && z9) {
                return childAt;
            }
            i9 += i11;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final View r(int i9, int i10, int i11) {
        int position;
        k();
        if (this.f1091l == null) {
            h hVar = new h();
            hVar.f4075h = 1;
            this.f1091l = hVar;
        }
        int startAfterPadding = this.f1093n.getStartAfterPadding();
        int endAfterPadding = this.f1093n.getEndAfterPadding();
        int i12 = i10 <= i9 ? -1 : 1;
        View view = null;
        View view2 = null;
        while (i9 != i10) {
            View childAt = getChildAt(i9);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < i11) {
                if (((RecyclerView$LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.f1093n.getDecoratedStart(childAt) >= startAfterPadding && this.f1093n.getDecoratedEnd(childAt) <= endAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i9 += i12;
        }
        return view != null ? view : view2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:75:0x01f7  */
    public final int s(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        int i10;
        if (getChildCount() != 0 && i9 != 0) {
            k();
            this.f1091l.f4076i = true;
            boolean z8 = !i() && this.f1085f;
            int i11 = (!z8 ? i9 > 0 : i9 < 0) ? -1 : 1;
            int iAbs = Math.abs(i9);
            this.f1091l.f4075h = i11;
            boolean zI = i();
            int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
            int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
            boolean z9 = !zI && this.f1085f;
            s3 s3Var = this.f1088i;
            if (i11 == 1) {
                View childAt = getChildAt(getChildCount() - 1);
                if (childAt != null) {
                    this.f1091l.e = this.f1093n.getDecoratedEnd(childAt);
                    int position = getPosition(childAt);
                    View viewP = p(childAt, (c) this.f1087h.get(((int[]) s3Var.e)[position]));
                    h hVar = this.f1091l;
                    hVar.getClass();
                    int i12 = position + 1;
                    hVar.d = i12;
                    int[] iArr = (int[]) s3Var.e;
                    if (iArr.length <= i12) {
                        hVar.c = -1;
                    } else {
                        hVar.c = iArr[i12];
                    }
                    OrientationHelper orientationHelper = this.f1093n;
                    if (z9) {
                        hVar.e = orientationHelper.getDecoratedStart(viewP);
                        this.f1091l.f4073f = this.f1093n.getStartAfterPadding() + (-this.f1093n.getDecoratedStart(viewP));
                        h hVar2 = this.f1091l;
                        hVar2.f4073f = Math.max(hVar2.f4073f, 0);
                    } else {
                        hVar.e = orientationHelper.getDecoratedEnd(viewP);
                        this.f1091l.f4073f = this.f1093n.getDecoratedEnd(viewP) - this.f1093n.getEndAfterPadding();
                    }
                    int i13 = this.f1091l.c;
                    if ((i13 == -1 || i13 > this.f1087h.size() - 1) && this.f1091l.d <= this.f1090k.getItemCount()) {
                        h hVar3 = this.f1091l;
                        int i14 = iAbs - hVar3.f4073f;
                        j.i iVar = this.f1101y;
                        iVar.c = null;
                        iVar.f2793b = 0;
                        if (i14 > 0) {
                            s3 s3Var2 = this.f1088i;
                            if (zI) {
                                s3Var2.b(iVar, iMakeMeasureSpec, iMakeMeasureSpec2, i14, hVar3.d, -1, this.f1087h);
                            } else {
                                s3Var2.b(iVar, iMakeMeasureSpec2, iMakeMeasureSpec, i14, hVar3.d, -1, this.f1087h);
                                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                                iMakeMeasureSpec = iMakeMeasureSpec;
                            }
                            s3Var.i(iMakeMeasureSpec, iMakeMeasureSpec2, this.f1091l.d);
                            s3Var.w(this.f1091l.d);
                        }
                    }
                    h hVar4 = this.f1091l;
                    hVar4.f4071a = iAbs - hVar4.f4073f;
                }
            } else {
                View childAt2 = getChildAt(0);
                if (childAt2 != null) {
                    this.f1091l.e = this.f1093n.getDecoratedStart(childAt2);
                    int position2 = getPosition(childAt2);
                    View viewN = n(childAt2, (c) this.f1087h.get(((int[]) s3Var.e)[position2]));
                    h hVar5 = this.f1091l;
                    hVar5.getClass();
                    int i15 = ((int[]) s3Var.e)[position2];
                    if (i15 == -1) {
                        i15 = 0;
                    }
                    if (i15 > 0) {
                        this.f1091l.d = position2 - ((c) this.f1087h.get(i15 - 1)).f4042h;
                    } else {
                        hVar5.d = -1;
                    }
                    h hVar6 = this.f1091l;
                    hVar6.c = i15 > 0 ? i15 - 1 : 0;
                    OrientationHelper orientationHelper2 = this.f1093n;
                    if (z9) {
                        hVar6.e = orientationHelper2.getDecoratedEnd(viewN);
                        this.f1091l.f4073f = this.f1093n.getDecoratedEnd(viewN) - this.f1093n.getEndAfterPadding();
                        h hVar7 = this.f1091l;
                        hVar7.f4073f = Math.max(hVar7.f4073f, 0);
                    } else {
                        hVar6.e = orientationHelper2.getDecoratedStart(viewN);
                        this.f1091l.f4073f = this.f1093n.getStartAfterPadding() + (-this.f1093n.getDecoratedStart(viewN));
                    }
                    h hVar8 = this.f1091l;
                    hVar8.f4071a = iAbs - hVar8.f4073f;
                }
            }
            h hVar9 = this.f1091l;
            int iL = l(recyclerView$Recycler, recyclerView$State, hVar9) + hVar9.f4073f;
            if (iL >= 0) {
                if (z8) {
                    if (iAbs > iL) {
                        i10 = (-i11) * iL;
                    } else {
                        i10 = i9;
                    }
                } else if (iAbs > iL) {
                    i10 = i11 * iL;
                } else {
                    i10 = i9;
                }
                this.f1093n.offsetChildren(-i10);
                this.f1091l.f4074g = i10;
                return i10;
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int scrollHorizontallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (!i() || this.c == 0) {
            int iS = s(i9, recyclerView$Recycler, recyclerView$State);
            this.f1098u.clear();
            return iS;
        }
        int iT = t(i9);
        this.f1092m.d += iT;
        this.f1094o.offsetChildren(-iT);
        return iT;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void scrollToPosition(int i9) {
        this.f1096q = i9;
        this.r = Integer.MIN_VALUE;
        i iVar = this.f1095p;
        if (iVar != null) {
            iVar.f4077b = -1;
        }
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final int scrollVerticallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (i() || (this.c == 0 && !i())) {
            int iS = s(i9, recyclerView$Recycler, recyclerView$State);
            this.f1098u.clear();
            return iS;
        }
        int iT = t(i9);
        this.f1092m.d += iT;
        this.f1094o.offsetChildren(-iT);
        return iT;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final void setFlexLines(List list) {
        this.f1087h = list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView$State recyclerView$State, int i9) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i9);
        startSmoothScroll(linearSmoothScroller);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int t(int i9) {
        if (getChildCount() == 0 || i9 == 0) {
            return 0;
        }
        k();
        boolean zI = i();
        View view = this.w;
        int width = zI ? view.getWidth() : view.getHeight();
        int width2 = zI ? getWidth() : getHeight();
        int layoutDirection = getLayoutDirection();
        f fVar = this.f1092m;
        if (layoutDirection == 1) {
            int iAbs = Math.abs(i9);
            if (i9 < 0) {
                return -Math.min((width2 + fVar.d) - width, iAbs);
            }
            int i10 = fVar.d;
            if (i10 + i9 > 0) {
                return -i10;
            }
        } else {
            if (i9 > 0) {
                return Math.min((width2 - fVar.d) - width, i9);
            }
            int i11 = fVar.d;
            if (i11 + i9 < 0) {
                return -i11;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public final void u(RecyclerView$Recycler recyclerView$Recycler, h hVar) {
        int childCount;
        int i9;
        int childCount2;
        int i10;
        View childAt;
        int i11;
        if (hVar.f4076i) {
            int i12 = hVar.f4075h;
            int i13 = hVar.f4073f;
            s3 s3Var = this.f1088i;
            int i14 = -1;
            if (i12 == -1) {
                if (i13 < 0 || (childCount2 = getChildCount()) == 0 || (childAt = getChildAt((i10 = childCount2 - 1))) == null || (i11 = ((int[]) s3Var.e)[getPosition(childAt)]) == -1) {
                    return;
                }
                c cVar = (c) this.f1087h.get(i11);
                for (int i15 = i10; i15 >= 0; i15--) {
                    View childAt2 = getChildAt(i15);
                    if (childAt2 != null) {
                        int i16 = hVar.f4073f;
                        if (!i() && this.f1085f) {
                            if (this.f1093n.getDecoratedEnd(childAt2) > i16) {
                                break;
                            }
                            if (cVar.f4049o != getPosition(childAt2)) {
                                continue;
                            } else if (i11 <= 0) {
                                childCount2 = i15;
                                break;
                            } else {
                                i11 += hVar.f4075h;
                                cVar = (c) this.f1087h.get(i11);
                                childCount2 = i15;
                            }
                        } else {
                            if (this.f1093n.getDecoratedStart(childAt2) < this.f1093n.getEnd() - i16) {
                                break;
                            }
                            if (cVar.f4049o != getPosition(childAt2)) {
                                continue;
                            } else if (i11 <= 0) {
                                childCount2 = i15;
                                break;
                            } else {
                                i11 += hVar.f4075h;
                                cVar = (c) this.f1087h.get(i11);
                                childCount2 = i15;
                            }
                        }
                    }
                }
                while (i10 >= childCount2) {
                    removeAndRecycleViewAt(i10, recyclerView$Recycler);
                    i10--;
                }
                return;
            }
            if (i13 >= 0 && (childCount = getChildCount()) != 0) {
                int i17 = 0;
                View childAt3 = getChildAt(0);
                if (childAt3 == null || (i9 = ((int[]) s3Var.e)[getPosition(childAt3)]) == -1) {
                    return;
                }
                c cVar2 = (c) this.f1087h.get(i9);
                while (true) {
                    if (i17 < childCount) {
                        View childAt4 = getChildAt(i17);
                        if (childAt4 != null) {
                            int i18 = hVar.f4073f;
                            if (i() || !this.f1085f) {
                                if (this.f1093n.getDecoratedEnd(childAt4) <= i18) {
                                    if (cVar2.f4050p != getPosition(childAt4)) {
                                        continue;
                                    } else {
                                        if (i9 >= this.f1087h.size() - 1) {
                                            break;
                                        }
                                        i9 += hVar.f4075h;
                                        cVar2 = (c) this.f1087h.get(i9);
                                        i14 = i17;
                                    }
                                }
                            } else if (this.f1093n.getEnd() - this.f1093n.getDecoratedStart(childAt4) <= i18) {
                                if (cVar2.f4050p != getPosition(childAt4)) {
                                    continue;
                                } else if (i9 >= this.f1087h.size() - 1) {
                                    break;
                                    break;
                                } else {
                                    i9 += hVar.f4075h;
                                    cVar2 = (c) this.f1087h.get(i9);
                                    i14 = i17;
                                }
                            }
                        }
                        i17++;
                    }
                    i17 = i14;
                    break;
                }
                while (i17 >= 0) {
                    removeAndRecycleViewAt(i17, recyclerView$Recycler);
                    i17--;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        int heightMode = i() ? getHeightMode() : getWidthMode();
        this.f1091l.f4072b = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void w(int i9) {
        if (this.f1084b != i9) {
            removeAllViews();
            this.f1084b = i9;
            this.f1093n = null;
            this.f1094o = null;
            this.f1087h.clear();
            f fVar = this.f1092m;
            f.b(fVar);
            fVar.d = 0;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean x(View view, int i9, int i10, g gVar) {
        return (!view.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(view.getWidth(), i9, ((ViewGroup$MarginLayoutParams) gVar).width) && isMeasurementUpToDate(view.getHeight(), i10, ((ViewGroup$MarginLayoutParams) gVar).height)) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(int i9) {
        View viewQ = q(getChildCount() - 1, -1);
        if (i9 >= (viewQ != null ? getPosition(viewQ) : -1)) {
            return;
        }
        int childCount = getChildCount();
        s3 s3Var = this.f1088i;
        s3Var.k(childCount);
        s3Var.l(childCount);
        s3Var.j(childCount);
        if (i9 >= ((int[]) s3Var.e).length) {
            return;
        }
        this.f1100x = i9;
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        this.f1096q = getPosition(childAt);
        if (i() || !this.f1085f) {
            this.r = this.f1093n.getDecoratedStart(childAt) - this.f1093n.getStartAfterPadding();
        } else {
            this.r = this.f1093n.getEndPadding() + this.f1093n.getDecoratedEnd(childAt);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void z(f fVar, boolean z8, boolean z9) {
        int i9;
        if (z9) {
            v();
        } else {
            this.f1091l.f4072b = false;
        }
        if (i() || !this.f1085f) {
            this.f1091l.f4071a = this.f1093n.getEndAfterPadding() - fVar.c;
        } else {
            this.f1091l.f4071a = fVar.c - getPaddingRight();
        }
        h hVar = this.f1091l;
        hVar.d = fVar.f4060a;
        hVar.f4075h = 1;
        hVar.e = fVar.c;
        hVar.f4073f = Integer.MIN_VALUE;
        hVar.c = fVar.f4061b;
        if (!z8 || this.f1087h.size() <= 1 || (i9 = fVar.f4061b) < 0 || i9 >= this.f1087h.size() - 1) {
            return;
        }
        c cVar = (c) this.f1087h.get(fVar.f4061b);
        h hVar2 = this.f1091l;
        hVar2.c++;
        hVar2.d += cVar.f4042h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public final void onItemsUpdated(RecyclerView recyclerView, int i9, int i10) {
        super.onItemsUpdated(recyclerView, i9, i10);
        y(i9);
    }

    @Override // o2.a
    public final void b(c cVar) {
    }
}
