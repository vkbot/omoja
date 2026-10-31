package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AsyncDifferConfig$Builder<T> {
    private static Executor sDiffExecutor;
    private static final Object sExecutorLock = new Object();
    private Executor mBackgroundThreadExecutor;
    private final DiffUtil$ItemCallback<T> mDiffCallback;

    @Nullable
    private Executor mMainThreadExecutor;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AsyncDifferConfig$Builder(@NonNull DiffUtil$ItemCallback<T> diffUtil$ItemCallback) {
        this.mDiffCallback = diffUtil$ItemCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AsyncDifferConfig<T> build() {
        if (this.mBackgroundThreadExecutor == null) {
            synchronized (sExecutorLock) {
                try {
                    if (sDiffExecutor == null) {
                        sDiffExecutor = Executors.newFixedThreadPool(2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.mBackgroundThreadExecutor = sDiffExecutor;
        }
        return new AsyncDifferConfig<>(this.mMainThreadExecutor, this.mBackgroundThreadExecutor, this.mDiffCallback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AsyncDifferConfig$Builder<T> setBackgroundThreadExecutor(@Nullable Executor executor) {
        this.mBackgroundThreadExecutor = executor;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public AsyncDifferConfig$Builder<T> setMainThreadExecutor(@Nullable Executor executor) {
        this.mMainThreadExecutor = executor;
        return this;
    }
}
