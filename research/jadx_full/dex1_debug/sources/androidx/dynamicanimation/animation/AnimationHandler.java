package androidx.dynamicanimation.animation;

import android.os.Build$VERSION;
import android.os.SystemClock;
import androidx.activity.i;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.VisibleForTesting;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimationHandler {
    private static final ThreadLocal<AnimationHandler> sAnimatorHandler = new ThreadLocal<>();

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    @VisibleForTesting
    public AnimationHandler$DurationScaleChangeListener mDurationScaleChangeListener;
    private FrameCallbackScheduler mScheduler;
    private final SimpleArrayMap<AnimationHandler$AnimationFrameCallback, Long> mDelayedCallbackStartTime = new SimpleArrayMap<>();
    final ArrayList<AnimationHandler$AnimationFrameCallback> mAnimationCallbacks = new ArrayList<>();
    private final AnimationHandler$AnimationCallbackDispatcher mCallbackDispatcher = new AnimationHandler$AnimationCallbackDispatcher(this, null);
    private final Runnable mRunnable = new a(this);
    long mCurrentFrameTime = 0;
    private boolean mListDirty = false;

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    @VisibleForTesting
    public float mDurationScale = 1.0f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimationHandler(FrameCallbackScheduler frameCallbackScheduler) {
        this.mScheduler = frameCallbackScheduler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(AnimationHandler animationHandler) {
        animationHandler.lambda$new$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Runnable access$000(AnimationHandler animationHandler) {
        return animationHandler.mRunnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FrameCallbackScheduler access$100(AnimationHandler animationHandler) {
        return animationHandler.mScheduler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:5:0x000c */
    private void cleanUpList() {
        ArrayList<AnimationHandler$AnimationFrameCallback> arrayList;
        if (this.mListDirty) {
            int size = this.mAnimationCallbacks.size();
            while (true) {
                size--;
                arrayList = this.mAnimationCallbacks;
                if (size < 0) {
                    break;
                } else if (arrayList.get(size) == null) {
                    this.mAnimationCallbacks.remove(size);
                }
            }
            if (arrayList.size() == 0 && Build$VERSION.SDK_INT >= 33) {
                this.mDurationScaleChangeListener.unregister();
            }
            this.mListDirty = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AnimationHandler getInstance() {
        ThreadLocal<AnimationHandler> threadLocal = sAnimatorHandler;
        if (threadLocal.get() == null) {
            threadLocal.set(new AnimationHandler(new AnimationHandler$FrameCallbackScheduler16()));
        }
        return threadLocal.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isCallbackDue(AnimationHandler$AnimationFrameCallback animationHandler$AnimationFrameCallback, long j9) {
        Long l9 = this.mDelayedCallbackStartTime.get(animationHandler$AnimationFrameCallback);
        if (l9 == null) {
            return true;
        }
        if (l9.longValue() >= j9) {
            return false;
        }
        this.mDelayedCallbackStartTime.remove(animationHandler$AnimationFrameCallback);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$new$0() {
        this.mCallbackDispatcher.dispatchAnimationFrame();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addAnimationFrameCallback(AnimationHandler$AnimationFrameCallback animationHandler$AnimationFrameCallback, long j9) {
        if (this.mAnimationCallbacks.size() == 0) {
            this.mScheduler.postFrameCallback(this.mRunnable);
            if (Build$VERSION.SDK_INT >= 33) {
                this.mDurationScale = i.a();
                if (this.mDurationScaleChangeListener == null) {
                    this.mDurationScaleChangeListener = new AnimationHandler$DurationScaleChangeListener33(this);
                }
                this.mDurationScaleChangeListener.register();
            }
        }
        if (!this.mAnimationCallbacks.contains(animationHandler$AnimationFrameCallback)) {
            this.mAnimationCallbacks.add(animationHandler$AnimationFrameCallback);
        }
        if (j9 > 0) {
            this.mDelayedCallbackStartTime.put(animationHandler$AnimationFrameCallback, Long.valueOf(SystemClock.uptimeMillis() + j9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void doAnimationFrame(long j9) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        for (int i9 = 0; i9 < this.mAnimationCallbacks.size(); i9++) {
            AnimationHandler$AnimationFrameCallback animationHandler$AnimationFrameCallback = this.mAnimationCallbacks.get(i9);
            if (animationHandler$AnimationFrameCallback != null && isCallbackDue(animationHandler$AnimationFrameCallback, jUptimeMillis)) {
                animationHandler$AnimationFrameCallback.doAnimationFrame(j9);
            }
        }
        cleanUpList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public float getDurationScale() {
        return this.mDurationScale;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FrameCallbackScheduler getScheduler() {
        return this.mScheduler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isCurrentThread() {
        return this.mScheduler.isCurrentThread();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeCallback(AnimationHandler$AnimationFrameCallback animationHandler$AnimationFrameCallback) {
        this.mDelayedCallbackStartTime.remove(animationHandler$AnimationFrameCallback);
        int iIndexOf = this.mAnimationCallbacks.indexOf(animationHandler$AnimationFrameCallback);
        if (iIndexOf >= 0) {
            this.mAnimationCallbacks.set(iIndexOf, null);
            this.mListDirty = true;
        }
    }
}
