package p047e0;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: renamed from: e0.m2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1390m2 {

    /* JADX INFO: renamed from: b */
    public static final String f3329b;

    /* JADX INFO: renamed from: a */
    public final SharedPreferences f3330a;

    static {
        AbstractC1387m.m2421h(new byte[]{-60, 92, 39, -57, -127, -82, 89, -115, -13, 90, 46, -51, -100, -118, 104, ByteCompanionObject.MIN_VALUE, -16, 74}, new byte[]{-106, 57, 69, -88, -18, -38, 26, -27});
        f3329b = AbstractC1387m.m2421h(new byte[]{84, -61, 74, 43, 102, 43, -34, -127, 81, -49, 92}, new byte[]{56, -94, 57, 95, 57, 94, -82, -11});
    }

    public C1390m2(Context context) {
        this.f3330a = context.getSharedPreferences(AbstractC1387m.m2421h(new byte[]{86, -51, -93, -72, -30, 58, 25, -105, 97, -53, -86, -78, -1, 30, 40, -102, 98, -37}, new byte[]{4, -88, -63, -41, -115, 78, 90, -1}), 0);
    }
}
