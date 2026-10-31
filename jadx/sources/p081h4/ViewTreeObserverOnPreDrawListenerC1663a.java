package p081h4;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.transformation.ExpandableBehavior;
import p175q3.InterfaceC3060a;

/* JADX INFO: renamed from: h4.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC1663a implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ View f4255b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f4256c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ InterfaceC3060a f4257d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ ExpandableBehavior f4258e;

    public ViewTreeObserverOnPreDrawListenerC1663a(ExpandableBehavior expandableBehavior, View view, int i10, InterfaceC3060a interfaceC3060a) {
        this.f4258e = expandableBehavior;
        this.f4255b = view;
        this.f4256c = i10;
        this.f4257d = interfaceC3060a;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        View view = this.f4255b;
        view.getViewTreeObserver().removeOnPreDrawListener(this);
        ExpandableBehavior expandableBehavior = this.f4258e;
        if (expandableBehavior.f2606a == this.f4256c) {
            Object obj = this.f4257d;
            expandableBehavior.mo1878a((View) obj, view, ((FloatingActionButton) obj).f2364p.f5346c, false);
        }
        return false;
    }
}
