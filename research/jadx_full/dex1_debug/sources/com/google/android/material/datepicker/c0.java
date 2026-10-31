package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c0 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f1242a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c0(n nVar) {
        this.f1242a = nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f1242a.d.f1237g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        b0 b0Var = (b0) recyclerView$ViewHolder;
        n nVar = this.f1242a;
        int i10 = nVar.d.f1235b.d + i9;
        b0Var.f1239a.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i10)));
        TextView textView = b0Var.f1239a;
        Context context = textView.getContext();
        textView.setContentDescription(a0.b().get(1) == i10 ? String.format(context.getString(2131952384), Integer.valueOf(i10)) : String.format(context.getString(2131952385), Integer.valueOf(i10)));
        c cVar = nVar.f1254g;
        if (a0.b().get(1) == i10) {
            p2.e eVar = cVar.f1241b;
        } else {
            p2.e eVar2 = cVar.f1240a;
        }
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new b0((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(2131493080, viewGroup, false));
    }
}
