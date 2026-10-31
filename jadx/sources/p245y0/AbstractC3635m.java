package p245y0;

import android.content.Context;
import android.content.SharedPreferences;
import java.security.SecureRandom;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: y0.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3635m {

    /* JADX INFO: renamed from: a */
    public static final String f10798a = AbstractC1387m.m2421h(new byte[]{9, 5, -45, -85, 4, -117, -34, -125, 16, 22, -56, -122, 4}, new byte[]{99, 102, -89, -12, 112, -7, -65, -19});

    /* JADX INFO: renamed from: b */
    public static final String f10799b = AbstractC1387m.m2421h(new byte[]{15, -55, -77, 90, 33, -40, 117, -68, 23, -51, -76, 71, 23, -38}, new byte[]{120, -96, -43, 51, 126, -71, 0, -56});

    /* JADX INFO: renamed from: c */
    public static final String f10800c = AbstractC1387m.m2421h(new byte[]{-107, -60, -118, 53}, new byte[]{-3, -85, -7, 65, -89, -54, -39, ByteCompanionObject.MIN_VALUE});

    /* JADX INFO: renamed from: d */
    public static final String f10801d = AbstractC1387m.m2421h(new byte[]{103, 51, 101, -49}, new byte[]{23, 92, 23, -69, -112, 42, -95, 112});

    /* JADX INFO: renamed from: e */
    public static final String f10802e = AbstractC1387m.m2421h(new byte[]{-23, -45, 116, 82, -80, -76, ByteCompanionObject.MIN_VALUE, -46, -29, -32, 111, 86, -87, -66}, new byte[]{-117, -65, 1, 55, -60, -37, -17, -90});

    /* JADX INFO: renamed from: f */
    public static final String f10803f = AbstractC1387m.m2421h(new byte[]{115, -13, -30, 27, -126}, new byte[]{7, -100, -119, 126, -20, -40, 60, -70});

    /* JADX INFO: renamed from: g */
    public static final SecureRandom f10804g = new SecureRandom();

    /* JADX INFO: renamed from: a */
    public static synchronized String m5816a(Context context) {
        SharedPreferences sharedPreferencesM5818c = m5818c(context);
        String str = f10803f;
        String strM5819d = m5819d(sharedPreferencesM5818c.getString(str, ""));
        if (!strM5819d.isEmpty()) {
            return strM5819d;
        }
        String str2 = String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{-82, 55, -72, -12}, new byte[]{-117, 7, -127, -112, 87, 45, -47, -81}), Integer.valueOf(f10804g.nextInt(1000000000)));
        sharedPreferencesM5818c.edit().putString(str, str2).apply();
        return str2;
    }

    /* JADX INFO: renamed from: b */
    public static boolean m5817b(String str) {
        return str != null && str.matches(AbstractC1387m.m2421h(new byte[]{-41, -5, -94, 44, -93}, new byte[]{-117, -97, -39, 21, -34, 54, 100, 20}));
    }

    /* JADX INFO: renamed from: c */
    public static SharedPreferences m5818c(Context context) {
        return context.getApplicationContext().getSharedPreferences(f10798a, 0);
    }

    /* JADX INFO: renamed from: d */
    public static String m5819d(String str) {
        return str == null ? "" : str.trim();
    }
}
