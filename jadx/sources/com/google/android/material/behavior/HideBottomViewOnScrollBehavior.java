package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
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
import p050e3.ViewOnAttachStateChangeListenerC1459b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: a */
    public final LinkedHashSet f2090a;

    /* JADX INFO: renamed from: b */
    public int f2091b;

    /* JADX INFO: renamed from: c */
    public int f2092c;

    /* JADX INFO: renamed from: d */
    public TimeInterpolator f2093d;

    /* JADX INFO: renamed from: e */
    public TimeInterpolator f2094e;

    /* JADX INFO: renamed from: f */
    public int f2095f;

    /* JADX INFO: renamed from: g */
    public AccessibilityManager f2096g;

    /* JADX INFO: renamed from: h */
    public AccessibilityManagerTouchExplorationStateChangeListenerC1458a f2097h;

    /* JADX INFO: renamed from: i */
    public final boolean f2098i;

    /* JADX INFO: renamed from: j */
    public int f2099j;

    /* JADX INFO: renamed from: k */
    public ViewPropertyAnimator f2100k;

    public HideBottomViewOnScrollBehavior() {
        this.f2090a = new LinkedHashSet();
        this.f2095f = 0;
        this.f2098i = true;
        this.f2099j = 2;
    }

    /* JADX INFO: renamed from: a */
    public final void m1750a(View view) {
        if (this.f2099j == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f2100k;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f2099j = 2;
        Iterator it = this.f2090a.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
        this.f2100k = view.animate().translationY(0).setInterpolator(this.f2093d).setDuration(this.f2091b).setListener(new C1460c(0, this));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        this.f2095f = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.f2091b = AbstractC1031d.m1287q(view.getContext(), R.attr.motionDurationLong2, FTPReply.DATA_CONNECTION_OPEN);
        this.f2092c = AbstractC1031d.m1287q(view.getContext(), R.attr.motionDurationMedium4, 175);
        this.f2093d = AbstractC1031d.m1288r(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AbstractC0884a.f664d);
        this.f2094e = AbstractC1031d.m1288r(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AbstractC0884a.f663c);
        if (this.f2096g == null) {
            this.f2096g = (AccessibilityManager) ContextCompat.getSystemService(view.getContext(), AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.f2096g;
        if (accessibilityManager != null && this.f2097h == null) {
            AccessibilityManagerTouchExplorationStateChangeListenerC1458a accessibilityManagerTouchExplorationStateChangeListenerC1458a = new AccessibilityManagerTouchExplorationStateChangeListenerC1458a(this, view, 0);
            this.f2097h = accessibilityManagerTouchExplorationStateChangeListenerC1458a;
            accessibilityManager.addTouchExplorationStateChangeListener(accessibilityManagerTouchExplorationStateChangeListenerC1458a);
            view.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC1459b(0, this));
        }
        return super.onLayoutChild(coordinatorLayout, view, i10);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        AccessibilityManager accessibilityManager;
        if (i11 <= 0) {
            if (i11 < 0) {
                m1750a(view);
                return;
            }
            return;
        }
        if (this.f2099j == 1) {
            return;
        }
        if (this.f2098i && (accessibilityManager = this.f2096g) != null && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f2100k;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f2099j = 1;
        Iterator it = this.f2090a.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
        this.f2100k = view.animate().translationY(this.f2095f).setInterpolator(this.f2094e).setDuration(this.f2092c).setListener(new C1460c(0, this));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
        return i10 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2090a = new LinkedHashSet();
        this.f2095f = 0;
        this.f2098i = true;
        this.f2099j = 2;
    }
}
