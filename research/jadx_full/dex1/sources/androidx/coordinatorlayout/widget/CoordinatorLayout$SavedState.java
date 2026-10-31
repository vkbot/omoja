package androidx.coordinatorlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.util.SparseArray;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CoordinatorLayout$SavedState extends AbsSavedState {
    public static final Parcelable$Creator<CoordinatorLayout$SavedState> CREATOR = new CoordinatorLayout$SavedState$1();
    SparseArray<Parcelable> behaviorStates;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CoordinatorLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i9 = parcel.readInt();
        int[] iArr = new int[i9];
        parcel.readIntArray(iArr);
        Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        this.behaviorStates = new SparseArray<>(i9);
        for (int i10 = 0; i10 < i9; i10++) {
            this.behaviorStates.append(iArr[i10], parcelableArray[i10]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        SparseArray<Parcelable> sparseArray = this.behaviorStates;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = this.behaviorStates.keyAt(i10);
            parcelableArr[i10] = this.behaviorStates.valueAt(i10);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i9);
    }

    public CoordinatorLayout$SavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
