package androidx.media;

import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.util.Log;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplBase this$1;
    final /* synthetic */ MediaSessionCompat$Token val$token;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1(MediaBrowserServiceCompat$MediaBrowserServiceImplBase mediaBrowserServiceCompat$MediaBrowserServiceImplBase, MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplBase;
        this.val$token = mediaSessionCompat$Token;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        Iterator<MediaBrowserServiceCompat$ConnectionRecord> it = this.this$1.this$0.mConnections.values().iterator();
        while (it.hasNext()) {
            MediaBrowserServiceCompat$ConnectionRecord next = it.next();
            try {
                next.callbacks.onConnect(next.root.getRootId(), this.val$token, next.root.getExtras());
            } catch (RemoteException unused) {
                Log.w("MBServiceCompat", "Connection for " + next.pkg + " is no longer valid.");
                it.remove();
            }
        }
    }
}
