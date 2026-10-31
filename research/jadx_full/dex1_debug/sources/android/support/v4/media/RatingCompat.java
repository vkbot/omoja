package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable$Creator<RatingCompat> CREATOR = new g(3);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f69b;
    public final float c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RatingCompat(int i9, float f8) {
        this.f69b = i9;
        this.c = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f69b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.f69b);
        sb.append(" rating=");
        float f8 = this.c;
        sb.append(f8 < 0.0f ? "unrated" : String.valueOf(f8));
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f69b);
        parcel.writeFloat(this.c);
    }
}
