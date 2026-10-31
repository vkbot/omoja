package com.google.android.material.datepicker;

import android.R$attr;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$LayoutParams;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f1292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i f1293b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v(ContextThemeWrapper contextThemeWrapper, b bVar, i iVar) {
        r rVar = bVar.f1235b;
        r rVar2 = bVar.c;
        r rVar3 = bVar.e;
        if (rVar.f1283b.compareTo(rVar3.f1283b) > 0) {
            j1.i.k("firstPage cannot be after currentPage");
            throw null;
        }
        if (rVar3.f1283b.compareTo(rVar2.f1283b) > 0) {
            j1.i.k("currentPage cannot be after lastPage");
            throw null;
        }
        this.c = (contextThemeWrapper.getResources().getDimensionPixelSize(2131100515) * s.e) + (p.v(R$attr.windowFullscreen, contextThemeWrapper) ? contextThemeWrapper.getResources().getDimensionPixelSize(2131100515) : 0);
        this.f1292a = bVar;
        this.f1293b = iVar;
        setHasStableIds(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f1292a.f1238h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final long getItemId(int i9) {
        Calendar calendarA = a0.a(this.f1292a.f1235b.f1283b);
        calendarA.add(2, i9);
        calendarA.set(5, 1);
        Calendar calendarA2 = a0.a(calendarA);
        calendarA2.get(2);
        calendarA2.get(1);
        calendarA2.getMaximum(7);
        calendarA2.getActualMaximum(5);
        calendarA2.getTimeInMillis();
        return calendarA2.getTimeInMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        u uVar = (u) recyclerView$ViewHolder;
        b bVar = this.f1292a;
        Calendar calendarA = a0.a(bVar.f1235b.f1283b);
        calendarA.add(2, i9);
        r rVar = new r(calendarA);
        uVar.f1290a.setText(rVar.s());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) uVar.f1291b.findViewById(2131297084);
        if (materialCalendarGridView.a() == null || !rVar.equals(materialCalendarGridView.a().f1288b)) {
            new s(rVar, bVar);
            throw null;
        }
        materialCalendarGridView.invalidate();
        materialCalendarGridView.a().getClass();
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(2131493076, viewGroup, false);
        if (!p.v(R$attr.windowFullscreen, viewGroup.getContext())) {
            return new u(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView$LayoutParams(-1, this.c));
        return new u(linearLayout, true);
    }
}
