package k0;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import com.google.protobuf.q;
import e0.m;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f3154b = m.h(new byte[]{-45, -27, 12, 49, -103, 92, -54, 14, -25, -28, 15, 42}, new byte[]{-124, -116, 106, 88, -43, Base64.padSymbol, -65, 96});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3155a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Context context) {
        this.f3155a = context.getApplicationContext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a(String str, String str2) {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(str, str2));
            return this.f3155a.getPackageManager().resolveActivity(intent, 0) != null;
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b() {
        Context context = this.f3155a;
        String strH = m.h(new byte[]{90, -38, 70, 55, 32, 67, -30, -65, 91, -58, 71, 2, 32, 65, 18, -33, 11, -107, 47, 102, 113, 44, -80, -34, 63, -107, 43, 103, 77, 44, -71, -34, 63, 101, 71, 10, 32, 77, -29, -113, 91, -57, 70, 55, 32, 67, -30, -73, 90, -1, 71, 15, -48, -86, 91, 72, -29, 107, -71, -103}, new byte[]{-118, 69, -105, -73, -16, -3, 50, 14});
        String str = f3154b;
        Log.d(str, strH);
        try {
            Intent intent = new Intent(m.h(new byte[]{-2, -78, 45, -25, 76, -10, 81, 1, -20, -71, Base64.padSymbol, -31, 74, -15, 82, 92, -79, -117, 0, -45, 106, -64, 102, 106, -53, -120, 0, -37, 100, -52}, new byte[]{-97, -36, 73, -107, 35, -97, 53, 47}));
            intent.addFlags(268435456);
            if (intent.resolveActivity(context.getPackageManager()) == null) {
                return false;
            }
            context.startActivity(intent);
            Log.d(str, m.h(new byte[]{-15, 81, 92, 42, 41, -3, 55, 56, -15, 69, 92, 46, 40, -63, 55, 49, -15, 69, -84, 66, 69, -84, 86, 107, -96, 33, 14, 67, 120, -84, 88, 106, -104, 32, 54, 66, 64, 92, -79, -45, 103, -103, -84, 66, 79, -84, 86, 106, -98, 33, 15, 67, 113, -84, 83, 106, -100, 33, 7}, new byte[]{33, -16, -116, -110, -8, 124, -26, -70}));
            return true;
        } catch (Exception e) {
            Log.d(str, m.h(new byte[]{48, -95, 2, -63, -111, -39, 109, -85, 48, -123, 3, -7, 97, -80, 60, -54, 88, -18, 82, -104, -61, -79, 8, -54, 92, -17, 110, -104, -54, -80, 56, 58, 48, -126, 3, -7, -112, -32, 108, -104, 49, -65, 3, -9, -111, -44, 109, -96, -64, 104, -70, 15, 40, 91, -99}, new byte[]{-32, 63, -45, 73, 65, 97, -67, 26}) + e.getMessage());
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c(String str, String str2) {
        boolean z8;
        Context context = this.f3155a;
        StringBuilder sb = new StringBuilder();
        q.u(new byte[]{-46, -18, 6, 88, 121, 62, -29, -37, -46, -60, 6, 88, 121, 58, -29, -39, 56, 81}, new byte[]{2, 113, -41, -40, -87, ByteCompanionObject.MIN_VALUE, 51, 105}, sb, str);
        sb.append(m.h(new byte[]{101}, new byte[]{74, -34, 44, 39, -35, -74, -63, 34}));
        sb.append(str2);
        String string = sb.toString();
        String str3 = f3154b;
        Log.d(str3, string);
        try {
            try {
                context.getPackageManager().getPackageInfo(str, 0);
                z8 = true;
            } catch (PackageManager$NameNotFoundException unused) {
                z8 = false;
            }
            if (!z8) {
                Log.d(str3, m.h(new byte[]{-120, -115, -28, -31, -52, 49, 18, -116, -119, -112, 20, -127, -95, 91, 119, 25, -119, -111, -27, -48, -51, 9, 18, -119, -120, -81, -28, -17, -52, 57, 18, -126, -120, -89, -28, -20, 38, -85}, new byte[]{88, 18, 52, 81, 28, -117, -62, 57}).concat(str));
            } else {
                if (a(str, str2)) {
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName(str, str2));
                    intent.addFlags(268435456);
                    intent.setAction(m.h(new byte[]{-23, 57, -112, -97, 6, -106, 28, 79, -31, 57, ByteCompanionObject.MIN_VALUE, -120, 7, -117, 86, 0, -21, 35, -99, -126, 7, -47, 53, 32, -63, 25}, new byte[]{-120, 87, -12, -19, 105, -1, 120, 97}));
                    intent.addCategory(m.h(new byte[]{104, -84, -78, -4, 2, 92, -124, 22, 96, -84, -94, -21, 3, 65, -50, 91, 104, -74, -77, -23, 2, 71, -103, 22, 69, -125, -125, -64, 46, 125, -91, 106}, new byte[]{9, -62, -42, -114, 109, 53, -32, 56}));
                    context.startActivity(intent);
                    Log.d(str3, m.h(new byte[]{7, -121, 57, -99, 17, 118, 42, -116, 6, -84, 56, -95, 17, 119, -38, -23, 96, -12, 88, -52, 126, 24, 121, -24, 94, -12, 93, -52, 124, 25, 68, 3, -9}, new byte[]{-41, 36, -24, 28, -63, -55, -6, 57}) + str + m.h(new byte[]{-35}, new byte[]{-14, -87, 14, -64, 92, -37, 25, -25}) + str2);
                    return true;
                }
                Log.d(str3, m.h(new byte[]{-117, -1, -13, -104, 0, 67, 5, -121, -22, 76, 58, 33, -61, 10, -96, ByteCompanionObject.MAX_VALUE, 27, 31, 86, 120, -90, -97, -96, ByteCompanionObject.MAX_VALUE, 27, 30, 87, 67, -89, -87, -95, 75, 27, 30, -67, -47}, new byte[]{-54, -100, -121, -15, 118, 42, 113, -2}).concat(str2));
            }
            return false;
        } catch (SecurityException e) {
            Log.d(str3, m.h(new byte[]{57, 120, 107, 16, -73, -118, 77, ByteCompanionObject.MAX_VALUE, 47, 101, 107, 0, -75, -105, 80, 105, 4, 39, 40}, new byte[]{106, 29, 8, 101, -59, -29, 57, 6}) + e.getMessage());
            return false;
        } catch (Exception e6) {
            Log.d(str3, m.h(new byte[]{35, -83, -2, 7, 64, -113, -14, -55, 35, -119, -1, 63, -80, -25, -107, -88, 67, -29, -112, 94, 19, -26, -93, -88, 73, -29, -97, -75, -80}, new byte[]{-13, 51, 47, -113, -112, 55, 34, 120}).concat(e6.getClass().getSimpleName()));
            return false;
        }
    }
}
