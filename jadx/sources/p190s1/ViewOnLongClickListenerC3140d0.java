package p190s1;

import android.view.View;

/* JADX INFO: renamed from: s1.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnLongClickListenerC3140d0 implements View.OnLongClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8991b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3166q0 f8992c;

    public /* synthetic */ ViewOnLongClickListenerC3140d0(C3166q0 c3166q0, int i10) {
        this.f8991b = i10;
        this.f8992c = c3166q0;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f8991b) {
            case 0:
                this.f8992c.m5068m();
                break;
            default:
                C3166q0 c3166q0 = this.f8992c;
                if (!c3166q0.f9183s) {
                    c3166q0.m5068m();
                }
                c3166q0.f9186v = ((C3156l0) view).f9080b.f9043a;
                c3166q0.m5037A();
                break;
        }
        return true;
    }
}
