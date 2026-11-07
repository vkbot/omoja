package com.android.server.job;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AppGlobals;
import android.app.IUidObserver;
import android.app.job.IJobScheduler;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobSnapshot;
import android.app.job.JobWorkItem;
import android.app.usage.UsageStatsManagerInternal;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.content.pm.ServiceInfo;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.BatteryStatsInternal;
import android.os.Binder;
import android.os.Handler;
import android.os.LimitExceededException;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.os.WorkSource;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.KeyValueListParser;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import com.android.internal.app.IBatteryStats;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.AppStateTracker;
import com.android.server.DeviceIdleInternal;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.job.controllers.BackgroundJobsController;
import com.android.server.job.controllers.BatteryController;
import com.android.server.job.controllers.ConnectivityController;
import com.android.server.job.controllers.ContentObserverController;
import com.android.server.job.controllers.DeviceIdleJobsController;
import com.android.server.job.controllers.IdleController;
import com.android.server.job.controllers.JobStatus;
import com.android.server.job.controllers.QuotaController;
import com.android.server.job.controllers.RestrictingController;
import com.android.server.job.controllers.StateController;
import com.android.server.job.controllers.StorageController;
import com.android.server.job.controllers.TimeController;
import com.android.server.job.restrictions.JobRestriction;
import com.android.server.job.restrictions.ThermalStatusRestriction;
import com.android.server.pm.PackageManagerService;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.usage.AppStandbyInternal;
import com.android.server.utils.PriorityDump;
import com.android.server.utils.quota.Categorizer;
import com.android.server.utils.quota.Category;
import com.android.server.utils.quota.CountQuotaTracker;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.time.Clock;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public class JobSchedulerService extends SystemService implements StateChangedListener, JobCompletedListener {
    public static final int ACTIVE_INDEX = 0;
    public static final boolean DEBUG;
    public static final boolean DEBUG_STANDBY;
    private static final boolean ENFORCE_MAX_JOBS = true;
    public static final int FREQUENT_INDEX = 2;
    public static final long MAX_ALLOWED_PERIOD_MS = 31536000000L;
    private static final int MAX_JOBS_PER_APP = 100;
    static final int MAX_JOB_CONTEXTS_COUNT = 16;
    static final int MSG_CHECK_JOB = 1;
    static final int MSG_CHECK_JOB_GREEDY = 3;
    static final int MSG_JOB_EXPIRED = 0;
    static final int MSG_STOP_JOB = 2;
    static final int MSG_UID_ACTIVE = 6;
    static final int MSG_UID_GONE = 5;
    static final int MSG_UID_IDLE = 7;
    static final int MSG_UID_STATE_CHANGED = 4;
    public static final int NEVER_INDEX = 4;
    private static final long PERIODIC_JOB_WINDOW_BUFFER = 1800000;
    private static final Categorizer QUOTA_CATEGORIZER;
    private static final Category QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED;
    private static final Category QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED;
    private static final String QUOTA_TRACKER_SCHEDULE_LOGGED = ".schedulePersisted out-of-quota logged";
    private static final String QUOTA_TRACKER_SCHEDULE_PERSISTED_TAG = ".schedulePersisted()";
    public static final int RARE_INDEX = 3;
    public static final int RESTRICTED_INDEX = 5;
    public static final String TAG = "JobScheduler";
    public static final int WORKING_INDEX = 1;
    public static Clock sElapsedRealtimeClock;
    private static final Comparator<JobStatus> sPendingJobComparator;
    public static Clock sSystemClock;
    public static Clock sUptimeMillisClock;
    final List<JobServiceContext> mActiveServices;
    ActivityManagerInternal mActivityManagerInternal;
    private final AppStandbyInternal mAppStandbyInternal;
    AppStateTracker mAppStateTracker;
    final SparseIntArray mBackingUpUids;
    private final BatteryController mBatteryController;
    IBatteryStats mBatteryStats;
    private final BroadcastReceiver mBroadcastReceiver;
    final JobConcurrencyManager mConcurrencyManager;
    final Constants mConstants;
    final ConstantsObserver mConstantsObserver;
    final List<StateController> mControllers;
    final ArrayMap<String, Boolean> mDebuggableApps;
    private final DeviceIdleJobsController mDeviceIdleJobsController;
    final JobHandler mHandler;
    private final Predicate<Integer> mIsUidActivePredicate;
    final JobPackageTracker mJobPackageTracker;
    private final List<JobRestriction> mJobRestrictions;
    final JobSchedulerStub mJobSchedulerStub;
    private final Runnable mJobTimeUpdater;
    final JobStore mJobs;
    DeviceIdleInternal mLocalDeviceIdleController;
    PackageManagerInternal mLocalPM;
    final Object mLock;
    private final MaybeReadyJobQueueFunctor mMaybeQueueFunctor;
    final ArrayList<JobStatus> mPendingJobs;
    private final QuotaController mQuotaController;
    private final CountQuotaTracker mQuotaTracker;
    private final ReadyJobQueueFunctor mReadyQueueFunctor;
    boolean mReadyToRock;
    boolean mReportedActive;
    private final List<RestrictingController> mRestrictiveControllers;
    final StandbyTracker mStandbyTracker;
    int[] mStartedUsers;
    private final StorageController mStorageController;
    private final String mSystemGalleryPackage;
    private final BroadcastReceiver mTimeSetReceiver;
    private final IUidObserver mUidObserver;
    final SparseIntArray mUidPriorityOverride;
    final UsageStatsManagerInternal mUsageStats;

    static {
        boolean zIsLoggable = Log.isLoggable(TAG, 3);
        DEBUG = zIsLoggable;
        DEBUG_STANDBY = zIsLoggable;
        sSystemClock = Clock.systemUTC();
        sUptimeMillisClock = new MySimpleClock(ZoneOffset.UTC) { // from class: com.android.server.job.JobSchedulerService.1
            @Override // com.android.server.job.JobSchedulerService.MySimpleClock, java.time.Clock, java.time.InstantSource
            public long millis() {
                return SystemClock.uptimeMillis();
            }
        };
        sElapsedRealtimeClock = new MySimpleClock(ZoneOffset.UTC) { // from class: com.android.server.job.JobSchedulerService.2
            @Override // com.android.server.job.JobSchedulerService.MySimpleClock, java.time.Clock, java.time.InstantSource
            public long millis() {
                return SystemClock.elapsedRealtime();
            }
        };
        QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED = new Category(QUOTA_TRACKER_SCHEDULE_PERSISTED_TAG);
        QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED = new Category(QUOTA_TRACKER_SCHEDULE_LOGGED);
        QUOTA_CATEGORIZER = new Categorizer() { // from class: com.android.server.job.-$$Lambda$JobSchedulerService$vjPMLQ-SEWWeqjJkyucZKbr772U
            @Override // com.android.server.utils.quota.Categorizer
            public final Category getCategory(int i, String str, String str2) {
                return JobSchedulerService.lambda$static$0(i, str, str2);
            }
        };
        sPendingJobComparator = new Comparator() { // from class: com.android.server.job.-$$Lambda$JobSchedulerService$SyDoBnH1urvVqu31d-xC2ZPsCBo
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return JobSchedulerService.lambda$static$1((JobStatus) obj, (JobStatus) obj2);
            }
        };
    }

    private static abstract class MySimpleClock extends Clock {
        private final ZoneId mZoneId;

        @Override // java.time.Clock, java.time.InstantSource
        public abstract long millis();

        MySimpleClock(ZoneId zoneId) {
            this.mZoneId = zoneId;
        }

        @Override // java.time.Clock
        public ZoneId getZone() {
            return this.mZoneId;
        }

        @Override // java.time.Clock, java.time.InstantSource
        public Clock withZone(ZoneId zone) {
            return new MySimpleClock(zone) { // from class: com.android.server.job.JobSchedulerService.MySimpleClock.1
                @Override // com.android.server.job.JobSchedulerService.MySimpleClock, java.time.Clock, java.time.InstantSource
                public long millis() {
                    return MySimpleClock.this.millis();
                }
            };
        }

        @Override // java.time.Clock, java.time.InstantSource
        public Instant instant() {
            return Instant.ofEpochMilli(millis());
        }
    }

    static /* synthetic */ Category lambda$static$0(int userId, String packageName, String tag) {
        if (QUOTA_TRACKER_SCHEDULE_PERSISTED_TAG.equals(tag)) {
            return QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED;
        }
        return QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED;
    }

    private class ConstantsObserver extends ContentObserver {
        private ContentResolver mResolver;

        public ConstantsObserver(Handler handler) {
            super(handler);
        }

        public void start(ContentResolver resolver) {
            this.mResolver = resolver;
            resolver.registerContentObserver(Settings.Global.getUriFor("job_scheduler_constants"), false, this);
            updateConstants();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            updateConstants();
        }

        private void updateConstants() {
            synchronized (JobSchedulerService.this.mLock) {
                try {
                    JobSchedulerService.this.mConstants.updateConstantsLocked(Settings.Global.getString(this.mResolver, "job_scheduler_constants"));
                    for (int controller = 0; controller < JobSchedulerService.this.mControllers.size(); controller++) {
                        StateController sc = JobSchedulerService.this.mControllers.get(controller);
                        sc.onConstantsUpdatedLocked();
                    }
                    JobSchedulerService.this.updateQuotaTracker();
                } catch (IllegalArgumentException e) {
                    Slog.e(JobSchedulerService.TAG, "Bad jobscheduler settings", e);
                }
            }
        }
    }

    void updateQuotaTracker() {
        this.mQuotaTracker.setEnabled(this.mConstants.ENABLE_API_QUOTAS);
        this.mQuotaTracker.setCountLimit(QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED, this.mConstants.API_QUOTA_SCHEDULE_COUNT, this.mConstants.API_QUOTA_SCHEDULE_WINDOW_MS);
    }

    static class MaxJobCounts {
        private final KeyValueListParser.IntValue mMaxBg;
        private final KeyValueListParser.IntValue mMinBg;
        private final KeyValueListParser.IntValue mTotal;

        MaxJobCounts(int totalDefault, String totalKey, int maxBgDefault, String maxBgKey, int minBgDefault, String minBgKey) {
            this.mTotal = new KeyValueListParser.IntValue(totalKey, totalDefault);
            this.mMaxBg = new KeyValueListParser.IntValue(maxBgKey, maxBgDefault);
            this.mMinBg = new KeyValueListParser.IntValue(minBgKey, minBgDefault);
        }

        public void parse(KeyValueListParser parser) {
            this.mTotal.parse(parser);
            this.mMaxBg.parse(parser);
            this.mMinBg.parse(parser);
            if (this.mTotal.getValue() < 1) {
                this.mTotal.setValue(1);
            } else if (this.mTotal.getValue() > 16) {
                this.mTotal.setValue(16);
            }
            if (this.mMaxBg.getValue() < 1) {
                this.mMaxBg.setValue(1);
            } else if (this.mMaxBg.getValue() > this.mTotal.getValue()) {
                this.mMaxBg.setValue(this.mTotal.getValue());
            }
            if (this.mMinBg.getValue() < 0) {
                this.mMinBg.setValue(0);
                return;
            }
            if (this.mMinBg.getValue() > this.mMaxBg.getValue()) {
                this.mMinBg.setValue(this.mMaxBg.getValue());
            }
            if (this.mMinBg.getValue() >= this.mTotal.getValue()) {
                this.mMinBg.setValue(this.mTotal.getValue() - 1);
            }
        }

        public int getMaxTotal() {
            return this.mTotal.getValue();
        }

        public int getMaxBg() {
            return this.mMaxBg.getValue();
        }

        public int getMinBg() {
            return this.mMinBg.getValue();
        }

        public void dump(PrintWriter pw, String prefix) {
            this.mTotal.dump(pw, prefix);
            this.mMaxBg.dump(pw, prefix);
            this.mMinBg.dump(pw, prefix);
        }

        public void dumpProto(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            this.mTotal.dumpProto(proto, 1120986464257L);
            this.mMaxBg.dumpProto(proto, 1120986464258L);
            this.mMinBg.dumpProto(proto, 1120986464259L);
            proto.end(token);
        }
    }

    static class MaxJobCountsPerMemoryTrimLevel {
        public final MaxJobCounts critical;
        public final MaxJobCounts low;
        public final MaxJobCounts moderate;
        public final MaxJobCounts normal;

        MaxJobCountsPerMemoryTrimLevel(MaxJobCounts normal, MaxJobCounts moderate, MaxJobCounts low, MaxJobCounts critical) {
            this.normal = normal;
            this.moderate = moderate;
            this.low = low;
            this.critical = critical;
        }

        public void dumpProto(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            this.normal.dumpProto(proto, 1146756268033L);
            this.moderate.dumpProto(proto, 1146756268034L);
            this.low.dumpProto(proto, 1146756268035L);
            this.critical.dumpProto(proto, 1146756268036L);
            proto.end(token);
        }
    }

    public static class Constants {
        private static final int DEFAULT_API_QUOTA_SCHEDULE_COUNT = 250;
        private static final boolean DEFAULT_API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT = false;
        private static final boolean DEFAULT_API_QUOTA_SCHEDULE_THROW_EXCEPTION = true;
        private static final long DEFAULT_API_QUOTA_SCHEDULE_WINDOW_MS = 60000;
        private static final float DEFAULT_CONN_CONGESTION_DELAY_FRAC = 0.5f;
        private static final float DEFAULT_CONN_PREFETCH_RELAX_FRAC = 0.5f;
        private static final boolean DEFAULT_ENABLE_API_QUOTAS = true;
        private static final float DEFAULT_HEAVY_USE_FACTOR = 0.9f;
        private static final long DEFAULT_MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS = 1860000;
        private static final long DEFAULT_MIN_EXP_BACKOFF_TIME = 10000;
        private static final long DEFAULT_MIN_LINEAR_BACKOFF_TIME = 10000;
        private static final int DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT = 5;
        private static final float DEFAULT_MODERATE_USE_FACTOR = 0.5f;
        private static final String DEPRECATED_KEY_BG_CRITICAL_JOB_COUNT = "bg_critical_job_count";
        private static final String DEPRECATED_KEY_BG_LOW_JOB_COUNT = "bg_low_job_count";
        private static final String DEPRECATED_KEY_BG_MODERATE_JOB_COUNT = "bg_moderate_job_count";
        private static final String DEPRECATED_KEY_BG_NORMAL_JOB_COUNT = "bg_normal_job_count";
        private static final String DEPRECATED_KEY_FG_JOB_COUNT = "fg_job_count";
        private static final String DEPRECATED_KEY_MAX_STANDARD_RESCHEDULE_COUNT = "max_standard_reschedule_count";
        private static final String DEPRECATED_KEY_MAX_WORK_RESCHEDULE_COUNT = "max_work_reschedule_count";
        private static final String DEPRECATED_KEY_MIN_BATTERY_NOT_LOW_COUNT = "min_battery_not_low_count";
        private static final String DEPRECATED_KEY_MIN_CHARGING_COUNT = "min_charging_count";
        private static final String DEPRECATED_KEY_MIN_CONNECTIVITY_COUNT = "min_connectivity_count";
        private static final String DEPRECATED_KEY_MIN_CONTENT_COUNT = "min_content_count";
        private static final String DEPRECATED_KEY_MIN_IDLE_COUNT = "min_idle_count";
        private static final String DEPRECATED_KEY_MIN_READY_JOBS_COUNT = "min_ready_jobs_count";
        private static final String DEPRECATED_KEY_MIN_STORAGE_NOT_LOW_COUNT = "min_storage_not_low_count";
        private static final String DEPRECATED_KEY_STANDBY_FREQUENT_BEATS = "standby_frequent_beats";
        private static final String DEPRECATED_KEY_STANDBY_HEARTBEAT_TIME = "standby_heartbeat_time";
        private static final String DEPRECATED_KEY_STANDBY_RARE_BEATS = "standby_rare_beats";
        private static final String DEPRECATED_KEY_STANDBY_WORKING_BEATS = "standby_working_beats";
        private static final String DEPRECATED_KEY_USE_HEARTBEATS = "use_heartbeats";
        private static final String KEY_API_QUOTA_SCHEDULE_COUNT = "aq_schedule_count";
        private static final String KEY_API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT = "aq_schedule_return_failure";
        private static final String KEY_API_QUOTA_SCHEDULE_THROW_EXCEPTION = "aq_schedule_throw_exception";
        private static final String KEY_API_QUOTA_SCHEDULE_WINDOW_MS = "aq_schedule_window_ms";
        private static final String KEY_CONN_CONGESTION_DELAY_FRAC = "conn_congestion_delay_frac";
        private static final String KEY_CONN_PREFETCH_RELAX_FRAC = "conn_prefetch_relax_frac";
        private static final String KEY_ENABLE_API_QUOTAS = "enable_api_quotas";
        private static final String KEY_HEAVY_USE_FACTOR = "heavy_use_factor";
        private static final String KEY_MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS = "max_non_active_job_batch_delay_ms";
        private static final String KEY_MIN_EXP_BACKOFF_TIME = "min_exp_backoff_time";
        private static final String KEY_MIN_LINEAR_BACKOFF_TIME = "min_linear_backoff_time";
        private static final String KEY_MIN_READY_NON_ACTIVE_JOBS_COUNT = "min_ready_non_active_jobs_count";
        private static final String KEY_MODERATE_USE_FACTOR = "moderate_use_factor";
        int MIN_READY_NON_ACTIVE_JOBS_COUNT = 5;
        long MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS = DEFAULT_MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS;
        float HEAVY_USE_FACTOR = DEFAULT_HEAVY_USE_FACTOR;
        float MODERATE_USE_FACTOR = 0.5f;
        final MaxJobCountsPerMemoryTrimLevel MAX_JOB_COUNTS_SCREEN_ON = new MaxJobCountsPerMemoryTrimLevel(new MaxJobCounts(8, "max_job_total_on_normal", 6, "max_job_max_bg_on_normal", 2, "max_job_min_bg_on_normal"), new MaxJobCounts(8, "max_job_total_on_moderate", 4, "max_job_max_bg_on_moderate", 2, "max_job_min_bg_on_moderate"), new MaxJobCounts(5, "max_job_total_on_low", 1, "max_job_max_bg_on_low", 1, "max_job_min_bg_on_low"), new MaxJobCounts(5, "max_job_total_on_critical", 1, "max_job_max_bg_on_critical", 1, "max_job_min_bg_on_critical"));
        final MaxJobCountsPerMemoryTrimLevel MAX_JOB_COUNTS_SCREEN_OFF = new MaxJobCountsPerMemoryTrimLevel(new MaxJobCounts(10, "max_job_total_off_normal", 6, "max_job_max_bg_off_normal", 2, "max_job_min_bg_off_normal"), new MaxJobCounts(10, "max_job_total_off_moderate", 4, "max_job_max_bg_off_moderate", 2, "max_job_min_bg_off_moderate"), new MaxJobCounts(5, "max_job_total_off_low", 1, "max_job_max_bg_off_low", 1, "max_job_min_bg_off_low"), new MaxJobCounts(5, "max_job_total_off_critical", 1, "max_job_max_bg_off_critical", 1, "max_job_min_bg_off_critical"));
        final KeyValueListParser.IntValue SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS = new KeyValueListParser.IntValue("screen_off_job_concurrency_increase_delay_ms", 30000);
        long MIN_LINEAR_BACKOFF_TIME = JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
        long MIN_EXP_BACKOFF_TIME = JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
        public float CONN_CONGESTION_DELAY_FRAC = 0.5f;
        public float CONN_PREFETCH_RELAX_FRAC = 0.5f;
        public boolean ENABLE_API_QUOTAS = true;
        public int API_QUOTA_SCHEDULE_COUNT = DEFAULT_API_QUOTA_SCHEDULE_COUNT;
        public long API_QUOTA_SCHEDULE_WINDOW_MS = 60000;
        public boolean API_QUOTA_SCHEDULE_THROW_EXCEPTION = true;
        public boolean API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT = false;
        private final KeyValueListParser mParser = new KeyValueListParser(',');

        void updateConstantsLocked(String value) {
            try {
                this.mParser.setString(value);
            } catch (Exception e) {
                Slog.e(JobSchedulerService.TAG, "Bad jobscheduler settings", e);
            }
            this.MIN_READY_NON_ACTIVE_JOBS_COUNT = this.mParser.getInt(KEY_MIN_READY_NON_ACTIVE_JOBS_COUNT, 5);
            this.MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS = this.mParser.getLong(KEY_MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS, DEFAULT_MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS);
            this.HEAVY_USE_FACTOR = this.mParser.getFloat(KEY_HEAVY_USE_FACTOR, DEFAULT_HEAVY_USE_FACTOR);
            this.MODERATE_USE_FACTOR = this.mParser.getFloat(KEY_MODERATE_USE_FACTOR, 0.5f);
            this.MAX_JOB_COUNTS_SCREEN_ON.normal.parse(this.mParser);
            this.MAX_JOB_COUNTS_SCREEN_ON.moderate.parse(this.mParser);
            this.MAX_JOB_COUNTS_SCREEN_ON.low.parse(this.mParser);
            this.MAX_JOB_COUNTS_SCREEN_ON.critical.parse(this.mParser);
            this.MAX_JOB_COUNTS_SCREEN_OFF.normal.parse(this.mParser);
            this.MAX_JOB_COUNTS_SCREEN_OFF.moderate.parse(this.mParser);
            this.MAX_JOB_COUNTS_SCREEN_OFF.low.parse(this.mParser);
            this.MAX_JOB_COUNTS_SCREEN_OFF.critical.parse(this.mParser);
            this.SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS.parse(this.mParser);
            this.MIN_LINEAR_BACKOFF_TIME = this.mParser.getDurationMillis(KEY_MIN_LINEAR_BACKOFF_TIME, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
            this.MIN_EXP_BACKOFF_TIME = this.mParser.getDurationMillis(KEY_MIN_EXP_BACKOFF_TIME, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
            this.CONN_CONGESTION_DELAY_FRAC = this.mParser.getFloat(KEY_CONN_CONGESTION_DELAY_FRAC, 0.5f);
            this.CONN_PREFETCH_RELAX_FRAC = this.mParser.getFloat(KEY_CONN_PREFETCH_RELAX_FRAC, 0.5f);
            this.ENABLE_API_QUOTAS = this.mParser.getBoolean(KEY_ENABLE_API_QUOTAS, true);
            this.API_QUOTA_SCHEDULE_COUNT = Math.max(DEFAULT_API_QUOTA_SCHEDULE_COUNT, this.mParser.getInt(KEY_API_QUOTA_SCHEDULE_COUNT, DEFAULT_API_QUOTA_SCHEDULE_COUNT));
            this.API_QUOTA_SCHEDULE_WINDOW_MS = this.mParser.getDurationMillis(KEY_API_QUOTA_SCHEDULE_WINDOW_MS, 60000L);
            this.API_QUOTA_SCHEDULE_THROW_EXCEPTION = this.mParser.getBoolean(KEY_API_QUOTA_SCHEDULE_THROW_EXCEPTION, true);
            this.API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT = this.mParser.getBoolean(KEY_API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT, false);
        }

        void dump(IndentingPrintWriter pw) {
            pw.println("Settings:");
            pw.increaseIndent();
            pw.printPair(KEY_MIN_READY_NON_ACTIVE_JOBS_COUNT, Integer.valueOf(this.MIN_READY_NON_ACTIVE_JOBS_COUNT)).println();
            pw.printPair(KEY_MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS, Long.valueOf(this.MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS)).println();
            pw.printPair(KEY_HEAVY_USE_FACTOR, Float.valueOf(this.HEAVY_USE_FACTOR)).println();
            pw.printPair(KEY_MODERATE_USE_FACTOR, Float.valueOf(this.MODERATE_USE_FACTOR)).println();
            this.MAX_JOB_COUNTS_SCREEN_ON.normal.dump(pw, "");
            this.MAX_JOB_COUNTS_SCREEN_ON.moderate.dump(pw, "");
            this.MAX_JOB_COUNTS_SCREEN_ON.low.dump(pw, "");
            this.MAX_JOB_COUNTS_SCREEN_ON.critical.dump(pw, "");
            this.MAX_JOB_COUNTS_SCREEN_OFF.normal.dump(pw, "");
            this.MAX_JOB_COUNTS_SCREEN_OFF.moderate.dump(pw, "");
            this.MAX_JOB_COUNTS_SCREEN_OFF.low.dump(pw, "");
            this.MAX_JOB_COUNTS_SCREEN_OFF.critical.dump(pw, "");
            this.SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS.dump(pw, "");
            pw.printPair(KEY_MIN_LINEAR_BACKOFF_TIME, Long.valueOf(this.MIN_LINEAR_BACKOFF_TIME)).println();
            pw.printPair(KEY_MIN_EXP_BACKOFF_TIME, Long.valueOf(this.MIN_EXP_BACKOFF_TIME)).println();
            pw.printPair(KEY_CONN_CONGESTION_DELAY_FRAC, Float.valueOf(this.CONN_CONGESTION_DELAY_FRAC)).println();
            pw.printPair(KEY_CONN_PREFETCH_RELAX_FRAC, Float.valueOf(this.CONN_PREFETCH_RELAX_FRAC)).println();
            pw.printPair(KEY_ENABLE_API_QUOTAS, Boolean.valueOf(this.ENABLE_API_QUOTAS)).println();
            pw.printPair(KEY_API_QUOTA_SCHEDULE_COUNT, Integer.valueOf(this.API_QUOTA_SCHEDULE_COUNT)).println();
            pw.printPair(KEY_API_QUOTA_SCHEDULE_WINDOW_MS, Long.valueOf(this.API_QUOTA_SCHEDULE_WINDOW_MS)).println();
            pw.printPair(KEY_API_QUOTA_SCHEDULE_THROW_EXCEPTION, Boolean.valueOf(this.API_QUOTA_SCHEDULE_THROW_EXCEPTION)).println();
            pw.printPair(KEY_API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT, Boolean.valueOf(this.API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT)).println();
            pw.decreaseIndent();
        }

        void dump(ProtoOutputStream proto) {
            proto.write(1120986464285L, this.MIN_READY_NON_ACTIVE_JOBS_COUNT);
            proto.write(1112396529694L, this.MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS);
            proto.write(1103806595080L, this.HEAVY_USE_FACTOR);
            proto.write(1103806595081L, this.MODERATE_USE_FACTOR);
            this.MAX_JOB_COUNTS_SCREEN_ON.dumpProto(proto, 1146756268058L);
            this.MAX_JOB_COUNTS_SCREEN_OFF.dumpProto(proto, 1146756268059L);
            this.SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS.dumpProto(proto, 1120986464284L);
            proto.write(1112396529681L, this.MIN_LINEAR_BACKOFF_TIME);
            proto.write(1112396529682L, this.MIN_EXP_BACKOFF_TIME);
            proto.write(1103806595093L, this.CONN_CONGESTION_DELAY_FRAC);
            proto.write(1103806595094L, this.CONN_PREFETCH_RELAX_FRAC);
            proto.write(1133871366175L, this.ENABLE_API_QUOTAS);
            proto.write(1120986464288L, this.API_QUOTA_SCHEDULE_COUNT);
            proto.write(1112396529697L, this.API_QUOTA_SCHEDULE_WINDOW_MS);
            proto.write(1133871366178L, this.API_QUOTA_SCHEDULE_THROW_EXCEPTION);
            proto.write(1133871366179L, this.API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT);
        }
    }

    static /* synthetic */ int lambda$static$1(JobStatus o1, JobStatus o2) {
        if (o1.overrideState != o2.overrideState) {
            return o2.overrideState - o1.overrideState;
        }
        if (o1.enqueueTime < o2.enqueueTime) {
            return -1;
        }
        return o1.enqueueTime > o2.enqueueTime ? 1 : 0;
    }

    static <T> void addOrderedItem(ArrayList<T> array, T newItem, Comparator<T> comparator) {
        int where = Collections.binarySearch(array, newItem, comparator);
        if (where < 0) {
            where = ~where;
        }
        array.add(where, newItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPackageName(Intent intent) {
        Uri uri = intent.getData();
        if (uri == null) {
            return null;
        }
        String pkg = uri.getSchemeSpecificPart();
        return pkg;
    }

    public Context getTestableContext() {
        return getContext();
    }

    public Object getLock() {
        return this.mLock;
    }

    public JobStore getJobStore() {
        return this.mJobs;
    }

    public Constants getConstants() {
        return this.mConstants;
    }

    public boolean isChainedAttributionEnabled() {
        return WorkSource.isChainedBatteryAttributionEnabled(getContext());
    }

    @Override // com.android.server.SystemService
    public void onStartUser(int userHandle) {
        synchronized (this.mLock) {
            this.mStartedUsers = ArrayUtils.appendInt(this.mStartedUsers, userHandle);
        }
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    @Override // com.android.server.SystemService
    public void onUnlockUser(int userHandle) {
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    @Override // com.android.server.SystemService
    public void onStopUser(int userHandle) {
        synchronized (this.mLock) {
            this.mStartedUsers = ArrayUtils.removeInt(this.mStartedUsers, userHandle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUidActive(int uid) {
        return this.mAppStateTracker.isUidActiveSynced(uid);
    }

    public int scheduleAsPackage(JobInfo job, JobWorkItem work, int uId, String packageName, int userId, String tag) throws Throwable {
        String servicePkg = job.getService().getPackageName();
        if (job.isPersisted() && (packageName == null || packageName.equals(servicePkg))) {
            String pkg = packageName == null ? job.getService().getPackageName() : packageName;
            if (!this.mQuotaTracker.isWithinQuota(userId, pkg, QUOTA_TRACKER_SCHEDULE_PERSISTED_TAG)) {
                if (this.mQuotaTracker.isWithinQuota(userId, pkg, QUOTA_TRACKER_SCHEDULE_LOGGED)) {
                    Slog.wtf(TAG, userId + "-" + pkg + " has called schedule() too many times");
                    this.mQuotaTracker.noteEvent(userId, pkg, QUOTA_TRACKER_SCHEDULE_LOGGED);
                }
                this.mAppStandbyInternal.restrictApp(pkg, userId, 4);
                if (this.mConstants.API_QUOTA_SCHEDULE_THROW_EXCEPTION) {
                    synchronized (this.mLock) {
                        if (!this.mDebuggableApps.containsKey(packageName)) {
                            try {
                                ApplicationInfo appInfo = AppGlobals.getPackageManager().getApplicationInfo(pkg, 0, userId);
                                if (appInfo == null) {
                                    return 0;
                                }
                                this.mDebuggableApps.put(packageName, Boolean.valueOf((appInfo.flags & 2) != 0));
                            } catch (RemoteException e) {
                                throw new RuntimeException(e);
                            }
                        }
                        boolean isDebuggable = this.mDebuggableApps.get(packageName).booleanValue();
                        if (isDebuggable) {
                            throw new LimitExceededException("schedule()/enqueue() called more than " + this.mQuotaTracker.getLimit(QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED) + " times in the past " + this.mQuotaTracker.getWindowSizeMs(QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED) + "ms. See the documentation for more information.");
                        }
                    }
                }
                if (this.mConstants.API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT) {
                    return 0;
                }
            }
            this.mQuotaTracker.noteEvent(userId, pkg, QUOTA_TRACKER_SCHEDULE_PERSISTED_TAG);
        }
        try {
            if (ActivityManager.getService().isAppStartModeDisabled(uId, job.getService().getPackageName())) {
                Slog.w(TAG, "Not scheduling job " + uId + ":" + job.toString() + " -- package not allowed to start");
                return 0;
            }
        } catch (RemoteException e2) {
        }
        synchronized (this.mLock) {
            try {
                try {
                    JobStatus toCancel = this.mJobs.getJobByUidAndJobId(uId, job.getId());
                    if (work != null && toCancel != null) {
                        try {
                            if (toCancel.getJob().equals(job)) {
                                toCancel.enqueueWorkLocked(work);
                                toCancel.maybeAddForegroundExemption(this.mIsUidActivePredicate);
                                return 1;
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                    JobStatus jobStatus = JobStatus.createFromJobInfo(job, uId, packageName, userId, tag);
                    jobStatus.maybeAddForegroundExemption(this.mIsUidActivePredicate);
                    if (DEBUG) {
                        Slog.d(TAG, "SCHEDULE: " + jobStatus.toShortString());
                    }
                    if (packageName == null && this.mJobs.countJobsForUid(uId) > 100) {
                        Slog.w(TAG, "Too many jobs for uid " + uId);
                        throw new IllegalStateException("Apps may not schedule more than 100 distinct jobs");
                    }
                    jobStatus.prepareLocked();
                    if (toCancel != null) {
                        cancelJobImplLocked(toCancel, jobStatus, "job rescheduled by app");
                    } else {
                        startTrackingJobLocked(jobStatus, null);
                    }
                    if (work != null) {
                        jobStatus.enqueueWorkLocked(work);
                    }
                    FrameworkStatsLog.write_non_chained(8, uId, (String) null, jobStatus.getBatteryName(), 2, 0, jobStatus.getStandbyBucket(), jobStatus.getJobId(), jobStatus.hasChargingConstraint(), jobStatus.hasBatteryNotLowConstraint(), jobStatus.hasStorageNotLowConstraint(), jobStatus.hasTimingDelayConstraint(), jobStatus.hasDeadlineConstraint(), jobStatus.hasIdleConstraint(), jobStatus.hasConnectivityConstraint(), jobStatus.hasContentTriggerConstraint());
                    if (isReadyToBeExecutedLocked(jobStatus)) {
                        this.mJobPackageTracker.notePending(jobStatus);
                        addOrderedItem(this.mPendingJobs, jobStatus, sPendingJobComparator);
                        maybeRunPendingJobsLocked();
                    } else {
                        evaluateControllerStatesLocked(jobStatus);
                    }
                    return 1;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public List<JobInfo> getPendingJobs(int uid) {
        ArrayList<JobInfo> outList;
        synchronized (this.mLock) {
            List<JobStatus> jobs = this.mJobs.getJobsByUid(uid);
            outList = new ArrayList<>(jobs.size());
            for (int i = jobs.size() - 1; i >= 0; i--) {
                JobStatus job = jobs.get(i);
                outList.add(job.getJob());
            }
        }
        return outList;
    }

    public JobInfo getPendingJob(int uid, int jobId) {
        synchronized (this.mLock) {
            List<JobStatus> jobs = this.mJobs.getJobsByUid(uid);
            for (int i = jobs.size() - 1; i >= 0; i--) {
                JobStatus job = jobs.get(i);
                if (job.getJobId() == jobId) {
                    return job.getJob();
                }
            }
            return null;
        }
    }

    void cancelJobsForUser(int userHandle) {
        synchronized (this.mLock) {
            List<JobStatus> jobsForUser = this.mJobs.getJobsByUser(userHandle);
            for (int i = 0; i < jobsForUser.size(); i++) {
                JobStatus toRemove = jobsForUser.get(i);
                cancelJobImplLocked(toRemove, null, "user removed");
            }
        }
    }

    private void cancelJobsForNonExistentUsers() {
        UserManagerInternal umi = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        synchronized (this.mLock) {
            this.mJobs.removeJobsOfNonUsers(umi.getUserIds());
        }
    }

    void cancelJobsForPackageAndUid(String pkgName, int uid, String reason) {
        if (PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkgName)) {
            Slog.wtfStack(TAG, "Can't cancel all jobs for system package");
            return;
        }
        synchronized (this.mLock) {
            List<JobStatus> jobsForUid = this.mJobs.getJobsByUid(uid);
            for (int i = jobsForUid.size() - 1; i >= 0; i--) {
                JobStatus job = jobsForUid.get(i);
                if (job.getSourcePackageName().equals(pkgName)) {
                    cancelJobImplLocked(job, null, reason);
                }
            }
        }
    }

    public boolean cancelJobsForUid(int uid, String reason) {
        if (uid == 1000) {
            Slog.wtfStack(TAG, "Can't cancel all jobs for system uid");
            return false;
        }
        boolean jobsCanceled = false;
        synchronized (this.mLock) {
            List<JobStatus> jobsForUid = this.mJobs.getJobsByUid(uid);
            for (int i = 0; i < jobsForUid.size(); i++) {
                JobStatus toRemove = jobsForUid.get(i);
                cancelJobImplLocked(toRemove, null, reason);
                jobsCanceled = true;
            }
        }
        return jobsCanceled;
    }

    public boolean cancelJob(int uid, int jobId, int callingUid) {
        boolean z;
        synchronized (this.mLock) {
            JobStatus toCancel = this.mJobs.getJobByUidAndJobId(uid, jobId);
            if (toCancel != null) {
                cancelJobImplLocked(toCancel, null, "cancel() called by app, callingUid=" + callingUid + " uid=" + uid + " jobId=" + jobId);
            }
            z = toCancel != null;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelJobImplLocked(JobStatus cancelled, JobStatus incomingJob, String reason) {
        if (DEBUG) {
            Slog.d(TAG, "CANCEL: " + cancelled.toShortString());
        }
        cancelled.unprepareLocked();
        stopTrackingJobLocked(cancelled, incomingJob, true);
        if (this.mPendingJobs.remove(cancelled)) {
            this.mJobPackageTracker.noteNonpending(cancelled);
        }
        stopJobOnServiceContextLocked(cancelled, 0, reason);
        if (incomingJob != null) {
            if (DEBUG) {
                Slog.i(TAG, "Tracking replacement job " + incomingJob.toShortString());
            }
            startTrackingJobLocked(incomingJob, cancelled);
        }
        reportActiveLocked();
    }

    void updateUidState(int uid, int procState) {
        synchronized (this.mLock) {
            try {
                if (procState == 2) {
                    this.mUidPriorityOverride.put(uid, 40);
                } else if (procState <= 4) {
                    this.mUidPriorityOverride.put(uid, 35);
                } else if (procState <= 5) {
                    this.mUidPriorityOverride.put(uid, 30);
                } else {
                    this.mUidPriorityOverride.delete(uid);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.android.server.job.StateChangedListener
    public void onDeviceIdleStateChanged(boolean deviceIdle) {
        synchronized (this.mLock) {
            if (DEBUG) {
                Slog.d(TAG, "Doze state changed: " + deviceIdle);
            }
            if (deviceIdle) {
                for (int i = 0; i < this.mActiveServices.size(); i++) {
                    JobServiceContext jsc = this.mActiveServices.get(i);
                    JobStatus executing = jsc.getRunningJobLocked();
                    if (executing != null && (executing.getFlags() & 1) == 0) {
                        jsc.cancelExecutingJobLocked(4, "cancelled due to doze");
                    }
                }
            } else if (this.mReadyToRock) {
                if (this.mLocalDeviceIdleController != null && !this.mReportedActive) {
                    this.mReportedActive = true;
                    this.mLocalDeviceIdleController.setJobsActive(true);
                }
                this.mHandler.obtainMessage(1).sendToTarget();
            }
        }
    }

    @Override // com.android.server.job.StateChangedListener
    public void onRestrictedBucketChanged(List<JobStatus> jobs) {
        int len = jobs.size();
        if (len == 0) {
            Slog.wtf(TAG, "onRestrictedBucketChanged called with no jobs");
            return;
        }
        synchronized (this.mLock) {
            for (int i = 0; i < len; i++) {
                JobStatus js = jobs.get(i);
                for (int j = this.mRestrictiveControllers.size() - 1; j >= 0; j--) {
                    if (js.getStandbyBucket() == 5) {
                        this.mRestrictiveControllers.get(j).startTrackingRestrictedJobLocked(js);
                    } else {
                        this.mRestrictiveControllers.get(j).stopTrackingRestrictedJobLocked(js);
                    }
                }
            }
        }
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    void reportActiveLocked() {
        boolean active = this.mPendingJobs.size() > 0;
        if (this.mPendingJobs.size() <= 0) {
            for (int i = 0; i < this.mActiveServices.size(); i++) {
                JobServiceContext jsc = this.mActiveServices.get(i);
                JobStatus job = jsc.getRunningJobLocked();
                if (job != null && (job.getJob().getFlags() & 1) == 0 && !job.dozeWhitelisted && !job.uidActive) {
                    active = true;
                    break;
                }
            }
        }
        if (this.mReportedActive != active) {
            this.mReportedActive = active;
            DeviceIdleInternal deviceIdleInternal = this.mLocalDeviceIdleController;
            if (deviceIdleInternal != null) {
                deviceIdleInternal.setJobsActive(active);
            }
        }
    }

    void reportAppUsage(String packageName, int userId) {
    }

    public JobSchedulerService(Context context) {
        super(context);
        this.mLock = new Object();
        this.mJobPackageTracker = new JobPackageTracker();
        this.mActiveServices = new ArrayList();
        this.mPendingJobs = new ArrayList<>();
        this.mStartedUsers = EmptyArray.INT;
        this.mUidPriorityOverride = new SparseIntArray();
        this.mBackingUpUids = new SparseIntArray();
        this.mDebuggableApps = new ArrayMap<>();
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.job.JobSchedulerService.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                List<JobStatus> jobsForUid;
                String action = intent.getAction();
                if (JobSchedulerService.DEBUG) {
                    Slog.d(JobSchedulerService.TAG, "Receieved: " + action);
                }
                String pkgName = JobSchedulerService.this.getPackageName(intent);
                int pkgUid = intent.getIntExtra("android.intent.extra.UID", -1);
                if ("android.intent.action.PACKAGE_CHANGED".equals(action)) {
                    if (pkgName != null && pkgUid != -1) {
                        String[] changedComponents = intent.getStringArrayExtra("android.intent.extra.changed_component_name_list");
                        if (changedComponents != null) {
                            for (String component : changedComponents) {
                                if (component.equals(pkgName)) {
                                    if (JobSchedulerService.DEBUG) {
                                        Slog.d(JobSchedulerService.TAG, "Package state change: " + pkgName);
                                    }
                                    try {
                                        int userId = UserHandle.getUserId(pkgUid);
                                        IPackageManager pm = AppGlobals.getPackageManager();
                                        int state = pm.getApplicationEnabledSetting(pkgName, userId);
                                        if (state != 2 && state != 3) {
                                            break;
                                        }
                                        if (JobSchedulerService.DEBUG) {
                                            Slog.d(JobSchedulerService.TAG, "Removing jobs for package " + pkgName + " in user " + userId);
                                        }
                                        JobSchedulerService.this.cancelJobsForPackageAndUid(pkgName, pkgUid, "app disabled");
                                        break;
                                    } catch (RemoteException | IllegalArgumentException e) {
                                        break;
                                    }
                                }
                            }
                            if (JobSchedulerService.DEBUG) {
                                Slog.d(JobSchedulerService.TAG, "Something in " + pkgName + " changed. Reevaluating controller states.");
                            }
                            synchronized (JobSchedulerService.this.mLock) {
                                for (int c = JobSchedulerService.this.mControllers.size() - 1; c >= 0; c--) {
                                    JobSchedulerService.this.mControllers.get(c).reevaluateStateLocked(pkgUid);
                                }
                            }
                            return;
                        }
                        return;
                    }
                    Slog.w(JobSchedulerService.TAG, "PACKAGE_CHANGED for " + pkgName + " / uid " + pkgUid);
                    return;
                }
                if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                    if (!intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                        int uidRemoved = intent.getIntExtra("android.intent.extra.UID", -1);
                        if (JobSchedulerService.DEBUG) {
                            Slog.d(JobSchedulerService.TAG, "Removing jobs for uid: " + uidRemoved);
                        }
                        JobSchedulerService.this.cancelJobsForPackageAndUid(pkgName, uidRemoved, "app uninstalled");
                        synchronized (JobSchedulerService.this.mLock) {
                            for (int c2 = 0; c2 < JobSchedulerService.this.mControllers.size(); c2++) {
                                JobSchedulerService.this.mControllers.get(c2).onAppRemovedLocked(pkgName, pkgUid);
                            }
                            JobSchedulerService.this.mDebuggableApps.remove(pkgName);
                        }
                        return;
                    }
                    return;
                }
                if ("android.intent.action.USER_REMOVED".equals(action)) {
                    int userId2 = intent.getIntExtra("android.intent.extra.user_handle", 0);
                    if (JobSchedulerService.DEBUG) {
                        Slog.d(JobSchedulerService.TAG, "Removing jobs for user: " + userId2);
                    }
                    JobSchedulerService.this.cancelJobsForUser(userId2);
                    synchronized (JobSchedulerService.this.mLock) {
                        for (int c3 = 0; c3 < JobSchedulerService.this.mControllers.size(); c3++) {
                            JobSchedulerService.this.mControllers.get(c3).onUserRemovedLocked(userId2);
                        }
                    }
                    return;
                }
                if ("android.intent.action.QUERY_PACKAGE_RESTART".equals(action)) {
                    if (pkgUid != -1) {
                        synchronized (JobSchedulerService.this.mLock) {
                            jobsForUid = JobSchedulerService.this.mJobs.getJobsByUid(pkgUid);
                        }
                        for (int i = jobsForUid.size() - 1; i >= 0; i--) {
                            if (jobsForUid.get(i).getSourcePackageName().equals(pkgName)) {
                                if (JobSchedulerService.DEBUG) {
                                    Slog.d(JobSchedulerService.TAG, "Restart query: package " + pkgName + " at uid " + pkgUid + " has jobs");
                                }
                                setResultCode(-1);
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
                if ("android.intent.action.PACKAGE_RESTARTED".equals(action) && pkgUid != -1) {
                    if (JobSchedulerService.DEBUG) {
                        Slog.d(JobSchedulerService.TAG, "Removing jobs for pkg " + pkgName + " at uid " + pkgUid);
                    }
                    JobSchedulerService.this.cancelJobsForPackageAndUid(pkgName, pkgUid, "app force stopped");
                }
            }
        };
        this.mUidObserver = new IUidObserver.Stub() { // from class: com.android.server.job.JobSchedulerService.4
            public void onUidStateChanged(int uid, int procState, long procStateSeq, int capability) {
                JobSchedulerService.this.mHandler.obtainMessage(4, uid, procState).sendToTarget();
            }

            public void onUidGone(int i, boolean z) {
                JobSchedulerService.this.mHandler.obtainMessage(5, i, z ? 1 : 0).sendToTarget();
            }

            public void onUidActive(int uid) throws RemoteException {
                JobSchedulerService.this.mHandler.obtainMessage(6, uid, 0).sendToTarget();
            }

            public void onUidIdle(int i, boolean z) {
                JobSchedulerService.this.mHandler.obtainMessage(7, i, z ? 1 : 0).sendToTarget();
            }

            public void onUidCachedChanged(int uid, boolean cached) {
            }
        };
        this.mIsUidActivePredicate = new Predicate() { // from class: com.android.server.job.-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.isUidActive(((Integer) obj).intValue());
            }
        };
        this.mTimeSetReceiver = new BroadcastReceiver() { // from class: com.android.server.job.JobSchedulerService.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.TIME_SET".equals(intent.getAction()) && JobSchedulerService.this.mJobs.clockNowValidToInflate(JobSchedulerService.sSystemClock.millis())) {
                    Slog.i(JobSchedulerService.TAG, "RTC now valid; recalculating persisted job windows");
                    context2.unregisterReceiver(this);
                    FgThread.getHandler().post(JobSchedulerService.this.mJobTimeUpdater);
                }
            }
        };
        this.mJobTimeUpdater = new Runnable() { // from class: com.android.server.job.-$$Lambda$JobSchedulerService$oCsDzEV0rgDVnZl-2bTNBQfZW9I
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2$JobSchedulerService();
            }
        };
        this.mReadyQueueFunctor = new ReadyJobQueueFunctor();
        this.mMaybeQueueFunctor = new MaybeReadyJobQueueFunctor();
        this.mLocalPM = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        ActivityManagerInternal activityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        Objects.requireNonNull(activityManagerInternal);
        this.mActivityManagerInternal = activityManagerInternal;
        this.mHandler = new JobHandler(context.getMainLooper());
        this.mConstants = new Constants();
        this.mConstantsObserver = new ConstantsObserver(this.mHandler);
        this.mJobSchedulerStub = new JobSchedulerStub();
        this.mConcurrencyManager = new JobConcurrencyManager(this);
        this.mStandbyTracker = new StandbyTracker();
        this.mUsageStats = (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
        CountQuotaTracker countQuotaTracker = new CountQuotaTracker(context, QUOTA_CATEGORIZER);
        this.mQuotaTracker = countQuotaTracker;
        countQuotaTracker.setCountLimit(QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED, this.mConstants.API_QUOTA_SCHEDULE_COUNT, this.mConstants.API_QUOTA_SCHEDULE_WINDOW_MS);
        this.mQuotaTracker.setCountLimit(QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED, 1, 60000L);
        AppStandbyInternal appStandbyInternal = (AppStandbyInternal) LocalServices.getService(AppStandbyInternal.class);
        this.mAppStandbyInternal = appStandbyInternal;
        appStandbyInternal.addListener(this.mStandbyTracker);
        publishLocalService(JobSchedulerInternal.class, new LocalService());
        this.mJobs = JobStore.initAndGet(this);
        this.mControllers = new ArrayList();
        ConnectivityController connectivityController = new ConnectivityController(this);
        this.mControllers.add(connectivityController);
        this.mControllers.add(new TimeController(this));
        IdleController idleController = new IdleController(this);
        this.mControllers.add(idleController);
        BatteryController batteryController = new BatteryController(this);
        this.mBatteryController = batteryController;
        this.mControllers.add(batteryController);
        StorageController storageController = new StorageController(this);
        this.mStorageController = storageController;
        this.mControllers.add(storageController);
        this.mControllers.add(new BackgroundJobsController(this));
        this.mControllers.add(new ContentObserverController(this));
        DeviceIdleJobsController deviceIdleJobsController = new DeviceIdleJobsController(this);
        this.mDeviceIdleJobsController = deviceIdleJobsController;
        this.mControllers.add(deviceIdleJobsController);
        QuotaController quotaController = new QuotaController(this);
        this.mQuotaController = quotaController;
        this.mControllers.add(quotaController);
        ArrayList arrayList = new ArrayList();
        this.mRestrictiveControllers = arrayList;
        arrayList.add(this.mBatteryController);
        this.mRestrictiveControllers.add(connectivityController);
        this.mRestrictiveControllers.add(idleController);
        ArrayList arrayList2 = new ArrayList();
        this.mJobRestrictions = arrayList2;
        arrayList2.add(new ThermalStatusRestriction(this));
        String string = context.getString(R.string.config_systemGallery);
        Objects.requireNonNull(string);
        this.mSystemGalleryPackage = string;
        if (!this.mJobs.jobTimesInflatedValid()) {
            Slog.w(TAG, "!!! RTC not yet good; tracking time updates for job scheduling");
            context.registerReceiver(this.mTimeSetReceiver, new IntentFilter("android.intent.action.TIME_SET"));
        }
    }

    public /* synthetic */ void lambda$new$2$JobSchedulerService() {
        ArrayList<JobStatus> toRemove = new ArrayList<>();
        ArrayList<JobStatus> toAdd = new ArrayList<>();
        synchronized (this.mLock) {
            getJobStore().getRtcCorrectedJobsLocked(toAdd, toRemove);
            int N = toAdd.size();
            for (int i = 0; i < N; i++) {
                JobStatus oldJob = toRemove.get(i);
                JobStatus newJob = toAdd.get(i);
                if (DEBUG) {
                    Slog.v(TAG, "  replacing " + oldJob + " with " + newJob);
                }
                cancelJobImplLocked(oldJob, newJob, "deferred rtc calculation");
            }
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("jobscheduler", this.mJobSchedulerStub);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (500 == phase) {
            this.mConstantsObserver.start(getContext().getContentResolver());
            for (StateController controller : this.mControllers) {
                controller.onSystemServicesReady();
            }
            AppStateTracker appStateTracker = (AppStateTracker) LocalServices.getService(AppStateTracker.class);
            Objects.requireNonNull(appStateTracker);
            this.mAppStateTracker = appStateTracker;
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.intent.action.PACKAGE_REMOVED");
            filter.addAction("android.intent.action.PACKAGE_CHANGED");
            filter.addAction("android.intent.action.PACKAGE_RESTARTED");
            filter.addAction("android.intent.action.QUERY_PACKAGE_RESTART");
            filter.addDataScheme(com.android.server.pm.Settings.ATTR_PACKAGE);
            getContext().registerReceiverAsUser(this.mBroadcastReceiver, UserHandle.ALL, filter, null, null);
            IntentFilter userFilter = new IntentFilter("android.intent.action.USER_REMOVED");
            getContext().registerReceiverAsUser(this.mBroadcastReceiver, UserHandle.ALL, userFilter, null, null);
            try {
                ActivityManager.getService().registerUidObserver(this.mUidObserver, 15, -1, (String) null);
            } catch (RemoteException e) {
            }
            this.mConcurrencyManager.onSystemReady();
            cancelJobsForNonExistentUsers();
            for (int i = this.mJobRestrictions.size() - 1; i >= 0; i--) {
                this.mJobRestrictions.get(i).onSystemServicesReady();
            }
            return;
        }
        if (phase == 600) {
            synchronized (this.mLock) {
                this.mReadyToRock = true;
                this.mBatteryStats = IBatteryStats.Stub.asInterface(ServiceManager.getService("batterystats"));
                this.mLocalDeviceIdleController = (DeviceIdleInternal) LocalServices.getService(DeviceIdleInternal.class);
                for (int i2 = 0; i2 < 16; i2++) {
                    this.mActiveServices.add(new JobServiceContext(this, this.mBatteryStats, this.mJobPackageTracker, getContext().getMainLooper()));
                }
                this.mJobs.forEachJob(new Consumer() { // from class: com.android.server.job.-$$Lambda$JobSchedulerService$0Wz_b63Vzxu3lYEmfPzreSihZzE
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$onBootPhase$3$JobSchedulerService((JobStatus) obj);
                    }
                });
                this.mHandler.obtainMessage(1).sendToTarget();
            }
        }
    }

    public /* synthetic */ void lambda$onBootPhase$3$JobSchedulerService(JobStatus job) {
        for (int controller = 0; controller < this.mControllers.size(); controller++) {
            StateController sc = this.mControllers.get(controller);
            sc.maybeStartTrackingJobLocked(job, null);
        }
    }

    private void startTrackingJobLocked(JobStatus jobStatus, JobStatus lastJob) {
        if (!jobStatus.isPreparedLocked()) {
            Slog.wtf(TAG, "Not yet prepared when started tracking: " + jobStatus);
        }
        jobStatus.enqueueTime = sElapsedRealtimeClock.millis();
        boolean update = this.mJobs.add(jobStatus);
        if (this.mReadyToRock) {
            for (int i = 0; i < this.mControllers.size(); i++) {
                StateController controller = this.mControllers.get(i);
                if (update) {
                    controller.maybeStopTrackingJobLocked(jobStatus, null, true);
                }
                controller.maybeStartTrackingJobLocked(jobStatus, lastJob);
            }
        }
    }

    private boolean stopTrackingJobLocked(JobStatus jobStatus, JobStatus incomingJob, boolean removeFromPersisted) {
        jobStatus.stopTrackingJobLocked(incomingJob);
        boolean removed = this.mJobs.remove(jobStatus, removeFromPersisted);
        if (removed && this.mReadyToRock) {
            for (int i = 0; i < this.mControllers.size(); i++) {
                StateController controller = this.mControllers.get(i);
                controller.maybeStopTrackingJobLocked(jobStatus, incomingJob, false);
            }
        }
        return removed;
    }

    private boolean stopJobOnServiceContextLocked(JobStatus job, int reason, String debugReason) {
        for (int i = 0; i < this.mActiveServices.size(); i++) {
            JobServiceContext jsc = this.mActiveServices.get(i);
            JobStatus executing = jsc.getRunningJobLocked();
            if (executing != null && executing.matches(job.getUid(), job.getJobId())) {
                jsc.cancelExecutingJobLocked(reason, debugReason);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCurrentlyActiveLocked(JobStatus job) {
        for (int i = 0; i < this.mActiveServices.size(); i++) {
            JobServiceContext serviceContext = this.mActiveServices.get(i);
            JobStatus running = serviceContext.getRunningJobLocked();
            if (running != null && running.matches(job.getUid(), job.getJobId())) {
                return true;
            }
        }
        return false;
    }

    void noteJobsPending(List<JobStatus> jobs) {
        for (int i = jobs.size() - 1; i >= 0; i--) {
            JobStatus job = jobs.get(i);
            this.mJobPackageTracker.notePending(job);
        }
    }

    void noteJobsNonpending(List<JobStatus> jobs) {
        for (int i = jobs.size() - 1; i >= 0; i--) {
            JobStatus job = jobs.get(i);
            this.mJobPackageTracker.noteNonpending(job);
        }
    }

    JobStatus getRescheduleJobForFailureLocked(JobStatus failureToReschedule) {
        long delayMillis;
        long elapsedNowMillis = sElapsedRealtimeClock.millis();
        JobInfo job = failureToReschedule.getJob();
        long initialBackoffMillis = job.getInitialBackoffMillis();
        int backoffAttempts = failureToReschedule.getNumFailures() + 1;
        int backoffPolicy = job.getBackoffPolicy();
        if (backoffPolicy == 0) {
            long backoff = initialBackoffMillis;
            if (backoff < this.mConstants.MIN_LINEAR_BACKOFF_TIME) {
                backoff = this.mConstants.MIN_LINEAR_BACKOFF_TIME;
            }
            delayMillis = ((long) backoffAttempts) * backoff;
        } else {
            if (backoffPolicy != 1 && DEBUG) {
                Slog.v(TAG, "Unrecognised back-off policy, defaulting to exponential.");
            }
            long backoff2 = initialBackoffMillis;
            if (backoff2 < this.mConstants.MIN_EXP_BACKOFF_TIME) {
                backoff2 = this.mConstants.MIN_EXP_BACKOFF_TIME;
            }
            delayMillis = (long) Math.scalb(backoff2, backoffAttempts - 1);
        }
        JobStatus newJob = new JobStatus(failureToReschedule, elapsedNowMillis + Math.min(delayMillis, 18000000L), JobStatus.NO_LATEST_RUNTIME, backoffAttempts, failureToReschedule.getLastSuccessfulRunTime(), sSystemClock.millis());
        if (job.isPeriodic()) {
            newJob.setOriginalLatestRunTimeElapsed(failureToReschedule.getOriginalLatestRunTimeElapsed());
        }
        for (int ic = 0; ic < this.mControllers.size(); ic++) {
            StateController controller = this.mControllers.get(ic);
            controller.rescheduleForFailureLocked(newJob, failureToReschedule);
        }
        return newJob;
    }

    JobStatus getRescheduleJobForPeriodic(JobStatus periodicToReschedule) {
        long newLatestRuntimeElapsed;
        long elapsedNow = sElapsedRealtimeClock.millis();
        long period = Math.max(JobInfo.getMinPeriodMillis(), Math.min(31536000000L, periodicToReschedule.getJob().getIntervalMillis()));
        long flex = Math.max(JobInfo.getMinFlexMillis(), Math.min(period, periodicToReschedule.getJob().getFlexMillis()));
        long olrte = periodicToReschedule.getOriginalLatestRunTimeElapsed();
        if (olrte < 0 || olrte == JobStatus.NO_LATEST_RUNTIME) {
            Slog.wtf(TAG, "Invalid periodic job original latest run time: " + olrte);
            olrte = elapsedNow;
        }
        long latestRunTimeElapsed = olrte;
        long diffMs = Math.abs(elapsedNow - latestRunTimeElapsed);
        long rescheduleBuffer = 0;
        if (elapsedNow > latestRunTimeElapsed) {
            if (DEBUG) {
                Slog.i(TAG, "Periodic job ran after its intended window.");
            }
            long numSkippedWindows = (diffMs / period) + 1;
            if (period != flex && diffMs > Math.min(1800000L, (period - flex) / 2)) {
                if (DEBUG) {
                    Slog.d(TAG, "Custom flex job ran too close to next window.");
                }
                numSkippedWindows++;
            }
            newLatestRuntimeElapsed = (period * numSkippedWindows) + latestRunTimeElapsed;
        } else {
            long olrte2 = latestRunTimeElapsed + period;
            if (diffMs < 1800000 && diffMs < period / 6) {
                long newLatestRuntimeElapsed2 = (period / 6) - diffMs;
                rescheduleBuffer = Math.min(1800000L, newLatestRuntimeElapsed2);
                newLatestRuntimeElapsed = olrte2;
            } else {
                newLatestRuntimeElapsed = olrte2;
            }
        }
        if (newLatestRuntimeElapsed < elapsedNow) {
            Slog.wtf(TAG, "Rescheduling calculated latest runtime in the past: " + newLatestRuntimeElapsed);
            return new JobStatus(periodicToReschedule, (elapsedNow + period) - flex, elapsedNow + period, 0, sSystemClock.millis(), periodicToReschedule.getLastFailedRunTime());
        }
        long newEarliestRunTimeElapsed = newLatestRuntimeElapsed - Math.min(flex, period - rescheduleBuffer);
        if (DEBUG) {
            Slog.v(TAG, "Rescheduling executed periodic. New execution window [" + (newEarliestRunTimeElapsed / 1000) + ", " + (newLatestRuntimeElapsed / 1000) + "]s");
        }
        return new JobStatus(periodicToReschedule, newEarliestRunTimeElapsed, newLatestRuntimeElapsed, 0, sSystemClock.millis(), periodicToReschedule.getLastFailedRunTime());
    }

    @Override // com.android.server.job.JobCompletedListener
    public void onJobCompletedLocked(JobStatus jobStatus, boolean needsReschedule) {
        if (DEBUG) {
            Slog.d(TAG, "Completed " + jobStatus + ", reschedule=" + needsReschedule);
        }
        JobStatus rescheduledJob = needsReschedule ? getRescheduleJobForFailureLocked(jobStatus) : null;
        if (!stopTrackingJobLocked(jobStatus, rescheduledJob, !jobStatus.getJob().isPeriodic())) {
            if (DEBUG) {
                Slog.d(TAG, "Could not find job to remove. Was job removed while executing?");
            }
            this.mHandler.obtainMessage(3).sendToTarget();
            return;
        }
        if (rescheduledJob != null) {
            try {
                rescheduledJob.prepareLocked();
            } catch (SecurityException e) {
                Slog.w(TAG, "Unable to regrant job permissions for " + rescheduledJob);
            }
            startTrackingJobLocked(rescheduledJob, jobStatus);
        } else if (jobStatus.getJob().isPeriodic()) {
            JobStatus rescheduledPeriodic = getRescheduleJobForPeriodic(jobStatus);
            try {
                rescheduledPeriodic.prepareLocked();
            } catch (SecurityException e2) {
                Slog.w(TAG, "Unable to regrant job permissions for " + rescheduledPeriodic);
            }
            startTrackingJobLocked(rescheduledPeriodic, jobStatus);
        }
        jobStatus.unprepareLocked();
        reportActiveLocked();
        this.mHandler.obtainMessage(3).sendToTarget();
    }

    @Override // com.android.server.job.StateChangedListener
    public void onControllerStateChanged() {
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    @Override // com.android.server.job.StateChangedListener
    public void onRunJobNow(JobStatus jobStatus) {
        this.mHandler.obtainMessage(0, jobStatus).sendToTarget();
    }

    private final class JobHandler extends Handler {
        public JobHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (JobSchedulerService.this.mLock) {
                if (JobSchedulerService.this.mReadyToRock) {
                    boolean disabled = true;
                    switch (message.what) {
                        case 0:
                            JobStatus runNow = (JobStatus) message.obj;
                            if (runNow == null || !JobSchedulerService.this.isReadyToBeExecutedLocked(runNow)) {
                                JobSchedulerService.this.queueReadyJobsForExecutionLocked();
                            } else {
                                JobSchedulerService.this.mJobPackageTracker.notePending(runNow);
                                JobSchedulerService.addOrderedItem(JobSchedulerService.this.mPendingJobs, runNow, JobSchedulerService.sPendingJobComparator);
                            }
                            JobSchedulerService.this.maybeRunPendingJobsLocked();
                            return;
                        case 1:
                            if (JobSchedulerService.DEBUG) {
                                Slog.d(JobSchedulerService.TAG, "MSG_CHECK_JOB");
                            }
                            removeMessages(1);
                            if (JobSchedulerService.this.mReportedActive) {
                                JobSchedulerService.this.queueReadyJobsForExecutionLocked();
                            } else {
                                JobSchedulerService.this.maybeQueueReadyJobsForExecutionLocked();
                            }
                            JobSchedulerService.this.maybeRunPendingJobsLocked();
                            return;
                        case 2:
                            JobSchedulerService.this.cancelJobImplLocked((JobStatus) message.obj, null, "app no longer allowed to run");
                            JobSchedulerService.this.maybeRunPendingJobsLocked();
                            return;
                        case 3:
                            if (JobSchedulerService.DEBUG) {
                                Slog.d(JobSchedulerService.TAG, "MSG_CHECK_JOB_GREEDY");
                            }
                            JobSchedulerService.this.queueReadyJobsForExecutionLocked();
                            JobSchedulerService.this.maybeRunPendingJobsLocked();
                            return;
                        case 4:
                            int uid = message.arg1;
                            int procState = message.arg2;
                            JobSchedulerService.this.updateUidState(uid, procState);
                            JobSchedulerService.this.maybeRunPendingJobsLocked();
                            return;
                        case 5:
                            int uid2 = message.arg1;
                            if (message.arg2 == 0) {
                                disabled = false;
                            }
                            JobSchedulerService.this.updateUidState(uid2, 19);
                            if (disabled) {
                                JobSchedulerService.this.cancelJobsForUid(uid2, "uid gone");
                            }
                            synchronized (JobSchedulerService.this.mLock) {
                                JobSchedulerService.this.mDeviceIdleJobsController.setUidActiveLocked(uid2, false);
                                break;
                            }
                            JobSchedulerService.this.maybeRunPendingJobsLocked();
                            return;
                        case 6:
                            int uid3 = message.arg1;
                            synchronized (JobSchedulerService.this.mLock) {
                                JobSchedulerService.this.mDeviceIdleJobsController.setUidActiveLocked(uid3, true);
                                break;
                            }
                            JobSchedulerService.this.maybeRunPendingJobsLocked();
                            return;
                        case 7:
                            int uid4 = message.arg1;
                            if (message.arg2 == 0) {
                                disabled = false;
                            }
                            if (disabled) {
                                JobSchedulerService.this.cancelJobsForUid(uid4, "app uid idle");
                            }
                            synchronized (JobSchedulerService.this.mLock) {
                                JobSchedulerService.this.mDeviceIdleJobsController.setUidActiveLocked(uid4, false);
                                break;
                            }
                            JobSchedulerService.this.maybeRunPendingJobsLocked();
                            return;
                        default:
                            JobSchedulerService.this.maybeRunPendingJobsLocked();
                            return;
                    }
                }
            }
        }
    }

    private JobRestriction checkIfRestricted(JobStatus job) {
        if (evaluateJobPriorityLocked(job) >= 30) {
            return null;
        }
        for (int i = this.mJobRestrictions.size() - 1; i >= 0; i--) {
            JobRestriction restriction = this.mJobRestrictions.get(i);
            if (restriction.isJobRestricted(job)) {
                return restriction;
            }
        }
        return null;
    }

    private void stopNonReadyActiveJobsLocked() {
        for (int i = 0; i < this.mActiveServices.size(); i++) {
            JobServiceContext serviceContext = this.mActiveServices.get(i);
            JobStatus running = serviceContext.getRunningJobLocked();
            if (running != null) {
                if (!running.isReady()) {
                    if (running.getEffectiveStandbyBucket() == 5 && !running.areDynamicConstraintsSatisfied()) {
                        serviceContext.cancelExecutingJobLocked(6, "cancelled due to restricted bucket");
                    } else {
                        serviceContext.cancelExecutingJobLocked(1, "cancelled due to unsatisfied constraints");
                    }
                } else {
                    JobRestriction restriction = checkIfRestricted(running);
                    if (restriction != null) {
                        int reason = restriction.getReason();
                        serviceContext.cancelExecutingJobLocked(reason, "restricted due to " + JobParameters.getReasonCodeDescription(reason));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueReadyJobsForExecutionLocked() {
        if (DEBUG) {
            Slog.d(TAG, "queuing all ready jobs for execution:");
        }
        noteJobsNonpending(this.mPendingJobs);
        this.mPendingJobs.clear();
        stopNonReadyActiveJobsLocked();
        this.mJobs.forEachJob(this.mReadyQueueFunctor);
        this.mReadyQueueFunctor.postProcess();
        if (DEBUG) {
            int queuedJobs = this.mPendingJobs.size();
            if (queuedJobs == 0) {
                Slog.d(TAG, "No jobs pending.");
                return;
            }
            Slog.d(TAG, queuedJobs + " jobs queued.");
        }
    }

    final class ReadyJobQueueFunctor implements Consumer<JobStatus> {
        final ArrayList<JobStatus> newReadyJobs = new ArrayList<>();

        ReadyJobQueueFunctor() {
        }

        @Override // java.util.function.Consumer
        public void accept(JobStatus job) {
            if (JobSchedulerService.this.isReadyToBeExecutedLocked(job)) {
                if (JobSchedulerService.DEBUG) {
                    Slog.d(JobSchedulerService.TAG, "    queued " + job.toShortString());
                }
                this.newReadyJobs.add(job);
                return;
            }
            JobSchedulerService.this.evaluateControllerStatesLocked(job);
        }

        public void postProcess() {
            JobSchedulerService.this.noteJobsPending(this.newReadyJobs);
            JobSchedulerService.this.mPendingJobs.addAll(this.newReadyJobs);
            if (JobSchedulerService.this.mPendingJobs.size() > 1) {
                JobSchedulerService.this.mPendingJobs.sort(JobSchedulerService.sPendingJobComparator);
            }
            this.newReadyJobs.clear();
        }
    }

    final class MaybeReadyJobQueueFunctor implements Consumer<JobStatus> {
        int forceBatchedCount;
        final List<JobStatus> runnableJobs = new ArrayList();
        int unbatchedCount;

        public MaybeReadyJobQueueFunctor() {
            reset();
        }

        @Override // java.util.function.Consumer
        public void accept(JobStatus job) {
            boolean shouldForceBatchJob;
            if (JobSchedulerService.this.isReadyToBeExecutedLocked(job)) {
                try {
                    if (ActivityManager.getService().isAppStartModeDisabled(job.getUid(), job.getJob().getService().getPackageName())) {
                        Slog.w(JobSchedulerService.TAG, "Aborting job " + job.getUid() + ":" + job.getJob().toString() + " -- package not allowed to start");
                        JobSchedulerService.this.mHandler.obtainMessage(2, job).sendToTarget();
                        return;
                    }
                } catch (RemoteException e) {
                }
                if (job.getEffectiveStandbyBucket() == 5) {
                    shouldForceBatchJob = true;
                } else if (job.getNumFailures() > 0) {
                    shouldForceBatchJob = false;
                } else {
                    long nowElapsed = JobSchedulerService.sElapsedRealtimeClock.millis();
                    boolean z = false;
                    boolean batchDelayExpired = job.getFirstForceBatchedTimeElapsed() > 0 && nowElapsed - job.getFirstForceBatchedTimeElapsed() >= JobSchedulerService.this.mConstants.MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS;
                    if (JobSchedulerService.this.mConstants.MIN_READY_NON_ACTIVE_JOBS_COUNT > 1 && job.getEffectiveStandbyBucket() != 0 && !batchDelayExpired) {
                        z = true;
                    }
                    shouldForceBatchJob = z;
                }
                if (shouldForceBatchJob) {
                    this.forceBatchedCount++;
                    if (job.getFirstForceBatchedTimeElapsed() == 0) {
                        job.setFirstForceBatchedTimeElapsed(JobSchedulerService.sElapsedRealtimeClock.millis());
                    }
                } else {
                    this.unbatchedCount++;
                }
                this.runnableJobs.add(job);
                return;
            }
            JobSchedulerService.this.evaluateControllerStatesLocked(job);
        }

        public void postProcess() {
            if (this.unbatchedCount > 0 || this.forceBatchedCount >= JobSchedulerService.this.mConstants.MIN_READY_NON_ACTIVE_JOBS_COUNT) {
                if (JobSchedulerService.DEBUG) {
                    Slog.d(JobSchedulerService.TAG, "maybeQueueReadyJobsForExecutionLocked: Running jobs.");
                }
                JobSchedulerService.this.noteJobsPending(this.runnableJobs);
                JobSchedulerService.this.mPendingJobs.addAll(this.runnableJobs);
                if (JobSchedulerService.this.mPendingJobs.size() > 1) {
                    JobSchedulerService.this.mPendingJobs.sort(JobSchedulerService.sPendingJobComparator);
                }
            } else if (JobSchedulerService.DEBUG) {
                Slog.d(JobSchedulerService.TAG, "maybeQueueReadyJobsForExecutionLocked: Not running anything.");
            }
            reset();
        }

        void reset() {
            this.forceBatchedCount = 0;
            this.unbatchedCount = 0;
            this.runnableJobs.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeQueueReadyJobsForExecutionLocked() {
        if (DEBUG) {
            Slog.d(TAG, "Maybe queuing ready jobs...");
        }
        noteJobsNonpending(this.mPendingJobs);
        this.mPendingJobs.clear();
        stopNonReadyActiveJobsLocked();
        this.mJobs.forEachJob(this.mMaybeQueueFunctor);
        this.mMaybeQueueFunctor.postProcess();
    }

    private boolean areUsersStartedLocked(JobStatus job) {
        boolean sourceStarted = ArrayUtils.contains(this.mStartedUsers, job.getSourceUserId());
        if (job.getUserId() == job.getSourceUserId()) {
            return sourceStarted;
        }
        return sourceStarted && ArrayUtils.contains(this.mStartedUsers, job.getUserId());
    }

    boolean isReadyToBeExecutedLocked(JobStatus job) {
        boolean jobReady = job.isReady();
        if (DEBUG) {
            Slog.v(TAG, "isReadyToBeExecutedLocked: " + job.toShortString() + " ready=" + jobReady);
        }
        if (!jobReady) {
            if (job.getSourcePackageName().equals("android.jobscheduler.cts.jobtestapp")) {
                Slog.v(TAG, "    NOT READY: " + job);
            }
            return false;
        }
        boolean jobExists = this.mJobs.containsJob(job);
        boolean userStarted = areUsersStartedLocked(job);
        boolean backingUp = this.mBackingUpUids.indexOfKey(job.getSourceUid()) >= 0;
        if (DEBUG) {
            Slog.v(TAG, "isReadyToBeExecutedLocked: " + job.toShortString() + " exists=" + jobExists + " userStarted=" + userStarted + " backingUp=" + backingUp);
        }
        if (!jobExists || !userStarted || backingUp || checkIfRestricted(job) != null) {
            return false;
        }
        boolean jobPending = this.mPendingJobs.contains(job);
        boolean jobActive = isCurrentlyActiveLocked(job);
        if (DEBUG) {
            Slog.v(TAG, "isReadyToBeExecutedLocked: " + job.toShortString() + " pending=" + jobPending + " active=" + jobActive);
        }
        if (jobPending || jobActive) {
            return false;
        }
        return isComponentUsable(job);
    }

    private boolean isComponentUsable(JobStatus job) {
        try {
            ServiceInfo service = AppGlobals.getPackageManager().getServiceInfo(job.getServiceComponent(), AudioFormat.EVRC, job.getUserId());
            if (service == null) {
                if (DEBUG) {
                    Slog.v(TAG, "isComponentUsable: " + job.toShortString() + " component not present");
                    return false;
                }
                return false;
            }
            boolean appIsBad = this.mActivityManagerInternal.isAppBad(service.applicationInfo);
            if (DEBUG && appIsBad) {
                Slog.i(TAG, "App is bad for " + job.toShortString() + " so not runnable");
            }
            return !appIsBad;
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    void evaluateControllerStatesLocked(JobStatus job) {
        for (int c = this.mControllers.size() - 1; c >= 0; c--) {
            StateController sc = this.mControllers.get(c);
            sc.evaluateStateLocked(job);
        }
    }

    public boolean areComponentsInPlaceLocked(JobStatus job) {
        boolean jobExists = this.mJobs.containsJob(job);
        boolean userStarted = areUsersStartedLocked(job);
        boolean backingUp = this.mBackingUpUids.indexOfKey(job.getSourceUid()) >= 0;
        if (DEBUG) {
            Slog.v(TAG, "areComponentsInPlaceLocked: " + job.toShortString() + " exists=" + jobExists + " userStarted=" + userStarted + " backingUp=" + backingUp);
        }
        if (jobExists && userStarted && !backingUp && checkIfRestricted(job) == null) {
            return isComponentUsable(job);
        }
        return false;
    }

    public long getMaxJobExecutionTimeMs(JobStatus job) {
        long jMin;
        synchronized (this.mLock) {
            jMin = Math.min(this.mQuotaController.getMaxJobExecutionTimeMsLocked(job), 600000L);
        }
        return jMin;
    }

    void maybeRunPendingJobsLocked() {
        if (DEBUG) {
            Slog.d(TAG, "pending queue: " + this.mPendingJobs.size() + " jobs.");
        }
        this.mConcurrencyManager.assignJobsToContextsLocked();
        reportActiveLocked();
    }

    private int adjustJobPriority(int curPriority, JobStatus job) {
        if (curPriority < 40) {
            float factor = this.mJobPackageTracker.getLoadFactor(job);
            if (factor >= this.mConstants.HEAVY_USE_FACTOR) {
                return curPriority - 80;
            }
            if (factor >= this.mConstants.MODERATE_USE_FACTOR) {
                return curPriority - 40;
            }
            return curPriority;
        }
        return curPriority;
    }

    int evaluateJobPriorityLocked(JobStatus job) {
        int priority = job.getPriority();
        if (priority >= 30) {
            return adjustJobPriority(priority, job);
        }
        int override = this.mUidPriorityOverride.get(job.getSourceUid(), 0);
        if (override != 0) {
            return adjustJobPriority(override, job);
        }
        return adjustJobPriority(priority, job);
    }

    final class LocalService implements JobSchedulerInternal {
        LocalService() {
        }

        public List<JobInfo> getSystemScheduledPendingJobs() {
            final List<JobInfo> pendingJobs;
            synchronized (JobSchedulerService.this.mLock) {
                pendingJobs = new ArrayList<>();
                JobSchedulerService.this.mJobs.forEachJob(1000, new Consumer() { // from class: com.android.server.job.-$$Lambda$JobSchedulerService$LocalService$yaChpLJ2odu2Fk7A6H8erUndrN8
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$getSystemScheduledPendingJobs$0$JobSchedulerService$LocalService(pendingJobs, (JobStatus) obj);
                    }
                });
            }
            return pendingJobs;
        }

        public /* synthetic */ void lambda$getSystemScheduledPendingJobs$0$JobSchedulerService$LocalService(List pendingJobs, JobStatus job) {
            if (job.getJob().isPeriodic() || !JobSchedulerService.this.isCurrentlyActiveLocked(job)) {
                pendingJobs.add(job.getJob());
            }
        }

        public void cancelJobsForUid(int uid, String reason) {
            JobSchedulerService.this.cancelJobsForUid(uid, reason);
        }

        public void addBackingUpUid(int uid) {
            synchronized (JobSchedulerService.this.mLock) {
                JobSchedulerService.this.mBackingUpUids.put(uid, uid);
            }
        }

        public void removeBackingUpUid(int uid) {
            synchronized (JobSchedulerService.this.mLock) {
                JobSchedulerService.this.mBackingUpUids.delete(uid);
                if (JobSchedulerService.this.mJobs.countJobsForUid(uid) > 0) {
                    JobSchedulerService.this.mHandler.obtainMessage(1).sendToTarget();
                }
            }
        }

        public void clearAllBackingUpUids() {
            synchronized (JobSchedulerService.this.mLock) {
                if (JobSchedulerService.this.mBackingUpUids.size() > 0) {
                    JobSchedulerService.this.mBackingUpUids.clear();
                    JobSchedulerService.this.mHandler.obtainMessage(1).sendToTarget();
                }
            }
        }

        public String getMediaBackupPackage() {
            return JobSchedulerService.this.mSystemGalleryPackage;
        }

        public void reportAppUsage(String packageName, int userId) {
            JobSchedulerService.this.reportAppUsage(packageName, userId);
        }

        public JobSchedulerInternal.JobStorePersistStats getPersistStats() {
            JobSchedulerInternal.JobStorePersistStats jobStorePersistStats;
            synchronized (JobSchedulerService.this.mLock) {
                jobStorePersistStats = new JobSchedulerInternal.JobStorePersistStats(JobSchedulerService.this.mJobs.getPersistStats());
            }
            return jobStorePersistStats;
        }
    }

    final class StandbyTracker extends AppStandbyInternal.AppIdleStateChangeListener {
        StandbyTracker() {
        }

        public void onAppIdleStateChanged(String packageName, int userId, boolean idle, int bucket, int reason) {
        }

        public void onUserInteractionStarted(String packageName, int userId) {
            long sinceLast;
            int uid = JobSchedulerService.this.mLocalPM.getPackageUid(packageName, 8192, userId);
            if (uid < 0) {
                return;
            }
            long sinceLast2 = JobSchedulerService.this.mUsageStats.getTimeSinceLastJobRun(packageName, userId);
            if (sinceLast2 <= 172800000) {
                sinceLast = sinceLast2;
            } else {
                sinceLast = 0;
            }
            DeferredJobCounter counter = new DeferredJobCounter();
            synchronized (JobSchedulerService.this.mLock) {
                JobSchedulerService.this.mJobs.forEachJobForSourceUid(uid, counter);
            }
            if (counter.numDeferred() > 0 || sinceLast > 0) {
                BatteryStatsInternal mBatteryStatsInternal = (BatteryStatsInternal) LocalServices.getService(BatteryStatsInternal.class);
                mBatteryStatsInternal.noteJobsDeferred(uid, counter.numDeferred(), sinceLast);
                FrameworkStatsLog.write_non_chained(85, uid, (String) null, counter.numDeferred(), sinceLast);
            }
        }
    }

    static class DeferredJobCounter implements Consumer<JobStatus> {
        private int mDeferred = 0;

        DeferredJobCounter() {
        }

        public int numDeferred() {
            return this.mDeferred;
        }

        @Override // java.util.function.Consumer
        public void accept(JobStatus job) {
            if (job.getWhenStandbyDeferred() > 0) {
                this.mDeferred++;
            }
        }
    }

    public static int standbyBucketToBucketIndex(int bucket) {
        if (bucket == 50) {
            return 4;
        }
        if (bucket > 40) {
            return 5;
        }
        if (bucket > 30) {
            return 3;
        }
        if (bucket > 20) {
            return 2;
        }
        if (bucket > 10) {
            return 1;
        }
        return 0;
    }

    public static int standbyBucketForPackage(String packageName, int userId, long elapsedNow) {
        int bucket;
        UsageStatsManagerInternal usageStats = (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
        if (usageStats != null) {
            bucket = usageStats.getAppStandbyBucket(packageName, userId, elapsedNow);
        } else {
            bucket = 0;
        }
        int bucket2 = standbyBucketToBucketIndex(bucket);
        if (DEBUG_STANDBY) {
            Slog.v(TAG, packageName + SliceClientPermissions.SliceAuthority.DELIMITER + userId + " standby bucket index: " + bucket2);
        }
        return bucket2;
    }

    final class JobSchedulerStub extends IJobScheduler.Stub {
        private final SparseArray<Boolean> mPersistCache = new SparseArray<>();

        JobSchedulerStub() {
        }

        private void enforceValidJobRequest(int uid, JobInfo job) {
            IPackageManager pm = AppGlobals.getPackageManager();
            ComponentName service = job.getService();
            try {
                ServiceInfo si = pm.getServiceInfo(service, 786432, UserHandle.getUserId(uid));
                if (si == null) {
                    throw new IllegalArgumentException("No such service " + service);
                }
                if (si.applicationInfo.uid != uid) {
                    throw new IllegalArgumentException("uid " + uid + " cannot schedule job in " + service.getPackageName());
                }
                if (!"android.permission.BIND_JOB_SERVICE".equals(si.permission)) {
                    throw new IllegalArgumentException("Scheduled service " + service + " does not require android.permission.BIND_JOB_SERVICE permission");
                }
            } catch (RemoteException e) {
            }
        }

        private boolean canPersistJobs(int pid, int uid) {
            boolean canPersist;
            synchronized (this.mPersistCache) {
                Boolean cached = this.mPersistCache.get(uid);
                if (cached != null) {
                    canPersist = cached.booleanValue();
                } else {
                    int result = JobSchedulerService.this.getContext().checkPermission("android.permission.RECEIVE_BOOT_COMPLETED", pid, uid);
                    boolean canPersist2 = result == 0;
                    this.mPersistCache.put(uid, Boolean.valueOf(canPersist2));
                    canPersist = canPersist2;
                }
            }
            return canPersist;
        }

        private void validateJobFlags(JobInfo job, int callingUid) {
            if ((job.getFlags() & 1) != 0) {
                JobSchedulerService.this.getContext().enforceCallingOrSelfPermission("android.permission.CONNECTIVITY_INTERNAL", JobSchedulerService.TAG);
            }
            if ((job.getFlags() & 8) != 0) {
                if (callingUid != 1000) {
                    throw new SecurityException("Job has invalid flags");
                }
                if (job.isPeriodic()) {
                    Slog.wtf(JobSchedulerService.TAG, "Periodic jobs mustn't have FLAG_EXEMPT_FROM_APP_STANDBY. Job=" + job);
                }
            }
        }

        public int schedule(JobInfo job) throws RemoteException {
            if (JobSchedulerService.DEBUG) {
                Slog.d(JobSchedulerService.TAG, "Scheduling job: " + job.toString());
            }
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(uid);
            enforceValidJobRequest(uid, job);
            if (job.isPersisted() && !canPersistJobs(pid, uid)) {
                throw new IllegalArgumentException("Error: requested job be persisted without holding RECEIVE_BOOT_COMPLETED permission.");
            }
            validateJobFlags(job, uid);
            long ident = Binder.clearCallingIdentity();
            try {
                return JobSchedulerService.this.scheduleAsPackage(job, null, uid, null, userId, null);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public int enqueue(JobInfo job, JobWorkItem work) throws RemoteException {
            if (JobSchedulerService.DEBUG) {
                Slog.d(JobSchedulerService.TAG, "Enqueueing job: " + job.toString() + " work: " + work);
            }
            int uid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(uid);
            enforceValidJobRequest(uid, job);
            if (job.isPersisted()) {
                throw new IllegalArgumentException("Can't enqueue work for persisted jobs");
            }
            if (work == null) {
                throw new NullPointerException("work is null");
            }
            validateJobFlags(job, uid);
            long ident = Binder.clearCallingIdentity();
            try {
                return JobSchedulerService.this.scheduleAsPackage(job, work, uid, null, userId, null);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public int scheduleAsPackage(JobInfo job, String packageName, int userId, String tag) throws RemoteException {
            int callerUid = Binder.getCallingUid();
            if (JobSchedulerService.DEBUG) {
                Slog.d(JobSchedulerService.TAG, "Caller uid " + callerUid + " scheduling job: " + job.toString() + " on behalf of " + packageName + SliceClientPermissions.SliceAuthority.DELIMITER);
            }
            if (packageName == null) {
                throw new NullPointerException("Must specify a package for scheduleAsPackage()");
            }
            int mayScheduleForOthers = JobSchedulerService.this.getContext().checkCallingOrSelfPermission("android.permission.UPDATE_DEVICE_STATS");
            if (mayScheduleForOthers != 0) {
                throw new SecurityException("Caller uid " + callerUid + " not permitted to schedule jobs for other apps");
            }
            validateJobFlags(job, callerUid);
            long ident = Binder.clearCallingIdentity();
            try {
                return JobSchedulerService.this.scheduleAsPackage(job, null, callerUid, packageName, userId, tag);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public ParceledListSlice<JobInfo> getAllPendingJobs() throws RemoteException {
            int uid = Binder.getCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                return new ParceledListSlice<>(JobSchedulerService.this.getPendingJobs(uid));
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public JobInfo getPendingJob(int jobId) throws RemoteException {
            int uid = Binder.getCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                return JobSchedulerService.this.getPendingJob(uid, jobId);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void cancelAll() throws RemoteException {
            int uid = Binder.getCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                JobSchedulerService.this.cancelJobsForUid(uid, "cancelAll() called by app, callingUid=" + uid);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void cancel(int jobId) throws RemoteException {
            int uid = Binder.getCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                JobSchedulerService.this.cancelJob(uid, jobId, uid);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) throws PackageManager.NameNotFoundException {
            if (DumpUtils.checkDumpAndUsageStatsPermission(JobSchedulerService.this.getContext(), JobSchedulerService.TAG, pw)) {
                int filterUid = -1;
                boolean proto = false;
                if (!ArrayUtils.isEmpty(args)) {
                    int opti = 0;
                    while (opti < args.length) {
                        String arg = args[opti];
                        if ("-h".equals(arg)) {
                            JobSchedulerService.dumpHelp(pw);
                            return;
                        }
                        if (!"-a".equals(arg)) {
                            if (PriorityDump.PROTO_ARG.equals(arg)) {
                                proto = true;
                            } else {
                                if (arg.length() <= 0 || arg.charAt(0) != '-') {
                                    break;
                                    break;
                                }
                                pw.println("Unknown option: " + arg);
                                return;
                            }
                        }
                        opti++;
                    }
                    if (opti < args.length) {
                        String pkg = args[opti];
                        try {
                            filterUid = JobSchedulerService.this.getContext().getPackageManager().getPackageUid(pkg, 4194304);
                        } catch (PackageManager.NameNotFoundException e) {
                            pw.println("Invalid package: " + pkg);
                            return;
                        }
                    }
                }
                long identityToken = Binder.clearCallingIdentity();
                try {
                    if (proto) {
                        JobSchedulerService.this.dumpInternalProto(fd, filterUid);
                    } else {
                        JobSchedulerService.this.dumpInternal(new IndentingPrintWriter(pw, "  "), filterUid);
                    }
                    Binder.restoreCallingIdentity(identityToken);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identityToken);
                    throw th;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int handleShellCommand(ParcelFileDescriptor in, ParcelFileDescriptor out, ParcelFileDescriptor err, String[] args) {
            return new JobSchedulerShellCommand(JobSchedulerService.this).exec(this, in.getFileDescriptor(), out.getFileDescriptor(), err.getFileDescriptor(), args);
        }

        public List<JobInfo> getStartedJobs() {
            ArrayList<JobInfo> runningJobs;
            int uid = Binder.getCallingUid();
            if (uid != 1000) {
                throw new SecurityException("getStartedJobs() is system internal use only.");
            }
            synchronized (JobSchedulerService.this.mLock) {
                runningJobs = new ArrayList<>(JobSchedulerService.this.mActiveServices.size());
                for (JobServiceContext jsc : JobSchedulerService.this.mActiveServices) {
                    JobStatus job = jsc.getRunningJobLocked();
                    if (job != null) {
                        runningJobs.add(job.getJob());
                    }
                }
            }
            return runningJobs;
        }

        public ParceledListSlice<JobSnapshot> getAllJobSnapshots() {
            ParceledListSlice<JobSnapshot> parceledListSlice;
            int uid = Binder.getCallingUid();
            if (uid != 1000) {
                throw new SecurityException("getAllJobSnapshots() is system internal use only.");
            }
            synchronized (JobSchedulerService.this.mLock) {
                final ArrayList<JobSnapshot> snapshots = new ArrayList<>(JobSchedulerService.this.mJobs.size());
                JobSchedulerService.this.mJobs.forEachJob(new Consumer() { // from class: com.android.server.job.-$$Lambda$JobSchedulerService$JobSchedulerStub$9zQe5CBU32yn1NEDzLYvt_QAEGk
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$getAllJobSnapshots$0$JobSchedulerService$JobSchedulerStub(snapshots, (JobStatus) obj);
                    }
                });
                parceledListSlice = new ParceledListSlice<>(snapshots);
            }
            return parceledListSlice;
        }

        public /* synthetic */ void lambda$getAllJobSnapshots$0$JobSchedulerService$JobSchedulerStub(ArrayList snapshots, JobStatus job) {
            snapshots.add(new JobSnapshot(job.getJob(), job.getSatisfiedConstraintFlags(), JobSchedulerService.this.isReadyToBeExecutedLocked(job)));
        }
    }

    int executeRunCommand(String pkgName, int userId, int jobId, boolean satisfied, boolean force) {
        int i;
        Slog.d(TAG, "executeRunCommand(): " + pkgName + SliceClientPermissions.SliceAuthority.DELIMITER + userId + " " + jobId + " s=" + satisfied + " f=" + force);
        try {
            int uid = AppGlobals.getPackageManager().getPackageUid(pkgName, 0, userId != -1 ? userId : 0);
            if (uid < 0) {
                return JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
            }
            synchronized (this.mLock) {
                JobStatus js = this.mJobs.getJobByUidAndJobId(uid, jobId);
                if (js == null) {
                    return JobSchedulerShellCommand.CMD_ERR_NO_JOB;
                }
                if (force) {
                    i = 3;
                } else {
                    i = satisfied ? 1 : 2;
                }
                js.overrideState = i;
                for (int c = this.mControllers.size() - 1; c >= 0; c--) {
                    this.mControllers.get(c).reevaluateStateLocked(uid);
                }
                if (!js.isConstraintsSatisfied()) {
                    js.overrideState = 0;
                    return JobSchedulerShellCommand.CMD_ERR_CONSTRAINTS;
                }
                queueReadyJobsForExecutionLocked();
                maybeRunPendingJobsLocked();
            }
        } catch (RemoteException e) {
        }
        return 0;
    }

    int executeTimeoutCommand(PrintWriter pw, String pkgName, int userId, boolean hasJobId, int jobId) {
        if (DEBUG) {
            Slog.v(TAG, "executeTimeoutCommand(): " + pkgName + SliceClientPermissions.SliceAuthority.DELIMITER + userId + " " + jobId);
        }
        synchronized (this.mLock) {
            boolean foundSome = false;
            for (int i = 0; i < this.mActiveServices.size(); i++) {
                JobServiceContext jc = this.mActiveServices.get(i);
                JobStatus js = jc.getRunningJobLocked();
                if (jc.timeoutIfExecutingLocked(pkgName, userId, hasJobId, jobId, "shell")) {
                    foundSome = true;
                    pw.print("Timing out: ");
                    js.printUniqueId(pw);
                    pw.print(" ");
                    pw.println(js.getServiceComponent().flattenToShortString());
                }
            }
            if (!foundSome) {
                pw.println("No matching executing jobs found.");
            }
        }
        return 0;
    }

    int executeCancelCommand(PrintWriter pw, String pkgName, int userId, boolean hasJobId, int jobId) {
        if (DEBUG) {
            Slog.v(TAG, "executeCancelCommand(): " + pkgName + SliceClientPermissions.SliceAuthority.DELIMITER + userId + " " + jobId);
        }
        int pkgUid = -1;
        try {
            IPackageManager pm = AppGlobals.getPackageManager();
            pkgUid = pm.getPackageUid(pkgName, 0, userId);
        } catch (RemoteException e) {
        }
        if (pkgUid >= 0) {
            if (!hasJobId) {
                pw.println("Canceling all jobs for " + pkgName + " in user " + userId);
                if (!cancelJobsForUid(pkgUid, "cancel shell command for package")) {
                    pw.println("No matching jobs found.");
                }
            } else {
                pw.println("Canceling job " + pkgName + "/#" + jobId + " in user " + userId);
                if (!cancelJob(pkgUid, jobId, 2000)) {
                    pw.println("No matching job found.");
                }
            }
            return 0;
        }
        pw.println("Package " + pkgName + " not found.");
        return JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
    }

    void setMonitorBattery(boolean enabled) {
        synchronized (this.mLock) {
            if (this.mBatteryController != null) {
                this.mBatteryController.getTracker().setMonitorBatteryLocked(enabled);
            }
        }
    }

    int getBatterySeq() {
        int seq;
        synchronized (this.mLock) {
            seq = this.mBatteryController != null ? this.mBatteryController.getTracker().getSeq() : -1;
        }
        return seq;
    }

    boolean getBatteryCharging() {
        boolean zIsOnStablePower;
        synchronized (this.mLock) {
            zIsOnStablePower = this.mBatteryController != null ? this.mBatteryController.getTracker().isOnStablePower() : false;
        }
        return zIsOnStablePower;
    }

    boolean getBatteryNotLow() {
        boolean zIsBatteryNotLow;
        synchronized (this.mLock) {
            zIsBatteryNotLow = this.mBatteryController != null ? this.mBatteryController.getTracker().isBatteryNotLow() : false;
        }
        return zIsBatteryNotLow;
    }

    int getStorageSeq() {
        int seq;
        synchronized (this.mLock) {
            seq = this.mStorageController != null ? this.mStorageController.getTracker().getSeq() : -1;
        }
        return seq;
    }

    boolean getStorageNotLow() {
        boolean zIsStorageNotLow;
        synchronized (this.mLock) {
            zIsStorageNotLow = this.mStorageController != null ? this.mStorageController.getTracker().isStorageNotLow() : false;
        }
        return zIsStorageNotLow;
    }

    int getJobState(PrintWriter pw, String pkgName, int userId, int jobId) {
        try {
            int uid = AppGlobals.getPackageManager().getPackageUid(pkgName, 0, userId != -1 ? userId : 0);
            if (uid < 0) {
                pw.print("unknown(");
                pw.print(pkgName);
                pw.println(")");
                return JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
            }
            synchronized (this.mLock) {
                JobStatus js = this.mJobs.getJobByUidAndJobId(uid, jobId);
                if (DEBUG) {
                    Slog.d(TAG, "get-job-state " + uid + SliceClientPermissions.SliceAuthority.DELIMITER + jobId + ": " + js);
                }
                if (js == null) {
                    pw.print("unknown(");
                    UserHandle.formatUid(pw, uid);
                    pw.print("/jid");
                    pw.print(jobId);
                    pw.println(")");
                    return JobSchedulerShellCommand.CMD_ERR_NO_JOB;
                }
                boolean printed = false;
                if (this.mPendingJobs.contains(js)) {
                    pw.print("pending");
                    printed = true;
                }
                if (isCurrentlyActiveLocked(js)) {
                    if (printed) {
                        pw.print(" ");
                    }
                    printed = true;
                    pw.println("active");
                }
                if (!ArrayUtils.contains(this.mStartedUsers, js.getUserId())) {
                    if (printed) {
                        pw.print(" ");
                    }
                    printed = true;
                    pw.println("user-stopped");
                }
                if (!ArrayUtils.contains(this.mStartedUsers, js.getSourceUserId())) {
                    if (printed) {
                        pw.print(" ");
                    }
                    printed = true;
                    pw.println("source-user-stopped");
                }
                if (this.mBackingUpUids.indexOfKey(js.getSourceUid()) >= 0) {
                    if (printed) {
                        pw.print(" ");
                    }
                    printed = true;
                    pw.println("backing-up");
                }
                boolean componentPresent = false;
                try {
                    componentPresent = AppGlobals.getPackageManager().getServiceInfo(js.getServiceComponent(), AudioFormat.EVRC, js.getUserId()) != null;
                } catch (RemoteException e) {
                }
                if (!componentPresent) {
                    if (printed) {
                        pw.print(" ");
                    }
                    printed = true;
                    pw.println("no-component");
                }
                if (js.isReady()) {
                    if (printed) {
                        pw.print(" ");
                    }
                    printed = true;
                    pw.println("ready");
                }
                if (!printed) {
                    pw.print("waiting");
                }
                pw.println();
            }
        } catch (RemoteException e2) {
        }
        return 0;
    }

    void resetExecutionQuota(String pkgName, int userId) {
        this.mQuotaController.clearAppStats(userId, pkgName);
    }

    void resetScheduleQuota() {
        this.mQuotaTracker.clear();
    }

    void triggerDockState(boolean idleState) {
        Intent dockIntent;
        if (idleState) {
            dockIntent = new Intent("android.intent.action.DOCK_IDLE");
        } else {
            dockIntent = new Intent("android.intent.action.DOCK_ACTIVE");
        }
        dockIntent.setPackage(PackageManagerService.PLATFORM_PACKAGE_NAME);
        dockIntent.addFlags(1342177280);
        getContext().sendBroadcastAsUser(dockIntent, UserHandle.ALL);
    }

    static void dumpHelp(PrintWriter pw) {
        pw.println("Job Scheduler (jobscheduler) dump options:");
        pw.println("  [-h] [package] ...");
        pw.println("    -h: print this help");
        pw.println("  [package] is an optional package name to limit the output to.");
    }

    private static void sortJobs(List<JobStatus> jobs) {
        Collections.sort(jobs, new Comparator<JobStatus>() { // from class: com.android.server.job.JobSchedulerService.6
            @Override // java.util.Comparator
            public int compare(JobStatus o1, JobStatus o2) {
                int uid1 = o1.getUid();
                int uid2 = o2.getUid();
                int id1 = o1.getJobId();
                int id2 = o2.getJobId();
                if (uid1 != uid2) {
                    return uid1 < uid2 ? -1 : 1;
                }
                if (id1 < id2) {
                    return -1;
                }
                return id1 > id2 ? 1 : 0;
            }
        });
    }

    void dumpInternal(IndentingPrintWriter pw, int filterUid) throws Throwable {
        Object obj;
        long now;
        Predicate<JobStatus> predicate;
        byte b;
        final int filterUidFinal = UserHandle.getAppId(filterUid);
        long now2 = sSystemClock.millis();
        long nowElapsed = sElapsedRealtimeClock.millis();
        long nowUptime = sUptimeMillisClock.millis();
        Predicate<JobStatus> predicate2 = new Predicate() { // from class: com.android.server.job.-$$Lambda$JobSchedulerService$VVCk0M0TpfxhVRrY-28dggbYJQc
            @Override // java.util.function.Predicate
            public final boolean test(Object obj2) {
                return JobSchedulerService.lambda$dumpInternal$4(filterUidFinal, (JobStatus) obj2);
            }
        };
        Object obj2 = this.mLock;
        synchronized (obj2) {
            try {
                try {
                    this.mConstants.dump(pw);
                    for (StateController controller : this.mControllers) {
                        try {
                            pw.increaseIndent();
                            controller.dumpConstants(pw);
                            pw.decreaseIndent();
                        } catch (Throwable th) {
                            th = th;
                            obj = obj2;
                            throw th;
                        }
                    }
                    pw.println();
                    for (int i = this.mJobRestrictions.size() - 1; i >= 0; i--) {
                        pw.print("    ");
                        this.mJobRestrictions.get(i).dumpConstants(pw);
                        pw.println();
                    }
                    pw.println();
                    this.mQuotaTracker.dump(pw);
                    pw.println();
                    pw.println("Started users: " + Arrays.toString(this.mStartedUsers));
                    pw.print("Registered ");
                    pw.print(this.mJobs.size());
                    pw.println(" jobs:");
                    if (this.mJobs.size() > 0) {
                        try {
                            List<JobStatus> jobs = this.mJobs.mJobSet.getAllJobs();
                            sortJobs(jobs);
                            for (JobStatus job : jobs) {
                                pw.print("  JOB #");
                                job.printUniqueId(pw);
                                pw.print(": ");
                                pw.println(job.toShortStringExceptUniqueId());
                                if (predicate2.test(job)) {
                                    List<JobStatus> jobs2 = jobs;
                                    long now3 = now2;
                                    predicate = predicate2;
                                    obj = obj2;
                                    try {
                                        job.dump((PrintWriter) pw, "    ", true, nowElapsed);
                                        pw.print("    Restricted due to:");
                                        boolean isRestricted = checkIfRestricted(job) != null;
                                        if (isRestricted) {
                                            for (int i2 = this.mJobRestrictions.size() - 1; i2 >= 0; i2--) {
                                                JobRestriction restriction = this.mJobRestrictions.get(i2);
                                                if (restriction.isJobRestricted(job)) {
                                                    int reason = restriction.getReason();
                                                    pw.print(" " + JobParameters.getReasonCodeDescription(reason));
                                                }
                                            }
                                        } else {
                                            pw.print(" none");
                                        }
                                        pw.println(".");
                                        pw.print("    Ready: ");
                                        pw.print(isReadyToBeExecutedLocked(job));
                                        pw.print(" (job=");
                                        pw.print(job.isReady());
                                        pw.print(" user=");
                                        pw.print(areUsersStartedLocked(job));
                                        pw.print(" !restricted=");
                                        pw.print(!isRestricted);
                                        pw.print(" !pending=");
                                        pw.print(!this.mPendingJobs.contains(job));
                                        pw.print(" !active=");
                                        pw.print(!isCurrentlyActiveLocked(job));
                                        pw.print(" !backingup=");
                                        pw.print(this.mBackingUpUids.indexOfKey(job.getSourceUid()) < 0);
                                        pw.print(" comp=");
                                        pw.print(isComponentUsable(job));
                                        pw.println(")");
                                        predicate2 = predicate;
                                        obj2 = obj;
                                        jobs = jobs2;
                                        now2 = now3;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        throw th;
                                    }
                                }
                            }
                            now = now2;
                            predicate = predicate2;
                            obj = obj2;
                        } catch (Throwable th3) {
                            th = th3;
                            obj = obj2;
                            throw th;
                        }
                    } else {
                        now = now2;
                        predicate = predicate2;
                        obj = obj2;
                        try {
                            pw.println("  None.");
                        } catch (Throwable th4) {
                            th = th4;
                            throw th;
                        }
                    }
                    for (int i3 = 0; i3 < this.mControllers.size(); i3++) {
                        pw.println();
                        pw.println(this.mControllers.get(i3).getClass().getSimpleName() + ":");
                        pw.increaseIndent();
                        this.mControllers.get(i3).dumpControllerStateLocked(pw, predicate);
                        pw.decreaseIndent();
                    }
                    pw.println();
                    pw.println("Uid priority overrides:");
                    int i4 = 0;
                    while (true) {
                        b = -1;
                        if (i4 >= this.mUidPriorityOverride.size()) {
                            break;
                        }
                        int uid = this.mUidPriorityOverride.keyAt(i4);
                        if (filterUidFinal == -1 || filterUidFinal == UserHandle.getAppId(uid)) {
                            pw.print("  ");
                            pw.print(UserHandle.formatUid(uid));
                            pw.print(": ");
                            pw.println(this.mUidPriorityOverride.valueAt(i4));
                        }
                        i4++;
                    }
                    if (this.mBackingUpUids.size() > 0) {
                        pw.println();
                        pw.println("Backing up uids:");
                        boolean first = true;
                        for (int i5 = 0; i5 < this.mBackingUpUids.size(); i5++) {
                            int uid2 = this.mBackingUpUids.keyAt(i5);
                            if (filterUidFinal == -1 || filterUidFinal == UserHandle.getAppId(uid2)) {
                                if (first) {
                                    pw.print("  ");
                                    first = false;
                                } else {
                                    pw.print(", ");
                                }
                                pw.print(UserHandle.formatUid(uid2));
                            }
                        }
                        pw.println();
                    }
                    pw.println();
                    this.mJobPackageTracker.dump((PrintWriter) pw, "", filterUidFinal);
                    pw.println();
                    if (this.mJobPackageTracker.dumpHistory((PrintWriter) pw, "", filterUidFinal)) {
                        pw.println();
                    }
                    pw.println("Pending queue:");
                    int i6 = 0;
                    while (i6 < this.mPendingJobs.size()) {
                        JobStatus job2 = this.mPendingJobs.get(i6);
                        pw.print("  Pending #");
                        pw.print(i6);
                        pw.print(": ");
                        pw.println(job2.toShortString());
                        int filterUidFinal2 = filterUidFinal;
                        Predicate<JobStatus> predicate3 = predicate;
                        byte b2 = b;
                        try {
                            job2.dump((PrintWriter) pw, "    ", false, nowElapsed);
                            int priority = evaluateJobPriorityLocked(job2);
                            pw.print("    Evaluated priority: ");
                            pw.println(JobInfo.getPriorityString(priority));
                            pw.print("    Tag: ");
                            pw.println(job2.getTag());
                            pw.print("    Enq: ");
                            TimeUtils.formatDuration(job2.madePending - nowUptime, pw);
                            pw.println();
                            i6++;
                            b = b2;
                            filterUidFinal = filterUidFinal2;
                            predicate = predicate3;
                        } catch (Throwable th5) {
                            th = th5;
                            throw th;
                        }
                    }
                    pw.println();
                    pw.println("Active jobs:");
                    for (int i7 = 0; i7 < this.mActiveServices.size(); i7++) {
                        JobServiceContext jsc = this.mActiveServices.get(i7);
                        pw.print("  Slot #");
                        pw.print(i7);
                        pw.print(": ");
                        JobStatus job3 = jsc.getRunningJobLocked();
                        if (job3 != null) {
                            pw.println(job3.toShortString());
                            pw.print("    Running for: ");
                            TimeUtils.formatDuration(nowElapsed - jsc.getExecutionStartTimeElapsed(), pw);
                            pw.print(", timeout at: ");
                            TimeUtils.formatDuration(jsc.getTimeoutElapsed() - nowElapsed, pw);
                            pw.println();
                            job3.dump((PrintWriter) pw, "    ", false, nowElapsed);
                            int priority2 = evaluateJobPriorityLocked(jsc.getRunningJobLocked());
                            pw.print("    Evaluated priority: ");
                            pw.println(JobInfo.getPriorityString(priority2));
                            pw.print("    Active at ");
                            TimeUtils.formatDuration(job3.madeActive - nowUptime, pw);
                            pw.print(", pending for ");
                            TimeUtils.formatDuration(job3.madeActive - job3.madePending, pw);
                            pw.println();
                        } else if (jsc.mStoppedReason != null) {
                            pw.print("inactive since ");
                            TimeUtils.formatDuration(jsc.mStoppedTime, nowElapsed, pw);
                            pw.print(", stopped because: ");
                            pw.println(jsc.mStoppedReason);
                        } else {
                            pw.println("inactive");
                        }
                    }
                    if (filterUid == -1) {
                        pw.println();
                        pw.print("mReadyToRock=");
                        pw.println(this.mReadyToRock);
                        pw.print("mReportedActive=");
                        pw.println(this.mReportedActive);
                    }
                    pw.println();
                    this.mConcurrencyManager.dumpLocked(pw, now, nowElapsed);
                    pw.println();
                    pw.print("PersistStats: ");
                    pw.println(this.mJobs.getPersistStats());
                    pw.println();
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Throwable th7) {
                th = th7;
                obj = obj2;
            }
        }
    }

    static /* synthetic */ boolean lambda$dumpInternal$4(int filterUidFinal, JobStatus js) {
        return filterUidFinal == -1 || UserHandle.getAppId(js.getUid()) == filterUidFinal || UserHandle.getAppId(js.getSourceUid()) == filterUidFinal;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x020b A[Catch: all -> 0x0232, TRY_LEAVE, TryCatch #0 {all -> 0x0232, blocks: (B:63:0x0205, B:65:0x020b, B:74:0x024b, B:76:0x0253, B:78:0x0259), top: B:127:0x0205 }] */
    void dumpInternalProto(FileDescriptor fd, int filterUid) throws Throwable {
        Object obj;
        int filterUidFinal;
        long now;
        int filterUidFinal2;
        long ajToken;
        ProtoOutputStream proto = new ProtoOutputStream(fd);
        final int filterUidFinal3 = UserHandle.getAppId(filterUid);
        long now2 = sSystemClock.millis();
        long nowElapsed = sElapsedRealtimeClock.millis();
        long nowUptime = sUptimeMillisClock.millis();
        Predicate<JobStatus> predicate = new Predicate() { // from class: com.android.server.job.-$$Lambda$JobSchedulerService$eQqdX2w3FwBMn_LMfN2Y0HQCDq4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj2) {
                return JobSchedulerService.lambda$dumpInternalProto$5(filterUidFinal3, (JobStatus) obj2);
            }
        };
        Object obj2 = this.mLock;
        synchronized (obj2) {
            try {
                try {
                    long settingsToken = proto.start(1146756268033L);
                    this.mConstants.dump(proto);
                    for (StateController controller : this.mControllers) {
                        try {
                            controller.dumpConstants(proto);
                        } catch (Throwable th) {
                            th = th;
                            obj = obj2;
                            throw th;
                        }
                    }
                    proto.end(settingsToken);
                    for (int i = this.mJobRestrictions.size() - 1; i >= 0; i--) {
                        this.mJobRestrictions.get(i).dumpConstants(proto);
                    }
                    int[] iArr = this.mStartedUsers;
                    int length = iArr.length;
                    int i2 = 0;
                    while (i2 < length) {
                        int u = iArr[i2];
                        int[] iArr2 = iArr;
                        proto.write(2220498092034L, u);
                        i2++;
                        iArr = iArr2;
                    }
                    this.mQuotaTracker.dump(proto, 1146756268054L);
                    if (this.mJobs.size() > 0) {
                        try {
                            List<JobStatus> jobs = this.mJobs.mJobSet.getAllJobs();
                            sortJobs(jobs);
                            for (JobStatus job : jobs) {
                                long rjToken = proto.start(2246267895811L);
                                job.writeToShortProto(proto, 1146756268033L);
                                if (predicate.test(job)) {
                                    long settingsToken2 = settingsToken;
                                    int filterUidFinal4 = filterUidFinal3;
                                    long now3 = now2;
                                    obj = obj2;
                                    try {
                                        job.dump(proto, 1146756268034L, true, nowElapsed);
                                        proto.write(1133871366154L, isReadyToBeExecutedLocked(job));
                                        proto.write(1133871366147L, job.isReady());
                                        proto.write(1133871366148L, areUsersStartedLocked(job));
                                        proto.write(1133871366155L, checkIfRestricted(job) != null);
                                        proto.write(1133871366149L, this.mPendingJobs.contains(job));
                                        proto.write(1133871366150L, isCurrentlyActiveLocked(job));
                                        proto.write(1133871366151L, this.mBackingUpUids.indexOfKey(job.getSourceUid()) >= 0);
                                        proto.write(1133871366152L, isComponentUsable(job));
                                        for (JobRestriction restriction : this.mJobRestrictions) {
                                            long restrictionsToken = proto.start(2246267895820L);
                                            proto.write(1159641169921L, restriction.getReason());
                                            proto.write(1133871366146L, restriction.isJobRestricted(job));
                                            proto.end(restrictionsToken);
                                        }
                                        proto.end(rjToken);
                                        obj2 = obj;
                                        filterUidFinal3 = filterUidFinal4;
                                        settingsToken = settingsToken2;
                                        now2 = now3;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        throw th;
                                    }
                                }
                            }
                            filterUidFinal = filterUidFinal3;
                            now = now2;
                            obj = obj2;
                        } catch (Throwable th3) {
                            th = th3;
                            obj = obj2;
                            throw th;
                        }
                    } else {
                        filterUidFinal = filterUidFinal3;
                        now = now2;
                        obj = obj2;
                    }
                    try {
                        for (StateController controller2 : this.mControllers) {
                            controller2.dumpControllerStateLocked(proto, 2246267895812L, predicate);
                        }
                        int i3 = 0;
                        while (i3 < this.mUidPriorityOverride.size()) {
                            try {
                                int uid = this.mUidPriorityOverride.keyAt(i3);
                                filterUidFinal2 = filterUidFinal;
                                if (filterUidFinal2 != -1) {
                                    try {
                                        if (filterUidFinal2 == UserHandle.getAppId(uid)) {
                                            long pToken = proto.start(2246267895813L);
                                            proto.write(1120986464257L, uid);
                                            proto.write(1172526071810L, this.mUidPriorityOverride.valueAt(i3));
                                            proto.end(pToken);
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        throw th;
                                    }
                                } else {
                                    long pToken2 = proto.start(2246267895813L);
                                    proto.write(1120986464257L, uid);
                                    proto.write(1172526071810L, this.mUidPriorityOverride.valueAt(i3));
                                    proto.end(pToken2);
                                }
                                i3++;
                                filterUidFinal = filterUidFinal2;
                            } catch (Throwable th5) {
                                th = th5;
                                throw th;
                            }
                        }
                        filterUidFinal2 = filterUidFinal;
                        for (int i4 = 0; i4 < this.mBackingUpUids.size(); i4++) {
                            try {
                                int uid2 = this.mBackingUpUids.keyAt(i4);
                                if (filterUidFinal2 == -1 || filterUidFinal2 == UserHandle.getAppId(uid2)) {
                                    proto.write(2220498092038L, uid2);
                                }
                            } catch (Throwable th6) {
                                th = th6;
                            }
                        }
                        this.mJobPackageTracker.dump(proto, 1146756268040L, filterUidFinal2);
                        this.mJobPackageTracker.dumpHistory(proto, 1146756268039L, filterUidFinal2);
                        Iterator<JobStatus> it = this.mPendingJobs.iterator();
                        while (it.hasNext()) {
                            try {
                                JobStatus job2 = it.next();
                                long pjToken = proto.start(2246267895817L);
                                job2.writeToShortProto(proto, 1146756268033L);
                                int filterUidFinal5 = filterUidFinal2;
                                Iterator<JobStatus> it2 = it;
                                job2.dump(proto, 1146756268034L, false, nowElapsed);
                                proto.write(1172526071811L, evaluateJobPriorityLocked(job2));
                                proto.write(1112396529668L, nowUptime - job2.madePending);
                                proto.end(pjToken);
                                it = it2;
                                filterUidFinal2 = filterUidFinal5;
                            } catch (Throwable th7) {
                                th = th7;
                                throw th;
                            }
                        }
                        for (JobServiceContext jsc : this.mActiveServices) {
                            long ajToken2 = proto.start(2246267895818L);
                            JobStatus job3 = jsc.getRunningJobLocked();
                            if (job3 == null) {
                                long ijToken = proto.start(1146756268033L);
                                proto.write(1112396529665L, nowElapsed - jsc.mStoppedTime);
                                if (jsc.mStoppedReason != null) {
                                    proto.write(1138166333442L, jsc.mStoppedReason);
                                }
                                proto.end(ijToken);
                                ajToken = ajToken2;
                            } else {
                                long rjToken2 = proto.start(1146756268034L);
                                job3.writeToShortProto(proto, 1146756268033L);
                                proto.write(1112396529666L, nowElapsed - jsc.getExecutionStartTimeElapsed());
                                proto.write(1112396529667L, jsc.getTimeoutElapsed() - nowElapsed);
                                ajToken = ajToken2;
                                job3.dump(proto, 1146756268036L, false, nowElapsed);
                                proto.write(1172526071813L, evaluateJobPriorityLocked(jsc.getRunningJobLocked()));
                                proto.write(1112396529670L, nowUptime - job3.madeActive);
                                proto.write(1112396529671L, job3.madeActive - job3.madePending);
                                proto.end(rjToken2);
                            }
                            long rjToken3 = ajToken;
                            proto.end(rjToken3);
                        }
                        if (filterUid == -1) {
                            try {
                                proto.write(1133871366155L, this.mReadyToRock);
                                proto.write(1133871366156L, this.mReportedActive);
                            } catch (Throwable th8) {
                                th = th8;
                                throw th;
                            }
                        }
                        try {
                            this.mConcurrencyManager.dumpProtoLocked(proto, 1146756268052L, now, nowElapsed);
                            this.mJobs.getPersistStats().dumpDebug(proto, 1146756268053L);
                            proto.flush();
                        } catch (Throwable th9) {
                            th = th9;
                            throw th;
                        }
                    } catch (Throwable th10) {
                        th = th10;
                    }
                } catch (Throwable th11) {
                    th = th11;
                }
            } catch (Throwable th12) {
                th = th12;
                obj = obj2;
            }
        }
    }

    static /* synthetic */ boolean lambda$dumpInternalProto$5(int filterUidFinal, JobStatus js) {
        return filterUidFinal == -1 || UserHandle.getAppId(js.getUid()) == filterUidFinal || UserHandle.getAppId(js.getSourceUid()) == filterUidFinal;
    }
}
