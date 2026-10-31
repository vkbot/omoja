package com.woha.wifim;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.C0090h;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.manager.C1072r;
import com.example.navistart.R;
import com.example.navistart.mainview.OnOffButton;
import com.google.protobuf.AbstractC1178q;
import com.woha.wifim.MainWifiManadger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import okhttp3.Call;
import p047e0.AbstractC1387m;
import p047e0.C1418s0;
import p047e0.DialogInterfaceOnClickListenerC1346d3;
import p109k0.C2027c;
import p132m0.DialogInterfaceOnClickListenerC2373y0;
import p138m7.AbstractC2412k;
import p138m7.C2403b;
import p138m7.C2407f;
import p138m7.C2408g;
import p138m7.DialogInterfaceOnDismissListenerC2404c;
import p138m7.RunnableC2402a;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MainWifiManadger extends AppCompatActivity {

    /* JADX INFO: renamed from: v */
    public static String f2888v;

    /* JADX INFO: renamed from: b */
    public WifiManager f2889b;

    /* JADX INFO: renamed from: c */
    public ArrayList f2890c;

    /* JADX INFO: renamed from: d */
    public C2407f f2891d;

    /* JADX INFO: renamed from: e */
    public C2408g f2892e;

    /* JADX INFO: renamed from: f */
    public TextView f2893f;

    /* JADX INFO: renamed from: g */
    public TextView f2894g;

    /* JADX INFO: renamed from: h */
    public ConnectivityManager f2895h;

    /* JADX INFO: renamed from: i */
    public boolean f2896i;

    /* JADX INFO: renamed from: j */
    public Button f2897j;

    /* JADX INFO: renamed from: k */
    public OnOffButton f2898k;

    /* JADX INFO: renamed from: l */
    public Button f2899l;

    /* JADX INFO: renamed from: m */
    public Button f2900m;

    /* JADX INFO: renamed from: n */
    public RecyclerView f2901n;

    /* JADX INFO: renamed from: p */
    public AlertDialog f2903p;

    /* JADX INFO: renamed from: q */
    public Call f2904q;

    /* JADX INFO: renamed from: o */
    public String f2902o = "";

    /* JADX INFO: renamed from: r */
    public final Handler f2905r = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: s */
    public final RunnableC2402a f2906s = new RunnableC2402a(this, 0);

    /* JADX INFO: renamed from: t */
    public final RunnableC2402a f2907t = new RunnableC2402a(this, 2);

    /* JADX INFO: renamed from: u */
    public final C1072r f2908u = new C1072r(1, this);

    /* JADX INFO: renamed from: u */
    public static boolean m2211u(String str) {
        String upperCase = str != null ? str.toUpperCase() : "";
        if (upperCase.contains(AbstractC1387m.m2421h(new byte[]{-83, -110, 66}, new byte[]{-6, -41, 18, 19, 57, 119, -101, 84})) || upperCase.contains(AbstractC1387m.m2421h(new byte[]{-25, 78, -71}, new byte[]{-73, 29, -14, 85, 44, 38, 53, -52})) || upperCase.contains(AbstractC1387m.m2421h(new byte[]{-10, -100, 22}, new byte[]{-91, -35, 83, -84, 2, 92, 65, 13})) || upperCase.contains(AbstractC1387m.m2421h(new byte[]{-122, -17, 34}, new byte[]{-61, -82, 114, 33, -60, -44, -79, 25}))) {
            return Build.VERSION.SDK_INT >= 29 && upperCase.contains(AbstractC1387m.m2421h(new byte[]{-97, -48, 49}, new byte[]{-48, -121, 116, 13, -11, -56, 101, 48}));
        }
        return true;
    }

    /* JADX INFO: renamed from: A */
    public final void m2212A(boolean z9) {
        Button button = this.f2897j;
        if (!z9) {
            button.setEnabled(true);
            this.f2899l.setEnabled(true);
            this.f2897j.setText(getResources().getString(R.string.wifi_set_on));
            this.f2897j.setBackgroundColor(SupportMenu.CATEGORY_MASK);
            this.f2898k.setEnable(Boolean.TRUE);
            this.f2898k.setOnOff(Boolean.FALSE);
            this.f2898k.setTextButton(getResources().getString(R.string.wifi_set_on));
            return;
        }
        button.setEnabled(true);
        this.f2899l.setEnabled(true);
        this.f2897j.setText(getResources().getString(R.string.wifi_set_off));
        this.f2897j.setBackgroundColor(-16711936);
        OnOffButton onOffButton = this.f2898k;
        Boolean bool = Boolean.TRUE;
        onOffButton.setEnable(bool);
        this.f2898k.setOnOff(bool);
        this.f2898k.setTextButton(getResources().getString(R.string.wifi_set_off));
    }

    /* JADX INFO: renamed from: B */
    public final void m2213B() {
        if (this.f2889b.isWifiEnabled()) {
            AbstractC2412k.m3776c(this, false);
            C2407f c2407f = this.f2891d;
            List list = Collections.EMPTY_LIST;
            c2407f.m3768a(list, list, "");
        } else {
            AbstractC2412k.m3776c(this, true);
        }
        m2219y();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(AbstractC1387m.m2437x(context));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        List<WifiConfiguration> configuredNetworks;
        super.onCreate(bundle);
        getWindow().setStatusBarColor(ContextCompat.getColor(this, R.color.modern_background));
        getWindow().setNavigationBarColor(ContextCompat.getColor(this, R.color.modern_background));
        final int i10 = 0;
        getWindow().getDecorView().setSystemUiVisibility(0);
        setContentView(R.layout.activity_wifim);
        this.f2889b = (WifiManager) getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-113, 29, -111, 51}, new byte[]{-8, 116, -9, 90, 23, 75, 20, 77}));
        this.f2895h = (ConnectivityManager) getSystemService(AbstractC1387m.m2421h(new byte[]{47, -57, -24, 9, 69, 67, 65, -69, 58, -63, -14, 30}, new byte[]{76, -88, -122, 103, 32, 32, 53, -46}));
        this.f2893f = (TextView) findViewById(R.id.currentWifiStatus);
        this.f2894g = (TextView) findViewById(R.id.currentInternetStatus);
        this.f2897j = (Button) findViewById(R.id.wifiToggleButton);
        OnOffButton onOffButton = (OnOffButton) findViewById(R.id.wifiToggleButtonOnOff);
        this.f2898k = onOffButton;
        Button button = (Button) onOffButton.findViewById(R.id.onoff_button);
        button.setBackgroundResource(R.drawable.modern_button_primary);
        button.setBackgroundTintList(null);
        TextView textView = (TextView) this.f2898k.findViewById(R.id.textButton);
        textView.setTextColor(ContextCompat.getColor(this, R.color.modern_text));
        textView.setTextSize(17.0f);
        ((Button) findViewById(R.id.startDefWifiButton)).setOnClickListener(new View.OnClickListener(this) { // from class: m7.d

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ MainWifiManadger f6509c;

            {
                this.f6509c = this;
            }

            /* JADX WARN: Code duplicated, block: B:41:0x029f  */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean zM3121b;
                switch (i10) {
                    case 0:
                        String str = MainWifiManadger.f2888v;
                        C2027c c2027c = new C2027c(this.f6509c);
                        Context context = c2027c.f5538a;
                        String str2 = C2027c.f5537b;
                        Log.d(str2, AbstractC1387m.m2421h(new byte[]{46, 11, ByteCompanionObject.MAX_VALUE, 29, -5, 31, -81, 63, 46, 46, -113, 115, -97, 119, -64, 111, ByteCompanionObject.MAX_VALUE, 69, 45, 114, -88, 119, -63, 110, 67, 68, 17, 115, -104, 119, -64, -98, -87, -3, -23, -54, 11, 119, -62, 110, 75, 68, 18, 115, -98, 119, -54, 110, 72, 68, 26, 114, -85, 119, -50, -112, -48, -70}, new byte[]{-2, -108, -81, -93, 43, -89, 126, -66}));
                        C0090h[] c0090hArr = {new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-90, 28, -19, 80, -84, 42, 0, 124, -68, 0, -10, 80, -83, 33, 20, 112, -86, 23, -27}, new byte[]{-59, 115, ByteCompanionObject.MIN_VALUE, 126, -56, 79, 115, 29}), (Object) AbstractC1387m.m2421h(new byte[]{-88, 39, -36, 78, -117, 16, -92, 115, -78, 59, -57, 78, -118, 27, -80, ByteCompanionObject.MAX_VALUE, -92, 44, -44, 78, -102, 28, -7, 69, -94, 46, -40, 33, -116, 1, -66, 100, -94, 60, -56}, new byte[]{-53, 72, -79, 96, -17, 117, -41, 18}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-20, 70, 10, 17, 66, -3, -115, -104, -32, 64, 3, 17, 80, -10, -99, -98, -26, 71, 0, 76}, new byte[]{-113, 41, 103, 63, 35, -109, -23, -22}), (Object) AbstractC1387m.m2421h(new byte[]{16, -64, -46, -122, -38, -57, 13, -32, 28, -58, -37, -122, -56, -52, 29, -26, 26, -63, -40, -37, -107, -34, 0, -12, 26, -127, -24, -63, -35, -64, 58, -9, 7, -37, -42, -58, -36, -38}, new byte[]{115, -81, -65, -88, -69, -87, 105, -110}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-97, -3, -66, 94, 43, 118, -66, -43, -109, -5, -73, 94, 57, 125, -82, -45, -107, -4, -76, 3}, new byte[]{-4, -110, -45, 112, 74, 24, -38, -89}), (Object) AbstractC1387m.m2421h(new byte[]{4, -40, 11, -70, 80, 16, -87, -122, 8, -34, 2, -70, 66, 27, -71, ByteCompanionObject.MIN_VALUE, 14, -39, 1, -25, 31, 45, -88, ByteCompanionObject.MIN_VALUE, 19, -34, 8, -13, 66, 90, -102, -99, 1, -34, 53, -15, 69, 10, -92, -102, 0, -60, 39, -9, 69, 23, -69, -99, 19, -50}, new byte[]{103, -73, 102, -108, 49, 126, -51, -12}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-10, 115, 53, 44, 48, -10, -12, Base64.padSymbol, -6, 117, 60, 44, 34, -3, -28, 59, -4, 114, 63, 113}, new byte[]{-107, 28, 88, 2, 81, -104, -112, 79}), (Object) AbstractC1387m.m2421h(new byte[]{22, -60, -47, 120, 37, 32, 85, 7, 26, -62, -40, 120, 55, 43, 69, 1, 28, -59, -37, 37, 106, 57, 88, 19, 28, -123, -21, 63, 34, 39, 98, 16, 1, -33, -43, 56, 35, Base64.padSymbol, 112, 22, 1, -62, -54, 63, 48, 55}, new byte[]{117, -85, -68, 86, 68, 78, 49, 117}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{22, -92, 42, 23, -16, 122, 59, 13, 26, -94, 35, 23, -30, 113, 43, 11, 28, -91, 32, 74}, new byte[]{117, -53, 71, 57, -111, 20, 95, ByteCompanionObject.MAX_VALUE}), (Object) AbstractC1387m.m2421h(new byte[]{1, -78, ByteCompanionObject.MIN_VALUE, -30, 119, 80, 91, -68, 13, -76, -119, -30, 101, 91, 75, -70, 11, -77, -118, -65, 56, 109, 90, -70, 22, -76, -125, -85, 101, 26, 104, -89, 4, -76, -66, -87, 98, 74, 86, -96, 5, -82, -33, -115, 117, 74, 86, -72, 11, -87, -108}, new byte[]{98, -35, -19, -52, 22, 62, 63, -50}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-88, 46, -53, -79, -118, -10, 33, 87, -92, 40, -62, -79, -104, -3, 49, 81, -94, 47, -63, -20}, new byte[]{-53, 65, -90, -97, -21, -104, 69, 37}), (Object) AbstractC1387m.m2421h(new byte[]{123, -72, -93, 59, -20, -37, 85, 6, 119, -66, -86, 59, -2, -48, 69, 0, 113, -71, -87, 102, -93, -30, 88, 6, 125, -69, -85, 102, -2, -26, 84, 0, 108, -66, -96, 114, -2}, new byte[]{24, -41, -50, 21, -115, -75, 49, 116}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-30, -109, -14, -102, 119, 70, -43, -47, -18, -107, -5, -102, 101, 77, -59, -41, -24, -110, -8, -57}, new byte[]{-127, -4, -97, -76, 22, 40, -79, -93}), (Object) AbstractC1387m.m2421h(new byte[]{-9, 59, 77, 83, -78, -38, 105, -56, -5, Base64.padSymbol, 68, 83, -96, -47, 121, -50, -3, 58, 71, 14, -3, -25, 104, -50, -32, Base64.padSymbol, 78, 26, -96, -112, 90, -45, -26, 49, 76, 24, -96, -57, 94, -33, -32, 32, 73, 19, -76, -57, 76, -39, -32, Base64.padSymbol, 86, 20, -89, -51}, new byte[]{-108, 84, 32, 125, -45, -76, 13, -70}), false, 26)};
                        for (int i11 = 0; i11 < 7; i11++) {
                            C0090h c0090h = c0090hArr[i11];
                            String str3 = (String) c0090h.f191c;
                            String str4 = (String) c0090h.f192d;
                            if (c2027c.m3122c(str3, str4)) {
                                Log.d(str2, AbstractC1387m.m2421h(new byte[]{-21, -52, 7, -58, -14, -44, 21, 111, -22, -25, 6, -6, -14, -43, -27, 10, -116, -65, 102, -105, -99, -70, 70, 11, -78, -65, 99, -105, -97, 81, -27}, new byte[]{59, 111, -42, 71, 34, 107, -59, -38}) + ((String) c0090h.f191c) + AbstractC1387m.m2421h(new byte[]{20}, new byte[]{59, -59, 12, 3, 15, -42, 66, -50}) + str4);
                            }
                            break;
                        }
                        Log.d(str2, AbstractC1387m.m2421h(new byte[]{-124, 100, -42, 119, 40, -68, -56, 100, -124, 125, -41, 76, 40, -79, -56, 101, -124, 120, -41, 67, 40, -68, 57, -75, Base64.padSymbol, -125, 111, -24, -71, 106, 109, -117, 34, -84, 114, -79, -40, -39, -92, 50, -31, -27, -42, 117, 40, -71, -55, 91, -124, 113, -42, 125, 40, -76, -56, 105, 120, -27, -42, 119, 41, -119, -55, 92, -124, 116, -41, 75, 40, -68, -55, 94, 116, 21, -72, 24, 73, -40, -112, 50, -20, 21, -77, -24, 40, -75, -55, 87, -123, 71, -42, 118, 40, -67, -56, 105, 122, -21, 40}, new byte[]{84, -59, 6, -56, -8, 9, 25, -30}));
                        if (!c2027c.m3121b()) {
                            String str5 = C2027c.f5537b;
                            Log.d(str5, AbstractC1387m.m2421h(new byte[]{72, -97, -23, 71, 106, -18, -30, -127, 73, -125, -24, 114, 106, -20, 18, -32, 39, -47, -72, 22, 53, ByteCompanionObject.MIN_VALUE, -114, -32, 38, -48, -115, -25, 106, -30, -30, -118, 72, -69, -23, 73, 107, -41, -30, -123, 72, -67, -24, ByteCompanionObject.MAX_VALUE, 106, -27, 18, 103, -15, 70, 81, -23, -108, 126}, new byte[]{-104, 0, 56, -57, -70, 80, 50, 48}));
                            try {
                                WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{102, -105, 28, 95}, new byte[]{17, -2, 122, 54, -123, 110, 64, 126}));
                                if (wifiManager == null) {
                                    zM3121b = false;
                                } else {
                                    if (wifiManager.isWifiEnabled()) {
                                        Log.d(str5, AbstractC1387m.m2421h(new byte[]{46, 120, 91, -110, 119, -109, 39, 116, -49, -63, -88, -37, -121, -16, 116, 30, -87, -86, -52, 117, -122, -59, 116, 17, -87, -84}, new byte[]{121, 17, 29, -5, 87, 66, -92, -92}));
                                        AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{19, 74, -60, 89, -103, 5, -7, 108, -14, -13, 55, 16, 105, 102, -86, 6, -108, -104, 83, -66, 104, 83, -86, 9, -108, -98}, new byte[]{68, 35, -126, 48, -71, -44, 122, -68}));
                                    } else if (Build.VERSION.SDK_INT >= 29) {
                                        zM3121b = c2027c.m3121b();
                                    } else {
                                        boolean wifiEnabled = wifiManager.setWifiEnabled(true);
                                        Log.d(str5, AbstractC1387m.m2421h(new byte[]{-104, 24, 67, -94, -13, 55, 100, -115, 79, -96, -118, 27, 111, 55, 101, -116, 122, 81, -43, 121, 3, 93, 11, -25, 30, -1, -44, 76, 3, 82, 11, -31, 31, -55, -43, 126, -23, -57}, new byte[]{-49, 113, 5, -53, -45, -25, -37, 92}).concat(wifiEnabled ? AbstractC1387m.m2421h(new byte[]{-75, -36, 66, 96, -104, -61, -110, -38, -75, -41, 67, 92, -104, -62}, new byte[]{100, 95, -109, -31, 72, 124, 66, 111}) : AbstractC1387m.m2421h(new byte[]{-67, 59, 74, 74, 30, -84, -9, -24, -67, 63, 75, 114}, new byte[]{109, -123, -101, -62, -50, 20, 39, 89})));
                                        if (wifiEnabled) {
                                            AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{63, -35, 32, 70, 6, 121, 1, 114, -46, 100, -35, -2, -88, 120, 52, 114, -35, 100, -37}, new byte[]{104, -76, 102, 47, 38, -87, -77, -94}));
                                        } else {
                                            zM3121b = false;
                                        }
                                    }
                                    zM3121b = true;
                                }
                            } catch (Exception e) {
                                Log.d(str5, AbstractC1387m.m2421h(new byte[]{91, 76, 102, -11, -14, 12, 107, -97, 91, 104, 103, -51, 2, 100, 4, -1, 11, 3, 56, -83, -98, 100, 5, -2, 56, 2, 9, 93, -14, 6, 107, -108, 91, 105, 102, -13, -13, 51, 107, -101, 91, 111, 103, -59, -13, 59, -101, 121, -30, -108, -34, 71, 2}, new byte[]{-117, -46, -73, 125, 34, -76, -69, 46}) + e.getMessage());
                            }
                            if (!zM3121b) {
                                Log.e(str2, AbstractC1387m.m2421h(new byte[]{24, 89, 36, 68, -36, -90, 100, -18, 124, 20, 68, 33, 71, -89, 89, -17, 73, 21, 120, -47, 44, -55, 54, -68, 24, 126, 37, 113, 45, -4, 54, -68, 25, 72, -44, 33, 65, -89, 87, -17, 73, 21, 118, 32, 124, -89, 89, -18, 113, 20, 78, 33, 68, 87, -80, 87, -114, -83}, new byte[]{-56, -60, -12, -15, -4, 119, -25, 62}));
                                AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{116, -113, 13, 87, -106, 114, -91, -62, -106, 54, -10, -18, 3, 114, -83, -62, -107, 54, -2, -17, 54, -126, -55, -81, -13, 83, 107, -18, 11, 114, -87, -62, -102, 54, -1, -18, 3, 114, -92}, new byte[]{35, -26, 75, 62, -74, -94, 25, 18}));
                                break;
                            }
                        }
                        break;
                    case 1:
                        String str6 = MainWifiManadger.f2888v;
                        this.f6509c.onBackPressed();
                        break;
                    case 2:
                        String str7 = MainWifiManadger.f2888v;
                        this.f6509c.m2213B();
                        break;
                    default:
                        String str8 = MainWifiManadger.f2888v;
                        this.f6509c.m2216v();
                        break;
                }
            }
        });
        this.f2899l = (Button) findViewById(R.id.refreshWifiButton);
        this.f2901n = (RecyclerView) findViewById(R.id.recyclerView);
        Button button2 = (Button) findViewById(R.id.wifi_acti_back);
        this.f2900m = button2;
        button2.setText(R.string.b_back);
        final int i11 = 1;
        this.f2900m.setOnClickListener(new View.OnClickListener(this) { // from class: m7.d

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ MainWifiManadger f6509c;

            {
                this.f6509c = this;
            }

            /* JADX WARN: Code duplicated, block: B:41:0x029f  */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean zM3121b;
                switch (i11) {
                    case 0:
                        String str = MainWifiManadger.f2888v;
                        C2027c c2027c = new C2027c(this.f6509c);
                        Context context = c2027c.f5538a;
                        String str2 = C2027c.f5537b;
                        Log.d(str2, AbstractC1387m.m2421h(new byte[]{46, 11, ByteCompanionObject.MAX_VALUE, 29, -5, 31, -81, 63, 46, 46, -113, 115, -97, 119, -64, 111, ByteCompanionObject.MAX_VALUE, 69, 45, 114, -88, 119, -63, 110, 67, 68, 17, 115, -104, 119, -64, -98, -87, -3, -23, -54, 11, 119, -62, 110, 75, 68, 18, 115, -98, 119, -54, 110, 72, 68, 26, 114, -85, 119, -50, -112, -48, -70}, new byte[]{-2, -108, -81, -93, 43, -89, 126, -66}));
                        C0090h[] c0090hArr = {new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-90, 28, -19, 80, -84, 42, 0, 124, -68, 0, -10, 80, -83, 33, 20, 112, -86, 23, -27}, new byte[]{-59, 115, ByteCompanionObject.MIN_VALUE, 126, -56, 79, 115, 29}), (Object) AbstractC1387m.m2421h(new byte[]{-88, 39, -36, 78, -117, 16, -92, 115, -78, 59, -57, 78, -118, 27, -80, ByteCompanionObject.MAX_VALUE, -92, 44, -44, 78, -102, 28, -7, 69, -94, 46, -40, 33, -116, 1, -66, 100, -94, 60, -56}, new byte[]{-53, 72, -79, 96, -17, 117, -41, 18}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-20, 70, 10, 17, 66, -3, -115, -104, -32, 64, 3, 17, 80, -10, -99, -98, -26, 71, 0, 76}, new byte[]{-113, 41, 103, 63, 35, -109, -23, -22}), (Object) AbstractC1387m.m2421h(new byte[]{16, -64, -46, -122, -38, -57, 13, -32, 28, -58, -37, -122, -56, -52, 29, -26, 26, -63, -40, -37, -107, -34, 0, -12, 26, -127, -24, -63, -35, -64, 58, -9, 7, -37, -42, -58, -36, -38}, new byte[]{115, -81, -65, -88, -69, -87, 105, -110}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-97, -3, -66, 94, 43, 118, -66, -43, -109, -5, -73, 94, 57, 125, -82, -45, -107, -4, -76, 3}, new byte[]{-4, -110, -45, 112, 74, 24, -38, -89}), (Object) AbstractC1387m.m2421h(new byte[]{4, -40, 11, -70, 80, 16, -87, -122, 8, -34, 2, -70, 66, 27, -71, ByteCompanionObject.MIN_VALUE, 14, -39, 1, -25, 31, 45, -88, ByteCompanionObject.MIN_VALUE, 19, -34, 8, -13, 66, 90, -102, -99, 1, -34, 53, -15, 69, 10, -92, -102, 0, -60, 39, -9, 69, 23, -69, -99, 19, -50}, new byte[]{103, -73, 102, -108, 49, 126, -51, -12}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-10, 115, 53, 44, 48, -10, -12, Base64.padSymbol, -6, 117, 60, 44, 34, -3, -28, 59, -4, 114, 63, 113}, new byte[]{-107, 28, 88, 2, 81, -104, -112, 79}), (Object) AbstractC1387m.m2421h(new byte[]{22, -60, -47, 120, 37, 32, 85, 7, 26, -62, -40, 120, 55, 43, 69, 1, 28, -59, -37, 37, 106, 57, 88, 19, 28, -123, -21, 63, 34, 39, 98, 16, 1, -33, -43, 56, 35, Base64.padSymbol, 112, 22, 1, -62, -54, 63, 48, 55}, new byte[]{117, -85, -68, 86, 68, 78, 49, 117}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{22, -92, 42, 23, -16, 122, 59, 13, 26, -94, 35, 23, -30, 113, 43, 11, 28, -91, 32, 74}, new byte[]{117, -53, 71, 57, -111, 20, 95, ByteCompanionObject.MAX_VALUE}), (Object) AbstractC1387m.m2421h(new byte[]{1, -78, ByteCompanionObject.MIN_VALUE, -30, 119, 80, 91, -68, 13, -76, -119, -30, 101, 91, 75, -70, 11, -77, -118, -65, 56, 109, 90, -70, 22, -76, -125, -85, 101, 26, 104, -89, 4, -76, -66, -87, 98, 74, 86, -96, 5, -82, -33, -115, 117, 74, 86, -72, 11, -87, -108}, new byte[]{98, -35, -19, -52, 22, 62, 63, -50}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-88, 46, -53, -79, -118, -10, 33, 87, -92, 40, -62, -79, -104, -3, 49, 81, -94, 47, -63, -20}, new byte[]{-53, 65, -90, -97, -21, -104, 69, 37}), (Object) AbstractC1387m.m2421h(new byte[]{123, -72, -93, 59, -20, -37, 85, 6, 119, -66, -86, 59, -2, -48, 69, 0, 113, -71, -87, 102, -93, -30, 88, 6, 125, -69, -85, 102, -2, -26, 84, 0, 108, -66, -96, 114, -2}, new byte[]{24, -41, -50, 21, -115, -75, 49, 116}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-30, -109, -14, -102, 119, 70, -43, -47, -18, -107, -5, -102, 101, 77, -59, -41, -24, -110, -8, -57}, new byte[]{-127, -4, -97, -76, 22, 40, -79, -93}), (Object) AbstractC1387m.m2421h(new byte[]{-9, 59, 77, 83, -78, -38, 105, -56, -5, Base64.padSymbol, 68, 83, -96, -47, 121, -50, -3, 58, 71, 14, -3, -25, 104, -50, -32, Base64.padSymbol, 78, 26, -96, -112, 90, -45, -26, 49, 76, 24, -96, -57, 94, -33, -32, 32, 73, 19, -76, -57, 76, -39, -32, Base64.padSymbol, 86, 20, -89, -51}, new byte[]{-108, 84, 32, 125, -45, -76, 13, -70}), false, 26)};
                        for (int i12 = 0; i12 < 7; i12++) {
                            C0090h c0090h = c0090hArr[i12];
                            String str3 = (String) c0090h.f191c;
                            String str4 = (String) c0090h.f192d;
                            if (c2027c.m3122c(str3, str4)) {
                                Log.d(str2, AbstractC1387m.m2421h(new byte[]{-21, -52, 7, -58, -14, -44, 21, 111, -22, -25, 6, -6, -14, -43, -27, 10, -116, -65, 102, -105, -99, -70, 70, 11, -78, -65, 99, -105, -97, 81, -27}, new byte[]{59, 111, -42, 71, 34, 107, -59, -38}) + ((String) c0090h.f191c) + AbstractC1387m.m2421h(new byte[]{20}, new byte[]{59, -59, 12, 3, 15, -42, 66, -50}) + str4);
                            }
                            break;
                        }
                        Log.d(str2, AbstractC1387m.m2421h(new byte[]{-124, 100, -42, 119, 40, -68, -56, 100, -124, 125, -41, 76, 40, -79, -56, 101, -124, 120, -41, 67, 40, -68, 57, -75, Base64.padSymbol, -125, 111, -24, -71, 106, 109, -117, 34, -84, 114, -79, -40, -39, -92, 50, -31, -27, -42, 117, 40, -71, -55, 91, -124, 113, -42, 125, 40, -76, -56, 105, 120, -27, -42, 119, 41, -119, -55, 92, -124, 116, -41, 75, 40, -68, -55, 94, 116, 21, -72, 24, 73, -40, -112, 50, -20, 21, -77, -24, 40, -75, -55, 87, -123, 71, -42, 118, 40, -67, -56, 105, 122, -21, 40}, new byte[]{84, -59, 6, -56, -8, 9, 25, -30}));
                        if (!c2027c.m3121b()) {
                            String str5 = C2027c.f5537b;
                            Log.d(str5, AbstractC1387m.m2421h(new byte[]{72, -97, -23, 71, 106, -18, -30, -127, 73, -125, -24, 114, 106, -20, 18, -32, 39, -47, -72, 22, 53, ByteCompanionObject.MIN_VALUE, -114, -32, 38, -48, -115, -25, 106, -30, -30, -118, 72, -69, -23, 73, 107, -41, -30, -123, 72, -67, -24, ByteCompanionObject.MAX_VALUE, 106, -27, 18, 103, -15, 70, 81, -23, -108, 126}, new byte[]{-104, 0, 56, -57, -70, 80, 50, 48}));
                            try {
                                WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{102, -105, 28, 95}, new byte[]{17, -2, 122, 54, -123, 110, 64, 126}));
                                if (wifiManager == null) {
                                    zM3121b = false;
                                } else {
                                    if (wifiManager.isWifiEnabled()) {
                                        Log.d(str5, AbstractC1387m.m2421h(new byte[]{46, 120, 91, -110, 119, -109, 39, 116, -49, -63, -88, -37, -121, -16, 116, 30, -87, -86, -52, 117, -122, -59, 116, 17, -87, -84}, new byte[]{121, 17, 29, -5, 87, 66, -92, -92}));
                                        AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{19, 74, -60, 89, -103, 5, -7, 108, -14, -13, 55, 16, 105, 102, -86, 6, -108, -104, 83, -66, 104, 83, -86, 9, -108, -98}, new byte[]{68, 35, -126, 48, -71, -44, 122, -68}));
                                    } else if (Build.VERSION.SDK_INT >= 29) {
                                        zM3121b = c2027c.m3121b();
                                    } else {
                                        boolean wifiEnabled = wifiManager.setWifiEnabled(true);
                                        Log.d(str5, AbstractC1387m.m2421h(new byte[]{-104, 24, 67, -94, -13, 55, 100, -115, 79, -96, -118, 27, 111, 55, 101, -116, 122, 81, -43, 121, 3, 93, 11, -25, 30, -1, -44, 76, 3, 82, 11, -31, 31, -55, -43, 126, -23, -57}, new byte[]{-49, 113, 5, -53, -45, -25, -37, 92}).concat(wifiEnabled ? AbstractC1387m.m2421h(new byte[]{-75, -36, 66, 96, -104, -61, -110, -38, -75, -41, 67, 92, -104, -62}, new byte[]{100, 95, -109, -31, 72, 124, 66, 111}) : AbstractC1387m.m2421h(new byte[]{-67, 59, 74, 74, 30, -84, -9, -24, -67, 63, 75, 114}, new byte[]{109, -123, -101, -62, -50, 20, 39, 89})));
                                        if (wifiEnabled) {
                                            AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{63, -35, 32, 70, 6, 121, 1, 114, -46, 100, -35, -2, -88, 120, 52, 114, -35, 100, -37}, new byte[]{104, -76, 102, 47, 38, -87, -77, -94}));
                                        } else {
                                            zM3121b = false;
                                        }
                                    }
                                    zM3121b = true;
                                }
                            } catch (Exception e) {
                                Log.d(str5, AbstractC1387m.m2421h(new byte[]{91, 76, 102, -11, -14, 12, 107, -97, 91, 104, 103, -51, 2, 100, 4, -1, 11, 3, 56, -83, -98, 100, 5, -2, 56, 2, 9, 93, -14, 6, 107, -108, 91, 105, 102, -13, -13, 51, 107, -101, 91, 111, 103, -59, -13, 59, -101, 121, -30, -108, -34, 71, 2}, new byte[]{-117, -46, -73, 125, 34, -76, -69, 46}) + e.getMessage());
                            }
                            if (!zM3121b) {
                                Log.e(str2, AbstractC1387m.m2421h(new byte[]{24, 89, 36, 68, -36, -90, 100, -18, 124, 20, 68, 33, 71, -89, 89, -17, 73, 21, 120, -47, 44, -55, 54, -68, 24, 126, 37, 113, 45, -4, 54, -68, 25, 72, -44, 33, 65, -89, 87, -17, 73, 21, 118, 32, 124, -89, 89, -18, 113, 20, 78, 33, 68, 87, -80, 87, -114, -83}, new byte[]{-56, -60, -12, -15, -4, 119, -25, 62}));
                                AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{116, -113, 13, 87, -106, 114, -91, -62, -106, 54, -10, -18, 3, 114, -83, -62, -107, 54, -2, -17, 54, -126, -55, -81, -13, 83, 107, -18, 11, 114, -87, -62, -102, 54, -1, -18, 3, 114, -92}, new byte[]{35, -26, 75, 62, -74, -94, 25, 18}));
                                break;
                            }
                        }
                        break;
                    case 1:
                        String str6 = MainWifiManadger.f2888v;
                        this.f6509c.onBackPressed();
                        break;
                    case 2:
                        String str7 = MainWifiManadger.f2888v;
                        this.f6509c.m2213B();
                        break;
                    default:
                        String str8 = MainWifiManadger.f2888v;
                        this.f6509c.m2216v();
                        break;
                }
            }
        });
        this.f2898k.setRunnableOn(new RunnableC2402a(this, 3));
        this.f2898k.setRunnableOff(new RunnableC2402a(this, 4));
        final int i12 = 2;
        this.f2897j.setOnClickListener(new View.OnClickListener(this) { // from class: m7.d

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ MainWifiManadger f6509c;

            {
                this.f6509c = this;
            }

            /* JADX WARN: Code duplicated, block: B:41:0x029f  */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean zM3121b;
                switch (i12) {
                    case 0:
                        String str = MainWifiManadger.f2888v;
                        C2027c c2027c = new C2027c(this.f6509c);
                        Context context = c2027c.f5538a;
                        String str2 = C2027c.f5537b;
                        Log.d(str2, AbstractC1387m.m2421h(new byte[]{46, 11, ByteCompanionObject.MAX_VALUE, 29, -5, 31, -81, 63, 46, 46, -113, 115, -97, 119, -64, 111, ByteCompanionObject.MAX_VALUE, 69, 45, 114, -88, 119, -63, 110, 67, 68, 17, 115, -104, 119, -64, -98, -87, -3, -23, -54, 11, 119, -62, 110, 75, 68, 18, 115, -98, 119, -54, 110, 72, 68, 26, 114, -85, 119, -50, -112, -48, -70}, new byte[]{-2, -108, -81, -93, 43, -89, 126, -66}));
                        C0090h[] c0090hArr = {new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-90, 28, -19, 80, -84, 42, 0, 124, -68, 0, -10, 80, -83, 33, 20, 112, -86, 23, -27}, new byte[]{-59, 115, ByteCompanionObject.MIN_VALUE, 126, -56, 79, 115, 29}), (Object) AbstractC1387m.m2421h(new byte[]{-88, 39, -36, 78, -117, 16, -92, 115, -78, 59, -57, 78, -118, 27, -80, ByteCompanionObject.MAX_VALUE, -92, 44, -44, 78, -102, 28, -7, 69, -94, 46, -40, 33, -116, 1, -66, 100, -94, 60, -56}, new byte[]{-53, 72, -79, 96, -17, 117, -41, 18}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-20, 70, 10, 17, 66, -3, -115, -104, -32, 64, 3, 17, 80, -10, -99, -98, -26, 71, 0, 76}, new byte[]{-113, 41, 103, 63, 35, -109, -23, -22}), (Object) AbstractC1387m.m2421h(new byte[]{16, -64, -46, -122, -38, -57, 13, -32, 28, -58, -37, -122, -56, -52, 29, -26, 26, -63, -40, -37, -107, -34, 0, -12, 26, -127, -24, -63, -35, -64, 58, -9, 7, -37, -42, -58, -36, -38}, new byte[]{115, -81, -65, -88, -69, -87, 105, -110}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-97, -3, -66, 94, 43, 118, -66, -43, -109, -5, -73, 94, 57, 125, -82, -45, -107, -4, -76, 3}, new byte[]{-4, -110, -45, 112, 74, 24, -38, -89}), (Object) AbstractC1387m.m2421h(new byte[]{4, -40, 11, -70, 80, 16, -87, -122, 8, -34, 2, -70, 66, 27, -71, ByteCompanionObject.MIN_VALUE, 14, -39, 1, -25, 31, 45, -88, ByteCompanionObject.MIN_VALUE, 19, -34, 8, -13, 66, 90, -102, -99, 1, -34, 53, -15, 69, 10, -92, -102, 0, -60, 39, -9, 69, 23, -69, -99, 19, -50}, new byte[]{103, -73, 102, -108, 49, 126, -51, -12}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-10, 115, 53, 44, 48, -10, -12, Base64.padSymbol, -6, 117, 60, 44, 34, -3, -28, 59, -4, 114, 63, 113}, new byte[]{-107, 28, 88, 2, 81, -104, -112, 79}), (Object) AbstractC1387m.m2421h(new byte[]{22, -60, -47, 120, 37, 32, 85, 7, 26, -62, -40, 120, 55, 43, 69, 1, 28, -59, -37, 37, 106, 57, 88, 19, 28, -123, -21, 63, 34, 39, 98, 16, 1, -33, -43, 56, 35, Base64.padSymbol, 112, 22, 1, -62, -54, 63, 48, 55}, new byte[]{117, -85, -68, 86, 68, 78, 49, 117}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{22, -92, 42, 23, -16, 122, 59, 13, 26, -94, 35, 23, -30, 113, 43, 11, 28, -91, 32, 74}, new byte[]{117, -53, 71, 57, -111, 20, 95, ByteCompanionObject.MAX_VALUE}), (Object) AbstractC1387m.m2421h(new byte[]{1, -78, ByteCompanionObject.MIN_VALUE, -30, 119, 80, 91, -68, 13, -76, -119, -30, 101, 91, 75, -70, 11, -77, -118, -65, 56, 109, 90, -70, 22, -76, -125, -85, 101, 26, 104, -89, 4, -76, -66, -87, 98, 74, 86, -96, 5, -82, -33, -115, 117, 74, 86, -72, 11, -87, -108}, new byte[]{98, -35, -19, -52, 22, 62, 63, -50}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-88, 46, -53, -79, -118, -10, 33, 87, -92, 40, -62, -79, -104, -3, 49, 81, -94, 47, -63, -20}, new byte[]{-53, 65, -90, -97, -21, -104, 69, 37}), (Object) AbstractC1387m.m2421h(new byte[]{123, -72, -93, 59, -20, -37, 85, 6, 119, -66, -86, 59, -2, -48, 69, 0, 113, -71, -87, 102, -93, -30, 88, 6, 125, -69, -85, 102, -2, -26, 84, 0, 108, -66, -96, 114, -2}, new byte[]{24, -41, -50, 21, -115, -75, 49, 116}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-30, -109, -14, -102, 119, 70, -43, -47, -18, -107, -5, -102, 101, 77, -59, -41, -24, -110, -8, -57}, new byte[]{-127, -4, -97, -76, 22, 40, -79, -93}), (Object) AbstractC1387m.m2421h(new byte[]{-9, 59, 77, 83, -78, -38, 105, -56, -5, Base64.padSymbol, 68, 83, -96, -47, 121, -50, -3, 58, 71, 14, -3, -25, 104, -50, -32, Base64.padSymbol, 78, 26, -96, -112, 90, -45, -26, 49, 76, 24, -96, -57, 94, -33, -32, 32, 73, 19, -76, -57, 76, -39, -32, Base64.padSymbol, 86, 20, -89, -51}, new byte[]{-108, 84, 32, 125, -45, -76, 13, -70}), false, 26)};
                        for (int i13 = 0; i13 < 7; i13++) {
                            C0090h c0090h = c0090hArr[i13];
                            String str3 = (String) c0090h.f191c;
                            String str4 = (String) c0090h.f192d;
                            if (c2027c.m3122c(str3, str4)) {
                                Log.d(str2, AbstractC1387m.m2421h(new byte[]{-21, -52, 7, -58, -14, -44, 21, 111, -22, -25, 6, -6, -14, -43, -27, 10, -116, -65, 102, -105, -99, -70, 70, 11, -78, -65, 99, -105, -97, 81, -27}, new byte[]{59, 111, -42, 71, 34, 107, -59, -38}) + ((String) c0090h.f191c) + AbstractC1387m.m2421h(new byte[]{20}, new byte[]{59, -59, 12, 3, 15, -42, 66, -50}) + str4);
                            }
                            break;
                        }
                        Log.d(str2, AbstractC1387m.m2421h(new byte[]{-124, 100, -42, 119, 40, -68, -56, 100, -124, 125, -41, 76, 40, -79, -56, 101, -124, 120, -41, 67, 40, -68, 57, -75, Base64.padSymbol, -125, 111, -24, -71, 106, 109, -117, 34, -84, 114, -79, -40, -39, -92, 50, -31, -27, -42, 117, 40, -71, -55, 91, -124, 113, -42, 125, 40, -76, -56, 105, 120, -27, -42, 119, 41, -119, -55, 92, -124, 116, -41, 75, 40, -68, -55, 94, 116, 21, -72, 24, 73, -40, -112, 50, -20, 21, -77, -24, 40, -75, -55, 87, -123, 71, -42, 118, 40, -67, -56, 105, 122, -21, 40}, new byte[]{84, -59, 6, -56, -8, 9, 25, -30}));
                        if (!c2027c.m3121b()) {
                            String str5 = C2027c.f5537b;
                            Log.d(str5, AbstractC1387m.m2421h(new byte[]{72, -97, -23, 71, 106, -18, -30, -127, 73, -125, -24, 114, 106, -20, 18, -32, 39, -47, -72, 22, 53, ByteCompanionObject.MIN_VALUE, -114, -32, 38, -48, -115, -25, 106, -30, -30, -118, 72, -69, -23, 73, 107, -41, -30, -123, 72, -67, -24, ByteCompanionObject.MAX_VALUE, 106, -27, 18, 103, -15, 70, 81, -23, -108, 126}, new byte[]{-104, 0, 56, -57, -70, 80, 50, 48}));
                            try {
                                WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{102, -105, 28, 95}, new byte[]{17, -2, 122, 54, -123, 110, 64, 126}));
                                if (wifiManager == null) {
                                    zM3121b = false;
                                } else {
                                    if (wifiManager.isWifiEnabled()) {
                                        Log.d(str5, AbstractC1387m.m2421h(new byte[]{46, 120, 91, -110, 119, -109, 39, 116, -49, -63, -88, -37, -121, -16, 116, 30, -87, -86, -52, 117, -122, -59, 116, 17, -87, -84}, new byte[]{121, 17, 29, -5, 87, 66, -92, -92}));
                                        AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{19, 74, -60, 89, -103, 5, -7, 108, -14, -13, 55, 16, 105, 102, -86, 6, -108, -104, 83, -66, 104, 83, -86, 9, -108, -98}, new byte[]{68, 35, -126, 48, -71, -44, 122, -68}));
                                    } else if (Build.VERSION.SDK_INT >= 29) {
                                        zM3121b = c2027c.m3121b();
                                    } else {
                                        boolean wifiEnabled = wifiManager.setWifiEnabled(true);
                                        Log.d(str5, AbstractC1387m.m2421h(new byte[]{-104, 24, 67, -94, -13, 55, 100, -115, 79, -96, -118, 27, 111, 55, 101, -116, 122, 81, -43, 121, 3, 93, 11, -25, 30, -1, -44, 76, 3, 82, 11, -31, 31, -55, -43, 126, -23, -57}, new byte[]{-49, 113, 5, -53, -45, -25, -37, 92}).concat(wifiEnabled ? AbstractC1387m.m2421h(new byte[]{-75, -36, 66, 96, -104, -61, -110, -38, -75, -41, 67, 92, -104, -62}, new byte[]{100, 95, -109, -31, 72, 124, 66, 111}) : AbstractC1387m.m2421h(new byte[]{-67, 59, 74, 74, 30, -84, -9, -24, -67, 63, 75, 114}, new byte[]{109, -123, -101, -62, -50, 20, 39, 89})));
                                        if (wifiEnabled) {
                                            AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{63, -35, 32, 70, 6, 121, 1, 114, -46, 100, -35, -2, -88, 120, 52, 114, -35, 100, -37}, new byte[]{104, -76, 102, 47, 38, -87, -77, -94}));
                                        } else {
                                            zM3121b = false;
                                        }
                                    }
                                    zM3121b = true;
                                }
                            } catch (Exception e) {
                                Log.d(str5, AbstractC1387m.m2421h(new byte[]{91, 76, 102, -11, -14, 12, 107, -97, 91, 104, 103, -51, 2, 100, 4, -1, 11, 3, 56, -83, -98, 100, 5, -2, 56, 2, 9, 93, -14, 6, 107, -108, 91, 105, 102, -13, -13, 51, 107, -101, 91, 111, 103, -59, -13, 59, -101, 121, -30, -108, -34, 71, 2}, new byte[]{-117, -46, -73, 125, 34, -76, -69, 46}) + e.getMessage());
                            }
                            if (!zM3121b) {
                                Log.e(str2, AbstractC1387m.m2421h(new byte[]{24, 89, 36, 68, -36, -90, 100, -18, 124, 20, 68, 33, 71, -89, 89, -17, 73, 21, 120, -47, 44, -55, 54, -68, 24, 126, 37, 113, 45, -4, 54, -68, 25, 72, -44, 33, 65, -89, 87, -17, 73, 21, 118, 32, 124, -89, 89, -18, 113, 20, 78, 33, 68, 87, -80, 87, -114, -83}, new byte[]{-56, -60, -12, -15, -4, 119, -25, 62}));
                                AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{116, -113, 13, 87, -106, 114, -91, -62, -106, 54, -10, -18, 3, 114, -83, -62, -107, 54, -2, -17, 54, -126, -55, -81, -13, 83, 107, -18, 11, 114, -87, -62, -102, 54, -1, -18, 3, 114, -92}, new byte[]{35, -26, 75, 62, -74, -94, 25, 18}));
                                break;
                            }
                        }
                        break;
                    case 1:
                        String str6 = MainWifiManadger.f2888v;
                        this.f6509c.onBackPressed();
                        break;
                    case 2:
                        String str7 = MainWifiManadger.f2888v;
                        this.f6509c.m2213B();
                        break;
                    default:
                        String str8 = MainWifiManadger.f2888v;
                        this.f6509c.m2216v();
                        break;
                }
            }
        });
        final int i13 = 3;
        this.f2899l.setOnClickListener(new View.OnClickListener(this) { // from class: m7.d

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ MainWifiManadger f6509c;

            {
                this.f6509c = this;
            }

            /* JADX WARN: Code duplicated, block: B:41:0x029f  */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean zM3121b;
                switch (i13) {
                    case 0:
                        String str = MainWifiManadger.f2888v;
                        C2027c c2027c = new C2027c(this.f6509c);
                        Context context = c2027c.f5538a;
                        String str2 = C2027c.f5537b;
                        Log.d(str2, AbstractC1387m.m2421h(new byte[]{46, 11, ByteCompanionObject.MAX_VALUE, 29, -5, 31, -81, 63, 46, 46, -113, 115, -97, 119, -64, 111, ByteCompanionObject.MAX_VALUE, 69, 45, 114, -88, 119, -63, 110, 67, 68, 17, 115, -104, 119, -64, -98, -87, -3, -23, -54, 11, 119, -62, 110, 75, 68, 18, 115, -98, 119, -54, 110, 72, 68, 26, 114, -85, 119, -50, -112, -48, -70}, new byte[]{-2, -108, -81, -93, 43, -89, 126, -66}));
                        C0090h[] c0090hArr = {new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-90, 28, -19, 80, -84, 42, 0, 124, -68, 0, -10, 80, -83, 33, 20, 112, -86, 23, -27}, new byte[]{-59, 115, ByteCompanionObject.MIN_VALUE, 126, -56, 79, 115, 29}), (Object) AbstractC1387m.m2421h(new byte[]{-88, 39, -36, 78, -117, 16, -92, 115, -78, 59, -57, 78, -118, 27, -80, ByteCompanionObject.MAX_VALUE, -92, 44, -44, 78, -102, 28, -7, 69, -94, 46, -40, 33, -116, 1, -66, 100, -94, 60, -56}, new byte[]{-53, 72, -79, 96, -17, 117, -41, 18}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-20, 70, 10, 17, 66, -3, -115, -104, -32, 64, 3, 17, 80, -10, -99, -98, -26, 71, 0, 76}, new byte[]{-113, 41, 103, 63, 35, -109, -23, -22}), (Object) AbstractC1387m.m2421h(new byte[]{16, -64, -46, -122, -38, -57, 13, -32, 28, -58, -37, -122, -56, -52, 29, -26, 26, -63, -40, -37, -107, -34, 0, -12, 26, -127, -24, -63, -35, -64, 58, -9, 7, -37, -42, -58, -36, -38}, new byte[]{115, -81, -65, -88, -69, -87, 105, -110}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-97, -3, -66, 94, 43, 118, -66, -43, -109, -5, -73, 94, 57, 125, -82, -45, -107, -4, -76, 3}, new byte[]{-4, -110, -45, 112, 74, 24, -38, -89}), (Object) AbstractC1387m.m2421h(new byte[]{4, -40, 11, -70, 80, 16, -87, -122, 8, -34, 2, -70, 66, 27, -71, ByteCompanionObject.MIN_VALUE, 14, -39, 1, -25, 31, 45, -88, ByteCompanionObject.MIN_VALUE, 19, -34, 8, -13, 66, 90, -102, -99, 1, -34, 53, -15, 69, 10, -92, -102, 0, -60, 39, -9, 69, 23, -69, -99, 19, -50}, new byte[]{103, -73, 102, -108, 49, 126, -51, -12}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-10, 115, 53, 44, 48, -10, -12, Base64.padSymbol, -6, 117, 60, 44, 34, -3, -28, 59, -4, 114, 63, 113}, new byte[]{-107, 28, 88, 2, 81, -104, -112, 79}), (Object) AbstractC1387m.m2421h(new byte[]{22, -60, -47, 120, 37, 32, 85, 7, 26, -62, -40, 120, 55, 43, 69, 1, 28, -59, -37, 37, 106, 57, 88, 19, 28, -123, -21, 63, 34, 39, 98, 16, 1, -33, -43, 56, 35, Base64.padSymbol, 112, 22, 1, -62, -54, 63, 48, 55}, new byte[]{117, -85, -68, 86, 68, 78, 49, 117}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{22, -92, 42, 23, -16, 122, 59, 13, 26, -94, 35, 23, -30, 113, 43, 11, 28, -91, 32, 74}, new byte[]{117, -53, 71, 57, -111, 20, 95, ByteCompanionObject.MAX_VALUE}), (Object) AbstractC1387m.m2421h(new byte[]{1, -78, ByteCompanionObject.MIN_VALUE, -30, 119, 80, 91, -68, 13, -76, -119, -30, 101, 91, 75, -70, 11, -77, -118, -65, 56, 109, 90, -70, 22, -76, -125, -85, 101, 26, 104, -89, 4, -76, -66, -87, 98, 74, 86, -96, 5, -82, -33, -115, 117, 74, 86, -72, 11, -87, -108}, new byte[]{98, -35, -19, -52, 22, 62, 63, -50}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-88, 46, -53, -79, -118, -10, 33, 87, -92, 40, -62, -79, -104, -3, 49, 81, -94, 47, -63, -20}, new byte[]{-53, 65, -90, -97, -21, -104, 69, 37}), (Object) AbstractC1387m.m2421h(new byte[]{123, -72, -93, 59, -20, -37, 85, 6, 119, -66, -86, 59, -2, -48, 69, 0, 113, -71, -87, 102, -93, -30, 88, 6, 125, -69, -85, 102, -2, -26, 84, 0, 108, -66, -96, 114, -2}, new byte[]{24, -41, -50, 21, -115, -75, 49, 116}), false, 26), new C0090h((Object) AbstractC1387m.m2421h(new byte[]{-30, -109, -14, -102, 119, 70, -43, -47, -18, -107, -5, -102, 101, 77, -59, -41, -24, -110, -8, -57}, new byte[]{-127, -4, -97, -76, 22, 40, -79, -93}), (Object) AbstractC1387m.m2421h(new byte[]{-9, 59, 77, 83, -78, -38, 105, -56, -5, Base64.padSymbol, 68, 83, -96, -47, 121, -50, -3, 58, 71, 14, -3, -25, 104, -50, -32, Base64.padSymbol, 78, 26, -96, -112, 90, -45, -26, 49, 76, 24, -96, -57, 94, -33, -32, 32, 73, 19, -76, -57, 76, -39, -32, Base64.padSymbol, 86, 20, -89, -51}, new byte[]{-108, 84, 32, 125, -45, -76, 13, -70}), false, 26)};
                        for (int i14 = 0; i14 < 7; i14++) {
                            C0090h c0090h = c0090hArr[i14];
                            String str3 = (String) c0090h.f191c;
                            String str4 = (String) c0090h.f192d;
                            if (c2027c.m3122c(str3, str4)) {
                                Log.d(str2, AbstractC1387m.m2421h(new byte[]{-21, -52, 7, -58, -14, -44, 21, 111, -22, -25, 6, -6, -14, -43, -27, 10, -116, -65, 102, -105, -99, -70, 70, 11, -78, -65, 99, -105, -97, 81, -27}, new byte[]{59, 111, -42, 71, 34, 107, -59, -38}) + ((String) c0090h.f191c) + AbstractC1387m.m2421h(new byte[]{20}, new byte[]{59, -59, 12, 3, 15, -42, 66, -50}) + str4);
                            }
                            break;
                        }
                        Log.d(str2, AbstractC1387m.m2421h(new byte[]{-124, 100, -42, 119, 40, -68, -56, 100, -124, 125, -41, 76, 40, -79, -56, 101, -124, 120, -41, 67, 40, -68, 57, -75, Base64.padSymbol, -125, 111, -24, -71, 106, 109, -117, 34, -84, 114, -79, -40, -39, -92, 50, -31, -27, -42, 117, 40, -71, -55, 91, -124, 113, -42, 125, 40, -76, -56, 105, 120, -27, -42, 119, 41, -119, -55, 92, -124, 116, -41, 75, 40, -68, -55, 94, 116, 21, -72, 24, 73, -40, -112, 50, -20, 21, -77, -24, 40, -75, -55, 87, -123, 71, -42, 118, 40, -67, -56, 105, 122, -21, 40}, new byte[]{84, -59, 6, -56, -8, 9, 25, -30}));
                        if (!c2027c.m3121b()) {
                            String str5 = C2027c.f5537b;
                            Log.d(str5, AbstractC1387m.m2421h(new byte[]{72, -97, -23, 71, 106, -18, -30, -127, 73, -125, -24, 114, 106, -20, 18, -32, 39, -47, -72, 22, 53, ByteCompanionObject.MIN_VALUE, -114, -32, 38, -48, -115, -25, 106, -30, -30, -118, 72, -69, -23, 73, 107, -41, -30, -123, 72, -67, -24, ByteCompanionObject.MAX_VALUE, 106, -27, 18, 103, -15, 70, 81, -23, -108, 126}, new byte[]{-104, 0, 56, -57, -70, 80, 50, 48}));
                            try {
                                WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{102, -105, 28, 95}, new byte[]{17, -2, 122, 54, -123, 110, 64, 126}));
                                if (wifiManager == null) {
                                    zM3121b = false;
                                } else {
                                    if (wifiManager.isWifiEnabled()) {
                                        Log.d(str5, AbstractC1387m.m2421h(new byte[]{46, 120, 91, -110, 119, -109, 39, 116, -49, -63, -88, -37, -121, -16, 116, 30, -87, -86, -52, 117, -122, -59, 116, 17, -87, -84}, new byte[]{121, 17, 29, -5, 87, 66, -92, -92}));
                                        AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{19, 74, -60, 89, -103, 5, -7, 108, -14, -13, 55, 16, 105, 102, -86, 6, -108, -104, 83, -66, 104, 83, -86, 9, -108, -98}, new byte[]{68, 35, -126, 48, -71, -44, 122, -68}));
                                    } else if (Build.VERSION.SDK_INT >= 29) {
                                        zM3121b = c2027c.m3121b();
                                    } else {
                                        boolean wifiEnabled = wifiManager.setWifiEnabled(true);
                                        Log.d(str5, AbstractC1387m.m2421h(new byte[]{-104, 24, 67, -94, -13, 55, 100, -115, 79, -96, -118, 27, 111, 55, 101, -116, 122, 81, -43, 121, 3, 93, 11, -25, 30, -1, -44, 76, 3, 82, 11, -31, 31, -55, -43, 126, -23, -57}, new byte[]{-49, 113, 5, -53, -45, -25, -37, 92}).concat(wifiEnabled ? AbstractC1387m.m2421h(new byte[]{-75, -36, 66, 96, -104, -61, -110, -38, -75, -41, 67, 92, -104, -62}, new byte[]{100, 95, -109, -31, 72, 124, 66, 111}) : AbstractC1387m.m2421h(new byte[]{-67, 59, 74, 74, 30, -84, -9, -24, -67, 63, 75, 114}, new byte[]{109, -123, -101, -62, -50, 20, 39, 89})));
                                        if (wifiEnabled) {
                                            AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{63, -35, 32, 70, 6, 121, 1, 114, -46, 100, -35, -2, -88, 120, 52, 114, -35, 100, -37}, new byte[]{104, -76, 102, 47, 38, -87, -77, -94}));
                                        } else {
                                            zM3121b = false;
                                        }
                                    }
                                    zM3121b = true;
                                }
                            } catch (Exception e) {
                                Log.d(str5, AbstractC1387m.m2421h(new byte[]{91, 76, 102, -11, -14, 12, 107, -97, 91, 104, 103, -51, 2, 100, 4, -1, 11, 3, 56, -83, -98, 100, 5, -2, 56, 2, 9, 93, -14, 6, 107, -108, 91, 105, 102, -13, -13, 51, 107, -101, 91, 111, 103, -59, -13, 59, -101, 121, -30, -108, -34, 71, 2}, new byte[]{-117, -46, -73, 125, 34, -76, -69, 46}) + e.getMessage());
                            }
                            if (!zM3121b) {
                                Log.e(str2, AbstractC1387m.m2421h(new byte[]{24, 89, 36, 68, -36, -90, 100, -18, 124, 20, 68, 33, 71, -89, 89, -17, 73, 21, 120, -47, 44, -55, 54, -68, 24, 126, 37, 113, 45, -4, 54, -68, 25, 72, -44, 33, 65, -89, 87, -17, 73, 21, 118, 32, 124, -89, 89, -18, 113, 20, 78, 33, 68, 87, -80, 87, -114, -83}, new byte[]{-56, -60, -12, -15, -4, 119, -25, 62}));
                                AbstractC3656k.m5878x(context, AbstractC1387m.m2421h(new byte[]{116, -113, 13, 87, -106, 114, -91, -62, -106, 54, -10, -18, 3, 114, -83, -62, -107, 54, -2, -17, 54, -126, -55, -81, -13, 83, 107, -18, 11, 114, -87, -62, -102, 54, -1, -18, 3, 114, -92}, new byte[]{35, -26, 75, 62, -74, -94, 25, 18}));
                                break;
                            }
                        }
                        break;
                    case 1:
                        String str6 = MainWifiManadger.f2888v;
                        this.f6509c.onBackPressed();
                        break;
                    case 2:
                        String str7 = MainWifiManadger.f2888v;
                        this.f6509c.m2213B();
                        break;
                    default:
                        String str8 = MainWifiManadger.f2888v;
                        this.f6509c.m2216v();
                        break;
                }
            }
        });
        i10 = ContextCompat.checkSelfPermission(this, AbstractC1387m.m2421h(new byte[]{4, -48, -122, -12, 19, -122, 106, 116, 21, -37, -112, -21, 21, -100, 125, 51, 10, -48, -52, -57, 63, -84, 75, 9, 54, -31, -92, -49, 50, -86, 81, 22, 42, -3, -93, -46, 53, -96, 64}, new byte[]{101, -66, -30, -122, 124, -17, 14, 90})) == 0 ? 1 : 0;
        if (i10 == 0) {
            requestPermissions(new String[]{AbstractC1387m.m2421h(new byte[]{121, -16, -106, -121, -75, 6, -66, 113, 104, -5, ByteCompanionObject.MIN_VALUE, -104, -77, 28, -87, 54, 119, -16, -36, -76, -103, 44, -97, 12, 75, -63, -76, -68, -108, 42, -123, 19, 87, -35, -77, -95, -109, 32, -108}, new byte[]{24, -98, -14, -11, -38, 111, -38, 95})}, 1);
        }
        this.f2901n.setLayoutManager(new LinearLayoutManager(this));
        this.f2892e = new C2408g(this.f2889b, new C2403b(this));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{116, 69, -123, -48, 72, 110, 82, -82, 123, 78, -107, -116, 80, 110, 80, -23, 59, 120, -94, -29, 105, 88, 100, -59, 70, 126, -83, -10, 116}, new byte[]{21, 43, -31, -94, 39, 7, 54, ByteCompanionObject.MIN_VALUE}));
        intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{63, -81, 117, 88, -73, -79, 77, -88, 48, -92, 101, 4, -81, -79, 79, -17, 112, -110, 69, 107, -116, -99, 118, -59, 22, ByteCompanionObject.MIN_VALUE, 95, 109, -99}, new byte[]{94, -63, 17, 42, -40, -40, 41, -122}));
        intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{94, 72, -41, 76, -2, 74, -9, -99, 81, 67, -57, 16, -26, 74, -11, -38, 17, 113, -6, 120, -40, 124, -64, -25, 126, 114, -10, 97, -46, 107, -46, -3, 120, 99, -9}, new byte[]{63, 38, -77, 62, -111, 35, -109, -77}));
        intentFilter.addAction(AbstractC1387m.m2421h(new byte[]{-67, 29, 73, -59, 16, 107, -18, -70, -78, 22, 89, -103, 8, 107, -20, -3, -14, 0, 88, -57, 15, 110, -29, -9, -67, 29, 89, -103, 44, 86, -53, -64, -103, 44, 110, -1, 62, 76, -51, -47}, new byte[]{-36, 115, 45, -73, ByteCompanionObject.MAX_VALUE, 2, -118, -108}));
        registerReceiver(this.f2892e, intentFilter);
        ArrayList arrayList = this.f2890c;
        if (i10 != 0) {
            try {
                configuredNetworks = this.f2889b.getConfiguredNetworks();
                if (configuredNetworks == null) {
                    configuredNetworks = Collections.EMPTY_LIST;
                }
            } catch (SecurityException unused) {
                configuredNetworks = Collections.EMPTY_LIST;
            }
        } else {
            configuredNetworks = Collections.EMPTY_LIST;
        }
        List<WifiConfiguration> list = configuredNetworks;
        String ssid = "";
        if (i10 != 0) {
            try {
                WifiInfo connectionInfo = this.f2889b.getConnectionInfo();
                if (connectionInfo != null && connectionInfo.getSSID() != null) {
                    ssid = connectionInfo.getSSID();
                }
            } catch (SecurityException unused2) {
            }
        }
        C2407f c2407f = new C2407f(arrayList, list, ssid, new C2403b(this), new C2403b(this));
        this.f2891d = c2407f;
        this.f2901n.setAdapter(c2407f);
        m2216v();
        m2214s();
        m2212A(this.f2889b.isWifiEnabled());
        C2408g.f6518c = this;
        ConnectivityManager connectivityManager = this.f2895h;
        if (connectivityManager != null && !this.f2896i) {
            try {
                connectivityManager.registerDefaultNetworkCallback(this.f2908u);
                this.f2896i = true;
            } catch (RuntimeException unused3) {
            }
        }
        m2220z();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        ConnectivityManager connectivityManager;
        super.onDestroy();
        this.f2905r.removeCallbacks(this.f2906s);
        String str = AbstractC2412k.f6538a;
        synchronized (AbstractC2412k.class) {
            AbstractC2412k.m3777d();
        }
        unregisterReceiver(this.f2892e);
        C2408g.f6518c = null;
        AlertDialog alertDialog = this.f2903p;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        if (!this.f2896i || (connectivityManager = this.f2895h) == null) {
            return;
        }
        try {
            connectivityManager.unregisterNetworkCallback(this.f2908u);
        } catch (IllegalArgumentException unused) {
        }
        this.f2896i = false;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (i10 == 1 && iArr.length > 0 && iArr[0] == 0) {
            m2216v();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        m2214s();
        m2212A(this.f2889b.isWifiEnabled());
        m2216v();
        m2220z();
    }

    /* JADX INFO: renamed from: s */
    public final void m2214s() {
        WifiInfo connectionInfo = this.f2889b.getConnectionInfo();
        if (connectionInfo == null || connectionInfo.getNetworkId() == -1) {
            this.f2893f.setText(getResources().getString(R.string.wifi_not_con));
            return;
        }
        String ssid = connectionInfo.getSSID();
        if (ssid == null || ssid.equals(AbstractC1387m.m2421h(new byte[]{-26, 45, -100, -49, -110, 39, -60, -62, -86, 49, -102, -46, -112, 45, -107, -105}, new byte[]{-60, 17, -23, -95, -7, 73, -85, -75}))) {
            this.f2893f.setText(getResources().getString(R.string.wifi_not_con));
        } else {
            this.f2893f.setText(getString(R.string.wifi_connected_with_signal, ssid.replace(AbstractC1387m.m2421h(new byte[]{50}, new byte[]{16, -21, -114, 64, 104, -47, 33, -110}), ""), Integer.valueOf(WifiManager.calculateSignalLevel(connectionInfo.getRssi(), TypedValues.TYPE_TARGET))));
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m2215t(String str, String str2, String str3) {
        int i10;
        int iAddNetwork;
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{-110}, new byte[]{-80, 22, 39, -79, 58, 27, -102, 1}, sb, str);
        wifiConfiguration.SSID = AbstractC1178q.m2075i(new byte[]{14}, new byte[]{44, 111, 112, 102, 120, 124, 73, 2}, sb);
        String upperCase = str3 != null ? str3.toUpperCase() : "";
        if (upperCase.contains(AbstractC1387m.m2421h(new byte[]{-53, -115, 5}, new byte[]{-100, -56, 85, -83, 68, 103, -25, -10}))) {
            String[] strArr = wifiConfiguration.wepKeys;
            StringBuilder sb2 = new StringBuilder();
            AbstractC1178q.m2087u(new byte[]{-114}, new byte[]{-84, -1, 45, 117, 70, -58, 13, 96}, sb2, str2);
            strArr[0] = AbstractC1178q.m2075i(new byte[]{51}, new byte[]{17, 117, -28, -112, -29, 45, 95, 51}, sb2);
            wifiConfiguration.wepTxKeyIndex = 0;
            wifiConfiguration.allowedKeyManagement.set(0);
        } else {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 29 && upperCase.contains(AbstractC1387m.m2421h(new byte[]{-21, -23, 25}, new byte[]{-72, -88, 92, 64, 86, -48, 18, 20})) && !upperCase.contains(AbstractC1387m.m2421h(new byte[]{-79, 47, 49}, new byte[]{-31, 124, 122, -72, 1, -26, -66, 59}))) {
                StringBuilder sb3 = new StringBuilder();
                AbstractC1178q.m2087u(new byte[]{-17}, new byte[]{-51, -4, 21, -39, -18, -108, 65, 35}, sb3, str2);
                wifiConfiguration.preSharedKey = AbstractC1178q.m2075i(new byte[]{87}, new byte[]{117, 34, 123, -77, 119, -38, -8, -124}, sb3);
                wifiConfiguration.allowedKeyManagement.set(8);
            } else if (i11 >= 29 && upperCase.contains(AbstractC1387m.m2421h(new byte[]{57, -69, -5}, new byte[]{118, -20, -66, -36, -66, 38, 96, -81}))) {
                wifiConfiguration.allowedKeyManagement.set(9);
            } else if (m2211u(upperCase)) {
                wifiConfiguration.allowedKeyManagement.set(0);
            } else {
                StringBuilder sb4 = new StringBuilder();
                AbstractC1178q.m2087u(new byte[]{86}, new byte[]{116, 110, -24, -4, 5, -3, 90, 101}, sb4, str2);
                wifiConfiguration.preSharedKey = AbstractC1178q.m2075i(new byte[]{109}, new byte[]{79, -91, 8, -46, 103, -39, -9, -87}, sb4);
                wifiConfiguration.allowedKeyManagement.set(1);
            }
        }
        List<WifiConfiguration> configuredNetworks = this.f2889b.getConfiguredNetworks();
        if (configuredNetworks == null) {
            i10 = -1;
            break;
        }
        Iterator<WifiConfiguration> it = configuredNetworks.iterator();
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            WifiConfiguration next = it.next();
            String str4 = next.SSID;
            if (str4 != null) {
                StringBuilder sb5 = new StringBuilder();
                AbstractC1178q.m2087u(new byte[]{-113}, new byte[]{-83, 72, 126, 32, 4, 38, -127, -10}, sb5, str);
                sb5.append(AbstractC1387m.m2421h(new byte[]{-16}, new byte[]{-46, 120, 36, -7, 111, -93, 21, -68}));
                if (str4.equals(sb5.toString())) {
                    i10 = next.networkId;
                    break;
                }
            }
        }
        if (i10 != -1) {
            wifiConfiguration.networkId = i10;
            iAddNetwork = this.f2889b.updateNetwork(wifiConfiguration);
        } else {
            iAddNetwork = this.f2889b.addNetwork(wifiConfiguration);
        }
        if (iAddNetwork == -1) {
            AbstractC3656k.m5878x(getApplicationContext(), getResources().getString(R.string.wifi_error_conn_to) + str);
            return;
        }
        this.f2889b.saveConfiguration();
        this.f2889b.disconnect();
        this.f2889b.enableNetwork(iAddNetwork, true);
        this.f2889b.reconnect();
        AbstractC3656k.m5878x(getApplicationContext(), getResources().getString(R.string.wifi_con_to) + str);
    }

    /* JADX INFO: renamed from: v */
    public final void m2216v() {
        if (!this.f2889b.isWifiEnabled()) {
            AbstractC3656k.m5878x(getApplicationContext(), getResources().getString(R.string.wifi_on_wifi_to_search));
        } else {
            if (ContextCompat.checkSelfPermission(this, AbstractC1387m.m2421h(new byte[]{-4, -109, -61, 58, 96, 56, 125, 91, -19, -104, -43, 37, 102, 34, 106, 28, -14, -109, -119, 9, 76, 18, 92, 38, -50, -94, -31, 1, 65, 20, 70, 57, -46, -66, -26, 28, 70, 30, 87}, new byte[]{-99, -3, -89, 72, 15, 81, 25, 117})) != 0) {
                requestPermissions(new String[]{AbstractC1387m.m2421h(new byte[]{94, -47, -102, 121, 84, 52, 56, -44, 79, -38, -116, 102, 82, 46, 47, -109, 80, -47, -48, 74, 120, 30, 25, -87, 108, -32, -72, 66, 117, 24, 3, -74, 112, -4, -65, 95, 114, 18, 18}, new byte[]{63, -65, -2, 11, 59, 93, 92, -6})}, 1);
                return;
            }
            try {
                this.f2889b.startScan();
                AbstractC3656k.m5878x(getApplicationContext(), getResources().getString(R.string.wifi_search_wifi));
            } catch (SecurityException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: w */
    public final void m2217w(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return;
        }
        AlertDialog alertDialog = this.f2903p;
        if (alertDialog == null || !alertDialog.isShowing()) {
            f2888v = str;
            if (str2 == null) {
                str2 = "";
            }
            this.f2902o = str2;
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(getResources().getString(R.string.wifi_error));
            builder.setMessage(getResources().getString(R.string.wifi_set_pass) + str);
            EditText editText = new EditText(this);
            editText.setInputType(129);
            CheckBox checkBox = new CheckBox(this);
            checkBox.setText(getResources().getString(R.string.wifi_pass_show));
            checkBox.setOnCheckedChangeListener(new C1418s0(7, editText));
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(50, 40, 50, 10);
            linearLayout.addView(editText);
            linearLayout.addView(checkBox);
            builder.setView(linearLayout);
            builder.setPositiveButton(getResources().getString(R.string.wifi_set_conn), new DialogInterfaceOnClickListenerC2373y0(this, editText, str, 3));
            builder.setNegativeButton(getResources().getString(R.string.cancel), new DialogInterfaceOnClickListenerC1346d3(1));
            AlertDialog alertDialogCreate = builder.create();
            this.f2903p = alertDialogCreate;
            alertDialogCreate.setOnDismissListener(new DialogInterfaceOnDismissListenerC2404c(this, 0));
            this.f2903p.show();
        }
    }

    /* JADX INFO: renamed from: x */
    public final void m2218x(int i10, int i11) {
        TextView textView = this.f2894g;
        if (textView == null) {
            return;
        }
        textView.setText(i10);
        this.f2894g.setTextColor(i11);
    }

    /* JADX INFO: renamed from: y */
    public final void m2219y() {
        Handler handler = this.f2905r;
        RunnableC2402a runnableC2402a = this.f2906s;
        handler.removeCallbacks(runnableC2402a);
        handler.removeCallbacks(this.f2907t);
        Call call = this.f2904q;
        if (call != null) {
            call.cancel();
            this.f2904q = null;
        }
        this.f2897j.setBackgroundColor(-7829368);
        this.f2897j.setEnabled(false);
        this.f2899l.setEnabled(false);
        this.f2897j.setText(getResources().getString(R.string.wifi_ojidat));
        this.f2898k.setEnable(Boolean.FALSE);
        this.f2898k.setTextButton(getResources().getString(R.string.wifi_ojidat));
        handler.postDelayed(runnableC2402a, 12000L);
    }

    /* JADX INFO: renamed from: z */
    public final void m2220z() {
        runOnUiThread(new RunnableC2402a(this, 1));
    }
}
