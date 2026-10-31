package androidx.media;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 this$1;
    final /* synthetic */ Bundle val$options;
    final /* synthetic */ String val$parentId;
    final /* synthetic */ MediaSessionManager$RemoteUserInfo val$remoteUserInfo;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4(MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 mediaBrowserServiceCompat$MediaBrowserServiceImplApi21, MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo, String str, Bundle bundle) {
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
        this.val$remoteUserInfo = mediaSessionManager$RemoteUserInfo;
        this.val$parentId = str;
        this.val$options = bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        for (int i9 = 0; i9 < this.this$1.this$0.mConnections.getSize(); i9++) {
            MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecordValueAt = this.this$1.this$0.mConnections.valueAt(i9);
            if (mediaBrowserServiceCompat$ConnectionRecordValueAt.browserInfo.equals(this.val$remoteUserInfo)) {
                this.this$1.notifyChildrenChangedForCompatOnHandler(mediaBrowserServiceCompat$ConnectionRecordValueAt, this.val$parentId, this.val$options);
            }
        }
    }
}
