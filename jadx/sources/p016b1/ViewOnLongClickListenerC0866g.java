package p016b1;

import android.view.View;
import androidx.fragment.app.Fragment;
import p057f0.C1523a;
import p057f0.C1526d;
import p057f0.C1527e;

/* JADX INFO: renamed from: b1.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnLongClickListenerC0866g implements View.OnLongClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f571b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Fragment f572c;

    public /* synthetic */ ViewOnLongClickListenerC0866g(Fragment fragment, int i10) {
        this.f571b = i10;
        this.f572c = fragment;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f571b) {
            case 0:
                ((C0867h) this.f572c).f580f.mo924c();
                break;
            case 1:
                ((C1523a) this.f572c).f3739b.mo924c();
                break;
            case 2:
                ((C1526d) this.f572c).f3745b.mo924c();
                break;
            default:
                ((C1527e) this.f572c).f3746b.mo924c();
                break;
        }
        return true;
    }
}
