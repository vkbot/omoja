package androidx.core.app;

import android.app.PendingIntent;
import android.app.PendingIntent$OnFinished;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PendingIntentCompat$GatedCallback implements Closeable {

    @Nullable
    private PendingIntent$OnFinished mCallback;
    private final CountDownLatch mComplete = new CountDownLatch(1);
    private boolean mSuccess = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PendingIntentCompat$GatedCallback(@Nullable PendingIntent$OnFinished pendingIntent$OnFinished) {
        this.mCallback = pendingIntent$OnFinished;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(PendingIntentCompat$GatedCallback pendingIntentCompat$GatedCallback, PendingIntent pendingIntent, Intent intent, int i9, String str, Bundle bundle) {
        pendingIntentCompat$GatedCallback.onSendFinished(pendingIntent, intent, i9, str, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void onSendFinished(PendingIntent pendingIntent, Intent intent, int i9, String str, Bundle bundle) {
        boolean z8 = false;
        while (true) {
            try {
                this.mComplete.await();
                break;
            } catch (InterruptedException unused) {
                z8 = true;
                pendingIntent = pendingIntent;
                intent = intent;
                i9 = i9;
                str = str;
                bundle = bundle;
            } catch (Throwable th) {
                if (!z8) {
                    throw th;
                }
                Thread.currentThread().interrupt();
                throw th;
            }
        }
        if (z8) {
            Thread.currentThread().interrupt();
        }
        PendingIntent$OnFinished pendingIntent$OnFinished = this.mCallback;
        if (pendingIntent$OnFinished != null) {
            pendingIntent$OnFinished.onSendFinished(pendingIntent, intent, i9, str, bundle);
            this.mCallback = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.mSuccess) {
            this.mCallback = null;
        }
        this.mComplete.countDown();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void complete() {
        this.mSuccess = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public PendingIntent$OnFinished getCallback() {
        if (this.mCallback == null) {
            return null;
        }
        return new d(this);
    }
}
