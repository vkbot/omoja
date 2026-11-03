package com.mega.hicar.util;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadPoolUtil {
    private static final int THREAD_COUNT = Runtime.getRuntime().availableProcessors() * 2;
    private static volatile List<FutureTask<String>> sFutureTasks = new ArrayList();
    private ExecutorService mExecutorService;

    private ThreadPoolUtil() {
        this.mExecutorService = Executors.newFixedThreadPool(THREAD_COUNT);
    }

    public static ThreadPoolUtil getPollInstance() {
        return GenerateInstance.sThreadPoolUtils;
    }

    private static class GenerateInstance {
        private static ThreadPoolUtil sThreadPoolUtils = new ThreadPoolUtil();

        private GenerateInstance() {
        }
    }

    public void submit(Runnable runnable) {
        this.mExecutorService.submit(runnable);
    }

    public Future submit(Callable callable) {
        return this.mExecutorService.submit(callable);
    }

    public void execute(Runnable runnable) {
        this.mExecutorService.execute(runnable);
    }

    public void execute(FutureTask<String> futureTask) {
        sFutureTasks.add(futureTask);
        this.mExecutorService.execute(futureTask);
    }

    public void stopExecuteTasks() {
        if (sFutureTasks.isEmpty()) {
            return;
        }
        for (FutureTask<String> futureTask : sFutureTasks) {
            if (!futureTask.isDone()) {
                futureTask.cancel(true);
            }
        }
        sFutureTasks.clear();
    }
}
