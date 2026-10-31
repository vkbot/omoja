package com.example.navistart;

import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.activity.f;
import androidx.appcompat.app.AppCompatActivity;
import com.example.navistart.mainview.HeatingButtonView;
import com.google.protobuf.q;
import e0.d0;
import e0.g3;
import e0.h3;
import e0.i3;
import e0.m;
import e0.p3;
import e0.w;
import e0.x1;
import h0.b;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import u0.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VibVodActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Boolean f885g = Boolean.FALSE;
    public HeatingButtonView c;
    public HeatingButtonView d;
    public HeatingButtonView e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f886b = w.c(-1, m.h(new byte[]{113, -84, 54, -85, -38, ByteCompanionObject.MIN_VALUE, -74, -92, 83, -84, 34, -108, -63, -99}, new byte[]{39, -59, 84, -3, -75, -28, -9, -57}));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f887f = Boolean.TRUE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BlackActivity.t(this);
        setContentView(2131492905);
        d0.d(this);
        boolean zW = MainActivity.w();
        Boolean bool = this.f887f;
        if (zW && bool.booleanValue()) {
            throw null;
        }
        if (MainActivity.v(this) && bool.booleanValue()) {
            throw null;
        }
        ((RelativeLayout) findViewById(2131297731)).setOnClickListener(new h3(this, 0));
        HeatingButtonView heatingButtonView = (HeatingButtonView) findViewById(2131297728);
        this.c = heatingButtonView;
        heatingButtonView.getHeatingButton().setOnClickListener(new h3(this, 1));
        HeatingButtonView heatingButtonView2 = (HeatingButtonView) findViewById(2131297729);
        this.d = heatingButtonView2;
        heatingButtonView2.getHeatingButton().setOnClickListener(new h3(this, 2));
        HeatingButtonView heatingButtonView3 = (HeatingButtonView) findViewById(2131297730);
        this.e = heatingButtonView3;
        heatingButtonView3.getHeatingButton().setOnClickListener(new h3(this, 3));
        this.c.getHeatingButton().setOnLongClickListener(new i3(this, 0));
        this.d.getHeatingButton().setOnLongClickListener(new i3(this, 1));
        this.e.getHeatingButton().setOnLongClickListener(new i3(this, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        runOnUiThread(new g3(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s(int i9) {
        if (i9 == 1) {
            HeatingButtonView heatingButtonView = this.c;
            heatingButtonView.getClass();
            heatingButtonView.e = true;
            heatingButtonView.c(3);
            HeatingButtonView heatingButtonView2 = this.d;
            heatingButtonView2.getClass();
            heatingButtonView2.e = false;
            heatingButtonView2.c(1);
            HeatingButtonView heatingButtonView3 = this.e;
            heatingButtonView3.getClass();
            heatingButtonView3.e = false;
            heatingButtonView3.c(1);
            return;
        }
        if (i9 == 2) {
            HeatingButtonView heatingButtonView4 = this.c;
            heatingButtonView4.getClass();
            heatingButtonView4.e = false;
            heatingButtonView4.c(1);
            HeatingButtonView heatingButtonView5 = this.d;
            heatingButtonView5.getClass();
            heatingButtonView5.e = true;
            heatingButtonView5.c(3);
            HeatingButtonView heatingButtonView6 = this.e;
            heatingButtonView6.getClass();
            heatingButtonView6.e = false;
            heatingButtonView6.c(1);
            return;
        }
        if (i9 != 3) {
            return;
        }
        HeatingButtonView heatingButtonView7 = this.c;
        heatingButtonView7.getClass();
        heatingButtonView7.e = false;
        heatingButtonView7.c(1);
        HeatingButtonView heatingButtonView8 = this.d;
        heatingButtonView8.getClass();
        heatingButtonView8.e = false;
        heatingButtonView8.c(1);
        HeatingButtonView heatingButtonView9 = this.e;
        heatingButtonView9.getClass();
        heatingButtonView9.e = true;
        heatingButtonView9.c(3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Boolean t() {
        StringBuilder sb = new StringBuilder();
        a aVarO = b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        a aVarO2 = b.o();
        byte[] bArr2 = m.f1892f;
        if (q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{50}, new byte[]{2, 73, 88, 107, -60, 126, 112, -97}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(int i9, Boolean bool) {
        runOnUiThread(new f(this, bool, i9, 3));
    }
}
