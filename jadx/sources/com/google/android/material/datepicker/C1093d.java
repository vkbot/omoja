package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0089g;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.material.datepicker.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1093d implements Parcelable {
    public static final Parcelable.Creator<C1093d> CREATOR = new C0089g(6);

    /* JADX INFO: renamed from: b */
    public final long f2265b;

    public C1093d(long j10) {
        this.f2265b = j10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1093d) && this.f2265b == ((C1093d) obj).f2265b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f2265b)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f2265b);
    }
}
