package androidx.appcompat.widget;

import android.os.Parcel;
import android.os.Parcelable$ClassLoaderCreator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SearchView$SavedState$1 implements Parcelable$ClassLoaderCreator<SearchView$SavedState> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable$Creator
    public SearchView$SavedState createFromParcel(Parcel parcel) {
        return new SearchView$SavedState(parcel, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ Object[] newArray(int i9) {
        return newArray(i9);
    }

    @Override // android.os.Parcelable$Creator
    public SearchView$SavedState[] newArray(int i9) {
        return new SearchView$SavedState[i9];
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.os.Parcelable$ClassLoaderCreator
    public /* bridge */ /* synthetic */ SearchView$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return createFromParcel(parcel, classLoader);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$ClassLoaderCreator
    public SearchView$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new SearchView$SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }
}
