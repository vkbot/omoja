package com.example.navistart;

import android.R$color;
import android.app.Activity;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager$LayoutParams;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import b1.h;
import com.google.protobuf.q;
import e0.l;
import e0.m;
import e0.p3;
import e0.x1;
import f0.c;
import h0.b;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.a0;
import u0.a;
import v1.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class BlackActivity extends AppCompatActivity implements c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f654g = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f655b = Boolean.TRUE;
    public Float c = null;
    public View d;
    public AppWidgetHost e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public h f656f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean s() {
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
            return Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{45}, new byte[]{29, 118, -46, 44, 99, 60, 29, 81}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t(Activity activity) {
        activity.requestWindowFeature(1);
        activity.getWindow().setFlags(1024, 1024);
        activity.getWindow().setBackgroundDrawableResource(R$color.transparent);
        activity.getWindow().setFormat(-3);
        activity.getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // f0.c
    public final void c() {
        l0.a.t(a0.class, null).show(getSupportFragmentManager(), m.h(new byte[]{13, 117, 32, -94, -117, 19, -2, -35, 7}, new byte[]{96, 12, ByteCompanionObject.MAX_VALUE, -58, -30, 114, -110, -78}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        setTheme(2132017891);
        super.onCreate(bundle);
        if (this.c == null) {
            this.c = Float.valueOf(getWindow().getAttributes().screenBrightness);
        }
        WindowManager$LayoutParams attributes = getWindow().getAttributes();
        attributes.screenBrightness = 0.01f;
        getWindow().setAttributes(attributes);
        if (boot.b(this) && this.f655b.booleanValue()) {
            throw null;
        }
        t(this);
        setContentView(2131492913);
        this.e = new AppWidgetHost(this, 1024);
        AppWidgetManager.getInstance(this);
        this.d = findViewById(2131296699);
        this.d.setAlpha(b.o().loadInt(m.h(new byte[]{3, 112, -23, -88, 87, -51, -71, 17, 32, 118, -28, -69, 100, -36, -78, 63, 54, 116, -19, -71, 83, -62, -81, 35, 56}, new byte[]{76, 6, -116, -38, 59, -84, -64, 80}), 100) / 100.0f);
        String strLoadString = b.o().loadString(m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 122, -4, -27, 101, 51, -32, -44, -127, 122, -14, -27, 101, 52, -15, -63, -91, 123, -8, -24, 122}, new byte[]{-62, 22, -99, -122, 14, 114, -125, -96}), null);
        f0.b bVarValueOf = f0.b.e;
        if (strLoadString != null) {
            try {
                bVarValueOf = f0.b.valueOf(strLoadString);
            } catch (IllegalArgumentException unused) {
            }
        }
        d.a().d().f5511a.observe(this, new l(this, 0));
        d.a().d().f5512b.observe(this, new l(this, 1));
        d.a().d().c.observe(this, new l(this, 2));
        d.a().d().d.observe(this, new l(this, 3));
        d.a().d().e.observe(this, new l(this, 4));
        d.a().d().f5513f.observe(this, new l(this, 5));
        d.a().d().f5514g.observe(this, new l(this, 6));
        u(bVarValueOf);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (this.c != null) {
            WindowManager$LayoutParams attributes = getWindow().getAttributes();
            attributes.screenBrightness = this.c.floatValue();
            getWindow().setAttributes(attributes);
            this.c = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        this.e.startListening();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(f0.b bVar) {
        this.f656f = null;
        if (bVar != f0.b.d) {
            try {
                getSupportFragmentManager().beginTransaction().replace(2131296782, (Fragment) bVar.c.newInstance()).commit();
                return;
            } catch (IllegalAccessException | InstantiationException e) {
                n0.b.w(e);
                return;
            }
        }
        String strH = m.h(new byte[]{-12, 92, 51, -103, -80, -91, -48, 39, -45, 64, 7, -120, -112, -103, -61, 43, -46}, new byte[]{-71, 37, 100, -4, -46, -11, -94, 72});
        String strH2 = m.h(new byte[]{-61, 105, -91, -38, 91, -54, 9, -50, -28, 117, -111, -53, 123, -10, 26, -62, -27, 79, -95, -38, 77, -18, 18, -49, -23, 99, -83, -12, 92, -29}, new byte[]{-114, 16, -14, -65, 57, -102, 123, -95});
        String strH3 = m.h(new byte[]{126, -93, -107, 95, -16, 101, 12, 85, 109, -93, -111, 97, -25, 101, 25, 105, 113}, new byte[]{26, -58, -13, 62, -123, 9, 120, 10});
        h hVar = new h();
        Bundle bundle = new Bundle();
        bundle.putString(h.f253g, strH);
        bundle.putString(h.f254h, strH2);
        bundle.putString(h.f255i, strH3);
        hVar.setArguments(bundle);
        this.f656f = hVar;
        getSupportFragmentManager().beginTransaction().replace(2131296782, hVar).commit();
    }
}
