package p164p0;

import ai.onnxruntime.AbstractC0074a;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.example.navistart.DPups;
import com.example.navistart.MainActivity;
import com.example.navistart.ModernMainActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p132m0.C2335o2;
import p157o7.C2652i4;

/* JADX INFO: renamed from: p0.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2952e {

    /* JADX INFO: renamed from: c */
    public static final String f8202c = AbstractC1387m.m2421h(new byte[]{68, -57, -100, -17, -93, -65, 75, 60, 66, -21, -111, -12, -104, -69, 100, 41, 95, -43, -101, -15, -103, -70}, new byte[]{49, -76, -7, -99, -4, -34, 59, 76});

    /* JADX INFO: renamed from: d */
    public static final String f8203d = AbstractC1387m.m2421h(new byte[]{118, -67, -84, 27, 80, -34, -75, -30, 112, -111, -95, 0, 107, -38, -102, -30, 98, -83, -94, 8, 104, -38, -74}, new byte[]{3, -50, -55, 105, 15, -65, -59, -110});

    /* JADX INFO: renamed from: e */
    public static final String f8204e = AbstractC1387m.m2421h(new byte[]{87, 126, -76, -108, -120, 8, 112, -49, 81, 82, -71, -113, -77, 12, 95, -45, 67, 120, -65, -123, -65, 12, 114, -52}, new byte[]{34, 13, -47, -26, -41, 105, 0, -65});

    /* JADX INFO: renamed from: f */
    public static final String f8205f = AbstractC1387m.m2421h(new byte[]{54, -34, -39, -7, 72, 84, -13, 10, 48, -14, -44, -30, 115, 80, -36, 0, 44, -61, -39, -44, 111}, new byte[]{67, -83, -68, -117, 23, 53, -125, 122});

    /* JADX INFO: renamed from: g */
    public static final String f8206g = AbstractC1387m.m2421h(new byte[]{94, 44, -55, 16, 38, 72, 101, -61, 88, 0, -60, 11, 29, 76, 74, -55, 68, 49, -55, Base64.padSymbol, 0}, new byte[]{43, 95, -84, 98, 121, 41, 21, -77});

    /* JADX INFO: renamed from: h */
    public static final String f8207h = AbstractC1387m.m2421h(new byte[]{-121, -46, 73, -4, 108, 8, -75, -40, -127, -2, 68, -25, 87, 12, -102, -46, -99, -49, 73, -47, 71, 27, -92, -58, -127, -47, 77, -4, 86, 7, -79}, new byte[]{-14, -95, 44, -114, 51, 105, -59, -88});

    /* JADX INFO: renamed from: a */
    public final Context f8208a;

    /* JADX INFO: renamed from: b */
    public final C2949b f8209b;

    public C2952e(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f8208a = applicationContext;
        this.f8209b = new C2949b(applicationContext);
    }

    /* JADX INFO: renamed from: e */
    public static boolean m4727e() {
        return C1652b.m2745o().loadBoolean(f8202c, false);
    }

    /* JADX INFO: renamed from: h */
    public static void m4728h(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ComponentName componentName = (ComponentName) obj;
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(componentName.flattenToString());
        }
        C1652b.m2745o().saveString(f8204e, sb.toString());
    }

    /* JADX INFO: renamed from: i */
    public static void m4729i(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            String str = (String) obj;
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(str);
        }
        C1652b.m2745o().saveString(f8203d, sb.toString());
    }

    /* JADX INFO: renamed from: a */
    public final ArrayList m4730a() {
        Context context = this.f8208a;
        PackageManager packageManager = context.getPackageManager();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(0)) {
            if (applicationInfo != null && applicationInfo.packageName != null && !context.getPackageName().equals(applicationInfo.packageName)) {
                int i10 = applicationInfo.flags;
                if ((i10 & 1) == 0 && (i10 & 128) == 0) {
                    linkedHashSet.add(applicationInfo.packageName);
                }
            }
        }
        return new ArrayList(linkedHashSet);
    }

    /* JADX INFO: renamed from: b */
    public final DevicePolicyManager m4731b() {
        return (DevicePolicyManager) this.f8208a.getSystemService(AbstractC1387m.m2421h(new byte[]{-47, 65, ByteCompanionObject.MIN_VALUE, 21, 29, 59, 58, -4, -38, 72, -97, 31, 7}, new byte[]{-75, 36, -10, 124, 126, 94, 101, -116}));
    }

    /* JADX INFO: renamed from: c */
    public final boolean m4732c() {
        DevicePolicyManager devicePolicyManagerM4731b = m4731b();
        if (devicePolicyManagerM4731b == null) {
            return false;
        }
        try {
            return devicePolicyManagerM4731b.isDeviceOwnerApp(this.f8208a.getPackageName());
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: d */
    public final C2652i4 m4733d(C2335o2 c2335o2) {
        boolean zM4732c = m4732c();
        ArrayList arrayListM4730a = zM4732c ? m4730a() : new ArrayList();
        ArrayList arrayListM4723c = this.f8209b.m4723c(true);
        C2950c c2950c = new C2950c(c2335o2, arrayListM4723c.size() + arrayListM4730a.size());
        C2652i4 c2652i4M4737k = zM4732c ? m4737k(arrayListM4730a, true, c2950c) : new C2652i4(true, 0, 0, null);
        C2652i4 c2652i4M4736j = m4736j(arrayListM4723c, false, c2950c);
        C2652i4 c2652i4M4167a = C2652i4.m4167a(c2652i4M4737k, c2652i4M4736j);
        if (c2652i4M4736j.f7527b > 0 || arrayListM4723c.isEmpty()) {
            m4729i(arrayListM4730a);
            m4728h(arrayListM4723c);
            C1652b.m2745o().saveBoolean(f8202c, true);
            C1652b.m2745o().saveBoolean(f8207h, true);
        }
        c2950c.f8200c = c2950c.f8199b;
        c2950c.m4725b();
        return c2652i4M4167a;
    }

    /* JADX INFO: renamed from: f */
    public final C2652i4 m4734f(InterfaceC2951d interfaceC2951d) {
        synchronized (C2949b.f8187c) {
            try {
                if (C2949b.m4719f(this.f8208a)) {
                    return new C2652i4(false, 0, 1, AbstractC1387m.m2421h(new byte[]{-83, -8, 25, 116, -108, 63, 30, 123, -63, -21, 9, 105, -110, 35, 91, 96, -113, -71, 28, 104, -104, 48, 9, 108, -110, -22}, new byte[]{-31, -103, 108, 26, -9, 87, 123, 9}));
                }
                return m4735g(interfaceC2951d);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public final C2652i4 m4735g(InterfaceC2951d interfaceC2951d) {
        String strLoadString = C1652b.m2745o().loadString(f8203d, "");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Context context = this.f8208a;
        if (strLoadString != null && !strLoadString.trim().isEmpty()) {
            for (String str : strLoadString.split("\n")) {
                String strTrim = str.trim();
                if (!strTrim.isEmpty() && !context.getPackageName().equals(strTrim)) {
                    linkedHashSet.add(strTrim);
                }
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashSet);
        String strLoadString2 = C1652b.m2745o().loadString(f8204e, "");
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
        C2949b c2949b = this.f8209b;
        c2949b.getClass();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = c2949b.f8197b.iterator();
        while (it.hasNext()) {
            arrayList3.add(((C2948a) it.next()).f8183b);
        }
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(new ComponentName(context, (Class<?>) MainActivity.class));
        arrayList4.add(new ComponentName(context, (Class<?>) ModernMainActivity.class));
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            ComponentName componentName = (ComponentName) obj;
            if (!arrayList3.contains(componentName) && !arrayList4.contains(componentName)) {
                arrayList4.add(componentName);
            }
        }
        C2950c c2950c = new C2950c(interfaceC2951d, arrayList3.size() + arrayList4.size() + arrayList.size());
        C2652i4 c2652i4 = (!m4732c() || arrayList.isEmpty()) ? new C2652i4(true, 0, 0, null) : m4737k(arrayList, false, c2950c);
        C2652i4 c2652i4M4167a = C2652i4.m4167a(C2652i4.m4167a(m4736j(arrayList4, true, c2950c), m4736j(c2949b.m4723c(true), true, c2950c)), m4736j(c2949b.m4723c(false), false, c2950c));
        C2652i4 c2652i4M4167a2 = C2652i4.m4167a(c2652i4, c2652i4M4167a);
        if (c2652i4M4167a.f7527b > 0 || c2652i4M4167a.f7528c == 0) {
            m4729i(new ArrayList());
            m4728h(new ArrayList());
            C1652b.m2745o().saveBoolean(f8202c, false);
            C1652b.m2745o().saveBoolean(f8207h, false);
        }
        c2950c.f8200c = c2950c.f8199b;
        c2950c.m4725b();
        return c2652i4M4167a2;
    }

    /* JADX INFO: renamed from: j */
    public final C2652i4 m4736j(ArrayList arrayList, boolean z9, C2950c c2950c) {
        PackageManager packageManager = this.f8208a.getPackageManager();
        int i10 = z9 ? 1 : 2;
        int size = arrayList.size();
        String str = null;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i13 < size) {
            Object obj = arrayList.get(i13);
            i13++;
            try {
                packageManager.setComponentEnabledSetting((ComponentName) obj, i10, 1);
                i12++;
            } catch (Exception e) {
                i11++;
                if (str == null) {
                    str = e.getClass().getSimpleName() + AbstractC1387m.m2421h(new byte[]{-117, 2}, new byte[]{-79, 34, -113, -1, 38, -62, -101, -48}) + e.getMessage();
                }
            }
            c2950c.f8200c = Math.min(c2950c.f8199b, c2950c.f8200c + 1);
            c2950c.m4725b();
        }
        return new C2652i4(i11 == 0, i12, i11, str);
    }

    /* JADX INFO: renamed from: k */
    public final C2652i4 m4737k(ArrayList arrayList, boolean z9, C2950c c2950c) {
        Boolean boolValueOf;
        DevicePolicyManager devicePolicyManagerM4731b = m4731b();
        ComponentName componentName = new ComponentName(this.f8208a, (Class<?>) DPups.class);
        boolean z10 = false;
        if (devicePolicyManagerM4731b == null) {
            return new C2652i4(arrayList.isEmpty(), 0, arrayList.size(), AbstractC1387m.m2421h(new byte[]{-68, 21, 62, -71, -78, 121, 39, 104, -108, 25, 43, -87, -100, 125, 25, 102, -97, 21, 58, -16, -72, 111, 87, 105, -115, 28, 36}, new byte[]{-8, 112, 72, -48, -47, 28, 119, 7}));
        }
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        String string = null;
        while (i10 < size) {
            int i13 = i10 + 1;
            String str = (String) arrayList.get(i10);
            try {
                boolean applicationHidden = devicePolicyManagerM4731b.setApplicationHidden(componentName, str, z9);
                try {
                    boolValueOf = Boolean.valueOf(devicePolicyManagerM4731b.isApplicationHidden(componentName, str));
                } catch (Exception unused) {
                    boolValueOf = null;
                }
                if (boolValueOf != null) {
                    applicationHidden = boolValueOf.booleanValue() == z9 ? true : z10;
                }
                if (applicationHidden) {
                    i12++;
                } else {
                    i11++;
                    if (string == null) {
                        string = str + AbstractC1387m.m2421h(new byte[]{12, -20, -8, -92, 109, -2, -37, 34, 70, -96, -1, -82, 125}, new byte[]{54, -52, -106, -53, 25, -34, -70, 82});
                    }
                }
            } catch (Exception e) {
                i11++;
                if (string == null) {
                    StringBuilder sbM170u = AbstractC0074a.m170u(str);
                    sbM170u.append(AbstractC1387m.m2421h(new byte[]{110, 107}, new byte[]{84, 75, -107, 44, -113, -71, 0, 115}));
                    sbM170u.append(e.getClass().getSimpleName());
                    sbM170u.append(AbstractC1387m.m2421h(new byte[]{-125, 85}, new byte[]{-71, 117, -40, 26, -52, 17, 84, 98}));
                    sbM170u.append(e.getMessage());
                    string = sbM170u.toString();
                }
            }
            c2950c.f8200c = Math.min(c2950c.f8199b, c2950c.f8200c + 1);
            c2950c.m4725b();
            i10 = i13;
            z10 = false;
        }
        return new C2652i4(i11 == 0, i12, i11, string);
    }
}
