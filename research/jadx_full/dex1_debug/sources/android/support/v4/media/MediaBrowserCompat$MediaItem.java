package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserCompat$MediaItem implements Parcelable {
    public static final Parcelable$Creator<MediaBrowserCompat$MediaItem> CREATOR = new g(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f61b;
    public final MediaDescriptionCompat c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaBrowserCompat$MediaItem(Parcel parcel) {
        this.f61b = parcel.readInt();
        this.c = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "MediaItem{mFlags=" + this.f61b + ", mDescription=" + this.c + '}';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f61b);
        this.c.writeToParcel(parcel, i9);
    }
}
