package p047e0;

import android.view.View;
import com.example.navistart.VibVodPopUp;
import p000a.AbstractC0000a;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.j3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC1376j3 implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3285b;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f3285b) {
            case 0:
                C1652b.m2734a();
                C1652b.m2736d().carsetvod(1);
                AbstractC0000a.m21v(VibVodPopUp.f1704b, VibVodPopUp.f1705c);
                throw null;
            case 1:
                C1652b.m2734a();
                C1652b.m2736d().carsetvod(2);
                AbstractC0000a.m21v(VibVodPopUp.f1704b, VibVodPopUp.f1705c);
                throw null;
            case 2:
                C1652b.m2734a();
                C1652b.m2736d().carsetvod(3);
                AbstractC0000a.m21v(VibVodPopUp.f1704b, VibVodPopUp.f1705c);
                throw null;
            default:
                AbstractC0000a.m21v(VibVodPopUp.f1704b, VibVodPopUp.f1705c);
                throw null;
        }
    }
}
