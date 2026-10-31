package e0;

import android.util.Log;
import android.widget.TextView;
import com.example.navistart.CarControlActivity;
import com.example.navistart.MainActivity;
import com.example.navistart.mainview.HeatingButtonView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1903b;
    public final /* synthetic */ CarControlActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ n(CarControlActivity carControlActivity, int i9) {
        this.f1903b = i9;
        this.c = carControlActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f1903b;
        CarControlActivity carControlActivity = this.c;
        switch (i9) {
            case 0:
                int i10 = CarControlActivity.t;
                carControlActivity.moveTaskToBack(true);
                return;
            case 1:
                HeatingButtonView heatingButtonView = carControlActivity.f659g;
                h0.b.a();
                heatingButtonView.c(h0.b.d().cargetheat(1));
                HeatingButtonView heatingButtonView2 = carControlActivity.f660h;
                h0.b.a();
                heatingButtonView2.c(h0.b.d().cargetvent(1));
                HeatingButtonView heatingButtonView3 = carControlActivity.f661i;
                h0.b.a();
                heatingButtonView3.c(h0.b.d().cargetheat(2));
                HeatingButtonView heatingButtonView4 = carControlActivity.f662j;
                h0.b.a();
                heatingButtonView4.c(h0.b.d().cargetvent(2));
                HeatingButtonView heatingButtonView5 = carControlActivity.f663k;
                h0.b.a();
                heatingButtonView5.d(h0.b.d().getrulheat());
                HeatingButtonView heatingButtonView6 = carControlActivity.f664l;
                h0.b.a();
                heatingButtonView6.d(h0.b.d().getlobheat());
                HeatingButtonView heatingButtonView7 = carControlActivity.f665m;
                h0.b.a();
                heatingButtonView7.d(h0.b.d().getzadheat());
                HeatingButtonView heatingButtonView8 = carControlActivity.f667o;
                h0.b.a();
                heatingButtonView8.c(h0.b.d().getcarZadSeatHeat(0));
                HeatingButtonView heatingButtonView9 = carControlActivity.f669q;
                h0.b.a();
                heatingButtonView9.c(h0.b.d().getcarZadSeatVent(0));
                HeatingButtonView heatingButtonView10 = carControlActivity.f666n;
                h0.b.a();
                heatingButtonView10.c(h0.b.d().getcarZadSeatHeat(1));
                HeatingButtonView heatingButtonView11 = carControlActivity.f668p;
                h0.b.a();
                heatingButtonView11.c(h0.b.d().getcarZadSeatVent(1));
                TextView textView = carControlActivity.r;
                StringBuilder sb = new StringBuilder();
                sb.append(carControlActivity.getResources().getString(2131951843));
                sb.append(" ");
                h0.b.a();
                sb.append(h0.b.d().akbvolt());
                sb.append(carControlActivity.getResources().getString(2131952822));
                textView.setText(sb.toString());
                return;
            default:
                Boolean bool = carControlActivity.f658f;
                if (MainActivity.w() && bool.booleanValue()) {
                    throw null;
                }
                if (MainActivity.v(carControlActivity.getApplication()) && bool.booleanValue()) {
                    throw null;
                }
                carControlActivity.runOnUiThread(new n(carControlActivity, 1));
                Log.d(carControlActivity.f657b, m.h(new byte[]{-5, 68, -71, -35, -96, -22, -123, 67, -50, 89, -79}, new byte[]{-81, 45, -44, -72, -46, -65, -11, 39}));
                return;
        }
    }
}
