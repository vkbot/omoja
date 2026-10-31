package androidx.media;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.media.session.MediaSessionCompat$Token;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface MediaBrowserServiceCompat$MediaBrowserServiceImpl {
    Bundle getBrowserRootHints();

    MediaSessionManager$RemoteUserInfo getCurrentBrowserInfo();

    void notifyChildrenChanged(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo, String str, Bundle bundle);

    void notifyChildrenChanged(String str, Bundle bundle);

    IBinder onBind(Intent intent);

    void onCreate();

    void setSessionToken(MediaSessionCompat$Token mediaSessionCompat$Token);
}
