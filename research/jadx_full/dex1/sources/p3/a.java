package p3;

import android.content.Context;
import w3.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f4582f = (int) Math.round(5.1000000000000005d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4584b;
    public final int c;
    public final int d;
    public final float e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(Context context) {
        boolean zB = b.b(context, 2130903515, false);
        int iB = m3.a.b(context, 2130903514, 0);
        int iB2 = m3.a.b(context, 2130903513, 0);
        int iB3 = m3.a.b(context, 2130903359, 0);
        float f8 = context.getResources().getDisplayMetrics().density;
        this.f4583a = zB;
        this.f4584b = iB;
        this.c = iB2;
        this.d = iB3;
        this.e = f8;
    }
}
