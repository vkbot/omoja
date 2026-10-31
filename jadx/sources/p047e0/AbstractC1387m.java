package p047e0;

import ai.onnxruntime.AbstractC0074a;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.util.Log;
import com.example.navistart.DPups;
import com.example.navistart.MainActivity;
import com.example.navistart.UpdateActivity;
import com.example.navistart.cores.BezFunEnum;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.protobuf.AbstractC1178q;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;

/* JADX INFO: renamed from: e0.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1387m {

    /* JADX INFO: renamed from: c */
    public static String[] f3315c;

    /* JADX INFO: renamed from: d */
    public static ArrayList f3316d;

    /* JADX INFO: renamed from: a */
    public static Boolean f3313a = Boolean.FALSE;

    /* JADX INFO: renamed from: b */
    public static String f3314b = "";

    /* JADX INFO: renamed from: e */
    public static final byte[] f3317e = {107, 117};

    /* JADX INFO: renamed from: f */
    public static final byte[] f3318f = {109, 105, 114, 117};

    /* JADX INFO: renamed from: g */
    public static final byte[] f3319g = {109, 105, 114};

    /* JADX INFO: renamed from: h */
    public static final byte[] f3320h = {83, 72, 65};

    /* JADX INFO: renamed from: i */
    public static final byte[] f3321i = {83, 72, 65, 45, 53, 49, 50};

    /* JADX INFO: renamed from: j */
    public static final byte[] f3322j = {109, 117, 114};

    /* JADX INFO: renamed from: k */
    public static final byte[] f3323k = {113, 102, 76, 55, 47, 67, 101, 120, 48, 56, 75, 119, 75, 66, 101, 111, 115, 48, 107, 100, 97, 89, 78, 65, 51, 101, 103, Base64.padSymbol, 10};

    /* JADX INFO: renamed from: a */
    public static String m2414a(List list) {
        if (list == null || list.isEmpty()) {
            return m2421h(new byte[]{40, 32}, new byte[]{115, 125, 15, -58, 125, -60, 103, 70});
        }
        StringBuilder sb = new StringBuilder(m2421h(new byte[]{-23}, new byte[]{-78, -21, -37, 126, -107, -62, -35, -17}));
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (i10 > 0) {
                sb.append(m2421h(new byte[]{76, -66}, new byte[]{96, -98, 101, 46, 64, -88, -114, 121}));
            }
            sb.append(((ComponentName) list.get(i10)).flattenToShortString());
        }
        return AbstractC1178q.m2075i(new byte[]{-55}, new byte[]{-108, -71, -117, -18, -28, -59, 29, 48}, sb);
    }

    /* JADX INFO: renamed from: b */
    public static String m2415b(String str, String str2, Exception exc) {
        StringBuilder sbM170u = AbstractC0074a.m170u(str2);
        sbM170u.append(m2421h(new byte[]{-29}, new byte[]{-34, -40, 70, 90, 21, -53, 94, -91}));
        sbM170u.append(m2422i(exc));
        String string = sbM170u.toString();
        return str == null ? string : AbstractC1178q.m2078l(new byte[]{33, -19}, new byte[]{26, -51, 26, -71, 29, 95, -100, -56}, AbstractC0074a.m170u(str), string);
    }

    /* JADX INFO: renamed from: c */
    public static void m2416c() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        f3316d = new ArrayList();
        try {
            Method declaredMethod = BluetoothAdapter.class.getDeclaredMethod(m2421h(new byte[]{82, 122, -26, -113, -49, -115, 2, -25, 86, 107, -5, -93, -50, -80, 24, -29, 65, 122}, new byte[]{53, 31, -110, -52, -96, -29, 108, -126}), null);
            declaredMethod.setAccessible(true);
            ((Integer) declaredMethod.invoke(defaultAdapter, null)).getClass();
            for (BluetoothDevice bluetoothDevice : defaultAdapter.getBondedDevices()) {
                Method declaredMethod2 = BluetoothDevice.class.getDeclaredMethod(m2421h(new byte[]{-38, 109, 58, 71, 103, -71, -6, -1, -57, 123, 29}, new byte[]{-77, 30, 121, 40, 9, -41, -97, -100}), null);
                declaredMethod.setAccessible(true);
                boolean zBooleanValue = ((Boolean) declaredMethod2.invoke(bluetoothDevice, null)).booleanValue();
                String name = bluetoothDevice.getName();
                ArrayList arrayList = f3316d;
                if (name == null || name.trim().isEmpty()) {
                    name = bluetoothDevice.getAddress();
                }
                arrayList.add(name);
                String[] strArr = new String[f3316d.size()];
                for (int i10 = 0; i10 < f3316d.size(); i10++) {
                    strArr[i10] = (String) f3316d.get(i10);
                }
                f3315c = strArr;
                if (zBooleanValue && !f3313a.booleanValue()) {
                    f3313a = Boolean.TRUE;
                    f3314b = bluetoothDevice.getName();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:46:0x0100  */
    /* JADX WARN: Code duplicated, block: B:53:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: d */
    public static C1412r m2417d(UpdateActivity updateActivity, String str) {
        boolean z9;
        String str2;
        String str3;
        boolean z10;
        String str4;
        boolean z11;
        boolean z12;
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) updateActivity.getSystemService(m2421h(new byte[]{66, -6, -10, 81, -114, 111, -113, 58, 73, -13, -23, 91, -108}, new byte[]{38, -97, ByteCompanionObject.MIN_VALUE, 56, -19, 10, -48, 74}));
        ComponentName componentName = new ComponentName(updateActivity, (Class<?>) DPups.class);
        C1417s c1417sM2423j = m2423j(updateActivity);
        boolean z13 = c1417sM2423j.f3399a;
        if (devicePolicyManager == null) {
            C1412r c1412r = new C1412r(c1417sM2423j, m2423j(updateActivity), false, false, false, false, m2421h(new byte[]{38, -44, -30, -71, 25, -70, -17, -32, 14, -40, -9, -87, 55, -66, -47, -18, 5, -44, -26, -16, 19, -84, -97, -31, 23, -35, -8}, new byte[]{98, -79, -108, -48, 122, -33, -65, -113}), null);
            Log.e(str, c1412r.m2450a());
            return c1412r;
        }
        boolean z14 = false;
        if (z13 || c1417sM2423j.f3400b) {
            try {
                List<ComponentName> activeAdmins = devicePolicyManager.getActiveAdmins();
                if (activeAdmins != null) {
                    z9 = false;
                    for (ComponentName componentName2 : activeAdmins) {
                        try {
                            if (updateActivity.getPackageName().equals(componentName2.getPackageName())) {
                                try {
                                    m2418e(updateActivity, devicePolicyManager, componentName2, str);
                                    z9 = true;
                                } catch (Exception e) {
                                    e = e;
                                    z9 = true;
                                    Log.e(str, m2421h(new byte[]{-97, 112, 113, -71, -102, -19, -36, -109, -99, 84, 97, -107, -112, -9, -58, -59, -98, 116, 108, -108, -100, -3, -107, -121, -99, 115, 106, -118, -100, -71, -59, -118, -108, 124, 102, -127, -39, -6, -39, ByteCompanionObject.MIN_VALUE, -103, 123, 112, -120}, new byte[]{-8, 21, 5, -8, -7, -103, -75, -27}), e);
                                    if (!z9) {
                                        m2418e(updateActivity, devicePolicyManager, componentName, str);
                                    }
                                    if (z13) {
                                        try {
                                            devicePolicyManager.clearDeviceOwnerApp(updateActivity.getPackageName());
                                            z14 = false;
                                            str3 = null;
                                            str2 = null;
                                            z14 = true;
                                            z10 = true;
                                        } catch (Exception e6) {
                                            String strM2422i = m2422i(e6);
                                            Log.e(str, m2421h(new byte[]{96, -14, -92, 1, 9, 13, 86, -60, 106, -3, -92, 47, 12, 39, 86, -64, 66, -18, -79, 64, 29, 40, 90, -34, 102, -6}, new byte[]{3, -98, -63, 96, 123, 73, 51, -78}), e6);
                                            str2 = strM2422i;
                                            str3 = null;
                                            z14 = true;
                                            z10 = z14;
                                        }
                                        if (m2423j(updateActivity).f3400b) {
                                            try {
                                                m2424k(updateActivity, devicePolicyManager, componentName, str);
                                                z11 = true;
                                            } catch (Exception e10) {
                                                String strM2422i2 = m2422i(e10);
                                                Log.e(str, m2421h(new byte[]{71, 2, -30, -113, 59, -27, -114, 103, 65, 14, -7, -123, 12, -28, -94, 109, 91, 71, -23, -127, 36, -20, -86, 96}, new byte[]{53, 103, -113, -32, 77, ByteCompanionObject.MIN_VALUE, -49, 4}), e10);
                                                str4 = strM2422i2;
                                                z11 = z14;
                                                z12 = true;
                                            }
                                        } else {
                                            z11 = z14;
                                        }
                                        str4 = str3;
                                        z12 = z11;
                                        C1412r c1412r2 = new C1412r(c1417sM2423j, m2423j(updateActivity), z14, z10, z12, z11, str2, str4);
                                        Log.e(str, c1412r2.m2450a());
                                        return c1412r2;
                                    }
                                    str3 = null;
                                    str2 = null;
                                    z10 = z14;
                                    if (m2423j(updateActivity).f3400b) {
                                        m2424k(updateActivity, devicePolicyManager, componentName, str);
                                        z11 = true;
                                    } else {
                                        z11 = z14;
                                    }
                                    str4 = str3;
                                    z12 = z11;
                                    C1412r c1412r3 = new C1412r(c1417sM2423j, m2423j(updateActivity), z14, z10, z12, z11, str2, str4);
                                    Log.e(str, c1412r3.m2450a());
                                    return c1412r3;
                                }
                            }
                        } catch (Exception e11) {
                            e = e11;
                        }
                    }
                } else {
                    z9 = false;
                }
            } catch (Exception e12) {
                e = e12;
                z9 = false;
            }
            if (!z9) {
                m2418e(updateActivity, devicePolicyManager, componentName, str);
            }
        }
        if (z13) {
            devicePolicyManager.clearDeviceOwnerApp(updateActivity.getPackageName());
            z14 = false;
            str3 = null;
            str2 = null;
            z14 = true;
            z10 = true;
            if (m2423j(updateActivity).f3400b) {
                m2424k(updateActivity, devicePolicyManager, componentName, str);
                z11 = true;
            } else {
                z11 = z14;
            }
            str4 = str3;
            z12 = z11;
            C1412r c1412r4 = new C1412r(c1417sM2423j, m2423j(updateActivity), z14, z10, z12, z11, str2, str4);
            Log.e(str, c1412r4.m2450a());
            return c1412r4;
        }
        str3 = null;
        str2 = null;
        z10 = z14;
        if (m2423j(updateActivity).f3400b) {
            m2424k(updateActivity, devicePolicyManager, componentName, str);
            z11 = true;
        } else {
            z11 = z14;
        }
        str4 = str3;
        z12 = z11;
        C1412r c1412r5 = new C1412r(c1417sM2423j, m2423j(updateActivity), z14, z10, z12, z11, str2, str4);
        Log.e(str, c1412r5.m2450a());
        return c1412r5;
    }

    /* JADX INFO: renamed from: e */
    public static void m2418e(UpdateActivity updateActivity, DevicePolicyManager devicePolicyManager, ComponentName componentName, String str) {
        String packageName = updateActivity.getPackageName();
        String strFlattenToShortString = componentName.flattenToShortString();
        try {
            devicePolicyManager.setUninstallBlocked(componentName, packageName, false);
            Log.e(str, m2421h(new byte[]{-30, 68, 1, -9, 30, 122, -13, -122, -27, 64, 25, -50, 50, ByteCompanionObject.MAX_VALUE, -14, -106, -6, 68, 17, -118, 22, 114, -15, -122, -12, 8, 85, -51, 27, 51, -5, -102, -29, 1}, new byte[]{-111, 33, 117, -94, 112, 19, -99, -11}) + packageName + m2421h(new byte[]{-20, 89, 108, 54, -3, 65, 56, -67}, new byte[]{-64, 121, 13, 82, -112, 40, 86, ByteCompanionObject.MIN_VALUE}) + strFlattenToShortString);
        } catch (Exception e) {
            Log.e(str, AbstractC1178q.m2078l(new byte[]{-52, 66, 109, 28, 71, 23, -21, -74, -53, 70, 117, 37, 107, 18, -22, -90, -44, 66, 125, 97, 79, 31, -23, -74, -38, 14, 57, 47, 72, 23, -23, -96, -37, 11, 57, 40, 77, 19, -20, -85, -126}, new byte[]{-65, 39, 25, 73, 41, 126, -123, -59}, new StringBuilder(), strFlattenToShortString), e);
        }
        try {
            devicePolicyManager.clearUserRestriction(componentName, m2421h(new byte[]{103, -108, -93, -2, -2, 16, -36, 24, 125, -102, -112, -25, -49, 24, -62, 27, 122}, new byte[]{9, -5, -4, -117, -112, 121, -78, 107}));
            Log.e(str, m2421h(new byte[]{-26, -60, -92, -57, 83, 86, 17, 77, -9, -6, -92, -43, 85, 113, 11, 75, -15, -63, -82, -56, 9, 71, 43, 123, -60, -28, -115, -23, 118, 92, 55, 102, -52, -26, -110, -14, 96, 79, 46, 119, -60, -8, -111, -11, 8, 35, 13, 67, -87, -120, -96, -62, 76, 106, 12, 21}, new byte[]{-123, -88, -63, -90, 33, 3, 98, 40}) + strFlattenToShortString);
        } catch (Exception e6) {
            Log.e(str, AbstractC1178q.m2078l(new byte[]{54, 104, -119, 73, -26, 65, -117, 14, 39, 86, -119, 91, -32, 102, -111, 8, 33, 109, -125, 70, -68, 80, -79, 56, 20, 72, -96, 103, -61, 75, -83, 37, 28, 74, -65, 124, -43, 88, -76, 52, 20, 84, -68, 123, -67, 52, -98, 10, 60, 104, -119, 76, -72, 52, -103, 15, 56, 109, -126, 21}, new byte[]{85, 4, -20, 40, -108, 20, -8, 107}, new StringBuilder(), strFlattenToShortString), e6);
        }
        try {
            devicePolicyManager.clearUserRestriction(componentName, m2421h(new byte[]{-110, 107, -25, 89, -23, -66, 53, 66, -109, 104, -25, 91, -10, -96, 50}, new byte[]{-4, 4, -72, 58, -122, -48, 65, 48}));
            Log.e(str, m2421h(new byte[]{-124, 66, -122, -106, 59, -85, 79, 70, -107, 124, -122, -124, Base64.padSymbol, -116, 85, 64, -109, 71, -116, -103, 97, -70, 117, 112, -90, 98, -81, -72, 30, -95, 125, 115, -73, 125, -68, -76, 6, -80, 104, 113, -88, 98, -54, -41, 38, -107, 16, 3, -122, 74, -114, -98, 39, -61}, new byte[]{-25, 46, -29, -9, 73, -2, 60, 35}) + strFlattenToShortString);
        } catch (Exception e10) {
            Log.e(str, AbstractC1178q.m2078l(new byte[]{34, 100, -119, -95, -12, -51, -39, 34, 51, 90, -119, -77, -14, -22, -61, 36, 53, 97, -125, -82, -82, -36, -29, 20, 0, 68, -96, -113, -47, -57, -21, 23, 17, 91, -77, -125, -55, -42, -2, 21, 14, 68, -59, -32, -32, -7, -61, 43, 36, 108, -64, -32, -25, -4, -57, 46, 47, 53}, new byte[]{65, 8, -20, -64, -122, -104, -86, 71}, new StringBuilder(), strFlattenToShortString), e10);
        }
        try {
            devicePolicyManager.clearPackagePersistentPreferredActivities(componentName, packageName);
            Log.e(str, m2421h(new byte[]{111, -38, -48, -39, -120, 93, -71, -99, 103, -41, -46, -35, -86, 104, -86, -115, 101, -59, -63, -35, -108, 121, -120, -116, 105, -48, -48, -54, -120, 104, -68, -65, 111, -62, -36, -50, -109, 121, -79, -101, ByteCompanionObject.MAX_VALUE, -106, -38, -45, -38, 107, -73, -116, 44}, new byte[]{12, -74, -75, -72, -6, 13, -40, -2}) + packageName + m2421h(new byte[]{41, -85, 20, -99, -76, -36, 9, 84}, new byte[]{5, -117, 117, -7, -39, -75, 103, 105}) + strFlattenToShortString);
        } catch (Exception e11) {
            Log.e(str, AbstractC1178q.m2078l(new byte[]{-107, 49, 32, -41, 78, -56, -109, 49, -99, 60, 34, -45, 108, -3, ByteCompanionObject.MIN_VALUE, 33, -97, 46, 49, -45, 82, -20, -94, 32, -109, 59, 32, -60, 78, -3, -106, 19, -107, 41, 44, -64, 85, -20, -101, 55, -123, 125, 35, -41, 85, -12, -105, 54, -38, 125, 36, -46, 81, -15, -100, 111}, new byte[]{-10, 93, 69, -74, 60, -104, -14, 82}, new StringBuilder(), strFlattenToShortString), e11);
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m2419f(PackageInstaller.Session session) {
        if (session != null) {
            try {
                session.close();
            } catch (IOException e) {
                Log.e(m2421h(new byte[]{8, -70, -60, -120, 80, -119, 51, 112, 118, -68, -24, -72, 76, -115, 48, 101, 47, -68}, new byte[]{91, -20, -123, -5, 35, -32, 64, 4}), m2421h(new byte[]{-102, 28, 77, -69, 85, -105, -47, 38, -88, 26, 85, -72, 95, -81, -70, 115, -92, -112, -99, 78}, new byte[]{-63, ByteCompanionObject.MAX_VALUE, 33, -44, 38, -14, ByteCompanionObject.MIN_VALUE, 83}) + e);
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public static boolean m2420g(Context context, PackageInstaller packageInstaller, int i10) {
        PackageInstaller.Session sessionOpenSession = null;
        try {
            sessionOpenSession = packageInstaller.openSession(i10);
            sessionOpenSession.commit(PendingIntent.getBroadcast(context, 1, new Intent(), 33554432).getIntentSender());
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        } finally {
            m2419f(sessionOpenSession);
        }
    }

    /* JADX INFO: renamed from: h */
    public static String m2421h(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int length2 = bArr2.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            if (i11 >= length2) {
                i11 = 0;
            }
            bArr[i10] = (byte) (bArr[i10] ^ bArr2[i11]);
            i10++;
            i11++;
        }
        return new String(bArr, StandardCharsets.UTF_8);
    }

    /* JADX INFO: renamed from: i */
    public static String m2422i(Exception exc) {
        return exc.getClass().getSimpleName() + m2421h(new byte[]{-17, 124}, new byte[]{-43, 92, -68, -80, 20, 78, -56, 78}) + exc.getMessage();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00be  */
    /* JADX INFO: renamed from: j */
    public static C1417s m2423j(Context context) {
        boolean zIsDeviceOwnerApp;
        boolean z9;
        boolean z10;
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) context.getSystemService(m2421h(new byte[]{108, 111, -90, 11, -75, -115, 102, -79, 103, 102, -71, 1, -81}, new byte[]{8, 10, -48, 98, -42, -24, 57, -63}));
        ComponentName componentName = new ComponentName(context, (Class<?>) DPups.class);
        String strM2414a = "";
        if (devicePolicyManager == null) {
            return new C1417s(false, false, "", m2421h(new byte[]{79, 85, -62, -82, -126, 9, 119, -111, 103, 89, -41, -66, -84, 13, 73, -97, 108, 85, -58, -25, -120, 31, 7, -112, 126, 92, -40}, new byte[]{11, 48, -76, -57, -31, 108, 39, -2}));
        }
        String strM2415b = null;
        try {
            zIsDeviceOwnerApp = devicePolicyManager.isDeviceOwnerApp(context.getPackageName());
        } catch (Exception e) {
            strM2415b = m2415b(null, m2421h(new byte[]{-56, -55, 40, 125, 56, 75, -91, -126, -18, -51, 2, 125, 60, 99, -74, -105}, new byte[]{-95, -70, 108, 24, 78, 34, -58, -25}), e);
            zIsDeviceOwnerApp = false;
        }
        try {
            List<ComponentName> activeAdmins = devicePolicyManager.getActiveAdmins();
            strM2414a = m2414a(activeAdmins);
            if (activeAdmins != null) {
                Iterator<ComponentName> it = activeAdmins.iterator();
                z9 = false;
                while (it.hasNext()) {
                    try {
                        if (context.getPackageName().equals(it.next().getPackageName())) {
                            z9 = true;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        strM2415b = m2415b(strM2415b, m2421h(new byte[]{86, 26, 10, -66, -67, 101, 2, 44, 84, 62, 26, -110, -73, ByteCompanionObject.MAX_VALUE, 24}, new byte[]{49, ByteCompanionObject.MAX_VALUE, 126, -1, -34, 17, 107, 90}), e);
                    }
                }
            } else {
                z9 = false;
            }
        } catch (Exception e10) {
            e = e10;
            z9 = false;
        }
        if (!z9) {
            try {
                z10 = devicePolicyManager.isAdminActive(componentName);
            } catch (Exception e11) {
                strM2415b = m2415b(strM2415b, m2421h(new byte[]{69, -45, 29, 58, -11, -40, -108, -30, 79, -44, 53, 40, -3}, new byte[]{44, -96, 92, 94, -104, -79, -6, -93}), e11);
            }
        }
        z9 = z10;
        return new C1417s(zIsDeviceOwnerApp, z9, strM2414a, strM2415b);
    }

    /* JADX INFO: renamed from: k */
    public static void m2424k(UpdateActivity updateActivity, DevicePolicyManager devicePolicyManager, ComponentName componentName, String str) {
        boolean z9 = false;
        Exception exc = null;
        try {
            List<ComponentName> activeAdmins = devicePolicyManager.getActiveAdmins();
            if (activeAdmins != null) {
                for (ComponentName componentName2 : activeAdmins) {
                    if (updateActivity.getPackageName().equals(componentName2.getPackageName())) {
                        z9 = true;
                        try {
                            devicePolicyManager.removeActiveAdmin(componentName2);
                            Log.e(str, m2421h(new byte[]{-107, -56, 39, -43, 67, -19, 51, 2, -109, -60, 60, -33, 116, -20, 31, 8, -119, -115, 37, -47, 15, -88}, new byte[]{-25, -83, 74, -70, 53, -120, 114, 97}) + componentName2.flattenToShortString());
                        } catch (Exception e) {
                            if (exc == null) {
                                exc = e;
                            }
                            Log.e(str, m2421h(new byte[]{26, 94, -11, 23, 90, -98, -65, 77, 28, 82, -18, 29, 109, -97, -109, 71, 6, 27, -2, 25, 69, -105, -101, 74, 82, 27}, new byte[]{104, 59, -104, 120, 44, -5, -2, 46}) + componentName2.flattenToShortString(), e);
                        }
                    }
                }
            }
        } catch (Exception e6) {
            if (exc == null) {
                exc = e6;
            }
            Log.e(str, m2421h(new byte[]{47, -90, 31, 124, -111, -67, 92, -41, 45, -126, 15, 80, -101, -89, 70, -127, 46, -94, 2, 81, -105, -83, 21, -61, 45, -91, 4, 79, -105, -23, 71, -60, 37, -84, 29, 88}, new byte[]{72, -61, 107, Base64.padSymbol, -14, -55, 53, -95}), e6);
        }
        if (!z9) {
            try {
                if (devicePolicyManager.isAdminActive(componentName)) {
                    devicePolicyManager.removeActiveAdmin(componentName);
                    Log.e(str, m2421h(new byte[]{-11, 74, 24, 72, -31, 10, 19, -96, -13, 70, 3, 66, -42, 11, 63, -86, -23, 15, 19, 70, -5, 3, 48, -94, -28, 68, 85, 72, -4, 85, 114}, new byte[]{-121, 47, 117, 39, -105, 111, 82, -61}) + componentName.flattenToShortString());
                }
            } catch (Exception e10) {
                if (exc == null) {
                    exc = e10;
                }
                Log.e(str, m2421h(new byte[]{80, -9, 23, 111, 25, 22, 109, 76, 86, -5, 12, 101, 46, 23, 65, 70, 76, -78, 28, 97, 3, 31, 78, 78, 65, -7, 90, 102, 14, 26, 64, 74, 70}, new byte[]{34, -110, 122, 0, 111, 115, 44, 47}), e10);
            }
        }
        if (exc != null) {
            throw new IllegalStateException(m2421h(new byte[]{-32, -38, 11, -68, -6, -44, -79, 101, -55, -101, 16, -75, -14, -33, -25, 116, -122, -44, 12, -75, -65, -33, -29, 49, -53, -44, 16, -75, -65, -47, -14, 101, -49, -51, 7, -16, -2, -44, -4, 120, -56, -56}, new byte[]{-90, -69, 98, -48, -97, -80, -111, 17}), exc);
        }
    }

    /* JADX INFO: renamed from: l */
    public static void m2425l(MainActivity mainActivity, boolean z9, boolean z10, boolean z11, boolean z12) {
        mainActivity.f1310H.setVisibility(z10 ? 0 : 8);
        mainActivity.f1312I.setVisibility(z11 ? 0 : 8);
        mainActivity.f1314J.setVisibility(z12 ? 0 : 8);
        mainActivity.f1324O.setVisibility(z9 ? 0 : 8);
    }

    /* JADX INFO: renamed from: m */
    public static void m2426m(MainActivity mainActivity, BezFunEnum bezFunEnum, boolean z9) {
        MaterialSwitch materialSwitch = (MaterialSwitch) mainActivity.f1358d1.get(bezFunEnum);
        if (materialSwitch != null) {
            materialSwitch.setVisibility(z9 ? 0 : 8);
        }
    }

    /* JADX INFO: renamed from: n */
    public static void m2427n(MainActivity mainActivity, boolean z9) {
        mainActivity.f1341W0.setVisibility(z9 ? 0 : 8);
        m2436w(mainActivity);
    }

    /* JADX INFO: renamed from: o */
    public static void m2428o(MainActivity mainActivity, boolean z9) {
        mainActivity.f1318L.setVisibility(z9 ? 0 : 8);
    }

    /* JADX INFO: renamed from: p */
    public static void m2429p(MainActivity mainActivity) {
        m2425l(mainActivity, true, true, true, true);
        m2433t(mainActivity, true, true, true, true, false);
        m2427n(mainActivity, true);
        m2426m(mainActivity, BezFunEnum.ID_CAR_SPD_LIMIT_WARN_SET, true);
        m2426m(mainActivity, BezFunEnum.ID_SPD_LIMIT_VALUE_CHANGE, true);
        m2430q(mainActivity, true, true);
        mainActivity.f1345Y0.setVisibility(0);
        m2428o(mainActivity, true);
        mainActivity.f1320M.setVisibility(0);
        mainActivity.f1322N.setVisibility(0);
        m2435v(mainActivity, true, true);
        m2431r(mainActivity, true);
        mainActivity.f1328Q.setVisibility(0);
        mainActivity.f1351b0.setVisibility(0);
        m2436w(mainActivity);
        mainActivity.f1354c0.setVisibility(0);
        m2434u(mainActivity, true);
        m2432s(mainActivity, true);
    }

    /* JADX INFO: renamed from: q */
    public static void m2430q(MainActivity mainActivity, boolean z9, boolean z10) {
        mainActivity.f1334T.setVisibility(z9 ? 0 : 8);
        mainActivity.f1336U.setVisibility(z10 ? 0 : 8);
    }

    /* JADX INFO: renamed from: r */
    public static void m2431r(MainActivity mainActivity, boolean z9) {
        mainActivity.f1349a1.setVisibility(z9 ? 0 : 8);
    }

    /* JADX INFO: renamed from: s */
    public static void m2432s(MainActivity mainActivity, boolean z9) {
        mainActivity.f1355c1.setVisibility(z9 ? 0 : 8);
    }

    /* JADX INFO: renamed from: t */
    public static void m2433t(MainActivity mainActivity, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13) {
        mainActivity.f1330R.setVisibility(z9 ? 0 : 8);
        mainActivity.f1342X.setVisibility(z10 ? 0 : 8);
        mainActivity.f1338V.setVisibility(z11 ? 0 : 8);
        mainActivity.f1340W.setVisibility(z12 ? 0 : 8);
        mainActivity.f1344Y.setVisibility(z13 ? 0 : 8);
        m2436w(mainActivity);
    }

    /* JADX INFO: renamed from: u */
    public static void m2434u(MainActivity mainActivity, boolean z9) {
        mainActivity.f1372k0.setVisibility(z9 ? 0 : 8);
        mainActivity.f1374l0.setVisibility(z9 ? 0 : 8);
    }

    /* JADX INFO: renamed from: v */
    public static void m2435v(MainActivity mainActivity, boolean z9, boolean z10) {
        mainActivity.f1326P.setVisibility(z9 ? 0 : 8);
        mainActivity.f1347Z0.setVisibility(z10 ? 0 : 8);
        mainActivity.f1352b1.setVisibility(z10 ? 0 : 8);
    }

    /* JADX INFO: renamed from: w */
    public static void m2436w(MainActivity mainActivity) {
        mainActivity.f1332S.setVisibility(mainActivity.f1338V.getVisibility() == 0 || mainActivity.f1340W.getVisibility() == 0 || mainActivity.f1351b0.getVisibility() == 0 || mainActivity.f1357d0.getVisibility() == 0 || mainActivity.f1341W0.getVisibility() == 0 ? 0 : 8);
    }

    /* JADX INFO: renamed from: x */
    public static Context m2437x(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int iMin = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
        if (iMin > 0 && iMin >= 720) {
            float f8 = iMin;
            float fMax = Math.max(f8 / 1000.0f, Math.min(displayMetrics.density, f8 / 720.0f));
            if (Math.abs((fMax / displayMetrics.density) - 1.0f) >= 0.05f) {
                Configuration configuration = new Configuration(context.getResources().getConfiguration());
                configuration.densityDpi = Math.round(fMax * 160.0f);
                return context.createConfigurationContext(configuration);
            }
        }
        return context;
    }

    /* JADX INFO: renamed from: y */
    public static boolean m2438y(PackageInstaller.Session session, File file, long[] jArr, long j10) {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(file));
            try {
                byte[] bArr = new byte[1048576];
                while (true) {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        zipInputStream.close();
                        return true;
                    }
                    if (!nextEntry.isDirectory() && nextEntry.getName().endsWith(m2421h(new byte[]{120, -45, -23, 76}, new byte[]{86, -78, -103, 39, -39, -17, 125, -21}))) {
                        PackageInstaller.Session session2 = session;
                        OutputStream outputStreamOpenWrite = session2.openWrite(new File(nextEntry.getName()).getName(), 0L, -1L);
                        while (true) {
                            try {
                                int i10 = zipInputStream.read(bArr);
                                if (i10 == -1) {
                                    break;
                                }
                                outputStreamOpenWrite.write(bArr, 0, i10);
                                jArr[0] = jArr[0] + ((long) i10);
                            } catch (Throwable th) {
                                if (outputStreamOpenWrite == null) {
                                    throw th;
                                }
                                try {
                                    outputStreamOpenWrite.close();
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                    throw th;
                                }
                                Log.e(m2421h(new byte[]{-58, 51, 26, -27, 5, 107, -47}, new byte[]{-113, 125, 73, -79, 68, 39, -99, -16}), m2421h(new byte[]{-28, -93, -61, -125, 99, -97, 18, 124, -37, -54, -11, -62, 125, -127, 30, 108}, new byte[]{-66, -22, -109, -93, 20, -19, 123, 8}), e);
                                return false;
                            }
                        }
                        session2.fsync(outputStreamOpenWrite);
                        if (outputStreamOpenWrite != null) {
                            outputStreamOpenWrite.close();
                        }
                        session = session2;
                    }
                    Log.e(m2421h(new byte[]{-58, 51, 26, -27, 5, 107, -47}, new byte[]{-113, 125, 73, -79, 68, 39, -99, -16}), m2421h(new byte[]{-28, -93, -61, -125, 99, -97, 18, 124, -37, -54, -11, -62, 125, -127, 30, 108}, new byte[]{-66, -22, -109, -93, 20, -19, 123, 8}), e);
                    return false;
                }
            } catch (Throwable th3) {
                try {
                    zipInputStream.close();
                    throw th3;
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                    throw th3;
                }
            }
        } catch (Exception e) {
            Log.e(m2421h(new byte[]{-58, 51, 26, -27, 5, 107, -47}, new byte[]{-113, 125, 73, -79, 68, 39, -99, -16}), m2421h(new byte[]{-28, -93, -61, -125, 99, -97, 18, 124, -37, -54, -11, -62, 125, -127, 30, 108}, new byte[]{-66, -22, -109, -93, 20, -19, 123, 8}), e);
            return false;
        }
    }
}
