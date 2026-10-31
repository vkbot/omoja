package com.google.android.material.bottomsheet;

import a3.a;
import a4.h;
import android.R$attr;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build$VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.animation.PathInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import androidx.customview.widget.ViewDragHelper;
import d4.b;
import g3.c;
import g3.d;
import g3.e;
import g3.f;
import j1.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import s3.p;
import z3.k;
import z3.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout$Behavior<V> {
    public final h A;
    public final ValueAnimator B;
    public final int C;
    public int D;
    public int E;
    public final float F;
    public int G;
    public final float H;
    public boolean I;
    public boolean J;
    public final boolean K;
    public final boolean L;
    public boolean M;
    public int N;
    public ViewDragHelper O;
    public boolean P;
    public int Q;
    public boolean R;
    public final float S;
    public int T;
    public int U;
    public int V;
    public WeakReference W;
    public WeakReference X;
    public final ArrayList Y;
    public VelocityTracker Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1159a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f1160a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1161b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f1162b0;
    public final float c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f1163c0;
    public final int d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public HashMap f1164d0;
    public int e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final SparseIntArray f1165e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1166f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final c f1167f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1168g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1169h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final k f1170i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ColorStateList f1171j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f1172k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f1173l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1174m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f1175n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f1176o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f1177p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f1178q;
    public final boolean r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f1179s;
    public final boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f1180u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1181v;
    public int w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f1182x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final o f1183y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1184z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i9;
        super(context, attributeSet);
        this.f1159a = 0;
        this.f1161b = true;
        this.f1172k = -1;
        this.f1173l = -1;
        this.A = new h(this);
        this.F = 0.5f;
        this.H = -1.0f;
        this.K = true;
        this.L = true;
        this.N = 4;
        this.S = 0.1f;
        this.Y = new ArrayList();
        this.f1162b0 = -1;
        this.f1165e0 = new SparseIntArray();
        this.f1167f0 = new c(this);
        this.f1169h = context.getResources().getDimensionPixelSize(2131100589);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.d);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f1171j = w3.c.a(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(22)) {
            this.f1183y = o.c(context, attributeSet, 2130903178, 2132018098).a();
        }
        o oVar = this.f1183y;
        if (oVar != null) {
            k kVar = new k(oVar);
            this.f1170i = kVar;
            kVar.m(context);
            ColorStateList colorStateList = this.f1171j;
            if (colorStateList != null) {
                this.f1170i.q(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(R$attr.colorBackground, typedValue, true);
                this.f1170i.setTint(typedValue.data);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(b(), 1.0f);
        this.B = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.B.addUpdateListener(new b(2, this));
        this.H = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            this.f1172k = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            this.f1173l = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(10);
        if (typedValuePeekValue == null || (i9 = typedValuePeekValue.data) != -1) {
            j(typedArrayObtainStyledAttributes.getDimensionPixelSize(10, -1));
        } else {
            j(i9);
        }
        boolean z8 = typedArrayObtainStyledAttributes.getBoolean(9, false);
        if (this.I != z8) {
            this.I = z8;
            if (!z8 && this.N == 5) {
                k(4);
            }
            o();
        }
        this.f1175n = typedArrayObtainStyledAttributes.getBoolean(14, false);
        boolean z9 = typedArrayObtainStyledAttributes.getBoolean(7, true);
        if (this.f1161b != z9) {
            this.f1161b = z9;
            if (this.W != null) {
                a();
            }
            l((this.f1161b && this.N == 6) ? 3 : this.N);
            p(this.N, true);
            o();
        }
        this.J = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.K = typedArrayObtainStyledAttributes.getBoolean(4, true);
        this.L = typedArrayObtainStyledAttributes.getBoolean(5, true);
        this.f1159a = typedArrayObtainStyledAttributes.getInt(11, 0);
        float f8 = typedArrayObtainStyledAttributes.getFloat(8, 0.5f);
        if (f8 <= 0.0f || f8 >= 1.0f) {
            i.k("ratio must be a float value between 0 and 1");
            throw null;
        }
        this.F = f8;
        if (this.W != null) {
            this.E = (int) ((1.0f - f8) * this.V);
        }
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(6);
        if (typedValuePeekValue2 == null || typedValuePeekValue2.type != 16) {
            int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(6, 0);
            if (dimensionPixelOffset < 0) {
                i.k("offset must be greater than or equal to 0");
                throw null;
            }
            this.C = dimensionPixelOffset;
            p(this.N, true);
        } else {
            int i10 = typedValuePeekValue2.data;
            if (i10 < 0) {
                i.k("offset must be greater than or equal to 0");
                throw null;
            }
            this.C = i10;
            p(this.N, true);
        }
        this.d = typedArrayObtainStyledAttributes.getInt(12, 500);
        this.f1176o = typedArrayObtainStyledAttributes.getBoolean(18, false);
        this.f1177p = typedArrayObtainStyledAttributes.getBoolean(19, false);
        this.f1178q = typedArrayObtainStyledAttributes.getBoolean(20, false);
        this.r = typedArrayObtainStyledAttributes.getBoolean(21, true);
        this.f1179s = typedArrayObtainStyledAttributes.getBoolean(15, false);
        this.t = typedArrayObtainStyledAttributes.getBoolean(16, false);
        this.f1180u = typedArrayObtainStyledAttributes.getBoolean(17, false);
        this.f1182x = typedArrayObtainStyledAttributes.getBoolean(24, true);
        typedArrayObtainStyledAttributes.recycle();
        this.c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static View e(View view) {
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
        for (int i9 = 0; i9 < childCount; i9++) {
            View viewE = e(viewGroup.getChildAt(i9));
            if (viewE != null) {
                return viewE;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int f(int i9, int i10, int i11, int i12) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i9, i10, i12);
        if (i11 == -1) {
            return childMeasureSpec;
        }
        int mode = View$MeasureSpec.getMode(childMeasureSpec);
        int size = View$MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View$MeasureSpec.makeMeasureSpec(Math.min(size, i11), BasicMeasure.EXACTLY);
        }
        if (size != 0) {
            i11 = Math.min(size, i11);
        }
        return View$MeasureSpec.makeMeasureSpec(i11, Integer.MIN_VALUE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        int iC = c();
        boolean z8 = this.f1161b;
        int i9 = this.V;
        if (z8) {
            this.G = Math.max(i9 - iC, this.D);
        } else {
            this.G = i9 - iC;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    public final float b() {
        WeakReference weakReference;
        WindowInsets rootWindowInsets;
        float f8;
        float f9 = 0.0f;
        if (this.f1170i != null && (weakReference = this.W) != null && weakReference.get() != null && Build$VERSION.SDK_INT >= 31) {
            View view = (View) this.W.get();
            if (i() && (rootWindowInsets = view.getRootWindowInsets()) != null) {
                float fK = this.f1170i.k();
                RoundedCorner roundedCornerN = androidx.core.app.c.n(rootWindowInsets);
                if (roundedCornerN != null) {
                    float fB = androidx.core.app.c.b(roundedCornerN);
                    if (fB <= 0.0f || fK <= 0.0f) {
                        f8 = 0.0f;
                    } else {
                        f8 = fB / fK;
                    }
                } else {
                    f8 = 0.0f;
                }
                k kVar = this.f1170i;
                float[] fArr = kVar.D;
                float fA = fArr != null ? fArr[0] : kVar.c.f6213a.f6260f.a(kVar.h());
                RoundedCorner roundedCornerB = androidx.core.app.c.B(rootWindowInsets);
                if (roundedCornerB != null) {
                    float fB2 = androidx.core.app.c.b(roundedCornerB);
                    if (fB2 > 0.0f && fA > 0.0f) {
                        f9 = fB2 / fA;
                    }
                }
                return Math.max(f8, f9);
            }
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c() {
        int i9;
        if (this.f1166f) {
            return Math.min(Math.max(this.f1168g, this.V - ((this.U * 9) / 16)), this.T) + this.f1181v;
        }
        return (this.f1175n || this.f1176o || (i9 = this.f1174m) <= 0) ? this.e + this.f1181v : Math.max(this.e, i9 + this.f1169h);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(int i9) {
        if (((View) this.W.get()) != null) {
            ArrayList arrayList = this.Y;
            if (arrayList.isEmpty()) {
                return;
            }
            int i10 = this.G;
            if (i9 <= i10 && i10 != g()) {
                g();
            }
            if (arrayList.size() <= 0) {
                return;
            }
            arrayList.get(0).getClass();
            n0.b.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int g() {
        if (this.f1161b) {
            return this.D;
        }
        return Math.max(this.C, this.r ? 0 : this.w);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int h(int i9) {
        if (i9 == 3) {
            return g();
        }
        if (i9 == 4) {
            return this.G;
        }
        if (i9 == 5) {
            return this.V;
        }
        if (i9 == 6) {
            return this.E;
        }
        i.k(ai.onnxruntime.a.e(i9, "Invalid state to get top offset: "));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean i() {
        WeakReference weakReference = this.W;
        if (weakReference != null && weakReference.get() != null) {
            int[] iArr = new int[2];
            ((View) this.W.get()).getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j(int i9) {
        boolean z8 = this.f1166f;
        if (i9 == -1) {
            if (z8) {
                return;
            } else {
                this.f1166f = true;
            }
        } else {
            if (!z8 && this.e == i9) {
                return;
            }
            this.f1166f = false;
            this.e = Math.max(0, i9);
        }
        r();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(int i9) {
        if (i9 == 1 || i9 == 2) {
            throw new IllegalArgumentException(ai.onnxruntime.a.p(new StringBuilder("STATE_"), i9 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.I && i9 == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i9);
            return;
        }
        int i10 = (i9 == 6 && this.f1161b && h(i9) <= this.D) ? 3 : i9;
        WeakReference weakReference = this.W;
        if (weakReference == null || weakReference.get() == null) {
            l(i9);
            return;
        }
        View view = (View) this.W.get();
        g3.a aVar = new g3.a(this, view, i10);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
            view.post(aVar);
        } else {
            aVar.run();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(int i9) {
        if (this.N == i9) {
            return;
        }
        this.N = i9;
        if (i9 != 4 && i9 != 3 && i9 != 6) {
            boolean z8 = this.I;
        }
        WeakReference weakReference = this.W;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i9 == 3) {
            q(true);
        } else if (i9 == 6 || i9 == 5 || i9 == 4) {
            q(false);
        }
        p(i9, true);
        ArrayList arrayList = this.Y;
        if (arrayList.size() <= 0) {
            o();
        } else {
            arrayList.get(0).getClass();
            n0.b.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean m(View view, float f8) {
        if (this.J) {
            return true;
        }
        if (view.getTop() < this.G) {
            return false;
        }
        return Math.abs(((f8 * this.S) + ((float) view.getTop())) - ((float) this.G)) / ((float) c()) > 0.5f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(View view, int i9, boolean z8) {
        int iH = h(i9);
        ViewDragHelper viewDragHelper = this.O;
        if (viewDragHelper == null || (!z8 ? viewDragHelper.smoothSlideViewTo(view, view.getLeft(), iH) : viewDragHelper.settleCapturedViewAt(view.getLeft(), iH))) {
            l(i9);
            return;
        }
        l(2);
        p(i9, true);
        this.A.a(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o() {
        View view;
        WeakReference weakReference = this.W;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 524288);
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        SparseIntArray sparseIntArray = this.f1165e0;
        int i9 = sparseIntArray.get(0, -1);
        if (i9 != -1) {
            ViewCompat.removeAccessibilityAction(view, i9);
            sparseIntArray.delete(0);
        }
        if (!this.f1161b && this.N != 6) {
            sparseIntArray.put(0, ViewCompat.addAccessibilityAction(view, view.getResources().getString(2131951854), new d(this, 6)));
        }
        if (this.I && this.N != 5) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_DISMISS, null, new d(this, 5));
        }
        int i10 = this.N;
        if (i10 == 3) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_COLLAPSE, null, new d(this, this.f1161b ? 4 : 6));
            return;
        }
        if (i10 == 4) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_EXPAND, null, new d(this, this.f1161b ? 3 : 6));
        } else {
            if (i10 != 6) {
                return;
            }
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_COLLAPSE, null, new d(this, 4));
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_EXPAND, null, new d(this, 3));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams) {
        super.onAttachedToLayoutParams(coordinatorLayout$LayoutParams);
        this.W = null;
        this.O = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.W = null;
        this.O = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i9;
        ViewDragHelper viewDragHelper;
        if (!view.isShown() || !this.K) {
            this.P = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1160a0 = -1;
            this.f1162b0 = -1;
            VelocityTracker velocityTracker = this.Z;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.Z = null;
            }
        }
        if (this.Z == null) {
            this.Z = VelocityTracker.obtain();
        }
        this.Z.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x8 = (int) motionEvent.getX();
            int y8 = (int) motionEvent.getY();
            this.f1162b0 = y8;
            if (this.N != 2) {
                WeakReference weakReference = this.X;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.isPointInChildBounds(view2, x8, y8)) {
                    this.f1160a0 = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f1163c0 = true;
                }
            }
            this.P = this.f1160a0 == -1 && !coordinatorLayout.isPointInChildBounds(view, x8, this.f1162b0);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f1163c0 = false;
            this.f1160a0 = -1;
            if (this.P) {
                this.P = false;
                return false;
            }
        }
        if (this.P || (viewDragHelper = this.O) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            WeakReference weakReference2 = this.X;
            View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
            if (actionMasked != 2 || view3 == null || this.P || this.N == 1 || coordinatorLayout.isPointInChildBounds(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.O == null || (i9 = this.f1162b0) == -1 || Math.abs(i9 - motionEvent.getY()) <= this.O.getTouchSlop()) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i9) {
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        if (this.W == null) {
            this.f1168g = coordinatorLayout.getResources().getDimensionPixelSize(2131099760);
            boolean z8 = (Build$VERSION.SDK_INT < 29 || this.f1175n || this.f1166f) ? false : true;
            if (this.f1176o || this.f1177p || this.f1178q || this.f1179s || this.t || this.f1180u || z8) {
                g3.b bVar = new g3.b(this, z8);
                int paddingStart = view.getPaddingStart();
                view.getPaddingTop();
                int paddingEnd = view.getPaddingEnd();
                int paddingBottom = view.getPaddingBottom();
                l.h hVar = new l.h();
                hVar.f3250a = paddingStart;
                hVar.f3251b = paddingEnd;
                hVar.c = paddingBottom;
                ViewCompat.setOnApplyWindowInsetsListener(view, new l.d(13, bVar, hVar));
                if (view.isAttachedToWindow()) {
                    view.requestApplyInsets();
                } else {
                    view.addOnAttachStateChangeListener(new p());
                }
            }
            ViewCompat.setWindowInsetsAnimationCallback(view, new f(view));
            this.W = new WeakReference(view);
            new PathInterpolator(0.1f, 0.1f, 0.0f, 1.0f);
            Context context = view.getContext();
            com.bumptech.glide.d.q(context, 2130904056, 300);
            com.bumptech.glide.d.q(context, 2130904061, 150);
            com.bumptech.glide.d.q(context, 2130904060, 100);
            Resources resources = view.getResources();
            resources.getDimension(2131099831);
            resources.getDimension(2131099832);
            k kVar = this.f1170i;
            if (kVar != null) {
                view.setBackground(kVar);
                float elevation = this.H;
                if (elevation == -1.0f) {
                    elevation = view.getElevation();
                }
                this.f1170i.p(elevation);
            } else {
                ColorStateList colorStateList = this.f1171j;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(view, colorStateList);
                }
            }
            o();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.O == null) {
            this.O = ViewDragHelper.create(coordinatorLayout, this.f1167f0);
        }
        int top = view.getTop();
        coordinatorLayout.onLayoutChild(view, i9);
        this.U = coordinatorLayout.getWidth();
        this.V = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.T = height;
        int iMin = this.V;
        int i10 = iMin - height;
        int i11 = this.w;
        if (i10 < i11) {
            boolean z9 = this.r;
            int i12 = this.f1173l;
            if (z9) {
                if (i12 != -1) {
                    iMin = Math.min(iMin, i12);
                }
                this.T = iMin;
            } else {
                int iMin2 = iMin - i11;
                if (i12 != -1) {
                    iMin2 = Math.min(iMin2, i12);
                }
                this.T = iMin2;
            }
        }
        this.D = Math.max(0, this.V - this.T);
        this.E = (int) ((1.0f - this.F) * this.V);
        a();
        int i13 = this.N;
        if (i13 == 3) {
            ViewCompat.offsetTopAndBottom(view, g());
        } else if (i13 == 6) {
            ViewCompat.offsetTopAndBottom(view, this.E);
        } else if (this.I && i13 == 5) {
            ViewCompat.offsetTopAndBottom(view, this.V);
        } else if (i13 == 4) {
            ViewCompat.offsetTopAndBottom(view, this.G);
        } else if (i13 == 1 || i13 == 2) {
            ViewCompat.offsetTopAndBottom(view, top - view.getTop());
        }
        p(this.N, false);
        this.X = new WeakReference(e(view));
        ArrayList arrayList = this.Y;
        if (arrayList.size() <= 0) {
            return true;
        }
        arrayList.get(0).getClass();
        n0.b.a();
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i9, int i10, int i11, int i12) {
        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) view.getLayoutParams();
        view.measure(f(i9, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + viewGroup$MarginLayoutParams.leftMargin + viewGroup$MarginLayoutParams.rightMargin + i10, this.f1172k, viewGroup$MarginLayoutParams.width), f(i11, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + viewGroup$MarginLayoutParams.topMargin + viewGroup$MarginLayoutParams.bottomMargin + i12, this.f1173l, viewGroup$MarginLayoutParams.height));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, View view, View view2, float f8, float f9) {
        WeakReference weakReference = this.X;
        if (weakReference == null || view2 != weakReference.get()) {
            return false;
        }
        return !(this.N == 3 || this.M) || super.onNestedPreFling(coordinatorLayout, view, view2, f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i9, int i10, int[] iArr, int i11) {
        if (i11 == 1) {
            return;
        }
        WeakReference weakReference = this.X;
        View view3 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != view3) {
            return;
        }
        int top = view.getTop();
        int i12 = top - i10;
        if (i10 > 0) {
            if (!this.R && !this.L && view2 == view3 && view2.canScrollVertically(1)) {
                this.M = true;
                return;
            }
            if (i12 < g()) {
                int iG = top - g();
                iArr[1] = iG;
                ViewCompat.offsetTopAndBottom(view, -iG);
                l(3);
            } else {
                if (!this.K) {
                    return;
                }
                iArr[1] = i10;
                ViewCompat.offsetTopAndBottom(view, -i10);
                l(1);
            }
        } else if (i10 < 0) {
            boolean zCanScrollVertically = view2.canScrollVertically(-1);
            if (!this.R && !this.L && view2 == view3 && zCanScrollVertically) {
                this.M = true;
                return;
            }
            if (!zCanScrollVertically) {
                int i13 = this.G;
                if (i12 > i13 && !this.I) {
                    int i14 = top - i13;
                    iArr[1] = i14;
                    ViewCompat.offsetTopAndBottom(view, -i14);
                    l(4);
                } else {
                    if (!this.K) {
                        return;
                    }
                    iArr[1] = i10;
                    ViewCompat.offsetTopAndBottom(view, -i10);
                    l(1);
                }
            }
        }
        d(view.getTop());
        this.Q = i10;
        this.R = true;
        this.M = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        e eVar = (e) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, view, eVar.getSuperState());
        int i9 = this.f1159a;
        if (i9 != 0) {
            if (i9 == -1 || (i9 & 1) == 1) {
                this.e = eVar.c;
            }
            if (i9 == -1 || (i9 & 2) == 2) {
                this.f1161b = eVar.d;
            }
            if (i9 == -1 || (i9 & 4) == 4) {
                this.I = eVar.e;
            }
            if (i9 == -1 || (i9 & 8) == 8) {
                this.J = eVar.f2364f;
            }
        }
        int i10 = eVar.f2363b;
        if (i10 == 1 || i10 == 2) {
            this.N = 4;
        } else {
            this.N = i10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
        return new e(super.onSaveInstanceState(coordinatorLayout, view), this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i9, int i10) {
        this.Q = 0;
        this.R = false;
        return (i9 & 2) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onStopNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i9) {
        int top;
        int top2;
        int i10;
        float yVelocity;
        int i11 = 3;
        if (view.getTop() == g()) {
            l(3);
            return;
        }
        WeakReference weakReference = this.X;
        if (weakReference != null && view2 == weakReference.get() && this.R) {
            if (this.Q > 0) {
                if (!this.f1161b && view.getTop() > this.E) {
                    i11 = 6;
                }
            } else if (this.I) {
                VelocityTracker velocityTracker = this.Z;
                if (velocityTracker == null) {
                    yVelocity = 0.0f;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.c);
                    yVelocity = this.Z.getYVelocity(this.f1160a0);
                }
                if (m(view, yVelocity)) {
                    i11 = 5;
                } else if (this.Q == 0) {
                    top2 = view.getTop();
                    if (this.f1161b) {
                        i10 = this.E;
                        if (top2 < i10) {
                            if (top2 >= Math.abs(top2 - this.G)) {
                            }
                        } else if (Math.abs(top2 - i10) < Math.abs(top2 - this.G)) {
                            i11 = 4;
                        }
                        i11 = 6;
                    } else if (Math.abs(top2 - this.D) >= Math.abs(top2 - this.G)) {
                        i11 = 4;
                    }
                } else {
                    if (!this.f1161b) {
                        top = view.getTop();
                        if (Math.abs(top - this.E) < Math.abs(top - this.G)) {
                            i11 = 6;
                        }
                    }
                    i11 = 4;
                }
            } else if (this.Q == 0) {
                top2 = view.getTop();
                if (this.f1161b) {
                    i10 = this.E;
                    if (top2 < i10) {
                        if (top2 >= Math.abs(top2 - this.G)) {
                        }
                    } else if (Math.abs(top2 - i10) < Math.abs(top2 - this.G)) {
                        i11 = 4;
                    }
                    i11 = 6;
                } else if (Math.abs(top2 - this.D) >= Math.abs(top2 - this.G)) {
                    i11 = 4;
                }
            } else {
                if (!this.f1161b) {
                    top = view.getTop();
                    if (Math.abs(top - this.E) < Math.abs(top - this.G)) {
                        i11 = 6;
                    }
                }
                i11 = 4;
            }
            n(view, i11, false);
            this.R = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i9 = this.N;
        if (i9 == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.O;
        if (viewDragHelper != null && (this.K || i9 == 1)) {
            viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            this.f1160a0 = -1;
            this.f1162b0 = -1;
            VelocityTracker velocityTracker = this.Z;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.Z = null;
            }
        }
        if (this.Z == null) {
            this.Z = VelocityTracker.obtain();
        }
        this.Z.addMovement(motionEvent);
        if (this.O != null && ((this.K || this.N == 1) && actionMasked == 2 && !this.P && Math.abs(this.f1162b0 - motionEvent.getY()) > this.O.getTouchSlop())) {
            this.O.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.P;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void p(int i9, boolean z8) {
        k kVar;
        if (i9 == 2) {
            return;
        }
        boolean z9 = this.N == 3 && (this.f1182x || i());
        if (this.f1184z == z9 || (kVar = this.f1170i) == null) {
            return;
        }
        this.f1184z = z9;
        ValueAnimator valueAnimator = this.B;
        if (!z8 || valueAnimator == null) {
            if (valueAnimator != null && valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            kVar.r(this.f1184z ? b() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            valueAnimator.reverse();
        } else {
            valueAnimator.setFloatValues(kVar.c.f6219j, z9 ? b() : 1.0f);
            valueAnimator.start();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void q(boolean z8) {
        WeakReference weakReference = this.W;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z8) {
                if (this.f1164d0 != null) {
                    return;
                } else {
                    this.f1164d0 = new HashMap(childCount);
                }
            }
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = coordinatorLayout.getChildAt(i9);
                if (childAt != this.W.get() && z8) {
                    this.f1164d0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z8) {
                return;
            }
            this.f1164d0 = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r() {
        View view;
        if (this.W != null) {
            a();
            if (this.N != 4 || (view = (View) this.W.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i9, int i10, int i11, int i12, int i13, int[] iArr) {
    }

    public BottomSheetBehavior() {
        this.f1159a = 0;
        this.f1161b = true;
        this.f1172k = -1;
        this.f1173l = -1;
        this.A = new h(this);
        this.F = 0.5f;
        this.H = -1.0f;
        this.K = true;
        this.L = true;
        this.N = 4;
        this.S = 0.1f;
        this.Y = new ArrayList();
        this.f1162b0 = -1;
        this.f1165e0 = new SparseIntArray();
        this.f1167f0 = new c(this);
    }
}
