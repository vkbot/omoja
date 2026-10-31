package androidx.media;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.support.v4.media.session.MediaSessionCompat$Token;
import androidx.annotation.NonNull;
import androidx.core.util.Pair;
import j1.i;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$MediaBrowserServiceImplBase implements MediaBrowserServiceCompat$MediaBrowserServiceImpl {
    private Messenger mMessenger;
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaBrowserServiceCompat$MediaBrowserServiceImplBase(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        this.this$0 = mediaBrowserServiceCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public Bundle getBrowserRootHints() {
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = this.this$0.mCurConnection;
        if (mediaBrowserServiceCompat$ConnectionRecord == null) {
            i.l("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
            return null;
        }
        if (mediaBrowserServiceCompat$ConnectionRecord.rootHints == null) {
            return null;
        }
        return new Bundle(this.this$0.mCurConnection.rootHints);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public MediaSessionManager$RemoteUserInfo getCurrentBrowserInfo() {
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = this.this$0.mCurConnection;
        if (mediaBrowserServiceCompat$ConnectionRecord != null) {
            return mediaBrowserServiceCompat$ConnectionRecord.browserInfo;
        }
        i.l("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void notifyChildrenChanged(@NonNull String str, Bundle bundle) {
        this.this$0.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2(this, str, bundle));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyChildrenChangedOnHandler(MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, String str, Bundle bundle) {
        List<Pair<IBinder, Bundle>> list = mediaBrowserServiceCompat$ConnectionRecord.subscriptions.get(str);
        if (list != null) {
            for (Pair<IBinder, Bundle> pair : list) {
                if (MediaBrowserCompatUtils.hasDuplicatedItems(bundle, pair.second)) {
                    this.this$0.performLoadChildren(str, mediaBrowserServiceCompat$ConnectionRecord, pair.second, bundle);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public IBinder onBind(Intent intent) {
        if (MediaBrowserServiceCompat.SERVICE_INTERFACE.equals(intent.getAction())) {
            return this.mMessenger.getBinder();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void onCreate() {
        this.mMessenger = new Messenger(this.this$0.mHandler);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void setSessionToken(MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.this$0.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1(this, mediaSessionCompat$Token));
    }

    @Override // androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void notifyChildrenChanged(@NonNull MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo, @NonNull String str, Bundle bundle) {
        this.this$0.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3(this, mediaSessionManager$RemoteUserInfo, str, bundle));
    }
}
