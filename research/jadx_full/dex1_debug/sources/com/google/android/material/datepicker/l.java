package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$OnScrollListener;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l extends RecyclerView$OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f1250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f1251b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(n nVar, v vVar) {
        this.f1251b = nVar;
        this.f1250a = vVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnScrollListener
    public final void onScrolled(RecyclerView recyclerView, int i9, int i10) {
        b bVar = this.f1250a.f1292a;
        n nVar = this.f1251b;
        RecyclerView recyclerView2 = nVar.f1256i;
        int iFindFirstVisibleItemPosition = i9 < 0 ? ((LinearLayoutManager) recyclerView2.getLayoutManager()).findFirstVisibleItemPosition() : ((LinearLayoutManager) recyclerView2.getLayoutManager()).findLastVisibleItemPosition();
        Calendar calendarA = a0.a(bVar.f1235b.f1283b);
        calendarA.add(2, iFindFirstVisibleItemPosition);
        r rVar = new r(calendarA);
        nVar.e = rVar;
        MaterialButton materialButton = nVar.f1261n;
        Calendar calendarA2 = a0.a(bVar.f1235b.f1283b);
        calendarA2.add(2, iFindFirstVisibleItemPosition);
        calendarA2.set(5, 1);
        Calendar calendarA3 = a0.a(calendarA2);
        calendarA3.get(2);
        calendarA3.get(1);
        calendarA3.getMaximum(7);
        calendarA3.getActualMaximum(5);
        calendarA3.getTimeInMillis();
        long timeInMillis = calendarA3.getTimeInMillis();
        Locale locale = Locale.getDefault();
        AtomicReference atomicReference = a0.f1234a;
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
        instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
        instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        materialButton.setText(instanceForSkeleton.format(new Date(timeInMillis)));
        nVar.v(bVar.f1235b.t(rVar));
    }
}
