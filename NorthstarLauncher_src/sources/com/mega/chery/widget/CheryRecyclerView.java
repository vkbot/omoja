package com.mega.chery.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class CheryRecyclerView extends RecyclerView {
    public CheryRecyclerView(Context context) {
        super(context);
    }

    public CheryRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CheryRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && getScrollState() == 0) {
            awakenScrollBars();
        }
        return super.onTouchEvent(motionEvent);
    }
}
