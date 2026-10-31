package com.google.android.material.datepicker;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.example.navistart.R;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: renamed from: com.google.android.material.datepicker.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1094e extends BaseAdapter {

    /* JADX INFO: renamed from: e */
    public static final int f2266e;

    /* JADX INFO: renamed from: b */
    public final Calendar f2267b;

    /* JADX INFO: renamed from: c */
    public final int f2268c;

    /* JADX INFO: renamed from: d */
    public final int f2269d;

    static {
        f2266e = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public C1094e() {
        Calendar calendarM1800c = AbstractC1088a0.m1800c(null);
        this.f2267b = calendarM1800c;
        this.f2268c = calendarM1800c.getMaximum(7);
        this.f2269d = calendarM1800c.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f2268c;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i10) {
        int i11 = this.f2268c;
        if (i10 >= i11) {
            return null;
        }
        int i12 = i10 + this.f2269d;
        if (i12 > i11) {
            i12 -= i11;
        }
        return Integer.valueOf(i12);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i11 = i10 + this.f2269d;
        int i12 = this.f2268c;
        if (i11 > i12) {
            i11 -= i12;
        }
        Calendar calendar = this.f2267b;
        calendar.set(7, i11);
        textView.setText(calendar.getDisplayName(7, f2266e, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    public C1094e(int i10) {
        Calendar calendarM1800c = AbstractC1088a0.m1800c(null);
        this.f2267b = calendarM1800c;
        this.f2268c = calendarM1800c.getMaximum(7);
        this.f2269d = i10;
    }
}
