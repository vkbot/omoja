package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: renamed from: com.google.android.material.datepicker.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1109t implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ MaterialCalendarGridView f2338b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1111v f2339c;

    public C1109t(C1111v c1111v, MaterialCalendarGridView materialCalendarGridView) {
        this.f2339c = c1111v;
        this.f2338b = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        MaterialCalendarGridView materialCalendarGridView = this.f2338b;
        C1108s c1108sM1797a = materialCalendarGridView.m1797a();
        if (i10 < c1108sM1797a.m1811a() || i10 > c1108sM1797a.m1813c()) {
            return;
        }
        if (materialCalendarGridView.m1797a().getItem(i10).longValue() >= this.f2339c.f2343b.f2276a.f2283d.f2256d.f2265b) {
            throw null;
        }
    }
}
