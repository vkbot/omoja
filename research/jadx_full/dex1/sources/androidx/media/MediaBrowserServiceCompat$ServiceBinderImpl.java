package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import b.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$ServiceBinderImpl {
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaBrowserServiceCompat$ServiceBinderImpl(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        this.this$0 = mediaBrowserServiceCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addSubscription(String str, IBinder iBinder, Bundle bundle, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$3(this, mediaBrowserServiceCompat$ServiceCallbacks, str, iBinder, bundle));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void connect(String str, int i9, int i10, Bundle bundle, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        if (this.this$0.isValidPackage(str, i10)) {
            this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$1(this, mediaBrowserServiceCompat$ServiceCallbacks, str, i9, i10, bundle));
            return;
        }
        throw new IllegalArgumentException("Package/uid mismatch: uid=" + i10 + " package=" + str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void disconnect(MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$2(this, mediaBrowserServiceCompat$ServiceCallbacks));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getMediaItem(String str, d dVar, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        if (TextUtils.isEmpty(str) || dVar == null) {
            return;
        }
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$5(this, mediaBrowserServiceCompat$ServiceCallbacks, str, dVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerCallbacks(MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks, String str, int i9, int i10, Bundle bundle) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$6(this, mediaBrowserServiceCompat$ServiceCallbacks, i10, str, i9, bundle));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeSubscription(String str, IBinder iBinder, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$4(this, mediaBrowserServiceCompat$ServiceCallbacks, str, iBinder));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void search(String str, Bundle bundle, d dVar, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        if (TextUtils.isEmpty(str) || dVar == null) {
            return;
        }
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$8(this, mediaBrowserServiceCompat$ServiceCallbacks, str, bundle, dVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sendCustomAction(String str, Bundle bundle, d dVar, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        if (TextUtils.isEmpty(str) || dVar == null) {
            return;
        }
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$9(this, mediaBrowserServiceCompat$ServiceCallbacks, str, bundle, dVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregisterCallbacks(MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$7(this, mediaBrowserServiceCompat$ServiceCallbacks));
    }
}
