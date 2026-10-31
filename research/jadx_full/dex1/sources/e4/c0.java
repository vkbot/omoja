package e4;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.text.TextUtils;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c0 extends AbsSavedState {
    public static final Parcelable$Creator<c0> CREATOR = new a4.e(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CharSequence f2044b;
    public boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c0(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2044b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.c = parcel.readInt() == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f2044b) + "}";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        TextUtils.writeToParcel(this.f2044b, parcel, i9);
        parcel.writeInt(this.c ? 1 : 0);
    }
}
