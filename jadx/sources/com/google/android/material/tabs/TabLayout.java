package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0148R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.Iterator;
import p004a3.AbstractC0007a;
import p016b1.AbstractC0880u;
import p018b3.AbstractC0884a;
import p030c5.C0990e;
import p041d4.C1267a;
import p041d4.C1268b;
import p041d4.C1269c;
import p041d4.C1272f;
import p041d4.C1274h;
import p041d4.C1275i;
import p041d4.C1276j;
import p041d4.C1278l;
import p041d4.C1279m;
import p041d4.InterfaceC1270d;
import p041d4.InterfaceC1271e;
import p071g4.AbstractC1618a;
import p099j1.C1929i;
import p154o3.AbstractC2585c;
import p192s3.AbstractC3198l;
import p192s3.AbstractC3203q;
import p228w3.AbstractC3517b;
import p228w3.AbstractC3518c;
import p258z3.C3725k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@ViewPager.DecorView
public class TabLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: b0 */
    public static final Pools.SynchronizedPool f2433b0 = new Pools.SynchronizedPool(16);

    /* JADX INFO: renamed from: A */
    public final int f2434A;

    /* JADX INFO: renamed from: B */
    public int f2435B;

    /* JADX INFO: renamed from: C */
    public final int f2436C;

    /* JADX INFO: renamed from: D */
    public int f2437D;

    /* JADX INFO: renamed from: E */
    public int f2438E;

    /* JADX INFO: renamed from: F */
    public boolean f2439F;

    /* JADX INFO: renamed from: G */
    public boolean f2440G;

    /* JADX INFO: renamed from: H */
    public int f2441H;

    /* JADX INFO: renamed from: I */
    public int f2442I;

    /* JADX INFO: renamed from: J */
    public boolean f2443J;

    /* JADX INFO: renamed from: K */
    public C0990e f2444K;

    /* JADX INFO: renamed from: L */
    public final TimeInterpolator f2445L;

    /* JADX INFO: renamed from: M */
    public InterfaceC1270d f2446M;

    /* JADX INFO: renamed from: N */
    public final ArrayList f2447N;

    /* JADX INFO: renamed from: O */
    public C1279m f2448O;

    /* JADX INFO: renamed from: P */
    public ValueAnimator f2449P;

    /* JADX INFO: renamed from: Q */
    public ViewPager f2450Q;

    /* JADX INFO: renamed from: R */
    public PagerAdapter f2451R;

    /* JADX INFO: renamed from: S */
    public C1272f f2452S;

    /* JADX INFO: renamed from: T */
    public C1276j f2453T;

    /* JADX INFO: renamed from: U */
    public C1269c f2454U;

    /* JADX INFO: renamed from: V */
    public boolean f2455V;

    /* JADX INFO: renamed from: W */
    public int f2456W;

    /* JADX INFO: renamed from: a0 */
    public final Pools.SimplePool f2457a0;

    /* JADX INFO: renamed from: b */
    public int f2458b;

    /* JADX INFO: renamed from: c */
    public final ArrayList f2459c;

    /* JADX INFO: renamed from: d */
    public C1275i f2460d;

    /* JADX INFO: renamed from: e */
    public final C1274h f2461e;

    /* JADX INFO: renamed from: f */
    public final int f2462f;

    /* JADX INFO: renamed from: g */
    public final int f2463g;

    /* JADX INFO: renamed from: h */
    public final int f2464h;

    /* JADX INFO: renamed from: i */
    public final int f2465i;

    /* JADX INFO: renamed from: j */
    public final int f2466j;

    /* JADX INFO: renamed from: k */
    public final int f2467k;

    /* JADX INFO: renamed from: l */
    public final int f2468l;

    /* JADX INFO: renamed from: m */
    public ColorStateList f2469m;

    /* JADX INFO: renamed from: n */
    public ColorStateList f2470n;

    /* JADX INFO: renamed from: o */
    public ColorStateList f2471o;

    /* JADX INFO: renamed from: p */
    public Drawable f2472p;

    /* JADX INFO: renamed from: q */
    public int f2473q;

    /* JADX INFO: renamed from: r */
    public final PorterDuff.Mode f2474r;

    /* JADX INFO: renamed from: s */
    public final float f2475s;

    /* JADX INFO: renamed from: t */
    public final float f2476t;

    /* JADX INFO: renamed from: u */
    public final float f2477u;

    /* JADX INFO: renamed from: v */
    public final int f2478v;

    /* JADX INFO: renamed from: w */
    public int f2479w;

    /* JADX INFO: renamed from: x */
    public final int f2480x;

    /* JADX INFO: renamed from: y */
    public final int f2481y;

    /* JADX INFO: renamed from: z */
    public final int f2482z;

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(AbstractC1618a.m2696a(context, attributeSet, R.attr.tabStyle, R.style.Widget_Design_TabLayout), attributeSet, R.attr.tabStyle);
        this.f2458b = -1;
        this.f2459c = new ArrayList();
        this.f2468l = -1;
        this.f2473q = 0;
        this.f2479w = Integer.MAX_VALUE;
        this.f2441H = -1;
        this.f2447N = new ArrayList();
        this.f2457a0 = new Pools.SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        C1274h c1274h = new C1274h(this, context2);
        this.f2461e = c1274h;
        super.addView(c1274h, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context2, attributeSet, AbstractC0007a.f18J, R.attr.tabStyle, R.style.Widget_Design_TabLayout, 24);
        ColorStateList colorStateListM4029d = AbstractC2585c.m4029d(getBackground());
        if (colorStateListM4029d != null) {
            C3725k c3725k = new C3725k();
            c3725k.m5948q(colorStateListM4029d);
            c3725k.m5944m(context2);
            c3725k.m5947p(getElevation());
            setBackground(c3725k);
        }
        setSelectedTabIndicator(AbstractC3518c.m5589c(context2, typedArrayM5136d, 5));
        setSelectedTabIndicatorColor(typedArrayM5136d.getColor(8, 0));
        c1274h.m2274b(typedArrayM5136d.getDimensionPixelSize(11, -1));
        setSelectedTabIndicatorGravity(typedArrayM5136d.getInt(10, 0));
        setTabIndicatorAnimationMode(typedArrayM5136d.getInt(7, 0));
        setTabIndicatorFullWidth(typedArrayM5136d.getBoolean(9, true));
        int dimensionPixelSize = typedArrayM5136d.getDimensionPixelSize(16, 0);
        this.f2465i = dimensionPixelSize;
        this.f2464h = dimensionPixelSize;
        this.f2463g = dimensionPixelSize;
        this.f2462f = dimensionPixelSize;
        this.f2462f = typedArrayM5136d.getDimensionPixelSize(19, dimensionPixelSize);
        this.f2463g = typedArrayM5136d.getDimensionPixelSize(20, dimensionPixelSize);
        this.f2464h = typedArrayM5136d.getDimensionPixelSize(18, dimensionPixelSize);
        this.f2465i = typedArrayM5136d.getDimensionPixelSize(17, dimensionPixelSize);
        if (AbstractC3517b.m5585b(context2, R.attr.isMaterial3Theme, false)) {
            this.f2466j = R.attr.textAppearanceTitleSmall;
        } else {
            this.f2466j = R.attr.textAppearanceButton;
        }
        int resourceId = typedArrayM5136d.getResourceId(24, R.style.TextAppearance_Design_Tab);
        this.f2467k = resourceId;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, C0148R.styleable.TextAppearance);
        try {
            float dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(C0148R.styleable.TextAppearance_android_textSize, 0);
            this.f2475s = dimensionPixelSize2;
            this.f2469m = AbstractC3518c.m5587a(context2, typedArrayObtainStyledAttributes, C0148R.styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes.recycle();
            if (typedArrayM5136d.hasValue(22)) {
                this.f2468l = typedArrayM5136d.getResourceId(22, resourceId);
            }
            int i10 = this.f2468l;
            if (i10 != -1) {
                TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(i10, C0148R.styleable.TextAppearance);
                try {
                    this.f2476t = typedArrayObtainStyledAttributes2.getDimensionPixelSize(C0148R.styleable.TextAppearance_android_textSize, (int) dimensionPixelSize2);
                    ColorStateList colorStateListM5587a = AbstractC3518c.m5587a(context2, typedArrayObtainStyledAttributes2, C0148R.styleable.TextAppearance_android_textColor);
                    if (colorStateListM5587a != null) {
                        this.f2469m = m1830g(this.f2469m.getDefaultColor(), colorStateListM5587a.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListM5587a.getDefaultColor()));
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes2.recycle();
                    throw th;
                }
            }
            if (typedArrayM5136d.hasValue(25)) {
                this.f2469m = AbstractC3518c.m5587a(context2, typedArrayM5136d, 25);
            }
            if (typedArrayM5136d.hasValue(23)) {
                this.f2469m = m1830g(this.f2469m.getDefaultColor(), typedArrayM5136d.getColor(23, 0));
            }
            this.f2470n = AbstractC3518c.m5587a(context2, typedArrayM5136d, 3);
            this.f2474r = AbstractC3203q.m5139b(typedArrayM5136d.getInt(4, -1), null);
            this.f2471o = AbstractC3518c.m5587a(context2, typedArrayM5136d, 21);
            this.f2436C = typedArrayM5136d.getInt(6, 300);
            this.f2445L = AbstractC1031d.m1288r(context2, R.attr.motionEasingEmphasizedInterpolator, AbstractC0884a.f662b);
            this.f2480x = typedArrayM5136d.getDimensionPixelSize(14, -1);
            this.f2481y = typedArrayM5136d.getDimensionPixelSize(13, -1);
            this.f2478v = typedArrayM5136d.getResourceId(0, 0);
            this.f2434A = typedArrayM5136d.getDimensionPixelSize(1, 0);
            this.f2438E = typedArrayM5136d.getInt(15, 1);
            this.f2435B = typedArrayM5136d.getInt(2, 0);
            this.f2439F = typedArrayM5136d.getBoolean(12, false);
            this.f2443J = typedArrayM5136d.getBoolean(26, false);
            typedArrayM5136d.recycle();
            Resources resources = getResources();
            this.f2477u = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.f2482z = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            m1835e();
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    /* JADX INFO: renamed from: g */
    public static ColorStateList m1830g(int i10, int i11) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i11, i10});
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        ArrayList arrayList = this.f2459c;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            C1275i c1275i = (C1275i) arrayList.get(i10);
            if (c1275i != null && c1275i.f3053b != null && !TextUtils.isEmpty(c1275i.f3054c)) {
                return !this.f2439F ? 72 : 48;
            }
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i10 = this.f2480x;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.f2438E;
        if (i11 == 0 || i11 == 2) {
            return this.f2482z;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f2461e.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i10) {
        C1274h c1274h = this.f2461e;
        int childCount = c1274h.getChildCount();
        if (i10 < childCount) {
            int i11 = 0;
            while (i11 < childCount) {
                View childAt = c1274h.getChildAt(i11);
                if ((i11 != i10 || childAt.isSelected()) && (i11 == i10 || !childAt.isSelected())) {
                    childAt.setSelected(i11 == i10);
                    childAt.setActivated(i11 == i10);
                } else {
                    childAt.setSelected(i11 == i10);
                    childAt.setActivated(i11 == i10);
                    if (childAt instanceof C1278l) {
                        ((C1278l) childAt).m2284g();
                    }
                }
                i11++;
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1831a(InterfaceC1270d interfaceC1270d) {
        ArrayList arrayList = this.f2447N;
        if (arrayList.contains(interfaceC1270d)) {
            return;
        }
        arrayList.add(interfaceC1270d);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        m1833c(view);
    }

    /* JADX INFO: renamed from: b */
    public final void m1832b(C1275i c1275i, boolean z9) {
        ArrayList arrayList = this.f2459c;
        int size = arrayList.size();
        if (c1275i.f3058g != this) {
            C1929i.m3029k("Tab belongs to a different TabLayout.");
            return;
        }
        c1275i.f3056e = size;
        arrayList.add(size, c1275i);
        int size2 = arrayList.size();
        int i10 = -1;
        for (int i11 = size + 1; i11 < size2; i11++) {
            if (((C1275i) arrayList.get(i11)).f3056e == this.f2458b) {
                i10 = i11;
            }
            ((C1275i) arrayList.get(i11)).f3056e = i11;
        }
        this.f2458b = i10;
        C1278l c1278l = c1275i.f3059h;
        c1278l.setSelected(false);
        c1278l.setActivated(false);
        int i12 = c1275i.f3056e;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (this.f2438E == 1 && this.f2435B == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
        this.f2461e.addView(c1278l, i12, layoutParams);
        if (z9) {
            TabLayout tabLayout = c1275i.f3058g;
            if (tabLayout != null) {
                tabLayout.m1841l(c1275i, true);
            } else {
                C1929i.m3029k("Tab not attached to a TabLayout");
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1833c(View view) {
        if (!(view instanceof TabItem)) {
            C1929i.m3029k("Only TabItem instances can be added to TabLayout");
            return;
        }
        TabItem tabItem = (TabItem) view;
        C1275i c1275iM1838i = m1838i();
        CharSequence charSequence = tabItem.f2430b;
        if (charSequence != null) {
            c1275iM1838i.m2277a(charSequence);
        }
        Drawable drawable = tabItem.f2431c;
        if (drawable != null) {
            c1275iM1838i.f3053b = drawable;
            TabLayout tabLayout = c1275iM1838i.f3058g;
            if (tabLayout.f2435B == 1 || tabLayout.f2438E == 2) {
                tabLayout.m1845p(true);
            }
            C1278l c1278l = c1275iM1838i.f3059h;
            if (c1278l != null) {
                c1278l.m2282e();
            }
        }
        int i10 = tabItem.f2432d;
        if (i10 != 0) {
            c1275iM1838i.f3057f = LayoutInflater.from(c1275iM1838i.f3059h.getContext()).inflate(i10, (ViewGroup) c1275iM1838i.f3059h, false);
            C1278l c1278l2 = c1275iM1838i.f3059h;
            if (c1278l2 != null) {
                c1278l2.m2282e();
            }
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            c1275iM1838i.f3055d = tabItem.getContentDescription();
            C1278l c1278l3 = c1275iM1838i.f3059h;
            if (c1278l3 != null) {
                c1278l3.m2282e();
            }
        }
        m1832b(c1275iM1838i, this.f2459c.isEmpty());
    }

    /* JADX INFO: renamed from: d */
    public final void m1834d(int i10) {
        if (i10 == -1) {
            return;
        }
        if (getWindowToken() != null && isLaidOut()) {
            C1274h c1274h = this.f2461e;
            int childCount = c1274h.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                if (c1274h.getChildAt(i11).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int iM1836f = m1836f(i10, 0.0f);
            if (scrollX != iM1836f) {
                m1837h();
                this.f2449P.setIntValues(scrollX, iM1836f);
                this.f2449P.start();
            }
            ValueAnimator valueAnimator = (ValueAnimator) c1274h.f3050c;
            if (valueAnimator != null && valueAnimator.isRunning() && ((TabLayout) c1274h.f3051d).f2458b != i10) {
                ((ValueAnimator) c1274h.f3050c).cancel();
            }
            c1274h.m2276d(i10, this.f2436C, true);
            return;
        }
        m1843n(i10, 0.0f, true, true, true);
    }

    /* JADX INFO: renamed from: e */
    public final void m1835e() {
        int i10 = this.f2438E;
        int iMax = (i10 == 0 || i10 == 2) ? Math.max(0, this.f2434A - this.f2462f) : 0;
        C1274h c1274h = this.f2461e;
        c1274h.setPaddingRelative(iMax, 0, 0, 0);
        int i11 = this.f2438E;
        if (i11 == 0) {
            int i12 = this.f2435B;
            if (i12 == 0) {
                Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
            } else if (i12 == 1) {
                c1274h.setGravity(1);
            } else if (i12 == 2) {
            }
            c1274h.setGravity(GravityCompat.START);
        } else if (i11 == 1 || i11 == 2) {
            if (this.f2435B == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            c1274h.setGravity(1);
        }
        m1845p(true);
    }

    /* JADX INFO: renamed from: f */
    public final int m1836f(int i10, float f8) {
        C1274h c1274h;
        View childAt;
        int i11 = this.f2438E;
        if ((i11 != 0 && i11 != 2) || (childAt = (c1274h = this.f2461e).getChildAt(i10)) == null) {
            return 0;
        }
        int i12 = i10 + 1;
        View childAt2 = i12 < c1274h.getChildCount() ? c1274h.getChildAt(i12) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i13 = (int) ((width + width2) * 0.5f * f8);
        return getLayoutDirection() == 0 ? left + i13 : left - i13;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        C1275i c1275i = this.f2460d;
        if (c1275i != null) {
            return c1275i.f3056e;
        }
        return -1;
    }

    public int getTabCount() {
        return this.f2459c.size();
    }

    public int getTabGravity() {
        return this.f2435B;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.f2470n;
    }

    public int getTabIndicatorAnimationMode() {
        return this.f2442I;
    }

    public int getTabIndicatorGravity() {
        return this.f2437D;
    }

    public int getTabMaxWidth() {
        return this.f2479w;
    }

    public int getTabMode() {
        return this.f2438E;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.f2471o;
    }

    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.f2472p;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.f2469m;
    }

    /* JADX INFO: renamed from: h */
    public final void m1837h() {
        if (this.f2449P == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f2449P = valueAnimator;
            valueAnimator.setInterpolator(this.f2445L);
            this.f2449P.setDuration(this.f2436C);
            this.f2449P.addUpdateListener(new C1268b(0, this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: i */
    public final C1275i m1838i() {
        C1275i c1275i = (C1275i) f2433b0.acquire();
        if (c1275i == null) {
            c1275i = new C1275i();
            c1275i.f3056e = -1;
        }
        c1275i.f3058g = this;
        Pools.SimplePool simplePool = this.f2457a0;
        C1278l c1278l = simplePool != null ? (C1278l) simplePool.acquire() : null;
        if (c1278l == null) {
            c1278l = new C1278l(this, getContext());
        }
        c1278l.setTab(c1275i);
        c1278l.setFocusable(true);
        c1278l.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(c1275i.f3055d)) {
            c1278l.setContentDescription(c1275i.f3054c);
        } else {
            c1278l.setContentDescription(c1275i.f3055d);
        }
        c1275i.f3059h = c1278l;
        return c1275i;
    }

    /* JADX INFO: renamed from: j */
    public final void m1839j() {
        int currentItem;
        m1840k();
        PagerAdapter pagerAdapter = this.f2451R;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i10 = 0; i10 < count; i10++) {
                C1275i c1275iM1838i = m1838i();
                c1275iM1838i.m2277a(this.f2451R.getPageTitle(i10));
                m1832b(c1275iM1838i, false);
            }
            ViewPager viewPager = this.f2450Q;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            m1841l((currentItem < 0 || currentItem >= getTabCount()) ? null : (C1275i) this.f2459c.get(currentItem), true);
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m1840k() {
        C1274h c1274h = this.f2461e;
        int childCount = c1274h.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            C1278l c1278l = (C1278l) c1274h.getChildAt(childCount);
            c1274h.removeViewAt(childCount);
            if (c1278l != null) {
                c1278l.setTab(null);
                c1278l.setSelected(false);
                this.f2457a0.release(c1278l);
            }
            requestLayout();
        }
        Iterator it = this.f2459c.iterator();
        while (it.hasNext()) {
            C1275i c1275i = (C1275i) it.next();
            it.remove();
            c1275i.f3058g = null;
            c1275i.f3059h = null;
            c1275i.f3052a = null;
            c1275i.f3053b = null;
            c1275i.f3054c = null;
            c1275i.f3055d = null;
            c1275i.f3056e = -1;
            c1275i.f3057f = null;
            f2433b0.release(c1275i);
        }
        this.f2460d = null;
    }

    /* JADX INFO: renamed from: l */
    public final void m1841l(C1275i c1275i, boolean z9) {
        TabLayout tabLayout;
        C1275i c1275i2 = this.f2460d;
        ArrayList arrayList = this.f2447N;
        if (c1275i2 == c1275i) {
            if (c1275i2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((InterfaceC1270d) arrayList.get(size)).getClass();
                }
                m1834d(c1275i.f3056e);
                return;
            }
            return;
        }
        int i10 = c1275i != null ? c1275i.f3056e : -1;
        if (z9) {
            if ((c1275i2 == null || c1275i2.f3056e == -1) && i10 != -1) {
                tabLayout = this;
                tabLayout.m1843n(i10, 0.0f, true, true, true);
            } else {
                tabLayout = this;
                m1834d(i10);
            }
            if (i10 != -1) {
                setSelectedTabView(i10);
            }
        } else {
            tabLayout = this;
        }
        tabLayout.f2460d = c1275i;
        if (c1275i2 != null && c1275i2.f3058g != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((InterfaceC1270d) arrayList.get(size2)).getClass();
            }
        }
        if (c1275i != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((InterfaceC1270d) arrayList.get(size3)).mo2272a(c1275i);
            }
        }
    }

    /* JADX INFO: renamed from: m */
    public final void m1842m(PagerAdapter pagerAdapter, boolean z9) {
        C1272f c1272f;
        PagerAdapter pagerAdapter2 = this.f2451R;
        if (pagerAdapter2 != null && (c1272f = this.f2452S) != null) {
            pagerAdapter2.unregisterDataSetObserver(c1272f);
        }
        this.f2451R = pagerAdapter;
        if (z9 && pagerAdapter != null) {
            if (this.f2452S == null) {
                this.f2452S = new C1272f(this);
            }
            pagerAdapter.registerDataSetObserver(this.f2452S);
        }
        m1839j();
    }

    /* JADX INFO: renamed from: n */
    public final void m1843n(int i10, float f8, boolean z9, boolean z10, boolean z11) {
        float f10 = i10 + f8;
        int iRound = Math.round(f10);
        if (iRound >= 0) {
            C1274h c1274h = this.f2461e;
            if (iRound >= c1274h.getChildCount()) {
                return;
            }
            if (z10) {
                ((TabLayout) c1274h.f3051d).f2458b = Math.round(f10);
                ValueAnimator valueAnimator = (ValueAnimator) c1274h.f3050c;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    ((ValueAnimator) c1274h.f3050c).cancel();
                }
                c1274h.m2275c(c1274h.getChildAt(i10), c1274h.getChildAt(i10 + 1), f8);
            }
            ValueAnimator valueAnimator2 = this.f2449P;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f2449P.cancel();
            }
            int iM1836f = m1836f(i10, f8);
            int scrollX = getScrollX();
            boolean z12 = (i10 < getSelectedTabPosition() && iM1836f >= scrollX) || (i10 > getSelectedTabPosition() && iM1836f <= scrollX) || i10 == getSelectedTabPosition();
            if (getLayoutDirection() == 1) {
                z12 = (i10 < getSelectedTabPosition() && iM1836f <= scrollX) || (i10 > getSelectedTabPosition() && iM1836f >= scrollX) || i10 == getSelectedTabPosition();
            }
            if (z12 || this.f2456W == 1 || z11) {
                if (i10 < 0) {
                    iM1836f = 0;
                }
                scrollTo(iM1836f, 0);
            }
            if (z9) {
                setSelectedTabView(iRound);
            }
        }
    }

    /* JADX INFO: renamed from: o */
    public final void m1844o(ViewPager viewPager, boolean z9) {
        TabLayout tabLayout;
        ViewPager viewPager2 = this.f2450Q;
        if (viewPager2 != null) {
            C1276j c1276j = this.f2453T;
            if (c1276j != null) {
                viewPager2.removeOnPageChangeListener(c1276j);
            }
            C1269c c1269c = this.f2454U;
            if (c1269c != null) {
                this.f2450Q.removeOnAdapterChangeListener(c1269c);
            }
        }
        C1279m c1279m = this.f2448O;
        if (c1279m != null) {
            this.f2447N.remove(c1279m);
            this.f2448O = null;
        }
        if (viewPager != null) {
            this.f2450Q = viewPager;
            if (this.f2453T == null) {
                this.f2453T = new C1276j(this);
            }
            C1276j c1276j2 = this.f2453T;
            c1276j2.f3062c = 0;
            c1276j2.f3061b = 0;
            viewPager.addOnPageChangeListener(c1276j2);
            C1279m c1279m2 = new C1279m(0, viewPager);
            this.f2448O = c1279m2;
            m1831a(c1279m2);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                m1842m(adapter, true);
            }
            if (this.f2454U == null) {
                this.f2454U = new C1269c(this);
            }
            C1269c c1269c2 = this.f2454U;
            c1269c2.f3042a = true;
            viewPager.addOnAdapterChangeListener(c1269c2);
            tabLayout = this;
            tabLayout.m1843n(viewPager.getCurrentItem(), 0.0f, true, true, true);
        } else {
            tabLayout = this;
            tabLayout.f2450Q = null;
            m1842m(null, false);
        }
        tabLayout.f2455V = z9;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof C3725k) {
            AbstractC0880u.m1006w(this, (C3725k) background);
        }
        if (this.f2450Q == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                m1844o((ViewPager) parent, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f2455V) {
            setupWithViewPager(null);
            this.f2455V = false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        C1278l c1278l;
        Drawable drawable;
        int i10 = 0;
        while (true) {
            C1274h c1274h = this.f2461e;
            if (i10 >= c1274h.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = c1274h.getChildAt(i10);
            if ((childAt instanceof C1278l) && (drawable = (c1278l = (C1278l) childAt).f3074j) != null) {
                drawable.setBounds(c1278l.getLeft(), c1278l.getTop(), c1278l.getRight(), c1278l.getBottom());
                c1278l.f3074j.draw(canvas);
            }
            i10++;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        int iRound = Math.round(AbstractC3203q.m5138a(getDefaultHeight(), getContext()));
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i11 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + iRound, BasicMeasure.EXACTLY);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i11) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View.MeasureSpec.getSize(i10);
        if (View.MeasureSpec.getMode(i10) != 0) {
            int iM5138a = this.f2481y;
            if (iM5138a <= 0) {
                iM5138a = (int) (size - AbstractC3203q.m5138a(56, getContext()));
            }
            this.f2479w = iM5138a;
        }
        super.onMeasure(i10, i11);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i12 = this.f2438E;
            if (i12 == 0) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (i12 != 1) {
                if (i12 != 2) {
                    return;
                }
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), BasicMeasure.EXACTLY), ViewGroup.getChildMeasureSpec(i11, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || getTabMode() == 0 || getTabMode() == 2) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    /* JADX INFO: renamed from: p */
    public final void m1845p(boolean z9) {
        int i10 = 0;
        while (true) {
            C1274h c1274h = this.f2461e;
            if (i10 >= c1274h.getChildCount()) {
                return;
            }
            View childAt = c1274h.getChildAt(i10);
            childAt.setMinimumWidth(getTabMinWidth());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.f2438E == 1 && this.f2435B == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            if (z9) {
                childAt.requestLayout();
            }
            i10++;
        }
    }

    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        Drawable background = getBackground();
        if (background instanceof C3725k) {
            ((C3725k) background).m5947p(f8);
        }
    }

    public void setInlineLabel(boolean z9) {
        if (this.f2439F == z9) {
            return;
        }
        this.f2439F = z9;
        int i10 = 0;
        while (true) {
            C1274h c1274h = this.f2461e;
            if (i10 >= c1274h.getChildCount()) {
                m1835e();
                return;
            }
            View childAt = c1274h.getChildAt(i10);
            if (childAt instanceof C1278l) {
                C1278l c1278l = (C1278l) childAt;
                c1278l.setOrientation(!c1278l.f3076l.f2439F ? 1 : 0);
                TextView textView = c1278l.f3072h;
                if (textView == null && c1278l.f3073i == null) {
                    c1278l.m2285h(c1278l.f3067c, c1278l.f3068d, true);
                } else {
                    c1278l.m2285h(textView, c1278l.f3073i, false);
                }
            }
            i10++;
        }
    }

    public void setInlineLabelResource(@BoolRes int i10) {
        setInlineLabel(getResources().getBoolean(i10));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable InterfaceC1270d interfaceC1270d) {
        InterfaceC1270d interfaceC1270d2 = this.f2446M;
        if (interfaceC1270d2 != null) {
            this.f2447N.remove(interfaceC1270d2);
        }
        this.f2446M = interfaceC1270d;
        if (interfaceC1270d != null) {
            m1831a(interfaceC1270d);
        }
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        m1837h();
        this.f2449P.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
        this.f2472p = drawableMutate;
        int i10 = this.f2473q;
        if (i10 != 0) {
            drawableMutate.setTint(i10);
        } else {
            drawableMutate.setTintList(null);
        }
        int intrinsicHeight = this.f2441H;
        if (intrinsicHeight == -1) {
            intrinsicHeight = this.f2472p.getIntrinsicHeight();
        }
        this.f2461e.m2274b(intrinsicHeight);
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i10) {
        this.f2473q = i10;
        Drawable drawable = this.f2472p;
        if (i10 != 0) {
            drawable.setTint(i10);
        } else {
            drawable.setTintList(null);
        }
        m1845p(false);
    }

    public void setSelectedTabIndicatorGravity(int i10) {
        if (this.f2437D != i10) {
            this.f2437D = i10;
            this.f2461e.postInvalidateOnAnimation();
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i10) {
        this.f2441H = i10;
        this.f2461e.m2274b(i10);
    }

    public void setTabGravity(int i10) {
        if (this.f2435B != i10) {
            this.f2435B = i10;
            m1835e();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f2470n != colorStateList) {
            this.f2470n = colorStateList;
            ArrayList arrayList = this.f2459c;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                C1278l c1278l = ((C1275i) arrayList.get(i10)).f3059h;
                if (c1278l != null) {
                    c1278l.m2282e();
                }
            }
        }
    }

    public void setTabIconTintResource(@ColorRes int i10) {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setTabIndicatorAnimationMode(int i10) {
        this.f2442I = i10;
        if (i10 == 0) {
            this.f2444K = new C0990e(4);
            return;
        }
        if (i10 == 1) {
            this.f2444K = new C1267a(0);
        } else {
            if (i10 == 2) {
                this.f2444K = new C1267a(1);
                return;
            }
            throw new IllegalArgumentException(i10 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z9) {
        this.f2440G = z9;
        int i10 = C1274h.f3048e;
        C1274h c1274h = this.f2461e;
        c1274h.m2273a(((TabLayout) c1274h.f3051d).getSelectedTabPosition());
        c1274h.postInvalidateOnAnimation();
    }

    public void setTabMode(int i10) {
        if (i10 != this.f2438E) {
            this.f2438E = i10;
            m1835e();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f2471o == colorStateList) {
            return;
        }
        this.f2471o = colorStateList;
        int i10 = 0;
        while (true) {
            C1274h c1274h = this.f2461e;
            if (i10 >= c1274h.getChildCount()) {
                return;
            }
            View childAt = c1274h.getChildAt(i10);
            if (childAt instanceof C1278l) {
                Context context = getContext();
                int i11 = C1278l.f3065m;
                ((C1278l) childAt).m2283f(context);
            }
            i10++;
        }
    }

    public void setTabRippleColorResource(@ColorRes int i10) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.f2469m != colorStateList) {
            this.f2469m = colorStateList;
            ArrayList arrayList = this.f2459c;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                C1278l c1278l = ((C1275i) arrayList.get(i10)).f3059h;
                if (c1278l != null) {
                    c1278l.m2282e();
                }
            }
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        m1842m(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z9) {
        if (this.f2443J == z9) {
            return;
        }
        this.f2443J = z9;
        int i10 = 0;
        while (true) {
            C1274h c1274h = this.f2461e;
            if (i10 >= c1274h.getChildCount()) {
                return;
            }
            View childAt = c1274h.getChildAt(i10);
            if (childAt instanceof C1278l) {
                Context context = getContext();
                int i11 = C1278l.f3065m;
                ((C1278l) childAt).m2283f(context);
            }
            i10++;
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i10) {
        setUnboundedRipple(getResources().getBoolean(i10));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        m1844o(viewPager, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i10) {
        m1833c(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m1833c(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        m1833c(view);
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable InterfaceC1271e interfaceC1271e) {
        setOnTabSelectedListener((InterfaceC1270d) interfaceC1271e);
    }

    public void setSelectedTabIndicator(@DrawableRes int i10) {
        if (i10 != 0) {
            setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), i10));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
