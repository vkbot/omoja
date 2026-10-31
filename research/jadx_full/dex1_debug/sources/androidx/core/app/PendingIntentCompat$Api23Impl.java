package androidx.core.app;

import android.app.PendingIntent;
import android.app.PendingIntent$CanceledException;
import android.app.PendingIntent$OnFinished;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class PendingIntentCompat$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PendingIntentCompat$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void send(@NonNull PendingIntent pendingIntent, @NonNull Context context, int i9, @NonNull Intent intent, @Nullable PendingIntent$OnFinished pendingIntent$OnFinished, @Nullable Handler handler, @Nullable String str, @Nullable Bundle bundle) throws PendingIntent$CanceledException {
        pendingIntent.send(context, i9, intent, pendingIntent$OnFinished, handler, str, bundle);
    }
}
