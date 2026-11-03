package com.android.launcher3.statemanager;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SystemUiController;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class StateManager<STATE_TYPE extends BaseState<STATE_TYPE>> {
    public static final String TAG = "StateManager";
    private final StatefulActivity<STATE_TYPE> mActivity;
    private final AtomicAnimationFactory mAtomicAnimationFactory;
    private final STATE_TYPE mBaseState;
    private STATE_TYPE mCurrentStableState;
    private STATE_TYPE mLastStableState;
    private STATE_TYPE mRestState;
    private STATE_TYPE mState;
    private List<StateHandler<STATE_TYPE>> mStateHandlers;
    private final AnimationState mConfig = new AnimationState();
    private final ArrayList<StateListener<STATE_TYPE>> mListeners = new ArrayList<>();
    private final Handler mUiHandler = new Handler(Looper.getMainLooper());

    public interface StateHandler<STATE_TYPE> {
        void setState(STATE_TYPE state);

        void setStateWithAnimation(STATE_TYPE toState, StateAnimationConfig config, PendingAnimation animation);
    }

    public interface StateListener<STATE_TYPE> {
        default void onStateTransitionComplete(STATE_TYPE finalState) {
        }

        default void onStateTransitionStart(STATE_TYPE toState) {
        }
    }

    public STATE_TYPE getCurrentStableState() {
        return this.mCurrentStableState;
    }

    public STATE_TYPE getLastState() {
        return this.mLastStableState;
    }

    public STATE_TYPE getRestState() {
        STATE_TYPE state_type = this.mRestState;
        return state_type == null ? this.mBaseState : state_type;
    }

    public STATE_TYPE getState() {
        return this.mState;
    }

    public void setRestState(STATE_TYPE restState) {
        this.mRestState = restState;
    }

    public StateManager(StatefulActivity<STATE_TYPE> l, STATE_TYPE baseState) {
        this.mActivity = l;
        this.mBaseState = baseState;
        this.mCurrentStableState = baseState;
        this.mLastStableState = baseState;
        this.mState = baseState;
        this.mAtomicAnimationFactory = l.createAtomicAnimationFactory();
    }

    public void dump(String prefix, PrintWriter writer) {
        writer.println(prefix + "StateManager:");
        writer.println(prefix + "\tmLastStableState:" + this.mLastStableState);
        writer.println(prefix + "\tmCurrentStableState:" + this.mCurrentStableState);
        writer.println(prefix + "\tmState:" + this.mState);
        writer.println(prefix + "\tmRestState:" + this.mRestState);
        writer.println(prefix + "\tisInTransition:" + (this.mConfig.currentAnimation != null));
    }

    public List<StateHandler<STATE_TYPE>> getStateHandlers() {
        if (this.mStateHandlers == null) {
            this.mStateHandlers = new ArrayList(Arrays.asList(this.mActivity.createStateHandlers()));
        }
        return this.mStateHandlers;
    }

    public void addStateListener(StateListener listener) {
        this.mListeners.add(listener);
    }

    public void removeStateListener(StateListener listener) {
        this.mListeners.remove(listener);
    }

    public boolean shouldAnimateStateChange() {
        return !this.mActivity.isForceInvisible() && this.mActivity.isStarted();
    }

    public boolean isInStableState(STATE_TYPE state) {
        return this.mState == state && this.mCurrentStableState == state && (this.mConfig.targetState == 0 || this.mConfig.targetState == state);
    }

    public void goToState(STATE_TYPE state) {
        goToState(state, shouldAnimateStateChange());
    }

    public void goToState(STATE_TYPE state, boolean animated) {
        goToState(state, animated, 0L, null);
    }

    public void goToState(STATE_TYPE state, boolean animated, Runnable onCompleteRunnable) {
        goToState(state, animated, 0L, onCompleteRunnable);
    }

    public void goToState(STATE_TYPE state, long delay, Runnable onCompleteRunnable) {
        goToState(state, true, delay, onCompleteRunnable);
    }

    public void goToState(STATE_TYPE state, long delay) {
        goToState(state, true, delay, null);
    }

    public void reapplyState() {
        reapplyState(false);
    }

    public void reapplyState(boolean cancelCurrentAnimation) {
        MLog.d(TAG, "reapplyState: mState=" + this.mState + ", cancelCurrentAnimation = " + cancelCurrentAnimation);
        boolean z = this.mConfig.currentAnimation != null;
        if (cancelCurrentAnimation) {
            this.mAtomicAnimationFactory.cancelAllStateElementAnimation();
            cancelAnimation();
        }
        if (this.mConfig.currentAnimation == null) {
            for (StateHandler<STATE_TYPE> stateHandler : getStateHandlers()) {
                if (stateHandler != null) {
                    stateHandler.setState(this.mState);
                }
            }
            if (z) {
                onStateTransitionEnd(this.mState);
            }
        }
    }

    private void goToState(final STATE_TYPE state, boolean animated, long delay, final Runnable onCompleteRunnable) {
        boolean zAreAnimationsEnabled = animated & Utilities.areAnimationsEnabled(this.mActivity);
        MLog.d(TAG, "goToState: state=" + state + " from=" + this.mState + " animated=" + zAreAnimationsEnabled + " delay=" + delay + " onCompleteRunnable=" + onCompleteRunnable + " " + Utilities.getStackTraceSingleLine(new Throwable()));
        if (isInWorkspaceHideState() && state != LauncherState.WORKSPACE_HIDE_STATE) {
            SystemUiController.HomeIcon.sendWorkspaceState(true, false);
        } else if (!isInWorkspaceHideState() && state == LauncherState.WORKSPACE_HIDE_STATE) {
            SystemUiController.HomeIcon.sendWorkspaceState(false, false);
        } else {
            SystemUiController.HomeIcon.sendWorkspaceState(state != LauncherState.WORKSPACE_HIDE_STATE, true);
        }
        if (this.mActivity.isInState(state)) {
            if (this.mConfig.currentAnimation == null) {
                if (onCompleteRunnable != null) {
                    onCompleteRunnable.run();
                    return;
                }
                return;
            } else if (!this.mConfig.userControlled && zAreAnimationsEnabled && this.mConfig.targetState == state) {
                if (onCompleteRunnable != null) {
                    this.mConfig.currentAnimation.addListener(AnimationSuccessListener.forRunnable(onCompleteRunnable));
                    return;
                }
                return;
            }
        }
        if (state instanceof LauncherState) {
            Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.statemanager.StateManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m153xe26a98a2(state);
                }
            });
        }
        final STATE_TYPE state_type = this.mState;
        this.mConfig.reset();
        if (zAreAnimationsEnabled) {
            if (delay > 0) {
                final int i = this.mConfig.changeId;
                this.mUiHandler.postDelayed(new Runnable() { // from class: com.android.launcher3.statemanager.StateManager$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m154xe1f432a3(i, state, state_type, onCompleteRunnable);
                    }
                }, delay);
                return;
            } else {
                goToStateAnimated(state, state_type, onCompleteRunnable);
                return;
            }
        }
        this.mAtomicAnimationFactory.cancelAllStateElementAnimation();
        onStateTransitionStart(state);
        for (StateHandler<STATE_TYPE> stateHandler : getStateHandlers()) {
            if (stateHandler != null) {
                stateHandler.setState(state);
            }
        }
        onStateTransitionEnd(state);
        if (onCompleteRunnable != null) {
            onCompleteRunnable.run();
        }
    }

    /* JADX INFO: renamed from: lambda$goToState$0$com-android-launcher3-statemanager-StateManager, reason: not valid java name */
    /* synthetic */ void m153xe26a98a2(BaseState baseState) {
        Settings.Global.putInt(this.mActivity.getContentResolver(), "launcher_state", ((LauncherState) baseState).ordinal);
    }

    /* JADX INFO: renamed from: lambda$goToState$1$com-android-launcher3-statemanager-StateManager, reason: not valid java name */
    /* synthetic */ void m154xe1f432a3(int i, BaseState baseState, BaseState baseState2, Runnable runnable) {
        if (this.mConfig.changeId == i) {
            goToStateAnimated(baseState, baseState2, runnable);
        }
    }

    private void goToStateAnimated(STATE_TYPE state, STATE_TYPE fromState, Runnable onCompleteRunnable) {
        int transitionDuration;
        AnimationState animationState = this.mConfig;
        if (state == this.mBaseState) {
            transitionDuration = fromState.getTransitionDuration(this.mActivity);
        } else {
            transitionDuration = state.getTransitionDuration(this.mActivity);
        }
        animationState.duration = transitionDuration;
        prepareForAtomicAnimation(fromState, state, this.mConfig);
        AnimatorSet animatorSetBuildAnim = createAnimationToNewWorkspaceInternal(state).buildAnim();
        if (onCompleteRunnable != null) {
            animatorSetBuildAnim.addListener(AnimationSuccessListener.forRunnable(onCompleteRunnable));
        }
        this.mUiHandler.post(new StartAnimRunnable(animatorSetBuildAnim));
    }

    public void prepareForAtomicAnimation(STATE_TYPE fromState, STATE_TYPE toState, StateAnimationConfig config) {
        this.mAtomicAnimationFactory.prepareForAtomicAnimation(fromState, toState, config);
    }

    public AnimatorSet createAtomicAnimation(STATE_TYPE fromState, STATE_TYPE toState, StateAnimationConfig config) {
        PendingAnimation pendingAnimation = new PendingAnimation(config.duration);
        prepareForAtomicAnimation(fromState, toState, config);
        Iterator<StateHandler<STATE_TYPE>> it = this.mActivity.getStateManager().getStateHandlers().iterator();
        while (it.hasNext()) {
            it.next().setStateWithAnimation(toState, config, pendingAnimation);
        }
        return pendingAnimation.buildAnim();
    }

    public AnimatorPlaybackController createAnimationToNewWorkspace(STATE_TYPE state, long duration) {
        return createAnimationToNewWorkspace(state, duration, 7);
    }

    public AnimatorPlaybackController createAnimationToNewWorkspace(STATE_TYPE state, long duration, int animComponents) {
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        stateAnimationConfig.duration = duration;
        stateAnimationConfig.animFlags = animComponents;
        return createAnimationToNewWorkspace(state, stateAnimationConfig);
    }

    public AnimatorPlaybackController createAnimationToNewWorkspace(STATE_TYPE state, StateAnimationConfig config) {
        config.userControlled = true;
        this.mConfig.reset();
        config.copyTo(this.mConfig);
        this.mConfig.playbackController = createAnimationToNewWorkspaceInternal(state).createPlaybackController();
        return this.mConfig.playbackController;
    }

    private PendingAnimation createAnimationToNewWorkspaceInternal(final STATE_TYPE state) {
        if (TestProtocol.sDebugTracing) {
            Log.d(TestProtocol.OVERIEW_NOT_ALLAPPS, "createAnimationToNewWorkspaceInternal: " + state);
        }
        PendingAnimation pendingAnimation = new PendingAnimation(this.mConfig.duration);
        if (this.mConfig.getAnimComponents() != 0) {
            for (StateHandler<STATE_TYPE> stateHandler : getStateHandlers()) {
                if (stateHandler != null) {
                    stateHandler.setStateWithAnimation(state, this.mConfig, pendingAnimation);
                }
            }
        }
        pendingAnimation.addListener(createStateAnimationListener(state));
        this.mConfig.setAnimation(pendingAnimation.buildAnim(), state);
        return pendingAnimation;
    }

    private Animator.AnimatorListener createStateAnimationListener(final STATE_TYPE state) {
        return new AnimationSuccessListener() { // from class: com.android.launcher3.statemanager.StateManager.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                StateManager.this.onStateTransitionStart(state);
            }

            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                if (TestProtocol.sDebugTracing) {
                    Log.d(TestProtocol.OVERIEW_NOT_ALLAPPS, "onAnimationSuccess: " + state);
                }
                StateManager.this.onStateTransitionEnd(state);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStateTransitionStart(STATE_TYPE state) {
        this.mState = state;
        this.mActivity.onStateSetStart(state);
        for (int size = this.mListeners.size() - 1; size >= 0; size--) {
            this.mListeners.get(size).onStateTransitionStart(state);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStateTransitionEnd(STATE_TYPE state_type) {
        STATE_TYPE state_type2 = this.mCurrentStableState;
        if (state_type != state_type2) {
            this.mLastStableState = (STATE_TYPE) state_type.getHistoryForState(state_type2);
            this.mCurrentStableState = state_type;
        }
        this.mActivity.onStateSetEnd(state_type);
        if (state_type == this.mBaseState) {
            setRestState(null);
        }
        for (int size = this.mListeners.size() - 1; size >= 0; size--) {
            this.mListeners.get(size).onStateTransitionComplete(state_type);
        }
    }

    public void moveToRestState() {
        if ((this.mConfig.currentAnimation == null || !this.mConfig.userControlled) && this.mState.shouldDisableRestore()) {
            goToState(getRestState());
            this.mLastStableState = this.mBaseState;
        }
    }

    public void cancelAnimation() {
        this.mConfig.reset();
    }

    public void setCurrentUserControlledAnimation(AnimatorPlaybackController controller) {
        clearCurrentAnimation();
        setCurrentAnimation(controller.getTarget(), new Animator[0]);
        this.mConfig.userControlled = true;
        this.mConfig.playbackController = controller;
    }

    public void setCurrentAnimation(AnimatorSet anim, STATE_TYPE toState) {
        cancelAnimation();
        setCurrentAnimation(anim, new Animator[0]);
        anim.addListener(createStateAnimationListener(toState));
    }

    public void setCurrentAnimation(AnimatorSet anim, Animator... childAnimations) {
        for (Animator animator : childAnimations) {
            if (animator != null) {
                if (this.mConfig.playbackController != null && this.mConfig.playbackController.getTarget() == animator) {
                    clearCurrentAnimation();
                    break;
                } else if (this.mConfig.currentAnimation == animator) {
                    clearCurrentAnimation();
                    break;
                }
            }
        }
        boolean z = this.mConfig.currentAnimation != null;
        cancelAnimation();
        if (z) {
            reapplyState();
            onStateTransitionEnd(this.mState);
        }
        this.mConfig.setAnimation(anim, null);
    }

    public void cancelStateElementAnimation(int index) {
        if (this.mAtomicAnimationFactory.mStateElementAnimators[index] != null) {
            this.mAtomicAnimationFactory.mStateElementAnimators[index].cancel();
        }
    }

    public Animator createStateElementAnimation(final int index, float... values) {
        cancelStateElementAnimation(index);
        Animator animatorCreateStateElementAnimation = this.mAtomicAnimationFactory.createStateElementAnimation(index, values);
        this.mAtomicAnimationFactory.mStateElementAnimators[index] = animatorCreateStateElementAnimation;
        animatorCreateStateElementAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.statemanager.StateManager.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                StateManager.this.mAtomicAnimationFactory.mStateElementAnimators[index] = null;
            }
        });
        return animatorCreateStateElementAnimation;
    }

    private void clearCurrentAnimation() {
        if (this.mConfig.currentAnimation != null) {
            this.mConfig.currentAnimation.removeListener(this.mConfig);
            this.mConfig.currentAnimation = null;
        }
        this.mConfig.playbackController = null;
    }

    private class StartAnimRunnable implements Runnable {
        private final AnimatorSet mAnim;

        public StartAnimRunnable(AnimatorSet anim) {
            this.mAnim = anim;
        }

        @Override // java.lang.Runnable
        public void run() {
            AnimatorSet animatorSet = StateManager.this.mConfig.currentAnimation;
            AnimatorSet animatorSet2 = this.mAnim;
            if (animatorSet != animatorSet2) {
                return;
            }
            animatorSet2.start();
        }
    }

    private static class AnimationState<STATE_TYPE> extends StateAnimationConfig implements Animator.AnimatorListener {
        private static final StateAnimationConfig DEFAULT = new StateAnimationConfig();
        public int changeId;
        public AnimatorSet currentAnimation;
        public AnimatorPlaybackController playbackController;
        public STATE_TYPE targetState;

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        private AnimationState() {
            this.changeId = 0;
        }

        public void reset() {
            DEFAULT.copyTo(this);
            this.targetState = null;
            AnimatorPlaybackController animatorPlaybackController = this.playbackController;
            if (animatorPlaybackController != null) {
                animatorPlaybackController.getAnimationPlayer().cancel();
                this.playbackController.dispatchOnCancel();
            } else {
                AnimatorSet animatorSet = this.currentAnimation;
                if (animatorSet != null) {
                    animatorSet.setDuration(0L);
                    this.currentAnimation.cancel();
                }
            }
            this.currentAnimation = null;
            this.playbackController = null;
            this.changeId++;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            AnimatorPlaybackController animatorPlaybackController = this.playbackController;
            if (animatorPlaybackController != null && animatorPlaybackController.getTarget() == animation) {
                this.playbackController = null;
            }
            if (this.currentAnimation == animation) {
                this.currentAnimation = null;
            }
        }

        public void setAnimation(AnimatorSet animation, STATE_TYPE targetState) {
            this.currentAnimation = animation;
            this.targetState = targetState;
            animation.addListener(this);
        }
    }

    public static class AtomicAnimationFactory<STATE_TYPE> {
        protected static final int NEXT_INDEX = 0;
        private final Animator[] mStateElementAnimators;

        public void prepareForAtomicAnimation(STATE_TYPE fromState, STATE_TYPE toState, StateAnimationConfig config) {
        }

        public AtomicAnimationFactory(int sharedElementAnimCount) {
            this.mStateElementAnimators = new Animator[sharedElementAnimCount];
        }

        void cancelAllStateElementAnimation() {
            for (Animator animator : this.mStateElementAnimators) {
                if (animator != null) {
                    animator.cancel();
                }
            }
        }

        public Animator createStateElementAnimation(int index, float... values) {
            throw new RuntimeException("Unknown gesture animation " + index);
        }
    }

    public boolean isInWidgetEditState() {
        return this.mState == LauncherState.WIDGET_SPRING_LOADED;
    }

    public boolean isInWorkspaceHideState() {
        return this.mState == LauncherState.WORKSPACE_HIDE_STATE;
    }
}
