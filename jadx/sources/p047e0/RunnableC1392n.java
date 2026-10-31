package p047e0;

import android.util.Log;
import android.widget.TextView;
import com.example.navistart.CarControlActivity;
import com.example.navistart.MainActivity;
import com.example.navistart.R;
import com.example.navistart.mainview.HeatingButtonView;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1392n implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3333b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ CarControlActivity f3334c;

    public /* synthetic */ RunnableC1392n(CarControlActivity carControlActivity, int i10) {
        this.f3333b = i10;
        this.f3334c = carControlActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f3333b;
        int i11 = 1;
        CarControlActivity carControlActivity = this.f3334c;
        switch (i10) {
            case 0:
                int i12 = CarControlActivity.f1246t;
                carControlActivity.moveTaskToBack(true);
                return;
            case 1:
                HeatingButtonView heatingButtonView = carControlActivity.f1252g;
                C1652b.m2734a();
                heatingButtonView.m1670c(C1652b.m2736d().cargetheat(1));
                HeatingButtonView heatingButtonView2 = carControlActivity.f1253h;
                C1652b.m2734a();
                heatingButtonView2.m1670c(C1652b.m2736d().cargetvent(1));
                HeatingButtonView heatingButtonView3 = carControlActivity.f1254i;
                C1652b.m2734a();
                heatingButtonView3.m1670c(C1652b.m2736d().cargetheat(2));
                HeatingButtonView heatingButtonView4 = carControlActivity.f1255j;
                C1652b.m2734a();
                heatingButtonView4.m1670c(C1652b.m2736d().cargetvent(2));
                HeatingButtonView heatingButtonView5 = carControlActivity.f1256k;
                C1652b.m2734a();
                heatingButtonView5.m1671d(C1652b.m2736d().getrulheat());
                HeatingButtonView heatingButtonView6 = carControlActivity.f1257l;
                C1652b.m2734a();
                heatingButtonView6.m1671d(C1652b.m2736d().getlobheat());
                HeatingButtonView heatingButtonView7 = carControlActivity.f1258m;
                C1652b.m2734a();
                heatingButtonView7.m1671d(C1652b.m2736d().getzadheat());
                HeatingButtonView heatingButtonView8 = carControlActivity.f1260o;
                C1652b.m2734a();
                heatingButtonView8.m1670c(C1652b.m2736d().getcarZadSeatHeat(0));
                HeatingButtonView heatingButtonView9 = carControlActivity.f1262q;
                C1652b.m2734a();
                heatingButtonView9.m1670c(C1652b.m2736d().getcarZadSeatVent(0));
                HeatingButtonView heatingButtonView10 = carControlActivity.f1259n;
                C1652b.m2734a();
                heatingButtonView10.m1670c(C1652b.m2736d().getcarZadSeatHeat(1));
                HeatingButtonView heatingButtonView11 = carControlActivity.f1261p;
                C1652b.m2734a();
                heatingButtonView11.m1670c(C1652b.m2736d().getcarZadSeatVent(1));
                TextView textView = carControlActivity.f1263r;
                StringBuilder sb = new StringBuilder();
                sb.append(carControlActivity.getResources().getString(R.string.battary));
                sb.append(" ");
                C1652b.m2734a();
                sb.append(C1652b.m2736d().akbvolt());
                sb.append(carControlActivity.getResources().getString(R.string.volt));
                textView.setText(sb.toString());
                return;
            default:
                Boolean bool = carControlActivity.f1251f;
                if (MainActivity.m1426w() && bool.booleanValue()) {
                    throw null;
                }
                if (MainActivity.m1425v(carControlActivity.getApplication()) && bool.booleanValue()) {
                    throw null;
                }
                carControlActivity.runOnUiThread(new RunnableC1392n(carControlActivity, i11));
                Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-5, 68, -71, -35, -96, -22, -123, 67, -50, 89, -79}, new byte[]{-81, 45, -44, -72, -46, -65, -11, 39}));
                return;
        }
    }
}
