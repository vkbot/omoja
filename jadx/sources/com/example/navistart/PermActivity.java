package com.example.navistart;

import android.app.AlertDialog;
import android.app.AppOpsManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.VpnService;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.DialogInterfaceOnClickListenerC1370i2;
import p047e0.ViewOnClickListenerC1365h2;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class PermActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: c */
    public static final String f1507c = AbstractC1387m.m2421h(new byte[]{-112, -27, -106, -116, -36, -31, -45, -95, -127, -18, ByteCompanionObject.MIN_VALUE, -109, -38, -5, -60, -26, -98, -27, -36, -65, -16, -53, -14, -36, -94, -44, -65, -79, -16, -61, -24, -61, -66, -56, -77, -86, -6, -57, -7}, new byte[]{-15, -117, -14, -2, -77, -120, -73, -113});

    /* JADX INFO: renamed from: d */
    public static final String f1508d = AbstractC1387m.m2421h(new byte[]{51, -77, 57, 90, -124, 14, Base64.padSymbol, -104, 36, -90, 36, 91, -106, 56, 34, -109, 37}, new byte[]{86, -53, 77, 40, -27, 81, 77, -3});

    /* JADX INFO: renamed from: b */
    public LinearLayout f1509b;

    /* JADX INFO: renamed from: t */
    public static boolean m1519t(PermActivity permActivity) {
        ComponentName componentName = new ComponentName(permActivity, (Class<?>) MyA11yService.class);
        String string = Settings.Secure.getString(permActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-22, -106, -22, -76, 47, -1, -102, 116, -18, -101, -24, -77, 48, -23, -105, 73, -26, -108, -30, -94, 58, -59, -115, 78, -3, -114, -30, -75, 38, -23}, new byte[]{-113, -8, -117, -42, 67, -102, -2, 43}));
        if (string == null) {
            return false;
        }
        TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(':');
        simpleStringSplitter.setString(string);
        while (simpleStringSplitter.hasNext()) {
            if (simpleStringSplitter.next().equalsIgnoreCase(componentName.flattenToString())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        String[] stringArrayExtra = getIntent().getStringArrayExtra(f1508d);
        if (stringArrayExtra != null && stringArrayExtra.length > 0) {
            for (String str : stringArrayExtra) {
                if (str.equals(AbstractC1387m.m2421h(new byte[]{9, -126, -35, -41, -24, -121, 68, -85, 24, -119, -53, -56, -18, -99, 83, -20, 7, -126, -105, -9, -62, -65, 117, -64, 59, -72, -26, -20, -55, -67, 116, -60, 36, -96, -26, -11, -58, -83, 107, -60, 47, -87, -22}, new byte[]{104, -20, -71, -91, -121, -18, 32, -123}))) {
                    if (!(Build.VERSION.SDK_INT >= 26 ? getPackageManager().canRequestPackageInstalls() : true)) {
                        m1525y();
                    }
                } else if (str.equals(f1507c)) {
                    if (!m1522v()) {
                        m1524x();
                    }
                } else if (ContextCompat.checkSelfPermission(this, str) != 0) {
                    ActivityCompat.requestPermissions(this, new String[]{str}, 1);
                }
            }
            finish();
            overridePendingTransition(0, 0);
        }
        AppCompatDelegate.setDefaultNightMode(1);
        setContentView(R.layout.activityperm);
        this.f1509b = (LinearLayout) findViewById(R.id.permissions_layout);
        Button button = (Button) findViewById(R.id.perm_act_back);
        button.setBackgroundTintList(ContextCompat.getColorStateList(this, R.color.permission_button_background));
        button.setTextColor(ContextCompat.getColorStateList(this, R.color.permission_button_text));
        findViewById(R.id.perm_act_back).setOnClickListener(new ViewOnClickListenerC1365h2(this, 3));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (i10 == 1001 && (iArr.length <= 0 || iArr[0] != 0)) {
            new AlertDialog.Builder(this).setTitle(getResources().getText(R.string.get_more_perm)).setMessage(getResources().getText(R.string.get_fon_geo_perm_more)).setPositiveButton(getResources().getText(R.string.open_perm_set), new DialogInterfaceOnClickListenerC1370i2(this, 1)).setNegativeButton(getResources().getText(R.string.cancel), (DialogInterface.OnClickListener) null).show();
        }
        m1526z();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        m1526z();
    }

    /* JADX INFO: renamed from: s */
    public final Boolean m1520s() {
        if (Build.VERSION.SDK_INT >= 31) {
            return Boolean.valueOf(ContextCompat.checkSelfPermission(this, AbstractC1387m.m2421h(new byte[]{54, 84, 46, 83, -28, 111, 109, -53, 39, 95, 56, 76, -30, 117, 122, -116, 56, 84, 100, 99, -57, 83, 76, -79, 24, 117, 30, 105, -44, 69, 70, -85, 25, ByteCompanionObject.MAX_VALUE, 9, 117}, new byte[]{87, 58, 74, 33, -117, 6, 9, -27})) == 0);
        }
        return Boolean.TRUE;
    }

    /* JADX INFO: renamed from: u */
    public final boolean m1521u() {
        return ((PowerManager) getSystemService(AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, 35, -108, 77, 2}, new byte[]{77, 76, -29, 40, 112, 91, -54, -18}))).isIgnoringBatteryOptimizations(getPackageName());
    }

    /* JADX INFO: renamed from: v */
    public final boolean m1522v() {
        if (ContextCompat.checkSelfPermission(this, f1507c) == 0) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) getSystemService(AbstractC1387m.m2421h(new byte[]{79, -108, -95, -62, -33, -21}, new byte[]{46, -28, -47, -83, -81, -104, -18, 67}));
        return appOpsManager != null && appOpsManager.checkOpNoThrow(AbstractC1387m.m2421h(new byte[]{-36, 16, -6, -77, 125, 37, 12, 93, -48, 17, -3, -86, 77, 32, 7, 4, -36, 10, -9, -82, 124}, new byte[]{-67, 126, -98, -63, 18, 76, 104, 103}), Process.myUid(), getPackageName()) == 0;
    }

    /* JADX INFO: renamed from: w */
    public final boolean m1523w() {
        String packageName = getPackageName();
        String string = Settings.Secure.getString(getContentResolver(), AbstractC1387m.m2421h(new byte[]{-29, 3, 14, 0, -89, 14, 19, -123, -24, 2, 27, 11, -83, 2, 20, -69, -14, 4, 0, 12, -108, 7, 30, -87, -14, 8, 1, 7, -71, 24}, new byte[]{-122, 109, 111, 98, -53, 107, 119, -38}));
        return string != null && string.contains(packageName);
    }

    /* JADX INFO: renamed from: x */
    public final void m1524x() {
        try {
            AbstractC3656k.m5875u(this, new Intent(AbstractC1387m.m2421h(new byte[]{82, 47, 122, 9, 67, -5, 12, -26, 64, 36, 106, 15, 69, -4, 15, -69, 29, 0, 78, 43, 96, -37, 43, -119, 103, 8, 81, 53, 115, -42, 45, -98, 118, 13, 81, 43, 97, -41, 38, -100, 108, 18, 91, 47, 120, -37, 38, -113, 96}, new byte[]{51, 65, 30, 123, 44, -110, 104, -56})), null);
        } catch (ActivityNotFoundException unused) {
            AbstractC3656k.m5875u(this, new Intent(AbstractC1387m.m2421h(new byte[]{126, 54, 124, 16, 84, -99, -46, -74, 108, Base64.padSymbol, 108, 22, 82, -102, -47, -21, 49, 11, 93, 54, 111, -67, -8, -33, 76}, new byte[]{31, 88, 24, 98, 59, -12, -74, -104})), null);
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m1525y() {
        try {
            startActivityForResult(new Intent(AbstractC1387m.m2421h(new byte[]{-122, 25, 14, -54, -58, -75, -12, -73, -108, 18, 30, -52, -64, -78, -9, -22, -55, 58, 43, -10, -24, -101, -43, -58, -78, 57, 33, -10, -26, -117, -34, -58, -90, 39, 58, -25, -6, -109, -59, -53, -92, 50, 57}, new byte[]{-25, 119, 106, -72, -87, -36, -112, -103})), 1);
        } catch (ActivityNotFoundException unused) {
        }
    }

    /* JADX INFO: renamed from: z */
    public final void m1526z() {
        int i10 = 8;
        String[] strArr = {AbstractC1387m.m2421h(new byte[]{94, 60, 28, -2, 98, 33, -21, 59, 79, 55, 10, -31, 100, 59, -4, 124, 80, 60, 86, -33, 84, 27, -37, 80, 114, 13, 57, -64, 72, 26, -37, 74, 104, 27, 54, -56, 66, 31}, new byte[]{63, 82, 120, -116, 13, 72, -113, 21}), AbstractC1387m.m2421h(new byte[]{-113, -4, 48, 7, 11, -101, -11, -1, -98, -9, 38, 24, 13, -127, -30, -72, -127, -4, 122, 55, 45, -68, -43, -114, -72, -62, 26, 42, 55, -73, -61, -121, -89, -47, 17}, new byte[]{-18, -110, 84, 117, 100, -14, -111, -47}), AbstractC1387m.m2421h(new byte[]{-19, -118, 73, 14, 4, 123, -14, 118, -4, -127, 95, 17, 2, 97, -27, 49, -29, -118, 3, 43, 57, 91, -62, 29, -45, -73, 104, 63, 62, 64, -45, 7, -33, -95, 121, 40, 34, 92, -47, 11}, new byte[]{-116, -28, 45, 124, 107, 18, -106, 88}), AbstractC1387m.m2421h(new byte[]{101, -51, 12, 2, -91, 5, -82, -59, 116, -58, 26, 29, -93, 31, -71, -126, 107, -51, 70, 50, -125, 34, -114, -76, 74, -20, 60, 57, -116, 37, -119, -86, 80, -22, 39, 62, -107, 32, -125, -72, 80, -26, 38, 53, -104, 51, -103, -82, 86, -11, 33, 51, -113}, new byte[]{4, -93, 104, 112, -54, 108, -54, -21}), AbstractC1387m.m2421h(new byte[]{103, 56, 108, 64, 51, 108, -38, 30, 118, 51, 122, 95, 53, 118, -51, 89, 105, 56, 38, 96, 25, 84, -21, 117, 85, 2, 87, 123, 18, 86, -22, 113, 74, 26, 87, 98, 29, 70, -11, 113, 65, 19, 91}, new byte[]{6, 86, 8, 50, 92, 5, -66, 48}), AbstractC1387m.m2421h(new byte[]{101, -64, -109, -74, -10, -37, 78, -97, 116, -53, -123, -87, -16, -63, 89, -40, 107, -64, -39, -106, -36, -15, 101, -29, 64, -15, -74, -111, -35, -5, 101}, new byte[]{4, -82, -9, -60, -103, -78, 42, -79}), AbstractC1387m.m2421h(new byte[]{15, -4, -45, -88, -67, 88, -33, -56, 30, -9, -59, -73, -69, 66, -56, -113, 1, -4, -103, -104, -98, 100, -2, -78, 33, -35, -29, -110, -115, 114, -12, -88, 32, -41, -12, -114}, new byte[]{110, -110, -73, -38, -46, 49, -69, -26}), AbstractC1387m.m2421h(new byte[]{29, -61, 115, 119, -1, -10, 18, 43, 12, -56, 101, 104, -7, -20, 5, 108, 19, -61, 57, 87, -43, -34, 50, 90, 48, -30, 80, 86}, new byte[]{124, -83, 23, 5, -112, -97, 118, 5}), AbstractC1387m.m2421h(new byte[]{-4, -116, 14, -7, -84, 72, 38, -33, -19, -121, 24, -26, -86, 82, 49, -104, -14, -116, 68, -56, -117, 96, 12, -74, -40, -67, Base64.padSymbol, -62, -123, 104, 29, -94, -55, -93, 62, -50}, new byte[]{-99, -30, 106, -117, -61, 33, 66, -15}), AbstractC1387m.m2421h(new byte[]{-2, 88, -9, -52, -92, ByteCompanionObject.MIN_VALUE, -13, 108, -17, 83, -31, -45, -94, -102, -28, 43, -16, 88, -67, -1, -120, -86, -46, 17, -52, 105, -43, -9, -123, -84, -56, 14, -48, 117, -46, -22, -126, -90, -39}, new byte[]{-97, 54, -109, -66, -53, -23, -105, 66}), AbstractC1387m.m2421h(new byte[]{101, 0, -42, 94, -85, 105, -64, 82, 116, 11, -64, 65, -83, 115, -41, 21, 107, 0, -100, 109, -121, 67, -31, 47, 87, 49, -16, 109, -121, 75, -29, 46, 75, 59, -4, 104, -101, 76, -21, 63, 69, 58, -5, 99, -118}, new byte[]{4, 110, -78, 44, -60, 0, -92, 124}), f1507c, AbstractC1387m.m2421h(new byte[]{118, 2, -123, -30, 29, -19, 13, -3, 103, 9, -109, -3, 27, -9, 26, -70, 120, 2, -49, -47, 49, -57, 44, ByteCompanionObject.MIN_VALUE, 68, 51, -94, -33, 51, -42, 58, -106, 72, 32, -82, -45, 51, -48, 32, -100, 89}, new byte[]{23, 108, -31, -112, 114, -124, 105, -45}), AbstractC1387m.m2421h(new byte[]{124, 28, 107, -91, -103, -81, -50, 77, 109, 23, 125, -70, -97, -75, -39, 10, 114, 28, 33, -123, -77, -121, -18, 60, 88, 42, 91, -110, -92, -120, -21, 47, 66, 33, 91, -104, -92, -121, -19, 38}, new byte[]{29, 114, 15, -41, -10, -58, -86, 99}), AbstractC1387m.m2421h(new byte[]{1, -94, 17, -94, 21, -97, -16, 103, 16, -87, 7, -67, 19, -123, -25, 32, 15, -94, 91, -110, 51, -72, -48, 22, 33, -113, 54, -107, 41, -91, -35, 11, 41, ByteCompanionObject.MIN_VALUE, 60, -124, 35, -87, -57, 12, 50, -102, 60, -109, 63}, new byte[]{96, -52, 117, -48, 122, -10, -108, 73}), AbstractC1387m.m2421h(new byte[]{116, -52, 62, 20, 95, -13, -72, -16, 101, -57, 40, 11, 89, -23, -81, -73, 122, -52, 116, 52, 117, -53, -119, -101, 70, -10, 5, 47, 119, -44, -109, -116, 80, -3, 24, 39, 100, -50, -103, -116, 76, -3, 21, 54, 100, -45, -111, -105, 79, -29, 14, 47, ByteCompanionObject.MAX_VALUE, -44, -113}, new byte[]{21, -94, 90, 102, 48, -102, -36, -34})};
        this.f1509b.removeAllViews();
        for (int i11 = 0; i11 < 16; i11++) {
            String str = strArr[i11];
            TextView textView = new TextView(this);
            textView.setText(str);
            this.f1509b.addView(textView);
            Button button = new Button(this);
            button.setBackgroundTintList(ContextCompat.getColorStateList(this, R.color.permission_button_background));
            button.setTextColor(ContextCompat.getColorStateList(this, R.color.permission_button_text));
            button.setText(getResources().getText(R.string.get_more_perm));
            if (str.equals(AbstractC1387m.m2421h(new byte[]{114, 30, 60, -50, -53, 76, -44, 93, 99, 21, 42, -47, -51, 86, -61, 26, 124, 30, 118, -18, -31, 116, -27, 54, 64, 36, 7, -11, -22, 118, -28, 50, 95, 60, 7, -20, -27, 102, -5, 50, 84, 53, 11}, new byte[]{19, 112, 88, -68, -92, 37, -80, 115}))) {
                if (Build.VERSION.SDK_INT >= 26 ? getPackageManager().canRequestPackageInstalls() : true) {
                    button.setEnabled(false);
                    button.setText(getResources().getText(R.string.perm_done));
                } else {
                    button.setOnClickListener(new ViewOnClickListenerC1365h2(this, 4));
                }
            } else if (str.equals(AbstractC1387m.m2421h(new byte[]{-47, 116, 11, 93, 24, -44, 2, 59, -64, ByteCompanionObject.MAX_VALUE, 29, 66, 30, -50, 21, 124, -33, 116, 65, 124, 46, -18, 50, 80, -3, 69, 46, 99, 50, -17, 50, 74, -25, 83, 33, 107, 56, -22}, new byte[]{-80, 26, 111, 47, 119, -67, 102, 21}))) {
                if (Settings.canDrawOverlays(this)) {
                    button.setEnabled(false);
                    button.setText(getResources().getText(R.string.perm_done));
                } else {
                    button.setOnClickListener(new ViewOnClickListenerC1365h2(this, 6));
                }
            } else if (str.equals(AbstractC1387m.m2421h(new byte[]{-33, -92, 0, 70, -127, 1, -12, -15, -50, -81, 22, 89, -121, 27, -29, -74, -47, -92, 74, 118, -89, 38, -44, ByteCompanionObject.MIN_VALUE, -16, -123, 48, 125, -88, 33, -45, -98, -22, -125, 43, 122, -79, 36, -39, -116, -22, -113, 42, 113, -68, 55, -61, -102, -20, -100, 45, 119, -85}, new byte[]{-66, -54, 100, 52, -18, 104, -112, -33}))) {
                if (m1523w()) {
                    button.setEnabled(false);
                    button.setText(getResources().getText(R.string.perm_done));
                } else {
                    button.setOnClickListener(new ViewOnClickListenerC1365h2(this, 7));
                }
            } else if (str.equals(AbstractC1387m.m2421h(new byte[]{38, -67, 12, -102, 51, -95, -20, -37, 55, -74, 26, -123, 53, -69, -5, -100, 40, -67, 70, -87, 31, -117, -51, -90, 20, -116, 42, -87, 31, -125, -49, -89, 8, -122, 38, -84, 3, -124, -57, -74, 6, -121, 33, -89, 18}, new byte[]{71, -45, 104, -24, 92, -56, -120, -11}))) {
                if (ContextCompat.checkSelfPermission(this, str) == 0) {
                    button.setEnabled(false);
                    button.setText(getResources().getText(R.string.perm_done));
                } else {
                    button.setOnClickListener(new ViewOnClickListenerC1365h2(this, i10));
                }
            } else if (str.equals(f1507c)) {
                if (m1522v()) {
                    button.setEnabled(false);
                    button.setText(getResources().getText(R.string.perm_done));
                } else {
                    button.setOnClickListener(new ViewOnClickListenerC1365h2(this, 9));
                }
            } else if (str.equals(AbstractC1387m.m2421h(new byte[]{-120, -124, 96, 102, -75, -56, -15, 54, -103, -113, 118, 121, -77, -46, -26, 113, -122, -124, 42, 67, -120, -24, -63, 93, -74, -71, 65, 87, -113, -13, -48, 71, -70, -81, 80, 64, -109, -17, -46, 75}, new byte[]{-23, -22, 4, 20, -38, -95, -107, 24}))) {
                if (ContextCompat.checkSelfPermission(this, str) == 0) {
                    button.setEnabled(false);
                    button.setText(getResources().getText(R.string.perm_done));
                } else {
                    button.setOnClickListener(new ViewOnClickListenerC1365h2(this, 10));
                }
            } else if (str.equals(AbstractC1387m.m2421h(new byte[]{-4, -5, 17, -72, 112, -13, -93, 58, -19, -16, 7, -89, 118, -23, -76, 125, -14, -5, 91, -104, 90, -37, -125, 75, -47, -38, 50, -103}, new byte[]{-99, -107, 117, -54, 31, -102, -57, 20}))) {
                if (ContextCompat.checkSelfPermission(this, str) == 0) {
                    button.setEnabled(false);
                    button.setText(getResources().getText(R.string.perm_done));
                } else {
                    button.setOnClickListener(new ViewOnClickListenerC1365h2(this, 0));
                }
            } else if (!str.equals(AbstractC1387m.m2421h(new byte[]{77, -85, 60, 113, -11, -49, 110, 122, 92, -96, 42, 110, -13, -43, 121, Base64.padSymbol, 67, -85, 118, 65, -45, -24, 78, 11, 109, -122, 27, 70, -55, -11, 67, 22, 101, -119, 17, 87, -61, -7, 89, 17, 126, -109, 17, 64, -33}, new byte[]{44, -59, 88, 3, -102, -90, 10, 84}))) {
                int i12 = 2;
                if (str.equals(AbstractC1387m.m2421h(new byte[]{63, -81, -99, -77, -117, -112, 67, 102, 46, -92, -117, -84, -115, -118, 84, 33, 49, -81, -41, -125, -83, -73, 99, 23, 8, -111, -73, -98, -73, -68, 117, 30, 23, -126, -68}, new byte[]{94, -63, -7, -63, -28, -7, 39, 72}))) {
                    Intent intentPrepare = VpnService.prepare(this);
                    if (intentPrepare == null) {
                        button.setEnabled(false);
                        button.setText(getResources().getText(R.string.perm_done));
                    } else {
                        button.setOnClickListener(new ViewOnClickListenerC0701a(i12, this, intentPrepare));
                    }
                } else if (str.equals(AbstractC1387m.m2421h(new byte[]{-43, 111, -111, 82, 14, 40, 63, -65, -60, 100, -121, 77, 8, 50, 40, -8, -37, 111, -37, 114, 36, 16, 14, -44, -25, 85, -86, 105, 38, 15, 20, -61, -15, 94, -73, 97, 53, 21, 30, -61, -19, 94, -70, 112, 53, 8, 22, -40, -18, 64, -95, 105, 46, 15, 8}, new byte[]{-76, 1, -11, 32, 97, 65, 91, -111}))) {
                    if (m1521u()) {
                        button.setEnabled(false);
                        button.setText(getResources().getText(R.string.perm_done));
                    } else {
                        button.setOnClickListener(new ViewOnClickListenerC1365h2(this, i12));
                    }
                } else if (str.equals(AbstractC1387m.m2421h(new byte[]{77, 35, -15, -1, -90, -3, -114, 26, 92, 40, -25, -32, -96, -25, -103, 93, 67, 35, -69, -49, -123, -63, -81, 96, 99, 2, -63, -59, -106, -41, -91, 122, 98, 8, -42, -39}, new byte[]{44, 77, -107, -115, -55, -108, -22, 52}))) {
                    if (m1520s().booleanValue()) {
                        button.setEnabled(false);
                        button.setText(getResources().getText(R.string.perm_done));
                    } else {
                        button.setOnClickListener(new ViewOnClickListenerC1365h2(this, 5));
                    }
                } else if (ContextCompat.checkSelfPermission(this, str) == 0) {
                    button.setEnabled(false);
                    button.setText(getResources().getText(R.string.perm_done));
                } else {
                    button.setOnClickListener(new ViewOnClickListenerC0701a(3, this, str));
                }
            } else if (m1519t(this)) {
                button.setEnabled(false);
                button.setText(getResources().getText(R.string.perm_done));
            } else {
                button.setOnClickListener(new ViewOnClickListenerC1365h2(this, 1));
            }
            this.f1509b.addView(button);
        }
    }
}
