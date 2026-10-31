package androidx.media;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.i;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class MediaBrowserServiceCompat$ServiceHandler extends Handler {

    @Nullable
    private MediaBrowserServiceCompat mService;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public MediaBrowserServiceCompat$ServiceHandler(@NonNull MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        this.mService = mediaBrowserServiceCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler
    @MainThread
    public void handleMessage(@NonNull Message message) {
        MediaBrowserServiceCompat mediaBrowserServiceCompat = this.mService;
        if (mediaBrowserServiceCompat != null) {
            mediaBrowserServiceCompat.handleMessageInternal(message);
        } else {
            removeCallbacksAndMessages(null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void postOrRun(Runnable runnable) {
        if (Thread.currentThread() == getLooper().getThread()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void release() {
        this.mService = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler
    public boolean sendMessageAtTime(Message message, long j9) {
        Bundle data = message.getData();
        data.setClassLoader(i.class.getClassLoader());
        data.putInt(MediaBrowserProtocol.DATA_CALLING_UID, Binder.getCallingUid());
        int callingPid = Binder.getCallingPid();
        if (callingPid > 0) {
            data.putInt(MediaBrowserProtocol.DATA_CALLING_PID, callingPid);
        } else if (!data.containsKey(MediaBrowserProtocol.DATA_CALLING_PID)) {
            data.putInt(MediaBrowserProtocol.DATA_CALLING_PID, -1);
        }
        return super.sendMessageAtTime(message, j9);
    }
}
