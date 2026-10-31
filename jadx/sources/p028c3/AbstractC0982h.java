package p028c3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: renamed from: c3.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0982h extends CoordinatorLayout.Behavior {

    /* JADX INFO: renamed from: a */
    public C0983i f927a;

    /* JADX INFO: renamed from: b */
    public int f928b;

    public AbstractC0982h() {
        this.f928b = 0;
    }

    /* JADX INFO: renamed from: a */
    public final int m1102a() {
        C0983i c0983i = this.f927a;
        if (c0983i != null) {
            return c0983i.f931c;
        }
        return 0;
    }

    /* JADX INFO: renamed from: b */
    public void mo1100b(CoordinatorLayout coordinatorLayout, View view, int i10) {
        coordinatorLayout.onLayoutChild(view, i10);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        mo1100b(coordinatorLayout, view, i10);
        if (this.f927a == null) {
            C0983i c0983i = new C0983i();
            c0983i.f932d = view;
            this.f927a = c0983i;
        }
        C0983i c0983i2 = this.f927a;
        View view2 = (View) c0983i2.f932d;
        c0983i2.f929a = view2.getTop();
        c0983i2.f930b = view2.getLeft();
        this.f927a.m1105b();
        int i11 = this.f928b;
        if (i11 == 0) {
            return true;
        }
        C0983i c0983i3 = this.f927a;
        if (c0983i3.f931c != i11) {
            c0983i3.f931c = i11;
            c0983i3.m1105b();
        }
        this.f928b = 0;
        return true;
    }

    public AbstractC0982h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f928b = 0;
    }
}
