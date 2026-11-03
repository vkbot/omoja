package com.mega.hicar.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class ExecutorsUtils {
    private ExecutorService mDataBaseExecutorService;
    private ExecutorService mExecutorService;
    private HandlerThread mHandlerThread;
    private Handler mMainHandler;
    private Handler mWorkerThreadHandler;

    public ExecutorService getDataBaseExecutorService() {
        return this.mDataBaseExecutorService;
    }

    public ExecutorService getExecutorService() {
        return this.mExecutorService;
    }

    public Handler getWorkerThreadHandler() {
        return this.mWorkerThreadHandler;
    }

    private ExecutorsUtils() {
        this.mExecutorService = Executors.newCachedThreadPool();
        this.mDataBaseExecutorService = Executors.newSingleThreadExecutor();
        HandlerThread handlerThread = new HandlerThread("ExecutorsUtils");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mWorkerThreadHandler = new Handler(this.mHandlerThread.getLooper());
        this.mMainHandler = new Handler(Looper.getMainLooper());
    }

    public static ExecutorsUtils getInstance() {
        return ExecutorsHelperHolder.getExecutorsHelper();
    }

    public void submit(Runnable runnable) {
        this.mExecutorService.execute(runnable);
    }

    public Looper getExecutorsThreadLooper() {
        return this.mHandlerThread.getLooper();
    }

    public void postOnUIThread(Runnable runnable) {
        postOnUIThread(runnable, 0L);
    }

    public void postOnUIThread(Runnable runnable, long j) {
        if (runnable == null) {
            return;
        }
        this.mMainHandler.postDelayed(runnable, j);
    }

    private static class ExecutorsHelperHolder {
        private static ExecutorsUtils sExecutorsHelper = new ExecutorsUtils();

        /* JADX INFO: Access modifiers changed from: private */
        public static ExecutorsUtils getExecutorsHelper() {
            return sExecutorsHelper;
        }

        private ExecutorsHelperHolder() {
        }
    }
}
