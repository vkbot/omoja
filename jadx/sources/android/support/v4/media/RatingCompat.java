package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new C0089g(3);

    /* JADX INFO: renamed from: b */
    public final int f175b;

    /* JADX INFO: renamed from: c */
    public final float f176c;

    public RatingCompat(int i10, float f8) {
        this.f175b = i10;
        this.f176c = f8;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f175b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.f175b);
        sb.append(" rating=");
        float f8 = this.f176c;
        sb.append(f8 < 0.0f ? "unrated" : String.valueOf(f8));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f175b);
        parcel.writeFloat(this.f176c);
    }
}
