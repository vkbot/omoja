package com.android.launcher3.keyboard;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class FocusedItemDecorator extends RecyclerView.ItemDecoration {
    private FocusIndicatorHelper mHelper;

    public View.OnFocusChangeListener getFocusListener() {
        return this.mHelper;
    }

    public FocusedItemDecorator(View container) {
        this.mHelper = new FocusIndicatorHelper.SimpleFocusIndicatorHelper(container);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state) {
        this.mHelper.draw(c);
    }
}
