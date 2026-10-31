package androidx.core.app;

import android.app.PendingIntent;
import android.app.PendingIntent$OnFinished;
import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.accessibility.AccessibilityEventCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class PendingIntentCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PendingIntentCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int addMutabilityFlags(boolean z8, int i9) {
        int i10;
        if (!z8) {
            i10 = AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL;
        } else {
            if (Build$VERSION.SDK_INT < 31) {
                return i9;
            }
            i10 = 33554432;
        }
        return i10 | i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static PendingIntent getActivities(@NonNull Context context, int i9, @NonNull Intent[] intentArr, int i10, @Nullable Bundle bundle, boolean z8) {
        return PendingIntent.getActivities(context, i9, intentArr, addMutabilityFlags(z8, i10), bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static PendingIntent getActivity(@NonNull Context context, int i9, @NonNull Intent intent, int i10, boolean z8) {
        return PendingIntent.getActivity(context, i9, intent, addMutabilityFlags(z8, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static PendingIntent getBroadcast(@NonNull Context context, int i9, @NonNull Intent intent, int i10, boolean z8) {
        return PendingIntent.getBroadcast(context, i9, intent, addMutabilityFlags(z8, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(26)
    public static PendingIntent getForegroundService(@NonNull Context context, int i9, @NonNull Intent intent, int i10, boolean z8) {
        return PendingIntentCompat$Api26Impl.getForegroundService(context, i9, intent, addMutabilityFlags(z8, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static PendingIntent getService(@NonNull Context context, int i9, @NonNull Intent intent, int i10, boolean z8) {
        return PendingIntent.getService(context, i9, intent, addMutabilityFlags(z8, i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void send(@NonNull PendingIntent pendingIntent, int i9, @Nullable PendingIntent$OnFinished pendingIntent$OnFinished, @Nullable Handler handler) {
        PendingIntentCompat$GatedCallback pendingIntentCompat$GatedCallback = new PendingIntentCompat$GatedCallback(pendingIntent$OnFinished);
        try {
            pendingIntent.send(i9, pendingIntentCompat$GatedCallback.getCallback(), handler);
            pendingIntentCompat$GatedCallback.complete();
            pendingIntentCompat$GatedCallback.close();
        } catch (Throwable th) {
            try {
                pendingIntentCompat$GatedCallback.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @NonNull
    public static PendingIntent getActivities(@NonNull Context context, int i9, @NonNull Intent[] intentArr, int i10, boolean z8) {
        return PendingIntent.getActivities(context, i9, intentArr, addMutabilityFlags(z8, i10));
    }

    @Nullable
    public static PendingIntent getActivity(@NonNull Context context, int i9, @NonNull Intent intent, int i10, @Nullable Bundle bundle, boolean z8) {
        return PendingIntent.getActivity(context, i9, intent, addMutabilityFlags(z8, i10), bundle);
    }

    public static void send(@NonNull PendingIntent pendingIntent, @NonNull Context context, int i9, @NonNull Intent intent, @Nullable PendingIntent$OnFinished pendingIntent$OnFinished, @Nullable Handler handler) {
        send(pendingIntent, context, i9, intent, pendingIntent$OnFinished, handler, null, null);
    }

    public static void send(@NonNull PendingIntent pendingIntent, @NonNull Context context, int i9, @NonNull Intent intent, @Nullable PendingIntent$OnFinished pendingIntent$OnFinished, @Nullable Handler handler, @Nullable String str, @Nullable Bundle bundle) {
        PendingIntentCompat$GatedCallback pendingIntentCompat$GatedCallback = new PendingIntentCompat$GatedCallback(pendingIntent$OnFinished);
        try {
            PendingIntentCompat$Api23Impl.send(pendingIntent, context, i9, intent, pendingIntent$OnFinished, handler, str, bundle);
            pendingIntentCompat$GatedCallback.complete();
            pendingIntentCompat$GatedCallback.close();
        } catch (Throwable th) {
            try {
                pendingIntentCompat$GatedCallback.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }
}
