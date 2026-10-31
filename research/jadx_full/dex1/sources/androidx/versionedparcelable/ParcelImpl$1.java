package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable$Creator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ParcelImpl$1 implements Parcelable$Creator<ParcelImpl> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public ParcelImpl createFromParcel(Parcel parcel) {
        return new ParcelImpl(parcel);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ ParcelImpl[] newArray(int i9) {
        return newArray(i9);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public ParcelImpl[] newArray(int i9) {
        return new ParcelImpl[i9];
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ ParcelImpl createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }
}
