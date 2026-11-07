package com.android.server.job;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.PowerManager;
import android.os.RemoteException;
import android.util.Slog;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.StatLogger;
import com.android.server.job.controllers.JobStatus;
import com.android.server.job.controllers.StateController;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class JobConcurrencyManager {
    private static final boolean DEBUG = JobSchedulerService.DEBUG;
    private static final int MAX_JOB_CONTEXTS_COUNT = 16;
    private static final int SYSTEM_STATE_REFRESH_MIN_INTERVAL = 1000;
    private static final String TAG = "JobScheduler";
    private final JobSchedulerService.Constants mConstants;
    private final Context mContext;
    private boolean mCurrentInteractiveState;
    private boolean mEffectiveInteractiveState;
    private int mLastMemoryTrimLevel;
    private long mLastScreenOffRealtime;
    private long mLastScreenOnRealtime;
    private final Object mLock;
    private JobSchedulerService.MaxJobCounts mMaxJobCounts;
    private long mNextSystemStateRefreshTime;
    private PowerManager mPowerManager;
    private final JobSchedulerService mService;
    JobStatus[] mRecycledAssignContextIdToJobMap = new JobStatus[16];
    boolean[] mRecycledSlotChanged = new boolean[16];
    int[] mRecycledPreferredUidForContext = new int[16];
    private final JobCountTracker mJobCountTracker = new JobCountTracker();
    private final StatLogger mStatLogger = new StatLogger(new String[]{"assignJobsToContexts", "refreshSystemState"});
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.android.server.job.JobConcurrencyManager.1
        /* JADX WARN: Code duplicated, block: B:13:0x0029  */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            byte b;
            String action = intent.getAction();
            int iHashCode = action.hashCode();
            if (iHashCode != -2128145023) {
                if (iHashCode == -1454123155 && action.equals("android.intent.action.SCREEN_ON")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (action.equals("android.intent.action.SCREEN_OFF")) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                JobConcurrencyManager.this.onInteractiveStateChanged(true);
            } else if (b == 1) {
                JobConcurrencyManager.this.onInteractiveStateChanged(false);
            }
        }
    };
    private final Runnable mRampUpForScreenOff = new Runnable() { // from class: com.android.server.job.-$$Lambda$JobConcurrencyManager$5dmb0pQscXPwEG6SBnhs7aCwpSs
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.rampUpForScreenOff();
        }
    };
    private final Handler mHandler = BackgroundThread.getHandler();

    interface Stats {
        public static final int ASSIGN_JOBS_TO_CONTEXTS = 0;
        public static final int COUNT = 2;
        public static final int REFRESH_SYSTEM_STATE = 1;
    }

    JobConcurrencyManager(JobSchedulerService service) {
        this.mService = service;
        this.mLock = service.mLock;
        this.mConstants = service.mConstants;
        this.mContext = service.getContext();
    }

    public void onSystemReady() {
        this.mPowerManager = (PowerManager) this.mContext.getSystemService(PowerManager.class);
        IntentFilter filter = new IntentFilter("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
        this.mContext.registerReceiver(this.mReceiver, filter);
        onInteractiveStateChanged(this.mPowerManager.isInteractive());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onInteractiveStateChanged(boolean interactive) {
        synchronized (this.mLock) {
            if (this.mCurrentInteractiveState == interactive) {
                return;
            }
            this.mCurrentInteractiveState = interactive;
            if (DEBUG) {
                Slog.d("JobScheduler", "Interactive: " + interactive);
            }
            long nowRealtime = JobSchedulerService.sElapsedRealtimeClock.millis();
            if (interactive) {
                this.mLastScreenOnRealtime = nowRealtime;
                this.mEffectiveInteractiveState = true;
                this.mHandler.removeCallbacks(this.mRampUpForScreenOff);
            } else {
                this.mLastScreenOffRealtime = nowRealtime;
                this.mHandler.postDelayed(this.mRampUpForScreenOff, this.mConstants.SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS.getValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rampUpForScreenOff() {
        synchronized (this.mLock) {
            if (this.mEffectiveInteractiveState) {
                if (this.mLastScreenOnRealtime > this.mLastScreenOffRealtime) {
                    return;
                }
                long now = JobSchedulerService.sElapsedRealtimeClock.millis();
                if (this.mLastScreenOffRealtime + ((long) this.mConstants.SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS.getValue()) > now) {
                    return;
                }
                this.mEffectiveInteractiveState = false;
                if (DEBUG) {
                    Slog.d("JobScheduler", "Ramping up concurrency");
                }
                this.mService.maybeRunPendingJobsLocked();
            }
        }
    }

    private boolean isFgJob(JobStatus job) {
        return job.lastEvaluatedPriority >= 40;
    }

    private void refreshSystemStateLocked() {
        long nowUptime = JobSchedulerService.sUptimeMillisClock.millis();
        if (nowUptime < this.mNextSystemStateRefreshTime) {
            return;
        }
        long start = this.mStatLogger.getTime();
        this.mNextSystemStateRefreshTime = 1000 + nowUptime;
        this.mLastMemoryTrimLevel = 0;
        try {
            this.mLastMemoryTrimLevel = ActivityManager.getService().getMemoryTrimLevel();
        } catch (RemoteException e) {
        }
        this.mStatLogger.logDurationStat(1, start);
    }

    private void updateMaxCountsLocked() {
        JobSchedulerService.MaxJobCountsPerMemoryTrimLevel jobCounts;
        refreshSystemStateLocked();
        if (this.mEffectiveInteractiveState) {
            jobCounts = this.mConstants.MAX_JOB_COUNTS_SCREEN_ON;
        } else {
            jobCounts = this.mConstants.MAX_JOB_COUNTS_SCREEN_OFF;
        }
        int i = this.mLastMemoryTrimLevel;
        if (i == 1) {
            this.mMaxJobCounts = jobCounts.moderate;
            return;
        }
        if (i == 2) {
            this.mMaxJobCounts = jobCounts.low;
        } else if (i == 3) {
            this.mMaxJobCounts = jobCounts.critical;
        } else {
            this.mMaxJobCounts = jobCounts.normal;
        }
    }

    void assignJobsToContextsLocked() {
        long start = this.mStatLogger.getTime();
        assignJobsToContextsInternalLocked();
        this.mStatLogger.logDurationStat(0, start);
    }

    private void assignJobsToContextsInternalLocked() {
        int i;
        int i2;
        int[] preferredUidForContext;
        int selectedContextId;
        int i3;
        int jobPriority;
        if (DEBUG) {
            Slog.d("JobScheduler", printPendingQueueLocked());
        }
        JobPackageTracker tracker = this.mService.mJobPackageTracker;
        List<JobStatus> pendingJobs = this.mService.mPendingJobs;
        List<JobServiceContext> activeServices = this.mService.mActiveServices;
        List<StateController> controllers = this.mService.mControllers;
        updateMaxCountsLocked();
        JobStatus[] contextIdToJobMap = this.mRecycledAssignContextIdToJobMap;
        boolean[] slotChanged = this.mRecycledSlotChanged;
        int[] preferredUidForContext2 = this.mRecycledPreferredUidForContext;
        this.mJobCountTracker.reset(this.mMaxJobCounts.getMaxTotal(), this.mMaxJobCounts.getMaxBg(), this.mMaxJobCounts.getMinBg());
        int i4 = 0;
        while (true) {
            i = 16;
            if (i4 >= 16) {
                break;
            }
            JobServiceContext js = this.mService.mActiveServices.get(i4);
            JobStatus status = js.getRunningJobLocked();
            contextIdToJobMap[i4] = status;
            if (status != null) {
                this.mJobCountTracker.incrementRunningJobCount(isFgJob(status));
            }
            slotChanged[i4] = false;
            preferredUidForContext2[i4] = js.getPreferredUid();
            i4++;
        }
        if (DEBUG) {
            Slog.d("JobScheduler", printContextIdToJobMap(contextIdToJobMap, "running jobs initial"));
        }
        int i5 = 0;
        while (true) {
            i2 = -1;
            if (i5 >= pendingJobs.size()) {
                break;
            }
            JobStatus pending = pendingJobs.get(i5);
            if (findJobContextIdFromMap(pending, contextIdToJobMap) == -1) {
                int priority = this.mService.evaluateJobPriorityLocked(pending);
                pending.lastEvaluatedPriority = priority;
                this.mJobCountTracker.incrementPendingJobCount(isFgJob(pending));
            }
            i5++;
        }
        this.mJobCountTracker.onCountDone();
        int i6 = 0;
        while (i6 < pendingJobs.size()) {
            JobStatus nextPending = pendingJobs.get(i6);
            int jobRunningContext = findJobContextIdFromMap(nextPending, contextIdToJobMap);
            if (jobRunningContext != i2) {
                preferredUidForContext = preferredUidForContext2;
                i3 = i2;
            } else {
                boolean isPendingFg = isFgJob(nextPending);
                int minPriorityForPreemption = Integer.MAX_VALUE;
                int selectedContextId2 = -1;
                boolean startingJob = false;
                int j = 0;
                while (true) {
                    if (j >= i) {
                        preferredUidForContext = preferredUidForContext2;
                        selectedContextId = selectedContextId2;
                        break;
                    }
                    JobStatus job = contextIdToJobMap[j];
                    int jobRunningContext2 = jobRunningContext;
                    int jobRunningContext3 = preferredUidForContext2[j];
                    if (job == null) {
                        preferredUidForContext = preferredUidForContext2;
                        boolean preferredUidOkay = jobRunningContext3 == nextPending.getUid() || jobRunningContext3 == -1;
                        if (preferredUidOkay && this.mJobCountTracker.canJobStart(isPendingFg)) {
                            int selectedContextId3 = j;
                            startingJob = true;
                            selectedContextId = selectedContextId3;
                            break;
                        }
                    } else {
                        preferredUidForContext = preferredUidForContext2;
                        int uid = job.getUid();
                        int preferredUid = nextPending.getUid();
                        if (uid == preferredUid && (jobPriority = this.mService.evaluateJobPriorityLocked(job)) < nextPending.lastEvaluatedPriority && minPriorityForPreemption > jobPriority) {
                            int minPriorityForPreemption2 = j;
                            selectedContextId2 = minPriorityForPreemption2;
                            minPriorityForPreemption = jobPriority;
                        }
                    }
                    j++;
                    jobRunningContext = jobRunningContext2;
                    preferredUidForContext2 = preferredUidForContext;
                    i = 16;
                }
                i3 = -1;
                if (selectedContextId != -1) {
                    contextIdToJobMap[selectedContextId] = nextPending;
                    slotChanged[selectedContextId] = true;
                }
                if (startingJob) {
                    this.mJobCountTracker.onStartingNewJob(isPendingFg);
                }
            }
            i6++;
            i2 = i3;
            preferredUidForContext2 = preferredUidForContext;
            i = 16;
        }
        if (DEBUG) {
            Slog.d("JobScheduler", printContextIdToJobMap(contextIdToJobMap, "running jobs final"));
        }
        this.mJobCountTracker.logStatus();
        tracker.noteConcurrency(this.mJobCountTracker.getTotalRunningJobCountToNote(), this.mJobCountTracker.getFgRunningJobCountToNote());
        for (int i7 = 0; i7 < 16; i7++) {
            boolean preservePreferredUid = false;
            if (slotChanged[i7]) {
                if (activeServices.get(i7).getRunningJobLocked() != null) {
                    if (DEBUG) {
                        Slog.d("JobScheduler", "preempting job: " + activeServices.get(i7).getRunningJobLocked());
                    }
                    activeServices.get(i7).preemptExecutingJobLocked();
                    preservePreferredUid = true;
                } else {
                    JobStatus pendingJob = contextIdToJobMap[i7];
                    if (DEBUG) {
                        Slog.d("JobScheduler", "About to run job on context " + i7 + ", job: " + pendingJob);
                    }
                    for (int ic = 0; ic < controllers.size(); ic++) {
                        controllers.get(ic).prepareForExecutionLocked(pendingJob);
                    }
                    if (!activeServices.get(i7).executeRunnableJob(pendingJob)) {
                        Slog.d("JobScheduler", "Error executing " + pendingJob);
                    }
                    if (pendingJobs.remove(pendingJob)) {
                        tracker.noteNonpending(pendingJob);
                    }
                }
            }
            if (!preservePreferredUid) {
                activeServices.get(i7).clearPreferredUid();
            }
        }
    }

    private static int findJobContextIdFromMap(JobStatus jobStatus, JobStatus[] map) {
        for (int i = 0; i < map.length; i++) {
            if (map[i] != null && map[i].matches(jobStatus.getUid(), jobStatus.getJobId())) {
                return i;
            }
        }
        return -1;
    }

    private String printPendingQueueLocked() {
        StringBuilder s = new StringBuilder("Pending queue: ");
        for (JobStatus js : this.mService.mPendingJobs) {
            s.append("(");
            s.append(js.getJob().getId());
            s.append(", ");
            s.append(js.getUid());
            s.append(") ");
        }
        return s.toString();
    }

    private static String printContextIdToJobMap(JobStatus[] map, String initial) {
        StringBuilder s = new StringBuilder(initial + ": ");
        for (int i = 0; i < map.length; i++) {
            s.append("(");
            int uid = -1;
            s.append(map[i] == null ? -1 : map[i].getJobId());
            if (map[i] != null) {
                uid = map[i].getUid();
            }
            s.append(uid);
            s.append(")");
        }
        return s.toString();
    }

    public void dumpLocked(IndentingPrintWriter pw, long now, long nowRealtime) {
        pw.println("Concurrency:");
        pw.increaseIndent();
        try {
            pw.print("Screen state: current ");
            String str = "ON";
            pw.print(this.mCurrentInteractiveState ? "ON" : "OFF");
            pw.print("  effective ");
            if (!this.mEffectiveInteractiveState) {
                str = "OFF";
            }
            pw.print(str);
            pw.println();
            pw.print("Last screen ON: ");
            TimeUtils.dumpTimeWithDelta(pw, (now - nowRealtime) + this.mLastScreenOnRealtime, now);
            pw.println();
            pw.print("Last screen OFF: ");
            TimeUtils.dumpTimeWithDelta(pw, (now - nowRealtime) + this.mLastScreenOffRealtime, now);
            pw.println();
            pw.println();
            pw.println("Current max jobs:");
            pw.println("  ");
            pw.println(this.mJobCountTracker);
            pw.println();
            pw.print("mLastMemoryTrimLevel: ");
            pw.print(this.mLastMemoryTrimLevel);
            pw.println();
            this.mStatLogger.dump(pw);
        } finally {
            pw.decreaseIndent();
        }
    }

    public void dumpProtoLocked(ProtoOutputStream proto, long tag, long now, long nowRealtime) {
        long token = proto.start(tag);
        proto.write(1133871366145L, this.mCurrentInteractiveState);
        proto.write(1133871366146L, this.mEffectiveInteractiveState);
        proto.write(1112396529667L, nowRealtime - this.mLastScreenOnRealtime);
        proto.write(1112396529668L, nowRealtime - this.mLastScreenOffRealtime);
        this.mJobCountTracker.dumpProto(proto, 1146756268037L);
        proto.write(1120986464262L, this.mLastMemoryTrimLevel);
        this.mStatLogger.dumpProto(proto, 1146756268039L);
        proto.end(token);
    }

    static class JobCountTracker {
        private int mConfigNumMaxBgJobs;
        private int mConfigNumMaxTotalJobs;
        private int mConfigNumMinBgJobs;
        private int mNumActualMaxBgJobs;
        private int mNumActualMaxFgJobs;
        private int mNumPendingBgJobs;
        private int mNumPendingFgJobs;
        private int mNumReservedForBg;
        private int mNumRunningBgJobs;
        private int mNumRunningFgJobs;
        private int mNumStartingBgJobs;
        private int mNumStartingFgJobs;

        JobCountTracker() {
        }

        void reset(int numTotalMaxJobs, int numMaxBgJobs, int numMinBgJobs) {
            this.mConfigNumMaxTotalJobs = numTotalMaxJobs;
            this.mConfigNumMaxBgJobs = numMaxBgJobs;
            this.mConfigNumMinBgJobs = numMinBgJobs;
            this.mNumRunningFgJobs = 0;
            this.mNumRunningBgJobs = 0;
            this.mNumPendingFgJobs = 0;
            this.mNumPendingBgJobs = 0;
            this.mNumStartingFgJobs = 0;
            this.mNumStartingBgJobs = 0;
            this.mNumReservedForBg = 0;
            this.mNumActualMaxFgJobs = 0;
            this.mNumActualMaxBgJobs = 0;
        }

        void incrementRunningJobCount(boolean isFg) {
            if (isFg) {
                this.mNumRunningFgJobs++;
            } else {
                this.mNumRunningBgJobs++;
            }
        }

        void incrementPendingJobCount(boolean isFg) {
            if (isFg) {
                this.mNumPendingFgJobs++;
            } else {
                this.mNumPendingBgJobs++;
            }
        }

        void onStartingNewJob(boolean isFg) {
            if (isFg) {
                this.mNumStartingFgJobs++;
            } else {
                this.mNumStartingBgJobs++;
            }
        }

        void onCountDone() {
            int reservedForBg = Math.min(this.mConfigNumMinBgJobs, this.mNumRunningBgJobs + this.mNumPendingBgJobs);
            int iMin = Math.min(reservedForBg, this.mConfigNumMaxTotalJobs - this.mNumRunningFgJobs);
            this.mNumReservedForBg = iMin;
            int maxFg = this.mConfigNumMaxTotalJobs - Math.max(this.mNumRunningBgJobs, iMin);
            int iMin2 = Math.min(maxFg, this.mNumRunningFgJobs + this.mNumPendingFgJobs);
            this.mNumActualMaxFgJobs = iMin2;
            int maxBg = Math.min(this.mConfigNumMaxBgJobs, this.mConfigNumMaxTotalJobs - iMin2);
            this.mNumActualMaxBgJobs = Math.min(maxBg, this.mNumRunningBgJobs + this.mNumPendingBgJobs);
        }

        boolean canJobStart(boolean isFg) {
            if (isFg) {
                return this.mNumRunningFgJobs + this.mNumStartingFgJobs < this.mNumActualMaxFgJobs;
            }
            return this.mNumRunningBgJobs + this.mNumStartingBgJobs < this.mNumActualMaxBgJobs;
        }

        public int getNumStartingFgJobs() {
            return this.mNumStartingFgJobs;
        }

        public int getNumStartingBgJobs() {
            return this.mNumStartingBgJobs;
        }

        int getTotalRunningJobCountToNote() {
            return this.mNumRunningFgJobs + this.mNumRunningBgJobs + this.mNumStartingFgJobs + this.mNumStartingBgJobs;
        }

        int getFgRunningJobCountToNote() {
            return this.mNumRunningFgJobs + this.mNumStartingFgJobs;
        }

        void logStatus() {
            if (JobConcurrencyManager.DEBUG) {
                Slog.d("JobScheduler", "assignJobsToContexts: " + this);
            }
        }

        public String toString() {
            int totalFg = this.mNumRunningFgJobs + this.mNumStartingFgJobs;
            int totalBg = this.mNumRunningBgJobs + this.mNumStartingBgJobs;
            Object[] objArr = new Object[25];
            objArr[0] = Integer.valueOf(this.mConfigNumMaxTotalJobs);
            objArr[1] = Integer.valueOf(this.mConfigNumMinBgJobs);
            objArr[2] = Integer.valueOf(this.mConfigNumMaxBgJobs);
            objArr[3] = Integer.valueOf(this.mNumRunningFgJobs);
            objArr[4] = Integer.valueOf(this.mNumRunningBgJobs);
            objArr[5] = Integer.valueOf(this.mNumRunningFgJobs + this.mNumRunningBgJobs);
            objArr[6] = Integer.valueOf(this.mNumPendingFgJobs);
            objArr[7] = Integer.valueOf(this.mNumPendingBgJobs);
            objArr[8] = Integer.valueOf(this.mNumPendingFgJobs + this.mNumPendingBgJobs);
            objArr[9] = Integer.valueOf(this.mNumActualMaxFgJobs);
            objArr[10] = totalFg <= this.mConfigNumMaxTotalJobs ? "" : "*";
            objArr[11] = Integer.valueOf(this.mNumActualMaxBgJobs);
            objArr[12] = totalBg <= this.mConfigNumMaxBgJobs ? "" : "*";
            objArr[13] = Integer.valueOf(this.mNumActualMaxFgJobs + this.mNumActualMaxBgJobs);
            objArr[14] = this.mNumActualMaxFgJobs + this.mNumActualMaxBgJobs <= this.mConfigNumMaxTotalJobs ? "" : "*";
            objArr[15] = Integer.valueOf(this.mNumReservedForBg);
            objArr[16] = Integer.valueOf(this.mNumStartingFgJobs);
            objArr[17] = Integer.valueOf(this.mNumStartingBgJobs);
            objArr[18] = Integer.valueOf(this.mNumStartingFgJobs + this.mNumStartingBgJobs);
            objArr[19] = Integer.valueOf(totalFg);
            objArr[20] = totalFg <= this.mNumActualMaxFgJobs ? "" : "*";
            objArr[21] = Integer.valueOf(totalBg);
            objArr[22] = totalBg <= this.mNumActualMaxBgJobs ? "" : "*";
            objArr[23] = Integer.valueOf(totalFg + totalBg);
            objArr[24] = totalFg + totalBg > this.mConfigNumMaxTotalJobs ? "*" : "";
            return String.format("Config={tot=%d bg min/max=%d/%d} Running[FG/BG (total)]: %d / %d (%d) Pending: %d / %d (%d) Actual max: %d%s / %d%s (%d%s) Res BG: %d Starting: %d / %d (%d) Total: %d%s / %d%s (%d%s)", objArr);
        }

        public void dumpProto(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1120986464257L, this.mConfigNumMaxTotalJobs);
            proto.write(1120986464258L, this.mConfigNumMaxBgJobs);
            proto.write(1120986464259L, this.mConfigNumMinBgJobs);
            proto.write(1120986464260L, this.mNumRunningFgJobs);
            proto.write(1120986464261L, this.mNumRunningBgJobs);
            proto.write(1120986464262L, this.mNumPendingFgJobs);
            proto.write(1120986464263L, this.mNumPendingBgJobs);
            proto.write(1120986464264L, this.mNumActualMaxFgJobs);
            proto.write(1120986464265L, this.mNumActualMaxBgJobs);
            proto.write(1120986464266L, this.mNumReservedForBg);
            proto.write(1120986464267L, this.mNumStartingFgJobs);
            proto.write(1120986464268L, this.mNumStartingBgJobs);
            proto.end(token);
        }
    }
}
