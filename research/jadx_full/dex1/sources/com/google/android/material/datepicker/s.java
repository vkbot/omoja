package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s extends BaseAdapter {
    public static final int e = a0.c(null).getMaximum(4);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f1287f = (a0.c(null).getMaximum(7) + a0.c(null).getMaximum(5)) - 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f1288b;
    public c c;
    public final b d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s(r rVar, b bVar) {
        this.f1288b = rVar;
        this.d = bVar;
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a() {
        int firstDayOfWeek = this.d.f1236f;
        r rVar = this.f1288b;
        Calendar calendar = rVar.f1283b;
        int i9 = calendar.get(7);
        if (firstDayOfWeek <= 0) {
            firstDayOfWeek = calendar.getFirstDayOfWeek();
        }
        int i10 = i9 - firstDayOfWeek;
        return i10 < 0 ? i10 + rVar.e : i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Long b(int i9) {
        if (i9 < a() || i9 > c()) {
            return null;
        }
        int iA = (i9 - a()) + 1;
        Calendar calendarA = a0.a(this.f1288b.f1283b);
        calendarA.set(5, iA);
        return Long.valueOf(calendarA.getTimeInMillis());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c() {
        return (a() + this.f1288b.f1284f) - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final int getCount() {
        return f1287f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final /* bridge */ /* synthetic */ Object getItem(int i9) {
        return b(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final long getItemId(int i9) {
        return i9 / this.f1288b.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:14:0x005d  */
    @Override // android.widget.Adapter
    public final View getView(int i9, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.c == null) {
            this.c = new c(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(2131493071, viewGroup, false);
        }
        int iA = i9 - a();
        if (iA >= 0) {
            r rVar = this.f1288b;
            if (iA >= rVar.f1284f) {
                textView.setVisibility(8);
                textView.setEnabled(false);
            } else {
                textView.setTag(rVar);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(iA + 1)));
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        } else {
            textView.setVisibility(8);
            textView.setEnabled(false);
        }
        if (b(i9) == null || textView == null) {
            return textView;
        }
        textView.getContext();
        a0.b().getTimeInMillis();
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
