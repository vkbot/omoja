package p041d4;

import android.view.View;

/* JADX INFO: renamed from: d4.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnLayoutChangeListenerC1277k implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ View f3063a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1278l f3064b;

    public ViewOnLayoutChangeListenerC1277k(C1278l c1278l, View view) {
        this.f3064b = c1278l;
        this.f3063a = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        View view2 = this.f3063a;
        if (view2.getVisibility() == 0) {
            this.f3064b.m2281d(view2);
        }
    }
}
