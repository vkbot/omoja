package com.android.server.wm;

import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
class EnsureActivitiesVisibleHelper {
    private boolean mAboveTop;
    private boolean mBehindFullscreenActivity;
    private int mConfigChanges;
    private boolean mContainerShouldBeVisible;
    private final ActivityStack mContiner;
    private boolean mNotifyClients;
    private boolean mPreserveWindows;
    private ActivityRecord mStarting;
    private ActivityRecord mTop;

    EnsureActivitiesVisibleHelper(ActivityStack container) {
        this.mContiner = container;
    }

    void reset(ActivityRecord starting, int configChanges, boolean preserveWindows, boolean notifyClients) {
        this.mStarting = starting;
        ActivityRecord activityRecord = this.mContiner.topRunningActivity();
        this.mTop = activityRecord;
        this.mAboveTop = activityRecord != null;
        boolean zShouldBeVisible = this.mContiner.shouldBeVisible(this.mStarting);
        this.mContainerShouldBeVisible = zShouldBeVisible;
        this.mBehindFullscreenActivity = !zShouldBeVisible;
        this.mConfigChanges = configChanges;
        this.mPreserveWindows = preserveWindows;
        this.mNotifyClients = notifyClients;
    }

    void process(ActivityRecord starting, int configChanges, boolean preserveWindows, boolean notifyClients) {
        reset(starting, configChanges, preserveWindows, notifyClients);
        ActivityRecord activityRecord = this.mTop;
        if (activityRecord != null) {
            this.mContiner.checkTranslucentActivityWaiting(activityRecord);
        }
        ActivityRecord activityRecord2 = this.mTop;
        boolean resumeTopActivity = activityRecord2 != null && !activityRecord2.mLaunchTaskBehind && this.mContiner.canBeResumed(starting) && (starting == null || !starting.isDescendantOf(this.mContiner));
        Consumer<ActivityRecord> consumerObtainConsumer = PooledLambda.obtainConsumer(new QuadConsumer() { // from class: com.android.server.wm.-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                ((EnsureActivitiesVisibleHelper) obj).setActivityVisibilityState((ActivityRecord) obj2, (ActivityRecord) obj3, ((Boolean) obj4).booleanValue());
            }
        }, this, PooledLambda.__(ActivityRecord.class), starting, Boolean.valueOf(resumeTopActivity));
        this.mContiner.forAllActivities(consumerObtainConsumer);
        consumerObtainConsumer.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setActivityVisibilityState(ActivityRecord r, ActivityRecord starting, boolean resumeTopActivity) {
        boolean isTop = r == this.mTop;
        if (this.mAboveTop && !isTop) {
            return;
        }
        this.mAboveTop = false;
        boolean reallyVisible = r.shouldBeVisible(this.mBehindFullscreenActivity, false);
        if (r.visibleIgnoringKeyguard) {
            if (r.occludesParent()) {
                this.mBehindFullscreenActivity = true;
            } else {
                this.mBehindFullscreenActivity = false;
            }
        }
        if (reallyVisible) {
            if (r.finishing) {
                return;
            }
            if (r != this.mStarting && this.mNotifyClients) {
                r.ensureActivityConfiguration(0, this.mPreserveWindows, true);
            }
            if (!r.attachedToProcess()) {
                makeVisibleAndRestartIfNeeded(this.mStarting, this.mConfigChanges, isTop, resumeTopActivity && isTop, r);
            } else if (r.mVisibleRequested) {
                if (r.mClientVisibilityDeferred && this.mNotifyClients) {
                    r.makeActiveIfNeeded(r.mClientVisibilityDeferred ? null : starting);
                    r.mClientVisibilityDeferred = false;
                }
                r.handleAlreadyVisible();
                if (this.mNotifyClients) {
                    r.makeActiveIfNeeded(this.mStarting);
                }
            } else {
                r.makeVisibleIfNeeded(this.mStarting, this.mNotifyClients);
            }
            this.mConfigChanges |= r.configChangeFlags;
        } else {
            r.makeInvisible();
        }
        this.mContiner.getWindowingMode();
        if (!this.mBehindFullscreenActivity && this.mContiner.isActivityTypeHome() && r.isRootOfTask()) {
            this.mBehindFullscreenActivity = true;
        }
    }

    private void makeVisibleAndRestartIfNeeded(ActivityRecord starting, int configChanges, boolean isTop, boolean andResume, ActivityRecord r) {
        if (!isTop && r.mVisibleRequested) {
            return;
        }
        if (r != starting) {
            r.startFreezingScreenLocked(configChanges);
        }
        if (!r.mVisibleRequested || r.mLaunchTaskBehind) {
            r.setVisibility(true);
        }
        if (r != starting) {
            this.mContiner.mStackSupervisor.startSpecificActivity(r, andResume, true);
        }
    }
}
