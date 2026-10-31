package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class RecyclerView$SavedState extends AbsSavedState {
    public static final Parcelable$Creator<RecyclerView$SavedState> CREATOR = new RecyclerView$SavedState$1();
    Parcelable mLayoutState;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.mLayoutState = parcel.readParcelable(classLoader == null ? RecyclerView$LayoutManager.class.getClassLoader() : classLoader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void copyFrom(RecyclerView$SavedState recyclerView$SavedState) {
        this.mLayoutState = recyclerView$SavedState.mLayoutState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeParcelable(this.mLayoutState, 0);
    }

    public RecyclerView$SavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
