package p109k0;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.google.protobuf.AbstractC1178q;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p078h0.C1652b;
import p201t5.C3261e;
import p206u0.C3277a;

/* JADX INFO: renamed from: k0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2025a {

    /* JADX INFO: renamed from: a */
    public static final String f5535a = AbstractC1387m.m2421h(new byte[]{2, 97, 73, 83, -109, 49, 41, -116, 21, 107, 79, 83, -101, 34, 49, -102, 7, 98, 93, 83, -119, 52, 32, -101, 4, 107, 74, 26, -109, 57, 32, -37, 37, 79, 112, 60, -81, 7, 9, -70, 32, 74}, new byte[]{97, 14, 36, 125, -6, 87, 69, -11});

    /* JADX INFO: renamed from: b */
    public static final String f5536b = AbstractC1387m.m2421h(new byte[]{-16, 13, 29, 17, 115, 40, -115, -96, -25, 7, 27, 17, 123, 59, -107, -74, -11, 14, 9, 17, 105, 45, -124, -73, -10, 7, 30, 88, 115, 32, -124}, new byte[]{-109, 98, 112, 63, 26, 78, -31, -39});

    /* JADX INFO: renamed from: a */
    public static void m3119a(Context context, boolean z9) {
        Boolean boolValueOf;
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            boolValueOf = Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{82}, new byte[]{98, -38, -42, -21, -3, -123, 51, 115}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            Intent intent = new Intent();
            intent.setPackage(f5536b);
            intent.setAction(f5535a);
            C3261e c3261e = new C3261e();
            c3261e.m5199k(AbstractC1387m.m2421h(new byte[]{90, 64}, new byte[]{62, 52, 107, -30, -85, 5, -29, -45}), AbstractC1387m.m2421h(new byte[]{35, 1, 67, -19, -94, 0, 69, 94, 35, 16, 82}, new byte[]{66, 98, 55, -124, -44, 101, 26, Base64.padSymbol}));
            c3261e.m5199k(AbstractC1387m.m2421h(new byte[]{48, 105, -107, -35}, new byte[]{68, 16, -27, -72, 122, 80, -83, -54}), AbstractC1387m.m2421h(new byte[]{119, -78, -26, -74, 42, 19, -108, ByteCompanionObject.MAX_VALUE, 117, -70, -15}, new byte[]{1, -37, -125, -63, 117, 114, -30, 30}));
            c3261e.m5197i(AbstractC1387m.m2421h(new byte[]{96, 90, 38, 3, 29, -113, 105, -102, 114, 64}, new byte[]{19, 50, 73, 116, 92, -7, 8, -18}), Boolean.valueOf(z9));
            intent.putExtra(AbstractC1387m.m2421h(new byte[]{9, -52, -95, -62, -70}, new byte[]{ByteCompanionObject.MAX_VALUE, -83, -51, -73, -33, 108, 119, -123}), c3261e.toString());
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(intent);
                } else {
                    context.startService(intent);
                }
            } catch (RuntimeException unused) {
            }
        }
    }
}
