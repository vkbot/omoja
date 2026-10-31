package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class FragmentManagerState implements Parcelable {
    public static final Parcelable$Creator<FragmentManagerState> CREATOR = new FragmentManagerState$1();
    ArrayList<String> mActive;
    ArrayList<String> mAdded;
    BackStackRecordState[] mBackStack;
    int mBackStackIndex;
    ArrayList<String> mBackStackStateKeys;
    ArrayList<BackStackState> mBackStackStates;
    ArrayList<FragmentManager$LaunchedFragmentInfo> mLaunchedFragments;
    String mPrimaryNavActiveWho;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentManagerState(Parcel parcel) {
        this.mPrimaryNavActiveWho = null;
        this.mBackStackStateKeys = new ArrayList<>();
        this.mBackStackStates = new ArrayList<>();
        this.mActive = parcel.createStringArrayList();
        this.mAdded = parcel.createStringArrayList();
        this.mBackStack = (BackStackRecordState[]) parcel.createTypedArray(BackStackRecordState.CREATOR);
        this.mBackStackIndex = parcel.readInt();
        this.mPrimaryNavActiveWho = parcel.readString();
        this.mBackStackStateKeys = parcel.createStringArrayList();
        this.mBackStackStates = parcel.createTypedArrayList(BackStackState.CREATOR);
        this.mLaunchedFragments = parcel.createTypedArrayList(FragmentManager$LaunchedFragmentInfo.CREATOR);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeStringList(this.mActive);
        parcel.writeStringList(this.mAdded);
        parcel.writeTypedArray(this.mBackStack, i9);
        parcel.writeInt(this.mBackStackIndex);
        parcel.writeString(this.mPrimaryNavActiveWho);
        parcel.writeStringList(this.mBackStackStateKeys);
        parcel.writeTypedList(this.mBackStackStates);
        parcel.writeTypedList(this.mLaunchedFragments);
    }

    public FragmentManagerState() {
        this.mPrimaryNavActiveWho = null;
        this.mBackStackStateKeys = new ArrayList<>();
        this.mBackStackStates = new ArrayList<>();
    }
}
