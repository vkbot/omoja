package com.android.server.job.controllers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.UserHandle;
import android.util.ArraySet;
import android.util.Log;
import android.util.Slog;
import android.util.SparseBooleanArray;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.DeviceIdleInternal;
import com.android.server.LocalServices;
import com.android.server.job.JobSchedulerService;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final class DeviceIdleJobsController extends StateController {
    private static final long BACKGROUND_JOBS_DELAY = 3000;
    private static final boolean DEBUG;
    static final int PROCESS_BACKGROUND_JOBS = 1;
    private static final String TAG = "JobScheduler.DeviceIdle";
    private final ArraySet<JobStatus> mAllowInIdleJobs;
    private final BroadcastReceiver mBroadcastReceiver;
    private boolean mDeviceIdleMode;
    private final DeviceIdleUpdateFunctor mDeviceIdleUpdateFunctor;
    private int[] mDeviceIdleWhitelistAppIds;
    private final SparseBooleanArray mForegroundUids;
    private final DeviceIdleJobsDelayHandler mHandler;
    private final DeviceIdleInternal mLocalDeviceIdleController;
    private final PowerManager mPowerManager;
    private int[] mPowerSaveTempWhitelistAppIds;

    static {
        DEBUG = JobSchedulerService.DEBUG || Log.isLoggable(TAG, 3);
    }

    public DeviceIdleJobsController(JobSchedulerService service) {
        super(service);
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.job.controllers.DeviceIdleJobsController.1
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:17:0x0038  */
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                byte b;
                boolean z = false;
                switch (intent.getAction()) {
                    case "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED":
                        b = 3;
                        break;
                    case "android.os.action.POWER_SAVE_WHITELIST_CHANGED":
                        b = 2;
                        break;
                    case "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED":
                        b = 0;
                        break;
                    case "android.os.action.DEVICE_IDLE_MODE_CHANGED":
                        b = 1;
                        break;
                    default:
                        b = -1;
                        break;
                }
                if (b == 0 || b == 1) {
                    DeviceIdleJobsController deviceIdleJobsController = DeviceIdleJobsController.this;
                    if (deviceIdleJobsController.mPowerManager != null && (DeviceIdleJobsController.this.mPowerManager.isDeviceIdleMode() || DeviceIdleJobsController.this.mPowerManager.isLightDeviceIdleMode())) {
                        z = true;
                    }
                    deviceIdleJobsController.updateIdleMode(z);
                    return;
                }
                if (b == 2) {
                    synchronized (DeviceIdleJobsController.this.mLock) {
                        DeviceIdleJobsController.this.mDeviceIdleWhitelistAppIds = DeviceIdleJobsController.this.mLocalDeviceIdleController.getPowerSaveWhitelistUserAppIds();
                        if (DeviceIdleJobsController.DEBUG) {
                            Slog.d(DeviceIdleJobsController.TAG, "Got whitelist " + Arrays.toString(DeviceIdleJobsController.this.mDeviceIdleWhitelistAppIds));
                        }
                    }
                    return;
                }
                if (b == 3) {
                    synchronized (DeviceIdleJobsController.this.mLock) {
                        DeviceIdleJobsController.this.mPowerSaveTempWhitelistAppIds = DeviceIdleJobsController.this.mLocalDeviceIdleController.getPowerSaveTempWhitelistAppIds();
                        if (DeviceIdleJobsController.DEBUG) {
                            Slog.d(DeviceIdleJobsController.TAG, "Got temp whitelist " + Arrays.toString(DeviceIdleJobsController.this.mPowerSaveTempWhitelistAppIds));
                        }
                        boolean changed = false;
                        for (int i = 0; i < DeviceIdleJobsController.this.mAllowInIdleJobs.size(); i++) {
                            changed |= DeviceIdleJobsController.this.updateTaskStateLocked((JobStatus) DeviceIdleJobsController.this.mAllowInIdleJobs.valueAt(i));
                        }
                        if (changed) {
                            DeviceIdleJobsController.this.mStateChangedListener.onControllerStateChanged();
                        }
                    }
                }
            }
        };
        this.mHandler = new DeviceIdleJobsDelayHandler(this.mContext.getMainLooper());
        this.mPowerManager = (PowerManager) this.mContext.getSystemService("power");
        DeviceIdleInternal deviceIdleInternal = (DeviceIdleInternal) LocalServices.getService(DeviceIdleInternal.class);
        this.mLocalDeviceIdleController = deviceIdleInternal;
        this.mDeviceIdleWhitelistAppIds = deviceIdleInternal.getPowerSaveWhitelistUserAppIds();
        this.mPowerSaveTempWhitelistAppIds = this.mLocalDeviceIdleController.getPowerSaveTempWhitelistAppIds();
        this.mDeviceIdleUpdateFunctor = new DeviceIdleUpdateFunctor();
        this.mAllowInIdleJobs = new ArraySet<>();
        this.mForegroundUids = new SparseBooleanArray();
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        filter.addAction("android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED");
        filter.addAction("android.os.action.POWER_SAVE_WHITELIST_CHANGED");
        filter.addAction("android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED");
        this.mContext.registerReceiverAsUser(this.mBroadcastReceiver, UserHandle.ALL, filter, null, null);
    }

    void updateIdleMode(boolean enabled) {
        boolean changed = false;
        synchronized (this.mLock) {
            if (this.mDeviceIdleMode != enabled) {
                changed = true;
            }
            this.mDeviceIdleMode = enabled;
            if (DEBUG) {
                Slog.d(TAG, "mDeviceIdleMode=" + this.mDeviceIdleMode);
            }
            if (enabled) {
                this.mHandler.removeMessages(1);
                this.mService.getJobStore().forEachJob(this.mDeviceIdleUpdateFunctor);
            } else {
                for (int i = 0; i < this.mForegroundUids.size(); i++) {
                    if (this.mForegroundUids.valueAt(i)) {
                        this.mService.getJobStore().forEachJobForSourceUid(this.mForegroundUids.keyAt(i), this.mDeviceIdleUpdateFunctor);
                    }
                }
                this.mHandler.sendEmptyMessageDelayed(1, 3000L);
            }
        }
        if (changed) {
            this.mStateChangedListener.onDeviceIdleStateChanged(enabled);
        }
    }

    public void setUidActiveLocked(int uid, boolean active) {
        boolean changed = active != this.mForegroundUids.get(uid);
        if (!changed) {
            return;
        }
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append("uid ");
            sb.append(uid);
            sb.append(" going ");
            sb.append(active ? "active" : "inactive");
            Slog.d(TAG, sb.toString());
        }
        this.mForegroundUids.put(uid, active);
        this.mDeviceIdleUpdateFunctor.mChanged = false;
        this.mService.getJobStore().forEachJobForSourceUid(uid, this.mDeviceIdleUpdateFunctor);
        if (this.mDeviceIdleUpdateFunctor.mChanged) {
            this.mStateChangedListener.onControllerStateChanged();
        }
    }

    boolean isWhitelistedLocked(JobStatus job) {
        return Arrays.binarySearch(this.mDeviceIdleWhitelistAppIds, UserHandle.getAppId(job.getSourceUid())) >= 0;
    }

    boolean isTempWhitelistedLocked(JobStatus job) {
        return ArrayUtils.contains(this.mPowerSaveTempWhitelistAppIds, UserHandle.getAppId(job.getSourceUid()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateTaskStateLocked(JobStatus task) {
        boolean enableTask = true;
        boolean allowInIdle = (task.getFlags() & 2) != 0 && (this.mForegroundUids.get(task.getSourceUid()) || isTempWhitelistedLocked(task));
        boolean whitelisted = isWhitelistedLocked(task);
        if (this.mDeviceIdleMode && !whitelisted && !allowInIdle) {
            enableTask = false;
        }
        return task.setDeviceNotDozingConstraintSatisfied(enableTask, whitelisted);
    }

    @Override // com.android.server.job.controllers.StateController
    public void maybeStartTrackingJobLocked(JobStatus jobStatus, JobStatus lastJob) {
        if ((jobStatus.getFlags() & 2) != 0) {
            this.mAllowInIdleJobs.add(jobStatus);
        }
        updateTaskStateLocked(jobStatus);
    }

    @Override // com.android.server.job.controllers.StateController
    public void maybeStopTrackingJobLocked(JobStatus jobStatus, JobStatus incomingJob, boolean forUpdate) {
        if ((jobStatus.getFlags() & 2) != 0) {
            this.mAllowInIdleJobs.remove(jobStatus);
        }
    }

    @Override // com.android.server.job.controllers.StateController
    public void dumpControllerStateLocked(final IndentingPrintWriter pw, Predicate<JobStatus> predicate) {
        pw.println("Idle mode: " + this.mDeviceIdleMode);
        pw.println();
        this.mService.getJobStore().forEachJob(predicate, new Consumer() { // from class: com.android.server.job.controllers.-$$Lambda$DeviceIdleJobsController$essc-q8XD1L8ojfbmN1Aow_AVPk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$dumpControllerStateLocked$0$DeviceIdleJobsController(pw, (JobStatus) obj);
            }
        });
    }

    public /* synthetic */ void lambda$dumpControllerStateLocked$0$DeviceIdleJobsController(IndentingPrintWriter pw, JobStatus jobStatus) {
        pw.print("#");
        jobStatus.printUniqueId(pw);
        pw.print(" from ");
        UserHandle.formatUid(pw, jobStatus.getSourceUid());
        pw.print(": ");
        pw.print(jobStatus.getSourcePackageName());
        pw.print((jobStatus.satisfiedConstraints & 33554432) != 0 ? " RUNNABLE" : " WAITING");
        if (jobStatus.dozeWhitelisted) {
            pw.print(" WHITELISTED");
        }
        if (this.mAllowInIdleJobs.contains(jobStatus)) {
            pw.print(" ALLOWED_IN_DOZE");
        }
        pw.println();
    }

    @Override // com.android.server.job.controllers.StateController
    public void dumpControllerStateLocked(final ProtoOutputStream proto, long fieldId, Predicate<JobStatus> predicate) {
        long token = proto.start(fieldId);
        long mToken = proto.start(1146756268037L);
        proto.write(1133871366145L, this.mDeviceIdleMode);
        this.mService.getJobStore().forEachJob(predicate, new Consumer() { // from class: com.android.server.job.controllers.-$$Lambda$DeviceIdleJobsController$JMszgdQK87AK2bjaiI_rwQuTKpc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$dumpControllerStateLocked$1$DeviceIdleJobsController(proto, (JobStatus) obj);
            }
        });
        proto.end(mToken);
        proto.end(token);
    }

    public /* synthetic */ void lambda$dumpControllerStateLocked$1$DeviceIdleJobsController(ProtoOutputStream proto, JobStatus jobStatus) {
        long jsToken = proto.start(2246267895810L);
        jobStatus.writeToShortProto(proto, 1146756268033L);
        proto.write(1120986464258L, jobStatus.getSourceUid());
        proto.write(1138166333443L, jobStatus.getSourcePackageName());
        proto.write(1133871366148L, (jobStatus.satisfiedConstraints & 33554432) != 0);
        proto.write(1133871366149L, jobStatus.dozeWhitelisted);
        proto.write(1133871366150L, this.mAllowInIdleJobs.contains(jobStatus));
        proto.end(jsToken);
    }

    final class DeviceIdleUpdateFunctor implements Consumer<JobStatus> {
        boolean mChanged;

        DeviceIdleUpdateFunctor() {
        }

        @Override // java.util.function.Consumer
        public void accept(JobStatus jobStatus) {
            this.mChanged |= DeviceIdleJobsController.this.updateTaskStateLocked(jobStatus);
        }
    }

    final class DeviceIdleJobsDelayHandler extends Handler {
        public DeviceIdleJobsDelayHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                synchronized (DeviceIdleJobsController.this.mLock) {
                    DeviceIdleJobsController.this.mDeviceIdleUpdateFunctor.mChanged = false;
                    DeviceIdleJobsController.this.mService.getJobStore().forEachJob(DeviceIdleJobsController.this.mDeviceIdleUpdateFunctor);
                    if (DeviceIdleJobsController.this.mDeviceIdleUpdateFunctor.mChanged) {
                        DeviceIdleJobsController.this.mStateChangedListener.onControllerStateChanged();
                    }
                }
            }
        }
    }
}
