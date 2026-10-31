package p098j0;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.view.Display;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.example.navistart.cores.Saa;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONArray;
import org.json.JSONObject;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1343d0;
import p047e0.C1344d1;
import p047e0.C1440x1;
import p047e0.RunnableC1375j2;
import p047e0.ScheduledExecutorServiceC1430v;
import p078h0.C1652b;
import p094i7.C1762k;
import p099j1.C1940t;
import p142n0.EnumC2469d;
import p206u0.C3277a;
import p225w0.C3481o0;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: j0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1917c {

    /* JADX INFO: renamed from: c */
    public static final String f5048c = AbstractC1387m.m2421h(new byte[]{84, 0, -7, -116, -17, -108, -84, -4, 119, 3, -63, -92, -55, -65, -85, -2, 102, 55, -40, -96, -43, -65, -78, -33, 102, 38, -48, -125, -44, -71, -120, -6, 98, 34, -12, -75, -53}, new byte[]{7, 80, -75, -59, -69, -53, -19, -116});

    /* JADX INFO: renamed from: d */
    public static final String f5049d = AbstractC1387m.m2421h(new byte[]{-124, 95, 17, -61, -43, -83, 35, -19, -122, 89, 14, -63, -60, -101, 45, -32, -83, 64, 16, -46, -47, -127, 39}, new byte[]{-14, 48, 120, -96, -80, -14, 66, -114});

    /* JADX INFO: renamed from: e */
    public static final String f5050e = AbstractC1387m.m2421h(new byte[]{-127, -31, -92, -47, -90, -7, -103, 122, -102, -29, -84, -36, -89, -43}, new byte[]{-9, -114, -51, -78, -61, -90, -6, 21});

    /* JADX INFO: renamed from: a */
    public final Context f5051a;

    /* JADX INFO: renamed from: b */
    public final C1343d0 f5052b;

    public C1917c(Context context) {
        AbstractC1434w.m2481b(1000L, AbstractC1387m.m2421h(new byte[]{-78, -4, 76, 80, 71, -55, 9, 121, -102, -20, 121, 84, 71, -55, 25, 116}, new byte[]{-1, -123, 15, 49, 53, -101, 108, 26}));
        this.f5051a = context;
        this.f5052b = new C1343d0(context);
    }

    /* JADX INFO: renamed from: b */
    public static Boolean m2984b() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (!AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.FALSE;
        }
        C1652b.m2734a();
        return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{26}, new byte[]{42, -36, 63, 40, 126, 46, -121, -120}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
    }

    /* JADX INFO: renamed from: c */
    public static int m2985c(C1919e c1919e, ArrayList arrayList) {
        if (c1919e != null) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                C1919e c1919e2 = (C1919e) arrayList.get(i10);
                EnumC1918d enumC1918d = c1919e2.f5058a;
                if (enumC1918d == c1919e.f5058a && ((enumC1918d == EnumC1918d.f5053b && c1919e2.f5059b == c1919e.f5059b) || ((enumC1918d == EnumC1918d.f5054c && c1919e2.f5060c.equals(c1919e.f5060c)) || ((c1919e2.f5058a == EnumC1918d.f5055d && Objects.equals(c1919e2.f5060c, c1919e.f5060c) && Objects.equals(c1919e2.f5061d, c1919e.f5061d) && c1919e2.f5064g == c1919e.f5064g && c1919e2.f5065h == c1919e.f5065h) || (c1919e2.f5058a == EnumC1918d.f5056e && Objects.equals(c1919e2.f5062e, c1919e.f5062e)))))) {
                    return i10;
                }
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: f */
    public static String m2986f() {
        return C1652b.m2745o().loadString(f5049d, "");
    }

    /* JADX INFO: renamed from: l */
    public static void m2987l(String str, ArrayList arrayList) {
        JSONArray jSONArray = new JSONArray();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C3481o0 c3481o0 = (C3481o0) obj;
            c3481o0.getClass();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{23, -26, -10, 106, 60, -118}, new byte[]{103, -114, -124, 11, 79, -17, 82, -28}), c3481o0.f10178a);
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{74, 94, -106, 21, 81, -30, 33}, new byte[]{47, 48, -9, 119, Base64.padSymbol, -121, 69, 82}), c3481o0.f10180c);
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{-89, 40, 104, -35, -31, 84, -101, -67, -90}, new byte[]{-54, 73, 28, -66, -119, 18, -18, -47}), c3481o0.f10181d);
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{76, 54, -62, 28, -62, 14}, new byte[]{45, 85, -74, 117, -83, 96, 89, -71}), AbstractC1920f.m3009g(c3481o0.f10179b));
            } catch (Exception e) {
                e.printStackTrace();
            }
            jSONArray.put(jSONObject);
        }
        C1652b.m2745o().saveString(str, jSONArray.toString());
    }

    /* JADX INFO: renamed from: a */
    public final void m2988a(String str) {
        ArrayList arrayListM2993i = m2993i(str);
        ScheduledExecutorServiceC1430v scheduledExecutorServiceC1430vM2481b = AbstractC1434w.m2481b(C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{69, 66, 45, -79, 111, -72, -106, -63, 90, 88, 49, -117, 81, -69, -125, -22, 67, 94, 45, -119, 125, -105, -94, -37, 123, 118, 26}, new byte[]{55, 55, 67, -18, 14, -56, -26, -98}), 1) * 1000, AbstractC1387m.m2421h(new byte[]{55, -5, 118, -80, 74, -114, -105, 120, 31, -21, 67, -76, 74, -114, -121, 117}, new byte[]{122, -126, 53, -47, 56, -36, -14, 27}));
        int size = arrayListM2993i.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM2993i.get(i10);
            i10++;
            C1919e c1919e = ((C3481o0) obj).f10179b;
            if (AbstractC1920f.m3006d(c1919e) && m2984b().booleanValue()) {
                scheduledExecutorServiceC1430vM2481b.execute(new RunnableC1375j2(10, this, c1919e));
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public final C1919e m2989d(String str) {
        C3481o0 c3481o0;
        C1919e c1919e;
        ArrayList arrayListM2993i = m2993i(f5050e);
        String lowerCase = str.trim().toLowerCase();
        int size = arrayListM2993i.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                c3481o0 = null;
                break;
            }
            Object obj = arrayListM2993i.get(i10);
            i10++;
            c3481o0 = (C3481o0) obj;
            if (c3481o0.f10180c) {
                String lowerCase2 = c3481o0.f10178a.trim().toLowerCase();
                if (c3481o0.f10181d) {
                    if (lowerCase.contains(lowerCase2)) {
                        break;
                    }
                } else if (lowerCase.contains(lowerCase2)) {
                    break;
                }
            }
        }
        return (c3481o0 == null || (c1919e = c3481o0.f10179b) == null) ? C1919e.m3000c(EnumC2469d.f6756e, this.f5051a) : c1919e;
    }

    /* JADX INFO: renamed from: e */
    public final ArrayList m2990e() {
        Context context;
        ArrayList arrayList = new ArrayList();
        EnumC2469d[] enumC2469dArr = (EnumC2469d[]) ((Enum[]) Arrays.stream((Enum[]) EnumC2469d.class.getEnumConstants()).filter(new C1762k(1)).toArray(new C1915a(0)));
        int length = enumC2469dArr.length;
        int i10 = 0;
        while (true) {
            context = this.f5051a;
            if (i10 >= length) {
                break;
            }
            arrayList.add(C1919e.m3000c(enumC2469dArr[i10], context));
            i10++;
        }
        arrayList.addAll(m2991g());
        arrayList.addAll(m2992h());
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{54, -32, -58, 91, ByteCompanionObject.MAX_VALUE, 0, 115, -77, 62, -32, -42, 76, 126, 29, 57, -4, 52, -6, -53, 70, 126, 71, 90, -36, 30, -64}, new byte[]{87, -114, -94, 41, 16, 105, 23, -99}), (Uri) null);
        intent.addCategory(AbstractC1387m.m2421h(new byte[]{68, 95, 70, -18, -55, -98, 59, -55, 76, 95, 86, -7, -56, -125, 113, -124, 68, 69, 71, -5, -55, -123, 38, -55, 105, 112, 119, -46, -27, -65, 26, -75}, new byte[]{37, 49, 34, -100, -90, -9, 95, -25}));
        Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 0).iterator();
        while (it.hasNext()) {
            arrayList.add(C1919e.m2999b(it.next(), packageManager));
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: g */
    public final ArrayList m2991g() {
        ArrayList arrayList = new ArrayList();
        try {
            C1652b.m2734a();
            for (C1940t c1940t : C1652b.m2738g().mo3019e()) {
                C1919e c1919eM3001d = C1919e.m3001d(c1940t, this.f5051a);
                if (c1919eM3001d != null) {
                    arrayList.add(c1919eM3001d);
                }
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return arrayList;
        }
    }

    /* JADX INFO: renamed from: h */
    public final ArrayList m2992h() {
        ArrayList arrayList = new ArrayList();
        String strLoadString = C1652b.m2745o().loadString(f5048c, "");
        if (!strLoadString.isEmpty()) {
            for (String str : strLoadString.split(AbstractC1387m.m2421h(new byte[]{6}, new byte[]{Base64.padSymbol, -97, -94, 91, 20, 119, 53, -56}))) {
                C1919e c1919eM3005c = AbstractC1920f.m3005c(this.f5051a, str);
                if (c1919eM3005c.f5058a == EnumC1918d.f5055d) {
                    arrayList.add(c1919eM3005c);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: i */
    public final ArrayList m2993i(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(C1652b.m2745o().loadString(str, AbstractC1387m.m2421h(new byte[]{-127, 85}, new byte[]{-38, 8, -58, 58, 34, -37, 76, 17})));
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                arrayList.add(C3481o0.m5500a(jSONArray.getJSONObject(i10), this.f5051a));
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return arrayList;
        }
    }

    /* JADX INFO: renamed from: j */
    public final void m2994j(C1919e c1919e, Integer num) {
        int iIntValue;
        if (c1919e == null || c1919e.f5058a == null || !m2984b().booleanValue()) {
            return;
        }
        if (c1919e.f5058a.equals(EnumC1918d.f5053b)) {
            EnumC2469d enumC2469d = c1919e.f5059b;
            if (enumC2469d != null) {
                int i10 = enumC2469d.f6802d;
                if (enumC2469d != EnumC2469d.f6756e) {
                    C1343d0 c1343d0 = this.f5052b;
                    if (num != null) {
                        c1343d0.m2392g(i10, num.intValue());
                        return;
                    }
                    c1343d0.getClass();
                    C1652b.m2734a();
                    c1343d0.m2392g(i10, C1652b.m2744n().getGuDisplayID());
                    return;
                }
                return;
            }
            return;
        }
        boolean zEquals = c1919e.f5058a.equals(EnumC1918d.f5054c);
        Context context = this.f5051a;
        if (zEquals) {
            String str = c1919e.f5060c;
            if (num == null) {
                C1652b.m2734a();
                iIntValue = C1652b.m2744n().getGuDisplayID();
            } else {
                iIntValue = num.intValue();
            }
            try {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
                if (launchIntentForPackage != null) {
                    Display[] displays = ((DisplayManager) context.getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{56, 102, 25, 33, -84, -39, -85}, new byte[]{92, 15, 106, 81, -64, -72, -46, ByteCompanionObject.MAX_VALUE}))).getDisplays();
                    if (iIntValue < 0 || displays.length <= iIntValue) {
                        return;
                    }
                    ActivityOptions launchDisplayId = Build.VERSION.SDK_INT >= 26 ? ActivityOptions.makeBasic().setLaunchDisplayId(displays[iIntValue].getDisplayId()) : null;
                    launchIntentForPackage.addFlags(268435456);
                    Objects.requireNonNull(launchDisplayId, AbstractC1387m.m2421h(new byte[]{58, 3, 39, 57, -6, -109, 66, -101, 22, 18, Base64.padSymbol, 62, -6, -119, 17, -39, 16, 83, Base64.padSymbol, 37, -7, -111}, new byte[]{117, 115, 83, 80, -107, -3, 49, -69}));
                    AbstractC3656k.m5875u(context, launchIntentForPackage, launchDisplayId.toBundle());
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (c1919e.f5058a.equals(EnumC1918d.f5055d)) {
            String str2 = c1919e.f5060c;
            String str3 = c1919e.f5061d;
            int i11 = c1919e.f5064g;
            int i12 = c1919e.f5065h;
            if (str2 == null || str3 == null) {
                return;
            }
            C1652b.m2734a().m2755j().ssa(new Saa(str2, str3, i11 != 2 ? 1 : 2, i12));
            return;
        }
        if (c1919e.f5058a.equals(EnumC1918d.f5056e)) {
            C1940t c1940tMo3040g = c1919e.f5063f;
            if (c1940tMo3040g == null && c1919e.f5062e != null) {
                C1652b.m2734a();
                c1940tMo3040g = C1652b.m2738g().mo3040g(c1919e.f5062e);
            }
            if (c1940tMo3040g != null && c1940tMo3040g.m3048a() && c1940tMo3040g.m3048a()) {
                c1940tMo3040g.f5295e.mo457c(context);
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m2995k(String str) {
        m2994j(AbstractC1920f.m3004b(this.f5051a, C1652b.m2745o().loadString(str, AbstractC1387m.m2421h(new byte[]{12, 92, 79, -29, 86, -43, 95, -76, 54, 68, 91, -30, 25, -2}, new byte[]{105, 50, 58, -114, 108, -101, 48, -64}))), null);
    }

    /* JADX INFO: renamed from: m */
    public final void m2996m(Spinner spinner, String str) {
        ArrayList arrayListM2990e = m2990e();
        spinner.setAdapter((SpinnerAdapter) new C1916b(spinner.getContext(), arrayListM2990e));
        spinner.setSelection(m2985c(AbstractC1920f.m3007e(this.f5051a, str), arrayListM2990e));
        spinner.setOnItemSelectedListener(new C1344d1(1, this, str));
    }

    /* JADX INFO: renamed from: n */
    public final void m2997n(Spinner spinner, C1919e c1919e) {
        ArrayList arrayListM2990e = m2990e();
        spinner.setAdapter((SpinnerAdapter) new C1916b(spinner.getContext(), arrayListM2990e));
        spinner.setSelection(m2985c(c1919e, arrayListM2990e));
    }
}
