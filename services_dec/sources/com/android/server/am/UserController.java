package com.android.server.am;

import android.R;
import android.app.AppGlobals;
import android.app.Dialog;
import android.app.IStopUserCallback;
import android.app.IUserSwitchObserver;
import android.app.KeyguardManager;
import android.appwidget.AppWidgetManagerInternal;
import android.content.Context;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.PermissionChecker;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.UserInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.IProgressListener;
import android.os.IUserManager;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.UserManagerInternal;
import android.os.storage.IStorageManager;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.EventLog;
import android.util.IntArray;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.widget.LockPatternUtils;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.SystemServiceManager;
import com.android.server.job.controllers.JobStatus;
import com.android.server.notification.SnoozeHelper;
import com.android.server.pm.UserManagerService;
import com.android.server.utils.TimingsTraceAndSlog;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.WindowManagerService;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: loaded from: classes.dex */
class UserController implements Handler.Callback {
    private static final int CLEAR_USER_JOURNEY_SESSION_MSG = 200;
    static final int CONTINUE_USER_SWITCH_MSG = 20;
    static final int FOREGROUND_PROFILE_CHANGED_MSG = 70;
    private static final long INVALID_SESSION_ID = 0;
    static final int REPORT_LOCKED_BOOT_COMPLETE_MSG = 110;
    static final int REPORT_USER_SWITCH_COMPLETE_MSG = 80;
    static final int REPORT_USER_SWITCH_MSG = 10;
    static final int START_PROFILES_MSG = 40;
    static final int START_USER_SWITCH_FG_MSG = 120;
    static final int START_USER_SWITCH_UI_MSG = 1000;
    private static final String TAG = "ActivityManager";
    static final int USER_CURRENT_MSG = 60;
    private static final int USER_JOURNEY_TIMEOUT_MS = 90000;
    private static final int USER_JOURNEY_UNKNOWN = 0;
    private static final int USER_JOURNEY_USER_CREATE = 4;
    private static final int USER_JOURNEY_USER_START = 3;
    private static final int USER_JOURNEY_USER_SWITCH_FG = 2;
    private static final int USER_JOURNEY_USER_SWITCH_UI = 1;
    private static final int USER_LIFECYCLE_EVENT_CREATE_USER = 3;
    private static final int USER_LIFECYCLE_EVENT_START_USER = 2;
    private static final int USER_LIFECYCLE_EVENT_STATE_BEGIN = 1;
    private static final int USER_LIFECYCLE_EVENT_STATE_FINISH = 2;
    private static final int USER_LIFECYCLE_EVENT_STATE_NONE = 0;
    private static final int USER_LIFECYCLE_EVENT_SWITCH_USER = 1;
    private static final int USER_LIFECYCLE_EVENT_UNKNOWN = 0;
    private static final int USER_LIFECYCLE_EVENT_UNLOCKED_USER = 6;
    private static final int USER_LIFECYCLE_EVENT_UNLOCKING_USER = 5;
    private static final int USER_LIFECYCLE_EVENT_USER_RUNNING_LOCKED = 4;
    static final int USER_START_MSG = 50;
    private static final int USER_SWITCH_CALLBACKS_TIMEOUT_MS = 5000;
    static final int USER_SWITCH_CALLBACKS_TIMEOUT_MSG = 90;
    static final int USER_SWITCH_TIMEOUT_MS = 3000;
    static final int USER_SWITCH_TIMEOUT_MSG = 30;
    private static final int USER_SWITCH_WARNING_TIMEOUT_MS = 500;
    static final int USER_UNLOCKED_MSG = 105;
    static final int USER_UNLOCK_MSG = 100;
    volatile boolean mBootCompleted;
    private volatile ArraySet<String> mCurWaitingUserSwitchCallbacks;
    private int[] mCurrentProfileIds;
    private volatile int mCurrentUserId;
    private boolean mDelayUserDataLocking;
    private final Handler mHandler;
    private boolean mInitialized;
    private final Injector mInjector;
    private final ArrayList<Integer> mLastActiveUsers;
    private final Object mLock;
    private final LockPatternUtils mLockPatternUtils;
    private int mMaxRunningUsers;
    private int[] mStartedUserArray;
    private final SparseArray<UserState> mStartedUsers;
    private String mSwitchingFromSystemUserMessage;
    private String mSwitchingToSystemUserMessage;
    private volatile int mTargetUserId;
    private ArraySet<String> mTimeoutUserSwitchCallbacks;
    private final Handler mUiHandler;
    private final SparseArray<UserJourneySession> mUserIdToUserJourneyMap;
    private final ArrayList<Integer> mUserLru;
    private final SparseIntArray mUserProfileGroupIds;
    private final RemoteCallbackList<IUserSwitchObserver> mUserSwitchObservers;
    private boolean mUserSwitchUiEnabled;

    @interface UserJourney {
    }

    @interface UserLifecycleEvent {
    }

    @interface UserLifecycleEventState {
    }

    UserController(ActivityManagerService service) {
        this(new Injector(service));
    }

    UserController(Injector injector) {
        this.mLock = new Object();
        this.mCurrentUserId = 0;
        this.mTargetUserId = -10000;
        this.mStartedUsers = new SparseArray<>();
        this.mUserLru = new ArrayList<>();
        this.mStartedUserArray = new int[]{0};
        this.mCurrentProfileIds = new int[0];
        this.mUserProfileGroupIds = new SparseIntArray();
        this.mUserSwitchObservers = new RemoteCallbackList<>();
        this.mUserSwitchUiEnabled = true;
        this.mLastActiveUsers = new ArrayList<>();
        this.mUserIdToUserJourneyMap = new SparseArray<>();
        this.mInjector = injector;
        this.mHandler = injector.getHandler(this);
        this.mUiHandler = this.mInjector.getUiHandler(this);
        UserState uss = new UserState(UserHandle.SYSTEM);
        uss.mUnlockProgress.addListener(new UserProgressListener());
        this.mStartedUsers.put(0, uss);
        this.mUserLru.add(0);
        this.mLockPatternUtils = this.mInjector.getLockPatternUtils();
        updateStartedUserArrayLU();
    }

    void setInitialConfig(boolean userSwitchUiEnabled, int maxRunningUsers, boolean delayUserDataLocking) {
        synchronized (this.mLock) {
            this.mUserSwitchUiEnabled = userSwitchUiEnabled;
            this.mMaxRunningUsers = maxRunningUsers;
            this.mDelayUserDataLocking = delayUserDataLocking;
            this.mInitialized = true;
        }
    }

    private boolean isUserSwitchUiEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mUserSwitchUiEnabled;
        }
        return z;
    }

    int getMaxRunningUsers() {
        int i;
        synchronized (this.mLock) {
            i = this.mMaxRunningUsers;
        }
        return i;
    }

    private boolean isDelayUserDataLockingEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mDelayUserDataLocking;
        }
        return z;
    }

    void finishUserSwitch(final UserState uss) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$f2F3ceAG58MOmBJm9cmZ7HhYcmE
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$finishUserSwitch$0$UserController(uss);
            }
        });
    }

    public /* synthetic */ void lambda$finishUserSwitch$0$UserController(UserState uss) throws Throwable {
        finishUserBoot(uss);
        startProfiles();
        synchronized (this.mLock) {
            stopRunningUsersLU(this.mMaxRunningUsers);
        }
    }

    List<Integer> getRunningUsersLU() {
        ArrayList<Integer> runningUsers = new ArrayList<>();
        for (Integer userId : this.mUserLru) {
            UserState uss = this.mStartedUsers.get(userId.intValue());
            if (uss != null && uss.state != 4 && uss.state != 5 && (userId.intValue() != 0 || !UserInfo.isSystemOnly(userId.intValue()))) {
                runningUsers.add(userId);
            }
        }
        return runningUsers;
    }

    void stopRunningUsersLU(int maxRunningUsers) {
        List<Integer> currentlyRunning = getRunningUsersLU();
        Iterator<Integer> iterator = currentlyRunning.iterator();
        while (currentlyRunning.size() > maxRunningUsers && iterator.hasNext()) {
            Integer userId = iterator.next();
            if (userId.intValue() != 0 && userId.intValue() != this.mCurrentUserId && stopUsersLU(userId.intValue(), false, true, null, null) == 0) {
                iterator.remove();
            }
        }
    }

    boolean canStartMoreUsers() {
        boolean z;
        synchronized (this.mLock) {
            z = getRunningUsersLU().size() < this.mMaxRunningUsers;
        }
        return z;
    }

    private void finishUserBoot(UserState uss) throws Throwable {
        finishUserBoot(uss, null);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x014f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void finishUserBoot(com.android.server.am.UserState r22, android.content.IIntentReceiver r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.UserController.finishUserBoot(com.android.server.am.UserState, android.content.IIntentReceiver):void");
    }

    private boolean finishUserUnlocking(final UserState uss) {
        final int userId = uss.mHandle.getIdentifier();
        EventLog.writeEvent(EventLogTags.UC_FINISH_USER_UNLOCKING, userId);
        logUserLifecycleEvent(userId, 5, 1);
        if (this.mInjector.isMegaQuickBootEnabled()) {
            if (!StorageManager.isUserKeyUnlocked(userId)) {
                Slog.i(TAG, "Bypassing isUserKeyUnlocked for launcher boot acceleration");
            }
        } else if (!StorageManager.isUserKeyUnlocked(userId)) {
            return false;
        }
        synchronized (this.mLock) {
            if (this.mStartedUsers.get(userId) == uss && uss.state == 1) {
                uss.mUnlockProgress.start();
                uss.mUnlockProgress.setProgress(5, this.mInjector.getContext().getString(R.string.autofill_picker_some_suggestions));
                if (this.mInjector.isMegaQuickBootEnabled()) {
                    this.mInjector.getUserManager().onBeforeUnlockUser(userId);
                    synchronized (this.mLock) {
                        if (!uss.setState(1, 2)) {
                            return true;
                        }
                        this.mInjector.getUserManagerInternal().setUserState(userId, uss.state);
                        uss.mUnlockProgress.setProgress(20);
                        this.mHandler.obtainMessage(100, userId, 0, uss).sendToTarget();
                    }
                } else {
                    FgThread.getHandler().post(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$stQk1028ON105v_u-VMykVjcxLk
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$finishUserUnlocking$1$UserController(userId, uss);
                        }
                    });
                }
                return true;
            }
            return false;
        }
    }

    public /* synthetic */ void lambda$finishUserUnlocking$1$UserController(int userId, UserState uss) {
        if (!StorageManager.isUserKeyUnlocked(userId)) {
            Slog.w(TAG, "User key got locked unexpectedly, leaving user locked.");
            return;
        }
        this.mInjector.getUserManager().onBeforeUnlockUser(userId);
        synchronized (this.mLock) {
            if (uss.setState(1, 2)) {
                this.mInjector.getUserManagerInternal().setUserState(userId, uss.state);
                uss.mUnlockProgress.setProgress(20);
                this.mHandler.obtainMessage(100, userId, 0, uss).sendToTarget();
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x011f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void finishUserUnlocked(final com.android.server.am.UserState r38) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.UserController.finishUserUnlocked(com.android.server.am.UserState):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0170 */
    /* JADX INFO: renamed from: finishUserUnlockedCompleted, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$finishUserUnlocked$2$UserController(com.android.server.am.UserState r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.UserController.lambda$finishUserUnlocked$2$UserController(com.android.server.am.UserState):void");
    }

    /* JADX INFO: renamed from: com.android.server.am.UserController$3, reason: invalid class name */
    class AnonymousClass3 implements UserState.KeyEvictedCallback {
        final /* synthetic */ boolean val$foreground;

        AnonymousClass3(boolean z) {
            this.val$foreground = z;
        }

        @Override // com.android.server.am.UserState.KeyEvictedCallback
        public void keyEvicted(final int userId) {
            Handler handler = UserController.this.mHandler;
            final boolean z = this.val$foreground;
            handler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$3$A5KxB7wo13M_s4_guYgNtw-Vi9U
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$keyEvicted$0$UserController$3(userId, z);
                }
            });
        }

        public /* synthetic */ void lambda$keyEvicted$0$UserController$3(int userId, boolean foreground) {
            UserController.this.startUser(userId, foreground);
        }
    }

    int restartUser(int userId, boolean foreground) {
        return stopUser(userId, true, false, null, new AnonymousClass3(foreground));
    }

    int stopUser(int userId, boolean force, boolean allowDelayedLocking, IStopUserCallback stopUserCallback, UserState.KeyEvictedCallback keyEvictedCallback) {
        int iStopUsersLU;
        checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "stopUser");
        if (userId < 0 || userId == 0) {
            throw new IllegalArgumentException("Can't stop system user " + userId);
        }
        enforceShellRestriction("no_debugging_features", userId);
        synchronized (this.mLock) {
            iStopUsersLU = stopUsersLU(userId, force, allowDelayedLocking, stopUserCallback, keyEvictedCallback);
        }
        return iStopUsersLU;
    }

    private int stopUsersLU(int userId, boolean force, boolean allowDelayedLocking, IStopUserCallback stopUserCallback, UserState.KeyEvictedCallback keyEvictedCallback) {
        if (userId == 0) {
            return -3;
        }
        if (isCurrentUserLU(userId)) {
            return -2;
        }
        int[] usersToStop = getUsersToStopLU(userId);
        for (int relatedUserId : usersToStop) {
            if (relatedUserId == 0 || isCurrentUserLU(relatedUserId)) {
                if (force) {
                    Slog.i(TAG, "Force stop user " + userId + ". Related users will not be stopped");
                    stopSingleUserLU(userId, allowDelayedLocking, stopUserCallback, keyEvictedCallback);
                    return 0;
                }
                return -4;
            }
        }
        int i = usersToStop.length;
        for (int i2 = 0; i2 < i; i2++) {
            int userIdToStop = usersToStop[i2];
            UserState.KeyEvictedCallback keyEvictedCallback2 = null;
            IStopUserCallback iStopUserCallback = userIdToStop == userId ? stopUserCallback : null;
            if (userIdToStop == userId) {
                keyEvictedCallback2 = keyEvictedCallback;
            }
            stopSingleUserLU(userIdToStop, allowDelayedLocking, iStopUserCallback, keyEvictedCallback2);
        }
        return 0;
    }

    private void stopSingleUserLU(final int userId, final boolean allowDelayedLocking, final IStopUserCallback stopUserCallback, UserState.KeyEvictedCallback keyEvictedCallback) {
        ArrayList<UserState.KeyEvictedCallback> keyEvictedCallbacks;
        final UserState uss = this.mStartedUsers.get(userId);
        if (uss == null) {
            if (this.mDelayUserDataLocking) {
                if (allowDelayedLocking && keyEvictedCallback != null) {
                    Slog.wtf(TAG, "allowDelayedLocking set with KeyEvictedCallback, ignore it and lock user:" + userId, new RuntimeException());
                    allowDelayedLocking = false;
                }
                if (!allowDelayedLocking && this.mLastActiveUsers.remove(Integer.valueOf(userId))) {
                    if (keyEvictedCallback != null) {
                        keyEvictedCallbacks = new ArrayList<>(1);
                        keyEvictedCallbacks.add(keyEvictedCallback);
                    } else {
                        keyEvictedCallbacks = null;
                    }
                    dispatchUserLocking(userId, keyEvictedCallbacks);
                }
            }
            if (stopUserCallback != null) {
                this.mHandler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$yTQdmwNGWO1mpSvQqKE0-s_S4DA
                    @Override // java.lang.Runnable
                    public final void run() {
                        stopUserCallback.userStopped(userId);
                    }
                });
                return;
            }
            return;
        }
        if (stopUserCallback != null) {
            uss.mStopCallbacks.add(stopUserCallback);
        }
        if (keyEvictedCallback != null) {
            uss.mKeyEvictedCallbacks.add(keyEvictedCallback);
        }
        if (uss.state != 4 && uss.state != 5) {
            uss.setState(4);
            this.mInjector.getUserManagerInternal().setUserState(userId, uss.state);
            updateStartedUserArrayLU();
            this.mHandler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$vXa3kyVpOzxFKNxTttL5Y7OY78M
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$stopSingleUserLU$4$UserController(userId, uss, allowDelayedLocking);
                }
            });
        }
    }

    public /* synthetic */ void lambda$stopSingleUserLU$4$UserController(int userId, UserState uss, boolean allowDelayyLockingCopied) throws Throwable {
        Intent stoppingIntent = new Intent("android.intent.action.USER_STOPPING");
        stoppingIntent.addFlags(1073741824);
        stoppingIntent.putExtra("android.intent.extra.user_handle", userId);
        stoppingIntent.putExtra("android.intent.extra.SHUTDOWN_USERSPACE_ONLY", true);
        IIntentReceiver stoppingReceiver = new AnonymousClass4(userId, uss, allowDelayyLockingCopied);
        this.mInjector.clearBroadcastQueueForUser(userId);
        this.mInjector.broadcastIntent(stoppingIntent, null, stoppingReceiver, 0, null, null, new String[]{"android.permission.INTERACT_ACROSS_USERS"}, -1, null, true, false, ActivityManagerService.MY_PID, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
    }

    /* JADX INFO: renamed from: com.android.server.am.UserController$4, reason: invalid class name */
    class AnonymousClass4 extends IIntentReceiver.Stub {
        final /* synthetic */ boolean val$allowDelayyLockingCopied;
        final /* synthetic */ int val$userId;
        final /* synthetic */ UserState val$uss;

        AnonymousClass4(int i, UserState userState, boolean z) {
            this.val$userId = i;
            this.val$uss = userState;
            this.val$allowDelayyLockingCopied = z;
        }

        public /* synthetic */ void lambda$performReceive$0$UserController$4(int userId, UserState uss, boolean allowDelayyLockingCopied) throws Throwable {
            UserController.this.finishUserStopping(userId, uss, allowDelayyLockingCopied);
        }

        public void performReceive(Intent intent, int resultCode, String data, Bundle extras, boolean ordered, boolean sticky, int sendingUser) {
            Handler handler = UserController.this.mHandler;
            final int i = this.val$userId;
            final UserState userState = this.val$uss;
            final boolean z = this.val$allowDelayyLockingCopied;
            handler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$4$7fssIH82Tl96VpliLXcseb8VbZ8
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$performReceive$0$UserController$4(i, userState, z);
                }
            });
        }
    }

    void finishUserStopping(int userId, final UserState uss, final boolean allowDelayedLocking) throws Throwable {
        EventLog.writeEvent(EventLogTags.UC_FINISH_USER_STOPPING, userId);
        Intent shutdownIntent = new Intent("android.intent.action.ACTION_SHUTDOWN");
        IIntentReceiver shutdownReceiver = new IIntentReceiver.Stub() { // from class: com.android.server.am.UserController.5
            public void performReceive(Intent intent, int resultCode, String data, Bundle extras, boolean ordered, boolean sticky, int sendingUser) {
                UserController.this.mHandler.post(new Runnable() { // from class: com.android.server.am.UserController.5.1
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        UserController.this.finishUserStopped(uss, allowDelayedLocking);
                    }
                });
            }
        };
        synchronized (this.mLock) {
            if (uss.state != 4) {
                return;
            }
            uss.setState(5);
            this.mInjector.getUserManagerInternal().setUserState(userId, uss.state);
            this.mInjector.batteryStatsServiceNoteEvent(16391, Integer.toString(userId), userId);
            this.mInjector.getSystemServiceManager().stopUser(userId);
            this.mInjector.broadcastIntent(shutdownIntent, null, shutdownReceiver, 0, null, null, null, -1, null, true, false, ActivityManagerService.MY_PID, 1000, Binder.getCallingUid(), Binder.getCallingPid(), userId);
        }
    }

    void finishUserStopped(UserState uss, boolean allowDelayedLocking) throws Throwable {
        ArrayList<IStopUserCallback> stopCallbacks;
        ArrayList<UserState.KeyEvictedCallback> keyEvictedCallbacks;
        boolean stopped;
        int userId = uss.mHandle.getIdentifier();
        EventLog.writeEvent(EventLogTags.UC_FINISH_USER_STOPPED, userId);
        boolean lockUser = true;
        int userIdToLock = userId;
        synchronized (this.mLock) {
            stopCallbacks = new ArrayList<>(uss.mStopCallbacks);
            keyEvictedCallbacks = new ArrayList<>(uss.mKeyEvictedCallbacks);
            if (this.mStartedUsers.get(userId) != uss || uss.state != 5) {
                stopped = false;
            } else {
                stopped = true;
                this.mStartedUsers.remove(userId);
                this.mUserLru.remove(Integer.valueOf(userId));
                updateStartedUserArrayLU();
                if (allowDelayedLocking && !keyEvictedCallbacks.isEmpty()) {
                    Slog.wtf(TAG, "Delayed locking enabled while KeyEvictedCallbacks not empty, userId:" + userId + " callbacks:" + keyEvictedCallbacks);
                    allowDelayedLocking = false;
                }
                userIdToLock = updateUserToLockLU(userId, allowDelayedLocking);
                if (userIdToLock == -10000) {
                    lockUser = false;
                }
            }
        }
        if (stopped) {
            this.mInjector.getUserManagerInternal().removeUserState(userId);
            this.mInjector.activityManagerOnUserStopped(userId);
            forceStopUser(userId, "finish user");
        }
        for (IStopUserCallback callback : stopCallbacks) {
            if (stopped) {
                try {
                    callback.userStopped(userId);
                } catch (RemoteException e) {
                }
            } else {
                callback.userStopAborted(userId);
            }
        }
        if (stopped) {
            this.mInjector.systemServiceManagerCleanupUser(userId);
            this.mInjector.stackSupervisorRemoveUser(userId);
            UserInfo userInfo = getUserInfo(userId);
            if (userInfo.isEphemeral() && !userInfo.preCreated) {
                this.mInjector.getUserManager().removeUserEvenWhenDisallowed(userId);
            }
            if (!lockUser) {
                return;
            }
            dispatchUserLocking(userIdToLock, keyEvictedCallbacks);
        }
    }

    private void dispatchUserLocking(final int userId, final List<UserState.KeyEvictedCallback> keyEvictedCallbacks) {
        FgThread.getHandler().post(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$-_1Pr1qtyefHkWfekIE79EzHrQc
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dispatchUserLocking$5$UserController(userId, keyEvictedCallbacks);
            }
        });
    }

    public /* synthetic */ void lambda$dispatchUserLocking$5$UserController(int userId, List keyEvictedCallbacks) {
        synchronized (this.mLock) {
            if (this.mStartedUsers.get(userId) != null) {
                Slog.w(TAG, "User was restarted, skipping key eviction");
                return;
            }
            try {
                this.mInjector.getStorageManager().lockUserKey(userId);
                if (keyEvictedCallbacks == null) {
                    return;
                }
                for (int i = 0; i < keyEvictedCallbacks.size(); i++) {
                    ((UserState.KeyEvictedCallback) keyEvictedCallbacks.get(i)).keyEvicted(userId);
                }
            } catch (RemoteException re) {
                throw re.rethrowAsRuntimeException();
            }
        }
    }

    private int updateUserToLockLU(int userId, boolean allowDelayedLocking) {
        if (!this.mDelayUserDataLocking || !allowDelayedLocking || getUserInfo(userId).isEphemeral() || hasUserRestriction("no_run_in_background", userId)) {
            return userId;
        }
        this.mLastActiveUsers.remove(Integer.valueOf(userId));
        this.mLastActiveUsers.add(0, Integer.valueOf(userId));
        int totalUnlockedUsers = this.mStartedUsers.size() + this.mLastActiveUsers.size();
        if (totalUnlockedUsers > this.mMaxRunningUsers) {
            ArrayList<Integer> arrayList = this.mLastActiveUsers;
            int userIdToLock = arrayList.get(arrayList.size() - 1).intValue();
            ArrayList<Integer> arrayList2 = this.mLastActiveUsers;
            arrayList2.remove(arrayList2.size() - 1);
            Slog.i(TAG, "finishUserStopped, stopping user:" + userId + " lock user:" + userIdToLock);
            return userIdToLock;
        }
        Slog.i(TAG, "finishUserStopped, user:" + userId + ",skip locking");
        return -10000;
    }

    private int[] getUsersToStopLU(int userId) {
        int startedUsersSize = this.mStartedUsers.size();
        IntArray userIds = new IntArray();
        userIds.add(userId);
        int userGroupId = this.mUserProfileGroupIds.get(userId, -10000);
        for (int i = 0; i < startedUsersSize; i++) {
            UserState uss = this.mStartedUsers.valueAt(i);
            int startedUserId = uss.mHandle.getIdentifier();
            int startedUserGroupId = this.mUserProfileGroupIds.get(startedUserId, -10000);
            boolean sameGroup = userGroupId != -10000 && userGroupId == startedUserGroupId;
            boolean sameUserId = startedUserId == userId;
            if (sameGroup && !sameUserId) {
                userIds.add(startedUserId);
            }
        }
        return userIds.toArray();
    }

    private void forceStopUser(int userId, String reason) throws Throwable {
        this.mInjector.activityManagerForceStopPackage(userId, reason);
        Intent intent = new Intent("android.intent.action.USER_STOPPED");
        intent.addFlags(1342177280);
        intent.putExtra("android.intent.extra.user_handle", userId);
        this.mInjector.broadcastIntent(intent, null, null, 0, null, null, null, -1, null, false, false, ActivityManagerService.MY_PID, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
    }

    private void stopGuestOrEphemeralUserIfBackground(int oldUserId) {
        synchronized (this.mLock) {
            UserState oldUss = this.mStartedUsers.get(oldUserId);
            if (oldUserId != 0 && oldUserId != this.mCurrentUserId && oldUss != null && oldUss.state != 4 && oldUss.state != 5) {
                UserInfo userInfo = getUserInfo(oldUserId);
                if (userInfo.isEphemeral()) {
                    ((UserManagerInternal) LocalServices.getService(UserManagerInternal.class)).onEphemeralUserStop(oldUserId);
                }
                if (userInfo.isGuest() || userInfo.isEphemeral()) {
                    synchronized (this.mLock) {
                        stopUsersLU(oldUserId, true, false, null, null);
                    }
                }
            }
        }
    }

    void scheduleStartProfiles() {
        FgThread.getHandler().post(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$O8GIT-HtdCM0CCjYajdW2AFcrWQ
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleStartProfiles$6$UserController();
            }
        });
    }

    public /* synthetic */ void lambda$scheduleStartProfiles$6$UserController() {
        if (!this.mHandler.hasMessages(40)) {
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(40), 1000L);
        }
    }

    void startProfiles() {
        int currentUserId = getCurrentUserId();
        List<UserInfo> profiles = this.mInjector.getUserManager().getProfiles(currentUserId, false);
        List<UserInfo> profilesToStart = new ArrayList<>(profiles.size());
        for (UserInfo user : profiles) {
            if ((user.flags & 16) == 16 && user.id != currentUserId && !user.isQuietModeEnabled()) {
                profilesToStart.add(user);
            }
        }
        int profilesToStartSize = profilesToStart.size();
        int i = 0;
        while (i < profilesToStartSize && i < getMaxRunningUsers() - 1) {
            startUser(profilesToStart.get(i).id, false);
            i++;
        }
        if (i < profilesToStartSize) {
            Slog.w(TAG, "More profiles than MAX_RUNNING_USERS");
        }
    }

    boolean startUser(int userId, boolean foreground) {
        return lambda$startUserInternal$7$UserController(userId, foreground, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: startUser, reason: merged with bridge method [inline-methods] */
    public boolean lambda$startUserInternal$7$UserController(int userId, boolean foreground, IProgressListener unlockListener) {
        checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "startUser");
        TimingsTraceAndSlog t = new TimingsTraceAndSlog();
        StringBuilder sb = new StringBuilder();
        sb.append("startUser-");
        sb.append(userId);
        sb.append("-");
        sb.append(foreground ? "fg" : "bg");
        t.traceBegin(sb.toString());
        try {
            return startUserInternal(userId, foreground, unlockListener, t);
        } finally {
            t.traceEnd();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x03c7 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x03d8 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean startUserInternal(final int r35, final boolean r36, final android.os.IProgressListener r37, com.android.server.utils.TimingsTraceAndSlog r38) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 991
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.UserController.startUserInternal(int, boolean, android.os.IProgressListener, com.android.server.utils.TimingsTraceAndSlog):boolean");
    }

    private boolean isCallingOnHandlerThread() {
        return Looper.myLooper() == this.mHandler.getLooper();
    }

    void startUserInForeground(int targetUserId) {
        boolean success = startUser(targetUserId, true);
        if (!success) {
            this.mInjector.getWindowManager().setSwitchingUser(false);
        }
    }

    boolean unlockUser(int userId, byte[] token, byte[] secret, IProgressListener listener) {
        checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "unlockUser");
        EventLog.writeEvent(EventLogTags.UC_UNLOCK_USER, userId);
        long binderToken = Binder.clearCallingIdentity();
        try {
            return unlockUserCleared(userId, token, secret, listener);
        } finally {
            Binder.restoreCallingIdentity(binderToken);
        }
    }

    private boolean maybeUnlockUser(int userId) {
        return unlockUserCleared(userId, null, null, null);
    }

    private static void notifyFinished(int userId, IProgressListener listener) {
        if (listener == null) {
            return;
        }
        try {
            listener.onFinished(userId, (Bundle) null);
        } catch (RemoteException e) {
        }
    }

    private boolean unlockUserCleared(int userId, byte[] token, byte[] secret, IProgressListener listener) {
        UserState uss;
        int i;
        int[] userIds;
        if (!StorageManager.isUserKeyUnlocked(userId)) {
            UserInfo userInfo = getUserInfo(userId);
            IStorageManager storageManager = this.mInjector.getStorageManager();
            try {
                storageManager.unlockUserKey(userId, userInfo.serialNumber, token, secret);
            } catch (RemoteException | RuntimeException e) {
                Slog.w(TAG, "Failed to unlock: " + e.getMessage());
            }
        }
        synchronized (this.mLock) {
            uss = this.mStartedUsers.get(userId);
            if (uss != null) {
                uss.mUnlockProgress.addListener(listener);
                uss.tokenProvided = token != null;
            }
        }
        if (uss == null) {
            notifyFinished(userId, listener);
            return false;
        }
        if (!finishUserUnlocking(uss)) {
            notifyFinished(userId, listener);
            return false;
        }
        synchronized (this.mLock) {
            userIds = new int[this.mStartedUsers.size()];
            for (int i2 = 0; i2 < userIds.length; i2++) {
                userIds[i2] = this.mStartedUsers.keyAt(i2);
            }
        }
        for (int testUserId : userIds) {
            UserInfo parent = this.mInjector.getUserManager().getProfileParent(testUserId);
            if (parent != null && parent.id == userId && testUserId != userId) {
                Slog.d(TAG, "User " + testUserId + " (parent " + parent.id + "): attempting unlock because parent was just unlocked");
                maybeUnlockUser(testUserId);
            }
        }
        return true;
    }

    boolean switchUser(int targetUserId) {
        enforceShellRestriction("no_debugging_features", targetUserId);
        EventLog.writeEvent(EventLogTags.UC_SWITCH_USER, targetUserId);
        int currentUserId = getCurrentUserId();
        UserInfo targetUserInfo = getUserInfo(targetUserId);
        if (targetUserId == currentUserId) {
            Slog.i(TAG, "user #" + targetUserId + " is already the current user");
            return true;
        }
        if (targetUserInfo == null) {
            Slog.w(TAG, "No user info for user #" + targetUserId);
            return false;
        }
        if (!targetUserInfo.supportsSwitchTo()) {
            Slog.w(TAG, "Cannot switch to User #" + targetUserId + ": not supported");
            return false;
        }
        if (targetUserInfo.isManagedProfile()) {
            Slog.w(TAG, "Cannot switch to User #" + targetUserId + ": not a full user");
            return false;
        }
        synchronized (this.mLock) {
            if (!this.mInitialized) {
                Slog.e(TAG, "Cannot switch to User #" + targetUserId + ": UserController not ready yet");
                return false;
            }
            this.mTargetUserId = targetUserId;
            boolean userSwitchUiEnabled = this.mUserSwitchUiEnabled;
            if (userSwitchUiEnabled) {
                UserInfo currentUserInfo = getUserInfo(currentUserId);
                Pair<UserInfo, UserInfo> userNames = new Pair<>(currentUserInfo, targetUserInfo);
                this.mUiHandler.removeMessages(1000);
                this.mUiHandler.sendMessage(this.mHandler.obtainMessage(1000, userNames));
            } else {
                this.mHandler.removeMessages(START_USER_SWITCH_FG_MSG);
                Handler handler = this.mHandler;
                handler.sendMessage(handler.obtainMessage(START_USER_SWITCH_FG_MSG, targetUserId, 0));
            }
            return true;
        }
    }

    private void showUserSwitchDialog(Pair<UserInfo, UserInfo> fromToUserPair) {
        this.mInjector.showUserSwitchingDialog((UserInfo) fromToUserPair.first, (UserInfo) fromToUserPair.second, getSwitchingFromSystemUserMessage(), getSwitchingToSystemUserMessage());
    }

    private void dispatchForegroundProfileChanged(int userId) {
        int observerCount = this.mUserSwitchObservers.beginBroadcast();
        for (int i = 0; i < observerCount; i++) {
            try {
                this.mUserSwitchObservers.getBroadcastItem(i).onForegroundProfileSwitch(userId);
            } catch (RemoteException e) {
            }
        }
        this.mUserSwitchObservers.finishBroadcast();
    }

    void dispatchUserSwitchComplete(int userId) {
        this.mInjector.getWindowManager().setSwitchingUser(false);
        int observerCount = this.mUserSwitchObservers.beginBroadcast();
        for (int i = 0; i < observerCount; i++) {
            try {
                this.mUserSwitchObservers.getBroadcastItem(i).onUserSwitchComplete(userId);
            } catch (RemoteException e) {
            }
        }
        this.mUserSwitchObservers.finishBroadcast();
    }

    private void dispatchLockedBootComplete(int userId) {
        int observerCount = this.mUserSwitchObservers.beginBroadcast();
        for (int i = 0; i < observerCount; i++) {
            try {
                this.mUserSwitchObservers.getBroadcastItem(i).onLockedBootComplete(userId);
            } catch (RemoteException e) {
            }
        }
        this.mUserSwitchObservers.finishBroadcast();
    }

    private void stopBackgroundUsersIfEnforced(int oldUserId) {
        if (oldUserId == 0) {
            return;
        }
        boolean disallowRunInBg = hasUserRestriction("no_run_in_background", oldUserId) || isDelayUserDataLockingEnabled();
        if (!disallowRunInBg) {
            return;
        }
        synchronized (this.mLock) {
            stopUsersLU(oldUserId, false, true, null, null);
        }
    }

    private void timeoutUserSwitch(UserState uss, int oldUserId, int newUserId) {
        synchronized (this.mLock) {
            Slog.e(TAG, "User switch timeout: from " + oldUserId + " to " + newUserId);
            this.mTimeoutUserSwitchCallbacks = this.mCurWaitingUserSwitchCallbacks;
            this.mHandler.removeMessages(USER_SWITCH_CALLBACKS_TIMEOUT_MSG);
            sendContinueUserSwitchLU(uss, oldUserId, newUserId);
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(USER_SWITCH_CALLBACKS_TIMEOUT_MSG, oldUserId, newUserId), 5000L);
        }
    }

    private void timeoutUserSwitchCallbacks(int oldUserId, int newUserId) {
        synchronized (this.mLock) {
            if (this.mTimeoutUserSwitchCallbacks != null && !this.mTimeoutUserSwitchCallbacks.isEmpty()) {
                Slog.wtf(TAG, "User switch timeout: from " + oldUserId + " to " + newUserId + ". Observers that didn't respond: " + this.mTimeoutUserSwitchCallbacks);
                this.mTimeoutUserSwitchCallbacks = null;
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0098 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x00b2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void dispatchUserSwitch(final com.android.server.am.UserState r20, final int r21, final int r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.UserController.dispatchUserSwitch(com.android.server.am.UserState, int, int):void");
    }

    void sendContinueUserSwitchLU(UserState uss, int oldUserId, int newUserId) {
        this.mCurWaitingUserSwitchCallbacks = null;
        this.mHandler.removeMessages(30);
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(20, oldUserId, newUserId, uss));
    }

    void continueUserSwitch(UserState uss, int oldUserId, int newUserId) {
        EventLog.writeEvent(EventLogTags.UC_CONTINUE_USER_SWITCH, Integer.valueOf(oldUserId), Integer.valueOf(newUserId));
        if (isUserSwitchUiEnabled()) {
            this.mInjector.getWindowManager().stopFreezingScreen();
        }
        uss.switching = false;
        this.mHandler.removeMessages(80);
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(80, newUserId, 0));
        stopGuestOrEphemeralUserIfBackground(oldUserId);
        stopBackgroundUsersIfEnforced(oldUserId);
    }

    private void moveUserToForeground(UserState uss, int oldUserId, int newUserId) {
        boolean homeInFront = this.mInjector.stackSupervisorSwitchUser(newUserId, uss);
        if (homeInFront) {
            this.mInjector.startHomeActivity(newUserId, "moveUserToForeground");
        } else {
            this.mInjector.stackSupervisorResumeFocusedStackTopActivity();
        }
        EventLogTags.writeAmSwitchUser(newUserId);
        sendUserSwitchBroadcasts(oldUserId, newUserId);
    }

    void sendUserSwitchBroadcasts(int oldUserId, int newUserId) {
        String str;
        String str2;
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long ident = Binder.clearCallingIdentity();
        String str3 = "android.intent.extra.USER";
        String str4 = "android.intent.extra.user_handle";
        int i = 1342177280;
        if (oldUserId >= 0) {
            try {
                List<UserInfo> profiles = this.mInjector.getUserManager().getProfiles(oldUserId, false);
                int count = profiles.size();
                int i2 = 0;
                while (i2 < count) {
                    int profileUserId = profiles.get(i2).id;
                    Intent intent = new Intent("android.intent.action.USER_BACKGROUND");
                    intent.addFlags(i);
                    intent.putExtra(str4, profileUserId);
                    intent.putExtra(str3, UserHandle.of(profileUserId));
                    this.mInjector.broadcastIntent(intent, null, null, 0, null, null, null, -1, null, false, false, ActivityManagerService.MY_PID, 1000, callingUid, callingPid, profileUserId);
                    i2++;
                    count = count;
                    profiles = profiles;
                    str4 = str4;
                    str3 = str3;
                    i = 1342177280;
                }
                str = str4;
                str2 = str3;
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        } else {
            str = "android.intent.extra.user_handle";
            str2 = "android.intent.extra.USER";
        }
        if (newUserId >= 0) {
            List<UserInfo> profiles2 = this.mInjector.getUserManager().getProfiles(newUserId, false);
            int count2 = profiles2.size();
            int i3 = 0;
            while (i3 < count2) {
                int profileUserId2 = profiles2.get(i3).id;
                Intent intent2 = new Intent("android.intent.action.USER_FOREGROUND");
                intent2.addFlags(1342177280);
                String str5 = str;
                intent2.putExtra(str5, profileUserId2);
                String str6 = str2;
                intent2.putExtra(str6, UserHandle.of(profileUserId2));
                this.mInjector.broadcastIntent(intent2, null, null, 0, null, null, null, -1, null, false, false, ActivityManagerService.MY_PID, 1000, callingUid, callingPid, profileUserId2);
                i3++;
                count2 = count2;
                str2 = str6;
                str = str5;
            }
            Intent intent3 = new Intent("android.intent.action.USER_SWITCHED");
            intent3.addFlags(1342177280);
            intent3.putExtra(str, newUserId);
            intent3.putExtra(str2, UserHandle.of(newUserId));
            this.mInjector.broadcastIntent(intent3, null, null, 0, null, null, new String[]{"android.permission.MANAGE_USERS"}, -1, null, false, false, ActivityManagerService.MY_PID, 1000, callingUid, callingPid, -1);
        }
    }

    int handleIncomingUser(int callingPid, int callingUid, int userId, boolean allowAll, int allowMode, String name, String callerPackage) {
        boolean allow;
        int callingUserId = UserHandle.getUserId(callingUid);
        if (callingUserId == userId) {
            return userId;
        }
        int targetUserId = unsafeConvertIncomingUser(userId);
        if (callingUid != 0 && callingUid != 1000) {
            boolean isSameProfileGroup = isSameProfileGroup(callingUserId, targetUserId);
            if ((this.mInjector.isCallerRecents(callingUid) && isSameProfileGroup(callingUserId, targetUserId)) || this.mInjector.checkComponentPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingPid, callingUid, -1, true) == 0) {
                allow = true;
            } else if (allowMode == 2) {
                allow = false;
            } else if (canInteractWithAcrossProfilesPermission(allowMode, isSameProfileGroup, callingPid, callingUid, callerPackage)) {
                allow = true;
            } else if (this.mInjector.checkComponentPermission("android.permission.INTERACT_ACROSS_USERS", callingPid, callingUid, -1, true) != 0) {
                allow = false;
            } else if (allowMode == 0) {
                allow = true;
            } else if (allowMode == 1 || allowMode == 3) {
                allow = isSameProfileGroup;
            } else {
                throw new IllegalArgumentException("Unknown mode: " + allowMode);
            }
            if (!allow) {
                if (userId == -3) {
                    targetUserId = callingUserId;
                } else {
                    StringBuilder builder = new StringBuilder(128);
                    builder.append("Permission Denial: ");
                    builder.append(name);
                    if (callerPackage != null) {
                        builder.append(" from ");
                        builder.append(callerPackage);
                    }
                    builder.append(" asks to run as user ");
                    builder.append(userId);
                    builder.append(" but is calling from uid ");
                    UserHandle.formatUid(builder, callingUid);
                    builder.append("; this requires ");
                    builder.append("android.permission.INTERACT_ACROSS_USERS_FULL");
                    if (allowMode != 2) {
                        if (allowMode == 0 || isSameProfileGroup) {
                            builder.append(" or ");
                            builder.append("android.permission.INTERACT_ACROSS_USERS");
                        }
                        if (isSameProfileGroup && allowMode == 3) {
                            builder.append(" or ");
                            builder.append("android.permission.INTERACT_ACROSS_PROFILES");
                        }
                    }
                    String msg = builder.toString();
                    Slog.w(TAG, msg);
                    throw new SecurityException(msg);
                }
            }
        }
        if (!allowAll) {
            ensureNotSpecialUser(targetUserId);
        }
        if (callingUid == 2000 && targetUserId >= 0 && hasUserRestriction("no_debugging_features", targetUserId)) {
            throw new SecurityException("Shell does not have permission to access user " + targetUserId + "\n " + Debug.getCallers(3));
        }
        return targetUserId;
    }

    private boolean canInteractWithAcrossProfilesPermission(int allowMode, boolean isSameProfileGroup, int callingPid, int callingUid, String callingPackage) {
        return allowMode == 3 && isSameProfileGroup && PermissionChecker.checkPermissionForPreflight(this.mInjector.getContext(), "android.permission.INTERACT_ACROSS_PROFILES", callingPid, callingUid, callingPackage) == 0;
    }

    int unsafeConvertIncomingUser(int userId) {
        return (userId == -2 || userId == -3) ? getCurrentUserId() : userId;
    }

    void ensureNotSpecialUser(int userId) {
        if (userId >= 0) {
            return;
        }
        throw new IllegalArgumentException("Call does not support special user #" + userId);
    }

    void registerUserSwitchObserver(IUserSwitchObserver observer, String name) {
        Objects.requireNonNull(name, "Observer name cannot be null");
        checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "registerUserSwitchObserver");
        this.mUserSwitchObservers.register(observer, name);
    }

    void sendForegroundProfileChanged(int userId) {
        this.mHandler.removeMessages(70);
        this.mHandler.obtainMessage(70, userId, 0).sendToTarget();
    }

    void unregisterUserSwitchObserver(IUserSwitchObserver observer) {
        this.mUserSwitchObservers.unregister(observer);
    }

    UserState getStartedUserState(int userId) {
        UserState userState;
        synchronized (this.mLock) {
            userState = this.mStartedUsers.get(userId);
        }
        return userState;
    }

    boolean hasStartedUserState(int userId) {
        boolean z;
        synchronized (this.mLock) {
            z = this.mStartedUsers.get(userId) != null;
        }
        return z;
    }

    private void updateStartedUserArrayLU() {
        int num = 0;
        for (int i = 0; i < this.mStartedUsers.size(); i++) {
            UserState uss = this.mStartedUsers.valueAt(i);
            if (uss.state != 4 && uss.state != 5) {
                num++;
            }
        }
        this.mStartedUserArray = new int[num];
        int num2 = 0;
        for (int i2 = 0; i2 < this.mStartedUsers.size(); i2++) {
            UserState uss2 = this.mStartedUsers.valueAt(i2);
            if (uss2.state != 4 && uss2.state != 5) {
                this.mStartedUserArray[num2] = this.mStartedUsers.keyAt(i2);
                num2++;
            }
        }
    }

    void sendBootCompleted(IIntentReceiver resultTo) {
        boolean systemUserFinishedBooting;
        SparseArray<UserState> startedUsers;
        synchronized (this.mLock) {
            systemUserFinishedBooting = this.mCurrentUserId != 0;
            startedUsers = this.mStartedUsers.clone();
        }
        for (int i = 0; i < startedUsers.size(); i++) {
            UserState uss = startedUsers.valueAt(i);
            if (systemUserFinishedBooting && uss.mHandle.isSystem()) {
                Slog.d(TAG, "sendBootCompleted(): skipping on non-current system user");
            } else {
                finishUserBoot(uss, resultTo);
            }
        }
    }

    public void sendBootCompletedDelay() {
        SparseArray<UserState> startedUsers;
        Binder.getCallingUid();
        Binder.getCallingPid();
        synchronized (this.mLock) {
            startedUsers = this.mStartedUsers.clone();
        }
        for (int i = 0; i < startedUsers.size(); i++) {
            UserState uss = startedUsers.valueAt(i);
            int userId = uss.mHandle.getIdentifier();
            final Intent bootIntent_delay1 = new Intent("android.intent.action.BOOT_COMPLETED_DELAY1", (Uri) null);
            bootIntent_delay1.putExtra("android.intent.extra.user_handle", userId);
            bootIntent_delay1.addFlags(-1996488704);
            FgThread.getHandler().postDelayed(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$hAYyJAvRdGPf46RJ9h8IKv8G1F4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendBootCompletedDelay$8$UserController(bootIntent_delay1);
                }
            }, 35000L);
            final Intent bootIntent_delay2 = new Intent("android.intent.action.BOOT_COMPLETED_DELAY2", (Uri) null);
            bootIntent_delay2.putExtra("android.intent.extra.user_handle", userId);
            bootIntent_delay2.addFlags(-1996488704);
            FgThread.getHandler().postDelayed(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$mPteqomyPxm70__4dhqez59d7Bc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendBootCompletedDelay$9$UserController(bootIntent_delay2);
                }
            }, 60000L);
            final Intent bootIntent_delay3 = new Intent("android.intent.action.BOOT_COMPLETED_DELAY3", (Uri) null);
            bootIntent_delay3.putExtra("android.intent.extra.user_handle", userId);
            bootIntent_delay3.addFlags(-1996488704);
            FgThread.getHandler().postDelayed(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$VWT-5IjB8oyFI6FVV_7O00LXqKw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendBootCompletedDelay$10$UserController(bootIntent_delay3);
                }
            }, JobStatus.DEFAULT_TRIGGER_MAX_DELAY);
        }
    }

    public /* synthetic */ void lambda$sendBootCompletedDelay$8$UserController(Intent bootIntent_delay1) {
        if (this.mInjector.getContext() != null) {
            this.mInjector.getContext().sendBroadcastAsUser(bootIntent_delay1, UserHandle.OWNER);
        }
        Slog.i(TAG, "set boot delay prop: sys.boot_completed_delay1");
        SystemProperties.set("sys.boot_completed_delay1", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
    }

    public /* synthetic */ void lambda$sendBootCompletedDelay$9$UserController(Intent bootIntent_delay2) {
        if (this.mInjector.getContext() != null) {
            this.mInjector.getContext().sendBroadcastAsUser(bootIntent_delay2, UserHandle.OWNER);
        }
        Slog.i(TAG, "set boot delay prop: sys.boot_completed_delay2");
        SystemProperties.set("sys.boot_completed_delay2", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
    }

    public /* synthetic */ void lambda$sendBootCompletedDelay$10$UserController(Intent bootIntent_delay3) {
        if (this.mInjector.getContext() != null) {
            this.mInjector.getContext().sendBroadcastAsUser(bootIntent_delay3, UserHandle.OWNER);
        }
        Slog.i(TAG, "set boot delay prop: sys.boot_completed_delay3");
        SystemProperties.set("sys.boot_completed_delay3", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
    }

    void onSystemReady() {
        updateCurrentProfileIds();
        this.mInjector.reportCurWakefulnessUsageEvent();
    }

    private void updateCurrentProfileIds() {
        List<UserInfo> profiles = this.mInjector.getUserManager().getProfiles(getCurrentUserId(), false);
        int[] currentProfileIds = new int[profiles.size()];
        for (int i = 0; i < currentProfileIds.length; i++) {
            currentProfileIds[i] = profiles.get(i).id;
        }
        List<UserInfo> users = this.mInjector.getUserManager().getUsers(false);
        synchronized (this.mLock) {
            this.mCurrentProfileIds = currentProfileIds;
            this.mUserProfileGroupIds.clear();
            for (int i2 = 0; i2 < users.size(); i2++) {
                UserInfo user = users.get(i2);
                if (user.profileGroupId != -10000) {
                    this.mUserProfileGroupIds.put(user.id, user.profileGroupId);
                }
            }
        }
    }

    int[] getStartedUserArray() {
        int[] iArr;
        synchronized (this.mLock) {
            iArr = this.mStartedUserArray;
        }
        return iArr;
    }

    boolean isUserRunning(int userId, int flags) {
        UserState state = getStartedUserState(userId);
        if (state == null) {
            return false;
        }
        if ((flags & 1) != 0) {
            return true;
        }
        if ((flags & 2) != 0) {
            int i = state.state;
            return i == 0 || i == 1;
        }
        if ((flags & 8) != 0) {
            int i2 = state.state;
            if (i2 == 2 || i2 == 3) {
                return true;
            }
            if (i2 != 4 && i2 != 5) {
                return false;
            }
            return StorageManager.isUserKeyUnlocked(userId);
        }
        if ((flags & 4) == 0) {
            return (state.state == 4 || state.state == 5) ? false : true;
        }
        int i3 = state.state;
        if (i3 == 3) {
            return true;
        }
        if (i3 != 4 && i3 != 5) {
            return false;
        }
        return StorageManager.isUserKeyUnlocked(userId);
    }

    boolean isSystemUserStarted() {
        synchronized (this.mLock) {
            UserState uss = this.mStartedUsers.get(0);
            if (uss == null) {
                return false;
            }
            return uss.state == 1 || uss.state == 2 || uss.state == 3;
        }
    }

    UserInfo getCurrentUser() {
        UserInfo currentUserLU;
        if (this.mInjector.checkCallingPermission("android.permission.INTERACT_ACROSS_USERS") != 0 && this.mInjector.checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL") != 0) {
            String msg = "Permission Denial: getCurrentUser() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.INTERACT_ACROSS_USERS";
            Slog.w(TAG, msg);
            throw new SecurityException(msg);
        }
        if (this.mTargetUserId == -10000) {
            return getUserInfo(this.mCurrentUserId);
        }
        synchronized (this.mLock) {
            currentUserLU = getCurrentUserLU();
        }
        return currentUserLU;
    }

    UserInfo getCurrentUserLU() {
        int userId = this.mTargetUserId != -10000 ? this.mTargetUserId : this.mCurrentUserId;
        return getUserInfo(userId);
    }

    int getCurrentOrTargetUserId() {
        int currentOrTargetUserIdLU;
        synchronized (this.mLock) {
            currentOrTargetUserIdLU = getCurrentOrTargetUserIdLU();
        }
        return currentOrTargetUserIdLU;
    }

    int getCurrentOrTargetUserIdLU() {
        return this.mTargetUserId != -10000 ? this.mTargetUserId : this.mCurrentUserId;
    }

    int getCurrentUserIdLU() {
        return this.mCurrentUserId;
    }

    int getCurrentUserId() {
        int i;
        synchronized (this.mLock) {
            i = this.mCurrentUserId;
        }
        return i;
    }

    private boolean isCurrentUserLU(int userId) {
        return userId == getCurrentOrTargetUserIdLU();
    }

    int[] getUsers() {
        UserManagerService ums = this.mInjector.getUserManager();
        return ums != null ? ums.getUserIds() : new int[]{0};
    }

    private UserInfo getUserInfo(int userId) {
        return this.mInjector.getUserManager().getUserInfo(userId);
    }

    int[] getUserIds() {
        return this.mInjector.getUserManager().getUserIds();
    }

    int[] expandUserId(int userId) {
        if (userId != -1) {
            return new int[]{userId};
        }
        return getUsers();
    }

    boolean exists(int userId) {
        return this.mInjector.getUserManager().exists(userId);
    }

    private void checkCallingPermission(String permission, String methodName) {
        if (this.mInjector.checkCallingPermission(permission) != 0) {
            String msg = "Permission denial: " + methodName + "() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires " + permission;
            Slog.w(TAG, msg);
            throw new SecurityException(msg);
        }
    }

    private void enforceShellRestriction(String restriction, int userId) {
        if (Binder.getCallingUid() == 2000) {
            if (userId < 0 || hasUserRestriction(restriction, userId)) {
                throw new SecurityException("Shell does not have permission to access user " + userId);
            }
        }
    }

    boolean hasUserRestriction(String restriction, int userId) {
        return this.mInjector.getUserManager().hasUserRestriction(restriction, userId);
    }

    boolean isSameProfileGroup(int callingUserId, int targetUserId) {
        boolean z = true;
        if (callingUserId == targetUserId) {
            return true;
        }
        synchronized (this.mLock) {
            int callingProfile = this.mUserProfileGroupIds.get(callingUserId, -10000);
            int targetProfile = this.mUserProfileGroupIds.get(targetUserId, -10000);
            if (callingProfile == -10000 || callingProfile != targetProfile) {
                z = false;
            }
        }
        return z;
    }

    boolean isUserOrItsParentRunning(int userId) {
        synchronized (this.mLock) {
            if (isUserRunning(userId, 0)) {
                return true;
            }
            int parentUserId = this.mUserProfileGroupIds.get(userId, -10000);
            if (parentUserId == -10000) {
                return false;
            }
            return isUserRunning(parentUserId, 0);
        }
    }

    boolean isCurrentProfile(int userId) {
        boolean zContains;
        synchronized (this.mLock) {
            zContains = ArrayUtils.contains(this.mCurrentProfileIds, userId);
        }
        return zContains;
    }

    int[] getCurrentProfileIds() {
        int[] iArr;
        synchronized (this.mLock) {
            iArr = this.mCurrentProfileIds;
        }
        return iArr;
    }

    void onUserRemoved(int userId) {
        synchronized (this.mLock) {
            int size = this.mUserProfileGroupIds.size();
            for (int i = size - 1; i >= 0; i--) {
                if (this.mUserProfileGroupIds.keyAt(i) == userId || this.mUserProfileGroupIds.valueAt(i) == userId) {
                    this.mUserProfileGroupIds.removeAt(i);
                }
            }
            this.mCurrentProfileIds = ArrayUtils.removeInt(this.mCurrentProfileIds, userId);
        }
    }

    protected boolean shouldConfirmCredentials(int userId) {
        if (getStartedUserState(userId) == null || !getUserInfo(userId).isManagedProfile()) {
            return false;
        }
        if (this.mLockPatternUtils.isSeparateProfileChallengeEnabled(userId)) {
            KeyguardManager km = this.mInjector.getKeyguardManager();
            return km.isDeviceLocked(userId) && km.isDeviceSecure(userId);
        }
        return isUserRunning(userId, 2);
    }

    boolean isLockScreenDisabled(int userId) {
        return this.mLockPatternUtils.isLockScreenDisabled(userId);
    }

    void setSwitchingFromSystemUserMessage(String switchingFromSystemUserMessage) {
        synchronized (this.mLock) {
            this.mSwitchingFromSystemUserMessage = switchingFromSystemUserMessage;
        }
    }

    void setSwitchingToSystemUserMessage(String switchingToSystemUserMessage) {
        synchronized (this.mLock) {
            this.mSwitchingToSystemUserMessage = switchingToSystemUserMessage;
        }
    }

    private String getSwitchingFromSystemUserMessage() {
        String str;
        synchronized (this.mLock) {
            str = this.mSwitchingFromSystemUserMessage;
        }
        return str;
    }

    private String getSwitchingToSystemUserMessage() {
        String str;
        synchronized (this.mLock) {
            str = this.mSwitchingToSystemUserMessage;
        }
        return str;
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        synchronized (this.mLock) {
            long token = proto.start(fieldId);
            for (int i = 0; i < this.mStartedUsers.size(); i++) {
                UserState uss = this.mStartedUsers.valueAt(i);
                long uToken = proto.start(2246267895809L);
                proto.write(1120986464257L, uss.mHandle.getIdentifier());
                uss.dumpDebug(proto, 1146756268034L);
                proto.end(uToken);
            }
            for (int i2 = 0; i2 < this.mStartedUserArray.length; i2++) {
                proto.write(2220498092034L, this.mStartedUserArray[i2]);
            }
            for (int i3 = 0; i3 < this.mUserLru.size(); i3++) {
                proto.write(2220498092035L, this.mUserLru.get(i3).intValue());
            }
            if (this.mUserProfileGroupIds.size() > 0) {
                for (int i4 = 0; i4 < this.mUserProfileGroupIds.size(); i4++) {
                    long uToken2 = proto.start(2246267895812L);
                    proto.write(1120986464257L, this.mUserProfileGroupIds.keyAt(i4));
                    proto.write(1120986464258L, this.mUserProfileGroupIds.valueAt(i4));
                    proto.end(uToken2);
                }
            }
            proto.end(token);
        }
    }

    void dump(PrintWriter pw) {
        synchronized (this.mLock) {
            pw.println("  mStartedUsers:");
            for (int i = 0; i < this.mStartedUsers.size(); i++) {
                UserState uss = this.mStartedUsers.valueAt(i);
                pw.print("    User #");
                pw.print(uss.mHandle.getIdentifier());
                pw.print(": ");
                uss.dump("", pw);
            }
            pw.print("  mStartedUserArray: [");
            for (int i2 = 0; i2 < this.mStartedUserArray.length; i2++) {
                if (i2 > 0) {
                    pw.print(", ");
                }
                pw.print(this.mStartedUserArray[i2]);
            }
            pw.println("]");
            pw.print("  mUserLru: [");
            for (int i3 = 0; i3 < this.mUserLru.size(); i3++) {
                if (i3 > 0) {
                    pw.print(", ");
                }
                pw.print(this.mUserLru.get(i3));
            }
            pw.println("]");
            if (this.mUserProfileGroupIds.size() > 0) {
                pw.println("  mUserProfileGroupIds:");
                for (int i4 = 0; i4 < this.mUserProfileGroupIds.size(); i4++) {
                    pw.print("    User #");
                    pw.print(this.mUserProfileGroupIds.keyAt(i4));
                    pw.print(" -> profile #");
                    pw.println(this.mUserProfileGroupIds.valueAt(i4));
                }
            }
            pw.println("  mCurrentUserId:" + this.mCurrentUserId);
            pw.println("  mTargetUserId:" + this.mTargetUserId);
            pw.println("  mLastActiveUsers:" + this.mLastActiveUsers);
            pw.println("  mDelayUserDataLocking:" + this.mDelayUserDataLocking);
            pw.println("  mMaxRunningUsers:" + this.mMaxRunningUsers);
            pw.println("  mUserSwitchUiEnabled:" + this.mUserSwitchUiEnabled);
            pw.println("  mInitialized:" + this.mInitialized);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) throws Throwable {
        switch (msg.what) {
            case 10:
                dispatchUserSwitch((UserState) msg.obj, msg.arg1, msg.arg2);
                break;
            case 20:
                continueUserSwitch((UserState) msg.obj, msg.arg1, msg.arg2);
                break;
            case 30:
                timeoutUserSwitch((UserState) msg.obj, msg.arg1, msg.arg2);
                break;
            case 40:
                startProfiles();
                break;
            case 50:
                this.mInjector.batteryStatsServiceNoteEvent(32775, Integer.toString(msg.arg1), msg.arg1);
                logUserJourneyInfo(null, getUserInfo(msg.arg1), 3);
                logUserLifecycleEvent(msg.arg1, 2, 1);
                this.mInjector.getSystemServiceManager().startUser(TimingsTraceAndSlog.newAsyncLog(), msg.arg1);
                logUserLifecycleEvent(msg.arg1, 2, 2);
                clearSessionId(msg.arg1, 3);
                break;
            case 60:
                this.mInjector.batteryStatsServiceNoteEvent(16392, Integer.toString(msg.arg2), msg.arg2);
                this.mInjector.batteryStatsServiceNoteEvent(32776, Integer.toString(msg.arg1), msg.arg1);
                this.mInjector.getSystemServiceManager().switchUser(msg.arg2, msg.arg1);
                break;
            case 70:
                dispatchForegroundProfileChanged(msg.arg1);
                break;
            case 80:
                dispatchUserSwitchComplete(msg.arg1);
                logUserLifecycleEvent(msg.arg1, 1, 2);
                break;
            case USER_SWITCH_CALLBACKS_TIMEOUT_MSG /* 90 */:
                timeoutUserSwitchCallbacks(msg.arg1, msg.arg2);
                break;
            case 100:
                final int userId = msg.arg1;
                this.mInjector.getSystemServiceManager().unlockUser(userId);
                FgThread.getHandler().post(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$8LGIvMzMu7XHaukOritsbK0s74Q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$handleMessage$11$UserController(userId);
                    }
                });
                logUserLifecycleEvent(msg.arg1, 5, 2);
                logUserLifecycleEvent(msg.arg1, 6, 1);
                finishUserUnlocked((UserState) msg.obj);
                break;
            case 105:
                this.mInjector.getSystemServiceManager().onUserUnlocked(msg.arg1);
                logUserLifecycleEvent(msg.arg1, 6, 2);
                clearSessionId(msg.arg1);
                break;
            case REPORT_LOCKED_BOOT_COMPLETE_MSG /* 110 */:
                dispatchLockedBootComplete(msg.arg1);
                break;
            case START_USER_SWITCH_FG_MSG /* 120 */:
                logUserJourneyInfo(getUserInfo(getCurrentUserId()), getUserInfo(msg.arg1), 2);
                logUserLifecycleEvent(msg.arg1, 1, 1);
                startUserInForeground(msg.arg1);
                break;
            case 200:
                logAndClearSessionId(msg.arg1);
                break;
            case 1000:
                Pair<UserInfo, UserInfo> fromToUserPair = (Pair) msg.obj;
                logUserJourneyInfo((UserInfo) fromToUserPair.first, (UserInfo) fromToUserPair.second, 1);
                logUserLifecycleEvent(((UserInfo) fromToUserPair.second).id, 1, 1);
                showUserSwitchDialog(fromToUserPair);
                break;
        }
        return false;
    }

    public /* synthetic */ void lambda$handleMessage$11$UserController(int userId) {
        this.mInjector.loadUserRecents(userId);
    }

    private void logUserJourneyInfo(UserInfo origin, UserInfo target, int journey) {
        long newSessionId = ThreadLocalRandom.current().nextLong(1L, JobStatus.NO_LATEST_RUNTIME);
        synchronized (this.mUserIdToUserJourneyMap) {
            UserJourneySession userJourneySession = this.mUserIdToUserJourneyMap.get(target.id);
            if (userJourneySession != null) {
                if ((userJourneySession.mJourney == 1 && journey == 3) || (userJourneySession.mJourney == 2 && journey == 3)) {
                    return;
                } else {
                    FrameworkStatsLog.write(265, userJourneySession.mSessionId, target.id, 0, 0);
                }
            }
            this.mUserIdToUserJourneyMap.put(target.id, new UserJourneySession(newSessionId, journey));
            this.mHandler.removeMessages(200);
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(200, Integer.valueOf(target.id)), 90000L);
            FrameworkStatsLog.write(264, newSessionId, journey, origin != null ? origin.id : -1, target.id, UserManager.getUserTypeForStatsd(target.userType), target.flags);
        }
    }

    private void logUserLifecycleEvent(int userId, int event, int eventState) {
        synchronized (this.mUserIdToUserJourneyMap) {
            UserJourneySession userJourneySession = this.mUserIdToUserJourneyMap.get(userId);
            if (userJourneySession != null && userJourneySession.mSessionId != 0) {
                long sessionId = userJourneySession.mSessionId;
                FrameworkStatsLog.write(265, sessionId, userId, event, eventState);
                return;
            }
            Slog.w(TAG, "UserLifecycleEvent " + event + " received without an active userJourneySession.");
        }
    }

    private void clearSessionId(int userId, int journey) {
        synchronized (this.mUserIdToUserJourneyMap) {
            UserJourneySession userJourneySession = this.mUserIdToUserJourneyMap.get(userId);
            if (userJourneySession != null && userJourneySession.mJourney == journey) {
                clearSessionId(userId);
            }
        }
    }

    private void clearSessionId(int userId) {
        synchronized (this.mUserIdToUserJourneyMap) {
            this.mHandler.removeMessages(200);
            this.mUserIdToUserJourneyMap.delete(userId);
        }
    }

    private void logAndClearSessionId(int userId) {
        synchronized (this.mUserIdToUserJourneyMap) {
            UserJourneySession userJourneySession = this.mUserIdToUserJourneyMap.get(userId);
            if (userJourneySession != null) {
                FrameworkStatsLog.write(265, userJourneySession.mSessionId, userId, 0, 0);
            }
            clearSessionId(userId);
        }
    }

    private static class UserJourneySession {
        final int mJourney;
        final long mSessionId;

        UserJourneySession(long sessionId, int journey) {
            this.mJourney = journey;
            this.mSessionId = sessionId;
        }
    }

    boolean isSystemApp(String packageName, ActivityManagerService am, int callingUid, int userId) {
        PackageInfo info = am.getPackageManagerInternalLocked().getPackageInfo(packageName, 786432, callingUid, userId);
        if (info != null && !TextUtils.isEmpty(info.sharedUserId)) {
            if (info.sharedUserId.equals("android.uid.system") || info.sharedUserId.equals("android.uid.shared")) {
                return true;
            }
            return false;
        }
        return false;
    }

    private static class UserProgressListener extends IProgressListener.Stub {
        private volatile long mUnlockStarted;

        private UserProgressListener() {
        }

        public void onStarted(int id, Bundle extras) throws RemoteException {
            Slog.d(UserController.TAG, "Started unlocking user " + id);
            this.mUnlockStarted = SystemClock.uptimeMillis();
        }

        public void onProgress(int id, int progress, Bundle extras) throws RemoteException {
            Slog.d(UserController.TAG, "Unlocking user " + id + " progress " + progress);
        }

        public void onFinished(int id, Bundle extras) throws RemoteException {
            long unlockTime = SystemClock.uptimeMillis() - this.mUnlockStarted;
            if (id == 0) {
                new TimingsTraceAndSlog().logDuration("SystemUserUnlock", unlockTime);
                return;
            }
            new TimingsTraceAndSlog().logDuration("User" + id + "Unlock", unlockTime);
        }
    }

    static class Injector {
        private final ActivityManagerService mService;
        private UserManagerService mUserManager;
        private UserManagerInternal mUserManagerInternal;

        Injector(ActivityManagerService service) {
            this.mService = service;
        }

        protected Handler getHandler(Handler.Callback callback) {
            return new Handler(this.mService.mHandlerThread.getLooper(), callback);
        }

        protected Handler getUiHandler(Handler.Callback callback) {
            return new Handler(this.mService.mUiHandler.getLooper(), callback);
        }

        protected Context getContext() {
            return this.mService.mContext;
        }

        protected LockPatternUtils getLockPatternUtils() {
            return new LockPatternUtils(getContext());
        }

        protected int broadcastIntent(Intent intent, String resolvedType, IIntentReceiver resultTo, int resultCode, String resultData, Bundle resultExtras, String[] requiredPermissions, int appOp, Bundle bOptions, boolean ordered, boolean sticky, int callingPid, int callingUid, int realCallingUid, int realCallingPid, int userId) throws Throwable {
            int logUserId;
            int logUserId2 = intent.getIntExtra("android.intent.extra.user_handle", -10000);
            if (logUserId2 != -10000) {
                logUserId = logUserId2;
            } else {
                logUserId = userId;
            }
            EventLog.writeEvent(EventLogTags.UC_SEND_USER_BROADCAST, Integer.valueOf(logUserId), intent.getAction());
            synchronized (this.mService) {
                try {
                    try {
                        ActivityManagerService.boostPriorityForLockedSection();
                        int iBroadcastIntentLocked = this.mService.broadcastIntentLocked(null, null, null, intent, resolvedType, resultTo, resultCode, resultData, resultExtras, requiredPermissions, appOp, bOptions, ordered, sticky, callingPid, callingUid, realCallingUid, realCallingPid, userId);
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        return iBroadcastIntentLocked;
                    } catch (Throwable th) {
                        th = th;
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        int checkCallingPermission(String permission) {
            return this.mService.checkCallingPermission(permission);
        }

        WindowManagerService getWindowManager() {
            return this.mService.mWindowManager;
        }

        void activityManagerOnUserStopped(int userId) {
            ((ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class)).onUserStopped(userId);
        }

        void systemServiceManagerCleanupUser(int userId) {
            this.mService.mSystemServiceManager.cleanupUser(userId);
        }

        protected UserManagerService getUserManager() {
            if (this.mUserManager == null) {
                IBinder b = ServiceManager.getService("user");
                this.mUserManager = IUserManager.Stub.asInterface(b);
            }
            return this.mUserManager;
        }

        UserManagerInternal getUserManagerInternal() {
            if (this.mUserManagerInternal == null) {
                this.mUserManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
            }
            return this.mUserManagerInternal;
        }

        KeyguardManager getKeyguardManager() {
            return (KeyguardManager) this.mService.mContext.getSystemService(KeyguardManager.class);
        }

        void batteryStatsServiceNoteEvent(int code, String name, int uid) {
            this.mService.mBatteryStatsService.noteEvent(code, name, uid);
        }

        boolean isRuntimeRestarted() {
            return this.mService.mSystemServiceManager.isRuntimeRestarted();
        }

        SystemServiceManager getSystemServiceManager() {
            return this.mService.mSystemServiceManager;
        }

        boolean isFirstBootOrUpgrade() {
            IPackageManager pm = AppGlobals.getPackageManager();
            try {
                return pm.isFirstBoot() || pm.isDeviceUpgrading();
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        void sendPreBootBroadcast(int userId, boolean quiet, final Runnable onFinish) {
            EventLog.writeEvent(EventLogTags.UC_SEND_USER_BROADCAST, Integer.valueOf(userId), "android.intent.action.PRE_BOOT_COMPLETED");
            new PreBootBroadcaster(this.mService, userId, null, quiet) { // from class: com.android.server.am.UserController.Injector.1
                @Override // com.android.server.am.PreBootBroadcaster
                public void onFinished() {
                    onFinish.run();
                }
            }.sendNext();
        }

        void activityManagerForceStopPackage(int userId, String reason) {
            synchronized (this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    this.mService.forceStopPackageLocked(null, -1, false, false, true, false, false, userId, reason);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        int checkComponentPermission(String permission, int pid, int uid, int owningUid, boolean exported) {
            return ActivityManagerService.checkComponentPermission(permission, pid, uid, owningUid, exported);
        }

        protected void startHomeActivity(int userId, String reason) {
            this.mService.mAtmInternal.startHomeActivity(userId, reason);
        }

        void startUserWidgets(final int userId) {
            final AppWidgetManagerInternal awm = (AppWidgetManagerInternal) LocalServices.getService(AppWidgetManagerInternal.class);
            if (awm != null) {
                FgThread.getHandler().post(new Runnable() { // from class: com.android.server.am.-$$Lambda$UserController$Injector$MYTLl7MOQKjyMJknWdxPeBLoPCc
                    @Override // java.lang.Runnable
                    public final void run() {
                        awm.unlockUser(userId);
                    }
                });
            }
        }

        void updateUserConfiguration() {
            this.mService.mAtmInternal.updateUserConfiguration();
        }

        void clearBroadcastQueueForUser(int userId) {
            synchronized (this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    this.mService.clearBroadcastQueueForUserLocked(userId);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        void loadUserRecents(int userId) {
            this.mService.mAtmInternal.loadRecentTasksForUser(userId);
        }

        void startPersistentApps(int matchFlags) {
            this.mService.startPersistentApps(matchFlags);
        }

        void installEncryptionUnawareProviders(int userId) throws Throwable {
            this.mService.installEncryptionUnawareProviders(userId);
        }

        void showUserSwitchingDialog(UserInfo fromUser, UserInfo toUser, String switchingFromSystemUserMessage, String switchingToSystemUserMessage) {
            if (!this.mService.mContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
                ActivityManagerService activityManagerService = this.mService;
                Dialog d = new UserSwitchingDialog(activityManagerService, activityManagerService.mContext, fromUser, toUser, true, switchingFromSystemUserMessage, switchingToSystemUserMessage);
                d.show();
            }
        }

        void reportGlobalUsageEventLocked(int event) {
            synchronized (this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    this.mService.reportGlobalUsageEventLocked(event);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        void reportCurWakefulnessUsageEvent() {
            synchronized (this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    this.mService.reportCurWakefulnessUsageEventLocked();
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        void stackSupervisorRemoveUser(int userId) {
            this.mService.mAtmInternal.removeUser(userId);
        }

        protected boolean stackSupervisorSwitchUser(int userId, UserState uss) {
            return this.mService.mAtmInternal.switchUser(userId, uss);
        }

        protected void stackSupervisorResumeFocusedStackTopActivity() {
            this.mService.mAtmInternal.resumeTopActivities(false);
        }

        protected void clearAllLockedTasks(String reason) {
            this.mService.mAtmInternal.clearLockedTasks(reason);
        }

        protected boolean isCallerRecents(int callingUid) {
            return this.mService.mAtmInternal.isCallerRecents(callingUid);
        }

        protected IStorageManager getStorageManager() {
            return IStorageManager.Stub.asInterface(ServiceManager.getService("mount"));
        }

        protected boolean isDelayBootCompleteEnabled() {
            return this.mService.mConstants.mBootCompletedSendDelay > 0;
        }

        protected int getBootCompletedDelayTimeMs() {
            return this.mService.mConstants.mBootCompletedSendDelay;
        }

        protected boolean isMegaQuickBootEnabled() {
            return this.mService.mConstants.mMegaQuickBootEnable;
        }
    }
}
