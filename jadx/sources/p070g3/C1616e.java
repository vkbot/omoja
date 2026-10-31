package p070g3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import p005a4.C0012e;

/* JADX INFO: renamed from: g3.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1616e extends AbsSavedState {
    public static final Parcelable.Creator<C1616e> CREATOR = new C0012e(3);

    /* JADX INFO: renamed from: b */
    public final int f4063b;

    /* JADX INFO: renamed from: c */
    public final int f4064c;

    /* JADX INFO: renamed from: d */
    public final boolean f4065d;

    /* JADX INFO: renamed from: e */
    public final boolean f4066e;

    /* JADX INFO: renamed from: f */
    public final boolean f4067f;

    public C1616e(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f4063b = parcel.readInt();
        this.f4064c = parcel.readInt();
        this.f4065d = parcel.readInt() == 1;
        this.f4066e = parcel.readInt() == 1;
        this.f4067f = parcel.readInt() == 1;
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f4063b);
        parcel.writeInt(this.f4064c);
        parcel.writeInt(this.f4065d ? 1 : 0);
        parcel.writeInt(this.f4066e ? 1 : 0);
        parcel.writeInt(this.f4067f ? 1 : 0);
    }

    public C1616e(Parcelable parcelable, BottomSheetBehavior bottomSheetBehavior) {
        super(parcelable);
        this.f4063b = bottomSheetBehavior.f2136N;
        this.f4064c = bottomSheetBehavior.f2157e;
        this.f4065d = bottomSheetBehavior.f2151b;
        this.f4066e = bottomSheetBehavior.f2131I;
        this.f4067f = bottomSheetBehavior.f2132J;
    }
}
