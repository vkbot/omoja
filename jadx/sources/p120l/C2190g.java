package p120l;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import p184r5.C3105c;

/* JADX INFO: renamed from: l.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2190g {

    /* JADX INFO: renamed from: e */
    public static final int f5713e;

    /* JADX INFO: renamed from: a */
    public final Context f5714a;

    /* JADX INFO: renamed from: b */
    public final ActivityManager f5715b;

    /* JADX INFO: renamed from: c */
    public final C3105c f5716c;

    /* JADX INFO: renamed from: d */
    public final float f5717d;

    static {
        f5713e = Build.VERSION.SDK_INT < 26 ? 4 : 1;
    }

    public C2190g(Context context) {
        this.f5717d = f5713e;
        this.f5714a = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f5715b = activityManager;
        this.f5716c = new C3105c(26, context.getResources().getDisplayMetrics());
        if (Build.VERSION.SDK_INT < 26 || !activityManager.isLowRamDevice()) {
            return;
        }
        this.f5717d = 0.0f;
    }
}
