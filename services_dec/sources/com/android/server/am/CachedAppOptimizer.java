package com.android.server.am;

import android.app.ActivityThread;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.EventLog;
import android.util.Slog;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.ServiceThread;
import com.android.server.job.controllers.JobStatus;
import com.android.server.usb.descriptors.UsbDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class CachedAppOptimizer {
    static final int ASYNC_RECEIVED_WHILE_FROZEN = 2;
    private static final String COMPACT_ACTION_ANON = "anon";
    private static final int COMPACT_ACTION_ANON_FLAG = 2;
    private static final String COMPACT_ACTION_FILE = "file";
    private static final int COMPACT_ACTION_FILE_FLAG = 1;
    private static final String COMPACT_ACTION_FULL = "all";
    private static final int COMPACT_ACTION_FULL_FLAG = 3;
    private static final String COMPACT_ACTION_NONE = "";
    private static final int COMPACT_ACTION_NONE_FLAG = 4;
    static final int COMPACT_PROCESS_BFGS = 4;
    static final int COMPACT_PROCESS_FULL = 2;
    static final int COMPACT_PROCESS_MSG = 1;
    static final int COMPACT_PROCESS_PERSISTENT = 3;
    static final int COMPACT_PROCESS_SOME = 1;
    static final int COMPACT_SYSTEM_MSG = 2;
    static final int DEFAULT_COMPACT_ACTION_1 = 1;
    static final int DEFAULT_COMPACT_ACTION_2 = 3;
    static final long DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB = 8000;
    static final long DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB = 12000;
    static final long DEFAULT_COMPACT_THROTTLE_1 = 5000;
    static final long DEFAULT_COMPACT_THROTTLE_2 = 10000;
    static final long DEFAULT_COMPACT_THROTTLE_3 = 500;
    static final long DEFAULT_COMPACT_THROTTLE_4 = 10000;
    static final long DEFAULT_COMPACT_THROTTLE_5 = 600000;
    static final long DEFAULT_COMPACT_THROTTLE_6 = 600000;
    static final float DEFAULT_STATSD_SAMPLE_RATE = 0.1f;
    static final int DO_FREEZE = 1;
    static final long FREEZE_TIMEOUT_MS = 600000;
    static final String KEY_COMPACT_ACTION_1 = "compact_action_1";
    static final String KEY_COMPACT_ACTION_2 = "compact_action_2";
    static final String KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB = "compact_full_delta_rss_throttle_kb";
    static final String KEY_COMPACT_FULL_RSS_THROTTLE_KB = "compact_full_rss_throttle_kb";
    static final String KEY_COMPACT_PROC_STATE_THROTTLE = "compact_proc_state_throttle";
    static final String KEY_COMPACT_STATSD_SAMPLE_RATE = "compact_statsd_sample_rate";
    static final String KEY_COMPACT_THROTTLE_1 = "compact_throttle_1";
    static final String KEY_COMPACT_THROTTLE_2 = "compact_throttle_2";
    static final String KEY_COMPACT_THROTTLE_3 = "compact_throttle_3";
    static final String KEY_COMPACT_THROTTLE_4 = "compact_throttle_4";
    static final String KEY_COMPACT_THROTTLE_5 = "compact_throttle_5";
    static final String KEY_COMPACT_THROTTLE_6 = "compact_throttle_6";
    static final String KEY_FREEZER_STATSD_SAMPLE_RATE = "freeze_statsd_sample_rate";
    static final String KEY_USE_COMPACTION = "use_compaction";
    static final String KEY_USE_FREEZER = "use_freezer";
    static final int REPORT_UNFREEZE = 2;
    static final int REPORT_UNFREEZE_MSG = 4;
    static final int SET_FROZEN_PROCESS_MSG = 3;
    static final int SYNC_RECEIVED_WHILE_FROZEN = 1;
    private final ActivityManagerService mAm;
    private int mBfgsCompactionCount;
    final ServiceThread mCachedAppOptimizerThread;
    volatile String mCompactActionFull;
    volatile String mCompactActionSome;
    volatile float mCompactStatsdSampleRate;
    volatile long mCompactThrottleBFGS;
    volatile long mCompactThrottleFullFull;
    volatile long mCompactThrottleFullSome;
    volatile long mCompactThrottlePersistent;
    volatile long mCompactThrottleSomeFull;
    volatile long mCompactThrottleSomeSome;
    Handler mCompactionHandler;
    private Handler mFreezeHandler;
    private int mFreezerDisableCount;
    volatile float mFreezerStatsdSampleRate;
    volatile long mFullAnonRssThrottleKb;
    private int mFullCompactionCount;
    volatile long mFullDeltaRssThrottleKb;
    LinkedHashMap<Integer, LastCompactionStats> mLastCompactionStats;
    private final DeviceConfig.OnPropertiesChangedListener mOnFlagsChangedListener;
    private final ArrayList<ProcessRecord> mPendingCompactionProcesses;
    private int mPersistentCompactionCount;
    private final Object mPhenotypeFlagLock;
    final Set<Integer> mProcStateThrottle;
    private final ProcessDependencies mProcessDependencies;
    private final Random mRandom;
    private int mSomeCompactionCount;
    private PropertyChangedCallbackForTest mTestCallback;
    private volatile boolean mUseCompaction;
    private volatile boolean mUseFreezer;
    static final Boolean DEFAULT_USE_COMPACTION = false;
    static final Boolean DEFAULT_USE_FREEZER = false;
    static final String DEFAULT_COMPACT_PROC_STATE_THROTTLE = String.valueOf(11);

    interface ProcessDependencies {
        long[] getRss(int i);

        void performCompaction(String str, int i) throws IOException;
    }

    interface PropertyChangedCallbackForTest {
        void onPropertyChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void compactSystem();

    private static native void enableFreezerInternal(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void freezeBinder(int i, boolean z);

    private static native int getBinderFreezeInfo(int i);

    static /* synthetic */ int access$1508(CachedAppOptimizer x0) {
        int i = x0.mSomeCompactionCount;
        x0.mSomeCompactionCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$1608(CachedAppOptimizer x0) {
        int i = x0.mFullCompactionCount;
        x0.mFullCompactionCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$1708(CachedAppOptimizer x0) {
        int i = x0.mPersistentCompactionCount;
        x0.mPersistentCompactionCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$1808(CachedAppOptimizer x0) {
        int i = x0.mBfgsCompactionCount;
        x0.mBfgsCompactionCount = i + 1;
        return i;
    }

    public CachedAppOptimizer(ActivityManagerService am) {
        this(am, null, new DefaultProcessDependencies());
    }

    CachedAppOptimizer(ActivityManagerService am, PropertyChangedCallbackForTest callback, ProcessDependencies processDependencies) {
        this.mPendingCompactionProcesses = new ArrayList<>();
        this.mOnFlagsChangedListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.am.CachedAppOptimizer.1
            public void onPropertiesChanged(DeviceConfig.Properties properties) {
                synchronized (CachedAppOptimizer.this.mPhenotypeFlagLock) {
                    for (String name : properties.getKeyset()) {
                        if (CachedAppOptimizer.KEY_USE_COMPACTION.equals(name)) {
                            CachedAppOptimizer.this.updateUseCompaction();
                        } else if (CachedAppOptimizer.KEY_COMPACT_ACTION_1.equals(name) || CachedAppOptimizer.KEY_COMPACT_ACTION_2.equals(name)) {
                            CachedAppOptimizer.this.updateCompactionActions();
                        } else if (CachedAppOptimizer.KEY_COMPACT_THROTTLE_1.equals(name) || CachedAppOptimizer.KEY_COMPACT_THROTTLE_2.equals(name) || CachedAppOptimizer.KEY_COMPACT_THROTTLE_3.equals(name) || CachedAppOptimizer.KEY_COMPACT_THROTTLE_4.equals(name)) {
                            CachedAppOptimizer.this.updateCompactionThrottles();
                        } else if (CachedAppOptimizer.KEY_COMPACT_STATSD_SAMPLE_RATE.equals(name)) {
                            CachedAppOptimizer.this.updateCompactStatsdSampleRate();
                        } else if (CachedAppOptimizer.KEY_FREEZER_STATSD_SAMPLE_RATE.equals(name)) {
                            CachedAppOptimizer.this.updateFreezerStatsdSampleRate();
                        } else if (CachedAppOptimizer.KEY_COMPACT_FULL_RSS_THROTTLE_KB.equals(name)) {
                            CachedAppOptimizer.this.updateFullRssThrottle();
                        } else if (CachedAppOptimizer.KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB.equals(name)) {
                            CachedAppOptimizer.this.updateFullDeltaRssThrottle();
                        } else if (CachedAppOptimizer.KEY_COMPACT_PROC_STATE_THROTTLE.equals(name)) {
                            CachedAppOptimizer.this.updateProcStateThrottle();
                        }
                    }
                }
                if (CachedAppOptimizer.this.mTestCallback != null) {
                    CachedAppOptimizer.this.mTestCallback.onPropertyChanged();
                }
            }
        };
        this.mPhenotypeFlagLock = new Object();
        this.mCompactActionSome = compactActionIntToString(1);
        this.mCompactActionFull = compactActionIntToString(3);
        this.mCompactThrottleSomeSome = DEFAULT_COMPACT_THROTTLE_1;
        this.mCompactThrottleSomeFull = JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
        this.mCompactThrottleFullSome = 500L;
        this.mCompactThrottleFullFull = JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
        this.mCompactThrottleBFGS = 600000L;
        this.mCompactThrottlePersistent = 600000L;
        this.mUseCompaction = DEFAULT_USE_COMPACTION.booleanValue();
        this.mUseFreezer = DEFAULT_USE_FREEZER.booleanValue();
        this.mFreezerDisableCount = 1;
        this.mRandom = new Random();
        this.mCompactStatsdSampleRate = DEFAULT_STATSD_SAMPLE_RATE;
        this.mFreezerStatsdSampleRate = DEFAULT_STATSD_SAMPLE_RATE;
        this.mFullAnonRssThrottleKb = DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB;
        this.mFullDeltaRssThrottleKb = DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB;
        this.mLastCompactionStats = new LinkedHashMap<Integer, LastCompactionStats>() { // from class: com.android.server.am.CachedAppOptimizer.2
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<Integer, LastCompactionStats> entry) {
                return size() > 100;
            }
        };
        this.mAm = am;
        this.mCachedAppOptimizerThread = new ServiceThread("CachedAppOptimizerThread", 2, true);
        this.mProcStateThrottle = new HashSet();
        this.mProcessDependencies = processDependencies;
        this.mTestCallback = callback;
    }

    public void init() {
        DeviceConfig.addOnPropertiesChangedListener("activity_manager", ActivityThread.currentApplication().getMainExecutor(), this.mOnFlagsChangedListener);
        synchronized (this.mPhenotypeFlagLock) {
            updateUseCompaction();
            updateCompactionActions();
            updateCompactionThrottles();
            updateCompactStatsdSampleRate();
            updateFreezerStatsdSampleRate();
            updateFullRssThrottle();
            updateFullDeltaRssThrottle();
            updateProcStateThrottle();
            updateUseFreezer();
        }
    }

    public boolean useCompaction() {
        boolean z;
        synchronized (this.mPhenotypeFlagLock) {
            z = this.mUseCompaction;
        }
        return z;
    }

    public boolean useFreezer() {
        boolean z;
        synchronized (this.mPhenotypeFlagLock) {
            z = this.mUseFreezer;
        }
        return z;
    }

    void dump(PrintWriter pw) {
        pw.println("CachedAppOptimizer settings");
        synchronized (this.mPhenotypeFlagLock) {
            pw.println("  use_compaction=" + this.mUseCompaction);
            pw.println("  compact_action_1=" + this.mCompactActionSome);
            pw.println("  compact_action_2=" + this.mCompactActionFull);
            pw.println("  compact_throttle_1=" + this.mCompactThrottleSomeSome);
            pw.println("  compact_throttle_2=" + this.mCompactThrottleSomeFull);
            pw.println("  compact_throttle_3=" + this.mCompactThrottleFullSome);
            pw.println("  compact_throttle_4=" + this.mCompactThrottleFullFull);
            pw.println("  compact_throttle_5=" + this.mCompactThrottleBFGS);
            pw.println("  compact_throttle_6=" + this.mCompactThrottlePersistent);
            pw.println("  compact_statsd_sample_rate=" + this.mCompactStatsdSampleRate);
            pw.println("  compact_full_rss_throttle_kb=" + this.mFullAnonRssThrottleKb);
            pw.println("  compact_full_delta_rss_throttle_kb=" + this.mFullDeltaRssThrottleKb);
            pw.println("  compact_proc_state_throttle=" + Arrays.toString(this.mProcStateThrottle.toArray(new Integer[0])));
            pw.println("  " + this.mSomeCompactionCount + " some, " + this.mFullCompactionCount + " full, " + this.mPersistentCompactionCount + " persistent, " + this.mBfgsCompactionCount + " BFGS compactions.");
            StringBuilder sb = new StringBuilder();
            sb.append("  Tracking last compaction stats for ");
            sb.append(this.mLastCompactionStats.size());
            sb.append(" processes.");
            pw.println(sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" use_freezer=");
            sb2.append(this.mUseFreezer);
            pw.println(sb2.toString());
            pw.println("  freeze_statsd_sample_rate=" + this.mFreezerStatsdSampleRate);
        }
    }

    void compactAppSome(ProcessRecord app) {
        synchronized (this) {
            app.reqCompactAction = 1;
            if (!app.mPendingCompact) {
                app.mPendingCompact = true;
                this.mPendingCompactionProcesses.add(app);
                this.mCompactionHandler.sendMessage(this.mCompactionHandler.obtainMessage(1, app.setAdj, app.setProcState));
            }
        }
    }

    void compactAppFull(ProcessRecord app) {
        synchronized (this) {
            app.reqCompactAction = 2;
            if (!app.mPendingCompact) {
                app.mPendingCompact = true;
                this.mPendingCompactionProcesses.add(app);
                this.mCompactionHandler.sendMessage(this.mCompactionHandler.obtainMessage(1, app.setAdj, app.setProcState));
            }
        }
    }

    void compactAppPersistent(ProcessRecord app) {
        synchronized (this) {
            app.reqCompactAction = 3;
            if (!app.mPendingCompact) {
                app.mPendingCompact = true;
                this.mPendingCompactionProcesses.add(app);
                this.mCompactionHandler.sendMessage(this.mCompactionHandler.obtainMessage(1, app.curAdj, app.setProcState));
            }
        }
    }

    boolean shouldCompactPersistent(ProcessRecord app, long now) {
        boolean z;
        synchronized (this) {
            z = app.lastCompactTime == 0 || now - app.lastCompactTime > this.mCompactThrottlePersistent;
        }
        return z;
    }

    void compactAppBfgs(ProcessRecord app) {
        synchronized (this) {
            app.reqCompactAction = 4;
            if (!app.mPendingCompact) {
                app.mPendingCompact = true;
                this.mPendingCompactionProcesses.add(app);
                this.mCompactionHandler.sendMessage(this.mCompactionHandler.obtainMessage(1, app.curAdj, app.setProcState));
            }
        }
    }

    boolean shouldCompactBFGS(ProcessRecord app, long now) {
        boolean z;
        synchronized (this) {
            z = app.lastCompactTime == 0 || now - app.lastCompactTime > this.mCompactThrottleBFGS;
        }
        return z;
    }

    void compactAllSystem() {
        if (this.mUseCompaction) {
            Handler handler = this.mCompactionHandler;
            handler.sendMessage(handler.obtainMessage(2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUseCompaction() {
        this.mUseCompaction = DeviceConfig.getBoolean("activity_manager", KEY_USE_COMPACTION, DEFAULT_USE_COMPACTION.booleanValue());
        if (this.mUseCompaction && this.mCompactionHandler == null) {
            if (!this.mCachedAppOptimizerThread.isAlive()) {
                this.mCachedAppOptimizerThread.start();
            }
            this.mCompactionHandler = new MemCompactionHandler();
            Process.setThreadGroupAndCpuset(this.mCachedAppOptimizerThread.getThreadId(), 2);
        }
    }

    public synchronized boolean enableFreezer(boolean enable) {
        if (!this.mUseFreezer) {
            return false;
        }
        if (enable) {
            int i = this.mFreezerDisableCount - 1;
            this.mFreezerDisableCount = i;
            if (i > 0) {
                return true;
            }
            if (i < 0) {
                Slog.e("ActivityManager", "unbalanced call to enableFreezer, ignoring");
                this.mFreezerDisableCount = 0;
                return false;
            }
        } else {
            int i2 = this.mFreezerDisableCount + 1;
            this.mFreezerDisableCount = i2;
            if (i2 > 1) {
                return true;
            }
        }
        try {
            enableFreezerInternal(enable);
            return true;
        } catch (RuntimeException e) {
            if (enable) {
                this.mFreezerDisableCount = 0;
            } else {
                this.mFreezerDisableCount = 1;
            }
            Slog.e("ActivityManager", "Exception handling freezer state (enable: " + enable + "): " + e.toString());
            return false;
        }
    }

    public static boolean isFreezerSupported() {
        boolean supported = false;
        FileReader fr = null;
        try {
            fr = new FileReader("/sys/fs/cgroup/freezer/cgroup.freeze");
            char state = (char) fr.read();
            if (state != '1' && state != '0') {
                Slog.e("ActivityManager", "unexpected value in cgroup.freeze");
            } else {
                supported = true;
            }
        } catch (FileNotFoundException e) {
            Slog.d("ActivityManager", "cgroup.freeze not present");
        } catch (Exception e2) {
            Slog.d("ActivityManager", "unable to read cgroup.freeze: " + e2.toString());
        }
        if (fr != null) {
            try {
                fr.close();
            } catch (IOException e3) {
                Slog.e("ActivityManager", "Exception closing freezer.killable: " + e3.toString());
            }
        }
        return supported;
    }

    private void updateUseFreezer() {
        String configOverride = Settings.Global.getString(this.mAm.mContext.getContentResolver(), "cached_apps_freezer");
        if ("disabled".equals(configOverride)) {
            this.mUseFreezer = false;
        } else if ("enabled".equals(configOverride) || DeviceConfig.getBoolean("activity_manager_native_boot", KEY_USE_FREEZER, DEFAULT_USE_FREEZER.booleanValue())) {
            this.mUseFreezer = isFreezerSupported();
        }
        if (this.mUseFreezer && this.mFreezeHandler == null) {
            Slog.d("ActivityManager", "Freezer enabled");
            enableFreezer(true);
            if (!this.mCachedAppOptimizerThread.isAlive()) {
                this.mCachedAppOptimizerThread.start();
            }
            this.mFreezeHandler = new FreezeHandler();
            Process.setThreadGroupAndCpuset(this.mCachedAppOptimizerThread.getThreadId(), 2);
            return;
        }
        enableFreezer(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCompactionActions() {
        int compactAction1 = DeviceConfig.getInt("activity_manager", KEY_COMPACT_ACTION_1, 1);
        int compactAction2 = DeviceConfig.getInt("activity_manager", KEY_COMPACT_ACTION_2, 3);
        this.mCompactActionSome = compactActionIntToString(compactAction1);
        this.mCompactActionFull = compactActionIntToString(compactAction2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCompactionThrottles() {
        boolean useThrottleDefaults = false;
        String throttleSomeSomeFlag = DeviceConfig.getProperty("activity_manager", KEY_COMPACT_THROTTLE_1);
        String throttleSomeFullFlag = DeviceConfig.getProperty("activity_manager", KEY_COMPACT_THROTTLE_2);
        String throttleFullSomeFlag = DeviceConfig.getProperty("activity_manager", KEY_COMPACT_THROTTLE_3);
        String throttleFullFullFlag = DeviceConfig.getProperty("activity_manager", KEY_COMPACT_THROTTLE_4);
        String throttleBFGSFlag = DeviceConfig.getProperty("activity_manager", KEY_COMPACT_THROTTLE_5);
        String throttlePersistentFlag = DeviceConfig.getProperty("activity_manager", KEY_COMPACT_THROTTLE_6);
        if (TextUtils.isEmpty(throttleSomeSomeFlag) || TextUtils.isEmpty(throttleSomeFullFlag) || TextUtils.isEmpty(throttleFullSomeFlag) || TextUtils.isEmpty(throttleFullFullFlag) || TextUtils.isEmpty(throttleBFGSFlag) || TextUtils.isEmpty(throttlePersistentFlag)) {
            useThrottleDefaults = true;
        } else {
            try {
                this.mCompactThrottleSomeSome = Integer.parseInt(throttleSomeSomeFlag);
                this.mCompactThrottleSomeFull = Integer.parseInt(throttleSomeFullFlag);
                this.mCompactThrottleFullSome = Integer.parseInt(throttleFullSomeFlag);
                this.mCompactThrottleFullFull = Integer.parseInt(throttleFullFullFlag);
                this.mCompactThrottleBFGS = Integer.parseInt(throttleBFGSFlag);
                this.mCompactThrottlePersistent = Integer.parseInt(throttlePersistentFlag);
            } catch (NumberFormatException e) {
                useThrottleDefaults = true;
            }
        }
        if (useThrottleDefaults) {
            this.mCompactThrottleSomeSome = DEFAULT_COMPACT_THROTTLE_1;
            this.mCompactThrottleSomeFull = JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
            this.mCompactThrottleFullSome = 500L;
            this.mCompactThrottleFullFull = JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
            this.mCompactThrottleBFGS = 600000L;
            this.mCompactThrottlePersistent = 600000L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCompactStatsdSampleRate() {
        this.mCompactStatsdSampleRate = DeviceConfig.getFloat("activity_manager", KEY_COMPACT_STATSD_SAMPLE_RATE, DEFAULT_STATSD_SAMPLE_RATE);
        this.mCompactStatsdSampleRate = Math.min(1.0f, Math.max(0.0f, this.mCompactStatsdSampleRate));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFreezerStatsdSampleRate() {
        this.mFreezerStatsdSampleRate = DeviceConfig.getFloat("activity_manager", KEY_FREEZER_STATSD_SAMPLE_RATE, DEFAULT_STATSD_SAMPLE_RATE);
        this.mFreezerStatsdSampleRate = Math.min(1.0f, Math.max(0.0f, this.mFreezerStatsdSampleRate));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFullRssThrottle() {
        this.mFullAnonRssThrottleKb = DeviceConfig.getLong("activity_manager", KEY_COMPACT_FULL_RSS_THROTTLE_KB, DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB);
        if (this.mFullAnonRssThrottleKb < 0) {
            this.mFullAnonRssThrottleKb = DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFullDeltaRssThrottle() {
        this.mFullDeltaRssThrottleKb = DeviceConfig.getLong("activity_manager", KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB, DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB);
        if (this.mFullDeltaRssThrottleKb < 0) {
            this.mFullDeltaRssThrottleKb = DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProcStateThrottle() {
        String procStateThrottleString = DeviceConfig.getString("activity_manager", KEY_COMPACT_PROC_STATE_THROTTLE, DEFAULT_COMPACT_PROC_STATE_THROTTLE);
        if (!parseProcStateThrottle(procStateThrottleString)) {
            Slog.w("ActivityManager", "Unable to parse app compact proc state throttle \"" + procStateThrottleString + "\" falling back to default.");
            if (!parseProcStateThrottle(DEFAULT_COMPACT_PROC_STATE_THROTTLE)) {
                Slog.wtf("ActivityManager", "Unable to parse default app compact proc state throttle " + DEFAULT_COMPACT_PROC_STATE_THROTTLE);
            }
        }
    }

    private boolean parseProcStateThrottle(String procStateThrottleString) {
        String[] procStates = TextUtils.split(procStateThrottleString, ",");
        this.mProcStateThrottle.clear();
        for (String procState : procStates) {
            try {
                this.mProcStateThrottle.add(Integer.valueOf(Integer.parseInt(procState)));
            } catch (NumberFormatException e) {
                Slog.e("ActivityManager", "Failed to parse default app compaction proc state: " + procState);
                return false;
            }
        }
        return true;
    }

    static String compactActionIntToString(int action) {
        if (action == 1) {
            return COMPACT_ACTION_FILE;
        }
        if (action == 2) {
            return COMPACT_ACTION_ANON;
        }
        if (action == 3) {
            return COMPACT_ACTION_FULL;
        }
        return "";
    }

    void unfreezeTemporarily(ProcessRecord app) {
        if (this.mUseFreezer) {
            synchronized (this.mAm) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    if (app.frozen) {
                        unfreezeAppLocked(app);
                        freezeAppAsync(app);
                    }
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    void freezeAppAsync(ProcessRecord app) {
        this.mFreezeHandler.removeMessages(3, app);
        Handler handler = this.mFreezeHandler;
        handler.sendMessageDelayed(handler.obtainMessage(3, 1, 0, app), 600000L);
    }

    void unfreezeAppLocked(ProcessRecord app) {
        this.mFreezeHandler.removeMessages(3, app);
        if (!app.frozen) {
            Slog.d("ActivityManager", "Skipping unfreeze for process " + app.pid + " " + app.processName + " (not frozen)");
            return;
        }
        boolean processKilled = false;
        try {
            int freezeInfo = getBinderFreezeInfo(app.pid);
            if ((freezeInfo & 1) != 0) {
                Slog.d("ActivityManager", "pid " + app.pid + " " + app.processName + "  received sync transactions while frozen, killing");
                app.kill("Sync transaction while in frozen state", 13, 14, true);
                processKilled = true;
            }
            if ((freezeInfo & 2) != 0) {
                Slog.d("ActivityManager", "pid " + app.pid + " " + app.processName + "  received async transactions while frozen");
            }
        } catch (Exception e) {
            Slog.d("ActivityManager", "Unable to query binder frozen info for pid " + app.pid + " " + app.processName + ". Killing it. Exception: " + e);
            app.kill("Unable to query binder frozen stats", 13, 14, true);
            processKilled = true;
        }
        if (processKilled) {
            return;
        }
        long freezeTime = app.freezeUnfreezeTime;
        try {
            freezeBinder(app.pid, false);
            try {
                Process.setProcessFrozen(app.pid, app.uid, false);
                app.freezeUnfreezeTime = SystemClock.uptimeMillis();
                app.frozen = false;
            } catch (Exception e2) {
                Slog.e("ActivityManager", "Unable to unfreeze " + app.pid + " " + app.processName + ". This might cause inconsistency or UI hangs.");
            }
            if (!app.frozen) {
                Slog.d("ActivityManager", "sync unfroze " + app.pid + " " + app.processName);
                Handler handler = this.mFreezeHandler;
                handler.sendMessage(handler.obtainMessage(4, app.pid, (int) Math.min(app.freezeUnfreezeTime - freezeTime, 2147483647L), app.processName));
            }
        } catch (RuntimeException e3) {
            Slog.e("ActivityManager", "Unable to unfreeze binder for " + app.pid + " " + app.processName + ". Killing it");
            app.kill("Unable to unfreeze", 13, 14, true);
        }
    }

    static final class LastCompactionStats {
        private final long[] mRssAfterCompaction;

        LastCompactionStats(long[] rss) {
            this.mRssAfterCompaction = rss;
        }

        long[] getRssAfterCompaction() {
            return this.mRssAfterCompaction;
        }
    }

    private final class MemCompactionHandler extends Handler {
        private MemCompactionHandler() {
            super(CachedAppOptimizer.this.mCachedAppOptimizerThread.getLooper());
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0457 */
        /* JADX WARN: Unreachable blocks removed: 2, instructions: 8 */
        /* JADX WARN: Unreachable blocks removed: 2, instructions: 9 */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r60) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 1113
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.CachedAppOptimizer.MemCompactionHandler.handleMessage(android.os.Message):void");
        }
    }

    private final class FreezeHandler extends Handler {
        private FreezeHandler() {
            super(CachedAppOptimizer.this.mCachedAppOptimizerThread.getLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 3) {
                freezeProcess((ProcessRecord) msg.obj);
            } else if (i == 4) {
                int pid = msg.arg1;
                int frozenDuration = msg.arg2;
                String processName = (String) msg.obj;
                reportUnfreeze(pid, frozenDuration, processName);
            }
        }

        private void freezeProcess(ProcessRecord proc) {
            int pid = proc.pid;
            String name = proc.processName;
            try {
                if (!Process.hasFileLocks(pid)) {
                    synchronized (CachedAppOptimizer.this.mAm) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            if (proc.curAdj >= 900 && !proc.shouldNotFreeze) {
                                if (pid != 0 && !proc.frozen) {
                                    long unfreezeTime = proc.freezeUnfreezeTime;
                                    try {
                                        Process.setProcessFrozen(pid, proc.uid, true);
                                        proc.freezeUnfreezeTime = SystemClock.uptimeMillis();
                                        proc.frozen = true;
                                    } catch (Exception e) {
                                        Slog.w("ActivityManager", "Unable to freeze " + pid + " " + name);
                                    }
                                    long unfrozenDuration = proc.freezeUnfreezeTime - unfreezeTime;
                                    boolean frozen = proc.frozen;
                                    ActivityManagerService.resetPriorityAfterLockedSection();
                                    if (!frozen) {
                                        return;
                                    }
                                    Slog.d("ActivityManager", "froze " + pid + " " + name);
                                    EventLog.writeEvent(EventLogTags.AM_FREEZE, Integer.valueOf(pid), name);
                                    try {
                                        CachedAppOptimizer.freezeBinder(pid, true);
                                    } catch (RuntimeException e2) {
                                        Slog.e("ActivityManager", "Unable to freeze binder for " + pid + " " + name);
                                        proc.kill("Unable to freeze binder interface", 13, 14, true);
                                    }
                                    if (CachedAppOptimizer.this.mRandom.nextFloat() < CachedAppOptimizer.this.mFreezerStatsdSampleRate) {
                                        FrameworkStatsLog.write(UsbDescriptor.CLASSID_APPSPECIFIC, 1, pid, name, unfrozenDuration);
                                    }
                                    try {
                                        if (Process.hasFileLocks(pid)) {
                                            Slog.d("ActivityManager", name + " (" + pid + ") holds file locks, reverting freeze");
                                            synchronized (CachedAppOptimizer.this.mAm) {
                                                try {
                                                    ActivityManagerService.boostPriorityForLockedSection();
                                                    CachedAppOptimizer.this.unfreezeAppLocked(proc);
                                                } finally {
                                                    ActivityManagerService.resetPriorityAfterLockedSection();
                                                }
                                            }
                                            return;
                                        }
                                        return;
                                    } catch (Exception e3) {
                                        Slog.e("ActivityManager", "Unable to check file locks for " + name + "(" + pid + "): " + e3);
                                        synchronized (CachedAppOptimizer.this.mAm) {
                                            try {
                                                ActivityManagerService.boostPriorityForLockedSection();
                                                CachedAppOptimizer.this.unfreezeAppLocked(proc);
                                                return;
                                            } finally {
                                                ActivityManagerService.resetPriorityAfterLockedSection();
                                            }
                                        }
                                    }
                                }
                                ActivityManagerService.resetPriorityAfterLockedSection();
                                return;
                            }
                            Slog.d("ActivityManager", "Skipping freeze for process " + pid + " " + name + " curAdj = " + proc.curAdj + ", shouldNotFreeze = " + proc.shouldNotFreeze);
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            return;
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                }
                Slog.d("ActivityManager", name + " (" + pid + ") holds file locks, not freezing");
            } catch (Exception e4) {
                Slog.e("ActivityManager", "Not freezing. Unable to check file locks for " + name + "(" + pid + "): " + e4);
            }
        }

        private void reportUnfreeze(int pid, int frozenDuration, String processName) {
            EventLog.writeEvent(EventLogTags.AM_UNFREEZE, Integer.valueOf(pid), processName);
            if (CachedAppOptimizer.this.mRandom.nextFloat() < CachedAppOptimizer.this.mFreezerStatsdSampleRate) {
                FrameworkStatsLog.write(UsbDescriptor.CLASSID_APPSPECIFIC, 2, pid, processName, frozenDuration);
            }
        }
    }

    private static final class DefaultProcessDependencies implements ProcessDependencies {
        private DefaultProcessDependencies() {
        }

        @Override // com.android.server.am.CachedAppOptimizer.ProcessDependencies
        public long[] getRss(int pid) {
            return Process.getRss(pid);
        }

        @Override // com.android.server.am.CachedAppOptimizer.ProcessDependencies
        public void performCompaction(String action, int pid) throws IOException {
            FileOutputStream fos = new FileOutputStream("/proc/" + pid + "/reclaim");
            try {
                fos.write(action.getBytes());
                fos.close();
            } catch (Throwable th) {
                try {
                    fos.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }
}
