package com.android.server.wm;

import android.app.ActivityThread;
import android.app.IApplicationThread;
import android.app.ProfilerInfo;
import android.app.servertransaction.ConfigurationChangeItem;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.ArraySet;
import android.util.Log;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.QuintConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.Watchdog;
import com.android.server.am.ActivityManagerService;
import com.android.server.job.controllers.JobStatus;
import com.android.server.pm.PackageManagerService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class WindowProcessController extends ConfigurationContainer<ConfigurationContainer> implements ConfigurationContainerListener {
    private static final String TAG = "ActivityTaskManager";
    private static final String TAG_CONFIGURATION = "ActivityTaskManager";
    private static final String TAG_RELEASE = "ActivityTaskManager";
    private volatile boolean mAllowBackgroundActivityStarts;
    private final ActivityTaskManagerService mAtm;
    private ActivityRecord mConfigActivityRecord;
    private volatile boolean mCrashing;
    private volatile int mCurSchedGroup;
    private volatile boolean mDebugging;
    private volatile long mFgInteractionTime;
    private volatile boolean mHasClientActivities;
    private volatile boolean mHasForegroundActivities;
    private volatile boolean mHasForegroundServices;
    private volatile boolean mHasImeService;
    private volatile boolean mHasOverlayUi;
    private boolean mHasPendingConfigurationChange;
    private volatile boolean mHasTopUi;
    final ApplicationInfo mInfo;
    private volatile boolean mInstrumenting;
    private volatile boolean mInstrumentingWithBackgroundActivityStartPrivileges;
    private volatile long mInteractionEventTime;
    private volatile boolean mIsActivityConfigOverrideAllowed;
    private long mLastActivityFinishTime;
    private long mLastActivityLaunchTime;
    private final WindowProcessListener mListener;
    final String mName;
    private volatile boolean mNotResponding;
    public final Object mOwner;
    private int mPauseConfigurationDispatchCount;
    private volatile boolean mPendingUiClean;
    private volatile boolean mPerceptible;
    private volatile boolean mPersistent;
    private volatile int mPid;
    private volatile String mRequiredAbi;
    private boolean mRunningRecentsAnimation;
    private boolean mRunningRemoteAnimation;
    private IApplicationThread mThread;
    final int mUid;
    final int mUserId;
    private volatile boolean mUsingWrapper;
    int mVrThreadTid;
    private volatile long mWhenUnimportant;
    final ArraySet<String> mPkgList = new ArraySet<>();
    private volatile int mCurProcState = 20;
    private volatile int mRepProcState = 20;
    private volatile ArraySet<Integer> mBoundClientUids = new ArraySet<>();
    private final ArrayList<ActivityRecord> mActivities = new ArrayList<>();
    private final ArrayList<Task> mRecentTasks = new ArrayList<>();
    private ActivityRecord mPreQTopResumedActivity = null;
    private final Configuration mLastReportedConfiguration = new Configuration();
    private final ArrayList<ActivityRecord> mHostActivities = new ArrayList<>();
    private int mDisplayId = -1;

    public interface ComputeOomAdjCallback {
        void onOtherActivity();

        void onPausedActivity();

        void onStoppingActivity(boolean z);

        void onVisibleActivity();
    }

    public WindowProcessController(ActivityTaskManagerService atm, ApplicationInfo info, String name, int uid, int userId, Object owner, WindowProcessListener listener) {
        this.mIsActivityConfigOverrideAllowed = true;
        this.mInfo = info;
        this.mName = name;
        this.mUid = uid;
        this.mUserId = userId;
        this.mOwner = owner;
        this.mListener = listener;
        this.mAtm = atm;
        boolean isSysUiPackage = info.packageName.equals(this.mAtm.getSysUiServiceComponentLocked().getPackageName());
        if (isSysUiPackage || this.mUid == 1000) {
            this.mIsActivityConfigOverrideAllowed = false;
        }
        onConfigurationChanged(atm.getGlobalConfiguration());
    }

    public void setPid(int pid) {
        this.mPid = pid;
    }

    public int getPid() {
        return this.mPid;
    }

    public void setThread(IApplicationThread thread) {
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            this.mThread = thread;
            if (thread != null) {
                setLastReportedConfiguration(getConfiguration());
            }
        }
    }

    IApplicationThread getThread() {
        return this.mThread;
    }

    boolean hasThread() {
        return this.mThread != null;
    }

    public void setCurrentSchedulingGroup(int curSchedGroup) {
        this.mCurSchedGroup = curSchedGroup;
    }

    int getCurrentSchedulingGroup() {
        return this.mCurSchedGroup;
    }

    public void setCurrentProcState(int curProcState) {
        this.mCurProcState = curProcState;
    }

    int getCurrentProcState() {
        return this.mCurProcState;
    }

    public void setReportedProcState(int repProcState) {
        this.mRepProcState = repProcState;
    }

    int getReportedProcState() {
        return this.mRepProcState;
    }

    public void setCrashing(boolean crashing) {
        this.mCrashing = crashing;
    }

    boolean isCrashing() {
        return this.mCrashing;
    }

    public void setNotResponding(boolean notResponding) {
        this.mNotResponding = notResponding;
    }

    boolean isNotResponding() {
        return this.mNotResponding;
    }

    public void setPersistent(boolean persistent) {
        this.mPersistent = persistent;
    }

    boolean isPersistent() {
        return this.mPersistent;
    }

    public void setHasForegroundServices(boolean hasForegroundServices) {
        this.mHasForegroundServices = hasForegroundServices;
    }

    boolean hasForegroundServices() {
        return this.mHasForegroundServices;
    }

    public void setHasForegroundActivities(boolean hasForegroundActivities) {
        this.mHasForegroundActivities = hasForegroundActivities;
    }

    boolean hasForegroundActivities() {
        return this.mHasForegroundActivities;
    }

    public void setHasClientActivities(boolean hasClientActivities) {
        this.mHasClientActivities = hasClientActivities;
    }

    boolean hasClientActivities() {
        return this.mHasClientActivities;
    }

    public void setHasTopUi(boolean hasTopUi) {
        this.mHasTopUi = hasTopUi;
    }

    boolean hasTopUi() {
        return this.mHasTopUi;
    }

    public void setHasOverlayUi(boolean hasOverlayUi) {
        this.mHasOverlayUi = hasOverlayUi;
    }

    boolean hasOverlayUi() {
        return this.mHasOverlayUi;
    }

    public void setPendingUiClean(boolean hasPendingUiClean) {
        this.mPendingUiClean = hasPendingUiClean;
    }

    boolean hasPendingUiClean() {
        return this.mPendingUiClean;
    }

    boolean registeredForDisplayConfigChanges() {
        return this.mDisplayId != -1;
    }

    boolean registeredForActivityConfigChanges() {
        return this.mConfigActivityRecord != null;
    }

    void postPendingUiCleanMsg(boolean pendingUiClean) {
        if (this.mListener == null) {
            return;
        }
        Message m = PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$zP5AObb0-v-Zzwr-v8NXOg4Yt1c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((WindowProcessListener) obj).setPendingUiClean(((Boolean) obj2).booleanValue());
            }
        }, this.mListener, Boolean.valueOf(pendingUiClean));
        this.mAtm.mH.sendMessage(m);
    }

    public void setInteractionEventTime(long interactionEventTime) {
        this.mInteractionEventTime = interactionEventTime;
    }

    long getInteractionEventTime() {
        return this.mInteractionEventTime;
    }

    public void setFgInteractionTime(long fgInteractionTime) {
        this.mFgInteractionTime = fgInteractionTime;
    }

    long getFgInteractionTime() {
        return this.mFgInteractionTime;
    }

    public void setWhenUnimportant(long whenUnimportant) {
        this.mWhenUnimportant = whenUnimportant;
    }

    long getWhenUnimportant() {
        return this.mWhenUnimportant;
    }

    public void setRequiredAbi(String requiredAbi) {
        this.mRequiredAbi = requiredAbi;
    }

    String getRequiredAbi() {
        return this.mRequiredAbi;
    }

    int getDisplayId() {
        return this.mDisplayId;
    }

    public void setDebugging(boolean debugging) {
        this.mDebugging = debugging;
    }

    boolean isDebugging() {
        return this.mDebugging;
    }

    public void setUsingWrapper(boolean usingWrapper) {
        this.mUsingWrapper = usingWrapper;
    }

    boolean isUsingWrapper() {
        return this.mUsingWrapper;
    }

    void setLastActivityLaunchTime(long launchTime) {
        long j = this.mLastActivityLaunchTime;
        if (launchTime > j) {
            this.mLastActivityLaunchTime = launchTime;
            return;
        }
        if (launchTime < j) {
            Slog.w("ActivityTaskManager", "Tried to set launchTime (" + launchTime + ") < mLastActivityLaunchTime (" + this.mLastActivityLaunchTime + ")");
        }
    }

    void setLastActivityFinishTimeIfNeeded(long finishTime) {
        if (finishTime <= this.mLastActivityFinishTime || !hasActivityInVisibleTask()) {
            return;
        }
        this.mLastActivityFinishTime = finishTime;
    }

    public void setAllowBackgroundActivityStarts(boolean allowBackgroundActivityStarts) {
        this.mAllowBackgroundActivityStarts = allowBackgroundActivityStarts;
    }

    public boolean areBackgroundActivityStartsAllowedByGracePeriodSafe() {
        boolean zAreBackgroundActivityStartsAllowedByGracePeriod;
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            zAreBackgroundActivityStartsAllowedByGracePeriod = areBackgroundActivityStartsAllowedByGracePeriod();
        }
        return zAreBackgroundActivityStartsAllowedByGracePeriod;
    }

    boolean areBackgroundActivityStartsAllowedByGracePeriod() {
        long now = SystemClock.uptimeMillis();
        if (now - this.mLastActivityLaunchTime >= JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY && now - this.mLastActivityFinishTime >= JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY) {
            return false;
        }
        if (this.mLastActivityLaunchTime > this.mAtm.getLastStopAppSwitchesTime() || this.mLastActivityFinishTime > this.mAtm.getLastStopAppSwitchesTime()) {
            return true;
        }
        return false;
    }

    boolean areBackgroundActivityStartsAllowed() {
        return this.mAllowBackgroundActivityStarts || areBackgroundActivityStartsAllowedByGracePeriod() || this.mInstrumentingWithBackgroundActivityStartPrivileges || hasActivityInVisibleTask() || isBoundByForegroundUid();
    }

    private boolean isBoundByForegroundUid() {
        synchronized (this) {
            if (this.mBoundClientUids != null) {
                for (int i = this.mBoundClientUids.size() - 1; i >= 0; i--) {
                    if (this.mAtm.isUidForeground(this.mBoundClientUids.valueAt(i).intValue())) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public void clearBoundClientUids() {
        synchronized (this) {
            if (this.mBoundClientUids == null) {
                this.mBoundClientUids = new ArraySet<>();
            } else {
                this.mBoundClientUids.clear();
            }
        }
    }

    public void addBoundClientUid(int clientUid, String clientPackageName, int bindFlags) {
        if ((bindFlags & 16384) == 0) {
            if (this.mBoundClientUids == null) {
                this.mBoundClientUids = new ArraySet<>();
            }
            this.mBoundClientUids.add(Integer.valueOf(clientUid));
        }
    }

    public void setInstrumenting(boolean instrumenting, boolean hasBackgroundActivityStartPrivileges) {
        this.mInstrumenting = instrumenting;
        this.mInstrumentingWithBackgroundActivityStartPrivileges = hasBackgroundActivityStartPrivileges;
    }

    boolean isInstrumenting() {
        return this.mInstrumenting;
    }

    public void setPerceptible(boolean perceptible) {
        this.mPerceptible = perceptible;
    }

    boolean isPerceptible() {
        return this.mPerceptible;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    protected int getChildCount() {
        return 0;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    protected ConfigurationContainer getChildAt(int index) {
        return null;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    protected ConfigurationContainer getParent() {
        return this.mAtm.mRootWindowContainer;
    }

    public void addPackage(String packageName) {
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            this.mPkgList.add(packageName);
        }
    }

    public void clearPackageList() {
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            this.mPkgList.clear();
        }
    }

    void addActivityIfNeeded(ActivityRecord r) {
        setLastActivityLaunchTime(r.lastLaunchTime);
        if (this.mActivities.contains(r)) {
            return;
        }
        this.mActivities.add(r);
        updateActivityConfigurationListener();
    }

    void removeActivity(ActivityRecord r) {
        this.mActivities.remove(r);
        updateActivityConfigurationListener();
    }

    void makeFinishingForProcessRemoved() {
        for (int i = this.mActivities.size() - 1; i >= 0; i--) {
            this.mActivities.get(i).makeFinishingLocked();
        }
    }

    void clearActivities() {
        this.mActivities.clear();
        updateActivityConfigurationListener();
    }

    public boolean hasActivities() {
        boolean z;
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            z = !this.mActivities.isEmpty();
        }
        return z;
    }

    public boolean hasVisibleActivities() {
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            for (int i = this.mActivities.size() - 1; i >= 0; i--) {
                ActivityRecord r = this.mActivities.get(i);
                if (r.mVisibleRequested) {
                    return true;
                }
            }
            return false;
        }
    }

    public boolean hasActivitiesOrRecentTasks() {
        boolean z;
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            z = (this.mActivities.isEmpty() && this.mRecentTasks.isEmpty()) ? false : true;
        }
        return z;
    }

    private boolean hasActivityInVisibleTask() {
        ActivityRecord topActivity;
        for (int i = this.mActivities.size() - 1; i >= 0; i--) {
            Task task = this.mActivities.get(i).getTask();
            if (task != null && (topActivity = task.getTopNonFinishingActivity()) != null && topActivity.mVisibleRequested) {
                return true;
            }
        }
        return false;
    }

    boolean updateTopResumingActivityInProcessIfNeeded(ActivityRecord activity) {
        if (this.mInfo.targetSdkVersion >= 29 || this.mPreQTopResumedActivity == activity) {
            return true;
        }
        DisplayContent display = activity.getDisplay();
        if (display == null) {
            return false;
        }
        boolean canUpdate = false;
        ActivityRecord activityRecord = this.mPreQTopResumedActivity;
        DisplayContent topDisplay = activityRecord != null ? activityRecord.getDisplay() : null;
        if (topDisplay == null || !this.mPreQTopResumedActivity.mVisibleRequested || !this.mPreQTopResumedActivity.isFocusable()) {
            canUpdate = true;
        }
        if (!canUpdate && topDisplay.mDisplayContent.compareTo((WindowContainer) display.mDisplayContent) < 0) {
            canUpdate = true;
        }
        if (display == topDisplay && this.mPreQTopResumedActivity.getRootTask().compareTo((WindowContainer) activity.getRootTask()) <= 0) {
            canUpdate = true;
        }
        if (canUpdate) {
            this.mPreQTopResumedActivity = activity;
        }
        return canUpdate;
    }

    public void stopFreezingActivities() {
        synchronized (this.mAtm.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                int i = this.mActivities.size();
                while (i > 0) {
                    i--;
                    this.mActivities.get(i).stopFreezingScreenLocked(true);
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void finishActivities() {
        ArrayList<ActivityRecord> activities = new ArrayList<>(this.mActivities);
        for (int i = 0; i < activities.size(); i++) {
            ActivityRecord r = activities.get(i);
            if (!r.finishing && r.isInStackLocked()) {
                r.finishIfPossible("finish-heavy", true);
            }
        }
    }

    public boolean isInterestingToUser() {
        synchronized (this.mAtm.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                int size = this.mActivities.size();
                for (int i = 0; i < size; i++) {
                    ActivityRecord r = this.mActivities.get(i);
                    if (r.isInterestingToUserLocked()) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return true;
                    }
                }
                if (isEmbedded()) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return true;
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                return false;
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    private boolean isEmbedded() {
        for (int i = this.mHostActivities.size() - 1; i >= 0; i--) {
            ActivityRecord r = this.mHostActivities.get(i);
            if (r.isInterestingToUserLocked()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasRunningActivity(String packageName) {
        synchronized (this.mAtm.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                for (int i = this.mActivities.size() - 1; i >= 0; i--) {
                    ActivityRecord r = this.mActivities.get(i);
                    if (packageName.equals(r.packageName)) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return true;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                return false;
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void clearPackagePreferredForHomeActivities() {
        synchronized (this.mAtm.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                for (int i = this.mActivities.size() - 1; i >= 0; i--) {
                    ActivityRecord r = this.mActivities.get(i);
                    if (r.isActivityTypeHome()) {
                        Log.i("ActivityTaskManager", "Clearing package preferred activities from " + r.packageName);
                        try {
                            ActivityThread.getPackageManager().clearPackagePreferredActivities(r.packageName);
                        } catch (RemoteException e) {
                        }
                    }
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    boolean hasStartedActivity(ActivityRecord launchedActivity) {
        for (int i = this.mActivities.size() - 1; i >= 0; i--) {
            ActivityRecord activity = this.mActivities.get(i);
            if (launchedActivity != activity && !activity.stopped) {
                return true;
            }
        }
        return false;
    }

    boolean hasResumedActivity() {
        for (int i = this.mActivities.size() - 1; i >= 0; i--) {
            ActivityRecord activity = this.mActivities.get(i);
            if (activity.isState(ActivityStack.ActivityState.RESUMED)) {
                return true;
            }
        }
        return false;
    }

    void updateIntentForHeavyWeightActivity(Intent intent) {
        if (this.mActivities.isEmpty()) {
            return;
        }
        ActivityRecord hist = this.mActivities.get(0);
        intent.putExtra("cur_app", hist.packageName);
        intent.putExtra("cur_task", hist.getTask().mTaskId);
    }

    boolean shouldKillProcessForRemovedTask(Task task) {
        for (int k = 0; k < this.mActivities.size(); k++) {
            ActivityRecord activity = this.mActivities.get(k);
            if (!activity.stopped) {
                return false;
            }
            Task otherTask = activity.getTask();
            if (task.mTaskId != otherTask.mTaskId && otherTask.inRecents) {
                return false;
            }
        }
        return true;
    }

    void releaseSomeActivities(String reason) {
        ArrayList<ActivityRecord> candidates = null;
        Slog.d("ActivityTaskManager", "Trying to release some activities in " + this);
        for (int i = 0; i < this.mActivities.size(); i++) {
            ActivityRecord r = this.mActivities.get(i);
            if (r.finishing || r.isState(ActivityStack.ActivityState.DESTROYING, ActivityStack.ActivityState.DESTROYED)) {
                Slog.d("ActivityTaskManager", "Abort release; already destroying: " + r);
                return;
            }
            if (r.mVisibleRequested || !r.stopped || !r.hasSavedState() || !r.isDestroyable() || r.isState(ActivityStack.ActivityState.STARTED, ActivityStack.ActivityState.RESUMED, ActivityStack.ActivityState.PAUSING, ActivityStack.ActivityState.PAUSED, ActivityStack.ActivityState.STOPPING)) {
                Slog.d("ActivityTaskManager", "Not releasing in-use activity: " + r);
            } else if (r.getParent() != null) {
                if (candidates == null) {
                    candidates = new ArrayList<>();
                }
                candidates.add(r);
            }
        }
        if (candidates != null) {
            candidates.sort(new Comparator() { // from class: com.android.server.wm.-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ((ActivityRecord) obj).compareTo((WindowContainer) obj2);
                }
            });
            int maxRelease = Math.max(candidates.size(), 1);
            do {
                ActivityRecord r2 = candidates.remove(0);
                Slog.v("ActivityTaskManager", "Destroying " + r2 + " in state " + r2.getState() + " for reason " + reason);
                r2.destroyImmediately(true, reason);
                maxRelease += -1;
            } while (maxRelease > 0);
        }
    }

    public void getDisplayContextsWithErrorDialogs(List<Context> displayContexts) {
        if (displayContexts == null) {
            return;
        }
        synchronized (this.mAtm.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                RootWindowContainer root = this.mAtm.mWindowManager.mRoot;
                root.getDisplayContextsWithNonToastVisibleWindows(this.mPid, displayContexts);
                for (int i = this.mActivities.size() - 1; i >= 0; i--) {
                    ActivityRecord r = this.mActivities.get(i);
                    int displayId = r.getDisplayId();
                    Context c = root.getDisplayUiContext(displayId);
                    if (r.mVisibleRequested && !displayContexts.contains(c)) {
                        displayContexts.add(c);
                    }
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void addHostActivity(ActivityRecord r) {
        if (this.mHostActivities.contains(r)) {
            return;
        }
        this.mHostActivities.add(r);
    }

    void removeHostActivity(ActivityRecord r) {
        this.mHostActivities.remove(r);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0059 A[Catch: all -> 0x00ad, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x0012, B:8:0x001e, B:10:0x004a, B:33:0x008e, B:12:0x0052, B:13:0x0055, B:15:0x0059, B:18:0x0061, B:23:0x006a, B:25:0x006e, B:27:0x0072, B:29:0x007c, B:30:0x0080, B:32:0x0088, B:34:0x0092), top: B:48:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x006a A[Catch: all -> 0x00ad, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x0012, B:8:0x001e, B:10:0x004a, B:33:0x008e, B:12:0x0052, B:13:0x0055, B:15:0x0059, B:18:0x0061, B:23:0x006a, B:25:0x006e, B:27:0x0072, B:29:0x007c, B:30:0x0080, B:32:0x0088, B:34:0x0092), top: B:48:0x0009 }] */
    public int computeOomAdjFromActivities(int minTaskLayer, ComputeOomAdjCallback callback) {
        Task task;
        int layer;
        ActivityStack.ActivityState best = ActivityStack.ActivityState.DESTROYED;
        boolean finishing = true;
        boolean visible = false;
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            int activitiesSize = this.mActivities.size();
            for (int j = 0; j < activitiesSize; j++) {
                ActivityRecord r = this.mActivities.get(j);
                if (r.app != this) {
                    Log.e("ActivityTaskManager", "Found activity " + r + " in proc activity list using " + r.app + " instead of expected " + this);
                    if (r.app == null || r.app.mUid == this.mUid) {
                        r.setProcess(this);
                        if (r.mVisibleRequested) {
                            task = r.getTask();
                            if (task != null && minTaskLayer > 0 && (layer = task.mLayerRank) >= 0 && minTaskLayer > layer) {
                                minTaskLayer = layer;
                            }
                            visible = true;
                        } else if (best == ActivityStack.ActivityState.PAUSING && best != ActivityStack.ActivityState.PAUSED) {
                            if (r.isState(ActivityStack.ActivityState.PAUSING, ActivityStack.ActivityState.PAUSED)) {
                                best = ActivityStack.ActivityState.PAUSING;
                            } else if (r.isState(ActivityStack.ActivityState.STOPPING)) {
                                best = ActivityStack.ActivityState.STOPPING;
                                finishing &= r.finishing;
                            }
                        }
                    }
                } else if (r.mVisibleRequested) {
                    task = r.getTask();
                    if (task != null) {
                        minTaskLayer = layer;
                    }
                    visible = true;
                } else if (best == ActivityStack.ActivityState.PAUSING) {
                }
            }
        }
        if (visible) {
            callback.onVisibleActivity();
        } else if (best == ActivityStack.ActivityState.PAUSING) {
            callback.onPausedActivity();
        } else if (best == ActivityStack.ActivityState.STOPPING) {
            callback.onStoppingActivity(finishing);
        } else {
            callback.onOtherActivity();
        }
        return minTaskLayer;
    }

    public int computeRelaunchReason() {
        synchronized (this.mAtm.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                int activitiesSize = this.mActivities.size();
                for (int i = activitiesSize - 1; i >= 0; i--) {
                    ActivityRecord r = this.mActivities.get(i);
                    if (r.mRelaunchReason != 0) {
                        int i2 = r.mRelaunchReason;
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return i2;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                return 0;
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public long getInputDispatchingTimeout() {
        long j;
        synchronized (this.mAtm.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                j = (isInstrumenting() || isUsingWrapper()) ? 60000L : 5000L;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return j;
    }

    void clearProfilerIfNeeded() {
        if (this.mListener == null) {
            return;
        }
        this.mAtm.mH.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.wm.-$$Lambda$9Kj79s-YFqaGRhFHazfExnbZExw
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WindowProcessListener) obj).clearProfilerIfNeeded();
            }
        }, this.mListener));
    }

    void updateProcessInfo(boolean updateServiceConnectionActivities, boolean activityChange, boolean updateOomAdj, boolean addPendingTopUid) {
        if (this.mListener == null) {
            return;
        }
        if (addPendingTopUid) {
            this.mAtm.mAmInternal.addPendingTopUid(this.mUid, this.mPid);
        }
        Message m = PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.wm.-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                ((WindowProcessListener) obj).updateProcessInfo(((Boolean) obj2).booleanValue(), ((Boolean) obj3).booleanValue(), ((Boolean) obj4).booleanValue());
            }
        }, this.mListener, Boolean.valueOf(updateServiceConnectionActivities), Boolean.valueOf(activityChange), Boolean.valueOf(updateOomAdj));
        this.mAtm.mH.sendMessage(m);
    }

    void updateServiceConnectionActivities() {
        if (this.mListener == null) {
            return;
        }
        this.mAtm.mH.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.wm.-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WindowProcessListener) obj).updateServiceConnectionActivities();
            }
        }, this.mListener));
    }

    void setPendingUiCleanAndForceProcessStateUpTo(int newState) {
        if (this.mListener == null) {
            return;
        }
        Message m = PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((WindowProcessListener) obj).setPendingUiCleanAndForceProcessStateUpTo(((Integer) obj2).intValue());
            }
        }, this.mListener, Integer.valueOf(newState));
        this.mAtm.mH.sendMessage(m);
    }

    boolean isRemoved() {
        WindowProcessListener windowProcessListener = this.mListener;
        if (windowProcessListener == null) {
            return false;
        }
        return windowProcessListener.isRemoved();
    }

    private boolean shouldSetProfileProc() {
        return this.mAtm.mProfileApp != null && this.mAtm.mProfileApp.equals(this.mName) && (this.mAtm.mProfileProc == null || this.mAtm.mProfileProc == this);
    }

    ProfilerInfo createProfilerInfoIfNeeded() {
        ProfilerInfo currentProfilerInfo = this.mAtm.mProfilerInfo;
        if (currentProfilerInfo == null || currentProfilerInfo.profileFile == null || !shouldSetProfileProc()) {
            return null;
        }
        if (currentProfilerInfo.profileFd != null) {
            try {
                currentProfilerInfo.profileFd = currentProfilerInfo.profileFd.dup();
            } catch (IOException e) {
                currentProfilerInfo.closeFd();
            }
        }
        return new ProfilerInfo(currentProfilerInfo);
    }

    void onStartActivity(int topProcessState, ActivityInfo info) {
        if (this.mListener == null) {
            return;
        }
        String packageName = null;
        if ((info.flags & 1) == 0 || !PackageManagerService.PLATFORM_PACKAGE_NAME.equals(info.packageName)) {
            packageName = info.packageName;
        }
        if (topProcessState == 2) {
            this.mAtm.mAmInternal.addPendingTopUid(this.mUid, this.mPid);
        }
        Message m = PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.wm.-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                ((WindowProcessListener) obj).onStartActivity(((Integer) obj2).intValue(), ((Boolean) obj3).booleanValue(), (String) obj4, ((Long) obj5).longValue());
            }
        }, this.mListener, Integer.valueOf(topProcessState), Boolean.valueOf(shouldSetProfileProc()), packageName, Long.valueOf(info.applicationInfo.longVersionCode));
        this.mAtm.mH.sendMessageAtFrontOfQueue(m);
    }

    void appDied(String reason) {
        if (this.mListener == null) {
            return;
        }
        Message m = PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((WindowProcessListener) obj).appDied((String) obj2);
            }
        }, this.mListener, reason);
        this.mAtm.mH.sendMessage(m);
    }

    void registerDisplayConfigurationListener(DisplayContent displayContent) {
        if (displayContent == null) {
            return;
        }
        unregisterDisplayConfigurationListener();
        unregisterActivityConfigurationListener();
        this.mDisplayId = displayContent.mDisplayId;
        displayContent.registerConfigurationChangeListener(this);
    }

    void unregisterDisplayConfigurationListener() {
        if (this.mDisplayId == -1) {
            return;
        }
        DisplayContent displayContent = this.mAtm.mRootWindowContainer.getDisplayContent(this.mDisplayId);
        if (displayContent != null) {
            displayContent.unregisterConfigurationChangeListener(this);
        }
        this.mDisplayId = -1;
        onMergedOverrideConfigurationChanged(Configuration.EMPTY);
    }

    void registerActivityConfigurationListener(ActivityRecord activityRecord) {
        if (activityRecord == null || activityRecord.containsListener(this) || !this.mIsActivityConfigOverrideAllowed) {
            return;
        }
        unregisterDisplayConfigurationListener();
        unregisterActivityConfigurationListener();
        this.mConfigActivityRecord = activityRecord;
        activityRecord.registerConfigurationChangeListener(this);
    }

    private void unregisterActivityConfigurationListener() {
        ActivityRecord activityRecord = this.mConfigActivityRecord;
        if (activityRecord == null) {
            return;
        }
        activityRecord.unregisterConfigurationChangeListener(this);
        this.mConfigActivityRecord = null;
        onMergedOverrideConfigurationChanged(Configuration.EMPTY);
    }

    private void updateActivityConfigurationListener() {
        if (!this.mIsActivityConfigOverrideAllowed) {
            return;
        }
        for (int i = this.mActivities.size() - 1; i >= 0; i--) {
            ActivityRecord activityRecord = this.mActivities.get(i);
            if (!activityRecord.finishing) {
                registerActivityConfigurationListener(activityRecord);
                return;
            }
        }
        unregisterActivityConfigurationListener();
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public void onConfigurationChanged(Configuration newGlobalConfig) {
        super.onConfigurationChanged(newGlobalConfig);
        updateConfiguration();
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public void onRequestedOverrideConfigurationChanged(Configuration overrideConfiguration) {
        super.onRequestedOverrideConfigurationChanged(overrideConfiguration);
    }

    @Override // com.android.server.wm.ConfigurationContainerListener
    public void onMergedOverrideConfigurationChanged(Configuration mergedOverrideConfig) {
        super.onRequestedOverrideConfigurationChanged(mergedOverrideConfig);
    }

    @Override // com.android.server.wm.ConfigurationContainer
    void resolveOverrideConfiguration(Configuration newParentConfig) {
        super.resolveOverrideConfiguration(newParentConfig);
        Configuration resolvedConfig = getResolvedOverrideConfiguration();
        resolvedConfig.windowConfiguration.setActivityType(0);
        resolvedConfig.seq = newParentConfig.seq;
    }

    private void updateConfiguration() {
        Configuration config = getConfiguration();
        if (this.mLastReportedConfiguration.diff(config) == 0) {
            if (Build.IS_DEBUGGABLE && this.mHasImeService) {
                Slog.w("ActivityTaskManager", "Current config: " + config + " unchanged for IME proc " + this.mName);
                return;
            }
            return;
        }
        if (this.mListener.isCached()) {
            this.mHasPendingConfigurationChange = true;
        } else {
            dispatchConfigurationChange(config);
        }
    }

    private void dispatchConfigurationChange(Configuration config) {
        if (this.mPauseConfigurationDispatchCount > 0) {
            this.mHasPendingConfigurationChange = true;
            return;
        }
        this.mHasPendingConfigurationChange = false;
        if (this.mThread == null) {
            if (Build.IS_DEBUGGABLE && this.mHasImeService) {
                Slog.w("ActivityTaskManager", "Unable to send config for IME proc " + this.mName + ": no app thread");
                return;
            }
            return;
        }
        if (Build.IS_DEBUGGABLE && this.mHasImeService) {
            Slog.v("ActivityTaskManager", "Sending to IME proc " + this.mName + " new config " + config);
        }
        try {
            config.seq = this.mAtm.increaseConfigurationSeqLocked();
            this.mAtm.getLifecycleManager().scheduleTransaction(this.mThread, ConfigurationChangeItem.obtain(config));
            setLastReportedConfiguration(config);
        } catch (Exception e) {
            Slog.e("ActivityTaskManager", "Failed to schedule configuration change", e);
        }
    }

    void setLastReportedConfiguration(Configuration config) {
        this.mLastReportedConfiguration.setTo(config);
    }

    Configuration getLastReportedConfiguration() {
        return this.mLastReportedConfiguration;
    }

    void pauseConfigurationDispatch() {
        this.mPauseConfigurationDispatchCount++;
    }

    void resumeConfigurationDispatch() {
        this.mPauseConfigurationDispatchCount--;
    }

    Configuration prepareConfigurationForLaunchingActivity() {
        Configuration config = getConfiguration();
        if (this.mHasPendingConfigurationChange) {
            this.mHasPendingConfigurationChange = false;
            config.seq = this.mAtm.increaseConfigurationSeqLocked();
        }
        return config;
    }

    public long getCpuTime() {
        WindowProcessListener windowProcessListener = this.mListener;
        if (windowProcessListener != null) {
            return windowProcessListener.getCpuTime();
        }
        return 0L;
    }

    void addRecentTask(Task task) {
        this.mRecentTasks.add(task);
    }

    void removeRecentTask(Task task) {
        this.mRecentTasks.remove(task);
    }

    public boolean hasRecentTasks() {
        boolean z;
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            z = !this.mRecentTasks.isEmpty();
        }
        return z;
    }

    void clearRecentTasks() {
        for (int i = this.mRecentTasks.size() - 1; i >= 0; i--) {
            this.mRecentTasks.get(i).clearRootProcess();
        }
        this.mRecentTasks.clear();
    }

    public void appEarlyNotResponding(String annotation, Runnable killAppCallback) {
        Runnable targetRunnable = null;
        synchronized (this.mAtm.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mAtm.mController == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                try {
                    int res = this.mAtm.mController.appEarlyNotResponding(this.mName, this.mPid, annotation);
                    if (res < 0 && this.mPid != ActivityManagerService.MY_PID) {
                        targetRunnable = killAppCallback;
                    }
                } catch (RemoteException e) {
                    this.mAtm.mController = null;
                    Watchdog.getInstance().setActivityController(null);
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                if (targetRunnable != null) {
                    targetRunnable.run();
                }
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public boolean appNotResponding(String info, Runnable killAppCallback, Runnable serviceTimeoutCallback) throws RemoteException {
        Runnable targetRunnable = null;
        synchronized (this.mAtm.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mAtm.mController == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return false;
                }
                try {
                    int res = this.mAtm.mController.appNotResponding(this.mName, this.mPid, info);
                    if (res != 0) {
                        if (res < 0 && this.mPid != ActivityManagerService.MY_PID) {
                            targetRunnable = killAppCallback;
                        } else {
                            targetRunnable = serviceTimeoutCallback;
                        }
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    if (targetRunnable == null) {
                        return false;
                    }
                    targetRunnable.run();
                    return true;
                } catch (RemoteException e) {
                    this.mAtm.mController = null;
                    Watchdog.getInstance().setActivityController(null);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return false;
                }
            } catch (Throwable e2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw e2;
            }
        }
    }

    public void onProcCachedStateChanged(boolean isCached) {
        if (!isCached) {
            synchronized (this.mAtm.mGlobalLockWithoutBoost) {
                if (this.mHasPendingConfigurationChange) {
                    dispatchConfigurationChange(getConfiguration());
                }
            }
        }
    }

    public void onServiceStarted(ServiceInfo serviceInfo) {
        String permission = serviceInfo.permission;
        if (permission == null) {
            return;
        }
        byte b = -1;
        int iHashCode = permission.hashCode();
        if (iHashCode != -769871357) {
            if (iHashCode != 1412417858) {
                if (iHashCode == 1448369304 && permission.equals("android.permission.BIND_INPUT_METHOD")) {
                    b = 0;
                }
            } else if (permission.equals("android.permission.BIND_ACCESSIBILITY_SERVICE")) {
                b = 1;
            }
        } else if (permission.equals("android.permission.BIND_VOICE_INTERACTION")) {
            b = 2;
        }
        if (b == 0) {
            this.mHasImeService = true;
        } else if (b != 1 && b != 2) {
            return;
        }
        this.mIsActivityConfigOverrideAllowed = false;
    }

    public void onTopProcChanged() {
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            this.mAtm.mVrController.onTopProcChangedLocked(this);
        }
    }

    public boolean isHomeProcess() {
        boolean z;
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            z = this == this.mAtm.mHomeProcess;
        }
        return z;
    }

    public boolean isPreviousProcess() {
        boolean z;
        synchronized (this.mAtm.mGlobalLockWithoutBoost) {
            z = this == this.mAtm.mPreviousProcess;
        }
        return z;
    }

    void setRunningRecentsAnimation(boolean running) {
        if (this.mRunningRecentsAnimation == running) {
            return;
        }
        this.mRunningRecentsAnimation = running;
        updateRunningRemoteOrRecentsAnimation();
    }

    void setRunningRemoteAnimation(boolean running) {
        if (this.mRunningRemoteAnimation == running) {
            return;
        }
        this.mRunningRemoteAnimation = running;
        updateRunningRemoteOrRecentsAnimation();
    }

    private void updateRunningRemoteOrRecentsAnimation() {
        this.mAtm.mH.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((WindowProcessListener) obj).setRunningRemoteAnimation(((Boolean) obj2).booleanValue());
            }
        }, this.mListener, Boolean.valueOf(this.mRunningRecentsAnimation || this.mRunningRemoteAnimation)));
    }

    public String toString() {
        Object obj = this.mOwner;
        if (obj != null) {
            return obj.toString();
        }
        return null;
    }

    public void dump(PrintWriter pw, String prefix) {
        synchronized (this.mAtm.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mActivities.size() > 0) {
                    pw.print(prefix);
                    pw.println("Activities:");
                    for (int i = 0; i < this.mActivities.size(); i++) {
                        pw.print(prefix);
                        pw.print("  - ");
                        pw.println(this.mActivities.get(i));
                    }
                }
                if (this.mRecentTasks.size() > 0) {
                    pw.println(prefix + "Recent Tasks:");
                    for (int i2 = 0; i2 < this.mRecentTasks.size(); i2++) {
                        pw.println(prefix + "  - " + this.mRecentTasks.get(i2));
                    }
                }
                int i3 = this.mVrThreadTid;
                if (i3 != 0) {
                    pw.print(prefix);
                    pw.print("mVrThreadTid=");
                    pw.println(this.mVrThreadTid);
                }
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        pw.println(prefix + " Configuration=" + getConfiguration());
        pw.println(prefix + " OverrideConfiguration=" + getRequestedOverrideConfiguration());
        pw.println(prefix + " mLastReportedConfiguration=" + this.mLastReportedConfiguration);
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        WindowProcessListener windowProcessListener = this.mListener;
        if (windowProcessListener != null) {
            windowProcessListener.dumpDebug(proto, fieldId);
        }
    }
}
