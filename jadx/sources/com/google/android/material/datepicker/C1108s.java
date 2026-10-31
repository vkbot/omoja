package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.example.navistart.R;
import java.util.Calendar;

/* JADX INFO: renamed from: com.google.android.material.datepicker.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1108s extends BaseAdapter {

    /* JADX INFO: renamed from: e */
    public static final int f2333e = AbstractC1088a0.m1800c(null).getMaximum(4);

    /* JADX INFO: renamed from: f */
    public static final int f2334f = (AbstractC1088a0.m1800c(null).getMaximum(7) + AbstractC1088a0.m1800c(null).getMaximum(5)) - 1;

    /* JADX INFO: renamed from: b */
    public final C1107r f2335b;

    /* JADX INFO: renamed from: c */
    public C1091c f2336c;

    /* JADX INFO: renamed from: d */
    public final C1089b f2337d;

    public C1108s(C1107r c1107r, C1089b c1089b) {
        this.f2335b = c1107r;
        this.f2337d = c1089b;
        throw null;
    }

    /* JADX INFO: renamed from: a */
    public final int m1811a() {
        int firstDayOfWeek = this.f2337d.f2258f;
        C1107r c1107r = this.f2335b;
        Calendar calendar = c1107r.f2326b;
        int i10 = calendar.get(7);
        if (firstDayOfWeek <= 0) {
            firstDayOfWeek = calendar.getFirstDayOfWeek();
        }
        int i11 = i10 - firstDayOfWeek;
        return i11 < 0 ? i11 + c1107r.f2329e : i11;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i10) {
        if (i10 < m1811a() || i10 > m1813c()) {
            return null;
        }
        int iM1811a = (i10 - m1811a()) + 1;
        Calendar calendarM1798a = AbstractC1088a0.m1798a(this.f2335b.f2326b);
        calendarM1798a.set(5, iM1811a);
        return Long.valueOf(calendarM1798a.getTimeInMillis());
    }

    /* JADX INFO: renamed from: c */
    public final int m1813c() {
        return (m1811a() + this.f2335b.f2330f) - 1;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return f2334f;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        return i10 / this.f2335b.f2329e;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005d  */
    @Override // android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.f2336c == null) {
            this.f2336c = new C1091c(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        int iM1811a = i10 - m1811a();
        if (iM1811a >= 0) {
            C1107r c1107r = this.f2335b;
            if (iM1811a >= c1107r.f2330f) {
                textView.setVisibility(8);
                textView.setEnabled(false);
            } else {
                textView.setTag(c1107r);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(iM1811a + 1)));
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        } else {
            textView.setVisibility(8);
            textView.setEnabled(false);
        }
        if (getItem(i10) == null || textView == null) {
            return textView;
        }
        textView.getContext();
        AbstractC1088a0.m1799b().getTimeInMillis();
        throw null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
