package com.google.android.material.bottomsheet;

import ai.onnxruntime.AbstractC0074a;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.animation.PathInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ViewDragHelper;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.commons.net.ftp.FTPReply;
import p004a3.AbstractC0007a;
import p005a4.C0015h;
import p041d4.C1268b;
import p070g3.C1613b;
import p070g3.C1614c;
import p070g3.C1615d;
import p070g3.C1616e;
import p070g3.C1617f;
import p070g3.RunnableC1612a;
import p099j1.C1929i;
import p120l.C2187d;
import p120l.C2191h;
import p142n0.C2467b;
import p192s3.ViewOnAttachStateChangeListenerC3202p;
import p228w3.AbstractC3518c;
import p258z3.C3725k;
import p258z3.C3729o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: A */
    public final C0015h f2123A;

    /* JADX INFO: renamed from: B */
    public final ValueAnimator f2124B;

    /* JADX INFO: renamed from: C */
    public final int f2125C;

    /* JADX INFO: renamed from: D */
    public int f2126D;

    /* JADX INFO: renamed from: E */
    public int f2127E;

    /* JADX INFO: renamed from: F */
    public final float f2128F;

    /* JADX INFO: renamed from: G */
    public int f2129G;

    /* JADX INFO: renamed from: H */
    public final float f2130H;

    /* JADX INFO: renamed from: I */
    public boolean f2131I;

    /* JADX INFO: renamed from: J */
    public boolean f2132J;

    /* JADX INFO: renamed from: K */
    public final boolean f2133K;

    /* JADX INFO: renamed from: L */
    public final boolean f2134L;

    /* JADX INFO: renamed from: M */
    public boolean f2135M;

    /* JADX INFO: renamed from: N */
    public int f2136N;

    /* JADX INFO: renamed from: O */
    public ViewDragHelper f2137O;

    /* JADX INFO: renamed from: P */
    public boolean f2138P;

    /* JADX INFO: renamed from: Q */
    public int f2139Q;

    /* JADX INFO: renamed from: R */
    public boolean f2140R;

    /* JADX INFO: renamed from: S */
    public final float f2141S;

    /* JADX INFO: renamed from: T */
    public int f2142T;

    /* JADX INFO: renamed from: U */
    public int f2143U;

    /* JADX INFO: renamed from: V */
    public int f2144V;

    /* JADX INFO: renamed from: W */
    public WeakReference f2145W;

    /* JADX INFO: renamed from: X */
    public WeakReference f2146X;

    /* JADX INFO: renamed from: Y */
    public final ArrayList f2147Y;

    /* JADX INFO: renamed from: Z */
    public VelocityTracker f2148Z;

    /* JADX INFO: renamed from: a */
    public final int f2149a;

    /* JADX INFO: renamed from: a0 */
    public int f2150a0;

    /* JADX INFO: renamed from: b */
    public boolean f2151b;

    /* JADX INFO: renamed from: b0 */
    public int f2152b0;

    /* JADX INFO: renamed from: c */
    public final float f2153c;

    /* JADX INFO: renamed from: c0 */
    public boolean f2154c0;

    /* JADX INFO: renamed from: d */
    public final int f2155d;

    /* JADX INFO: renamed from: d0 */
    public HashMap f2156d0;

    /* JADX INFO: renamed from: e */
    public int f2157e;

    /* JADX INFO: renamed from: e0 */
    public final SparseIntArray f2158e0;

    /* JADX INFO: renamed from: f */
    public boolean f2159f;

    /* JADX INFO: renamed from: f0 */
    public final C1614c f2160f0;

    /* JADX INFO: renamed from: g */
    public int f2161g;

    /* JADX INFO: renamed from: h */
    public final int f2162h;

    /* JADX INFO: renamed from: i */
    public final C3725k f2163i;

    /* JADX INFO: renamed from: j */
    public final ColorStateList f2164j;

    /* JADX INFO: renamed from: k */
    public final int f2165k;

    /* JADX INFO: renamed from: l */
    public final int f2166l;

    /* JADX INFO: renamed from: m */
    public int f2167m;

    /* JADX INFO: renamed from: n */
    public final boolean f2168n;

    /* JADX INFO: renamed from: o */
    public final boolean f2169o;

    /* JADX INFO: renamed from: p */
    public final boolean f2170p;

    /* JADX INFO: renamed from: q */
    public final boolean f2171q;

    /* JADX INFO: renamed from: r */
    public final boolean f2172r;

    /* JADX INFO: renamed from: s */
    public final boolean f2173s;

    /* JADX INFO: renamed from: t */
    public final boolean f2174t;

    /* JADX INFO: renamed from: u */
    public final boolean f2175u;

    /* JADX INFO: renamed from: v */
    public int f2176v;

    /* JADX INFO: renamed from: w */
    public int f2177w;

    /* JADX INFO: renamed from: x */
    public final boolean f2178x;

    /* JADX INFO: renamed from: y */
    public final C3729o f2179y;

    /* JADX INFO: renamed from: z */
    public boolean f2180z;

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.f2149a = 0;
        this.f2151b = true;
        this.f2165k = -1;
        this.f2166l = -1;
        this.f2123A = new C0015h(this);
        this.f2128F = 0.5f;
        this.f2130H = -1.0f;
        this.f2133K = true;
        this.f2134L = true;
        this.f2136N = 4;
        this.f2141S = 0.1f;
        this.f2147Y = new ArrayList();
        this.f2152b0 = -1;
        this.f2158e0 = new SparseIntArray();
        this.f2160f0 = new C1614c(this);
        this.f2162h = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0007a.f25d);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f2164j = AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(22)) {
            this.f2179y = C3729o.m5959c(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).m5956a();
        }
        C3729o c3729o = this.f2179y;
        if (c3729o != null) {
            C3725k c3725k = new C3725k(c3729o);
            this.f2163i = c3725k;
            c3725k.m5944m(context);
            ColorStateList colorStateList = this.f2164j;
            if (colorStateList != null) {
                this.f2163i.m5948q(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f2163i.setTint(typedValue.data);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(m1757b(), 1.0f);
        this.f2124B = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f2124B.addUpdateListener(new C1268b(2, this));
        this.f2130H = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            this.f2165k = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            this.f2166l = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(10);
        if (typedValuePeekValue == null || (i10 = typedValuePeekValue.data) != -1) {
            m1763j(typedArrayObtainStyledAttributes.getDimensionPixelSize(10, -1));
        } else {
            m1763j(i10);
        }
        boolean z9 = typedArrayObtainStyledAttributes.getBoolean(9, false);
        if (this.f2131I != z9) {
            this.f2131I = z9;
            if (!z9 && this.f2136N == 5) {
                m1764k(4);
            }
            m1768o();
        }
        this.f2168n = typedArrayObtainStyledAttributes.getBoolean(14, false);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(7, true);
        if (this.f2151b != z10) {
            this.f2151b = z10;
            if (this.f2145W != null) {
                m1756a();
            }
            m1765l((this.f2151b && this.f2136N == 6) ? 3 : this.f2136N);
            m1769p(this.f2136N, true);
            m1768o();
        }
        this.f2132J = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.f2133K = typedArrayObtainStyledAttributes.getBoolean(4, true);
        this.f2134L = typedArrayObtainStyledAttributes.getBoolean(5, true);
        this.f2149a = typedArrayObtainStyledAttributes.getInt(11, 0);
        float f8 = typedArrayObtainStyledAttributes.getFloat(8, 0.5f);
        if (f8 <= 0.0f || f8 >= 1.0f) {
            C1929i.m3029k("ratio must be a float value between 0 and 1");
            throw null;
        }
        this.f2128F = f8;
        if (this.f2145W != null) {
            this.f2127E = (int) ((1.0f - f8) * this.f2144V);
        }
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(6);
        if (typedValuePeekValue2 == null || typedValuePeekValue2.type != 16) {
            int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(6, 0);
            if (dimensionPixelOffset < 0) {
                C1929i.m3029k("offset must be greater than or equal to 0");
                throw null;
            }
            this.f2125C = dimensionPixelOffset;
            m1769p(this.f2136N, true);
        } else {
            int i11 = typedValuePeekValue2.data;
            if (i11 < 0) {
                C1929i.m3029k("offset must be greater than or equal to 0");
                throw null;
            }
            this.f2125C = i11;
            m1769p(this.f2136N, true);
        }
        this.f2155d = typedArrayObtainStyledAttributes.getInt(12, 500);
        this.f2169o = typedArrayObtainStyledAttributes.getBoolean(18, false);
        this.f2170p = typedArrayObtainStyledAttributes.getBoolean(19, false);
        this.f2171q = typedArrayObtainStyledAttributes.getBoolean(20, false);
        this.f2172r = typedArrayObtainStyledAttributes.getBoolean(21, true);
        this.f2173s = typedArrayObtainStyledAttributes.getBoolean(15, false);
        this.f2174t = typedArrayObtainStyledAttributes.getBoolean(16, false);
        this.f2175u = typedArrayObtainStyledAttributes.getBoolean(17, false);
        this.f2178x = typedArrayObtainStyledAttributes.getBoolean(24, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f2153c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* JADX INFO: renamed from: e */
    public static View m1754e(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (view.isNestedScrollingEnabled()) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View viewM1754e = m1754e(viewGroup.getChildAt(i10));
            if (viewM1754e != null) {
                return viewM1754e;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public static int m1755f(int i10, int i11, int i12, int i13) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, i11, i13);
        if (i12 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i12), BasicMeasure.EXACTLY);
        }
        if (size != 0) {
            i12 = Math.min(size, i12);
        }
        return View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
    }

    /* JADX INFO: renamed from: a */
    public final void m1756a() {
        int iM1758c = m1758c();
        boolean z9 = this.f2151b;
        int i10 = this.f2144V;
        if (z9) {
            this.f2129G = Math.max(i10 - iM1758c, this.f2126D);
        } else {
            this.f2129G = i10 - iM1758c;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    /* JADX INFO: renamed from: b */
    public final float m1757b() {
        WeakReference weakReference;
        WindowInsets rootWindowInsets;
        float f8;
        float f10 = 0.0f;
        if (this.f2163i != null && (weakReference = this.f2145W) != null && weakReference.get() != null && Build.VERSION.SDK_INT >= 31) {
            View view = (View) this.f2145W.get();
            if (m1762i() && (rootWindowInsets = view.getRootWindowInsets()) != null) {
                float fM5942k = this.f2163i.m5942k();
                RoundedCorner roundedCorner = rootWindowInsets.getRoundedCorner(0);
                if (roundedCorner != null) {
                    float radius = roundedCorner.getRadius();
                    if (radius <= 0.0f || fM5942k <= 0.0f) {
                        f8 = 0.0f;
                    } else {
                        f8 = radius / fM5942k;
                    }
                } else {
                    f8 = 0.0f;
                }
                C3725k c3725k = this.f2163i;
                float[] fArr = c3725k.f11044D;
                float fMo5920a = fArr != null ? fArr[0] : c3725k.f11048c.f11021a.f11091f.mo5920a(c3725k.m5939h());
                RoundedCorner roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
                if (roundedCorner2 != null) {
                    float radius2 = roundedCorner2.getRadius();
                    if (radius2 > 0.0f && fMo5920a > 0.0f) {
                        f10 = radius2 / fMo5920a;
                    }
                }
                return Math.max(f8, f10);
            }
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: c */
    public final int m1758c() {
        int i10;
        if (this.f2159f) {
            return Math.min(Math.max(this.f2161g, this.f2144V - ((this.f2143U * 9) / 16)), this.f2142T) + this.f2176v;
        }
        return (this.f2168n || this.f2169o || (i10 = this.f2167m) <= 0) ? this.f2157e + this.f2176v : Math.max(this.f2157e, i10 + this.f2162h);
    }

    /* JADX INFO: renamed from: d */
    public final void m1759d(int i10) {
        if (((View) this.f2145W.get()) != null) {
            ArrayList arrayList = this.f2147Y;
            if (arrayList.isEmpty()) {
                return;
            }
            int i11 = this.f2129G;
            if (i10 <= i11 && i11 != m1760g()) {
                m1760g();
            }
            if (arrayList.size() <= 0) {
                return;
            }
            arrayList.get(0).getClass();
            C2467b.m3822a();
        }
    }

    /* JADX INFO: renamed from: g */
    public final int m1760g() {
        if (this.f2151b) {
            return this.f2126D;
        }
        return Math.max(this.f2125C, this.f2172r ? 0 : this.f2177w);
    }

    /* JADX INFO: renamed from: h */
    public final int m1761h(int i10) {
        if (i10 == 3) {
            return m1760g();
        }
        if (i10 == 4) {
            return this.f2129G;
        }
        if (i10 == 5) {
            return this.f2144V;
        }
        if (i10 == 6) {
            return this.f2127E;
        }
        C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid state to get top offset: "));
        return 0;
    }

    /* JADX INFO: renamed from: i */
    public final boolean m1762i() {
        WeakReference weakReference = this.f2145W;
        if (weakReference != null && weakReference.get() != null) {
            int[] iArr = new int[2];
            ((View) this.f2145W.get()).getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: j */
    public final void m1763j(int i10) {
        boolean z9 = this.f2159f;
        if (i10 == -1) {
            if (z9) {
                return;
            } else {
                this.f2159f = true;
            }
        } else {
            if (!z9 && this.f2157e == i10) {
                return;
            }
            this.f2159f = false;
            this.f2157e = Math.max(0, i10);
        }
        m1771r();
    }

    /* JADX INFO: renamed from: k */
    public final void m1764k(int i10) {
        if (i10 == 1 || i10 == 2) {
            throw new IllegalArgumentException(AbstractC0074a.m165p(new StringBuilder("STATE_"), i10 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.f2131I && i10 == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i10);
            return;
        }
        int i11 = (i10 == 6 && this.f2151b && m1761h(i10) <= this.f2126D) ? 3 : i10;
        WeakReference weakReference = this.f2145W;
        if (weakReference == null || weakReference.get() == null) {
            m1765l(i10);
            return;
        }
        View view = (View) this.f2145W.get();
        RunnableC1612a runnableC1612a = new RunnableC1612a(this, view, i11);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
            view.post(runnableC1612a);
        } else {
            runnableC1612a.run();
        }
    }

    /* JADX INFO: renamed from: l */
    public final void m1765l(int i10) {
        if (this.f2136N == i10) {
            return;
        }
        this.f2136N = i10;
        if (i10 != 4 && i10 != 3 && i10 != 6) {
            boolean z9 = this.f2131I;
        }
        WeakReference weakReference = this.f2145W;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i10 == 3) {
            m1770q(true);
        } else if (i10 == 6 || i10 == 5 || i10 == 4) {
            m1770q(false);
        }
        m1769p(i10, true);
        ArrayList arrayList = this.f2147Y;
        if (arrayList.size() <= 0) {
            m1768o();
        } else {
            arrayList.get(0).getClass();
            C2467b.m3822a();
        }
    }

    /* JADX INFO: renamed from: m */
    public final boolean m1766m(View view, float f8) {
        if (this.f2132J) {
            return true;
        }
        if (view.getTop() < this.f2129G) {
            return false;
        }
        return Math.abs(((f8 * this.f2141S) + ((float) view.getTop())) - ((float) this.f2129G)) / ((float) m1758c()) > 0.5f;
    }

    /* JADX INFO: renamed from: n */
    public final void m1767n(View view, int i10, boolean z9) {
        int iM1761h = m1761h(i10);
        ViewDragHelper viewDragHelper = this.f2137O;
        if (viewDragHelper == null || (!z9 ? viewDragHelper.smoothSlideViewTo(view, view.getLeft(), iM1761h) : viewDragHelper.settleCapturedViewAt(view.getLeft(), iM1761h))) {
            m1765l(i10);
            return;
        }
        m1765l(2);
        m1769p(i10, true);
        this.f2123A.m52a(i10);
    }

    /* JADX INFO: renamed from: o */
    public final void m1768o() {
        View view;
        WeakReference weakReference = this.f2145W;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 524288);
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        SparseIntArray sparseIntArray = this.f2158e0;
        int i10 = sparseIntArray.get(0, -1);
        if (i10 != -1) {
            ViewCompat.removeAccessibilityAction(view, i10);
            sparseIntArray.delete(0);
        }
        if (!this.f2151b && this.f2136N != 6) {
            sparseIntArray.put(0, ViewCompat.addAccessibilityAction(view, view.getResources().getString(R.string.bottomsheet_action_expand_halfway), new C1615d(this, 6)));
        }
        if (this.f2131I && this.f2136N != 5) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new C1615d(this, 5));
        }
        int i11 = this.f2136N;
        if (i11 == 3) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, null, new C1615d(this, this.f2151b ? 4 : 6));
            return;
        }
        if (i11 == 4) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, null, new C1615d(this, this.f2151b ? 3 : 6));
        } else {
            if (i11 != 6) {
                return;
            }
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, null, new C1615d(this, 4));
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, null, new C1615d(this, 3));
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.f2145W = null;
        this.f2137O = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.f2145W = null;
        this.f2137O = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i10;
        ViewDragHelper viewDragHelper;
        if (!view.isShown() || !this.f2133K) {
            this.f2138P = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2150a0 = -1;
            this.f2152b0 = -1;
            VelocityTracker velocityTracker = this.f2148Z;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f2148Z = null;
            }
        }
        if (this.f2148Z == null) {
            this.f2148Z = VelocityTracker.obtain();
        }
        this.f2148Z.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x9 = (int) motionEvent.getX();
            int y9 = (int) motionEvent.getY();
            this.f2152b0 = y9;
            if (this.f2136N != 2) {
                WeakReference weakReference = this.f2146X;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.isPointInChildBounds(view2, x9, y9)) {
                    this.f2150a0 = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f2154c0 = true;
                }
            }
            this.f2138P = this.f2150a0 == -1 && !coordinatorLayout.isPointInChildBounds(view, x9, this.f2152b0);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f2154c0 = false;
            this.f2150a0 = -1;
            if (this.f2138P) {
                this.f2138P = false;
                return false;
            }
        }
        if (this.f2138P || (viewDragHelper = this.f2137O) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            WeakReference weakReference2 = this.f2146X;
            View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
            if (actionMasked != 2 || view3 == null || this.f2138P || this.f2136N == 1 || coordinatorLayout.isPointInChildBounds(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f2137O == null || (i10 = this.f2152b0) == -1 || Math.abs(i10 - motionEvent.getY()) <= this.f2137O.getTouchSlop()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        if (this.f2145W == null) {
            this.f2161g = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z9 = (Build.VERSION.SDK_INT < 29 || this.f2168n || this.f2159f) ? false : true;
            if (this.f2169o || this.f2170p || this.f2171q || this.f2173s || this.f2174t || this.f2175u || z9) {
                C1613b c1613b = new C1613b(this, z9);
                int paddingStart = view.getPaddingStart();
                view.getPaddingTop();
                int paddingEnd = view.getPaddingEnd();
                int paddingBottom = view.getPaddingBottom();
                C2191h c2191h = new C2191h();
                c2191h.f5718a = paddingStart;
                c2191h.f5719b = paddingEnd;
                c2191h.f5720c = paddingBottom;
                ViewCompat.setOnApplyWindowInsetsListener(view, new C2187d(13, c1613b, c2191h));
                if (view.isAttachedToWindow()) {
                    view.requestApplyInsets();
                } else {
                    view.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC3202p());
                }
            }
            ViewCompat.setWindowInsetsAnimationCallback(view, new C1617f(view));
            this.f2145W = new WeakReference(view);
            new PathInterpolator(0.1f, 0.1f, 0.0f, 1.0f);
            Context context = view.getContext();
            AbstractC1031d.m1287q(context, R.attr.motionDurationMedium2, 300);
            AbstractC1031d.m1287q(context, R.attr.motionDurationShort3, FTPReply.FILE_STATUS_OK);
            AbstractC1031d.m1287q(context, R.attr.motionDurationShort2, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
            C3725k c3725k = this.f2163i;
            if (c3725k != null) {
                view.setBackground(c3725k);
                float elevation = this.f2130H;
                if (elevation == -1.0f) {
                    elevation = view.getElevation();
                }
                this.f2163i.m5947p(elevation);
            } else {
                ColorStateList colorStateList = this.f2164j;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(view, colorStateList);
                }
            }
            m1768o();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.f2137O == null) {
            this.f2137O = ViewDragHelper.create(coordinatorLayout, this.f2160f0);
        }
        int top = view.getTop();
        coordinatorLayout.onLayoutChild(view, i10);
        this.f2143U = coordinatorLayout.getWidth();
        this.f2144V = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.f2142T = height;
        int iMin = this.f2144V;
        int i11 = iMin - height;
        int i12 = this.f2177w;
        if (i11 < i12) {
            boolean z10 = this.f2172r;
            int i13 = this.f2166l;
            if (z10) {
                if (i13 != -1) {
                    iMin = Math.min(iMin, i13);
                }
                this.f2142T = iMin;
            } else {
                int iMin2 = iMin - i12;
                if (i13 != -1) {
                    iMin2 = Math.min(iMin2, i13);
                }
                this.f2142T = iMin2;
            }
        }
        this.f2126D = Math.max(0, this.f2144V - this.f2142T);
        this.f2127E = (int) ((1.0f - this.f2128F) * this.f2144V);
        m1756a();
        int i14 = this.f2136N;
        if (i14 == 3) {
            ViewCompat.offsetTopAndBottom(view, m1760g());
        } else if (i14 == 6) {
            ViewCompat.offsetTopAndBottom(view, this.f2127E);
        } else if (this.f2131I && i14 == 5) {
            ViewCompat.offsetTopAndBottom(view, this.f2144V);
        } else if (i14 == 4) {
            ViewCompat.offsetTopAndBottom(view, this.f2129G);
        } else if (i14 == 1 || i14 == 2) {
            ViewCompat.offsetTopAndBottom(view, top - view.getTop());
        }
        m1769p(this.f2136N, false);
        this.f2146X = new WeakReference(m1754e(view));
        ArrayList arrayList = this.f2147Y;
        if (arrayList.size() <= 0) {
            return true;
        }
        arrayList.get(0).getClass();
        C2467b.m3822a();
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(m1755f(i10, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, this.f2165k, marginLayoutParams.width), m1755f(i12, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, this.f2166l, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, View view, View view2, float f8, float f10) {
        WeakReference weakReference = this.f2146X;
        if (weakReference == null || view2 != weakReference.get()) {
            return false;
        }
        return !(this.f2136N == 3 || this.f2135M) || super.onNestedPreFling(coordinatorLayout, view, view2, f8, f10);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 1) {
            return;
        }
        WeakReference weakReference = this.f2146X;
        View view3 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != view3) {
            return;
        }
        int top = view.getTop();
        int i13 = top - i11;
        if (i11 > 0) {
            if (!this.f2140R && !this.f2134L && view2 == view3 && view2.canScrollVertically(1)) {
                this.f2135M = true;
                return;
            }
            if (i13 < m1760g()) {
                int iM1760g = top - m1760g();
                iArr[1] = iM1760g;
                ViewCompat.offsetTopAndBottom(view, -iM1760g);
                m1765l(3);
            } else {
                if (!this.f2133K) {
                    return;
                }
                iArr[1] = i11;
                ViewCompat.offsetTopAndBottom(view, -i11);
                m1765l(1);
            }
        } else if (i11 < 0) {
            boolean zCanScrollVertically = view2.canScrollVertically(-1);
            if (!this.f2140R && !this.f2134L && view2 == view3 && zCanScrollVertically) {
                this.f2135M = true;
                return;
            }
            if (!zCanScrollVertically) {
                int i14 = this.f2129G;
                if (i13 > i14 && !this.f2131I) {
                    int i15 = top - i14;
                    iArr[1] = i15;
                    ViewCompat.offsetTopAndBottom(view, -i15);
                    m1765l(4);
                } else {
                    if (!this.f2133K) {
                        return;
                    }
                    iArr[1] = i11;
                    ViewCompat.offsetTopAndBottom(view, -i11);
                    m1765l(1);
                }
            }
        }
        m1759d(view.getTop());
        this.f2139Q = i11;
        this.f2140R = true;
        this.f2135M = false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        C1616e c1616e = (C1616e) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, view, c1616e.getSuperState());
        int i10 = this.f2149a;
        if (i10 != 0) {
            if (i10 == -1 || (i10 & 1) == 1) {
                this.f2157e = c1616e.f4064c;
            }
            if (i10 == -1 || (i10 & 2) == 2) {
                this.f2151b = c1616e.f4065d;
            }
            if (i10 == -1 || (i10 & 4) == 4) {
                this.f2131I = c1616e.f4066e;
            }
            if (i10 == -1 || (i10 & 8) == 8) {
                this.f2132J = c1616e.f4067f;
            }
        }
        int i11 = c1616e.f4063b;
        if (i11 == 1 || i11 == 2) {
            this.f2136N = 4;
        } else {
            this.f2136N = i11;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
        return new C1616e(super.onSaveInstanceState(coordinatorLayout, view), this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
        this.f2139Q = 0;
        this.f2140R = false;
        return (i10 & 2) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x005a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x0074  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0083  */
    /* JADX WARN: Code duplicated, block: B:45:0x0093  */
    /* JADX WARN: Code duplicated, block: B:47:0x0097  */
    /* JADX WARN: Code duplicated, block: B:48:0x0099  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ae  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onStopNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10) {
        int top;
        int top2;
        int i11;
        float yVelocity;
        int i12 = 3;
        if (view.getTop() == m1760g()) {
            m1765l(3);
            return;
        }
        WeakReference weakReference = this.f2146X;
        if (weakReference != null && view2 == weakReference.get() && this.f2140R) {
            if (this.f2139Q > 0) {
                if (!this.f2151b && view.getTop() > this.f2127E) {
                    i12 = 6;
                }
            } else if (this.f2131I) {
                VelocityTracker velocityTracker = this.f2148Z;
                if (velocityTracker == null) {
                    yVelocity = 0.0f;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.f2153c);
                    yVelocity = this.f2148Z.getYVelocity(this.f2150a0);
                }
                if (m1766m(view, yVelocity)) {
                    i12 = 5;
                } else if (this.f2139Q == 0) {
                    top2 = view.getTop();
                    if (this.f2151b) {
                        i11 = this.f2127E;
                        if (top2 < i11) {
                            if (top2 >= Math.abs(top2 - this.f2129G)) {
                            }
                        } else if (Math.abs(top2 - i11) < Math.abs(top2 - this.f2129G)) {
                            i12 = 4;
                        }
                        i12 = 6;
                    } else if (Math.abs(top2 - this.f2126D) >= Math.abs(top2 - this.f2129G)) {
                        i12 = 4;
                    }
                } else {
                    if (!this.f2151b) {
                        top = view.getTop();
                        if (Math.abs(top - this.f2127E) < Math.abs(top - this.f2129G)) {
                            i12 = 6;
                        }
                    }
                    i12 = 4;
                }
            } else if (this.f2139Q == 0) {
                top2 = view.getTop();
                if (this.f2151b) {
                    i11 = this.f2127E;
                    if (top2 < i11) {
                        if (top2 >= Math.abs(top2 - this.f2129G)) {
                        }
                    } else if (Math.abs(top2 - i11) < Math.abs(top2 - this.f2129G)) {
                        i12 = 4;
                    }
                    i12 = 6;
                } else if (Math.abs(top2 - this.f2126D) >= Math.abs(top2 - this.f2129G)) {
                    i12 = 4;
                }
            } else {
                if (!this.f2151b) {
                    top = view.getTop();
                    if (Math.abs(top - this.f2127E) < Math.abs(top - this.f2129G)) {
                        i12 = 6;
                    }
                }
                i12 = 4;
            }
            m1767n(view, i12, false);
            this.f2140R = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i10 = this.f2136N;
        if (i10 == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.f2137O;
        if (viewDragHelper != null && (this.f2133K || i10 == 1)) {
            viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            this.f2150a0 = -1;
            this.f2152b0 = -1;
            VelocityTracker velocityTracker = this.f2148Z;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f2148Z = null;
            }
        }
        if (this.f2148Z == null) {
            this.f2148Z = VelocityTracker.obtain();
        }
        this.f2148Z.addMovement(motionEvent);
        if (this.f2137O != null && ((this.f2133K || this.f2136N == 1) && actionMasked == 2 && !this.f2138P && Math.abs(this.f2152b0 - motionEvent.getY()) > this.f2137O.getTouchSlop())) {
            this.f2137O.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f2138P;
    }

    /* JADX INFO: renamed from: p */
    public final void m1769p(int i10, boolean z9) {
        C3725k c3725k;
        if (i10 == 2) {
            return;
        }
        boolean z10 = this.f2136N == 3 && (this.f2178x || m1762i());
        if (this.f2180z == z10 || (c3725k = this.f2163i) == null) {
            return;
        }
        this.f2180z = z10;
        ValueAnimator valueAnimator = this.f2124B;
        if (!z9 || valueAnimator == null) {
            if (valueAnimator != null && valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            c3725k.m5949r(this.f2180z ? m1757b() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            valueAnimator.reverse();
        } else {
            valueAnimator.setFloatValues(c3725k.f11048c.f11030j, z10 ? m1757b() : 1.0f);
            valueAnimator.start();
        }
    }

    /* JADX INFO: renamed from: q */
    public final void m1770q(boolean z9) {
        WeakReference weakReference = this.f2145W;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z9) {
                if (this.f2156d0 != null) {
                    return;
                } else {
                    this.f2156d0 = new HashMap(childCount);
                }
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (childAt != this.f2145W.get() && z9) {
                    this.f2156d0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z9) {
                return;
            }
            this.f2156d0 = null;
        }
    }

    /* JADX INFO: renamed from: r */
    public final void m1771r() {
        View view;
        if (this.f2145W != null) {
            m1756a();
            if (this.f2136N != 4 || (view = (View) this.f2145W.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
    }

    public BottomSheetBehavior() {
        this.f2149a = 0;
        this.f2151b = true;
        this.f2165k = -1;
        this.f2166l = -1;
        this.f2123A = new C0015h(this);
        this.f2128F = 0.5f;
        this.f2130H = -1.0f;
        this.f2133K = true;
        this.f2134L = true;
        this.f2136N = 4;
        this.f2141S = 0.1f;
        this.f2147Y = new ArrayList();
        this.f2152b0 = -1;
        this.f2158e0 = new SparseIntArray();
        this.f2160f0 = new C1614c(this);
    }
}
