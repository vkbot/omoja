package com.android.launcher3.activity;

import android.content.Context;
import android.graphics.Rect;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.android.launcher3.Utilities;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class AppListRootView extends RelativeLayout {
    private static final String TAG = "AppListRootView";

    public AppListRootView(Context context) {
        super(context);
    }

    public AppListRootView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public AppListRootView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public AppListRootView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        checkThread();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onDescendantInvalidated(View child, View target) {
        super.onDescendantInvalidated(child, target);
        checkThread();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] location, Rect dirty) {
        checkThread();
        return super.invalidateChildInParent(location, dirty);
    }

    void checkThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        MLog.w(TAG, "checkThread: " + Utilities.getStackTraceSingleLine(new Throwable()));
        throw new RuntimeException("Only the original thread that created a view hierarchy can touch its views.");
    }
}
