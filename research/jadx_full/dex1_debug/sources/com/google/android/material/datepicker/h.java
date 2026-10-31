package com.google.android.material.datepicker;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$State;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1247b;
    public final /* synthetic */ n c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(n nVar, Context context, int i9, int i10) {
        super(context, i9, false);
        this.c = nVar;
        this.f1247b = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void calculateExtraLayoutSpace(RecyclerView$State recyclerView$State, int[] iArr) {
        n nVar = this.c;
        RecyclerView recyclerView = nVar.f1256i;
        if (this.f1247b == 0) {
            iArr[0] = recyclerView.getWidth();
            iArr[1] = nVar.f1256i.getWidth();
        } else {
            iArr[0] = recyclerView.getHeight();
            iArr[1] = nVar.f1256i.getHeight();
        }
    }
}
