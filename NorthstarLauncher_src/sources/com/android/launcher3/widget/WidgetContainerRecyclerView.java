package com.android.launcher3.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.android.launcher3.R;
import com.mega.chery.widget.CheryRecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class WidgetContainerRecyclerView extends CheryRecyclerView {
    private final int mScrollbarDelayBeforeFade;

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        return 0.0f;
    }

    public WidgetContainerRecyclerView(Context context) {
        this(context, null);
    }

    public WidgetContainerRecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mScrollbarDelayBeforeFade = context.getResources().getInteger(R.integer.scrollbar_delay_before_fade);
    }

    @Override // android.view.View
    protected boolean awakenScrollBars(int startDelay, boolean invalidate) {
        return super.awakenScrollBars(this.mScrollbarDelayBeforeFade, invalidate);
    }
}
