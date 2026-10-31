package androidx.media;

import android.os.Bundle;
import android.os.Parcel;
import androidx.annotation.RequiresApi;
import j1.i;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 extends MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 {
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaBrowserServiceCompat$MediaBrowserServiceImplApi26(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        super(mediaBrowserServiceCompat);
        this.this$0 = mediaBrowserServiceCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public Bundle getBrowserRootHints() {
        MediaBrowserServiceCompat mediaBrowserServiceCompat = this.this$0;
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = mediaBrowserServiceCompat.mCurConnection;
        if (mediaBrowserServiceCompat$ConnectionRecord == null) {
            i.l("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
            return null;
        }
        if (mediaBrowserServiceCompat$ConnectionRecord == mediaBrowserServiceCompat.mConnectionFromFwk) {
            return this.mServiceFwk.getBrowserRootHints();
        }
        if (mediaBrowserServiceCompat$ConnectionRecord.rootHints == null) {
            return null;
        }
        return new Bundle(this.this$0.mCurConnection.rootHints);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21
    public void notifyChildrenChangedForFramework(String str, Bundle bundle) {
        if (bundle != null) {
            this.mServiceFwk.notifyChildrenChanged(str, bundle);
        } else {
            super.notifyChildrenChangedForFramework(str, bundle);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi23, androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void onCreate() {
        MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26 mediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26 = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26(this, this.this$0);
        this.mServiceFwk = mediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26;
        mediaBrowserServiceCompat$MediaBrowserServiceImplApi26$MediaBrowserServiceApi26.onCreate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onLoadChildren(String str, MediaBrowserServiceCompat$ResultWrapper<List<Parcel>> mediaBrowserServiceCompat$ResultWrapper, Bundle bundle) {
        MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1 mediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1 = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1(this, str, mediaBrowserServiceCompat$ResultWrapper, bundle);
        MediaBrowserServiceCompat mediaBrowserServiceCompat = this.this$0;
        mediaBrowserServiceCompat.mCurConnection = mediaBrowserServiceCompat.mConnectionFromFwk;
        mediaBrowserServiceCompat.onLoadChildren(str, mediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1, bundle);
        this.this$0.mCurConnection = null;
    }
}
