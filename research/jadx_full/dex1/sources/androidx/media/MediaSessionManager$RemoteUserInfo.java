package androidx.media;

import android.os.Build$VERSION;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import j1.i;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class MediaSessionManager$RemoteUserInfo {
    public static final String LEGACY_CONTROLLER = "android.media.session.MediaController";

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static final int UNKNOWN_PID = -1;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static final int UNKNOWN_UID = -1;
    MediaSessionManager$RemoteUserInfoImpl mImpl;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaSessionManager$RemoteUserInfo(@NonNull String str, int i9, int i10) {
        if (str == null) {
            b.n("package shouldn't be null");
            throw null;
        }
        if (TextUtils.isEmpty(str)) {
            i.k("packageName should be nonempty");
            throw null;
        }
        if (Build$VERSION.SDK_INT >= 28) {
            this.mImpl = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(str, i9, i10);
        } else {
            this.mImpl = new MediaSessionManagerImplBase$RemoteUserInfoImplBase(str, i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MediaSessionManager$RemoteUserInfo) {
            return this.mImpl.equals(((MediaSessionManager$RemoteUserInfo) obj).mImpl);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String getPackageName() {
        return this.mImpl.getPackageName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPid() {
        return this.mImpl.getPid();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getUid() {
        return this.mImpl.getUid();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.mImpl.hashCode();
    }

    @RequiresApi(28)
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public MediaSessionManager$RemoteUserInfo(android.media.session.MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
        String packageName = MediaSessionManagerImplApi28$RemoteUserInfoImplApi28.getPackageName(mediaSessionManager$RemoteUserInfo);
        if (packageName != null) {
            if (!TextUtils.isEmpty(packageName)) {
                this.mImpl = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(mediaSessionManager$RemoteUserInfo);
                return;
            } else {
                i.k("packageName should be nonempty");
                throw null;
            }
        }
        b.n("package shouldn't be null");
        throw null;
    }
}
