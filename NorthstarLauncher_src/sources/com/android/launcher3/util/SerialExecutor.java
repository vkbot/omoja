package com.android.launcher3.util;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class SerialExecutor implements Executor {
    private Runnable mActive;
    private final Executor mExecutor;
    private final ArrayDeque<Runnable> mTasks;

    public SerialExecutor() {
        this(Executors.THREAD_POOL_EXECUTOR);
    }

    public SerialExecutor(Executor executor) {
        this.mTasks = new ArrayDeque<>();
        this.mExecutor = executor;
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(final Runnable r) {
        this.mTasks.offer(new Runnable() { // from class: com.android.launcher3.util.SerialExecutor.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    r.run();
                } finally {
                    SerialExecutor.this.scheduleNext();
                }
            }
        });
        if (this.mActive == null) {
            scheduleNext();
        }
    }

    protected synchronized void scheduleNext() {
        Runnable runnablePoll = this.mTasks.poll();
        this.mActive = runnablePoll;
        if (runnablePoll != null) {
            this.mExecutor.execute(runnablePoll);
        }
    }
}
