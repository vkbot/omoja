package androidx.media;

import androidx.annotation.RequiresApi;
import androidx.core.view.accessibility.a;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public class MediaBrowserServiceCompat$MediaBrowserServiceImplApi28 extends MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 {
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaBrowserServiceCompat$MediaBrowserServiceImplApi28(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        super(mediaBrowserServiceCompat);
        this.this$0 = mediaBrowserServiceCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public MediaSessionManager$RemoteUserInfo getCurrentBrowserInfo() {
        MediaBrowserServiceCompat mediaBrowserServiceCompat = this.this$0;
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = mediaBrowserServiceCompat.mCurConnection;
        if (mediaBrowserServiceCompat$ConnectionRecord != null) {
            return mediaBrowserServiceCompat$ConnectionRecord == mediaBrowserServiceCompat.mConnectionFromFwk ? new MediaSessionManager$RemoteUserInfo(a.e(this.mServiceFwk)) : mediaBrowserServiceCompat$ConnectionRecord.browserInfo;
        }
        i.l("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        return null;
    }
}
