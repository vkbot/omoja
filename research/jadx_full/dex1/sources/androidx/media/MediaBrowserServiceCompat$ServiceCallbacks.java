package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import android.support.v4.media.session.MediaSessionCompat$Token;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface MediaBrowserServiceCompat$ServiceCallbacks {
    IBinder asBinder();

    void onConnect(String str, MediaSessionCompat$Token mediaSessionCompat$Token, Bundle bundle);

    void onConnectFailed();

    void onLoadChildren(String str, List<MediaBrowserCompat$MediaItem> list, Bundle bundle, Bundle bundle2);
}
