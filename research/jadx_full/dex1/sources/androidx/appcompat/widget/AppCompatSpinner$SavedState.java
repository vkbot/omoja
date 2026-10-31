package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.view.View$BaseSavedState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatSpinner$SavedState extends View$BaseSavedState {
    public static final Parcelable$Creator<AppCompatSpinner$SavedState> CREATOR = new AppCompatSpinner$SavedState$1();
    boolean mShowDropdown;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatSpinner$SavedState(Parcel parcel) {
        super(parcel);
        this.mShowDropdown = parcel.readByte() != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeByte(this.mShowDropdown ? (byte) 1 : (byte) 0);
    }

    public AppCompatSpinner$SavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
