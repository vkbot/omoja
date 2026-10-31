package com.example.navistart;

import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Button;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import e0.k0;
import e0.m;
import e0.p3;
import e0.q;
import e0.s0;
import e0.v2;
import e0.y2;
import e0.z2;
import h0.b;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class UpdateActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f871l = m.h(new byte[]{-111, 19, -115, 30, -60, -125, 78, -123, -101, 28, -115, 48, -63, -87, 78, -127}, new byte[]{-14, ByteCompanionObject.MAX_VALUE, -24, ByteCompanionObject.MAX_VALUE, -74, -57, 43, -13});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f872b;
    public Button c;
    public Button d;
    public Button e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Button f873f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Button f874g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Button f875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Switch f876i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f877j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Handler f878k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UpdateActivity() {
        p3.b(2);
        p3.b(4);
        p3.a(6);
        p3.a(0);
        m.h(new byte[]{90}, new byte[]{116, 0, 21, 31, -35, 44, 37, 82});
        p3.c(5);
        p3.c(7);
        this.f877j = 0;
        this.f878k = new Handler(Looper.getMainLooper());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(m.x(context));
        Log.d(m.h(new byte[]{-10, -116, -125, 106, -40}, new byte[]{-94, -34, -62, 41, -99, 126, -82, 59}), m.h(new byte[]{-126, -53, -93, 121, -49, 10, 111, 58, -29, -55, -75, ByteCompanionObject.MAX_VALUE, -52, 23, 59, 55, -84, -120, -92, 100, -40, 17, 111, 121, -29}, new byte[]{-61, -88, -41, 16, -71, 99, 27, 67}).concat(getClass().getSimpleName()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        getWindow().setStatusBarColor(ContextCompat.getColor(this, 2131034999));
        getWindow().setNavigationBarColor(ContextCompat.getColor(this, 2131034999));
        getWindow().getDecorView().setSystemUiVisibility(0);
        setContentView(2131492903);
        ((Button) findViewById(2131296557)).setOnClickListener(new v2(this, 0));
        byte[] bArr = punto.w;
        String str2 = z2.f2015a;
        new String(bArr);
        if (getIntent().getBooleanExtra(m.h(new byte[]{76, 42, -104, -67, 6, 35, 12, -100, 94, 42, -100}, new byte[]{63, 94, -7, -49, 114, 118, 124, -8}), false)) {
            setContentView(2131492904);
            ((Button) findViewById(2131296557)).setOnClickListener(new v2(this, 5));
            t();
            return;
        }
        this.f872b = (TextView) findViewById(2131296667);
        this.c = (Button) findViewById(2131297698);
        this.d = (Button) findViewById(2131297699);
        findViewById(2131296898).setOnClickListener(new v2(this, 6));
        this.f873f = (Button) findViewById(2131297304);
        this.f874g = (Button) findViewById(2131296636);
        Button button = (Button) findViewById(2131296595);
        this.e = button;
        button.setOnClickListener(new v2(this, 7));
        Switch r9 = (Switch) findViewById(2131297515);
        this.f876i = r9;
        r9.setChecked(b.o().loadBoolean(m.h(new byte[]{-69, 31, 38, -32, 71, -89, -40, 76, -87, 44, 46, -19, 95, -116, -51, 79, -75, 44, 48, -22, 66, -89, -49, 79, -80, 16, 44}, new byte[]{-39, 115, 71, -125, 44, -8, -84, 35}), false));
        this.f876i.setOnCheckedChangeListener(new k0(29));
        ((Switch) findViewById(2131297508)).setOnCheckedChangeListener(new s0(3, this));
        try {
            str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager$NameNotFoundException unused) {
            str = "";
        }
        this.f872b.setText(getString(2131952660, str));
        this.f872b.setOnClickListener(new v2(this, 8));
        this.c.setOnClickListener(new v2(this, 9));
        this.d.setOnClickListener(new v2(this, 1));
        this.f873f.setOnClickListener(new v2(this, 2));
        this.f874g.setOnClickListener(new v2(this, 3));
        Button button2 = (Button) findViewById(2131296283);
        this.f875h = button2;
        button2.setOnClickListener(new v2(this, 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.f878k.removeCallbacksAndMessages(null);
        q.f1925f = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        Button button = this.f873f;
        if (button != null) {
            button.setEnabled(b.o().loadBoolean(m.h(new byte[]{14, -102, -56, -56, -105}, new byte[]{74, -54, -67, -72, -28, -127, 57, 42}), false));
        }
        q.f1925f = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s(String str) {
        String str2 = f871l;
        try {
            Log.e(str2, str + m.h(new byte[]{-73, 31}, new byte[]{-115, 63, -19, ByteCompanionObject.MAX_VALUE, 46, 17, -90, 82}) + m.d(this, str2).a());
        } catch (Exception e) {
            Log.e(str2, str.concat(m.h(new byte[]{110, 11, 94, 20, 114, 22, -6, -8, 116, 95, 87, 85, 120, 22, -6, -3, 38, 11, 124, 16, 109, 19, -4, -7, 116, 100, 79, 27, 126, 8}, new byte[]{84, 43, 56, 117, 27, 122, -97, -100})), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t() {
        new y2(m.h(new byte[]{29, 67, -17, -18, -75, Base64.padSymbol, 44, 23, 68, 84, -7, -10, -1, Base64.padSymbol, 47, 2}, new byte[]{105, 38, -100, -102, -102, 92, 92, 103}), this);
    }
}
