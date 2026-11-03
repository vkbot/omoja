package com.android.launcher3.util;

import android.os.SystemClock;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class OnSingleClickListener implements View.OnClickListener {
    private long mInterval;
    private long mLastClickTime;

    public abstract void onSingleClick(View view);

    public OnSingleClickListener() {
        this.mInterval = 500L;
    }

    public OnSingleClickListener(long interval) {
        this.mInterval = 500L;
        this.mInterval = Math.max(interval, 0L);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.mLastClickTime > this.mInterval) {
            this.mLastClickTime = jElapsedRealtime;
            onSingleClick(v);
        }
    }
}
