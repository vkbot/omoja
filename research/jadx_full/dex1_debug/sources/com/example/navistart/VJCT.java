package com.example.navistart;

import android.app.AlertDialog$Builder;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings$Secure;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import com.wireguard.android.backend.GoBackend;
import d2.h;
import e0.a2;
import e0.a3;
import e0.b3;
import e0.c3;
import e0.e3;
import e0.f3;
import e0.m;
import e0.o1;
import e0.p3;
import h0.b;
import r5.c;
import u0.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VJCT extends AppCompatActivity {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static TextView f879g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static TextView f880h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Button f881i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static TextView f882j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public VJCT f883b;
    public ProgressBar c;
    public LinearLayout d;
    public Switch e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AlertDialog$Builder f884f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void s(int i9) {
        Button button = f881i;
        if (button != null) {
            button.post(new a3(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t(String str) {
        Button button = f881i;
        if (button != null) {
            button.post(new a2(str, 4));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void u(String str) {
        TextView textView = f880h;
        if (textView != null) {
            textView.post(new a2(str, 5));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 15 && i10 == -1) {
            this.e.setChecked(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492906);
        this.f883b = this;
        f880h = (TextView) findViewById(2131297756);
        this.c = (ProgressBar) findViewById(2131297217);
        f882j = (TextView) findViewById(2131297760);
        ((Button) findViewById(2131296554)).setOnClickListener(new b3(this, 0));
        ((Button) findViewById(2131296555)).setOnClickListener(new b3(this, 1));
        Button button = (Button) findViewById(2131297762);
        f881i = button;
        button.setOnClickListener(new o1(2));
        f879g = (TextView) findViewById(2131297617);
        ((Button) findViewById(2131296586)).setOnClickListener(new b3(this, 2));
        Switch r9 = (Switch) findViewById(2131297757);
        r9.setChecked(b.o().loadBoolean(m.h(new byte[]{84, -87, 16, -115, 43, -16, -126, 47, 125, -86, 10, -77, 59, -21}, new byte[]{34, -39, 126, -46, 73, -97, -19, 91}), false));
        r9.setOnCheckedChangeListener(new e3());
        boolean zLoadBoolean = b.o().loadBoolean(m.h(new byte[]{-104, -38, -105, 95, -119, -28, -94, 108, -121, -55, -100, 115, -91, -14, -92, 123, -100, -34}, new byte[]{-18, -86, -7, 0, -6, -127, -48, 26}), false);
        LinearLayout linearLayout = (LinearLayout) findViewById(2131297759);
        this.d = linearLayout;
        if (zLoadBoolean) {
            linearLayout.setVisibility(0);
        } else {
            linearLayout.setVisibility(8);
        }
        Switch r10 = (Switch) findViewById(2131297758);
        this.e = r10;
        r10.setChecked(zLoadBoolean);
        this.e.setOnCheckedChangeListener(new c3(0, this, r9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x002f  */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        h hVar = TService.c;
        if (hVar != null) {
            try {
                GoBackend goBackend = (GoBackend) hVar.d;
                if (goBackend != null) {
                    if (goBackend.c == ((c) hVar.f1679f)) {
                        t(getResources().getString(2131952757));
                        s(ContextCompat.getColor(this.f883b, 2131034112));
                    } else {
                        t(getResources().getString(2131952758));
                        s(ContextCompat.getColor(this.f883b, 2131034216));
                    }
                } else {
                    t(getResources().getString(2131952758));
                    s(ContextCompat.getColor(this.f883b, 2131034216));
                }
            } catch (Exception unused) {
            }
        }
        f3 f3Var = new f3(1);
        f3Var.f1837b = new StringBuilder();
        f3Var.c = -1;
        f3Var.d = this;
        String strT = punto.t(this.f883b);
        String strW = punto.w(Settings$Secure.getString(this.f883b.getContentResolver(), m.h(new byte[]{-43, -78, -56, 58, 57, -63, -46, 51, -35, -72}, new byte[]{-76, -36, -84, 72, 86, -88, -74, 108})));
        a aVarO = b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        f3Var.execute(strT, strW, aVarO.loadString(new String(bArr), ""), boot.e(b.o().loadString(punto.t(this.f883b), "") + punto.t(this.f883b)));
    }
}
