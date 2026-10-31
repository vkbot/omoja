package com.google.android.flexbox;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p047e0.C1421s3;
import p097j.C1897i;
import p099j1.C1929i;
import p153o2.AbstractC2582j;
import p153o2.C2575c;
import p153o2.C2576d;
import p153o2.C2577e;
import p153o2.InterfaceC2573a;
import p153o2.InterfaceC2574b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class FlexboxLayout extends ViewGroup implements InterfaceC2573a {

    /* JADX INFO: renamed from: b */
    public int f1999b;

    /* JADX INFO: renamed from: c */
    public int f2000c;

    /* JADX INFO: renamed from: d */
    public int f2001d;

    /* JADX INFO: renamed from: e */
    public int f2002e;

    /* JADX INFO: renamed from: f */
    public int f2003f;

    /* JADX INFO: renamed from: g */
    public int f2004g;

    /* JADX INFO: renamed from: h */
    public Drawable f2005h;

    /* JADX INFO: renamed from: i */
    public Drawable f2006i;

    /* JADX INFO: renamed from: j */
    public int f2007j;

    /* JADX INFO: renamed from: k */
    public int f2008k;

    /* JADX INFO: renamed from: l */
    public int f2009l;

    /* JADX INFO: renamed from: m */
    public int f2010m;

    /* JADX INFO: renamed from: n */
    public int[] f2011n;

    /* JADX INFO: renamed from: o */
    public SparseIntArray f2012o;

    /* JADX INFO: renamed from: p */
    public final C1421s3 f2013p;

    /* JADX INFO: renamed from: q */
    public List f2014q;

    /* JADX INFO: renamed from: r */
    public final C1897i f2015r;

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f2004g = -1;
        this.f2013p = new C1421s3(this);
        this.f2014q = new ArrayList();
        this.f2015r = new C1897i();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC2582j.f7197a, 0, 0);
        this.f1999b = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.f2000c = typedArrayObtainStyledAttributes.getInt(6, 0);
        this.f2001d = typedArrayObtainStyledAttributes.getInt(7, 0);
        this.f2002e = typedArrayObtainStyledAttributes.getInt(1, 0);
        this.f2003f = typedArrayObtainStyledAttributes.getInt(0, 0);
        this.f2004g = typedArrayObtainStyledAttributes.getInt(8, -1);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(2);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(3);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(4);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i10 = typedArrayObtainStyledAttributes.getInt(9, 0);
        if (i10 != 0) {
            this.f2008k = i10;
            this.f2007j = i10;
        }
        int i11 = typedArrayObtainStyledAttributes.getInt(11, 0);
        if (i11 != 0) {
            this.f2008k = i11;
        }
        int i12 = typedArrayObtainStyledAttributes.getInt(10, 0);
        if (i12 != 0) {
            this.f2007j = i12;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: a */
    public final void mo1696a(View view, int i10, int i11, C2575c c2575c) {
        if (m1711p(i10, i11)) {
            boolean zMo1704i = mo1704i();
            int i12 = c2575c.f7143e;
            if (zMo1704i) {
                int i13 = this.f2010m;
                c2575c.f7143e = i12 + i13;
                c2575c.f7144f += i13;
            } else {
                int i14 = this.f2009l;
                c2575c.f7143e = i12 + i14;
                c2575c.f7144f += i14;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.f2012o == null) {
            this.f2012o = new SparseIntArray(getChildCount());
        }
        SparseIntArray sparseIntArray = this.f2012o;
        C1421s3 c1421s3 = this.f2013p;
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) c1421s3.f3413c;
        int flexItemCount = interfaceC2573a.getFlexItemCount();
        ArrayList arrayListM2459g = c1421s3.m2459g(flexItemCount);
        C2576d c2576d = new C2576d();
        if (view == null || !(layoutParams instanceof InterfaceC2574b)) {
            c2576d.f7158c = 1;
        } else {
            c2576d.f7158c = ((InterfaceC2574b) layoutParams).getOrder();
        }
        if (i10 == -1 || i10 == flexItemCount || i10 >= interfaceC2573a.getFlexItemCount()) {
            c2576d.f7157b = flexItemCount;
        } else {
            c2576d.f7157b = i10;
            for (int i11 = i10; i11 < flexItemCount; i11++) {
                ((C2576d) arrayListM2459g.get(i11)).f7157b++;
            }
        }
        arrayListM2459g.add(c2576d);
        this.f2011n = C1421s3.m2453t(flexItemCount + 1, arrayListM2459g, sparseIntArray);
        super.addView(view, i10, layoutParams);
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: b */
    public final void mo1697b(C2575c c2575c) {
        if (mo1704i()) {
            if ((this.f2008k & 4) > 0) {
                int i10 = c2575c.f7143e;
                int i11 = this.f2010m;
                c2575c.f7143e = i10 + i11;
                c2575c.f7144f += i11;
                return;
            }
            return;
        }
        if ((this.f2007j & 4) > 0) {
            int i12 = c2575c.f7143e;
            int i13 = this.f2009l;
            c2575c.f7143e = i12 + i13;
            c2575c.f7144f += i13;
        }
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: c */
    public final View mo1698c(int i10) {
        return m1710o(i10);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C2577e;
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: d */
    public final int mo1699d(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: f */
    public final View mo1701f(int i10) {
        return getChildAt(i10);
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: g */
    public final int mo1702g(View view, int i10, int i11) {
        int i12;
        int i13;
        if (mo1704i()) {
            i12 = m1711p(i10, i11) ? this.f2010m : 0;
            if ((this.f2008k & 4) <= 0) {
                return i12;
            }
            i13 = this.f2010m;
        } else {
            i12 = m1711p(i10, i11) ? this.f2009l : 0;
            if ((this.f2007j & 4) <= 0) {
                return i12;
            }
            i13 = this.f2009l;
        }
        return i12 + i13;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C2577e) {
            C2577e c2577e = (C2577e) layoutParams;
            C2577e c2577e2 = new C2577e(c2577e);
            c2577e2.f7159b = 1;
            c2577e2.f7160c = 0.0f;
            c2577e2.f7161d = 1.0f;
            c2577e2.f7162e = -1;
            c2577e2.f7163f = -1.0f;
            c2577e2.f7164g = -1;
            c2577e2.f7165h = -1;
            c2577e2.f7166i = ViewCompat.MEASURED_SIZE_MASK;
            c2577e2.f7167j = ViewCompat.MEASURED_SIZE_MASK;
            c2577e2.f7159b = c2577e.f7159b;
            c2577e2.f7160c = c2577e.f7160c;
            c2577e2.f7161d = c2577e.f7161d;
            c2577e2.f7162e = c2577e.f7162e;
            c2577e2.f7163f = c2577e.f7163f;
            c2577e2.f7164g = c2577e.f7164g;
            c2577e2.f7165h = c2577e.f7165h;
            c2577e2.f7166i = c2577e.f7166i;
            c2577e2.f7167j = c2577e.f7167j;
            c2577e2.f7168k = c2577e.f7168k;
            return c2577e2;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            C2577e c2577e3 = new C2577e((ViewGroup.MarginLayoutParams) layoutParams);
            c2577e3.f7159b = 1;
            c2577e3.f7160c = 0.0f;
            c2577e3.f7161d = 1.0f;
            c2577e3.f7162e = -1;
            c2577e3.f7163f = -1.0f;
            c2577e3.f7164g = -1;
            c2577e3.f7165h = -1;
            c2577e3.f7166i = ViewCompat.MEASURED_SIZE_MASK;
            c2577e3.f7167j = ViewCompat.MEASURED_SIZE_MASK;
            return c2577e3;
        }
        C2577e c2577e4 = new C2577e(layoutParams);
        c2577e4.f7159b = 1;
        c2577e4.f7160c = 0.0f;
        c2577e4.f7161d = 1.0f;
        c2577e4.f7162e = -1;
        c2577e4.f7163f = -1.0f;
        c2577e4.f7164g = -1;
        c2577e4.f7165h = -1;
        c2577e4.f7166i = ViewCompat.MEASURED_SIZE_MASK;
        c2577e4.f7167j = ViewCompat.MEASURED_SIZE_MASK;
        return c2577e4;
    }

    @Override // p153o2.InterfaceC2573a
    public int getAlignContent() {
        return this.f2003f;
    }

    @Override // p153o2.InterfaceC2573a
    public int getAlignItems() {
        return this.f2002e;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.f2005h;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.f2006i;
    }

    @Override // p153o2.InterfaceC2573a
    public int getFlexDirection() {
        return this.f1999b;
    }

    @Override // p153o2.InterfaceC2573a
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<C2575c> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f2014q.size());
        for (C2575c c2575c : this.f2014q) {
            if (c2575c.m4020a() != 0) {
                arrayList.add(c2575c);
            }
        }
        return arrayList;
    }

    @Override // p153o2.InterfaceC2573a
    public List<C2575c> getFlexLinesInternal() {
        return this.f2014q;
    }

    @Override // p153o2.InterfaceC2573a
    public int getFlexWrap() {
        return this.f2000c;
    }

    public int getJustifyContent() {
        return this.f2001d;
    }

    @Override // p153o2.InterfaceC2573a
    public int getLargestMainSize() {
        Iterator it = this.f2014q.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((C2575c) it.next()).f7143e);
        }
        return iMax;
    }

    @Override // p153o2.InterfaceC2573a
    public int getMaxLine() {
        return this.f2004g;
    }

    public int getShowDividerHorizontal() {
        return this.f2007j;
    }

    public int getShowDividerVertical() {
        return this.f2008k;
    }

    @Override // p153o2.InterfaceC2573a
    public int getSumOfCrossSize() {
        int size = this.f2014q.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            C2575c c2575c = (C2575c) this.f2014q.get(i11);
            if (m1712q(i11)) {
                i10 += mo1704i() ? this.f2009l : this.f2010m;
            }
            if (m1713r(i11)) {
                i10 += mo1704i() ? this.f2009l : this.f2010m;
            }
            i10 += c2575c.f7145g;
        }
        return i10;
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: h */
    public final int mo1703h(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: i */
    public final boolean mo1704i() {
        int i10 = this.f1999b;
        return i10 == 0 || i10 == 1;
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: j */
    public final int mo1705j(View view) {
        return 0;
    }

    /* JADX INFO: renamed from: k */
    public final void m1706k(Canvas canvas, boolean z9, boolean z10) {
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f2014q.size();
        for (int i10 = 0; i10 < size; i10++) {
            C2575c c2575c = (C2575c) this.f2014q.get(i10);
            for (int i11 = 0; i11 < c2575c.f7146h; i11++) {
                int i12 = c2575c.f7153o + i11;
                View viewM1710o = m1710o(i12);
                if (viewM1710o != null && viewM1710o.getVisibility() != 8) {
                    C2577e c2577e = (C2577e) viewM1710o.getLayoutParams();
                    if (m1711p(i12, i11)) {
                        m1709n(z9 ? viewM1710o.getRight() + ((ViewGroup.MarginLayoutParams) c2577e).rightMargin : (viewM1710o.getLeft() - ((ViewGroup.MarginLayoutParams) c2577e).leftMargin) - this.f2010m, c2575c.f7140b, c2575c.f7145g, canvas);
                    }
                    if (i11 == c2575c.f7146h - 1 && (this.f2008k & 4) > 0) {
                        m1709n(z9 ? (viewM1710o.getLeft() - ((ViewGroup.MarginLayoutParams) c2577e).leftMargin) - this.f2010m : viewM1710o.getRight() + ((ViewGroup.MarginLayoutParams) c2577e).rightMargin, c2575c.f7140b, c2575c.f7145g, canvas);
                    }
                }
            }
            if (m1712q(i10)) {
                m1708m(paddingLeft, z10 ? c2575c.f7142d : c2575c.f7140b - this.f2009l, iMax, canvas);
            }
            if (m1713r(i10) && (this.f2007j & 4) > 0) {
                m1708m(paddingLeft, z10 ? c2575c.f7140b - this.f2009l : c2575c.f7142d, iMax, canvas);
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public final void m1707l(Canvas canvas, boolean z9, boolean z10) {
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f2014q.size();
        for (int i10 = 0; i10 < size; i10++) {
            C2575c c2575c = (C2575c) this.f2014q.get(i10);
            for (int i11 = 0; i11 < c2575c.f7146h; i11++) {
                int i12 = c2575c.f7153o + i11;
                View viewM1710o = m1710o(i12);
                if (viewM1710o != null && viewM1710o.getVisibility() != 8) {
                    C2577e c2577e = (C2577e) viewM1710o.getLayoutParams();
                    if (m1711p(i12, i11)) {
                        m1708m(c2575c.f7139a, z10 ? viewM1710o.getBottom() + ((ViewGroup.MarginLayoutParams) c2577e).bottomMargin : (viewM1710o.getTop() - ((ViewGroup.MarginLayoutParams) c2577e).topMargin) - this.f2009l, c2575c.f7145g, canvas);
                    }
                    if (i11 == c2575c.f7146h - 1 && (this.f2007j & 4) > 0) {
                        m1708m(c2575c.f7139a, z10 ? (viewM1710o.getTop() - ((ViewGroup.MarginLayoutParams) c2577e).topMargin) - this.f2009l : viewM1710o.getBottom() + ((ViewGroup.MarginLayoutParams) c2577e).bottomMargin, c2575c.f7145g, canvas);
                    }
                }
            }
            if (m1712q(i10)) {
                m1709n(z9 ? c2575c.f7141c : c2575c.f7139a - this.f2010m, paddingTop, iMax, canvas);
            }
            if (m1713r(i10) && (this.f2008k & 4) > 0) {
                m1709n(z9 ? c2575c.f7139a - this.f2010m : c2575c.f7141c, paddingTop, iMax, canvas);
            }
        }
    }

    /* JADX INFO: renamed from: m */
    public final void m1708m(int i10, int i11, int i12, Canvas canvas) {
        Drawable drawable = this.f2005h;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, i12 + i10, this.f2009l + i11);
        this.f2005h.draw(canvas);
    }

    /* JADX INFO: renamed from: n */
    public final void m1709n(int i10, int i11, int i12, Canvas canvas) {
        Drawable drawable = this.f2006i;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, this.f2010m + i10, i12 + i11);
        this.f2006i.draw(canvas);
    }

    /* JADX INFO: renamed from: o */
    public final View m1710o(int i10) {
        if (i10 < 0) {
            return null;
        }
        int[] iArr = this.f2011n;
        if (i10 >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i10]);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f2006i == null && this.f2005h == null) {
            return;
        }
        if (this.f2007j == 0 && this.f2008k == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i10 = this.f1999b;
        if (i10 == 0) {
            m1706k(canvas, layoutDirection == 1, this.f2000c == 2);
            return;
        }
        if (i10 == 1) {
            m1706k(canvas, layoutDirection != 1, this.f2000c == 2);
            return;
        }
        if (i10 == 2) {
            boolean z9 = layoutDirection == 1;
            if (this.f2000c == 2) {
                z9 = !z9;
            }
            m1707l(canvas, z9, false);
            return;
        }
        if (i10 != 3) {
            return;
        }
        boolean z10 = layoutDirection == 1;
        if (this.f2000c == 2) {
            z10 = !z10;
        }
        m1707l(canvas, z10, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i14 = this.f1999b;
        if (i14 == 0) {
            m1714s(i10, i11, i12, i13, layoutDirection == 1);
            return;
        }
        if (i14 == 1) {
            m1714s(i10, i11, i12, i13, layoutDirection != 1);
            return;
        }
        if (i14 == 2) {
            boolean z10 = false;
            if (layoutDirection == 1) {
                z10 = true;
            }
            if (this.f2000c == 2) {
                z10 = !z10;
            }
            m1715t(i10, i11, i12, i13, z10, false);
            return;
        }
        if (i14 != 3) {
            C0075b.m177b(this.f1999b, "Invalid flex direction is set: ");
            return;
        }
        boolean z11 = layoutDirection == 1;
        if (this.f2000c == 2) {
            z11 = !z11;
        }
        m1715t(i10, i11, i12, i13, z11, true);
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        if (this.f2012o == null) {
            this.f2012o = new SparseIntArray(getChildCount());
        }
        SparseIntArray sparseIntArray = this.f2012o;
        C1421s3 c1421s3 = this.f2013p;
        InterfaceC2573a interfaceC2573a = (InterfaceC2573a) c1421s3.f3413c;
        int flexItemCount = interfaceC2573a.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            SparseIntArray sparseIntArray2 = this.f2012o;
            int flexItemCount2 = ((InterfaceC2573a) c1421s3.f3413c).getFlexItemCount();
            this.f2011n = C1421s3.m2453t(flexItemCount2, c1421s3.m2459g(flexItemCount2), sparseIntArray2);
            break;
        }
        for (int i12 = 0; i12 < flexItemCount; i12++) {
            View viewMo1701f = interfaceC2573a.mo1701f(i12);
            if (viewMo1701f != null && ((InterfaceC2574b) viewMo1701f.getLayoutParams()).getOrder() != sparseIntArray.get(i12)) {
                SparseIntArray sparseIntArray3 = this.f2012o;
                int flexItemCount3 = ((InterfaceC2573a) c1421s3.f3413c).getFlexItemCount();
                this.f2011n = C1421s3.m2453t(flexItemCount3, c1421s3.m2459g(flexItemCount3), sparseIntArray3);
                break;
            }
        }
        int i13 = this.f1999b;
        C1897i c1897i = this.f2015r;
        if (i13 != 0 && i13 != 1) {
            if (i13 != 2 && i13 != 3) {
                C0075b.m177b(this.f1999b, "Invalid value for the flex direction is set: ");
                return;
            }
            this.f2014q.clear();
            c1897i.f4930c = null;
            c1897i.f4929b = 0;
            this.f2013p.m2455b(this.f2015r, i11, i10, Integer.MAX_VALUE, 0, -1, null);
            this.f2014q = (List) c1897i.f4930c;
            c1421s3.m2461i(i10, i11, 0);
            c1421s3.m2460h(i10, i11, getPaddingRight() + getPaddingLeft());
            c1421s3.m2474w(0);
            m1716u(this.f1999b, i10, i11, c1897i.f4929b);
            return;
        }
        this.f2014q.clear();
        c1897i.f4930c = null;
        c1897i.f4929b = 0;
        this.f2013p.m2455b(this.f2015r, i10, i11, Integer.MAX_VALUE, 0, -1, null);
        this.f2014q = (List) c1897i.f4930c;
        c1421s3.m2461i(i10, i11, 0);
        if (this.f2002e == 3) {
            for (C2575c c2575c : this.f2014q) {
                int iMax = Integer.MIN_VALUE;
                for (int i14 = 0; i14 < c2575c.f7146h; i14++) {
                    View viewM1710o = m1710o(c2575c.f7153o + i14);
                    if (viewM1710o != null && viewM1710o.getVisibility() != 8) {
                        C2577e c2577e = (C2577e) viewM1710o.getLayoutParams();
                        int i15 = this.f2000c;
                        int i16 = c2575c.f7150l;
                        iMax = i15 != 2 ? Math.max(iMax, viewM1710o.getMeasuredHeight() + Math.max(i16 - viewM1710o.getBaseline(), ((ViewGroup.MarginLayoutParams) c2577e).topMargin) + ((ViewGroup.MarginLayoutParams) c2577e).bottomMargin) : Math.max(iMax, viewM1710o.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c2577e).topMargin + Math.max(viewM1710o.getBaseline() + (i16 - viewM1710o.getMeasuredHeight()), ((ViewGroup.MarginLayoutParams) c2577e).bottomMargin));
                    }
                }
                c2575c.f7145g = iMax;
            }
        }
        c1421s3.m2460h(i10, i11, getPaddingBottom() + getPaddingTop());
        c1421s3.m2474w(0);
        m1716u(this.f1999b, i10, i11, c1897i.f4929b);
    }

    /* JADX INFO: renamed from: p */
    public final boolean m1711p(int i10, int i11) {
        for (int i12 = 1; i12 <= i11; i12++) {
            View viewM1710o = m1710o(i10 - i12);
            if (viewM1710o != null && viewM1710o.getVisibility() != 8) {
                if (mo1704i()) {
                    return (this.f2008k & 2) != 0;
                }
                return (this.f2007j & 2) != 0;
            }
        }
        if (mo1704i()) {
            return (this.f2008k & 1) != 0;
        }
        return (this.f2007j & 1) != 0;
    }

    /* JADX INFO: renamed from: q */
    public final boolean m1712q(int i10) {
        if (i10 >= 0 && i10 < this.f2014q.size()) {
            for (int i11 = 0; i11 < i10; i11++) {
                if (((C2575c) this.f2014q.get(i11)).m4020a() > 0) {
                    if (mo1704i()) {
                        return (this.f2007j & 2) != 0;
                    }
                    return (this.f2008k & 2) != 0;
                }
            }
            if (mo1704i()) {
                return (this.f2007j & 1) != 0;
            }
            if ((this.f2008k & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: r */
    public final boolean m1713r(int i10) {
        if (i10 >= 0 && i10 < this.f2014q.size()) {
            for (int i11 = i10 + 1; i11 < this.f2014q.size(); i11++) {
                if (((C2575c) this.f2014q.get(i11)).m4020a() > 0) {
                    return false;
                }
            }
            if (mo1704i()) {
                return (this.f2007j & 4) != 0;
            }
            if ((this.f2008k & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00db  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:51:0x0103  */
    /* JADX WARN: Code duplicated, block: B:57:0x0117  */
    /* JADX WARN: Code duplicated, block: B:60:0x011d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0122  */
    /* JADX WARN: Code duplicated, block: B:64:0x0147  */
    /* JADX WARN: Code duplicated, block: B:65:0x0169  */
    /* JADX WARN: Code duplicated, block: B:67:0x0179  */
    /* JADX WARN: Code duplicated, block: B:68:0x0191  */
    /* JADX WARN: Code duplicated, block: B:71:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:73:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:75:0x01df  */
    /* JADX INFO: renamed from: s */
    public final void m1714s(int i10, int i11, int i12, int i13, boolean z9) {
        float measuredWidth;
        float f8;
        float f10;
        float fMax;
        int i14;
        int i15;
        View viewM1710o;
        boolean z10;
        int i16;
        int i17;
        float f11;
        float f12;
        int i18;
        float f13;
        int i19;
        View view;
        C1421s3 c1421s3;
        C2575c c2575c;
        C1421s3 c1421s4;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i20 = i12 - i10;
        int paddingBottom = (i13 - i11) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.f2014q.size();
        for (int i21 = 0; i21 < size; i21++) {
            C2575c c2575c2 = (C2575c) this.f2014q.get(i21);
            if (m1712q(i21)) {
                int i22 = this.f2009l;
                paddingBottom -= i22;
                paddingTop += i22;
            }
            int i23 = paddingBottom;
            int i24 = this.f2001d;
            char c = 4;
            int i25 = 2;
            boolean z11 = true;
            if (i24 == 0) {
                measuredWidth = paddingLeft;
                f8 = i20 - paddingRight;
            } else if (i24 != 1) {
                if (i24 == 2) {
                    int i26 = c2575c2.f7143e;
                    measuredWidth = paddingLeft + ((i20 - i26) / 2.0f);
                    f8 = (i20 - paddingRight) - ((i20 - i26) / 2.0f);
                } else if (i24 == 3) {
                    measuredWidth = paddingLeft;
                    int iM4020a = c2575c2.m4020a();
                    f10 = (i20 - c2575c2.f7143e) / (iM4020a != 1 ? iM4020a - 1 : 1.0f);
                    f8 = i20 - paddingRight;
                } else if (i24 == 4) {
                    int iM4020a2 = c2575c2.m4020a();
                    float f14 = iM4020a2 != 0 ? (i20 - c2575c2.f7143e) / iM4020a2 : 0.0f;
                    float f15 = f14 / 2.0f;
                    measuredWidth = paddingLeft + f15;
                    float f16 = (i20 - paddingRight) - f15;
                    f10 = f14;
                    f8 = f16;
                } else {
                    if (i24 != 5) {
                        C0075b.m177b(this.f2001d, "Invalid justifyContent is set: ");
                        return;
                    }
                    int iM4020a3 = c2575c2.m4020a();
                    f10 = iM4020a3 != 0 ? (i20 - c2575c2.f7143e) / (iM4020a3 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f10;
                    f8 = (i20 - paddingRight) - f10;
                }
                fMax = Math.max(f10, 0.0f);
                i14 = 0;
                while (i14 < c2575c2.f7146h) {
                    i15 = c2575c2.f7153o + i14;
                    viewM1710o = m1710o(i15);
                    char c10 = c;
                    if (viewM1710o != null) {
                        z10 = z11;
                        if (viewM1710o.getVisibility() == 8) {
                            z10 = z10;
                        } else {
                            C2577e c2577e = (C2577e) viewM1710o.getLayoutParams();
                            f11 = measuredWidth + ((ViewGroup.MarginLayoutParams) c2577e).leftMargin;
                            f12 = f8 - ((ViewGroup.MarginLayoutParams) c2577e).rightMargin;
                            if (m1711p(i15, i14)) {
                                int i27 = this.f2010m;
                                float f17 = i27;
                                f11 += f17;
                                f12 -= f17;
                                i18 = i27;
                            } else {
                                i18 = 0;
                            }
                            f13 = f12;
                            if (i14 == c2575c2.f7146h - 1 || (this.f2008k & 4) <= 0) {
                                i19 = 0;
                            } else {
                                i19 = this.f2010m;
                            }
                            if (this.f2000c == i25) {
                                i17 = i25;
                                c1421s4 = this.f2013p;
                                if (z9) {
                                    view = viewM1710o;
                                    c1421s4.m2468p(view, c2575c2, Math.round(f13) - viewM1710o.getMeasuredWidth(), i23 - viewM1710o.getMeasuredHeight(), Math.round(f13), i23);
                                } else {
                                    view = viewM1710o;
                                    c1421s4.m2468p(view, c2575c2, Math.round(f11), i23 - view.getMeasuredHeight(), view.getMeasuredWidth() + Math.round(f11), i23);
                                }
                                i16 = i23;
                            } else {
                                i14 = i14;
                                view = viewM1710o;
                                z10 = z10;
                                i17 = i25;
                                i16 = i23;
                                c1421s3 = this.f2013p;
                                if (z9) {
                                    c1421s3.m2468p(view, c2575c2, Math.round(f13) - view.getMeasuredWidth(), paddingTop, Math.round(f13), view.getMeasuredHeight() + paddingTop);
                                } else {
                                    int i28 = paddingTop;
                                    c1421s3.m2468p(view, c2575c2, Math.round(f11), i28, view.getMeasuredWidth() + Math.round(f11), view.getMeasuredHeight() + i28);
                                    paddingTop = i28;
                                }
                            }
                            measuredWidth = f11 + view.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) c2577e).rightMargin;
                            float measuredWidth2 = f13 - ((view.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) c2577e).leftMargin);
                            if (z9) {
                                c2575c = c2575c2;
                                c2575c.m4021b(view, i19, 0, i18, 0);
                            } else {
                                c2575c = c2575c2;
                                c2575c.m4021b(view, i18, 0, i19, 0);
                            }
                            c2575c2 = c2575c;
                            f8 = measuredWidth2;
                        }
                        i14++;
                        c = c10;
                        i25 = i17;
                        z11 = z10;
                        i23 = i16;
                    } else {
                        z10 = z11;
                    }
                    i17 = i25;
                    i14 = i14;
                    i16 = i23;
                    i14++;
                    c = c10;
                    i25 = i17;
                    z11 = z10;
                    i23 = i16;
                }
                int i29 = c2575c2.f7145g;
                paddingTop += i29;
                paddingBottom = i23 - i29;
            } else {
                int i30 = c2575c2.f7143e;
                f8 = i30 - paddingLeft;
                measuredWidth = (i20 - i30) + paddingRight;
            }
            f10 = 0.0f;
            fMax = Math.max(f10, 0.0f);
            i14 = 0;
            while (i14 < c2575c2.f7146h) {
                i15 = c2575c2.f7153o + i14;
                viewM1710o = m1710o(i15);
                char c11 = c;
                if (viewM1710o != null) {
                    z10 = z11;
                    if (viewM1710o.getVisibility() == 8) {
                        z10 = z10;
                    } else {
                        C2577e c2577e2 = (C2577e) viewM1710o.getLayoutParams();
                        f11 = measuredWidth + ((ViewGroup.MarginLayoutParams) c2577e2).leftMargin;
                        f12 = f8 - ((ViewGroup.MarginLayoutParams) c2577e2).rightMargin;
                        if (m1711p(i15, i14)) {
                            int i210 = this.f2010m;
                            float f18 = i210;
                            f11 += f18;
                            f12 -= f18;
                            i18 = i210;
                        } else {
                            i18 = 0;
                        }
                        f13 = f12;
                        if (i14 == c2575c2.f7146h - 1) {
                            i19 = 0;
                        } else {
                            i19 = 0;
                        }
                        if (this.f2000c == i25) {
                            i17 = i25;
                            c1421s4 = this.f2013p;
                            if (z9) {
                                view = viewM1710o;
                                c1421s4.m2468p(view, c2575c2, Math.round(f13) - viewM1710o.getMeasuredWidth(), i23 - viewM1710o.getMeasuredHeight(), Math.round(f13), i23);
                            } else {
                                view = viewM1710o;
                                c1421s4.m2468p(view, c2575c2, Math.round(f11), i23 - view.getMeasuredHeight(), view.getMeasuredWidth() + Math.round(f11), i23);
                            }
                            i16 = i23;
                        } else {
                            i14 = i14;
                            view = viewM1710o;
                            z10 = z10;
                            i17 = i25;
                            i16 = i23;
                            c1421s3 = this.f2013p;
                            if (z9) {
                                c1421s3.m2468p(view, c2575c2, Math.round(f13) - view.getMeasuredWidth(), paddingTop, Math.round(f13), view.getMeasuredHeight() + paddingTop);
                            } else {
                                int i211 = paddingTop;
                                c1421s3.m2468p(view, c2575c2, Math.round(f11), i211, view.getMeasuredWidth() + Math.round(f11), view.getMeasuredHeight() + i211);
                                paddingTop = i211;
                            }
                        }
                        measuredWidth = f11 + view.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) c2577e2).rightMargin;
                        float measuredWidth3 = f13 - ((view.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) c2577e2).leftMargin);
                        if (z9) {
                            c2575c = c2575c2;
                            c2575c.m4021b(view, i19, 0, i18, 0);
                        } else {
                            c2575c = c2575c2;
                            c2575c.m4021b(view, i18, 0, i19, 0);
                        }
                        c2575c2 = c2575c;
                        f8 = measuredWidth3;
                    }
                    i14++;
                    c = c11;
                    i25 = i17;
                    z11 = z10;
                    i23 = i16;
                } else {
                    z10 = z11;
                }
                i17 = i25;
                i14 = i14;
                i16 = i23;
                i14++;
                c = c11;
                i25 = i17;
                z11 = z10;
                i23 = i16;
            }
            int i212 = c2575c2.f7145g;
            paddingTop += i212;
            paddingBottom = i23 - i212;
        }
    }

    public void setAlignContent(int i10) {
        if (this.f2003f != i10) {
            this.f2003f = i10;
            requestLayout();
        }
    }

    public void setAlignItems(int i10) {
        if (this.f2002e != i10) {
            this.f2002e = i10;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable drawable) {
        if (drawable == this.f2005h) {
            return;
        }
        this.f2005h = drawable;
        if (drawable != null) {
            this.f2009l = drawable.getIntrinsicHeight();
        } else {
            this.f2009l = 0;
        }
        if (this.f2005h == null && this.f2006i == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        if (drawable == this.f2006i) {
            return;
        }
        this.f2006i = drawable;
        if (drawable != null) {
            this.f2010m = drawable.getIntrinsicWidth();
        } else {
            this.f2010m = 0;
        }
        if (this.f2005h == null && this.f2006i == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    public void setFlexDirection(int i10) {
        if (this.f1999b != i10) {
            this.f1999b = i10;
            requestLayout();
        }
    }

    @Override // p153o2.InterfaceC2573a
    public void setFlexLines(List<C2575c> list) {
        this.f2014q = list;
    }

    public void setFlexWrap(int i10) {
        if (this.f2000c != i10) {
            this.f2000c = i10;
            requestLayout();
        }
    }

    public void setJustifyContent(int i10) {
        if (this.f2001d != i10) {
            this.f2001d = i10;
            requestLayout();
        }
    }

    public void setMaxLine(int i10) {
        if (this.f2004g != i10) {
            this.f2004g = i10;
            requestLayout();
        }
    }

    public void setShowDivider(int i10) {
        setShowDividerVertical(i10);
        setShowDividerHorizontal(i10);
    }

    public void setShowDividerHorizontal(int i10) {
        if (i10 != this.f2007j) {
            this.f2007j = i10;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i10) {
        if (i10 != this.f2008k) {
            this.f2008k = i10;
            requestLayout();
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00de  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:57:0x010d  */
    /* JADX WARN: Code duplicated, block: B:60:0x0114 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x0116  */
    /* JADX WARN: Code duplicated, block: B:63:0x0137  */
    /* JADX WARN: Code duplicated, block: B:64:0x0154  */
    /* JADX WARN: Code duplicated, block: B:66:0x015c  */
    /* JADX WARN: Code duplicated, block: B:67:0x0176  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:72:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c3  */
    /* JADX INFO: renamed from: t */
    public final void m1715t(int i10, int i11, int i12, int i13, boolean z9, boolean z10) {
        float measuredHeight;
        float f8;
        float f10;
        float fMax;
        int i14;
        int i15;
        int i16;
        View viewM1710o;
        char c;
        int i17;
        int i18;
        float f11;
        float f12;
        int i19;
        float f13;
        int i20;
        C1421s3 c1421s3;
        C2575c c2575c;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i21 = i13 - i11;
        int i22 = (i12 - i10) - paddingRight;
        int size = this.f2014q.size();
        for (int i23 = 0; i23 < size; i23++) {
            C2575c c2575c2 = (C2575c) this.f2014q.get(i23);
            if (m1712q(i23)) {
                int i24 = this.f2010m;
                paddingLeft += i24;
                i22 -= i24;
            }
            int i25 = i22;
            int i26 = this.f2001d;
            char c10 = 4;
            int i27 = 1;
            if (i26 == 0) {
                measuredHeight = paddingTop;
                f8 = i21 - paddingBottom;
            } else if (i26 != 1) {
                if (i26 == 2) {
                    float f14 = (i21 - c2575c2.f7143e) / 2.0f;
                    measuredHeight = paddingTop + f14;
                    f8 = (i21 - paddingBottom) - f14;
                } else if (i26 == 3) {
                    measuredHeight = paddingTop;
                    int iM4020a = c2575c2.m4020a();
                    f10 = (i21 - c2575c2.f7143e) / (iM4020a != 1 ? iM4020a - 1 : 1.0f);
                    f8 = i21 - paddingBottom;
                } else if (i26 == 4) {
                    int iM4020a2 = c2575c2.m4020a();
                    f10 = iM4020a2 != 0 ? (i21 - c2575c2.f7143e) / iM4020a2 : 0.0f;
                    float f15 = f10 / 2.0f;
                    measuredHeight = paddingTop + f15;
                    f8 = (i21 - paddingBottom) - f15;
                } else {
                    if (i26 != 5) {
                        C0075b.m177b(this.f2001d, "Invalid justifyContent is set: ");
                        return;
                    }
                    int iM4020a3 = c2575c2.m4020a();
                    f10 = iM4020a3 != 0 ? (i21 - c2575c2.f7143e) / (iM4020a3 + 1) : 0.0f;
                    measuredHeight = paddingTop + f10;
                    f8 = (i21 - paddingBottom) - f10;
                }
                fMax = Math.max(f10, 0.0f);
                i14 = 0;
                while (i14 < c2575c2.f7146h) {
                    i15 = c2575c2.f7153o + i14;
                    i16 = i27;
                    viewM1710o = m1710o(i15);
                    if (viewM1710o != null) {
                        c = c10;
                        if (viewM1710o.getVisibility() == 8) {
                            C2577e c2577e = (C2577e) viewM1710o.getLayoutParams();
                            f11 = measuredHeight + ((ViewGroup.MarginLayoutParams) c2577e).topMargin;
                            f12 = f8 - ((ViewGroup.MarginLayoutParams) c2577e).bottomMargin;
                            if (m1711p(i15, i14)) {
                                i19 = this.f2009l;
                                float f16 = i19;
                                f11 += f16;
                                f12 -= f16;
                            } else {
                                i19 = 0;
                            }
                            f13 = f12;
                            if (i14 == c2575c2.f7146h - i16 || (this.f2007j & 4) <= 0) {
                                i20 = 0;
                            } else {
                                i20 = this.f2009l;
                            }
                            i18 = i14;
                            c1421s3 = this.f2013p;
                            if (z9) {
                                if (z10) {
                                    c1421s3.m2469q(viewM1710o, c2575c2, true, i25 - viewM1710o.getMeasuredWidth(), Math.round(f13) - viewM1710o.getMeasuredHeight(), i25, Math.round(f13));
                                } else {
                                    c1421s3.m2469q(viewM1710o, c2575c2, true, i25 - viewM1710o.getMeasuredWidth(), Math.round(f11), i25, viewM1710o.getMeasuredHeight() + Math.round(f11));
                                }
                                i17 = i25;
                            } else {
                                i18 = i18;
                                i16 = i16;
                                i17 = i25;
                                if (z10) {
                                    c1421s3.m2469q(viewM1710o, c2575c2, false, paddingLeft, Math.round(f13) - viewM1710o.getMeasuredHeight(), viewM1710o.getMeasuredWidth() + paddingLeft, Math.round(f13));
                                } else {
                                    int i28 = paddingLeft;
                                    c1421s3.m2469q(viewM1710o, c2575c2, false, i28, Math.round(f11), viewM1710o.getMeasuredWidth() + i28, viewM1710o.getMeasuredHeight() + Math.round(f11));
                                    paddingLeft = i28;
                                }
                            }
                            measuredHeight = f11 + viewM1710o.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) c2577e).bottomMargin;
                            float measuredHeight2 = f13 - ((viewM1710o.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) c2577e).topMargin);
                            if (z10) {
                                c2575c = c2575c2;
                                c2575c.m4021b(viewM1710o, 0, i20, 0, i19);
                            } else {
                                c2575c = c2575c2;
                                c2575c.m4021b(viewM1710o, 0, i19, 0, i20);
                            }
                            c2575c2 = c2575c;
                            f8 = measuredHeight2;
                        }
                        i14 = i18 + 1;
                        c10 = c;
                        i27 = i16;
                        i25 = i17;
                    } else {
                        c = c10;
                    }
                    i18 = i14;
                    i16 = i16;
                    i17 = i25;
                    i14 = i18 + 1;
                    c10 = c;
                    i27 = i16;
                    i25 = i17;
                }
                int i29 = c2575c2.f7145g;
                paddingLeft += i29;
                i22 = i25 - i29;
            } else {
                int i30 = c2575c2.f7143e;
                f8 = i30 - paddingTop;
                measuredHeight = (i21 - i30) + paddingBottom;
            }
            f10 = 0.0f;
            fMax = Math.max(f10, 0.0f);
            i14 = 0;
            while (i14 < c2575c2.f7146h) {
                i15 = c2575c2.f7153o + i14;
                i16 = i27;
                viewM1710o = m1710o(i15);
                if (viewM1710o != null) {
                    c = c10;
                    if (viewM1710o.getVisibility() == 8) {
                        C2577e c2577e2 = (C2577e) viewM1710o.getLayoutParams();
                        f11 = measuredHeight + ((ViewGroup.MarginLayoutParams) c2577e2).topMargin;
                        f12 = f8 - ((ViewGroup.MarginLayoutParams) c2577e2).bottomMargin;
                        if (m1711p(i15, i14)) {
                            i19 = this.f2009l;
                            float f17 = i19;
                            f11 += f17;
                            f12 -= f17;
                        } else {
                            i19 = 0;
                        }
                        f13 = f12;
                        if (i14 == c2575c2.f7146h - i16) {
                            i20 = 0;
                        } else {
                            i20 = 0;
                        }
                        i18 = i14;
                        c1421s3 = this.f2013p;
                        if (z9) {
                            if (z10) {
                                c1421s3.m2469q(viewM1710o, c2575c2, true, i25 - viewM1710o.getMeasuredWidth(), Math.round(f13) - viewM1710o.getMeasuredHeight(), i25, Math.round(f13));
                            } else {
                                c1421s3.m2469q(viewM1710o, c2575c2, true, i25 - viewM1710o.getMeasuredWidth(), Math.round(f11), i25, viewM1710o.getMeasuredHeight() + Math.round(f11));
                            }
                            i17 = i25;
                        } else {
                            i18 = i18;
                            i16 = i16;
                            i17 = i25;
                            if (z10) {
                                c1421s3.m2469q(viewM1710o, c2575c2, false, paddingLeft, Math.round(f13) - viewM1710o.getMeasuredHeight(), viewM1710o.getMeasuredWidth() + paddingLeft, Math.round(f13));
                            } else {
                                int i210 = paddingLeft;
                                c1421s3.m2469q(viewM1710o, c2575c2, false, i210, Math.round(f11), viewM1710o.getMeasuredWidth() + i210, viewM1710o.getMeasuredHeight() + Math.round(f11));
                                paddingLeft = i210;
                            }
                        }
                        measuredHeight = f11 + viewM1710o.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) c2577e2).bottomMargin;
                        float measuredHeight3 = f13 - ((viewM1710o.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) c2577e2).topMargin);
                        if (z10) {
                            c2575c = c2575c2;
                            c2575c.m4021b(viewM1710o, 0, i20, 0, i19);
                        } else {
                            c2575c = c2575c2;
                            c2575c.m4021b(viewM1710o, 0, i19, 0, i20);
                        }
                        c2575c2 = c2575c;
                        f8 = measuredHeight3;
                    }
                    i14 = i18 + 1;
                    c10 = c;
                    i27 = i16;
                    i25 = i17;
                } else {
                    c = c10;
                }
                i18 = i14;
                i16 = i16;
                i17 = i25;
                i14 = i18 + 1;
                c10 = c;
                i27 = i16;
                i25 = i17;
            }
            int i211 = c2575c2.f7145g;
            paddingLeft += i211;
            i22 = i25 - i211;
        }
    }

    /* JADX INFO: renamed from: u */
    public final void m1716u(int i10, int i11, int i12, int i13) {
        int paddingBottom;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        if (i10 == 0 || i10 == 1) {
            paddingBottom = getPaddingBottom() + getPaddingTop() + getSumOfCrossSize();
            largestMainSize = getLargestMainSize();
        } else {
            if (i10 != 2 && i10 != 3) {
                C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid flex direction: "));
                return;
            }
            paddingBottom = getLargestMainSize();
            largestMainSize = getPaddingRight() + getPaddingLeft() + getSumOfCrossSize();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i11, i13);
        } else if (mode != 1073741824) {
            C1929i.m3030l(AbstractC0074a.m154e(mode, "Unknown width mode is set: "));
            return;
        } else {
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < paddingBottom) {
                i13 = View.combineMeasuredStates(i13, 256);
            } else {
                size2 = paddingBottom;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(paddingBottom, i12, i13);
        } else if (mode2 != 1073741824) {
            C1929i.m3030l(AbstractC0074a.m154e(mode2, "Unknown height mode is set: "));
            return;
        } else {
            if (size2 < paddingBottom) {
                i13 = View.combineMeasuredStates(i13, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    @Override // p153o2.InterfaceC2573a
    /* JADX INFO: renamed from: e */
    public final void mo1700e(int i10, View view) {
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        C2577e c2577e = new C2577e(context, attributeSet);
        c2577e.f7159b = 1;
        c2577e.f7160c = 0.0f;
        c2577e.f7161d = 1.0f;
        c2577e.f7162e = -1;
        c2577e.f7163f = -1.0f;
        c2577e.f7164g = -1;
        c2577e.f7165h = -1;
        c2577e.f7166i = ViewCompat.MEASURED_SIZE_MASK;
        c2577e.f7167j = ViewCompat.MEASURED_SIZE_MASK;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC2582j.f7198b);
        c2577e.f7159b = typedArrayObtainStyledAttributes.getInt(8, 1);
        c2577e.f7160c = typedArrayObtainStyledAttributes.getFloat(2, 0.0f);
        c2577e.f7161d = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        c2577e.f7162e = typedArrayObtainStyledAttributes.getInt(0, -1);
        c2577e.f7163f = typedArrayObtainStyledAttributes.getFraction(1, 1, 1, -1.0f);
        c2577e.f7164g = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        c2577e.f7165h = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, -1);
        c2577e.f7166i = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, ViewCompat.MEASURED_SIZE_MASK);
        c2577e.f7167j = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, ViewCompat.MEASURED_SIZE_MASK);
        c2577e.f7168k = typedArrayObtainStyledAttributes.getBoolean(9, false);
        typedArrayObtainStyledAttributes.recycle();
        return c2577e;
    }
}
