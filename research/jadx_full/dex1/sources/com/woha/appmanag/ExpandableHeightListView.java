package com.woha.appmanag;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View$MeasureSpec;
import android.widget.ListView;
import e0.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExpandableHeightListView extends ListView {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExpandableHeightListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ListView, android.widget.AbsListView
    public final void layoutChildren() {
        try {
            super.layoutChildren();
        } catch (IllegalStateException e) {
            String message = e.getMessage();
            if (message == null || !message.startsWith(m.h(new byte[]{32, 24, -25, 87, 42, 30, 32, 4, 17, 30, -10, 87, 38, 23, 110, 4, 28, 21, -94, 22, 45, 16, 62, 4, 17, 2, -94, 31, 40, 2, 110, 19, 28, 17, -20, 16, 44, 21}, new byte[]{116, 112, -126, 119, 73, 113, 78, 112}))) {
                throw e;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i9, int i10) {
        super.onMeasure(i9, View$MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }
}
