package j0;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.google.protobuf.q;
import e0.m;
import j1.t;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f2879a = m.h(new byte[]{-95, -42, 6, 3, 18}, new byte[]{-60, -72, 115, 110, 40, 0, -95, -10});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f2880b = m.h(new byte[]{49, -50, 70, -28}, new byte[]{80, -66, 54, -34, 47, -111, -87, 100});
    public static final String c = m.h(new byte[]{120, -110, -5, 13, -36, -107}, new byte[]{11, -30, -105, 100, -88, -81, -9, 76});
    public static final String d = m.h(new byte[]{-108, -34, 68, -94, 43, 24, -41, -20}, new byte[]{-28, -84, 43, -60, 66, 116, -78, -42});
    public static final String e = m.h(new byte[]{101, 37, 114, 113, -2, 43, 66, -107, 95, Base64.padSymbol, 102, 112, -79, 0}, new byte[]{0, 75, 7, 28, -60, 101, 45, -31});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e a(Context context, String str) {
        n0.d dVar = (n0.d) com.bumptech.glide.d.i(n0.d.class, str);
        if (dVar == null) {
            dVar = (n0.d) com.bumptech.glide.d.i(n0.d.class, str.toUpperCase());
        }
        if (dVar == null) {
            dVar = n0.d.e;
        }
        return e.c(dVar, context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e b(Context context, String str) {
        if (str == null) {
            return e.c(n0.d.e, context);
        }
        String strTrim = str.trim();
        String str2 = f2879a;
        if (strTrim.startsWith(str2)) {
            return a(context, strTrim.substring(str2.length()));
        }
        String str3 = f2880b;
        if (strTrim.startsWith(str3)) {
            String strSubstring = strTrim.substring(str3.length());
            if (strSubstring.trim().isEmpty()) {
                return e.c(n0.d.e, context);
            }
            try {
                PackageManager packageManager = context.getPackageManager();
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(strSubstring.trim());
                if (launchIntentForPackage == null) {
                    return e.c(n0.d.e, context);
                }
                ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(launchIntentForPackage, 0);
                return resolveInfoResolveActivity != null ? e.b(resolveInfoResolveActivity, packageManager) : e.c(n0.d.e, context);
            } catch (Exception unused) {
                return e.c(n0.d.e, context);
            }
        }
        String str4 = c;
        if (strTrim.startsWith(str4)) {
            return c(context, strTrim.substring(str4.length()));
        }
        String str5 = d;
        if (!strTrim.startsWith(str5)) {
            return a(context, strTrim);
        }
        String strSubstring2 = strTrim.substring(str5.length());
        if (strSubstring2.trim().isEmpty()) {
            return e.c(n0.d.e, context);
        }
        try {
            h0.b.a();
            e eVarD = e.d(h0.b.g().g(strSubstring2.trim()), context);
            return eVarD != null ? eVarD : e.c(n0.d.e, context);
        } catch (Exception unused2) {
            return e.c(n0.d.e, context);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e c(Context context, String str) {
        if (str == null) {
            return e.c(n0.d.e, context);
        }
        String[] strArrSplit = str.split(m.h(new byte[]{60}, new byte[]{16, -98, 9, 69, -109, 116, 105, -121}));
        if (strArrSplit.length < 3) {
            return e.c(n0.d.e, context);
        }
        try {
            e eVarE = e.e(context, strArrSplit[0], Integer.parseInt(strArrSplit[2].trim()), strArrSplit.length >= 4 ? Integer.parseInt(strArrSplit[3].trim()) : 50, strArrSplit[1]);
            return eVarE != null ? eVarE : e.c(n0.d.e, context);
        } catch (Exception unused) {
            return e.c(n0.d.e, context);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean d(e eVar) {
        d dVar;
        if (eVar != null && (dVar = eVar.f2872a) != null) {
            if (dVar == d.c) {
                return eVar.c != null;
            }
            if (dVar == d.d) {
                return (eVar.c == null || eVar.d == null) ? false : true;
            }
            if (dVar == d.e) {
                t tVar = eVar.f2874f;
                return tVar != null && tVar.a();
            }
            n0.d dVar2 = eVar.f2873b;
            if (dVar2 != null && !dVar2.equals(n0.d.e)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e e(Context context, String str) {
        return b(context, h0.b.o().loadString(str, e));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(String str, e eVar) {
        h0.b.o().saveString(str, g(eVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String g(e eVar) {
        d dVar;
        if (eVar != null && (dVar = eVar.f2872a) != null) {
            if (dVar == d.f2870b && eVar.f2873b != null) {
                return f2879a + eVar.f2873b.name();
            }
            if (dVar == d.c && eVar.c != null) {
                return f2880b + eVar.c;
            }
            if (dVar == d.d && eVar.c != null && eVar.d != null) {
                int i9 = eVar.f2875g != 2 ? 1 : 2;
                int i10 = eVar.f2876h;
                if (i10 != 30 && i10 != 70) {
                    i10 = 50;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(c);
                sb.append(eVar.c);
                sb.append(m.h(new byte[]{-111}, new byte[]{-67, -73, -7, -127, 91, 14, 47, 77}));
                sb.append(eVar.d);
                q.t(new byte[]{-8}, new byte[]{-44, 46, 73, 14, -37, -120, -75, -21}, sb, i9);
                return q.j(new byte[]{-70}, new byte[]{-106, 69, -108, -92, -99, -61, -26, 121}, sb, i10);
            }
            if (dVar == d.e && eVar.e != null) {
                return d + eVar.e;
            }
        }
        return e;
    }
}
