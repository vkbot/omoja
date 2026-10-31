package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MediaBrowserCompat$MediaItem implements Parcelable {
    public static final Parcelable.Creator<MediaBrowserCompat$MediaItem> CREATOR = new C0089g(0);

    /* JADX INFO: renamed from: b */
    public final int f163b;

    /* JADX INFO: renamed from: c */
    public final MediaDescriptionCompat f164c;

    public MediaBrowserCompat$MediaItem(Parcel parcel) {
        this.f163b = parcel.readInt();
        this.f164c = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "MediaItem{mFlags=" + this.f163b + ", mDescription=" + this.f164c + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f163b);
        this.f164c.writeToParcel(parcel, i10);
    }
}
