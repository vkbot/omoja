package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build$VERSION;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f80b = Log.isLoggable("MediaBrowserCompat", 3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f81a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(Context context, ComponentName componentName, d dVar) {
        if (Build$VERSION.SDK_INT >= 26) {
            this.f81a = new f(context, componentName, dVar);
        } else {
            this.f81a = new e(context, componentName, dVar);
        }
    }
}
