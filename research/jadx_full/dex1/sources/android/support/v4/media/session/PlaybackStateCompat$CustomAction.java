package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class PlaybackStateCompat$CustomAction implements Parcelable {
    public static final Parcelable$Creator<PlaybackStateCompat$CustomAction> CREATOR = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f96b;
    public final CharSequence c;
    public final int d;
    public final Bundle e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PlaybackStateCompat$CustomAction(Parcel parcel) {
        this.f96b = parcel.readString();
        this.c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.d = parcel.readInt();
        this.e = parcel.readBundle(h.class.getClassLoader());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "Action:mName='" + ((Object) this.c) + ", mIcon=" + this.d + ", mExtras=" + this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f96b);
        TextUtils.writeToParcel(this.c, parcel, i9);
        parcel.writeInt(this.d);
        parcel.writeBundle(this.e);
    }
}
