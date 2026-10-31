package com.google.android.material.datepicker;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Adapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.ViewCompat;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
final class MaterialCalendarGridView extends GridView {

    /* JADX INFO: renamed from: b */
    public final boolean f2250b;

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        AbstractC1088a0.m1800c(null);
        if (C1105p.m1805v(R.attr.windowFullscreen, getContext())) {
            setNextFocusLeftId(com.example.navistart.R.id.cancel_button);
            setNextFocusRightId(com.example.navistart.R.id.confirm_button);
        }
        this.f2250b = C1105p.m1805v(com.example.navistart.R.attr.nestedScrollable, getContext());
        ViewCompat.setAccessibilityDelegate(this, new C1096g(2));
    }

    /* JADX INFO: renamed from: a */
    public final C1108s m1797a() {
        return (C1108s) super.getAdapter();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final Adapter getAdapter() {
        return (C1108s) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((C1108s) super.getAdapter()).notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        C1108s c1108s = (C1108s) super.getAdapter();
        c1108s.getClass();
        int iMax = Math.max(c1108s.m1811a(), getFirstVisiblePosition());
        int iMin = Math.min(c1108s.m1813c(), getLastVisiblePosition());
        c1108s.getItem(iMax);
        c1108s.getItem(iMin);
        throw null;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z9, int i10, Rect rect) {
        if (!z9) {
            super.onFocusChanged(false, i10, rect);
            return;
        }
        if (i10 == 33) {
            setSelection(((C1108s) super.getAdapter()).m1813c());
        } else if (i10 == 130) {
            setSelection(((C1108s) super.getAdapter()).m1811a());
        } else {
            super.onFocusChanged(true, i10, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!super.onKeyDown(i10, keyEvent)) {
            return false;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition == -1 || (selectedItemPosition >= ((C1108s) super.getAdapter()).m1811a() && selectedItemPosition <= ((C1108s) super.getAdapter()).m1813c())) {
            return true;
        }
        if (19 != i10) {
            return false;
        }
        setSelection(((C1108s) super.getAdapter()).m1811a());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i10, int i11) {
        if (!this.f2250b) {
            super.onMeasure(i10, i11);
            return;
        }
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(ViewCompat.MEASURED_SIZE_MASK, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof C1108s) {
            super.setAdapter(listAdapter);
        } else {
            C2467b.m3832v("%1$s must have its Adapter set to a %2$s", new Object[]{MaterialCalendarGridView.class.getCanonicalName(), C1108s.class.getCanonicalName()});
        }
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i10) {
        if (i10 < ((C1108s) super.getAdapter()).m1811a()) {
            super.setSelection(((C1108s) super.getAdapter()).m1811a());
        } else {
            super.setSelection(i10);
        }
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final ListAdapter getAdapter() {
        return (C1108s) super.getAdapter();
    }
}
