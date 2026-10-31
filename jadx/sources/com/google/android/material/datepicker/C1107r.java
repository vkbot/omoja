package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0089g;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
import p099j1.C1929i;

/* JADX INFO: renamed from: com.google.android.material.datepicker.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1107r implements Comparable, Parcelable {
    public static final Parcelable.Creator<C1107r> CREATOR = new C0089g(7);

    /* JADX INFO: renamed from: b */
    public final Calendar f2326b;

    /* JADX INFO: renamed from: c */
    public final int f2327c;

    /* JADX INFO: renamed from: d */
    public final int f2328d;

    /* JADX INFO: renamed from: e */
    public final int f2329e;

    /* JADX INFO: renamed from: f */
    public final int f2330f;

    /* JADX INFO: renamed from: g */
    public final long f2331g;

    /* JADX INFO: renamed from: h */
    public String f2332h;

    public C1107r(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarM1798a = AbstractC1088a0.m1798a(calendar);
        this.f2326b = calendarM1798a;
        this.f2327c = calendarM1798a.get(2);
        this.f2328d = calendarM1798a.get(1);
        this.f2329e = calendarM1798a.getMaximum(7);
        this.f2330f = calendarM1798a.getActualMaximum(5);
        this.f2331g = calendarM1798a.getTimeInMillis();
    }

    /* JADX INFO: renamed from: q */
    public static C1107r m1807q(int i10, int i11) {
        Calendar calendarM1800c = AbstractC1088a0.m1800c(null);
        calendarM1800c.set(1, i10);
        calendarM1800c.set(2, i11);
        return new C1107r(calendarM1800c);
    }

    /* JADX INFO: renamed from: r */
    public static C1107r m1808r(long j10) {
        Calendar calendarM1800c = AbstractC1088a0.m1800c(null);
        calendarM1800c.setTimeInMillis(j10);
        return new C1107r(calendarM1800c);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f2326b.compareTo(((C1107r) obj).f2326b);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1107r)) {
            return false;
        }
        C1107r c1107r = (C1107r) obj;
        return this.f2327c == c1107r.f2327c && this.f2328d == c1107r.f2328d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2327c), Integer.valueOf(this.f2328d)});
    }

    /* JADX INFO: renamed from: s */
    public final String m1809s() {
        if (this.f2332h == null) {
            long timeInMillis = this.f2326b.getTimeInMillis();
            Locale locale = Locale.getDefault();
            AtomicReference atomicReference = AbstractC1088a0.f2253a;
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
            instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
            instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
            this.f2332h = instanceForSkeleton.format(new Date(timeInMillis));
        }
        return this.f2332h;
    }

    /* JADX INFO: renamed from: t */
    public final int m1810t(C1107r c1107r) {
        if (this.f2326b instanceof GregorianCalendar) {
            return (c1107r.f2327c - this.f2327c) + ((c1107r.f2328d - this.f2328d) * 12);
        }
        C1929i.m3029k("Only Gregorian calendars are supported.");
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f2328d);
        parcel.writeInt(this.f2327c);
    }
}
