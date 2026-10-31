package e0;

import android.util.Log;
import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.CarControlActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class o implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1912b;
    public final /* synthetic */ CarControlActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o(CarControlActivity carControlActivity, int i9) {
        this.f1912b = i9;
        this.c = carControlActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f1912b;
        CarControlActivity carControlActivity = this.c;
        switch (i9) {
            case 0:
                int iA = carControlActivity.f659g.a();
                if (iA > 1) {
                    carControlActivity.f660h.c(1);
                }
                h0.b.a();
                h0.b.d().carsetheat(iA, 1);
                Log.d(carControlActivity.f657b, m.h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iA);
                carControlActivity.v();
                carControlActivity.s();
                break;
            case 1:
                int iA2 = carControlActivity.f660h.a();
                if (iA2 > 1) {
                    carControlActivity.f659g.c(1);
                }
                h0.b.a();
                h0.b.d().carsetvent(iA2, 1);
                Log.d(carControlActivity.f657b, m.h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iA2);
                carControlActivity.v();
                carControlActivity.s();
                break;
            case 2:
                int iA3 = carControlActivity.f661i.a();
                if (iA3 > 1) {
                    carControlActivity.f662j.c(1);
                }
                h0.b.a();
                h0.b.d().carsetheat(iA3, 2);
                Log.d(carControlActivity.f657b, m.h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iA3);
                carControlActivity.v();
                carControlActivity.s();
                break;
            case 3:
                int iA4 = carControlActivity.f662j.a();
                if (iA4 > 1) {
                    carControlActivity.f661i.c(1);
                }
                h0.b.a();
                h0.b.d().carsetvent(iA4, 2);
                Log.d(carControlActivity.f657b, m.h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iA4);
                carControlActivity.v();
                carControlActivity.s();
                break;
            case 4:
                int iA5 = carControlActivity.f666n.a();
                if (iA5 > 1) {
                    carControlActivity.f668p.c(1);
                }
                h0.b.a();
                h0.b.d().carZadSeatHeat(1, iA5);
                carControlActivity.v();
                carControlActivity.s();
                break;
            case 5:
                int i10 = CarControlActivity.t;
                carControlActivity.moveTaskToBack(true);
                break;
            case 6:
                int iA6 = carControlActivity.f668p.a();
                if (iA6 > 1) {
                    carControlActivity.f666n.c(1);
                }
                h0.b.a();
                h0.b.d().carZadSeatVent(1, iA6);
                carControlActivity.v();
                carControlActivity.s();
                break;
            case 7:
                int iA7 = carControlActivity.f667o.a();
                if (iA7 > 1) {
                    carControlActivity.f669q.c(1);
                }
                h0.b.a();
                h0.b.d().carZadSeatHeat(0, iA7);
                carControlActivity.v();
                carControlActivity.s();
                break;
            case 8:
                int iA8 = carControlActivity.f669q.a();
                if (iA8 > 1) {
                    carControlActivity.f667o.c(1);
                }
                h0.b.a();
                h0.b.d().carZadSeatVent(0, iA8);
                carControlActivity.v();
                carControlActivity.s();
                break;
            case 9:
                int i11 = CarControlActivity.t;
                carControlActivity.moveTaskToBack(true);
                break;
            case 10:
                int iA9 = carControlActivity.f663k.a();
                if (iA9 == 3) {
                    h0.b.a();
                    h0.b.d().rulheatonoff(Boolean.TRUE);
                } else if (iA9 == 1) {
                    h0.b.a();
                    h0.b.d().rulheatonoff(Boolean.FALSE);
                }
                carControlActivity.v();
                carControlActivity.s();
                break;
            case 11:
                int iA10 = carControlActivity.f664l.a();
                if (iA10 == 3) {
                    h0.b.a();
                    h0.b.d().lobheatonoff(Boolean.TRUE);
                } else if (iA10 == 1) {
                    h0.b.a();
                    h0.b.d().lobheatonoff(Boolean.FALSE);
                }
                carControlActivity.v();
                carControlActivity.s();
                break;
            default:
                int iA11 = carControlActivity.f665m.a();
                if (iA11 == 3) {
                    h0.b.a();
                    h0.b.d().zadheatonoff(Boolean.TRUE);
                } else if (iA11 == 1) {
                    h0.b.a();
                    h0.b.d().zadheatonoff(Boolean.FALSE);
                }
                carControlActivity.v();
                carControlActivity.s();
                break;
        }
    }
}
