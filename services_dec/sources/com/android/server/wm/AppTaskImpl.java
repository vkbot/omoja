package com.android.server.wm;

import android.app.ActivityManager;
import android.app.IAppTask;
import android.app.IApplicationThread;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.UserHandle;

/* JADX INFO: loaded from: classes2.dex */
class AppTaskImpl extends IAppTask.Stub {
    private static final String TAG = "AppTaskImpl";
    private int mCallingUid;
    private ActivityTaskManagerService mService;
    private int mTaskId;

    public AppTaskImpl(ActivityTaskManagerService service, int taskId, int callingUid) {
        this.mService = service;
        this.mTaskId = taskId;
        this.mCallingUid = callingUid;
    }

    private void checkCaller() {
        if (this.mCallingUid != Binder.getCallingUid()) {
            throw new SecurityException("Caller " + this.mCallingUid + " does not match caller of getAppTasks(): " + Binder.getCallingUid());
        }
    }

    public void finishAndRemoveTask() {
        checkCaller();
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    if (!this.mService.mStackSupervisor.removeTaskById(this.mTaskId, false, true, "finish-and-remove-task")) {
                        throw new IllegalArgumentException("Unable to find task ID " + this.mTaskId);
                    }
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public ActivityManager.RecentTaskInfo getTaskInfo() {
        ActivityManager.RecentTaskInfo recentTaskInfoCreateRecentTaskInfo;
        checkCaller();
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    Task task = this.mService.mRootWindowContainer.anyTaskForId(this.mTaskId, 1);
                    if (task == null) {
                        throw new IllegalArgumentException("Unable to find task ID " + this.mTaskId);
                    }
                    recentTaskInfoCreateRecentTaskInfo = this.mService.getRecentTasks().createRecentTaskInfo(task, false, true);
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        return recentTaskInfoCreateRecentTaskInfo;
    }

    public void moveToFront(IApplicationThread appThread, String callingPackage) {
        checkCaller();
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        this.mService.assertPackageMatchesCallingUid(callingPackage);
        long origId = Binder.clearCallingIdentity();
        try {
            try {
                synchronized (this.mService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (!this.mService.checkAppSwitchAllowedLocked(callingPid, callingUid, -1, -1, "Move to front")) {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(origId);
                            return;
                        }
                        WindowProcessController callerApp = appThread != null ? this.mService.getProcessController(appThread) : null;
                        ActivityStarter starter = this.mService.getActivityStartController().obtainStarter(null, "moveToFront");
                        if (starter.shouldAbortBackgroundActivityStart(callingUid, callingPid, callingPackage, -1, -1, callerApp, null, false, null, null) && !this.mService.isBackgroundActivityStartsEnabled()) {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(origId);
                        } else {
                            this.mService.mStackSupervisor.startActivityFromRecents(callingPid, callingUid, this.mTaskId, null);
                            WindowManagerService.resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(origId);
                        }
                    } catch (Throwable th) {
                        th = th;
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            Binder.restoreCallingIdentity(origId);
            throw th3;
        }
    }

    public int startActivity(IBinder whoThread, String callingPackage, String callingFeatureId, Intent intent, String resolvedType, Bundle bOptions) {
        Task task;
        IApplicationThread appThread;
        checkCaller();
        this.mService.assertPackageMatchesCallingUid(callingPackage);
        int callingUser = UserHandle.getCallingUserId();
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                task = this.mService.mRootWindowContainer.anyTaskForId(this.mTaskId, 1);
                if (task == null) {
                    throw new IllegalArgumentException("Unable to find task ID " + this.mTaskId);
                }
                appThread = IApplicationThread.Stub.asInterface(whoThread);
                if (appThread == null) {
                    throw new IllegalArgumentException("Bad app thread " + appThread);
                }
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        return this.mService.getActivityStartController().obtainStarter(intent, TAG).setCaller(appThread).setCallingPackage(callingPackage).setCallingFeatureId(callingFeatureId).setResolvedType(resolvedType).setActivityOptions(bOptions).setUserId(callingUser).setInTask(task).execute();
    }

    public void setExcludeFromRecents(boolean exclude) {
        checkCaller();
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    Task task = this.mService.mRootWindowContainer.anyTaskForId(this.mTaskId, 1);
                    if (task == null) {
                        throw new IllegalArgumentException("Unable to find task ID " + this.mTaskId);
                    }
                    Intent intent = task.getBaseIntent();
                    if (exclude) {
                        intent.addFlags(8388608);
                    } else {
                        intent.setFlags(intent.getFlags() & (-8388609));
                    }
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }
}
