package com.android.launcher3.icons.cache;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public abstract class HandlerRunnable implements Runnable {
    private final Runnable mEndRunnable;
    private final Handler mHandler;
    private boolean mEnded = false;
    private boolean mCanceled = false;

    protected boolean isCanceled() {
        return this.mCanceled;
    }

    public HandlerRunnable(Handler handler, Runnable runnable) {
        this.mHandler = handler;
        this.mEndRunnable = runnable;
    }

    public void cancel() {
        this.mHandler.removeCallbacks(this);
        this.mCanceled = true;
        onEnd();
    }

    public void onEnd() {
        if (this.mEnded) {
            return;
        }
        this.mEnded = true;
        Runnable runnable = this.mEndRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }
}
