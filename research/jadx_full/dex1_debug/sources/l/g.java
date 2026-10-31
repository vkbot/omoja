package l;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build$VERSION;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g {
    public static final int e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ActivityManager f3249b;
    public final r5.c c;
    public final float d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e = Build$VERSION.SDK_INT < 26 ? 4 : 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(Context context) {
        this.d = e;
        this.f3248a = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f3249b = activityManager;
        this.c = new r5.c(26, context.getResources().getDisplayMetrics());
        if (Build$VERSION.SDK_INT < 26 || !activityManager.isLowRamDevice()) {
            return;
        }
        this.d = 0.0f;
    }
}
