package com.woha.wifim;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.manager.r;
import com.example.navistart.mainview.OnOffButton;
import com.google.protobuf.q;
import e0.d3;
import e0.m;
import e0.s0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.y0;
import m7.a;
import m7.b;
import m7.c;
import m7.d;
import m7.f;
import m7.g;
import m7.k;
import okhttp3.Call;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MainWifiManadger extends AppCompatActivity {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static String f1632v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WifiManager f1633b;
    public ArrayList c;
    public f d;
    public g e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f1634f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f1635g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ConnectivityManager f1636h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1637i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Button f1638j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public OnOffButton f1639k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Button f1640l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Button f1641m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public RecyclerView f1642n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AlertDialog f1644p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Call f1645q;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f1643o = "";
    public final Handler r = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final a f1646s = new a(this, 0);
    public final a t = new a(this, 2);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final r f1647u = new r(1, this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean u(String str) {
        String upperCase = str != null ? str.toUpperCase() : "";
        if (upperCase.contains(m.h(new byte[]{-83, -110, 66}, new byte[]{-6, -41, 18, 19, 57, 119, -101, 84})) || upperCase.contains(m.h(new byte[]{-25, 78, -71}, new byte[]{-73, 29, -14, 85, 44, 38, 53, -52})) || upperCase.contains(m.h(new byte[]{-10, -100, 22}, new byte[]{-91, -35, 83, -84, 2, 92, 65, 13})) || upperCase.contains(m.h(new byte[]{-122, -17, 34}, new byte[]{-61, -82, 114, 33, -60, -44, -79, 25}))) {
            return Build$VERSION.SDK_INT >= 29 && upperCase.contains(m.h(new byte[]{-97, -48, 49}, new byte[]{-48, -121, 116, 13, -11, -56, 101, 48}));
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void A(boolean z8) {
        Button button = this.f1638j;
        if (!z8) {
            button.setEnabled(true);
            this.f1640l.setEnabled(true);
            this.f1638j.setText(getResources().getString(2131952890));
            this.f1638j.setBackgroundColor(SupportMenu.CATEGORY_MASK);
            this.f1639k.setEnable(Boolean.TRUE);
            this.f1639k.setOnOff(Boolean.FALSE);
            this.f1639k.setTextButton(getResources().getString(2131952890));
            return;
        }
        button.setEnabled(true);
        this.f1640l.setEnabled(true);
        this.f1638j.setText(getResources().getString(2131952889));
        this.f1638j.setBackgroundColor(-16711936);
        OnOffButton onOffButton = this.f1639k;
        Boolean bool = Boolean.TRUE;
        onOffButton.setEnable(bool);
        this.f1639k.setOnOff(bool);
        this.f1639k.setTextButton(getResources().getString(2131952889));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void B() {
        if (this.f1633b.isWifiEnabled()) {
            k.c(this, false);
            f fVar = this.d;
            List list = Collections.EMPTY_LIST;
            fVar.a(list, list, "");
        } else {
            k.c(this, true);
        }
        y();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(m.x(context));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        List<WifiConfiguration> configuredNetworks;
        super.onCreate(bundle);
        getWindow().setStatusBarColor(ContextCompat.getColor(this, 2131034999));
        getWindow().setNavigationBarColor(ContextCompat.getColor(this, 2131034999));
        getWindow().getDecorView().setSystemUiVisibility(0);
        setContentView(2131492908);
        this.f1633b = (WifiManager) getApplicationContext().getSystemService(m.h(new byte[]{-113, 29, -111, 51}, new byte[]{-8, 116, -9, 90, 23, 75, 20, 77}));
        this.f1636h = (ConnectivityManager) getSystemService(m.h(new byte[]{47, -57, -24, 9, 69, 67, 65, -69, 58, -63, -14, 30}, new byte[]{76, -88, -122, 103, 32, 32, 53, -46}));
        this.f1634f = (TextView) findViewById(2131296668);
        this.f1635g = (TextView) findViewById(2131296664);
        this.f1638j = (Button) findViewById(2131297771);
        OnOffButton onOffButton = (OnOffButton) findViewById(2131297772);
        this.f1639k = onOffButton;
        Button button = (Button) onOffButton.findViewById(2131297156);
        button.setBackgroundResource(2131165574);
        button.setBackgroundTintList(null);
        TextView textView = (TextView) this.f1639k.findViewById(2131297553);
        textView.setTextColor(ContextCompat.getColor(this, 2131035009));
        textView.setTextSize(17.0f);
        ((Button) findViewById(2131297448)).setOnClickListener(new d(this, 0));
        this.f1640l = (Button) findViewById(2131297262);
        this.f1642n = (RecyclerView) findViewById(2131297259);
        Button button2 = (Button) findViewById(2131297773);
        this.f1641m = button2;
        button2.setText(2131951821);
        this.f1641m.setOnClickListener(new d(this, 1));
        this.f1639k.setRunnableOn(new a(this, 3));
        this.f1639k.setRunnableOff(new a(this, 4));
        this.f1638j.setOnClickListener(new d(this, 2));
        this.f1640l.setOnClickListener(new d(this, 3));
        boolean z8 = ContextCompat.checkSelfPermission(this, m.h(new byte[]{4, -48, -122, -12, 19, -122, 106, 116, 21, -37, -112, -21, 21, -100, 125, 51, 10, -48, -52, -57, 63, -84, 75, 9, 54, -31, -92, -49, 50, -86, 81, 22, 42, -3, -93, -46, 53, -96, 64}, new byte[]{101, -66, -30, -122, 124, -17, 14, 90})) == 0;
        if (!z8) {
            requestPermissions(new String[]{m.h(new byte[]{121, -16, -106, -121, -75, 6, -66, 113, 104, -5, ByteCompanionObject.MIN_VALUE, -104, -77, 28, -87, 54, 119, -16, -36, -76, -103, 44, -97, 12, 75, -63, -76, -68, -108, 42, -123, 19, 87, -35, -77, -95, -109, 32, -108}, new byte[]{24, -98, -14, -11, -38, 111, -38, 95})}, 1);
        }
        this.f1642n.setLayoutManager(new LinearLayoutManager(this));
        this.e = new g(this.f1633b, new b(this));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(m.h(new byte[]{116, 69, -123, -48, 72, 110, 82, -82, 123, 78, -107, -116, 80, 110, 80, -23, 59, 120, -94, -29, 105, 88, 100, -59, 70, 126, -83, -10, 116}, new byte[]{21, 43, -31, -94, 39, 7, 54, ByteCompanionObject.MIN_VALUE}));
        intentFilter.addAction(m.h(new byte[]{63, -81, 117, 88, -73, -79, 77, -88, 48, -92, 101, 4, -81, -79, 79, -17, 112, -110, 69, 107, -116, -99, 118, -59, 22, ByteCompanionObject.MIN_VALUE, 95, 109, -99}, new byte[]{94, -63, 17, 42, -40, -40, 41, -122}));
        intentFilter.addAction(m.h(new byte[]{94, 72, -41, 76, -2, 74, -9, -99, 81, 67, -57, 16, -26, 74, -11, -38, 17, 113, -6, 120, -40, 124, -64, -25, 126, 114, -10, 97, -46, 107, -46, -3, 120, 99, -9}, new byte[]{63, 38, -77, 62, -111, 35, -109, -77}));
        intentFilter.addAction(m.h(new byte[]{-67, 29, 73, -59, 16, 107, -18, -70, -78, 22, 89, -103, 8, 107, -20, -3, -14, 0, 88, -57, 15, 110, -29, -9, -67, 29, 89, -103, 44, 86, -53, -64, -103, 44, 110, -1, 62, 76, -51, -47}, new byte[]{-36, 115, 45, -73, ByteCompanionObject.MAX_VALUE, 2, -118, -108}));
        registerReceiver(this.e, intentFilter);
        ArrayList arrayList = this.c;
        if (z8) {
            try {
                configuredNetworks = this.f1633b.getConfiguredNetworks();
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
        if (z8) {
            try {
                WifiInfo connectionInfo = this.f1633b.getConnectionInfo();
                if (connectionInfo != null && connectionInfo.getSSID() != null) {
                    ssid = connectionInfo.getSSID();
                }
            } catch (SecurityException unused2) {
            }
        }
        f fVar = new f(arrayList, list, ssid, new b(this), new b(this));
        this.d = fVar;
        this.f1642n.setAdapter(fVar);
        v();
        s();
        A(this.f1633b.isWifiEnabled());
        g.c = this;
        ConnectivityManager connectivityManager = this.f1636h;
        if (connectivityManager != null && !this.f1637i) {
            try {
                connectivityManager.registerDefaultNetworkCallback(this.f1647u);
                this.f1637i = true;
            } catch (RuntimeException unused3) {
            }
        }
        z();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        ConnectivityManager connectivityManager;
        super.onDestroy();
        this.r.removeCallbacks(this.f1646s);
        String str = k.f3700a;
        synchronized (k.class) {
            k.d();
        }
        unregisterReceiver(this.e);
        g.c = null;
        AlertDialog alertDialog = this.f1644p;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        if (!this.f1637i || (connectivityManager = this.f1636h) == null) {
            return;
        }
        try {
            connectivityManager.unregisterNetworkCallback(this.f1647u);
        } catch (IllegalArgumentException unused) {
        }
        this.f1637i = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i9, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i9, strArr, iArr);
        if (i9 == 1 && iArr.length > 0 && iArr[0] == 0) {
            v();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        s();
        A(this.f1633b.isWifiEnabled());
        v();
        z();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s() {
        WifiInfo connectionInfo = this.f1633b.getConnectionInfo();
        if (connectionInfo == null || connectionInfo.getNetworkId() == -1) {
            this.f1634f.setText(getResources().getString(2131952879));
            return;
        }
        String ssid = connectionInfo.getSSID();
        if (ssid == null || ssid.equals(m.h(new byte[]{-26, 45, -100, -49, -110, 39, -60, -62, -86, 49, -102, -46, -112, 45, -107, -105}, new byte[]{-60, 17, -23, -95, -7, 73, -85, -75}))) {
            this.f1634f.setText(getResources().getString(2131952879));
        } else {
            this.f1634f.setText(getString(2131952870, ssid.replace(m.h(new byte[]{50}, new byte[]{16, -21, -114, 64, 104, -47, 33, -110}), ""), Integer.valueOf(WifiManager.calculateSignalLevel(connectionInfo.getRssi(), TypedValues.TYPE_TARGET))));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(String str, String str2, String str3) {
        int i9;
        int iAddNetwork;
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        StringBuilder sb = new StringBuilder();
        q.u(new byte[]{-110}, new byte[]{-80, 22, 39, -79, 58, 27, -102, 1}, sb, str);
        wifiConfiguration.SSID = q.i(new byte[]{14}, new byte[]{44, 111, 112, 102, 120, 124, 73, 2}, sb);
        String upperCase = str3 != null ? str3.toUpperCase() : "";
        if (upperCase.contains(m.h(new byte[]{-53, -115, 5}, new byte[]{-100, -56, 85, -83, 68, 103, -25, -10}))) {
            String[] strArr = wifiConfiguration.wepKeys;
            StringBuilder sb2 = new StringBuilder();
            q.u(new byte[]{-114}, new byte[]{-84, -1, 45, 117, 70, -58, 13, 96}, sb2, str2);
            strArr[0] = q.i(new byte[]{51}, new byte[]{17, 117, -28, -112, -29, 45, 95, 51}, sb2);
            wifiConfiguration.wepTxKeyIndex = 0;
            wifiConfiguration.allowedKeyManagement.set(0);
        } else {
            int i10 = Build$VERSION.SDK_INT;
            if (i10 >= 29 && upperCase.contains(m.h(new byte[]{-21, -23, 25}, new byte[]{-72, -88, 92, 64, 86, -48, 18, 20})) && !upperCase.contains(m.h(new byte[]{-79, 47, 49}, new byte[]{-31, 124, 122, -72, 1, -26, -66, 59}))) {
                StringBuilder sb3 = new StringBuilder();
                q.u(new byte[]{-17}, new byte[]{-51, -4, 21, -39, -18, -108, 65, 35}, sb3, str2);
                wifiConfiguration.preSharedKey = q.i(new byte[]{87}, new byte[]{117, 34, 123, -77, 119, -38, -8, -124}, sb3);
                wifiConfiguration.allowedKeyManagement.set(8);
            } else if (i10 >= 29 && upperCase.contains(m.h(new byte[]{57, -69, -5}, new byte[]{118, -20, -66, -36, -66, 38, 96, -81}))) {
                wifiConfiguration.allowedKeyManagement.set(9);
            } else if (u(upperCase)) {
                wifiConfiguration.allowedKeyManagement.set(0);
            } else {
                StringBuilder sb4 = new StringBuilder();
                q.u(new byte[]{86}, new byte[]{116, 110, -24, -4, 5, -3, 90, 101}, sb4, str2);
                wifiConfiguration.preSharedKey = q.i(new byte[]{109}, new byte[]{79, -91, 8, -46, 103, -39, -9, -87}, sb4);
                wifiConfiguration.allowedKeyManagement.set(1);
            }
        }
        List<WifiConfiguration> configuredNetworks = this.f1633b.getConfiguredNetworks();
        if (configuredNetworks == null) {
            i9 = -1;
            break;
        }
        Iterator<WifiConfiguration> it = configuredNetworks.iterator();
        while (true) {
            if (!it.hasNext()) {
                i9 = -1;
                break;
            }
            WifiConfiguration next = it.next();
            String str4 = next.SSID;
            if (str4 != null) {
                StringBuilder sb5 = new StringBuilder();
                q.u(new byte[]{-113}, new byte[]{-83, 72, 126, 32, 4, 38, -127, -10}, sb5, str);
                sb5.append(m.h(new byte[]{-16}, new byte[]{-46, 120, 36, -7, 111, -93, 21, -68}));
                if (str4.equals(sb5.toString())) {
                    i9 = next.networkId;
                    break;
                }
            }
        }
        if (i9 != -1) {
            wifiConfiguration.networkId = i9;
            iAddNetwork = this.f1633b.updateNetwork(wifiConfiguration);
        } else {
            iAddNetwork = this.f1633b.addNetwork(wifiConfiguration);
        }
        if (iAddNetwork == -1) {
            y5.k.x(getApplicationContext(), getResources().getString(2131952873) + str);
            return;
        }
        this.f1633b.saveConfiguration();
        this.f1633b.disconnect();
        this.f1633b.enableNetwork(iAddNetwork, true);
        this.f1633b.reconnect();
        y5.k.x(getApplicationContext(), getResources().getString(2131952868) + str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        if (!this.f1633b.isWifiEnabled()) {
            y5.k.x(getApplicationContext(), getResources().getString(2131952883));
        } else {
            if (ContextCompat.checkSelfPermission(this, m.h(new byte[]{-4, -109, -61, 58, 96, 56, 125, 91, -19, -104, -43, 37, 102, 34, 106, 28, -14, -109, -119, 9, 76, 18, 92, 38, -50, -94, -31, 1, 65, 20, 70, 57, -46, -66, -26, 28, 70, 30, 87}, new byte[]{-99, -3, -89, 72, 15, 81, 25, 117})) != 0) {
                requestPermissions(new String[]{m.h(new byte[]{94, -47, -102, 121, 84, 52, 56, -44, 79, -38, -116, 102, 82, 46, 47, -109, 80, -47, -48, 74, 120, 30, 25, -87, 108, -32, -72, 66, 117, 24, 3, -74, 112, -4, -65, 95, 114, 18, 18}, new byte[]{63, -65, -2, 11, 59, 93, 92, -6})}, 1);
                return;
            }
            try {
                this.f1633b.startScan();
                y5.k.x(getApplicationContext(), getResources().getString(2131952887));
            } catch (SecurityException unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void w(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return;
        }
        AlertDialog alertDialog = this.f1644p;
        if (alertDialog == null || !alertDialog.isShowing()) {
            f1632v = str;
            if (str2 == null) {
                str2 = "";
            }
            this.f1643o = str2;
            AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this);
            alertDialog$Builder.setTitle(getResources().getString(2131952872));
            alertDialog$Builder.setMessage(getResources().getString(2131952891) + str);
            EditText editText = new EditText(this);
            editText.setInputType(129);
            CheckBox checkBox = new CheckBox(this);
            checkBox.setText(getResources().getString(2131952885));
            checkBox.setOnCheckedChangeListener(new s0(7, editText));
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(50, 40, 50, 10);
            linearLayout.addView(editText);
            linearLayout.addView(checkBox);
            alertDialog$Builder.setView(linearLayout);
            alertDialog$Builder.setPositiveButton(getResources().getString(2131952888), new y0(this, editText, str, 3));
            alertDialog$Builder.setNegativeButton(getResources().getString(2131951882), new d3(1));
            AlertDialog alertDialogCreate = alertDialog$Builder.create();
            this.f1644p = alertDialogCreate;
            alertDialogCreate.setOnDismissListener(new c(this, 0));
            this.f1644p.show();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void x(int i9, int i10) {
        TextView textView = this.f1635g;
        if (textView == null) {
            return;
        }
        textView.setText(i9);
        this.f1635g.setTextColor(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y() {
        Handler handler = this.r;
        a aVar = this.f1646s;
        handler.removeCallbacks(aVar);
        handler.removeCallbacks(this.t);
        Call call = this.f1645q;
        if (call != null) {
            call.cancel();
            this.f1645q = null;
        }
        this.f1638j.setBackgroundColor(-7829368);
        this.f1638j.setEnabled(false);
        this.f1640l.setEnabled(false);
        this.f1638j.setText(getResources().getString(2131952881));
        this.f1639k.setEnable(Boolean.FALSE);
        this.f1639k.setTextButton(getResources().getString(2131952881));
        handler.postDelayed(aVar, 12000L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void z() {
        runOnUiThread(new a(this, 1));
    }
}
