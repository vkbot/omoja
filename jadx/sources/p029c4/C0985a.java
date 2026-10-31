package p029c4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.SimpleArrayMap;
import androidx.customview.view.AbsSavedState;
import p005a4.C0012e;

/* JADX INFO: renamed from: c4.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0985a extends AbsSavedState {
    public static final Parcelable.Creator<C0985a> CREATOR = new C0012e(1);

    /* JADX INFO: renamed from: b */
    public final SimpleArrayMap f934b;

    public C0985a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i10 = parcel.readInt();
        String[] strArr = new String[i10];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[i10];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f934b = new SimpleArrayMap(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.f934b.put(strArr[i11], bundleArr[i11]);
        }
    }

    public final String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f934b + "}";
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        SimpleArrayMap simpleArrayMap = this.f934b;
        int size = simpleArrayMap.getSize();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i11 = 0; i11 < size; i11++) {
            strArr[i11] = (String) simpleArrayMap.keyAt(i11);
            bundleArr[i11] = (Bundle) simpleArrayMap.valueAt(i11);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    public C0985a(Parcelable parcelable) {
        super(parcelable);
        this.f934b = new SimpleArrayMap();
    }
}
