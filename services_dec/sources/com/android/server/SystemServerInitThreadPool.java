package com.android.server;

import android.os.Build;
import android.os.Process;
import android.util.Slog;
import com.android.internal.util.ConcurrentUtils;
import com.android.internal.util.Preconditions;
import com.android.server.am.ActivityManagerService;
import com.android.server.utils.TimingsTraceAndSlog;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class SystemServerInitThreadPool {
    private static final int SHUTDOWN_TIMEOUT_MILLIS = 20000;
    private static SystemServerInitThreadPool sInstance;
    private final List<String> mPendingTasks = new ArrayList();
    private final ExecutorService mService;
    private boolean mShutDown;
    private static final String TAG = SystemServerInitThreadPool.class.getSimpleName();
    private static final boolean IS_DEBUGGABLE = Build.IS_DEBUGGABLE;
    private static final Object LOCK = new Object();

    private SystemServerInitThreadPool() {
        int size = Runtime.getRuntime().availableProcessors();
        Slog.i(TAG, "Creating instance with " + size + " threads");
        this.mService = ConcurrentUtils.newFixedThreadPool(size, "system-server-init-thread", -2);
    }

    public static Future<?> submit(Runnable runnable, String description) {
        SystemServerInitThreadPool instance;
        Objects.requireNonNull(description, "description cannot be null");
        synchronized (LOCK) {
            Preconditions.checkState(sInstance != null, "Cannot get " + TAG + " - it has been shut down");
            instance = sInstance;
        }
        return instance.submitTask(runnable, description);
    }

    private Future<?> submitTask(final Runnable runnable, final String description) {
        synchronized (this.mPendingTasks) {
            Preconditions.checkState(!this.mShutDown, TAG + " already shut down");
            this.mPendingTasks.add(description);
        }
        return this.mService.submit(new Runnable() { // from class: com.android.server.-$$Lambda$SystemServerInitThreadPool$o2_GLo0lnkotYmRdTfg66UETEwQ
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$submitTask$0$SystemServerInitThreadPool(description, runnable);
            }
        });
    }

    public /* synthetic */ void lambda$submitTask$0$SystemServerInitThreadPool(String description, Runnable runnable) {
        TimingsTraceAndSlog traceLog = TimingsTraceAndSlog.newAsyncLog();
        traceLog.traceBegin("InitThreadPoolExec:" + description);
        if (IS_DEBUGGABLE) {
            Slog.d(TAG, "Started executing " + description);
        }
        try {
            runnable.run();
            synchronized (this.mPendingTasks) {
                this.mPendingTasks.remove(description);
            }
            if (IS_DEBUGGABLE) {
                Slog.d(TAG, "Finished executing " + description);
            }
            traceLog.traceEnd();
        } catch (RuntimeException e) {
            Slog.e(TAG, "Failure in " + description + ": " + e, e);
            traceLog.traceEnd();
            throw e;
        }
    }

    static void start() {
        synchronized (LOCK) {
            Preconditions.checkState(sInstance == null, TAG + " already started");
            sInstance = new SystemServerInitThreadPool();
        }
    }

    static void shutdown() {
        Slog.d(TAG, "Shutdown requested");
        synchronized (LOCK) {
            TimingsTraceAndSlog t = new TimingsTraceAndSlog();
            t.traceBegin("WaitInitThreadPoolShutdown");
            if (sInstance == null) {
                t.traceEnd();
                Slog.wtf(TAG, "Already shutdown", new Exception());
                return;
            }
            synchronized (sInstance.mPendingTasks) {
                sInstance.mShutDown = true;
            }
            sInstance.mService.shutdown();
            try {
                boolean terminated = sInstance.mService.awaitTermination(20000L, TimeUnit.MILLISECONDS);
                if (!terminated) {
                    dumpStackTraces();
                }
                List<Runnable> unstartedRunnables = sInstance.mService.shutdownNow();
                if (!terminated) {
                    List<String> copy = new ArrayList<>();
                    synchronized (sInstance.mPendingTasks) {
                        copy.addAll(sInstance.mPendingTasks);
                    }
                    t.traceEnd();
                    throw new IllegalStateException("Cannot shutdown. Unstarted tasks " + unstartedRunnables + " Unfinished tasks " + copy);
                }
                sInstance = null;
                Slog.d(TAG, "Shutdown successful");
                t.traceEnd();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                dumpStackTraces();
                t.traceEnd();
                throw new IllegalStateException(TAG + " init interrupted");
            }
        }
    }

    private static void dumpStackTraces() {
        ArrayList<Integer> pids = new ArrayList<>();
        pids.add(Integer.valueOf(Process.myPid()));
        ActivityManagerService.dumpStackTraces(pids, null, null, Watchdog.getInterestingNativePids(), null);
    }
}
