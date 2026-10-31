package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* JADX INFO: renamed from: com.google.android.material.datepicker.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC1095f implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f2270b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1111v f2271c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C1103n f2272d;

    public /* synthetic */ ViewOnClickListenerC1095f(C1103n c1103n, C1111v c1111v, int i10) {
        this.f2270b = i10;
        this.f2272d = c1103n;
        this.f2271c = c1111v;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f2270b) {
            case 0:
                C1103n c1103n = this.f2272d;
                int iFindLastVisibleItemPosition = ((LinearLayoutManager) c1103n.f2288i.getLayoutManager()).findLastVisibleItemPosition() - 1;
                Calendar calendarM1798a = AbstractC1088a0.m1798a(this.f2271c.f2342a.f2254b.f2326b);
                calendarM1798a.add(2, iFindLastVisibleItemPosition);
                c1103n.m1801t(new C1107r(calendarM1798a));
                break;
            default:
                C1103n c1103n2 = this.f2272d;
                int iFindFirstVisibleItemPosition = ((LinearLayoutManager) c1103n2.f2288i.getLayoutManager()).findFirstVisibleItemPosition() + 1;
                Calendar calendarM1798a2 = AbstractC1088a0.m1798a(this.f2271c.f2342a.f2254b.f2326b);
                calendarM1798a2.add(2, iFindFirstVisibleItemPosition);
                c1103n2.m1801t(new C1107r(calendarM1798a2));
                break;
        }
    }
}
