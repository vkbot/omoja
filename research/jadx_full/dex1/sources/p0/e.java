package p0;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.example.navistart.DPups;
import com.example.navistart.MainActivity;
import com.example.navistart.ModernMainActivity;
import e0.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.o2;
import o7.i4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e {
    public static final String c = m.h(new byte[]{68, -57, -100, -17, -93, -65, 75, 60, 66, -21, -111, -12, -104, -69, 100, 41, 95, -43, -101, -15, -103, -70}, new byte[]{49, -76, -7, -99, -4, -34, 59, 76});
    public static final String d = m.h(new byte[]{118, -67, -84, 27, 80, -34, -75, -30, 112, -111, -95, 0, 107, -38, -102, -30, 98, -83, -94, 8, 104, -38, -74}, new byte[]{3, -50, -55, 105, 15, -65, -59, -110});
    public static final String e = m.h(new byte[]{87, 126, -76, -108, -120, 8, 112, -49, 81, 82, -71, -113, -77, 12, 95, -45, 67, 120, -65, -123, -65, 12, 114, -52}, new byte[]{34, 13, -47, -26, -41, 105, 0, -65});

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f4553f = m.h(new byte[]{54, -34, -39, -7, 72, 84, -13, 10, 48, -14, -44, -30, 115, 80, -36, 0, 44, -61, -39, -44, 111}, new byte[]{67, -83, -68, -117, 23, 53, -125, 122});

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f4554g = m.h(new byte[]{94, 44, -55, 16, 38, 72, 101, -61, 88, 0, -60, 11, 29, 76, 74, -55, 68, 49, -55, Base64.padSymbol, 0}, new byte[]{43, 95, -84, 98, 121, 41, 21, -77});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f4555h = m.h(new byte[]{-121, -46, 73, -4, 108, 8, -75, -40, -127, -2, 68, -25, 87, 12, -102, -46, -99, -49, 73, -47, 71, 27, -92, -58, -127, -47, 77, -4, 86, 7, -79}, new byte[]{-14, -95, 44, -114, 51, 105, -59, -88});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f4557b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f4556a = applicationContext;
        this.f4557b = new b(applicationContext);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean e() {
        return h0.b.o().loadBoolean(c, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void h(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            ComponentName componentName = (ComponentName) obj;
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(componentName.flattenToString());
        }
        h0.b.o().saveString(e, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void i(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            String str = (String) obj;
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(str);
        }
        h0.b.o().saveString(d, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList a() {
        Context context = this.f4556a;
        PackageManager packageManager = context.getPackageManager();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(0)) {
            if (applicationInfo != null && applicationInfo.packageName != null && !context.getPackageName().equals(applicationInfo.packageName)) {
                int i9 = applicationInfo.flags;
                if ((i9 & 1) == 0 && (i9 & 128) == 0) {
                    linkedHashSet.add(applicationInfo.packageName);
                }
            }
        }
        return new ArrayList(linkedHashSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final DevicePolicyManager b() {
        return (DevicePolicyManager) this.f4556a.getSystemService(m.h(new byte[]{-47, 65, ByteCompanionObject.MIN_VALUE, 21, 29, 59, 58, -4, -38, 72, -97, 31, 7}, new byte[]{-75, 36, -10, 124, 126, 94, 101, -116}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c() {
        DevicePolicyManager devicePolicyManagerB = b();
        if (devicePolicyManagerB == null) {
            return false;
        }
        try {
            return devicePolicyManagerB.isDeviceOwnerApp(this.f4556a.getPackageName());
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final i4 d(o2 o2Var) {
        boolean zC = c();
        ArrayList arrayListA = zC ? a() : new ArrayList();
        ArrayList arrayListC = this.f4557b.c(true);
        c cVar = new c(o2Var, arrayListC.size() + arrayListA.size());
        i4 i4VarK = zC ? k(arrayListA, true, cVar) : new i4(true, 0, 0, null);
        i4 i4VarJ = j(arrayListC, false, cVar);
        i4 i4VarA = i4.a(i4VarK, i4VarJ);
        if (i4VarJ.f4283b > 0 || arrayListC.isEmpty()) {
            i(arrayListA);
            h(arrayListC);
            h0.b.o().saveBoolean(c, true);
            h0.b.o().saveBoolean(f4555h, true);
        }
        cVar.c = cVar.f4552b;
        cVar.b();
        return i4VarA;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final i4 f(d dVar) {
        synchronized (b.c) {
            try {
                if (b.f(this.f4556a)) {
                    return new i4(false, 0, 1, m.h(new byte[]{-83, -8, 25, 116, -108, 63, 30, 123, -63, -21, 9, 105, -110, 35, 91, 96, -113, -71, 28, 104, -104, 48, 9, 108, -110, -22}, new byte[]{-31, -103, 108, 26, -9, 87, 123, 9}));
                }
                return g(dVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final i4 g(d dVar) {
        String strLoadString = h0.b.o().loadString(d, "");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Context context = this.f4556a;
        if (strLoadString != null && !strLoadString.trim().isEmpty()) {
            for (String str : strLoadString.split("\n")) {
                String strTrim = str.trim();
                if (!strTrim.isEmpty() && !context.getPackageName().equals(strTrim)) {
                    linkedHashSet.add(strTrim);
                }
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashSet);
        String strLoadString2 = h0.b.o().loadString(e, "");
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        if (strLoadString2 != null && !strLoadString2.trim().isEmpty()) {
            for (String str2 : strLoadString2.split("\n")) {
                ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str2.trim());
                if (componentNameUnflattenFromString != null && context.getPackageName().equals(componentNameUnflattenFromString.getPackageName())) {
                    linkedHashSet2.add(componentNameUnflattenFromString);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(linkedHashSet2);
        b bVar = this.f4557b;
        bVar.getClass();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = bVar.f4550b.iterator();
        while (it.hasNext()) {
            arrayList3.add(((a) it.next()).f4542b);
        }
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(new ComponentName(context, (Class<?>) MainActivity.class));
        arrayList4.add(new ComponentName(context, (Class<?>) ModernMainActivity.class));
        int size = arrayList2.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList2.get(i9);
            i9++;
            ComponentName componentName = (ComponentName) obj;
            if (!arrayList3.contains(componentName) && !arrayList4.contains(componentName)) {
                arrayList4.add(componentName);
            }
        }
        c cVar = new c(dVar, arrayList3.size() + arrayList4.size() + arrayList.size());
        i4 i4Var = (!c() || arrayList.isEmpty()) ? new i4(true, 0, 0, null) : k(arrayList, false, cVar);
        i4 i4VarA = i4.a(i4.a(j(arrayList4, true, cVar), j(bVar.c(true), true, cVar)), j(bVar.c(false), false, cVar));
        i4 i4VarA2 = i4.a(i4Var, i4VarA);
        if (i4VarA.f4283b > 0 || i4VarA.c == 0) {
            i(new ArrayList());
            h(new ArrayList());
            h0.b.o().saveBoolean(c, false);
            h0.b.o().saveBoolean(f4555h, false);
        }
        cVar.c = cVar.f4552b;
        cVar.b();
        return i4VarA2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final i4 j(ArrayList arrayList, boolean z8, c cVar) {
        PackageManager packageManager = this.f4556a.getPackageManager();
        int i9 = z8 ? 1 : 2;
        int size = arrayList.size();
        String str = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i12 < size) {
            Object obj = arrayList.get(i12);
            i12++;
            try {
                packageManager.setComponentEnabledSetting((ComponentName) obj, i9, 1);
                i11++;
            } catch (Exception e6) {
                i10++;
                if (str == null) {
                    str = e6.getClass().getSimpleName() + m.h(new byte[]{-117, 2}, new byte[]{-79, 34, -113, -1, 38, -62, -101, -48}) + e6.getMessage();
                }
            }
            cVar.c = Math.min(cVar.f4552b, cVar.c + 1);
            cVar.b();
        }
        return new i4(i10 == 0, i11, i10, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final i4 k(ArrayList arrayList, boolean z8, c cVar) {
        Boolean boolValueOf;
        DevicePolicyManager devicePolicyManagerB = b();
        ComponentName componentName = new ComponentName(this.f4556a, (Class<?>) DPups.class);
        boolean z9 = false;
        if (devicePolicyManagerB == null) {
            return new i4(arrayList.isEmpty(), 0, arrayList.size(), m.h(new byte[]{-68, 21, 62, -71, -78, 121, 39, 104, -108, 25, 43, -87, -100, 125, 25, 102, -97, 21, 58, -16, -72, 111, 87, 105, -115, 28, 36}, new byte[]{-8, 112, 72, -48, -47, 28, 119, 7}));
        }
        int size = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        String string = null;
        while (i9 < size) {
            int i12 = i9 + 1;
            String str = (String) arrayList.get(i9);
            try {
                boolean applicationHidden = devicePolicyManagerB.setApplicationHidden(componentName, str, z8);
                try {
                    boolValueOf = Boolean.valueOf(devicePolicyManagerB.isApplicationHidden(componentName, str));
                } catch (Exception unused) {
                    boolValueOf = null;
                }
                if (boolValueOf != null) {
                    applicationHidden = boolValueOf.booleanValue() == z8 ? true : z9;
                }
                if (applicationHidden) {
                    i11++;
                } else {
                    i10++;
                    if (string == null) {
                        string = str + m.h(new byte[]{12, -20, -8, -92, 109, -2, -37, 34, 70, -96, -1, -82, 125}, new byte[]{54, -52, -106, -53, 25, -34, -70, 82});
                    }
                }
            } catch (Exception e6) {
                i10++;
                if (string == null) {
                    StringBuilder sbU = ai.onnxruntime.a.u(str);
                    sbU.append(m.h(new byte[]{110, 107}, new byte[]{84, 75, -107, 44, -113, -71, 0, 115}));
                    sbU.append(e6.getClass().getSimpleName());
                    sbU.append(m.h(new byte[]{-125, 85}, new byte[]{-71, 117, -40, 26, -52, 17, 84, 98}));
                    sbU.append(e6.getMessage());
                    string = sbU.toString();
                }
            }
            cVar.c = Math.min(cVar.f4552b, cVar.c + 1);
            cVar.b();
            i9 = i12;
            z9 = false;
        }
        return new i4(i10 == 0, i11, i10, string);
    }
}
