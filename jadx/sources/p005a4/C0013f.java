package p005a4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* JADX INFO: renamed from: a4.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0013f extends AbsSavedState {
    public static final Parcelable.Creator<C0013f> CREATOR = new C0012e(0);

    /* JADX INFO: renamed from: b */
    public final int f57b;

    public C0013f(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f57b = parcel.readInt();
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f57b);
    }

    public C0013f(Parcelable parcelable, SideSheetBehavior sideSheetBehavior) {
        super(parcelable);
        this.f57b = sideSheetBehavior.f2410h;
    }
}
