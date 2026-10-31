package com.google.android.material.sidesheet;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
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
import android.view.ViewParent;
import android.view.animation.PathInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.AbstractC1034g;
import com.example.navistart.R;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.commons.net.ftp.FTPReply;
import p004a3.AbstractC0007a;
import p005a4.C0008a;
import p005a4.C0011d;
import p005a4.C0013f;
import p005a4.C0015h;
import p016b1.AbstractC0880u;
import p099j1.C1929i;
import p142n0.C2467b;
import p228w3.AbstractC3518c;
import p258z3.C3711a;
import p258z3.C3725k;
import p258z3.C3728n;
import p258z3.C3729o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: a */
    public AbstractC0880u f2403a;

    /* JADX INFO: renamed from: b */
    public final C3725k f2404b;

    /* JADX INFO: renamed from: c */
    public final ColorStateList f2405c;

    /* JADX INFO: renamed from: d */
    public final C3729o f2406d;

    /* JADX INFO: renamed from: e */
    public final C0015h f2407e;

    /* JADX INFO: renamed from: f */
    public final float f2408f;

    /* JADX INFO: renamed from: g */
    public final boolean f2409g;

    /* JADX INFO: renamed from: h */
    public int f2410h;

    /* JADX INFO: renamed from: i */
    public ViewDragHelper f2411i;

    /* JADX INFO: renamed from: j */
    public boolean f2412j;

    /* JADX INFO: renamed from: k */
    public final float f2413k;

    /* JADX INFO: renamed from: l */
    public int f2414l;

    /* JADX INFO: renamed from: m */
    public int f2415m;

    /* JADX INFO: renamed from: n */
    public int f2416n;

    /* JADX INFO: renamed from: o */
    public int f2417o;

    /* JADX INFO: renamed from: p */
    public WeakReference f2418p;

    /* JADX INFO: renamed from: q */
    public WeakReference f2419q;

    /* JADX INFO: renamed from: r */
    public final int f2420r;

    /* JADX INFO: renamed from: s */
    public VelocityTracker f2421s;

    /* JADX INFO: renamed from: t */
    public int f2422t;

    /* JADX INFO: renamed from: u */
    public final LinkedHashSet f2423u;

    /* JADX INFO: renamed from: v */
    public final C0011d f2424v;

    public SideSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2407e = new C0015h(this);
        this.f2409g = true;
        this.f2410h = 5;
        this.f2413k = 0.1f;
        this.f2420r = -1;
        this.f2423u = new LinkedHashSet();
        this.f2424v = new C0011d(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0007a.f14F);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f2405c = AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            this.f2406d = C3729o.m5959c(context, attributeSet, 0, R.style.Widget_Material3_SideSheet).m5956a();
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(5, -1);
            this.f2420r = resourceId;
            WeakReference weakReference = this.f2419q;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.f2419q = null;
            WeakReference weakReference2 = this.f2418p;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1 && view.isLaidOut()) {
                    view.requestLayout();
                }
            }
        }
        C3729o c3729o = this.f2406d;
        if (c3729o != null) {
            C3725k c3725k = new C3725k(c3729o);
            this.f2404b = c3725k;
            c3725k.m5944m(context);
            ColorStateList colorStateList = this.f2405c;
            if (colorStateList != null) {
                this.f2404b.m5948q(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f2404b.setTint(typedValue.data);
            }
        }
        this.f2408f = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        this.f2409g = typedArrayObtainStyledAttributes.getBoolean(4, true);
        typedArrayObtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    /* JADX INFO: renamed from: a */
    public final void m1825a(int i10) {
        View view;
        if (this.f2410h == i10) {
            return;
        }
        this.f2410h = i10;
        WeakReference weakReference = this.f2418p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i11 = this.f2410h == 5 ? 4 : 0;
        if (view.getVisibility() != i11) {
            view.setVisibility(i11);
        }
        Iterator it = this.f2423u.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
        m1828d();
    }

    /* JADX INFO: renamed from: b */
    public final boolean m1826b() {
        if (this.f2411i != null) {
            return this.f2409g || this.f2410h == 1;
        }
        return false;
    }

    /* JADX INFO: renamed from: c */
    public final void m1827c(View view, int i10, boolean z9) {
        int iMo41j;
        if (i10 == 3) {
            iMo41j = this.f2403a.mo41j();
        } else {
            if (i10 != 5) {
                C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid state to get outer edge offset: "));
                return;
            }
            iMo41j = this.f2403a.mo42k();
        }
        ViewDragHelper viewDragHelper = this.f2411i;
        if (viewDragHelper == null || (!z9 ? viewDragHelper.smoothSlideViewTo(view, iMo41j, view.getTop()) : viewDragHelper.settleCapturedViewAt(iMo41j, view.getTop()))) {
            m1825a(i10);
        } else {
            m1825a(2);
            this.f2407e.m52a(i10);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1828d() {
        View view;
        WeakReference weakReference = this.f2418p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        final int i10 = 5;
        if (this.f2410h != 5) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new AccessibilityViewCommand() { // from class: a4.b
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean perform(View view2, AccessibilityViewCommand.CommandArguments commandArguments) {
                    int i11 = i10;
                    if (i11 == 1 || i11 == 2) {
                        throw new IllegalArgumentException(AbstractC0074a.m165p(new StringBuilder("STATE_"), i11 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
                    }
                    SideSheetBehavior sideSheetBehavior = this.f50a;
                    WeakReference weakReference2 = sideSheetBehavior.f2418p;
                    if (weakReference2 == null || weakReference2.get() == null) {
                        sideSheetBehavior.m1825a(i11);
                        return true;
                    }
                    View view3 = (View) sideSheetBehavior.f2418p.get();
                    RunnableC0010c runnableC0010c = new RunnableC0010c(sideSheetBehavior, i11, 0);
                    ViewParent parent = view3.getParent();
                    if (parent != null && parent.isLayoutRequested() && view3.isAttachedToWindow()) {
                        view3.post(runnableC0010c);
                        return true;
                    }
                    runnableC0010c.run();
                    return true;
                }
            });
        }
        final int i11 = 3;
        if (this.f2410h != 3) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, null, new AccessibilityViewCommand() { // from class: a4.b
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean perform(View view2, AccessibilityViewCommand.CommandArguments commandArguments) {
                    int i12 = i11;
                    if (i12 == 1 || i12 == 2) {
                        throw new IllegalArgumentException(AbstractC0074a.m165p(new StringBuilder("STATE_"), i12 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
                    }
                    SideSheetBehavior sideSheetBehavior = this.f50a;
                    WeakReference weakReference2 = sideSheetBehavior.f2418p;
                    if (weakReference2 == null || weakReference2.get() == null) {
                        sideSheetBehavior.m1825a(i12);
                        return true;
                    }
                    View view3 = (View) sideSheetBehavior.f2418p.get();
                    RunnableC0010c runnableC0010c = new RunnableC0010c(sideSheetBehavior, i12, 0);
                    ViewParent parent = view3.getParent();
                    if (parent != null && parent.isLayoutRequested() && view3.isAttachedToWindow()) {
                        view3.post(runnableC0010c);
                        return true;
                    }
                    runnableC0010c.run();
                    return true;
                }
            });
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.f2418p = null;
        this.f2411i = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.f2418p = null;
        this.f2411i = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        VelocityTracker velocityTracker;
        if ((!view.isShown() && ViewCompat.getAccessibilityPaneTitle(view) == null) || !this.f2409g) {
            this.f2412j = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.f2421s) != null) {
            velocityTracker.recycle();
            this.f2421s = null;
        }
        if (this.f2421s == null) {
            this.f2421s = VelocityTracker.obtain();
        }
        this.f2421s.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f2422t = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f2412j) {
            this.f2412j = false;
            return false;
        }
        return (this.f2412j || (viewDragHelper = this.f2411i) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        View view2;
        View view3;
        int i11;
        View viewFindViewById;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        int iMo45n = 0;
        if (this.f2418p == null) {
            this.f2418p = new WeakReference(view);
            new PathInterpolator(0.1f, 0.1f, 0.0f, 1.0f);
            Context context = view.getContext();
            AbstractC1031d.m1287q(context, R.attr.motionDurationMedium2, 300);
            AbstractC1031d.m1287q(context, R.attr.motionDurationShort3, FTPReply.FILE_STATUS_OK);
            AbstractC1031d.m1287q(context, R.attr.motionDurationShort2, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
            C3725k c3725k = this.f2404b;
            if (c3725k != null) {
                view.setBackground(c3725k);
                float elevation = this.f2408f;
                if (elevation == -1.0f) {
                    elevation = view.getElevation();
                }
                this.f2404b.m5947p(elevation);
            } else {
                ColorStateList colorStateList = this.f2405c;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(view, colorStateList);
                }
            }
            int i12 = this.f2410h == 5 ? 4 : 0;
            if (view.getVisibility() != i12) {
                view.setVisibility(i12);
            }
            m1828d();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (ViewCompat.getAccessibilityPaneTitle(view) == null) {
                ViewCompat.setAccessibilityPaneTitle(view, view.getResources().getString(R.string.side_sheet_accessibility_pane_title));
            }
        }
        int i13 = Gravity.getAbsoluteGravity(((CoordinatorLayout.LayoutParams) view.getLayoutParams()).gravity, i10) == 3 ? 1 : 0;
        AbstractC0880u abstractC0880u = this.f2403a;
        if (abstractC0880u == null || abstractC0880u.mo47p() != i13) {
            CoordinatorLayout.LayoutParams layoutParams = null;
            C3729o c3729o = this.f2406d;
            if (i13 == 0) {
                this.f2403a = new C0008a(this, 1);
                if (c3729o != null) {
                    WeakReference weakReference = this.f2418p;
                    if (weakReference != null && (view3 = (View) weakReference.get()) != null && (view3.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
                        layoutParams = (CoordinatorLayout.LayoutParams) view3.getLayoutParams();
                    }
                    if (layoutParams == null || ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin <= 0) {
                        C3728n c3728nM5963g = c3729o.m5963g();
                        c3728nM5963g.f11078f = new C3711a(0.0f);
                        c3728nM5963g.f11079g = new C3711a(0.0f);
                        C3729o c3729oM5956a = c3728nM5963g.m5956a();
                        C3725k c3725k2 = this.f2404b;
                        if (c3725k2 != null) {
                            c3725k2.setShapeAppearanceModel(c3729oM5956a);
                        }
                    }
                }
            } else {
                if (i13 != 1) {
                    C1929i.m3029k(AbstractC0074a.m155f(i13, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
                    return false;
                }
                this.f2403a = new C0008a(this, 0);
                if (c3729o != null) {
                    WeakReference weakReference2 = this.f2418p;
                    if (weakReference2 != null && (view2 = (View) weakReference2.get()) != null && (view2.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
                        layoutParams = (CoordinatorLayout.LayoutParams) view2.getLayoutParams();
                    }
                    if (layoutParams == null || ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin <= 0) {
                        C3728n c3728nM5963g2 = c3729o.m5963g();
                        c3728nM5963g2.f11077e = new C3711a(0.0f);
                        c3728nM5963g2.f11080h = new C3711a(0.0f);
                        C3729o c3729oM5956a2 = c3728nM5963g2.m5956a();
                        C3725k c3725k3 = this.f2404b;
                        if (c3725k3 != null) {
                            c3725k3.setShapeAppearanceModel(c3729oM5956a2);
                        }
                    }
                }
            }
        }
        if (this.f2411i == null) {
            this.f2411i = ViewDragHelper.create(coordinatorLayout, this.f2424v);
        }
        int iMo45n2 = this.f2403a.mo45n(view);
        coordinatorLayout.onLayoutChild(view, i10);
        this.f2415m = coordinatorLayout.getWidth();
        this.f2416n = this.f2403a.mo46o(coordinatorLayout);
        this.f2414l = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.f2417o = marginLayoutParams != null ? this.f2403a.mo39a(marginLayoutParams) : 0;
        int i14 = this.f2410h;
        if (i14 == 1 || i14 == 2) {
            iMo45n = iMo45n2 - this.f2403a.mo45n(view);
        } else if (i14 != 3) {
            if (i14 != 5) {
                C0075b.m177b(this.f2410h, "Unexpected value: ");
                return false;
            }
            iMo45n = this.f2403a.mo42k();
        }
        ViewCompat.offsetLeftAndRight(view, iMo45n);
        if (this.f2419q == null && (i11 = this.f2420r) != -1 && (viewFindViewById = coordinatorLayout.findViewById(i11)) != null) {
            this.f2419q = new WeakReference(viewFindViewById);
        }
        Iterator it = this.f2423u.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                C2467b.m3822a();
                return false;
            }
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i10, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i12, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        C0013f c0013f = (C0013f) parcelable;
        if (c0013f.getSuperState() != null) {
            super.onRestoreInstanceState(coordinatorLayout, view, c0013f.getSuperState());
        }
        int i10 = c0013f.f57b;
        if (i10 == 1 || i10 == 2) {
            i10 = 5;
        }
        this.f2410h = i10;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
        return new C0013f(super.onSaveInstanceState(coordinatorLayout, view), this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f2410h == 1 && actionMasked == 0) {
            return true;
        }
        if (m1826b()) {
            this.f2411i.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.f2421s) != null) {
            velocityTracker.recycle();
            this.f2421s = null;
        }
        if (this.f2421s == null) {
            this.f2421s = VelocityTracker.obtain();
        }
        this.f2421s.addMovement(motionEvent);
        if (m1826b() && actionMasked == 2 && !this.f2412j && m1826b() && Math.abs(this.f2422t - motionEvent.getX()) > this.f2411i.getTouchSlop()) {
            this.f2411i.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f2412j;
    }

    public SideSheetBehavior() {
        this.f2407e = new C0015h(this);
        this.f2409g = true;
        this.f2410h = 5;
        this.f2413k = 0.1f;
        this.f2420r = -1;
        this.f2423u = new LinkedHashSet();
        this.f2424v = new C0011d(this);
    }
}
