package com.android.launcher3.util;

import android.os.Looper;
import android.os.MessageQueue;

/* JADX INFO: loaded from: classes.dex */
public class LooperIdleLock implements MessageQueue.IdleHandler {
    private boolean mIsLocked = true;
    private final Object mLock;
    private Looper mLooper;

    public LooperIdleLock(Object lock, Looper looper) {
        this.mLock = lock;
        this.mLooper = looper;
        looper.getQueue().addIdleHandler(this);
    }

    @Override // android.os.MessageQueue.IdleHandler
    public boolean queueIdle() {
        synchronized (this.mLock) {
            this.mIsLocked = false;
            this.mLock.notify();
        }
        this.mLooper.getQueue().removeIdleHandler(this);
        return false;
    }

    public boolean awaitLocked(long ms) {
        if (this.mIsLocked) {
            try {
                this.mLock.wait(ms);
            } catch (InterruptedException unused) {
            }
        }
        return this.mIsLocked;
    }
}
