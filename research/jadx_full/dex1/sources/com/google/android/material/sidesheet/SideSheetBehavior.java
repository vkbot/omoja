package com.google.android.material.sidesheet;

import a3.a;
import a4.b;
import a4.d;
import a4.f;
import a4.h;
import android.R$attr;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.animation.PathInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import androidx.customview.widget.ViewDragHelper;
import b1.u;
import com.bumptech.glide.g;
import j1.i;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import w3.c;
import z3.k;
import z3.n;
import z3.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout$Behavior<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public u f1338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f1339b;
    public final ColorStateList c;
    public final o d;
    public final h e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f1340f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f1341g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1342h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ViewDragHelper f1343i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1344j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f1345k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1346l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1347m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1348n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1349o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public WeakReference f1350p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public WeakReference f1351q;
    public final int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public VelocityTracker f1352s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final LinkedHashSet f1353u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final d f1354v;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SideSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new h(this);
        this.f1341g = true;
        this.f1342h = 5;
        this.f1345k = 0.1f;
        this.r = -1;
        this.f1353u = new LinkedHashSet();
        this.f1354v = new d(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.F);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.c = c.a(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            this.d = o.c(context, attributeSet, 0, 2132018273).a();
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(5, -1);
            this.r = resourceId;
            WeakReference weakReference = this.f1351q;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.f1351q = null;
            WeakReference weakReference2 = this.f1350p;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1 && view.isLaidOut()) {
                    view.requestLayout();
                }
            }
        }
        o oVar = this.d;
        if (oVar != null) {
            k kVar = new k(oVar);
            this.f1339b = kVar;
            kVar.m(context);
            ColorStateList colorStateList = this.c;
            if (colorStateList != null) {
                this.f1339b.q(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(R$attr.colorBackground, typedValue, true);
                this.f1339b.setTint(typedValue.data);
            }
        }
        this.f1340f = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        this.f1341g = typedArrayObtainStyledAttributes.getBoolean(4, true);
        typedArrayObtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9) {
        View view;
        if (this.f1342h == i9) {
            return;
        }
        this.f1342h = i9;
        WeakReference weakReference = this.f1350p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i10 = this.f1342h == 5 ? 4 : 0;
        if (view.getVisibility() != i10) {
            view.setVisibility(i10);
        }
        Iterator it = this.f1353u.iterator();
        if (it.hasNext()) {
            throw g.b(it);
        }
        d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b() {
        if (this.f1343i != null) {
            return this.f1341g || this.f1342h == 1;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(View view, int i9, boolean z8) {
        int iJ;
        if (i9 == 3) {
            iJ = this.f1338a.j();
        } else {
            if (i9 != 5) {
                i.k(ai.onnxruntime.a.e(i9, "Invalid state to get outer edge offset: "));
                return;
            }
            iJ = this.f1338a.k();
        }
        ViewDragHelper viewDragHelper = this.f1343i;
        if (viewDragHelper == null || (!z8 ? viewDragHelper.smoothSlideViewTo(view, iJ, view.getTop()) : viewDragHelper.settleCapturedViewAt(iJ, view.getTop()))) {
            a(i9);
        } else {
            a(2);
            this.e.a(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        View view;
        WeakReference weakReference = this.f1350p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (this.f1342h != 5) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_DISMISS, null, new b(this, 5));
        }
        if (this.f1342h != 3) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_EXPAND, null, new b(this, 3));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams) {
        super.onAttachedToLayoutParams(coordinatorLayout$LayoutParams);
        this.f1350p = null;
        this.f1343i = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.f1350p = null;
        this.f1343i = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        VelocityTracker velocityTracker;
        if ((!view.isShown() && ViewCompat.getAccessibilityPaneTitle(view) == null) || !this.f1341g) {
            this.f1344j = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.f1352s) != null) {
            velocityTracker.recycle();
            this.f1352s = null;
        }
        if (this.f1352s == null) {
            this.f1352s = VelocityTracker.obtain();
        }
        this.f1352s.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.t = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f1344j) {
            this.f1344j = false;
            return false;
        }
        return (this.f1344j || (viewDragHelper = this.f1343i) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i9) {
        View view2;
        View view3;
        int i10;
        View viewFindViewById;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        int iN = 0;
        if (this.f1350p == null) {
            this.f1350p = new WeakReference(view);
            new PathInterpolator(0.1f, 0.1f, 0.0f, 1.0f);
            Context context = view.getContext();
            com.bumptech.glide.d.q(context, 2130904056, 300);
            com.bumptech.glide.d.q(context, 2130904061, 150);
            com.bumptech.glide.d.q(context, 2130904060, 100);
            Resources resources = view.getResources();
            resources.getDimension(2131099836);
            resources.getDimension(2131099835);
            resources.getDimension(2131099837);
            k kVar = this.f1339b;
            if (kVar != null) {
                view.setBackground(kVar);
                float elevation = this.f1340f;
                if (elevation == -1.0f) {
                    elevation = view.getElevation();
                }
                this.f1339b.p(elevation);
            } else {
                ColorStateList colorStateList = this.c;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(view, colorStateList);
                }
            }
            int i11 = this.f1342h == 5 ? 4 : 0;
            if (view.getVisibility() != i11) {
                view.setVisibility(i11);
            }
            d();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (ViewCompat.getAccessibilityPaneTitle(view) == null) {
                ViewCompat.setAccessibilityPaneTitle(view, view.getResources().getString(2131952490));
            }
        }
        int i12 = Gravity.getAbsoluteGravity(((CoordinatorLayout$LayoutParams) view.getLayoutParams()).gravity, i9) == 3 ? 1 : 0;
        u uVar = this.f1338a;
        if (uVar == null || uVar.p() != i12) {
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = null;
            o oVar = this.d;
            if (i12 == 0) {
                this.f1338a = new a4.a(this, 1);
                if (oVar != null) {
                    WeakReference weakReference = this.f1350p;
                    if (weakReference != null && (view3 = (View) weakReference.get()) != null && (view3.getLayoutParams() instanceof CoordinatorLayout$LayoutParams)) {
                        coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view3.getLayoutParams();
                    }
                    if (coordinatorLayout$LayoutParams == null || ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin <= 0) {
                        n nVarG = oVar.g();
                        nVarG.f6250f = new z3.a(0.0f);
                        nVarG.f6251g = new z3.a(0.0f);
                        o oVarA = nVarG.a();
                        k kVar2 = this.f1339b;
                        if (kVar2 != null) {
                            kVar2.setShapeAppearanceModel(oVarA);
                        }
                    }
                }
            } else {
                if (i12 != 1) {
                    i.k(ai.onnxruntime.a.f(i12, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
                    return false;
                }
                this.f1338a = new a4.a(this, 0);
                if (oVar != null) {
                    WeakReference weakReference2 = this.f1350p;
                    if (weakReference2 != null && (view2 = (View) weakReference2.get()) != null && (view2.getLayoutParams() instanceof CoordinatorLayout$LayoutParams)) {
                        coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view2.getLayoutParams();
                    }
                    if (coordinatorLayout$LayoutParams == null || ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin <= 0) {
                        n nVarG2 = oVar.g();
                        nVarG2.e = new z3.a(0.0f);
                        nVarG2.f6252h = new z3.a(0.0f);
                        o oVarA2 = nVarG2.a();
                        k kVar3 = this.f1339b;
                        if (kVar3 != null) {
                            kVar3.setShapeAppearanceModel(oVarA2);
                        }
                    }
                }
            }
        }
        if (this.f1343i == null) {
            this.f1343i = ViewDragHelper.create(coordinatorLayout, this.f1354v);
        }
        int iN2 = this.f1338a.n(view);
        coordinatorLayout.onLayoutChild(view, i9);
        this.f1347m = coordinatorLayout.getWidth();
        this.f1348n = this.f1338a.o(coordinatorLayout);
        this.f1346l = view.getWidth();
        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) view.getLayoutParams();
        this.f1349o = viewGroup$MarginLayoutParams != null ? this.f1338a.a(viewGroup$MarginLayoutParams) : 0;
        int i13 = this.f1342h;
        if (i13 == 1 || i13 == 2) {
            iN = iN2 - this.f1338a.n(view);
        } else if (i13 != 3) {
            if (i13 != 5) {
                ai.onnxruntime.b.b(this.f1342h, "Unexpected value: ");
                return false;
            }
            iN = this.f1338a.k();
        }
        ViewCompat.offsetLeftAndRight(view, iN);
        if (this.f1351q == null && (i10 = this.r) != -1 && (viewFindViewById = coordinatorLayout.findViewById(i10)) != null) {
            this.f1351q = new WeakReference(viewFindViewById);
        }
        Iterator it = this.f1353u.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                n0.b.a();
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i9, int i10, int i11, int i12) {
        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i9, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + viewGroup$MarginLayoutParams.leftMargin + viewGroup$MarginLayoutParams.rightMargin + i10, viewGroup$MarginLayoutParams.width), ViewGroup.getChildMeasureSpec(i11, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + viewGroup$MarginLayoutParams.topMargin + viewGroup$MarginLayoutParams.bottomMargin + i12, viewGroup$MarginLayoutParams.height));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        f fVar = (f) parcelable;
        if (fVar.getSuperState() != null) {
            super.onRestoreInstanceState(coordinatorLayout, view, fVar.getSuperState());
        }
        int i9 = fVar.f33b;
        if (i9 == 1 || i9 == 2) {
            i9 = 5;
        }
        this.f1342h = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
        return new f(super.onSaveInstanceState(coordinatorLayout, view), this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f1342h == 1 && actionMasked == 0) {
            return true;
        }
        if (b()) {
            this.f1343i.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.f1352s) != null) {
            velocityTracker.recycle();
            this.f1352s = null;
        }
        if (this.f1352s == null) {
            this.f1352s = VelocityTracker.obtain();
        }
        this.f1352s.addMovement(motionEvent);
        if (b() && actionMasked == 2 && !this.f1344j && b() && Math.abs(this.t - motionEvent.getX()) > this.f1343i.getTouchSlop()) {
            this.f1343i.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f1344j;
    }

    public SideSheetBehavior() {
        this.e = new h(this);
        this.f1341g = true;
        this.f1342h = 5;
        this.f1345k = 0.1f;
        this.r = -1;
        this.f1353u = new LinkedHashSet();
        this.f1354v = new d(this);
    }
}
