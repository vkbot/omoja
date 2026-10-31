package r0;

import android.content.Context;
import android.graphics.drawable.Drawable;
import e0.m;
import j0.f;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e {
    public static final String c = m.h(new byte[]{-122, -101, 5, 21, 79, 69, -86, 70, -114, -79, 12, 8, 65, 114, -85, 106, -119, -101, 29, 21, 73, 116, -84}, new byte[]{-21, -18, 105, 97, 38, 26, -33, 53});
    public static final String d = m.h(new byte[]{-30, 124, ByteCompanionObject.MIN_VALUE, -31, -16, -11, 60, -13, -5, 96, -125, -5, -58}, new byte[]{-113, 9, -20, -107, -103, -86, 93, -112});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d6.d f4935b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Context context) {
        this.f4934a = context;
        d6.d dVar = new d6.d();
        dVar.f1780a = true;
        dVar.f1781b = new j0.e[8];
        for (int i9 = 0; i9 < 8; i9++) {
            ((j0.e[]) dVar.f1781b)[i9] = j0.e.c(n0.d.e, context);
        }
        this.f4935b = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Drawable[] a(Context context) {
        Drawable[] drawableArr = new Drawable[8];
        for (int i9 = 0; i9 < 8; i9++) {
            j0.e eVarE = f.e(context, d + i9);
            drawableArr[i9] = f.d(eVarE) ? eVarE.f2878j : null;
        }
        return drawableArr;
    }
}
