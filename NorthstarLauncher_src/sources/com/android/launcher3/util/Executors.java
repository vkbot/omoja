package com.android.launcher3.util;

import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class Executors {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    private static final int KEEP_ALIVE = 1;
    public static final LooperExecutor MAIN_EXECUTOR;
    private static final int MAXIMUM_POOL_SIZE;
    public static final LooperExecutor MODEL_EXECUTOR;
    private static final String TAG = "Executors";
    public static final ThreadPoolExecutor THREAD_POOL_EXECUTOR;
    public static final LooperExecutor UI_HELPER_EXECUTOR;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = iAvailableProcessors;
        int i = iAvailableProcessors + 1;
        CORE_POOL_SIZE = i;
        int i2 = (iAvailableProcessors * 2) + 1;
        MAXIMUM_POOL_SIZE = i2;
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(i, i2, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        MAIN_EXECUTOR = new LooperExecutor(Looper.getMainLooper());
        UI_HELPER_EXECUTOR = new LooperExecutor(createAndStartNewForegroundLooper("UiThreadHelper"));
        MODEL_EXECUTOR = new LooperExecutor(createAndStartNewLooper("launcher-loader"));
    }

    public static Looper createAndStartNewLooper(String name) {
        return createAndStartNewLooper(name, 0);
    }

    public static Looper createAndStartNewLooper(String name, int priority) {
        HandlerThread handlerThread = new HandlerThread(name, priority);
        handlerThread.start();
        return handlerThread.getLooper();
    }

    public static Looper createAndStartNewForegroundLooper(String name) {
        return createAndStartNewLooper(name, -2);
    }

    public static SerialExecutor newSerialExecutor() {
        return new SerialExecutor(THREAD_POOL_EXECUTOR);
    }

    public static void runOnWork(final String tag, final Runnable task) {
        THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.util.Executors$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Executors.lambda$runOnWork$0(task, tag);
            }
        });
    }

    static /* synthetic */ void lambda$runOnWork$0(Runnable runnable, String str) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            MLog.e(str, "runOnWork: Runtime " + e);
        }
    }

    public static void runOnUiHelper(final String tag, final Runnable task) {
        UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.util.Executors$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Executors.lambda$runOnUiHelper$1(task, tag);
            }
        });
    }

    static /* synthetic */ void lambda$runOnUiHelper$1(Runnable runnable, String str) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            MLog.e(str, "runOnUiHelper: Runtime " + e);
        }
    }
}
