package p047e0;

import android.view.View;
import com.example.navistart.VibVodPopUp;
import p000a.AbstractC0000a;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.k3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnLongClickListenerC1381k3 implements View.OnLongClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3295b;

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f3295b) {
            case 0:
                C1652b.m2734a();
                C1652b.m2736d().carsavvod(1);
                AbstractC0000a.m21v(VibVodPopUp.f1704b, VibVodPopUp.f1705c);
                throw null;
            case 1:
                C1652b.m2734a();
                C1652b.m2736d().carsavvod(2);
                AbstractC0000a.m21v(VibVodPopUp.f1704b, VibVodPopUp.f1705c);
                throw null;
            default:
                C1652b.m2734a();
                C1652b.m2736d().carsavvod(3);
                AbstractC0000a.m21v(VibVodPopUp.f1704b, VibVodPopUp.f1705c);
                throw null;
        }
    }
}
