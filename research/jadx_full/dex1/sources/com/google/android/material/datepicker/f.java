package com.google.android.material.datepicker;

import android.view.View;
import android.view.View$OnClickListener;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1245b;
    public final /* synthetic */ v c;
    public final /* synthetic */ n d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(n nVar, v vVar, int i9) {
        this.f1245b = i9;
        this.d = nVar;
        this.c = vVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f1245b) {
            case 0:
                n nVar = this.d;
                int iFindLastVisibleItemPosition = ((LinearLayoutManager) nVar.f1256i.getLayoutManager()).findLastVisibleItemPosition() - 1;
                Calendar calendarA = a0.a(this.c.f1292a.f1235b.f1283b);
                calendarA.add(2, iFindLastVisibleItemPosition);
                nVar.t(new r(calendarA));
                break;
            default:
                n nVar2 = this.d;
                int iFindFirstVisibleItemPosition = ((LinearLayoutManager) nVar2.f1256i.getLayoutManager()).findFirstVisibleItemPosition() + 1;
                Calendar calendarA2 = a0.a(this.c.f1292a.f1235b.f1283b);
                calendarA2.add(2, iFindFirstVisibleItemPosition);
                nVar2.t(new r(calendarA2));
                break;
        }
    }
}
