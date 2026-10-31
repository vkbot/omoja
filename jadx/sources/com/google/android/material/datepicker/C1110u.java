package com.google.android.material.datepicker;

import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: com.google.android.material.datepicker.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1110u extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a */
    public final TextView f2340a;

    /* JADX INFO: renamed from: b */
    public final MaterialCalendarGridView f2341b;

    public C1110u(LinearLayout linearLayout, boolean z9) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.f2340a = textView;
        ViewCompat.setAccessibilityHeading(textView, true);
        this.f2341b = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z9) {
            return;
        }
        textView.setVisibility(8);
    }
}
