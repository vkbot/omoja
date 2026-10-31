package android.support.v4.media.session;

import android.media.session.MediaSession;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcelable;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class MediaSessionCompat$Token implements Parcelable {
    public static final Parcelable.Creator<MediaSessionCompat$Token> CREATOR = new C0101g(2);

    /* JADX INFO: renamed from: b */
    public final Object f199b = new Object();

    /* JADX INFO: renamed from: c */
    public final Object f200c;

    /* JADX INFO: renamed from: d */
    public InterfaceC0097c f201d;

    /* JADX INFO: renamed from: e */
    public VersionedParcelable f202e;

    public MediaSessionCompat$Token(Object obj, InterfaceC0097c interfaceC0097c) {
        this.f200c = obj;
        this.f201d = interfaceC0097c;
    }

    /* JADX INFO: renamed from: q */
    public static MediaSessionCompat$Token m274q(Parcelable parcelable, InterfaceC0097c interfaceC0097c) {
        if (parcelable == null) {
            return null;
        }
        if (parcelable instanceof MediaSession.Token) {
            return new MediaSessionCompat$Token(parcelable, interfaceC0097c);
        }
        C1929i.m3029k("token is not a valid MediaSession.Token object");
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionCompat$Token)) {
            return false;
        }
        Object obj2 = ((MediaSessionCompat$Token) obj).f200c;
        Object obj3 = this.f200c;
        if (obj3 == null) {
            return obj2 == null;
        }
        if (obj2 == null) {
            return false;
        }
        return obj3.equals(obj2);
    }

    public final int hashCode() {
        Object obj = this.f200c;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: r */
    public final InterfaceC0097c m275r() {
        InterfaceC0097c interfaceC0097c;
        synchronized (this.f199b) {
            interfaceC0097c = this.f201d;
        }
        return interfaceC0097c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable((Parcelable) this.f200c, i10);
    }
}
