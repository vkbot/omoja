package com.google.android.material.behavior;

import ai.onnxruntime.AbstractC0074a;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.AbstractC1034g;
import com.example.navistart.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.commons.net.ftp.FTPReply;
import p018b3.AbstractC0884a;
import p050e3.AccessibilityManagerTouchExplorationStateChangeListenerC1458a;
import p050e3.C1460c;
import p050e3.C1461d;
import p050e3.ViewOnAttachStateChangeListenerC1459b;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class HideViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: a */
    public C1461d f2101a;

    /* JADX INFO: renamed from: b */
    public AccessibilityManager f2102b;

    /* JADX INFO: renamed from: c */
    public AccessibilityManagerTouchExplorationStateChangeListenerC1458a f2103c;

    /* JADX INFO: renamed from: d */
    public final boolean f2104d;

    /* JADX INFO: renamed from: e */
    public final LinkedHashSet f2105e;

    /* JADX INFO: renamed from: f */
    public int f2106f;

    /* JADX INFO: renamed from: g */
    public int f2107g;

    /* JADX INFO: renamed from: h */
    public TimeInterpolator f2108h;

    /* JADX INFO: renamed from: i */
    public TimeInterpolator f2109i;

    /* JADX INFO: renamed from: j */
    public int f2110j;

    /* JADX INFO: renamed from: k */
    public int f2111k;

    /* JADX INFO: renamed from: l */
    public ViewPropertyAnimator f2112l;

    public HideViewOnScrollBehavior() {
        this.f2104d = true;
        this.f2105e = new LinkedHashSet();
        this.f2110j = 0;
        this.f2111k = 2;
    }

    /* JADX INFO: renamed from: a */
    public final void m1751a(int i10) {
        int i11;
        C1461d c1461d = this.f2101a;
        if (c1461d != null) {
            switch (c1461d.f3544a) {
                case 0:
                    i11 = 1;
                    break;
                case 1:
                    i11 = 2;
                    break;
                default:
                    i11 = 0;
                    break;
            }
            if (i11 == i10) {
                return;
            }
        }
        if (i10 == 0) {
            this.f2101a = new C1461d(2);
            return;
        }
        if (i10 == 1) {
            this.f2101a = new C1461d(0);
        } else if (i10 == 2) {
            this.f2101a = new C1461d(1);
        } else {
            C1929i.m3029k(AbstractC0074a.m155f(i10, "Invalid view edge position value: ", ". Must be 0, 1 or 2."));
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1752b(View view) {
        if (this.f2111k == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f2112l;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f2111k = 2;
        Iterator it = this.f2105e.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
        this.f2101a.getClass();
        this.f2112l = this.f2101a.m2519k(0, view).setInterpolator(this.f2108h).setDuration(this.f2106f).setListener(new C1460c(1, this));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        int measuredHeight;
        int i11;
        if (this.f2102b == null) {
            this.f2102b = (AccessibilityManager) ContextCompat.getSystemService(view.getContext(), AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.f2102b;
        if (accessibilityManager != null && this.f2103c == null) {
            AccessibilityManagerTouchExplorationStateChangeListenerC1458a accessibilityManagerTouchExplorationStateChangeListenerC1458a = new AccessibilityManagerTouchExplorationStateChangeListenerC1458a(this, view, 1);
            this.f2103c = accessibilityManagerTouchExplorationStateChangeListenerC1458a;
            accessibilityManager.addTouchExplorationStateChangeListener(accessibilityManagerTouchExplorationStateChangeListenerC1458a);
            view.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC1459b(1, this));
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i12 = ((CoordinatorLayout.LayoutParams) view.getLayoutParams()).gravity;
        if (i12 == 80 || i12 == 81) {
            m1751a(1);
        } else {
            int absoluteGravity = Gravity.getAbsoluteGravity(i12, i10);
            m1751a((absoluteGravity == 3 || absoluteGravity == 19) ? 2 : 0);
        }
        switch (this.f2101a.f3544a) {
            case 0:
                measuredHeight = view.getMeasuredHeight();
                i11 = marginLayoutParams.bottomMargin;
                break;
            case 1:
                measuredHeight = view.getMeasuredWidth();
                i11 = marginLayoutParams.leftMargin;
                break;
            default:
                measuredHeight = view.getMeasuredWidth();
                i11 = marginLayoutParams.rightMargin;
                break;
        }
        this.f2110j = measuredHeight + i11;
        this.f2106f = AbstractC1031d.m1287q(view.getContext(), R.attr.motionDurationLong2, FTPReply.DATA_CONNECTION_OPEN);
        this.f2107g = AbstractC1031d.m1287q(view.getContext(), R.attr.motionDurationMedium4, 175);
        this.f2108h = AbstractC1031d.m1288r(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AbstractC0884a.f664d);
        this.f2109i = AbstractC1031d.m1288r(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AbstractC0884a.f663c);
        return super.onLayoutChild(coordinatorLayout, view, i10);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        AccessibilityManager accessibilityManager;
        if (i11 <= 0) {
            if (i11 < 0) {
                m1752b(view);
                return;
            }
            return;
        }
        if (this.f2111k == 1) {
            return;
        }
        if (this.f2104d && (accessibilityManager = this.f2102b) != null && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f2112l;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f2111k = 1;
        Iterator it = this.f2105e.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
        this.f2112l = this.f2101a.m2519k(this.f2110j, view).setInterpolator(this.f2109i).setDuration(this.f2107g).setListener(new C1460c(1, this));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
        return i10 == 2;
    }

    public HideViewOnScrollBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2104d = true;
        this.f2105e = new LinkedHashSet();
        this.f2110j = 0;
        this.f2111k = 2;
    }
}
