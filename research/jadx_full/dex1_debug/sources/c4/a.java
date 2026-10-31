package c4;

import a4.e;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import androidx.collection.SimpleArrayMap;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends AbsSavedState {
    public static final Parcelable$Creator<a> CREATOR = new e(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SimpleArrayMap f490b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i9 = parcel.readInt();
        String[] strArr = new String[i9];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[i9];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f490b = new SimpleArrayMap(i9);
        for (int i10 = 0; i10 < i9; i10++) {
            this.f490b.put(strArr[i10], bundleArr[i10]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f490b + "}";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        SimpleArrayMap simpleArrayMap = this.f490b;
        int size = simpleArrayMap.getSize();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i10 = 0; i10 < size; i10++) {
            strArr[i10] = (String) simpleArrayMap.keyAt(i10);
            bundleArr[i10] = (Bundle) simpleArrayMap.valueAt(i10);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    public a(Parcelable parcelable) {
        super(parcelable);
        this.f490b = new SimpleArrayMap();
    }
}
