package com.android.server;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.BroadcastOptions;
import android.app.IAlarmCompleteListener;
import android.app.IAlarmListener;
import android.app.IAlarmManager;
import android.app.IUidObserver;
import android.app.PendingIntent;
import android.app.usage.UsageStatsManagerInternal;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManagerInternal;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelableException;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.ThreadLocalWorkSource;
import android.os.Trace;
import android.os.UserHandle;
import android.os.WorkSource;
import android.provider.Settings;
import android.system.Os;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.EventLog;
import android.util.KeyValueListParser;
import android.util.LongArrayQueue;
import android.util.MutableBoolean;
import android.util.NtpTrustedTime;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.LocalLog;
import com.android.internal.util.StatLogger;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.job.controllers.JobStatus;
import com.android.server.pm.PackageManagerService;
import com.android.server.usage.AppStandbyController;
import com.android.server.usage.AppStandbyInternal;
import com.android.server.utils.PriorityDump;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.time.DateTimeException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.TimeZone;
import java.util.TreeSet;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
class AlarmManagerService extends SystemService {
    static final int ACTIVE_INDEX = 0;
    static final boolean DEBUG_ALARM_CLOCK = false;
    static final boolean DEBUG_BATCH = false;
    static final boolean DEBUG_BG_LIMIT = false;
    static final boolean DEBUG_LISTENER_CALLBACK = false;
    static final boolean DEBUG_PER_UID_LIMIT = true;
    static final boolean DEBUG_STANDBY = false;
    static final boolean DEBUG_VALIDATE = false;
    static final boolean DEBUG_WAKELOCK = false;
    private static final int ELAPSED_REALTIME_MASK = 8;
    private static final int ELAPSED_REALTIME_WAKEUP_MASK = 4;
    static final int FREQUENT_INDEX = 2;
    static final int IS_WAKEUP_MASK = 5;
    static final long MILLIS_IN_DAY = 86400000;
    static final long MIN_FUZZABLE_INTERVAL = 10000;
    static final int NEVER_INDEX = 4;
    static final int PRIO_NORMAL = 2;
    static final int PRIO_TICK = 0;
    static final int PRIO_WAKEUP = 1;
    static final int RARE_INDEX = 3;
    static final boolean RECORD_ALARMS_IN_HISTORY = true;
    static final boolean RECORD_DEVICE_IDLE_ALARMS = false;
    private static final int RTC_MASK = 2;
    private static final int RTC_WAKEUP_MASK = 1;
    static final String TAG = "AlarmManager";
    static final int TICK_HISTORY_DEPTH = 10;
    static final String TIMEZONE_PROPERTY = "persist.sys.timezone";
    static final int TIME_CHANGED_MASK = 65536;
    static final int TYPE_NONWAKEUP_MASK = 1;
    static final boolean WAKEUP_STATS = false;
    static final int WORKING_INDEX = 1;
    static final boolean localLOGV = false;
    final long RECENT_WAKEUP_PERIOD;
    ActivityOptions mActivityOptsRestrictBal;
    final ArrayList<Batch> mAlarmBatches;
    final Comparator<Alarm> mAlarmDispatchComparator;
    SparseIntArray mAlarmsPerUid;
    final ArrayList<IdleDispatchEntry> mAllowWhileIdleDispatches;
    AppOpsManager mAppOps;
    private boolean mAppStandbyParole;
    private AppStateTracker mAppStateTracker;
    AppWakeupHistory mAppWakeupHistory;
    private final Intent mBackgroundIntent;
    BroadcastOptions mBroadcastOptsRestrictBal;
    int mBroadcastRefCount;
    final SparseArray<ArrayMap<String, BroadcastStats>> mBroadcastStats;
    ClockReceiver mClockReceiver;
    Constants mConstants;
    int mCurrentSeq;
    PendingIntent mDateChangeSender;
    final DeliveryTracker mDeliveryTracker;
    private final AppStateTracker.Listener mForceAppStandbyListener;
    AlarmHandler mHandler;
    private final SparseArray<AlarmManager.AlarmClockInfo> mHandlerSparseAlarmClockArray;
    Bundle mIdleOptions;
    ArrayList<InFlight> mInFlight;
    private final ArrayList<AlarmManagerInternal.InFlightListener> mInFlightListeners;
    private final Injector mInjector;
    boolean mInteractive;
    long mLastAlarmDeliveryTime;
    final SparseLongArray mLastAllowWhileIdleDispatch;
    private long mLastTickAdded;
    private long mLastTickReceived;
    private long mLastTickRemoved;
    private long mLastTickSet;
    long mLastTimeChangeClockTime;
    long mLastTimeChangeRealtime;
    private long mLastTrigger;
    private long mLastWakeup;
    private int mListenerCount;
    IBinder.DeathRecipient mListenerDeathRecipient;
    private int mListenerFinishCount;
    DeviceIdleInternal mLocalDeviceIdleController;
    final Object mLock;
    final LocalLog mLog;
    long mMaxDelayTime;
    private final SparseArray<AlarmManager.AlarmClockInfo> mNextAlarmClockForUser;
    private boolean mNextAlarmClockMayChange;
    private long mNextNonWakeUpSetAt;
    private long mNextNonWakeup;
    long mNextNonWakeupDeliveryTime;
    private int mNextTickHistory;
    Alarm mNextWakeFromIdle;
    private long mNextWakeUpSetAt;
    private long mNextWakeup;
    long mNonInteractiveStartTime;
    long mNonInteractiveTime;
    int mNumDelayedAlarms;
    int mNumTimeChanged;
    SparseArray<ArrayList<Alarm>> mPendingBackgroundAlarms;
    Alarm mPendingIdleUntil;
    ArrayList<Alarm> mPendingNonWakeupAlarms;
    private final SparseBooleanArray mPendingSendNextAlarmClockChangedForUser;
    ArrayList<Alarm> mPendingWhileIdleAlarms;
    final HashMap<String, PriorityClass> mPriorities;
    Random mRandom;
    final LinkedList<WakeupEvent> mRecentWakeups;
    private int mSendCount;
    private int mSendFinishCount;
    private final IBinder mService;
    long mStartCurrentDelayTime;
    private final StatLogger mStatLogger;
    IAlarmListener mSyncTimeToQNX;
    int mSystemUiUid;
    private final long[] mTickHistory;
    Intent mTimeTickIntent;
    IAlarmListener mTimeTickTrigger;
    private final SparseArray<AlarmManager.AlarmClockInfo> mTmpSparseAlarmClockArray;
    long mTotalDelayTime;
    private UsageStatsManagerInternal mUsageStatsManagerInternal;
    final SparseBooleanArray mUseAllowWhileIdleShortTime;
    PowerManager.WakeLock mWakeLock;
    static final IncreasingTimeOrder sIncreasingTimeOrder = new IncreasingTimeOrder();
    private static final Intent NEXT_ALARM_CLOCK_CHANGED_INTENT = new Intent("android.app.action.NEXT_ALARM_CLOCK_CHANGED").addFlags(AudioFormat.APTX_HD);
    static final BatchTimeOrder sBatchOrder = new BatchTimeOrder();

    interface Stats {
        public static final int REBATCH_ALL_ALARMS = 0;
        public static final int REORDER_ALARMS_FOR_STANDBY = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void close(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long getNextAlarm(long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long init();

    /* JADX INFO: Access modifiers changed from: private */
    public static native int set(long j, int i, long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int setKernelTime(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int setKernelTimezone(long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int waitForAlarm(long j);

    static /* synthetic */ int access$3008(AlarmManagerService x0) {
        int i = x0.mListenerFinishCount;
        x0.mListenerFinishCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$3108(AlarmManagerService x0) {
        int i = x0.mSendFinishCount;
        x0.mSendFinishCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$3308(AlarmManagerService x0) {
        int i = x0.mSendCount;
        x0.mSendCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$3508(AlarmManagerService x0) {
        int i = x0.mListenerCount;
        x0.mListenerCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$3708(AlarmManagerService x0) {
        int i = x0.mNextTickHistory;
        x0.mNextTickHistory = i + 1;
        return i;
    }

    static final class IdleDispatchEntry {
        long argRealtime;
        long elapsedRealtime;
        String op;
        String pkg;
        String tag;
        int uid;

        IdleDispatchEntry() {
        }
    }

    private static class AppWakeupHistory {
        private ArrayMap<Pair<String, Integer>, LongArrayQueue> mPackageHistory = new ArrayMap<>();
        private long mWindowSize;

        AppWakeupHistory(long windowSize) {
            this.mWindowSize = windowSize;
        }

        void recordAlarmForPackage(String packageName, int userId, long nowElapsed) {
            Pair<String, Integer> packageUser = Pair.create(packageName, Integer.valueOf(userId));
            LongArrayQueue history = this.mPackageHistory.get(packageUser);
            if (history == null) {
                history = new LongArrayQueue();
                this.mPackageHistory.put(packageUser, history);
            }
            if (history.size() == 0 || history.peekLast() < nowElapsed) {
                history.addLast(nowElapsed);
            }
            snapToWindow(history);
        }

        void removeForUser(int userId) {
            for (int i = this.mPackageHistory.size() - 1; i >= 0; i--) {
                Pair<String, Integer> packageUserKey = this.mPackageHistory.keyAt(i);
                if (((Integer) packageUserKey.second).intValue() == userId) {
                    this.mPackageHistory.removeAt(i);
                }
            }
        }

        void removeForPackage(String packageName, int userId) {
            Pair<String, Integer> packageUser = Pair.create(packageName, Integer.valueOf(userId));
            this.mPackageHistory.remove(packageUser);
        }

        private void snapToWindow(LongArrayQueue history) {
            while (history.peekFirst() + this.mWindowSize < history.peekLast()) {
                history.removeFirst();
            }
        }

        int getTotalWakeupsInWindow(String packageName, int userId) {
            LongArrayQueue history = this.mPackageHistory.get(Pair.create(packageName, Integer.valueOf(userId)));
            if (history == null) {
                return 0;
            }
            return history.size();
        }

        long getNthLastWakeupForPackage(String packageName, int userId, int n) {
            int i;
            LongArrayQueue history = this.mPackageHistory.get(Pair.create(packageName, Integer.valueOf(userId)));
            if (history != null && (i = history.size() - n) >= 0) {
                return history.get(i);
            }
            return 0L;
        }

        void dump(PrintWriter pw, String prefix, long nowElapsed) {
            dump(new IndentingPrintWriter(pw, "  ").setIndent(prefix), nowElapsed);
        }

        void dump(IndentingPrintWriter pw, long nowElapsed) {
            pw.println("App Alarm history:");
            pw.increaseIndent();
            for (int i = 0; i < this.mPackageHistory.size(); i++) {
                Pair<String, Integer> packageUser = this.mPackageHistory.keyAt(i);
                LongArrayQueue timestamps = this.mPackageHistory.valueAt(i);
                pw.print((String) packageUser.first);
                pw.print(", u");
                pw.print(packageUser.second);
                pw.print(": ");
                int lastIdx = Math.max(0, timestamps.size() - 100);
                for (int j = timestamps.size() - 1; j >= lastIdx; j--) {
                    TimeUtils.formatDuration(timestamps.get(j), nowElapsed, pw);
                    pw.print(", ");
                }
                pw.println();
            }
            pw.decreaseIndent();
        }
    }

    final class Constants extends ContentObserver {
        private static final long DEFAULT_ALLOW_WHILE_IDLE_LONG_TIME = 540000;
        private static final long DEFAULT_ALLOW_WHILE_IDLE_SHORT_TIME = 5000;
        private static final long DEFAULT_ALLOW_WHILE_IDLE_WHITELIST_DURATION = 10000;
        private static final int DEFAULT_APP_STANDBY_RESTRICTED_QUOTA = 1;
        private static final long DEFAULT_APP_STANDBY_RESTRICTED_WINDOW = 86400000;
        private static final long DEFAULT_APP_STANDBY_WINDOW = 3600000;
        private static final long DEFAULT_LISTENER_TIMEOUT = 5000;
        private static final int DEFAULT_MAX_ALARMS_PER_UID = 500;
        private static final long DEFAULT_MAX_INTERVAL = 31536000000L;
        private static final long DEFAULT_MIN_FUTURITY = 5000;
        private static final long DEFAULT_MIN_INTERVAL = 60000;
        static final String KEY_ALLOW_WHILE_IDLE_LONG_TIME = "allow_while_idle_long_time";
        static final String KEY_ALLOW_WHILE_IDLE_SHORT_TIME = "allow_while_idle_short_time";
        static final String KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION = "allow_while_idle_whitelist_duration";
        private static final String KEY_APP_STANDBY_RESTRICTED_QUOTA = "standby_restricted_quota";
        private static final String KEY_APP_STANDBY_RESTRICTED_WINDOW = "app_standby_restricted_window";
        private static final String KEY_APP_STANDBY_WINDOW = "app_standby_window";
        static final String KEY_LISTENER_TIMEOUT = "listener_timeout";
        static final String KEY_MAX_ALARMS_PER_UID = "max_alarms_per_uid";
        static final String KEY_MAX_INTERVAL = "max_interval";
        static final String KEY_MIN_FUTURITY = "min_futurity";
        static final String KEY_MIN_INTERVAL = "min_interval";
        public long ALLOW_WHILE_IDLE_LONG_TIME;
        public long ALLOW_WHILE_IDLE_SHORT_TIME;
        public long ALLOW_WHILE_IDLE_WHITELIST_DURATION;
        public int[] APP_STANDBY_QUOTAS;
        public int APP_STANDBY_RESTRICTED_QUOTA;
        public long APP_STANDBY_RESTRICTED_WINDOW;
        public long APP_STANDBY_WINDOW;
        private final int[] DEFAULT_APP_STANDBY_QUOTAS;
        final String[] KEYS_APP_STANDBY_QUOTAS;
        public long LISTENER_TIMEOUT;
        public int MAX_ALARMS_PER_UID;
        public long MAX_INTERVAL;
        public long MIN_FUTURITY;
        public long MIN_INTERVAL;
        private long mLastAllowWhileIdleWhitelistDuration;
        private final KeyValueListParser mParser;
        private ContentResolver mResolver;

        public Constants(Handler handler) {
            super(handler);
            this.KEYS_APP_STANDBY_QUOTAS = new String[]{"standby_active_quota", "standby_working_quota", "standby_frequent_quota", "standby_rare_quota", "standby_never_quota"};
            int[] iArr = {720, 10, 2, 1, 0};
            this.DEFAULT_APP_STANDBY_QUOTAS = iArr;
            this.MIN_FUTURITY = 5000L;
            this.MIN_INTERVAL = 60000L;
            this.MAX_INTERVAL = 31536000000L;
            this.ALLOW_WHILE_IDLE_SHORT_TIME = 5000L;
            this.ALLOW_WHILE_IDLE_LONG_TIME = DEFAULT_ALLOW_WHILE_IDLE_LONG_TIME;
            this.ALLOW_WHILE_IDLE_WHITELIST_DURATION = 10000L;
            this.LISTENER_TIMEOUT = 5000L;
            this.MAX_ALARMS_PER_UID = 500;
            this.APP_STANDBY_WINDOW = 3600000L;
            this.APP_STANDBY_QUOTAS = new int[iArr.length];
            this.APP_STANDBY_RESTRICTED_QUOTA = 1;
            this.APP_STANDBY_RESTRICTED_WINDOW = 86400000L;
            this.mParser = new KeyValueListParser(',');
            this.mLastAllowWhileIdleWhitelistDuration = -1L;
            updateAllowWhileIdleWhitelistDurationLocked();
        }

        public void start(ContentResolver resolver) {
            this.mResolver = resolver;
            resolver.registerContentObserver(Settings.Global.getUriFor("alarm_manager_constants"), false, this);
            updateConstants();
        }

        public void updateAllowWhileIdleWhitelistDurationLocked() {
            long j = this.mLastAllowWhileIdleWhitelistDuration;
            long j2 = this.ALLOW_WHILE_IDLE_WHITELIST_DURATION;
            if (j != j2) {
                this.mLastAllowWhileIdleWhitelistDuration = j2;
                BroadcastOptions opts = BroadcastOptions.makeBasic();
                opts.setTemporaryAppWhitelistDuration(this.ALLOW_WHILE_IDLE_WHITELIST_DURATION);
                opts.setPendingIntentBackgroundActivityLaunchAllowed(false);
                AlarmManagerService.this.mIdleOptions = opts.toBundle();
            }
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            updateConstants();
        }

        private void updateConstants() {
            synchronized (AlarmManagerService.this.mLock) {
                try {
                    this.mParser.setString(Settings.Global.getString(this.mResolver, "alarm_manager_constants"));
                } catch (IllegalArgumentException e) {
                    Slog.e(AlarmManagerService.TAG, "Bad alarm manager settings", e);
                }
                this.MIN_FUTURITY = this.mParser.getLong(KEY_MIN_FUTURITY, 5000L);
                this.MIN_INTERVAL = this.mParser.getLong(KEY_MIN_INTERVAL, 60000L);
                this.MAX_INTERVAL = this.mParser.getLong(KEY_MAX_INTERVAL, 31536000000L);
                this.ALLOW_WHILE_IDLE_SHORT_TIME = this.mParser.getLong(KEY_ALLOW_WHILE_IDLE_SHORT_TIME, 5000L);
                this.ALLOW_WHILE_IDLE_LONG_TIME = this.mParser.getLong(KEY_ALLOW_WHILE_IDLE_LONG_TIME, DEFAULT_ALLOW_WHILE_IDLE_LONG_TIME);
                this.ALLOW_WHILE_IDLE_WHITELIST_DURATION = this.mParser.getLong(KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION, 10000L);
                this.LISTENER_TIMEOUT = this.mParser.getLong(KEY_LISTENER_TIMEOUT, 5000L);
                long j = this.mParser.getLong(KEY_APP_STANDBY_WINDOW, 3600000L);
                this.APP_STANDBY_WINDOW = j;
                if (j > 3600000) {
                    Slog.w(AlarmManagerService.TAG, "Cannot exceed the app_standby_window size of 3600000");
                    this.APP_STANDBY_WINDOW = 3600000L;
                } else if (j < 3600000) {
                    Slog.w(AlarmManagerService.TAG, "Using a non-default app_standby_window of " + this.APP_STANDBY_WINDOW);
                }
                this.APP_STANDBY_QUOTAS[0] = this.mParser.getInt(this.KEYS_APP_STANDBY_QUOTAS[0], this.DEFAULT_APP_STANDBY_QUOTAS[0]);
                for (int i = 1; i < this.KEYS_APP_STANDBY_QUOTAS.length; i++) {
                    this.APP_STANDBY_QUOTAS[i] = this.mParser.getInt(this.KEYS_APP_STANDBY_QUOTAS[i], Math.min(this.APP_STANDBY_QUOTAS[i - 1], this.DEFAULT_APP_STANDBY_QUOTAS[i]));
                }
                this.APP_STANDBY_RESTRICTED_QUOTA = Math.max(1, this.mParser.getInt(KEY_APP_STANDBY_RESTRICTED_QUOTA, 1));
                this.APP_STANDBY_RESTRICTED_WINDOW = Math.max(this.APP_STANDBY_WINDOW, this.mParser.getLong(KEY_APP_STANDBY_RESTRICTED_WINDOW, 86400000L));
                int i2 = this.mParser.getInt(KEY_MAX_ALARMS_PER_UID, 500);
                this.MAX_ALARMS_PER_UID = i2;
                if (i2 < 500) {
                    Slog.w(AlarmManagerService.TAG, "Cannot set max_alarms_per_uid lower than 500");
                    this.MAX_ALARMS_PER_UID = 500;
                }
                updateAllowWhileIdleWhitelistDurationLocked();
            }
        }

        void dump(PrintWriter pw, String prefix) {
            dump(new IndentingPrintWriter(pw, "  ").setIndent(prefix));
        }

        void dump(IndentingPrintWriter pw) {
            pw.println("Settings:");
            pw.increaseIndent();
            pw.print(KEY_MIN_FUTURITY);
            pw.print("=");
            TimeUtils.formatDuration(this.MIN_FUTURITY, pw);
            pw.println();
            pw.print(KEY_MIN_INTERVAL);
            pw.print("=");
            TimeUtils.formatDuration(this.MIN_INTERVAL, pw);
            pw.println();
            pw.print(KEY_MAX_INTERVAL);
            pw.print("=");
            TimeUtils.formatDuration(this.MAX_INTERVAL, pw);
            pw.println();
            pw.print(KEY_LISTENER_TIMEOUT);
            pw.print("=");
            TimeUtils.formatDuration(this.LISTENER_TIMEOUT, pw);
            pw.println();
            pw.print(KEY_ALLOW_WHILE_IDLE_SHORT_TIME);
            pw.print("=");
            TimeUtils.formatDuration(this.ALLOW_WHILE_IDLE_SHORT_TIME, pw);
            pw.println();
            pw.print(KEY_ALLOW_WHILE_IDLE_LONG_TIME);
            pw.print("=");
            TimeUtils.formatDuration(this.ALLOW_WHILE_IDLE_LONG_TIME, pw);
            pw.println();
            pw.print(KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION);
            pw.print("=");
            TimeUtils.formatDuration(this.ALLOW_WHILE_IDLE_WHITELIST_DURATION, pw);
            pw.println();
            pw.print(KEY_MAX_ALARMS_PER_UID);
            pw.print("=");
            pw.println(this.MAX_ALARMS_PER_UID);
            pw.print(KEY_APP_STANDBY_WINDOW);
            pw.print("=");
            TimeUtils.formatDuration(this.APP_STANDBY_WINDOW, pw);
            pw.println();
            int i = 0;
            while (true) {
                String[] strArr = this.KEYS_APP_STANDBY_QUOTAS;
                if (i < strArr.length) {
                    pw.print(strArr[i]);
                    pw.print("=");
                    pw.println(this.APP_STANDBY_QUOTAS[i]);
                    i++;
                } else {
                    pw.print(KEY_APP_STANDBY_RESTRICTED_QUOTA);
                    pw.print("=");
                    pw.println(this.APP_STANDBY_RESTRICTED_QUOTA);
                    pw.print(KEY_APP_STANDBY_RESTRICTED_WINDOW);
                    pw.print("=");
                    TimeUtils.formatDuration(this.APP_STANDBY_RESTRICTED_WINDOW, pw);
                    pw.println();
                    pw.decreaseIndent();
                    return;
                }
            }
        }

        void dumpProto(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1112396529665L, this.MIN_FUTURITY);
            proto.write(1112396529666L, this.MIN_INTERVAL);
            proto.write(1112396529671L, this.MAX_INTERVAL);
            proto.write(1112396529667L, this.LISTENER_TIMEOUT);
            proto.write(1112396529668L, this.ALLOW_WHILE_IDLE_SHORT_TIME);
            proto.write(1112396529669L, this.ALLOW_WHILE_IDLE_LONG_TIME);
            proto.write(1112396529670L, this.ALLOW_WHILE_IDLE_WHITELIST_DURATION);
            proto.end(token);
        }
    }

    final class PriorityClass {
        int priority = 2;
        int seq;

        PriorityClass() {
            this.seq = AlarmManagerService.this.mCurrentSeq - 1;
        }
    }

    static final class WakeupEvent {
        public String action;
        public int uid;
        public long when;

        public WakeupEvent(long theTime, int theUid, String theAction) {
            this.when = theTime;
            this.uid = theUid;
            this.action = theAction;
        }
    }

    final class Batch {
        final ArrayList<Alarm> alarms = new ArrayList<>();
        long end;
        int flags;
        long start;

        Batch(Alarm seed) {
            this.start = seed.whenElapsed;
            this.end = AlarmManagerService.clampPositive(seed.maxWhenElapsed);
            this.flags = seed.flags;
            this.alarms.add(seed);
            if (seed.listener == AlarmManagerService.this.mTimeTickTrigger) {
                AlarmManagerService.this.mLastTickAdded = AlarmManagerService.this.mInjector.getCurrentTimeMillis();
            }
        }

        int size() {
            return this.alarms.size();
        }

        Alarm get(int index) {
            return this.alarms.get(index);
        }

        boolean canHold(long whenElapsed, long maxWhen) {
            return this.end >= whenElapsed && this.start <= maxWhen;
        }

        boolean add(Alarm alarm) {
            boolean newStart = false;
            int index = Collections.binarySearch(this.alarms, alarm, AlarmManagerService.sIncreasingTimeOrder);
            if (index < 0) {
                index = (0 - index) - 1;
            }
            this.alarms.add(index, alarm);
            if (alarm.listener == AlarmManagerService.this.mTimeTickTrigger) {
                AlarmManagerService alarmManagerService = AlarmManagerService.this;
                alarmManagerService.mLastTickAdded = alarmManagerService.mInjector.getCurrentTimeMillis();
            }
            if (alarm.whenElapsed > this.start) {
                this.start = alarm.whenElapsed;
                newStart = true;
            }
            if (alarm.maxWhenElapsed < this.end) {
                this.end = alarm.maxWhenElapsed;
            }
            this.flags |= alarm.flags;
            return newStart;
        }

        static /* synthetic */ boolean lambda$remove$0(Alarm alarm, Alarm a) {
            return a == alarm;
        }

        boolean remove(final Alarm alarm) {
            return remove(new Predicate() { // from class: com.android.server.-$$Lambda$AlarmManagerService$Batch$Xltkj5RTKUMuFVeuavpuY7-Ogzc
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return AlarmManagerService.Batch.lambda$remove$0(alarm, (AlarmManagerService.Alarm) obj);
                }
            }, true);
        }

        boolean remove(Predicate<Alarm> predicate, boolean reOrdering) {
            boolean didRemove = false;
            long newStart = 0;
            long newEnd = JobStatus.NO_LATEST_RUNTIME;
            int newFlags = 0;
            int i = 0;
            while (i < this.alarms.size()) {
                Alarm alarm = this.alarms.get(i);
                if (predicate.test(alarm)) {
                    this.alarms.remove(i);
                    if (!reOrdering) {
                        AlarmManagerService.this.decrementAlarmCount(alarm.uid, 1);
                    }
                    didRemove = true;
                    if (alarm.alarmClock != null) {
                        AlarmManagerService.this.mNextAlarmClockMayChange = true;
                    }
                    if (alarm.listener == AlarmManagerService.this.mTimeTickTrigger) {
                        AlarmManagerService alarmManagerService = AlarmManagerService.this;
                        alarmManagerService.mLastTickRemoved = alarmManagerService.mInjector.getCurrentTimeMillis();
                    }
                } else {
                    if (alarm.whenElapsed > newStart) {
                        newStart = alarm.whenElapsed;
                    }
                    if (alarm.maxWhenElapsed < newEnd) {
                        newEnd = alarm.maxWhenElapsed;
                    }
                    newFlags |= alarm.flags;
                    i++;
                }
            }
            if (didRemove) {
                this.start = newStart;
                this.end = newEnd;
                this.flags = newFlags;
            }
            return didRemove;
        }

        boolean hasPackage(String packageName) {
            int N = this.alarms.size();
            for (int i = 0; i < N; i++) {
                Alarm a = this.alarms.get(i);
                if (a.matches(packageName)) {
                    return true;
                }
            }
            return false;
        }

        boolean hasWakeups() {
            int N = this.alarms.size();
            for (int i = 0; i < N; i++) {
                Alarm a = this.alarms.get(i);
                if ((a.type & 1) == 0) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            StringBuilder b = new StringBuilder(40);
            b.append("Batch{");
            b.append(Integer.toHexString(hashCode()));
            b.append(" num=");
            b.append(size());
            b.append(" start=");
            b.append(this.start);
            b.append(" end=");
            b.append(this.end);
            if (this.flags != 0) {
                b.append(" flgs=0x");
                b.append(Integer.toHexString(this.flags));
            }
            b.append('}');
            return b.toString();
        }

        public void dumpDebug(ProtoOutputStream proto, long fieldId, long nowElapsed, long nowRTC) {
            long token = proto.start(fieldId);
            proto.write(1112396529665L, this.start);
            proto.write(1112396529666L, this.end);
            proto.write(1120986464259L, this.flags);
            for (Alarm a : this.alarms) {
                a.dumpDebug(proto, 2246267895812L, nowElapsed, nowRTC);
            }
            proto.end(token);
        }
    }

    static class BatchTimeOrder implements Comparator<Batch> {
        BatchTimeOrder() {
        }

        @Override // java.util.Comparator
        public int compare(Batch b1, Batch b2) {
            long when1 = b1.start;
            long when2 = b2.start;
            if (when1 > when2) {
                return 1;
            }
            if (when1 < when2) {
                return -1;
            }
            return 0;
        }
    }

    void calculateDeliveryPriorities(ArrayList<Alarm> alarms) {
        int alarmPrio;
        int N = alarms.size();
        for (int i = 0; i < N; i++) {
            Alarm a = alarms.get(i);
            if (a.listener == this.mTimeTickTrigger) {
                alarmPrio = 0;
            } else if (a.wakeup) {
                alarmPrio = 1;
            } else {
                alarmPrio = 2;
            }
            PriorityClass packagePrio = a.priorityClass;
            String alarmPackage = a.sourcePackage;
            if (packagePrio == null) {
                packagePrio = this.mPriorities.get(alarmPackage);
            }
            if (packagePrio == null) {
                PriorityClass priorityClass = new PriorityClass();
                a.priorityClass = priorityClass;
                packagePrio = priorityClass;
                this.mPriorities.put(alarmPackage, packagePrio);
            }
            a.priorityClass = packagePrio;
            if (packagePrio.seq != this.mCurrentSeq) {
                packagePrio.priority = alarmPrio;
                packagePrio.seq = this.mCurrentSeq;
            } else if (alarmPrio < packagePrio.priority) {
                packagePrio.priority = alarmPrio;
            }
        }
    }

    AlarmManagerService(Context context, Injector injector) {
        super(context);
        this.mBackgroundIntent = new Intent().addFlags(4);
        this.mLog = new LocalLog(TAG);
        this.mLock = new Object();
        this.mPendingBackgroundAlarms = new SparseArray<>();
        this.mTickHistory = new long[10];
        this.mBroadcastRefCount = 0;
        this.mAlarmsPerUid = new SparseIntArray();
        this.mPendingNonWakeupAlarms = new ArrayList<>();
        this.mInFlight = new ArrayList<>();
        this.mInFlightListeners = new ArrayList<>();
        this.mDeliveryTracker = new DeliveryTracker();
        this.mInteractive = true;
        this.mLastAllowWhileIdleDispatch = new SparseLongArray();
        this.mUseAllowWhileIdleShortTime = new SparseBooleanArray();
        this.mAllowWhileIdleDispatches = new ArrayList<>();
        this.mStatLogger = new StatLogger(new String[]{"REBATCH_ALL_ALARMS", "REORDER_ALARMS_FOR_STANDBY"});
        this.mActivityOptsRestrictBal = ActivityOptions.makeBasic();
        this.mBroadcastOptsRestrictBal = BroadcastOptions.makeBasic();
        this.mNextAlarmClockForUser = new SparseArray<>();
        this.mTmpSparseAlarmClockArray = new SparseArray<>();
        this.mPendingSendNextAlarmClockChangedForUser = new SparseBooleanArray();
        this.mHandlerSparseAlarmClockArray = new SparseArray<>();
        this.mPriorities = new HashMap<>();
        this.mCurrentSeq = 0;
        this.mRecentWakeups = new LinkedList<>();
        this.RECENT_WAKEUP_PERIOD = 86400000L;
        this.mAlarmDispatchComparator = new Comparator<Alarm>() { // from class: com.android.server.AlarmManagerService.1
            @Override // java.util.Comparator
            public int compare(Alarm lhs, Alarm rhs) {
                if (lhs.priorityClass.priority < rhs.priorityClass.priority) {
                    return -1;
                }
                if (lhs.priorityClass.priority > rhs.priorityClass.priority) {
                    return 1;
                }
                if (lhs.whenElapsed < rhs.whenElapsed) {
                    return -1;
                }
                return lhs.whenElapsed > rhs.whenElapsed ? 1 : 0;
            }
        };
        this.mAlarmBatches = new ArrayList<>();
        this.mPendingIdleUntil = null;
        this.mNextWakeFromIdle = null;
        this.mPendingWhileIdleAlarms = new ArrayList<>();
        this.mBroadcastStats = new SparseArray<>();
        this.mNumDelayedAlarms = 0;
        this.mTotalDelayTime = 0L;
        this.mMaxDelayTime = 0L;
        this.mService = new IAlarmManager.Stub() { // from class: com.android.server.AlarmManagerService.5
            public void set(String callingPackage, int type, long triggerAtTime, long windowLength, long interval, int flags, PendingIntent operation, IAlarmListener directReceiver, String listenerTag, WorkSource workSource, AlarmManager.AlarmClockInfo alarmClock) throws Throwable {
                int flags2;
                int callingUid = Binder.getCallingUid();
                AlarmManagerService.this.mAppOps.checkPackage(callingUid, callingPackage);
                if (interval != 0 && directReceiver != null) {
                    throw new IllegalArgumentException("Repeating alarms cannot use AlarmReceivers");
                }
                if (workSource != null) {
                    AlarmManagerService.this.getContext().enforcePermission("android.permission.UPDATE_DEVICE_STATS", Binder.getCallingPid(), callingUid, "AlarmManager.set");
                }
                int flags3 = flags & (-11);
                if (callingUid != 1000) {
                    flags3 &= -17;
                }
                if (windowLength == 0) {
                    flags3 |= 1;
                }
                if (alarmClock != null) {
                    flags2 = flags3 | 3;
                } else if (workSource == null && (callingUid < 10000 || UserHandle.isSameApp(callingUid, AlarmManagerService.this.mSystemUiUid) || (AlarmManagerService.this.mAppStateTracker != null && AlarmManagerService.this.mAppStateTracker.isUidPowerSaveUserWhitelisted(callingUid)))) {
                    flags2 = (flags3 | 8) & (-5);
                } else {
                    flags2 = flags3;
                }
                AlarmManagerService.this.setImpl(type, triggerAtTime, windowLength, interval, operation, directReceiver, listenerTag, flags2, workSource, alarmClock, callingUid, callingPackage);
            }

            public boolean setTime(long millis) throws Throwable {
                AlarmManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.SET_TIME", "setTime");
                AlarmManagerService alarmManagerService = AlarmManagerService.this;
                alarmManagerService.removeImpl(null, alarmManagerService.mSyncTimeToQNX);
                AlarmManagerService.this.mClockReceiver.scheduleSyncTimeToQNXEvent();
                return AlarmManagerService.this.setTimeImpl(millis);
            }

            public void setTimeZone(String tz) {
                AlarmManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.SET_TIME_ZONE", "setTimeZone");
                long oldId = Binder.clearCallingIdentity();
                try {
                    AlarmManagerService.this.setTimeZoneImpl(tz);
                } finally {
                    Binder.restoreCallingIdentity(oldId);
                }
            }

            public void remove(PendingIntent operation, IAlarmListener listener) {
                if (operation == null && listener == null) {
                    Slog.w(AlarmManagerService.TAG, "remove() with no intent or listener");
                    return;
                }
                synchronized (AlarmManagerService.this.mLock) {
                    AlarmManagerService.this.removeLocked(operation, listener);
                }
            }

            public long getNextWakeFromIdleTime() {
                return AlarmManagerService.this.getNextWakeFromIdleTimeImpl();
            }

            public AlarmManager.AlarmClockInfo getNextAlarmClock(int userId) {
                return AlarmManagerService.this.getNextAlarmClockImpl(ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, false, "getNextAlarmClock", null));
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
            public long currentNetworkTimeMillis() throws ParcelableException {
                NtpTrustedTime time = NtpTrustedTime.getInstance(AlarmManagerService.this.getContext());
                NtpTrustedTime.TimeResult ntpResult = time.getCachedTimeResult();
                if (ntpResult != null) {
                    return ntpResult.currentTimeMillis();
                }
                throw new ParcelableException(new DateTimeException("Missing NTP fix"));
            }

            protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
                if (DumpUtils.checkDumpAndUsageStatsPermission(AlarmManagerService.this.getContext(), AlarmManagerService.TAG, pw)) {
                    if (args.length > 0 && PriorityDump.PROTO_ARG.equals(args[0])) {
                        AlarmManagerService.this.dumpProto(fd);
                    } else {
                        AlarmManagerService.this.dumpImpl(pw);
                    }
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
                new ShellCmd().exec(this, in, out, err, args, callback, resultReceiver);
            }
        };
        this.mForceAppStandbyListener = new AppStateTracker.Listener() { // from class: com.android.server.AlarmManagerService.8
            @Override // com.android.server.AppStateTracker.Listener
            public void unblockAllUnrestrictedAlarms() {
                synchronized (AlarmManagerService.this.mLock) {
                    AlarmManagerService.this.sendAllUnrestrictedPendingBackgroundAlarmsLocked();
                }
            }

            @Override // com.android.server.AppStateTracker.Listener
            public void unblockAlarmsForUid(int uid) {
                synchronized (AlarmManagerService.this.mLock) {
                    AlarmManagerService.this.sendPendingBackgroundAlarmsLocked(uid, null);
                }
            }

            @Override // com.android.server.AppStateTracker.Listener
            public void unblockAlarmsForUidPackage(int uid, String packageName) {
                synchronized (AlarmManagerService.this.mLock) {
                    AlarmManagerService.this.sendPendingBackgroundAlarmsLocked(uid, packageName);
                }
            }

            @Override // com.android.server.AppStateTracker.Listener
            public void onUidForeground(int uid, boolean foreground) {
                synchronized (AlarmManagerService.this.mLock) {
                    if (foreground) {
                        AlarmManagerService.this.mUseAllowWhileIdleShortTime.put(uid, true);
                    }
                }
            }
        };
        this.mSendCount = 0;
        this.mSendFinishCount = 0;
        this.mListenerCount = 0;
        this.mListenerFinishCount = 0;
        this.mInjector = injector;
    }

    AlarmManagerService(Context context) {
        this(context, new Injector(context));
    }

    private long convertToElapsed(long when, int type) {
        boolean isRtc = true;
        if (type != 1 && type != 0) {
            isRtc = false;
        }
        if (isRtc) {
            return when - (this.mInjector.getCurrentTimeMillis() - this.mInjector.getElapsedRealtime());
        }
        return when;
    }

    static long maxTriggerTime(long now, long triggerAtTime, long interval) {
        long futurity;
        if (interval == 0) {
            futurity = triggerAtTime - now;
        } else {
            futurity = interval;
        }
        if (futurity < 10000) {
            futurity = 0;
        }
        return clampPositive(((long) (futurity * 0.75d)) + triggerAtTime);
    }

    static boolean addBatchLocked(ArrayList<Batch> list, Batch newBatch) {
        int index = Collections.binarySearch(list, newBatch, sBatchOrder);
        if (index < 0) {
            index = (0 - index) - 1;
        }
        list.add(index, newBatch);
        return index == 0;
    }

    private void insertAndBatchAlarmLocked(Alarm alarm) {
        int whichBatch = (alarm.flags & 1) != 0 ? -1 : attemptCoalesceLocked(alarm.whenElapsed, alarm.maxWhenElapsed);
        if (whichBatch < 0) {
            addBatchLocked(this.mAlarmBatches, new Batch(alarm));
            return;
        }
        Batch batch = this.mAlarmBatches.get(whichBatch);
        if (batch.add(alarm)) {
            this.mAlarmBatches.remove(whichBatch);
            addBatchLocked(this.mAlarmBatches, batch);
        }
    }

    int attemptCoalesceLocked(long whenElapsed, long maxWhen) {
        int N = this.mAlarmBatches.size();
        for (int i = 0; i < N; i++) {
            Batch b = this.mAlarmBatches.get(i);
            if ((b.flags & 1) == 0 && b.canHold(whenElapsed, maxWhen)) {
                return i;
            }
        }
        return -1;
    }

    static int getAlarmCount(ArrayList<Batch> batches) {
        int ret = 0;
        int size = batches.size();
        for (int i = 0; i < size; i++) {
            ret += batches.get(i).size();
        }
        return ret;
    }

    boolean haveAlarmsTimeTickAlarm(ArrayList<Alarm> alarms) {
        if (alarms.size() == 0) {
            return false;
        }
        int batchSize = alarms.size();
        for (int j = 0; j < batchSize; j++) {
            if (alarms.get(j).listener == this.mTimeTickTrigger) {
                return true;
            }
        }
        return false;
    }

    boolean haveBatchesTimeTickAlarm(ArrayList<Batch> batches) {
        int numBatches = batches.size();
        for (int i = 0; i < numBatches; i++) {
            if (haveAlarmsTimeTickAlarm(batches.get(i).alarms)) {
                return true;
            }
        }
        return false;
    }

    void rebatchAllAlarms() {
        synchronized (this.mLock) {
            rebatchAllAlarmsLocked(true);
        }
    }

    void rebatchAllAlarmsLocked(boolean doValidate) {
        long start = this.mStatLogger.getTime();
        int oldCount = getAlarmCount(this.mAlarmBatches) + ArrayUtils.size(this.mPendingWhileIdleAlarms);
        boolean oldHasTick = haveBatchesTimeTickAlarm(this.mAlarmBatches) || haveAlarmsTimeTickAlarm(this.mPendingWhileIdleAlarms);
        ArrayList<Batch> oldSet = (ArrayList) this.mAlarmBatches.clone();
        this.mAlarmBatches.clear();
        Alarm oldPendingIdleUntil = this.mPendingIdleUntil;
        long nowElapsed = this.mInjector.getElapsedRealtime();
        int oldBatches = oldSet.size();
        for (int batchNum = 0; batchNum < oldBatches; batchNum++) {
            Batch batch = oldSet.get(batchNum);
            int N = batch.size();
            for (int i = 0; i < N; i++) {
                reAddAlarmLocked(batch.get(i), nowElapsed, doValidate);
            }
        }
        if (oldPendingIdleUntil != null && oldPendingIdleUntil != this.mPendingIdleUntil) {
            Slog.wtf(TAG, "Rebatching: idle until changed from " + oldPendingIdleUntil + " to " + this.mPendingIdleUntil);
            if (this.mPendingIdleUntil == null) {
                restorePendingWhileIdleAlarmsLocked();
            }
        }
        int newCount = getAlarmCount(this.mAlarmBatches) + ArrayUtils.size(this.mPendingWhileIdleAlarms);
        boolean newHasTick = haveBatchesTimeTickAlarm(this.mAlarmBatches) || haveAlarmsTimeTickAlarm(this.mPendingWhileIdleAlarms);
        if (oldCount != newCount) {
            Slog.wtf(TAG, "Rebatching: total count changed from " + oldCount + " to " + newCount);
        }
        if (oldHasTick != newHasTick) {
            Slog.wtf(TAG, "Rebatching: hasTick changed from " + oldHasTick + " to " + newHasTick);
        }
        rescheduleKernelAlarmsLocked();
        updateNextAlarmClockLocked();
        this.mStatLogger.logDurationStat(0, start);
    }

    boolean reorderAlarmsBasedOnStandbyBuckets(ArraySet<Pair<String, Integer>> targetPackages) {
        long start = this.mStatLogger.getTime();
        ArrayList<Alarm> rescheduledAlarms = new ArrayList<>();
        for (int batchIndex = this.mAlarmBatches.size() - 1; batchIndex >= 0; batchIndex--) {
            Batch batch = this.mAlarmBatches.get(batchIndex);
            for (int alarmIndex = batch.size() - 1; alarmIndex >= 0; alarmIndex--) {
                Alarm alarm = batch.get(alarmIndex);
                Pair<String, Integer> packageUser = Pair.create(alarm.sourcePackage, Integer.valueOf(UserHandle.getUserId(alarm.creatorUid)));
                if ((targetPackages == null || targetPackages.contains(packageUser)) && adjustDeliveryTimeBasedOnBucketLocked(alarm)) {
                    batch.remove(alarm);
                    rescheduledAlarms.add(alarm);
                }
            }
            int alarmIndex2 = batch.size();
            if (alarmIndex2 == 0) {
                this.mAlarmBatches.remove(batchIndex);
            }
        }
        for (int i = 0; i < rescheduledAlarms.size(); i++) {
            Alarm a = rescheduledAlarms.get(i);
            insertAndBatchAlarmLocked(a);
        }
        this.mStatLogger.logDurationStat(1, start);
        return rescheduledAlarms.size() > 0;
    }

    void reAddAlarmLocked(Alarm a, long nowElapsed, boolean doValidate) {
        long maxElapsed;
        a.when = a.origWhen;
        long whenElapsed = convertToElapsed(a.when, a.type);
        if (a.windowLength == 0) {
            maxElapsed = whenElapsed;
        } else {
            long maxElapsed2 = a.windowLength;
            if (maxElapsed2 > 0) {
                maxElapsed = clampPositive(a.windowLength + whenElapsed);
            } else {
                maxElapsed = maxTriggerTime(nowElapsed, whenElapsed, a.repeatInterval);
            }
        }
        a.whenElapsed = whenElapsed;
        a.expectedWhenElapsed = whenElapsed;
        a.maxWhenElapsed = maxElapsed;
        a.expectedMaxWhenElapsed = maxElapsed;
        setImplLocked(a, true, doValidate);
    }

    static long clampPositive(long val) {
        return val >= 0 ? val : JobStatus.NO_LATEST_RUNTIME;
    }

    void sendPendingBackgroundAlarmsLocked(int uid, String packageName) throws Exception {
        ArrayList<Alarm> alarmsToDeliver;
        ArrayList<Alarm> alarmsForUid = this.mPendingBackgroundAlarms.get(uid);
        if (alarmsForUid == null || alarmsForUid.size() == 0) {
            return;
        }
        if (packageName != null) {
            alarmsToDeliver = new ArrayList<>();
            for (int i = alarmsForUid.size() - 1; i >= 0; i--) {
                Alarm a = alarmsForUid.get(i);
                if (a.matches(packageName)) {
                    alarmsToDeliver.add(alarmsForUid.remove(i));
                }
            }
            int i2 = alarmsForUid.size();
            if (i2 == 0) {
                this.mPendingBackgroundAlarms.remove(uid);
            }
        } else {
            alarmsToDeliver = alarmsForUid;
            this.mPendingBackgroundAlarms.remove(uid);
        }
        deliverPendingBackgroundAlarmsLocked(alarmsToDeliver, this.mInjector.getElapsedRealtime());
    }

    void sendAllUnrestrictedPendingBackgroundAlarmsLocked() throws Exception {
        ArrayList<Alarm> alarmsToDeliver = new ArrayList<>();
        findAllUnrestrictedPendingBackgroundAlarmsLockedInner(this.mPendingBackgroundAlarms, alarmsToDeliver, new Predicate() { // from class: com.android.server.-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.isBackgroundRestricted((AlarmManagerService.Alarm) obj);
            }
        });
        if (alarmsToDeliver.size() > 0) {
            deliverPendingBackgroundAlarmsLocked(alarmsToDeliver, this.mInjector.getElapsedRealtime());
        }
    }

    static void findAllUnrestrictedPendingBackgroundAlarmsLockedInner(SparseArray<ArrayList<Alarm>> pendingAlarms, ArrayList<Alarm> unrestrictedAlarms, Predicate<Alarm> isBackgroundRestricted) {
        for (int uidIndex = pendingAlarms.size() - 1; uidIndex >= 0; uidIndex--) {
            pendingAlarms.keyAt(uidIndex);
            ArrayList<Alarm> alarmsForUid = pendingAlarms.valueAt(uidIndex);
            for (int alarmIndex = alarmsForUid.size() - 1; alarmIndex >= 0; alarmIndex--) {
                Alarm alarm = alarmsForUid.get(alarmIndex);
                if (!isBackgroundRestricted.test(alarm)) {
                    unrestrictedAlarms.add(alarm);
                    alarmsForUid.remove(alarmIndex);
                }
            }
            int alarmIndex2 = alarmsForUid.size();
            if (alarmIndex2 == 0) {
                pendingAlarms.removeAt(uidIndex);
            }
        }
    }

    private void deliverPendingBackgroundAlarmsLocked(ArrayList<Alarm> alarms, long nowELAPSED) throws Exception {
        AlarmManagerService alarmManagerService;
        long j;
        boolean hasWakeup;
        int N;
        int N2 = alarms.size();
        boolean hasWakeup2 = false;
        int i = 0;
        while (i < N2) {
            Alarm alarm = alarms.get(i);
            if (!alarm.wakeup) {
                hasWakeup = hasWakeup2;
            } else {
                hasWakeup = true;
            }
            alarm.count = 1;
            if (alarm.repeatInterval > 0) {
                alarm.count = (int) (((long) alarm.count) + ((nowELAPSED - alarm.expectedWhenElapsed) / alarm.repeatInterval));
                long delta = ((long) alarm.count) * alarm.repeatInterval;
                long nextElapsed = alarm.expectedWhenElapsed + delta;
                N = N2;
                setImplLocked(alarm.type, alarm.when + delta, nextElapsed, alarm.windowLength, maxTriggerTime(nowELAPSED, nextElapsed, alarm.repeatInterval), alarm.repeatInterval, alarm.operation, null, null, alarm.flags, true, alarm.workSource, alarm.alarmClock, alarm.uid, alarm.packageName);
            } else {
                N = N2;
            }
            i++;
            hasWakeup2 = hasWakeup;
            N2 = N;
        }
        if (hasWakeup2) {
            alarmManagerService = this;
            j = nowELAPSED;
        } else {
            alarmManagerService = this;
            j = nowELAPSED;
            if (alarmManagerService.checkAllowNonWakeupDelayLocked(j)) {
                if (alarmManagerService.mPendingNonWakeupAlarms.size() == 0) {
                    alarmManagerService.mStartCurrentDelayTime = j;
                    alarmManagerService.mNextNonWakeupDeliveryTime = ((alarmManagerService.currentNonWakeupFuzzLocked(j) * 3) / 2) + j;
                }
                alarmManagerService.mPendingNonWakeupAlarms.addAll(alarms);
                alarmManagerService.mNumDelayedAlarms += alarms.size();
                return;
            }
        }
        if (alarmManagerService.mPendingNonWakeupAlarms.size() > 0) {
            alarms.addAll(alarmManagerService.mPendingNonWakeupAlarms);
            long thisDelayTime = j - alarmManagerService.mStartCurrentDelayTime;
            alarmManagerService.mTotalDelayTime += thisDelayTime;
            if (alarmManagerService.mMaxDelayTime < thisDelayTime) {
                alarmManagerService.mMaxDelayTime = thisDelayTime;
            }
            alarmManagerService.mPendingNonWakeupAlarms.clear();
        }
        calculateDeliveryPriorities(alarms);
        Collections.sort(alarms, alarmManagerService.mAlarmDispatchComparator);
        deliverAlarmsLocked(alarms, nowELAPSED);
    }

    void restorePendingWhileIdleAlarmsLocked() {
        if (this.mPendingWhileIdleAlarms.size() > 0) {
            ArrayList<Alarm> alarms = this.mPendingWhileIdleAlarms;
            this.mPendingWhileIdleAlarms = new ArrayList<>();
            long nowElapsed = this.mInjector.getElapsedRealtime();
            for (int i = alarms.size() - 1; i >= 0; i--) {
                Alarm a = alarms.get(i);
                reAddAlarmLocked(a, nowElapsed, false);
            }
        }
        rescheduleKernelAlarmsLocked();
        updateNextAlarmClockLocked();
    }

    static final class InFlight {
        final int mAlarmType;
        final BroadcastStats mBroadcastStats;
        final int mCreatorUid;
        final FilterStats mFilterStats;
        final IBinder mListener;
        final PendingIntent mPendingIntent;
        final String mTag;
        final int mUid;
        final long mWhenElapsed;
        final WorkSource mWorkSource;

        InFlight(AlarmManagerService service, Alarm alarm, long nowELAPSED) {
            this.mPendingIntent = alarm.operation;
            this.mWhenElapsed = nowELAPSED;
            this.mListener = alarm.listener != null ? alarm.listener.asBinder() : null;
            this.mWorkSource = alarm.workSource;
            this.mUid = alarm.uid;
            this.mCreatorUid = alarm.creatorUid;
            this.mTag = alarm.statsTag;
            BroadcastStats statsLocked = alarm.operation != null ? service.getStatsLocked(alarm.operation) : service.getStatsLocked(alarm.uid, alarm.packageName);
            this.mBroadcastStats = statsLocked;
            FilterStats fs = statsLocked.filterStats.get(this.mTag);
            if (fs == null) {
                fs = new FilterStats(this.mBroadcastStats, this.mTag);
                this.mBroadcastStats.filterStats.put(this.mTag, fs);
            }
            fs.lastTime = nowELAPSED;
            this.mFilterStats = fs;
            this.mAlarmType = alarm.type;
        }

        boolean isBroadcast() {
            PendingIntent pendingIntent = this.mPendingIntent;
            return pendingIntent != null && pendingIntent.isBroadcast();
        }

        public String toString() {
            return "InFlight{pendingIntent=" + this.mPendingIntent + ", when=" + this.mWhenElapsed + ", workSource=" + this.mWorkSource + ", uid=" + this.mUid + ", creatorUid=" + this.mCreatorUid + ", tag=" + this.mTag + ", broadcastStats=" + this.mBroadcastStats + ", filterStats=" + this.mFilterStats + ", alarmType=" + this.mAlarmType + "}";
        }

        public void dumpDebug(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1120986464257L, this.mUid);
            proto.write(1138166333442L, this.mTag);
            proto.write(1112396529667L, this.mWhenElapsed);
            proto.write(1159641169924L, this.mAlarmType);
            PendingIntent pendingIntent = this.mPendingIntent;
            if (pendingIntent != null) {
                pendingIntent.dumpDebug(proto, 1146756268037L);
            }
            BroadcastStats broadcastStats = this.mBroadcastStats;
            if (broadcastStats != null) {
                broadcastStats.dumpDebug(proto, 1146756268038L);
            }
            FilterStats filterStats = this.mFilterStats;
            if (filterStats != null) {
                filterStats.dumpDebug(proto, 1146756268039L);
            }
            WorkSource workSource = this.mWorkSource;
            if (workSource != null) {
                workSource.dumpDebug(proto, 1146756268040L);
            }
            proto.end(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBroadcastAlarmPendingLocked(int uid) {
        int numListeners = this.mInFlightListeners.size();
        for (int i = 0; i < numListeners; i++) {
            this.mInFlightListeners.get(i).broadcastAlarmPending(uid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBroadcastAlarmCompleteLocked(int uid) {
        int numListeners = this.mInFlightListeners.size();
        for (int i = 0; i < numListeners; i++) {
            this.mInFlightListeners.get(i).broadcastAlarmComplete(uid);
        }
    }

    static final class FilterStats {
        long aggregateTime;
        int count;
        long lastTime;
        final BroadcastStats mBroadcastStats;
        final String mTag;
        int nesting;
        int numWakeup;
        long startTime;

        FilterStats(BroadcastStats broadcastStats, String tag) {
            this.mBroadcastStats = broadcastStats;
            this.mTag = tag;
        }

        public String toString() {
            return "FilterStats{tag=" + this.mTag + ", lastTime=" + this.lastTime + ", aggregateTime=" + this.aggregateTime + ", count=" + this.count + ", numWakeup=" + this.numWakeup + ", startTime=" + this.startTime + ", nesting=" + this.nesting + "}";
        }

        public void dumpDebug(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1138166333441L, this.mTag);
            proto.write(1112396529666L, this.lastTime);
            proto.write(1112396529667L, this.aggregateTime);
            proto.write(1120986464260L, this.count);
            proto.write(1120986464261L, this.numWakeup);
            proto.write(1112396529670L, this.startTime);
            proto.write(1120986464263L, this.nesting);
            proto.end(token);
        }
    }

    static final class BroadcastStats {
        long aggregateTime;
        int count;
        final ArrayMap<String, FilterStats> filterStats = new ArrayMap<>();
        final String mPackageName;
        final int mUid;
        int nesting;
        int numWakeup;
        long startTime;

        BroadcastStats(int uid, String packageName) {
            this.mUid = uid;
            this.mPackageName = packageName;
        }

        public String toString() {
            return "BroadcastStats{uid=" + this.mUid + ", packageName=" + this.mPackageName + ", aggregateTime=" + this.aggregateTime + ", count=" + this.count + ", numWakeup=" + this.numWakeup + ", startTime=" + this.startTime + ", nesting=" + this.nesting + "}";
        }

        public void dumpDebug(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1120986464257L, this.mUid);
            proto.write(1138166333442L, this.mPackageName);
            proto.write(1112396529667L, this.aggregateTime);
            proto.write(1120986464260L, this.count);
            proto.write(1120986464261L, this.numWakeup);
            proto.write(1112396529670L, this.startTime);
            proto.write(1120986464263L, this.nesting);
            proto.end(token);
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        this.mInjector.init();
        this.mActivityOptsRestrictBal.setPendingIntentBackgroundActivityLaunchAllowed(false);
        this.mBroadcastOptsRestrictBal.setPendingIntentBackgroundActivityLaunchAllowed(false);
        this.mListenerDeathRecipient = new IBinder.DeathRecipient() { // from class: com.android.server.AlarmManagerService.2
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied(IBinder who) {
                IAlarmListener listener = IAlarmListener.Stub.asInterface(who);
                AlarmManagerService.this.removeImpl(null, listener);
            }
        };
        synchronized (this.mLock) {
            this.mHandler = new AlarmHandler();
            this.mConstants = new Constants(this.mHandler);
            this.mAppWakeupHistory = new AppWakeupHistory(AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT);
            this.mNextNonWakeup = 0L;
            this.mNextWakeup = 0L;
            setTimeZoneImpl(SystemProperties.get(TIMEZONE_PROPERTY));
            long systemBuildTime = Long.max(SystemProperties.getLong("ro.build.date.utc", -1L) * 1000, Long.max(Environment.getRootDirectory().lastModified(), Build.TIME));
            boolean systemBuildTimeDisabled = SystemProperties.getBoolean("ro.build.date.disabled", false);
            if (!systemBuildTimeDisabled && this.mInjector.getCurrentTimeMillis() < systemBuildTime) {
                Slog.i(TAG, "Current time only " + this.mInjector.getCurrentTimeMillis() + ", advancing to build time " + systemBuildTime);
                this.mInjector.setKernelTime(systemBuildTime);
            }
            int systemUiUid = this.mInjector.getSystemUiUid();
            this.mSystemUiUid = systemUiUid;
            if (systemUiUid <= 0) {
                Slog.wtf(TAG, "SysUI package not found!");
            }
            this.mWakeLock = this.mInjector.getAlarmWakeLock();
            this.mTimeTickIntent = new Intent("android.intent.action.TIME_TICK").addFlags(1344274432);
            this.mTimeTickTrigger = new AnonymousClass3();
            this.mSyncTimeToQNX = new AnonymousClass4();
            this.mLastTimeChangeClockTime = this.mInjector.getCurrentTimeMillis();
            this.mLastTimeChangeRealtime = this.mInjector.getElapsedRealtime();
            Intent intent = new Intent("android.intent.action.DATE_CHANGED");
            intent.addFlags(538968064);
            this.mDateChangeSender = PendingIntent.getBroadcastAsUser(getContext(), 0, intent, 67108864, UserHandle.ALL);
            this.mClockReceiver = this.mInjector.getClockReceiver(this);
            new ChargingReceiver();
            new InteractiveStateReceiver();
            new UninstallReceiver();
            if (this.mInjector.isAlarmDriverPresent()) {
                AlarmThread waitThread = new AlarmThread();
                waitThread.start();
            } else {
                Slog.w(TAG, "Failed to open alarm driver. Falling back to a handler.");
            }
            try {
                ActivityManager.getService().registerUidObserver(new UidObserver(), 14, -1, (String) null);
            } catch (RemoteException e) {
            }
        }
        publishLocalService(AlarmManagerInternal.class, new LocalService());
        publishBinderService("alarm", this.mService);
    }

    /* JADX INFO: renamed from: com.android.server.AlarmManagerService$3, reason: invalid class name */
    class AnonymousClass3 extends IAlarmListener.Stub {
        AnonymousClass3() {
        }

        public void doAlarm(final IAlarmCompleteListener callback) throws Throwable {
            AlarmManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$AlarmManagerService$3$jIkPWjqS66vG6aFVQoHxR2w4HPE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doAlarm$0$AlarmManagerService$3(callback);
                }
            });
            synchronized (AlarmManagerService.this.mLock) {
                AlarmManagerService.this.mLastTickReceived = AlarmManagerService.this.mInjector.getCurrentTimeMillis();
            }
            AlarmManagerService.this.mClockReceiver.scheduleTimeTickEvent();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ void lambda$doAlarm$0$AlarmManagerService$3(IAlarmCompleteListener callback) {
            AlarmManagerService.this.getContext().sendBroadcastAsUser(AlarmManagerService.this.mTimeTickIntent, UserHandle.ALL);
            try {
                callback.alarmComplete(this);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: renamed from: com.android.server.AlarmManagerService$4, reason: invalid class name */
    class AnonymousClass4 extends IAlarmListener.Stub {
        AnonymousClass4() {
        }

        public void doAlarm(final IAlarmCompleteListener callback) throws Throwable {
            Slog.v(AlarmManagerService.TAG, "Received SyncTimeToQNX alarm");
            AlarmManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$AlarmManagerService$4$61LWGJpm1IjCxt79bx6VC5QZ0O0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doAlarm$0$AlarmManagerService$4(callback);
                }
            });
            AlarmManagerService.this.mClockReceiver.scheduleSyncTimeToQNXEvent();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ void lambda$doAlarm$0$AlarmManagerService$4(IAlarmCompleteListener callback) {
            long current_time = AlarmManagerService.this.mInjector.getCurrentTimeMillis();
            AlarmManagerService.this.setTimeImpl(current_time);
            try {
                callback.alarmComplete(this);
            } catch (RemoteException e) {
            }
        }
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 500) {
            synchronized (this.mLock) {
                this.mConstants.start(getContext().getContentResolver());
                this.mAppOps = (AppOpsManager) getContext().getSystemService("appops");
                this.mLocalDeviceIdleController = (DeviceIdleInternal) LocalServices.getService(DeviceIdleInternal.class);
                this.mUsageStatsManagerInternal = (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
                AppStandbyInternal appStandbyInternal = (AppStandbyInternal) LocalServices.getService(AppStandbyInternal.class);
                appStandbyInternal.addListener(new AppStandbyTracker());
                AppStateTracker appStateTracker = (AppStateTracker) LocalServices.getService(AppStateTracker.class);
                this.mAppStateTracker = appStateTracker;
                appStateTracker.addListener(this.mForceAppStandbyListener);
                this.mClockReceiver.scheduleTimeTickEvent();
                this.mClockReceiver.scheduleDateChangedEvent();
                this.mClockReceiver.scheduleSyncTimeToQNXEvent();
            }
        }
    }

    protected void finalize() throws Throwable {
        try {
            this.mInjector.close();
        } finally {
            super.finalize();
        }
    }

    boolean setTimeImpl(long millis) {
        if (!this.mInjector.isAlarmDriverPresent()) {
            Slog.w(TAG, "Not setting time since no alarm driver is available.");
            return false;
        }
        synchronized (this.mLock) {
            long currentTimeMillis = this.mInjector.getCurrentTimeMillis();
            this.mInjector.setKernelTime(millis);
            TimeZone timeZone = TimeZone.getDefault();
            int currentTzOffset = timeZone.getOffset(currentTimeMillis);
            int newTzOffset = timeZone.getOffset(millis);
            if (currentTzOffset != newTzOffset) {
                Slog.i(TAG, "Timezone offset has changed, updating kernel timezone");
                this.mInjector.setKernelTimezone(-(newTzOffset / 60000));
            }
        }
        return true;
    }

    void setTimeZoneImpl(String tz) throws Throwable {
        if (TextUtils.isEmpty(tz)) {
            return;
        }
        TimeZone zone = TimeZone.getTimeZone(tz);
        boolean timeZoneWasChanged = false;
        synchronized (this) {
            String current = SystemProperties.get(TIMEZONE_PROPERTY);
            if (current == null || !current.equals(zone.getID())) {
                timeZoneWasChanged = true;
                SystemProperties.set(TIMEZONE_PROPERTY, zone.getID());
            }
            int gmtOffset = zone.getOffset(this.mInjector.getCurrentTimeMillis());
            this.mInjector.setKernelTimezone(-(gmtOffset / 60000));
        }
        TimeZone.setDefault(null);
        if (timeZoneWasChanged) {
            this.mClockReceiver.scheduleDateChangedEvent();
            Intent intent = new Intent("android.intent.action.TIMEZONE_CHANGED");
            intent.addFlags(622854144);
            intent.putExtra("time-zone", zone.getID());
            getContext().sendBroadcastAsUser(intent, UserHandle.ALL);
        }
    }

    void removeImpl(PendingIntent operation, IAlarmListener listener) {
        synchronized (this.mLock) {
            removeLocked(operation, listener);
        }
    }

    void setImpl(int type, long triggerAtTime, long windowLength, long interval, PendingIntent operation, IAlarmListener directReceiver, String listenerTag, int flags, WorkSource workSource, AlarmManager.AlarmClockInfo alarmClock, int callingUid, String callingPackage) throws Throwable {
        long interval2;
        long triggerAtTime2;
        long maxElapsed;
        long windowLength2;
        long windowLength3 = windowLength;
        if ((operation == null && directReceiver == null) || (operation != null && directReceiver != null)) {
            Slog.w(TAG, "Alarms must either supply a PendingIntent or an AlarmReceiver");
            return;
        }
        if (directReceiver != null) {
            try {
                directReceiver.asBinder().linkToDeath(this.mListenerDeathRecipient, 0);
            } catch (RemoteException e) {
                Slog.w(TAG, "Dropping unreachable alarm listener " + listenerTag);
                return;
            }
        }
        if (windowLength3 > AppStandbyController.SettingsObserver.DEFAULT_NOTIFICATION_TIMEOUT) {
            Slog.w(TAG, "Window length " + windowLength3 + "ms suspiciously long; limiting to 1 hour");
            windowLength3 = AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT;
        }
        long minInterval = this.mConstants.MIN_INTERVAL;
        if (interval > 0 && interval < minInterval) {
            Slog.w(TAG, "Suspiciously short interval " + interval + " millis; expanding to " + (minInterval / 1000) + " seconds");
            interval2 = minInterval;
        } else if (interval <= this.mConstants.MAX_INTERVAL) {
            interval2 = interval;
        } else {
            Slog.w(TAG, "Suspiciously long interval " + interval + " millis; clamping");
            interval2 = this.mConstants.MAX_INTERVAL;
        }
        if (type < 0 || type > 3) {
            throw new IllegalArgumentException("Invalid alarm type " + type);
        }
        if (triggerAtTime >= 0) {
            triggerAtTime2 = triggerAtTime;
        } else {
            long what = Binder.getCallingPid();
            Slog.w(TAG, "Invalid alarm trigger time! " + triggerAtTime + " from uid=" + callingUid + " pid=" + what);
            triggerAtTime2 = 0L;
        }
        long nowElapsed = this.mInjector.getElapsedRealtime();
        long nominalTrigger = convertToElapsed(triggerAtTime2, type);
        long minTrigger = nowElapsed + (UserHandle.isCore(callingUid) ? 0L : this.mConstants.MIN_FUTURITY);
        long triggerElapsed = nominalTrigger > minTrigger ? nominalTrigger : minTrigger;
        if (windowLength3 == 0) {
            maxElapsed = triggerElapsed;
            windowLength2 = windowLength3;
        } else if (windowLength3 < 0) {
            long maxElapsed2 = maxTriggerTime(nowElapsed, triggerElapsed, interval2);
            long windowLength4 = maxElapsed2 - triggerElapsed;
            maxElapsed = maxElapsed2;
            windowLength2 = windowLength4;
        } else {
            long maxElapsed3 = triggerElapsed + windowLength3;
            maxElapsed = maxElapsed3;
            windowLength2 = windowLength3;
        }
        synchronized (this.mLock) {
            try {
                try {
                    if (this.mAlarmsPerUid.get(callingUid, 0) >= this.mConstants.MAX_ALARMS_PER_UID) {
                        try {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Maximum limit of concurrent alarms ");
                            sb.append(this.mConstants.MAX_ALARMS_PER_UID);
                            sb.append(" reached for uid: ");
                            sb.append(UserHandle.formatUid(callingUid));
                            sb.append(", callingPackage: ");
                            try {
                                sb.append(callingPackage);
                                String errorMsg = sb.toString();
                                Slog.w(TAG, errorMsg);
                                if (UserHandle.isCore(callingUid)) {
                                    logAllAlarmsForUidLocked(callingUid);
                                }
                                if (callingUid != 1000) {
                                    throw new IllegalStateException(errorMsg);
                                }
                                EventLog.writeEvent(1397638484, "234441463", -1, errorMsg);
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    setImplLocked(type, triggerAtTime2, triggerElapsed, windowLength2, maxElapsed, interval2, operation, directReceiver, listenerTag, flags, true, workSource, alarmClock, callingUid, callingPackage);
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    private void logAllAlarmsForUidLocked(int uid) {
        StringWriter logWriter = new StringWriter();
        PrintWriter pw = new PrintWriter(logWriter);
        pw.println("List of all pending alarms for " + UserHandle.formatUid(uid) + ":");
        dumpUpcomingNAlarmsForUid(pw, uid, this.mConstants.MAX_ALARMS_PER_UID);
        pw.flush();
        Slog.d(TAG, logWriter.toString());
    }

    private void dumpUpcomingNAlarmsForUid(PrintWriter pw, int uid, int n) {
        AlarmManagerService alarmManagerService = this;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long nowElapsed = alarmManagerService.mInjector.getElapsedRealtime();
        long nowRtc = alarmManagerService.mInjector.getCurrentTimeMillis();
        int count = 0;
        int i = 0;
        while (i < alarmManagerService.mAlarmBatches.size() && count < n) {
            int j = 0;
            for (Batch b = alarmManagerService.mAlarmBatches.get(i); j < b.size() && count < n; b = b) {
                Alarm a = b.get(j);
                if (a.uid == uid) {
                    String label = labelForType(a.type);
                    StringBuilder sb = new StringBuilder();
                    sb.append(label);
                    sb.append(" #");
                    int count2 = count + 1;
                    sb.append(count2);
                    sb.append(": ");
                    pw.print(sb.toString());
                    pw.println(a);
                    a.dump(pw, "  ", nowElapsed, nowRtc, sdf);
                    count = count2;
                }
                j++;
            }
            i++;
            alarmManagerService = this;
        }
    }

    private void setImplLocked(int type, long when, long whenElapsed, long windowLength, long maxWhen, long interval, PendingIntent operation, IAlarmListener directReceiver, String listenerTag, int flags, boolean doValidate, WorkSource workSource, AlarmManager.AlarmClockInfo alarmClock, int callingUid, String callingPackage) {
        Alarm a = new Alarm(type, when, whenElapsed, windowLength, maxWhen, interval, operation, directReceiver, listenerTag, workSource, flags, alarmClock, callingUid, callingPackage);
        try {
            try {
                if (ActivityManager.getService().isAppStartModeDisabled(callingUid, callingPackage)) {
                    Slog.w(TAG, "Not setting alarm from " + callingUid + ":" + a + " -- package not allowed to start");
                    return;
                }
            } catch (RemoteException e) {
            }
        } catch (RemoteException e2) {
        }
        removeLocked(operation, directReceiver);
        incrementAlarmCount(a.uid);
        setImplLocked(a, false, doValidate);
    }

    int getQuotaForBucketLocked(int bucket) {
        int index;
        if (bucket <= 10) {
            index = 0;
        } else if (bucket <= 20) {
            index = 1;
        } else if (bucket <= 30) {
            index = 2;
        } else if (bucket < 50) {
            index = 3;
        } else {
            index = 4;
        }
        return this.mConstants.APP_STANDBY_QUOTAS[index];
    }

    private boolean adjustDeliveryTimeBasedOnBucketLocked(Alarm alarm) {
        long oldWhenElapsed;
        long t;
        if (isExemptFromAppStandby(alarm)) {
            return false;
        }
        if (this.mAppStandbyParole) {
            if (alarm.whenElapsed <= alarm.expectedWhenElapsed) {
                return false;
            }
            alarm.whenElapsed = alarm.expectedWhenElapsed;
            alarm.maxWhenElapsed = alarm.expectedMaxWhenElapsed;
            return true;
        }
        long oldWhenElapsed2 = alarm.whenElapsed;
        long oldMaxWhenElapsed = alarm.maxWhenElapsed;
        String sourcePackage = alarm.sourcePackage;
        int sourceUserId = UserHandle.getUserId(alarm.creatorUid);
        int standbyBucket = this.mUsageStatsManagerInternal.getAppStandbyBucket(sourcePackage, sourceUserId, this.mInjector.getElapsedRealtime());
        boolean deferred = false;
        int wakeupsInWindow = this.mAppWakeupHistory.getTotalWakeupsInWindow(sourcePackage, sourceUserId);
        if (standbyBucket == 45) {
            if (wakeupsInWindow > 0) {
                long lastWakeupTime = this.mAppWakeupHistory.getNthLastWakeupForPackage(sourcePackage, sourceUserId, this.mConstants.APP_STANDBY_RESTRICTED_QUOTA);
                oldWhenElapsed = oldWhenElapsed2;
                if (this.mInjector.getElapsedRealtime() - lastWakeupTime < this.mConstants.APP_STANDBY_RESTRICTED_WINDOW) {
                    long minElapsed = this.mConstants.APP_STANDBY_RESTRICTED_WINDOW + lastWakeupTime;
                    if (alarm.expectedWhenElapsed < minElapsed) {
                        alarm.maxWhenElapsed = minElapsed;
                        alarm.whenElapsed = minElapsed;
                        deferred = true;
                    }
                }
            } else {
                oldWhenElapsed = oldWhenElapsed2;
            }
        } else {
            oldWhenElapsed = oldWhenElapsed2;
            int quotaForBucket = getQuotaForBucketLocked(standbyBucket);
            if (wakeupsInWindow >= quotaForBucket) {
                if (quotaForBucket <= 0) {
                    t = this.mInjector.getElapsedRealtime() + 86400000;
                } else {
                    long t2 = this.mAppWakeupHistory.getNthLastWakeupForPackage(sourcePackage, sourceUserId, quotaForBucket);
                    t = this.mConstants.APP_STANDBY_WINDOW + t2;
                }
                if (alarm.expectedWhenElapsed < t) {
                    alarm.maxWhenElapsed = t;
                    alarm.whenElapsed = t;
                    deferred = true;
                }
            }
        }
        if (!deferred) {
            alarm.whenElapsed = alarm.expectedWhenElapsed;
            alarm.maxWhenElapsed = alarm.expectedMaxWhenElapsed;
        }
        return (oldWhenElapsed == alarm.whenElapsed && oldMaxWhenElapsed == alarm.maxWhenElapsed) ? false : true;
    }

    private void setImplLocked(Alarm a, boolean rebatching, boolean doValidate) {
        Alarm alarm;
        if ((a.flags & 16) != 0) {
            if (this.mNextWakeFromIdle != null && a.whenElapsed > this.mNextWakeFromIdle.whenElapsed) {
                long j = this.mNextWakeFromIdle.whenElapsed;
                a.maxWhenElapsed = j;
                a.whenElapsed = j;
                a.when = j;
            }
            long nowElapsed = this.mInjector.getElapsedRealtime();
            int fuzz = fuzzForDuration(a.whenElapsed - nowElapsed);
            if (fuzz > 0) {
                if (this.mRandom == null) {
                    this.mRandom = new Random();
                }
                int delta = this.mRandom.nextInt(fuzz);
                a.whenElapsed -= (long) delta;
                long j2 = a.whenElapsed;
                a.maxWhenElapsed = j2;
                a.when = j2;
            }
        } else if (this.mPendingIdleUntil != null && (a.flags & 14) == 0) {
            this.mPendingWhileIdleAlarms.add(a);
            return;
        }
        adjustDeliveryTimeBasedOnBucketLocked(a);
        insertAndBatchAlarmLocked(a);
        if (a.alarmClock != null) {
            this.mNextAlarmClockMayChange = true;
        }
        boolean needRebatch = false;
        if ((a.flags & 16) != 0) {
            Alarm alarm2 = this.mPendingIdleUntil;
            if (alarm2 != a && alarm2 != null) {
                Slog.wtfStack(TAG, "setImplLocked: idle until changed from " + this.mPendingIdleUntil + " to " + a);
            }
            this.mPendingIdleUntil = a;
            needRebatch = true;
        } else if ((a.flags & 2) != 0 && ((alarm = this.mNextWakeFromIdle) == null || alarm.whenElapsed > a.whenElapsed)) {
            this.mNextWakeFromIdle = a;
            if (this.mPendingIdleUntil != null) {
                needRebatch = true;
            }
        }
        if (!rebatching) {
            if (needRebatch) {
                rebatchAllAlarmsLocked(false);
            }
            rescheduleKernelAlarmsLocked();
            updateNextAlarmClockLocked();
        }
    }

    private final class LocalService implements AlarmManagerInternal {
        private LocalService() {
        }

        @Override // com.android.server.AlarmManagerInternal
        public boolean isIdling() {
            return AlarmManagerService.this.isIdlingImpl();
        }

        @Override // com.android.server.AlarmManagerInternal
        public void removeAlarmsForUid(int uid) {
            synchronized (AlarmManagerService.this.mLock) {
                AlarmManagerService.this.removeLocked(uid);
            }
        }

        @Override // com.android.server.AlarmManagerInternal
        public void remove(PendingIntent pi) {
            AlarmManagerService.this.mHandler.obtainMessage(8, pi).sendToTarget();
        }

        @Override // com.android.server.AlarmManagerInternal
        public void registerInFlightListener(AlarmManagerInternal.InFlightListener callback) {
            synchronized (AlarmManagerService.this.mLock) {
                AlarmManagerService.this.mInFlightListeners.add(callback);
            }
        }
    }

    void dumpImpl(PrintWriter pw) {
        SimpleDateFormat sdf;
        long j;
        long nextNonWakeupRTC;
        synchronized (this.mLock) {
            pw.println("Current Alarm Manager state:");
            this.mConstants.dump(pw, "  ");
            pw.println();
            if (this.mAppStateTracker != null) {
                this.mAppStateTracker.dump(pw, "  ");
                pw.println();
            }
            pw.println("  App Standby Parole: " + this.mAppStandbyParole);
            pw.println();
            long nowELAPSED = this.mInjector.getElapsedRealtime();
            long nowUPTIME = SystemClock.uptimeMillis();
            long nowRTC = this.mInjector.getCurrentTimeMillis();
            SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
            pw.print("  nowRTC=");
            pw.print(nowRTC);
            pw.print("=");
            pw.print(sdf2.format(new Date(nowRTC)));
            pw.print(" nowELAPSED=");
            pw.print(nowELAPSED);
            pw.println();
            pw.print("  mLastTimeChangeClockTime=");
            pw.print(this.mLastTimeChangeClockTime);
            pw.print("=");
            pw.println(sdf2.format(new Date(this.mLastTimeChangeClockTime)));
            pw.print("  mLastTimeChangeRealtime=");
            pw.println(this.mLastTimeChangeRealtime);
            pw.print("  mLastTickReceived=");
            pw.println(sdf2.format(new Date(this.mLastTickReceived)));
            pw.print("  mLastTickSet=");
            pw.println(sdf2.format(new Date(this.mLastTickSet)));
            pw.print("  mLastTickAdded=");
            pw.println(sdf2.format(new Date(this.mLastTickAdded)));
            pw.print("  mLastTickRemoved=");
            pw.println(sdf2.format(new Date(this.mLastTickRemoved)));
            pw.println();
            pw.println("  Recent TIME_TICK history:");
            int i = this.mNextTickHistory;
            do {
                i--;
                if (i < 0) {
                    i = 9;
                }
                long time = this.mTickHistory[i];
                pw.print("    ");
                pw.println(time > 0 ? sdf2.format(new Date(nowRTC - (nowELAPSED - time))) : "-");
            } while (i != this.mNextTickHistory);
            SystemServiceManager ssm = (SystemServiceManager) LocalServices.getService(SystemServiceManager.class);
            if (ssm != null) {
                pw.println();
                pw.print("  RuntimeStarted=");
                pw.print(sdf2.format(new Date((nowRTC - nowELAPSED) + ssm.getRuntimeStartElapsedTime())));
                if (ssm.isRuntimeRestarted()) {
                    pw.print("  (Runtime restarted)");
                }
                pw.println();
                pw.print("  Runtime uptime (elapsed): ");
                TimeUtils.formatDuration(nowELAPSED, ssm.getRuntimeStartElapsedTime(), pw);
                pw.println();
                pw.print("  Runtime uptime (uptime): ");
                TimeUtils.formatDuration(nowUPTIME, ssm.getRuntimeStartUptime(), pw);
                pw.println();
            }
            pw.println();
            if (!this.mInteractive) {
                pw.print("  Time since non-interactive: ");
                TimeUtils.formatDuration(nowELAPSED - this.mNonInteractiveStartTime, pw);
                pw.println();
            }
            pw.print("  Max wakeup delay: ");
            TimeUtils.formatDuration(currentNonWakeupFuzzLocked(nowELAPSED), pw);
            pw.println();
            pw.print("  Time since last dispatch: ");
            TimeUtils.formatDuration(nowELAPSED - this.mLastAlarmDeliveryTime, pw);
            pw.println();
            pw.print("  Next non-wakeup delivery time: ");
            TimeUtils.formatDuration(this.mNextNonWakeupDeliveryTime, nowELAPSED, pw);
            pw.println();
            long nextWakeupRTC = this.mNextWakeup + (nowRTC - nowELAPSED);
            long nextNonWakeupRTC2 = this.mNextNonWakeup + (nowRTC - nowELAPSED);
            pw.print("  Next non-wakeup alarm: ");
            long nowUPTIME2 = this.mNextNonWakeup;
            TimeUtils.formatDuration(nowUPTIME2, nowELAPSED, pw);
            pw.print(" = ");
            pw.print(this.mNextNonWakeup);
            pw.print(" = ");
            pw.println(sdf2.format(new Date(nextNonWakeupRTC2)));
            pw.print("    set at ");
            TimeUtils.formatDuration(this.mNextNonWakeUpSetAt, nowELAPSED, pw);
            pw.println();
            pw.print("  Next wakeup alarm: ");
            TimeUtils.formatDuration(this.mNextWakeup, nowELAPSED, pw);
            pw.print(" = ");
            pw.print(this.mNextWakeup);
            pw.print(" = ");
            pw.println(sdf2.format(new Date(nextWakeupRTC)));
            pw.print("    set at ");
            TimeUtils.formatDuration(this.mNextWakeUpSetAt, nowELAPSED, pw);
            pw.println();
            pw.print("  Next kernel non-wakeup alarm: ");
            TimeUtils.formatDuration(this.mInjector.getNextAlarm(3), pw);
            pw.println();
            pw.print("  Next kernel wakeup alarm: ");
            TimeUtils.formatDuration(this.mInjector.getNextAlarm(2), pw);
            pw.println();
            pw.print("  Last wakeup: ");
            TimeUtils.formatDuration(this.mLastWakeup, nowELAPSED, pw);
            pw.print(" = ");
            pw.println(this.mLastWakeup);
            pw.print("  Last trigger: ");
            TimeUtils.formatDuration(this.mLastTrigger, nowELAPSED, pw);
            pw.print(" = ");
            pw.println(this.mLastTrigger);
            pw.print("  Num time change events: ");
            pw.println(this.mNumTimeChanged);
            pw.println();
            pw.println("  Next alarm clock information: ");
            TreeSet<Integer> users = new TreeSet<>();
            for (int i2 = 0; i2 < this.mNextAlarmClockForUser.size(); i2++) {
                users.add(Integer.valueOf(this.mNextAlarmClockForUser.keyAt(i2)));
            }
            for (int i3 = 0; i3 < this.mPendingSendNextAlarmClockChangedForUser.size(); i3++) {
                users.add(Integer.valueOf(this.mPendingSendNextAlarmClockChangedForUser.keyAt(i3)));
            }
            Iterator<Integer> it = users.iterator();
            while (it.hasNext()) {
                int user = it.next().intValue();
                Iterator<Integer> it2 = it;
                AlarmManager.AlarmClockInfo next = this.mNextAlarmClockForUser.get(user);
                long time2 = next != null ? next.getTriggerTime() : 0L;
                boolean pendingSend = this.mPendingSendNextAlarmClockChangedForUser.get(user);
                long nextNonWakeupRTC3 = nextNonWakeupRTC2;
                pw.print("    user:");
                pw.print(user);
                pw.print(" pendingSend:");
                pw.print(pendingSend);
                pw.print(" time:");
                pw.print(time2);
                if (time2 > 0) {
                    pw.print(" = ");
                    pw.print(sdf2.format(new Date(time2)));
                    pw.print(" = ");
                    TimeUtils.formatDuration(time2, nowRTC, pw);
                }
                pw.println();
                it = it2;
                nextNonWakeupRTC2 = nextNonWakeupRTC3;
            }
            long nowRTC2 = nextNonWakeupRTC2;
            long nextWakeupRTC2 = 0;
            if (this.mAlarmBatches.size() <= 0) {
                sdf = sdf2;
                j = 0;
                nextNonWakeupRTC = nowRTC;
            } else {
                pw.println();
                pw.print("  Pending alarm batches: ");
                pw.println(this.mAlarmBatches.size());
                for (Iterator<Batch> it3 = this.mAlarmBatches.iterator(); it3.hasNext(); it3 = it3) {
                    Batch b = it3.next();
                    pw.print(b);
                    pw.println(':');
                    dumpAlarmList(pw, b.alarms, "    ", nowELAPSED, nowRTC, sdf2);
                    nextWakeupRTC = nextWakeupRTC;
                    nowRTC = nowRTC;
                    sdf2 = sdf2;
                    nextWakeupRTC2 = nextWakeupRTC2;
                    users = users;
                    nowRTC2 = nowRTC2;
                }
                sdf = sdf2;
                j = nextWakeupRTC2;
                nextNonWakeupRTC = nowRTC;
            }
            pw.println();
            pw.println("  Pending user blocked background alarms: ");
            boolean blocked = false;
            for (int i4 = 0; i4 < this.mPendingBackgroundAlarms.size(); i4++) {
                ArrayList<Alarm> blockedAlarms = this.mPendingBackgroundAlarms.valueAt(i4);
                if (blockedAlarms != null && blockedAlarms.size() > 0) {
                    blocked = true;
                    dumpAlarmList(pw, blockedAlarms, "    ", nowELAPSED, nextNonWakeupRTC, sdf);
                }
            }
            if (!blocked) {
                pw.println("    none");
            }
            pw.println();
            pw.print("  Pending alarms per uid: [");
            for (int i5 = 0; i5 < this.mAlarmsPerUid.size(); i5++) {
                if (i5 > 0) {
                    pw.print(", ");
                }
                UserHandle.formatUid(pw, this.mAlarmsPerUid.keyAt(i5));
                pw.print(":");
                pw.print(this.mAlarmsPerUid.valueAt(i5));
            }
            pw.println("]");
            pw.println();
            this.mAppWakeupHistory.dump(pw, "  ", nowELAPSED);
            if (this.mPendingIdleUntil != null || this.mPendingWhileIdleAlarms.size() > 0) {
                pw.println();
                pw.println("    Idle mode state:");
                pw.print("      Idling until: ");
                if (this.mPendingIdleUntil != null) {
                    pw.println(this.mPendingIdleUntil);
                    this.mPendingIdleUntil.dump(pw, "        ", nowELAPSED, nextNonWakeupRTC, sdf);
                } else {
                    pw.println("null");
                }
                pw.println("      Pending alarms:");
                dumpAlarmList(pw, this.mPendingWhileIdleAlarms, "      ", nowELAPSED, nextNonWakeupRTC, sdf);
            }
            if (this.mNextWakeFromIdle != null) {
                pw.println();
                pw.print("  Next wake from idle: ");
                pw.println(this.mNextWakeFromIdle);
                this.mNextWakeFromIdle.dump(pw, "    ", nowELAPSED, nextNonWakeupRTC, sdf);
            }
            pw.println();
            pw.print("  Past-due non-wakeup alarms: ");
            if (this.mPendingNonWakeupAlarms.size() > 0) {
                pw.println(this.mPendingNonWakeupAlarms.size());
                dumpAlarmList(pw, this.mPendingNonWakeupAlarms, "    ", nowELAPSED, nextNonWakeupRTC, sdf);
            } else {
                pw.println("(none)");
            }
            pw.print("    Number of delayed alarms: ");
            pw.print(this.mNumDelayedAlarms);
            pw.print(", total delay time: ");
            TimeUtils.formatDuration(this.mTotalDelayTime, pw);
            pw.println();
            pw.print("    Max delay time: ");
            TimeUtils.formatDuration(this.mMaxDelayTime, pw);
            pw.print(", max non-interactive time: ");
            TimeUtils.formatDuration(this.mNonInteractiveTime, pw);
            pw.println();
            pw.println();
            pw.print("  Broadcast ref count: ");
            pw.println(this.mBroadcastRefCount);
            pw.print("  PendingIntent send count: ");
            pw.println(this.mSendCount);
            pw.print("  PendingIntent finish count: ");
            pw.println(this.mSendFinishCount);
            pw.print("  Listener send count: ");
            pw.println(this.mListenerCount);
            pw.print("  Listener finish count: ");
            pw.println(this.mListenerFinishCount);
            pw.println();
            if (this.mInFlight.size() > 0) {
                pw.println("Outstanding deliveries:");
                for (int i6 = 0; i6 < this.mInFlight.size(); i6++) {
                    pw.print("   #");
                    pw.print(i6);
                    pw.print(": ");
                    pw.println(this.mInFlight.get(i6));
                }
                pw.println();
            }
            if (this.mLastAllowWhileIdleDispatch.size() > 0) {
                pw.println("  Last allow while idle dispatch times:");
                for (int i7 = 0; i7 < this.mLastAllowWhileIdleDispatch.size(); i7++) {
                    pw.print("    UID ");
                    int uid = this.mLastAllowWhileIdleDispatch.keyAt(i7);
                    UserHandle.formatUid(pw, uid);
                    pw.print(": ");
                    long lastTime = this.mLastAllowWhileIdleDispatch.valueAt(i7);
                    TimeUtils.formatDuration(lastTime, nowELAPSED, pw);
                    long minInterval = getWhileIdleMinIntervalLocked(uid);
                    pw.print("  Next allowed:");
                    TimeUtils.formatDuration(lastTime + minInterval, nowELAPSED, pw);
                    pw.print(" (");
                    TimeUtils.formatDuration(minInterval, j, pw);
                    pw.print(")");
                    pw.println();
                }
            }
            pw.print("  mUseAllowWhileIdleShortTime: [");
            for (int i8 = 0; i8 < this.mUseAllowWhileIdleShortTime.size(); i8++) {
                if (this.mUseAllowWhileIdleShortTime.valueAt(i8)) {
                    UserHandle.formatUid(pw, this.mUseAllowWhileIdleShortTime.keyAt(i8));
                    pw.print(" ");
                }
            }
            pw.println("]");
            pw.println();
            if (this.mLog.dump(pw, "  Recent problems", "    ")) {
                pw.println();
            }
            FilterStats[] topFilters = new FilterStats[10];
            Comparator<FilterStats> comparator = new Comparator<FilterStats>() { // from class: com.android.server.AlarmManagerService.6
                @Override // java.util.Comparator
                public int compare(FilterStats lhs, FilterStats rhs) {
                    if (lhs.aggregateTime < rhs.aggregateTime) {
                        return 1;
                    }
                    if (lhs.aggregateTime > rhs.aggregateTime) {
                        return -1;
                    }
                    return 0;
                }
            };
            int len = 0;
            for (int iu = 0; iu < this.mBroadcastStats.size(); iu++) {
                ArrayMap<String, BroadcastStats> uidStats = this.mBroadcastStats.valueAt(iu);
                for (int ip = 0; ip < uidStats.size(); ip++) {
                    BroadcastStats bs = uidStats.valueAt(ip);
                    int is = 0;
                    while (is < bs.filterStats.size()) {
                        FilterStats fs = bs.filterStats.valueAt(is);
                        int pos = 0;
                        if (len > 0) {
                            pos = Arrays.binarySearch(topFilters, 0, len, fs, comparator);
                        }
                        if (pos < 0) {
                            pos = (-pos) - 1;
                        }
                        if (pos >= topFilters.length) {
                            bs = bs;
                        } else {
                            int copylen = (topFilters.length - pos) - 1;
                            if (copylen > 0) {
                                System.arraycopy(topFilters, pos, topFilters, pos + 1, copylen);
                            }
                            topFilters[pos] = fs;
                            if (len < topFilters.length) {
                                len++;
                            }
                        }
                        is++;
                        uidStats = uidStats;
                        bs = bs;
                    }
                }
            }
            if (len > 0) {
                pw.println("  Top Alarms:");
                for (int i9 = 0; i9 < len; i9++) {
                    FilterStats fs2 = topFilters[i9];
                    pw.print("    ");
                    if (fs2.nesting > 0) {
                        pw.print("*ACTIVE* ");
                    }
                    TimeUtils.formatDuration(fs2.aggregateTime, pw);
                    pw.print(" running, ");
                    pw.print(fs2.numWakeup);
                    pw.print(" wakeups, ");
                    pw.print(fs2.count);
                    pw.print(" alarms: ");
                    UserHandle.formatUid(pw, fs2.mBroadcastStats.mUid);
                    pw.print(":");
                    pw.print(fs2.mBroadcastStats.mPackageName);
                    pw.println();
                    pw.print("      ");
                    pw.print(fs2.mTag);
                    pw.println();
                }
            }
            pw.println(" ");
            pw.println("  Alarm Stats:");
            ArrayList<FilterStats> tmpFilters = new ArrayList<>();
            for (int iu2 = 0; iu2 < this.mBroadcastStats.size(); iu2++) {
                ArrayMap<String, BroadcastStats> uidStats2 = this.mBroadcastStats.valueAt(iu2);
                for (int ip2 = 0; ip2 < uidStats2.size(); ip2++) {
                    BroadcastStats bs2 = uidStats2.valueAt(ip2);
                    pw.print("  ");
                    if (bs2.nesting > 0) {
                        pw.print("*ACTIVE* ");
                    }
                    UserHandle.formatUid(pw, bs2.mUid);
                    pw.print(":");
                    pw.print(bs2.mPackageName);
                    pw.print(" ");
                    TimeUtils.formatDuration(bs2.aggregateTime, pw);
                    pw.print(" running, ");
                    pw.print(bs2.numWakeup);
                    pw.println(" wakeups:");
                    tmpFilters.clear();
                    for (int is2 = 0; is2 < bs2.filterStats.size(); is2++) {
                        tmpFilters.add(bs2.filterStats.valueAt(is2));
                    }
                    Collections.sort(tmpFilters, comparator);
                    int i10 = 0;
                    while (i10 < tmpFilters.size()) {
                        FilterStats fs3 = tmpFilters.get(i10);
                        FilterStats[] topFilters2 = topFilters;
                        pw.print("    ");
                        if (fs3.nesting > 0) {
                            pw.print("*ACTIVE* ");
                        }
                        TimeUtils.formatDuration(fs3.aggregateTime, pw);
                        pw.print(" ");
                        pw.print(fs3.numWakeup);
                        pw.print(" wakes ");
                        pw.print(fs3.count);
                        pw.print(" alarms, last ");
                        TimeUtils.formatDuration(fs3.lastTime, nowELAPSED, pw);
                        pw.println(":");
                        pw.print("      ");
                        pw.print(fs3.mTag);
                        pw.println();
                        i10++;
                        topFilters = topFilters2;
                        comparator = comparator;
                    }
                }
            }
            pw.println();
            this.mStatLogger.dump(pw, "  ");
        }
    }

    void dumpProto(FileDescriptor fd) {
        AlarmManagerService alarmManagerService = this;
        ProtoOutputStream proto = new ProtoOutputStream(fd);
        synchronized (alarmManagerService.mLock) {
            long nowRTC = alarmManagerService.mInjector.getCurrentTimeMillis();
            long nowElapsed = alarmManagerService.mInjector.getElapsedRealtime();
            proto.write(1112396529665L, nowRTC);
            proto.write(1112396529666L, nowElapsed);
            proto.write(1112396529667L, alarmManagerService.mLastTimeChangeClockTime);
            proto.write(1112396529668L, alarmManagerService.mLastTimeChangeRealtime);
            alarmManagerService.mConstants.dumpProto(proto, 1146756268037L);
            if (alarmManagerService.mAppStateTracker != null) {
                alarmManagerService.mAppStateTracker.dumpProto(proto, 1146756268038L);
            }
            proto.write(1133871366151L, alarmManagerService.mInteractive);
            if (!alarmManagerService.mInteractive) {
                proto.write(1112396529672L, nowElapsed - alarmManagerService.mNonInteractiveStartTime);
                proto.write(1112396529673L, alarmManagerService.currentNonWakeupFuzzLocked(nowElapsed));
                proto.write(1112396529674L, nowElapsed - alarmManagerService.mLastAlarmDeliveryTime);
                proto.write(1112396529675L, nowElapsed - alarmManagerService.mNextNonWakeupDeliveryTime);
            }
            proto.write(1112396529676L, alarmManagerService.mNextNonWakeup - nowElapsed);
            proto.write(1112396529677L, alarmManagerService.mNextWakeup - nowElapsed);
            proto.write(1112396529678L, nowElapsed - alarmManagerService.mLastWakeup);
            proto.write(1112396529679L, nowElapsed - alarmManagerService.mNextWakeUpSetAt);
            proto.write(1112396529680L, alarmManagerService.mNumTimeChanged);
            TreeSet<Integer> users = new TreeSet<>();
            int nextAlarmClockForUserSize = alarmManagerService.mNextAlarmClockForUser.size();
            for (int i = 0; i < nextAlarmClockForUserSize; i++) {
                users.add(Integer.valueOf(alarmManagerService.mNextAlarmClockForUser.keyAt(i)));
            }
            int pendingSendNextAlarmClockChangedForUserSize = alarmManagerService.mPendingSendNextAlarmClockChangedForUser.size();
            for (int i2 = 0; i2 < pendingSendNextAlarmClockChangedForUserSize; i2++) {
                users.add(Integer.valueOf(alarmManagerService.mPendingSendNextAlarmClockChangedForUser.keyAt(i2)));
            }
            for (Iterator<Integer> it = users.iterator(); it.hasNext(); it = it) {
                int user = it.next().intValue();
                AlarmManager.AlarmClockInfo next = alarmManagerService.mNextAlarmClockForUser.get(user);
                long time = next != null ? next.getTriggerTime() : 0L;
                boolean pendingSend = alarmManagerService.mPendingSendNextAlarmClockChangedForUser.get(user);
                long aToken = proto.start(2246267895826L);
                proto.write(1120986464257L, user);
                proto.write(1133871366146L, pendingSend);
                proto.write(1112396529667L, time);
                proto.end(aToken);
                nextAlarmClockForUserSize = nextAlarmClockForUserSize;
                nowRTC = nowRTC;
            }
            int pendingSendNextAlarmClockChangedForUserSize2 = nextAlarmClockForUserSize;
            long nowRTC2 = nowRTC;
            long j = 1120986464257L;
            for (Batch b : alarmManagerService.mAlarmBatches) {
                b.dumpDebug(proto, 2246267895827L, nowElapsed, nowRTC2);
                j = j;
                pendingSendNextAlarmClockChangedForUserSize = pendingSendNextAlarmClockChangedForUserSize;
                nowElapsed = nowElapsed;
                pendingSendNextAlarmClockChangedForUserSize2 = pendingSendNextAlarmClockChangedForUserSize2;
            }
            long j2 = j;
            long nowElapsed2 = nowElapsed;
            for (int i3 = 0; i3 < alarmManagerService.mPendingBackgroundAlarms.size(); i3++) {
                ArrayList<Alarm> blockedAlarms = alarmManagerService.mPendingBackgroundAlarms.valueAt(i3);
                if (blockedAlarms != null) {
                    for (Alarm a : blockedAlarms) {
                        a.dumpDebug(proto, 2246267895828L, nowElapsed2, nowRTC2);
                    }
                }
            }
            if (alarmManagerService.mPendingIdleUntil != null) {
                alarmManagerService.mPendingIdleUntil.dumpDebug(proto, 1146756268053L, nowElapsed2, nowRTC2);
            }
            for (Alarm a2 : alarmManagerService.mPendingWhileIdleAlarms) {
                a2.dumpDebug(proto, 2246267895830L, nowElapsed2, nowRTC2);
            }
            if (alarmManagerService.mNextWakeFromIdle != null) {
                alarmManagerService.mNextWakeFromIdle.dumpDebug(proto, 1146756268055L, nowElapsed2, nowRTC2);
            }
            for (Alarm a3 : alarmManagerService.mPendingNonWakeupAlarms) {
                a3.dumpDebug(proto, 2246267895832L, nowElapsed2, nowRTC2);
            }
            proto.write(1120986464281L, alarmManagerService.mNumDelayedAlarms);
            proto.write(1112396529690L, alarmManagerService.mTotalDelayTime);
            proto.write(1112396529691L, alarmManagerService.mMaxDelayTime);
            proto.write(1112396529692L, alarmManagerService.mNonInteractiveTime);
            proto.write(1120986464285L, alarmManagerService.mBroadcastRefCount);
            proto.write(1120986464286L, alarmManagerService.mSendCount);
            proto.write(1120986464287L, alarmManagerService.mSendFinishCount);
            proto.write(1120986464288L, alarmManagerService.mListenerCount);
            proto.write(1120986464289L, alarmManagerService.mListenerFinishCount);
            for (InFlight f : alarmManagerService.mInFlight) {
                f.dumpDebug(proto, 2246267895842L);
            }
            int i4 = 0;
            while (i4 < alarmManagerService.mLastAllowWhileIdleDispatch.size()) {
                long token = proto.start(2246267895844L);
                int uid = alarmManagerService.mLastAllowWhileIdleDispatch.keyAt(i4);
                long lastTime = alarmManagerService.mLastAllowWhileIdleDispatch.valueAt(i4);
                proto.write(j2, uid);
                proto.write(1112396529666L, lastTime);
                proto.write(1112396529667L, lastTime + alarmManagerService.getWhileIdleMinIntervalLocked(uid));
                proto.end(token);
                i4++;
                j2 = 1120986464257L;
            }
            for (int i5 = 0; i5 < alarmManagerService.mUseAllowWhileIdleShortTime.size(); i5++) {
                if (alarmManagerService.mUseAllowWhileIdleShortTime.valueAt(i5)) {
                    proto.write(2220498092067L, alarmManagerService.mUseAllowWhileIdleShortTime.keyAt(i5));
                }
            }
            alarmManagerService.mLog.dumpDebug(proto, 1146756268069L);
            FilterStats[] topFilters = new FilterStats[10];
            Comparator<FilterStats> comparator = new Comparator<FilterStats>() { // from class: com.android.server.AlarmManagerService.7
                @Override // java.util.Comparator
                public int compare(FilterStats lhs, FilterStats rhs) {
                    if (lhs.aggregateTime < rhs.aggregateTime) {
                        return 1;
                    }
                    if (lhs.aggregateTime > rhs.aggregateTime) {
                        return -1;
                    }
                    return 0;
                }
            };
            int len = 0;
            for (int iu = 0; iu < alarmManagerService.mBroadcastStats.size(); iu++) {
                ArrayMap<String, BroadcastStats> uidStats = alarmManagerService.mBroadcastStats.valueAt(iu);
                for (int ip = 0; ip < uidStats.size(); ip++) {
                    BroadcastStats bs = uidStats.valueAt(ip);
                    int is = 0;
                    while (is < bs.filterStats.size()) {
                        FilterStats fs = bs.filterStats.valueAt(is);
                        int pos = 0;
                        if (len > 0) {
                            pos = Arrays.binarySearch(topFilters, 0, len, fs, comparator);
                        }
                        if (pos < 0) {
                            pos = (-pos) - 1;
                        }
                        if (pos >= topFilters.length) {
                            users = users;
                        } else {
                            int copylen = (topFilters.length - pos) - 1;
                            if (copylen > 0) {
                                System.arraycopy(topFilters, pos, topFilters, pos + 1, copylen);
                            }
                            topFilters[pos] = fs;
                            if (len < topFilters.length) {
                                len++;
                            }
                        }
                        is++;
                        users = users;
                    }
                }
            }
            for (int i6 = 0; i6 < len; i6++) {
                long token2 = proto.start(2246267895846L);
                FilterStats fs2 = topFilters[i6];
                proto.write(1120986464257L, fs2.mBroadcastStats.mUid);
                proto.write(1138166333442L, fs2.mBroadcastStats.mPackageName);
                fs2.dumpDebug(proto, 1146756268035L);
                proto.end(token2);
            }
            ArrayList<FilterStats> tmpFilters = new ArrayList<>();
            int iu2 = 0;
            while (iu2 < alarmManagerService.mBroadcastStats.size()) {
                ArrayMap<String, BroadcastStats> uidStats2 = alarmManagerService.mBroadcastStats.valueAt(iu2);
                int ip2 = 0;
                while (ip2 < uidStats2.size()) {
                    long token3 = proto.start(2246267895847L);
                    BroadcastStats bs2 = uidStats2.valueAt(ip2);
                    bs2.dumpDebug(proto, 1146756268033L);
                    tmpFilters.clear();
                    for (int is2 = 0; is2 < bs2.filterStats.size(); is2++) {
                        tmpFilters.add(bs2.filterStats.valueAt(is2));
                    }
                    Collections.sort(tmpFilters, comparator);
                    Iterator<FilterStats> it2 = tmpFilters.iterator();
                    while (it2.hasNext()) {
                        it2.next().dumpDebug(proto, 2246267895810L);
                        tmpFilters = tmpFilters;
                    }
                    proto.end(token3);
                    ip2++;
                    tmpFilters = tmpFilters;
                }
                iu2++;
                alarmManagerService = this;
            }
        }
        proto.flush();
    }

    private void logBatchesLocked(SimpleDateFormat sdf) {
        ByteArrayOutputStream bs = new ByteArrayOutputStream(2048);
        PrintWriter pw = new PrintWriter(bs);
        long nowRTC = this.mInjector.getCurrentTimeMillis();
        long nowELAPSED = this.mInjector.getElapsedRealtime();
        int NZ = this.mAlarmBatches.size();
        for (int iz = 0; iz < NZ; iz++) {
            Batch bz = this.mAlarmBatches.get(iz);
            pw.append("Batch ");
            pw.print(iz);
            pw.append(": ");
            pw.println(bz);
            dumpAlarmList(pw, bz.alarms, "  ", nowELAPSED, nowRTC, sdf);
            pw.flush();
            Slog.v(TAG, bs.toString());
            bs.reset();
        }
    }

    private boolean validateConsistencyLocked() {
        return true;
    }

    private Batch findFirstWakeupBatchLocked() {
        int N = this.mAlarmBatches.size();
        for (int i = 0; i < N; i++) {
            Batch b = this.mAlarmBatches.get(i);
            if (b.hasWakeups()) {
                return b;
            }
        }
        return null;
    }

    long getNextWakeFromIdleTimeImpl() {
        long j;
        synchronized (this.mLock) {
            j = this.mNextWakeFromIdle != null ? this.mNextWakeFromIdle.whenElapsed : JobStatus.NO_LATEST_RUNTIME;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isIdlingImpl() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mPendingIdleUntil != null;
        }
        return z;
    }

    AlarmManager.AlarmClockInfo getNextAlarmClockImpl(int userId) {
        AlarmManager.AlarmClockInfo alarmClockInfo;
        synchronized (this.mLock) {
            alarmClockInfo = this.mNextAlarmClockForUser.get(userId);
        }
        return alarmClockInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNextAlarmClockLocked() {
        if (!this.mNextAlarmClockMayChange) {
            return;
        }
        this.mNextAlarmClockMayChange = false;
        SparseArray<AlarmManager.AlarmClockInfo> nextForUser = this.mTmpSparseAlarmClockArray;
        nextForUser.clear();
        int N = this.mAlarmBatches.size();
        for (int i = 0; i < N; i++) {
            ArrayList<Alarm> alarms = this.mAlarmBatches.get(i).alarms;
            int M = alarms.size();
            for (int j = 0; j < M; j++) {
                Alarm a = alarms.get(j);
                if (a.alarmClock != null) {
                    int userId = UserHandle.getUserId(a.uid);
                    AlarmManager.AlarmClockInfo current = this.mNextAlarmClockForUser.get(userId);
                    if (nextForUser.get(userId) == null) {
                        nextForUser.put(userId, a.alarmClock);
                    } else if (a.alarmClock.equals(current) && current.getTriggerTime() <= nextForUser.get(userId).getTriggerTime()) {
                        nextForUser.put(userId, current);
                    }
                }
            }
        }
        int NN = nextForUser.size();
        for (int i2 = 0; i2 < NN; i2++) {
            AlarmManager.AlarmClockInfo newAlarm = nextForUser.valueAt(i2);
            int userId2 = nextForUser.keyAt(i2);
            AlarmManager.AlarmClockInfo currentAlarm = this.mNextAlarmClockForUser.get(userId2);
            if (!newAlarm.equals(currentAlarm)) {
                updateNextAlarmInfoForUserLocked(userId2, newAlarm);
            }
        }
        int NNN = this.mNextAlarmClockForUser.size();
        for (int i3 = NNN - 1; i3 >= 0; i3--) {
            int userId3 = this.mNextAlarmClockForUser.keyAt(i3);
            if (nextForUser.get(userId3) == null) {
                updateNextAlarmInfoForUserLocked(userId3, null);
            }
        }
    }

    private void updateNextAlarmInfoForUserLocked(int userId, AlarmManager.AlarmClockInfo alarmClock) {
        if (alarmClock != null) {
            this.mNextAlarmClockForUser.put(userId, alarmClock);
        } else {
            this.mNextAlarmClockForUser.remove(userId);
        }
        this.mPendingSendNextAlarmClockChangedForUser.put(userId, true);
        this.mHandler.removeMessages(2);
        this.mHandler.sendEmptyMessage(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNextAlarmClockChanged() {
        SparseArray<AlarmManager.AlarmClockInfo> pendingUsers = this.mHandlerSparseAlarmClockArray;
        pendingUsers.clear();
        synchronized (this.mLock) {
            int N = this.mPendingSendNextAlarmClockChangedForUser.size();
            for (int i = 0; i < N; i++) {
                int userId = this.mPendingSendNextAlarmClockChangedForUser.keyAt(i);
                pendingUsers.append(userId, this.mNextAlarmClockForUser.get(userId));
            }
            this.mPendingSendNextAlarmClockChangedForUser.clear();
        }
        int N2 = pendingUsers.size();
        for (int i2 = 0; i2 < N2; i2++) {
            int userId2 = pendingUsers.keyAt(i2);
            AlarmManager.AlarmClockInfo alarmClock = pendingUsers.valueAt(i2);
            Settings.System.putStringForUser(getContext().getContentResolver(), "next_alarm_formatted", formatNextAlarm(getContext(), alarmClock, userId2), userId2);
            getContext().sendBroadcastAsUser(NEXT_ALARM_CLOCK_CHANGED_INTENT, new UserHandle(userId2));
        }
    }

    private static String formatNextAlarm(Context context, AlarmManager.AlarmClockInfo info, int userId) {
        String skeleton = DateFormat.is24HourFormat(context, userId) ? "EHm" : "Ehma";
        String pattern = DateFormat.getBestDateTimePattern(Locale.getDefault(), skeleton);
        return info == null ? "" : DateFormat.format(pattern, info.getTriggerTime()).toString();
    }

    void rescheduleKernelAlarmsLocked() {
        long nowElapsed = this.mInjector.getElapsedRealtime();
        long nextNonWakeup = 0;
        if (this.mAlarmBatches.size() > 0) {
            Batch firstWakeup = findFirstWakeupBatchLocked();
            Batch firstBatch = this.mAlarmBatches.get(0);
            if (firstWakeup != null) {
                this.mNextWakeup = firstWakeup.start;
                this.mNextWakeUpSetAt = nowElapsed;
                setLocked(2, firstWakeup.start);
            }
            if (firstBatch != firstWakeup) {
                nextNonWakeup = firstBatch.start;
            }
        }
        if (this.mPendingNonWakeupAlarms.size() > 0 && (nextNonWakeup == 0 || this.mNextNonWakeupDeliveryTime < nextNonWakeup)) {
            nextNonWakeup = this.mNextNonWakeupDeliveryTime;
        }
        if (nextNonWakeup != 0) {
            this.mNextNonWakeup = nextNonWakeup;
            this.mNextNonWakeUpSetAt = nowElapsed;
            setLocked(3, nextNonWakeup);
        }
    }

    void removeLocked(final PendingIntent operation, final IAlarmListener directReceiver) {
        if (operation == null && directReceiver == null) {
            return;
        }
        boolean didRemove = false;
        Predicate<Alarm> whichAlarms = new Predicate() { // from class: com.android.server.-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((AlarmManagerService.Alarm) obj).matches(operation, directReceiver);
            }
        };
        for (int i = this.mAlarmBatches.size() - 1; i >= 0; i--) {
            Batch b = this.mAlarmBatches.get(i);
            didRemove |= b.remove(whichAlarms, false);
            if (b.size() == 0) {
                this.mAlarmBatches.remove(i);
            }
        }
        for (int i2 = this.mPendingWhileIdleAlarms.size() - 1; i2 >= 0; i2--) {
            Alarm alarm = this.mPendingWhileIdleAlarms.get(i2);
            if (alarm.matches(operation, directReceiver)) {
                this.mPendingWhileIdleAlarms.remove(i2);
                decrementAlarmCount(alarm.uid, 1);
            }
        }
        for (int i3 = this.mPendingBackgroundAlarms.size() - 1; i3 >= 0; i3--) {
            ArrayList<Alarm> alarmsForUid = this.mPendingBackgroundAlarms.valueAt(i3);
            for (int j = alarmsForUid.size() - 1; j >= 0; j--) {
                Alarm alarm2 = alarmsForUid.get(j);
                if (alarm2.matches(operation, directReceiver)) {
                    alarmsForUid.remove(j);
                    decrementAlarmCount(alarm2.uid, 1);
                }
            }
            int j2 = alarmsForUid.size();
            if (j2 == 0) {
                this.mPendingBackgroundAlarms.removeAt(i3);
            }
        }
        for (int i4 = this.mPendingNonWakeupAlarms.size() - 1; i4 >= 0; i4--) {
            Alarm a = this.mPendingNonWakeupAlarms.get(i4);
            if (a.matches(operation, directReceiver)) {
                this.mPendingNonWakeupAlarms.remove(i4);
                decrementAlarmCount(a.uid, 1);
            }
        }
        if (didRemove) {
            boolean restorePending = false;
            Alarm alarm3 = this.mPendingIdleUntil;
            if (alarm3 != null && alarm3.matches(operation, directReceiver)) {
                this.mPendingIdleUntil = null;
                restorePending = true;
            }
            Alarm alarm4 = this.mNextWakeFromIdle;
            if (alarm4 != null && alarm4.matches(operation, directReceiver)) {
                this.mNextWakeFromIdle = null;
            }
            rebatchAllAlarmsLocked(true);
            if (restorePending) {
                restorePendingWhileIdleAlarmsLocked();
            }
            updateNextAlarmClockLocked();
        }
    }

    void removeLocked(final int uid) {
        if (uid == 1000) {
            return;
        }
        boolean didRemove = false;
        Predicate<Alarm> whichAlarms = new Predicate() { // from class: com.android.server.-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AlarmManagerService.lambda$removeLocked$1(uid, (AlarmManagerService.Alarm) obj);
            }
        };
        for (int i = this.mAlarmBatches.size() - 1; i >= 0; i--) {
            Batch b = this.mAlarmBatches.get(i);
            didRemove |= b.remove(whichAlarms, false);
            if (b.size() == 0) {
                this.mAlarmBatches.remove(i);
            }
        }
        for (int i2 = this.mPendingWhileIdleAlarms.size() - 1; i2 >= 0; i2--) {
            Alarm a = this.mPendingWhileIdleAlarms.get(i2);
            if (a.uid == uid) {
                this.mPendingWhileIdleAlarms.remove(i2);
                decrementAlarmCount(uid, 1);
            }
        }
        for (int i3 = this.mPendingBackgroundAlarms.size() - 1; i3 >= 0; i3--) {
            ArrayList<Alarm> alarmsForUid = this.mPendingBackgroundAlarms.valueAt(i3);
            for (int j = alarmsForUid.size() - 1; j >= 0; j--) {
                if (alarmsForUid.get(j).uid == uid) {
                    alarmsForUid.remove(j);
                    decrementAlarmCount(uid, 1);
                }
            }
            int j2 = alarmsForUid.size();
            if (j2 == 0) {
                this.mPendingBackgroundAlarms.removeAt(i3);
            }
        }
        Alarm alarm = this.mNextWakeFromIdle;
        if (alarm != null && alarm.uid == uid) {
            this.mNextWakeFromIdle = null;
        }
        Alarm alarm2 = this.mPendingIdleUntil;
        if (alarm2 != null && alarm2.uid == uid) {
            Slog.wtf(TAG, "Removed app uid " + uid + " set idle-until alarm!");
            this.mPendingIdleUntil = null;
        }
        if (didRemove) {
            rebatchAllAlarmsLocked(true);
            rescheduleKernelAlarmsLocked();
            updateNextAlarmClockLocked();
        }
    }

    static /* synthetic */ boolean lambda$removeLocked$1(int uid, Alarm a) {
        return a.uid == uid;
    }

    void removeLocked(final String packageName) {
        if (packageName == null) {
            return;
        }
        boolean didRemove = false;
        final MutableBoolean removedNextWakeFromIdle = new MutableBoolean(false);
        Predicate<Alarm> whichAlarms = new Predicate() { // from class: com.android.server.-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$removeLocked$2$AlarmManagerService(packageName, removedNextWakeFromIdle, (AlarmManagerService.Alarm) obj);
            }
        };
        boolean oldHasTick = haveBatchesTimeTickAlarm(this.mAlarmBatches);
        for (int i = this.mAlarmBatches.size() - 1; i >= 0; i--) {
            Batch b = this.mAlarmBatches.get(i);
            didRemove |= b.remove(whichAlarms, false);
            if (b.size() == 0) {
                this.mAlarmBatches.remove(i);
            }
        }
        boolean newHasTick = haveBatchesTimeTickAlarm(this.mAlarmBatches);
        if (oldHasTick != newHasTick) {
            Slog.wtf(TAG, "removeLocked: hasTick changed from " + oldHasTick + " to " + newHasTick);
        }
        for (int i2 = this.mPendingWhileIdleAlarms.size() - 1; i2 >= 0; i2--) {
            Alarm a = this.mPendingWhileIdleAlarms.get(i2);
            if (a.matches(packageName)) {
                this.mPendingWhileIdleAlarms.remove(i2);
                decrementAlarmCount(a.uid, 1);
            }
        }
        for (int i3 = this.mPendingBackgroundAlarms.size() - 1; i3 >= 0; i3--) {
            ArrayList<Alarm> alarmsForUid = this.mPendingBackgroundAlarms.valueAt(i3);
            for (int j = alarmsForUid.size() - 1; j >= 0; j--) {
                Alarm alarm = alarmsForUid.get(j);
                if (alarm.matches(packageName)) {
                    alarmsForUid.remove(j);
                    decrementAlarmCount(alarm.uid, 1);
                }
            }
            int j2 = alarmsForUid.size();
            if (j2 == 0) {
                this.mPendingBackgroundAlarms.removeAt(i3);
            }
        }
        if (removedNextWakeFromIdle.value) {
            this.mNextWakeFromIdle = null;
        }
        if (didRemove) {
            rebatchAllAlarmsLocked(true);
            rescheduleKernelAlarmsLocked();
            updateNextAlarmClockLocked();
        }
    }

    public /* synthetic */ boolean lambda$removeLocked$2$AlarmManagerService(String packageName, MutableBoolean removedNextWakeFromIdle, Alarm a) {
        boolean didMatch = a.matches(packageName);
        if (didMatch && a == this.mNextWakeFromIdle) {
            removedNextWakeFromIdle.value = true;
        }
        return didMatch;
    }

    void removeForStoppedLocked(final int uid) {
        if (uid == 1000) {
            return;
        }
        boolean didRemove = false;
        Predicate<Alarm> whichAlarms = new Predicate() { // from class: com.android.server.-$$Lambda$AlarmManagerService$lzZOWJB2te9UTLsLWoZ6M8xouQQ
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AlarmManagerService.lambda$removeForStoppedLocked$3(uid, (AlarmManagerService.Alarm) obj);
            }
        };
        for (int i = this.mAlarmBatches.size() - 1; i >= 0; i--) {
            Batch b = this.mAlarmBatches.get(i);
            didRemove |= b.remove(whichAlarms, false);
            if (b.size() == 0) {
                this.mAlarmBatches.remove(i);
            }
        }
        for (int i2 = this.mPendingWhileIdleAlarms.size() - 1; i2 >= 0; i2--) {
            Alarm a = this.mPendingWhileIdleAlarms.get(i2);
            if (a.uid == uid) {
                this.mPendingWhileIdleAlarms.remove(i2);
                decrementAlarmCount(uid, 1);
            }
        }
        for (int i3 = this.mPendingBackgroundAlarms.size() - 1; i3 >= 0; i3--) {
            if (this.mPendingBackgroundAlarms.keyAt(i3) == uid) {
                ArrayList<Alarm> toRemove = this.mPendingBackgroundAlarms.valueAt(i3);
                if (toRemove != null) {
                    decrementAlarmCount(uid, toRemove.size());
                }
                this.mPendingBackgroundAlarms.removeAt(i3);
            }
        }
        if (didRemove) {
            rebatchAllAlarmsLocked(true);
            rescheduleKernelAlarmsLocked();
            updateNextAlarmClockLocked();
        }
    }

    static /* synthetic */ boolean lambda$removeForStoppedLocked$3(int uid, Alarm a) {
        try {
            if (a.uid == uid && ActivityManager.getService().isAppStartModeDisabled(uid, a.packageName)) {
                return true;
            }
            return false;
        } catch (RemoteException e) {
            return false;
        }
    }

    void removeUserLocked(final int userHandle) {
        if (userHandle == 0) {
            return;
        }
        boolean didRemove = false;
        Predicate<Alarm> whichAlarms = new Predicate() { // from class: com.android.server.-$$Lambda$AlarmManagerService$nhEd_CDoc7mzdNLRwGUhwl9TaGk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AlarmManagerService.lambda$removeUserLocked$4(userHandle, (AlarmManagerService.Alarm) obj);
            }
        };
        for (int i = this.mAlarmBatches.size() - 1; i >= 0; i--) {
            Batch b = this.mAlarmBatches.get(i);
            didRemove |= b.remove(whichAlarms, false);
            if (b.size() == 0) {
                this.mAlarmBatches.remove(i);
            }
        }
        for (int i2 = this.mPendingWhileIdleAlarms.size() - 1; i2 >= 0; i2--) {
            if (UserHandle.getUserId(this.mPendingWhileIdleAlarms.get(i2).creatorUid) == userHandle) {
                Alarm removed = this.mPendingWhileIdleAlarms.remove(i2);
                decrementAlarmCount(removed.uid, 1);
            }
        }
        for (int i3 = this.mPendingBackgroundAlarms.size() - 1; i3 >= 0; i3--) {
            if (UserHandle.getUserId(this.mPendingBackgroundAlarms.keyAt(i3)) == userHandle) {
                ArrayList<Alarm> toRemove = this.mPendingBackgroundAlarms.valueAt(i3);
                if (toRemove != null) {
                    for (int j = 0; j < toRemove.size(); j++) {
                        decrementAlarmCount(toRemove.get(j).uid, 1);
                    }
                }
                this.mPendingBackgroundAlarms.removeAt(i3);
            }
        }
        for (int i4 = this.mLastAllowWhileIdleDispatch.size() - 1; i4 >= 0; i4--) {
            if (UserHandle.getUserId(this.mLastAllowWhileIdleDispatch.keyAt(i4)) == userHandle) {
                this.mLastAllowWhileIdleDispatch.removeAt(i4);
            }
        }
        if (didRemove) {
            rebatchAllAlarmsLocked(true);
            rescheduleKernelAlarmsLocked();
            updateNextAlarmClockLocked();
        }
    }

    static /* synthetic */ boolean lambda$removeUserLocked$4(int userHandle, Alarm a) {
        return UserHandle.getUserId(a.creatorUid) == userHandle;
    }

    void interactiveStateChangedLocked(boolean interactive) throws Exception {
        if (this.mInteractive != interactive) {
            this.mInteractive = interactive;
            long nowELAPSED = this.mInjector.getElapsedRealtime();
            if (interactive) {
                if (this.mPendingNonWakeupAlarms.size() > 0) {
                    long thisDelayTime = nowELAPSED - this.mStartCurrentDelayTime;
                    this.mTotalDelayTime += thisDelayTime;
                    if (this.mMaxDelayTime < thisDelayTime) {
                        this.mMaxDelayTime = thisDelayTime;
                    }
                    ArrayList<Alarm> triggerList = new ArrayList<>(this.mPendingNonWakeupAlarms);
                    deliverAlarmsLocked(triggerList, nowELAPSED);
                    this.mPendingNonWakeupAlarms.clear();
                }
                long thisDelayTime2 = this.mNonInteractiveStartTime;
                if (thisDelayTime2 > 0) {
                    long dur = nowELAPSED - thisDelayTime2;
                    if (dur > this.mNonInteractiveTime) {
                        this.mNonInteractiveTime = dur;
                    }
                }
                this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$AlarmManagerService$gKXZ864LsHRTGbnNeLAgHKL2YPk
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$interactiveStateChangedLocked$5$AlarmManagerService();
                    }
                });
                return;
            }
            this.mNonInteractiveStartTime = nowELAPSED;
        }
    }

    public /* synthetic */ void lambda$interactiveStateChangedLocked$5$AlarmManagerService() {
        getContext().sendBroadcastAsUser(this.mTimeTickIntent, UserHandle.ALL);
    }

    boolean lookForPackageLocked(String packageName) {
        for (int i = 0; i < this.mAlarmBatches.size(); i++) {
            Batch b = this.mAlarmBatches.get(i);
            if (b.hasPackage(packageName)) {
                return true;
            }
        }
        for (int i2 = 0; i2 < this.mPendingWhileIdleAlarms.size(); i2++) {
            Alarm a = this.mPendingWhileIdleAlarms.get(i2);
            if (a.matches(packageName)) {
                return true;
            }
        }
        return false;
    }

    private void setLocked(int type, long when) {
        if (this.mInjector.isAlarmDriverPresent()) {
            this.mInjector.setAlarm(type, when);
            return;
        }
        Message msg = Message.obtain();
        msg.what = 1;
        this.mHandler.removeMessages(msg.what);
        this.mHandler.sendMessageAtTime(msg, when);
    }

    private static final void dumpAlarmList(PrintWriter pw, ArrayList<Alarm> list, String prefix, String label, long nowELAPSED, long nowRTC, SimpleDateFormat sdf) {
        for (int i = list.size() - 1; i >= 0; i += -1) {
            Alarm a = list.get(i);
            pw.print(prefix);
            pw.print(label);
            pw.print(" #");
            pw.print(i);
            pw.print(": ");
            pw.println(a);
            a.dump(pw, prefix + "  ", nowELAPSED, nowRTC, sdf);
        }
    }

    private static final String labelForType(int type) {
        if (type == 0) {
            return "RTC_WAKEUP";
        }
        if (type == 1) {
            return "RTC";
        }
        if (type == 2) {
            return "ELAPSED_WAKEUP";
        }
        if (type == 3) {
            return "ELAPSED";
        }
        return "--unknown--";
    }

    private static final void dumpAlarmList(PrintWriter pw, ArrayList<Alarm> list, String prefix, long nowELAPSED, long nowRTC, SimpleDateFormat sdf) {
        for (int i = list.size() - 1; i >= 0; i += -1) {
            Alarm a = list.get(i);
            String label = labelForType(a.type);
            pw.print(prefix);
            pw.print(label);
            pw.print(" #");
            pw.print(i);
            pw.print(": ");
            pw.println(a);
            a.dump(pw, prefix + "  ", nowELAPSED, nowRTC, sdf);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBackgroundRestricted(Alarm alarm) {
        boolean exemptOnBatterySaver = (alarm.flags & 4) != 0;
        if (alarm.alarmClock != null) {
            return false;
        }
        if (alarm.operation != null) {
            if (alarm.operation.isActivity()) {
                return false;
            }
            if (alarm.operation.isForegroundService()) {
                exemptOnBatterySaver = true;
            }
        }
        String sourcePackage = alarm.sourcePackage;
        int sourceUid = alarm.creatorUid;
        AppStateTracker appStateTracker = this.mAppStateTracker;
        return appStateTracker != null && appStateTracker.areAlarmsRestricted(sourceUid, sourcePackage, exemptOnBatterySaver);
    }

    private long getWhileIdleMinIntervalLocked(int uid) {
        boolean dozing = this.mPendingIdleUntil != null;
        AppStateTracker appStateTracker = this.mAppStateTracker;
        boolean ebs = appStateTracker != null && appStateTracker.isForceAllAppsStandbyEnabled();
        if (!dozing && !ebs) {
            return this.mConstants.ALLOW_WHILE_IDLE_SHORT_TIME;
        }
        if (dozing) {
            return this.mConstants.ALLOW_WHILE_IDLE_LONG_TIME;
        }
        if (this.mUseAllowWhileIdleShortTime.get(uid)) {
            return this.mConstants.ALLOW_WHILE_IDLE_SHORT_TIME;
        }
        return this.mConstants.ALLOW_WHILE_IDLE_LONG_TIME;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x006a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0070  */
    /* JADX WARN: Code duplicated, block: B:24:0x007c  */
    /* JADX WARN: Code duplicated, block: B:27:0x0099  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:32:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:43:0x012e  */
    /* JADX WARN: Code duplicated, block: B:46:0x013e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0144  */
    /* JADX WARN: Code duplicated, block: B:50:0x014a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.server.AlarmManagerService] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.server.AlarmManagerService] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [int] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.android.server.AlarmManagerService] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    boolean triggerAlarmsLocked(ArrayList<Alarm> arrayList, long j) {
        ?? r0;
        Alarm alarm;
        boolean z;
        Batch batch;
        Alarm alarm2;
        ?? r3;
        ?? r2;
        ?? r1;
        ArrayList<Alarm> arrayList2;
        ?? r4 = this;
        boolean z2 = false;
        while (true) {
            ?? r14 = 1;
            if (r4.mAlarmBatches.size() <= 0) {
                break;
            }
            boolean z3 = false;
            Batch batch2 = r4.mAlarmBatches.get(0);
            if (batch2.start > j) {
                break;
            }
            r4.mAlarmBatches.remove(0);
            int size = batch2.size();
            boolean z4 = z2;
            int i = 0;
            while (i < size) {
                Alarm alarm3 = batch2.get(i);
                if ((alarm3.flags & 4) != 0) {
                    long j2 = r0.mLastAllowWhileIdleDispatch.get(alarm3.creatorUid, -1L);
                    long whileIdleMinIntervalLocked = r0.getWhileIdleMinIntervalLocked(alarm3.creatorUid) + j2;
                    if (j2 >= 0 && j < whileIdleMinIntervalLocked) {
                        alarm3.whenElapsed = whileIdleMinIntervalLocked;
                        alarm3.expectedWhenElapsed = whileIdleMinIntervalLocked;
                        if (alarm3.maxWhenElapsed < whileIdleMinIntervalLocked) {
                            r0 = r4;
                            alarm3.maxWhenElapsed = whileIdleMinIntervalLocked;
                        }
                        r0 = r4;
                        alarm3.expectedMaxWhenElapsed = alarm3.maxWhenElapsed;
                        r0.setImplLocked(alarm3, r14, z3);
                    } else {
                        r0 = r4;
                        r0 = r4;
                        r0 = r4;
                        if (r0.isBackgroundRestricted(alarm3)) {
                            arrayList2 = r0.mPendingBackgroundAlarms.get(alarm3.creatorUid);
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList<>();
                                r0.mPendingBackgroundAlarms.put(alarm3.creatorUid, arrayList2);
                            }
                            arrayList2.add(alarm3);
                        } else {
                            alarm3.count = r14;
                            arrayList.add(alarm3);
                            if ((alarm3.flags & 2) != 0) {
                                if (r0.mPendingIdleUntil != null) {
                                    r1 = r14;
                                } else {
                                    r1 = z3;
                                }
                                EventLogTags.writeDeviceIdleWakeFromIdle(r1, alarm3.statsTag);
                            }
                            if (r0.mPendingIdleUntil == alarm3) {
                                r0.mPendingIdleUntil = null;
                                r0.rebatchAllAlarmsLocked(z3);
                                restorePendingWhileIdleAlarmsLocked();
                            }
                            if (r0.mNextWakeFromIdle == alarm3) {
                                r0.mNextWakeFromIdle = null;
                                r0.rebatchAllAlarmsLocked(z3);
                            }
                            if (alarm3.repeatInterval > 0) {
                                alarm = alarm3;
                                z = z3;
                                batch = batch2;
                            } else {
                                alarm3.count = (int) (((long) alarm3.count) + ((j - alarm3.expectedWhenElapsed) / alarm3.repeatInterval));
                                long j3 = ((long) alarm3.count) * alarm3.repeatInterval;
                                long j4 = alarm3.expectedWhenElapsed + j3;
                                batch = batch2;
                                z = false;
                                alarm = alarm3;
                                setImplLocked(alarm3.type, alarm3.when + j3, j4, alarm3.windowLength, maxTriggerTime(j, j4, alarm3.repeatInterval), alarm3.repeatInterval, alarm3.operation, null, null, alarm3.flags, true, alarm3.workSource, alarm3.alarmClock, alarm3.uid, alarm3.packageName);
                            }
                            alarm2 = alarm;
                            if (alarm2.wakeup) {
                                z4 = true;
                            }
                            if (alarm2.alarmClock != null) {
                                r3 = 1;
                                r2 = this;
                            } else {
                                r3 = 1;
                                r2 = this;
                                r2.mNextAlarmClockMayChange = true;
                            }
                        }
                    }
                    r2 = r0;
                    size = size;
                    i = i;
                    z = z3;
                    batch = batch2;
                    r3 = r14;
                } else {
                    r0 = r4;
                    r0 = r4;
                    r0 = r4;
                    if (r0.isBackgroundRestricted(alarm3)) {
                        arrayList2 = r0.mPendingBackgroundAlarms.get(alarm3.creatorUid);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList<>();
                            r0.mPendingBackgroundAlarms.put(alarm3.creatorUid, arrayList2);
                        }
                        arrayList2.add(alarm3);
                        r2 = r0;
                        size = size;
                        i = i;
                        z = z3;
                        batch = batch2;
                        r3 = r14;
                    } else {
                        alarm3.count = r14;
                        arrayList.add(alarm3);
                        if ((alarm3.flags & 2) != 0) {
                            if (r0.mPendingIdleUntil != null) {
                                r1 = r14;
                            } else {
                                r1 = z3;
                            }
                            EventLogTags.writeDeviceIdleWakeFromIdle(r1, alarm3.statsTag);
                        }
                        if (r0.mPendingIdleUntil == alarm3) {
                            r0.mPendingIdleUntil = null;
                            r0.rebatchAllAlarmsLocked(z3);
                            restorePendingWhileIdleAlarmsLocked();
                        }
                        if (r0.mNextWakeFromIdle == alarm3) {
                            r0.mNextWakeFromIdle = null;
                            r0.rebatchAllAlarmsLocked(z3);
                        }
                        if (alarm3.repeatInterval > 0) {
                            alarm = alarm3;
                            z = z3;
                            batch = batch2;
                        } else {
                            alarm3.count = (int) (((long) alarm3.count) + ((j - alarm3.expectedWhenElapsed) / alarm3.repeatInterval));
                            long j5 = ((long) alarm3.count) * alarm3.repeatInterval;
                            long j6 = alarm3.expectedWhenElapsed + j5;
                            batch = batch2;
                            z = false;
                            alarm = alarm3;
                            setImplLocked(alarm3.type, alarm3.when + j5, j6, alarm3.windowLength, maxTriggerTime(j, j6, alarm3.repeatInterval), alarm3.repeatInterval, alarm3.operation, null, null, alarm3.flags, true, alarm3.workSource, alarm3.alarmClock, alarm3.uid, alarm3.packageName);
                        }
                        alarm2 = alarm;
                        if (alarm2.wakeup) {
                            z4 = true;
                        }
                        if (alarm2.alarmClock != null) {
                            r3 = 1;
                            r2 = this;
                        } else {
                            r3 = 1;
                            r2 = this;
                            r2.mNextAlarmClockMayChange = true;
                        }
                    }
                }
                i++;
                arrayList = arrayList;
                r0 = r2;
                r14 = r3;
                size = size;
                batch2 = batch;
                z3 = z;
            }
            r0 = r4;
            z2 = z4;
            r4 = r0;
        }
        r4.mCurrentSeq++;
        calculateDeliveryPriorities(arrayList);
        Collections.sort(arrayList, r4.mAlarmDispatchComparator);
        return z2;
    }

    public static class IncreasingTimeOrder implements Comparator<Alarm> {
        @Override // java.util.Comparator
        public int compare(Alarm a1, Alarm a2) {
            long when1 = a1.whenElapsed;
            long when2 = a2.whenElapsed;
            if (when1 > when2) {
                return 1;
            }
            if (when1 < when2) {
                return -1;
            }
            return 0;
        }
    }

    static class Alarm {
        public final AlarmManager.AlarmClockInfo alarmClock;
        public int count;
        public final int creatorUid;
        public long expectedMaxWhenElapsed;
        public long expectedWhenElapsed;
        public final int flags;
        public final IAlarmListener listener;
        public final String listenerTag;
        public long maxWhenElapsed;
        public final PendingIntent operation;
        public final long origWhen;
        public final String packageName;
        public PriorityClass priorityClass;
        public long repeatInterval;
        public final String sourcePackage;
        public final String statsTag;
        public final int type;
        public final int uid;
        public final boolean wakeup;
        public long when;
        public long whenElapsed;
        public long windowLength;
        public final WorkSource workSource;

        public Alarm(int _type, long _when, long _whenElapsed, long _windowLength, long _maxWhen, long _interval, PendingIntent _op, IAlarmListener _rec, String _listenerTag, WorkSource _ws, int _flags, AlarmManager.AlarmClockInfo _info, int _uid, String _pkgName) {
            this.type = _type;
            this.origWhen = _when;
            this.wakeup = _type == 2 || _type == 0;
            this.when = _when;
            this.whenElapsed = _whenElapsed;
            this.expectedWhenElapsed = _whenElapsed;
            this.windowLength = _windowLength;
            long jClampPositive = AlarmManagerService.clampPositive(_maxWhen);
            this.expectedMaxWhenElapsed = jClampPositive;
            this.maxWhenElapsed = jClampPositive;
            this.repeatInterval = _interval;
            this.operation = _op;
            this.listener = _rec;
            this.listenerTag = _listenerTag;
            this.statsTag = makeTag(_op, _listenerTag, _type);
            this.workSource = _ws;
            this.flags = _flags;
            this.alarmClock = _info;
            this.uid = _uid;
            this.packageName = _pkgName;
            PendingIntent pendingIntent = this.operation;
            this.sourcePackage = pendingIntent != null ? pendingIntent.getCreatorPackage() : _pkgName;
            PendingIntent pendingIntent2 = this.operation;
            this.creatorUid = pendingIntent2 != null ? pendingIntent2.getCreatorUid() : this.uid;
        }

        public static String makeTag(PendingIntent pi, String tag, int type) {
            String alarmString = (type == 2 || type == 0) ? "*walarm*:" : "*alarm*:";
            if (pi != null) {
                return pi.getTag(alarmString);
            }
            return alarmString + tag;
        }

        public WakeupEvent makeWakeupEvent(long nowRTC) {
            String action;
            int i = this.creatorUid;
            PendingIntent pendingIntent = this.operation;
            if (pendingIntent != null) {
                action = pendingIntent.getIntent().getAction();
            } else {
                action = "<listener>:" + this.listenerTag;
            }
            return new WakeupEvent(nowRTC, i, action);
        }

        public boolean matches(PendingIntent pi, IAlarmListener rec) {
            PendingIntent pendingIntent = this.operation;
            if (pendingIntent != null) {
                return pendingIntent.equals(pi);
            }
            return rec != null && this.listener.asBinder().equals(rec.asBinder());
        }

        public boolean matches(String packageName) {
            return packageName.equals(this.sourcePackage);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Alarm{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" type ");
            sb.append(this.type);
            sb.append(" when ");
            sb.append(this.when);
            sb.append(" ");
            sb.append(this.sourcePackage);
            sb.append('}');
            return sb.toString();
        }

        public void dump(PrintWriter pw, String prefix, long nowELAPSED, long nowRTC, SimpleDateFormat sdf) {
            int i = this.type;
            boolean z = true;
            if (i != 1 && i != 0) {
                z = false;
            }
            boolean isRtc = z;
            pw.print(prefix);
            pw.print("tag=");
            pw.println(this.statsTag);
            pw.print(prefix);
            pw.print("type=");
            pw.print(this.type);
            pw.print(" expectedWhenElapsed=");
            TimeUtils.formatDuration(this.expectedWhenElapsed, nowELAPSED, pw);
            pw.print(" expectedMaxWhenElapsed=");
            TimeUtils.formatDuration(this.expectedMaxWhenElapsed, nowELAPSED, pw);
            pw.print(" whenElapsed=");
            TimeUtils.formatDuration(this.whenElapsed, nowELAPSED, pw);
            pw.print(" maxWhenElapsed=");
            TimeUtils.formatDuration(this.maxWhenElapsed, nowELAPSED, pw);
            pw.print(" when=");
            if (isRtc) {
                pw.print(sdf.format(new Date(this.when)));
            } else {
                TimeUtils.formatDuration(this.when, nowELAPSED, pw);
            }
            pw.println();
            pw.print(prefix);
            pw.print("window=");
            TimeUtils.formatDuration(this.windowLength, pw);
            pw.print(" repeatInterval=");
            pw.print(this.repeatInterval);
            pw.print(" count=");
            pw.print(this.count);
            pw.print(" flags=0x");
            pw.println(Integer.toHexString(this.flags));
            if (this.alarmClock != null) {
                pw.print(prefix);
                pw.println("Alarm clock:");
                pw.print(prefix);
                pw.print("  triggerTime=");
                pw.println(sdf.format(new Date(this.alarmClock.getTriggerTime())));
                pw.print(prefix);
                pw.print("  showIntent=");
                pw.println(this.alarmClock.getShowIntent());
            }
            pw.print(prefix);
            pw.print("operation=");
            pw.println(this.operation);
            if (this.listener != null) {
                pw.print(prefix);
                pw.print("listener=");
                pw.println(this.listener.asBinder());
            }
        }

        public void dumpDebug(ProtoOutputStream proto, long fieldId, long nowElapsed, long nowRTC) {
            long token = proto.start(fieldId);
            proto.write(1138166333441L, this.statsTag);
            proto.write(1159641169922L, this.type);
            proto.write(1112396529667L, this.whenElapsed - nowElapsed);
            proto.write(1112396529668L, this.windowLength);
            proto.write(1112396529669L, this.repeatInterval);
            proto.write(1120986464262L, this.count);
            proto.write(1120986464263L, this.flags);
            AlarmManager.AlarmClockInfo alarmClockInfo = this.alarmClock;
            if (alarmClockInfo != null) {
                alarmClockInfo.dumpDebug(proto, 1146756268040L);
            }
            PendingIntent pendingIntent = this.operation;
            if (pendingIntent != null) {
                pendingIntent.dumpDebug(proto, 1146756268041L);
            }
            IAlarmListener iAlarmListener = this.listener;
            if (iAlarmListener != null) {
                proto.write(1138166333450L, iAlarmListener.asBinder().toString());
            }
            proto.end(token);
        }
    }

    void recordWakeupAlarms(ArrayList<Batch> batches, long nowELAPSED, long nowRTC) {
        int numBatches = batches.size();
        for (int nextBatch = 0; nextBatch < numBatches; nextBatch++) {
            Batch b = batches.get(nextBatch);
            if (b.start <= nowELAPSED) {
                int numAlarms = b.alarms.size();
                for (int nextAlarm = 0; nextAlarm < numAlarms; nextAlarm++) {
                    Alarm a = b.alarms.get(nextAlarm);
                    this.mRecentWakeups.add(a.makeWakeupEvent(nowRTC));
                }
            } else {
                return;
            }
        }
    }

    long currentNonWakeupFuzzLocked(long nowELAPSED) {
        long timeSinceOn = nowELAPSED - this.mNonInteractiveStartTime;
        if (timeSinceOn < BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS) {
            return JobStatus.DEFAULT_TRIGGER_MAX_DELAY;
        }
        if (timeSinceOn < 1800000) {
            return 900000L;
        }
        return AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT;
    }

    static int fuzzForDuration(long duration) {
        if (duration < 900000) {
            return (int) duration;
        }
        if (duration < 5400000) {
            return 900000;
        }
        return 1800000;
    }

    boolean checkAllowNonWakeupDelayLocked(long nowELAPSED) {
        if (this.mInteractive || this.mLastAlarmDeliveryTime <= 0) {
            return false;
        }
        if (this.mPendingNonWakeupAlarms.size() > 0 && this.mNextNonWakeupDeliveryTime < nowELAPSED) {
            return false;
        }
        long timeSinceLast = nowELAPSED - this.mLastAlarmDeliveryTime;
        return timeSinceLast <= currentNonWakeupFuzzLocked(nowELAPSED);
    }

    void deliverAlarmsLocked(ArrayList<Alarm> triggerList, long nowELAPSED) throws Exception {
        this.mLastAlarmDeliveryTime = nowELAPSED;
        for (int i = 0; i < triggerList.size(); i++) {
            Alarm alarm = triggerList.get(i);
            boolean allowWhileIdle = (alarm.flags & 4) != 0;
            if (alarm.wakeup) {
                Trace.traceBegin(131072L, "Dispatch wakeup alarm to " + alarm.packageName);
            } else {
                Trace.traceBegin(131072L, "Dispatch non-wakeup alarm to " + alarm.packageName);
            }
            try {
                ActivityManager.noteAlarmStart(alarm.operation, alarm.workSource, alarm.uid, alarm.statsTag);
                this.mDeliveryTracker.deliverLocked(alarm, nowELAPSED, allowWhileIdle);
            } catch (RuntimeException e) {
                Slog.w(TAG, "Failure sending alarm.", e);
            }
            Trace.traceEnd(131072L);
            decrementAlarmCount(alarm.uid, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isExemptFromAppStandby(Alarm a) {
        return (a.alarmClock == null && !UserHandle.isCore(a.creatorUid) && (a.flags & 8) == 0) ? false : true;
    }

    static class Injector {
        private Context mContext;
        private long mNativeData;

        Injector(Context context) {
            this.mContext = context;
        }

        void init() {
            this.mNativeData = AlarmManagerService.init();
        }

        int waitForAlarm() {
            return AlarmManagerService.waitForAlarm(this.mNativeData);
        }

        boolean isAlarmDriverPresent() {
            return this.mNativeData != 0;
        }

        void setAlarm(int type, long millis) {
            long alarmSeconds;
            long alarmSeconds2;
            if (millis < 0) {
                alarmSeconds = 0;
                alarmSeconds2 = 0;
            } else {
                long alarmSeconds3 = millis / 1000;
                alarmSeconds = alarmSeconds3;
                alarmSeconds2 = 1000 * (millis % 1000) * 1000;
            }
            int result = AlarmManagerService.set(this.mNativeData, type, alarmSeconds, alarmSeconds2);
            if (result != 0) {
                long nowElapsed = SystemClock.elapsedRealtime();
                Slog.wtf(AlarmManagerService.TAG, "Unable to set kernel alarm, now=" + nowElapsed + " type=" + type + " @ (" + alarmSeconds + "," + alarmSeconds2 + "), ret = " + result + " = " + Os.strerror(result));
            }
        }

        long getNextAlarm(int type) {
            return AlarmManagerService.getNextAlarm(this.mNativeData, type);
        }

        void setKernelTimezone(int minutesWest) {
            AlarmManagerService.setKernelTimezone(this.mNativeData, minutesWest);
        }

        void setKernelTime(long millis) {
            long j = this.mNativeData;
            if (j != 0) {
                AlarmManagerService.setKernelTime(j, millis);
            }
        }

        void close() {
            AlarmManagerService.close(this.mNativeData);
        }

        long getElapsedRealtime() {
            return SystemClock.elapsedRealtime();
        }

        long getCurrentTimeMillis() {
            return System.currentTimeMillis();
        }

        PowerManager.WakeLock getAlarmWakeLock() {
            PowerManager pm = (PowerManager) this.mContext.getSystemService("power");
            return pm.newWakeLock(1, "*alarm*");
        }

        int getSystemUiUid() {
            PackageManagerInternal pm = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            return pm.getPackageUid(pm.getSystemUiServiceComponent().getPackageName(), 1048576, 0);
        }

        ClockReceiver getClockReceiver(AlarmManagerService service) {
            Objects.requireNonNull(service);
            return service.new ClockReceiver();
        }
    }

    private class AlarmThread extends Thread {
        private int mFalseWakeups;
        private int mWtfThreshold;

        public AlarmThread() {
            super(AlarmManagerService.TAG);
            this.mFalseWakeups = 0;
            this.mWtfThreshold = 100;
        }

        /* JADX WARN: Code duplicated, block: B:32:0x00dd  */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            int result;
            long lastTimeChangeClockTime;
            long expectedClockTime;
            ArrayList<Alarm> triggerList = new ArrayList<>();
            while (true) {
                int result2 = AlarmManagerService.this.mInjector.waitForAlarm();
                long nowRTC = AlarmManagerService.this.mInjector.getCurrentTimeMillis();
                long nowELAPSED = AlarmManagerService.this.mInjector.getElapsedRealtime();
                synchronized (AlarmManagerService.this.mLock) {
                    AlarmManagerService.this.mLastWakeup = nowELAPSED;
                }
                if (result2 == 0) {
                    Slog.wtf(AlarmManagerService.TAG, "waitForAlarm returned 0, nowRTC = " + nowRTC + ", nowElapsed = " + nowELAPSED);
                }
                triggerList.clear();
                if ((result2 & 65536) != 0) {
                    synchronized (AlarmManagerService.this.mLock) {
                        lastTimeChangeClockTime = AlarmManagerService.this.mLastTimeChangeClockTime;
                        expectedClockTime = (nowELAPSED - AlarmManagerService.this.mLastTimeChangeRealtime) + lastTimeChangeClockTime;
                    }
                    if (lastTimeChangeClockTime == 0 || nowRTC < expectedClockTime - 1000 || nowRTC > 1000 + expectedClockTime) {
                        FrameworkStatsLog.write(45, nowRTC);
                        AlarmManagerService alarmManagerService = AlarmManagerService.this;
                        alarmManagerService.removeImpl(null, alarmManagerService.mTimeTickTrigger);
                        AlarmManagerService alarmManagerService2 = AlarmManagerService.this;
                        alarmManagerService2.removeImpl(alarmManagerService2.mDateChangeSender, null);
                        AlarmManagerService.this.rebatchAllAlarms();
                        AlarmManagerService.this.mClockReceiver.scheduleTimeTickEvent();
                        AlarmManagerService.this.mClockReceiver.scheduleDateChangedEvent();
                        synchronized (AlarmManagerService.this.mLock) {
                            AlarmManagerService.this.mNumTimeChanged++;
                            AlarmManagerService.this.mLastTimeChangeClockTime = nowRTC;
                            AlarmManagerService.this.mLastTimeChangeRealtime = nowELAPSED;
                        }
                        Intent intent = new Intent("android.intent.action.TIME_SET");
                        intent.addFlags(622854144);
                        AlarmManagerService.this.getContext().sendBroadcastAsUser(intent, UserHandle.ALL);
                        result = result2 | 5;
                    } else {
                        result = result2;
                    }
                } else {
                    result = result2;
                }
                if (result != 65536) {
                    synchronized (AlarmManagerService.this.mLock) {
                        AlarmManagerService.this.mLastTrigger = nowELAPSED;
                        boolean hasWakeup = AlarmManagerService.this.triggerAlarmsLocked(triggerList, nowELAPSED);
                        if (!hasWakeup && AlarmManagerService.this.checkAllowNonWakeupDelayLocked(nowELAPSED)) {
                            Slog.d(AlarmManagerService.TAG, "AlarmManager hasWakeup false.");
                            if (AlarmManagerService.this.mPendingNonWakeupAlarms.size() == 0) {
                                AlarmManagerService.this.mStartCurrentDelayTime = nowELAPSED;
                                AlarmManagerService.this.mNextNonWakeupDeliveryTime = ((AlarmManagerService.this.currentNonWakeupFuzzLocked(nowELAPSED) * 3) / 2) + nowELAPSED;
                            }
                            AlarmManagerService.this.mPendingNonWakeupAlarms.addAll(triggerList);
                            AlarmManagerService.this.mNumDelayedAlarms += triggerList.size();
                            AlarmManagerService.this.rescheduleKernelAlarmsLocked();
                            AlarmManagerService.this.updateNextAlarmClockLocked();
                        } else {
                            if (AlarmManagerService.this.mPendingNonWakeupAlarms.size() > 0) {
                                AlarmManagerService.this.calculateDeliveryPriorities(AlarmManagerService.this.mPendingNonWakeupAlarms);
                                triggerList.addAll(AlarmManagerService.this.mPendingNonWakeupAlarms);
                                Collections.sort(triggerList, AlarmManagerService.this.mAlarmDispatchComparator);
                                long thisDelayTime = nowELAPSED - AlarmManagerService.this.mStartCurrentDelayTime;
                                AlarmManagerService.this.mTotalDelayTime += thisDelayTime;
                                if (AlarmManagerService.this.mMaxDelayTime < thisDelayTime) {
                                    AlarmManagerService.this.mMaxDelayTime = thisDelayTime;
                                }
                                AlarmManagerService.this.mPendingNonWakeupAlarms.clear();
                            }
                            if (AlarmManagerService.this.mLastTimeChangeRealtime != nowELAPSED && triggerList.isEmpty()) {
                                int i = this.mFalseWakeups + 1;
                                this.mFalseWakeups = i;
                                if (i >= this.mWtfThreshold) {
                                    Slog.wtf(AlarmManagerService.TAG, "Too many (" + this.mFalseWakeups + ") false wakeups, nowElapsed=" + nowELAPSED);
                                    if (this.mWtfThreshold < 100000) {
                                        this.mWtfThreshold *= 10;
                                    } else {
                                        this.mFalseWakeups = 0;
                                    }
                                }
                            }
                            ArraySet<Pair<String, Integer>> triggerPackages = new ArraySet<>();
                            for (int i2 = 0; i2 < triggerList.size(); i2++) {
                                Alarm a = triggerList.get(i2);
                                if (!AlarmManagerService.this.isExemptFromAppStandby(a)) {
                                    triggerPackages.add(Pair.create(a.sourcePackage, Integer.valueOf(UserHandle.getUserId(a.creatorUid))));
                                }
                            }
                            AlarmManagerService.this.deliverAlarmsLocked(triggerList, nowELAPSED);
                            AlarmManagerService.this.reorderAlarmsBasedOnStandbyBuckets(triggerPackages);
                            AlarmManagerService.this.rescheduleKernelAlarmsLocked();
                            AlarmManagerService.this.updateNextAlarmClockLocked();
                        }
                    }
                } else {
                    synchronized (AlarmManagerService.this.mLock) {
                        AlarmManagerService.this.rescheduleKernelAlarmsLocked();
                    }
                }
            }
        }
    }

    void setWakelockWorkSource(WorkSource ws, int knownUid, String tag, boolean first) {
        try {
            this.mWakeLock.setHistoryTag(first ? tag : null);
            if (ws != null) {
                this.mWakeLock.setWorkSource(ws);
                return;
            }
            if (knownUid >= 0) {
                this.mWakeLock.setWorkSource(new WorkSource(knownUid));
                return;
            }
            this.mWakeLock.setWorkSource(null);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getAlarmAttributionUid(Alarm alarm) {
        if (alarm.workSource != null && !alarm.workSource.isEmpty()) {
            return alarm.workSource.getAttributionUid();
        }
        return alarm.creatorUid;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bundle getAlarmOperationBundle(Alarm alarm) {
        if (alarm.operation.isActivity()) {
            return this.mActivityOptsRestrictBal.toBundle();
        }
        return this.mBroadcastOptsRestrictBal.toBundle();
    }

    class AlarmHandler extends Handler {
        public static final int ALARM_EVENT = 1;
        public static final int APP_STANDBY_BUCKET_CHANGED = 5;
        public static final int CHARGING_STATUS_CHANGED = 6;
        public static final int LISTENER_TIMEOUT = 3;
        public static final int REMOVE_FOR_CANCELED = 8;
        public static final int REMOVE_FOR_STOPPED = 7;
        public static final int REPORT_ALARMS_ACTIVE = 4;
        public static final int SEND_NEXT_ALARM_CLOCK_CHANGED = 2;

        AlarmHandler() {
            super(Looper.myLooper());
        }

        public void postRemoveForStopped(int uid) {
            obtainMessage(7, uid, 0).sendToTarget();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ArrayList<Alarm> triggerList = new ArrayList<>();
                    synchronized (AlarmManagerService.this.mLock) {
                        long nowELAPSED = AlarmManagerService.this.mInjector.getElapsedRealtime();
                        AlarmManagerService.this.triggerAlarmsLocked(triggerList, nowELAPSED);
                        AlarmManagerService.this.updateNextAlarmClockLocked();
                        break;
                    }
                    for (int i = 0; i < triggerList.size(); i++) {
                        Alarm alarm = triggerList.get(i);
                        try {
                            Bundle bundle = AlarmManagerService.this.getAlarmOperationBundle(alarm);
                            alarm.operation.send(null, 0, null, null, null, null, bundle);
                        } catch (PendingIntent.CanceledException e) {
                            if (alarm.repeatInterval > 0) {
                                AlarmManagerService.this.removeImpl(alarm.operation, null);
                            }
                        }
                        AlarmManagerService.this.decrementAlarmCount(alarm.uid, 1);
                    }
                    return;
                case 2:
                    AlarmManagerService.this.sendNextAlarmClockChanged();
                    return;
                case 3:
                    AlarmManagerService.this.mDeliveryTracker.alarmTimedOut((IBinder) msg.obj);
                    return;
                case 4:
                    if (AlarmManagerService.this.mLocalDeviceIdleController != null) {
                        AlarmManagerService.this.mLocalDeviceIdleController.setAlarmsActive(msg.arg1 != 0);
                        return;
                    }
                    return;
                case 5:
                    synchronized (AlarmManagerService.this.mLock) {
                        ArraySet<Pair<String, Integer>> filterPackages = new ArraySet<>();
                        filterPackages.add(Pair.create((String) msg.obj, Integer.valueOf(msg.arg1)));
                        if (AlarmManagerService.this.reorderAlarmsBasedOnStandbyBuckets(filterPackages)) {
                            AlarmManagerService.this.rescheduleKernelAlarmsLocked();
                            AlarmManagerService.this.updateNextAlarmClockLocked();
                        }
                        break;
                    }
                    return;
                case 6:
                    synchronized (AlarmManagerService.this.mLock) {
                        AlarmManagerService.this.mAppStandbyParole = ((Boolean) msg.obj).booleanValue();
                        if (AlarmManagerService.this.reorderAlarmsBasedOnStandbyBuckets(null)) {
                            AlarmManagerService.this.rescheduleKernelAlarmsLocked();
                            AlarmManagerService.this.updateNextAlarmClockLocked();
                        }
                        break;
                    }
                    return;
                case 7:
                    synchronized (AlarmManagerService.this.mLock) {
                        AlarmManagerService.this.removeForStoppedLocked(msg.arg1);
                        break;
                    }
                    return;
                case 8:
                    PendingIntent operation = (PendingIntent) msg.obj;
                    synchronized (AlarmManagerService.this.mLock) {
                        AlarmManagerService.this.removeLocked(operation, null);
                        break;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    class ChargingReceiver extends BroadcastReceiver {
        ChargingReceiver() {
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.os.action.CHARGING");
            filter.addAction("android.os.action.DISCHARGING");
            AlarmManagerService.this.getContext().registerReceiver(this, filter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean charging;
            String action = intent.getAction();
            if ("android.os.action.CHARGING".equals(action)) {
                charging = true;
            } else {
                charging = false;
            }
            AlarmManagerService.this.mHandler.removeMessages(6);
            AlarmManagerService.this.mHandler.obtainMessage(6, Boolean.valueOf(charging)).sendToTarget();
        }
    }

    class ClockReceiver extends BroadcastReceiver {
        public ClockReceiver() {
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.intent.action.DATE_CHANGED");
            AlarmManagerService.this.getContext().registerReceiver(this, filter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Throwable {
            if (intent.getAction().equals("android.intent.action.DATE_CHANGED")) {
                TimeZone zone = TimeZone.getTimeZone(SystemProperties.get(AlarmManagerService.TIMEZONE_PROPERTY));
                int gmtOffset = zone.getOffset(AlarmManagerService.this.mInjector.getCurrentTimeMillis());
                AlarmManagerService.this.mInjector.setKernelTimezone(-(gmtOffset / 60000));
                scheduleDateChangedEvent();
            }
        }

        public void scheduleTimeTickEvent() throws Throwable {
            long currentTime = AlarmManagerService.this.mInjector.getCurrentTimeMillis();
            long nextTime = ((currentTime / 60000) + 1) * 60000;
            long tickEventDelay = nextTime - currentTime;
            AlarmManagerService alarmManagerService = AlarmManagerService.this;
            alarmManagerService.setImpl(3, alarmManagerService.mInjector.getElapsedRealtime() + tickEventDelay, 0L, 0L, null, AlarmManagerService.this.mTimeTickTrigger, "TIME_TICK", 1, null, null, Process.myUid(), PackageManagerService.PLATFORM_PACKAGE_NAME);
            synchronized (AlarmManagerService.this.mLock) {
                AlarmManagerService.this.mLastTickSet = currentTime;
            }
        }

        public void scheduleDateChangedEvent() throws Throwable {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(AlarmManagerService.this.mInjector.getCurrentTimeMillis());
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar.add(5, 1);
            AlarmManagerService.this.setImpl(1, calendar.getTimeInMillis(), 0L, 0L, AlarmManagerService.this.mDateChangeSender, null, null, 1, null, null, Process.myUid(), PackageManagerService.PLATFORM_PACKAGE_NAME);
        }

        public void scheduleSyncTimeToQNXEvent() throws Throwable {
            AlarmManagerService alarmManagerService = AlarmManagerService.this;
            alarmManagerService.setImpl(3, alarmManagerService.mInjector.getElapsedRealtime() + AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT, 0L, 0L, null, AlarmManagerService.this.mSyncTimeToQNX, "SYNC_TIME_TO_QNX", 1, null, null, Process.myUid(), PackageManagerService.PLATFORM_PACKAGE_NAME);
        }
    }

    class InteractiveStateReceiver extends BroadcastReceiver {
        public InteractiveStateReceiver() {
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.intent.action.SCREEN_OFF");
            filter.addAction("android.intent.action.SCREEN_ON");
            filter.setPriority(1000);
            AlarmManagerService.this.getContext().registerReceiver(this, filter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (AlarmManagerService.this.mLock) {
                AlarmManagerService.this.interactiveStateChangedLocked("android.intent.action.SCREEN_ON".equals(intent.getAction()));
            }
        }
    }

    class UninstallReceiver extends BroadcastReceiver {
        public UninstallReceiver() {
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.intent.action.PACKAGE_REMOVED");
            filter.addAction("android.intent.action.PACKAGE_RESTARTED");
            filter.addAction("android.intent.action.QUERY_PACKAGE_RESTART");
            filter.addDataScheme(com.android.server.pm.Settings.ATTR_PACKAGE);
            AlarmManagerService.this.getContext().registerReceiver(this, filter);
            IntentFilter sdFilter = new IntentFilter();
            sdFilter.addAction("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
            sdFilter.addAction("android.intent.action.USER_STOPPED");
            sdFilter.addAction("android.intent.action.UID_REMOVED");
            AlarmManagerService.this.getContext().registerReceiver(this, sdFilter);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:7:0x001e  */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            byte b;
            String pkg;
            int uid = intent.getIntExtra("android.intent.extra.UID", -1);
            synchronized (AlarmManagerService.this.mLock) {
                String[] pkgList = null;
                String action = intent.getAction();
                int i = 0;
                switch (action.hashCode()) {
                    case -1749672628:
                        b = action.equals("android.intent.action.UID_REMOVED") ? (byte) 3 : (byte) -1;
                        break;
                    case -1403934493:
                        if (action.equals("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE")) {
                            b = 1;
                        }
                        break;
                    case -1072806502:
                        if (action.equals("android.intent.action.QUERY_PACKAGE_RESTART")) {
                            b = 0;
                        }
                        break;
                    case -757780528:
                        if (action.equals("android.intent.action.PACKAGE_RESTARTED")) {
                            b = 5;
                        }
                        break;
                    case -742246786:
                        if (action.equals("android.intent.action.USER_STOPPED")) {
                            b = 2;
                        }
                        break;
                    case 525384130:
                        if (action.equals("android.intent.action.PACKAGE_REMOVED")) {
                            b = 4;
                        }
                        break;
                    default:
                        break;
                }
                if (b == 0) {
                    String[] pkgList2 = intent.getStringArrayExtra("android.intent.extra.PACKAGES");
                    int length = pkgList2.length;
                    while (i < length) {
                        String packageName = pkgList2[i];
                        if (!AlarmManagerService.this.lookForPackageLocked(packageName)) {
                            i++;
                        } else {
                            setResultCode(-1);
                            return;
                        }
                    }
                    return;
                }
                if (b == 1) {
                    pkgList = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
                } else {
                    if (b == 2) {
                        int userHandle = intent.getIntExtra("android.intent.extra.user_handle", -1);
                        if (userHandle >= 0) {
                            AlarmManagerService.this.removeUserLocked(userHandle);
                            AlarmManagerService.this.mAppWakeupHistory.removeForUser(userHandle);
                        }
                        return;
                    }
                    if (b == 3) {
                        if (uid >= 0) {
                            AlarmManagerService.this.mLastAllowWhileIdleDispatch.delete(uid);
                            AlarmManagerService.this.mUseAllowWhileIdleShortTime.delete(uid);
                        }
                        return;
                    }
                    if (b != 4) {
                        if (b != 5) {
                        }
                    } else if (intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                        return;
                    }
                    Uri data = intent.getData();
                    if (data != null && (pkg = data.getSchemeSpecificPart()) != null) {
                        pkgList = new String[]{pkg};
                    }
                }
                if (pkgList != null && pkgList.length > 0) {
                    int length2 = pkgList.length;
                    while (i < length2) {
                        String pkg2 = pkgList[i];
                        if (uid >= 0) {
                            AlarmManagerService.this.mAppWakeupHistory.removeForPackage(pkg2, UserHandle.getUserId(uid));
                            AlarmManagerService.this.removeLocked(uid);
                        } else {
                            AlarmManagerService.this.removeLocked(pkg2);
                        }
                        AlarmManagerService.this.mPriorities.remove(pkg2);
                        for (int i2 = AlarmManagerService.this.mBroadcastStats.size() - 1; i2 >= 0; i2--) {
                            ArrayMap<String, BroadcastStats> uidStats = AlarmManagerService.this.mBroadcastStats.valueAt(i2);
                            if (uidStats.remove(pkg2) != null && uidStats.size() <= 0) {
                                AlarmManagerService.this.mBroadcastStats.removeAt(i2);
                            }
                        }
                        i++;
                    }
                }
            }
        }
    }

    final class UidObserver extends IUidObserver.Stub {
        UidObserver() {
        }

        public void onUidStateChanged(int uid, int procState, long procStateSeq, int capability) {
        }

        public void onUidGone(int uid, boolean disabled) {
            if (disabled) {
                AlarmManagerService.this.mHandler.postRemoveForStopped(uid);
            }
        }

        public void onUidActive(int uid) {
        }

        public void onUidIdle(int uid, boolean disabled) {
            if (disabled) {
                AlarmManagerService.this.mHandler.postRemoveForStopped(uid);
            }
        }

        public void onUidCachedChanged(int uid, boolean cached) {
        }
    }

    private final class AppStandbyTracker extends AppStandbyInternal.AppIdleStateChangeListener {
        private AppStandbyTracker() {
        }

        public void onAppIdleStateChanged(String packageName, int userId, boolean idle, int bucket, int reason) {
            AlarmManagerService.this.mHandler.removeMessages(5);
            AlarmManagerService.this.mHandler.obtainMessage(5, userId, -1, packageName).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BroadcastStats getStatsLocked(PendingIntent pi) {
        String pkg = pi.getCreatorPackage();
        int uid = pi.getCreatorUid();
        return getStatsLocked(uid, pkg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BroadcastStats getStatsLocked(int uid, String pkgName) {
        ArrayMap<String, BroadcastStats> uidStats = this.mBroadcastStats.get(uid);
        if (uidStats == null) {
            uidStats = new ArrayMap<>();
            this.mBroadcastStats.put(uid, uidStats);
        }
        BroadcastStats bs = uidStats.get(pkgName);
        if (bs == null) {
            BroadcastStats bs2 = new BroadcastStats(uid, pkgName);
            uidStats.put(pkgName, bs2);
            return bs2;
        }
        return bs;
    }

    class DeliveryTracker extends IAlarmCompleteListener.Stub implements PendingIntent.OnFinished {
        DeliveryTracker() {
        }

        private InFlight removeLocked(PendingIntent pi, Intent intent) {
            for (int i = 0; i < AlarmManagerService.this.mInFlight.size(); i++) {
                InFlight inflight = AlarmManagerService.this.mInFlight.get(i);
                if (inflight.mPendingIntent == pi) {
                    if (pi.isBroadcast()) {
                        AlarmManagerService.this.notifyBroadcastAlarmCompleteLocked(inflight.mUid);
                    }
                    return AlarmManagerService.this.mInFlight.remove(i);
                }
            }
            AlarmManagerService.this.mLog.w("No in-flight alarm for " + pi + " " + intent);
            return null;
        }

        private InFlight removeLocked(IBinder listener) {
            for (int i = 0; i < AlarmManagerService.this.mInFlight.size(); i++) {
                if (AlarmManagerService.this.mInFlight.get(i).mListener == listener) {
                    return AlarmManagerService.this.mInFlight.remove(i);
                }
            }
            AlarmManagerService.this.mLog.w("No in-flight alarm for listener " + listener);
            return null;
        }

        private void updateStatsLocked(InFlight inflight) {
            long nowELAPSED = AlarmManagerService.this.mInjector.getElapsedRealtime();
            BroadcastStats bs = inflight.mBroadcastStats;
            bs.nesting--;
            if (bs.nesting <= 0) {
                bs.nesting = 0;
                bs.aggregateTime += nowELAPSED - bs.startTime;
            }
            FilterStats fs = inflight.mFilterStats;
            fs.nesting--;
            if (fs.nesting <= 0) {
                fs.nesting = 0;
                fs.aggregateTime += nowELAPSED - fs.startTime;
            }
            ActivityManager.noteAlarmFinish(inflight.mPendingIntent, inflight.mWorkSource, inflight.mUid, inflight.mTag);
        }

        private void updateTrackingLocked(InFlight inflight) {
            if (inflight != null) {
                updateStatsLocked(inflight);
            }
            AlarmManagerService.this.mBroadcastRefCount--;
            if (AlarmManagerService.this.mBroadcastRefCount == 0) {
                AlarmManagerService.this.mHandler.obtainMessage(4, 0).sendToTarget();
                AlarmManagerService.this.mWakeLock.release();
                if (AlarmManagerService.this.mInFlight.size() > 0) {
                    AlarmManagerService.this.mLog.w("Finished all dispatches with " + AlarmManagerService.this.mInFlight.size() + " remaining inflights");
                    for (int i = 0; i < AlarmManagerService.this.mInFlight.size(); i++) {
                        AlarmManagerService.this.mLog.w("  Remaining #" + i + ": " + AlarmManagerService.this.mInFlight.get(i));
                    }
                    AlarmManagerService.this.mInFlight.clear();
                    return;
                }
                return;
            }
            if (AlarmManagerService.this.mInFlight.size() > 0) {
                InFlight inFlight = AlarmManagerService.this.mInFlight.get(0);
                AlarmManagerService.this.setWakelockWorkSource(inFlight.mWorkSource, inFlight.mCreatorUid, inFlight.mTag, false);
            } else {
                AlarmManagerService.this.mLog.w("Alarm wakelock still held but sent queue empty");
                AlarmManagerService.this.mWakeLock.setWorkSource(null);
            }
        }

        public void alarmComplete(IBinder who) {
            if (who == null) {
                AlarmManagerService.this.mLog.w("Invalid alarmComplete: uid=" + Binder.getCallingUid() + " pid=" + Binder.getCallingPid());
                return;
            }
            long ident = Binder.clearCallingIdentity();
            try {
                synchronized (AlarmManagerService.this.mLock) {
                    AlarmManagerService.this.mHandler.removeMessages(3, who);
                    InFlight inflight = removeLocked(who);
                    if (inflight != null) {
                        updateTrackingLocked(inflight);
                        AlarmManagerService.access$3008(AlarmManagerService.this);
                    }
                }
                Binder.restoreCallingIdentity(ident);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }

        @Override // android.app.PendingIntent.OnFinished
        public void onSendFinished(PendingIntent pi, Intent intent, int resultCode, String resultData, Bundle resultExtras) {
            synchronized (AlarmManagerService.this.mLock) {
                AlarmManagerService.access$3108(AlarmManagerService.this);
                updateTrackingLocked(removeLocked(pi, intent));
            }
        }

        public void alarmTimedOut(IBinder who) {
            synchronized (AlarmManagerService.this.mLock) {
                InFlight inflight = removeLocked(who);
                if (inflight != null) {
                    updateTrackingLocked(inflight);
                    AlarmManagerService.access$3008(AlarmManagerService.this);
                } else {
                    AlarmManagerService.this.mLog.w("Spurious timeout of listener " + who);
                }
            }
        }

        public void deliverLocked(Alarm alarm, long nowELAPSED, boolean allowWhileIdle) throws Exception {
            long workSourceToken = ThreadLocalWorkSource.setUid(AlarmManagerService.getAlarmAttributionUid(alarm));
            try {
                if (alarm.operation != null) {
                    AlarmManagerService.access$3308(AlarmManagerService.this);
                    try {
                        alarm.operation.send(AlarmManagerService.this.getContext(), 0, AlarmManagerService.this.mBackgroundIntent.putExtra("android.intent.extra.ALARM_COUNT", alarm.count), AlarmManagerService.this.mDeliveryTracker, AlarmManagerService.this.mHandler, null, allowWhileIdle ? AlarmManagerService.this.mIdleOptions : AlarmManagerService.this.getAlarmOperationBundle(alarm));
                    } catch (PendingIntent.CanceledException e) {
                        if (alarm.repeatInterval > 0) {
                            AlarmManagerService.this.removeImpl(alarm.operation, null);
                        }
                        AlarmManagerService.access$3108(AlarmManagerService.this);
                        ThreadLocalWorkSource.restore(workSourceToken);
                        return;
                    }
                } else {
                    AlarmManagerService.access$3508(AlarmManagerService.this);
                    if (alarm.listener == AlarmManagerService.this.mTimeTickTrigger) {
                        AlarmManagerService.this.mTickHistory[AlarmManagerService.access$3708(AlarmManagerService.this)] = nowELAPSED;
                        if (AlarmManagerService.this.mNextTickHistory >= 10) {
                            AlarmManagerService.this.mNextTickHistory = 0;
                        }
                    }
                    try {
                        alarm.listener.doAlarm(this);
                        AlarmManagerService.this.mHandler.sendMessageDelayed(AlarmManagerService.this.mHandler.obtainMessage(3, alarm.listener.asBinder()), AlarmManagerService.this.mConstants.LISTENER_TIMEOUT);
                    } catch (Exception e2) {
                        AlarmManagerService.access$3008(AlarmManagerService.this);
                        ThreadLocalWorkSource.restore(workSourceToken);
                        return;
                    }
                }
                ThreadLocalWorkSource.restore(workSourceToken);
                if (AlarmManagerService.this.mBroadcastRefCount == 0) {
                    AlarmManagerService.this.setWakelockWorkSource(alarm.workSource, alarm.creatorUid, alarm.statsTag, true);
                    AlarmManagerService.this.mWakeLock.acquire();
                    AlarmManagerService.this.mHandler.obtainMessage(4, 1).sendToTarget();
                }
                InFlight inflight = new InFlight(AlarmManagerService.this, alarm, nowELAPSED);
                AlarmManagerService.this.mInFlight.add(inflight);
                AlarmManagerService.this.mBroadcastRefCount++;
                if (inflight.isBroadcast()) {
                    AlarmManagerService.this.notifyBroadcastAlarmPendingLocked(alarm.uid);
                }
                if (allowWhileIdle) {
                    AlarmManagerService.this.mLastAllowWhileIdleDispatch.put(alarm.creatorUid, nowELAPSED);
                    if (AlarmManagerService.this.mAppStateTracker == null || AlarmManagerService.this.mAppStateTracker.isUidInForeground(alarm.creatorUid)) {
                        AlarmManagerService.this.mUseAllowWhileIdleShortTime.put(alarm.creatorUid, true);
                    } else {
                        AlarmManagerService.this.mUseAllowWhileIdleShortTime.put(alarm.creatorUid, false);
                    }
                }
                if (!AlarmManagerService.this.isExemptFromAppStandby(alarm)) {
                    Pair.create(alarm.sourcePackage, Integer.valueOf(UserHandle.getUserId(alarm.creatorUid)));
                    AlarmManagerService.this.mAppWakeupHistory.recordAlarmForPackage(alarm.sourcePackage, UserHandle.getUserId(alarm.creatorUid), nowELAPSED);
                }
                BroadcastStats bs = inflight.mBroadcastStats;
                bs.count++;
                if (bs.nesting == 0) {
                    bs.nesting = 1;
                    bs.startTime = nowELAPSED;
                } else {
                    bs.nesting++;
                }
                FilterStats fs = inflight.mFilterStats;
                fs.count++;
                if (fs.nesting == 0) {
                    fs.nesting = 1;
                    fs.startTime = nowELAPSED;
                } else {
                    fs.nesting++;
                }
                if (alarm.type == 2 || alarm.type == 0) {
                    bs.numWakeup++;
                    fs.numWakeup++;
                    ActivityManager.noteWakeupAlarm(alarm.operation, alarm.workSource, alarm.uid, alarm.packageName, alarm.statsTag);
                }
            } catch (Throwable e3) {
                ThreadLocalWorkSource.restore(workSourceToken);
                throw e3;
            }
        }
    }

    private void incrementAlarmCount(int uid) {
        int uidIndex = this.mAlarmsPerUid.indexOfKey(uid);
        if (uidIndex < 0) {
            this.mAlarmsPerUid.put(uid, 1);
        } else {
            SparseIntArray sparseIntArray = this.mAlarmsPerUid;
            sparseIntArray.setValueAt(uidIndex, sparseIntArray.valueAt(uidIndex) + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decrementAlarmCount(int uid, int decrement) {
        int oldCount = 0;
        int uidIndex = this.mAlarmsPerUid.indexOfKey(uid);
        if (uidIndex >= 0) {
            oldCount = this.mAlarmsPerUid.valueAt(uidIndex);
            if (oldCount > decrement) {
                this.mAlarmsPerUid.setValueAt(uidIndex, oldCount - decrement);
            } else {
                this.mAlarmsPerUid.removeAt(uidIndex);
            }
        }
        if (oldCount < decrement) {
            Slog.wtf(TAG, "Attempt to decrement existing alarm count " + oldCount + " by " + decrement + " for uid " + uid);
        }
    }

    private class ShellCmd extends ShellCommand {
        private ShellCmd() {
        }

        IAlarmManager getBinderService() {
            return IAlarmManager.Stub.asInterface(AlarmManagerService.this.mService);
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001c  */
        public int onCommand(String cmd) {
            byte b;
            if (cmd == null) {
                return handleDefaultCommands(cmd);
            }
            PrintWriter pw = getOutPrintWriter();
            try {
                int iHashCode = cmd.hashCode();
                if (iHashCode != 1369384280) {
                    b = (iHashCode == 2023087364 && cmd.equals("set-timezone")) ? (byte) 1 : (byte) -1;
                } else if (cmd.equals("set-time")) {
                    b = 0;
                }
                if (b == 0) {
                    String tz = getNextArgRequired();
                    long millis = Long.parseLong(tz);
                    return getBinderService().setTime(millis) ? 0 : -1;
                }
                if (b == 1) {
                    String tz2 = getNextArgRequired();
                    getBinderService().setTimeZone(tz2);
                    return 0;
                }
                return handleDefaultCommands(cmd);
            } catch (Exception e) {
                pw.println(e);
                return -1;
            }
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            pw.println("Alarm manager service (alarm) commands:");
            pw.println("  help");
            pw.println("    Print this help text.");
            pw.println("  set-time TIME");
            pw.println("    Set the system clock time to TIME where TIME is milliseconds");
            pw.println("    since the Epoch.");
            pw.println("  set-timezone TZ");
            pw.println("    Set the system timezone to TZ where TZ is an Olson id.");
        }
    }
}
