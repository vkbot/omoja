package androidx.startup;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public final class StartupLogger {
    static final boolean DEBUG = false;
    private static final String TAG = "StartupLogger";

    private StartupLogger() {
    }

    /* JADX INFO: renamed from: e */
    public static void m875e(@NonNull String str, @Nullable Throwable th) {
        Log.e(TAG, str, th);
    }

    /* JADX INFO: renamed from: i */
    public static void m876i(@NonNull String str) {
        Log.i(TAG, str);
    }

    /* JADX INFO: renamed from: w */
    public static void m877w(@NonNull String str) {
        Log.w(TAG, str);
    }
}
