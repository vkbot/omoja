package androidx.core.app;

import android.app.PendingIntent;
import android.app.PendingIntent$OnFinished;
import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements PendingIntent$OnFinished {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PendingIntentCompat$GatedCallback f131a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(PendingIntentCompat$GatedCallback pendingIntentCompat$GatedCallback) {
        this.f131a = pendingIntentCompat$GatedCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.PendingIntent$OnFinished
    public final void onSendFinished(PendingIntent pendingIntent, Intent intent, int i9, String str, Bundle bundle) {
        PendingIntentCompat$GatedCallback.b(this.f131a, pendingIntent, intent, i9, str, bundle);
    }
}
