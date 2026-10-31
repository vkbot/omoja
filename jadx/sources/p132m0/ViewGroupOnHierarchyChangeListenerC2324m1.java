package p132m0;

import android.view.View;
import android.view.ViewGroup;
import p121l0.C2194a;

/* JADX INFO: renamed from: m0.m1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewGroupOnHierarchyChangeListenerC2324m1 implements ViewGroup.OnHierarchyChangeListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2329n1 f6220b;

    public ViewGroupOnHierarchyChangeListenerC2324m1(C2329n1 c2329n1) {
        this.f6220b = c2329n1;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        C2194a c2194a;
        if (((ViewGroup) view).getChildCount() != 0 || (c2194a = (C2194a) this.f6220b.getParentFragment()) == null) {
            return;
        }
        c2194a.dismiss();
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
    }
}
