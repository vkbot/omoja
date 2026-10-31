package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.v4.media.MediaDescriptionCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class MediaSessionCompat$QueueItem implements Parcelable {
    public static final Parcelable$Creator<MediaSessionCompat$QueueItem> CREATOR = new g(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaDescriptionCompat f83b;
    public final long c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaSessionCompat$QueueItem(Parcel parcel) {
        this.f83b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        this.c = parcel.readLong();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaSession.QueueItem {Description=");
        sb.append(this.f83b);
        sb.append(", Id=");
        return ai.onnxruntime.a.n(sb, this.c, " }");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        this.f83b.writeToParcel(parcel, i9);
        parcel.writeLong(this.c);
    }
}
