package p060f3;

import android.view.View;
import com.google.android.material.bottomappbar.BottomAppBar$Behavior;
import p142n0.C2467b;

/* JADX INFO: renamed from: f3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnLayoutChangeListenerC1535a implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ BottomAppBar$Behavior f3784a;

    public ViewOnLayoutChangeListenerC1535a(BottomAppBar$Behavior bottomAppBar$Behavior) {
        this.f3784a = bottomAppBar$Behavior;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (this.f3784a.f2122l.get() == null) {
            view.removeOnLayoutChangeListener(this);
        } else {
            C2467b.m3822a();
        }
    }
}
