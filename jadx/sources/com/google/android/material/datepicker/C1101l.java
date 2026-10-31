package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.material.datepicker.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1101l extends RecyclerView.OnScrollListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C1111v f2278a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1103n f2279b;

    public C1101l(C1103n c1103n, C1111v c1111v) {
        this.f2279b = c1103n;
        this.f2278a = c1111v;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        C1089b c1089b = this.f2278a.f2342a;
        C1103n c1103n = this.f2279b;
        RecyclerView recyclerView2 = c1103n.f2288i;
        int iFindFirstVisibleItemPosition = i10 < 0 ? ((LinearLayoutManager) recyclerView2.getLayoutManager()).findFirstVisibleItemPosition() : ((LinearLayoutManager) recyclerView2.getLayoutManager()).findLastVisibleItemPosition();
        Calendar calendarM1798a = AbstractC1088a0.m1798a(c1089b.f2254b.f2326b);
        calendarM1798a.add(2, iFindFirstVisibleItemPosition);
        C1107r c1107r = new C1107r(calendarM1798a);
        c1103n.f2284e = c1107r;
        MaterialButton materialButton = c1103n.f2293n;
        Calendar calendarM1798a2 = AbstractC1088a0.m1798a(c1089b.f2254b.f2326b);
        calendarM1798a2.add(2, iFindFirstVisibleItemPosition);
        calendarM1798a2.set(5, 1);
        Calendar calendarM1798a3 = AbstractC1088a0.m1798a(calendarM1798a2);
        calendarM1798a3.get(2);
        calendarM1798a3.get(1);
        calendarM1798a3.getMaximum(7);
        calendarM1798a3.getActualMaximum(5);
        calendarM1798a3.getTimeInMillis();
        long timeInMillis = calendarM1798a3.getTimeInMillis();
        Locale locale = Locale.getDefault();
        AtomicReference atomicReference = AbstractC1088a0.f2253a;
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
        instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
        instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        materialButton.setText(instanceForSkeleton.format(new Date(timeInMillis)));
        c1103n.m1803v(c1089b.f2254b.m1810t(c1107r));
    }
}
