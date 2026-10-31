package com.example.navistart;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import com.example.navistart.R;
import com.example.navistart.VJCT;
import com.example.navistart.boot;
import com.example.navistart.punto;
import com.wireguard.android.backend.GoBackend;
import p039d2.C1252h;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AsyncTaskC1356f3;
import p047e0.C1341c3;
import p047e0.C1351e3;
import p047e0.RunnableC1330a2;
import p047e0.ViewOnClickListenerC1399o1;
import p078h0.C1652b;
import p184r5.C3105c;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class VJCT extends AppCompatActivity {

    /* JADX INFO: renamed from: g */
    public static TextView f1689g;

    /* JADX INFO: renamed from: h */
    public static TextView f1690h;

    /* JADX INFO: renamed from: i */
    public static Button f1691i;

    /* JADX INFO: renamed from: j */
    public static TextView f1692j;

    /* JADX INFO: renamed from: b */
    public VJCT f1693b;

    /* JADX INFO: renamed from: c */
    public ProgressBar f1694c;

    /* JADX INFO: renamed from: d */
    public LinearLayout f1695d;

    /* JADX INFO: renamed from: e */
    public Switch f1696e;

    /* JADX INFO: renamed from: f */
    public AlertDialog.Builder f1697f;

    /* JADX INFO: renamed from: s */
    public static void m1602s(final int i10) {
        Button button = f1691i;
        if (button != null) {
            button.post(new Runnable() { // from class: e0.a3
                @Override // java.lang.Runnable
                public final void run() {
                    Context context = VJCT.f1691i.getContext();
                    VJCT.f1691i.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(context, i10 == ContextCompat.getColor(context, R.color.gray) ? R.color.modern_surface_high : R.color.modern_primary_dark)));
                }
            });
        }
    }

    /* JADX INFO: renamed from: t */
    public static void m1603t(String str) {
        Button button = f1691i;
        if (button != null) {
            button.post(new RunnableC1330a2(str, 4));
        }
    }

    /* JADX INFO: renamed from: u */
    public static void m1604u(String str) {
        TextView textView = f1690h;
        if (textView != null) {
            textView.post(new RunnableC1330a2(str, 5));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 15 && i11 == -1) {
            this.f1696e.setChecked(true);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_vjct);
        this.f1693b = this;
        f1690h = (TextView) findViewById(R.id.vkluchit_text);
        this.f1694c = (ProgressBar) findViewById(R.id.progressBar_v);
        f1692j = (TextView) findViewById(R.id.vpn_turn2_status);
        final int i10 = 0;
        ((Button) findViewById(R.id.button25)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.b3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ VJCT f3189c;

            {
                this.f3189c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i10;
                VJCT vjct = this.f3189c;
                switch (i11) {
                    case 0:
                        TextView textView = VJCT.f1689g;
                        vjct.finish();
                        break;
                    case 1:
                        String strM1674t = punto.m1674t(vjct.f1693b);
                        String strM1675w = punto.m1675w(Settings.Secure.getString(vjct.f1693b.getContentResolver(), AbstractC1387m.m2421h(new byte[]{90, -27, -109, -20, -56, -110, -6, 39, 82, -17}, new byte[]{59, -117, -9, -98, -89, -5, -98, 120})));
                        C3277a c3277aM2745o = C1652b.m2745o();
                        byte[] bArr = AbstractC1387m.f3322j;
                        String[] strArr = AbstractC1406p3.f3368a;
                        String strLoadString = c3277aM2745o.loadString(new String(bArr), "");
                        String strM1614e = boot.m1614e(C1652b.m2745o().loadString(punto.m1674t(vjct.f1693b), "") + punto.m1674t(vjct.f1693b));
                        AsyncTaskC1356f3 asyncTaskC1356f3 = new AsyncTaskC1356f3(0);
                        asyncTaskC1356f3.f3231b = new StringBuilder();
                        asyncTaskC1356f3.f3232c = -1;
                        asyncTaskC1356f3.f3233d = vjct;
                        asyncTaskC1356f3.execute(strM1674t, strM1675w, strLoadString, strM1614e);
                        break;
                    default:
                        Intent launchIntentForPackage = vjct.f1693b.getPackageManager().getLaunchIntentForPackage(AbstractC1387m.m2421h(new byte[]{-96, 29, 91, -50, 66, 118, -124, 90, -92, 7, 87, -110, 81, 49, -105, 81, -89, 0, 89, -119, 81}, new byte[]{-61, 114, 54, -32, 53, 31, -10, 63}));
                        if (launchIntentForPackage == null) {
                            VJCT.f1689g.setText(vjct.getResources().getString(R.string.vpn_shag2_error));
                        } else {
                            AbstractC3656k.m5875u(vjct, launchIntentForPackage, null);
                        }
                        break;
                }
            }
        });
        final int i11 = 1;
        ((Button) findViewById(R.id.button26)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.b3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ VJCT f3189c;

            {
                this.f3189c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i11;
                VJCT vjct = this.f3189c;
                switch (i12) {
                    case 0:
                        TextView textView = VJCT.f1689g;
                        vjct.finish();
                        break;
                    case 1:
                        String strM1674t = punto.m1674t(vjct.f1693b);
                        String strM1675w = punto.m1675w(Settings.Secure.getString(vjct.f1693b.getContentResolver(), AbstractC1387m.m2421h(new byte[]{90, -27, -109, -20, -56, -110, -6, 39, 82, -17}, new byte[]{59, -117, -9, -98, -89, -5, -98, 120})));
                        C3277a c3277aM2745o = C1652b.m2745o();
                        byte[] bArr = AbstractC1387m.f3322j;
                        String[] strArr = AbstractC1406p3.f3368a;
                        String strLoadString = c3277aM2745o.loadString(new String(bArr), "");
                        String strM1614e = boot.m1614e(C1652b.m2745o().loadString(punto.m1674t(vjct.f1693b), "") + punto.m1674t(vjct.f1693b));
                        AsyncTaskC1356f3 asyncTaskC1356f3 = new AsyncTaskC1356f3(0);
                        asyncTaskC1356f3.f3231b = new StringBuilder();
                        asyncTaskC1356f3.f3232c = -1;
                        asyncTaskC1356f3.f3233d = vjct;
                        asyncTaskC1356f3.execute(strM1674t, strM1675w, strLoadString, strM1614e);
                        break;
                    default:
                        Intent launchIntentForPackage = vjct.f1693b.getPackageManager().getLaunchIntentForPackage(AbstractC1387m.m2421h(new byte[]{-96, 29, 91, -50, 66, 118, -124, 90, -92, 7, 87, -110, 81, 49, -105, 81, -89, 0, 89, -119, 81}, new byte[]{-61, 114, 54, -32, 53, 31, -10, 63}));
                        if (launchIntentForPackage == null) {
                            VJCT.f1689g.setText(vjct.getResources().getString(R.string.vpn_shag2_error));
                        } else {
                            AbstractC3656k.m5875u(vjct, launchIntentForPackage, null);
                        }
                        break;
                }
            }
        });
        Button button = (Button) findViewById(R.id.vpn_vkluchit);
        f1691i = button;
        final int i12 = 2;
        button.setOnClickListener(new ViewOnClickListenerC1399o1(i12));
        f1689g = (TextView) findViewById(R.id.textView43);
        ((Button) findViewById(R.id.button_openvpn_client)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.b3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ VJCT f3189c;

            {
                this.f3189c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i12;
                VJCT vjct = this.f3189c;
                switch (i13) {
                    case 0:
                        TextView textView = VJCT.f1689g;
                        vjct.finish();
                        break;
                    case 1:
                        String strM1674t = punto.m1674t(vjct.f1693b);
                        String strM1675w = punto.m1675w(Settings.Secure.getString(vjct.f1693b.getContentResolver(), AbstractC1387m.m2421h(new byte[]{90, -27, -109, -20, -56, -110, -6, 39, 82, -17}, new byte[]{59, -117, -9, -98, -89, -5, -98, 120})));
                        C3277a c3277aM2745o = C1652b.m2745o();
                        byte[] bArr = AbstractC1387m.f3322j;
                        String[] strArr = AbstractC1406p3.f3368a;
                        String strLoadString = c3277aM2745o.loadString(new String(bArr), "");
                        String strM1614e = boot.m1614e(C1652b.m2745o().loadString(punto.m1674t(vjct.f1693b), "") + punto.m1674t(vjct.f1693b));
                        AsyncTaskC1356f3 asyncTaskC1356f3 = new AsyncTaskC1356f3(0);
                        asyncTaskC1356f3.f3231b = new StringBuilder();
                        asyncTaskC1356f3.f3232c = -1;
                        asyncTaskC1356f3.f3233d = vjct;
                        asyncTaskC1356f3.execute(strM1674t, strM1675w, strLoadString, strM1614e);
                        break;
                    default:
                        Intent launchIntentForPackage = vjct.f1693b.getPackageManager().getLaunchIntentForPackage(AbstractC1387m.m2421h(new byte[]{-96, 29, 91, -50, 66, 118, -124, 90, -92, 7, 87, -110, 81, 49, -105, 81, -89, 0, 89, -119, 81}, new byte[]{-61, 114, 54, -32, 53, 31, -10, 63}));
                        if (launchIntentForPackage == null) {
                            VJCT.f1689g.setText(vjct.getResources().getString(R.string.vpn_shag2_error));
                        } else {
                            AbstractC3656k.m5875u(vjct, launchIntentForPackage, null);
                        }
                        break;
                }
            }
        });
        Switch r9 = (Switch) findViewById(R.id.vpn_boot_start);
        r9.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{84, -87, 16, -115, 43, -16, -126, 47, 125, -86, 10, -77, 59, -21}, new byte[]{34, -39, 126, -46, 73, -97, -19, 91}), false));
        r9.setOnCheckedChangeListener(new C1351e3());
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-104, -38, -105, 95, -119, -28, -94, 108, -121, -55, -100, 115, -91, -14, -92, 123, -100, -34}, new byte[]{-18, -86, -7, 0, -6, -127, -48, 26}), false);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.vpn_start_lay);
        this.f1695d = linearLayout;
        if (zLoadBoolean) {
            linearLayout.setVisibility(0);
        } else {
            linearLayout.setVisibility(8);
        }
        Switch r10 = (Switch) findViewById(R.id.vpn_services_start);
        this.f1696e = r10;
        r10.setChecked(zLoadBoolean);
        this.f1696e.setOnCheckedChangeListener(new C1341c3(i10, this, r9));
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002f  */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        C1252h c1252h = TService.f1640c;
        if (c1252h != null) {
            try {
                GoBackend goBackend = (GoBackend) c1252h.f2955d;
                if (goBackend != null) {
                    if (goBackend.f2835c == ((C3105c) c1252h.f2957f)) {
                        m1603t(getResources().getString(R.string.vikluchit));
                        m1602s(ContextCompat.getColor(this.f1693b, R.color.Butt_Color));
                    } else {
                        m1603t(getResources().getString(R.string.vkluchit));
                        m1602s(ContextCompat.getColor(this.f1693b, R.color.gray));
                    }
                } else {
                    m1603t(getResources().getString(R.string.vkluchit));
                    m1602s(ContextCompat.getColor(this.f1693b, R.color.gray));
                }
            } catch (Exception unused) {
            }
        }
        AsyncTaskC1356f3 asyncTaskC1356f3 = new AsyncTaskC1356f3(1);
        asyncTaskC1356f3.f3231b = new StringBuilder();
        asyncTaskC1356f3.f3232c = -1;
        asyncTaskC1356f3.f3233d = this;
        String strM1674t = punto.m1674t(this.f1693b);
        String strM1675w = punto.m1675w(Settings.Secure.getString(this.f1693b.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-43, -78, -56, 58, 57, -63, -46, 51, -35, -72}, new byte[]{-76, -36, -84, 72, 86, -88, -74, 108})));
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        asyncTaskC1356f3.execute(strM1674t, strM1675w, c3277aM2745o.loadString(new String(bArr), ""), boot.m1614e(C1652b.m2745o().loadString(punto.m1674t(this.f1693b), "") + punto.m1674t(this.f1693b)));
    }
}
