package com.android.launcher3.views;

import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class LiveWidgetContainer extends FrameLayout {
    private boolean mAppWidgetClickable;

    public void setAppWidgetClickable(boolean clickable) {
        this.mAppWidgetClickable = clickable;
    }

    public LiveWidgetContainer(Context context) {
        super(context);
        this.mAppWidgetClickable = true;
    }

    public LiveWidgetContainer(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mAppWidgetClickable = true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (getChildCount() <= 0) {
            return;
        }
        View childAt = getChildAt(0);
        if (childAt instanceof AppWidgetHostView) {
            AppWidgetHostView appWidgetHostView = (AppWidgetHostView) childAt;
            if (appWidgetHostView.getChildCount() <= 0) {
                return;
            }
            View childAt2 = appWidgetHostView.getChildAt(0);
            childAt2.setScaleX(0.799f);
            childAt2.setScaleY(0.799f);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (this.mAppWidgetClickable) {
            return super.dispatchTouchEvent(ev);
        }
        return false;
    }
}
