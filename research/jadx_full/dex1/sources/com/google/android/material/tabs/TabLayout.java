package com.google.android.material.tabs;

import android.R$attr;
import android.animation.Animator$AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff$Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout$LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$styleable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools$SimplePool;
import androidx.core.util.Pools$SynchronizedPool;
import androidx.core.view.GravityCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionInfoCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager$DecorView;
import b1.u;
import c5.e;
import d4.c;
import d4.d;
import d4.f;
import d4.h;
import d4.i;
import d4.j;
import d4.m;
import g4.a;
import java.util.ArrayList;
import java.util.Iterator;
import s3.l;
import s3.q;
import w3.b;
import z3.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@ViewPager$DecorView
public class TabLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final Pools$SynchronizedPool f1358b0 = new Pools$SynchronizedPool(16);
    public final int A;
    public int B;
    public final int C;
    public int D;
    public int E;
    public boolean F;
    public boolean G;
    public int H;
    public int I;
    public boolean J;
    public e K;
    public final TimeInterpolator L;
    public d M;
    public final ArrayList N;
    public m O;
    public ValueAnimator P;
    public ViewPager Q;
    public PagerAdapter R;
    public f S;
    public j T;
    public c U;
    public boolean V;
    public int W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Pools$SimplePool f1359a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1360b;
    public final ArrayList c;
    public i d;
    public final h e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1361f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1362g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1363h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1364i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f1365j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f1366k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f1367l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ColorStateList f1368m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ColorStateList f1369n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ColorStateList f1370o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Drawable f1371p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1372q;
    public final PorterDuff$Mode r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final float f1373s;
    public final float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f1374u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f1375v;
    public int w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f1376x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f1377y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f1378z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(a.a(context, attributeSet, 2130904444, 2132018104), attributeSet, 2130904444);
        this.f1360b = -1;
        this.c = new ArrayList();
        this.f1367l = -1;
        this.f1372q = 0;
        this.w = Integer.MAX_VALUE;
        this.H = -1;
        this.N = new ArrayList();
        this.f1359a0 = new Pools$SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        h hVar = new h(this, context2);
        this.e = hVar;
        super.addView(hVar, 0, new FrameLayout$LayoutParams(-2, -1));
        TypedArray typedArrayD = l.d(context2, attributeSet, a3.a.J, 2130904444, 2132018104, 24);
        ColorStateList colorStateListD = o3.c.d(getBackground());
        if (colorStateListD != null) {
            k kVar = new k();
            kVar.q(colorStateListD);
            kVar.m(context2);
            kVar.p(getElevation());
            setBackground(kVar);
        }
        setSelectedTabIndicator(w3.c.c(context2, typedArrayD, 5));
        setSelectedTabIndicatorColor(typedArrayD.getColor(8, 0));
        hVar.b(typedArrayD.getDimensionPixelSize(11, -1));
        setSelectedTabIndicatorGravity(typedArrayD.getInt(10, 0));
        setTabIndicatorAnimationMode(typedArrayD.getInt(7, 0));
        setTabIndicatorFullWidth(typedArrayD.getBoolean(9, true));
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(16, 0);
        this.f1364i = dimensionPixelSize;
        this.f1363h = dimensionPixelSize;
        this.f1362g = dimensionPixelSize;
        this.f1361f = dimensionPixelSize;
        this.f1361f = typedArrayD.getDimensionPixelSize(19, dimensionPixelSize);
        this.f1362g = typedArrayD.getDimensionPixelSize(20, dimensionPixelSize);
        this.f1363h = typedArrayD.getDimensionPixelSize(18, dimensionPixelSize);
        this.f1364i = typedArrayD.getDimensionPixelSize(17, dimensionPixelSize);
        if (b.b(context2, 2130903752, false)) {
            this.f1365j = 2130904508;
        } else {
            this.f1365j = 2130904466;
        }
        int resourceId = typedArrayD.getResourceId(24, 2132017689);
        this.f1366k = resourceId;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, R$styleable.TextAppearance);
        try {
            float dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TextAppearance_android_textSize, 0);
            this.f1373s = dimensionPixelSize2;
            this.f1368m = w3.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes.recycle();
            if (typedArrayD.hasValue(22)) {
                this.f1367l = typedArrayD.getResourceId(22, resourceId);
            }
            int i9 = this.f1367l;
            if (i9 != -1) {
                TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(i9, R$styleable.TextAppearance);
                try {
                    this.t = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R$styleable.TextAppearance_android_textSize, (int) dimensionPixelSize2);
                    ColorStateList colorStateListA = w3.c.a(context2, typedArrayObtainStyledAttributes2, R$styleable.TextAppearance_android_textColor);
                    if (colorStateListA != null) {
                        this.f1368m = g(this.f1368m.getDefaultColor(), colorStateListA.getColorForState(new int[]{R$attr.state_selected}, colorStateListA.getDefaultColor()));
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes2.recycle();
                    throw th;
                }
            }
            if (typedArrayD.hasValue(25)) {
                this.f1368m = w3.c.a(context2, typedArrayD, 25);
            }
            if (typedArrayD.hasValue(23)) {
                this.f1368m = g(this.f1368m.getDefaultColor(), typedArrayD.getColor(23, 0));
            }
            this.f1369n = w3.c.a(context2, typedArrayD, 3);
            this.r = q.b(typedArrayD.getInt(4, -1), null);
            this.f1370o = w3.c.a(context2, typedArrayD, 21);
            this.C = typedArrayD.getInt(6, 300);
            this.L = com.bumptech.glide.d.r(context2, 2130904068, b3.a.f306b);
            this.f1376x = typedArrayD.getDimensionPixelSize(14, -1);
            this.f1377y = typedArrayD.getDimensionPixelSize(13, -1);
            this.f1375v = typedArrayD.getResourceId(0, 0);
            this.A = typedArrayD.getDimensionPixelSize(1, 0);
            this.E = typedArrayD.getInt(15, 1);
            this.B = typedArrayD.getInt(2, 0);
            this.F = typedArrayD.getBoolean(12, false);
            this.J = typedArrayD.getBoolean(26, false);
            typedArrayD.recycle();
            Resources resources = getResources();
            this.f1374u = resources.getDimensionPixelSize(2131099791);
            this.f1378z = resources.getDimensionPixelSize(2131099789);
            e();
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ColorStateList g(int i9, int i10) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i10, i9});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Dimension(unit = 0)
    private int getDefaultHeight() {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            i iVar = (i) arrayList.get(i9);
            if (iVar != null && iVar.f1744b != null && !TextUtils.isEmpty(iVar.c)) {
                return !this.F ? 72 : 48;
            }
        }
        return 48;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getTabMinWidth() {
        int i9 = this.f1376x;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.E;
        if (i10 == 0 || i10 == 2) {
            return this.f1378z;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getTabScrollRange() {
        return Math.max(0, ((this.e.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setSelectedTabView(int i9) {
        h hVar = this.e;
        int childCount = hVar.getChildCount();
        if (i9 < childCount) {
            int i10 = 0;
            while (i10 < childCount) {
                View childAt = hVar.getChildAt(i10);
                if ((i10 != i9 || childAt.isSelected()) && (i10 == i9 || !childAt.isSelected())) {
                    childAt.setSelected(i10 == i9);
                    childAt.setActivated(i10 == i9);
                } else {
                    childAt.setSelected(i10 == i9);
                    childAt.setActivated(i10 == i9);
                    if (childAt instanceof d4.l) {
                        ((d4.l) childAt).g();
                    }
                }
                i10++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(d dVar) {
        ArrayList arrayList = this.N;
        if (arrayList.contains(dVar)) {
            return;
        }
        arrayList.add(dVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        c(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(i iVar, boolean z8) {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        if (iVar.f1746g != this) {
            j1.i.k("Tab belongs to a different TabLayout.");
            return;
        }
        iVar.e = size;
        arrayList.add(size, iVar);
        int size2 = arrayList.size();
        int i9 = -1;
        for (int i10 = size + 1; i10 < size2; i10++) {
            if (((i) arrayList.get(i10)).e == this.f1360b) {
                i9 = i10;
            }
            ((i) arrayList.get(i10)).e = i10;
        }
        this.f1360b = i9;
        d4.l lVar = iVar.f1747h;
        lVar.setSelected(false);
        lVar.setActivated(false);
        int i11 = iVar.e;
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-2, -1);
        if (this.E == 1 && this.B == 0) {
            linearLayout$LayoutParams.width = 0;
            linearLayout$LayoutParams.weight = 1.0f;
        } else {
            linearLayout$LayoutParams.width = -2;
            linearLayout$LayoutParams.weight = 0.0f;
        }
        this.e.addView(lVar, i11, linearLayout$LayoutParams);
        if (z8) {
            TabLayout tabLayout = iVar.f1746g;
            if (tabLayout != null) {
                tabLayout.l(iVar, true);
            } else {
                j1.i.k("Tab not attached to a TabLayout");
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(View view) {
        if (!(view instanceof TabItem)) {
            j1.i.k("Only TabItem instances can be added to TabLayout");
            return;
        }
        TabItem tabItem = (TabItem) view;
        i iVarI = i();
        CharSequence charSequence = tabItem.f1357b;
        if (charSequence != null) {
            iVarI.a(charSequence);
        }
        Drawable drawable = tabItem.c;
        if (drawable != null) {
            iVarI.f1744b = drawable;
            TabLayout tabLayout = iVarI.f1746g;
            if (tabLayout.B == 1 || tabLayout.E == 2) {
                tabLayout.p(true);
            }
            d4.l lVar = iVarI.f1747h;
            if (lVar != null) {
                lVar.e();
            }
        }
        int i9 = tabItem.d;
        if (i9 != 0) {
            iVarI.f1745f = LayoutInflater.from(iVarI.f1747h.getContext()).inflate(i9, (ViewGroup) iVarI.f1747h, false);
            d4.l lVar2 = iVarI.f1747h;
            if (lVar2 != null) {
                lVar2.e();
            }
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            iVarI.d = tabItem.getContentDescription();
            d4.l lVar3 = iVarI.f1747h;
            if (lVar3 != null) {
                lVar3.e();
            }
        }
        b(iVarI, this.c.isEmpty());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(int i9) {
        if (i9 == -1) {
            return;
        }
        if (getWindowToken() != null && isLaidOut()) {
            h hVar = this.e;
            int childCount = hVar.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                if (hVar.getChildAt(i10).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int iF = f(i9, 0.0f);
            if (scrollX != iF) {
                h();
                this.P.setIntValues(scrollX, iF);
                this.P.start();
            }
            ValueAnimator valueAnimator = (ValueAnimator) hVar.c;
            if (valueAnimator != null && valueAnimator.isRunning() && ((TabLayout) hVar.d).f1360b != i9) {
                ((ValueAnimator) hVar.c).cancel();
            }
            hVar.d(i9, this.C, true);
            return;
        }
        n(i9, 0.0f, true, true, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        int i9 = this.E;
        int iMax = (i9 == 0 || i9 == 2) ? Math.max(0, this.A - this.f1361f) : 0;
        h hVar = this.e;
        hVar.setPaddingRelative(iMax, 0, 0, 0);
        int i10 = this.E;
        if (i10 == 0) {
            int i11 = this.B;
            if (i11 == 0) {
                Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
            } else if (i11 == 1) {
                hVar.setGravity(1);
            } else if (i11 == 2) {
            }
            hVar.setGravity(GravityCompat.START);
        } else if (i10 == 1 || i10 == 2) {
            if (this.B == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            hVar.setGravity(1);
        }
        p(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int f(int i9, float f8) {
        h hVar;
        View childAt;
        int i10 = this.E;
        if ((i10 != 0 && i10 != 2) || (childAt = (hVar = this.e).getChildAt(i9)) == null) {
            return 0;
        }
        int i11 = i9 + 1;
        View childAt2 = i11 < hVar.getChildCount() ? hVar.getChildAt(i11) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i12 = (int) ((width + width2) * 0.5f * f8);
        return getLayoutDirection() == 0 ? left + i12 : left - i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSelectedTabPosition() {
        i iVar = this.d;
        if (iVar != null) {
            return iVar.e;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTabCount() {
        return this.c.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTabGravity() {
        return this.B;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getTabIconTint() {
        return this.f1369n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTabIndicatorAnimationMode() {
        return this.I;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTabIndicatorGravity() {
        return this.D;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTabMaxWidth() {
        return this.w;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTabMode() {
        return this.E;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.f1370o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.f1371p;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getTabTextColors() {
        return this.f1368m;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        if (this.P == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.P = valueAnimator;
            valueAnimator.setInterpolator(this.L);
            this.P.setDuration(this.C);
            this.P.addUpdateListener(new d4.b(0, this));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: T */
    /* JADX DEBUG: Multi-variable search result rejected for r1v5, resolved type: T */
    /* JADX WARN: Multi-variable type inference failed */
    public final i i() {
        i iVar = (i) f1358b0.acquire();
        if (iVar == null) {
            iVar = new i();
            iVar.e = -1;
        }
        iVar.f1746g = this;
        Pools$SimplePool pools$SimplePool = this.f1359a0;
        d4.l lVar = pools$SimplePool != null ? (d4.l) pools$SimplePool.acquire() : null;
        if (lVar == null) {
            lVar = new d4.l(this, getContext());
        }
        lVar.setTab(iVar);
        lVar.setFocusable(true);
        lVar.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(iVar.d)) {
            lVar.setContentDescription(iVar.c);
        } else {
            lVar.setContentDescription(iVar.d);
        }
        iVar.f1747h = lVar;
        return iVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        int currentItem;
        k();
        PagerAdapter pagerAdapter = this.R;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i9 = 0; i9 < count; i9++) {
                i iVarI = i();
                iVarI.a(this.R.getPageTitle(i9));
                b(iVarI, false);
            }
            ViewPager viewPager = this.Q;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            l((currentItem < 0 || currentItem >= getTabCount()) ? null : (i) this.c.get(currentItem), true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0008 */
    public final void k() {
        h hVar = this.e;
        int childCount = hVar.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            d4.l lVar = (d4.l) hVar.getChildAt(childCount);
            hVar.removeViewAt(childCount);
            if (lVar != null) {
                lVar.setTab(null);
                lVar.setSelected(false);
                this.f1359a0.release(lVar);
            }
            requestLayout();
        }
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            i iVar = (i) it.next();
            it.remove();
            iVar.f1746g = null;
            iVar.f1747h = null;
            iVar.f1743a = null;
            iVar.f1744b = null;
            iVar.c = null;
            iVar.d = null;
            iVar.e = -1;
            iVar.f1745f = null;
            f1358b0.release(iVar);
        }
        this.d = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(i iVar, boolean z8) {
        TabLayout tabLayout;
        i iVar2 = this.d;
        ArrayList arrayList = this.N;
        if (iVar2 == iVar) {
            if (iVar2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((d) arrayList.get(size)).getClass();
                }
                d(iVar.e);
                return;
            }
            return;
        }
        int i9 = iVar != null ? iVar.e : -1;
        if (z8) {
            if ((iVar2 == null || iVar2.e == -1) && i9 != -1) {
                tabLayout = this;
                tabLayout.n(i9, 0.0f, true, true, true);
            } else {
                tabLayout = this;
                d(i9);
            }
            if (i9 != -1) {
                setSelectedTabView(i9);
            }
        } else {
            tabLayout = this;
        }
        tabLayout.d = iVar;
        if (iVar2 != null && iVar2.f1746g != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((d) arrayList.get(size2)).getClass();
            }
        }
        if (iVar != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((d) arrayList.get(size3)).a(iVar);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(PagerAdapter pagerAdapter, boolean z8) {
        f fVar;
        PagerAdapter pagerAdapter2 = this.R;
        if (pagerAdapter2 != null && (fVar = this.S) != null) {
            pagerAdapter2.unregisterDataSetObserver(fVar);
        }
        this.R = pagerAdapter;
        if (z8 && pagerAdapter != null) {
            if (this.S == null) {
                this.S = new f(this);
            }
            pagerAdapter.registerDataSetObserver(this.S);
        }
        j();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(int i9, float f8, boolean z8, boolean z9, boolean z10) {
        float f9 = i9 + f8;
        int iRound = Math.round(f9);
        if (iRound >= 0) {
            h hVar = this.e;
            if (iRound >= hVar.getChildCount()) {
                return;
            }
            if (z9) {
                ((TabLayout) hVar.d).f1360b = Math.round(f9);
                ValueAnimator valueAnimator = (ValueAnimator) hVar.c;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    ((ValueAnimator) hVar.c).cancel();
                }
                hVar.c(hVar.getChildAt(i9), hVar.getChildAt(i9 + 1), f8);
            }
            ValueAnimator valueAnimator2 = this.P;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.P.cancel();
            }
            int iF = f(i9, f8);
            int scrollX = getScrollX();
            boolean z11 = (i9 < getSelectedTabPosition() && iF >= scrollX) || (i9 > getSelectedTabPosition() && iF <= scrollX) || i9 == getSelectedTabPosition();
            if (getLayoutDirection() == 1) {
                z11 = (i9 < getSelectedTabPosition() && iF <= scrollX) || (i9 > getSelectedTabPosition() && iF >= scrollX) || i9 == getSelectedTabPosition();
            }
            if (z11 || this.W == 1 || z10) {
                if (i9 < 0) {
                    iF = 0;
                }
                scrollTo(iF, 0);
            }
            if (z8) {
                setSelectedTabView(iRound);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o(ViewPager viewPager, boolean z8) {
        TabLayout tabLayout;
        ViewPager viewPager2 = this.Q;
        if (viewPager2 != null) {
            j jVar = this.T;
            if (jVar != null) {
                viewPager2.removeOnPageChangeListener(jVar);
            }
            c cVar = this.U;
            if (cVar != null) {
                this.Q.removeOnAdapterChangeListener(cVar);
            }
        }
        m mVar = this.O;
        if (mVar != null) {
            this.N.remove(mVar);
            this.O = null;
        }
        if (viewPager != null) {
            this.Q = viewPager;
            if (this.T == null) {
                this.T = new j(this);
            }
            j jVar2 = this.T;
            jVar2.c = 0;
            jVar2.f1749b = 0;
            viewPager.addOnPageChangeListener(jVar2);
            m mVar2 = new m(0, viewPager);
            this.O = mVar2;
            a(mVar2);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                m(adapter, true);
            }
            if (this.U == null) {
                this.U = new c(this);
            }
            c cVar2 = this.U;
            cVar2.f1737a = true;
            viewPager.addOnAdapterChangeListener(cVar2);
            tabLayout = this;
            tabLayout.n(viewPager.getCurrentItem(), 0.0f, true, true, true);
        } else {
            tabLayout = this;
            tabLayout.Q = null;
            m(null, false);
        }
        tabLayout.V = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof k) {
            u.w(this, (k) background);
        }
        if (this.Q == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                o((ViewPager) parent, true);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.V) {
            setupWithViewPager(null);
            this.V = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        d4.l lVar;
        Drawable drawable;
        int i9 = 0;
        while (true) {
            h hVar = this.e;
            if (i9 >= hVar.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = hVar.getChildAt(i9);
            if ((childAt instanceof d4.l) && (drawable = (lVar = (d4.l) childAt).f1758j) != null) {
                drawable.setBounds(lVar.getLeft(), lVar.getTop(), lVar.getRight(), lVar.getBottom());
                lVar.f1758j.draw(canvas);
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat$CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        int iRound = Math.round(q.a(getDefaultHeight(), getContext()));
        int mode = View$MeasureSpec.getMode(i10);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i10 = View$MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + iRound, BasicMeasure.EXACTLY);
            }
        } else if (getChildCount() == 1 && View$MeasureSpec.getSize(i10) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View$MeasureSpec.getSize(i9);
        if (View$MeasureSpec.getMode(i9) != 0) {
            int iA = this.f1377y;
            if (iA <= 0) {
                iA = (int) (size - q.a(56, getContext()));
            }
            this.w = iA;
        }
        super.onMeasure(i9, i10);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i11 = this.E;
            if (i11 == 0) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (i11 != 1) {
                if (i11 != 2) {
                    return;
                }
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                return;
            }
            childAt.measure(View$MeasureSpec.makeMeasureSpec(getMeasuredWidth(), BasicMeasure.EXACTLY), ViewGroup.getChildMeasureSpec(i10, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || getTabMode() == 0 || getTabMode() == 2) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void p(boolean z8) {
        int i9 = 0;
        while (true) {
            h hVar = this.e;
            if (i9 >= hVar.getChildCount()) {
                return;
            }
            View childAt = hVar.getChildAt(i9);
            childAt.setMinimumWidth(getTabMinWidth());
            LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) childAt.getLayoutParams();
            if (this.E == 1 && this.B == 0) {
                linearLayout$LayoutParams.width = 0;
                linearLayout$LayoutParams.weight = 1.0f;
            } else {
                linearLayout$LayoutParams.width = -2;
                linearLayout$LayoutParams.weight = 0.0f;
            }
            if (z8) {
                childAt.requestLayout();
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        Drawable background = getBackground();
        if (background instanceof k) {
            ((k) background).p(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInlineLabel(boolean z8) {
        if (this.F == z8) {
            return;
        }
        this.F = z8;
        int i9 = 0;
        while (true) {
            h hVar = this.e;
            if (i9 >= hVar.getChildCount()) {
                e();
                return;
            }
            View childAt = hVar.getChildAt(i9);
            if (childAt instanceof d4.l) {
                d4.l lVar = (d4.l) childAt;
                lVar.setOrientation(!lVar.f1760l.F ? 1 : 0);
                TextView textView = lVar.f1756h;
                if (textView == null && lVar.f1757i == null) {
                    lVar.h(lVar.c, lVar.d, true);
                } else {
                    lVar.h(textView, lVar.f1757i, false);
                }
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInlineLabelResource(@BoolRes int i9) {
        setInlineLabel(getResources().getBoolean(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setOnTabSelectedListener(@Nullable d dVar) {
        d dVar2 = this.M;
        if (dVar2 != null) {
            this.N.remove(dVar2);
        }
        this.M = dVar;
        if (dVar != null) {
            a(dVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScrollAnimatorListener(Animator$AnimatorListener animator$AnimatorListener) {
        h();
        this.P.addListener(animator$AnimatorListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
        this.f1371p = drawableMutate;
        int i9 = this.f1372q;
        if (i9 != 0) {
            drawableMutate.setTint(i9);
        } else {
            drawableMutate.setTintList(null);
        }
        int intrinsicHeight = this.H;
        if (intrinsicHeight == -1) {
            intrinsicHeight = this.f1371p.getIntrinsicHeight();
        }
        this.e.b(intrinsicHeight);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSelectedTabIndicatorColor(@ColorInt int i9) {
        this.f1372q = i9;
        Drawable drawable = this.f1371p;
        if (i9 != 0) {
            drawable.setTint(i9);
        } else {
            drawable.setTintList(null);
        }
        p(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSelectedTabIndicatorGravity(int i9) {
        if (this.D != i9) {
            this.D = i9;
            this.e.postInvalidateOnAnimation();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setSelectedTabIndicatorHeight(int i9) {
        this.H = i9;
        this.e.b(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTabGravity(int i9) {
        if (this.B != i9) {
            this.B = i9;
            e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f1369n != colorStateList) {
            this.f1369n = colorStateList;
            ArrayList arrayList = this.c;
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                d4.l lVar = ((i) arrayList.get(i9)).f1747h;
                if (lVar != null) {
                    lVar.e();
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTabIconTintResource(@ColorRes int i9) {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTabIndicatorAnimationMode(int i9) {
        this.I = i9;
        if (i9 == 0) {
            this.K = new e(4);
            return;
        }
        if (i9 == 1) {
            this.K = new d4.a(0);
        } else {
            if (i9 == 2) {
                this.K = new d4.a(1);
                return;
            }
            throw new IllegalArgumentException(i9 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTabIndicatorFullWidth(boolean z8) {
        this.G = z8;
        int i9 = h.e;
        h hVar = this.e;
        hVar.a(((TabLayout) hVar.d).getSelectedTabPosition());
        hVar.postInvalidateOnAnimation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTabMode(int i9) {
        if (i9 != this.E) {
            this.E = i9;
            e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f1370o == colorStateList) {
            return;
        }
        this.f1370o = colorStateList;
        int i9 = 0;
        while (true) {
            h hVar = this.e;
            if (i9 >= hVar.getChildCount()) {
                return;
            }
            View childAt = hVar.getChildAt(i9);
            if (childAt instanceof d4.l) {
                Context context = getContext();
                int i10 = d4.l.f1752m;
                ((d4.l) childAt).f(context);
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTabRippleColorResource(@ColorRes int i9) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.f1368m != colorStateList) {
            this.f1368m = colorStateList;
            ArrayList arrayList = this.c;
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                d4.l lVar = ((i) arrayList.get(i9)).f1747h;
                if (lVar != null) {
                    lVar.e();
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        m(pagerAdapter, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setUnboundedRipple(boolean z8) {
        if (this.J == z8) {
            return;
        }
        this.J = z8;
        int i9 = 0;
        while (true) {
            h hVar = this.e;
            if (i9 >= hVar.getChildCount()) {
                return;
            }
            View childAt = hVar.getChildAt(i9);
            if (childAt instanceof d4.l) {
                Context context = getContext();
                int i10 = d4.l.f1752m;
                ((d4.l) childAt).f(context);
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setUnboundedRippleResource(@BoolRes int i9) {
        setUnboundedRipple(getResources().getBoolean(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        o(viewPager, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i9) {
        c(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        c(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        c(view);
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable d4.e eVar) {
        setOnTabSelectedListener((d) eVar);
    }

    public void setSelectedTabIndicator(@DrawableRes int i9) {
        if (i9 != 0) {
            setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), i9));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
