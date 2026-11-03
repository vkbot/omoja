package com.android.launcher3.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.mega.chery.widget.CheryRecyclerView;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class AppContainerRecyclerView extends CheryRecyclerView {
    private static final String TAG = "AppContainerRecyclerView";
    private final int mScrollbarDelayBeforeFade;

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        return 0.0f;
    }

    public AppContainerRecyclerView(Context context) {
        this(context, null);
    }

    public AppContainerRecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mScrollbarDelayBeforeFade = context.getResources().getInteger(R.integer.scrollbar_delay_before_fade);
    }

    @Override // android.view.View
    protected boolean awakenScrollBars(int startDelay, boolean invalidate) {
        MLog.d(TAG, "awakenScrollBars: " + startDelay + " " + invalidate + " " + Utilities.getStackTraceSingleLine(new Throwable()));
        return super.awakenScrollBars(this.mScrollbarDelayBeforeFade, invalidate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        MLog.d(TAG, "requestLayout: " + Utilities.getStackTraceSingleLine(new Throwable()));
    }
}
