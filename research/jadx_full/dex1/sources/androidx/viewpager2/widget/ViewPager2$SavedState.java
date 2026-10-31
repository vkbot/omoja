package androidx.viewpager2.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.view.View$BaseSavedState;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager2$SavedState extends View$BaseSavedState {
    public static final Parcelable$Creator<ViewPager2$SavedState> CREATOR = new ViewPager2$SavedState$1();
    Parcelable mAdapterState;
    int mCurrentItem;
    int mRecyclerViewId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager2$SavedState(Parcel parcel) {
        super(parcel);
        readValues(parcel, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void readValues(Parcel parcel, ClassLoader classLoader) {
        this.mRecyclerViewId = parcel.readInt();
        this.mCurrentItem = parcel.readInt();
        this.mAdapterState = parcel.readParcelable(classLoader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeInt(this.mRecyclerViewId);
        parcel.writeInt(this.mCurrentItem);
        parcel.writeParcelable(this.mAdapterState, i9);
    }

    @RequiresApi(24)
    public ViewPager2$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        readValues(parcel, classLoader);
    }

    public ViewPager2$SavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
