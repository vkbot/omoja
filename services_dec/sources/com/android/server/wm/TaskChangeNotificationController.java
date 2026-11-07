package com.android.server.wm;

import android.app.ActivityManager;
import android.app.ITaskStackListener;
import android.app.TaskInfo;
import android.content.ComponentName;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.android.internal.os.SomeArgs;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class TaskChangeNotificationController {
    private static final int LOG_STACK_STATE_MSG = 1;
    private static final int NOTIFY_ACTIVITY_DISMISSING_DOCKED_STACK_MSG = 7;
    private static final int NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_FAILED_MSG = 18;
    private static final int NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_REROUTED_MSG = 19;
    private static final int NOTIFY_ACTIVITY_PINNED_LISTENERS_MSG = 3;
    private static final int NOTIFY_ACTIVITY_REQUESTED_ORIENTATION_CHANGED_LISTENERS = 12;
    private static final int NOTIFY_ACTIVITY_RESTART_ATTEMPT_LISTENERS_MSG = 4;
    private static final int NOTIFY_ACTIVITY_ROTATED_MSG = 29;
    private static final int NOTIFY_ACTIVITY_UNPINNED_LISTENERS_MSG = 17;
    private static final int NOTIFY_BACK_PRESSED_ON_TASK_ROOT = 21;
    private static final int NOTIFY_FORCED_RESIZABLE_MSG = 6;
    private static final int NOTIFY_SINGLE_TASK_DISPLAY_DRAWN = 22;
    private static final int NOTIFY_SINGLE_TASK_DISPLAY_EMPTY = 25;
    private static final int NOTIFY_SIZE_COMPAT_MODE_ACTIVITY_CHANGED_MSG = 20;
    private static final int NOTIFY_TASK_ADDED_LISTENERS_MSG = 8;
    private static final int NOTIFY_TASK_DESCRIPTION_CHANGED_LISTENERS_MSG = 11;
    private static final int NOTIFY_TASK_DISPLAY_CHANGED_LISTENERS_MSG = 23;
    private static final int NOTIFY_TASK_FOCUS_CHANGED_MSG = 27;
    private static final int NOTIFY_TASK_LIST_FROZEN_UNFROZEN_MSG = 26;
    private static final int NOTIFY_TASK_LIST_UPDATED_LISTENERS_MSG = 24;
    private static final int NOTIFY_TASK_MOVED_TO_FRONT_LISTENERS_MSG = 10;
    private static final int NOTIFY_TASK_PROFILE_LOCKED_LISTENERS_MSG = 14;
    private static final int NOTIFY_TASK_REMOVAL_STARTED_LISTENERS = 13;
    private static final int NOTIFY_TASK_REMOVED_LISTENERS_MSG = 9;
    private static final int NOTIFY_TASK_REQUESTED_ORIENTATION_CHANGED_MSG = 28;
    private static final int NOTIFY_TASK_SNAPSHOT_CHANGED_LISTENERS_MSG = 15;
    private static final int NOTIFY_TASK_STACK_CHANGE_LISTENERS_DELAY = 100;
    private static final int NOTIFY_TASK_STACK_CHANGE_LISTENERS_MSG = 2;
    private final Handler mHandler;
    private final Object mServiceLock;
    private final ActivityStackSupervisor mStackSupervisor;
    private final RemoteCallbackList<ITaskStackListener> mRemoteTaskStackListeners = new RemoteCallbackList<>();
    private final ArrayList<ITaskStackListener> mLocalTaskStackListeners = new ArrayList<>();
    private final TaskStackConsumer mNotifyTaskStackChanged = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$SAbrujQOZNUflKs1FAg2mBnjx3A
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskStackChanged();
        }
    };
    private final TaskStackConsumer mNotifyTaskCreated = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$1ziXgnyLi0gQjqMGJAbSzs0-dmE
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskCreated(message.arg1, (ComponentName) message.obj);
        }
    };
    private final TaskStackConsumer mNotifyTaskRemoved = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$kss8MGli3T9b_Y-QDzR2cB843y8
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskRemoved(message.arg1);
        }
    };
    private final TaskStackConsumer mNotifyTaskMovedToFront = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$ZLPZtiEvD_F4WUgH7BD4KPpdAWM
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskMovedToFront((ActivityManager.RunningTaskInfo) message.obj);
        }
    };
    private final TaskStackConsumer mNotifyTaskDescriptionChanged = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$Ge3jFevRwpndz6qRSLDXODq2VjE
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskDescriptionChanged((ActivityManager.RunningTaskInfo) message.obj);
        }
    };
    private final TaskStackConsumer mNotifyBackPressedOnTaskRoot = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$SByuGj5tpcCpjTH9lf5zHHv2gNM
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onBackPressedOnTaskRoot((ActivityManager.RunningTaskInfo) message.obj);
        }
    };
    private final TaskStackConsumer mNotifyActivityRequestedOrientationChanged = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$MS67FdGix7tWO0Od9imcaKVXL7I
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onActivityRequestedOrientationChanged(message.arg1, message.arg2);
        }
    };
    private final TaskStackConsumer mNotifyTaskRemovalStarted = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$NLoKy9SbVr1EJpEjznsKi7yAlpg
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskRemovalStarted((ActivityManager.RunningTaskInfo) message.obj);
        }
    };
    private final TaskStackConsumer mNotifyActivityPinned = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$ncM_yje7-m7HuiJvorBIH_C8Ou4
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onActivityPinned((String) message.obj, message.sendingUid, message.arg1, message.arg2);
        }
    };
    private final TaskStackConsumer mNotifyActivityUnpinned = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$qONfw3ssOxjb_iMuO2oMzCbXfrg
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onActivityUnpinned();
        }
    };
    private final TaskStackConsumer mNotifyActivityRestartAttempt = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$9ngbiJ2r3x2ASHwN59tUFO2-2BQ
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) throws RemoteException {
            TaskChangeNotificationController.lambda$new$10(iTaskStackListener, message);
        }
    };
    private final TaskStackConsumer mNotifyActivityForcedResizable = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$M2NSB3SSVJR2Tu4vihNfsIL31s4
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onActivityForcedResizable((String) message.obj, message.arg1, message.arg2);
        }
    };
    private final TaskStackConsumer mNotifyActivityDismissingDockedStack = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$k0FXXC-HcWJhmtm6-Kruo6nGeXI
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onActivityDismissingDockedStack();
        }
    };
    private final TaskStackConsumer mNotifyActivityLaunchOnSecondaryDisplayFailed = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$byMDuIFUN4cQ1lT9jVjMwLhaLDw
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onActivityLaunchOnSecondaryDisplayFailed((ActivityManager.RunningTaskInfo) message.obj, message.arg1);
        }
    };
    private final TaskStackConsumer mNotifyActivityLaunchOnSecondaryDisplayRerouted = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$0m_-qN9QkcgkoWun2Biw8le4l1Y
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onActivityLaunchOnSecondaryDisplayRerouted((ActivityManager.RunningTaskInfo) message.obj, message.arg1);
        }
    };
    private final TaskStackConsumer mNotifyTaskProfileLocked = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$yaW9HlZsz3L55CTQ4b7y33IGo94
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskProfileLocked(message.arg1, message.arg2);
        }
    };
    private final TaskStackConsumer mNotifyTaskSnapshotChanged = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$wuBjs4dj7gB_MI4dIdt2gV2Osus
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskSnapshotChanged(message.arg1, (ActivityManager.TaskSnapshot) message.obj);
        }
    };
    private final TaskStackConsumer mOnSizeCompatModeActivityChanged = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$Dvvt1gNNfFRVEKlSCdL_9VnilUE
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onSizeCompatModeActivityChanged(message.arg1, (IBinder) message.obj);
        }
    };
    private final TaskStackConsumer mNotifySingleTaskDisplayDrawn = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$UexNbaqPy0mc3VxTw2coCctHho8
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onSingleTaskDisplayDrawn(message.arg1);
        }
    };
    private final TaskStackConsumer mNotifySingleTaskDisplayEmpty = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$sS6OHbZtuWHjzmkm8bleSWZWFqA
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onSingleTaskDisplayEmpty(message.arg1);
        }
    };
    private final TaskStackConsumer mNotifyTaskDisplayChanged = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$cFUeUwnRjuOQKcg2c4PnDS0ImTw
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskDisplayChanged(message.arg1, message.arg2);
        }
    };
    private final TaskStackConsumer mNotifyTaskListUpdated = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$sdBP_U6BS8zRbtZp-gZ0BmFW8bs
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onRecentTaskListUpdated();
        }
    };
    private final TaskStackConsumer mNotifyTaskListFrozen = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onRecentTaskListFrozenChanged(message.arg1 != 0);
        }
    };
    private final TaskStackConsumer mNotifyTaskFocusChanged = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$Kz-Od_gLhLbMtGka4r78W0Gmzgo
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskFocusChanged(message.arg1, message.arg2 != 0);
        }
    };
    private final TaskStackConsumer mNotifyTaskRequestedOrientationChanged = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$PSFFTNiSSqx5-emiM-hoY62N04M
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onTaskRequestedOrientationChanged(message.arg1, message.arg2);
        }
    };
    private final TaskStackConsumer mNotifyOnActivityRotation = new TaskStackConsumer() { // from class: com.android.server.wm.-$$Lambda$TaskChangeNotificationController$fHOaxOU9vkp_xgwOlM5lZFj3Fi0
        @Override // com.android.server.wm.TaskChangeNotificationController.TaskStackConsumer
        public final void accept(ITaskStackListener iTaskStackListener, Message message) {
            iTaskStackListener.onActivityRotation(message.arg1);
        }
    };

    @FunctionalInterface
    public interface TaskStackConsumer {
        void accept(ITaskStackListener iTaskStackListener, Message message) throws RemoteException;
    }

    static /* synthetic */ void lambda$new$10(ITaskStackListener l, Message m) throws RemoteException {
        SomeArgs args = (SomeArgs) m.obj;
        l.onActivityRestartAttempt((ActivityManager.RunningTaskInfo) args.arg1, args.argi1 != 0, args.argi2 != 0, args.argi3 != 0);
    }

    private class MainHandler extends Handler {
        public MainHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    synchronized (TaskChangeNotificationController.this.mServiceLock) {
                        TaskChangeNotificationController.this.mStackSupervisor.logStackState();
                        break;
                    }
                    break;
                case 2:
                    TaskChangeNotificationController taskChangeNotificationController = TaskChangeNotificationController.this;
                    taskChangeNotificationController.forAllRemoteListeners(taskChangeNotificationController.mNotifyTaskStackChanged, msg);
                    break;
                case 3:
                    TaskChangeNotificationController taskChangeNotificationController2 = TaskChangeNotificationController.this;
                    taskChangeNotificationController2.forAllRemoteListeners(taskChangeNotificationController2.mNotifyActivityPinned, msg);
                    break;
                case 4:
                    TaskChangeNotificationController taskChangeNotificationController3 = TaskChangeNotificationController.this;
                    taskChangeNotificationController3.forAllRemoteListeners(taskChangeNotificationController3.mNotifyActivityRestartAttempt, msg);
                    break;
                case 6:
                    TaskChangeNotificationController taskChangeNotificationController4 = TaskChangeNotificationController.this;
                    taskChangeNotificationController4.forAllRemoteListeners(taskChangeNotificationController4.mNotifyActivityForcedResizable, msg);
                    break;
                case 7:
                    TaskChangeNotificationController taskChangeNotificationController5 = TaskChangeNotificationController.this;
                    taskChangeNotificationController5.forAllRemoteListeners(taskChangeNotificationController5.mNotifyActivityDismissingDockedStack, msg);
                    break;
                case 8:
                    TaskChangeNotificationController taskChangeNotificationController6 = TaskChangeNotificationController.this;
                    taskChangeNotificationController6.forAllRemoteListeners(taskChangeNotificationController6.mNotifyTaskCreated, msg);
                    break;
                case 9:
                    TaskChangeNotificationController taskChangeNotificationController7 = TaskChangeNotificationController.this;
                    taskChangeNotificationController7.forAllRemoteListeners(taskChangeNotificationController7.mNotifyTaskRemoved, msg);
                    break;
                case 10:
                    TaskChangeNotificationController taskChangeNotificationController8 = TaskChangeNotificationController.this;
                    taskChangeNotificationController8.forAllRemoteListeners(taskChangeNotificationController8.mNotifyTaskMovedToFront, msg);
                    break;
                case 11:
                    TaskChangeNotificationController taskChangeNotificationController9 = TaskChangeNotificationController.this;
                    taskChangeNotificationController9.forAllRemoteListeners(taskChangeNotificationController9.mNotifyTaskDescriptionChanged, msg);
                    break;
                case 12:
                    TaskChangeNotificationController taskChangeNotificationController10 = TaskChangeNotificationController.this;
                    taskChangeNotificationController10.forAllRemoteListeners(taskChangeNotificationController10.mNotifyActivityRequestedOrientationChanged, msg);
                    break;
                case 13:
                    TaskChangeNotificationController taskChangeNotificationController11 = TaskChangeNotificationController.this;
                    taskChangeNotificationController11.forAllRemoteListeners(taskChangeNotificationController11.mNotifyTaskRemovalStarted, msg);
                    break;
                case 14:
                    TaskChangeNotificationController taskChangeNotificationController12 = TaskChangeNotificationController.this;
                    taskChangeNotificationController12.forAllRemoteListeners(taskChangeNotificationController12.mNotifyTaskProfileLocked, msg);
                    break;
                case 15:
                    TaskChangeNotificationController taskChangeNotificationController13 = TaskChangeNotificationController.this;
                    taskChangeNotificationController13.forAllRemoteListeners(taskChangeNotificationController13.mNotifyTaskSnapshotChanged, msg);
                    break;
                case 17:
                    TaskChangeNotificationController taskChangeNotificationController14 = TaskChangeNotificationController.this;
                    taskChangeNotificationController14.forAllRemoteListeners(taskChangeNotificationController14.mNotifyActivityUnpinned, msg);
                    break;
                case 18:
                    TaskChangeNotificationController taskChangeNotificationController15 = TaskChangeNotificationController.this;
                    taskChangeNotificationController15.forAllRemoteListeners(taskChangeNotificationController15.mNotifyActivityLaunchOnSecondaryDisplayFailed, msg);
                    break;
                case 19:
                    TaskChangeNotificationController taskChangeNotificationController16 = TaskChangeNotificationController.this;
                    taskChangeNotificationController16.forAllRemoteListeners(taskChangeNotificationController16.mNotifyActivityLaunchOnSecondaryDisplayRerouted, msg);
                    break;
                case 20:
                    TaskChangeNotificationController taskChangeNotificationController17 = TaskChangeNotificationController.this;
                    taskChangeNotificationController17.forAllRemoteListeners(taskChangeNotificationController17.mOnSizeCompatModeActivityChanged, msg);
                    break;
                case 21:
                    TaskChangeNotificationController taskChangeNotificationController18 = TaskChangeNotificationController.this;
                    taskChangeNotificationController18.forAllRemoteListeners(taskChangeNotificationController18.mNotifyBackPressedOnTaskRoot, msg);
                    break;
                case 22:
                    TaskChangeNotificationController taskChangeNotificationController19 = TaskChangeNotificationController.this;
                    taskChangeNotificationController19.forAllRemoteListeners(taskChangeNotificationController19.mNotifySingleTaskDisplayDrawn, msg);
                    break;
                case 23:
                    TaskChangeNotificationController taskChangeNotificationController20 = TaskChangeNotificationController.this;
                    taskChangeNotificationController20.forAllRemoteListeners(taskChangeNotificationController20.mNotifyTaskDisplayChanged, msg);
                    break;
                case 24:
                    TaskChangeNotificationController taskChangeNotificationController21 = TaskChangeNotificationController.this;
                    taskChangeNotificationController21.forAllRemoteListeners(taskChangeNotificationController21.mNotifyTaskListUpdated, msg);
                    break;
                case 25:
                    TaskChangeNotificationController taskChangeNotificationController22 = TaskChangeNotificationController.this;
                    taskChangeNotificationController22.forAllRemoteListeners(taskChangeNotificationController22.mNotifySingleTaskDisplayEmpty, msg);
                    break;
                case 26:
                    TaskChangeNotificationController taskChangeNotificationController23 = TaskChangeNotificationController.this;
                    taskChangeNotificationController23.forAllRemoteListeners(taskChangeNotificationController23.mNotifyTaskListFrozen, msg);
                    break;
                case 27:
                    TaskChangeNotificationController taskChangeNotificationController24 = TaskChangeNotificationController.this;
                    taskChangeNotificationController24.forAllRemoteListeners(taskChangeNotificationController24.mNotifyTaskFocusChanged, msg);
                    break;
                case TaskChangeNotificationController.NOTIFY_TASK_REQUESTED_ORIENTATION_CHANGED_MSG /* 28 */:
                    TaskChangeNotificationController taskChangeNotificationController25 = TaskChangeNotificationController.this;
                    taskChangeNotificationController25.forAllRemoteListeners(taskChangeNotificationController25.mNotifyTaskRequestedOrientationChanged, msg);
                    break;
                case 29:
                    TaskChangeNotificationController taskChangeNotificationController26 = TaskChangeNotificationController.this;
                    taskChangeNotificationController26.forAllRemoteListeners(taskChangeNotificationController26.mNotifyOnActivityRotation, msg);
                    break;
            }
            if (msg.obj instanceof SomeArgs) {
                ((SomeArgs) msg.obj).recycle();
            }
        }
    }

    public TaskChangeNotificationController(Object serviceLock, ActivityStackSupervisor stackSupervisor, Handler handler) {
        this.mServiceLock = serviceLock;
        this.mStackSupervisor = stackSupervisor;
        this.mHandler = new MainHandler(handler.getLooper());
    }

    public void registerTaskStackListener(ITaskStackListener listener) {
        synchronized (this.mServiceLock) {
            if (listener != null) {
                if (Binder.getCallingPid() == Process.myPid()) {
                    if (!this.mLocalTaskStackListeners.contains(listener)) {
                        this.mLocalTaskStackListeners.add(listener);
                    }
                } else {
                    this.mRemoteTaskStackListeners.register(listener);
                }
            }
        }
    }

    public void unregisterTaskStackListener(ITaskStackListener listener) {
        synchronized (this.mServiceLock) {
            if (listener != null) {
                if (Binder.getCallingPid() == Process.myPid()) {
                    this.mLocalTaskStackListeners.remove(listener);
                } else {
                    this.mRemoteTaskStackListeners.unregister(listener);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forAllRemoteListeners(TaskStackConsumer callback, Message message) {
        synchronized (this.mServiceLock) {
            for (int i = this.mRemoteTaskStackListeners.beginBroadcast() - 1; i >= 0; i--) {
                try {
                    callback.accept((ITaskStackListener) this.mRemoteTaskStackListeners.getBroadcastItem(i), message);
                } catch (RemoteException e) {
                }
            }
            this.mRemoteTaskStackListeners.finishBroadcast();
        }
    }

    private void forAllLocalListeners(TaskStackConsumer callback, Message message) {
        synchronized (this.mServiceLock) {
            for (int i = this.mLocalTaskStackListeners.size() - 1; i >= 0; i--) {
                try {
                    callback.accept(this.mLocalTaskStackListeners.get(i), message);
                } catch (RemoteException e) {
                }
            }
        }
    }

    void notifyTaskStackChanged() {
        this.mHandler.sendEmptyMessage(1);
        this.mHandler.removeMessages(2);
        Message msg = this.mHandler.obtainMessage(2);
        forAllLocalListeners(this.mNotifyTaskStackChanged, msg);
        this.mHandler.sendMessageDelayed(msg, 100L);
    }

    void notifyActivityPinned(ActivityRecord r) {
        this.mHandler.removeMessages(3);
        Message msg = this.mHandler.obtainMessage(3, r.getTask().mTaskId, r.getRootTaskId(), r.packageName);
        msg.sendingUid = r.mUserId;
        forAllLocalListeners(this.mNotifyActivityPinned, msg);
        msg.sendToTarget();
    }

    void notifyActivityUnpinned() {
        this.mHandler.removeMessages(17);
        Message msg = this.mHandler.obtainMessage(17);
        forAllLocalListeners(this.mNotifyActivityUnpinned, msg);
        msg.sendToTarget();
    }

    void notifyActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, boolean z2, boolean z3) {
        this.mHandler.removeMessages(4);
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = runningTaskInfo;
        someArgsObtain.argi1 = z ? 1 : 0;
        someArgsObtain.argi2 = z2 ? 1 : 0;
        someArgsObtain.argi3 = z3 ? 1 : 0;
        Message messageObtainMessage = this.mHandler.obtainMessage(4, someArgsObtain);
        forAllLocalListeners(this.mNotifyActivityRestartAttempt, messageObtainMessage);
        messageObtainMessage.sendToTarget();
    }

    void notifyActivityDismissingDockedStack() {
        this.mHandler.removeMessages(7);
        Message msg = this.mHandler.obtainMessage(7);
        forAllLocalListeners(this.mNotifyActivityDismissingDockedStack, msg);
        msg.sendToTarget();
    }

    void notifyActivityForcedResizable(int taskId, int reason, String packageName) {
        this.mHandler.removeMessages(6);
        Message msg = this.mHandler.obtainMessage(6, taskId, reason, packageName);
        forAllLocalListeners(this.mNotifyActivityForcedResizable, msg);
        msg.sendToTarget();
    }

    void notifyActivityLaunchOnSecondaryDisplayFailed(TaskInfo ti, int requestedDisplayId) {
        this.mHandler.removeMessages(18);
        Message msg = this.mHandler.obtainMessage(18, requestedDisplayId, 0, ti);
        forAllLocalListeners(this.mNotifyActivityLaunchOnSecondaryDisplayFailed, msg);
        msg.sendToTarget();
    }

    void notifyActivityLaunchOnSecondaryDisplayRerouted(TaskInfo ti, int requestedDisplayId) {
        this.mHandler.removeMessages(19);
        Message msg = this.mHandler.obtainMessage(19, requestedDisplayId, 0, ti);
        forAllLocalListeners(this.mNotifyActivityLaunchOnSecondaryDisplayRerouted, msg);
        msg.sendToTarget();
    }

    void notifyTaskCreated(int taskId, ComponentName componentName) {
        Message msg = this.mHandler.obtainMessage(8, taskId, 0, componentName);
        forAllLocalListeners(this.mNotifyTaskCreated, msg);
        msg.sendToTarget();
    }

    void notifyTaskRemoved(int taskId) {
        Message msg = this.mHandler.obtainMessage(9, taskId, 0);
        forAllLocalListeners(this.mNotifyTaskRemoved, msg);
        msg.sendToTarget();
    }

    void notifyTaskMovedToFront(TaskInfo ti) {
        Message msg = this.mHandler.obtainMessage(10, ti);
        forAllLocalListeners(this.mNotifyTaskMovedToFront, msg);
        msg.sendToTarget();
    }

    void notifyTaskDescriptionChanged(TaskInfo taskInfo) {
        Message msg = this.mHandler.obtainMessage(11, taskInfo);
        forAllLocalListeners(this.mNotifyTaskDescriptionChanged, msg);
        msg.sendToTarget();
    }

    void notifyActivityRequestedOrientationChanged(int taskId, int orientation) {
        Message msg = this.mHandler.obtainMessage(12, taskId, orientation);
        forAllLocalListeners(this.mNotifyActivityRequestedOrientationChanged, msg);
        msg.sendToTarget();
    }

    void notifyTaskRemovalStarted(ActivityManager.RunningTaskInfo taskInfo) {
        Message msg = this.mHandler.obtainMessage(13, taskInfo);
        forAllLocalListeners(this.mNotifyTaskRemovalStarted, msg);
        msg.sendToTarget();
    }

    void notifyTaskProfileLocked(int taskId, int userId) {
        Message msg = this.mHandler.obtainMessage(14, taskId, userId);
        forAllLocalListeners(this.mNotifyTaskProfileLocked, msg);
        msg.sendToTarget();
    }

    void notifyTaskSnapshotChanged(int taskId, ActivityManager.TaskSnapshot snapshot) {
        Message msg = this.mHandler.obtainMessage(15, taskId, 0, snapshot);
        forAllLocalListeners(this.mNotifyTaskSnapshotChanged, msg);
        msg.sendToTarget();
    }

    void notifySizeCompatModeActivityChanged(int displayId, IBinder activityToken) {
        Message msg = this.mHandler.obtainMessage(20, displayId, 0, activityToken);
        forAllLocalListeners(this.mOnSizeCompatModeActivityChanged, msg);
        msg.sendToTarget();
    }

    void notifyBackPressedOnTaskRoot(TaskInfo taskInfo) {
        Message msg = this.mHandler.obtainMessage(21, taskInfo);
        forAllLocalListeners(this.mNotifyBackPressedOnTaskRoot, msg);
        msg.sendToTarget();
    }

    void notifySingleTaskDisplayDrawn(int displayId) {
        Message msg = this.mHandler.obtainMessage(22, displayId, 0);
        forAllLocalListeners(this.mNotifySingleTaskDisplayDrawn, msg);
        msg.sendToTarget();
    }

    void notifySingleTaskDisplayEmpty(int displayId) {
        Message msg = this.mHandler.obtainMessage(25, displayId, 0);
        forAllLocalListeners(this.mNotifySingleTaskDisplayEmpty, msg);
        msg.sendToTarget();
    }

    void notifyTaskDisplayChanged(int taskId, int newDisplayId) {
        Message msg = this.mHandler.obtainMessage(23, taskId, newDisplayId);
        forAllLocalListeners(this.mNotifyTaskStackChanged, msg);
        msg.sendToTarget();
    }

    void notifyTaskListUpdated() {
        Message msg = this.mHandler.obtainMessage(24);
        forAllLocalListeners(this.mNotifyTaskListUpdated, msg);
        msg.sendToTarget();
    }

    void notifyTaskListFrozen(boolean z) {
        Message messageObtainMessage = this.mHandler.obtainMessage(26, z ? 1 : 0, 0);
        forAllLocalListeners(this.mNotifyTaskListFrozen, messageObtainMessage);
        messageObtainMessage.sendToTarget();
    }

    void notifyTaskFocusChanged(int i, boolean z) {
        Message messageObtainMessage = this.mHandler.obtainMessage(27, i, z ? 1 : 0);
        forAllLocalListeners(this.mNotifyTaskFocusChanged, messageObtainMessage);
        messageObtainMessage.sendToTarget();
    }

    void notifyTaskRequestedOrientationChanged(int taskId, int requestedOrientation) {
        Message msg = this.mHandler.obtainMessage(NOTIFY_TASK_REQUESTED_ORIENTATION_CHANGED_MSG, taskId, requestedOrientation);
        forAllLocalListeners(this.mNotifyTaskRequestedOrientationChanged, msg);
        msg.sendToTarget();
    }

    void notifyOnActivityRotation(int displayId) {
        Message msg = this.mHandler.obtainMessage(29, displayId, 0);
        forAllLocalListeners(this.mNotifyOnActivityRotation, msg);
        msg.sendToTarget();
    }
}
