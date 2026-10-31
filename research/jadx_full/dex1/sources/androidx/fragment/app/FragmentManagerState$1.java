package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable$Creator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManagerState$1 implements Parcelable$Creator<FragmentManagerState> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public FragmentManagerState createFromParcel(Parcel parcel) {
        return new FragmentManagerState(parcel);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object[]' to match base method */
    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ FragmentManagerState[] newArray(int i9) {
        return newArray(i9);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public FragmentManagerState[] newArray(int i9) {
        return new FragmentManagerState[i9];
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ FragmentManagerState createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }
}
