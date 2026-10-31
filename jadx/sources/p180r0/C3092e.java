package p180r0;

import android.content.Context;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.ByteCompanionObject;
import p043d6.C1305d;
import p047e0.AbstractC1387m;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p142n0.EnumC2469d;

/* JADX INFO: renamed from: r0.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3092e {

    /* JADX INFO: renamed from: c */
    public static final String f8786c = AbstractC1387m.m2421h(new byte[]{-122, -101, 5, 21, 79, 69, -86, 70, -114, -79, 12, 8, 65, 114, -85, 106, -119, -101, 29, 21, 73, 116, -84}, new byte[]{-21, -18, 105, 97, 38, 26, -33, 53});

    /* JADX INFO: renamed from: d */
    public static final String f8787d = AbstractC1387m.m2421h(new byte[]{-30, 124, ByteCompanionObject.MIN_VALUE, -31, -16, -11, 60, -13, -5, 96, -125, -5, -58}, new byte[]{-113, 9, -20, -107, -103, -86, 93, -112});

    /* JADX INFO: renamed from: a */
    public final Context f8788a;

    /* JADX INFO: renamed from: b */
    public final C1305d f8789b;

    public C3092e(Context context) {
        this.f8788a = context;
        C1305d c1305d = new C1305d();
        c1305d.f3111a = true;
        c1305d.f3112b = new C1919e[8];
        for (int i10 = 0; i10 < 8; i10++) {
            ((C1919e[]) c1305d.f3112b)[i10] = C1919e.m3000c(EnumC2469d.f6756e, context);
        }
        this.f8789b = c1305d;
    }

    /* JADX INFO: renamed from: a */
    public static Drawable[] m4924a(Context context) {
        Drawable[] drawableArr = new Drawable[8];
        for (int i10 = 0; i10 < 8; i10++) {
            C1919e c1919eM3007e = AbstractC1920f.m3007e(context, f8787d + i10);
            drawableArr[i10] = AbstractC1920f.m3006d(c1919eM3007e) ? c1919eM3007e.f5067j : null;
        }
        return drawableArr;
    }
}
