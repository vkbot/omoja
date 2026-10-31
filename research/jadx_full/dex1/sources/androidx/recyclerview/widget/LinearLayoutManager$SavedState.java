package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class LinearLayoutManager$SavedState implements Parcelable {
    public static final Parcelable$Creator<LinearLayoutManager$SavedState> CREATOR = new LinearLayoutManager$SavedState$1();
    boolean mAnchorLayoutFromEnd;
    int mAnchorOffset;
    int mAnchorPosition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearLayoutManager$SavedState(Parcel parcel) {
        this.mAnchorPosition = parcel.readInt();
        this.mAnchorOffset = parcel.readInt();
        this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasValidAnchor() {
        return this.mAnchorPosition >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateAnchor() {
        this.mAnchorPosition = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.mAnchorPosition);
        parcel.writeInt(this.mAnchorOffset);
        parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
    }

    public LinearLayoutManager$SavedState() {
    }

    public LinearLayoutManager$SavedState(LinearLayoutManager$SavedState linearLayoutManager$SavedState) {
        this.mAnchorPosition = linearLayoutManager$SavedState.mAnchorPosition;
        this.mAnchorOffset = linearLayoutManager$SavedState.mAnchorOffset;
        this.mAnchorLayoutFromEnd = linearLayoutManager$SavedState.mAnchorLayoutFromEnd;
    }
}
