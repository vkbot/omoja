package com.android.server.am;

import android.R;
import android.app.ActivityThread;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.KeyValueListParser;
import android.util.Slog;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.job.controllers.JobStatus;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
final class ActivityManagerConstants extends ContentObserver {
    private static final long DEFAULT_BACKGROUND_SETTLE_TIME = 60000;
    private static final long DEFAULT_BG_START_TIMEOUT = 15000;
    private static final int DEFAULT_BOUND_SERVICE_CRASH_MAX_RETRY = 16;
    private static final long DEFAULT_BOUND_SERVICE_CRASH_RESTART_DURATION = 1800000;
    private static final long DEFAULT_CONTENT_PROVIDER_RETAIN_TIME = 20000;
    private static final long DEFAULT_FGSERVICE_MIN_REPORT_TIME = 3000;
    private static final long DEFAULT_FGSERVICE_MIN_SHOWN_TIME = 2000;
    private static final long DEFAULT_FGSERVICE_SCREEN_ON_AFTER_TIME = 5000;
    private static final long DEFAULT_FGSERVICE_SCREEN_ON_BEFORE_TIME = 1000;
    private static final int DEFAULT_FGS_START_FOREGROUND_TIMEOUT_MS = 10000;
    private static final boolean DEFAULT_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS = true;
    private static final long DEFAULT_FULL_PSS_LOWERED_INTERVAL = 300000;
    private static final long DEFAULT_FULL_PSS_MIN_INTERVAL = 1200000;
    private static final long DEFAULT_GC_MIN_INTERVAL = 60000;
    private static final long DEFAULT_GC_TIMEOUT = 5000;
    private static final int DEFAULT_MAX_CACHED_PROCESSES = 32;
    private static final long DEFAULT_MAX_SERVICE_INACTIVITY = 1800000;
    private static final long DEFAULT_MEMORY_INFO_THROTTLE_TIME = 300000;
    private static final long DEFAULT_MIN_ASSOC_LOG_DURATION = 300000;
    private static final int DEFAULT_OOMADJ_UPDATE_POLICY = 1;
    private static final int DEFAULT_PENDINGINTENT_WARNING_THRESHOLD = 2000;
    private static final long DEFAULT_POWER_CHECK_INTERVAL = 300000;
    private static final int DEFAULT_POWER_CHECK_MAX_CPU_1 = 25;
    private static final int DEFAULT_POWER_CHECK_MAX_CPU_2 = 25;
    private static final int DEFAULT_POWER_CHECK_MAX_CPU_3 = 10;
    private static final int DEFAULT_POWER_CHECK_MAX_CPU_4 = 2;
    private static final boolean DEFAULT_PROCESS_START_ASYNC = true;
    private static final long DEFAULT_SERVICE_BG_ACTIVITY_START_TIMEOUT = 10000;
    private static final long DEFAULT_SERVICE_MIN_RESTART_TIME_BETWEEN = 10000;
    private static final long DEFAULT_SERVICE_RESET_RUN_DURATION = 60000;
    private static final long DEFAULT_SERVICE_RESTART_DURATION = 1000;
    private static final int DEFAULT_SERVICE_RESTART_DURATION_FACTOR = 4;
    private static final long DEFAULT_SERVICE_USAGE_INTERACTION_TIME = 1800000;
    private static final long DEFAULT_TOP_TO_FGS_GRACE_DURATION = 15000;
    private static final long DEFAULT_USAGE_STATS_INTERACTION_INTERVAL = 7200000;
    private static final String KEY_BACKGROUND_SETTLE_TIME = "background_settle_time";
    static final String KEY_BG_START_TIMEOUT = "service_bg_start_timeout";
    static final String KEY_BOUND_SERVICE_CRASH_MAX_RETRY = "service_crash_max_retry";
    static final String KEY_BOUND_SERVICE_CRASH_RESTART_DURATION = "service_crash_restart_duration";
    private static final String KEY_CONTENT_PROVIDER_RETAIN_TIME = "content_provider_retain_time";
    private static final String KEY_DEFAULT_BACKGROUND_ACTIVITY_STARTS_ENABLED = "default_background_activity_starts_enabled";
    private static final String KEY_DEFAULT_BACKGROUND_FGS_STARTS_RESTRICTION_ENABLED = "default_background_fgs_starts_restriction_enabled";
    private static final String KEY_FGSERVICE_MIN_REPORT_TIME = "fgservice_min_report_time";
    private static final String KEY_FGSERVICE_MIN_SHOWN_TIME = "fgservice_min_shown_time";
    private static final String KEY_FGSERVICE_SCREEN_ON_AFTER_TIME = "fgservice_screen_on_after_time";
    private static final String KEY_FGSERVICE_SCREEN_ON_BEFORE_TIME = "fgservice_screen_on_before_time";
    static final String KEY_FGS_START_FOREGROUND_TIMEOUT = "fgs_start_foreground_timeout";
    private static final String KEY_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS = "force_bg_check_on_restricted";
    private static final String KEY_FULL_PSS_LOWERED_INTERVAL = "full_pss_lowered_interval";
    private static final String KEY_FULL_PSS_MIN_INTERVAL = "full_pss_min_interval";
    private static final String KEY_GC_MIN_INTERVAL = "gc_min_interval";
    private static final String KEY_GC_TIMEOUT = "gc_timeout";
    private static final String KEY_IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES = "imperceptible_kill_exempt_packages";
    private static final String KEY_IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES = "imperceptible_kill_exempt_proc_states";
    private static final String KEY_MAX_CACHED_PROCESSES = "max_cached_processes";
    static final String KEY_MAX_SERVICE_INACTIVITY = "service_max_inactivity";
    static final String KEY_MEMORY_INFO_THROTTLE_TIME = "memory_info_throttle_time";
    private static final String KEY_MIN_ASSOC_LOG_DURATION = "min_assoc_log_duration";
    private static final String KEY_OOMADJ_UPDATE_POLICY = "oomadj_update_policy";
    static final String KEY_PENDINGINTENT_WARNING_THRESHOLD = "pendingintent_warning_threshold";
    private static final String KEY_POWER_CHECK_INTERVAL = "power_check_interval";
    private static final String KEY_POWER_CHECK_MAX_CPU_1 = "power_check_max_cpu_1";
    private static final String KEY_POWER_CHECK_MAX_CPU_2 = "power_check_max_cpu_2";
    private static final String KEY_POWER_CHECK_MAX_CPU_3 = "power_check_max_cpu_3";
    private static final String KEY_POWER_CHECK_MAX_CPU_4 = "power_check_max_cpu_4";
    static final String KEY_PROCESS_START_ASYNC = "process_start_async";
    static final String KEY_SERVICE_BG_ACTIVITY_START_TIMEOUT = "service_bg_activity_start_timeout";
    static final String KEY_SERVICE_MIN_RESTART_TIME_BETWEEN = "service_min_restart_time_between";
    static final String KEY_SERVICE_RESET_RUN_DURATION = "service_reset_run_duration";
    static final String KEY_SERVICE_RESTART_DURATION = "service_restart_duration";
    static final String KEY_SERVICE_RESTART_DURATION_FACTOR = "service_restart_duration_factor";
    private static final String KEY_SERVICE_USAGE_INTERACTION_TIME = "service_usage_interaction_time";
    static final String KEY_TOP_TO_FGS_GRACE_DURATION = "top_to_fgs_grace_duration";
    private static final String KEY_USAGE_STATS_INTERACTION_INTERVAL = "usage_stats_interaction_interval";
    private static final long MIN_AUTOMATIC_HEAP_DUMP_PSS_THRESHOLD_BYTES = 102400;
    private static final int OOMADJ_UPDATE_POLICY_QUICK = 1;
    private static final int OOMADJ_UPDATE_POLICY_SLOW = 0;
    private static final String TAG = "ActivityManagerConstants";
    public long BACKGROUND_SETTLE_TIME;
    public long BG_START_TIMEOUT;
    public long BOUND_SERVICE_CRASH_RESTART_DURATION;
    public long BOUND_SERVICE_MAX_CRASH_RETRY;
    long CONTENT_PROVIDER_RETAIN_TIME;
    public int CUR_MAX_CACHED_PROCESSES;
    public int CUR_MAX_EMPTY_PROCESSES;
    public int CUR_TRIM_CACHED_PROCESSES;
    public int CUR_TRIM_EMPTY_PROCESSES;
    public long FGSERVICE_MIN_REPORT_TIME;
    public long FGSERVICE_MIN_SHOWN_TIME;
    public long FGSERVICE_SCREEN_ON_AFTER_TIME;
    public long FGSERVICE_SCREEN_ON_BEFORE_TIME;
    public boolean FLAG_PROCESS_START_ASYNC;
    boolean FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS;
    long FULL_PSS_LOWERED_INTERVAL;
    long FULL_PSS_MIN_INTERVAL;
    long GC_MIN_INTERVAL;
    long GC_TIMEOUT;
    public ArraySet<String> IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES;
    public ArraySet<Integer> IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES;
    public final ArraySet<ComponentName> KEEP_WARMING_SERVICES;
    public int MAX_CACHED_PROCESSES;
    public long MAX_SERVICE_INACTIVITY;
    public long MEMORY_INFO_THROTTLE_TIME;
    public boolean OOMADJ_UPDATE_QUICK;
    public int PENDINGINTENT_WARNING_THRESHOLD;
    long POWER_CHECK_INTERVAL;
    int POWER_CHECK_MAX_CPU_1;
    int POWER_CHECK_MAX_CPU_2;
    int POWER_CHECK_MAX_CPU_3;
    int POWER_CHECK_MAX_CPU_4;
    public long SERVICE_BG_ACTIVITY_START_TIMEOUT;
    public long SERVICE_MIN_RESTART_TIME_BETWEEN;
    public long SERVICE_RESET_RUN_DURATION;
    public long SERVICE_RESTART_DURATION;
    public int SERVICE_RESTART_DURATION_FACTOR;
    long SERVICE_USAGE_INTERACTION_TIME;
    public long TOP_TO_FGS_GRACE_DURATION;
    long USAGE_STATS_INTERACTION_INTERVAL;
    public final int mBootCompletedSendDelay;
    private List<String> mDefaultImperceptibleKillExemptPackages;
    private List<Integer> mDefaultImperceptibleKillExemptProcStates;
    public final List<String> mEarlyAppList;
    public final boolean mEarlyAppListEnable;
    public final List<String> mEarlyPersistentAppList;
    volatile long mFgsStartForegroundTimeoutMs;
    volatile boolean mFlagActivityStartsLoggingEnabled;
    volatile boolean mFlagBackgroundActivityStartsEnabled;
    volatile boolean mFlagBackgroundFgsStartRestrictionEnabled;
    volatile boolean mFlagForegroundServiceStartsLoggingEnabled;
    public final boolean mMegaQuickBootEnable;
    private final DeviceConfig.OnPropertiesChangedListener mOnDeviceConfigChangedListener;
    private int mOverrideMaxCachedProcesses;
    private final KeyValueListParser mParser;
    public final int mPersistentStartDelay;
    private ContentResolver mResolver;
    private final ActivityManagerService mService;
    private final boolean mSystemServerAutomaticHeapDumpEnabled;
    private final String mSystemServerAutomaticHeapDumpPackageName;
    private long mSystemServerAutomaticHeapDumpPssThresholdBytes;
    private static final Uri ACTIVITY_MANAGER_CONSTANTS_URI = Settings.Global.getUriFor("activity_manager_constants");
    private static final Uri ACTIVITY_STARTS_LOGGING_ENABLED_URI = Settings.Global.getUriFor("activity_starts_logging_enabled");
    private static final Uri FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI = Settings.Global.getUriFor("foreground_service_starts_logging_enabled");
    private static final Uri ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI = Settings.Global.getUriFor("enable_automatic_system_server_heap_dumps");
    public static long MIN_ASSOC_LOG_DURATION = BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS;

    ActivityManagerConstants(Context context, ActivityManagerService service, Handler handler) {
        super(handler);
        this.MAX_CACHED_PROCESSES = 32;
        this.BACKGROUND_SETTLE_TIME = 60000L;
        this.FGSERVICE_MIN_SHOWN_TIME = DEFAULT_FGSERVICE_MIN_SHOWN_TIME;
        this.FGSERVICE_MIN_REPORT_TIME = 3000L;
        this.FGSERVICE_SCREEN_ON_BEFORE_TIME = 1000L;
        this.FGSERVICE_SCREEN_ON_AFTER_TIME = 5000L;
        this.CONTENT_PROVIDER_RETAIN_TIME = DEFAULT_CONTENT_PROVIDER_RETAIN_TIME;
        this.GC_TIMEOUT = 5000L;
        this.GC_MIN_INTERVAL = 60000L;
        this.FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS = true;
        this.FULL_PSS_MIN_INTERVAL = DEFAULT_FULL_PSS_MIN_INTERVAL;
        this.FULL_PSS_LOWERED_INTERVAL = BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS;
        this.POWER_CHECK_INTERVAL = BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS;
        this.POWER_CHECK_MAX_CPU_1 = 25;
        this.POWER_CHECK_MAX_CPU_2 = 25;
        this.POWER_CHECK_MAX_CPU_3 = 10;
        this.POWER_CHECK_MAX_CPU_4 = 2;
        this.SERVICE_USAGE_INTERACTION_TIME = 1800000L;
        this.USAGE_STATS_INTERACTION_INTERVAL = 7200000L;
        this.SERVICE_RESTART_DURATION = 1000L;
        this.SERVICE_RESET_RUN_DURATION = 60000L;
        this.SERVICE_RESTART_DURATION_FACTOR = 4;
        this.SERVICE_MIN_RESTART_TIME_BETWEEN = JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
        this.MAX_SERVICE_INACTIVITY = 1800000L;
        this.BG_START_TIMEOUT = 15000L;
        this.SERVICE_BG_ACTIVITY_START_TIMEOUT = JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
        this.BOUND_SERVICE_CRASH_RESTART_DURATION = 1800000L;
        this.BOUND_SERVICE_MAX_CRASH_RETRY = 16L;
        this.FLAG_PROCESS_START_ASYNC = true;
        this.MEMORY_INFO_THROTTLE_TIME = BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS;
        this.TOP_TO_FGS_GRACE_DURATION = 15000L;
        this.mFgsStartForegroundTimeoutMs = JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
        this.mFlagBackgroundFgsStartRestrictionEnabled = true;
        this.mParser = new KeyValueListParser(',');
        this.mOverrideMaxCachedProcesses = -1;
        this.CUR_MAX_CACHED_PROCESSES = 32;
        this.CUR_MAX_EMPTY_PROCESSES = computeEmptyProcessLimit(32);
        this.CUR_TRIM_EMPTY_PROCESSES = computeEmptyProcessLimit(this.MAX_CACHED_PROCESSES) / 2;
        int i = this.MAX_CACHED_PROCESSES;
        this.CUR_TRIM_CACHED_PROCESSES = (i - computeEmptyProcessLimit(i)) / 3;
        this.IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES = new ArraySet<>();
        this.IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES = new ArraySet<>();
        this.PENDINGINTENT_WARNING_THRESHOLD = DEFAULT_PENDINGINTENT_WARNING_THRESHOLD;
        this.KEEP_WARMING_SERVICES = new ArraySet<>();
        this.OOMADJ_UPDATE_QUICK = true;
        this.mOnDeviceConfigChangedListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.am.ActivityManagerConstants.1
            public void onPropertiesChanged(DeviceConfig.Properties properties) {
                String name;
                Iterator it = properties.getKeyset().iterator();
                while (it.hasNext() && (name = (String) it.next()) != null) {
                    switch (name) {
                        case "max_cached_processes":
                            ActivityManagerConstants.this.updateMaxCachedProcesses();
                            break;
                        case "default_background_activity_starts_enabled":
                            ActivityManagerConstants.this.updateBackgroundActivityStarts();
                            break;
                        case "default_background_fgs_starts_restriction_enabled":
                            ActivityManagerConstants.this.updateBackgroundFgsStartsRestriction();
                            break;
                        case "oomadj_update_policy":
                            ActivityManagerConstants.this.updateOomAdjUpdatePolicy();
                            break;
                        case "imperceptible_kill_exempt_packages":
                        case "imperceptible_kill_exempt_proc_states":
                            ActivityManagerConstants.this.updateImperceptibleKillExemptions();
                            break;
                        case "force_bg_check_on_restricted":
                            ActivityManagerConstants.this.updateForceRestrictedBackgroundCheck();
                            break;
                        case "min_assoc_log_duration":
                            ActivityManagerConstants.this.updateMinAssocLogDuration();
                            break;
                        case "fgs_start_foreground_timeout":
                            ActivityManagerConstants.this.updateFgsStartForegroundTimeout();
                            break;
                    }
                }
            }
        };
        this.mService = service;
        this.mSystemServerAutomaticHeapDumpEnabled = Build.IS_DEBUGGABLE && context.getResources().getBoolean(R.bool.config_bg_prompt_fgs_with_noti_to_bg_restricted);
        this.mSystemServerAutomaticHeapDumpPackageName = context.getPackageName();
        this.mSystemServerAutomaticHeapDumpPssThresholdBytes = Math.max(MIN_AUTOMATIC_HEAP_DUMP_PSS_THRESHOLD_BYTES, context.getResources().getInteger(R.integer.config_cameraPrivacyLightAlsAveragingIntervalMillis));
        this.mDefaultImperceptibleKillExemptPackages = Arrays.asList(context.getResources().getStringArray(R.array.config_cdma_dun_supported_types));
        this.mDefaultImperceptibleKillExemptProcStates = (List) Arrays.stream(context.getResources().getIntArray(R.array.config_cdma_home_system)).boxed().collect(Collectors.toList());
        this.IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES.addAll(this.mDefaultImperceptibleKillExemptPackages);
        this.IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES.addAll(this.mDefaultImperceptibleKillExemptProcStates);
        this.KEEP_WARMING_SERVICES.addAll((Collection<? extends ComponentName>) Arrays.stream(context.getResources().getStringArray(R.array.config_displayWhiteBalanceDisplayRangeMinimums)).map(new Function() { // from class: com.android.server.am.-$$Lambda$CMsuQkj1ZNjH6tJIvQlUBEuzHic
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ComponentName.unflattenFromString((String) obj);
            }
        }).collect(Collectors.toSet()));
        this.mMegaQuickBootEnable = context.getResources().getBoolean(R.bool.config_allowSeamlessRotationDespiteNavBarMoving);
        this.mEarlyAppListEnable = context.getResources().getBoolean(R.bool.config_cecHdmiCecVersion20_default);
        this.mEarlyPersistentAppList = Arrays.asList(context.getResources().getStringArray(R.array.config_deviceTabletopRotations));
        this.mEarlyAppList = Arrays.asList(context.getResources().getStringArray(R.array.config_deviceStatesToReverseDefaultDisplayRotationAroundZAxis));
        this.mBootCompletedSendDelay = context.getResources().getInteger(R.integer.config_bg_current_drain_exempted_types);
        this.mPersistentStartDelay = context.getResources().getInteger(R.integer.config_jobSchedulerIdleWindowSlop);
    }

    public void start(ContentResolver resolver) {
        this.mResolver = resolver;
        resolver.registerContentObserver(ACTIVITY_MANAGER_CONSTANTS_URI, false, this);
        this.mResolver.registerContentObserver(ACTIVITY_STARTS_LOGGING_ENABLED_URI, false, this);
        this.mResolver.registerContentObserver(FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI, false, this);
        if (this.mSystemServerAutomaticHeapDumpEnabled) {
            this.mResolver.registerContentObserver(ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI, false, this);
        }
        updateConstants();
        if (this.mSystemServerAutomaticHeapDumpEnabled) {
            updateEnableAutomaticSystemServerHeapDumps();
        }
        DeviceConfig.addOnPropertiesChangedListener("activity_manager", ActivityThread.currentApplication().getMainExecutor(), this.mOnDeviceConfigChangedListener);
        loadDeviceConfigConstants();
        updateActivityStartsLoggingEnabled();
        updateForegroundServiceStartsLoggingEnabled();
    }

    private void loadDeviceConfigConstants() {
        this.mOnDeviceConfigChangedListener.onPropertiesChanged(DeviceConfig.getProperties("activity_manager", new String[0]));
    }

    public void setOverrideMaxCachedProcesses(int value) {
        this.mOverrideMaxCachedProcesses = value;
        updateMaxCachedProcesses();
    }

    public int getOverrideMaxCachedProcesses() {
        return this.mOverrideMaxCachedProcesses;
    }

    public static int computeEmptyProcessLimit(int totalProcessLimit) {
        return totalProcessLimit / 2;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean selfChange, Uri uri) {
        if (uri == null) {
            return;
        }
        if (ACTIVITY_MANAGER_CONSTANTS_URI.equals(uri)) {
            updateConstants();
            return;
        }
        if (ACTIVITY_STARTS_LOGGING_ENABLED_URI.equals(uri)) {
            updateActivityStartsLoggingEnabled();
        } else if (FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI.equals(uri)) {
            updateForegroundServiceStartsLoggingEnabled();
        } else if (ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI.equals(uri)) {
            updateEnableAutomaticSystemServerHeapDumps();
        }
    }

    private void updateConstants() {
        String setting = Settings.Global.getString(this.mResolver, "activity_manager_constants");
        synchronized (this.mService) {
            try {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    this.mParser.setString(setting);
                } catch (IllegalArgumentException e) {
                    Slog.e(TAG, "Bad activity manager config settings", e);
                }
                this.BACKGROUND_SETTLE_TIME = this.mParser.getLong(KEY_BACKGROUND_SETTLE_TIME, 60000L);
                this.FGSERVICE_MIN_SHOWN_TIME = this.mParser.getLong(KEY_FGSERVICE_MIN_SHOWN_TIME, DEFAULT_FGSERVICE_MIN_SHOWN_TIME);
                this.FGSERVICE_MIN_REPORT_TIME = this.mParser.getLong(KEY_FGSERVICE_MIN_REPORT_TIME, 3000L);
                this.FGSERVICE_SCREEN_ON_BEFORE_TIME = this.mParser.getLong(KEY_FGSERVICE_SCREEN_ON_BEFORE_TIME, 1000L);
                this.FGSERVICE_SCREEN_ON_AFTER_TIME = this.mParser.getLong(KEY_FGSERVICE_SCREEN_ON_AFTER_TIME, 5000L);
                this.CONTENT_PROVIDER_RETAIN_TIME = this.mParser.getLong(KEY_CONTENT_PROVIDER_RETAIN_TIME, DEFAULT_CONTENT_PROVIDER_RETAIN_TIME);
                this.GC_TIMEOUT = this.mParser.getLong(KEY_GC_TIMEOUT, 5000L);
                this.GC_MIN_INTERVAL = this.mParser.getLong(KEY_GC_MIN_INTERVAL, 60000L);
                this.FULL_PSS_MIN_INTERVAL = this.mParser.getLong(KEY_FULL_PSS_MIN_INTERVAL, DEFAULT_FULL_PSS_MIN_INTERVAL);
                this.FULL_PSS_LOWERED_INTERVAL = this.mParser.getLong(KEY_FULL_PSS_LOWERED_INTERVAL, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
                this.POWER_CHECK_INTERVAL = this.mParser.getLong(KEY_POWER_CHECK_INTERVAL, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
                this.POWER_CHECK_MAX_CPU_1 = this.mParser.getInt(KEY_POWER_CHECK_MAX_CPU_1, 25);
                this.POWER_CHECK_MAX_CPU_2 = this.mParser.getInt(KEY_POWER_CHECK_MAX_CPU_2, 25);
                this.POWER_CHECK_MAX_CPU_3 = this.mParser.getInt(KEY_POWER_CHECK_MAX_CPU_3, 10);
                this.POWER_CHECK_MAX_CPU_4 = this.mParser.getInt(KEY_POWER_CHECK_MAX_CPU_4, 2);
                this.SERVICE_USAGE_INTERACTION_TIME = this.mParser.getLong(KEY_SERVICE_USAGE_INTERACTION_TIME, 1800000L);
                this.USAGE_STATS_INTERACTION_INTERVAL = this.mParser.getLong(KEY_USAGE_STATS_INTERACTION_INTERVAL, 7200000L);
                this.SERVICE_RESTART_DURATION = this.mParser.getLong(KEY_SERVICE_RESTART_DURATION, 1000L);
                this.SERVICE_RESET_RUN_DURATION = this.mParser.getLong(KEY_SERVICE_RESET_RUN_DURATION, 60000L);
                this.SERVICE_RESTART_DURATION_FACTOR = this.mParser.getInt(KEY_SERVICE_RESTART_DURATION_FACTOR, 4);
                this.SERVICE_MIN_RESTART_TIME_BETWEEN = this.mParser.getLong(KEY_SERVICE_MIN_RESTART_TIME_BETWEEN, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
                this.MAX_SERVICE_INACTIVITY = this.mParser.getLong(KEY_MAX_SERVICE_INACTIVITY, 1800000L);
                this.BG_START_TIMEOUT = this.mParser.getLong(KEY_BG_START_TIMEOUT, 15000L);
                this.SERVICE_BG_ACTIVITY_START_TIMEOUT = this.mParser.getLong(KEY_SERVICE_BG_ACTIVITY_START_TIMEOUT, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
                this.BOUND_SERVICE_CRASH_RESTART_DURATION = this.mParser.getLong(KEY_BOUND_SERVICE_CRASH_RESTART_DURATION, 1800000L);
                this.BOUND_SERVICE_MAX_CRASH_RETRY = this.mParser.getInt(KEY_BOUND_SERVICE_CRASH_MAX_RETRY, 16);
                this.FLAG_PROCESS_START_ASYNC = this.mParser.getBoolean(KEY_PROCESS_START_ASYNC, true);
                this.MEMORY_INFO_THROTTLE_TIME = this.mParser.getLong(KEY_MEMORY_INFO_THROTTLE_TIME, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
                this.TOP_TO_FGS_GRACE_DURATION = this.mParser.getDurationMillis(KEY_TOP_TO_FGS_GRACE_DURATION, 15000L);
                this.PENDINGINTENT_WARNING_THRESHOLD = this.mParser.getInt(KEY_PENDINGINTENT_WARNING_THRESHOLD, DEFAULT_PENDINGINTENT_WARNING_THRESHOLD);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    private void updateActivityStartsLoggingEnabled() {
        this.mFlagActivityStartsLoggingEnabled = Settings.Global.getInt(this.mResolver, "activity_starts_logging_enabled", 1) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackgroundActivityStarts() {
        this.mFlagBackgroundActivityStartsEnabled = DeviceConfig.getBoolean("activity_manager", KEY_DEFAULT_BACKGROUND_ACTIVITY_STARTS_ENABLED, false);
    }

    private void updateForegroundServiceStartsLoggingEnabled() {
        this.mFlagForegroundServiceStartsLoggingEnabled = Settings.Global.getInt(this.mResolver, "foreground_service_starts_logging_enabled", 1) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackgroundFgsStartsRestriction() {
        this.mFlagBackgroundFgsStartRestrictionEnabled = DeviceConfig.getBoolean("activity_manager", KEY_DEFAULT_BACKGROUND_FGS_STARTS_RESTRICTION_ENABLED, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOomAdjUpdatePolicy() {
        this.OOMADJ_UPDATE_QUICK = DeviceConfig.getInt("activity_manager", KEY_OOMADJ_UPDATE_POLICY, 1) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateForceRestrictedBackgroundCheck() {
        this.FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS = DeviceConfig.getBoolean("activity_manager", KEY_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateImperceptibleKillExemptions() {
        this.IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES.clear();
        this.IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES.addAll(this.mDefaultImperceptibleKillExemptPackages);
        String val = DeviceConfig.getString("activity_manager", KEY_IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES, (String) null);
        if (!TextUtils.isEmpty(val)) {
            this.IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES.addAll(Arrays.asList(val.split(",")));
        }
        this.IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES.clear();
        this.IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES.addAll(this.mDefaultImperceptibleKillExemptProcStates);
        String val2 = DeviceConfig.getString("activity_manager", KEY_IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES, (String) null);
        if (!TextUtils.isEmpty(val2)) {
            Arrays.asList(val2.split(",")).stream().forEach(new Consumer() { // from class: com.android.server.am.-$$Lambda$ActivityManagerConstants$PMWuxGp7r583rXDgas6HMH5Lce8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$updateImperceptibleKillExemptions$0$ActivityManagerConstants((String) obj);
                }
            });
        }
    }

    public /* synthetic */ void lambda$updateImperceptibleKillExemptions$0$ActivityManagerConstants(String v) {
        try {
            this.IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES.add(Integer.valueOf(Integer.parseInt(v)));
        } catch (NumberFormatException e) {
        }
    }

    private void updateEnableAutomaticSystemServerHeapDumps() {
        if (!this.mSystemServerAutomaticHeapDumpEnabled) {
            Slog.wtf(TAG, "updateEnableAutomaticSystemServerHeapDumps called when leak detection disabled");
            return;
        }
        boolean enabled = Settings.Global.getInt(this.mResolver, "enable_automatic_system_server_heap_dumps", 1) == 1;
        long threshold = enabled ? this.mSystemServerAutomaticHeapDumpPssThresholdBytes : 0L;
        this.mService.setDumpHeapDebugLimit(null, 0, threshold, this.mSystemServerAutomaticHeapDumpPackageName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMaxCachedProcesses() {
        int i;
        String maxCachedProcessesFlag = DeviceConfig.getProperty("activity_manager", KEY_MAX_CACHED_PROCESSES);
        try {
            if (this.mOverrideMaxCachedProcesses < 0) {
                i = TextUtils.isEmpty(maxCachedProcessesFlag) ? 32 : Integer.parseInt(maxCachedProcessesFlag);
            } else {
                i = this.mOverrideMaxCachedProcesses;
            }
            this.CUR_MAX_CACHED_PROCESSES = i;
        } catch (NumberFormatException e) {
            Slog.e(TAG, "Unable to parse flag for max_cached_processes: " + maxCachedProcessesFlag, e);
            this.CUR_MAX_CACHED_PROCESSES = 32;
        }
        this.CUR_MAX_EMPTY_PROCESSES = computeEmptyProcessLimit(this.CUR_MAX_CACHED_PROCESSES);
        int rawMaxEmptyProcesses = computeEmptyProcessLimit(this.MAX_CACHED_PROCESSES);
        this.CUR_TRIM_EMPTY_PROCESSES = rawMaxEmptyProcesses / 2;
        this.CUR_TRIM_CACHED_PROCESSES = (this.MAX_CACHED_PROCESSES - rawMaxEmptyProcesses) / 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMinAssocLogDuration() {
        MIN_ASSOC_LOG_DURATION = DeviceConfig.getLong("activity_manager", KEY_MIN_ASSOC_LOG_DURATION, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFgsStartForegroundTimeout() {
        this.mFgsStartForegroundTimeoutMs = DeviceConfig.getLong("activity_manager", KEY_FGS_START_FOREGROUND_TIMEOUT, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
    }

    void dump(PrintWriter pw) {
        pw.println("ACTIVITY MANAGER SETTINGS (dumpsys activity settings) activity_manager_constants:");
        pw.print("  ");
        pw.print(KEY_MAX_CACHED_PROCESSES);
        pw.print("=");
        pw.println(this.MAX_CACHED_PROCESSES);
        pw.print("  ");
        pw.print(KEY_BACKGROUND_SETTLE_TIME);
        pw.print("=");
        pw.println(this.BACKGROUND_SETTLE_TIME);
        pw.print("  ");
        pw.print(KEY_FGSERVICE_MIN_SHOWN_TIME);
        pw.print("=");
        pw.println(this.FGSERVICE_MIN_SHOWN_TIME);
        pw.print("  ");
        pw.print(KEY_FGSERVICE_MIN_REPORT_TIME);
        pw.print("=");
        pw.println(this.FGSERVICE_MIN_REPORT_TIME);
        pw.print("  ");
        pw.print(KEY_FGSERVICE_SCREEN_ON_BEFORE_TIME);
        pw.print("=");
        pw.println(this.FGSERVICE_SCREEN_ON_BEFORE_TIME);
        pw.print("  ");
        pw.print(KEY_FGSERVICE_SCREEN_ON_AFTER_TIME);
        pw.print("=");
        pw.println(this.FGSERVICE_SCREEN_ON_AFTER_TIME);
        pw.print("  ");
        pw.print(KEY_CONTENT_PROVIDER_RETAIN_TIME);
        pw.print("=");
        pw.println(this.CONTENT_PROVIDER_RETAIN_TIME);
        pw.print("  ");
        pw.print(KEY_GC_TIMEOUT);
        pw.print("=");
        pw.println(this.GC_TIMEOUT);
        pw.print("  ");
        pw.print(KEY_GC_MIN_INTERVAL);
        pw.print("=");
        pw.println(this.GC_MIN_INTERVAL);
        pw.print("  ");
        pw.print(KEY_FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS);
        pw.print("=");
        pw.println(this.FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS);
        pw.print("  ");
        pw.print(KEY_FULL_PSS_MIN_INTERVAL);
        pw.print("=");
        pw.println(this.FULL_PSS_MIN_INTERVAL);
        pw.print("  ");
        pw.print(KEY_FULL_PSS_LOWERED_INTERVAL);
        pw.print("=");
        pw.println(this.FULL_PSS_LOWERED_INTERVAL);
        pw.print("  ");
        pw.print(KEY_POWER_CHECK_INTERVAL);
        pw.print("=");
        pw.println(this.POWER_CHECK_INTERVAL);
        pw.print("  ");
        pw.print(KEY_POWER_CHECK_MAX_CPU_1);
        pw.print("=");
        pw.println(this.POWER_CHECK_MAX_CPU_1);
        pw.print("  ");
        pw.print(KEY_POWER_CHECK_MAX_CPU_2);
        pw.print("=");
        pw.println(this.POWER_CHECK_MAX_CPU_2);
        pw.print("  ");
        pw.print(KEY_POWER_CHECK_MAX_CPU_3);
        pw.print("=");
        pw.println(this.POWER_CHECK_MAX_CPU_3);
        pw.print("  ");
        pw.print(KEY_POWER_CHECK_MAX_CPU_4);
        pw.print("=");
        pw.println(this.POWER_CHECK_MAX_CPU_4);
        pw.print("  ");
        pw.print(KEY_SERVICE_USAGE_INTERACTION_TIME);
        pw.print("=");
        pw.println(this.SERVICE_USAGE_INTERACTION_TIME);
        pw.print("  ");
        pw.print(KEY_USAGE_STATS_INTERACTION_INTERVAL);
        pw.print("=");
        pw.println(this.USAGE_STATS_INTERACTION_INTERVAL);
        pw.print("  ");
        pw.print(KEY_SERVICE_RESTART_DURATION);
        pw.print("=");
        pw.println(this.SERVICE_RESTART_DURATION);
        pw.print("  ");
        pw.print(KEY_SERVICE_RESET_RUN_DURATION);
        pw.print("=");
        pw.println(this.SERVICE_RESET_RUN_DURATION);
        pw.print("  ");
        pw.print(KEY_SERVICE_RESTART_DURATION_FACTOR);
        pw.print("=");
        pw.println(this.SERVICE_RESTART_DURATION_FACTOR);
        pw.print("  ");
        pw.print(KEY_SERVICE_MIN_RESTART_TIME_BETWEEN);
        pw.print("=");
        pw.println(this.SERVICE_MIN_RESTART_TIME_BETWEEN);
        pw.print("  ");
        pw.print(KEY_MAX_SERVICE_INACTIVITY);
        pw.print("=");
        pw.println(this.MAX_SERVICE_INACTIVITY);
        pw.print("  ");
        pw.print(KEY_BG_START_TIMEOUT);
        pw.print("=");
        pw.println(this.BG_START_TIMEOUT);
        pw.print("  ");
        pw.print(KEY_SERVICE_BG_ACTIVITY_START_TIMEOUT);
        pw.print("=");
        pw.println(this.SERVICE_BG_ACTIVITY_START_TIMEOUT);
        pw.print("  ");
        pw.print(KEY_BOUND_SERVICE_CRASH_RESTART_DURATION);
        pw.print("=");
        pw.println(this.BOUND_SERVICE_CRASH_RESTART_DURATION);
        pw.print("  ");
        pw.print(KEY_BOUND_SERVICE_CRASH_MAX_RETRY);
        pw.print("=");
        pw.println(this.BOUND_SERVICE_MAX_CRASH_RETRY);
        pw.print("  ");
        pw.print(KEY_PROCESS_START_ASYNC);
        pw.print("=");
        pw.println(this.FLAG_PROCESS_START_ASYNC);
        pw.print("  ");
        pw.print(KEY_MEMORY_INFO_THROTTLE_TIME);
        pw.print("=");
        pw.println(this.MEMORY_INFO_THROTTLE_TIME);
        pw.print("  ");
        pw.print(KEY_TOP_TO_FGS_GRACE_DURATION);
        pw.print("=");
        pw.println(this.TOP_TO_FGS_GRACE_DURATION);
        pw.print("  ");
        pw.print(KEY_IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES);
        pw.print("=");
        pw.println(Arrays.toString(this.IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES.toArray()));
        pw.print("  ");
        pw.print(KEY_IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES);
        pw.print("=");
        pw.println(Arrays.toString(this.IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES.toArray()));
        pw.print("  ");
        pw.print(KEY_MIN_ASSOC_LOG_DURATION);
        pw.print("=");
        pw.println(MIN_ASSOC_LOG_DURATION);
        pw.print("  ");
        pw.print(KEY_FGS_START_FOREGROUND_TIMEOUT);
        pw.print("=");
        pw.println(this.mFgsStartForegroundTimeoutMs);
        pw.println();
        if (this.mOverrideMaxCachedProcesses >= 0) {
            pw.print("  mOverrideMaxCachedProcesses=");
            pw.println(this.mOverrideMaxCachedProcesses);
        }
        pw.print("  CUR_MAX_CACHED_PROCESSES=");
        pw.println(this.CUR_MAX_CACHED_PROCESSES);
        pw.print("  CUR_MAX_EMPTY_PROCESSES=");
        pw.println(this.CUR_MAX_EMPTY_PROCESSES);
        pw.print("  CUR_TRIM_EMPTY_PROCESSES=");
        pw.println(this.CUR_TRIM_EMPTY_PROCESSES);
        pw.print("  CUR_TRIM_CACHED_PROCESSES=");
        pw.println(this.CUR_TRIM_CACHED_PROCESSES);
        pw.print("  OOMADJ_UPDATE_QUICK=");
        pw.println(this.OOMADJ_UPDATE_QUICK);
        pw.println("  MegaQuickBootEnable =" + this.mMegaQuickBootEnable);
        pw.println("  EarlyPersistentAppList:");
        for (String earlyPersistentApp : this.mEarlyPersistentAppList) {
            pw.println("   packageName:" + earlyPersistentApp);
        }
        pw.println(" mEarlyAppList :");
        for (String earlyApp : this.mEarlyAppList) {
            pw.println("  PackageName =" + earlyApp);
        }
    }
}
