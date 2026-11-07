package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.IApplicationThread;
import android.app.ProfilerInfo;
import android.app.WaitResult;
import android.content.ComponentName;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.AuxiliaryResolveInfo;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.service.voice.IVoiceInteractionSession;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.DebugUtils;
import android.util.Pools;
import android.util.Slog;
import com.android.internal.app.HeavyWeightSwitcherActivity;
import com.android.internal.app.IVoiceInteractor;
import com.android.server.am.PendingIntentRecord;
import com.android.server.hdmi.HdmiCecKeycode;
import com.android.server.pm.InstantAppResolver;
import com.android.server.pm.PackageManagerService;
import com.android.server.statusbar.StatusBarManagerInternal;
import com.android.server.uri.NeededUriGrants;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class ActivityStarter {
    private static final int INVALID_LAUNCH_MODE = -1;
    private static final String TAG = "ActivityTaskManager";
    private static final String TAG_CONFIGURATION = "ActivityTaskManager";
    private static final String TAG_FOCUS = "ActivityTaskManager";
    private static final String TAG_RESULTS = "ActivityTaskManager";
    private static final String TAG_USER_LEAVING = "ActivityTaskManager";
    boolean mAddingToTask;
    private boolean mAvoidMoveToFront;
    private int mCallingUid;
    private final ActivityStartController mController;
    private boolean mDoResume;
    private boolean mFrozeTaskList;
    private Task mInTask;
    private Intent mIntent;
    private boolean mIntentDelivered;
    private ActivityRecord mInterceptedActivityRecord;
    private final ActivityStartInterceptor mInterceptor;
    private boolean mKeepCurTransition;
    private ActivityRecord mLastStartActivityRecord;
    private int mLastStartActivityResult;
    private long mLastStartActivityTimeMs;
    private String mLastStartReason;
    private int mLaunchFlags;
    private int mLaunchMode;
    private boolean mLaunchTaskBehind;
    private boolean mMovedToFront;
    private ActivityInfo mNewTaskInfo;
    private Intent mNewTaskIntent;
    private boolean mNoAnimation;
    private ActivityRecord mNotTop;
    private ActivityOptions mOptions;
    private TaskDisplayArea mPreferredTaskDisplayArea;
    private int mPreferredWindowingMode;
    private boolean mRestrictedBgActivity;
    private Task mReuseTask;
    private final RootWindowContainer mRootWindowContainer;
    private final ActivityTaskManagerService mService;
    private ActivityRecord mSourceRecord;
    private ActivityStack mSourceStack;
    ActivityRecord mStartActivity;
    private int mStartFlags;
    private final ActivityStackSupervisor mSupervisor;
    private ActivityStack mTargetStack;
    private Task mTargetTask;
    private IVoiceInteractor mVoiceInteractor;
    private IVoiceInteractionSession mVoiceSession;
    private LaunchParamsController.LaunchParams mLaunchParams = new LaunchParamsController.LaunchParams();
    Request mRequest = new Request();

    interface Factory {
        ActivityStarter obtain();

        void recycle(ActivityStarter activityStarter);

        void setController(ActivityStartController activityStartController);
    }

    static class DefaultFactory implements Factory {
        private ActivityStartController mController;
        private ActivityStartInterceptor mInterceptor;
        private ActivityTaskManagerService mService;
        private ActivityStackSupervisor mSupervisor;
        private final int MAX_STARTER_COUNT = 3;
        private Pools.SynchronizedPool<ActivityStarter> mStarterPool = new Pools.SynchronizedPool<>(3);

        DefaultFactory(ActivityTaskManagerService service, ActivityStackSupervisor supervisor, ActivityStartInterceptor interceptor) {
            this.mService = service;
            this.mSupervisor = supervisor;
            this.mInterceptor = interceptor;
        }

        @Override // com.android.server.wm.ActivityStarter.Factory
        public void setController(ActivityStartController controller) {
            this.mController = controller;
        }

        @Override // com.android.server.wm.ActivityStarter.Factory
        public ActivityStarter obtain() {
            ActivityStarter starter = (ActivityStarter) this.mStarterPool.acquire();
            if (starter == null) {
                return new ActivityStarter(this.mController, this.mService, this.mSupervisor, this.mInterceptor);
            }
            return starter;
        }

        @Override // com.android.server.wm.ActivityStarter.Factory
        public void recycle(ActivityStarter starter) {
            starter.reset(true);
            this.mStarterPool.release(starter);
        }
    }

    static class Request {
        private static final int DEFAULT_CALLING_PID = 0;
        private static final int DEFAULT_CALLING_UID = -1;
        static final int DEFAULT_REAL_CALLING_PID = 0;
        static final int DEFAULT_REAL_CALLING_UID = -1;
        ActivityInfo activityInfo;
        SafeActivityOptions activityOptions;
        boolean allowBackgroundActivityStart;
        boolean allowPendingRemoteAnimationRegistryLookup;
        boolean avoidMoveToFront;
        IApplicationThread caller;
        String callingFeatureId;
        String callingPackage;
        boolean componentSpecified;
        Intent ephemeralIntent;
        int filterCallingUid;
        Configuration globalConfig;
        boolean ignoreTargetSecurity;
        Task inTask;
        Intent intent;
        NeededUriGrants intentGrants;
        PendingIntentRecord originatingPendingIntent;
        ActivityRecord[] outActivity;
        ProfilerInfo profilerInfo;
        String reason;
        int requestCode;
        ResolveInfo resolveInfo;
        String resolvedType;
        IBinder resultTo;
        String resultWho;
        int startFlags;
        int userId;
        IVoiceInteractor voiceInteractor;
        IVoiceInteractionSession voiceSession;
        WaitResult waitResult;
        int callingPid = 0;
        int callingUid = -1;
        int realCallingPid = 0;
        int realCallingUid = -1;

        Request() {
            reset();
        }

        void reset() {
            this.caller = null;
            this.intent = null;
            this.intentGrants = null;
            this.ephemeralIntent = null;
            this.resolvedType = null;
            this.activityInfo = null;
            this.resolveInfo = null;
            this.voiceSession = null;
            this.voiceInteractor = null;
            this.resultTo = null;
            this.resultWho = null;
            this.requestCode = 0;
            this.callingPid = 0;
            this.callingUid = -1;
            this.callingPackage = null;
            this.callingFeatureId = null;
            this.realCallingPid = 0;
            this.realCallingUid = -1;
            this.startFlags = 0;
            this.activityOptions = null;
            this.ignoreTargetSecurity = false;
            this.componentSpecified = false;
            this.outActivity = null;
            this.inTask = null;
            this.reason = null;
            this.profilerInfo = null;
            this.globalConfig = null;
            this.userId = 0;
            this.waitResult = null;
            this.avoidMoveToFront = false;
            this.allowPendingRemoteAnimationRegistryLookup = true;
            this.filterCallingUid = -10000;
            this.originatingPendingIntent = null;
            this.allowBackgroundActivityStart = false;
        }

        void set(Request request) {
            this.caller = request.caller;
            this.intent = request.intent;
            this.intentGrants = request.intentGrants;
            this.ephemeralIntent = request.ephemeralIntent;
            this.resolvedType = request.resolvedType;
            this.activityInfo = request.activityInfo;
            this.resolveInfo = request.resolveInfo;
            this.voiceSession = request.voiceSession;
            this.voiceInteractor = request.voiceInteractor;
            this.resultTo = request.resultTo;
            this.resultWho = request.resultWho;
            this.requestCode = request.requestCode;
            this.callingPid = request.callingPid;
            this.callingUid = request.callingUid;
            this.callingPackage = request.callingPackage;
            this.callingFeatureId = request.callingFeatureId;
            this.realCallingPid = request.realCallingPid;
            this.realCallingUid = request.realCallingUid;
            this.startFlags = request.startFlags;
            this.activityOptions = request.activityOptions;
            this.ignoreTargetSecurity = request.ignoreTargetSecurity;
            this.componentSpecified = request.componentSpecified;
            this.outActivity = request.outActivity;
            this.inTask = request.inTask;
            this.reason = request.reason;
            this.profilerInfo = request.profilerInfo;
            this.globalConfig = request.globalConfig;
            this.userId = request.userId;
            this.waitResult = request.waitResult;
            this.avoidMoveToFront = request.avoidMoveToFront;
            this.allowPendingRemoteAnimationRegistryLookup = request.allowPendingRemoteAnimationRegistryLookup;
            this.filterCallingUid = request.filterCallingUid;
            this.originatingPendingIntent = request.originatingPendingIntent;
            this.allowBackgroundActivityStart = request.allowBackgroundActivityStart;
        }

        void resolveActivity(ActivityStackSupervisor supervisor) throws Throwable {
            UserInfo userInfo;
            if (this.realCallingPid == 0) {
                this.realCallingPid = Binder.getCallingPid();
            }
            if (this.realCallingUid == -1) {
                this.realCallingUid = Binder.getCallingUid();
            }
            if (this.callingUid >= 0) {
                this.callingPid = -1;
            } else if (this.caller == null) {
                this.callingPid = this.realCallingPid;
                this.callingUid = this.realCallingUid;
            } else {
                this.callingUid = -1;
                this.callingPid = -1;
            }
            int resolvedCallingUid = this.callingUid;
            if (this.caller != null) {
                synchronized (supervisor.mService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        WindowProcessController callerApp = supervisor.mService.getProcessController(this.caller);
                        if (callerApp != null) {
                            resolvedCallingUid = callerApp.mInfo.uid;
                        }
                    } catch (Throwable th) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            }
            this.ephemeralIntent = new Intent(this.intent);
            Intent intent = new Intent(this.intent);
            this.intent = intent;
            if (intent.getComponent() != null && ((!"android.intent.action.VIEW".equals(this.intent.getAction()) || this.intent.getData() != null) && !"android.intent.action.INSTALL_INSTANT_APP_PACKAGE".equals(this.intent.getAction()) && !"android.intent.action.RESOLVE_INSTANT_APP_PACKAGE".equals(this.intent.getAction()) && supervisor.mService.getPackageManagerInternalLocked().isInstantAppInstallerComponent(this.intent.getComponent()))) {
                this.intent.setComponent(null);
            }
            ResolveInfo resolveInfoResolveIntent = supervisor.resolveIntent(this.intent, this.resolvedType, this.userId, 0, ActivityStarter.computeResolveFilterUid(this.callingUid, this.realCallingUid, this.filterCallingUid));
            this.resolveInfo = resolveInfoResolveIntent;
            if (resolveInfoResolveIntent == null && (userInfo = supervisor.getUserInfo(this.userId)) != null && userInfo.isManagedProfile()) {
                UserManager userManager = UserManager.get(supervisor.mService.mContext);
                long token = Binder.clearCallingIdentity();
                try {
                    UserInfo parent = userManager.getProfileParent(this.userId);
                    boolean profileLockedAndParentUnlockingOrUnlocked = (parent == null || !userManager.isUserUnlockingOrUnlocked(parent.id) || userManager.isUserUnlockingOrUnlocked(this.userId)) ? false : true;
                    Binder.restoreCallingIdentity(token);
                    if (profileLockedAndParentUnlockingOrUnlocked) {
                        this.resolveInfo = supervisor.resolveIntent(this.intent, this.resolvedType, this.userId, 786432, ActivityStarter.computeResolveFilterUid(this.callingUid, this.realCallingUid, this.filterCallingUid));
                    }
                } catch (Throwable th2) {
                    Binder.restoreCallingIdentity(token);
                    throw th2;
                }
            }
            ActivityInfo activityInfoResolveActivity = supervisor.resolveActivity(this.intent, this.resolveInfo, this.startFlags, this.profilerInfo);
            this.activityInfo = activityInfoResolveActivity;
            if (activityInfoResolveActivity != null) {
                this.intentGrants = supervisor.mService.mUgmInternal.checkGrantUriPermissionFromIntent(this.intent, resolvedCallingUid, this.activityInfo.applicationInfo.packageName, UserHandle.getUserId(this.activityInfo.applicationInfo.uid));
            }
        }
    }

    ActivityStarter(ActivityStartController controller, ActivityTaskManagerService service, ActivityStackSupervisor supervisor, ActivityStartInterceptor interceptor) {
        this.mController = controller;
        this.mService = service;
        this.mRootWindowContainer = service.mRootWindowContainer;
        this.mSupervisor = supervisor;
        this.mInterceptor = interceptor;
        reset(true);
    }

    void set(ActivityStarter starter) {
        this.mStartActivity = starter.mStartActivity;
        this.mIntent = starter.mIntent;
        this.mCallingUid = starter.mCallingUid;
        this.mOptions = starter.mOptions;
        this.mRestrictedBgActivity = starter.mRestrictedBgActivity;
        this.mLaunchTaskBehind = starter.mLaunchTaskBehind;
        this.mLaunchFlags = starter.mLaunchFlags;
        this.mLaunchMode = starter.mLaunchMode;
        this.mLaunchParams.set(starter.mLaunchParams);
        this.mNotTop = starter.mNotTop;
        this.mDoResume = starter.mDoResume;
        this.mStartFlags = starter.mStartFlags;
        this.mSourceRecord = starter.mSourceRecord;
        this.mPreferredTaskDisplayArea = starter.mPreferredTaskDisplayArea;
        this.mPreferredWindowingMode = starter.mPreferredWindowingMode;
        this.mInTask = starter.mInTask;
        this.mAddingToTask = starter.mAddingToTask;
        this.mReuseTask = starter.mReuseTask;
        this.mNewTaskInfo = starter.mNewTaskInfo;
        this.mNewTaskIntent = starter.mNewTaskIntent;
        this.mSourceStack = starter.mSourceStack;
        this.mTargetTask = starter.mTargetTask;
        this.mTargetStack = starter.mTargetStack;
        this.mMovedToFront = starter.mMovedToFront;
        this.mNoAnimation = starter.mNoAnimation;
        this.mKeepCurTransition = starter.mKeepCurTransition;
        this.mAvoidMoveToFront = starter.mAvoidMoveToFront;
        this.mFrozeTaskList = starter.mFrozeTaskList;
        this.mVoiceSession = starter.mVoiceSession;
        this.mVoiceInteractor = starter.mVoiceInteractor;
        this.mIntentDelivered = starter.mIntentDelivered;
        this.mRequest.set(starter.mRequest);
    }

    boolean relatedToPackage(String packageName) {
        ActivityRecord activityRecord;
        ActivityRecord activityRecord2 = this.mLastStartActivityRecord;
        return (activityRecord2 != null && packageName.equals(activityRecord2.packageName)) || ((activityRecord = this.mStartActivity) != null && packageName.equals(activityRecord.packageName));
    }

    void startResolvedActivity(ActivityRecord r, ActivityRecord sourceRecord, IVoiceInteractionSession voiceSession, IVoiceInteractor voiceInteractor, int startFlags, boolean doResume, ActivityOptions options, Task inTask, NeededUriGrants intentGrants) {
        try {
            ActivityMetricsLogger.LaunchingState launchingState = this.mSupervisor.getActivityMetricsLogger().notifyActivityLaunching(r.intent, r.resultTo);
            this.mLastStartReason = "startResolvedActivity";
            this.mLastStartActivityTimeMs = System.currentTimeMillis();
            this.mLastStartActivityRecord = r;
            this.mLastStartActivityResult = startActivityUnchecked(r, sourceRecord, voiceSession, voiceInteractor, startFlags, doResume, options, inTask, false, intentGrants);
            this.mSupervisor.getActivityMetricsLogger().notifyActivityLaunched(launchingState, this.mLastStartActivityResult, this.mLastStartActivityRecord);
        } finally {
            onExecutionComplete();
        }
    }

    int execute() {
        ActivityMetricsLogger.LaunchingState launchingState;
        try {
            if (this.mRequest.intent != null && this.mRequest.intent.hasFileDescriptors()) {
                throw new IllegalArgumentException("File descriptors passed in Intent");
            }
            synchronized (this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord caller = ActivityRecord.forTokenLocked(this.mRequest.resultTo);
                    launchingState = this.mSupervisor.getActivityMetricsLogger().notifyActivityLaunching(this.mRequest.intent, caller);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            if (this.mRequest.activityInfo == null) {
                this.mRequest.resolveActivity(this.mSupervisor);
            }
            synchronized (this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    boolean globalConfigWillChange = (this.mRequest.globalConfig == null || this.mService.getGlobalConfiguration().diff(this.mRequest.globalConfig) == 0) ? false : true;
                    ActivityStack stack = this.mRootWindowContainer == null ? null : this.mRootWindowContainer.getTopDisplayFocusedStack();
                    if (stack != null) {
                        stack.mConfigWillChange = globalConfigWillChange;
                    }
                    long origId = Binder.clearCallingIdentity();
                    int res = resolveToHeavyWeightSwitcherIfNeeded();
                    if (res != 0) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        onExecutionComplete();
                        return res;
                    }
                    int res2 = executeRequest(this.mRequest);
                    Binder.restoreCallingIdentity(origId);
                    if (this.mInterceptedActivityRecord != null) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        onExecutionComplete();
                        return 0;
                    }
                    if (globalConfigWillChange) {
                        this.mService.mAmInternal.enforceCallingPermission("android.permission.CHANGE_CONFIGURATION", "updateConfiguration()");
                        if (stack != null) {
                            stack.mConfigWillChange = false;
                        }
                        this.mService.updateConfigurationLocked(this.mRequest.globalConfig, null, false);
                    }
                    this.mSupervisor.getActivityMetricsLogger().notifyActivityLaunched(launchingState, res2, this.mLastStartActivityRecord);
                    int externalResult = getExternalResult(this.mRequest.waitResult == null ? res2 : waitForResult(res2, this.mLastStartActivityRecord));
                    WindowManagerService.resetPriorityAfterLockedSection();
                    onExecutionComplete();
                    return externalResult;
                } catch (Throwable th2) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            onExecutionComplete();
            throw th3;
        }
    }

    private int resolveToHeavyWeightSwitcherIfNeeded() {
        WindowProcessController heavy;
        if (this.mRequest.activityInfo == null || !this.mService.mHasHeavyWeightFeature || (this.mRequest.activityInfo.applicationInfo.privateFlags & 2) == 0 || !this.mRequest.activityInfo.processName.equals(this.mRequest.activityInfo.applicationInfo.packageName) || (heavy = this.mService.mHeavyWeightProcess) == null || (heavy.mInfo.uid == this.mRequest.activityInfo.applicationInfo.uid && heavy.mName.equals(this.mRequest.activityInfo.processName))) {
            return 0;
        }
        int appCallingUid = this.mRequest.callingUid;
        if (this.mRequest.caller != null) {
            WindowProcessController callerApp = this.mService.getProcessController(this.mRequest.caller);
            if (callerApp != null) {
                appCallingUid = callerApp.mInfo.uid;
            } else {
                Slog.w("ActivityTaskManager", "Unable to find app for caller " + this.mRequest.caller + " (pid=" + this.mRequest.callingPid + ") when starting: " + this.mRequest.intent.toString());
                SafeActivityOptions.abort(this.mRequest.activityOptions);
                return -94;
            }
        }
        IIntentSender target = this.mService.getIntentSenderLocked(2, PackageManagerService.PLATFORM_PACKAGE_NAME, null, appCallingUid, this.mRequest.userId, null, null, 0, new Intent[]{this.mRequest.intent}, new String[]{this.mRequest.resolvedType}, 1342177280, null);
        Intent newIntent = new Intent();
        if (this.mRequest.requestCode >= 0) {
            newIntent.putExtra("has_result", true);
        }
        newIntent.putExtra("intent", new IntentSender(target));
        heavy.updateIntentForHeavyWeightActivity(newIntent);
        newIntent.putExtra("new_app", this.mRequest.activityInfo.packageName);
        newIntent.setFlags(this.mRequest.intent.getFlags());
        newIntent.setClassName(PackageManagerService.PLATFORM_PACKAGE_NAME, HeavyWeightSwitcherActivity.class.getName());
        this.mRequest.intent = newIntent;
        this.mRequest.resolvedType = null;
        this.mRequest.caller = null;
        this.mRequest.callingUid = Binder.getCallingUid();
        this.mRequest.callingPid = Binder.getCallingPid();
        this.mRequest.componentSpecified = true;
        Request request = this.mRequest;
        request.resolveInfo = this.mSupervisor.resolveIntent(request.intent, null, this.mRequest.userId, 0, computeResolveFilterUid(this.mRequest.callingUid, this.mRequest.realCallingUid, this.mRequest.filterCallingUid));
        Request request2 = this.mRequest;
        request2.activityInfo = request2.resolveInfo != null ? this.mRequest.resolveInfo.activityInfo : null;
        if (this.mRequest.activityInfo != null) {
            this.mRequest.activityInfo = this.mService.mAmInternal.getActivityInfoForUser(this.mRequest.activityInfo, this.mRequest.userId);
        }
        return 0;
    }

    private int waitForResult(int res, ActivityRecord r) {
        this.mRequest.waitResult.result = res;
        if (res != 0) {
            if (res != 2) {
                if (res == 3) {
                    this.mRequest.waitResult.timeout = false;
                    this.mRequest.waitResult.who = r.mActivityComponent;
                    this.mRequest.waitResult.totalTime = 0L;
                    return res;
                }
                return res;
            }
            this.mRequest.waitResult.launchState = r.attachedToProcess() ? 3 : 1;
            if (r.nowVisible && r.isState(ActivityStack.ActivityState.RESUMED)) {
                this.mRequest.waitResult.timeout = false;
                this.mRequest.waitResult.who = r.mActivityComponent;
                this.mRequest.waitResult.totalTime = 0L;
                return res;
            }
            this.mSupervisor.waitActivityVisible(r.mActivityComponent, this.mRequest.waitResult);
            do {
                try {
                    this.mService.mGlobalLock.wait();
                } catch (InterruptedException e) {
                }
                if (this.mRequest.waitResult.timeout) {
                    return res;
                }
            } while (this.mRequest.waitResult.who == null);
            return res;
        }
        this.mSupervisor.mWaitingActivityLaunched.add(this.mRequest.waitResult);
        do {
            try {
                this.mService.mGlobalLock.wait();
            } catch (InterruptedException e2) {
            }
            if (this.mRequest.waitResult.result == 2 || this.mRequest.waitResult.timeout) {
                break;
            }
        } while (this.mRequest.waitResult.who == null);
        if (this.mRequest.waitResult.result == 2) {
            return 2;
        }
        return res;
    }

    /* JADX WARN: Code duplicated, block: B:159:0x04e3  */
    /* JADX WARN: Code duplicated, block: B:162:0x0509  */
    /* JADX WARN: Code duplicated, block: B:163:0x050c  */
    /* JADX WARN: Code duplicated, block: B:170:0x0545  */
    /* JADX WARN: Code duplicated, block: B:171:0x054e  */
    /* JADX WARN: Code duplicated, block: B:174:0x055a  */
    /* JADX WARN: Code duplicated, block: B:175:0x055e  */
    /* JADX WARN: Code duplicated, block: B:188:0x058e  */
    /* JADX WARN: Code duplicated, block: B:190:0x0592  */
    /* JADX WARN: Code duplicated, block: B:194:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:197:0x05b3  */
    /* JADX WARN: Code duplicated, block: B:198:0x05bb  */
    /* JADX WARN: Code duplicated, block: B:200:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:203:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:221:0x0667  */
    private int executeRequest(Request request) throws Throwable {
        String resultWho;
        int callingPid;
        WindowProcessController windowProcessController;
        int userId;
        ActivityRecord sourceRecord;
        int requestCode;
        ActivityRecord resultRecord;
        String callingFeatureId;
        String callingPackage;
        String resultWho2;
        int err;
        ActivityOptions checkedOptions;
        boolean restrictedBgActivity;
        ActivityOptions checkedOptions2;
        ActivityOptions checkedOptions3;
        boolean abort;
        ActivityOptions checkedOptions4;
        ActivityInfo aInfo;
        ResolveInfo rInfo;
        String resolvedType;
        NeededUriGrants intentGrants;
        int callingPid2;
        int callingUid;
        Intent intent;
        Task inTask;
        int userId2;
        Intent newIntent;
        Intent intent2;
        int callingPid3;
        ResolveInfo rInfo2;
        NeededUriGrants intentGrants2;
        String callingPackage2;
        ActivityStarter activityStarter;
        int realCallingPid;
        boolean z;
        Intent intent3;
        int callingUid2;
        int callingPid4;
        String resolvedType2;
        ActivityInfo aInfo2;
        NeededUriGrants intentGrants3;
        ActivityRecord r;
        boolean z2;
        boolean passedIntent;
        StatusBarManagerInternal statusBar;
        Intent intent4;
        Intent copy;
        boolean isJustNotify;
        boolean launchResult;
        long j;
        ActivityRecord resultRecord2;
        if (TextUtils.isEmpty(request.reason)) {
            throw new IllegalArgumentException("Need to specify a reason.");
        }
        this.mLastStartReason = request.reason;
        this.mLastStartActivityTimeMs = System.currentTimeMillis();
        this.mLastStartActivityRecord = null;
        IApplicationThread caller = request.caller;
        Intent intent5 = request.intent;
        NeededUriGrants intentGrants4 = request.intentGrants;
        String resolvedType3 = request.resolvedType;
        ActivityInfo aInfo3 = request.activityInfo;
        ResolveInfo rInfo3 = request.resolveInfo;
        IVoiceInteractionSession voiceSession = request.voiceSession;
        IBinder resultTo = request.resultTo;
        String resultWho3 = request.resultWho;
        int requestCode2 = request.requestCode;
        int callingPid5 = request.callingPid;
        int callingUid3 = request.callingUid;
        String str = request.callingPackage;
        String callingFeatureId2 = request.callingFeatureId;
        int realCallingPid2 = request.realCallingPid;
        int realCallingUid = request.realCallingUid;
        int startFlags = request.startFlags;
        SafeActivityOptions options = request.activityOptions;
        Task inTask2 = request.inTask;
        int err2 = 0;
        Bundle verificationBundle = options != null ? options.popAppVerificationBundle() : null;
        int realCallingUid2 = realCallingUid;
        if (caller == null) {
            resultWho = resultWho3;
            callingPid = callingPid5;
            windowProcessController = null;
        } else {
            resultWho = resultWho3;
            WindowProcessController callerApp = this.mService.getProcessController(caller);
            if (callerApp != null) {
                int callingPid6 = callerApp.getPid();
                callingUid3 = callerApp.mInfo.uid;
                windowProcessController = callerApp;
                callingPid = callingPid6;
            } else {
                Slog.w("ActivityTaskManager", "Unable to find app for caller " + caller + " (pid=" + callingPid5 + ") when starting: " + intent5.toString());
                err2 = -94;
                callingPid = callingPid5;
                windowProcessController = callerApp;
                callingUid3 = callingUid3;
            }
        }
        int userId3 = (aInfo3 == null || aInfo3.applicationInfo == null) ? 0 : UserHandle.getUserId(aInfo3.applicationInfo.uid);
        if (err2 == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("START u");
            sb.append(userId3);
            sb.append(" {");
            userId = userId3;
            sb.append(intent5.toShortString(true, true, true, false));
            sb.append("} from uid ");
            sb.append(callingUid3);
            Slog.i("ActivityTaskManager", sb.toString());
        } else {
            userId = userId3;
        }
        ActivityRecord resultRecord3 = null;
        if (resultTo == null) {
            sourceRecord = null;
        } else {
            ActivityRecord sourceRecord2 = this.mRootWindowContainer.isInAnyStack(resultTo);
            if (sourceRecord2 != null && requestCode2 >= 0 && !sourceRecord2.finishing) {
                resultRecord3 = sourceRecord2;
                sourceRecord = sourceRecord2;
            } else {
                sourceRecord = sourceRecord2;
            }
        }
        int launchFlags = intent5.getFlags();
        if ((launchFlags & 33554432) != 0 && sourceRecord != null) {
            if (requestCode2 >= 0) {
                SafeActivityOptions.abort(options);
                return -93;
            }
            ActivityRecord resultRecord4 = sourceRecord.resultTo;
            if (resultRecord4 != null && !resultRecord4.isInStackLocked()) {
                resultRecord2 = null;
            } else {
                resultRecord2 = resultRecord4;
            }
            String resultWho4 = sourceRecord.resultWho;
            int requestCode3 = sourceRecord.requestCode;
            sourceRecord.resultTo = null;
            if (resultRecord2 != null) {
                resultRecord2.removeResultsLocked(sourceRecord, resultWho4, requestCode3);
            }
            if (sourceRecord.launchedFromUid != callingUid3) {
                requestCode = requestCode3;
                resultRecord = resultRecord2;
                callingFeatureId = callingFeatureId2;
                resultWho2 = resultWho4;
            } else {
                callingPackage = sourceRecord.launchedFromPackage;
                callingFeatureId = sourceRecord.launchedFromFeatureId;
                requestCode = requestCode3;
                resultRecord = resultRecord2;
                resultWho2 = resultWho4;
            }
        } else {
            requestCode = requestCode2;
            resultRecord = resultRecord3;
            callingFeatureId = callingFeatureId2;
            callingPackage = str;
            resultWho2 = resultWho;
        }
        if (err2 == 0) {
            callingPackage = str;
            if (intent5.getComponent() == null) {
                err2 = -91;
            }
        }
        if (err2 == 0 && aInfo3 == null) {
            err2 = -92;
        }
        if (err2 == 0 && sourceRecord != null && sourceRecord.getTask().voiceSession != null && (launchFlags & AudioFormat.EVRC) == 0 && sourceRecord.info.applicationInfo.uid != aInfo3.applicationInfo.uid) {
            try {
                intent5.addCategory("android.intent.category.VOICE");
                if (!this.mService.getPackageManager().activitySupportsIntent(intent5.getComponent(), intent5, resolvedType3)) {
                    Slog.w("ActivityTaskManager", "Activity being started in current voice task does not support voice: " + intent5);
                    err2 = -97;
                }
            } catch (RemoteException e) {
                Slog.w("ActivityTaskManager", "Failure checking voice capabilities", e);
                err2 = -97;
            }
        }
        if (err2 == 0 && voiceSession != null) {
            try {
                if (!this.mService.getPackageManager().activitySupportsIntent(intent5.getComponent(), intent5, resolvedType3)) {
                    Slog.w("ActivityTaskManager", "Activity being started in new voice task does not support: " + intent5);
                    err2 = -97;
                }
                err = err2;
            } catch (RemoteException e2) {
                Slog.w("ActivityTaskManager", "Failure checking voice capabilities", e2);
                err = -97;
            }
        } else {
            err = err2;
        }
        ActivityStack resultStack = resultRecord == null ? null : resultRecord.getRootTask();
        if (err != 0) {
            if (resultRecord != null) {
                resultRecord.sendResult(-1, resultWho2, requestCode, 0, null, null);
            }
            SafeActivityOptions.abort(options);
            return err;
        }
        boolean abort2 = !this.mSupervisor.checkStartAnyActivityPermission(intent5, aInfo3, resultWho2, requestCode, callingPid, callingUid3, callingPackage, callingFeatureId, request.ignoreTargetSecurity, inTask2 != null, windowProcessController, resultRecord, resultStack);
        ActivityRecord activityRecord = sourceRecord;
        WindowProcessController callerApp2 = windowProcessController;
        int callingUid4 = callingUid3;
        String callingPackage3 = callingPackage;
        boolean abort3 = abort2 | (!this.mService.mIntentFirewall.checkStartActivity(intent5, callingUid3, callingPid, resolvedType3, aInfo3.applicationInfo)) | (!this.mService.getPermissionPolicyInternal().checkStartActivity(intent5, callingUid4, callingPackage3));
        ActivityOptions checkedOptions5 = options != null ? options.getOptions(intent5, aInfo3, callerApp2, this.mSupervisor) : null;
        if (abort3) {
            checkedOptions = checkedOptions5;
            restrictedBgActivity = false;
        } else {
            try {
                Trace.traceBegin(32L, "shouldAbortBackgroundActivityStart");
                j = 32;
                checkedOptions = checkedOptions5;
                try {
                    boolean restrictedBgActivity2 = shouldAbortBackgroundActivityStart(callingUid4, callingPid, callingPackage3, realCallingUid2, realCallingPid2, callerApp2, request.originatingPendingIntent, request.allowBackgroundActivityStart, intent5, checkedOptions);
                    Trace.traceEnd(32L);
                    restrictedBgActivity = restrictedBgActivity2;
                } catch (Throwable th) {
                    th = th;
                    Trace.traceEnd(j);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                j = 32;
            }
        }
        if (aInfo3 != 0) {
            checkedOptions2 = setupDefaultOption(aInfo3, checkedOptions);
        } else {
            checkedOptions2 = checkedOptions;
        }
        if (!request.allowPendingRemoteAnimationRegistryLookup) {
            checkedOptions3 = checkedOptions2;
        } else {
            checkedOptions3 = this.mService.getActivityStartController().getPendingRemoteAnimationRegistry().overrideOptionsIfNeeded(callingPackage3, checkedOptions2);
        }
        if (this.mService.mController != null) {
            try {
                Intent watchIntent = intent5.cloneFilter();
                abort = abort3 | (!this.mService.mController.activityStarting(watchIntent, aInfo3.applicationInfo.packageName));
            } catch (RemoteException | NullPointerException e3) {
                this.mService.mController = null;
                abort = abort3;
            }
        } else {
            abort = abort3;
        }
        this.mInterceptor.setStates(userId, realCallingPid2, realCallingUid2, startFlags, callingPackage3, callingFeatureId);
        if (!this.mInterceptor.intercept(intent5, r34, aInfo3, resolvedType3, inTask2, callingPid, callingUid4, checkedOptions3)) {
            checkedOptions4 = checkedOptions3;
            callingPid2 = callingPid;
            callingUid = callingUid4;
            inTask = inTask2;
        } else {
            intent = this.mInterceptor.mIntent;
            rInfo = this.mInterceptor.mRInfo;
            aInfo = this.mInterceptor.mAInfo;
            String resolvedType4 = this.mInterceptor.mResolvedType;
            Task inTask3 = this.mInterceptor.mInTask;
            callingPid2 = this.mInterceptor.mCallingPid;
            callingUid = this.mInterceptor.mCallingUid;
            intentGrants = null;
            inTask = inTask3;
            resolvedType = resolvedType4;
            checkedOptions4 = this.mInterceptor.mActivityOptions;
        }
        if (abort) {
            if (resultRecord != null) {
                resultRecord.sendResult(-1, resultWho2, requestCode, 0, null, null);
            }
            ActivityOptions.abort(checkedOptions4);
            return HdmiCecKeycode.CEC_KEYCODE_RESTORE_VOLUME_FUNCTION;
        }
        if (aInfo != null) {
            userId2 = userId;
            if (this.mService.getPackageManagerInternalLocked().isPermissionsReviewRequired(aInfo.packageName, userId2)) {
                IIntentSender target = this.mService.getIntentSenderLocked(2, callingPackage3, callingFeatureId, callingUid, userId2, null, null, 0, new Intent[]{intent}, new String[]{resolvedType}, 1342177280, null);
                Intent newIntent2 = new Intent("android.intent.action.REVIEW_PERMISSIONS");
                int flags = intent.getFlags() | 8388608;
                if ((268959744 & flags) != 0) {
                    flags |= AudioFormat.OPUS;
                }
                newIntent2.setFlags(flags);
                newIntent2.putExtra("android.intent.extra.PACKAGE_NAME", aInfo.packageName);
                newIntent2.putExtra("android.intent.extra.INTENT", new IntentSender(target));
                if (resultRecord != null) {
                    newIntent2.putExtra("android.intent.extra.RESULT_NEEDED", true);
                }
                resolvedType = null;
                callingUid = realCallingUid2;
                callingPid3 = realCallingPid2;
                realCallingUid2 = realCallingUid2;
                ResolveInfo rInfo4 = this.mSupervisor.resolveIntent(newIntent2, null, userId2, 0, computeResolveFilterUid(callingUid, realCallingUid2, request.filterCallingUid));
                intentGrants2 = null;
                startFlags = startFlags;
                newIntent = null;
                aInfo = this.mSupervisor.resolveActivity(newIntent2, rInfo4, startFlags, null);
                rInfo2 = rInfo4;
                intent2 = newIntent2;
            } else {
                newIntent = null;
            }
            if (rInfo2 != null || rInfo2.auxiliaryInfo == null) {
                ActivityInfo aInfo4 = aInfo;
                callingPackage2 = callingPackage3;
                activityStarter = this;
                realCallingPid = realCallingPid2;
                z = true;
                intent3 = intent2;
                callingUid2 = callingUid;
                callingPid4 = callingPid3;
                resolvedType2 = resolvedType;
                aInfo2 = aInfo4;
                intentGrants3 = intentGrants2;
            } else {
                z = true;
                callingPackage2 = callingPackage3;
                realCallingPid = realCallingPid2;
                activityStarter = this;
                Intent intent6 = createLaunchIntent(rInfo2.auxiliaryInfo, request.ephemeralIntent, callingPackage2, callingFeatureId, verificationBundle, resolvedType, userId2);
                callingUid2 = realCallingUid2;
                callingPid4 = realCallingPid;
                resolvedType2 = null;
                aInfo2 = activityStarter.mSupervisor.resolveActivity(intent6, rInfo2, startFlags, null);
                intentGrants3 = null;
                intent3 = intent6;
            }
            ActivityTaskManagerService activityTaskManagerService = activityStarter.mService;
            Configuration globalConfiguration = activityTaskManagerService.getGlobalConfiguration();
            boolean z3 = r14.componentSpecified;
            if (voiceSession != 0) {
                z2 = z;
            } else {
                z2 = false;
            }
            r = new ActivityRecord(activityTaskManagerService, callerApp2, callingPid4, callingUid2, callingPackage2, callingFeatureId, intent3, resolvedType2, aInfo2, globalConfiguration, resultRecord, resultWho2, requestCode, z3, z2, activityStarter.mSupervisor, checkedOptions4, activityRecord);
            activityStarter.mLastStartActivityRecord = r;
            if (r.appTimeTracker == null && activityRecord != 0) {
                r.appTimeTracker = activityRecord.appTimeTracker;
            }
            if (intent3 != null) {
                passedIntent = false;
            } else {
                boolean passedIntent2 = intent3.hasCategory("from_mega_split_start");
                passedIntent = passedIntent2;
            }
            statusBar = activityStarter.mService.getStatusBarManagerInternal();
            if (intent3 == null) {
                intent4 = new Intent();
            } else {
                intent4 = new Intent(intent3);
            }
            copy = intent4;
            if (!passedIntent || activityStarter.mService.mCallingPassedPackages.contains(callingPackage2)) {
                isJustNotify = true;
            } else {
                List<String> list = activityStarter.mService.mMayInterceptedPackages;
                callingPackage2 = callingPackage2;
                String callingPackage4 = r.packageName;
                if (list.contains(callingPackage4)) {
                    isJustNotify = false;
                } else {
                    isJustNotify = true;
                }
            }
            if (statusBar != null) {
                activityStarter.mInterceptedActivityRecord = r;
                if (isJustNotify) {
                    copy.addCategory("mega.intent.category.NOTIFY_APP_START");
                }
                String packageName = activityStarter.mInterceptedActivityRecord.mActivityComponent.getPackageName();
                String className = activityStarter.mInterceptedActivityRecord.mActivityComponent.getClassName();
                if (!isJustNotify) {
                    copy = intent3;
                }
                launchResult = statusBar.interceptCurrentPackageStart(packageName, className, copy);
                if (isJustNotify) {
                    Slog.i("ActivityTaskManager", "notify systemUI current activity starting");
                } else if (launchResult) {
                    Slog.i((String) r21, "systemui intercepted current activity starting");
                    return 0;
                }
                activityStarter.mInterceptedActivityRecord = null;
            }
            ActivityStack stack = activityStarter.mRootWindowContainer.getTopDisplayFocusedStack();
            if (voiceSession != 0 && stack != null && ((stack.getResumedActivity() == null || stack.getResumedActivity().info.applicationInfo.uid != realCallingUid2) && !activityStarter.mService.checkAppSwitchAllowedLocked(callingPid4, callingUid2, realCallingPid, realCallingUid2, "Activity start"))) {
                if (!restrictedBgActivity || !activityStarter.handleBackgroundActivityAbort(r)) {
                    activityStarter.mController.addPendingActivityLaunch(new ActivityStackSupervisor.PendingActivityLaunch(r, activityRecord, startFlags, stack, callerApp2, intentGrants3));
                }
                ActivityOptions.abort(checkedOptions4);
                return 100;
            }
            activityStarter.mService.onStartActivitySetDidAppSwitch();
            activityStarter.mController.doPendingActivityLaunches(false);
            this.mLastStartActivityResult = startActivityUnchecked(r, activityRecord, voiceSession, request.voiceInteractor, startFlags, true, checkedOptions4, inTask, restrictedBgActivity, intentGrants3);
            if (request.outActivity != null) {
                request.outActivity[0] = this.mLastStartActivityRecord;
            }
            return this.mLastStartActivityResult;
        }
        userId2 = userId;
        newIntent = null;
        intent2 = intent;
        callingPid3 = callingPid2;
        rInfo2 = rInfo;
        intentGrants2 = intentGrants;
        if (rInfo2 != null) {
            ActivityInfo aInfo5 = aInfo;
            callingPackage2 = callingPackage3;
            activityStarter = this;
            realCallingPid = realCallingPid2;
            z = true;
            intent3 = intent2;
            callingUid2 = callingUid;
            callingPid4 = callingPid3;
            resolvedType2 = resolvedType;
            aInfo2 = aInfo5;
            intentGrants3 = intentGrants2;
        } else {
            ActivityInfo aInfo6 = aInfo;
            callingPackage2 = callingPackage3;
            activityStarter = this;
            realCallingPid = realCallingPid2;
            z = true;
            intent3 = intent2;
            callingUid2 = callingUid;
            callingPid4 = callingPid3;
            resolvedType2 = resolvedType;
            aInfo2 = aInfo6;
            intentGrants3 = intentGrants2;
        }
        ActivityTaskManagerService activityTaskManagerService2 = activityStarter.mService;
        Configuration globalConfiguration2 = activityTaskManagerService2.getGlobalConfiguration();
        boolean z4 = r14.componentSpecified;
        if (voiceSession != 0) {
            z2 = z;
        } else {
            z2 = false;
        }
        r = new ActivityRecord(activityTaskManagerService2, callerApp2, callingPid4, callingUid2, callingPackage2, callingFeatureId, intent3, resolvedType2, aInfo2, globalConfiguration2, resultRecord, resultWho2, requestCode, z4, z2, activityStarter.mSupervisor, checkedOptions4, activityRecord);
        activityStarter.mLastStartActivityRecord = r;
        if (r.appTimeTracker == null) {
            r.appTimeTracker = activityRecord.appTimeTracker;
        }
        if (intent3 != null) {
            passedIntent = false;
        } else {
            boolean passedIntent3 = intent3.hasCategory("from_mega_split_start");
            passedIntent = passedIntent3;
        }
        statusBar = activityStarter.mService.getStatusBarManagerInternal();
        if (intent3 == null) {
            intent4 = new Intent();
        } else {
            intent4 = new Intent(intent3);
        }
        copy = intent4;
        if (!passedIntent) {
        }
        isJustNotify = true;
        if (statusBar != null) {
            activityStarter.mInterceptedActivityRecord = r;
            if (isJustNotify) {
                copy.addCategory("mega.intent.category.NOTIFY_APP_START");
            }
            String packageName2 = activityStarter.mInterceptedActivityRecord.mActivityComponent.getPackageName();
            String className2 = activityStarter.mInterceptedActivityRecord.mActivityComponent.getClassName();
            if (!isJustNotify) {
                copy = intent3;
            }
            launchResult = statusBar.interceptCurrentPackageStart(packageName2, className2, copy);
            if (isJustNotify) {
                Slog.i("ActivityTaskManager", "notify systemUI current activity starting");
            } else if (launchResult) {
                Slog.i((String) r21, "systemui intercepted current activity starting");
                return 0;
            }
            activityStarter.mInterceptedActivityRecord = null;
        }
        ActivityStack stack2 = activityStarter.mRootWindowContainer.getTopDisplayFocusedStack();
        if (voiceSession != 0) {
        }
        activityStarter.mService.onStartActivitySetDidAppSwitch();
        activityStarter.mController.doPendingActivityLaunches(false);
        this.mLastStartActivityResult = startActivityUnchecked(r, activityRecord, voiceSession, request.voiceInteractor, startFlags, true, checkedOptions4, inTask, restrictedBgActivity, intentGrants3);
        if (request.outActivity != null) {
            request.outActivity[0] = this.mLastStartActivityRecord;
        }
        return this.mLastStartActivityResult;
    }

    private boolean handleBackgroundActivityAbort(ActivityRecord r) {
        boolean abort = !this.mService.isBackgroundActivityStartsEnabled();
        if (!abort) {
            return false;
        }
        ActivityRecord resultRecord = r.resultTo;
        String resultWho = r.resultWho;
        int requestCode = r.requestCode;
        if (resultRecord != null) {
            resultRecord.sendResult(-1, resultWho, requestCode, 0, null, null);
        }
        ActivityOptions.abort(r.pendingOptions);
        return true;
    }

    static int getExternalResult(int result) {
        if (result != 102) {
            return result;
        }
        return 0;
    }

    private void onExecutionComplete() {
        this.mController.onExecutionComplete(this);
    }

    boolean shouldAbortBackgroundActivityStart(int callingUid, int callingPid, String callingPackage, int realCallingUid, int realCallingPid, WindowProcessController callerApp, PendingIntentRecord originatingPendingIntent, boolean allowBackgroundActivityStart, Intent intent, ActivityOptions checkedOptions) {
        int realCallingUidProcState;
        boolean realCallingUidHasAnyVisibleWindow;
        boolean isRealCallingUidForeground;
        boolean isRealCallingUidPersistentSystemProcess;
        WindowProcessController callerApp2;
        int callerAppUid;
        boolean z;
        int callingAppId = UserHandle.getAppId(callingUid);
        if (callingUid == 0 || callingAppId == 1000) {
            return false;
        }
        if (callingAppId == 1027) {
            return false;
        }
        int callingUidProcState = this.mService.getUidState(callingUid);
        boolean callingUidHasAnyVisibleWindow = this.mService.mWindowManager.mRoot.isAnyNonToastWindowVisibleForUid(callingUid);
        boolean isCallingUidForeground = callingUidHasAnyVisibleWindow || callingUidProcState == 2 || callingUidProcState == 3;
        boolean isCallingUidPersistentSystemProcess = callingUidProcState <= 1;
        if (!callingUidHasAnyVisibleWindow && !isCallingUidPersistentSystemProcess) {
            if (callingUid == realCallingUid) {
                realCallingUidProcState = callingUidProcState;
            } else {
                realCallingUidProcState = this.mService.getUidState(realCallingUid);
            }
            if (callingUid == realCallingUid) {
                realCallingUidHasAnyVisibleWindow = callingUidHasAnyVisibleWindow;
            } else {
                realCallingUidHasAnyVisibleWindow = this.mService.mWindowManager.mRoot.isAnyNonToastWindowVisibleForUid(realCallingUid);
            }
            if (callingUid == realCallingUid) {
                isRealCallingUidForeground = isCallingUidForeground;
            } else {
                isRealCallingUidForeground = realCallingUidHasAnyVisibleWindow || realCallingUidProcState == 2;
            }
            int realCallingAppId = UserHandle.getAppId(realCallingUid);
            if (callingUid == realCallingUid) {
                isRealCallingUidPersistentSystemProcess = isCallingUidPersistentSystemProcess;
            } else {
                isRealCallingUidPersistentSystemProcess = realCallingAppId == 1000 || realCallingUidProcState <= 1;
            }
            boolean balAllowedByPiSender = PendingIntentRecord.isPendingIntentBalAllowedByCaller(checkedOptions);
            if (balAllowedByPiSender && realCallingUid != callingUid) {
                if (!realCallingUidHasAnyVisibleWindow) {
                    if ((isRealCallingUidPersistentSystemProcess && allowBackgroundActivityStart) || this.mService.isAssociatedCompanionApp(UserHandle.getUserId(realCallingUid), realCallingUid)) {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            if (ActivityTaskManagerService.checkPermission("android.permission.START_ACTIVITIES_FROM_BACKGROUND", callingPid, callingUid) == 0 || this.mSupervisor.mRecentTasks.isCallerRecents(callingUid) || this.mService.isDeviceOwner(callingUid)) {
                return false;
            }
            int callingUserId = UserHandle.getUserId(callingUid);
            if (this.mService.isAssociatedCompanionApp(callingUserId, callingUid)) {
                return false;
            }
            if (callerApp == null && balAllowedByPiSender) {
                callerApp2 = this.mService.getProcessController(realCallingPid, realCallingUid);
                callerAppUid = realCallingUid;
            } else {
                callerApp2 = callerApp;
                callerAppUid = callingUid;
            }
            if (callerApp2 == null) {
                z = true;
            } else {
                if (callerApp2.areBackgroundActivityStartsAllowed()) {
                    return false;
                }
                ArraySet<WindowProcessController> uidProcesses = this.mService.mProcessMap.getProcesses(callerAppUid);
                if (uidProcesses != null) {
                    z = true;
                    int callerAppUid2 = uidProcesses.size() - 1;
                    while (callerAppUid2 >= 0) {
                        ArraySet<WindowProcessController> uidProcesses2 = uidProcesses;
                        WindowProcessController proc = uidProcesses.valueAt(callerAppUid2);
                        if (proc == callerApp2 || !proc.areBackgroundActivityStartsAllowed()) {
                            callerAppUid2--;
                            uidProcesses = uidProcesses2;
                        } else {
                            return false;
                        }
                    }
                } else {
                    z = true;
                }
            }
            if (this.mService.hasSystemAlertWindowPermission(callingUid, callingPid, callingPackage)) {
                Slog.w("ActivityTaskManager", "Background activity start for " + callingPackage + " allowed because SYSTEM_ALERT_WINDOW permission is granted.");
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Background activity start [callingPackage: ");
            sb.append(callingPackage);
            sb.append("; callingUid: ");
            sb.append(callingUid);
            sb.append("; isCallingUidForeground: ");
            sb.append(isCallingUidForeground);
            sb.append("; callingUidHasAnyVisibleWindow: ");
            sb.append(callingUidHasAnyVisibleWindow);
            sb.append("; callingUidProcState: ");
            sb.append(DebugUtils.valueToString(ActivityManager.class, "PROCESS_STATE_", callingUidProcState));
            sb.append("; isCallingUidPersistentSystemProcess: ");
            sb.append(isCallingUidPersistentSystemProcess);
            sb.append("; realCallingUid: ");
            sb.append(realCallingUid);
            sb.append("; isRealCallingUidForeground: ");
            sb.append(isRealCallingUidForeground);
            sb.append("; realCallingUidHasAnyVisibleWindow: ");
            sb.append(realCallingUidHasAnyVisibleWindow);
            sb.append("; realCallingUidProcState: ");
            sb.append(DebugUtils.valueToString(ActivityManager.class, "PROCESS_STATE_", realCallingUidProcState));
            sb.append("; isRealCallingUidPersistentSystemProcess: ");
            sb.append(isRealCallingUidPersistentSystemProcess);
            sb.append("; originatingPendingIntent: ");
            sb.append(originatingPendingIntent);
            sb.append("; isBgStartWhitelisted: ");
            sb.append(allowBackgroundActivityStart);
            int realCallingUidProcState2 = realCallingUidProcState;
            sb.append("; intent: ");
            sb.append(intent);
            sb.append("; callerApp: ");
            sb.append(callerApp2);
            sb.append("]");
            Slog.w("ActivityTaskManager", sb.toString());
            if (!this.mService.isActivityStartsLoggingEnabled()) {
                return z;
            }
            boolean z2 = z;
            this.mSupervisor.getActivityMetricsLogger().logAbortedBgActivityStart(intent, callerApp2, callingUid, callingPackage, callingUidProcState, callingUidHasAnyVisibleWindow, realCallingUid, realCallingUidProcState2, realCallingUidHasAnyVisibleWindow, originatingPendingIntent != null ? z : false);
            return z2;
        }
        return false;
    }

    private Intent createLaunchIntent(AuxiliaryResolveInfo auxiliaryResponse, Intent originalIntent, String callingPackage, String callingFeatureId, Bundle verificationBundle, String resolvedType, int userId) {
        Intent intent;
        ComponentName componentName;
        String str;
        if (auxiliaryResponse != null && auxiliaryResponse.needsPhaseTwo) {
            PackageManagerInternal packageManager = this.mService.getPackageManagerInternalLocked();
            boolean isRequesterInstantApp = packageManager.isInstantApp(callingPackage, userId);
            packageManager.requestInstantAppResolutionPhaseTwo(auxiliaryResponse, originalIntent, resolvedType, callingPackage, callingFeatureId, isRequesterInstantApp, verificationBundle, userId);
        }
        Intent intentSanitizeIntent = InstantAppResolver.sanitizeIntent(originalIntent);
        List list = null;
        if (auxiliaryResponse != null) {
            intent = auxiliaryResponse.failureIntent;
        } else {
            intent = null;
        }
        if (auxiliaryResponse != null) {
            componentName = auxiliaryResponse.installFailureActivity;
        } else {
            componentName = null;
        }
        if (auxiliaryResponse != null) {
            str = auxiliaryResponse.token;
        } else {
            str = null;
        }
        boolean z = auxiliaryResponse != null && auxiliaryResponse.needsPhaseTwo;
        if (auxiliaryResponse != null) {
            list = auxiliaryResponse.filters;
        }
        return InstantAppResolver.buildEphemeralInstallerIntent(originalIntent, intentSanitizeIntent, intent, callingPackage, callingFeatureId, verificationBundle, resolvedType, userId, componentName, str, z, list);
    }

    void postStartActivityProcessing(ActivityRecord r, int result, ActivityStack startedActivityStack) {
        Task targetTask;
        if (!ActivityManager.isStartResultSuccessful(result) && this.mFrozeTaskList) {
            this.mSupervisor.mRecentTasks.resetFreezeTaskListReorderingOnTimeout();
        }
        if (ActivityManager.isStartResultFatalError(result)) {
            return;
        }
        this.mSupervisor.reportWaitingActivityLaunchedIfNeeded(r, result);
        if (r.getTask() != null) {
            targetTask = r.getTask();
        } else {
            targetTask = this.mTargetTask;
        }
        if (startedActivityStack == null || targetTask == null) {
            return;
        }
        boolean clearedTask = (this.mLaunchFlags & 268468224) == 268468224 && this.mReuseTask != null;
        if (result == 2 || result == 3 || clearedTask) {
            ActivityStack homeStack = targetTask.getDisplayArea().getRootHomeTask();
            boolean homeTaskVisible = homeStack != null && homeStack.shouldBeVisible(null);
            ActivityRecord top = targetTask.getTopNonFinishingActivity();
            boolean visible = top != null && top.isVisible();
            this.mService.getTaskChangeNotificationController().notifyActivityRestartAttempt(targetTask.getTaskInfo(), homeTaskVisible, clearedTask, visible);
        }
    }

    static int computeResolveFilterUid(int customCallingUid, int actualCallingUid, int filterCallingUid) {
        if (filterCallingUid != -10000) {
            return filterCallingUid;
        }
        return customCallingUid >= 0 ? customCallingUid : actualCallingUid;
    }

    ActivityOptions setupDefaultOption(ActivityInfo acInfo, ActivityOptions options) {
        int launchDisplayId;
        if (acInfo.metaData != null) {
            launchDisplayId = acInfo.metaData.getInt("defaultDisplayId", -1);
        } else {
            launchDisplayId = -1;
        }
        int launchWindowingMode = acInfo.metaData != null ? acInfo.metaData.getInt("defaultWindowingMode", 0) : 0;
        boolean isFixedPosition = Resources.getSystem().getBoolean(R.bool.config_cecQuerySadDstDisabled_default);
        if (options == null) {
            options = ActivityOptions.makeBasic();
        }
        if (launchDisplayId != -1) {
            options.setLaunchDisplayId(launchDisplayId);
        }
        if (launchWindowingMode != 0) {
            options.setLaunchWindowingMode(launchWindowingMode);
        } else if (isFixedPosition && options.getLaunchWindowingMode() == 0) {
            options.setLaunchWindowingMode(5);
            int left = Resources.getSystem().getInteger(R.integer.config_networkDefaultDailyMultipathQuotaBytes);
            int top = Resources.getSystem().getInteger(R.integer.config_networkNotifySwitchType);
            int right = Resources.getSystem().getInteger(R.integer.config_networkMeteredMultipathPreference);
            int bottom = Resources.getSystem().getInteger(R.integer.config_networkAvoidBadWifi);
            options.setLaunchBounds(new Rect(left, top, right, bottom));
        }
        return options;
    }

    private int startActivityUnchecked(ActivityRecord r, ActivityRecord sourceRecord, IVoiceInteractionSession voiceSession, IVoiceInteractor voiceInteractor, int startFlags, boolean doResume, ActivityOptions options, Task inTask, boolean restrictedBgActivity, NeededUriGrants intentGrants) throws Throwable {
        long j;
        ActivityOptions options2 = r != null ? setupDefaultOption(r.info, options) : options;
        try {
            this.mService.deferWindowLayout();
            Trace.traceBegin(32L, "startActivityInner");
            j = 32;
            try {
                int result = startActivityInner(r, sourceRecord, voiceSession, voiceInteractor, startFlags, doResume, options2, inTask, restrictedBgActivity, intentGrants);
                Trace.traceEnd(32L);
                ActivityStack startedActivityStack = handleStartResult(r, result);
                this.mService.continueWindowLayout();
                postStartActivityProcessing(r, result, startedActivityStack);
                return result;
            } catch (Throwable th) {
                th = th;
                Trace.traceEnd(j);
                handleStartResult(r, -96);
                this.mService.continueWindowLayout();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            j = 32;
        }
    }

    private ActivityStack handleStartResult(ActivityRecord started, int result) {
        ActivityRecord currentTop;
        ActivityStack currentStack = started.getRootTask();
        ActivityStack startedActivityStack = currentStack != null ? currentStack : this.mTargetStack;
        if (ActivityManager.isStartResultSuccessful(result)) {
            if (startedActivityStack != null && (currentTop = startedActivityStack.topRunningActivity()) != null && currentTop.shouldUpdateConfigForDisplayChanged()) {
                this.mRootWindowContainer.ensureVisibilityAndConfig(currentTop, currentTop.getDisplayId(), true, false);
            }
            return startedActivityStack;
        }
        ActivityStack stack = this.mStartActivity.getRootTask();
        if (stack != null) {
            this.mStartActivity.finishIfPossible("startActivity", true);
        }
        if (startedActivityStack != null && startedActivityStack.isAttached() && !startedActivityStack.hasActivity() && !startedActivityStack.isActivityTypeHome()) {
            startedActivityStack.removeIfPossible();
            return null;
        }
        return startedActivityStack;
    }

    int startActivityInner(ActivityRecord r, ActivityRecord sourceRecord, IVoiceInteractionSession voiceSession, IVoiceInteractor voiceInteractor, int startFlags, boolean doResume, ActivityOptions options, Task inTask, boolean restrictedBgActivity, NeededUriGrants intentGrants) throws Throwable {
        Task taskToAffiliate;
        ActivityRecord activityRecord;
        int startResult;
        setInitialState(r, options, inTask, doResume, startFlags, sourceRecord, voiceSession, voiceInteractor, restrictedBgActivity);
        computeLaunchingTaskFlags();
        computeSourceStack();
        this.mIntent.setFlags(this.mLaunchFlags);
        Task reusedTask = getReusableTask();
        ActivityOptions activityOptions = this.mOptions;
        if (activityOptions != null && activityOptions.freezeRecentTasksReordering() && this.mSupervisor.mRecentTasks.isCallerRecents(r.launchedFromUid) && !this.mSupervisor.mRecentTasks.isFreezeTaskListReorderingSet()) {
            this.mFrozeTaskList = true;
            this.mSupervisor.mRecentTasks.setFreezeTaskListReordering();
        }
        Task targetTask = reusedTask != null ? reusedTask : computeTargetTask();
        boolean newTask = targetTask == null;
        this.mTargetTask = targetTask;
        computeLaunchParams(r, sourceRecord, targetTask);
        int startResult2 = isAllowedToStart(r, newTask, targetTask);
        if (startResult2 != 0) {
            return startResult2;
        }
        ActivityRecord targetTaskTop = newTask ? null : targetTask.getTopNonFinishingActivity();
        if (targetTaskTop != null) {
            int startResult3 = recycleTask(targetTask, targetTaskTop, reusedTask, intentGrants);
            if (startResult3 != 0) {
                return startResult3;
            }
        } else {
            this.mAddingToTask = true;
        }
        ActivityStack topStack = this.mRootWindowContainer.getTopDisplayFocusedStack();
        if (topStack != null && (startResult = deliverToCurrentTopIfNeeded(topStack, intentGrants)) != 0) {
            return startResult;
        }
        if (this.mTargetStack == null) {
            this.mTargetStack = getLaunchStack(this.mStartActivity, this.mLaunchFlags, targetTask, this.mOptions);
        }
        if (newTask) {
            if (!this.mLaunchTaskBehind || (activityRecord = this.mSourceRecord) == null) {
                taskToAffiliate = null;
            } else {
                taskToAffiliate = activityRecord.getTask();
            }
            setNewTask(taskToAffiliate);
            if (this.mService.getLockTaskController().isLockTaskModeViolation(this.mStartActivity.getTask())) {
                Slog.e("ActivityTaskManager", "Attempted Lock Task Mode violation mStartActivity=" + this.mStartActivity);
                return 101;
            }
        } else if (this.mAddingToTask) {
            addOrReparentStartingActivity(targetTask, "adding to task");
        }
        if (!this.mAvoidMoveToFront && this.mDoResume) {
            this.mTargetStack.getStack().moveToFront("reuseOrNewTask", targetTask);
            ActivityOptions activityOptions2 = this.mOptions;
            if (activityOptions2 != null && activityOptions2.getTaskAlwaysOnTop()) {
                this.mTargetStack.setAlwaysOnTop(true);
            }
            if (!this.mTargetStack.isTopStackInDisplayArea() && this.mService.mInternal.isDreaming()) {
                this.mLaunchTaskBehind = true;
                r.mLaunchTaskBehind = true;
            }
        }
        this.mService.mUgmInternal.grantUriPermissionUncheckedFromIntent(intentGrants, this.mStartActivity.getUriPermissionsLocked());
        if (this.mStartActivity.resultTo != null && this.mStartActivity.resultTo.info != null) {
            PackageManagerInternal pmInternal = this.mService.getPackageManagerInternalLocked();
            int resultToUid = pmInternal.getPackageUidInternal(this.mStartActivity.resultTo.info.packageName, 0, this.mStartActivity.mUserId);
            pmInternal.grantImplicitAccess(this.mStartActivity.mUserId, this.mIntent, UserHandle.getAppId(this.mStartActivity.info.applicationInfo.uid), resultToUid, true);
        }
        if (newTask) {
            EventLogTags.writeWmCreateTask(this.mStartActivity.mUserId, this.mStartActivity.getTask().mTaskId);
        }
        ActivityRecord activityRecord2 = this.mStartActivity;
        activityRecord2.logStartActivity(EventLogTags.WM_CREATE_ACTIVITY, activityRecord2.getTask());
        this.mTargetStack.mLastPausedActivity = null;
        this.mRootWindowContainer.sendPowerHintForLaunchStartIfNeeded(false, this.mStartActivity);
        this.mTargetStack.startActivityLocked(this.mStartActivity, topStack != null ? topStack.getTopNonFinishingActivity() : null, newTask, this.mKeepCurTransition, this.mOptions);
        if (this.mDoResume) {
            ActivityRecord topTaskActivity = this.mStartActivity.getTask().topRunningActivityLocked();
            if (!this.mTargetStack.isTopActivityFocusable() || (topTaskActivity != null && topTaskActivity.isTaskOverlay() && this.mStartActivity != topTaskActivity)) {
                this.mTargetStack.ensureActivitiesVisible(null, 0, false);
                this.mTargetStack.getDisplay().mDisplayContent.executeAppTransition();
            } else {
                if (this.mTargetStack.isTopActivityFocusable() && !this.mRootWindowContainer.isTopDisplayFocusedStack(this.mTargetStack)) {
                    this.mTargetStack.moveToFront("startActivityInner");
                }
                this.mRootWindowContainer.resumeFocusedStacksTopActivities(this.mTargetStack, this.mStartActivity, this.mOptions);
            }
        }
        this.mRootWindowContainer.updateUserStack(this.mStartActivity.mUserId, this.mTargetStack);
        this.mSupervisor.mRecentTasks.add(this.mStartActivity.getTask());
        this.mSupervisor.handleNonResizableTaskIfNeeded(this.mStartActivity.getTask(), this.mPreferredWindowingMode, this.mPreferredTaskDisplayArea, this.mTargetStack);
        return 0;
    }

    private Task computeTargetTask() {
        if (this.mStartActivity.resultTo == null && this.mInTask == null && !this.mAddingToTask && (this.mLaunchFlags & AudioFormat.EVRC) != 0) {
            return null;
        }
        ActivityRecord activityRecord = this.mSourceRecord;
        if (activityRecord != null) {
            return activityRecord.getTask();
        }
        Task task = this.mInTask;
        if (task != null) {
            return task;
        }
        ActivityStack stack = getLaunchStack(this.mStartActivity, this.mLaunchFlags, null, this.mOptions);
        ActivityRecord top = stack.getTopNonFinishingActivity();
        if (top != null) {
            return top.getTask();
        }
        stack.removeIfPossible();
        return null;
    }

    private void computeLaunchParams(ActivityRecord r, ActivityRecord sourceRecord, Task targetTask) {
        TaskDisplayArea defaultTaskDisplayArea;
        ActivityOptions activityOptions;
        ActivityStack sourceStack = this.mSourceStack;
        if (sourceStack == null) {
            sourceStack = this.mRootWindowContainer.getTopDisplayFocusedStack();
        }
        if (sourceStack != null && sourceStack.inSplitScreenWindowingMode() && ((activityOptions = this.mOptions) == null || activityOptions.getLaunchWindowingMode() == 0)) {
            int windowingMode = targetTask != null ? targetTask.getWindowingMode() : 0;
            if ((this.mLaunchFlags & 4096) != 0) {
                if (sourceStack.inSplitScreenPrimaryWindowingMode()) {
                    windowingMode = 4;
                } else if (sourceStack.inSplitScreenSecondaryWindowingMode()) {
                    windowingMode = 3;
                }
            }
            if (this.mOptions == null) {
                this.mOptions = ActivityOptions.makeBasic();
            }
            this.mOptions.setLaunchWindowingMode(windowingMode);
        }
        this.mSupervisor.getLaunchParamsController().calculate(targetTask, r.info.windowLayout, r, sourceRecord, this.mOptions, 2, this.mLaunchParams);
        if (this.mLaunchParams.hasPreferredTaskDisplayArea()) {
            defaultTaskDisplayArea = this.mLaunchParams.mPreferredTaskDisplayArea;
        } else {
            defaultTaskDisplayArea = this.mRootWindowContainer.getDefaultTaskDisplayArea();
        }
        this.mPreferredTaskDisplayArea = defaultTaskDisplayArea;
        this.mPreferredWindowingMode = this.mLaunchParams.mWindowingMode;
    }

    private int isAllowedToStart(ActivityRecord r, boolean newTask, Task targetTask) {
        if (this.mStartActivity.packageName == null) {
            if (this.mStartActivity.resultTo != null) {
                this.mStartActivity.resultTo.sendResult(-1, this.mStartActivity.resultWho, this.mStartActivity.requestCode, 0, null, null);
            }
            ActivityOptions.abort(this.mOptions);
            return -92;
        }
        if (r.isActivityTypeHome() && !this.mRootWindowContainer.canStartHomeOnDisplayArea(r.info, this.mPreferredTaskDisplayArea, true)) {
            Slog.w("ActivityTaskManager", "Cannot launch home on display area " + this.mPreferredTaskDisplayArea);
            return -96;
        }
        if (this.mRestrictedBgActivity && ((newTask || !targetTask.isUidPresent(this.mCallingUid)) && handleBackgroundActivityAbort(this.mStartActivity))) {
            Slog.e("ActivityTaskManager", "Abort background activity starts from " + this.mCallingUid);
            return HdmiCecKeycode.CEC_KEYCODE_RESTORE_VOLUME_FUNCTION;
        }
        boolean isNewClearTask = (this.mLaunchFlags & 268468224) == 268468224;
        if (newTask || !this.mService.getLockTaskController().isLockTaskModeViolation(targetTask, isNewClearTask)) {
            return 0;
        }
        Slog.e("ActivityTaskManager", "Attempted Lock Task Mode violation mStartActivity=" + this.mStartActivity);
        return 101;
    }

    int recycleTask(Task targetTask, ActivityRecord targetTaskTop, Task reusedTask, NeededUriGrants intentGrants) throws Throwable {
        if (targetTask.mUserId != this.mStartActivity.mUserId) {
            this.mTargetStack = targetTask.getStack();
            this.mAddingToTask = true;
            return 0;
        }
        boolean clearTaskForReuse = false;
        if (reusedTask != null) {
            if (this.mStartActivity.getTask() == null) {
                this.mStartActivity.setTaskForReuse(reusedTask);
                clearTaskForReuse = true;
            }
            if (targetTask.intent == null) {
                targetTask.setIntent(this.mStartActivity);
            } else {
                boolean taskOnHome = (this.mStartActivity.intent.getFlags() & 16384) != 0;
                if (taskOnHome) {
                    targetTask.intent.addFlags(16384);
                } else {
                    targetTask.intent.removeFlags(16384);
                }
            }
        }
        this.mRootWindowContainer.sendPowerHintForLaunchStartIfNeeded(false, targetTaskTop);
        setTargetStackIfNeeded(targetTaskTop);
        ActivityRecord activityRecord = this.mLastStartActivityRecord;
        if (activityRecord != null && (activityRecord.finishing || this.mLastStartActivityRecord.noDisplay)) {
            this.mLastStartActivityRecord = targetTaskTop;
        }
        if ((this.mStartFlags & 1) != 0) {
            if (!this.mMovedToFront && this.mDoResume) {
                this.mTargetStack.moveToFront("intentActivityFound");
            }
            resumeTargetStackIfNeeded();
            return 1;
        }
        complyActivityFlags(targetTask, reusedTask != null ? reusedTask.getTopNonFinishingActivity() : null, intentGrants);
        if (clearTaskForReuse) {
            this.mStartActivity.setTaskForReuse(null);
        }
        if (this.mAddingToTask) {
            return 0;
        }
        if (targetTaskTop.canTurnScreenOn() && this.mService.mInternal.isDreaming()) {
            targetTaskTop.mStackSupervisor.wakeUp("recycleTask#turnScreenOnFlag");
        }
        if (this.mMovedToFront) {
            targetTaskTop.showStartingWindow(null, false, true);
        } else if (this.mDoResume) {
            this.mTargetStack.moveToFront("intentActivityFound");
        }
        resumeTargetStackIfNeeded();
        this.mLastStartActivityRecord = targetTaskTop.finishing ? targetTask.getTopNonFinishingActivity() : targetTaskTop;
        return this.mMovedToFront ? 2 : 3;
    }

    private int deliverToCurrentTopIfNeeded(ActivityStack topStack, NeededUriGrants intentGrants) {
        ActivityRecord top = topStack.topRunningNonDelayedActivityLocked(this.mNotTop);
        boolean dontStart = top != null && this.mStartActivity.resultTo == null && top.mActivityComponent.equals(this.mStartActivity.mActivityComponent) && top.mUserId == this.mStartActivity.mUserId && top.attachedToProcess() && ((this.mLaunchFlags & AudioFormat.APTX) != 0 || isLaunchModeOneOf(1, 2)) && (!top.isActivityTypeHome() || top.getDisplayArea() == this.mPreferredTaskDisplayArea);
        if (!dontStart) {
            return 0;
        }
        topStack.mLastPausedActivity = null;
        if (this.mDoResume) {
            this.mRootWindowContainer.resumeFocusedStacksTopActivities();
        }
        ActivityOptions.abort(this.mOptions);
        if ((this.mStartFlags & 1) != 0) {
            return 1;
        }
        deliverNewIntent(top, intentGrants);
        this.mSupervisor.handleNonResizableTaskIfNeeded(top.getTask(), this.mLaunchParams.mWindowingMode, this.mPreferredTaskDisplayArea, topStack);
        return 3;
    }

    private void complyActivityFlags(Task targetTask, ActivityRecord reusedActivity, NeededUriGrants intentGrants) {
        ActivityRecord targetTaskTop = targetTask.getTopNonFinishingActivity();
        boolean resetTask = (reusedActivity == null || (this.mLaunchFlags & 2097152) == 0) ? false : true;
        if (resetTask) {
            targetTaskTop = this.mTargetStack.resetTaskIfNeeded(targetTaskTop, this.mStartActivity);
        }
        int i = this.mLaunchFlags;
        if ((i & 268468224) == 268468224) {
            targetTask.performClearTaskLocked();
            targetTask.setIntent(this.mStartActivity);
            this.mAddingToTask = true;
            return;
        }
        if ((i & 67108864) != 0 || isDocumentLaunchesIntoExisting(i) || isLaunchModeOneOf(3, 2)) {
            ActivityRecord top = targetTask.performClearTaskForReuseLocked(this.mStartActivity, this.mLaunchFlags);
            if (targetTaskTop.getTask() == null) {
                targetTask.addChild(targetTaskTop);
            }
            if (top != null) {
                if (top.isRootOfTask()) {
                    top.getTask().setIntent(this.mStartActivity);
                }
                deliverNewIntent(top, intentGrants);
                return;
            } else {
                this.mAddingToTask = true;
                if (targetTask.getStack() == null) {
                    ActivityStack launchStack = getLaunchStack(this.mStartActivity, this.mLaunchFlags, null, this.mOptions);
                    this.mTargetStack = launchStack;
                    launchStack.addChild(targetTask, !this.mLaunchTaskBehind, (this.mStartActivity.info.flags & 1024) != 0);
                    return;
                }
                return;
            }
        }
        int i2 = this.mLaunchFlags;
        if ((i2 & 67108864) == 0 && !this.mAddingToTask && (i2 & 131072) != 0) {
            ActivityRecord act = targetTask.findActivityInHistory(this.mStartActivity.mActivityComponent);
            if (act != null) {
                Task task = act.getTask();
                task.moveActivityToFrontLocked(act);
                act.updateOptionsLocked(this.mOptions);
                deliverNewIntent(act, intentGrants);
                this.mTargetStack.mLastPausedActivity = null;
                return;
            }
            this.mAddingToTask = true;
            return;
        }
        if (this.mStartActivity.mActivityComponent.equals(targetTask.realActivity)) {
            if (targetTask != this.mInTask) {
                if (((this.mLaunchFlags & AudioFormat.APTX) != 0 || 1 == this.mLaunchMode) && targetTaskTop.mActivityComponent.equals(this.mStartActivity.mActivityComponent) && this.mStartActivity.resultTo == null) {
                    if (targetTaskTop.isRootOfTask()) {
                        targetTaskTop.getTask().setIntent(this.mStartActivity);
                    }
                    deliverNewIntent(targetTaskTop, intentGrants);
                    return;
                } else if (!targetTask.isSameIntentFilter(this.mStartActivity)) {
                    this.mAddingToTask = true;
                    return;
                } else {
                    if (reusedActivity == null) {
                        this.mAddingToTask = true;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (!resetTask) {
            this.mAddingToTask = true;
        } else if (!targetTask.rootWasReset) {
            targetTask.setIntent(this.mStartActivity);
        }
    }

    void reset(boolean clearRequest) {
        this.mStartActivity = null;
        this.mIntent = null;
        this.mCallingUid = -1;
        this.mOptions = null;
        this.mRestrictedBgActivity = false;
        this.mLaunchTaskBehind = false;
        this.mLaunchFlags = 0;
        this.mLaunchMode = -1;
        this.mLaunchParams.reset();
        this.mNotTop = null;
        this.mDoResume = false;
        this.mStartFlags = 0;
        this.mSourceRecord = null;
        this.mPreferredTaskDisplayArea = null;
        this.mPreferredWindowingMode = 0;
        this.mInTask = null;
        this.mAddingToTask = false;
        this.mReuseTask = null;
        this.mNewTaskInfo = null;
        this.mNewTaskIntent = null;
        this.mSourceStack = null;
        this.mTargetStack = null;
        this.mTargetTask = null;
        this.mMovedToFront = false;
        this.mNoAnimation = false;
        this.mKeepCurTransition = false;
        this.mAvoidMoveToFront = false;
        this.mFrozeTaskList = false;
        this.mVoiceSession = null;
        this.mVoiceInteractor = null;
        this.mIntentDelivered = false;
        if (clearRequest) {
            this.mRequest.reset();
        }
    }

    private void setInitialState(ActivityRecord r, ActivityOptions options, Task inTask, boolean doResume, int startFlags, ActivityRecord sourceRecord, IVoiceInteractionSession voiceSession, IVoiceInteractor voiceInteractor, boolean restrictedBgActivity) {
        TaskDisplayArea defaultTaskDisplayArea;
        ActivityStack topFocusedStack;
        reset(false);
        this.mStartActivity = r;
        this.mIntent = r.intent;
        this.mOptions = options;
        this.mCallingUid = r.launchedFromUid;
        this.mSourceRecord = sourceRecord;
        this.mVoiceSession = voiceSession;
        this.mVoiceInteractor = voiceInteractor;
        this.mRestrictedBgActivity = restrictedBgActivity;
        this.mLaunchParams.reset();
        this.mSupervisor.getLaunchParamsController().calculate(inTask, r.info.windowLayout, r, sourceRecord, options, 0, this.mLaunchParams);
        if (this.mLaunchParams.hasPreferredTaskDisplayArea()) {
            defaultTaskDisplayArea = this.mLaunchParams.mPreferredTaskDisplayArea;
        } else {
            defaultTaskDisplayArea = this.mRootWindowContainer.getDefaultTaskDisplayArea();
        }
        this.mPreferredTaskDisplayArea = defaultTaskDisplayArea;
        this.mPreferredWindowingMode = this.mLaunchParams.mWindowingMode;
        int i = r.launchMode;
        this.mLaunchMode = i;
        this.mLaunchFlags = adjustLaunchFlagsToDocumentMode(r, 3 == i, 2 == this.mLaunchMode, this.mIntent.getFlags());
        this.mLaunchTaskBehind = (!r.mLaunchTaskBehind || isLaunchModeOneOf(2, 3) || (this.mLaunchFlags & 524288) == 0) ? false : true;
        sendNewTaskResultRequestIfNeeded();
        if ((this.mLaunchFlags & 524288) != 0 && r.resultTo == null) {
            this.mLaunchFlags |= AudioFormat.EVRC;
        }
        if ((this.mLaunchFlags & AudioFormat.EVRC) != 0 && (this.mLaunchTaskBehind || r.info.documentLaunchMode == 2)) {
            this.mLaunchFlags |= AudioFormat.OPUS;
        }
        this.mSupervisor.mUserLeaving = (this.mLaunchFlags & 262144) == 0;
        this.mDoResume = doResume;
        if (!doResume || !r.okToShowLocked() || this.mLaunchTaskBehind) {
            r.delayedResume = true;
            this.mDoResume = false;
        }
        ActivityOptions activityOptions = this.mOptions;
        if (activityOptions != null) {
            if (activityOptions.getLaunchTaskId() != -1 && this.mOptions.getTaskOverlay()) {
                r.setTaskOverlay(true);
                if (!this.mOptions.canTaskOverlayResume()) {
                    Task task = this.mRootWindowContainer.anyTaskForId(this.mOptions.getLaunchTaskId());
                    ActivityRecord top = task != null ? task.getTopNonFinishingActivity() : null;
                    if (top != null && !top.isState(ActivityStack.ActivityState.RESUMED)) {
                        this.mDoResume = false;
                        this.mAvoidMoveToFront = true;
                    }
                }
            } else if (this.mOptions.getAvoidMoveToFront()) {
                this.mDoResume = false;
                this.mAvoidMoveToFront = true;
            }
        }
        this.mNotTop = (this.mLaunchFlags & 16777216) != 0 ? sourceRecord : null;
        this.mInTask = inTask;
        if (inTask != null && !inTask.inRecents) {
            Slog.w("ActivityTaskManager", "Starting activity in task not in recents: " + inTask);
            this.mInTask = null;
        }
        this.mStartFlags = startFlags;
        if ((startFlags & 1) != 0) {
            ActivityRecord checkedCaller = sourceRecord;
            if (checkedCaller == null && (topFocusedStack = this.mRootWindowContainer.getTopDisplayFocusedStack()) != null) {
                checkedCaller = topFocusedStack.topRunningNonDelayedActivityLocked(this.mNotTop);
            }
            if (checkedCaller == null || !checkedCaller.mActivityComponent.equals(r.mActivityComponent)) {
                this.mStartFlags &= -2;
            }
        }
        this.mNoAnimation = (this.mLaunchFlags & 65536) != 0;
        if (this.mRestrictedBgActivity && !this.mService.isBackgroundActivityStartsEnabled()) {
            this.mAvoidMoveToFront = true;
            this.mDoResume = false;
        }
    }

    private void sendNewTaskResultRequestIfNeeded() {
        if (this.mStartActivity.resultTo != null && (this.mLaunchFlags & AudioFormat.EVRC) != 0) {
            Slog.w("ActivityTaskManager", "Activity is launching as a new task, so cancelling activity result.");
            this.mStartActivity.resultTo.sendResult(-1, this.mStartActivity.resultWho, this.mStartActivity.requestCode, 0, null, null);
            this.mStartActivity.resultTo = null;
        }
    }

    private void computeLaunchingTaskFlags() {
        ActivityRecord activityRecord;
        Task task;
        if (this.mSourceRecord == null && (task = this.mInTask) != null && task.getStack() != null) {
            Intent baseIntent = this.mInTask.getBaseIntent();
            ActivityRecord root = this.mInTask.getRootActivity();
            if (baseIntent == null) {
                ActivityOptions.abort(this.mOptions);
                throw new IllegalArgumentException("Launching into task without base intent: " + this.mInTask);
            }
            if (isLaunchModeOneOf(3, 2)) {
                if (!baseIntent.getComponent().equals(this.mStartActivity.intent.getComponent())) {
                    ActivityOptions.abort(this.mOptions);
                    throw new IllegalArgumentException("Trying to launch singleInstance/Task " + this.mStartActivity + " into different task " + this.mInTask);
                }
                if (root != null) {
                    ActivityOptions.abort(this.mOptions);
                    throw new IllegalArgumentException("Caller with mInTask " + this.mInTask + " has root " + root + " but target is singleInstance/Task");
                }
            }
            if (root == null) {
                int flags = (this.mLaunchFlags & (-403185665)) | (baseIntent.getFlags() & 403185664);
                this.mLaunchFlags = flags;
                this.mIntent.setFlags(flags);
                this.mInTask.setIntent(this.mStartActivity);
                this.mAddingToTask = true;
            } else if ((this.mLaunchFlags & AudioFormat.EVRC) != 0) {
                this.mAddingToTask = false;
            } else {
                this.mAddingToTask = true;
            }
            this.mReuseTask = this.mInTask;
        } else {
            this.mInTask = null;
            if ((this.mStartActivity.isResolverOrDelegateActivity() || this.mStartActivity.noDisplay) && (activityRecord = this.mSourceRecord) != null && activityRecord.inFreeformWindowingMode()) {
                this.mAddingToTask = true;
            }
        }
        Task task2 = this.mInTask;
        if (task2 == null) {
            ActivityRecord activityRecord2 = this.mSourceRecord;
            if (activityRecord2 == null) {
                if ((this.mLaunchFlags & AudioFormat.EVRC) == 0 && task2 == null) {
                    Slog.w("ActivityTaskManager", "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: " + this.mIntent);
                    this.mLaunchFlags = this.mLaunchFlags | AudioFormat.EVRC;
                    return;
                }
                return;
            }
            if (activityRecord2.launchMode == 3) {
                this.mLaunchFlags |= AudioFormat.EVRC;
            } else if (isLaunchModeOneOf(3, 2)) {
                this.mLaunchFlags |= AudioFormat.EVRC;
            }
        }
    }

    private void computeSourceStack() {
        ActivityRecord activityRecord = this.mSourceRecord;
        if (activityRecord == null) {
            this.mSourceStack = null;
            return;
        }
        if (!activityRecord.finishing) {
            this.mSourceStack = this.mSourceRecord.getRootTask();
            return;
        }
        if ((this.mLaunchFlags & AudioFormat.EVRC) == 0) {
            Slog.w("ActivityTaskManager", "startActivity called from finishing " + this.mSourceRecord + "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: " + this.mIntent);
            this.mLaunchFlags = this.mLaunchFlags | AudioFormat.EVRC;
            this.mNewTaskInfo = this.mSourceRecord.info;
            Task sourceTask = this.mSourceRecord.getTask();
            this.mNewTaskIntent = sourceTask != null ? sourceTask.intent : null;
        }
        this.mSourceRecord = null;
        this.mSourceStack = null;
    }

    private Task getReusableTask() {
        ActivityOptions activityOptions = this.mOptions;
        if (activityOptions != null && activityOptions.getLaunchTaskId() != -1) {
            Task launchTask = this.mRootWindowContainer.anyTaskForId(this.mOptions.getLaunchTaskId());
            if (launchTask != null) {
                return launchTask;
            }
            return null;
        }
        int i = this.mLaunchFlags;
        boolean putIntoExistingTask = ((268435456 & i) != 0 && (i & AudioFormat.OPUS) == 0) || isLaunchModeOneOf(3, 2);
        ActivityRecord intentActivity = null;
        if (putIntoExistingTask & (this.mInTask == null && this.mStartActivity.resultTo == null)) {
            if (3 == this.mLaunchMode) {
                intentActivity = this.mRootWindowContainer.findActivity(this.mIntent, this.mStartActivity.info, this.mStartActivity.isActivityTypeHome());
            } else if ((this.mLaunchFlags & 4096) != 0) {
                intentActivity = this.mRootWindowContainer.findActivity(this.mIntent, this.mStartActivity.info, 2 != this.mLaunchMode);
            } else {
                intentActivity = this.mRootWindowContainer.findTask(this.mStartActivity, this.mPreferredTaskDisplayArea);
            }
        }
        if (intentActivity != null && ((this.mStartActivity.isActivityTypeHome() || intentActivity.isActivityTypeHome()) && intentActivity.getDisplayArea() != this.mPreferredTaskDisplayArea)) {
            intentActivity = null;
        }
        if (intentActivity != null) {
            return intentActivity.getTask();
        }
        return null;
    }

    private void setTargetStackIfNeeded(ActivityRecord intentActivity) throws Throwable {
        boolean differentTopTask;
        ActivityRecord activityRecord;
        ActivityStack rootTask = intentActivity.getRootTask();
        this.mTargetStack = rootTask;
        rootTask.mLastPausedActivity = null;
        Task intentTask = intentActivity.getTask();
        if (this.mTargetStack.getDisplayArea() == this.mPreferredTaskDisplayArea) {
            ActivityStack focusStack = this.mTargetStack.getDisplay().getFocusedStack();
            ActivityRecord curTop = focusStack == null ? null : focusStack.topRunningNonDelayedActivityLocked(this.mNotTop);
            Task topTask = curTop != null ? curTop.getTask() : null;
            boolean differentTopTask2 = (topTask == intentTask && (focusStack == null || topTask == focusStack.getTopMostTask())) ? false : true;
            differentTopTask = differentTopTask2;
        } else {
            differentTopTask = true;
        }
        if (differentTopTask && !this.mAvoidMoveToFront) {
            this.mStartActivity.intent.addFlags(4194304);
            if (this.mSourceRecord == null || (this.mSourceStack.getTopNonFinishingActivity() != null && this.mSourceStack.getTopNonFinishingActivity().getTask() == this.mSourceRecord.getTask())) {
                if (this.mLaunchTaskBehind && (activityRecord = this.mSourceRecord) != null) {
                    intentActivity.setTaskToAffiliateWith(activityRecord.getTask());
                }
                ActivityStack launchStack = getLaunchStack(this.mStartActivity, this.mLaunchFlags, intentTask, this.mOptions);
                if (launchStack == null || launchStack == this.mTargetStack) {
                    boolean isSplitScreenTopStack = this.mTargetStack.isTopSplitScreenStack();
                    ActivityStack activityStack = this.mTargetStack;
                    if (activityStack != intentTask && activityStack != intentTask.getParent().asTask()) {
                        intentTask.getParent().positionChildAt(Integer.MAX_VALUE, intentTask, false);
                        intentTask = intentTask.getParent().asTask();
                    }
                    this.mTargetStack.moveTaskToFront(intentTask, this.mNoAnimation, this.mOptions, this.mStartActivity.appTimeTracker, true, "bringingFoundTaskToFront");
                    this.mMovedToFront = !isSplitScreenTopStack;
                } else {
                    intentTask.reparent(launchStack, true, 0, true, true, "reparentToTargetStack");
                    this.mMovedToFront = true;
                }
                this.mOptions = null;
            }
        }
        this.mTargetStack = intentActivity.getRootTask();
        this.mSupervisor.handleNonResizableTaskIfNeeded(intentTask, 0, this.mRootWindowContainer.getDefaultTaskDisplayArea(), this.mTargetStack);
    }

    private void resumeTargetStackIfNeeded() {
        if (this.mDoResume) {
            if (this.mTargetStack.isFocusable()) {
                this.mRootWindowContainer.resumeFocusedStacksTopActivities(this.mTargetStack, null, this.mOptions);
            } else {
                this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
            }
        } else {
            ActivityOptions.abort(this.mOptions);
        }
        this.mRootWindowContainer.updateUserStack(this.mStartActivity.mUserId, this.mTargetStack);
    }

    private void setNewTask(Task taskToAffiliate) {
        boolean toTop = (this.mLaunchTaskBehind || this.mAvoidMoveToFront) ? false : true;
        ActivityStack activityStack = this.mTargetStack;
        ActivityInfo activityInfo = this.mNewTaskInfo;
        if (activityInfo == null) {
            activityInfo = this.mStartActivity.info;
        }
        ActivityInfo activityInfo2 = activityInfo;
        Intent intent = this.mNewTaskIntent;
        if (intent == null) {
            intent = this.mIntent;
        }
        Task task = activityStack.reuseOrCreateTask(activityInfo2, intent, this.mVoiceSession, this.mVoiceInteractor, toTop, this.mStartActivity, this.mSourceRecord, this.mOptions);
        addOrReparentStartingActivity(task, "setTaskFromReuseOrCreateNewTask - mReuseTask");
        if (taskToAffiliate != null) {
            this.mStartActivity.setTaskToAffiliateWith(taskToAffiliate);
        }
    }

    private void deliverNewIntent(ActivityRecord activity, NeededUriGrants intentGrants) {
        if (this.mIntentDelivered) {
            return;
        }
        activity.logStartActivity(EventLogTags.WM_NEW_INTENT, activity.getTask());
        activity.deliverNewIntentLocked(this.mCallingUid, this.mStartActivity.intent, intentGrants, this.mStartActivity.launchedFromPackage);
        this.mIntentDelivered = true;
    }

    private void addOrReparentStartingActivity(Task parent, String reason) {
        if (this.mStartActivity.getTask() == null || this.mStartActivity.getTask() == parent) {
            parent.addChild(this.mStartActivity);
        } else {
            this.mStartActivity.reparent(parent, parent.getChildCount(), reason);
        }
    }

    private int adjustLaunchFlagsToDocumentMode(ActivityRecord r, boolean launchSingleInstance, boolean launchSingleTask, int launchFlags) {
        if ((launchFlags & 524288) != 0 && (launchSingleInstance || launchSingleTask)) {
            Slog.i("ActivityTaskManager", "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\"");
            return launchFlags & (-134742017);
        }
        int i = r.info.documentLaunchMode;
        if (i == 1) {
            return launchFlags | 524288;
        }
        if (i == 2) {
            return launchFlags | 524288;
        }
        if (i == 3) {
            return launchFlags & (-134217729);
        }
        return launchFlags;
    }

    private ActivityStack getLaunchStack(ActivityRecord r, int launchFlags, Task task, ActivityOptions aOptions) {
        Task task2 = this.mReuseTask;
        if (task2 != null) {
            return task2.getStack();
        }
        boolean onTop = (aOptions == null || !aOptions.getAvoidMoveToFront()) && !this.mLaunchTaskBehind;
        return this.mRootWindowContainer.getLaunchStack(r, aOptions, task, onTop, this.mLaunchParams, this.mRequest.realCallingPid, this.mRequest.realCallingUid);
    }

    private boolean isLaunchModeOneOf(int mode1, int mode2) {
        int i = this.mLaunchMode;
        return mode1 == i || mode2 == i;
    }

    static boolean isDocumentLaunchesIntoExisting(int flags) {
        return (524288 & flags) != 0 && (134217728 & flags) == 0;
    }

    ActivityStarter setIntent(Intent intent) {
        this.mRequest.intent = intent;
        return this;
    }

    Intent getIntent() {
        return this.mRequest.intent;
    }

    ActivityStarter setIntentGrants(NeededUriGrants intentGrants) {
        this.mRequest.intentGrants = intentGrants;
        return this;
    }

    ActivityStarter setReason(String reason) {
        this.mRequest.reason = reason;
        return this;
    }

    ActivityStarter setCaller(IApplicationThread caller) {
        this.mRequest.caller = caller;
        return this;
    }

    ActivityStarter setResolvedType(String type) {
        this.mRequest.resolvedType = type;
        return this;
    }

    ActivityStarter setActivityInfo(ActivityInfo info) {
        this.mRequest.activityInfo = info;
        return this;
    }

    ActivityStarter setResolveInfo(ResolveInfo info) {
        this.mRequest.resolveInfo = info;
        return this;
    }

    ActivityStarter setVoiceSession(IVoiceInteractionSession voiceSession) {
        this.mRequest.voiceSession = voiceSession;
        return this;
    }

    ActivityStarter setVoiceInteractor(IVoiceInteractor voiceInteractor) {
        this.mRequest.voiceInteractor = voiceInteractor;
        return this;
    }

    ActivityStarter setResultTo(IBinder resultTo) {
        this.mRequest.resultTo = resultTo;
        return this;
    }

    ActivityStarter setResultWho(String resultWho) {
        this.mRequest.resultWho = resultWho;
        return this;
    }

    ActivityStarter setRequestCode(int requestCode) {
        this.mRequest.requestCode = requestCode;
        return this;
    }

    ActivityStarter setCallingPid(int pid) {
        this.mRequest.callingPid = pid;
        return this;
    }

    ActivityStarter setCallingUid(int uid) {
        this.mRequest.callingUid = uid;
        return this;
    }

    ActivityStarter setCallingPackage(String callingPackage) {
        this.mRequest.callingPackage = callingPackage;
        return this;
    }

    ActivityStarter setCallingFeatureId(String callingFeatureId) {
        this.mRequest.callingFeatureId = callingFeatureId;
        return this;
    }

    ActivityStarter setRealCallingPid(int pid) {
        this.mRequest.realCallingPid = pid;
        return this;
    }

    ActivityStarter setRealCallingUid(int uid) {
        this.mRequest.realCallingUid = uid;
        return this;
    }

    ActivityStarter setStartFlags(int startFlags) {
        this.mRequest.startFlags = startFlags;
        return this;
    }

    ActivityStarter setActivityOptions(SafeActivityOptions options) {
        this.mRequest.activityOptions = options;
        return this;
    }

    ActivityStarter setActivityOptions(Bundle bOptions) {
        return setActivityOptions(SafeActivityOptions.fromBundle(bOptions));
    }

    ActivityStarter setIgnoreTargetSecurity(boolean ignoreTargetSecurity) {
        this.mRequest.ignoreTargetSecurity = ignoreTargetSecurity;
        return this;
    }

    ActivityStarter setFilterCallingUid(int filterCallingUid) {
        this.mRequest.filterCallingUid = filterCallingUid;
        return this;
    }

    ActivityStarter setComponentSpecified(boolean componentSpecified) {
        this.mRequest.componentSpecified = componentSpecified;
        return this;
    }

    ActivityStarter setOutActivity(ActivityRecord[] outActivity) {
        this.mRequest.outActivity = outActivity;
        return this;
    }

    ActivityStarter setInTask(Task inTask) {
        this.mRequest.inTask = inTask;
        return this;
    }

    ActivityStarter setWaitResult(WaitResult result) {
        this.mRequest.waitResult = result;
        return this;
    }

    ActivityStarter setProfilerInfo(ProfilerInfo info) {
        this.mRequest.profilerInfo = info;
        return this;
    }

    ActivityStarter setGlobalConfiguration(Configuration config) {
        this.mRequest.globalConfig = config;
        return this;
    }

    ActivityStarter setUserId(int userId) {
        this.mRequest.userId = userId;
        return this;
    }

    ActivityStarter setAllowPendingRemoteAnimationRegistryLookup(boolean allowLookup) {
        this.mRequest.allowPendingRemoteAnimationRegistryLookup = allowLookup;
        return this;
    }

    ActivityStarter setOriginatingPendingIntent(PendingIntentRecord originatingPendingIntent) {
        this.mRequest.originatingPendingIntent = originatingPendingIntent;
        return this;
    }

    ActivityStarter setAllowBackgroundActivityStart(boolean allowBackgroundActivityStart) {
        this.mRequest.allowBackgroundActivityStart = allowBackgroundActivityStart;
        return this;
    }

    void dump(PrintWriter pw, String prefix) {
        String prefix2 = prefix + "  ";
        pw.print(prefix2);
        pw.print("mCurrentUser=");
        pw.println(this.mRootWindowContainer.mCurrentUser);
        pw.print(prefix2);
        pw.print("mLastStartReason=");
        pw.println(this.mLastStartReason);
        pw.print(prefix2);
        pw.print("mLastStartActivityTimeMs=");
        pw.println(DateFormat.getDateTimeInstance().format(new Date(this.mLastStartActivityTimeMs)));
        pw.print(prefix2);
        pw.print("mLastStartActivityResult=");
        pw.println(this.mLastStartActivityResult);
        if (this.mLastStartActivityRecord != null) {
            pw.print(prefix2);
            pw.println("mLastStartActivityRecord:");
            this.mLastStartActivityRecord.dump(pw, prefix2 + "  ", true);
        }
        if (this.mStartActivity != null) {
            pw.print(prefix2);
            pw.println("mStartActivity:");
            this.mStartActivity.dump(pw, prefix2 + "  ", true);
        }
        if (this.mIntent != null) {
            pw.print(prefix2);
            pw.print("mIntent=");
            pw.println(this.mIntent);
        }
        if (this.mOptions != null) {
            pw.print(prefix2);
            pw.print("mOptions=");
            pw.println(this.mOptions);
        }
        pw.print(prefix2);
        pw.print("mLaunchSingleTop=");
        pw.print(1 == this.mLaunchMode);
        pw.print(" mLaunchSingleInstance=");
        pw.print(3 == this.mLaunchMode);
        pw.print(" mLaunchSingleTask=");
        pw.println(2 == this.mLaunchMode);
        pw.print(prefix2);
        pw.print("mLaunchFlags=0x");
        pw.print(Integer.toHexString(this.mLaunchFlags));
        pw.print(" mDoResume=");
        pw.print(this.mDoResume);
        pw.print(" mAddingToTask=");
        pw.println(this.mAddingToTask);
    }
}
