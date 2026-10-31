package a4;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends AbsSavedState {
    public static final Parcelable$Creator<f> CREATOR = new e(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f33b = parcel.readInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeInt(this.f33b);
    }

    public f(Parcelable parcelable, SideSheetBehavior sideSheetBehavior) {
        super(parcelable);
        this.f33b = sideSheetBehavior.f1342h;
    }
}
