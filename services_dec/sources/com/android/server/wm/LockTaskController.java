package com.android.server.wm;

import android.app.admin.IDevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.util.EventLog;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.widget.LockPatternUtils;
import com.android.server.LocalServices;
import com.android.server.statusbar.StatusBarManagerInternal;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class LockTaskController {
    private static final String LOCK_TASK_TAG = "Lock-to-App";
    private static final SparseArray<Pair<Integer, Integer>> STATUS_BAR_FLAG_MAP_LOCKED;
    static final int STATUS_BAR_MASK_LOCKED = 61210624;
    static final int STATUS_BAR_MASK_PINNED = 43974656;
    private static final String TAG = "ActivityTaskManager";
    private static final String TAG_LOCKTASK = "ActivityTaskManager";
    private final Context mContext;
    IDevicePolicyManager mDevicePolicyManager;
    private final Handler mHandler;
    LockPatternUtils mLockPatternUtils;
    IStatusBarService mStatusBarService;
    private final ActivityStackSupervisor mSupervisor;
    TelecomManager mTelecomManager;
    WindowManagerService mWindowManager;
    private final IBinder mToken = new LockTaskToken(null);
    private final ArrayList<Task> mLockTaskModeTasks = new ArrayList<>();
    private final SparseArray<String[]> mLockTaskPackages = new SparseArray<>();
    private final SparseIntArray mLockTaskFeatures = new SparseIntArray();
    private volatile int mLockTaskModeState = 0;
    private int mPendingDisableFromDismiss = -10000;

    static {
        SparseArray<Pair<Integer, Integer>> sparseArray = new SparseArray<>();
        STATUS_BAR_FLAG_MAP_LOCKED = sparseArray;
        sparseArray.append(1, new Pair<>(8388608, 2));
        STATUS_BAR_FLAG_MAP_LOCKED.append(2, new Pair<>(393216, 4));
        STATUS_BAR_FLAG_MAP_LOCKED.append(4, new Pair<>(2097152, 0));
        STATUS_BAR_FLAG_MAP_LOCKED.append(8, new Pair<>(16777216, 0));
        STATUS_BAR_FLAG_MAP_LOCKED.append(16, new Pair<>(0, 8));
    }

    LockTaskController(Context context, ActivityStackSupervisor supervisor, Handler handler) {
        this.mContext = context;
        this.mSupervisor = supervisor;
        this.mHandler = handler;
    }

    void setWindowManager(WindowManagerService windowManager) {
        this.mWindowManager = windowManager;
    }

    int getLockTaskModeState() {
        return this.mLockTaskModeState;
    }

    boolean isTaskLocked(Task task) {
        return this.mLockTaskModeTasks.contains(task);
    }

    private boolean isRootTask(Task task) {
        return this.mLockTaskModeTasks.indexOf(task) == 0;
    }

    boolean activityBlockedFromFinish(ActivityRecord activity) {
        Task task = activity.getTask();
        if (activity == task.getRootActivity() && activity == task.getTopNonFinishingActivity() && task.mLockTaskAuth != 4 && isRootTask(task)) {
            Slog.i("ActivityTaskManager", "Not finishing task in lock task mode");
            showLockTaskToast();
            return true;
        }
        return false;
    }

    boolean canMoveTaskToBack(Task task) {
        if (isRootTask(task)) {
            showLockTaskToast();
            return false;
        }
        return true;
    }

    boolean isTaskAllowlisted(Task task) {
        int i = task.mLockTaskAuth;
        if (i == 2 || i == 3 || i == 4) {
            return true;
        }
        return false;
    }

    boolean isLockTaskModeViolation(Task task) {
        return isLockTaskModeViolation(task, false);
    }

    boolean isLockTaskModeViolation(Task task, boolean isNewClearTask) {
        if (isLockTaskModeViolationInternal(task, isNewClearTask)) {
            showLockTaskToast();
            return true;
        }
        return false;
    }

    Task getRootTask() {
        if (this.mLockTaskModeTasks.isEmpty()) {
            return null;
        }
        return this.mLockTaskModeTasks.get(0);
    }

    private boolean isLockTaskModeViolationInternal(Task task, boolean isNewClearTask) {
        if (isTaskLocked(task) && !isNewClearTask) {
            return false;
        }
        if (task.isActivityTypeRecents() && isRecentsAllowed(task.mUserId)) {
            return false;
        }
        return ((isKeyguardAllowed(task.mUserId) && isEmergencyCallTask(task)) || isTaskAllowlisted(task) || this.mLockTaskModeTasks.isEmpty()) ? false : true;
    }

    private boolean isRecentsAllowed(int userId) {
        return (getLockTaskFeaturesForUser(userId) & 8) != 0;
    }

    private boolean isKeyguardAllowed(int userId) {
        return (getLockTaskFeaturesForUser(userId) & 32) != 0;
    }

    private boolean isBlockingInTaskEnabled(int userId) {
        return (getLockTaskFeaturesForUser(userId) & 64) != 0;
    }

    boolean isActivityAllowed(int userId, String packageName, int lockTaskLaunchMode) {
        if (this.mLockTaskModeState != 1 || !isBlockingInTaskEnabled(userId)) {
            return true;
        }
        if (lockTaskLaunchMode == 1) {
            return false;
        }
        if (lockTaskLaunchMode != 2) {
            return isPackageAllowlisted(userId, packageName);
        }
        return true;
    }

    private boolean isEmergencyCallTask(Task task) {
        Intent intent = task.intent;
        if (intent == null) {
            return false;
        }
        if (TelecomManager.EMERGENCY_DIALER_COMPONENT.equals(intent.getComponent()) || "android.intent.action.CALL_EMERGENCY".equals(intent.getAction())) {
            return true;
        }
        TelecomManager tm = getTelecomManager();
        String dialerPackage = tm != null ? tm.getSystemDialerPackage() : null;
        return dialerPackage != null && dialerPackage.equals(intent.getComponent().getPackageName());
    }

    void stopLockTaskMode(Task task, boolean isSystemCaller, int callingUid) {
        if (this.mLockTaskModeState == 0) {
            return;
        }
        if (isSystemCaller) {
            if (this.mLockTaskModeState == 2) {
                clearLockedTasks("stopAppPinning");
                return;
            } else {
                Slog.e("ActivityTaskManager", "Attempted to stop LockTask with isSystemCaller=true");
                showLockTaskToast();
                return;
            }
        }
        if (task == null) {
            throw new IllegalArgumentException("can't stop LockTask for null task");
        }
        if (callingUid != task.mLockTaskUid && (task.mLockTaskUid != 0 || callingUid != task.effectiveUid)) {
            throw new SecurityException("Invalid uid, expected " + task.mLockTaskUid + " callingUid=" + callingUid + " effectiveUid=" + task.effectiveUid);
        }
        clearLockedTask(task);
    }

    void clearLockedTasks(String reason) {
        if (!this.mLockTaskModeTasks.isEmpty()) {
            clearLockedTask(this.mLockTaskModeTasks.get(0));
        }
    }

    void clearLockedTask(Task task) {
        if (task == null || this.mLockTaskModeTasks.isEmpty()) {
            return;
        }
        if (task == this.mLockTaskModeTasks.get(0)) {
            for (int taskNdx = this.mLockTaskModeTasks.size() - 1; taskNdx > 0; taskNdx--) {
                clearLockedTask(this.mLockTaskModeTasks.get(taskNdx));
            }
        }
        removeLockedTask(task);
        if (this.mLockTaskModeTasks.isEmpty()) {
            return;
        }
        task.performClearTaskLocked();
        this.mSupervisor.mRootWindowContainer.resumeFocusedStacksTopActivities();
    }

    private void removeLockedTask(final Task task) {
        if (this.mLockTaskModeTasks.remove(task) && this.mLockTaskModeTasks.isEmpty()) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$LockTaskController$NMEqFdnoSJ8A7QRxQO-ZoqXOmVc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeLockedTask$0$LockTaskController(task);
                }
            });
        }
    }

    public /* synthetic */ void lambda$removeLockedTask$0$LockTaskController(Task task) {
        performStopLockTask(task.mUserId);
    }

    private void performStopLockTask(int userId) {
        int oldLockTaskModeState = this.mLockTaskModeState;
        this.mLockTaskModeState = 0;
        try {
            setStatusBarState(this.mLockTaskModeState, userId);
            setKeyguardState(this.mLockTaskModeState, userId);
            if (oldLockTaskModeState == 2) {
                lockKeyguardIfNeeded(userId);
            }
            if (getDevicePolicyManager() != null) {
                getDevicePolicyManager().notifyLockTaskModeChanged(false, (String) null, userId);
            }
            if (oldLockTaskModeState == 2) {
                getStatusBarService().showPinningEnterExitToast(false);
            }
            this.mWindowManager.onLockTaskStateChanged(this.mLockTaskModeState);
        } catch (RemoteException ex) {
            throw new RuntimeException(ex);
        }
    }

    void showLockTaskToast() {
        if (this.mLockTaskModeState == 2) {
            try {
                getStatusBarService().showPinningEscapeToast();
            } catch (RemoteException e) {
                Slog.e("ActivityTaskManager", "Failed to send pinning escape toast", e);
            }
        }
    }

    void startLockTaskMode(Task task, boolean isSystemCaller, int callingUid) throws Throwable {
        if (!isSystemCaller) {
            task.mLockTaskUid = callingUid;
            if (task.mLockTaskAuth == 1) {
                StatusBarManagerInternal statusBarManager = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
                if (statusBarManager != null) {
                    statusBarManager.showScreenPinningRequest(task.mTaskId);
                    return;
                }
                return;
            }
        }
        setLockTaskMode(task, isSystemCaller ? 2 : 1, "startLockTask", true);
    }

    private void setLockTaskMode(final Task task, final int lockTaskModeState, String reason, boolean andResume) throws Throwable {
        if (task.mLockTaskAuth == 0) {
            return;
        }
        if (isLockTaskModeViolation(task)) {
            Slog.e("ActivityTaskManager", "setLockTaskMode: Attempt to start an unauthorized lock task.");
            return;
        }
        final Intent taskIntent = task.intent;
        if (this.mLockTaskModeTasks.isEmpty() && taskIntent != null) {
            this.mSupervisor.mRecentTasks.onLockTaskModeStateChanged(lockTaskModeState, task.mUserId);
            this.mHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$LockTaskController$mYEdosOvuhEWdcYLQrOC83U4Wms
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setLockTaskMode$1$LockTaskController(taskIntent, task, lockTaskModeState);
                }
            });
        }
        if (!this.mLockTaskModeTasks.contains(task)) {
            this.mLockTaskModeTasks.add(task);
        }
        if (task.mLockTaskUid == -1) {
            task.mLockTaskUid = task.effectiveUid;
        }
        if (andResume) {
            this.mSupervisor.findTaskToMoveToFront(task, 0, null, reason, lockTaskModeState != 0);
            this.mSupervisor.mRootWindowContainer.resumeFocusedStacksTopActivities();
            ActivityStack stack = task.getStack();
            if (stack != null) {
                stack.getDisplay().mDisplayContent.executeAppTransition();
                return;
            }
            return;
        }
        if (lockTaskModeState != 0) {
            ActivityStackSupervisor activityStackSupervisor = this.mSupervisor;
            activityStackSupervisor.handleNonResizableTaskIfNeeded(task, 0, activityStackSupervisor.mRootWindowContainer.getDefaultTaskDisplayArea(), task.getStack(), true);
        }
    }

    public /* synthetic */ void lambda$setLockTaskMode$1$LockTaskController(Intent taskIntent, Task task, int lockTaskModeState) {
        performStartLockTask(taskIntent.getComponent().getPackageName(), task.mUserId, lockTaskModeState);
    }

    private void performStartLockTask(String packageName, int userId, int lockTaskModeState) {
        if (lockTaskModeState == 2) {
            try {
                getStatusBarService().showPinningEnterExitToast(true);
            } catch (RemoteException ex) {
                throw new RuntimeException(ex);
            }
        }
        this.mWindowManager.onLockTaskStateChanged(lockTaskModeState);
        this.mLockTaskModeState = lockTaskModeState;
        setStatusBarState(lockTaskModeState, userId);
        setKeyguardState(lockTaskModeState, userId);
        if (getDevicePolicyManager() != null) {
            getDevicePolicyManager().notifyLockTaskModeChanged(true, packageName, userId);
        }
    }

    void updateLockTaskPackages(int userId, String[] packages) throws Throwable {
        this.mLockTaskPackages.put(userId, packages);
        boolean taskChanged = false;
        int taskNdx = this.mLockTaskModeTasks.size() - 1;
        while (true) {
            if (taskNdx < 0) {
                break;
            }
            Task lockedTask = this.mLockTaskModeTasks.get(taskNdx);
            boolean wasAllowlisted = lockedTask.mLockTaskAuth == 2 || lockedTask.mLockTaskAuth == 3;
            lockedTask.setLockTaskAuth();
            boolean isAllowlisted = lockedTask.mLockTaskAuth == 2 || lockedTask.mLockTaskAuth == 3;
            if (this.mLockTaskModeState == 1 && lockedTask.mUserId == userId && wasAllowlisted && !isAllowlisted) {
                removeLockedTask(lockedTask);
                lockedTask.performClearTaskLocked();
                taskChanged = true;
            }
            taskNdx--;
        }
        this.mSupervisor.mRootWindowContainer.forAllTasks(new Consumer() { // from class: com.android.server.wm.-$$Lambda$7nuK7cv058ES7c7refBFgc-jagk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Task) obj).setLockTaskAuth();
            }
        });
        ActivityRecord r = this.mSupervisor.mRootWindowContainer.topRunningActivity();
        Task task = r != null ? r.getTask() : null;
        if (this.mLockTaskModeTasks.isEmpty() && task != null && task.mLockTaskAuth == 2) {
            setLockTaskMode(task, 1, "package updated", false);
            taskChanged = true;
        }
        if (taskChanged) {
            this.mSupervisor.mRootWindowContainer.resumeFocusedStacksTopActivities();
        }
    }

    boolean isPackageAllowlisted(int userId, String pkg) {
        String[] allowlist;
        if (pkg == null || (allowlist = this.mLockTaskPackages.get(userId)) == null) {
            return false;
        }
        for (String allowlistedPkg : allowlist) {
            if (pkg.equals(allowlistedPkg)) {
                return true;
            }
        }
        return false;
    }

    void updateLockTaskFeatures(final int userId, int flags) {
        int oldFlags = getLockTaskFeaturesForUser(userId);
        if (flags == oldFlags) {
            return;
        }
        this.mLockTaskFeatures.put(userId, flags);
        if (!this.mLockTaskModeTasks.isEmpty() && userId == this.mLockTaskModeTasks.get(0).mUserId) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$LockTaskController$nuVptnoYwaF1CYydSggC_oxSSSc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateLockTaskFeatures$2$LockTaskController(userId);
                }
            });
        }
    }

    public /* synthetic */ void lambda$updateLockTaskFeatures$2$LockTaskController(int userId) {
        if (this.mLockTaskModeState == 1) {
            setStatusBarState(this.mLockTaskModeState, userId);
            setKeyguardState(this.mLockTaskModeState, userId);
        }
    }

    private void setStatusBarState(int lockTaskModeState, int userId) {
        IStatusBarService statusBar = getStatusBarService();
        if (statusBar == null) {
            Slog.e("ActivityTaskManager", "Can't find StatusBarService");
            return;
        }
        int flags1 = 0;
        int flags2 = 0;
        if (lockTaskModeState == 2) {
            flags1 = STATUS_BAR_MASK_PINNED;
        } else if (lockTaskModeState == 1) {
            int lockTaskFeatures = getLockTaskFeaturesForUser(userId);
            Pair<Integer, Integer> statusBarFlags = getStatusBarDisableFlags(lockTaskFeatures);
            flags1 = ((Integer) statusBarFlags.first).intValue();
            flags2 = ((Integer) statusBarFlags.second).intValue();
        }
        try {
            statusBar.disable(flags1, this.mToken, this.mContext.getPackageName());
            statusBar.disable2(flags2, this.mToken, this.mContext.getPackageName());
        } catch (RemoteException e) {
            Slog.e("ActivityTaskManager", "Failed to set status bar flags", e);
        }
    }

    private void setKeyguardState(int lockTaskModeState, int userId) {
        this.mPendingDisableFromDismiss = -10000;
        if (lockTaskModeState == 0) {
            this.mWindowManager.reenableKeyguard(this.mToken, userId);
            return;
        }
        if (lockTaskModeState == 1) {
            if (isKeyguardAllowed(userId)) {
                this.mWindowManager.reenableKeyguard(this.mToken, userId);
                return;
            } else if (this.mWindowManager.isKeyguardLocked() && !this.mWindowManager.isKeyguardSecure(userId)) {
                this.mPendingDisableFromDismiss = userId;
                this.mWindowManager.dismissKeyguard(new AnonymousClass1(userId), null);
                return;
            } else {
                this.mWindowManager.disableKeyguard(this.mToken, LOCK_TASK_TAG, userId);
                return;
            }
        }
        this.mWindowManager.disableKeyguard(this.mToken, LOCK_TASK_TAG, userId);
    }

    /* JADX INFO: renamed from: com.android.server.wm.LockTaskController$1, reason: invalid class name */
    class AnonymousClass1 extends IKeyguardDismissCallback.Stub {
        final /* synthetic */ int val$userId;

        AnonymousClass1(int i) {
            this.val$userId = i;
        }

        public void onDismissError() throws RemoteException {
            Slog.i("ActivityTaskManager", "setKeyguardState: failed to dismiss keyguard");
        }

        public void onDismissSucceeded() throws RemoteException {
            Handler handler = LockTaskController.this.mHandler;
            final int i = this.val$userId;
            handler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$LockTaskController$1$WwLdnVMTh3BcztLd26dCnk4GjpA
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDismissSucceeded$0$LockTaskController$1(i);
                }
            });
        }

        public /* synthetic */ void lambda$onDismissSucceeded$0$LockTaskController$1(int userId) {
            if (LockTaskController.this.mPendingDisableFromDismiss == userId) {
                LockTaskController.this.mWindowManager.disableKeyguard(LockTaskController.this.mToken, LockTaskController.LOCK_TASK_TAG, userId);
                LockTaskController.this.mPendingDisableFromDismiss = -10000;
            }
        }

        public void onDismissCancelled() throws RemoteException {
            Slog.i("ActivityTaskManager", "setKeyguardState: dismiss cancelled");
        }
    }

    private void lockKeyguardIfNeeded(int userId) {
        if (shouldLockKeyguard(userId)) {
            this.mWindowManager.lockNow(null);
            this.mWindowManager.dismissKeyguard(null, null);
            getLockPatternUtils().requireCredentialEntry(-1);
        }
    }

    private boolean shouldLockKeyguard(int userId) {
        try {
            return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "lock_to_app_exit_locked", -2) != 0;
        } catch (Settings.SettingNotFoundException e) {
            EventLog.writeEvent(1397638484, "127605586", -1, "");
            return getLockPatternUtils().isSecure(userId);
        }
    }

    Pair<Integer, Integer> getStatusBarDisableFlags(int lockTaskFlags) {
        int flags1 = 67043328;
        int flags2 = 31;
        for (int i = STATUS_BAR_FLAG_MAP_LOCKED.size() - 1; i >= 0; i--) {
            Pair<Integer, Integer> statusBarFlags = STATUS_BAR_FLAG_MAP_LOCKED.valueAt(i);
            if ((STATUS_BAR_FLAG_MAP_LOCKED.keyAt(i) & lockTaskFlags) != 0) {
                flags1 &= ~((Integer) statusBarFlags.first).intValue();
                flags2 &= ~((Integer) statusBarFlags.second).intValue();
            }
        }
        return new Pair<>(Integer.valueOf(flags1 & STATUS_BAR_MASK_LOCKED), Integer.valueOf(flags2));
    }

    boolean isBaseOfLockedTask(String packageName) {
        for (int i = 0; i < this.mLockTaskModeTasks.size(); i++) {
            Intent bi = this.mLockTaskModeTasks.get(i).getBaseIntent();
            if (bi != null && packageName.equals(bi.getComponent().getPackageName())) {
                return true;
            }
        }
        return false;
    }

    private int getLockTaskFeaturesForUser(int userId) {
        return this.mLockTaskFeatures.get(userId, 0);
    }

    private IStatusBarService getStatusBarService() {
        if (this.mStatusBarService == null) {
            IStatusBarService iStatusBarServiceAsInterface = IStatusBarService.Stub.asInterface(ServiceManager.checkService("statusbar"));
            this.mStatusBarService = iStatusBarServiceAsInterface;
            if (iStatusBarServiceAsInterface == null) {
                Slog.w("StatusBarManager", "warning: no STATUS_BAR_SERVICE");
            }
        }
        return this.mStatusBarService;
    }

    private IDevicePolicyManager getDevicePolicyManager() {
        if (this.mDevicePolicyManager == null) {
            IDevicePolicyManager iDevicePolicyManagerAsInterface = IDevicePolicyManager.Stub.asInterface(ServiceManager.checkService("device_policy"));
            this.mDevicePolicyManager = iDevicePolicyManagerAsInterface;
            if (iDevicePolicyManagerAsInterface == null) {
                Slog.w("ActivityTaskManager", "warning: no DEVICE_POLICY_SERVICE");
            }
        }
        return this.mDevicePolicyManager;
    }

    private LockPatternUtils getLockPatternUtils() {
        LockPatternUtils lockPatternUtils = this.mLockPatternUtils;
        if (lockPatternUtils == null) {
            return new LockPatternUtils(this.mContext);
        }
        return lockPatternUtils;
    }

    private TelecomManager getTelecomManager() {
        TelecomManager telecomManager = this.mTelecomManager;
        if (telecomManager == null) {
            return (TelecomManager) this.mContext.getSystemService(TelecomManager.class);
        }
        return telecomManager;
    }

    public void dump(PrintWriter pw, String prefix) {
        pw.println(prefix + "LockTaskController:");
        String prefix2 = prefix + "  ";
        pw.println(prefix2 + "mLockTaskModeState=" + lockTaskModeToString());
        StringBuilder sb = new StringBuilder();
        sb.append(prefix2);
        sb.append("mLockTaskModeTasks=");
        pw.println(sb.toString());
        for (int i = 0; i < this.mLockTaskModeTasks.size(); i++) {
            pw.println(prefix2 + "  #" + i + " " + this.mLockTaskModeTasks.get(i));
        }
        pw.println(prefix2 + "mLockTaskPackages (userId:packages)=");
        for (int i2 = 0; i2 < this.mLockTaskPackages.size(); i2++) {
            pw.println(prefix2 + "  u" + this.mLockTaskPackages.keyAt(i2) + ":" + Arrays.toString(this.mLockTaskPackages.valueAt(i2)));
        }
        pw.println();
    }

    private String lockTaskModeToString() {
        int i = this.mLockTaskModeState;
        if (i == 0) {
            return "NONE";
        }
        if (i == 1) {
            return "LOCKED";
        }
        if (i == 2) {
            return "PINNED";
        }
        return "unknown=" + this.mLockTaskModeState;
    }

    static class LockTaskToken extends Binder {
        /* synthetic */ LockTaskToken(AnonymousClass1 x0) {
            this();
        }

        private LockTaskToken() {
        }
    }
}
