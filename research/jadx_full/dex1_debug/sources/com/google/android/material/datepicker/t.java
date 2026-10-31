package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t implements AdapterView$OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendarGridView f1289b;
    public final /* synthetic */ v c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(v vVar, MaterialCalendarGridView materialCalendarGridView) {
        this.c = vVar;
        this.f1289b = materialCalendarGridView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i9, long j9) {
        MaterialCalendarGridView materialCalendarGridView = this.f1289b;
        s sVarA = materialCalendarGridView.a();
        if (i9 < sVarA.a() || i9 > sVarA.c()) {
            return;
        }
        if (materialCalendarGridView.a().b(i9).longValue() >= this.c.f1293b.f1248a.d.d.f1243b) {
            throw null;
        }
    }
}
