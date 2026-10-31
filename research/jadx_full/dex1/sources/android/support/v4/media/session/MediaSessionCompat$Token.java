package android.support.v4.media.session;

import android.media.session.MediaSession$Token;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import androidx.versionedparcelable.VersionedParcelable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class MediaSessionCompat$Token implements Parcelable {
    public static final Parcelable$Creator<MediaSessionCompat$Token> CREATOR = new g(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f85b = new Object();
    public final Object c;
    public c d;
    public VersionedParcelable e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaSessionCompat$Token(Object obj, c cVar) {
        this.c = obj;
        this.d = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MediaSessionCompat$Token q(Parcelable parcelable, c cVar) {
        if (parcelable == null) {
            return null;
        }
        if (parcelable instanceof MediaSession$Token) {
            return new MediaSessionCompat$Token(parcelable, cVar);
        }
        j1.i.k("token is not a valid MediaSession.Token object");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionCompat$Token)) {
            return false;
        }
        Object obj2 = ((MediaSessionCompat$Token) obj).c;
        Object obj3 = this.c;
        if (obj3 == null) {
            return obj2 == null;
        }
        if (obj2 == null) {
            return false;
        }
        return obj3.equals(obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        Object obj = this.c;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final c r() {
        c cVar;
        synchronized (this.f85b) {
            cVar = this.d;
        }
        return cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable((Parcelable) this.c, i9);
    }
}
