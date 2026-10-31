package p051e4;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.customview.view.AbsSavedState;
import p005a4.C0012e;

/* JADX INFO: renamed from: e4.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1470c0 extends AbsSavedState {
    public static final Parcelable.Creator<C1470c0> CREATOR = new C0012e(2);

    /* JADX INFO: renamed from: b */
    public CharSequence f3560b;

    /* JADX INFO: renamed from: c */
    public boolean f3561c;

    public C1470c0(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f3560b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3561c = parcel.readInt() == 1;
    }

    public final String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f3560b) + "}";
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        TextUtils.writeToParcel(this.f3560b, parcel, i10);
        parcel.writeInt(this.f3561c ? 1 : 0);
    }
}
