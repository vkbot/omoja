package androidx.transition;

import android.view.animation.AnimationUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.util.Consumer;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.DynamicAnimation$OnAnimationUpdateListener;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import j1.i;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(34)
public class Transition$SeekController extends TransitionListenerAdapter implements TransitionSeekController, DynamicAnimation$OnAnimationUpdateListener {
    private boolean mIsCanceled;
    private boolean mIsReady;
    private Runnable mResetToStartState;
    private SpringAnimation mSpringAnimation;
    final /* synthetic */ Transition this$0;
    private long mCurrentPlayTime = -1;
    private ArrayList<Consumer<TransitionSeekController>> mOnReadyListeners = null;
    private ArrayList<Consumer<TransitionSeekController>> mOnProgressListeners = null;
    private Consumer<TransitionSeekController>[] mListenerCache = null;
    private final VelocityTracker1D mVelocityTracker = new VelocityTracker1D();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Transition$SeekController(Transition transition) {
        this.this$0 = transition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(Transition$SeekController transition$SeekController, DynamicAnimation dynamicAnimation, boolean z8, float f8, float f9) {
        transition$SeekController.lambda$ensureAnimation$0(dynamicAnimation, z8, f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void callProgressListeners() {
        ArrayList<Consumer<TransitionSeekController>> arrayList = this.mOnProgressListeners;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.mOnProgressListeners.size();
        if (this.mListenerCache == null) {
            this.mListenerCache = new Consumer[size];
        }
        Consumer<TransitionSeekController>[] consumerArr = (Consumer[]) this.mOnProgressListeners.toArray(this.mListenerCache);
        this.mListenerCache = null;
        for (int i9 = 0; i9 < size; i9++) {
            consumerArr[i9].accept(this);
            consumerArr[i9] = null;
        }
        this.mListenerCache = consumerArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureAnimation() {
        if (this.mSpringAnimation != null) {
            return;
        }
        this.mVelocityTracker.addDataPoint(AnimationUtils.currentAnimationTimeMillis(), this.mCurrentPlayTime);
        this.mSpringAnimation = new SpringAnimation(new FloatValueHolder());
        SpringForce springForce = new SpringForce();
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(200.0f);
        this.mSpringAnimation.setSpring(springForce);
        this.mSpringAnimation.setStartValue(this.mCurrentPlayTime);
        this.mSpringAnimation.addUpdateListener(this);
        this.mSpringAnimation.setStartVelocity(this.mVelocityTracker.calculateVelocity());
        this.mSpringAnimation.setMaxValue(getDurationMillis() + 1);
        this.mSpringAnimation.setMinValue(-1.0f);
        this.mSpringAnimation.setMinimumVisibleChange(4.0f);
        this.mSpringAnimation.addEndListener(new b(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$ensureAnimation$0(DynamicAnimation dynamicAnimation, boolean z8, float f8, float f9) {
        if (z8) {
            return;
        }
        if (f8 >= 1.0f) {
            this.this$0.notifyListeners(Transition$TransitionNotification.ON_END, false);
            return;
        }
        long durationMillis = getDurationMillis();
        Transition transitionAt = ((TransitionSet) this.this$0).getTransitionAt(0);
        Transition transitionAccess$000 = Transition.access$000(transitionAt);
        Transition.access$002(transitionAt, null);
        this.this$0.setCurrentPlayTimeMillis(-1L, this.mCurrentPlayTime);
        this.this$0.setCurrentPlayTimeMillis(durationMillis, -1L);
        this.mCurrentPlayTime = durationMillis;
        Runnable runnable = this.mResetToStartState;
        if (runnable != null) {
            runnable.run();
        }
        this.this$0.mAnimators.clear();
        if (transitionAccess$000 != null) {
            transitionAccess$000.notifyListeners(Transition$TransitionNotification.ON_END, true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public void addOnProgressChangedListener(@NonNull Consumer<TransitionSeekController> consumer) {
        if (this.mOnProgressListeners == null) {
            this.mOnProgressListeners = new ArrayList<>();
        }
        this.mOnProgressListeners.add(consumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public void addOnReadyListener(@NonNull Consumer<TransitionSeekController> consumer) {
        if (isReady()) {
            consumer.accept(this);
            return;
        }
        if (this.mOnReadyListeners == null) {
            this.mOnReadyListeners = new ArrayList<>();
        }
        this.mOnReadyListeners.add(consumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public void animateToEnd() {
        ensureAnimation();
        this.mSpringAnimation.animateToFinalPosition(getDurationMillis() + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public void animateToStart(@NonNull Runnable runnable) {
        this.mResetToStartState = runnable;
        ensureAnimation();
        this.mSpringAnimation.animateToFinalPosition(0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public float getCurrentFraction() {
        return getCurrentPlayTimeMillis() / getDurationMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public long getCurrentPlayTimeMillis() {
        return Math.min(getDurationMillis(), Math.max(0L, this.mCurrentPlayTime));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public long getDurationMillis() {
        return this.this$0.getTotalDurationMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void initPlayTime() {
        long j9 = getDurationMillis() == 0 ? 1L : 0L;
        this.this$0.setCurrentPlayTimeMillis(j9, this.mCurrentPlayTime);
        this.mCurrentPlayTime = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public boolean isReady() {
        return this.mIsReady;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation$OnAnimationUpdateListener
    public void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f8, float f9) {
        long jMax = Math.max(-1L, Math.min(getDurationMillis() + 1, Math.round(f8)));
        this.this$0.setCurrentPlayTimeMillis(jMax, this.mCurrentPlayTime);
        this.mCurrentPlayTime = jMax;
        callProgressListeners();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionCancel(@NonNull Transition transition) {
        this.mIsCanceled = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ready() {
        this.mIsReady = true;
        ArrayList<Consumer<TransitionSeekController>> arrayList = this.mOnReadyListeners;
        if (arrayList != null) {
            this.mOnReadyListeners = null;
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                arrayList.get(i9).accept(this);
            }
        }
        callProgressListeners();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public void removeOnProgressChangedListener(@NonNull Consumer<TransitionSeekController> consumer) {
        ArrayList<Consumer<TransitionSeekController>> arrayList = this.mOnProgressListeners;
        if (arrayList != null) {
            arrayList.remove(consumer);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public void removeOnReadyListener(@NonNull Consumer<TransitionSeekController> consumer) {
        ArrayList<Consumer<TransitionSeekController>> arrayList = this.mOnReadyListeners;
        if (arrayList != null) {
            arrayList.remove(consumer);
            if (this.mOnReadyListeners.isEmpty()) {
                this.mOnReadyListeners = null;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public void setCurrentFraction(float f8) {
        if (this.mSpringAnimation == null) {
            setCurrentPlayTimeMillis((long) (f8 * getDurationMillis()));
        } else {
            i.l("setCurrentFraction() called after animation has been started");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionSeekController
    public void setCurrentPlayTimeMillis(long j9) {
        if (this.mSpringAnimation != null) {
            i.l("setCurrentPlayTimeMillis() called after animation has been started");
            return;
        }
        if (j9 == this.mCurrentPlayTime || !isReady()) {
            return;
        }
        if (!this.mIsCanceled) {
            if (j9 != 0 || this.mCurrentPlayTime <= 0) {
                long durationMillis = getDurationMillis();
                if (j9 == durationMillis && this.mCurrentPlayTime < durationMillis) {
                    j9 = 1 + durationMillis;
                }
            } else {
                j9 = -1;
            }
            long j10 = this.mCurrentPlayTime;
            if (j9 != j10) {
                this.this$0.setCurrentPlayTimeMillis(j9, j10);
                this.mCurrentPlayTime = j9;
            }
        }
        callProgressListeners();
        this.mVelocityTracker.addDataPoint(AnimationUtils.currentAnimationTimeMillis(), j9);
    }
}
