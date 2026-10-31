package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r implements Comparable, Parcelable {
    public static final Parcelable$Creator<r> CREATOR = new android.support.v4.media.g(7);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Calendar f1283b;
    public final int c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1284f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f1285g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f1286h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarA = a0.a(calendar);
        this.f1283b = calendarA;
        this.c = calendarA.get(2);
        this.d = calendarA.get(1);
        this.e = calendarA.getMaximum(7);
        this.f1284f = calendarA.getActualMaximum(5);
        this.f1285g = calendarA.getTimeInMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static r q(int i9, int i10) {
        Calendar calendarC = a0.c(null);
        calendarC.set(1, i9);
        calendarC.set(2, i10);
        return new r(calendarC);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static r r(long j9) {
        Calendar calendarC = a0.c(null);
        calendarC.setTimeInMillis(j9);
        return new r(calendarC);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f1283b.compareTo(((r) obj).f1283b);
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
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.c == rVar.c && this.d == rVar.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.d)});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String s() {
        if (this.f1286h == null) {
            long timeInMillis = this.f1283b.getTimeInMillis();
            Locale locale = Locale.getDefault();
            AtomicReference atomicReference = a0.f1234a;
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
            instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
            instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
            this.f1286h = instanceForSkeleton.format(new Date(timeInMillis));
        }
        return this.f1286h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int t(r rVar) {
        if (this.f1283b instanceof GregorianCalendar) {
            return (rVar.c - this.c) + ((rVar.d - this.d) * 12);
        }
        j1.i.k("Only Gregorian calendars are supported.");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.d);
        parcel.writeInt(this.c);
    }
}
