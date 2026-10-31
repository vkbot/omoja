package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$LaunchedFragmentInfo implements Parcelable {
    public static final Parcelable$Creator<FragmentManager$LaunchedFragmentInfo> CREATOR = new FragmentManager$LaunchedFragmentInfo$1();
    int mRequestCode;
    String mWho;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentManager$LaunchedFragmentInfo(@NonNull Parcel parcel) {
        this.mWho = parcel.readString();
        this.mRequestCode = parcel.readInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.mWho);
        parcel.writeInt(this.mRequestCode);
    }

    public FragmentManager$LaunchedFragmentInfo(@NonNull String str, int i9) {
        this.mWho = str;
        this.mRequestCode = i9;
    }
}
