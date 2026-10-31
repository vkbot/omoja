package p080h3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;
import p005a4.C0012e;

/* JADX INFO: renamed from: h3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1657c extends AbsSavedState {
    public static final Parcelable.Creator<C1657c> CREATOR = new C0012e(4);

    /* JADX INFO: renamed from: b */
    public boolean f4218b;

    public C1657c(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            C1657c.class.getClassLoader();
        }
        this.f4218b = parcel.readInt() == 1;
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f4218b ? 1 : 0);
    }
}
