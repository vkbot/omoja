package p152o0;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: o0.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2571e {

    /* JADX INFO: renamed from: b */
    public static final String f7130b = AbstractC1387m.m2421h(new byte[]{120, -123, -99, 67, -118, -116, 45, 85, 101, -113, ByteCompanionObject.MIN_VALUE, 82, -116}, new byte[]{31, -32, -18, 55, -1, -2, 72, 10});

    /* JADX INFO: renamed from: a */
    public final SharedPreferences f7131a;

    public C2571e(Context context) {
        this.f7131a = context.getSharedPreferences(f7130b, 0);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m4003a(EnumC2572f enumC2572f) {
        return this.f7131a.getBoolean(AbstractC1387m.m2421h(new byte[]{15, -83, 83, -34, -22, 0, -27, 113}, new byte[]{106, -61, 50, -68, -122, 101, -127, 46}) + enumC2572f.name(), false);
    }
}
