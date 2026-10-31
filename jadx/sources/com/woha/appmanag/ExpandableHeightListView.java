package com.woha.appmanag;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;
import p047e0.AbstractC1387m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ExpandableHeightListView extends ListView {
    public ExpandableHeightListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    public final void layoutChildren() {
        try {
            super.layoutChildren();
        } catch (IllegalStateException e) {
            String message = e.getMessage();
            if (message == null || !message.startsWith(AbstractC1387m.m2421h(new byte[]{32, 24, -25, 87, 42, 30, 32, 4, 17, 30, -10, 87, 38, 23, 110, 4, 28, 21, -94, 22, 45, 16, 62, 4, 17, 2, -94, 31, 40, 2, 110, 19, 28, 17, -20, 16, 44, 21}, new byte[]{116, 112, -126, 119, 73, 113, 78, 112}))) {
                throw e;
            }
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }
}
