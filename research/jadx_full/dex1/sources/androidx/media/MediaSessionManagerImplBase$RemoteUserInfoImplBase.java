package androidx.media;

import android.text.TextUtils;
import androidx.core.util.ObjectsCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaSessionManagerImplBase$RemoteUserInfoImplBase implements MediaSessionManager$RemoteUserInfoImpl {
    private String mPackageName;
    private int mPid;
    private int mUid;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaSessionManagerImplBase$RemoteUserInfoImplBase(String str, int i9, int i10) {
        this.mPackageName = str;
        this.mPid = i9;
        this.mUid = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionManagerImplBase$RemoteUserInfoImplBase)) {
            return false;
        }
        MediaSessionManagerImplBase$RemoteUserInfoImplBase mediaSessionManagerImplBase$RemoteUserInfoImplBase = (MediaSessionManagerImplBase$RemoteUserInfoImplBase) obj;
        if (this.mPid < 0 || mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPid < 0) {
            return TextUtils.equals(this.mPackageName, mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPackageName) && this.mUid == mediaSessionManagerImplBase$RemoteUserInfoImplBase.mUid;
        }
        return TextUtils.equals(this.mPackageName, mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPackageName) && this.mPid == mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPid && this.mUid == mediaSessionManagerImplBase$RemoteUserInfoImplBase.mUid;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaSessionManager$RemoteUserInfoImpl
    public String getPackageName() {
        return this.mPackageName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaSessionManager$RemoteUserInfoImpl
    public int getPid() {
        return this.mPid;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaSessionManager$RemoteUserInfoImpl
    public int getUid() {
        return this.mUid;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return ObjectsCompat.hash(this.mPackageName, Integer.valueOf(this.mUid));
    }
}
