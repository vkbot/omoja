package com.google.android.material.datepicker;

import android.os.Build$VERSION;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends BaseAdapter {
    public static final int e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Calendar f1244b;
    public final int c;
    public final int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e = Build$VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e() {
        Calendar calendarC = a0.c(null);
        this.f1244b = calendarC;
        this.c = calendarC.getMaximum(7);
        this.d = calendarC.getFirstDayOfWeek();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final int getCount() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final Object getItem(int i9) {
        int i10 = this.c;
        if (i9 >= i10) {
            return null;
        }
        int i11 = i9 + this.d;
        if (i11 > i10) {
            i11 -= i10;
        }
        return Integer.valueOf(i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final long getItemId(int i9) {
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final View getView(int i9, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(2131493072, viewGroup, false);
        }
        int i10 = i9 + this.d;
        int i11 = this.c;
        if (i10 > i11) {
            i10 -= i11;
        }
        Calendar calendar = this.f1244b;
        calendar.set(7, i10);
        textView.setText(calendar.getDisplayName(7, e, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(2131952378), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    public e(int i9) {
        Calendar calendarC = a0.c(null);
        this.f1244b = calendarC;
        this.c = calendarC.getMaximum(7);
        this.d = i9;
    }
}
