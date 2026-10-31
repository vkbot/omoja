package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.material.datepicker.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1088a0 {

    /* JADX INFO: renamed from: a */
    public static final AtomicReference f2253a = new AtomicReference();

    /* JADX INFO: renamed from: a */
    public static Calendar m1798a(Calendar calendar) {
        Calendar calendarM1800c = m1800c(calendar);
        Calendar calendarM1800c2 = m1800c(null);
        calendarM1800c2.set(calendarM1800c.get(1), calendarM1800c.get(2), calendarM1800c.get(5));
        return calendarM1800c2;
    }

    /* JADX INFO: renamed from: b */
    public static Calendar m1799b() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setTimeZone(TimeZone.getTimeZone("UTC"));
        return calendar;
    }

    /* JADX INFO: renamed from: c */
    public static Calendar m1800c(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        if (calendar == null) {
            calendar2.clear();
            return calendar2;
        }
        calendar2.setTimeInMillis(calendar.getTimeInMillis());
        return calendar2;
    }
}
