package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0089g;
import androidx.core.util.ObjectsCompat;
import java.util.Arrays;
import java.util.Objects;
import p099j1.C1929i;

/* JADX INFO: renamed from: com.google.android.material.datepicker.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1089b implements Parcelable {
    public static final Parcelable.Creator<C1089b> CREATOR = new C0089g(5);

    /* JADX INFO: renamed from: b */
    public final C1107r f2254b;

    /* JADX INFO: renamed from: c */
    public final C1107r f2255c;

    /* JADX INFO: renamed from: d */
    public final C1093d f2256d;

    /* JADX INFO: renamed from: e */
    public final C1107r f2257e;

    /* JADX INFO: renamed from: f */
    public final int f2258f;

    /* JADX INFO: renamed from: g */
    public final int f2259g;

    /* JADX INFO: renamed from: h */
    public final int f2260h;

    public C1089b(C1107r c1107r, C1107r c1107r2, C1093d c1093d, C1107r c1107r3, int i10) {
        Objects.requireNonNull(c1107r, "start cannot be null");
        Objects.requireNonNull(c1107r2, "end cannot be null");
        Objects.requireNonNull(c1093d, "validator cannot be null");
        this.f2254b = c1107r;
        this.f2255c = c1107r2;
        this.f2257e = c1107r3;
        this.f2258f = i10;
        this.f2256d = c1093d;
        if (c1107r3 != null && c1107r.f2326b.compareTo(c1107r3.f2326b) > 0) {
            C1929i.m3029k("start Month cannot be after current Month");
            throw null;
        }
        if (c1107r3 != null && c1107r3.f2326b.compareTo(c1107r2.f2326b) > 0) {
            C1929i.m3029k("current Month cannot be after end Month");
            throw null;
        }
        if (i10 < 0 || i10 > AbstractC1088a0.m1800c(null).getMaximum(7)) {
            C1929i.m3029k("firstDayOfWeek is not valid");
            throw null;
        }
        this.f2260h = c1107r.m1810t(c1107r2) + 1;
        this.f2259g = (c1107r2.f2328d - c1107r.f2328d) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1089b)) {
            return false;
        }
        C1089b c1089b = (C1089b) obj;
        return this.f2254b.equals(c1089b.f2254b) && this.f2255c.equals(c1089b.f2255c) && ObjectsCompat.equals(this.f2257e, c1089b.f2257e) && this.f2258f == c1089b.f2258f && this.f2256d.equals(c1089b.f2256d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2254b, this.f2255c, this.f2257e, Integer.valueOf(this.f2258f), this.f2256d});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f2254b, 0);
        parcel.writeParcelable(this.f2255c, 0);
        parcel.writeParcelable(this.f2257e, 0);
        parcel.writeParcelable(this.f2256d, 0);
        parcel.writeInt(this.f2258f);
    }
}
