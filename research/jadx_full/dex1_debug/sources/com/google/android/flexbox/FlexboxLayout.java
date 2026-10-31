package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import e0.s3;
import j.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import o2.a;
import o2.b;
import o2.c;
import o2.d;
import o2.e;
import o2.j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexboxLayout extends ViewGroup implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1070b;
    public int c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1071f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1072g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Drawable f1073h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Drawable f1074i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1075j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1076k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1077l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1078m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f1079n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public SparseIntArray f1080o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final s3 f1081p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public List f1082q;
    public final i r;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1072g = -1;
        this.f1081p = new s3(this);
        this.f1082q = new ArrayList();
        this.r = new i();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f4078a, 0, 0);
        this.f1070b = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.c = typedArrayObtainStyledAttributes.getInt(6, 0);
        this.d = typedArrayObtainStyledAttributes.getInt(7, 0);
        this.e = typedArrayObtainStyledAttributes.getInt(1, 0);
        this.f1071f = typedArrayObtainStyledAttributes.getInt(0, 0);
        this.f1072g = typedArrayObtainStyledAttributes.getInt(8, -1);
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
        int i9 = typedArrayObtainStyledAttributes.getInt(9, 0);
        if (i9 != 0) {
            this.f1076k = i9;
            this.f1075j = i9;
        }
        int i10 = typedArrayObtainStyledAttributes.getInt(11, 0);
        if (i10 != 0) {
            this.f1076k = i10;
        }
        int i11 = typedArrayObtainStyledAttributes.getInt(10, 0);
        if (i11 != 0) {
            this.f1075j = i11;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final void a(View view, int i9, int i10, c cVar) {
        if (p(i9, i10)) {
            boolean zI = i();
            int i11 = cVar.e;
            if (zI) {
                int i12 = this.f1078m;
                cVar.e = i11 + i12;
                cVar.f4040f += i12;
            } else {
                int i13 = this.f1077l;
                cVar.e = i11 + i13;
                cVar.f4040f += i13;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r11v0, resolved type: android.view.ViewGroup$LayoutParams */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final void addView(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (this.f1080o == null) {
            this.f1080o = new SparseIntArray(getChildCount());
        }
        SparseIntArray sparseIntArray = this.f1080o;
        s3 s3Var = this.f1081p;
        a aVar = (a) s3Var.c;
        int flexItemCount = aVar.getFlexItemCount();
        ArrayList arrayListG = s3Var.g(flexItemCount);
        d dVar = new d();
        if (view == null || !(viewGroup$LayoutParams instanceof b)) {
            dVar.c = 1;
        } else {
            dVar.c = ((b) viewGroup$LayoutParams).getOrder();
        }
        if (i9 == -1 || i9 == flexItemCount || i9 >= aVar.getFlexItemCount()) {
            dVar.f4052b = flexItemCount;
        } else {
            dVar.f4052b = i9;
            for (int i10 = i9; i10 < flexItemCount; i10++) {
                ((d) arrayListG.get(i10)).f4052b++;
            }
        }
        arrayListG.add(dVar);
        this.f1079n = s3.t(flexItemCount + 1, arrayListG, sparseIntArray);
        super.addView(view, i9, viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final void b(c cVar) {
        if (i()) {
            if ((this.f1076k & 4) > 0) {
                int i9 = cVar.e;
                int i10 = this.f1078m;
                cVar.e = i9 + i10;
                cVar.f4040f += i10;
                return;
            }
            return;
        }
        if ((this.f1075j & 4) > 0) {
            int i11 = cVar.e;
            int i12 = this.f1077l;
            cVar.e = i11 + i12;
            cVar.f4040f += i12;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final View c(int i9) {
        return o(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int d(int i9, int i10, int i11) {
        return ViewGroup.getChildMeasureSpec(i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final View f(int i9) {
        return getChildAt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int g(View view, int i9, int i10) {
        int i11;
        int i12;
        if (i()) {
            i11 = p(i9, i10) ? this.f1078m : 0;
            if ((this.f1076k & 4) <= 0) {
                return i11;
            }
            i12 = this.f1078m;
        } else {
            i11 = p(i9, i10) ? this.f1077l : 0;
            if ((this.f1075j & 4) <= 0) {
                return i11;
            }
            i12 = this.f1077l;
        }
        return i11 + i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof e) {
            e eVar = (e) viewGroup$LayoutParams;
            e eVar2 = new e(eVar);
            eVar2.f4053b = 1;
            eVar2.c = 0.0f;
            eVar2.d = 1.0f;
            eVar2.e = -1;
            eVar2.f4054f = -1.0f;
            eVar2.f4055g = -1;
            eVar2.f4056h = -1;
            eVar2.f4057i = ViewCompat.MEASURED_SIZE_MASK;
            eVar2.f4058j = ViewCompat.MEASURED_SIZE_MASK;
            eVar2.f4053b = eVar.f4053b;
            eVar2.c = eVar.c;
            eVar2.d = eVar.d;
            eVar2.e = eVar.e;
            eVar2.f4054f = eVar.f4054f;
            eVar2.f4055g = eVar.f4055g;
            eVar2.f4056h = eVar.f4056h;
            eVar2.f4057i = eVar.f4057i;
            eVar2.f4058j = eVar.f4058j;
            eVar2.f4059k = eVar.f4059k;
            return eVar2;
        }
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            e eVar3 = new e((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams);
            eVar3.f4053b = 1;
            eVar3.c = 0.0f;
            eVar3.d = 1.0f;
            eVar3.e = -1;
            eVar3.f4054f = -1.0f;
            eVar3.f4055g = -1;
            eVar3.f4056h = -1;
            eVar3.f4057i = ViewCompat.MEASURED_SIZE_MASK;
            eVar3.f4058j = ViewCompat.MEASURED_SIZE_MASK;
            return eVar3;
        }
        e eVar4 = new e(viewGroup$LayoutParams);
        eVar4.f4053b = 1;
        eVar4.c = 0.0f;
        eVar4.d = 1.0f;
        eVar4.e = -1;
        eVar4.f4054f = -1.0f;
        eVar4.f4055g = -1;
        eVar4.f4056h = -1;
        eVar4.f4057i = ViewCompat.MEASURED_SIZE_MASK;
        eVar4.f4058j = ViewCompat.MEASURED_SIZE_MASK;
        return eVar4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public int getAlignContent() {
        return this.f1071f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public int getAlignItems() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.f1073h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.f1074i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public int getFlexDirection() {
        return this.f1070b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public int getFlexItemCount() {
        return getChildCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<c> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f1082q.size());
        for (c cVar : this.f1082q) {
            if (cVar.a() != 0) {
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public List<c> getFlexLinesInternal() {
        return this.f1082q;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public int getFlexWrap() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getJustifyContent() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public int getLargestMainSize() {
        Iterator it = this.f1082q.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((c) it.next()).e);
        }
        return iMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public int getMaxLine() {
        return this.f1072g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getShowDividerHorizontal() {
        return this.f1075j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getShowDividerVertical() {
        return this.f1076k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public int getSumOfCrossSize() {
        int size = this.f1082q.size();
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            c cVar = (c) this.f1082q.get(i10);
            if (q(i10)) {
                i9 += i() ? this.f1077l : this.f1078m;
            }
            if (r(i10)) {
                i9 += i() ? this.f1077l : this.f1078m;
            }
            i9 += cVar.f4041g;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int h(int i9, int i10, int i11) {
        return ViewGroup.getChildMeasureSpec(i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final boolean i() {
        int i9 = this.f1070b;
        return i9 == 0 || i9 == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public final int j(View view) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(Canvas canvas, boolean z8, boolean z9) {
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f1082q.size();
        for (int i9 = 0; i9 < size; i9++) {
            c cVar = (c) this.f1082q.get(i9);
            for (int i10 = 0; i10 < cVar.f4042h; i10++) {
                int i11 = cVar.f4049o + i10;
                View viewO = o(i11);
                if (viewO != null && viewO.getVisibility() != 8) {
                    e eVar = (e) viewO.getLayoutParams();
                    if (p(i11, i10)) {
                        n(z8 ? viewO.getRight() + ((ViewGroup$MarginLayoutParams) eVar).rightMargin : (viewO.getLeft() - ((ViewGroup$MarginLayoutParams) eVar).leftMargin) - this.f1078m, cVar.f4039b, cVar.f4041g, canvas);
                    }
                    if (i10 == cVar.f4042h - 1 && (this.f1076k & 4) > 0) {
                        n(z8 ? (viewO.getLeft() - ((ViewGroup$MarginLayoutParams) eVar).leftMargin) - this.f1078m : viewO.getRight() + ((ViewGroup$MarginLayoutParams) eVar).rightMargin, cVar.f4039b, cVar.f4041g, canvas);
                    }
                }
            }
            if (q(i9)) {
                m(paddingLeft, z9 ? cVar.d : cVar.f4039b - this.f1077l, iMax, canvas);
            }
            if (r(i9) && (this.f1075j & 4) > 0) {
                m(paddingLeft, z9 ? cVar.f4039b - this.f1077l : cVar.d, iMax, canvas);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(Canvas canvas, boolean z8, boolean z9) {
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f1082q.size();
        for (int i9 = 0; i9 < size; i9++) {
            c cVar = (c) this.f1082q.get(i9);
            for (int i10 = 0; i10 < cVar.f4042h; i10++) {
                int i11 = cVar.f4049o + i10;
                View viewO = o(i11);
                if (viewO != null && viewO.getVisibility() != 8) {
                    e eVar = (e) viewO.getLayoutParams();
                    if (p(i11, i10)) {
                        m(cVar.f4038a, z9 ? viewO.getBottom() + ((ViewGroup$MarginLayoutParams) eVar).bottomMargin : (viewO.getTop() - ((ViewGroup$MarginLayoutParams) eVar).topMargin) - this.f1077l, cVar.f4041g, canvas);
                    }
                    if (i10 == cVar.f4042h - 1 && (this.f1075j & 4) > 0) {
                        m(cVar.f4038a, z9 ? (viewO.getTop() - ((ViewGroup$MarginLayoutParams) eVar).topMargin) - this.f1077l : viewO.getBottom() + ((ViewGroup$MarginLayoutParams) eVar).bottomMargin, cVar.f4041g, canvas);
                    }
                }
            }
            if (q(i9)) {
                n(z8 ? cVar.c : cVar.f4038a - this.f1078m, paddingTop, iMax, canvas);
            }
            if (r(i9) && (this.f1076k & 4) > 0) {
                n(z8 ? cVar.f4038a - this.f1078m : cVar.c, paddingTop, iMax, canvas);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(int i9, int i10, int i11, Canvas canvas) {
        Drawable drawable = this.f1073h;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i9, i10, i11 + i9, this.f1077l + i10);
        this.f1073h.draw(canvas);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(int i9, int i10, int i11, Canvas canvas) {
        Drawable drawable = this.f1074i;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i9, i10, this.f1078m + i9, i11 + i10);
        this.f1074i.draw(canvas);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final View o(int i9) {
        if (i9 < 0) {
            return null;
        }
        int[] iArr = this.f1079n;
        if (i9 >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i9]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f1074i == null && this.f1073h == null) {
            return;
        }
        if (this.f1075j == 0 && this.f1076k == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i9 = this.f1070b;
        if (i9 == 0) {
            k(canvas, layoutDirection == 1, this.c == 2);
            return;
        }
        if (i9 == 1) {
            k(canvas, layoutDirection != 1, this.c == 2);
            return;
        }
        if (i9 == 2) {
            boolean z8 = layoutDirection == 1;
            if (this.c == 2) {
                z8 = !z8;
            }
            l(canvas, z8, false);
            return;
        }
        if (i9 != 3) {
            return;
        }
        boolean z9 = layoutDirection == 1;
        if (this.c == 2) {
            z9 = !z9;
        }
        l(canvas, z9, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i13 = this.f1070b;
        if (i13 == 0) {
            s(i9, i10, i11, i12, layoutDirection == 1);
            return;
        }
        if (i13 == 1) {
            s(i9, i10, i11, i12, layoutDirection != 1);
            return;
        }
        if (i13 == 2) {
            boolean z9 = false;
            if (layoutDirection == 1) {
                z9 = true;
            }
            if (this.c == 2) {
                z9 = !z9;
            }
            t(i9, i10, i11, i12, z9, false);
            return;
        }
        if (i13 != 3) {
            ai.onnxruntime.b.b(this.f1070b, "Invalid flex direction is set: ");
            return;
        }
        boolean z10 = layoutDirection == 1;
        if (this.c == 2) {
            z10 = !z10;
        }
        t(i9, i10, i11, i12, z10, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onMeasure(int i9, int i10) {
        if (this.f1080o == null) {
            this.f1080o = new SparseIntArray(getChildCount());
        }
        SparseIntArray sparseIntArray = this.f1080o;
        s3 s3Var = this.f1081p;
        a aVar = (a) s3Var.c;
        int flexItemCount = aVar.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            SparseIntArray sparseIntArray2 = this.f1080o;
            int flexItemCount2 = ((a) s3Var.c).getFlexItemCount();
            this.f1079n = s3.t(flexItemCount2, s3Var.g(flexItemCount2), sparseIntArray2);
            break;
        }
        for (int i11 = 0; i11 < flexItemCount; i11++) {
            View viewF = aVar.f(i11);
            if (viewF != null && ((b) viewF.getLayoutParams()).getOrder() != sparseIntArray.get(i11)) {
                SparseIntArray sparseIntArray3 = this.f1080o;
                int flexItemCount3 = ((a) s3Var.c).getFlexItemCount();
                this.f1079n = s3.t(flexItemCount3, s3Var.g(flexItemCount3), sparseIntArray3);
                break;
            }
        }
        int i12 = this.f1070b;
        i iVar = this.r;
        if (i12 != 0 && i12 != 1) {
            if (i12 != 2 && i12 != 3) {
                ai.onnxruntime.b.b(this.f1070b, "Invalid value for the flex direction is set: ");
                return;
            }
            this.f1082q.clear();
            iVar.c = null;
            iVar.f2793b = 0;
            this.f1081p.b(this.r, i10, i9, Integer.MAX_VALUE, 0, -1, null);
            this.f1082q = (List) iVar.c;
            s3Var.i(i9, i10, 0);
            s3Var.h(i9, i10, getPaddingRight() + getPaddingLeft());
            s3Var.w(0);
            u(this.f1070b, i9, i10, iVar.f2793b);
            return;
        }
        this.f1082q.clear();
        iVar.c = null;
        iVar.f2793b = 0;
        this.f1081p.b(this.r, i9, i10, Integer.MAX_VALUE, 0, -1, null);
        this.f1082q = (List) iVar.c;
        s3Var.i(i9, i10, 0);
        if (this.e == 3) {
            for (c cVar : this.f1082q) {
                int iMax = Integer.MIN_VALUE;
                for (int i13 = 0; i13 < cVar.f4042h; i13++) {
                    View viewO = o(cVar.f4049o + i13);
                    if (viewO != null && viewO.getVisibility() != 8) {
                        e eVar = (e) viewO.getLayoutParams();
                        int i14 = this.c;
                        int i15 = cVar.f4046l;
                        iMax = i14 != 2 ? Math.max(iMax, viewO.getMeasuredHeight() + Math.max(i15 - viewO.getBaseline(), ((ViewGroup$MarginLayoutParams) eVar).topMargin) + ((ViewGroup$MarginLayoutParams) eVar).bottomMargin) : Math.max(iMax, viewO.getMeasuredHeight() + ((ViewGroup$MarginLayoutParams) eVar).topMargin + Math.max(viewO.getBaseline() + (i15 - viewO.getMeasuredHeight()), ((ViewGroup$MarginLayoutParams) eVar).bottomMargin));
                    }
                }
                cVar.f4041g = iMax;
            }
        }
        s3Var.h(i9, i10, getPaddingBottom() + getPaddingTop());
        s3Var.w(0);
        u(this.f1070b, i9, i10, iVar.f2793b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean p(int i9, int i10) {
        for (int i11 = 1; i11 <= i10; i11++) {
            View viewO = o(i9 - i11);
            if (viewO != null && viewO.getVisibility() != 8) {
                if (i()) {
                    return (this.f1076k & 2) != 0;
                }
                return (this.f1075j & 2) != 0;
            }
        }
        if (i()) {
            return (this.f1076k & 1) != 0;
        }
        return (this.f1075j & 1) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean q(int i9) {
        if (i9 >= 0 && i9 < this.f1082q.size()) {
            for (int i10 = 0; i10 < i9; i10++) {
                if (((c) this.f1082q.get(i10)).a() > 0) {
                    if (i()) {
                        return (this.f1075j & 2) != 0;
                    }
                    return (this.f1076k & 2) != 0;
                }
            }
            if (i()) {
                return (this.f1075j & 1) != 0;
            }
            if ((this.f1076k & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean r(int i9) {
        if (i9 >= 0 && i9 < this.f1082q.size()) {
            for (int i10 = i9 + 1; i10 < this.f1082q.size(); i10++) {
                if (((c) this.f1082q.get(i10)).a() > 0) {
                    return false;
                }
            }
            if (i()) {
                return (this.f1075j & 4) != 0;
            }
            if ((this.f1076k & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public final void s(int i9, int i10, int i11, int i12, boolean z8) {
        float measuredWidth;
        float f8;
        float f9;
        float fMax;
        int i13;
        int i14;
        View viewO;
        boolean z9;
        int i15;
        int i16;
        float f10;
        float f11;
        int i17;
        float f12;
        int i18;
        View view;
        s3 s3Var;
        c cVar;
        s3 s3Var2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i19 = i11 - i9;
        int paddingBottom = (i12 - i10) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.f1082q.size();
        for (int i20 = 0; i20 < size; i20++) {
            c cVar2 = (c) this.f1082q.get(i20);
            if (q(i20)) {
                int i21 = this.f1077l;
                paddingBottom -= i21;
                paddingTop += i21;
            }
            int i22 = paddingBottom;
            int i23 = this.d;
            char c = 4;
            int i24 = 2;
            boolean z10 = true;
            if (i23 == 0) {
                measuredWidth = paddingLeft;
                f8 = i19 - paddingRight;
            } else if (i23 != 1) {
                if (i23 == 2) {
                    int i25 = cVar2.e;
                    measuredWidth = paddingLeft + ((i19 - i25) / 2.0f);
                    f8 = (i19 - paddingRight) - ((i19 - i25) / 2.0f);
                } else if (i23 == 3) {
                    measuredWidth = paddingLeft;
                    int iA = cVar2.a();
                    f9 = (i19 - cVar2.e) / (iA != 1 ? iA - 1 : 1.0f);
                    f8 = i19 - paddingRight;
                } else if (i23 == 4) {
                    int iA2 = cVar2.a();
                    float f13 = iA2 != 0 ? (i19 - cVar2.e) / iA2 : 0.0f;
                    float f14 = f13 / 2.0f;
                    measuredWidth = paddingLeft + f14;
                    float f15 = (i19 - paddingRight) - f14;
                    f9 = f13;
                    f8 = f15;
                } else {
                    if (i23 != 5) {
                        ai.onnxruntime.b.b(this.d, "Invalid justifyContent is set: ");
                        return;
                    }
                    int iA3 = cVar2.a();
                    f9 = iA3 != 0 ? (i19 - cVar2.e) / (iA3 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f9;
                    f8 = (i19 - paddingRight) - f9;
                }
                fMax = Math.max(f9, 0.0f);
                i13 = 0;
                while (i13 < cVar2.f4042h) {
                    i14 = cVar2.f4049o + i13;
                    viewO = o(i14);
                    char c9 = c;
                    if (viewO != null) {
                        z9 = z10;
                        if (viewO.getVisibility() == 8) {
                            z9 = z9;
                        } else {
                            e eVar = (e) viewO.getLayoutParams();
                            f10 = measuredWidth + ((ViewGroup$MarginLayoutParams) eVar).leftMargin;
                            f11 = f8 - ((ViewGroup$MarginLayoutParams) eVar).rightMargin;
                            if (p(i14, i13)) {
                                int i26 = this.f1078m;
                                float f16 = i26;
                                f10 += f16;
                                f11 -= f16;
                                i17 = i26;
                            } else {
                                i17 = 0;
                            }
                            f12 = f11;
                            if (i13 == cVar2.f4042h - 1 || (this.f1076k & 4) <= 0) {
                                i18 = 0;
                            } else {
                                i18 = this.f1078m;
                            }
                            if (this.c == i24) {
                                i16 = i24;
                                s3Var2 = this.f1081p;
                                if (z8) {
                                    view = viewO;
                                    s3Var2.p(view, cVar2, Math.round(f12) - viewO.getMeasuredWidth(), i22 - viewO.getMeasuredHeight(), Math.round(f12), i22);
                                } else {
                                    view = viewO;
                                    s3Var2.p(view, cVar2, Math.round(f10), i22 - view.getMeasuredHeight(), view.getMeasuredWidth() + Math.round(f10), i22);
                                }
                                i15 = i22;
                            } else {
                                i13 = i13;
                                view = viewO;
                                z9 = z9;
                                i16 = i24;
                                i15 = i22;
                                s3Var = this.f1081p;
                                if (z8) {
                                    s3Var.p(view, cVar2, Math.round(f12) - view.getMeasuredWidth(), paddingTop, Math.round(f12), view.getMeasuredHeight() + paddingTop);
                                } else {
                                    int i27 = paddingTop;
                                    s3Var.p(view, cVar2, Math.round(f10), i27, view.getMeasuredWidth() + Math.round(f10), view.getMeasuredHeight() + i27);
                                    paddingTop = i27;
                                }
                            }
                            measuredWidth = f10 + view.getMeasuredWidth() + fMax + ((ViewGroup$MarginLayoutParams) eVar).rightMargin;
                            float measuredWidth2 = f12 - ((view.getMeasuredWidth() + fMax) + ((ViewGroup$MarginLayoutParams) eVar).leftMargin);
                            if (z8) {
                                cVar = cVar2;
                                cVar.b(view, i18, 0, i17, 0);
                            } else {
                                cVar = cVar2;
                                cVar.b(view, i17, 0, i18, 0);
                            }
                            cVar2 = cVar;
                            f8 = measuredWidth2;
                        }
                        i13++;
                        c = c9;
                        i24 = i16;
                        z10 = z9;
                        i22 = i15;
                    } else {
                        z9 = z10;
                    }
                    i16 = i24;
                    i13 = i13;
                    i15 = i22;
                    i13++;
                    c = c9;
                    i24 = i16;
                    z10 = z9;
                    i22 = i15;
                }
                int i28 = cVar2.f4041g;
                paddingTop += i28;
                paddingBottom = i22 - i28;
            } else {
                int i29 = cVar2.e;
                f8 = i29 - paddingLeft;
                measuredWidth = (i19 - i29) + paddingRight;
            }
            f9 = 0.0f;
            fMax = Math.max(f9, 0.0f);
            i13 = 0;
            while (i13 < cVar2.f4042h) {
                i14 = cVar2.f4049o + i13;
                viewO = o(i14);
                char c10 = c;
                if (viewO != null) {
                    z9 = z10;
                    if (viewO.getVisibility() == 8) {
                        z9 = z9;
                    } else {
                        e eVar2 = (e) viewO.getLayoutParams();
                        f10 = measuredWidth + ((ViewGroup$MarginLayoutParams) eVar2).leftMargin;
                        f11 = f8 - ((ViewGroup$MarginLayoutParams) eVar2).rightMargin;
                        if (p(i14, i13)) {
                            int i210 = this.f1078m;
                            float f17 = i210;
                            f10 += f17;
                            f11 -= f17;
                            i17 = i210;
                        } else {
                            i17 = 0;
                        }
                        f12 = f11;
                        if (i13 == cVar2.f4042h - 1) {
                            i18 = 0;
                        } else {
                            i18 = 0;
                        }
                        if (this.c == i24) {
                            i16 = i24;
                            s3Var2 = this.f1081p;
                            if (z8) {
                                view = viewO;
                                s3Var2.p(view, cVar2, Math.round(f12) - viewO.getMeasuredWidth(), i22 - viewO.getMeasuredHeight(), Math.round(f12), i22);
                            } else {
                                view = viewO;
                                s3Var2.p(view, cVar2, Math.round(f10), i22 - view.getMeasuredHeight(), view.getMeasuredWidth() + Math.round(f10), i22);
                            }
                            i15 = i22;
                        } else {
                            i13 = i13;
                            view = viewO;
                            z9 = z9;
                            i16 = i24;
                            i15 = i22;
                            s3Var = this.f1081p;
                            if (z8) {
                                s3Var.p(view, cVar2, Math.round(f12) - view.getMeasuredWidth(), paddingTop, Math.round(f12), view.getMeasuredHeight() + paddingTop);
                            } else {
                                int i211 = paddingTop;
                                s3Var.p(view, cVar2, Math.round(f10), i211, view.getMeasuredWidth() + Math.round(f10), view.getMeasuredHeight() + i211);
                                paddingTop = i211;
                            }
                        }
                        measuredWidth = f10 + view.getMeasuredWidth() + fMax + ((ViewGroup$MarginLayoutParams) eVar2).rightMargin;
                        float measuredWidth3 = f12 - ((view.getMeasuredWidth() + fMax) + ((ViewGroup$MarginLayoutParams) eVar2).leftMargin);
                        if (z8) {
                            cVar = cVar2;
                            cVar.b(view, i18, 0, i17, 0);
                        } else {
                            cVar = cVar2;
                            cVar.b(view, i17, 0, i18, 0);
                        }
                        cVar2 = cVar;
                        f8 = measuredWidth3;
                    }
                    i13++;
                    c = c10;
                    i24 = i16;
                    z10 = z9;
                    i22 = i15;
                } else {
                    z9 = z10;
                }
                i16 = i24;
                i13 = i13;
                i15 = i22;
                i13++;
                c = c10;
                i24 = i16;
                z10 = z9;
                i22 = i15;
            }
            int i212 = cVar2.f4041g;
            paddingTop += i212;
            paddingBottom = i22 - i212;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAlignContent(int i9) {
        if (this.f1071f != i9) {
            this.f1071f = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAlignItems(int i9) {
        if (this.e != i9) {
            this.e = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerDrawableHorizontal(@Nullable Drawable drawable) {
        if (drawable == this.f1073h) {
            return;
        }
        this.f1073h = drawable;
        if (drawable != null) {
            this.f1077l = drawable.getIntrinsicHeight();
        } else {
            this.f1077l = 0;
        }
        if (this.f1073h == null && this.f1074i == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        if (drawable == this.f1074i) {
            return;
        }
        this.f1074i = drawable;
        if (drawable != null) {
            this.f1078m = drawable.getIntrinsicWidth();
        } else {
            this.f1078m = 0;
        }
        if (this.f1073h == null && this.f1074i == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFlexDirection(int i9) {
        if (this.f1070b != i9) {
            this.f1070b = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.a
    public void setFlexLines(List<c> list) {
        this.f1082q = list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFlexWrap(int i9) {
        if (this.c != i9) {
            this.c = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setJustifyContent(int i9) {
        if (this.d != i9) {
            this.d = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxLine(int i9) {
        if (this.f1072g != i9) {
            this.f1072g = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowDivider(int i9) {
        setShowDividerVertical(i9);
        setShowDividerHorizontal(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowDividerHorizontal(int i9) {
        if (i9 != this.f1075j) {
            this.f1075j = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowDividerVertical(int i9) {
        if (i9 != this.f1076k) {
            this.f1076k = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public final void t(int i9, int i10, int i11, int i12, boolean z8, boolean z9) {
        float measuredHeight;
        float f8;
        float f9;
        float fMax;
        int i13;
        int i14;
        int i15;
        View viewO;
        char c;
        int i16;
        int i17;
        float f10;
        float f11;
        int i18;
        float f12;
        int i19;
        s3 s3Var;
        c cVar;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i20 = i12 - i10;
        int i21 = (i11 - i9) - paddingRight;
        int size = this.f1082q.size();
        for (int i22 = 0; i22 < size; i22++) {
            c cVar2 = (c) this.f1082q.get(i22);
            if (q(i22)) {
                int i23 = this.f1078m;
                paddingLeft += i23;
                i21 -= i23;
            }
            int i24 = i21;
            int i25 = this.d;
            char c9 = 4;
            int i26 = 1;
            if (i25 == 0) {
                measuredHeight = paddingTop;
                f8 = i20 - paddingBottom;
            } else if (i25 != 1) {
                if (i25 == 2) {
                    float f13 = (i20 - cVar2.e) / 2.0f;
                    measuredHeight = paddingTop + f13;
                    f8 = (i20 - paddingBottom) - f13;
                } else if (i25 == 3) {
                    measuredHeight = paddingTop;
                    int iA = cVar2.a();
                    f9 = (i20 - cVar2.e) / (iA != 1 ? iA - 1 : 1.0f);
                    f8 = i20 - paddingBottom;
                } else if (i25 == 4) {
                    int iA2 = cVar2.a();
                    f9 = iA2 != 0 ? (i20 - cVar2.e) / iA2 : 0.0f;
                    float f14 = f9 / 2.0f;
                    measuredHeight = paddingTop + f14;
                    f8 = (i20 - paddingBottom) - f14;
                } else {
                    if (i25 != 5) {
                        ai.onnxruntime.b.b(this.d, "Invalid justifyContent is set: ");
                        return;
                    }
                    int iA3 = cVar2.a();
                    f9 = iA3 != 0 ? (i20 - cVar2.e) / (iA3 + 1) : 0.0f;
                    measuredHeight = paddingTop + f9;
                    f8 = (i20 - paddingBottom) - f9;
                }
                fMax = Math.max(f9, 0.0f);
                i13 = 0;
                while (i13 < cVar2.f4042h) {
                    i14 = cVar2.f4049o + i13;
                    i15 = i26;
                    viewO = o(i14);
                    if (viewO != null) {
                        c = c9;
                        if (viewO.getVisibility() == 8) {
                            e eVar = (e) viewO.getLayoutParams();
                            f10 = measuredHeight + ((ViewGroup$MarginLayoutParams) eVar).topMargin;
                            f11 = f8 - ((ViewGroup$MarginLayoutParams) eVar).bottomMargin;
                            if (p(i14, i13)) {
                                i18 = this.f1077l;
                                float f15 = i18;
                                f10 += f15;
                                f11 -= f15;
                            } else {
                                i18 = 0;
                            }
                            f12 = f11;
                            if (i13 == cVar2.f4042h - i15 || (this.f1075j & 4) <= 0) {
                                i19 = 0;
                            } else {
                                i19 = this.f1077l;
                            }
                            i17 = i13;
                            s3Var = this.f1081p;
                            if (z8) {
                                if (z9) {
                                    s3Var.q(viewO, cVar2, true, i24 - viewO.getMeasuredWidth(), Math.round(f12) - viewO.getMeasuredHeight(), i24, Math.round(f12));
                                } else {
                                    s3Var.q(viewO, cVar2, true, i24 - viewO.getMeasuredWidth(), Math.round(f10), i24, viewO.getMeasuredHeight() + Math.round(f10));
                                }
                                i16 = i24;
                            } else {
                                i17 = i17;
                                i15 = i15;
                                i16 = i24;
                                if (z9) {
                                    s3Var.q(viewO, cVar2, false, paddingLeft, Math.round(f12) - viewO.getMeasuredHeight(), viewO.getMeasuredWidth() + paddingLeft, Math.round(f12));
                                } else {
                                    int i27 = paddingLeft;
                                    s3Var.q(viewO, cVar2, false, i27, Math.round(f10), viewO.getMeasuredWidth() + i27, viewO.getMeasuredHeight() + Math.round(f10));
                                    paddingLeft = i27;
                                }
                            }
                            measuredHeight = f10 + viewO.getMeasuredHeight() + fMax + ((ViewGroup$MarginLayoutParams) eVar).bottomMargin;
                            float measuredHeight2 = f12 - ((viewO.getMeasuredHeight() + fMax) + ((ViewGroup$MarginLayoutParams) eVar).topMargin);
                            if (z9) {
                                cVar = cVar2;
                                cVar.b(viewO, 0, i19, 0, i18);
                            } else {
                                cVar = cVar2;
                                cVar.b(viewO, 0, i18, 0, i19);
                            }
                            cVar2 = cVar;
                            f8 = measuredHeight2;
                        }
                        i13 = i17 + 1;
                        c9 = c;
                        i26 = i15;
                        i24 = i16;
                    } else {
                        c = c9;
                    }
                    i17 = i13;
                    i15 = i15;
                    i16 = i24;
                    i13 = i17 + 1;
                    c9 = c;
                    i26 = i15;
                    i24 = i16;
                }
                int i28 = cVar2.f4041g;
                paddingLeft += i28;
                i21 = i24 - i28;
            } else {
                int i29 = cVar2.e;
                f8 = i29 - paddingTop;
                measuredHeight = (i20 - i29) + paddingBottom;
            }
            f9 = 0.0f;
            fMax = Math.max(f9, 0.0f);
            i13 = 0;
            while (i13 < cVar2.f4042h) {
                i14 = cVar2.f4049o + i13;
                i15 = i26;
                viewO = o(i14);
                if (viewO != null) {
                    c = c9;
                    if (viewO.getVisibility() == 8) {
                        e eVar2 = (e) viewO.getLayoutParams();
                        f10 = measuredHeight + ((ViewGroup$MarginLayoutParams) eVar2).topMargin;
                        f11 = f8 - ((ViewGroup$MarginLayoutParams) eVar2).bottomMargin;
                        if (p(i14, i13)) {
                            i18 = this.f1077l;
                            float f16 = i18;
                            f10 += f16;
                            f11 -= f16;
                        } else {
                            i18 = 0;
                        }
                        f12 = f11;
                        if (i13 == cVar2.f4042h - i15) {
                            i19 = 0;
                        } else {
                            i19 = 0;
                        }
                        i17 = i13;
                        s3Var = this.f1081p;
                        if (z8) {
                            if (z9) {
                                s3Var.q(viewO, cVar2, true, i24 - viewO.getMeasuredWidth(), Math.round(f12) - viewO.getMeasuredHeight(), i24, Math.round(f12));
                            } else {
                                s3Var.q(viewO, cVar2, true, i24 - viewO.getMeasuredWidth(), Math.round(f10), i24, viewO.getMeasuredHeight() + Math.round(f10));
                            }
                            i16 = i24;
                        } else {
                            i17 = i17;
                            i15 = i15;
                            i16 = i24;
                            if (z9) {
                                s3Var.q(viewO, cVar2, false, paddingLeft, Math.round(f12) - viewO.getMeasuredHeight(), viewO.getMeasuredWidth() + paddingLeft, Math.round(f12));
                            } else {
                                int i210 = paddingLeft;
                                s3Var.q(viewO, cVar2, false, i210, Math.round(f10), viewO.getMeasuredWidth() + i210, viewO.getMeasuredHeight() + Math.round(f10));
                                paddingLeft = i210;
                            }
                        }
                        measuredHeight = f10 + viewO.getMeasuredHeight() + fMax + ((ViewGroup$MarginLayoutParams) eVar2).bottomMargin;
                        float measuredHeight3 = f12 - ((viewO.getMeasuredHeight() + fMax) + ((ViewGroup$MarginLayoutParams) eVar2).topMargin);
                        if (z9) {
                            cVar = cVar2;
                            cVar.b(viewO, 0, i19, 0, i18);
                        } else {
                            cVar = cVar2;
                            cVar.b(viewO, 0, i18, 0, i19);
                        }
                        cVar2 = cVar;
                        f8 = measuredHeight3;
                    }
                    i13 = i17 + 1;
                    c9 = c;
                    i26 = i15;
                    i24 = i16;
                } else {
                    c = c9;
                }
                i17 = i13;
                i15 = i15;
                i16 = i24;
                i13 = i17 + 1;
                c9 = c;
                i26 = i15;
                i24 = i16;
            }
            int i211 = cVar2.f4041g;
            paddingLeft += i211;
            i21 = i24 - i211;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(int i9, int i10, int i11, int i12) {
        int paddingBottom;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View$MeasureSpec.getMode(i10);
        int size = View$MeasureSpec.getSize(i10);
        int mode2 = View$MeasureSpec.getMode(i11);
        int size2 = View$MeasureSpec.getSize(i11);
        if (i9 == 0 || i9 == 1) {
            paddingBottom = getPaddingBottom() + getPaddingTop() + getSumOfCrossSize();
            largestMainSize = getLargestMainSize();
        } else {
            if (i9 != 2 && i9 != 3) {
                j1.i.k(ai.onnxruntime.a.e(i9, "Invalid flex direction: "));
                return;
            }
            paddingBottom = getLargestMainSize();
            largestMainSize = getPaddingRight() + getPaddingLeft() + getSumOfCrossSize();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i12 = View.combineMeasuredStates(i12, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i10, i12);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i10, i12);
        } else if (mode != 1073741824) {
            j1.i.l(ai.onnxruntime.a.e(mode, "Unknown width mode is set: "));
            return;
        } else {
            if (size < largestMainSize) {
                i12 = View.combineMeasuredStates(i12, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i10, i12);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < paddingBottom) {
                i12 = View.combineMeasuredStates(i12, 256);
            } else {
                size2 = paddingBottom;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i11, i12);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(paddingBottom, i11, i12);
        } else if (mode2 != 1073741824) {
            j1.i.l(ai.onnxruntime.a.e(mode2, "Unknown height mode is set: "));
            return;
        } else {
            if (size2 < paddingBottom) {
                i12 = View.combineMeasuredStates(i12, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i11, i12);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    @Override // o2.a
    public final void e(int i9, View view) {
    }

    @Override // android.view.ViewGroup
    public final ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        e eVar = new e(context, attributeSet);
        eVar.f4053b = 1;
        eVar.c = 0.0f;
        eVar.d = 1.0f;
        eVar.e = -1;
        eVar.f4054f = -1.0f;
        eVar.f4055g = -1;
        eVar.f4056h = -1;
        eVar.f4057i = ViewCompat.MEASURED_SIZE_MASK;
        eVar.f4058j = ViewCompat.MEASURED_SIZE_MASK;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f4079b);
        eVar.f4053b = typedArrayObtainStyledAttributes.getInt(8, 1);
        eVar.c = typedArrayObtainStyledAttributes.getFloat(2, 0.0f);
        eVar.d = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        eVar.e = typedArrayObtainStyledAttributes.getInt(0, -1);
        eVar.f4054f = typedArrayObtainStyledAttributes.getFraction(1, 1, 1, -1.0f);
        eVar.f4055g = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        eVar.f4056h = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, -1);
        eVar.f4057i = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, ViewCompat.MEASURED_SIZE_MASK);
        eVar.f4058j = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, ViewCompat.MEASURED_SIZE_MASK);
        eVar.f4059k = typedArrayObtainStyledAttributes.getBoolean(9, false);
        typedArrayObtainStyledAttributes.recycle();
        return eVar;
    }
}
