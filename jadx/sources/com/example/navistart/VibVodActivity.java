package com.example.navistart;

import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.activity.RunnableC0131f;
import androidx.appcompat.app.AppCompatActivity;
import com.example.navistart.MainActivity;
import com.example.navistart.VibVodActivity;
import com.example.navistart.mainview.HeatingButtonView;
import com.google.protobuf.AbstractC1178q;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1343d0;
import p047e0.C1440x1;
import p047e0.RunnableC1361g3;
import p078h0.C1652b;
import p206u0.C3277a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class VibVodActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: g */
    public static Boolean f1698g = Boolean.FALSE;

    /* JADX INFO: renamed from: c */
    public HeatingButtonView f1700c;

    /* JADX INFO: renamed from: d */
    public HeatingButtonView f1701d;

    /* JADX INFO: renamed from: e */
    public HeatingButtonView f1702e;

    /* JADX INFO: renamed from: b */
    public final ScheduledThreadPoolExecutor f1699b = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{113, -84, 54, -85, -38, ByteCompanionObject.MIN_VALUE, -74, -92, 83, -84, 34, -108, -63, -99}, new byte[]{39, -59, 84, -3, -75, -28, -9, -57}));

    /* JADX INFO: renamed from: f */
    public final Boolean f1703f = Boolean.TRUE;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BlackActivity.m1391t(this);
        setContentView(R.layout.activity_vibor_vod);
        C1343d0.m2389d(this);
        boolean zM1426w = MainActivity.m1426w();
        Boolean bool = this.f1703f;
        if (zM1426w && bool.booleanValue()) {
            throw null;
        }
        if (MainActivity.m1425v(this) && bool.booleanValue()) {
            throw null;
        }
        final int i10 = 0;
        ((RelativeLayout) findViewById(R.id.vibvodactivity)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.h3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ VibVodActivity f3265c;

            {
                this.f3265c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i10;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                VibVodActivity vibVodActivity = this.f3265c;
                switch (i11) {
                    case 0:
                        Boolean bool2 = VibVodActivity.f1698g;
                        vibVodActivity.finish();
                        return;
                    case 1:
                        Boolean bool3 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool3.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool3.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(1);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(1);
                            C1652b.m2734a().m2754e().f3363e = 1;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                    case 2:
                        Boolean bool4 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool4.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool4.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(2);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(2);
                            C1652b.m2734a().m2754e().f3363e = 2;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                    default:
                        Boolean bool5 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool5.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool5.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(3);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(3);
                            C1652b.m2734a().m2754e().f3363e = 3;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                }
            }
        });
        HeatingButtonView heatingButtonView = (HeatingButtonView) findViewById(R.id.vibvod_1_button_view);
        this.f1700c = heatingButtonView;
        final int i11 = 1;
        heatingButtonView.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.h3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ VibVodActivity f3265c;

            {
                this.f3265c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i11;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                VibVodActivity vibVodActivity = this.f3265c;
                switch (i12) {
                    case 0:
                        Boolean bool2 = VibVodActivity.f1698g;
                        vibVodActivity.finish();
                        return;
                    case 1:
                        Boolean bool3 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool3.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool3.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(1);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(1);
                            C1652b.m2734a().m2754e().f3363e = 1;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                    case 2:
                        Boolean bool4 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool4.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool4.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(2);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(2);
                            C1652b.m2734a().m2754e().f3363e = 2;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                    default:
                        Boolean bool5 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool5.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool5.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(3);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(3);
                            C1652b.m2734a().m2754e().f3363e = 3;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                }
            }
        });
        HeatingButtonView heatingButtonView2 = (HeatingButtonView) findViewById(R.id.vibvod_2_button_view);
        this.f1701d = heatingButtonView2;
        final int i12 = 2;
        heatingButtonView2.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.h3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ VibVodActivity f3265c;

            {
                this.f3265c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i12;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                VibVodActivity vibVodActivity = this.f3265c;
                switch (i13) {
                    case 0:
                        Boolean bool2 = VibVodActivity.f1698g;
                        vibVodActivity.finish();
                        return;
                    case 1:
                        Boolean bool3 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool3.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool3.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(1);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(1);
                            C1652b.m2734a().m2754e().f3363e = 1;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                    case 2:
                        Boolean bool4 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool4.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool4.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(2);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(2);
                            C1652b.m2734a().m2754e().f3363e = 2;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                    default:
                        Boolean bool5 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool5.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool5.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(3);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(3);
                            C1652b.m2734a().m2754e().f3363e = 3;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                }
            }
        });
        HeatingButtonView heatingButtonView3 = (HeatingButtonView) findViewById(R.id.vibvod_3_button_view);
        this.f1702e = heatingButtonView3;
        final int i13 = 3;
        heatingButtonView3.getHeatingButton().setOnClickListener(new View.OnClickListener(this) { // from class: e0.h3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ VibVodActivity f3265c;

            {
                this.f3265c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i13;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                VibVodActivity vibVodActivity = this.f3265c;
                switch (i14) {
                    case 0:
                        Boolean bool2 = VibVodActivity.f1698g;
                        vibVodActivity.finish();
                        return;
                    case 1:
                        Boolean bool3 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool3.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool3.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(1);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(1);
                            C1652b.m2734a().m2754e().f3363e = 1;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                    case 2:
                        Boolean bool4 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool4.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool4.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(2);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(2);
                            C1652b.m2734a().m2754e().f3363e = 2;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                    default:
                        Boolean bool5 = vibVodActivity.f1703f;
                        C1343d0.m2389d(vibVodActivity);
                        if (MainActivity.m1426w() && bool5.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(vibVodActivity) && bool5.booleanValue()) {
                            throw null;
                        }
                        vibVodActivity.m1605s(3);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvod(3);
                            C1652b.m2734a().m2754e().f3363e = 3;
                        }
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 1), 300L, timeUnit);
                        return;
                }
            }
        });
        final int i14 = 0;
        this.f1700c.getHeatingButton().setOnLongClickListener(new View.OnLongClickListener(this) { // from class: e0.i3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ VibVodActivity f3274c;

            {
                this.f3274c = this;
            }

            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                int i15 = i14;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                VibVodActivity vibVodActivity = this.f3274c;
                switch (i15) {
                    case 0:
                        Boolean bool2 = VibVodActivity.f1698g;
                        vibVodActivity.m1607u(1, Boolean.TRUE);
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 3), 500L, timeUnit);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsavvod(1);
                        }
                        break;
                    case 1:
                        Boolean bool3 = VibVodActivity.f1698g;
                        vibVodActivity.m1607u(2, Boolean.TRUE);
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 2), 500L, timeUnit);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsavvod(2);
                        }
                        break;
                    default:
                        Boolean bool4 = VibVodActivity.f1698g;
                        vibVodActivity.m1607u(3, Boolean.TRUE);
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 4), 500L, timeUnit);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsavvod(3);
                        }
                        break;
                }
                return true;
            }
        });
        final int i15 = 1;
        this.f1701d.getHeatingButton().setOnLongClickListener(new View.OnLongClickListener(this) { // from class: e0.i3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ VibVodActivity f3274c;

            {
                this.f3274c = this;
            }

            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                int i16 = i15;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                VibVodActivity vibVodActivity = this.f3274c;
                switch (i16) {
                    case 0:
                        Boolean bool2 = VibVodActivity.f1698g;
                        vibVodActivity.m1607u(1, Boolean.TRUE);
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 3), 500L, timeUnit);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsavvod(1);
                        }
                        break;
                    case 1:
                        Boolean bool3 = VibVodActivity.f1698g;
                        vibVodActivity.m1607u(2, Boolean.TRUE);
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 2), 500L, timeUnit);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsavvod(2);
                        }
                        break;
                    default:
                        Boolean bool4 = VibVodActivity.f1698g;
                        vibVodActivity.m1607u(3, Boolean.TRUE);
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 4), 500L, timeUnit);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsavvod(3);
                        }
                        break;
                }
                return true;
            }
        });
        final int i16 = 2;
        this.f1702e.getHeatingButton().setOnLongClickListener(new View.OnLongClickListener(this) { // from class: e0.i3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ VibVodActivity f3274c;

            {
                this.f3274c = this;
            }

            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                int i17 = i16;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                VibVodActivity vibVodActivity = this.f3274c;
                switch (i17) {
                    case 0:
                        Boolean bool2 = VibVodActivity.f1698g;
                        vibVodActivity.m1607u(1, Boolean.TRUE);
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 3), 500L, timeUnit);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsavvod(1);
                        }
                        break;
                    case 1:
                        Boolean bool3 = VibVodActivity.f1698g;
                        vibVodActivity.m1607u(2, Boolean.TRUE);
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 2), 500L, timeUnit);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsavvod(2);
                        }
                        break;
                    default:
                        Boolean bool4 = VibVodActivity.f1698g;
                        vibVodActivity.m1607u(3, Boolean.TRUE);
                        vibVodActivity.f1699b.schedule(new RunnableC1361g3(vibVodActivity, 4), 500L, timeUnit);
                        if (vibVodActivity.m1606t().booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsavvod(3);
                        }
                        break;
                }
                return true;
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        runOnUiThread(new RunnableC1361g3(this, 0));
    }

    /* JADX INFO: renamed from: s */
    public final void m1605s(int i10) {
        if (i10 == 1) {
            HeatingButtonView heatingButtonView = this.f1700c;
            heatingButtonView.getClass();
            heatingButtonView.f1820e = true;
            heatingButtonView.m1670c(3);
            HeatingButtonView heatingButtonView2 = this.f1701d;
            heatingButtonView2.getClass();
            heatingButtonView2.f1820e = false;
            heatingButtonView2.m1670c(1);
            HeatingButtonView heatingButtonView3 = this.f1702e;
            heatingButtonView3.getClass();
            heatingButtonView3.f1820e = false;
            heatingButtonView3.m1670c(1);
            return;
        }
        if (i10 == 2) {
            HeatingButtonView heatingButtonView4 = this.f1700c;
            heatingButtonView4.getClass();
            heatingButtonView4.f1820e = false;
            heatingButtonView4.m1670c(1);
            HeatingButtonView heatingButtonView5 = this.f1701d;
            heatingButtonView5.getClass();
            heatingButtonView5.f1820e = true;
            heatingButtonView5.m1670c(3);
            HeatingButtonView heatingButtonView6 = this.f1702e;
            heatingButtonView6.getClass();
            heatingButtonView6.f1820e = false;
            heatingButtonView6.m1670c(1);
            return;
        }
        if (i10 != 3) {
            return;
        }
        HeatingButtonView heatingButtonView7 = this.f1700c;
        heatingButtonView7.getClass();
        heatingButtonView7.f1820e = false;
        heatingButtonView7.m1670c(1);
        HeatingButtonView heatingButtonView8 = this.f1701d;
        heatingButtonView8.getClass();
        heatingButtonView8.f1820e = false;
        heatingButtonView8.m1670c(1);
        HeatingButtonView heatingButtonView9 = this.f1702e;
        heatingButtonView9.getClass();
        heatingButtonView9.f1820e = true;
        heatingButtonView9.m1670c(3);
    }

    /* JADX INFO: renamed from: t */
    public final Boolean m1606t() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{50}, new byte[]{2, 73, 88, 107, -60, 126, 112, -97}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: u */
    public final void m1607u(int i10, Boolean bool) {
        runOnUiThread(new RunnableC0131f(this, bool, i10, 3));
    }
}
