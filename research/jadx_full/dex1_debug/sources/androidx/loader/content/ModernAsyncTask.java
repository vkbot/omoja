package androidx.loader.content;

import android.os.Handler;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import j1.i;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
abstract class ModernAsyncTask<Params, Progress, Result> {
    private static final int CORE_POOL_SIZE = 5;
    private static final int KEEP_ALIVE = 1;
    private static final String LOG_TAG = "AsyncTask";
    private static final int MAXIMUM_POOL_SIZE = 128;
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    public static final Executor THREAD_POOL_EXECUTOR;
    private static volatile Executor sDefaultExecutor;
    private static ModernAsyncTask$InternalHandler sHandler;
    private static final BlockingQueue<Runnable> sPoolWorkQueue;
    private static final ThreadFactory sThreadFactory;
    private final FutureTask<Result> mFuture;
    private final ModernAsyncTask$WorkerRunnable<Params, Result> mWorker;
    private volatile ModernAsyncTask$Status mStatus = ModernAsyncTask$Status.PENDING;
    final AtomicBoolean mCancelled = new AtomicBoolean();
    final AtomicBoolean mTaskInvoked = new AtomicBoolean();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ModernAsyncTask$1 modernAsyncTask$1 = new ModernAsyncTask$1();
        sThreadFactory = modernAsyncTask$1;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        sPoolWorkQueue = linkedBlockingQueue;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, modernAsyncTask$1);
        THREAD_POOL_EXECUTOR = threadPoolExecutor;
        sDefaultExecutor = threadPoolExecutor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ModernAsyncTask() {
        ModernAsyncTask$2 modernAsyncTask$2 = new ModernAsyncTask$2(this);
        this.mWorker = modernAsyncTask$2;
        this.mFuture = new ModernAsyncTask$3(this, modernAsyncTask$2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Handler getHandler() {
        ModernAsyncTask$InternalHandler modernAsyncTask$InternalHandler;
        synchronized (ModernAsyncTask.class) {
            try {
                if (sHandler == null) {
                    sHandler = new ModernAsyncTask$InternalHandler();
                }
                modernAsyncTask$InternalHandler = sHandler;
            } catch (Throwable th) {
                throw th;
            }
        }
        return modernAsyncTask$InternalHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static void setDefaultExecutor(Executor executor) {
        sDefaultExecutor = executor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean cancel(boolean z8) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z8);
    }

    public abstract Result doInBackground(Params... paramsArr);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ModernAsyncTask<Params, Progress, Result> execute(Params... paramsArr) {
        return executeOnExecutor(sDefaultExecutor, paramsArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ModernAsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        if (this.mStatus == ModernAsyncTask$Status.PENDING) {
            this.mStatus = ModernAsyncTask$Status.RUNNING;
            onPreExecute();
            this.mWorker.mParams = paramsArr;
            executor.execute(this.mFuture);
            return this;
        }
        int i9 = ModernAsyncTask$4.$SwitchMap$androidx$loader$content$ModernAsyncTask$Status[this.mStatus.ordinal()];
        if (i9 == 1) {
            i.l("Cannot execute task: the task is already running.");
            return null;
        }
        if (i9 != 2) {
            i.l("We should never reach this state");
            return null;
        }
        i.l("Cannot execute task: the task has already been executed (a task can be executed only once)");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
        this.mStatus = ModernAsyncTask$Status.FINISHED;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Result get() {
        return this.mFuture.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ModernAsyncTask$Status getStatus() {
        return this.mStatus;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onCancelled(Result result) {
        onCancelled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Result postResult(Result result) {
        getHandler().obtainMessage(1, new ModernAsyncTask$AsyncTaskResult(this, result)).sendToTarget();
        return result;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void postResultIfNotInvoked(Result result) {
        if (this.mTaskInvoked.get()) {
            return;
        }
        postResult(result);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void publishProgress(Progress... progressArr) {
        if (isCancelled()) {
            return;
        }
        getHandler().obtainMessage(2, new ModernAsyncTask$AsyncTaskResult(this, progressArr)).sendToTarget();
    }

    public void onCancelled() {
    }

    public static void execute(Runnable runnable) {
        sDefaultExecutor.execute(runnable);
    }

    public final Result get(long j9, TimeUnit timeUnit) {
        return this.mFuture.get(j9, timeUnit);
    }

    public void onPreExecute() {
    }

    public void onPostExecute(Result result) {
    }

    public void onProgressUpdate(Progress... progressArr) {
    }
}
