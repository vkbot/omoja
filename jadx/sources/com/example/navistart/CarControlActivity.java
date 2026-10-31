package com.example.navistart;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.example.navistart.CarControlActivity;
import com.example.navistart.mainview.HeatingButtonView;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.RunnableC1392n;
import p078h0.C1652b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class CarControlActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: t */
    public static final /* synthetic */ int f1246t = 0;

    /* JADX INFO: renamed from: d */
    public ScheduledFuture f1249d;

    /* JADX INFO: renamed from: e */
    public ScheduledFuture f1250e;

    /* JADX INFO: renamed from: g */
    public HeatingButtonView f1252g;

    /* JADX INFO: renamed from: h */
    public HeatingButtonView f1253h;

    /* JADX INFO: renamed from: i */
    public HeatingButtonView f1254i;

    /* JADX INFO: renamed from: j */
    public HeatingButtonView f1255j;

    /* JADX INFO: renamed from: k */
    public HeatingButtonView f1256k;

    /* JADX INFO: renamed from: l */
    public HeatingButtonView f1257l;

    /* JADX INFO: renamed from: m */
    public HeatingButtonView f1258m;

    /* JADX INFO: renamed from: n */
    public HeatingButtonView f1259n;

    /* JADX INFO: renamed from: o */
    public HeatingButtonView f1260o;

    /* JADX INFO: renamed from: p */
    public HeatingButtonView f1261p;

    /* JADX INFO: renamed from: q */
    public HeatingButtonView f1262q;

    /* JADX INFO: renamed from: r */
    public TextView f1263r;

    /* JADX INFO: renamed from: b */
    public final String f1247b = AbstractC1387m.m2421h(new byte[]{-49, 40, -90, -124, 92, -125, 100, -34, -29, 37, -107, -92, 71, -124, 102, -59, -8, 48}, new byte[]{-116, 73, -44, -57, 51, -19, 16, -84});

    /* JADX INFO: renamed from: c */
    public final ScheduledThreadPoolExecutor f1248c = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{62, 26, 23, -119, -69, 86, -67, 32, 18, 23, 36, -87, -96, 81, -65, 59, 9, 2}, new byte[]{125, 123, 101, -54, -44, 56, -55, 82}));

    /* JADX INFO: renamed from: f */
    public final Boolean f1251f = Boolean.TRUE;

    /* JADX INFO: renamed from: s */
    public final RunnableC1392n f1264s = new RunnableC1392n(this, 0);

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BlackActivity.m1391t(this);
        setContentView(R.layout.activity_car_control);
        final int i10 = 5;
        ((Button) findViewById(R.id.button22)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i10;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i11) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i12 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i13 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        final int i11 = 9;
        ((RelativeLayout) findViewById(R.id.carcontrolactivity)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i11;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i12) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i13 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i14 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        this.f1263r = (TextView) findViewById(R.id.textView34);
        HeatingButtonView heatingButtonView = (HeatingButtonView) findViewById(R.id.heat_vil_button_view);
        this.f1256k = heatingButtonView;
        final int i12 = 10;
        heatingButtonView.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i12;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i13) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i14 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i15 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        HeatingButtonView heatingButtonView2 = (HeatingButtonView) findViewById(R.id.heat_lob_button_view);
        this.f1257l = heatingButtonView2;
        final int i13 = 11;
        heatingButtonView2.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i13;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i14) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i15 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i16 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        HeatingButtonView heatingButtonView3 = (HeatingButtonView) findViewById(R.id.heat_zad_button_view);
        this.f1258m = heatingButtonView3;
        final int i14 = 12;
        heatingButtonView3.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i15 = i14;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i15) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i16 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i17 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        HeatingButtonView heatingButtonView4 = (HeatingButtonView) findViewById(R.id.heating_left_button_view);
        this.f1252g = heatingButtonView4;
        final int i15 = 0;
        heatingButtonView4.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i16 = i15;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i16) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i17 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i18 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        HeatingButtonView heatingButtonView5 = (HeatingButtonView) findViewById(R.id.vent_left_button_view);
        this.f1253h = heatingButtonView5;
        final int i16 = 1;
        heatingButtonView5.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i17 = i16;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i17) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i18 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i19 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        HeatingButtonView heatingButtonView6 = (HeatingButtonView) findViewById(R.id.heating_right_button_view);
        this.f1254i = heatingButtonView6;
        final int i17 = 2;
        heatingButtonView6.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i18 = i17;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i18) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i19 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i110 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        HeatingButtonView heatingButtonView7 = (HeatingButtonView) findViewById(R.id.vent_right_button_view);
        this.f1255j = heatingButtonView7;
        final int i18 = 3;
        heatingButtonView7.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i19 = i18;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i19) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i110 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i111 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        HeatingButtonView heatingButtonView8 = (HeatingButtonView) findViewById(R.id.heat_zad_seat_r_button_view);
        this.f1259n = heatingButtonView8;
        final int i19 = 4;
        heatingButtonView8.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i110 = i19;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i110) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i111 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i112 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        HeatingButtonView heatingButtonView9 = (HeatingButtonView) findViewById(R.id.vent_zad_seat_r_button_view);
        this.f1261p = heatingButtonView9;
        final int i20 = 6;
        heatingButtonView9.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i110 = i20;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i110) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i111 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i112 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        HeatingButtonView heatingButtonView10 = (HeatingButtonView) findViewById(R.id.heat_zad_seat_l_button_view);
        this.f1260o = heatingButtonView10;
        final int i21 = 7;
        heatingButtonView10.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i110 = i21;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i110) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i111 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i112 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        HeatingButtonView heatingButtonView11 = (HeatingButtonView) findViewById(R.id.vent_zad_seat_l_button_view);
        this.f1262q = heatingButtonView11;
        final int i22 = 8;
        heatingButtonView11.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ CarControlActivity f3352c;

            {
                this.f3352c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i110 = i22;
                CarControlActivity carControlActivity = this.f3352c;
                switch (i110) {
                    case 0:
                        int iM1668a = carControlActivity.f1252g.m1668a();
                        if (iM1668a > 1) {
                            carControlActivity.f1253h.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-72, 57, -58, 46, -100, -52, -127, 104, -81, 23, -38, 57, -125, -21, -118, 51, -5}, new byte[]{-37, 85, -81, 77, -9, -124, -28, 9}) + iM1668a);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 1:
                        int iM1668a2 = carControlActivity.f1253h.m1668a();
                        if (iM1668a2 > 1) {
                            carControlActivity.f1252g.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a2, 1);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{35, -74, 104, -26, 74, -9, -2, -118, 52, -104, 116, -15, 85, -48, -11, -47, 96}, new byte[]{64, -38, 1, -123, 33, -65, -101, -21}) + iM1668a2);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 2:
                        int iM1668a3 = carControlActivity.f1254i.m1668a();
                        if (iM1668a3 > 1) {
                            carControlActivity.f1255j.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(iM1668a3, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-58, -75, -127, 19, 24, 33, 119, 29, -47, -101, -99, 4, 7, 6, 124, 70, -123}, new byte[]{-91, -39, -24, 112, 115, 105, 18, 124}) + iM1668a3);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 3:
                        int iM1668a4 = carControlActivity.f1255j.m1668a();
                        if (iM1668a4 > 1) {
                            carControlActivity.f1254i.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(iM1668a4, 2);
                        Log.d(carControlActivity.f1247b, AbstractC1387m.m2421h(new byte[]{-50, 79, 93, -17, 54, -54, 22, 20, -39, 97, 65, -8, 41, -19, 29, 79, -115}, new byte[]{-83, 35, 52, -116, 93, -126, 115, 117}) + iM1668a4);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 4:
                        int iM1668a5 = carControlActivity.f1259n.m1668a();
                        if (iM1668a5 > 1) {
                            carControlActivity.f1261p.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(1, iM1668a5);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 5:
                        int i111 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 6:
                        int iM1668a6 = carControlActivity.f1261p.m1668a();
                        if (iM1668a6 > 1) {
                            carControlActivity.f1259n.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(1, iM1668a6);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 7:
                        int iM1668a7 = carControlActivity.f1260o.m1668a();
                        if (iM1668a7 > 1) {
                            carControlActivity.f1262q.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatHeat(0, iM1668a7);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 8:
                        int iM1668a8 = carControlActivity.f1262q.m1668a();
                        if (iM1668a8 > 1) {
                            carControlActivity.f1260o.m1670c(1);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().carZadSeatVent(0, iM1668a8);
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 9:
                        int i112 = CarControlActivity.f1246t;
                        carControlActivity.moveTaskToBack(true);
                        break;
                    case 10:
                        int iM1668a9 = carControlActivity.f1256k.m1668a();
                        if (iM1668a9 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                        } else if (iM1668a9 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    case 11:
                        int iM1668a10 = carControlActivity.f1257l.m1668a();
                        if (iM1668a10 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                        } else if (iM1668a10 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                    default:
                        int iM1668a11 = carControlActivity.f1258m.m1668a();
                        if (iM1668a11 == 3) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                        } else if (iM1668a11 == 1) {
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                        }
                        carControlActivity.m1396v();
                        carControlActivity.m1393s();
                        break;
                }
            }
        });
        runOnUiThread(new RunnableC1392n(this, 1));
        m1396v();
        m1393s();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        m1394t();
        m1395u();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        ScheduledFuture scheduledFuture = this.f1249d;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f1249d.cancel(true);
        }
        m1395u();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        runOnUiThread(new RunnableC1392n(this, 1));
        m1396v();
        m1393s();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        m1394t();
        m1395u();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        m1394t();
        m1395u();
    }

    /* JADX INFO: renamed from: s */
    public final void m1393s() {
        m1395u();
        ScheduledFuture scheduledFuture = this.f1250e;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f1250e.cancel(true);
        }
        this.f1250e = this.f1248c.schedule(this.f1264s, 30000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: t */
    public final void m1394t() {
        ScheduledFuture scheduledFuture = this.f1249d;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f1249d.cancel(true);
    }

    /* JADX INFO: renamed from: u */
    public final void m1395u() {
        ScheduledFuture scheduledFuture = this.f1250e;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f1250e.cancel(true);
    }

    /* JADX INFO: renamed from: v */
    public final void m1396v() {
        ScheduledFuture scheduledFuture = this.f1249d;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f1249d.cancel(true);
        }
        this.f1249d = this.f1248c.scheduleWithFixedDelay(new RunnableC1392n(this, 2), 5000L, 5000L, TimeUnit.MILLISECONDS);
    }
}
