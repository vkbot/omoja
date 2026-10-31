package p112k3;

import ai.onnxruntime.AbstractC0074a;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0089g;
import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: renamed from: k3.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2040b extends View.BaseSavedState {

    @NonNull
    public static final Parcelable.Creator<C2040b> CREATOR = new C0089g(9);

    /* JADX INFO: renamed from: b */
    public int f5565b;

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("MaterialCheckBox.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" CheckedState=");
        int i10 = this.f5565b;
        if (i10 != 1) {
            str = i10 != 2 ? "unchecked" : "indeterminate";
        } else {
            str = "checked";
        }
        return AbstractC0074a.m165p(sb, str, "}");
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeValue(Integer.valueOf(this.f5565b));
    }
}
