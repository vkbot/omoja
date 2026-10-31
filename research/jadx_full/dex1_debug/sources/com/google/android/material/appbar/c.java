package com.google.android.material.appbar;

import android.os.Parcel;
import android.os.Parcelable$ClassLoaderCreator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements Parcelable$ClassLoaderCreator {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable$Creator
    public final Object createFromParcel(Parcel parcel) {
        return new d(parcel, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable$Creator
    public final Object[] newArray(int i9) {
        return new d[i9];
    }

    @Override // android.os.Parcelable$ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new d(parcel, classLoader);
    }
}
