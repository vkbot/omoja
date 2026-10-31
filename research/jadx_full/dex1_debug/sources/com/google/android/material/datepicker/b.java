package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import androidx.core.util.ObjectsCompat;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements Parcelable {
    public static final Parcelable$Creator<b> CREATOR = new android.support.v4.media.g(5);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f1235b;
    public final r c;
    public final d d;
    public final r e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1236f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1237g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1238h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(r rVar, r rVar2, d dVar, r rVar3, int i9) {
        Objects.requireNonNull(rVar, "start cannot be null");
        Objects.requireNonNull(rVar2, "end cannot be null");
        Objects.requireNonNull(dVar, "validator cannot be null");
        this.f1235b = rVar;
        this.c = rVar2;
        this.e = rVar3;
        this.f1236f = i9;
        this.d = dVar;
        if (rVar3 != null && rVar.f1283b.compareTo(rVar3.f1283b) > 0) {
            j1.i.k("start Month cannot be after current Month");
            throw null;
        }
        if (rVar3 != null && rVar3.f1283b.compareTo(rVar2.f1283b) > 0) {
            j1.i.k("current Month cannot be after end Month");
            throw null;
        }
        if (i9 < 0 || i9 > a0.c(null).getMaximum(7)) {
            j1.i.k("firstDayOfWeek is not valid");
            throw null;
        }
        this.f1238h = rVar.t(rVar2) + 1;
        this.f1237g = (rVar2.d - rVar.d) + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f1235b.equals(bVar.f1235b) && this.c.equals(bVar.c) && ObjectsCompat.equals(this.e, bVar.e) && this.f1236f == bVar.f1236f && this.d.equals(bVar.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1235b, this.c, this.e, Integer.valueOf(this.f1236f), this.d});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.f1235b, 0);
        parcel.writeParcelable(this.c, 0);
        parcel.writeParcelable(this.e, 0);
        parcel.writeParcelable(this.d, 0);
        parcel.writeInt(this.f1236f);
    }
}
