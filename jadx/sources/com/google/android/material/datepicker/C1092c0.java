package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import java.util.Locale;
import p165p2.C2962e;

/* JADX INFO: renamed from: com.google.android.material.datepicker.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1092c0 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final C1103n f2264a;

    public C1092c0(C1103n c1103n) {
        this.f2264a = c1103n;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f2264a.f2283d.f2259g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        C1090b0 c1090b0 = (C1090b0) viewHolder;
        C1103n c1103n = this.f2264a;
        int i11 = c1103n.f2283d.f2254b.f2328d + i10;
        c1090b0.f2261a.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i11)));
        TextView textView = c1090b0.f2261a;
        Context context = textView.getContext();
        textView.setContentDescription(AbstractC1088a0.m1799b().get(1) == i11 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i11)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i11)));
        C1091c c1091c = c1103n.f2286g;
        if (AbstractC1088a0.m1799b().get(1) == i11) {
            C2962e c2962e = c1091c.f2263b;
        } else {
            C2962e c2962e2 = c1091c.f2262a;
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C1090b0((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
