package com.example.navistart;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Patterns;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.internal.view.SupportMenu;
import com.example.navistart.PermActivity;
import com.example.navistart.R;
import com.example.navistart.UpdateActivity;
import com.example.navistart.punto;
import com.woha.wifim.MainWifiManadger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p005a4.RunnableC0014g;
import p032c7.RunnableC1001e;
import p047e0.AbstractAsyncTaskC1449z2;
import p047e0.AbstractC1358g0;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1418s0;
import p047e0.C1421s3;
import p047e0.C1440x1;
import p047e0.EnumC1353f0;
import p047e0.RunnableC1375j2;
import p078h0.C1652b;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class punto extends AppCompatActivity {

    /* JADX INFO: renamed from: t */
    public static Boolean f1869t;

    /* JADX INFO: renamed from: u */
    public static String f1870u;

    /* JADX INFO: renamed from: b */
    public boolean f1873b;

    /* JADX INFO: renamed from: c */
    public punto f1874c;

    /* JADX INFO: renamed from: e */
    public TextView f1876e;

    /* JADX INFO: renamed from: f */
    public TextView f1877f;

    /* JADX INFO: renamed from: g */
    public TextView f1878g;

    /* JADX INFO: renamed from: h */
    public TextView f1879h;

    /* JADX INFO: renamed from: i */
    public TextView f1880i;

    /* JADX INFO: renamed from: j */
    public EditText f1881j;

    /* JADX INFO: renamed from: k */
    public EditText f1882k;

    /* JADX INFO: renamed from: l */
    public Button f1883l;

    /* JADX INFO: renamed from: m */
    public Button f1884m;

    /* JADX INFO: renamed from: n */
    public Button f1885n;

    /* JADX INFO: renamed from: o */
    public ImageView f1886o;

    /* JADX INFO: renamed from: p */
    public Switch f1887p;

    /* JADX INFO: renamed from: r */
    public static final String f1867r = AbstractC1387m.m2421h(new byte[]{-98, 37, 38, 54, -67, 16, 45, -75, -96, 34, 46, 49}, new byte[]{-1, 82, 71, 95, -55, 121, 67, -46});

    /* JADX INFO: renamed from: s */
    public static String f1868s = AbstractC1387m.m2421h(new byte[]{49}, new byte[]{1, 100, 43, 60, -114, 64, -66, 32});

    /* JADX INFO: renamed from: v */
    public static final byte[] f1871v = {106, 99, 97, 114, 116, 111, 111, 108, 115, 46, 114, 117, 47, 111, 116, 112, 47, 107, 117, 46, 112, 104, 112};

    /* JADX INFO: renamed from: w */
    public static final byte[] f1872w = {106, 99, 97, 114, 116, 111, 111, 108, 115, 46, 114, 117};

    /* JADX INFO: renamed from: d */
    public final Handler f1875d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: q */
    public final AlphaAnimation f1888q = new AlphaAnimation(0.0f, 1.0f);

    /* JADX INFO: renamed from: t */
    public static String m1674t(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), AbstractC1387m.m2421h(new byte[]{87, 22, -19, 19, 32, 88, -78, -14, 95, 28}, new byte[]{54, 120, -119, 97, 79, 49, -42, -83}));
    }

    /* JADX INFO: renamed from: w */
    public static String m1675w(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance(AbstractC1387m.m2421h(new byte[]{20, -21, 29, -108, -89, -14, -26}, new byte[]{71, -93, 92, -71, -110, -61, -44, -76})).digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb.append(Integer.toString((b10 & UByte.MAX_VALUE) + 256, 16).substring(1));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(AbstractC1387m.m2437x(context));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String strLoadString;
        EnumC1353f0[] enumC1353f0ArrValues;
        int length;
        int i10;
        EnumC1353f0 enumC1353f0;
        super.onCreate(bundle);
        final int i11 = 1;
        AppCompatDelegate.setDefaultNightMode(1);
        getWindow().setStatusBarColor(getColor(R.color.modern_background));
        getWindow().setNavigationBarColor(getColor(R.color.modern_background));
        final int i12 = 0;
        getWindow().getDecorView().setSystemUiVisibility(0);
        this.f1874c = this;
        String str = AbstractAsyncTaskC1449z2.f3517a;
        f1870u = new String(f1871v);
        try {
            C1652b.m2734a();
            C1652b.m2748r().Ping(AbstractC1387m.m2421h(new byte[]{102, -15, -62, 0, Base64.padSymbol, 94, -112, -70, 110, -5}, new byte[]{7, -97, -90, 114, 82, 55, -12, -27}));
            while (true) {
                if (i10 >= length) {
                    enumC1353f0 = EnumC1353f0.f3221d;
                    break;
                }
                enumC1353f0 = enumC1353f0ArrValues[i10];
                enumC1353f0.getClass();
                if (enumC1353f0.f3224c.equals(strLoadString)) {
                    break;
                } else {
                    i10++;
                }
            }
        } catch (SecurityException unused) {
        }
        setContentView(R.layout.sing);
        final int i13 = 2;
        f1869t = Boolean.valueOf(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-81, 45}, new byte[]{-50, 88, -108, 46, -69, 123, 118, 51}), false));
        this.f1876e = (TextView) findViewById(R.id.textView20);
        this.f1877f = (TextView) findViewById(R.id.textView22);
        this.f1878g = (TextView) findViewById(R.id.textView23);
        this.f1879h = (TextView) findViewById(R.id.textView24);
        this.f1876e.setText(m1674t(this.f1874c));
        this.f1881j = (EditText) findViewById(R.id.editTextTextEmailAddress);
        this.f1882k = (EditText) findViewById(R.id.editTextNumber);
        this.f1883l = (Button) findViewById(R.id.button9);
        this.f1884m = (Button) findViewById(R.id.button10);
        this.f1885n = (Button) findViewById(R.id.button11);
        this.f1887p = (Switch) findViewById(R.id.switch17);
        this.f1886o = (ImageView) findViewById(R.id.imageView7);
        this.f1880i = (TextView) findViewById(R.id.networkErrorText);
        Button button = (Button) findViewById(R.id.button_lang);
        String str2 = AbstractC1358g0.f3235a;
        strLoadString = C1652b.m2745o().loadString(AbstractC1358g0.f3235a, Locale.getDefault().getLanguage());
        enumC1353f0ArrValues = EnumC1353f0.values();
        length = enumC1353f0ArrValues.length;
        i10 = 0;
        String string = enumC1353f0.f3223b;
        if ("".equals(string)) {
            string = getResources().getString(R.string.AppLangDefault);
        }
        button.setText(string);
        button.setOnClickListener(new View.OnClickListener(this) { // from class: e0.q3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ punto f3382c;

            {
                this.f3382c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i14 = i13;
                int i15 = 0;
                punto puntoVar = this.f3382c;
                switch (i14) {
                    case 0:
                        String str3 = punto.f1867r;
                        puntoVar.m1677u(new C1421s3(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-90, -37, ByteCompanionObject.MIN_VALUE}, new byte[]{-53, -82, -14, -46, 67, -116, -115, 54}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE}, new byte[]{78, 46, 113, 76, 42, 23, -11, -119})), punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), puntoVar.f1882k.getText().toString(), AbstractC1387m.m2421h(new byte[]{26, 121}, new byte[]{106, 15, 106, 69, -69, -7, 105, 23}), 0));
                        puntoVar.f1882k.setVisibility(0);
                        break;
                    case 1:
                        String str4 = punto.f1867r;
                        punto.f1869t = Boolean.FALSE;
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-47, -27}, new byte[]{-80, -112, -8, -123, -56, 113, -15, 15}), punto.f1869t.booleanValue());
                        C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-71, -118, 45}, new byte[]{-44, -1, 95, 86, -43, 77, 113, -93}), "");
                        puntoVar.m1679x();
                        break;
                    case 2:
                        String str5 = punto.f1867r;
                        String str6 = AbstractC1358g0.f3235a;
                        EnumC1353f0[] enumC1353f0ArrValues2 = EnumC1353f0.values();
                        AlertDialog.Builder builder = new AlertDialog.Builder(puntoVar);
                        builder.setTitle(AbstractC1387m.m2421h(new byte[]{-13, 69, -92, -85, -83, -1, 25, 63, -47, 67, -84, -79, -65, -3, 92}, new byte[]{-80, 45, -53, -60, -34, -102, 57, 83}));
                        String[] strArr = new String[enumC1353f0ArrValues2.length];
                        for (int i16 = 0; i16 < enumC1353f0ArrValues2.length; i16++) {
                            String str7 = enumC1353f0ArrValues2[i16].f3223b;
                            strArr[i16] = str7;
                            if ("".equals(str7)) {
                                strArr[i16] = puntoVar.getResources().getString(R.string.AppLangDefault);
                            }
                        }
                        builder.setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(i15, puntoVar, enumC1353f0ArrValues2));
                        builder.show();
                        break;
                    case 3:
                        String str8 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) UpdateActivity.class), null);
                        break;
                    case 4:
                        String str9 = punto.f1867r;
                        puntoVar.finish();
                        break;
                    case 5:
                        String str10 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) PermActivity.class), null);
                        break;
                    case 6:
                        String str11 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar.f1874c, (Class<?>) MainWifiManadger.class), null);
                        break;
                    default:
                        String string2 = puntoVar.f1881j.getText().toString();
                        if (string2 == null ? false : Patterns.EMAIL_ADDRESS.matcher(string2).matches()) {
                            AbstractC3656k.m5877w(R.string.put_auth_mail_send, puntoVar.getApplicationContext());
                            String string3 = puntoVar.f1881j.getText().toString();
                            puntoVar.m1677u(new C1421s3(string3, punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), "", AbstractC1387m.m2421h(new byte[]{64, -27}, new byte[]{54, -120, 123, 71, 40, -63, -85, 56}), 0));
                            C1652b.m2745o().saveString(punto.m1674t(puntoVar.f1874c), string3);
                            puntoVar.m1678v(true);
                            puntoVar.f1882k.requestFocus();
                            puntoVar.f1883l.setEnabled(false);
                            new CountDownTimerC1416r3(puntoVar).start();
                        } else {
                            AbstractC3656k.m5877w(R.string.put_auth_mail, puntoVar.getApplicationContext());
                        }
                        break;
                }
            }
        });
        final int i14 = 3;
        ((Button) findViewById(R.id.b_start_act_app_sett)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.q3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ punto f3382c;

            {
                this.f3382c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i15 = i14;
                int i16 = 0;
                punto puntoVar = this.f3382c;
                switch (i15) {
                    case 0:
                        String str3 = punto.f1867r;
                        puntoVar.m1677u(new C1421s3(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-90, -37, ByteCompanionObject.MIN_VALUE}, new byte[]{-53, -82, -14, -46, 67, -116, -115, 54}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE}, new byte[]{78, 46, 113, 76, 42, 23, -11, -119})), punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), puntoVar.f1882k.getText().toString(), AbstractC1387m.m2421h(new byte[]{26, 121}, new byte[]{106, 15, 106, 69, -69, -7, 105, 23}), 0));
                        puntoVar.f1882k.setVisibility(0);
                        break;
                    case 1:
                        String str4 = punto.f1867r;
                        punto.f1869t = Boolean.FALSE;
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-47, -27}, new byte[]{-80, -112, -8, -123, -56, 113, -15, 15}), punto.f1869t.booleanValue());
                        C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-71, -118, 45}, new byte[]{-44, -1, 95, 86, -43, 77, 113, -93}), "");
                        puntoVar.m1679x();
                        break;
                    case 2:
                        String str5 = punto.f1867r;
                        String str6 = AbstractC1358g0.f3235a;
                        EnumC1353f0[] enumC1353f0ArrValues2 = EnumC1353f0.values();
                        AlertDialog.Builder builder = new AlertDialog.Builder(puntoVar);
                        builder.setTitle(AbstractC1387m.m2421h(new byte[]{-13, 69, -92, -85, -83, -1, 25, 63, -47, 67, -84, -79, -65, -3, 92}, new byte[]{-80, 45, -53, -60, -34, -102, 57, 83}));
                        String[] strArr = new String[enumC1353f0ArrValues2.length];
                        for (int i17 = 0; i17 < enumC1353f0ArrValues2.length; i17++) {
                            String str7 = enumC1353f0ArrValues2[i17].f3223b;
                            strArr[i17] = str7;
                            if ("".equals(str7)) {
                                strArr[i17] = puntoVar.getResources().getString(R.string.AppLangDefault);
                            }
                        }
                        builder.setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(i16, puntoVar, enumC1353f0ArrValues2));
                        builder.show();
                        break;
                    case 3:
                        String str8 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) UpdateActivity.class), null);
                        break;
                    case 4:
                        String str9 = punto.f1867r;
                        puntoVar.finish();
                        break;
                    case 5:
                        String str10 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) PermActivity.class), null);
                        break;
                    case 6:
                        String str11 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar.f1874c, (Class<?>) MainWifiManadger.class), null);
                        break;
                    default:
                        String string2 = puntoVar.f1881j.getText().toString();
                        if (string2 == null ? false : Patterns.EMAIL_ADDRESS.matcher(string2).matches()) {
                            AbstractC3656k.m5877w(R.string.put_auth_mail_send, puntoVar.getApplicationContext());
                            String string3 = puntoVar.f1881j.getText().toString();
                            puntoVar.m1677u(new C1421s3(string3, punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), "", AbstractC1387m.m2421h(new byte[]{64, -27}, new byte[]{54, -120, 123, 71, 40, -63, -85, 56}), 0));
                            C1652b.m2745o().saveString(punto.m1674t(puntoVar.f1874c), string3);
                            puntoVar.m1678v(true);
                            puntoVar.f1882k.requestFocus();
                            puntoVar.f1883l.setEnabled(false);
                            new CountDownTimerC1416r3(puntoVar).start();
                        } else {
                            AbstractC3656k.m5877w(R.string.put_auth_mail, puntoVar.getApplicationContext());
                        }
                        break;
                }
            }
        });
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-124, -65, 105}, new byte[]{-12, -37, 7, -119, 48, 96, 76, 108}), false);
        this.f1887p.setChecked(zLoadBoolean);
        this.f1881j.setEnabled(zLoadBoolean);
        this.f1883l.setEnabled(zLoadBoolean);
        final int i15 = 4;
        ((Button) findViewById(R.id.button29)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.q3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ punto f3382c;

            {
                this.f3382c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i16 = i15;
                int i17 = 0;
                punto puntoVar = this.f3382c;
                switch (i16) {
                    case 0:
                        String str3 = punto.f1867r;
                        puntoVar.m1677u(new C1421s3(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-90, -37, ByteCompanionObject.MIN_VALUE}, new byte[]{-53, -82, -14, -46, 67, -116, -115, 54}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE}, new byte[]{78, 46, 113, 76, 42, 23, -11, -119})), punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), puntoVar.f1882k.getText().toString(), AbstractC1387m.m2421h(new byte[]{26, 121}, new byte[]{106, 15, 106, 69, -69, -7, 105, 23}), 0));
                        puntoVar.f1882k.setVisibility(0);
                        break;
                    case 1:
                        String str4 = punto.f1867r;
                        punto.f1869t = Boolean.FALSE;
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-47, -27}, new byte[]{-80, -112, -8, -123, -56, 113, -15, 15}), punto.f1869t.booleanValue());
                        C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-71, -118, 45}, new byte[]{-44, -1, 95, 86, -43, 77, 113, -93}), "");
                        puntoVar.m1679x();
                        break;
                    case 2:
                        String str5 = punto.f1867r;
                        String str6 = AbstractC1358g0.f3235a;
                        EnumC1353f0[] enumC1353f0ArrValues2 = EnumC1353f0.values();
                        AlertDialog.Builder builder = new AlertDialog.Builder(puntoVar);
                        builder.setTitle(AbstractC1387m.m2421h(new byte[]{-13, 69, -92, -85, -83, -1, 25, 63, -47, 67, -84, -79, -65, -3, 92}, new byte[]{-80, 45, -53, -60, -34, -102, 57, 83}));
                        String[] strArr = new String[enumC1353f0ArrValues2.length];
                        for (int i18 = 0; i18 < enumC1353f0ArrValues2.length; i18++) {
                            String str7 = enumC1353f0ArrValues2[i18].f3223b;
                            strArr[i18] = str7;
                            if ("".equals(str7)) {
                                strArr[i18] = puntoVar.getResources().getString(R.string.AppLangDefault);
                            }
                        }
                        builder.setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(i17, puntoVar, enumC1353f0ArrValues2));
                        builder.show();
                        break;
                    case 3:
                        String str8 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) UpdateActivity.class), null);
                        break;
                    case 4:
                        String str9 = punto.f1867r;
                        puntoVar.finish();
                        break;
                    case 5:
                        String str10 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) PermActivity.class), null);
                        break;
                    case 6:
                        String str11 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar.f1874c, (Class<?>) MainWifiManadger.class), null);
                        break;
                    default:
                        String string2 = puntoVar.f1881j.getText().toString();
                        if (string2 == null ? false : Patterns.EMAIL_ADDRESS.matcher(string2).matches()) {
                            AbstractC3656k.m5877w(R.string.put_auth_mail_send, puntoVar.getApplicationContext());
                            String string3 = puntoVar.f1881j.getText().toString();
                            puntoVar.m1677u(new C1421s3(string3, punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), "", AbstractC1387m.m2421h(new byte[]{64, -27}, new byte[]{54, -120, 123, 71, 40, -63, -85, 56}), 0));
                            C1652b.m2745o().saveString(punto.m1674t(puntoVar.f1874c), string3);
                            puntoVar.m1678v(true);
                            puntoVar.f1882k.requestFocus();
                            puntoVar.f1883l.setEnabled(false);
                            new CountDownTimerC1416r3(puntoVar).start();
                        } else {
                            AbstractC3656k.m5877w(R.string.put_auth_mail, puntoVar.getApplicationContext());
                        }
                        break;
                }
            }
        });
        final int i16 = 5;
        findViewById(R.id.b_start_act_app_perm).setOnClickListener(new View.OnClickListener(this) { // from class: e0.q3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ punto f3382c;

            {
                this.f3382c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i17 = i16;
                int i18 = 0;
                punto puntoVar = this.f3382c;
                switch (i17) {
                    case 0:
                        String str3 = punto.f1867r;
                        puntoVar.m1677u(new C1421s3(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-90, -37, ByteCompanionObject.MIN_VALUE}, new byte[]{-53, -82, -14, -46, 67, -116, -115, 54}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE}, new byte[]{78, 46, 113, 76, 42, 23, -11, -119})), punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), puntoVar.f1882k.getText().toString(), AbstractC1387m.m2421h(new byte[]{26, 121}, new byte[]{106, 15, 106, 69, -69, -7, 105, 23}), 0));
                        puntoVar.f1882k.setVisibility(0);
                        break;
                    case 1:
                        String str4 = punto.f1867r;
                        punto.f1869t = Boolean.FALSE;
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-47, -27}, new byte[]{-80, -112, -8, -123, -56, 113, -15, 15}), punto.f1869t.booleanValue());
                        C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-71, -118, 45}, new byte[]{-44, -1, 95, 86, -43, 77, 113, -93}), "");
                        puntoVar.m1679x();
                        break;
                    case 2:
                        String str5 = punto.f1867r;
                        String str6 = AbstractC1358g0.f3235a;
                        EnumC1353f0[] enumC1353f0ArrValues2 = EnumC1353f0.values();
                        AlertDialog.Builder builder = new AlertDialog.Builder(puntoVar);
                        builder.setTitle(AbstractC1387m.m2421h(new byte[]{-13, 69, -92, -85, -83, -1, 25, 63, -47, 67, -84, -79, -65, -3, 92}, new byte[]{-80, 45, -53, -60, -34, -102, 57, 83}));
                        String[] strArr = new String[enumC1353f0ArrValues2.length];
                        for (int i19 = 0; i19 < enumC1353f0ArrValues2.length; i19++) {
                            String str7 = enumC1353f0ArrValues2[i19].f3223b;
                            strArr[i19] = str7;
                            if ("".equals(str7)) {
                                strArr[i19] = puntoVar.getResources().getString(R.string.AppLangDefault);
                            }
                        }
                        builder.setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(i18, puntoVar, enumC1353f0ArrValues2));
                        builder.show();
                        break;
                    case 3:
                        String str8 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) UpdateActivity.class), null);
                        break;
                    case 4:
                        String str9 = punto.f1867r;
                        puntoVar.finish();
                        break;
                    case 5:
                        String str10 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) PermActivity.class), null);
                        break;
                    case 6:
                        String str11 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar.f1874c, (Class<?>) MainWifiManadger.class), null);
                        break;
                    default:
                        String string2 = puntoVar.f1881j.getText().toString();
                        if (string2 == null ? false : Patterns.EMAIL_ADDRESS.matcher(string2).matches()) {
                            AbstractC3656k.m5877w(R.string.put_auth_mail_send, puntoVar.getApplicationContext());
                            String string3 = puntoVar.f1881j.getText().toString();
                            puntoVar.m1677u(new C1421s3(string3, punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), "", AbstractC1387m.m2421h(new byte[]{64, -27}, new byte[]{54, -120, 123, 71, 40, -63, -85, 56}), 0));
                            C1652b.m2745o().saveString(punto.m1674t(puntoVar.f1874c), string3);
                            puntoVar.m1678v(true);
                            puntoVar.f1882k.requestFocus();
                            puntoVar.f1883l.setEnabled(false);
                            new CountDownTimerC1416r3(puntoVar).start();
                        } else {
                            AbstractC3656k.m5877w(R.string.put_auth_mail, puntoVar.getApplicationContext());
                        }
                        break;
                }
            }
        });
        if (f1869t.booleanValue()) {
            this.f1881j.setVisibility(8);
            this.f1883l.setVisibility(8);
            this.f1885n.setVisibility(8);
            m1678v(false);
            this.f1877f.setText(getResources().getString(R.string.auth_ok) + C1652b.m2745o().loadString(m1674t(this.f1874c), ""));
            this.f1885n.setVisibility(0);
            this.f1879h.setVisibility(0);
            this.f1887p.setEnabled(false);
        } else {
            m1679x();
        }
        if (!f1869t.booleanValue() && bundle != null) {
            m1678v(bundle.getBoolean(f1867r, false));
        }
        AlphaAnimation alphaAnimation = this.f1888q;
        alphaAnimation.setDuration(500L);
        alphaAnimation.setRepeatMode(2);
        alphaAnimation.setRepeatCount(-1);
        m1676s(zLoadBoolean);
        this.f1887p.setOnCheckedChangeListener(new C1418s0(i15, this));
        final int i17 = 6;
        ((Button) findViewById(R.id.button19)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.q3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ punto f3382c;

            {
                this.f3382c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i18 = i17;
                int i19 = 0;
                punto puntoVar = this.f3382c;
                switch (i18) {
                    case 0:
                        String str3 = punto.f1867r;
                        puntoVar.m1677u(new C1421s3(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-90, -37, ByteCompanionObject.MIN_VALUE}, new byte[]{-53, -82, -14, -46, 67, -116, -115, 54}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE}, new byte[]{78, 46, 113, 76, 42, 23, -11, -119})), punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), puntoVar.f1882k.getText().toString(), AbstractC1387m.m2421h(new byte[]{26, 121}, new byte[]{106, 15, 106, 69, -69, -7, 105, 23}), 0));
                        puntoVar.f1882k.setVisibility(0);
                        break;
                    case 1:
                        String str4 = punto.f1867r;
                        punto.f1869t = Boolean.FALSE;
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-47, -27}, new byte[]{-80, -112, -8, -123, -56, 113, -15, 15}), punto.f1869t.booleanValue());
                        C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-71, -118, 45}, new byte[]{-44, -1, 95, 86, -43, 77, 113, -93}), "");
                        puntoVar.m1679x();
                        break;
                    case 2:
                        String str5 = punto.f1867r;
                        String str6 = AbstractC1358g0.f3235a;
                        EnumC1353f0[] enumC1353f0ArrValues2 = EnumC1353f0.values();
                        AlertDialog.Builder builder = new AlertDialog.Builder(puntoVar);
                        builder.setTitle(AbstractC1387m.m2421h(new byte[]{-13, 69, -92, -85, -83, -1, 25, 63, -47, 67, -84, -79, -65, -3, 92}, new byte[]{-80, 45, -53, -60, -34, -102, 57, 83}));
                        String[] strArr = new String[enumC1353f0ArrValues2.length];
                        for (int i110 = 0; i110 < enumC1353f0ArrValues2.length; i110++) {
                            String str7 = enumC1353f0ArrValues2[i110].f3223b;
                            strArr[i110] = str7;
                            if ("".equals(str7)) {
                                strArr[i110] = puntoVar.getResources().getString(R.string.AppLangDefault);
                            }
                        }
                        builder.setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(i19, puntoVar, enumC1353f0ArrValues2));
                        builder.show();
                        break;
                    case 3:
                        String str8 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) UpdateActivity.class), null);
                        break;
                    case 4:
                        String str9 = punto.f1867r;
                        puntoVar.finish();
                        break;
                    case 5:
                        String str10 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) PermActivity.class), null);
                        break;
                    case 6:
                        String str11 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar.f1874c, (Class<?>) MainWifiManadger.class), null);
                        break;
                    default:
                        String string2 = puntoVar.f1881j.getText().toString();
                        if (string2 == null ? false : Patterns.EMAIL_ADDRESS.matcher(string2).matches()) {
                            AbstractC3656k.m5877w(R.string.put_auth_mail_send, puntoVar.getApplicationContext());
                            String string3 = puntoVar.f1881j.getText().toString();
                            puntoVar.m1677u(new C1421s3(string3, punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), "", AbstractC1387m.m2421h(new byte[]{64, -27}, new byte[]{54, -120, 123, 71, 40, -63, -85, 56}), 0));
                            C1652b.m2745o().saveString(punto.m1674t(puntoVar.f1874c), string3);
                            puntoVar.m1678v(true);
                            puntoVar.f1882k.requestFocus();
                            puntoVar.f1883l.setEnabled(false);
                            new CountDownTimerC1416r3(puntoVar).start();
                        } else {
                            AbstractC3656k.m5877w(R.string.put_auth_mail, puntoVar.getApplicationContext());
                        }
                        break;
                }
            }
        });
        final int i18 = 7;
        this.f1883l.setOnClickListener(new View.OnClickListener(this) { // from class: e0.q3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ punto f3382c;

            {
                this.f3382c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i19 = i18;
                int i110 = 0;
                punto puntoVar = this.f3382c;
                switch (i19) {
                    case 0:
                        String str3 = punto.f1867r;
                        puntoVar.m1677u(new C1421s3(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-90, -37, ByteCompanionObject.MIN_VALUE}, new byte[]{-53, -82, -14, -46, 67, -116, -115, 54}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE}, new byte[]{78, 46, 113, 76, 42, 23, -11, -119})), punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), puntoVar.f1882k.getText().toString(), AbstractC1387m.m2421h(new byte[]{26, 121}, new byte[]{106, 15, 106, 69, -69, -7, 105, 23}), 0));
                        puntoVar.f1882k.setVisibility(0);
                        break;
                    case 1:
                        String str4 = punto.f1867r;
                        punto.f1869t = Boolean.FALSE;
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-47, -27}, new byte[]{-80, -112, -8, -123, -56, 113, -15, 15}), punto.f1869t.booleanValue());
                        C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-71, -118, 45}, new byte[]{-44, -1, 95, 86, -43, 77, 113, -93}), "");
                        puntoVar.m1679x();
                        break;
                    case 2:
                        String str5 = punto.f1867r;
                        String str6 = AbstractC1358g0.f3235a;
                        EnumC1353f0[] enumC1353f0ArrValues2 = EnumC1353f0.values();
                        AlertDialog.Builder builder = new AlertDialog.Builder(puntoVar);
                        builder.setTitle(AbstractC1387m.m2421h(new byte[]{-13, 69, -92, -85, -83, -1, 25, 63, -47, 67, -84, -79, -65, -3, 92}, new byte[]{-80, 45, -53, -60, -34, -102, 57, 83}));
                        String[] strArr = new String[enumC1353f0ArrValues2.length];
                        for (int i111 = 0; i111 < enumC1353f0ArrValues2.length; i111++) {
                            String str7 = enumC1353f0ArrValues2[i111].f3223b;
                            strArr[i111] = str7;
                            if ("".equals(str7)) {
                                strArr[i111] = puntoVar.getResources().getString(R.string.AppLangDefault);
                            }
                        }
                        builder.setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(i110, puntoVar, enumC1353f0ArrValues2));
                        builder.show();
                        break;
                    case 3:
                        String str8 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) UpdateActivity.class), null);
                        break;
                    case 4:
                        String str9 = punto.f1867r;
                        puntoVar.finish();
                        break;
                    case 5:
                        String str10 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) PermActivity.class), null);
                        break;
                    case 6:
                        String str11 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar.f1874c, (Class<?>) MainWifiManadger.class), null);
                        break;
                    default:
                        String string2 = puntoVar.f1881j.getText().toString();
                        if (string2 == null ? false : Patterns.EMAIL_ADDRESS.matcher(string2).matches()) {
                            AbstractC3656k.m5877w(R.string.put_auth_mail_send, puntoVar.getApplicationContext());
                            String string3 = puntoVar.f1881j.getText().toString();
                            puntoVar.m1677u(new C1421s3(string3, punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), "", AbstractC1387m.m2421h(new byte[]{64, -27}, new byte[]{54, -120, 123, 71, 40, -63, -85, 56}), 0));
                            C1652b.m2745o().saveString(punto.m1674t(puntoVar.f1874c), string3);
                            puntoVar.m1678v(true);
                            puntoVar.f1882k.requestFocus();
                            puntoVar.f1883l.setEnabled(false);
                            new CountDownTimerC1416r3(puntoVar).start();
                        } else {
                            AbstractC3656k.m5877w(R.string.put_auth_mail, puntoVar.getApplicationContext());
                        }
                        break;
                }
            }
        });
        this.f1884m.setOnClickListener(new View.OnClickListener(this) { // from class: e0.q3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ punto f3382c;

            {
                this.f3382c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i19 = i12;
                int i110 = 0;
                punto puntoVar = this.f3382c;
                switch (i19) {
                    case 0:
                        String str3 = punto.f1867r;
                        puntoVar.m1677u(new C1421s3(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-90, -37, ByteCompanionObject.MIN_VALUE}, new byte[]{-53, -82, -14, -46, 67, -116, -115, 54}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE}, new byte[]{78, 46, 113, 76, 42, 23, -11, -119})), punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), puntoVar.f1882k.getText().toString(), AbstractC1387m.m2421h(new byte[]{26, 121}, new byte[]{106, 15, 106, 69, -69, -7, 105, 23}), 0));
                        puntoVar.f1882k.setVisibility(0);
                        break;
                    case 1:
                        String str4 = punto.f1867r;
                        punto.f1869t = Boolean.FALSE;
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-47, -27}, new byte[]{-80, -112, -8, -123, -56, 113, -15, 15}), punto.f1869t.booleanValue());
                        C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-71, -118, 45}, new byte[]{-44, -1, 95, 86, -43, 77, 113, -93}), "");
                        puntoVar.m1679x();
                        break;
                    case 2:
                        String str5 = punto.f1867r;
                        String str6 = AbstractC1358g0.f3235a;
                        EnumC1353f0[] enumC1353f0ArrValues2 = EnumC1353f0.values();
                        AlertDialog.Builder builder = new AlertDialog.Builder(puntoVar);
                        builder.setTitle(AbstractC1387m.m2421h(new byte[]{-13, 69, -92, -85, -83, -1, 25, 63, -47, 67, -84, -79, -65, -3, 92}, new byte[]{-80, 45, -53, -60, -34, -102, 57, 83}));
                        String[] strArr = new String[enumC1353f0ArrValues2.length];
                        for (int i111 = 0; i111 < enumC1353f0ArrValues2.length; i111++) {
                            String str7 = enumC1353f0ArrValues2[i111].f3223b;
                            strArr[i111] = str7;
                            if ("".equals(str7)) {
                                strArr[i111] = puntoVar.getResources().getString(R.string.AppLangDefault);
                            }
                        }
                        builder.setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(i110, puntoVar, enumC1353f0ArrValues2));
                        builder.show();
                        break;
                    case 3:
                        String str8 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) UpdateActivity.class), null);
                        break;
                    case 4:
                        String str9 = punto.f1867r;
                        puntoVar.finish();
                        break;
                    case 5:
                        String str10 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) PermActivity.class), null);
                        break;
                    case 6:
                        String str11 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar.f1874c, (Class<?>) MainWifiManadger.class), null);
                        break;
                    default:
                        String string2 = puntoVar.f1881j.getText().toString();
                        if (string2 == null ? false : Patterns.EMAIL_ADDRESS.matcher(string2).matches()) {
                            AbstractC3656k.m5877w(R.string.put_auth_mail_send, puntoVar.getApplicationContext());
                            String string3 = puntoVar.f1881j.getText().toString();
                            puntoVar.m1677u(new C1421s3(string3, punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), "", AbstractC1387m.m2421h(new byte[]{64, -27}, new byte[]{54, -120, 123, 71, 40, -63, -85, 56}), 0));
                            C1652b.m2745o().saveString(punto.m1674t(puntoVar.f1874c), string3);
                            puntoVar.m1678v(true);
                            puntoVar.f1882k.requestFocus();
                            puntoVar.f1883l.setEnabled(false);
                            new CountDownTimerC1416r3(puntoVar).start();
                        } else {
                            AbstractC3656k.m5877w(R.string.put_auth_mail, puntoVar.getApplicationContext());
                        }
                        break;
                }
            }
        });
        this.f1885n.setOnClickListener(new View.OnClickListener(this) { // from class: e0.q3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ punto f3382c;

            {
                this.f3382c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i19 = i11;
                int i110 = 0;
                punto puntoVar = this.f3382c;
                switch (i19) {
                    case 0:
                        String str3 = punto.f1867r;
                        puntoVar.m1677u(new C1421s3(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-90, -37, ByteCompanionObject.MIN_VALUE}, new byte[]{-53, -82, -14, -46, 67, -116, -115, 54}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE}, new byte[]{78, 46, 113, 76, 42, 23, -11, -119})), punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), puntoVar.f1882k.getText().toString(), AbstractC1387m.m2421h(new byte[]{26, 121}, new byte[]{106, 15, 106, 69, -69, -7, 105, 23}), 0));
                        puntoVar.f1882k.setVisibility(0);
                        break;
                    case 1:
                        String str4 = punto.f1867r;
                        punto.f1869t = Boolean.FALSE;
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-47, -27}, new byte[]{-80, -112, -8, -123, -56, 113, -15, 15}), punto.f1869t.booleanValue());
                        C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-71, -118, 45}, new byte[]{-44, -1, 95, 86, -43, 77, 113, -93}), "");
                        puntoVar.m1679x();
                        break;
                    case 2:
                        String str5 = punto.f1867r;
                        String str6 = AbstractC1358g0.f3235a;
                        EnumC1353f0[] enumC1353f0ArrValues2 = EnumC1353f0.values();
                        AlertDialog.Builder builder = new AlertDialog.Builder(puntoVar);
                        builder.setTitle(AbstractC1387m.m2421h(new byte[]{-13, 69, -92, -85, -83, -1, 25, 63, -47, 67, -84, -79, -65, -3, 92}, new byte[]{-80, 45, -53, -60, -34, -102, 57, 83}));
                        String[] strArr = new String[enumC1353f0ArrValues2.length];
                        for (int i111 = 0; i111 < enumC1353f0ArrValues2.length; i111++) {
                            String str7 = enumC1353f0ArrValues2[i111].f3223b;
                            strArr[i111] = str7;
                            if ("".equals(str7)) {
                                strArr[i111] = puntoVar.getResources().getString(R.string.AppLangDefault);
                            }
                        }
                        builder.setItems(strArr, new DialogInterfaceOnClickListenerC1348e0(i110, puntoVar, enumC1353f0ArrValues2));
                        builder.show();
                        break;
                    case 3:
                        String str8 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) UpdateActivity.class), null);
                        break;
                    case 4:
                        String str9 = punto.f1867r;
                        puntoVar.finish();
                        break;
                    case 5:
                        String str10 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar, (Class<?>) PermActivity.class), null);
                        break;
                    case 6:
                        String str11 = punto.f1867r;
                        AbstractC3656k.m5875u(puntoVar, new Intent(puntoVar.f1874c, (Class<?>) MainWifiManadger.class), null);
                        break;
                    default:
                        String string2 = puntoVar.f1881j.getText().toString();
                        if (string2 == null ? false : Patterns.EMAIL_ADDRESS.matcher(string2).matches()) {
                            AbstractC3656k.m5877w(R.string.put_auth_mail_send, puntoVar.getApplicationContext());
                            String string3 = puntoVar.f1881j.getText().toString();
                            puntoVar.m1677u(new C1421s3(string3, punto.m1674t(puntoVar.f1874c), punto.m1675w(C1440x1.f3470q), "", AbstractC1387m.m2421h(new byte[]{64, -27}, new byte[]{54, -120, 123, 71, 40, -63, -85, 56}), 0));
                            C1652b.m2745o().saveString(punto.m1674t(puntoVar.f1874c), string3);
                            puntoVar.m1678v(true);
                            puntoVar.f1882k.requestFocus();
                            puntoVar.f1883l.setEnabled(false);
                            new CountDownTimerC1416r3(puntoVar).start();
                        } else {
                            AbstractC3656k.m5877w(R.string.put_auth_mail, puntoVar.getApplicationContext());
                        }
                        break;
                }
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        String str = MainActivity.f1288e1;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        String str = MainActivity.f1288e1;
        m1678v(this.f1873b);
        boolean z9 = false;
        if (!f1868s.equals(AbstractC1387m.m2421h(new byte[]{-76}, new byte[]{-124, 46, -31, 93, -53, 121, -73, 109}))) {
            Long lValueOf = Long.valueOf((Long.parseLong(new String(android.util.Base64.decode(f1868s, 0))) - C1652b.m2734a().m2755j().m1635l(Long.MAX_VALUE).longValue()) / 86400);
            if (lValueOf.intValue() > 0) {
                int iIntValue = lValueOf.intValue();
                this.f1879h.setText(getResources().getString(R.string.lic_day_val) + String.valueOf(iIntValue) + getResources().getString(R.string.lic_day));
            } else {
                this.f1879h.setText(this.f1874c.getResources().getString(R.string.punto_lic_null));
            }
        }
        this.f1875d.post(new RunnableC1001e(this, z9, 5));
        m1677u(new C1421s3(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-109, -90, -55}, new byte[]{-2, -45, -69, -104, 39, -54, 6, -55}), ""), m1674t(this.f1874c), m1675w(C1440x1.f3470q), "", AbstractC1387m.m2421h(new byte[]{100, 124}, new byte[]{18, 25, 43, 62, -90, 26, 18, 15}), 0));
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(f1867r, this.f1873b);
        super.onSaveInstanceState(bundle);
    }

    /* JADX INFO: renamed from: s */
    public final void m1676s(boolean z9) {
        Switch r1 = this.f1887p;
        if (z9) {
            r1.getThumbDrawable().clearColorFilter();
            this.f1887p.getTrackDrawable().clearColorFilter();
            this.f1887p.clearAnimation();
        } else {
            Drawable thumbDrawable = r1.getThumbDrawable();
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            thumbDrawable.setColorFilter(-1, mode);
            this.f1887p.getTrackDrawable().setColorFilter(SupportMenu.CATEGORY_MASK, mode);
            this.f1887p.startAnimation(this.f1888q);
        }
    }

    /* JADX INFO: renamed from: u */
    public final void m1677u(C1421s3 c1421s3) {
        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-113, -117, -29, -103, 86}, new byte[]{-1, -2, -115, -19, 57, 4, -70, -14})).execute(new RunnableC1375j2(6, this, c1421s3));
    }

    /* JADX INFO: renamed from: v */
    public final void m1678v(boolean z9) {
        this.f1873b = z9;
        int i10 = z9 ? 0 : 8;
        this.f1882k.setVisibility(i10);
        this.f1884m.setVisibility(i10);
        this.f1878g.setVisibility(i10);
        if (z9) {
            this.f1882k.post(new RunnableC0014g(24, this));
        }
    }

    /* JADX INFO: renamed from: x */
    public final void m1679x() {
        this.f1881j.setVisibility(0);
        this.f1883l.setVisibility(0);
        this.f1885n.setVisibility(8);
        m1678v(false);
        this.f1877f.setText(getResources().getString(R.string.auth_mail));
        this.f1879h.setVisibility(8);
        this.f1887p.setEnabled(true);
    }
}
