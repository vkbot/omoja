package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import java.util.Calendar;
import p099j1.C1929i;

/* JADX INFO: renamed from: com.google.android.material.datepicker.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1111v extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final C1089b f2342a;

    /* JADX INFO: renamed from: b */
    public final C1098i f2343b;

    /* JADX INFO: renamed from: c */
    public final int f2344c;

    public C1111v(ContextThemeWrapper contextThemeWrapper, C1089b c1089b, C1098i c1098i) {
        C1107r c1107r = c1089b.f2254b;
        C1107r c1107r2 = c1089b.f2255c;
        C1107r c1107r3 = c1089b.f2257e;
        if (c1107r.f2326b.compareTo(c1107r3.f2326b) > 0) {
            C1929i.m3029k("firstPage cannot be after currentPage");
            throw null;
        }
        if (c1107r3.f2326b.compareTo(c1107r2.f2326b) > 0) {
            C1929i.m3029k("currentPage cannot be after lastPage");
            throw null;
        }
        this.f2344c = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * C1108s.f2333e) + (C1105p.m1805v(android.R.attr.windowFullscreen, contextThemeWrapper) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f2342a = c1089b;
        this.f2343b = c1098i;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f2342a.f2260h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i10) {
        Calendar calendarM1798a = AbstractC1088a0.m1798a(this.f2342a.f2254b.f2326b);
        calendarM1798a.add(2, i10);
        calendarM1798a.set(5, 1);
        Calendar calendarM1798a2 = AbstractC1088a0.m1798a(calendarM1798a);
        calendarM1798a2.get(2);
        calendarM1798a2.get(1);
        calendarM1798a2.getMaximum(7);
        calendarM1798a2.getActualMaximum(5);
        calendarM1798a2.getTimeInMillis();
        return calendarM1798a2.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        C1110u c1110u = (C1110u) viewHolder;
        C1089b c1089b = this.f2342a;
        Calendar calendarM1798a = AbstractC1088a0.m1798a(c1089b.f2254b.f2326b);
        calendarM1798a.add(2, i10);
        C1107r c1107r = new C1107r(calendarM1798a);
        c1110u.f2340a.setText(c1107r.m1809s());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) c1110u.f2341b.findViewById(R.id.month_grid);
        if (materialCalendarGridView.m1797a() == null || !c1107r.equals(materialCalendarGridView.m1797a().f2335b)) {
            new C1108s(c1107r, c1089b);
            throw null;
        }
        materialCalendarGridView.invalidate();
        materialCalendarGridView.m1797a().getClass();
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!C1105p.m1805v(android.R.attr.windowFullscreen, viewGroup.getContext())) {
            return new C1110u(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f2344c));
        return new C1110u(linearLayout, true);
    }
}
