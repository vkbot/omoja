package com.android.server.wm;

import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityOptions;
import android.app.AppGlobals;
import android.app.IActivityController;
import android.app.RemoteAction;
import android.app.ResultInfo;
import android.app.WindowConfiguration;
import android.app.servertransaction.ActivityResultItem;
import android.app.servertransaction.ClientTransaction;
import android.app.servertransaction.NewIntentItem;
import android.app.servertransaction.PauseActivityItem;
import android.app.servertransaction.ResumeActivityItem;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.service.voice.IVoiceInteractionSession;
import android.util.EventLog;
import android.util.Log;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import android.view.DisplayInfo;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.TriFunction;
import com.android.internal.util.function.pooled.PooledConsumer;
import com.android.internal.util.function.pooled.PooledFunction;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.Watchdog;
import com.android.server.am.ActivityManagerService;
import com.android.server.am.AppTimeTracker;
import com.android.server.uri.NeededUriGrants;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
class ActivityStack extends Task {
    private static final boolean SHOW_APP_STARTING_PREVIEW = true;
    static final int STACK_VISIBILITY_INVISIBLE = 2;
    static final int STACK_VISIBILITY_VISIBLE = 0;
    static final int STACK_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT = 1;
    private static final String TAG = "ActivityTaskManager";
    static final String TAG_ADD_REMOVE = "ActivityTaskManager";
    private static final String TAG_APP = "ActivityTaskManager";
    static final String TAG_CLEANUP = "ActivityTaskManager";
    private static final String TAG_PAUSE = "ActivityTaskManager";
    private static final String TAG_RELEASE = "ActivityTaskManager";
    private static final String TAG_RESULTS = "ActivityTaskManager";
    private static final String TAG_STACK = "ActivityTaskManager";
    private static final String TAG_STATES = "ActivityTaskManager";
    private static final String TAG_SWITCH = "ActivityTaskManager";
    static final String TAG_TASKS = "ActivityTaskManager";
    private static final String TAG_TRANSITION = "ActivityTaskManager";
    private static final String TAG_USER_LEAVING = "ActivityTaskManager";
    static final String TAG_VISIBILITY = "ActivityTaskManager";
    private static final long TRANSLUCENT_CONVERSION_TIMEOUT = 2000;
    private static final int TRANSLUCENT_TIMEOUT_MSG = 101;
    private static final ResetTargetTaskHelper sResetTargetTaskHelper = new ResetTargetTaskHelper();
    private final AnimatingActivityRegistry mAnimatingActivityRegistry;
    private boolean mBoundsAnimating;
    private boolean mBoundsAnimatingRequested;
    private Rect mBoundsAnimationSourceHintBounds;
    private Rect mBoundsAnimationTarget;
    private final CheckBehindFullscreenActivityHelper mCheckBehindFullscreenActivityHelper;
    boolean mConfigWillChange;
    int mCurrentUser;
    private final EnsureActivitiesVisibleHelper mEnsureActivitiesVisibleHelper;
    private final EnsureVisibleActivitiesConfigHelper mEnsureVisibleActivitiesConfigHelper;
    private final Handler mHandler;
    boolean mInResumeTopActivity;
    Rect mPreAnimationBounds;
    private final RemoveHistoryRecordsForApp mRemoveHistoryRecordsForApp;
    private Rect mTmpRect;
    private Rect mTmpRect2;
    private boolean mTopActivityOccludesKeyguard;
    private ActivityRecord mTopDismissingKeyguardActivity;
    ActivityRecord mTranslucentActivityWaiting;
    ArrayList<ActivityRecord> mUndrawnActivitiesBelowTopTranslucent;

    enum ActivityState {
        INITIALIZING,
        STARTED,
        RESUMED,
        PAUSING,
        PAUSED,
        STOPPING,
        STOPPED,
        FINISHING,
        DESTROYING,
        DESTROYED,
        RESTARTING_PROCESS
    }

    @interface StackVisibility {
    }

    private class ActivityStackHandler extends Handler {
        ActivityStackHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 101) {
                synchronized (ActivityStack.this.mAtmService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        ActivityStack.this.notifyActivityDrawnLocked(null);
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class EnsureVisibleActivitiesConfigHelper {
        private boolean mBehindFullscreen;
        private boolean mPreserveWindow;
        private boolean mUpdateConfig;

        private EnsureVisibleActivitiesConfigHelper() {
        }

        void reset(boolean preserveWindow) {
            this.mPreserveWindow = preserveWindow;
            this.mUpdateConfig = false;
            this.mBehindFullscreen = false;
        }

        void process(ActivityRecord start, boolean preserveWindow) {
            if (start == null || !start.mVisibleRequested) {
                return;
            }
            reset(preserveWindow);
            Function<ActivityRecord, Boolean> functionObtainFunction = PooledLambda.obtainFunction(new BiFunction() { // from class: com.android.server.wm.-$$Lambda$JTKQBRuxxgBAO5y04IFnI4psyA4
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Boolean.valueOf(((ActivityStack.EnsureVisibleActivitiesConfigHelper) obj).processActivity((ActivityRecord) obj2));
                }
            }, this, PooledLambda.__(ActivityRecord.class));
            ActivityStack.this.forAllActivities(functionObtainFunction, start, true, true);
            functionObtainFunction.recycle();
            if (this.mUpdateConfig) {
                ActivityStack.this.mRootWindowContainer.resumeFocusedStacksTopActivities();
            }
        }

        boolean processActivity(ActivityRecord r) {
            this.mUpdateConfig |= r.ensureActivityConfiguration(0, this.mPreserveWindow);
            boolean zOccludesParent = this.mBehindFullscreen | r.occludesParent();
            this.mBehindFullscreen = zOccludesParent;
            return zOccludesParent;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class CheckBehindFullscreenActivityHelper {
        private boolean mAboveTop;
        private boolean mBehindFullscreenActivity;
        private Consumer<ActivityRecord> mHandleBehindFullscreenActivity;
        private boolean mHandlingOccluded;
        private ActivityRecord mToCheck;

        private CheckBehindFullscreenActivityHelper() {
        }

        private void reset(ActivityRecord toCheck, Consumer<ActivityRecord> handleBehindFullscreenActivity) {
            this.mToCheck = toCheck;
            this.mHandleBehindFullscreenActivity = handleBehindFullscreenActivity;
            boolean z = true;
            this.mAboveTop = true;
            this.mBehindFullscreenActivity = false;
            if (!ActivityStack.this.shouldBeVisible(null)) {
                this.mAboveTop = false;
                this.mBehindFullscreenActivity = true;
            }
            if (this.mToCheck != null || this.mHandleBehindFullscreenActivity == null) {
                z = false;
            }
            this.mHandlingOccluded = z;
        }

        boolean process(ActivityRecord toCheck, Consumer<ActivityRecord> handleBehindFullscreenActivity) {
            reset(toCheck, handleBehindFullscreenActivity);
            if (!this.mHandlingOccluded && this.mBehindFullscreenActivity) {
                return true;
            }
            ActivityRecord topActivity = ActivityStack.this.topRunningActivity();
            Function<ActivityRecord, Boolean> functionObtainFunction = PooledLambda.obtainFunction(new TriFunction() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$CheckBehindFullscreenActivityHelper$hxEhv3lodv2mTq0c1tG208T2TSs
                public final Object apply(Object obj, Object obj2, Object obj3) {
                    return Boolean.valueOf(((ActivityStack.CheckBehindFullscreenActivityHelper) obj).processActivity((ActivityRecord) obj2, (ActivityRecord) obj3));
                }
            }, this, PooledLambda.__(ActivityRecord.class), topActivity);
            ActivityStack.this.forAllActivities(functionObtainFunction);
            functionObtainFunction.recycle();
            return this.mBehindFullscreenActivity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean processActivity(ActivityRecord r, ActivityRecord topActivity) {
            if (this.mAboveTop) {
                if (r == topActivity) {
                    if (r == this.mToCheck) {
                        this.mBehindFullscreenActivity = false;
                        return true;
                    }
                    this.mAboveTop = false;
                }
                this.mBehindFullscreenActivity |= r.occludesParent();
                return false;
            }
            if (this.mHandlingOccluded) {
                if (this.mBehindFullscreenActivity) {
                    this.mHandleBehindFullscreenActivity.accept(r);
                }
            } else if (r == this.mToCheck || this.mBehindFullscreenActivity) {
                return true;
            }
            this.mBehindFullscreenActivity |= r.occludesParent();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class RemoveHistoryRecordsForApp {
        private WindowProcessController mApp;
        private boolean mHasVisibleActivities;
        private boolean mIsProcessRemoved;
        private ArrayList<ActivityRecord> mToRemove;

        private RemoveHistoryRecordsForApp() {
            this.mToRemove = new ArrayList<>();
        }

        boolean process(WindowProcessController app) {
            this.mToRemove.clear();
            this.mHasVisibleActivities = false;
            this.mApp = app;
            boolean zIsRemoved = app.isRemoved();
            this.mIsProcessRemoved = zIsRemoved;
            if (zIsRemoved) {
                app.makeFinishingForProcessRemoved();
            }
            Consumer<ActivityRecord> consumerObtainConsumer = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((ActivityStack.RemoveHistoryRecordsForApp) obj).addActivityToRemove((ActivityRecord) obj2);
                }
            }, this, PooledLambda.__(ActivityRecord.class));
            ActivityStack.this.forAllActivities(consumerObtainConsumer);
            consumerObtainConsumer.recycle();
            while (!this.mToRemove.isEmpty()) {
                processActivity(this.mToRemove.remove(0));
            }
            this.mApp = null;
            return this.mHasVisibleActivities;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addActivityToRemove(ActivityRecord r) {
            if (r.app == this.mApp) {
                this.mToRemove.add(r);
            }
        }

        private void processActivity(ActivityRecord r) {
            boolean remove;
            if (r.app != this.mApp) {
                return;
            }
            if (r.isVisible() || r.mVisibleRequested) {
                this.mHasVisibleActivities = true;
            }
            if ((r.mRelaunchReason == 1 || r.mRelaunchReason == 2) && r.launchCount < 3 && !r.finishing) {
                remove = false;
            } else {
                boolean remove2 = r.hasSavedState();
                if ((!remove2 && !r.stateNotNeeded && !r.isState(ActivityState.RESTARTING_PROCESS)) || r.finishing) {
                    remove = true;
                } else {
                    boolean remove3 = r.mVisibleRequested;
                    if (!remove3 && r.launchCount > 2 && r.lastLaunchTime > SystemClock.uptimeMillis() - 60000) {
                        remove = true;
                    } else {
                        remove = false;
                    }
                }
            }
            if (remove) {
                Slog.i("ActivityTaskManager", "Removing activity " + r + " from stack : hasSavedState=" + r.hasSavedState() + " stateNotNeeded=" + r.stateNotNeeded + " finishing=" + r.finishing + " state=" + r.getState() + " callers=" + Debug.getCallers(5));
                if (!r.finishing || this.mIsProcessRemoved) {
                    Slog.w("ActivityTaskManager", "Force removing " + r + ": app died, no saved state");
                    EventLogTags.writeWmFinishActivity(r.mUserId, System.identityHashCode(r), r.getTask().mTaskId, r.shortComponentName, "proc died without state saved");
                }
            } else {
                Slog.v("ActivityTaskManager", "Clearing app during removeHistory for activity " + r);
                r.app = null;
                r.nowVisible = r.mVisibleRequested;
            }
            r.cleanUp(true, true);
            if (remove) {
                r.removeFromHistory("appDied");
            }
        }
    }

    ActivityStack(ActivityTaskManagerService atmService, int id, int activityType, ActivityInfo info, Intent intent, boolean createdByOrganizer) {
        this(atmService, id, info, intent, null, null, null, null);
        this.mCreatedByOrganizer = createdByOrganizer;
        setActivityType(activityType);
    }

    ActivityStack(ActivityTaskManagerService atmService, int id, ActivityInfo info, Intent _intent, IVoiceInteractionSession _voiceSession, IVoiceInteractor _voiceInteractor, ActivityManager.TaskDescription _taskDescription, ActivityStack stack) {
        this(atmService, id, _intent, null, null, null, null, null, false, false, false, UserHandle.getUserId(info.applicationInfo.uid), 0, null, System.currentTimeMillis(), true, _taskDescription != null ? _taskDescription : new ActivityManager.TaskDescription(), id, -1, -1, 0, info.applicationInfo.uid, info.packageName, null, info.resizeMode, info.supportsPictureInPicture(), false, false, -1, -1, info, _voiceSession, _voiceInteractor, stack);
    }

    ActivityStack(ActivityTaskManagerService atmService, int id, Intent _intent, Intent _affinityIntent, String _affinity, String _rootAffinity, ComponentName _realActivity, ComponentName _origActivity, boolean _rootWasReset, boolean _autoRemoveRecents, boolean _askedCompatMode, int _userId, int _effectiveUid, String _lastDescription, long lastTimeMoved, boolean neverRelinquishIdentity, ActivityManager.TaskDescription _lastTaskDescription, int taskAffiliation, int prevTaskId, int nextTaskId, int taskAffiliationColor, int callingUid, String callingPackage, String callingFeatureId, int resizeMode, boolean supportsPictureInPicture, boolean _realActivitySuspended, boolean userSetupComplete, int minWidth, int minHeight, ActivityInfo info, IVoiceInteractionSession _voiceSession, IVoiceInteractor _voiceInteractor, ActivityStack stack) {
        super(atmService, id, _intent, _affinityIntent, _affinity, _rootAffinity, _realActivity, _origActivity, _rootWasReset, _autoRemoveRecents, _askedCompatMode, _userId, _effectiveUid, _lastDescription, lastTimeMoved, neverRelinquishIdentity, _lastTaskDescription, taskAffiliation, prevTaskId, nextTaskId, taskAffiliationColor, callingUid, callingPackage, callingFeatureId, resizeMode, supportsPictureInPicture, _realActivitySuspended, userSetupComplete, minWidth, minHeight, info, _voiceSession, _voiceInteractor, stack);
        this.mTranslucentActivityWaiting = null;
        this.mUndrawnActivitiesBelowTopTranslucent = new ArrayList<>();
        this.mInResumeTopActivity = false;
        this.mTmpRect = new Rect();
        this.mTmpRect2 = new Rect();
        this.mBoundsAnimating = false;
        this.mBoundsAnimatingRequested = false;
        this.mBoundsAnimationTarget = new Rect();
        this.mBoundsAnimationSourceHintBounds = new Rect();
        this.mPreAnimationBounds = new Rect();
        this.mAnimatingActivityRegistry = new AnimatingActivityRegistry();
        this.mEnsureActivitiesVisibleHelper = new EnsureActivitiesVisibleHelper(this);
        this.mEnsureVisibleActivitiesConfigHelper = new EnsureVisibleActivitiesConfigHelper();
        this.mCheckBehindFullscreenActivityHelper = new CheckBehindFullscreenActivityHelper();
        this.mRemoveHistoryRecordsForApp = new RemoveHistoryRecordsForApp();
        EventLogTags.writeWmStackCreated(id);
        this.mHandler = new ActivityStackHandler(this.mStackSupervisor.mLooper);
        this.mCurrentUser = this.mAtmService.mAmInternal.getCurrentUserId();
    }

    @Override // com.android.server.wm.Task, com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void onConfigurationChanged(Configuration newParentConfig) {
        if (!isRootTask()) {
            super.onConfigurationChanged(newParentConfig);
            return;
        }
        int prevWindowingMode = getWindowingMode();
        boolean prevIsAlwaysOnTop = isAlwaysOnTop();
        int prevRotation = getWindowConfiguration().getRotation();
        Rect newBounds = this.mTmpRect;
        getBounds(newBounds);
        super.onConfigurationChanged(newParentConfig);
        TaskDisplayArea taskDisplayArea = getDisplayArea();
        if (taskDisplayArea == null) {
            return;
        }
        if (prevWindowingMode != getWindowingMode()) {
            taskDisplayArea.onStackWindowingModeChanged(this);
        }
        DisplayContent display = getDisplay();
        if (display == null) {
            return;
        }
        boolean windowingModeChanged = prevWindowingMode != getWindowingMode();
        int overrideWindowingMode = getRequestedOverrideWindowingMode();
        boolean hasNewOverrideBounds = false;
        if (overrideWindowingMode != 2 && !matchParentBounds()) {
            int newRotation = getWindowConfiguration().getRotation();
            boolean rotationChanged = prevRotation != newRotation;
            if (rotationChanged) {
                display.mDisplayContent.rotateBounds(newParentConfig.windowConfiguration.getBounds(), prevRotation, newRotation, newBounds);
                hasNewOverrideBounds = true;
            }
        }
        if (windowingModeChanged) {
            taskDisplayArea.onStackWindowingModeChanged(this);
        }
        if (hasNewOverrideBounds) {
            if (inSplitScreenWindowingMode()) {
                setBounds(newBounds);
            } else if (overrideWindowingMode != 2) {
                resize(new Rect(newBounds), true, true);
            }
        }
        if (prevIsAlwaysOnTop != isAlwaysOnTop()) {
            taskDisplayArea.positionStackAtTop(this, false);
        }
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public void setWindowingMode(int windowingMode) {
        this.stringName = null;
        if (!isRootTask()) {
            super.setWindowingMode(windowingMode);
        } else {
            setWindowingMode(windowingMode, false);
        }
    }

    void setWindowingMode(final int preferredWindowingMode, final boolean creating) {
        this.mWmService.inSurfaceTransaction(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setWindowingMode$0$ActivityStack(preferredWindowingMode, creating);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setWindowingModeInSurfaceTransaction, reason: merged with bridge method [inline-methods] */
    public void lambda$setWindowingMode$0$ActivityStack(int preferredWindowingMode, boolean creating) {
        int windowingMode;
        TaskDisplayArea taskDisplayArea = getDisplayArea();
        if (taskDisplayArea == null) {
            Slog.d("ActivityTaskManager", "taskDisplayArea is null, bail early");
            return;
        }
        int currentMode = getWindowingMode();
        getRequestedOverrideWindowingMode();
        Task topTask = getTopMostTask();
        if (!creating && !taskDisplayArea.isValidWindowingMode(preferredWindowingMode, null, topTask, getActivityType())) {
            windowingMode = 0;
        } else {
            windowingMode = preferredWindowingMode;
        }
        boolean alreadyInSplitScreenMode = taskDisplayArea.isSplitScreenModeActivated();
        if (creating && alreadyInSplitScreenMode && windowingMode == 1 && isActivityTypeStandardOrUndefined()) {
            this.mAtmService.getTaskChangeNotificationController().notifyActivityDismissingDockedStack();
            taskDisplayArea.onSplitScreenModeDismissed(this);
        }
        if (currentMode == windowingMode) {
            getRequestedOverrideConfiguration().windowConfiguration.setWindowingMode(windowingMode);
            return;
        }
        ActivityRecord topActivity = getTopNonFinishingActivity();
        int likelyResolvedMode = windowingMode;
        if (windowingMode == 0) {
            ConfigurationContainer parent = getParent();
            likelyResolvedMode = parent != null ? parent.getWindowingMode() : 1;
        }
        if (currentMode == 2) {
            this.mRootWindowContainer.notifyActivityPipModeChanged(this, null);
        }
        if (likelyResolvedMode == 2 && taskDisplayArea.getRootPinnedTask() != null) {
            taskDisplayArea.getRootPinnedTask().dismissPip();
        }
        if (likelyResolvedMode != 1 && topActivity != null && !topActivity.noDisplay && topActivity.isNonResizableOrForcedResizable(likelyResolvedMode)) {
            String packageName = topActivity.info.applicationInfo.packageName;
            this.mAtmService.getTaskChangeNotificationController().notifyActivityForcedResizable(topTask.mTaskId, 1, packageName);
        }
        this.mAtmService.deferWindowLayout();
        if (topActivity != null) {
            try {
                this.mStackSupervisor.mNoAnimActivities.add(topActivity);
            } catch (Throwable th) {
                this.mAtmService.continueWindowLayout();
                throw th;
            }
        }
        super.setWindowingMode(windowingMode);
        int windowingMode2 = getWindowingMode();
        if (!creating) {
            if (windowingMode2 == 3 && alreadyInSplitScreenMode) {
                throw new IllegalArgumentException("Setting primary split-screen windowing mode while there is already one isn't currently supported");
            }
            this.mTmpRect2.setEmpty();
            if (windowingMode2 != 1) {
                if (matchParentBounds()) {
                    this.mTmpRect2.setEmpty();
                } else {
                    getRawBounds(this.mTmpRect2);
                }
            }
            if (!Objects.equals(getRequestedOverrideBounds(), this.mTmpRect2)) {
                resize(this.mTmpRect2, false, true);
            }
            this.mAtmService.continueWindowLayout();
            this.mRootWindowContainer.ensureActivitiesVisible(null, 0, true);
            this.mRootWindowContainer.resumeFocusedStacksTopActivities();
            boolean pinnedToFullscreen = currentMode == 2 && windowingMode2 == 1;
            if (pinnedToFullscreen && topActivity != null && !isForceHidden()) {
                this.mDisplayContent.getPinnedStackController().setPipWindowingModeChanging(true);
                try {
                    topActivity.reportDescendantOrientationChangeIfNeeded();
                    return;
                } finally {
                    this.mDisplayContent.getPinnedStackController().setPipWindowingModeChanging(false);
                }
            }
            return;
        }
        this.mAtmService.continueWindowLayout();
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public boolean isCompatible(int windowingMode, int activityType) {
        if (activityType == 0) {
            activityType = 1;
        }
        return super.isCompatible(windowingMode, activityType);
    }

    void postReparent() {
        adjustFocusToNextFocusableTask("reparent", true, true);
        this.mRootWindowContainer.resumeFocusedStacksTopActivities();
        this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
    }

    DisplayContent getDisplay() {
        return getDisplayContent();
    }

    boolean isSingleTaskInstance() {
        DisplayContent display = getDisplay();
        return display != null && display.isSingleTaskInstance();
    }

    final boolean isHomeOrRecentsStack() {
        return isActivityTypeHome() || isActivityTypeRecents();
    }

    final boolean isOnHomeDisplay() {
        return getDisplayId() == 0;
    }

    void moveToFront(String reason) {
        moveToFront(reason, null);
    }

    void moveToFront(String reason, Task task) {
        ActivityStack topFullScreenStack;
        ActivityStack primarySplitScreenStack;
        if (!isAttached()) {
            return;
        }
        TaskDisplayArea taskDisplayArea = getDisplayArea();
        if (inSplitScreenSecondaryWindowingMode() && (topFullScreenStack = taskDisplayArea.getTopStackInWindowingMode(1)) != null && (primarySplitScreenStack = taskDisplayArea.getRootSplitScreenPrimaryTask()) != null && taskDisplayArea.getIndexOf(topFullScreenStack) > taskDisplayArea.getIndexOf(primarySplitScreenStack)) {
            primarySplitScreenStack.moveToFront(reason + " splitScreenToTop");
        }
        if (!isActivityTypeHome() && returnsToHomeStack()) {
            taskDisplayArea.moveHomeStackToFront(reason + " returnToHome");
        }
        if (isRootTask()) {
            taskDisplayArea.positionStackAtTop(this, false, reason);
        }
        if (task == null) {
            task = this;
        }
        task.getParent().positionChildAt(Integer.MAX_VALUE, task, true);
    }

    void moveToBack(String reason, Task task) {
        if (!isAttached()) {
            return;
        }
        TaskDisplayArea displayArea = getDisplayArea();
        if (!this.mCreatedByOrganizer) {
            WindowContainer parent = getParent();
            Task parentTask = parent != null ? parent.asTask() : null;
            if (parentTask != null) {
                ((ActivityStack) parentTask).moveToBack(reason, this);
            } else {
                displayArea.positionStackAtBottom(this, reason);
            }
            if (task != null && task != this) {
                positionChildAtBottom(task);
                return;
            }
            return;
        }
        if (task == null || task == this) {
            return;
        }
        displayArea.positionTaskBehindHome((ActivityStack) task);
    }

    @Override // com.android.server.wm.WindowContainer
    void switchUser(int userId) {
        if (this.mCurrentUser == userId) {
            return;
        }
        this.mCurrentUser = userId;
        super.switchUser(userId);
        if (isLeafTask() && showToCurrentUser()) {
            getParent().positionChildAt(Integer.MAX_VALUE, this, false);
        }
    }

    void minimalResumeActivityLocked(ActivityRecord r) {
        Slog.v("ActivityTaskManager", "Moving to RESUMED: " + r + " (starting new instance) callers=" + Debug.getCallers(5));
        r.setState(ActivityState.RESUMED, "minimalResumeActivityLocked");
        r.completeResumeLocked();
    }

    private void clearLaunchTime(ActivityRecord r) {
        if (!this.mStackSupervisor.mWaitingActivityLaunched.isEmpty()) {
            this.mStackSupervisor.removeIdleTimeoutForActivity(r);
            this.mStackSupervisor.scheduleIdleTimeout(r);
        }
    }

    void awakeFromSleepingLocked() {
        forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$kcQFk5WutXx0C5lv3vrFd4Ndfrc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ActivityRecord) obj).setSleeping(false);
            }
        });
        if (this.mPausingActivity != null) {
            Slog.d("ActivityTaskManager", "awakeFromSleepingLocked: previously pausing activity didn't pause");
            this.mPausingActivity.activityPaused(true);
        }
    }

    void checkReadyForSleep() {
        if (shouldSleepActivities() && goToSleepIfPossible(false)) {
            this.mStackSupervisor.checkReadyForSleepLocked(true);
        }
    }

    boolean goToSleepIfPossible(boolean shuttingDown) {
        boolean shouldSleep = true;
        if (this.mResumedActivity != null) {
            Slog.v("ActivityTaskManager", "Sleep needs to pause " + this.mResumedActivity);
            startPausingLocked(false, true, null);
            shouldSleep = false;
        } else if (this.mPausingActivity != null) {
            Slog.v("ActivityTaskManager", "Sleep still waiting to pause " + this.mPausingActivity);
            shouldSleep = false;
        }
        if (!shuttingDown && containsActivityFromStack(this.mStackSupervisor.mStoppingActivities)) {
            Slog.v("ActivityTaskManager", "Sleep still need to stop " + this.mStackSupervisor.mStoppingActivities.size() + " activities");
            this.mStackSupervisor.scheduleIdle();
            shouldSleep = false;
        }
        if (shouldSleep) {
            goToSleep();
        }
        return shouldSleep;
    }

    void goToSleep() {
        forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$lRi576ARFILdHSErAxeCOOe5hlg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ActivityStack.lambda$goToSleep$2((ActivityRecord) obj);
            }
        });
        ensureActivitiesVisible(null, 0, false);
    }

    static /* synthetic */ void lambda$goToSleep$2(ActivityRecord r) {
        if (r.isState(ActivityState.STARTED, ActivityState.RESUMED, ActivityState.PAUSING, ActivityState.PAUSED, ActivityState.STOPPING, ActivityState.STOPPED)) {
            r.setSleeping(true);
        }
    }

    private boolean containsActivityFromStack(List<ActivityRecord> rs) {
        for (ActivityRecord r : rs) {
            if (r.getRootTask() == this) {
                return true;
            }
        }
        return false;
    }

    final boolean startPausingLocked(boolean userLeaving, boolean uiSleeping, ActivityRecord resuming) {
        if (this.mPausingActivity != null) {
            Slog.wtf("ActivityTaskManager", "Going to pause when pause is already pending for " + this.mPausingActivity + " state=" + this.mPausingActivity.getState());
            if (!shouldSleepActivities()) {
                completePauseLocked(false, resuming);
            }
        }
        ActivityRecord prev = this.mResumedActivity;
        if (prev == null) {
            if (resuming == null) {
                Slog.wtf("ActivityTaskManager", "Trying to pause when nothing is resumed");
                this.mRootWindowContainer.resumeFocusedStacksTopActivities();
            }
            return false;
        }
        if (prev == resuming) {
            Slog.wtf("ActivityTaskManager", "Trying to pause activity that is in process of being resumed");
            return false;
        }
        Slog.v("ActivityTaskManager", "Moving to PAUSING: " + prev);
        this.mPausingActivity = prev;
        this.mLastPausedActivity = prev;
        this.mLastNoHistoryActivity = prev.isNoHistory() ? prev : null;
        prev.setState(ActivityState.PAUSING, "startPausingLocked");
        prev.getTask().touchActiveTime();
        clearLaunchTime(prev);
        this.mAtmService.updateCpuStats();
        boolean pauseImmediately = false;
        if (resuming != null && (resuming.info.flags & 16384) != 0) {
            boolean lastResumedCanPip = prev != null && prev.checkEnterPictureInPictureState("shouldResumeWhilePausing", userLeaving);
            if (!lastResumedCanPip) {
                pauseImmediately = true;
            }
        }
        boolean lastResumedCanPip2 = prev.attachedToProcess();
        if (lastResumedCanPip2) {
            Slog.v("ActivityTaskManager", "Enqueueing pending pause: " + prev);
            try {
                EventLogTags.writeWmPauseActivity(prev.mUserId, System.identityHashCode(prev), prev.shortComponentName, "userLeaving=" + userLeaving);
                this.mAtmService.getLifecycleManager().scheduleTransaction(prev.app.getThread(), (IBinder) prev.appToken, PauseActivityItem.obtain(prev.finishing, userLeaving, prev.configChangeFlags, pauseImmediately));
            } catch (Exception e) {
                Slog.w("ActivityTaskManager", "Exception thrown during pause", e);
                this.mPausingActivity = null;
                this.mLastPausedActivity = null;
                this.mLastNoHistoryActivity = null;
            }
        } else {
            this.mPausingActivity = null;
            this.mLastPausedActivity = null;
            this.mLastNoHistoryActivity = null;
        }
        if (!uiSleeping && !this.mAtmService.isSleepingOrShuttingDownLocked()) {
            this.mStackSupervisor.acquireLaunchWakelock();
        }
        if (this.mPausingActivity != null) {
            if (!uiSleeping) {
                prev.pauseKeyDispatchingLocked();
            } else {
                Slog.v("ActivityTaskManager", "Key dispatch not paused for screen off");
            }
            if (pauseImmediately) {
                completePauseLocked(false, resuming);
                return false;
            }
            prev.schedulePauseTimeout();
            return true;
        }
        Slog.v("ActivityTaskManager", "Activity not running, resuming next.");
        if (resuming == null) {
            this.mRootWindowContainer.resumeFocusedStacksTopActivities();
        }
        return false;
    }

    void completePauseLocked(boolean resumeNext, ActivityRecord resuming) {
        ActivityRecord prev = this.mPausingActivity;
        Slog.v("ActivityTaskManager", "Complete pause: " + prev);
        if (prev != null) {
            prev.setWillCloseOrEnterPip(false);
            boolean wasStopping = prev.isState(ActivityState.STOPPING);
            prev.setState(ActivityState.PAUSED, "completePausedLocked");
            if (prev.finishing) {
                Slog.v("ActivityTaskManager", "Executing finish of activity: " + prev);
                prev = prev.completeFinishing("completePausedLocked");
            } else if (prev.hasProcess()) {
                Slog.v("ActivityTaskManager", "Enqueue pending stop if needed: " + prev + " wasStopping=" + wasStopping + " visibleRequested=" + prev.mVisibleRequested);
                if (prev.deferRelaunchUntilPaused) {
                    Slog.v("ActivityTaskManager", "Re-launching after pause: " + prev);
                    prev.relaunchActivityLocked(prev.preserveWindowOnDeferredRelaunch);
                } else if (wasStopping) {
                    prev.setState(ActivityState.STOPPING, "completePausedLocked");
                } else if (!prev.mVisibleRequested || shouldSleepOrShutDownActivities()) {
                    prev.setDeferHidingClient(false);
                    prev.addToStopping(true, false, "completePauseLocked");
                }
            } else {
                Slog.v("ActivityTaskManager", "App died during pause, not stopping: " + prev);
                prev = null;
            }
            if (prev != null) {
                prev.stopFreezingScreenLocked(true);
            }
            this.mPausingActivity = null;
        }
        if (resumeNext) {
            ActivityStack topStack = this.mRootWindowContainer.getTopDisplayFocusedStack();
            if (topStack != null && !topStack.shouldSleepOrShutDownActivities()) {
                this.mRootWindowContainer.resumeFocusedStacksTopActivities(topStack, prev, null);
            } else {
                checkReadyForSleep();
                ActivityRecord top = topStack != null ? topStack.topRunningActivity() : null;
                if (top == null || (prev != null && top != prev)) {
                    this.mRootWindowContainer.resumeFocusedStacksTopActivities();
                }
            }
        }
        if (prev != null) {
            prev.resumeKeyDispatchingLocked();
            if (prev.hasProcess() && prev.cpuTimeAtResume > 0) {
                long diff = prev.app.getCpuTime() - prev.cpuTimeAtResume;
                if (diff > 0) {
                    Runnable r = PooledLambda.obtainRunnable(new QuadConsumer() { // from class: com.android.server.wm.-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw
                        public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                            ((ActivityManagerInternal) obj).updateForegroundTimeIfOnBattery((String) obj2, ((Integer) obj3).intValue(), ((Long) obj4).longValue());
                        }
                    }, this.mAtmService.mAmInternal, prev.info.packageName, Integer.valueOf(prev.info.applicationInfo.uid), Long.valueOf(diff));
                    this.mAtmService.mH.post(r);
                }
            }
            prev.cpuTimeAtResume = 0L;
        }
        this.mRootWindowContainer.ensureActivitiesVisible(resuming, 0, false);
        if (this.mStackSupervisor.mAppVisibilitiesChangedSinceLastPause || (getDisplayArea() != null && getDisplayArea().hasPinnedTask())) {
            this.mAtmService.getTaskChangeNotificationController().notifyTaskStackChanged();
            this.mStackSupervisor.mAppVisibilitiesChangedSinceLastPause = false;
        }
    }

    boolean isTopStackInDisplayArea() {
        TaskDisplayArea taskDisplayArea = getDisplayArea();
        return taskDisplayArea != null && taskDisplayArea.isTopStack(this);
    }

    boolean isFocusedStackOnDisplay() {
        DisplayContent display = getDisplay();
        return display != null && this == display.getFocusedStack();
    }

    void ensureActivitiesVisible(ActivityRecord starting, int configChanges, boolean preserveWindows) {
        ensureActivitiesVisible(starting, configChanges, preserveWindows, true);
    }

    void ensureActivitiesVisible(ActivityRecord starting, int configChanges, boolean preserveWindows, boolean notifyClients) {
        this.mTopActivityOccludesKeyguard = false;
        this.mTopDismissingKeyguardActivity = null;
        this.mStackSupervisor.beginActivityVisibilityUpdate();
        try {
            this.mEnsureActivitiesVisibleHelper.process(starting, configChanges, preserveWindows, notifyClients);
            if (this.mTranslucentActivityWaiting != null && this.mUndrawnActivitiesBelowTopTranslucent.isEmpty()) {
                notifyActivityDrawnLocked(null);
            }
        } finally {
            this.mStackSupervisor.endActivityVisibilityUpdate();
        }
    }

    boolean topActivityOccludesKeyguard() {
        return this.mTopActivityOccludesKeyguard;
    }

    boolean shouldResizeStackWithLaunchBounds() {
        return inPinnedWindowingMode();
    }

    boolean isTopSplitScreenStack() {
        return inSplitScreenWindowingMode() && this == getDisplayArea().getTopStackInWindowingMode(getWindowingMode());
    }

    ActivityRecord getTopDismissingKeyguardActivity() {
        return this.mTopDismissingKeyguardActivity;
    }

    boolean checkKeyguardVisibility(ActivityRecord r, boolean shouldBeVisible, boolean isTop) {
        int displayId = getDisplayId();
        if (displayId == -1) {
            displayId = 0;
        }
        boolean keyguardOrAodShowing = this.mStackSupervisor.getKeyguardController().isKeyguardOrAodShowing(displayId);
        boolean keyguardLocked = this.mStackSupervisor.getKeyguardController().isKeyguardLocked();
        boolean showWhenLocked = r.canShowWhenLocked();
        boolean dismissKeyguard = r.containsDismissKeyguardWindow();
        if (shouldBeVisible) {
            if (dismissKeyguard && this.mTopDismissingKeyguardActivity == null) {
                this.mTopDismissingKeyguardActivity = r;
            }
            if (isTop) {
                this.mTopActivityOccludesKeyguard |= showWhenLocked;
            }
            boolean canShowWithKeyguard = canShowWithInsecureKeyguard() && this.mStackSupervisor.getKeyguardController().canDismissKeyguard();
            if (canShowWithKeyguard) {
                return true;
            }
        }
        if (keyguardOrAodShowing) {
            return shouldBeVisible && this.mStackSupervisor.getKeyguardController().canShowActivityWhileKeyguardShowing(r, dismissKeyguard);
        }
        if (keyguardLocked) {
            return shouldBeVisible && this.mStackSupervisor.getKeyguardController().canShowWhileOccluded(dismissKeyguard, showWhenLocked);
        }
        return shouldBeVisible;
    }

    boolean canShowWithInsecureKeyguard() {
        DisplayContent displayContent = getDisplay();
        if (displayContent == null) {
            throw new IllegalStateException("Stack is not attached to any display, stackId=" + getRootTaskId());
        }
        int flags = displayContent.mDisplay.getFlags();
        return (flags & 32) != 0;
    }

    void checkTranslucentActivityWaiting(ActivityRecord top) {
        if (this.mTranslucentActivityWaiting != top) {
            this.mUndrawnActivitiesBelowTopTranslucent.clear();
            if (this.mTranslucentActivityWaiting != null) {
                notifyActivityDrawnLocked(null);
                this.mTranslucentActivityWaiting = null;
            }
            this.mHandler.removeMessages(101);
        }
    }

    void convertActivityToTranslucent(ActivityRecord r) {
        this.mTranslucentActivityWaiting = r;
        this.mUndrawnActivitiesBelowTopTranslucent.clear();
        this.mHandler.sendEmptyMessageDelayed(101, TRANSLUCENT_CONVERSION_TIMEOUT);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void notifyActivityDrawnLocked(ActivityRecord r) {
        if (r == null || (this.mUndrawnActivitiesBelowTopTranslucent.remove(r) && this.mUndrawnActivitiesBelowTopTranslucent.isEmpty())) {
            ActivityRecord waitingActivity = this.mTranslucentActivityWaiting;
            this.mTranslucentActivityWaiting = null;
            this.mUndrawnActivitiesBelowTopTranslucent.clear();
            this.mHandler.removeMessages(101);
            if (waitingActivity != null) {
                this.mWmService.setWindowOpaqueLocked(waitingActivity.appToken, false);
                if (waitingActivity.attachedToProcess()) {
                    try {
                        waitingActivity.app.getThread().scheduleTranslucentConversionComplete(waitingActivity.appToken, r != null);
                    } catch (RemoteException e) {
                    }
                }
            }
        }
    }

    void cancelInitializingActivities() {
        checkBehindFullscreenActivity(null, new Consumer() { // from class: com.android.server.wm.-$$Lambda$_-mEZ6EASUAbbjgZj87dfvxRN64
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ActivityRecord) obj).cancelInitializing();
            }
        });
    }

    boolean checkBehindFullscreenActivity(ActivityRecord toCheck, Consumer<ActivityRecord> handleBehindFullscreenActivity) {
        return this.mCheckBehindFullscreenActivityHelper.process(toCheck, handleBehindFullscreenActivity);
    }

    boolean resumeTopActivityUncheckedLocked(ActivityRecord prev, ActivityOptions options) {
        if (this.mInResumeTopActivity) {
            return false;
        }
        try {
            this.mInResumeTopActivity = true;
            boolean result = resumeTopActivityInnerLocked(prev, options);
            ActivityRecord next = topRunningActivity(true);
            if (next == null || !next.canTurnScreenOn()) {
                checkReadyForSleep();
            }
            return result;
        } finally {
            this.mInResumeTopActivity = false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:237:0x04f6  */
    /* JADX WARN: Code duplicated, block: B:240:0x0513  */
    /* JADX WARN: Code duplicated, block: B:241:0x0518  */
    /* JADX WARN: Code duplicated, block: B:85:0x0164 A[PHI: r6
  0x0164: PHI (r6v12 'lastResumed' com.android.server.wm.ActivityRecord) = 
  (r6v11 'lastResumed' com.android.server.wm.ActivityRecord)
  (r6v11 'lastResumed' com.android.server.wm.ActivityRecord)
  (r6v29 'lastResumed' com.android.server.wm.ActivityRecord)
  (r6v29 'lastResumed' com.android.server.wm.ActivityRecord)
  (r6v29 'lastResumed' com.android.server.wm.ActivityRecord)
 binds: [B:76:0x014c, B:77:0x014e, B:79:0x0152, B:81:0x0158, B:83:0x015e] A[DONT_GENERATE, DONT_INLINE]] */
    private boolean resumeTopActivityInnerLocked(ActivityRecord prev, ActivityOptions options) {
        ActivityRecord lastResumed;
        boolean userLeaving;
        boolean pausing;
        boolean anim;
        boolean notUpdated;
        boolean z;
        boolean z2;
        int i;
        boolean z3;
        if (!this.mAtmService.isBooting() && !this.mAtmService.isBooted()) {
            return false;
        }
        ActivityRecord next = topRunningActivity(true);
        boolean hasRunningActivity = next != null;
        if (hasRunningActivity && !isAttached()) {
            return false;
        }
        this.mRootWindowContainer.cancelInitializingActivities();
        boolean userLeaving2 = this.mStackSupervisor.mUserLeaving;
        this.mStackSupervisor.mUserLeaving = false;
        if (!hasRunningActivity) {
            return resumeNextFocusableActivityWhenStackIsEmpty(prev, options);
        }
        next.delayedResume = false;
        TaskDisplayArea taskDisplayArea = getDisplayArea();
        if (this.mResumedActivity == next && next.isState(ActivityState.RESUMED) && taskDisplayArea.allResumedActivitiesComplete()) {
            executeAppTransition(options);
            Slog.d("ActivityTaskManager", "resumeTopActivityLocked: Top activity resumed " + next);
            return false;
        }
        if (!next.canResumeByCompat()) {
            return false;
        }
        boolean allPausedComplete = this.mRootWindowContainer.allPausedActivitiesComplete();
        if (!allPausedComplete) {
            Slog.v("ActivityTaskManager", "resumeTopActivityLocked: Skip resume: some activity pausing.");
            return false;
        }
        if (shouldSleepOrShutDownActivities() && this.mLastPausedActivity == next && this.mRootWindowContainer.allPausedActivitiesComplete()) {
            boolean nothingToResume = true;
            if (!this.mAtmService.mShuttingDown) {
                boolean canShowWhenLocked = !this.mTopActivityOccludesKeyguard && next.canShowWhenLocked();
                boolean mayDismissKeyguard = this.mTopDismissingKeyguardActivity != next && next.containsDismissKeyguardWindow();
                if (canShowWhenLocked || mayDismissKeyguard) {
                    ensureActivitiesVisible(null, 0, false);
                    nothingToResume = shouldSleepActivities();
                } else if (next.currentLaunchCanTurnScreenOn() && next.canTurnScreenOn()) {
                    nothingToResume = false;
                }
            }
            if (nothingToResume) {
                executeAppTransition(options);
                Slog.d("ActivityTaskManager", "resumeTopActivityLocked: Going to sleep and all paused");
                return false;
            }
        }
        if (!this.mAtmService.mAmInternal.hasStartedUserState(next.mUserId)) {
            Slog.w("ActivityTaskManager", "Skipping resume of top activity " + next + ": user " + next.mUserId + " is stopped");
            return false;
        }
        this.mStackSupervisor.mStoppingActivities.remove(next);
        next.setSleeping(false);
        Slog.v("ActivityTaskManager", "Resuming " + next);
        if (!this.mRootWindowContainer.allPausedActivitiesComplete()) {
            Slog.v("ActivityTaskManager", "resumeTopActivityLocked: Skip resume: some activity pausing.");
            return false;
        }
        this.mStackSupervisor.setLaunchSource(next.info.applicationInfo.uid);
        ActivityRecord lastResumed2 = null;
        ActivityStack lastFocusedStack = taskDisplayArea.getLastFocusedStack();
        if (lastFocusedStack != null && lastFocusedStack != this) {
            lastResumed2 = lastFocusedStack.mResumedActivity;
            if (userLeaving2 && inMultiWindowMode() && lastFocusedStack.shouldBeVisible(next)) {
                lastResumed = lastResumed2;
                userLeaving = false;
            } else {
                lastResumed = lastResumed2;
                userLeaving = userLeaving2;
            }
        } else {
            lastResumed = lastResumed2;
            userLeaving = userLeaving2;
        }
        boolean pausing2 = taskDisplayArea.pauseBackStacks(userLeaving, next);
        if (this.mResumedActivity == null) {
            pausing = pausing2;
        } else {
            Slog.d("ActivityTaskManager", "resumeTopActivityLocked: Pausing " + this.mResumedActivity);
            pausing = pausing2 | startPausingLocked(userLeaving, false, next);
        }
        if (pausing) {
            Slog.v("ActivityTaskManager", "resumeTopActivityLocked: Skip resume: need to start pausing");
            if (next.attachedToProcess()) {
                next.app.updateProcessInfo(false, true, false, false);
            } else if (!next.isProcessRunning()) {
                boolean isTop = this == taskDisplayArea.getFocusedStack();
                this.mAtmService.startProcessAsync(next, false, isTop, isTop ? "pre-top-activity" : "pre-activity");
            }
            if (lastResumed == null) {
                return true;
            }
            lastResumed.setWillCloseOrEnterPip(true);
            return true;
        }
        if (this.mResumedActivity == next && next.isState(ActivityState.RESUMED) && taskDisplayArea.allResumedActivitiesComplete()) {
            executeAppTransition(options);
            Slog.d("ActivityTaskManager", "resumeTopActivityLocked: Top activity resumed (dontWaitForPause) " + next);
            return true;
        }
        if (shouldSleepActivities() && this.mLastNoHistoryActivity != null && !this.mLastNoHistoryActivity.finishing && this.mLastNoHistoryActivity != next) {
            Slog.d("ActivityTaskManager", "no-history finish of " + this.mLastNoHistoryActivity + " on new resume");
            this.mLastNoHistoryActivity.finishIfPossible("resume-no-history", false);
            this.mLastNoHistoryActivity = null;
        }
        if (prev != null && prev != next && next.nowVisible) {
            if (prev.finishing) {
                prev.setVisibility(false);
                Slog.v("ActivityTaskManager", "Not waiting for visible to hide: " + prev + ", nowVisible=" + next.nowVisible);
            } else {
                Slog.v("ActivityTaskManager", "Previous already visible but still waiting to hide: " + prev + ", nowVisible=" + next.nowVisible);
            }
        }
        try {
            this.mAtmService.getPackageManager().setPackageStoppedState(next.packageName, false, next.mUserId);
        } catch (RemoteException e) {
        } catch (IllegalArgumentException e2) {
            Slog.w("ActivityTaskManager", "Failed trying to unstop package " + next.packageName + ": " + e2);
        }
        boolean anim2 = true;
        DisplayContent dc = taskDisplayArea.mDisplayContent;
        if (prev == null) {
            if (!this.mStackSupervisor.mNoAnimActivities.contains(next)) {
                dc.prepareAppTransition(6, false);
                anim = true;
            } else {
                dc.prepareAppTransition(0, false);
                anim = false;
            }
        } else if (!prev.finishing) {
            if (this.mStackSupervisor.mNoAnimActivities.contains(next)) {
                dc.prepareAppTransition(0, false);
                anim = false;
            } else {
                if (prev.getTask() == next.getTask()) {
                    i = 6;
                } else {
                    i = next.mLaunchTaskBehind ? 16 : 8;
                }
                dc.prepareAppTransition(i, false);
                anim = true;
            }
        } else {
            if (this.mStackSupervisor.mNoAnimActivities.contains(prev)) {
                anim2 = false;
                dc.prepareAppTransition(0, false);
                z3 = false;
            } else {
                z3 = false;
                dc.prepareAppTransition(prev.getTask() == next.getTask() ? 7 : 9, false);
            }
            prev.setVisibility(z3);
            anim = anim2;
        }
        if (anim) {
            next.applyOptionsLocked();
        } else {
            next.clearOptionsLocked();
        }
        this.mStackSupervisor.mNoAnimActivities.clear();
        if (next.attachedToProcess()) {
            Slog.v("ActivityTaskManager", "Resume running: " + next + " stopped=" + next.stopped + " visibleRequested=" + next.mVisibleRequested);
            boolean lastActivityTranslucent = lastFocusedStack != null && (lastFocusedStack.inMultiWindowMode() || !(lastFocusedStack.mLastPausedActivity == null || lastFocusedStack.mLastPausedActivity.occludesParent()));
            if (!next.mVisibleRequested || next.stopped || lastActivityTranslucent) {
                next.setVisibility(true);
            }
            next.startLaunchTickingLocked();
            ActivityRecord lastResumedActivity = lastFocusedStack == null ? null : lastFocusedStack.mResumedActivity;
            ActivityState lastState = next.getState();
            this.mAtmService.updateCpuStats();
            Slog.v("ActivityTaskManager", "Moving to RESUMED: " + next + " (in existing)");
            next.setState(ActivityState.RESUMED, "resumeTopActivityInnerLocked");
            next.app.updateProcessInfo(false, true, true, true);
            if (shouldBeVisible(next)) {
                notUpdated = !this.mRootWindowContainer.ensureVisibilityAndConfig(next, getDisplayId(), true, false);
            } else {
                notUpdated = true;
            }
            if (notUpdated) {
                ActivityRecord nextNext = topRunningActivity();
                Slog.i("ActivityTaskManager", "Activity config changed during resume: " + next + ", new next: " + nextNext);
                if (nextNext != next) {
                    this.mStackSupervisor.scheduleResumeTopActivities();
                }
                if (!next.mVisibleRequested || next.stopped) {
                    z2 = true;
                    next.setVisibility(true);
                } else {
                    z2 = true;
                }
                next.completeResumeLocked();
                return z2;
            }
            try {
                ClientTransaction transaction = ClientTransaction.obtain(next.app.getThread(), next.appToken);
                ArrayList<ResultInfo> a = next.results;
                if (a != null) {
                    try {
                        int N = a.size();
                        if (!next.finishing && N > 0) {
                            transaction.addCallback(ActivityResultItem.obtain(a));
                        }
                    } catch (Exception e3) {
                        Slog.v("ActivityTaskManager", "Resume failed; resetting state to " + lastState + ": " + next);
                        next.setState(lastState, "resumeTopActivityInnerLocked");
                        if (lastResumedActivity != null) {
                            lastResumedActivity.setState(ActivityState.RESUMED, "resumeTopActivityInnerLocked");
                        }
                        Slog.i("ActivityTaskManager", "Restarting because process died: " + next);
                        if (!next.hasBeenLaunched) {
                            next.hasBeenLaunched = true;
                            z = false;
                        } else if (lastFocusedStack == null || !lastFocusedStack.isTopStackInDisplayArea()) {
                            z = false;
                        } else {
                            z = false;
                            next.showStartingWindow(null, false, false);
                        }
                        this.mStackSupervisor.startSpecificActivity(next, true, z);
                        return true;
                    }
                }
                if (next.newIntents != null) {
                    transaction.addCallback(NewIntentItem.obtain(next.newIntents, true));
                }
                next.notifyAppResumed(next.stopped);
                try {
                    EventLogTags.writeWmResumeActivity(next.mUserId, System.identityHashCode(next), next.getTask().mTaskId, next.shortComponentName);
                    next.setSleeping(false);
                    this.mAtmService.getAppWarningsLocked().onResumeActivity(next);
                    next.app.setPendingUiCleanAndForceProcessStateUpTo(this.mAtmService.mTopProcessState);
                    next.clearOptionsLocked();
                    transaction.setLifecycleStateRequest(ResumeActivityItem.obtain(next.app.getReportedProcState(), dc.isNextTransitionForward()));
                    this.mAtmService.getLifecycleManager().scheduleTransaction(transaction);
                    Slog.d("ActivityTaskManager", "resumeTopActivityLocked: Resumed " + next);
                    try {
                        next.completeResumeLocked();
                        return true;
                    } catch (Exception e4) {
                        Slog.w("ActivityTaskManager", "Exception thrown during resume of " + next, e4);
                        next.finishIfPossible("resume-exception", true);
                        return true;
                    }
                } catch (Exception e5) {
                    Slog.v("ActivityTaskManager", "Resume failed; resetting state to " + lastState + ": " + next);
                    next.setState(lastState, "resumeTopActivityInnerLocked");
                    if (lastResumedActivity != null) {
                        lastResumedActivity.setState(ActivityState.RESUMED, "resumeTopActivityInnerLocked");
                    }
                    Slog.i("ActivityTaskManager", "Restarting because process died: " + next);
                    if (!next.hasBeenLaunched) {
                        next.hasBeenLaunched = true;
                        z = false;
                    } else if (lastFocusedStack == null) {
                        z = false;
                    } else {
                        z = false;
                    }
                    this.mStackSupervisor.startSpecificActivity(next, true, z);
                    return true;
                }
            } catch (Exception e6) {
            }
        } else {
            if (!next.hasBeenLaunched) {
                next.hasBeenLaunched = true;
            } else {
                next.showStartingWindow(null, false, false);
                Slog.v("ActivityTaskManager", "Restarting: " + next);
            }
            Slog.d("ActivityTaskManager", "resumeTopActivityLocked: Restarting " + next);
            this.mStackSupervisor.startSpecificActivity(next, true, true);
            return true;
        }
    }

    private boolean resumeNextFocusableActivityWhenStackIsEmpty(ActivityRecord prev, ActivityOptions options) {
        ActivityStack nextFocusedStack;
        if (!isActivityTypeHome() && (nextFocusedStack = adjustFocusToNextFocusableTask("noMoreActivities")) != null) {
            return this.mRootWindowContainer.resumeFocusedStacksTopActivities(nextFocusedStack, prev, null);
        }
        ActivityOptions.abort(options);
        Slog.d("ActivityTaskManager", "resumeNextFocusableActivityWhenStackIsEmpty: noMoreActivities, go home");
        return this.mRootWindowContainer.resumeHomeActivity(prev, "noMoreActivities", getDisplayArea());
    }

    void startActivityLocked(ActivityRecord r, ActivityRecord focusedTopActivity, boolean newTask, boolean keepCurTransition, ActivityOptions options) {
        Task rTask = r.getTask();
        boolean allowMoveToFront = options == null || !options.getAvoidMoveToFront();
        boolean isOrhasTask = rTask == this || hasChild(rTask);
        if (!r.mLaunchTaskBehind && allowMoveToFront && (!isOrhasTask || newTask)) {
            positionChildAtTop(rTask);
        }
        if (!newTask && isOrhasTask) {
            ActivityRecord occludingActivity = getOccludingActivityAbove(r);
            if (occludingActivity != null) {
                Slog.i("ActivityTaskManager", "Adding activity " + r + " to task " + ((Object) null), new RuntimeException("here").fillInStackTrace());
                rTask.positionChildAtTop(r);
                ActivityOptions.abort(options);
                return;
            }
        }
        Task activityTask = r.getTask();
        if (null == activityTask && this.mChildren.indexOf(null) != getChildCount() - 1) {
            this.mStackSupervisor.mUserLeaving = false;
        }
        Slog.i("ActivityTaskManager", "Adding activity " + r + " to stack to task " + activityTask);
        activityTask.positionChildAtTop(r);
        if ((!isHomeOrRecentsStack() || hasActivity()) && allowMoveToFront) {
            DisplayContent dc = getDisplay().mDisplayContent;
            if ((r.intent.getFlags() & 65536) != 0) {
                dc.prepareAppTransition(0, keepCurTransition);
                this.mStackSupervisor.mNoAnimActivities.add(r);
            } else {
                boolean keepCurTransition2 = keepCurTransition;
                int transit = 6;
                if (newTask) {
                    if (r.mLaunchTaskBehind) {
                        transit = 16;
                    } else if (getDisplay().isSingleTaskInstance()) {
                        transit = 28;
                        keepCurTransition2 = false;
                    } else {
                        if (canEnterPipOnTaskSwitch(focusedTopActivity, null, r, options)) {
                            focusedTopActivity.supportsEnterPipOnTaskSwitch = true;
                        }
                        transit = 8;
                    }
                }
                dc.prepareAppTransition(transit, keepCurTransition2);
                this.mStackSupervisor.mNoAnimActivities.remove(r);
            }
            boolean doShow = true;
            if (newTask) {
                if ((r.intent.getFlags() & 2097152) != 0) {
                    resetTaskIfNeeded(r, r);
                    doShow = topRunningNonDelayedActivityLocked(null) == r;
                }
            } else if (options != null && options.getAnimationType() == 5) {
                doShow = false;
            }
            if (r.mLaunchTaskBehind) {
                r.setVisibility(true);
                ensureActivitiesVisible(null, 0, false);
                getDisplay().mDisplayContent.executeAppTransition();
                return;
            } else {
                if (doShow) {
                    Task prevTask = r.getTask();
                    ActivityRecord prev = prevTask.topActivityWithStartingWindow();
                    if (prev != null && (prev.getTask() != prevTask || prev.nowVisible)) {
                        prev = null;
                    }
                    r.showStartingWindow(prev, newTask, isTaskSwitch(r, focusedTopActivity));
                    return;
                }
                return;
            }
        }
        ActivityOptions.abort(options);
    }

    private boolean canEnterPipOnTaskSwitch(ActivityRecord pipCandidate, Task toFrontTask, ActivityRecord toFrontActivity, ActivityOptions opts) {
        if ((opts != null && opts.disallowEnterPictureInPictureWhileLaunching()) || pipCandidate == null || pipCandidate.inPinnedWindowingMode()) {
            return false;
        }
        ActivityStack targetStack = toFrontTask != null ? toFrontTask.getStack() : toFrontActivity.getRootTask();
        if (targetStack != null && targetStack.isActivityTypeAssistant()) {
            return false;
        }
        return true;
    }

    private boolean isTaskSwitch(ActivityRecord r, ActivityRecord topFocusedActivity) {
        return (topFocusedActivity == null || r.getTask() == topFocusedActivity.getTask()) ? false : true;
    }

    ActivityRecord resetTaskIfNeeded(ActivityRecord taskTop, ActivityRecord newActivity) {
        ActivityRecord newTop;
        boolean forceReset = (newActivity.info.flags & 4) != 0;
        Task task = taskTop.getTask();
        ActivityOptions topOptions = sResetTargetTaskHelper.process(task, forceReset);
        if (this.mChildren.contains(task) && (newTop = task.getTopNonFinishingActivity()) != null) {
            taskTop = newTop;
        }
        if (topOptions != null) {
            taskTop.updateOptionsLocked(topOptions);
        }
        return taskTop;
    }

    final Task finishTopCrashedActivityLocked(WindowProcessController app, String reason) {
        ActivityRecord r = topRunningActivity();
        if (r == null || r.app != app) {
            return null;
        }
        if (r.isActivityTypeHome() && this.mAtmService.mHomeProcess == app) {
            Slog.w("ActivityTaskManager", "  Not force finishing home activity " + r.intent.getComponent().flattenToShortString());
            return null;
        }
        Slog.w("ActivityTaskManager", "  Force finishing activity " + r.intent.getComponent().flattenToShortString());
        Task finishedTask = r.getTask();
        getDisplay().mDisplayContent.prepareAppTransition(26, false);
        r.finishIfPossible(reason, false);
        ActivityRecord activityBelow = getActivityBelow(r);
        if (activityBelow != null && activityBelow.isState(ActivityState.STARTED, ActivityState.RESUMED, ActivityState.PAUSING, ActivityState.PAUSED) && (!activityBelow.isActivityTypeHome() || this.mAtmService.mHomeProcess != activityBelow.app)) {
            Slog.w("ActivityTaskManager", "  Force finishing activity " + activityBelow.intent.getComponent().flattenToShortString());
            activityBelow.finishIfPossible(reason, false);
        }
        return finishedTask;
    }

    void finishVoiceTask(IVoiceInteractionSession session) {
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ActivityStack.finishIfVoiceTask((Task) obj, (IBinder) obj2);
            }
        }, PooledLambda.__(Task.class), session.asBinder());
        forAllLeafTasks(c, true);
        c.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void finishIfVoiceTask(final Task tr, IBinder binder) {
        if (tr.voiceSession != null && tr.voiceSession.asBinder() == binder) {
            tr.forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$DXQCHAtrf2X7qXtzByw5Fhuk8yg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ActivityStack.lambda$finishIfVoiceTask$3(tr, (ActivityRecord) obj);
                }
            });
            return;
        }
        PooledFunction f = PooledLambda.obtainFunction(new BiFunction() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Boolean.valueOf(ActivityStack.finishIfVoiceActivity((ActivityRecord) obj, (IBinder) obj2));
            }
        }, PooledLambda.__(ActivityRecord.class), binder);
        tr.forAllActivities((Function<ActivityRecord, Boolean>) f);
        f.recycle();
    }

    static /* synthetic */ void lambda$finishIfVoiceTask$3(Task tr, ActivityRecord r) {
        if (r.finishing) {
            return;
        }
        r.finishIfPossible("finish-voice", false);
        tr.mAtmService.updateOomAdj();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean finishIfVoiceActivity(ActivityRecord r, IBinder binder) {
        if (r.voiceSession == null || r.voiceSession.asBinder() != binder) {
            return false;
        }
        r.clearVoiceSessionLocked();
        try {
            r.app.getThread().scheduleLocalVoiceInteractionStarted(r.appToken, (IVoiceInteractor) null);
        } catch (RemoteException e) {
        }
        r.mAtmService.finishRunningVoiceLocked();
        return true;
    }

    void finishAllActivitiesImmediately() {
        if (!hasChild()) {
            removeIfPossible();
        } else {
            forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ActivityStack.lambda$finishAllActivitiesImmediately$4((ActivityRecord) obj);
                }
            });
        }
    }

    static /* synthetic */ void lambda$finishAllActivitiesImmediately$4(ActivityRecord r) {
        Slog.d("ActivityTaskManager", "finishAllActivitiesImmediatelyLocked: finishing " + r);
        r.destroyIfPossible("finishAllActivitiesImmediately");
    }

    private boolean inFrontOfStandardStack() {
        int index;
        TaskDisplayArea taskDisplayArea = getDisplayArea();
        if (taskDisplayArea == null || (index = taskDisplayArea.getIndexOf(this)) == 0) {
            return false;
        }
        ActivityStack stackBehind = (ActivityStack) taskDisplayArea.getChildAt(index - 1);
        return stackBehind.isActivityTypeStandard();
    }

    boolean shouldUpRecreateTaskLocked(ActivityRecord srec, String destAffinity) {
        String affinity = ActivityRecord.getTaskAffinityWithUid(destAffinity, srec.getUid());
        if (srec == null || srec.getTask().affinity == null || !srec.getTask().affinity.equals(affinity)) {
            return true;
        }
        Task task = srec.getTask();
        if (srec.isRootOfTask() && task.getBaseIntent() != null && task.getBaseIntent().isDocument()) {
            if (!inFrontOfStandardStack()) {
                return true;
            }
            Task prevTask = getTaskBelow(task);
            if (prevTask == null) {
                Slog.w("ActivityTaskManager", "shouldUpRecreateTask: task not in history for " + srec);
                return false;
            }
            if (!task.affinity.equals(prevTask.affinity)) {
                return true;
            }
        }
        return false;
    }

    boolean navigateUpTo(ActivityRecord srec, Intent destIntent, NeededUriGrants destGrants, int resultCode, Intent resultData, NeededUriGrants resultGrants) {
        ActivityRecord candidate;
        boolean foundParentInTask;
        ActivityRecord parent;
        char c;
        char c2;
        int callingUid;
        char c3;
        boolean abort;
        ActivityRecord next;
        if (!srec.attachedToProcess()) {
            return false;
        }
        Task task = srec.getTask();
        if (!srec.isDescendantOf(this)) {
            return false;
        }
        ActivityRecord parent2 = task.getActivityBelow(srec);
        final ComponentName dest = destIntent.getComponent();
        if (task.getBottomMostActivity() != srec && dest != null && (candidate = task.getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$Z7hLQOOjJ2p3oOFuD0JWMXQ1pOQ
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ActivityStack.lambda$navigateUpTo$5(dest, (ActivityRecord) obj);
            }
        }, srec, false, true)) != null) {
            foundParentInTask = true;
        } else {
            candidate = parent2;
            foundParentInTask = false;
        }
        IActivityController controller = this.mAtmService.mController;
        if (controller != null && (next = topRunningActivity(srec.appToken, -1)) != null) {
            boolean resumeOK = true;
            try {
                resumeOK = controller.activityResuming(next.packageName);
            } catch (RemoteException e) {
                this.mAtmService.mController = null;
                Watchdog.getInstance().setActivityController(null);
            }
            if (!resumeOK) {
                return false;
            }
        }
        long origId = Binder.clearCallingIdentity();
        final int[] resultCodeHolder = {resultCode};
        final Intent[] resultDataHolder = {resultData};
        final NeededUriGrants[] resultGrantsHolder = {resultGrants};
        final ActivityRecord finalParent = candidate;
        task.forAllActivities(new Function() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$kXdVD8q_DOMPZdFLvQXXFO8ZuFM
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ActivityStack.lambda$navigateUpTo$6(finalParent, resultCodeHolder, resultDataHolder, resultGrantsHolder, (ActivityRecord) obj);
            }
        }, srec, true, true);
        int resultCode2 = resultCodeHolder[0];
        Intent resultData2 = resultDataHolder[0];
        if (candidate != null && foundParentInTask) {
            int callingUid2 = srec.info.applicationInfo.uid;
            int parentLaunchMode = candidate.info.launchMode;
            int destIntentFlags = destIntent.getFlags();
            if (parentLaunchMode == 3 || parentLaunchMode == 2 || parentLaunchMode == 1 || (destIntentFlags & 67108864) != 0) {
                try {
                    try {
                        parent = candidate;
                        c = 1;
                        c2 = 2;
                        callingUid = callingUid2;
                        c3 = 0;
                        try {
                            abort = !this.mStackSupervisor.checkStartAnyActivityPermission(destIntent, candidate.info, null, -1, srec.getPid(), callingUid2, srec.info.packageName, null, false, false, srec.app, null, null);
                        } catch (SecurityException e2) {
                            abort = true;
                        }
                    } catch (SecurityException e3) {
                        parent = candidate;
                        c = 1;
                        c2 = 2;
                        callingUid = callingUid2;
                        c3 = 0;
                    }
                } catch (SecurityException e4) {
                    parent = candidate;
                    c = 1;
                    c2 = 2;
                    callingUid = callingUid2;
                    c3 = 0;
                }
                if (abort) {
                    Object[] objArr = new Object[3];
                    objArr[c3] = "238605611";
                    objArr[c] = Integer.valueOf(callingUid);
                    objArr[c2] = "";
                    EventLog.writeEvent(1397638484, objArr);
                    foundParentInTask = false;
                } else {
                    parent.deliverNewIntentLocked(callingUid, destIntent, destGrants, srec.packageName);
                }
            } else {
                try {
                    ActivityInfo aInfo = AppGlobals.getPackageManager().getActivityInfo(destIntent.getComponent(), 1024, srec.mUserId);
                    int res = this.mAtmService.getActivityStartController().obtainStarter(destIntent, "navigateUpTo").setCaller(srec.app.getThread()).setActivityInfo(aInfo).setResultTo(candidate.appToken).setCallingPid(-1).setCallingUid(callingUid2).setCallingPackage(srec.packageName).setCallingFeatureId(candidate.launchedFromFeatureId).setRealCallingPid(-1).setRealCallingUid(callingUid2).setComponentSpecified(true).execute();
                    boolean foundParentInTask2 = res == 0;
                    foundParentInTask = foundParentInTask2;
                } catch (RemoteException e5) {
                    foundParentInTask = false;
                }
                candidate.finishIfPossible(resultCode2, resultData2, resultGrants, "navigate-top", true);
            }
        }
        Binder.restoreCallingIdentity(origId);
        return foundParentInTask;
    }

    static /* synthetic */ boolean lambda$navigateUpTo$5(ComponentName dest, ActivityRecord ar) {
        return ar.info.packageName.equals(dest.getPackageName()) && ar.info.name.equals(dest.getClassName());
    }

    static /* synthetic */ Boolean lambda$navigateUpTo$6(ActivityRecord finalParent, int[] resultCodeHolder, Intent[] resultDataHolder, NeededUriGrants[] resultGrantsHolder, ActivityRecord ar) {
        if (ar == finalParent) {
            return true;
        }
        ar.finishIfPossible(resultCodeHolder[0], resultDataHolder[0], resultGrantsHolder[0], "navigate-up", true);
        resultCodeHolder[0] = 0;
        resultDataHolder[0] = null;
        return false;
    }

    void removeLaunchTickMessages() {
        forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ActivityRecord) obj).removeLaunchTickRunnable();
            }
        });
    }

    private void updateTransitLocked(int transit, ActivityOptions options, boolean forceOverride) {
        if (options != null) {
            ActivityRecord r = topRunningActivity();
            if (r != null && !r.isState(ActivityState.RESUMED)) {
                r.updateOptionsLocked(options);
            } else {
                ActivityOptions.abort(options);
            }
        }
        getDisplay().mDisplayContent.prepareAppTransition(transit, false, 0, forceOverride);
    }

    final void moveTaskToFront(Task tr, boolean noAnimation, ActivityOptions options, AppTimeTracker timeTracker, String reason) throws Throwable {
        moveTaskToFront(tr, noAnimation, options, timeTracker, false, reason);
    }

    final void moveTaskToFront(Task tr, boolean noAnimation, ActivityOptions options, AppTimeTracker timeTracker, boolean deferResume, String reason) throws Throwable {
        ActivityRecord topActivity;
        Slog.v("ActivityTaskManager", "moveTaskToFront: " + tr);
        ActivityStack topStack = getDisplayArea().getTopStack();
        if (topStack == null) {
            topActivity = null;
        } else {
            topActivity = topStack.getTopNonFinishingActivity();
        }
        if (tr != this && !tr.isDescendantOf(this)) {
            if (noAnimation) {
                ActivityOptions.abort(options);
                return;
            } else if (isSingleTaskInstance()) {
                updateTransitLocked(28, options, true);
                return;
            } else {
                updateTransitLocked(10, options, false);
                return;
            }
        }
        if (timeTracker != null) {
            PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$Q7nS26dC0McEbKsdlJZMFVXDNKY
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((ActivityRecord) obj).setAppTimeTracker((AppTimeTracker) obj2);
                }
            }, PooledLambda.__(ActivityRecord.class), timeTracker);
            tr.forAllActivities((Consumer<ActivityRecord>) c);
            c.recycle();
        }
        try {
            getDisplay().deferUpdateImeTarget();
            positionChildAtTop(tr);
            ActivityRecord top = tr.getTopNonFinishingActivity();
            try {
                if (top == null || !top.okToShowLocked()) {
                    if (top != null) {
                        this.mStackSupervisor.mRecentTasks.add(top.getTask());
                    }
                    ActivityOptions.abort(options);
                    getDisplay().continueUpdateImeTarget();
                    return;
                }
                ActivityRecord r = topRunningActivity();
                if (r != null) {
                    r.moveFocusableActivityToTop(reason);
                }
                if (noAnimation) {
                    getDisplay().mDisplayContent.prepareAppTransition(0, false);
                    if (r != null) {
                        this.mStackSupervisor.mNoAnimActivities.add(r);
                    }
                    ActivityOptions.abort(options);
                } else if (isSingleTaskInstance()) {
                    updateTransitLocked(28, options, true);
                } else {
                    updateTransitLocked(10, options, false);
                }
                if (canEnterPipOnTaskSwitch(topActivity, tr, null, options)) {
                    topActivity.supportsEnterPipOnTaskSwitch = true;
                }
                if (!deferResume) {
                    this.mRootWindowContainer.resumeFocusedStacksTopActivities();
                }
                EventLogTags.writeWmTaskToFront(tr.mUserId, tr.mTaskId);
                this.mAtmService.getTaskChangeNotificationController().notifyTaskMovedToFront(tr.getTaskInfo());
                getDisplay().continueUpdateImeTarget();
                return;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        getDisplay().continueUpdateImeTarget();
        throw th;
    }

    boolean moveTaskToBack(Task tr) {
        Slog.i("ActivityTaskManager", "moveTaskToBack: " + tr);
        if (!this.mAtmService.getLockTaskController().canMoveTaskToBack(tr)) {
            return false;
        }
        if (isTopStackInDisplayArea() && this.mAtmService.mController != null) {
            ActivityRecord next = topRunningActivity(null, tr.mTaskId);
            if (next == null) {
                next = topRunningActivity(null, -1);
            }
            if (next != null) {
                boolean moveOK = true;
                try {
                    moveOK = this.mAtmService.mController.activityResuming(next.packageName);
                } catch (RemoteException e) {
                    this.mAtmService.mController = null;
                    Watchdog.getInstance().setActivityController(null);
                }
                if (!moveOK) {
                    return false;
                }
            }
        }
        getDisplay().mDisplayContent.prepareAppTransition(11, false);
        moveToBack("moveTaskToBackLocked", tr);
        if (inPinnedWindowingMode()) {
            this.mStackSupervisor.removeStack(this);
            return true;
        }
        ActivityRecord topActivity = getDisplayArea().topRunningActivity();
        ActivityStack topStack = topActivity.getRootTask();
        if (topStack != null && topStack != this && topActivity.isState(ActivityState.RESUMED)) {
            this.mRootWindowContainer.ensureVisibilityAndConfig(null, getDisplay().mDisplayId, false, false);
            getDisplay().mDisplayContent.executeAppTransition();
        } else {
            this.mRootWindowContainer.resumeFocusedStacksTopActivities();
        }
        return true;
    }

    void ensureVisibleActivitiesConfiguration(ActivityRecord start, boolean preserveWindow) {
        this.mEnsureVisibleActivitiesConfigHelper.process(start, preserveWindow);
    }

    void resize(Rect displayedBounds, boolean preserveWindows, boolean deferResume) {
        Trace.traceBegin(32L, "stack.resize_" + getRootTaskId());
        this.mAtmService.deferWindowLayout();
        try {
            PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ActivityStack.processTaskResizeBounds((Task) obj, (Rect) obj2);
                }
            }, PooledLambda.__(Task.class), displayedBounds);
            forAllTasks(c, true);
            c.recycle();
            if (this.mBoundsAnimating) {
                updateSurfaceBounds();
                getDisplay().setLayoutNeeded();
                this.mWmService.requestTraversal();
            }
            if (!deferResume) {
                ensureVisibleActivitiesConfiguration(topRunningActivity(), preserveWindows);
            }
        } finally {
            this.mAtmService.continueWindowLayout();
            Trace.traceEnd(32L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void processTaskResizeBounds(Task task, Rect displayedBounds) {
        if (task.isResizeable()) {
            task.setBounds(displayedBounds);
        }
    }

    private void setTaskBounds(Rect bounds) {
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ActivityStack.setTaskBounds((Task) obj, (Rect) obj2);
            }
        }, PooledLambda.__(Task.class), bounds);
        forAllLeafTasks(c, true);
        c.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setTaskBounds(Task task, Rect bounds) {
        task.setBounds(task.isResizeable() ? bounds : null);
    }

    private ActivityRecord getOccludingActivityAbove(ActivityRecord activity) {
        ActivityRecord top = getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$F5e-149Q73snCogeDQIX0CnQxZ8
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((ActivityRecord) obj).occludesParent();
            }
        }, true, activity);
        if (top != activity) {
            return top;
        }
        return null;
    }

    boolean willActivityBeVisible(IBinder token) {
        ActivityRecord r = ActivityRecord.forTokenLocked(token);
        if (r == null) {
            return false;
        }
        ActivityRecord occludingActivity = getOccludingActivityAbove(r);
        if (occludingActivity != null) {
            return false;
        }
        if (r.finishing) {
            Slog.e("ActivityTaskManager", "willActivityBeVisible: Returning false, would have returned true for r=" + r);
        }
        return !r.finishing;
    }

    void unhandledBackLocked() {
        ActivityRecord topActivity = getTopMostActivity();
        Slog.d("ActivityTaskManager", "Performing unhandledBack(): top activity: " + topActivity);
        if (topActivity != null) {
            topActivity.finishIfPossible("unhandled-back", true);
        }
    }

    boolean handleAppDied(WindowProcessController app) {
        boolean isPausingDied = false;
        if (this.mPausingActivity != null && this.mPausingActivity.app == app) {
            Slog.v("ActivityTaskManager", "App died while pausing: " + this.mPausingActivity);
            this.mPausingActivity = null;
            isPausingDied = true;
        }
        if (this.mLastPausedActivity != null && this.mLastPausedActivity.app == app) {
            this.mLastPausedActivity = null;
            this.mLastNoHistoryActivity = null;
        }
        this.mStackSupervisor.removeHistoryRecords(app);
        boolean hadVisibleActivities = this.mRemoveHistoryRecordsForApp.process(app);
        return hadVisibleActivities || isPausingDied;
    }

    boolean dump(FileDescriptor fd, final PrintWriter pw, boolean dumpAll, boolean dumpClient, String dumpPackage, final boolean needSep) {
        Runnable headerPrinter;
        boolean printed;
        boolean printed2;
        Runnable headerPrinter2 = new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$vQtWLZ5xfBAnoGvYGdMf4XbE_3w
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dump$8$ActivityStack(needSep, pw);
            }
        };
        if (dumpPackage != null) {
            headerPrinter = headerPrinter2;
            printed = false;
        } else {
            headerPrinter2.run();
            headerPrinter = null;
            printed = true;
        }
        boolean printed3 = printed | ActivityStackSupervisor.printThisActivity(pw, this.mPausingActivity, dumpPackage, false, "    mPausingActivity: ", null) | ActivityStackSupervisor.printThisActivity(pw, getResumedActivity(), dumpPackage, false, "    mResumedActivity: ", null);
        if (!dumpAll) {
            printed2 = printed3;
        } else {
            printed2 = printed3 | ActivityStackSupervisor.printThisActivity(pw, this.mLastPausedActivity, dumpPackage, false, "    mLastPausedActivity: ", null) | ActivityStackSupervisor.printThisActivity(pw, this.mLastNoHistoryActivity, dumpPackage, false, "    mLastNoHistoryActivity: ", null);
        }
        return dumpActivities(fd, pw, dumpAll, dumpClient, dumpPackage, false, headerPrinter) | printed2;
    }

    public /* synthetic */ void lambda$dump$8$ActivityStack(boolean needSep, PrintWriter pw) {
        if (needSep) {
            pw.println();
        }
        pw.println("  Stack #" + getRootTaskId() + ": type=" + WindowConfiguration.activityTypeToString(getActivityType()) + " mode=" + WindowConfiguration.windowingModeToString(getWindowingMode()));
        StringBuilder sb = new StringBuilder();
        sb.append("  isSleeping=");
        sb.append(shouldSleepActivities());
        pw.println(sb.toString());
        pw.println("  mBounds=" + getRequestedOverrideBounds());
    }

    private boolean dumpActivities(final FileDescriptor fd, final PrintWriter pw, final boolean dumpAll, final boolean dumpClient, final String dumpPackage, final boolean needSep, final Runnable header) {
        if (!hasChild()) {
            return false;
        }
        final AtomicBoolean printedHeader = new AtomicBoolean(false);
        final AtomicBoolean printed = new AtomicBoolean(false);
        forAllLeafTasks(new Consumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$hBu5TaiY8B4H_AGkfMoFLmwCCRE
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$dumpActivities$10$ActivityStack(printed, printedHeader, needSep, pw, header, dumpPackage, fd, dumpAll, dumpClient, (Task) obj);
            }
        }, true);
        return printed.get();
    }

    public /* synthetic */ void lambda$dumpActivities$10$ActivityStack(final AtomicBoolean printed, final AtomicBoolean printedHeader, final boolean needSep, final PrintWriter pw, final Runnable header, String dumpPackage, FileDescriptor fd, boolean dumpAll, boolean dumpClient, final Task task) {
        Runnable headerPrinter = new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$R37x5SGnmhrl07es1b8tPUL02qE
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dumpActivities$9$ActivityStack(printed, printedHeader, needSep, pw, header, task);
            }
        };
        if (dumpPackage == null) {
            headerPrinter.run();
            headerPrinter = null;
        }
        ArrayList<ActivityRecord> activities = new ArrayList<>();
        Objects.requireNonNull(activities);
        task.forAllActivities((Consumer<ActivityRecord>) new $$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc(activities), false);
        ActivityStackSupervisor.dumpHistoryList(fd, pw, activities, "    ", "Hist", true, !dumpAll, dumpClient, dumpPackage, false, headerPrinter, task);
    }

    public /* synthetic */ void lambda$dumpActivities$9$ActivityStack(AtomicBoolean printed, AtomicBoolean printedHeader, boolean needSep, PrintWriter pw, Runnable header, Task task) {
        printed.set(true);
        if (!printedHeader.get()) {
            if (needSep) {
                pw.println("");
            }
            if (header != null) {
                header.run();
            }
            printedHeader.set(true);
        }
        pw.print("    ");
        pw.print("* ");
        pw.println(task);
        pw.print("    ");
        pw.print("  mBounds=");
        pw.println(task.getRequestedOverrideBounds());
        pw.print("    ");
        pw.print("  mMinWidth=");
        pw.print(task.mMinWidth);
        pw.print(" mMinHeight=");
        pw.println(task.mMinHeight);
        if (this.mLastNonFullscreenBounds != null) {
            pw.print("    ");
            pw.print("  mLastNonFullscreenBounds=");
            pw.println(task.mLastNonFullscreenBounds);
        }
        task.dump(pw, "      ");
    }

    ArrayList<ActivityRecord> getDumpActivitiesLocked(String name) {
        final ArrayList<ActivityRecord> activities = new ArrayList<>();
        if ("all".equals(name)) {
            Objects.requireNonNull(activities);
            forAllActivities(new $$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc(activities));
        } else if ("top".equals(name)) {
            ActivityRecord topActivity = getTopMostActivity();
            if (topActivity != null) {
                activities.add(topActivity);
            }
        } else {
            final ActivityManagerService.ItemMatcher matcher = new ActivityManagerService.ItemMatcher();
            matcher.build(name);
            forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$jHtG24MuTe6p7JXjTvGcC5DidJ8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ActivityStack.lambda$getDumpActivitiesLocked$11(matcher, activities, (ActivityRecord) obj);
                }
            });
        }
        return activities;
    }

    static /* synthetic */ void lambda$getDumpActivitiesLocked$11(ActivityManagerService.ItemMatcher matcher, ArrayList activities, ActivityRecord r) {
        if (matcher.match(r, r.intent.getComponent())) {
            activities.add(r);
        }
    }

    ActivityRecord restartPackage(String packageName) {
        ActivityRecord starting = topRunningActivity();
        PooledConsumer c = PooledLambda.obtainConsumer(new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec
            public final void accept(Object obj, Object obj2, Object obj3) {
                ActivityStack.restartPackage((ActivityRecord) obj, (ActivityRecord) obj2, (String) obj3);
            }
        }, PooledLambda.__(ActivityRecord.class), starting, packageName);
        forAllActivities((Consumer<ActivityRecord>) c);
        c.recycle();
        return starting;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void restartPackage(ActivityRecord r, ActivityRecord starting, String packageName) {
        if (r.info.packageName.equals(packageName)) {
            r.forceNewConfig = true;
            if (starting != null && r == starting && r.mVisibleRequested) {
                r.startFreezingScreenLocked(256);
            }
        }
    }

    Task reuseOrCreateTask(ActivityInfo info, Intent intent, boolean toTop) {
        return reuseOrCreateTask(info, intent, null, null, toTop, null, null, null);
    }

    Task reuseOrCreateTask(ActivityInfo info, Intent intent, IVoiceInteractionSession voiceSession, IVoiceInteractor voiceInteractor, boolean toTop, ActivityRecord activity, ActivityRecord source, ActivityOptions options) {
        int taskId;
        Task task;
        if (DisplayContent.alwaysCreateStack(getWindowingMode(), getActivityType())) {
            task = reuseAsLeafTask(voiceSession, voiceInteractor, intent, info, activity);
        } else {
            if (activity != null) {
                taskId = this.mStackSupervisor.getNextTaskIdForUser(activity.mUserId);
            } else {
                taskId = this.mStackSupervisor.getNextTaskIdForUser();
            }
            Task task2 = new ActivityStack(this.mAtmService, taskId, info, intent, voiceSession, voiceInteractor, null, this);
            addChild(task2, toTop, (info.flags & 1024) != 0);
            task = task2;
        }
        int displayId = getDisplayId();
        if (displayId == -1) {
            displayId = 0;
        }
        boolean isLockscreenShown = this.mAtmService.mStackSupervisor.getKeyguardController().isKeyguardOrAodShowing(displayId);
        if (!this.mStackSupervisor.getLaunchParamsController().layoutTask(task, info.windowLayout, activity, source, options) && !matchParentBounds() && task.isResizeable() && !isLockscreenShown) {
            task.setBounds(getRequestedOverrideBounds());
        }
        return task;
    }

    void addChild(WindowContainer child, boolean toTop, boolean showForAllUsers) {
        if (isSingleTaskInstance() && hasChild()) {
            throw new IllegalStateException("Can only have one child on stack=" + this);
        }
        Task task = child.asTask();
        if (task != null) {
            try {
                task.setForceShowForAllUsers(showForAllUsers);
            } finally {
                if (task != null) {
                    task.setForceShowForAllUsers(false);
                }
            }
        }
        addChild(child, toTop ? Integer.MAX_VALUE : 0, toTop);
    }

    void positionChildAt(Task task, int position) {
        if (task.getStack() != this) {
            throw new IllegalArgumentException("AS.positionChildAt: task=" + task + " is not a child of stack=" + this + " current parent=" + task.getStack());
        }
        task.updateOverrideConfigurationForStack(this);
        ActivityRecord topRunningActivity = task.topRunningActivityLocked();
        boolean includingParents = true;
        boolean wasResumed = topRunningActivity == task.getStack().mResumedActivity;
        boolean toTop = position >= getChildCount();
        if (!toTop && getDisplayArea().getNextFocusableStack(this, true) != null) {
            includingParents = false;
        }
        positionChildAt(position, task, includingParents);
        task.updateTaskMovement(toTop);
        getDisplayContent().layoutAndAssignWindowLayersIfNeeded();
        if (task.voiceSession != null) {
            try {
                task.voiceSession.taskStarted(task.intent, task.mTaskId);
            } catch (RemoteException e) {
            }
        }
        if (wasResumed) {
            if (this.mResumedActivity != null) {
                Log.wtf("ActivityTaskManager", "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity=" + this.mResumedActivity + " other mResumedActivity=" + topRunningActivity);
            }
            topRunningActivity.setState(ActivityState.RESUMED, "positionChildAt");
        }
        ensureActivitiesVisible(null, 0, false);
        this.mRootWindowContainer.resumeFocusedStacksTopActivities();
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public void setAlwaysOnTop(boolean alwaysOnTop) {
        if (isAlwaysOnTop() == alwaysOnTop) {
            return;
        }
        super.setAlwaysOnTop(alwaysOnTop);
        TaskDisplayArea taskDisplayArea = getDisplayArea();
        taskDisplayArea.positionStackAtTop(this, false);
    }

    void moveToFrontAndResumeStateIfNeeded(ActivityRecord r, boolean moveToFront, boolean setResume, boolean setPause, String reason) {
        if (!moveToFront) {
            return;
        }
        ActivityState origState = r.getState();
        if (setResume) {
            r.setState(ActivityState.RESUMED, "moveToFrontAndResumeStateIfNeeded");
        }
        if (setPause) {
            this.mPausingActivity = r;
            r.schedulePauseTimeout();
        }
        moveToFront(reason);
        if (origState == ActivityState.RESUMED && r == this.mRootWindowContainer.getTopResumedActivity()) {
            this.mAtmService.setResumedActivityUncheckLocked(r, reason);
        }
    }

    void dismissPip() {
        if (!isActivityTypeStandardOrUndefined()) {
            throw new IllegalArgumentException("You can't move tasks from non-standard stacks.");
        }
        if (getWindowingMode() != 2) {
            throw new IllegalArgumentException("Can't exit pinned mode if it's not pinned already.");
        }
        this.mWmService.inSurfaceTransaction(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityStack$H90TQqsKyyw58luwtKGHNiaLMuI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismissPip$12$ActivityStack();
            }
        });
    }

    public /* synthetic */ void lambda$dismissPip$12$ActivityStack() {
        Task task = getBottomMostTask();
        setWindowingMode(0);
        getDisplayArea().positionStackAtTop(this, false);
        this.mStackSupervisor.scheduleUpdatePictureInPictureModeIfNeeded(task, this);
    }

    void prepareFreezingTaskBounds() {
        forAllLeafTasks(new Consumer() { // from class: com.android.server.wm.-$$Lambda$x6Ib5GIrsWZg48HsPUVGxKBQJS4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Task) obj).prepareFreezingBounds();
            }
        }, true);
    }

    @Override // com.android.server.wm.Task, com.android.server.wm.ConfigurationContainer
    public int setBounds(Rect bounds) {
        if (!isRootTask()) {
            return super.setBounds(bounds);
        }
        return setBounds(getRequestedOverrideBounds(), bounds);
    }

    private int setBounds(Rect existing, Rect bounds) {
        if (equivalentBounds(existing, bounds)) {
            return 0;
        }
        int result = super.setBounds(!inMultiWindowMode() ? null : bounds);
        updateSurfaceBounds();
        return result;
    }

    void getRawBounds(Rect out) {
        out.set(getRawBounds());
    }

    private Rect getRawBounds() {
        return super.getBounds();
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public void getBounds(Rect bounds) {
        bounds.set(getBounds());
    }

    void getFinalAnimationBounds(Rect outBounds) {
        outBounds.set(this.mBoundsAnimationTarget);
    }

    void getFinalAnimationSourceHintBounds(Rect outBounds) {
        outBounds.set(this.mBoundsAnimationSourceHintBounds);
    }

    @Override // com.android.server.wm.Task
    void getDimBounds(Rect out) {
        getBounds(out);
    }

    private void addChild(WindowContainer child, int position, boolean moveParents) {
        addChild(child, (Comparator<WindowContainer>) null);
        positionChildAt(position, child, moveParents);
    }

    void positionChildAtTop(Task child) {
        if (child == null) {
            return;
        }
        if (child == this) {
            moveToFront("positionChildAtTop");
            return;
        }
        positionChildAt(Integer.MAX_VALUE, child, true);
        child.updateTaskMovement(true);
        DisplayContent displayContent = getDisplayContent();
        displayContent.layoutAndAssignWindowLayersIfNeeded();
    }

    void positionChildAtBottom(Task child) {
        ActivityStack nextFocusableStack = getDisplayArea().getNextFocusableStack(child.getStack(), true);
        positionChildAtBottom(child, nextFocusableStack == null);
        child.updateTaskMovement(true);
    }

    void positionChildAtBottom(Task child, boolean includingParents) {
        if (child == null) {
            return;
        }
        positionChildAt(Integer.MIN_VALUE, child, includingParents);
        getDisplayContent().layoutAndAssignWindowLayersIfNeeded();
    }

    @Override // com.android.server.wm.WindowContainer
    void onChildPositionChanged(WindowContainer child) {
        if (isOrganized()) {
            this.mAtmService.mTaskOrganizerController.dispatchTaskInfoChanged(this, false);
        }
        if (!this.mChildren.contains(child)) {
            return;
        }
        boolean isTop = getTopChild() == child;
        Task task = child.asTask();
        if (task != null) {
            task.updateTaskMovement(isTop);
        }
        if (isTop) {
            DisplayContent displayContent = getDisplayContent();
            displayContent.layoutAndAssignWindowLayersIfNeeded();
        }
    }

    @Override // com.android.server.wm.Task, com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    void onParentChanged(ConfigurationContainer newParent, ConfigurationContainer oldParent) {
        DisplayContent oldDisplay = null;
        if (newParent != null) {
            ((WindowContainer) newParent).getDisplayContent();
        }
        if (oldParent != null) {
            oldDisplay = ((WindowContainer) oldParent).getDisplayContent();
        }
        super.onParentChanged(newParent, oldParent);
        if (oldDisplay != null && oldDisplay.isRemoving()) {
            postReparent();
        }
    }

    void reparent(TaskDisplayArea newParent, boolean onTop) {
        reparent(newParent, onTop ? Integer.MAX_VALUE : Integer.MIN_VALUE);
    }

    private void updateSurfaceBounds() {
        updateSurfaceSize(getSyncTransaction());
        updateSurfacePosition();
        scheduleAnimation();
    }

    @Override // com.android.server.wm.WindowContainer
    void getRelativePosition(Point outPos) {
        super.getRelativePosition(outPos);
        int outset = getTaskOutset();
        outPos.x -= outset;
        outPos.y -= outset;
    }

    @Override // com.android.server.wm.Task, com.android.server.wm.WindowContainer
    void onDisplayChanged(DisplayContent dc) {
        super.onDisplayChanged(dc);
        if (isRootTask()) {
            updateSurfaceBounds();
        }
    }

    boolean shouldIgnoreInput() {
        if (!inSplitScreenPrimaryWindowingMode() || isFocusable()) {
            return this.mAtmService.mHasLeanbackFeature && inPinnedWindowingMode() && !isFocusedStackOnDisplay();
        }
        return true;
    }

    @Override // com.android.server.wm.Task, com.android.server.wm.WindowContainer
    void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        super.dump(pw, prefix, dumpAll);
        if (!this.mExitingActivities.isEmpty()) {
            pw.println();
            pw.println(prefix + "Exiting application tokens:");
            String doublePrefix = prefix + "  ";
            for (int i = this.mExitingActivities.size() - 1; i >= 0; i--) {
                WindowToken token = this.mExitingActivities.get(i);
                pw.print(doublePrefix + "Exiting App #" + i);
                pw.print(' ');
                pw.print(token);
                pw.println(':');
                token.dump(pw, doublePrefix, dumpAll);
            }
            pw.println();
        }
        this.mAnimatingActivityRegistry.dump(pw, "AnimatingApps:", prefix);
    }

    void setPictureInPictureAspectRatio(float aspectRatio) {
        if (!this.mWmService.mAtmService.mSupportsPictureInPicture) {
            return;
        }
        DisplayContent displayContent = getDisplayContent();
        if (displayContent == null || !inPinnedWindowingMode()) {
            return;
        }
        PinnedStackController pinnedStackController = getDisplayContent().getPinnedStackController();
        if (Float.compare(aspectRatio, pinnedStackController.getAspectRatio()) == 0) {
            return;
        }
        pinnedStackController.setAspectRatio(pinnedStackController.isValidPictureInPictureAspectRatio(aspectRatio) ? aspectRatio : -1.0f);
    }

    void setPictureInPictureActions(List<RemoteAction> actions) {
        if (!this.mWmService.mAtmService.mSupportsPictureInPicture || !inPinnedWindowingMode()) {
            return;
        }
        getDisplayContent().getPinnedStackController().setActions(actions);
    }

    public boolean isForceScaled() {
        return this.mBoundsAnimating;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean handleCompleteDeferredRemoval() {
        if (isAnimating(5)) {
            return true;
        }
        return super.handleCompleteDeferredRemoval();
    }

    public DisplayInfo getDisplayInfo() {
        return this.mDisplayContent.getDisplayInfo();
    }

    AnimatingActivityRegistry getAnimatingActivityRegistry() {
        return this.mAnimatingActivityRegistry;
    }

    void executeAppTransition(ActivityOptions options) {
        getDisplay().mDisplayContent.executeAppTransition();
        ActivityOptions.abort(options);
    }

    boolean shouldSleepActivities() {
        DisplayContent display = getDisplay();
        if (isFocusedStackOnDisplay() && this.mStackSupervisor.getKeyguardController().isKeyguardGoingAway() && display.isDefaultDisplay) {
            return false;
        }
        return display != null ? display.isSleeping() : this.mAtmService.isSleepingLocked();
    }

    boolean shouldSleepOrShutDownActivities() {
        return shouldSleepActivities() || this.mAtmService.mShuttingDown;
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void dumpDebug(ProtoOutputStream proto, long fieldId, int logLevel) {
        if (logLevel == 2 && !isVisible()) {
            return;
        }
        long token = proto.start(fieldId);
        super.dumpDebug(proto, 1146756268033L, logLevel);
        proto.write(1120986464258L, this.mTaskId);
        proto.write(1120986464271L, getDisplayId());
        proto.write(1120986464272L, getRootTaskId());
        if (this.mResumedActivity != null) {
            this.mResumedActivity.writeIdentifierToProto(proto, 1146756268044L);
        }
        if (this.realActivity != null) {
            proto.write(1138166333453L, this.realActivity.flattenToShortString());
        }
        if (this.origActivity != null) {
            proto.write(1138166333454L, this.origActivity.flattenToShortString());
        }
        proto.write(1120986464273L, getActivityType());
        proto.write(1120986464274L, this.mResizeMode);
        proto.write(1120986464275L, this.mMinWidth);
        proto.write(1120986464276L, this.mMinHeight);
        proto.write(1133871366148L, matchParentBounds());
        getRawBounds().dumpDebug(proto, 1146756268037L);
        if (this.mLastNonFullscreenBounds != null) {
            this.mLastNonFullscreenBounds.dumpDebug(proto, 1146756268054L);
        }
        proto.write(1133871366170L, this.mBoundsAnimating);
        if (this.mSurfaceControl != null) {
            proto.write(1120986464264L, this.mSurfaceControl.getWidth());
            proto.write(1120986464265L, this.mSurfaceControl.getHeight());
        }
        proto.write(1133871366172L, this.mCreatedByOrganizer);
        proto.end(token);
    }
}
