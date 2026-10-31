package p098j0;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.bumptech.glide.AbstractC1031d;
import com.google.protobuf.AbstractC1178q;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p099j1.C1940t;
import p142n0.EnumC2469d;

/* JADX INFO: renamed from: j0.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1920f {

    /* JADX INFO: renamed from: a */
    public static final String f5068a = AbstractC1387m.m2421h(new byte[]{-95, -42, 6, 3, 18}, new byte[]{-60, -72, 115, 110, 40, 0, -95, -10});

    /* JADX INFO: renamed from: b */
    public static final String f5069b = AbstractC1387m.m2421h(new byte[]{49, -50, 70, -28}, new byte[]{80, -66, 54, -34, 47, -111, -87, 100});

    /* JADX INFO: renamed from: c */
    public static final String f5070c = AbstractC1387m.m2421h(new byte[]{120, -110, -5, 13, -36, -107}, new byte[]{11, -30, -105, 100, -88, -81, -9, 76});

    /* JADX INFO: renamed from: d */
    public static final String f5071d = AbstractC1387m.m2421h(new byte[]{-108, -34, 68, -94, 43, 24, -41, -20}, new byte[]{-28, -84, 43, -60, 66, 116, -78, -42});

    /* JADX INFO: renamed from: e */
    public static final String f5072e = AbstractC1387m.m2421h(new byte[]{101, 37, 114, 113, -2, 43, 66, -107, 95, Base64.padSymbol, 102, 112, -79, 0}, new byte[]{0, 75, 7, 28, -60, 101, 45, -31});

    /* JADX INFO: renamed from: a */
    public static C1919e m3003a(Context context, String str) {
        EnumC2469d enumC2469d = (EnumC2469d) AbstractC1031d.m1279i(EnumC2469d.class, str);
        if (enumC2469d == null) {
            enumC2469d = (EnumC2469d) AbstractC1031d.m1279i(EnumC2469d.class, str.toUpperCase());
        }
        if (enumC2469d == null) {
            enumC2469d = EnumC2469d.f6756e;
        }
        return C1919e.m3000c(enumC2469d, context);
    }

    /* JADX INFO: renamed from: b */
    public static C1919e m3004b(Context context, String str) {
        if (str == null) {
            return C1919e.m3000c(EnumC2469d.f6756e, context);
        }
        String strTrim = str.trim();
        String str2 = f5068a;
        if (strTrim.startsWith(str2)) {
            return m3003a(context, strTrim.substring(str2.length()));
        }
        String str3 = f5069b;
        if (strTrim.startsWith(str3)) {
            String strSubstring = strTrim.substring(str3.length());
            if (strSubstring.trim().isEmpty()) {
                return C1919e.m3000c(EnumC2469d.f6756e, context);
            }
            try {
                PackageManager packageManager = context.getPackageManager();
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(strSubstring.trim());
                if (launchIntentForPackage == null) {
                    return C1919e.m3000c(EnumC2469d.f6756e, context);
                }
                ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(launchIntentForPackage, 0);
                return resolveInfoResolveActivity != null ? C1919e.m2999b(resolveInfoResolveActivity, packageManager) : C1919e.m3000c(EnumC2469d.f6756e, context);
            } catch (Exception unused) {
                return C1919e.m3000c(EnumC2469d.f6756e, context);
            }
        }
        String str4 = f5070c;
        if (strTrim.startsWith(str4)) {
            return m3005c(context, strTrim.substring(str4.length()));
        }
        String str5 = f5071d;
        if (!strTrim.startsWith(str5)) {
            return m3003a(context, strTrim);
        }
        String strSubstring2 = strTrim.substring(str5.length());
        if (strSubstring2.trim().isEmpty()) {
            return C1919e.m3000c(EnumC2469d.f6756e, context);
        }
        try {
            C1652b.m2734a();
            C1919e c1919eM3001d = C1919e.m3001d(C1652b.m2738g().mo3040g(strSubstring2.trim()), context);
            return c1919eM3001d != null ? c1919eM3001d : C1919e.m3000c(EnumC2469d.f6756e, context);
        } catch (Exception unused2) {
            return C1919e.m3000c(EnumC2469d.f6756e, context);
        }
    }

    /* JADX INFO: renamed from: c */
    public static C1919e m3005c(Context context, String str) {
        if (str == null) {
            return C1919e.m3000c(EnumC2469d.f6756e, context);
        }
        String[] strArrSplit = str.split(AbstractC1387m.m2421h(new byte[]{60}, new byte[]{16, -98, 9, 69, -109, 116, 105, -121}));
        if (strArrSplit.length < 3) {
            return C1919e.m3000c(EnumC2469d.f6756e, context);
        }
        try {
            C1919e c1919eM3002e = C1919e.m3002e(context, strArrSplit[0], Integer.parseInt(strArrSplit[2].trim()), strArrSplit.length >= 4 ? Integer.parseInt(strArrSplit[3].trim()) : 50, strArrSplit[1]);
            return c1919eM3002e != null ? c1919eM3002e : C1919e.m3000c(EnumC2469d.f6756e, context);
        } catch (Exception unused) {
            return C1919e.m3000c(EnumC2469d.f6756e, context);
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m3006d(C1919e c1919e) {
        EnumC1918d enumC1918d;
        if (c1919e != null && (enumC1918d = c1919e.f5058a) != null) {
            if (enumC1918d == EnumC1918d.f5054c) {
                return c1919e.f5060c != null;
            }
            if (enumC1918d == EnumC1918d.f5055d) {
                return (c1919e.f5060c == null || c1919e.f5061d == null) ? false : true;
            }
            if (enumC1918d == EnumC1918d.f5056e) {
                C1940t c1940t = c1919e.f5063f;
                return c1940t != null && c1940t.m3048a();
            }
            EnumC2469d enumC2469d = c1919e.f5059b;
            if (enumC2469d != null && !enumC2469d.equals(EnumC2469d.f6756e)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: e */
    public static C1919e m3007e(Context context, String str) {
        return m3004b(context, C1652b.m2745o().loadString(str, f5072e));
    }

    /* JADX INFO: renamed from: f */
    public static void m3008f(String str, C1919e c1919e) {
        C1652b.m2745o().saveString(str, m3009g(c1919e));
    }

    /* JADX INFO: renamed from: g */
    public static String m3009g(C1919e c1919e) {
        EnumC1918d enumC1918d;
        if (c1919e != null && (enumC1918d = c1919e.f5058a) != null) {
            if (enumC1918d == EnumC1918d.f5053b && c1919e.f5059b != null) {
                return f5068a + c1919e.f5059b.name();
            }
            if (enumC1918d == EnumC1918d.f5054c && c1919e.f5060c != null) {
                return f5069b + c1919e.f5060c;
            }
            if (enumC1918d == EnumC1918d.f5055d && c1919e.f5060c != null && c1919e.f5061d != null) {
                int i10 = c1919e.f5064g != 2 ? 1 : 2;
                int i11 = c1919e.f5065h;
                if (i11 != 30 && i11 != 70) {
                    i11 = 50;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(f5070c);
                sb.append(c1919e.f5060c);
                sb.append(AbstractC1387m.m2421h(new byte[]{-111}, new byte[]{-67, -73, -7, -127, 91, 14, 47, 77}));
                sb.append(c1919e.f5061d);
                AbstractC1178q.m2086t(new byte[]{-8}, new byte[]{-44, 46, 73, 14, -37, -120, -75, -21}, sb, i10);
                return AbstractC1178q.m2076j(new byte[]{-70}, new byte[]{-106, 69, -108, -92, -99, -61, -26, 121}, sb, i11);
            }
            if (enumC1918d == EnumC1918d.f5056e && c1919e.f5062e != null) {
                return f5071d + c1919e.f5062e;
            }
        }
        return f5072e;
    }
}
