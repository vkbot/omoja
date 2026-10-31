package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new C0101g(3);

    /* JADX INFO: renamed from: b */
    public int f203b;

    /* JADX INFO: renamed from: c */
    public int f204c;

    /* JADX INFO: renamed from: d */
    public int f205d;

    /* JADX INFO: renamed from: e */
    public int f206e;

    /* JADX INFO: renamed from: f */
    public int f207f;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f203b);
        parcel.writeInt(this.f205d);
        parcel.writeInt(this.f206e);
        parcel.writeInt(this.f207f);
        parcel.writeInt(this.f204c);
    }
}
