package e0;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f1900b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f1901a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        m.h(new byte[]{-60, 92, 39, -57, -127, -82, 89, -115, -13, 90, 46, -51, -100, -118, 104, ByteCompanionObject.MIN_VALUE, -16, 74}, new byte[]{-106, 57, 69, -88, -18, -38, 26, -27});
        f1900b = m.h(new byte[]{84, -61, 74, 43, 102, 43, -34, -127, 81, -49, 92}, new byte[]{56, -94, 57, 95, 57, 94, -82, -11});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m2(Context context) {
        this.f1901a = context.getSharedPreferences(m.h(new byte[]{86, -51, -93, -72, -30, 58, 25, -105, 97, -53, -86, -78, -1, 30, 40, -102, 98, -37}, new byte[]{4, -88, -63, -41, -115, 78, 90, -1}), 0);
    }
}
