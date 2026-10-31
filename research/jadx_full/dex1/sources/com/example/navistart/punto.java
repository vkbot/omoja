package com.example.navistart;

import a4.g;
import android.content.Context;
import android.graphics.PorterDuff$Mode;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings$Secure;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.internal.view.SupportMenu;
import c7.e;
import e0.f0;
import e0.g0;
import e0.j2;
import e0.m;
import e0.q3;
import e0.s0;
import e0.s3;
import e0.w;
import e0.x1;
import e0.z2;
import h0.b;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import kotlin.UByte;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class punto extends AppCompatActivity {
    public static Boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static String f1003u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1005b;
    public punto c;
    public TextView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f1006f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f1007g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f1008h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f1009i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public EditText f1010j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public EditText f1011k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Button f1012l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Button f1013m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Button f1014n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ImageView f1015o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Switch f1016p;
    public static final String r = m.h(new byte[]{-98, 37, 38, 54, -67, 16, 45, -75, -96, 34, 46, 49}, new byte[]{-1, 82, 71, 95, -55, 121, 67, -46});

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static String f1002s = m.h(new byte[]{49}, new byte[]{1, 100, 43, 60, -114, 64, -66, 32});

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final byte[] f1004v = {106, 99, 97, 114, 116, 111, 111, 108, 115, 46, 114, 117, 47, 111, 116, 112, 47, 107, 117, 46, 112, 104, 112};
    public static final byte[] w = {106, 99, 97, 114, 116, 111, 111, 108, 115, 46, 114, 117};
    public final Handler d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AlphaAnimation f1017q = new AlphaAnimation(0.0f, 1.0f);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String t(Context context) {
        return Settings$Secure.getString(context.getContentResolver(), m.h(new byte[]{87, 22, -19, 19, 32, 88, -78, -14, 95, 28}, new byte[]{54, 120, -119, 97, 79, 49, -42, -83}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String w(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance(m.h(new byte[]{20, -21, 29, -108, -89, -14, -26}, new byte[]{71, -93, 92, -71, -110, -61, -44, -76})).digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b9 : bArrDigest) {
                sb.append(Integer.toString((b9 & UByte.MAX_VALUE) + 256, 16).substring(1));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(m.x(context));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String strLoadString;
        f0[] f0VarArrValues;
        int length;
        int i9;
        f0 f0Var;
        super.onCreate(bundle);
        AppCompatDelegate.setDefaultNightMode(1);
        getWindow().setStatusBarColor(getColor(2131034999));
        getWindow().setNavigationBarColor(getColor(2131034999));
        getWindow().getDecorView().setSystemUiVisibility(0);
        this.c = this;
        String str = z2.f2015a;
        f1003u = new String(f1004v);
        try {
            b.a();
            b.r().Ping(m.h(new byte[]{102, -15, -62, 0, Base64.padSymbol, 94, -112, -70, 110, -5}, new byte[]{7, -97, -90, 114, 82, 55, -12, -27}));
            while (true) {
                if (i9 >= length) {
                    f0Var = f0.d;
                    break;
                }
                f0Var = f0VarArrValues[i9];
                f0Var.getClass();
                if (f0Var.c.equals(strLoadString)) {
                    break;
                } else {
                    i9++;
                }
            }
        } catch (SecurityException unused) {
        }
        setContentView(2131493131);
        t = Boolean.valueOf(b.o().loadBoolean(m.h(new byte[]{-81, 45}, new byte[]{-50, 88, -108, 46, -69, 123, 118, 51}), false));
        this.e = (TextView) findViewById(2131297592);
        this.f1006f = (TextView) findViewById(2131297594);
        this.f1007g = (TextView) findViewById(2131297595);
        this.f1008h = (TextView) findViewById(2131297596);
        this.e.setText(t(this.c));
        this.f1010j = (EditText) findViewById(2131296732);
        this.f1011k = (EditText) findViewById(2131296726);
        this.f1012l = (Button) findViewById(2131296572);
        this.f1013m = (Button) findViewById(2131296538);
        this.f1014n = (Button) findViewById(2131296539);
        this.f1016p = (Switch) findViewById(2131297509);
        this.f1015o = (ImageView) findViewById(2131296852);
        this.f1009i = (TextView) findViewById(2131297137);
        Button button = (Button) findViewById(2131296579);
        String str2 = g0.f1839a;
        strLoadString = b.o().loadString(g0.f1839a, Locale.getDefault().getLanguage());
        f0VarArrValues = f0.values();
        length = f0VarArrValues.length;
        i9 = 0;
        String string = f0Var.f1833b;
        if ("".equals(string)) {
            string = getResources().getString(2131951616);
        }
        button.setText(string);
        button.setOnClickListener(new q3(this, 2));
        ((Button) findViewById(2131296476)).setOnClickListener(new q3(this, 3));
        boolean zLoadBoolean = b.o().loadBoolean(m.h(new byte[]{-124, -65, 105}, new byte[]{-12, -37, 7, -119, 48, 96, 76, 108}), false);
        this.f1016p.setChecked(zLoadBoolean);
        this.f1010j.setEnabled(zLoadBoolean);
        this.f1012l.setEnabled(zLoadBoolean);
        ((Button) findViewById(2131296558)).setOnClickListener(new q3(this, 4));
        findViewById(2131296475).setOnClickListener(new q3(this, 5));
        if (t.booleanValue()) {
            this.f1010j.setVisibility(8);
            this.f1012l.setVisibility(8);
            this.f1014n.setVisibility(8);
            v(false);
            this.f1006f.setText(getResources().getString(2131951815) + b.o().loadString(t(this.c), ""));
            this.f1014n.setVisibility(0);
            this.f1008h.setVisibility(0);
            this.f1016p.setEnabled(false);
        } else {
            x();
        }
        if (!t.booleanValue() && bundle != null) {
            v(bundle.getBoolean(r, false));
        }
        AlphaAnimation alphaAnimation = this.f1017q;
        alphaAnimation.setDuration(500L);
        alphaAnimation.setRepeatMode(2);
        alphaAnimation.setRepeatCount(-1);
        s(zLoadBoolean);
        this.f1016p.setOnCheckedChangeListener(new s0(4, this));
        ((Button) findViewById(2131296547)).setOnClickListener(new q3(this, 6));
        this.f1012l.setOnClickListener(new q3(this, 7));
        this.f1013m.setOnClickListener(new q3(this, 0));
        this.f1014n.setOnClickListener(new q3(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        String str = MainActivity.f688e1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        String str = MainActivity.f688e1;
        v(this.f1005b);
        if (!f1002s.equals(m.h(new byte[]{-76}, new byte[]{-124, 46, -31, 93, -53, 121, -73, 109}))) {
            Long lValueOf = Long.valueOf((Long.parseLong(new String(android.util.Base64.decode(f1002s, 0))) - b.a().j().l(Long.MAX_VALUE).longValue()) / 86400);
            if (lValueOf.intValue() > 0) {
                int iIntValue = lValueOf.intValue();
                this.f1008h.setText(getResources().getString(2131952137) + String.valueOf(iIntValue) + getResources().getString(2131952136));
            } else {
                this.f1008h.setText(this.c.getResources().getString(2131952466));
            }
        }
        this.d.post(new e(this, false, 5));
        u(new s3(b.o().loadString(m.h(new byte[]{-109, -90, -55}, new byte[]{-2, -45, -69, -104, 39, -54, 6, -55}), ""), t(this.c), w(x1.f1989q), "", m.h(new byte[]{100, 124}, new byte[]{18, 25, 43, 62, -90, 26, 18, 15}), 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(r, this.f1005b);
        super.onSaveInstanceState(bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s(boolean z8) {
        Switch r1 = this.f1016p;
        if (z8) {
            r1.getThumbDrawable().clearColorFilter();
            this.f1016p.getTrackDrawable().clearColorFilter();
            this.f1016p.clearAnimation();
        } else {
            Drawable thumbDrawable = r1.getThumbDrawable();
            PorterDuff$Mode porterDuff$Mode = PorterDuff$Mode.MULTIPLY;
            thumbDrawable.setColorFilter(-1, porterDuff$Mode);
            this.f1016p.getTrackDrawable().setColorFilter(SupportMenu.CATEGORY_MASK, porterDuff$Mode);
            this.f1016p.startAnimation(this.f1017q);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(s3 s3Var) {
        w.c(-1, m.h(new byte[]{-113, -117, -29, -103, 86}, new byte[]{-1, -2, -115, -19, 57, 4, -70, -14})).execute(new j2(6, this, s3Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v(boolean z8) {
        this.f1005b = z8;
        int i9 = z8 ? 0 : 8;
        this.f1011k.setVisibility(i9);
        this.f1013m.setVisibility(i9);
        this.f1007g.setVisibility(i9);
        if (z8) {
            this.f1011k.post(new g(24, this));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void x() {
        this.f1010j.setVisibility(0);
        this.f1012l.setVisibility(0);
        this.f1014n.setVisibility(8);
        v(false);
        this.f1006f.setText(getResources().getString(2131951813));
        this.f1008h.setVisibility(8);
        this.f1016p.setEnabled(true);
    }
}
