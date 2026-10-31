package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$ServiceBinderImpl$6 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$ServiceBinderImpl this$1;
    final /* synthetic */ MediaBrowserServiceCompat$ServiceCallbacks val$callbacks;
    final /* synthetic */ int val$pid;
    final /* synthetic */ String val$pkg;
    final /* synthetic */ Bundle val$rootHints;
    final /* synthetic */ int val$uid;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public MediaBrowserServiceCompat$ServiceBinderImpl$6(MediaBrowserServiceCompat$ServiceBinderImpl mediaBrowserServiceCompat$ServiceBinderImpl, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks, int i9, String str, int i10, Bundle bundle) {
        this.this$1 = mediaBrowserServiceCompat$ServiceBinderImpl;
        this.val$callbacks = mediaBrowserServiceCompat$ServiceCallbacks;
        this.val$uid = i9;
        this.val$pkg = str;
        this.val$pid = i10;
        this.val$rootHints = bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord;
        IBinder iBinderAsBinder = this.val$callbacks.asBinder();
        this.this$1.this$0.mConnections.remove(iBinderAsBinder);
        Iterator<MediaBrowserServiceCompat$ConnectionRecord> it = this.this$1.this$0.mPendingConnections.iterator();
        while (true) {
            mediaBrowserServiceCompat$ConnectionRecord = null;
            if (!it.hasNext()) {
                break;
            }
            MediaBrowserServiceCompat$ConnectionRecord next = it.next();
            if (next.uid == this.val$uid) {
                mediaBrowserServiceCompat$ConnectionRecord = (TextUtils.isEmpty(this.val$pkg) || this.val$pid <= 0) ? new MediaBrowserServiceCompat$ConnectionRecord(this.this$1.this$0, next.pkg, next.pid, next.uid, this.val$rootHints, this.val$callbacks) : null;
                it.remove();
                break;
            }
        }
        if (mediaBrowserServiceCompat$ConnectionRecord == null) {
            mediaBrowserServiceCompat$ConnectionRecord = new MediaBrowserServiceCompat$ConnectionRecord(this.this$1.this$0, this.val$pkg, this.val$pid, this.val$uid, this.val$rootHints, this.val$callbacks);
        }
        this.this$1.this$0.mConnections.put(iBinderAsBinder, mediaBrowserServiceCompat$ConnectionRecord);
        try {
            iBinderAsBinder.linkToDeath(mediaBrowserServiceCompat$ConnectionRecord, 0);
        } catch (RemoteException unused) {
            Log.w("MBServiceCompat", "IBinder is already dead.");
        }
    }
}
