package com.google.android.material.datepicker;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: com.google.android.material.datepicker.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1097h extends AbstractC1114y {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f2274b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1103n f2275c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1097h(C1103n c1103n, Context context, int i10, int i11) {
        super(context, i10, false);
        this.f2275c = c1103n;
        this.f2274b = i11;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr) {
        C1103n c1103n = this.f2275c;
        RecyclerView recyclerView = c1103n.f2288i;
        if (this.f2274b == 0) {
            iArr[0] = recyclerView.getWidth();
            iArr[1] = c1103n.f2288i.getWidth();
        } else {
            iArr[0] = recyclerView.getHeight();
            iArr[1] = c1103n.f2288i.getHeight();
        }
    }
}
