package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.util.Log;

/* JADX INFO: renamed from: android.support.v4.media.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0091i {

    /* JADX INFO: renamed from: b */
    public static final boolean f193b = Log.isLoggable("MediaBrowserCompat", 3);

    /* JADX INFO: renamed from: a */
    public final C0087e f194a;

    public C0091i(Context context, ComponentName componentName, AbstractC0086d abstractC0086d) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f194a = new C0088f(context, componentName, abstractC0086d);
        } else {
            this.f194a = new C0087e(context, componentName, abstractC0086d);
        }
    }
}
