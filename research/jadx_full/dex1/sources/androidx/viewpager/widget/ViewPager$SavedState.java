package androidx.viewpager.widget;

import ai.onnxruntime.a;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import androidx.annotation.NonNull;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager$SavedState extends AbsSavedState {
    public static final Parcelable$Creator<ViewPager$SavedState> CREATOR = new ViewPager$SavedState$1();
    Parcelable adapterState;
    ClassLoader loader;
    int position;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
        this.position = parcel.readInt();
        this.adapterState = parcel.readParcelable(classLoader);
        this.loader = classLoader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentPager.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" position=");
        return a.o(sb, "}", this.position);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeInt(this.position);
        parcel.writeParcelable(this.adapterState, i9);
    }

    public ViewPager$SavedState(@NonNull Parcelable parcelable) {
        super(parcelable);
    }
}
