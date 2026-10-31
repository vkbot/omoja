package androidx.slidingpanelayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SlidingPaneLayout$SavedState extends AbsSavedState {
    public static final Parcelable$Creator<SlidingPaneLayout$SavedState> CREATOR = new SlidingPaneLayout$SavedState$1();
    boolean isOpen;
    int mLockMode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SlidingPaneLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.isOpen = parcel.readInt() != 0;
        this.mLockMode = parcel.readInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeInt(this.isOpen ? 1 : 0);
        parcel.writeInt(this.mLockMode);
    }

    public SlidingPaneLayout$SavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
