package g3;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends AbsSavedState {
    public static final Parcelable$Creator<e> CREATOR = new a4.e(3);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2363b;
    public final int c;
    public final boolean d;
    public final boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2364f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2363b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readInt() == 1;
        this.e = parcel.readInt() == 1;
        this.f2364f = parcel.readInt() == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeInt(this.f2363b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d ? 1 : 0);
        parcel.writeInt(this.e ? 1 : 0);
        parcel.writeInt(this.f2364f ? 1 : 0);
    }

    public e(Parcelable parcelable, BottomSheetBehavior bottomSheetBehavior) {
        super(parcelable);
        this.f2363b = bottomSheetBehavior.N;
        this.c = bottomSheetBehavior.e;
        this.d = bottomSheetBehavior.f1161b;
        this.e = bottomSheetBehavior.I;
        this.f2364f = bottomSheetBehavior.J;
    }
}
