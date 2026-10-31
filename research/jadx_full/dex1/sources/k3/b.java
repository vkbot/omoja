package k3;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.support.v4.media.g;
import android.view.View$BaseSavedState;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends View$BaseSavedState {

    @NonNull
    public static final Parcelable$Creator<b> CREATOR = new g(9);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3172b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("MaterialCheckBox.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" CheckedState=");
        int i9 = this.f3172b;
        if (i9 != 1) {
            str = i9 != 2 ? "unchecked" : "indeterminate";
        } else {
            str = "checked";
        }
        return ai.onnxruntime.a.p(sb, str, "}");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeValue(Integer.valueOf(this.f3172b));
    }
}
