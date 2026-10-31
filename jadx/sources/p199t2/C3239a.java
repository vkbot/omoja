package p199t2;

import android.content.Context;
import com.bumptech.glide.manager.C1069o;

/* JADX INFO: renamed from: t2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3239a {

    /* JADX INFO: renamed from: b */
    public static final C3239a f9506b;

    /* JADX INFO: renamed from: a */
    public C1069o f9507a;

    static {
        C3239a c3239a = new C3239a();
        c3239a.f9507a = null;
        f9506b = c3239a;
    }

    /* JADX INFO: renamed from: a */
    public static C1069o m5179a(Context context) {
        C1069o c1069o;
        C3239a c3239a = f9506b;
        synchronized (c3239a) {
            try {
                if (c3239a.f9507a == null) {
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    c3239a.f9507a = new C1069o(context, 11);
                }
                c1069o = c3239a.f9507a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1069o;
    }
}
