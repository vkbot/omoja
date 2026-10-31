package k0;

import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import c5.h;
import com.google.protobuf.q;
import e0.m;
import e0.p3;
import e0.x1;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import t5.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f3152a = m.h(new byte[]{2, 97, 73, 83, -109, 49, 41, -116, 21, 107, 79, 83, -101, 34, 49, -102, 7, 98, 93, 83, -119, 52, 32, -101, 4, 107, 74, 26, -109, 57, 32, -37, 37, 79, 112, 60, -81, 7, 9, -70, 32, 74}, new byte[]{97, 14, 36, 125, -6, 87, 69, -11});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f3153b = m.h(new byte[]{-16, 13, 29, 17, 115, 40, -115, -96, -25, 7, 27, 17, 123, 59, -107, -74, -11, 14, 9, 17, 105, 45, -124, -73, -10, 7, 30, 88, 115, 32, -124}, new byte[]{-109, 98, 112, 63, 26, 78, -31, -39});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(Context context, boolean z8) {
        Boolean boolValueOf;
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = m.f1892f;
        if (q.w(bArr2, aVarO2, "", strG)) {
            boolValueOf = Boolean.valueOf(q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(q.x(new byte[]{82}, new byte[]{98, -38, -42, -21, -3, -123, 51, 115}, h0.b.o(), q.h(m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            Intent intent = new Intent();
            intent.setPackage(f3153b);
            intent.setAction(f3152a);
            e eVar = new e();
            eVar.k(m.h(new byte[]{90, 64}, new byte[]{62, 52, 107, -30, -85, 5, -29, -45}), m.h(new byte[]{35, 1, 67, -19, -94, 0, 69, 94, 35, 16, 82}, new byte[]{66, 98, 55, -124, -44, 101, 26, Base64.padSymbol}));
            eVar.k(m.h(new byte[]{48, 105, -107, -35}, new byte[]{68, 16, -27, -72, 122, 80, -83, -54}), m.h(new byte[]{119, -78, -26, -74, 42, 19, -108, ByteCompanionObject.MAX_VALUE, 117, -70, -15}, new byte[]{1, -37, -125, -63, 117, 114, -30, 30}));
            eVar.i(m.h(new byte[]{96, 90, 38, 3, 29, -113, 105, -102, 114, 64}, new byte[]{19, 50, 73, 116, 92, -7, 8, -18}), Boolean.valueOf(z8));
            intent.putExtra(m.h(new byte[]{9, -52, -95, -62, -70}, new byte[]{ByteCompanionObject.MAX_VALUE, -83, -51, -73, -33, 108, 119, -123}), eVar.toString());
            try {
                if (Build$VERSION.SDK_INT >= 26) {
                    h.r(context, intent);
                } else {
                    context.startService(intent);
                }
            } catch (RuntimeException unused) {
            }
        }
    }
}
