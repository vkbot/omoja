package com.google.android.material.datepicker;

import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u extends RecyclerView$ViewHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f1290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MaterialCalendarGridView f1291b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(LinearLayout linearLayout, boolean z8) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(2131297089);
        this.f1290a = textView;
        ViewCompat.setAccessibilityHeading(textView, true);
        this.f1291b = (MaterialCalendarGridView) linearLayout.findViewById(2131297084);
        if (z8) {
            return;
        }
        textView.setVisibility(8);
    }
}
