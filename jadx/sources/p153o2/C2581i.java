package p153o2;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0089g;

/* JADX INFO: renamed from: o2.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2581i implements Parcelable {
    public static final Parcelable.Creator<C2581i> CREATOR = new C0089g(12);

    /* JADX INFO: renamed from: b */
    public int f7195b;

    /* JADX INFO: renamed from: c */
    public int f7196c;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "SavedState{mAnchorPosition=" + this.f7195b + ", mAnchorOffset=" + this.f7196c + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f7195b);
        parcel.writeInt(this.f7196c);
    }
}
