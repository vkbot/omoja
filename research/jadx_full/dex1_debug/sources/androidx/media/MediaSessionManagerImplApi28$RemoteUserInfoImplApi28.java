package androidx.media;

import androidx.annotation.RequiresApi;
import androidx.core.view.accessibility.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public final class MediaSessionManagerImplApi28$RemoteUserInfoImplApi28 extends MediaSessionManagerImplBase$RemoteUserInfoImplBase {
    final android.media.session.MediaSessionManager$RemoteUserInfo mObject;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(android.media.session.MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
        super(a.k(mediaSessionManager$RemoteUserInfo), a.a(mediaSessionManager$RemoteUserInfo), a.u(mediaSessionManager$RemoteUserInfo));
        this.mObject = mediaSessionManager$RemoteUserInfo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getPackageName(android.media.session.MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
        return a.k(mediaSessionManager$RemoteUserInfo);
    }

    public MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(String str, int i9, int i10) {
        super(str, i9, i10);
        this.mObject = a.d(i9, i10, str);
    }
}
