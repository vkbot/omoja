package com.example.navistart;

import android.os.Bundle;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.example.navistart.mainview.HeatingButtonView;
import e0.m;
import e0.n;
import e0.o;
import e0.w;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CarControlActivity extends AppCompatActivity {
    public static final /* synthetic */ int t = 0;
    public ScheduledFuture d;
    public ScheduledFuture e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public HeatingButtonView f659g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public HeatingButtonView f660h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public HeatingButtonView f661i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public HeatingButtonView f662j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public HeatingButtonView f663k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public HeatingButtonView f664l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public HeatingButtonView f665m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public HeatingButtonView f666n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public HeatingButtonView f667o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public HeatingButtonView f668p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public HeatingButtonView f669q;
    public TextView r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f657b = m.h(new byte[]{-49, 40, -90, -124, 92, -125, 100, -34, -29, 37, -107, -92, 71, -124, 102, -59, -8, 48}, new byte[]{-116, 73, -44, -57, 51, -19, 16, -84});
    public final ScheduledThreadPoolExecutor c = w.c(-1, m.h(new byte[]{62, 26, 23, -119, -69, 86, -67, 32, 18, 23, 36, -87, -96, 81, -65, 59, 9, 2}, new byte[]{125, 123, 101, -54, -44, 56, -55, 82}));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f658f = Boolean.TRUE;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final n f670s = new n(this, 0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BlackActivity.t(this);
        setContentView(2131492893);
        ((Button) findViewById(2131296551)).setOnClickListener(new o(this, 5));
        ((RelativeLayout) findViewById(2131296613)).setOnClickListener(new o(this, 9));
        this.r = (TextView) findViewById(2131297607);
        HeatingButtonView heatingButtonView = (HeatingButtonView) findViewById(2131296811);
        this.f663k = heatingButtonView;
        heatingButtonView.getHeatingButton().setOnClickListener(new o(this, 10));
        HeatingButtonView heatingButtonView2 = (HeatingButtonView) findViewById(2131296810);
        this.f664l = heatingButtonView2;
        heatingButtonView2.getHeatingButton().setOnClickListener(new o(this, 11));
        HeatingButtonView heatingButtonView3 = (HeatingButtonView) findViewById(2131296812);
        this.f665m = heatingButtonView3;
        heatingButtonView3.getHeatingButton().setOnClickListener(new o(this, 12));
        HeatingButtonView heatingButtonView4 = (HeatingButtonView) findViewById(2131296818);
        this.f659g = heatingButtonView4;
        heatingButtonView4.getHeatingButton().setOnClickListener(new o(this, 0));
        HeatingButtonView heatingButtonView5 = (HeatingButtonView) findViewById(2131297722);
        this.f660h = heatingButtonView5;
        heatingButtonView5.getHeatingButton().setOnClickListener(new o(this, 1));
        HeatingButtonView heatingButtonView6 = (HeatingButtonView) findViewById(2131296819);
        this.f661i = heatingButtonView6;
        heatingButtonView6.getHeatingButton().setOnClickListener(new o(this, 2));
        HeatingButtonView heatingButtonView7 = (HeatingButtonView) findViewById(2131297723);
        this.f662j = heatingButtonView7;
        heatingButtonView7.getHeatingButton().setOnClickListener(new o(this, 3));
        HeatingButtonView heatingButtonView8 = (HeatingButtonView) findViewById(2131296814);
        this.f666n = heatingButtonView8;
        heatingButtonView8.getHeatingButton().setOnClickListener(new o(this, 4));
        HeatingButtonView heatingButtonView9 = (HeatingButtonView) findViewById(2131297725);
        this.f668p = heatingButtonView9;
        heatingButtonView9.getHeatingButton().setOnClickListener(new o(this, 6));
        HeatingButtonView heatingButtonView10 = (HeatingButtonView) findViewById(2131296813);
        this.f667o = heatingButtonView10;
        heatingButtonView10.getHeatingButton().setOnClickListener(new o(this, 7));
        HeatingButtonView heatingButtonView11 = (HeatingButtonView) findViewById(2131297724);
        this.f669q = heatingButtonView11;
        heatingButtonView11.getHeatingButton().setOnClickListener(new o(this, 8));
        runOnUiThread(new n(this, 1));
        v();
        s();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        t();
        u();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        ScheduledFuture scheduledFuture = this.d;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.d.cancel(true);
        }
        u();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        runOnUiThread(new n(this, 1));
        v();
        s();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        t();
        u();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        t();
        u();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s() {
        u();
        ScheduledFuture scheduledFuture = this.e;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.e.cancel(true);
        }
        this.e = this.c.schedule(this.f670s, 30000L, TimeUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t() {
        ScheduledFuture scheduledFuture = this.d;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.d.cancel(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u() {
        ScheduledFuture scheduledFuture = this.e;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.e.cancel(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        ScheduledFuture scheduledFuture = this.d;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.d.cancel(true);
        }
        this.d = this.c.scheduleWithFixedDelay(new n(this, 2), 5000L, 5000L, TimeUnit.MILLISECONDS);
    }
}
