package com.android.server.am;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.AppGlobals;
import android.app.IApplicationThread;
import android.app.IUidObserver;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.net.NetworkPolicyManager;
import android.os.AppZygote;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.os.storage.StorageManagerInternal;
import android.system.Os;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.EventLog;
import android.util.LongSparseArray;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.Xml;
import com.android.internal.app.ProcessMap;
import com.android.internal.app.procstats.ProcessStats;
import com.android.internal.os.Zygote;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.MemInfoReader;
import com.android.server.LocalServices;
import com.android.server.ServiceThread;
import com.android.server.SystemConfig;
import com.android.server.Watchdog;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.compat.PlatformCompat;
import com.android.server.job.controllers.JobStatus;
import com.android.server.notification.SnoozeHelper;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.Settings;
import com.android.server.pm.dex.DexManager;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.usage.AppStandbyController;
import com.android.server.wm.ActivityServiceConnectionsHolder;
import com.android.server.wm.WindowManagerService;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessList {
    static final String ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY = "persist.zygote.app_data_isolation";
    static final String ANDROID_FUSE_ENABLED = "persist.sys.fuse";
    static final String ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY = "persist.sys.vold_app_data_isolation_enabled";
    private static final long APP_DATA_DIRECTORY_ISOLATION = 143937733;
    static final int BACKUP_APP_ADJ = 300;
    static final int CACHED_APP_IMPORTANCE_LEVELS = 5;
    static final int CACHED_APP_LMK_FIRST_ADJ = 950;
    static final int CACHED_APP_MAX_ADJ = 999;
    static final int CACHED_APP_MIN_ADJ = 900;
    static final int FOREGROUND_APP_ADJ = 0;
    private static final long GWP_ASAN = 135634846;
    static final int HEAVY_WEIGHT_APP_ADJ = 400;
    static final int HOME_APP_ADJ = 600;
    static final int INVALID_ADJ = -10000;
    private static final long LMKD_RECONNECT_DELAY_MS = 1000;
    static final int LMK_ASYNC_EVENT_KILL = 0;
    static final byte LMK_GETKILLCNT = 4;
    static final byte LMK_PROCKILL = 6;
    static final byte LMK_PROCPRIO = 1;
    static final byte LMK_PROCPURGE = 3;
    static final byte LMK_PROCREMOVE = 2;
    static final byte LMK_SUBSCRIBE = 5;
    static final byte LMK_TARGET = 0;
    static final long MAX_EMPTY_TIME = 1800000;
    private static final int MAX_ZYGOTE_UNSOLICITED_MESSAGE_SIZE = 16;
    static final int MIN_CACHED_APPS = 2;
    static final int MIN_CRASH_INTERVAL = 60000;
    static final int NATIVE_ADJ = -1000;
    private static final long NATIVE_HEAP_POINTER_TAGGING = 135754954;
    static final int NETWORK_STATE_BLOCK = 1;
    static final int NETWORK_STATE_NO_CHANGE = 0;
    static final int NETWORK_STATE_UNBLOCK = 2;
    static final int PAGE_SIZE = 4096;
    static final int PERCEPTIBLE_APP_ADJ = 200;
    static final int PERCEPTIBLE_LOW_APP_ADJ = 250;
    static final int PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ = 50;
    static final int PERSISTENT_PROC_ADJ = -800;
    static final int PERSISTENT_SERVICE_ADJ = -700;
    static final int PREVIOUS_APP_ADJ = 700;
    private static final int PROC_KILL_TIMEOUT = 2000;
    public static final int PROC_MEM_CACHED = 4;
    public static final int PROC_MEM_IMPORTANT = 2;
    public static final int PROC_MEM_NUM = 5;
    public static final int PROC_MEM_PERSISTENT = 0;
    public static final int PROC_MEM_SERVICE = 3;
    public static final int PROC_MEM_TOP = 1;
    private static final String PROPERTY_USE_APP_IMAGE_STARTUP_CACHE = "persist.device_config.runtime_native.use_app_image_startup_cache";
    public static final int PSS_ALL_INTERVAL = 1200000;
    private static final int PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL = 30000;
    private static final int PSS_FIRST_ASLEEP_CACHED_INTERVAL = 60000;
    private static final int PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL = 60000;
    private static final int PSS_FIRST_ASLEEP_TOP_INTERVAL = 20000;
    private static final int PSS_FIRST_BACKGROUND_INTERVAL = 20000;
    private static final int PSS_FIRST_CACHED_INTERVAL = 20000;
    private static final int PSS_FIRST_PERSISTENT_INTERVAL = 30000;
    private static final int PSS_FIRST_TOP_INTERVAL = 10000;
    public static final int PSS_MAX_INTERVAL = 3600000;
    public static final int PSS_MIN_TIME_FROM_STATE_CHANGE = 15000;
    public static final int PSS_SAFE_TIME_FROM_STATE_CHANGE = 1000;
    private static final int PSS_SAME_CACHED_INTERVAL = 600000;
    private static final int PSS_SAME_IMPORTANT_INTERVAL = 600000;
    private static final int PSS_SAME_PERSISTENT_INTERVAL = 600000;
    private static final int PSS_SAME_SERVICE_INTERVAL = 300000;
    private static final int PSS_SAME_TOP_INTERVAL = 60000;
    private static final int PSS_TEST_FIRST_BACKGROUND_INTERVAL = 5000;
    private static final int PSS_TEST_FIRST_TOP_INTERVAL = 3000;
    public static final int PSS_TEST_MIN_TIME_FROM_STATE_CHANGE = 10000;
    private static final int PSS_TEST_SAME_BACKGROUND_INTERVAL = 15000;
    private static final int PSS_TEST_SAME_IMPORTANT_INTERVAL = 10000;
    static final int SCHED_GROUP_BACKGROUND = 0;
    static final int SCHED_GROUP_DEFAULT = 2;
    static final int SCHED_GROUP_RESTRICTED = 1;
    public static final int SCHED_GROUP_TOP_APP = 3;
    static final int SCHED_GROUP_TOP_APP_BOUND = 4;
    static final int SERVICE_ADJ = 500;
    static final int SERVICE_B_ADJ = 800;
    static final int SYSTEM_ADJ = -900;
    static final String TAG = "ActivityManager";
    static final int TRIM_CRITICAL_THRESHOLD = 3;
    static final int TRIM_LOW_THRESHOLD = 5;
    static final int UNKNOWN_ADJ = 1001;
    private static final String UNSOL_ZYGOTE_MSG_SOCKET_PATH = "/data/system/unsolzygotesocket";
    static final int VISIBLE_APP_ADJ = 100;
    static final int VISIBLE_APP_LAYER_MAX = 99;
    ActiveUids mActiveUids;
    private boolean mAppDataIsolationEnabled;
    private ArrayList<String> mAppDataIsolationWhitelistedApps;
    final AppExitInfoTracker mAppExitInfoTracker;
    IsolatedUidRangeAllocator mAppIsolatedUidRangeAllocator;
    final ArrayMap<AppZygote, ArrayList<ProcessRecord>> mAppZygoteProcesses;
    final ProcessMap<AppZygote> mAppZygotes;
    private long mCachedRestoreLevel;
    IsolatedUidRange mGlobalIsolatedUids;
    private boolean mHaveDisplaySize;
    ImperceptibleKillRunner mImperceptibleKillRunner;
    final SparseArray<ProcessRecord> mIsolatedProcesses;
    final ArrayList<LmkdPackage> mLmkdWhiteList;
    int mLruProcessActivityStart;
    int mLruProcessServiceStart;
    final ArrayList<ProcessRecord> mLruProcesses;
    int mLruSeq;
    private int mMegaExtraFreeKbytes;
    private final int[] mMegaOomAdj;
    private final int[] mMegaOomMinFree;
    private final int[] mOomAdj;
    private boolean mOomLevelsSet;
    private final int[] mOomMinFree;
    private final int[] mOomMinFreeHigh;
    private final int[] mOomMinFreeLow;
    final LongSparseArray<ProcessRecord> mPendingStarts;
    private PlatformCompat mPlatformCompat;
    private long mProcStartSeqCounter;
    long mProcStateSeqCounter;
    final MyProcessMap mProcessNames;
    final ArrayList<ProcessRecord> mRemovedProcesses;
    ActivityManagerService mService = null;
    final StringBuilder mStringBuilder;
    private LocalSocket mSystemServerSocketForZygote;
    private final long mTotalMemMb;
    private boolean mVoldAppDataIsolationEnabled;
    private final int[] mZygoteSigChldMessage;
    private final byte[] mZygoteUnsolicitedMessage;
    private boolean mega_lmkd_enable;
    static KillHandler sKillHandler = null;
    static ServiceThread sKillThread = null;
    private static LmkdConnection sLmkdConnection = null;
    private static final int[] sProcStateToProcMem = {0, 0, 1, 2, 1, 2, 2, 2, 2, 2, 3, 4, 1, 2, 4, 4, 4, 4, 4, 4};
    private static final long[] sFirstAwakePssTimes = {30000, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY, 20000, 20000, 20000};
    private static final long[] sSameAwakePssTimes = {600000, 60000, 600000, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS, 600000};
    private static final long[] sFirstAsleepPssTimes = {60000, 20000, 30000, 30000, 60000};
    private static final long[] sSameAsleepPssTimes = {600000, 60000, 600000, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS, 600000};
    private static final long[] sTestFirstPssTimes = {BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS, BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS, 5000, 5000, 5000};
    private static final long[] sTestSamePssTimes = {15000, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY, 15000, 15000};

    final class LmkdPackage {
        public int oom_score_adj;
        public String package_name;

        LmkdPackage(String packagename, int adj) {
            this.package_name = packagename;
            this.oom_score_adj = adj;
        }
    }

    final class IsolatedUidRange {
        public final int mFirstUid;
        public final int mLastUid;
        private int mNextUid;
        private final SparseBooleanArray mUidUsed = new SparseBooleanArray();

        IsolatedUidRange(int firstUid, int lastUid) {
            this.mFirstUid = firstUid;
            this.mLastUid = lastUid;
            this.mNextUid = firstUid;
        }

        int allocateIsolatedUidLocked(int userId) {
            int stepsLeft = (this.mLastUid - this.mFirstUid) + 1;
            for (int i = 0; i < stepsLeft; i++) {
                int i2 = this.mNextUid;
                if (i2 < this.mFirstUid || i2 > this.mLastUid) {
                    this.mNextUid = this.mFirstUid;
                }
                int uid = UserHandle.getUid(userId, this.mNextUid);
                this.mNextUid++;
                if (!this.mUidUsed.get(uid, false)) {
                    this.mUidUsed.put(uid, true);
                    return uid;
                }
            }
            return -1;
        }

        void freeIsolatedUidLocked(int uid) {
            this.mUidUsed.delete(uid);
        }
    }

    final class IsolatedUidRangeAllocator {
        private final ProcessMap<IsolatedUidRange> mAppRanges = new ProcessMap<>();
        private final BitSet mAvailableUidRanges;
        private final int mFirstUid;
        private final int mNumUidRanges;
        private final int mNumUidsPerRange;

        IsolatedUidRangeAllocator(int firstUid, int lastUid, int numUidsPerRange) {
            this.mFirstUid = firstUid;
            this.mNumUidsPerRange = numUidsPerRange;
            this.mNumUidRanges = ((lastUid - firstUid) + 1) / numUidsPerRange;
            BitSet bitSet = new BitSet(this.mNumUidRanges);
            this.mAvailableUidRanges = bitSet;
            bitSet.set(0, this.mNumUidRanges);
        }

        IsolatedUidRange getIsolatedUidRangeLocked(String processName, int uid) {
            return (IsolatedUidRange) this.mAppRanges.get(processName, uid);
        }

        IsolatedUidRange getOrCreateIsolatedUidRangeLocked(String processName, int uid) {
            IsolatedUidRange range = getIsolatedUidRangeLocked(processName, uid);
            if (range == null) {
                int uidRangeIndex = this.mAvailableUidRanges.nextSetBit(0);
                if (uidRangeIndex < 0) {
                    return null;
                }
                this.mAvailableUidRanges.clear(uidRangeIndex);
                int i = this.mFirstUid;
                int i2 = this.mNumUidsPerRange;
                int actualUid = i + (uidRangeIndex * i2);
                IsolatedUidRange range2 = ProcessList.this.new IsolatedUidRange(actualUid, (i2 + actualUid) - 1);
                this.mAppRanges.put(processName, uid, range2);
                return range2;
            }
            return range;
        }

        void freeUidRangeLocked(ApplicationInfo info) {
            IsolatedUidRange range = (IsolatedUidRange) this.mAppRanges.get(info.processName, info.uid);
            if (range != null) {
                int uidRangeIndex = (range.mFirstUid - this.mFirstUid) / this.mNumUidsPerRange;
                this.mAvailableUidRanges.set(uidRangeIndex);
                this.mAppRanges.remove(info.processName, info.uid);
            }
        }
    }

    final class MyProcessMap extends ProcessMap<ProcessRecord> {
        MyProcessMap() {
        }

        public ProcessRecord put(String name, int uid, ProcessRecord value) {
            ProcessRecord r = (ProcessRecord) super.put(name, uid, value);
            ProcessList.this.mService.mAtmInternal.onProcessAdded(r.getWindowProcessController());
            return r;
        }

        /* JADX INFO: renamed from: remove, reason: merged with bridge method [inline-methods] */
        public ProcessRecord m15remove(String name, int uid) {
            ProcessRecord r = (ProcessRecord) super.remove(name, uid);
            ProcessList.this.mService.mAtmInternal.onProcessRemoved(name, uid);
            return r;
        }
    }

    final class KillHandler extends Handler {
        static final int KILL_PROCESS_GROUP_MSG = 4000;
        static final int LMKD_RECONNECT_MSG = 4001;

        public KillHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == KILL_PROCESS_GROUP_MSG) {
                Trace.traceBegin(64L, "killProcessGroup");
                Process.killProcessGroup(msg.arg1, msg.arg2);
                Trace.traceEnd(64L);
            } else {
                if (i == LMKD_RECONNECT_MSG) {
                    if (!ProcessList.sLmkdConnection.connect()) {
                        Slog.i(ProcessList.TAG, "Failed to connect to lmkd, retry after 1000 ms");
                        ProcessList.sKillHandler.sendMessageDelayed(ProcessList.sKillHandler.obtainMessage(LMKD_RECONNECT_MSG), 1000L);
                        return;
                    }
                    return;
                }
                super.handleMessage(msg);
            }
        }
    }

    ProcessList() {
        int[] iArr = {0, 100, 200, PERCEPTIBLE_LOW_APP_ADJ, CACHED_APP_MIN_ADJ, CACHED_APP_LMK_FIRST_ADJ};
        this.mOomAdj = iArr;
        this.mOomMinFreeLow = new int[]{12288, 18432, 24576, 36864, 43008, 49152};
        this.mOomMinFreeHigh = new int[]{73728, 92160, 110592, 129024, 147456, 184320};
        this.mOomMinFree = new int[iArr.length];
        this.mOomLevelsSet = false;
        this.mAppDataIsolationEnabled = false;
        this.mVoldAppDataIsolationEnabled = false;
        this.mStringBuilder = new StringBuilder(256);
        this.mProcStateSeqCounter = 0L;
        this.mProcStartSeqCounter = 0L;
        this.mPendingStarts = new LongSparseArray<>();
        this.mLruProcesses = new ArrayList<>();
        this.mLruProcessActivityStart = 0;
        this.mLruProcessServiceStart = 0;
        this.mLruSeq = 0;
        this.mIsolatedProcesses = new SparseArray<>();
        this.mAppZygotes = new ProcessMap<>();
        this.mAppExitInfoTracker = new AppExitInfoTracker();
        this.mAppZygoteProcesses = new ArrayMap<>();
        this.mPlatformCompat = null;
        this.mZygoteUnsolicitedMessage = new byte[16];
        this.mZygoteSigChldMessage = new int[3];
        this.mMegaOomAdj = new int[]{0, 100, 200, PERCEPTIBLE_LOW_APP_ADJ, CACHED_APP_MIN_ADJ, CACHED_APP_LMK_FIRST_ADJ};
        this.mMegaOomMinFree = new int[]{100000, 200000, 300000, com.android.server.EventLogTags.VOLUME_CHANGED, 600000, 800000};
        this.mMegaExtraFreeKbytes = 24300;
        this.mega_lmkd_enable = SystemProperties.getBoolean("ro.config.mega_lmkd", false);
        this.mLmkdWhiteList = new ArrayList<>();
        this.mGlobalIsolatedUids = new IsolatedUidRange(99000, 99999);
        this.mAppIsolatedUidRangeAllocator = new IsolatedUidRangeAllocator(90000, 98999, 100);
        this.mRemovedProcesses = new ArrayList<>();
        this.mProcessNames = new MyProcessMap();
        MemInfoReader minfo = new MemInfoReader();
        minfo.readMemInfo();
        this.mTotalMemMb = minfo.getTotalSize() / 1048576;
        updateOomLevels(0, 0, false);
        if (this.mega_lmkd_enable) {
            new ParseLmkdXMLRunnable().run();
        }
    }

    private final class ParseLmkdXMLRunnable implements Runnable {
        private static final int JOBS_FILE_VERSION = 0;

        private ParseLmkdXMLRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean ret = false;
            try {
                try {
                    AtomicFile mLmkdFile = new AtomicFile(new File("/system/etc/lmkd.xml"), "lmkd");
                    FileInputStream fis = mLmkdFile.openRead();
                    ret = parseLmkdXML(fis);
                    fis.close();
                    if (!ret) {
                        Slog.d(ProcessList.TAG, "failed to parse lmkd.xml");
                    }
                } catch (FileNotFoundException e) {
                    Slog.d(ProcessList.TAG, "Could not find lmkd file, probably there was nothing to load.");
                    if (!ret) {
                    }
                } catch (IOException | XmlPullParserException e2) {
                    Slog.wtf(ProcessList.TAG, "Error lmkd.xml.", e2);
                    if (!ret) {
                    }
                }
            } catch (Throwable th) {
                if (!ret) {
                    Slog.d(ProcessList.TAG, "failed to parse lmkd.xml");
                }
                throw th;
            }
        }

        private boolean parseLmkdXML(FileInputStream fis) throws XmlPullParserException, IOException {
            XmlPullParser parser = Xml.newPullParser();
            parser.setInput(fis, StandardCharsets.UTF_8.name());
            int eventType = parser.getEventType();
            while (eventType != 2 && eventType != 1) {
                eventType = parser.next();
                Slog.d(ProcessList.TAG, "Start tag: " + parser.getName());
            }
            if (eventType == 1) {
                Slog.d(ProcessList.TAG, "No lmkd config info in lmkd.xml.");
                return false;
            }
            if ("lmkd-info".equals(parser.getName())) {
                try {
                    int version = Integer.parseInt(parser.getAttributeValue(null, "version"));
                    if (version != 0) {
                        Slog.d(ProcessList.TAG, "Invalid version number, aborting lmkd file read.");
                        return false;
                    }
                    int eventType2 = parser.next();
                    do {
                        if (eventType2 == 2) {
                            String tagName = parser.getName();
                            Slog.d(ProcessList.TAG, "tag: " + parser.getName());
                            if ("lmkd_minfree".equals(tagName)) {
                                String value = parser.getAttributeValue(null, "value");
                                Slog.d(ProcessList.TAG, "lmkd minfree is " + value);
                                if (value == null) {
                                    return false;
                                }
                                String[] minfree = value.split(":");
                                for (int index = 0; index < ProcessList.this.mMegaOomMinFree.length; index++) {
                                    ProcessList.this.mMegaOomMinFree[index] = Integer.parseInt(minfree[index]);
                                    if (index >= minfree.length - 1) {
                                        break;
                                    }
                                }
                            } else if ("lmkd_adj".equals(tagName)) {
                                String value2 = parser.getAttributeValue(null, "value");
                                Slog.d(ProcessList.TAG, "oomAdj is " + value2);
                                if (value2 == null) {
                                    return false;
                                }
                                String[] oomAdj = value2.split(":");
                                for (int index2 = 0; index2 < ProcessList.this.mMegaOomAdj.length; index2++) {
                                    ProcessList.this.mMegaOomAdj[index2] = Integer.parseInt(oomAdj[index2]);
                                    if (index2 >= oomAdj.length - 1) {
                                        break;
                                    }
                                }
                            } else if ("extra_free_kbytes".equals(tagName)) {
                                String value3 = parser.getAttributeValue(null, "value");
                                if (value3 != null) {
                                    ProcessList.this.mMegaExtraFreeKbytes = Integer.parseInt(value3);
                                    Slog.d(ProcessList.TAG, "mMegaExtraFreeKbytes is " + ProcessList.this.mMegaExtraFreeKbytes);
                                }
                            } else if ("lmkd_package".equals(tagName)) {
                                int eventType3 = parser.next();
                                int outerDepth = parser.getDepth();
                                do {
                                    if (eventType3 == 2) {
                                        tagName = parser.getName();
                                        if (Settings.TAG_ITEM.equals(tagName)) {
                                            String packageName = parser.getAttributeValue(null, "package_name");
                                            Slog.d(ProcessList.TAG, "packagename is " + packageName);
                                            int oom_score_adj = Integer.parseInt(parser.getAttributeValue(null, "max_adj"));
                                            Slog.d(ProcessList.TAG, "max adj is " + oom_score_adj);
                                            ProcessList.this.mLmkdWhiteList.add(ProcessList.this.new LmkdPackage(packageName, oom_score_adj));
                                        }
                                    }
                                    eventType3 = parser.next();
                                } while (parser.getDepth() >= outerDepth);
                            }
                        }
                        eventType2 = parser.next();
                    } while (eventType2 != 1);
                } catch (NumberFormatException e) {
                    Slog.e(ProcessList.TAG, "Invalid version number, aborting lmkd file read.");
                    return false;
                }
            }
            return true;
        }
    }

    void init(ActivityManagerService service, ActiveUids activeUids, PlatformCompat platformCompat) {
        this.mService = service;
        this.mActiveUids = activeUids;
        this.mPlatformCompat = platformCompat;
        this.mAppDataIsolationEnabled = SystemProperties.getBoolean(ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY, true);
        boolean z = false;
        boolean fuseEnabled = SystemProperties.getBoolean(ANDROID_FUSE_ENABLED, false);
        boolean voldAppDataIsolationEnabled = SystemProperties.getBoolean(ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY, false);
        if (!fuseEnabled && voldAppDataIsolationEnabled) {
            Slog.e(TAG, "Fuse is not enabled while vold app data isolation is enabled");
        }
        if (fuseEnabled && voldAppDataIsolationEnabled) {
            z = true;
        }
        this.mVoldAppDataIsolationEnabled = z;
        this.mAppDataIsolationWhitelistedApps = new ArrayList<>(SystemConfig.getInstance().getAppDataIsolationWhitelistedApps());
        if (sKillHandler == null) {
            ServiceThread serviceThread = new ServiceThread("ActivityManager:kill", 10, true);
            sKillThread = serviceThread;
            serviceThread.start();
            sKillHandler = new KillHandler(sKillThread.getLooper());
            sLmkdConnection = new LmkdConnection(sKillThread.getLooper().getQueue(), new LmkdConnection.LmkdConnectionListener() { // from class: com.android.server.am.ProcessList.1
                @Override // com.android.server.am.LmkdConnection.LmkdConnectionListener
                public boolean onConnect(OutputStream ostream) {
                    Slog.i(ProcessList.TAG, "Connection with lmkd established");
                    return ProcessList.this.onLmkdConnect(ostream);
                }

                @Override // com.android.server.am.LmkdConnection.LmkdConnectionListener
                public void onDisconnect() {
                    Slog.w(ProcessList.TAG, "Lost connection to lmkd");
                    ProcessList.sKillHandler.sendMessageDelayed(ProcessList.sKillHandler.obtainMessage(4001), 1000L);
                }

                @Override // com.android.server.am.LmkdConnection.LmkdConnectionListener
                public boolean isReplyExpected(ByteBuffer replyBuf, ByteBuffer dataReceived, int receivedLen) {
                    return receivedLen == replyBuf.array().length && dataReceived.getInt(0) == replyBuf.getInt(0);
                }

                @Override // com.android.server.am.LmkdConnection.LmkdConnectionListener
                public boolean handleUnsolicitedMessage(ByteBuffer dataReceived, int receivedLen) {
                    if (receivedLen < 4 || dataReceived.getInt(0) != 6 || receivedLen != 12) {
                        return false;
                    }
                    ProcessList.this.mAppExitInfoTracker.scheduleNoteLmkdProcKilled(dataReceived.getInt(4), dataReceived.getInt(8));
                    return true;
                }
            });
            LocalSocket localSocketCreateSystemServerSocketForZygote = createSystemServerSocketForZygote();
            this.mSystemServerSocketForZygote = localSocketCreateSystemServerSocketForZygote;
            if (localSocketCreateSystemServerSocketForZygote != null) {
                sKillHandler.getLooper().getQueue().addOnFileDescriptorEventListener(this.mSystemServerSocketForZygote.getFileDescriptor(), 1, new MessageQueue.OnFileDescriptorEventListener() { // from class: com.android.server.am.-$$Lambda$ProcessList$hjUwwFAIhoht4KRKnKeUve_Kcto
                    @Override // android.os.MessageQueue.OnFileDescriptorEventListener
                    public final int onFileDescriptorEvents(FileDescriptor fileDescriptor, int i) {
                        return this.f$0.handleZygoteMessages(fileDescriptor, i);
                    }
                });
            }
            this.mAppExitInfoTracker.init(this.mService);
            this.mImperceptibleKillRunner = new ImperceptibleKillRunner(sKillThread.getLooper());
        }
    }

    void onSystemReady() {
        this.mAppExitInfoTracker.onSystemReady();
    }

    void applyDisplaySize(WindowManagerService wm) {
        if (!this.mHaveDisplaySize) {
            Point p = new Point();
            wm.getBaseDisplaySize(0, p);
            if (p.x != 0 && p.y != 0) {
                updateOomLevels(p.x, p.y, true);
                this.mHaveDisplaySize = true;
            }
        }
    }

    Map<Integer, String> getProcessesWithPendingBindMounts(int userId) {
        Map<Integer, String> pidPackageMap = new HashMap<>();
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
                    ProcessRecord record = this.mLruProcesses.get(i);
                    if (record.userId == userId && record.bindMountPending) {
                        int pid = record.pid;
                        if (pid == 0) {
                            throw new IllegalStateException("Pending process is not started yet,retry later");
                        }
                        pidPackageMap.put(Integer.valueOf(pid), record.info.packageName);
                    }
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
        return pidPackageMap;
    }

    private void updateOomLevels(int displayWidth, int displayHeight, boolean write) {
        float scaleMem = (this.mTotalMemMb - 350) / 350.0f;
        float scaleDisp = ((displayWidth * displayHeight) - 384000) / (1024000 - 384000);
        float scale = scaleMem > scaleDisp ? scaleMem : scaleDisp;
        if (scale < 0.0f) {
            scale = 0.0f;
        } else if (scale > 1.0f) {
            scale = 1.0f;
        }
        int minfree_adj = Resources.getSystem().getInteger(R.integer.config_displayWhiteBalanceColorTemperatureMin);
        int minfree_abs = Resources.getSystem().getInteger(R.integer.config_displayWhiteBalanceColorTemperatureMax);
        boolean is64bit = Build.SUPPORTED_64_BIT_ABIS.length > 0;
        for (int i = 0; i < this.mOomAdj.length; i++) {
            int low = this.mOomMinFreeLow[i];
            int high = this.mOomMinFreeHigh[i];
            if (is64bit) {
                if (i == 4) {
                    high = (high * 3) / 2;
                } else if (i == 5) {
                    high = (high * 7) / 4;
                }
            }
            this.mOomMinFree[i] = (int) (low + ((high - low) * scale));
        }
        if (minfree_abs >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.mOomAdj;
                if (i2 >= iArr.length) {
                    break;
                }
                int[] iArr2 = this.mOomMinFree;
                iArr2[i2] = (int) ((minfree_abs * iArr2[i2]) / iArr2[iArr.length - 1]);
                i2++;
            }
        }
        if (minfree_adj != 0) {
            int i3 = 0;
            while (true) {
                int[] iArr3 = this.mOomAdj;
                if (i3 >= iArr3.length) {
                    break;
                }
                int[] iArr4 = this.mOomMinFree;
                iArr4[i3] = iArr4[i3] + ((int) ((minfree_adj * iArr4[i3]) / iArr4[iArr3.length - 1]));
                if (iArr4[i3] < 0) {
                    iArr4[i3] = 0;
                }
                i3++;
            }
        }
        this.mCachedRestoreLevel = (getMemLevel(CACHED_APP_MAX_ADJ) / 1024) / 3;
        int reserve = (((displayWidth * displayHeight) * 4) * 3) / 1024;
        int reserve_adj = Resources.getSystem().getInteger(R.integer.config_defaultRingVibrationIntensity);
        int reserve_abs = Resources.getSystem().getInteger(R.integer.config_defaultRefreshRateInZone);
        if (reserve_abs >= 0) {
            reserve = reserve_abs;
        }
        if (reserve_adj != 0 && (reserve = reserve + reserve_adj) < 0) {
            reserve = 0;
        }
        if (write) {
            ByteBuffer buf = ByteBuffer.allocate(((this.mOomAdj.length * 2) + 1) * 4);
            buf.putInt(0);
            for (int i4 = 0; i4 < this.mOomAdj.length; i4++) {
                if (this.mega_lmkd_enable) {
                    buf.putInt((this.mMegaOomMinFree[i4] * 1024) / 4096);
                    buf.putInt(this.mMegaOomAdj[i4]);
                    reserve = this.mMegaExtraFreeKbytes;
                } else {
                    buf.putInt((this.mOomMinFree[i4] * 1024) / 4096);
                    buf.putInt(this.mOomAdj[i4]);
                }
            }
            writeLmkd(buf, null);
            SystemProperties.set("sys.sysctl.extra_free_kbytes", Integer.toString(reserve));
            this.mOomLevelsSet = true;
        }
    }

    public static int computeEmptyProcessLimit(int totalProcessLimit) {
        return totalProcessLimit / 2;
    }

    private static String buildOomTag(String prefix, String compactPrefix, String space, int val, int base, boolean compact) {
        int diff = val - base;
        if (diff == 0) {
            if (compact) {
                return compactPrefix;
            }
            if (space == null) {
                return prefix;
            }
            return prefix + space;
        }
        if (diff < 10) {
            StringBuilder sb = new StringBuilder();
            sb.append(prefix);
            sb.append(compact ? "+" : "+ ");
            sb.append(Integer.toString(diff));
            return sb.toString();
        }
        return prefix + "+" + Integer.toString(diff);
    }

    public static String makeOomAdjString(int setAdj, boolean compact) {
        if (setAdj >= CACHED_APP_MIN_ADJ) {
            return buildOomTag("cch", "cch", "   ", setAdj, CACHED_APP_MIN_ADJ, compact);
        }
        if (setAdj >= SERVICE_B_ADJ) {
            return buildOomTag("svcb  ", "svcb", null, setAdj, SERVICE_B_ADJ, compact);
        }
        if (setAdj >= PREVIOUS_APP_ADJ) {
            return buildOomTag("prev  ", "prev", null, setAdj, PREVIOUS_APP_ADJ, compact);
        }
        if (setAdj >= 600) {
            return buildOomTag("home  ", "home", null, setAdj, 600, compact);
        }
        if (setAdj >= 500) {
            return buildOomTag("svc   ", "svc", null, setAdj, 500, compact);
        }
        if (setAdj >= HEAVY_WEIGHT_APP_ADJ) {
            return buildOomTag("hvy   ", "hvy", null, setAdj, HEAVY_WEIGHT_APP_ADJ, compact);
        }
        if (setAdj >= 300) {
            return buildOomTag("bkup  ", "bkup", null, setAdj, 300, compact);
        }
        if (setAdj >= PERCEPTIBLE_LOW_APP_ADJ) {
            return buildOomTag("prcl  ", "prcl", null, setAdj, PERCEPTIBLE_LOW_APP_ADJ, compact);
        }
        if (setAdj >= 200) {
            return buildOomTag("prcp  ", "prcp", null, setAdj, 200, compact);
        }
        if (setAdj >= 100) {
            return buildOomTag("vis", "vis", "   ", setAdj, 100, compact);
        }
        if (setAdj >= 0) {
            return buildOomTag("fg ", "fg ", "   ", setAdj, 0, compact);
        }
        if (setAdj >= PERSISTENT_SERVICE_ADJ) {
            return buildOomTag("psvc  ", "psvc", null, setAdj, PERSISTENT_SERVICE_ADJ, compact);
        }
        if (setAdj >= PERSISTENT_PROC_ADJ) {
            return buildOomTag("pers  ", "pers", null, setAdj, PERSISTENT_PROC_ADJ, compact);
        }
        if (setAdj >= SYSTEM_ADJ) {
            return buildOomTag("sys   ", "sys", null, setAdj, SYSTEM_ADJ, compact);
        }
        if (setAdj >= -1000) {
            return buildOomTag("ntv  ", "ntv", null, setAdj, -1000, compact);
        }
        return Integer.toString(setAdj);
    }

    public static String makeProcStateString(int curProcState) {
        switch (curProcState) {
            case 0:
                return "PER ";
            case 1:
                return "PERU";
            case 2:
                return "TOP ";
            case 3:
                return "BTOP";
            case 4:
                return "FGS ";
            case 5:
                return "BFGS";
            case 6:
                return "IMPF";
            case 7:
                return "IMPB";
            case 8:
                return "TRNB";
            case 9:
                return "BKUP";
            case 10:
                return "SVC ";
            case 11:
                return "RCVR";
            case 12:
                return "TPSL";
            case 13:
                return "HVY ";
            case 14:
                return "HOME";
            case 15:
                return "LAST";
            case 16:
                return "CAC ";
            case 17:
                return "CACC";
            case 18:
                return "CRE ";
            case 19:
                return "CEM ";
            case 20:
                return "NONE";
            default:
                return "??";
        }
    }

    public static int makeProcStateProtoEnum(int curProcState) {
        switch (curProcState) {
            case -1:
                return CACHED_APP_MAX_ADJ;
            case 0:
                return 1000;
            case 1:
                return 1001;
            case 2:
                return 1002;
            case 3:
                return 1020;
            case 4:
                return 1003;
            case 5:
                return 1004;
            case 6:
                return 1005;
            case 7:
                return 1006;
            case 8:
                return 1007;
            case 9:
                return 1008;
            case 10:
                return 1009;
            case 11:
                return 1010;
            case 12:
                return 1011;
            case 13:
                return 1012;
            case 14:
                return 1013;
            case 15:
                return 1014;
            case 16:
                return 1015;
            case 17:
                return 1016;
            case 18:
                return 1017;
            case 19:
                return 1018;
            case 20:
                return 1019;
            default:
                return 998;
        }
    }

    public static void appendRamKb(StringBuilder sb, long ramKb) {
        int j = 0;
        int fact = 10;
        while (j < 6) {
            if (ramKb < fact) {
                sb.append(' ');
            }
            j++;
            fact *= 10;
        }
        sb.append(ramKb);
    }

    public static final class ProcStateMemTracker {
        int mPendingHighestMemState;
        int mPendingMemState;
        float mPendingScalingFactor;
        final int[] mHighestMem = new int[5];
        final float[] mScalingFactor = new float[5];
        int mTotalHighestMem = 4;

        public ProcStateMemTracker() {
            for (int i = 0; i < 5; i++) {
                this.mHighestMem[i] = 5;
                this.mScalingFactor[i] = 1.0f;
            }
            this.mPendingMemState = -1;
        }

        public void dumpLine(PrintWriter pw) {
            pw.print("best=");
            pw.print(this.mTotalHighestMem);
            pw.print(" (");
            boolean needSep = false;
            for (int i = 0; i < 5; i++) {
                if (this.mHighestMem[i] < 5) {
                    if (needSep) {
                        pw.print(", ");
                    }
                    pw.print(i);
                    pw.print("=");
                    pw.print(this.mHighestMem[i]);
                    pw.print(" ");
                    pw.print(this.mScalingFactor[i]);
                    pw.print("x");
                    needSep = true;
                }
            }
            pw.print(")");
            if (this.mPendingMemState >= 0) {
                pw.print(" / pending state=");
                pw.print(this.mPendingMemState);
                pw.print(" highest=");
                pw.print(this.mPendingHighestMemState);
                pw.print(" ");
                pw.print(this.mPendingScalingFactor);
                pw.print("x");
            }
            pw.println();
        }
    }

    public static boolean procStatesDifferForMem(int procState1, int procState2) {
        int[] iArr = sProcStateToProcMem;
        return iArr[procState1] != iArr[procState2];
    }

    public static long minTimeFromStateChange(boolean test) {
        if (test) {
            return JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
        }
        return 15000L;
    }

    public static void commitNextPssTime(ProcStateMemTracker tracker) {
        if (tracker.mPendingMemState >= 0) {
            tracker.mHighestMem[tracker.mPendingMemState] = tracker.mPendingHighestMemState;
            tracker.mScalingFactor[tracker.mPendingMemState] = tracker.mPendingScalingFactor;
            tracker.mTotalHighestMem = tracker.mPendingHighestMemState;
            tracker.mPendingMemState = -1;
        }
    }

    public static void abortNextPssTime(ProcStateMemTracker tracker) {
        tracker.mPendingMemState = -1;
    }

    public static long computeNextPssTime(int procState, ProcStateMemTracker tracker, boolean test, boolean sleeping, long now) {
        boolean first;
        float scalingFactor;
        long[] table;
        int memState = sProcStateToProcMem[procState];
        if (tracker != null) {
            int highestMemState = memState < tracker.mTotalHighestMem ? memState : tracker.mTotalHighestMem;
            first = highestMemState < tracker.mHighestMem[memState];
            tracker.mPendingMemState = memState;
            tracker.mPendingHighestMemState = highestMemState;
            if (first) {
                scalingFactor = 1.0f;
                tracker.mPendingScalingFactor = 1.0f;
            } else {
                scalingFactor = tracker.mScalingFactor[memState];
                tracker.mPendingScalingFactor = 1.5f * scalingFactor;
            }
        } else {
            first = true;
            scalingFactor = 1.0f;
        }
        if (test) {
            if (first) {
                table = sTestFirstPssTimes;
            } else {
                table = sTestSamePssTimes;
            }
        } else if (first) {
            table = sleeping ? sFirstAsleepPssTimes : sFirstAwakePssTimes;
        } else {
            table = sleeping ? sSameAsleepPssTimes : sSameAwakePssTimes;
        }
        long delay = (long) (table[memState] * scalingFactor);
        if (delay > AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT) {
            delay = AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT;
        }
        return now + delay;
    }

    long getMemLevel(int adjustment) {
        int i = 0;
        while (true) {
            int[] iArr = this.mOomAdj;
            if (i < iArr.length) {
                if (adjustment > iArr[i]) {
                    i++;
                } else {
                    return this.mOomMinFree[i] * 1024;
                }
            } else {
                return this.mOomMinFree[iArr.length - 1] * 1024;
            }
        }
    }

    long getCachedRestoreThresholdKb() {
        return this.mCachedRestoreLevel;
    }

    public static void setOomAdj(int pid, int uid, int amt) {
        if (pid <= 0 || amt == 1001) {
            return;
        }
        long start = SystemClock.elapsedRealtime();
        ByteBuffer buf = ByteBuffer.allocate(16);
        buf.putInt(1);
        buf.putInt(pid);
        buf.putInt(uid);
        buf.putInt(amt);
        writeLmkd(buf, null);
        long now = SystemClock.elapsedRealtime();
        if (now - start > 250) {
            Slog.w(TAG, "SLOW OOM ADJ: " + (now - start) + "ms for pid " + pid + " = " + amt);
        }
    }

    public static final void remove(int pid) {
        if (pid <= 0) {
            return;
        }
        ByteBuffer buf = ByteBuffer.allocate(8);
        buf.putInt(2);
        buf.putInt(pid);
        writeLmkd(buf, null);
    }

    public static final Integer getLmkdKillCount(int min_oom_adj, int max_oom_adj) {
        ByteBuffer buf = ByteBuffer.allocate(12);
        ByteBuffer repl = ByteBuffer.allocate(8);
        buf.putInt(4);
        buf.putInt(min_oom_adj);
        buf.putInt(max_oom_adj);
        repl.putInt(4);
        repl.rewind();
        if (writeLmkd(buf, repl) && repl.getInt() == 4) {
            return new Integer(repl.getInt());
        }
        return null;
    }

    public boolean onLmkdConnect(OutputStream ostream) {
        try {
            ByteBuffer buf = ByteBuffer.allocate(4);
            buf.putInt(3);
            ostream.write(buf.array(), 0, buf.position());
            if (this.mOomLevelsSet) {
                ByteBuffer buf2 = ByteBuffer.allocate(((this.mOomAdj.length * 2) + 1) * 4);
                buf2.putInt(0);
                for (int i = 0; i < this.mOomAdj.length; i++) {
                    buf2.putInt((this.mOomMinFree[i] * 1024) / 4096);
                    buf2.putInt(this.mOomAdj[i]);
                }
                ostream.write(buf2.array(), 0, buf2.position());
            }
            ByteBuffer buf3 = ByteBuffer.allocate(8);
            buf3.putInt(5);
            buf3.putInt(0);
            ostream.write(buf3.array(), 0, buf3.position());
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    private static boolean writeLmkd(ByteBuffer buf, ByteBuffer repl) {
        if (!sLmkdConnection.isConnected()) {
            KillHandler killHandler = sKillHandler;
            killHandler.sendMessage(killHandler.obtainMessage(4001));
            if (!sLmkdConnection.waitForConnection(BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS)) {
                return false;
            }
        }
        return sLmkdConnection.exchange(buf, repl);
    }

    static void killProcessGroup(int uid, int pid) {
        KillHandler killHandler = sKillHandler;
        if (killHandler != null) {
            killHandler.sendMessage(killHandler.obtainMessage(4000, uid, pid));
        } else {
            Slog.w(TAG, "Asked to kill process group before system bringup!");
            Process.killProcessGroup(uid, pid);
        }
    }

    final ProcessRecord getProcessRecordLocked(String processName, int uid, boolean keepIfLarge) {
        if (uid == 1000) {
            SparseArray<ProcessRecord> procs = (SparseArray) this.mProcessNames.getMap().get(processName);
            if (procs == null) {
                return null;
            }
            int procCount = procs.size();
            for (int i = 0; i < procCount; i++) {
                int procUid = procs.keyAt(i);
                if (UserHandle.isCore(procUid) && UserHandle.isSameUser(procUid, uid)) {
                    return procs.valueAt(i);
                }
            }
        }
        ProcessRecord proc = (ProcessRecord) this.mProcessNames.get(processName, uid);
        if (proc != null && !keepIfLarge && this.mService.mLastMemoryLevel > 0 && proc.setProcState >= 19 && proc.lastCachedPss >= getCachedRestoreThresholdKb()) {
            if (proc.baseProcessTracker != null) {
                proc.baseProcessTracker.reportCachedKill(proc.pkgList.mPkgList, proc.lastCachedPss);
                for (int ipkg = proc.pkgList.size() - 1; ipkg >= 0; ipkg--) {
                    ProcessStats.ProcessStateHolder holder = proc.pkgList.valueAt(ipkg);
                    FrameworkStatsLog.write(17, proc.info.uid, holder.state.getName(), holder.state.getPackage(), proc.lastCachedPss, holder.appVersion);
                }
            }
            proc.kill(Long.toString(proc.lastCachedPss) + "k from cached", 13, 5, true);
        }
        return proc;
    }

    void getMemoryInfo(ActivityManager.MemoryInfo outInfo) {
        long homeAppMem = getMemLevel(600);
        long cachedAppMem = getMemLevel(CACHED_APP_MIN_ADJ);
        outInfo.availMem = Process.getFreeMemory();
        outInfo.totalMem = Process.getTotalMemory();
        outInfo.threshold = homeAppMem;
        outInfo.lowMemory = outInfo.availMem < ((cachedAppMem - homeAppMem) / 2) + homeAppMem;
        outInfo.hiddenAppThreshold = cachedAppMem;
        outInfo.secondaryServerThreshold = getMemLevel(500);
        outInfo.visibleAppThreshold = getMemLevel(100);
        outInfo.foregroundAppThreshold = getMemLevel(0);
    }

    ProcessRecord findAppProcessLocked(IBinder app, String reason) {
        int NP = this.mProcessNames.getMap().size();
        for (int ip = 0; ip < NP; ip++) {
            SparseArray<ProcessRecord> apps = (SparseArray) this.mProcessNames.getMap().valueAt(ip);
            int NA = apps.size();
            for (int ia = 0; ia < NA; ia++) {
                ProcessRecord p = apps.valueAt(ia);
                if (p.thread != null && p.thread.asBinder() == app) {
                    return p;
                }
            }
        }
        Slog.w(TAG, "Can't find mystery application for " + reason + " from pid=" + Binder.getCallingPid() + " uid=" + Binder.getCallingUid() + ": " + app);
        return null;
    }

    private void checkSlow(long startTime, String where) {
        long now = SystemClock.uptimeMillis();
        if (now - startTime > 50) {
            Slog.w(TAG, "Slow operation: " + (now - startTime) + "ms so far, now at " + where);
        }
    }

    private int[] computeGidsForProcess(int mountExternal, int uid, int[] permGids) {
        ArrayList<Integer> gidList = new ArrayList<>(permGids.length + 5);
        int sharedAppGid = UserHandle.getSharedAppGid(UserHandle.getAppId(uid));
        int cacheAppGid = UserHandle.getCacheAppGid(UserHandle.getAppId(uid));
        int userGid = UserHandle.getUserGid(UserHandle.getUserId(uid));
        for (int permGid : permGids) {
            gidList.add(Integer.valueOf(permGid));
        }
        if (sharedAppGid != -1) {
            gidList.add(Integer.valueOf(sharedAppGid));
        }
        if (cacheAppGid != -1) {
            gidList.add(Integer.valueOf(cacheAppGid));
        }
        if (userGid != -1) {
            gidList.add(Integer.valueOf(userGid));
        }
        if (mountExternal == 8 || mountExternal == 7) {
            gidList.add(Integer.valueOf(UserHandle.getUid(UserHandle.getUserId(uid), 1015)));
            gidList.add(1078);
            gidList.add(1079);
        }
        if (mountExternal == 5) {
            gidList.add(1079);
        }
        if (mountExternal == 7) {
            gidList.add(1023);
        }
        int[] gidArray = new int[gidList.size()];
        for (int i = 0; i < gidArray.length; i++) {
            gidArray[i] = gidList.get(i).intValue();
        }
        return gidArray;
    }

    private boolean shouldEnableTaggedPointers(ProcessRecord app) {
        return Zygote.nativeSupportsTaggedPointers() && app.info.allowsNativeHeapPointerTagging() && this.mPlatformCompat.isChangeEnabled(NATIVE_HEAP_POINTER_TAGGING, app.info);
    }

    private int decideTaggingLevel(ProcessRecord app) {
        if (shouldEnableTaggedPointers(app)) {
            return 524288;
        }
        return 0;
    }

    private int decideGwpAsanLevel(ProcessRecord app) {
        if (app.processInfo != null && app.processInfo.gwpAsanMode != -1) {
            return app.processInfo.gwpAsanMode == 1 ? 4194304 : 0;
        }
        if (app.info.getGwpAsanMode() != -1) {
            return app.info.getGwpAsanMode() == 1 ? 4194304 : 0;
        }
        if (this.mPlatformCompat.isChangeEnabled(GWP_ASAN, app.info)) {
            return 4194304;
        }
        return (app.info.flags & 1) != 0 ? 2097152 : 0;
    }

    boolean startProcessLocked(ProcessRecord app, HostingRecord hostingRecord, int zygotePolicyFlags, boolean disableHiddenApiChecks, boolean disableTestApiChecks, boolean mountExtStorageFull, String abiOverride) {
        boolean z;
        int[] gids;
        int mountExternal;
        String invokeWith;
        boolean z2;
        String requiredAbi;
        int mountExternal2;
        String invokeWith2 = "";
        String str = TAG;
        if (app.pendingStart) {
            return true;
        }
        long startTime = SystemClock.uptimeMillis();
        if (app.pid > 0 && app.pid != ActivityManagerService.MY_PID) {
            checkSlow(startTime, "startProcess: removing from pids map");
            this.mService.removePidLocked(app);
            app.bindMountPending = false;
            this.mService.mHandler.removeMessages(20, app);
            checkSlow(startTime, "startProcess: done removing from pids map");
            app.setPid(0);
            app.startSeq = 0L;
        }
        this.mService.mProcessesOnHold.remove(app);
        checkSlow(startTime, "startProcess: starting to update cpu stats");
        this.mService.updateCpuStats();
        checkSlow(startTime, "startProcess: done updating cpu stats");
        try {
            try {
                try {
                    int userId = UserHandle.getUserId(app.uid);
                    AppGlobals.getPackageManager().checkPackageStartable(app.info.packageName, userId);
                    int uid = app.uid;
                    try {
                        if (app.isolated) {
                            gids = null;
                            mountExternal = 0;
                        } else {
                            try {
                                try {
                                    checkSlow(startTime, "startProcess: getting gids from package manager");
                                    IPackageManager pm = AppGlobals.getPackageManager();
                                    int[] permGids = pm.getPackageGids(app.info.packageName, AudioFormat.EVRC, app.userId);
                                    if (StorageManager.hasIsolatedStorage() && mountExtStorageFull) {
                                        mountExternal2 = 6;
                                    } else {
                                        StorageManagerInternal storageManagerInternal = (StorageManagerInternal) LocalServices.getService(StorageManagerInternal.class);
                                        mountExternal2 = storageManagerInternal.getExternalStorageMountMode(uid, app.info.packageName);
                                    }
                                    if (app.processInfo != null && app.processInfo.deniedPermissions != null) {
                                        for (int i = app.processInfo.deniedPermissions.size() - 1; i >= 0; i--) {
                                            int[] denyGids = this.mService.mPackageManagerInt.getPermissionGids((String) app.processInfo.deniedPermissions.valueAt(i), app.userId);
                                            if (denyGids != null) {
                                                for (int gid : denyGids) {
                                                    permGids = ArrayUtils.removeInt(permGids, gid);
                                                }
                                            }
                                        }
                                    }
                                    int[] gids2 = computeGidsForProcess(mountExternal2, uid, permGids);
                                    gids = gids2;
                                    mountExternal = mountExternal2;
                                } catch (RemoteException e) {
                                    throw e.rethrowAsRuntimeException();
                                }
                            } catch (RuntimeException e2) {
                                e = e2;
                                z = false;
                                str = TAG;
                                Slog.e(str, "Failure starting process " + app.processName, e);
                                this.mService.forceStopPackageLocked(app.info.packageName, UserHandle.getAppId(app.uid), false, false, true, false, false, app.userId, "start failure");
                                return z;
                            }
                        }
                        try {
                            app.mountMode = mountExternal;
                            checkSlow(startTime, "startProcess: building args");
                            int uid2 = this.mService.mAtmInternal.isFactoryTestProcess(app.getWindowProcessController()) ? 0 : uid;
                            int runtimeFlags = 0;
                            if ((app.info.flags & 2) != 0) {
                                int runtimeFlags2 = 0 | 1;
                                runtimeFlags = runtimeFlags2 | 256 | 2;
                                if (android.provider.Settings.Global.getInt(this.mService.mContext.getContentResolver(), "art_verifier_verify_debuggable", 1) == 0) {
                                    runtimeFlags |= 512;
                                    Slog.w(TAG, app + ": ART verification disabled");
                                }
                            }
                            if ((app.info.flags & 16384) != 0 || this.mService.mSafeMode) {
                                runtimeFlags |= 8;
                            }
                            if ((app.info.privateFlags & 8388608) != 0) {
                                runtimeFlags |= 32768;
                            }
                            if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get("debug.checkjni"))) {
                                runtimeFlags |= 2;
                            }
                            String genDebugInfoProperty = SystemProperties.get("debug.generate-debug-info");
                            if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(genDebugInfoProperty) || "true".equals(genDebugInfoProperty)) {
                                runtimeFlags |= 32;
                            }
                            String genMiniDebugInfoProperty = SystemProperties.get("dalvik.vm.minidebuginfo");
                            if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(genMiniDebugInfoProperty) || "true".equals(genMiniDebugInfoProperty)) {
                                runtimeFlags |= 2048;
                            }
                            if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get("debug.jni.logging"))) {
                                runtimeFlags |= 16;
                            }
                            if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get("debug.assert"))) {
                                runtimeFlags |= 4;
                            }
                            if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get("debug.ignoreappsignalhandler"))) {
                                runtimeFlags |= 131072;
                            }
                            if (this.mService.mNativeDebuggingApp != null && this.mService.mNativeDebuggingApp.equals(app.processName)) {
                                runtimeFlags = runtimeFlags | 64 | 32 | 128;
                                this.mService.mNativeDebuggingApp = null;
                            }
                            if (app.info.isEmbeddedDexUsed() || (app.info.isPrivilegedApp() && DexManager.isPackageSelectedToRunOob(app.pkgList.mPkgList.keySet()))) {
                                runtimeFlags |= 1024;
                            }
                            if (!disableHiddenApiChecks && !this.mService.mHiddenApiBlacklist.isDisabled()) {
                                app.info.maybeUpdateHiddenApiEnforcementPolicy(this.mService.mHiddenApiBlacklist.getPolicy());
                                int policy = app.info.getHiddenApiEnforcementPolicy();
                                int policyBits = policy << Zygote.API_ENFORCEMENT_POLICY_SHIFT;
                                if ((policyBits & 12288) != policyBits) {
                                    throw new IllegalStateException("Invalid API policy: " + policy);
                                }
                                runtimeFlags |= policyBits;
                                if (disableTestApiChecks) {
                                    runtimeFlags |= 262144;
                                }
                            }
                            String useAppImageCache = SystemProperties.get(PROPERTY_USE_APP_IMAGE_STARTUP_CACHE, "");
                            if (!TextUtils.isEmpty(useAppImageCache) && !useAppImageCache.equals("false")) {
                                runtimeFlags |= 65536;
                            }
                            int runtimeFlags3 = decideGwpAsanLevel(app) | runtimeFlags;
                            String invokeWith3 = null;
                            if ((app.info.flags & 2) != 0) {
                                String wrapperFileName = app.info.nativeLibraryDir + "/wrap.sh";
                                StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskReads();
                                try {
                                    if (new File(wrapperFileName).exists()) {
                                        invokeWith3 = "/system/bin/logwrapper " + wrapperFileName;
                                    }
                                    StrictMode.setThreadPolicy(oldPolicy);
                                    invokeWith = invokeWith3;
                                } catch (Throwable th) {
                                    StrictMode.setThreadPolicy(oldPolicy);
                                    throw th;
                                }
                            } else {
                                invokeWith2 = "";
                                invokeWith = null;
                            }
                            String requiredAbi2 = abiOverride != null ? abiOverride : app.info.primaryCpuAbi;
                            if (requiredAbi2 == null) {
                                try {
                                    z2 = false;
                                    try {
                                        requiredAbi = Build.SUPPORTED_ABIS[0];
                                    } catch (RuntimeException e3) {
                                        e = e3;
                                        str = TAG;
                                        z = z2;
                                        Slog.e(str, "Failure starting process " + app.processName, e);
                                        this.mService.forceStopPackageLocked(app.info.packageName, UserHandle.getAppId(app.uid), false, false, true, false, false, app.userId, "start failure");
                                        return z;
                                    }
                                } catch (RuntimeException e4) {
                                    e = e4;
                                    z2 = false;
                                    str = TAG;
                                    z = z2;
                                    Slog.e(str, "Failure starting process " + app.processName, e);
                                    this.mService.forceStopPackageLocked(app.info.packageName, UserHandle.getAppId(app.uid), false, false, true, false, false, app.userId, "start failure");
                                    return z;
                                }
                            } else {
                                z2 = false;
                                requiredAbi = requiredAbi2;
                            }
                            try {
                                String instructionSet = app.info.primaryCpuAbi != null ? VMRuntime.getInstructionSet(app.info.primaryCpuAbi) : null;
                                app.gids = gids;
                                app.setRequiredAbi(requiredAbi);
                                app.instructionSet = instructionSet;
                                int runtimeFlags4 = (instructionSet == null || instructionSet.equals("arm64")) ? runtimeFlags3 | decideTaggingLevel(app) : runtimeFlags3;
                                if (TextUtils.isEmpty(app.info.seInfoUser)) {
                                    Slog.wtf(TAG, "SELinux tag not defined", new IllegalStateException("SELinux tag not defined for " + app.info.packageName + " (uid " + app.uid + ")"));
                                }
                                StringBuilder sb = new StringBuilder();
                                sb.append(app.info.seInfo);
                                sb.append(TextUtils.isEmpty(app.info.seInfoUser) ? invokeWith2 : app.info.seInfoUser);
                                String seInfo = sb.toString();
                                return startProcessLocked(hostingRecord, "android.app.ActivityThread", app, uid2, gids, runtimeFlags4, zygotePolicyFlags, mountExternal, seInfo, requiredAbi, instructionSet, invokeWith, startTime);
                            } catch (RuntimeException e5) {
                                e = e5;
                                z = z2;
                                Slog.e(str, "Failure starting process " + app.processName, e);
                                this.mService.forceStopPackageLocked(app.info.packageName, UserHandle.getAppId(app.uid), false, false, true, false, false, app.userId, "start failure");
                                return z;
                            }
                        } catch (RuntimeException e6) {
                            e = e6;
                            z = false;
                        }
                    } catch (RuntimeException e7) {
                        e = e7;
                        str = TAG;
                        z = false;
                    }
                } catch (RemoteException e8) {
                    throw e8.rethrowAsRuntimeException();
                }
            } catch (RuntimeException e9) {
                e = e9;
            }
        } catch (RuntimeException e10) {
            e = e10;
            z = false;
        }
    }

    boolean startProcessLocked(HostingRecord hostingRecord, final String entryPoint, final ProcessRecord app, int uid, final int[] gids, final int runtimeFlags, final int zygotePolicyFlags, final int mountExternal, String seInfo, final String requiredAbi, final String instructionSet, final String invokeWith, long startTime) throws Throwable {
        app.pendingStart = true;
        app.killedByAm = false;
        app.removed = false;
        app.killed = false;
        if (app.startSeq != 0) {
            Slog.wtf(TAG, "startProcessLocked processName:" + app.processName + " with non-zero startSeq:" + app.startSeq);
        }
        if (app.pid != 0) {
            Slog.wtf(TAG, "startProcessLocked processName:" + app.processName + " with non-zero pid:" + app.pid);
        }
        app.mDisabledCompatChanges = null;
        PlatformCompat platformCompat = this.mPlatformCompat;
        if (platformCompat != null) {
            app.mDisabledCompatChanges = platformCompat.getDisabledChanges(app.info);
        }
        final long startSeq = this.mProcStartSeqCounter + 1;
        this.mProcStartSeqCounter = startSeq;
        app.startSeq = startSeq;
        app.setStartParams(uid, hostingRecord, seInfo, startTime);
        app.setUsingWrapper((invokeWith == null && Zygote.getWrapProperty(app.processName) == null) ? false : true);
        this.mPendingStarts.put(startSeq, app);
        if (this.mService.mConstants.FLAG_PROCESS_START_ASYNC) {
            this.mService.mProcStartHandler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$startProcessLocked$0$ProcessList(app, entryPoint, gids, runtimeFlags, zygotePolicyFlags, mountExternal, requiredAbi, instructionSet, invokeWith, startSeq);
                }
            });
            return true;
        }
        try {
            Process.ProcessStartResult startResult = startProcess(hostingRecord, entryPoint, app, uid, gids, runtimeFlags, zygotePolicyFlags, mountExternal, seInfo, requiredAbi, instructionSet, invokeWith, startTime);
            handleProcessStartedLocked(app, startResult.pid, startResult.usingWrapper, startSeq, false);
        } catch (RuntimeException e) {
            Slog.e(TAG, "Failure starting process " + app.processName, e);
            app.pendingStart = false;
            this.mService.forceStopPackageLocked(app.info.packageName, UserHandle.getAppId(app.uid), false, false, true, false, false, app.userId, "start failure");
        }
        return app.pid > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:72:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX INFO: renamed from: handleProcessStart, reason: merged with bridge method [inline-methods] */
    public void lambda$startProcessLocked$0$ProcessList(ProcessRecord app, String entryPoint, int[] gids, int runtimeFlags, int zygotePolicyFlags, int mountExternal, String requiredAbi, String instructionSet, String invokeWith, long startSeq) throws Throwable {
        long j;
        ProcessList processList;
        ProcessRecord processRecord;
        RuntimeException e;
        ProcessRecord precedence = app.mPrecedence;
        if (precedence != null) {
            int pid = precedence.pid;
            long end = 2000 + System.currentTimeMillis();
            try {
                Process.waitForProcessDeath(pid, PROC_KILL_TIMEOUT);
                synchronized (precedence) {
                    if (app.mPrecedence != null) {
                        long now = System.currentTimeMillis();
                        if (now < end) {
                            try {
                                precedence.wait(end - now);
                            } catch (InterruptedException e2) {
                            }
                        }
                    }
                    if (app.mPrecedence != null) {
                        Slog.w(TAG, precedence + " has died, but its cleanup isn't done");
                    }
                }
            } catch (Exception e3) {
                Slog.wtf(TAG, precedence.toString() + " refused to die, but we need to launch " + app);
            }
        }
        try {
            HostingRecord hostingRecord = app.hostingRecord;
            j = app.startUid;
            processRecord = app;
            try {
                Process.ProcessStartResult startResult = startProcess(hostingRecord, entryPoint, processRecord, j, gids, runtimeFlags, zygotePolicyFlags, mountExternal, app.seInfo, requiredAbi, instructionSet, invokeWith, app.startTime);
                processList = this;
                try {
                    try {
                        try {
                            synchronized (processList.mService) {
                                try {
                                    ActivityManagerService.boostPriorityForLockedSection();
                                    processList.handleProcessStartedLocked(app, startResult, startSeq);
                                    ActivityManagerService.resetPriorityAfterLockedSection();
                                } catch (Throwable th) {
                                    th = th;
                                    ActivityManagerService.resetPriorityAfterLockedSection();
                                    throw th;
                                }
                            }
                        } catch (RuntimeException e4) {
                            e = e4;
                            e = e;
                            synchronized (processList.mService) {
                                try {
                                    ActivityManagerService.boostPriorityForLockedSection();
                                    Slog.e(TAG, "Failure starting process " + processRecord.processName, e);
                                    processList.mPendingStarts.remove(j);
                                    processRecord.pendingStart = false;
                                    processList.mService.forceStopPackageLocked(processRecord.info.packageName, UserHandle.getAppId(processRecord.uid), false, false, true, false, false, processRecord.userId, "start failure");
                                } finally {
                                    ActivityManagerService.resetPriorityAfterLockedSection();
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (RuntimeException e5) {
                    e = e5;
                    processRecord = app;
                    j = startSeq;
                    e = e;
                    synchronized (processList.mService) {
                        ActivityManagerService.boostPriorityForLockedSection();
                        Slog.e(TAG, "Failure starting process " + processRecord.processName, e);
                        processList.mPendingStarts.remove(j);
                        processRecord.pendingStart = false;
                        processList.mService.forceStopPackageLocked(processRecord.info.packageName, UserHandle.getAppId(processRecord.uid), false, false, true, false, false, processRecord.userId, "start failure");
                    }
                }
            } catch (RuntimeException e6) {
                e = e6;
                processList = this;
            }
        } catch (RuntimeException e7) {
            e = e7;
            j = startSeq;
            processList = this;
            processRecord = app;
        }
    }

    public void killAppZygoteIfNeededLocked(AppZygote appZygote, boolean force) {
        ApplicationInfo appInfo = appZygote.getAppInfo();
        ArrayList<ProcessRecord> zygoteProcesses = this.mAppZygoteProcesses.get(appZygote);
        if (zygoteProcesses != null) {
            if (force || zygoteProcesses.size() == 0) {
                this.mAppZygotes.remove(appInfo.processName, appInfo.uid);
                this.mAppZygoteProcesses.remove(appZygote);
                this.mAppIsolatedUidRangeAllocator.freeUidRangeLocked(appInfo);
                appZygote.stopZygote();
            }
        }
    }

    private void removeProcessFromAppZygoteLocked(ProcessRecord app) {
        IsolatedUidRange appUidRange = this.mAppIsolatedUidRangeAllocator.getIsolatedUidRangeLocked(app.info.processName, app.hostingRecord.getDefiningUid());
        if (appUidRange != null) {
            appUidRange.freeIsolatedUidLocked(app.uid);
        }
        AppZygote appZygote = (AppZygote) this.mAppZygotes.get(app.info.processName, app.hostingRecord.getDefiningUid());
        if (appZygote != null) {
            ArrayList<ProcessRecord> zygoteProcesses = this.mAppZygoteProcesses.get(appZygote);
            zygoteProcesses.remove(app);
            if (zygoteProcesses.size() == 0) {
                this.mService.mHandler.removeMessages(71);
                if (app.removed) {
                    killAppZygoteIfNeededLocked(appZygote, false);
                    return;
                }
                Message msg = this.mService.mHandler.obtainMessage(71);
                msg.obj = appZygote;
                this.mService.mHandler.sendMessageDelayed(msg, 5000L);
            }
        }
    }

    private AppZygote createAppZygoteForProcessIfNeeded(ProcessRecord app) {
        AppZygote appZygote;
        ArrayList<ProcessRecord> zygoteProcessList;
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                int uid = app.hostingRecord.getDefiningUid();
                appZygote = (AppZygote) this.mAppZygotes.get(app.info.processName, uid);
                if (appZygote == null) {
                    IsolatedUidRange uidRange = this.mAppIsolatedUidRangeAllocator.getIsolatedUidRangeLocked(app.info.processName, app.hostingRecord.getDefiningUid());
                    int userId = UserHandle.getUserId(uid);
                    int firstUid = UserHandle.getUid(userId, uidRange.mFirstUid);
                    int lastUid = UserHandle.getUid(userId, uidRange.mLastUid);
                    ApplicationInfo appInfo = new ApplicationInfo(app.info);
                    appInfo.packageName = app.hostingRecord.getDefiningPackageName();
                    appInfo.uid = uid;
                    appZygote = new AppZygote(appInfo, uid, firstUid, lastUid);
                    this.mAppZygotes.put(app.info.processName, uid, appZygote);
                    zygoteProcessList = new ArrayList<>();
                    this.mAppZygoteProcesses.put(appZygote, zygoteProcessList);
                } else {
                    this.mService.mHandler.removeMessages(71, appZygote);
                    zygoteProcessList = this.mAppZygoteProcesses.get(appZygote);
                }
                zygoteProcessList.add(app);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
        return appZygote;
    }

    private Map<String, Pair<String, Long>> getPackageAppDataInfoMap(PackageManagerInternal pmInt, String[] packages, int uid) {
        Map<String, Pair<String, Long>> result = new ArrayMap<>(packages.length);
        int userId = UserHandle.getUserId(uid);
        for (String packageName : packages) {
            AndroidPackage androidPackage = pmInt.getPackage(packageName);
            if (androidPackage == null) {
                Slog.w(TAG, "Unknown package:" + packageName);
            } else {
                String volumeUuid = androidPackage.getVolumeUuid();
                long inode = pmInt.getCeDataInode(packageName, userId);
                if (inode == 0) {
                    Slog.w(TAG, packageName + " inode == 0 (b/152760674)");
                    return null;
                }
                result.put(packageName, Pair.create(volumeUuid, Long.valueOf(inode)));
            }
        }
        return result;
    }

    private boolean needsStorageDataIsolation(StorageManagerInternal storageManagerInternal, ProcessRecord app) {
        return (!this.mVoldAppDataIsolationEnabled || !UserHandle.isApp(app.uid) || storageManagerInternal.isExternalStorageService(app.uid) || app.mountMode == 8 || app.mountMode == 7 || app.mountMode == 5) ? false : true;
    }

    private Process.ProcessStartResult startProcess(HostingRecord hostingRecord, String entryPoint, ProcessRecord app, int uid, int[] gids, int runtimeFlags, int zygotePolicyFlags, int mountExternal, String seInfo, String requiredAbi, String instructionSet, String invokeWith, long startTime) throws Throwable {
        long j;
        boolean bindMountAppsData;
        Map<String, Pair<String, Long>> whitelistedAppDataInfoMap;
        boolean bindMountAppStorageDirs;
        Map<String, Pair<String, Long>> pkgDataInfoMap;
        Map<String, Pair<String, Long>> whitelistedAppDataInfoMap2;
        Process.ProcessStartResult startResult;
        try {
            Trace.traceBegin(64L, "Start proc: " + app.processName);
            checkSlow(startTime, "startProcess: asking zygote to start proc");
            boolean isTopApp = hostingRecord.isTopApp();
            if (isTopApp) {
                app.setHasForegroundActivities(true);
            }
            boolean bindMountAppsData2 = this.mAppDataIsolationEnabled && (UserHandle.isApp(app.uid) || UserHandle.isIsolated(app.uid)) && this.mPlatformCompat.isChangeEnabled(APP_DATA_DIRECTORY_ISOLATION, app.info);
            PackageManagerInternal pmInt = this.mService.getPackageManagerInternalLocked();
            String[] sharedPackages = pmInt.getSharedUserPackagesForPackage(app.info.packageName, app.userId);
            String[] targetPackagesList = sharedPackages.length == 0 ? new String[]{app.info.packageName} : sharedPackages;
            Map<String, Pair<String, Long>> pkgDataInfoMap2 = getPackageAppDataInfoMap(pmInt, targetPackagesList, uid);
            if (pkgDataInfoMap2 == null) {
                bindMountAppsData2 = false;
            }
            try {
                Set<String> whitelistedApps = new ArraySet<>(this.mAppDataIsolationWhitelistedApps);
                for (String pkg : targetPackagesList) {
                    whitelistedApps.remove(pkg);
                }
                Map<String, Pair<String, Long>> whitelistedAppDataInfoMap3 = getPackageAppDataInfoMap(pmInt, (String[]) whitelistedApps.toArray(new String[0]), uid);
                if (whitelistedAppDataInfoMap3 != null) {
                    bindMountAppsData = bindMountAppsData2;
                } else {
                    bindMountAppsData = false;
                }
                int userId = UserHandle.getUserId(uid);
                StorageManagerInternal storageManagerInternal = (StorageManagerInternal) LocalServices.getService(StorageManagerInternal.class);
                if (!needsStorageDataIsolation(storageManagerInternal, app)) {
                    whitelistedAppDataInfoMap = whitelistedAppDataInfoMap3;
                    bindMountAppStorageDirs = false;
                } else {
                    if (pkgDataInfoMap2 == null) {
                        whitelistedAppDataInfoMap = whitelistedAppDataInfoMap3;
                    } else {
                        whitelistedAppDataInfoMap = whitelistedAppDataInfoMap3;
                        if (storageManagerInternal.prepareStorageDirs(userId, pkgDataInfoMap2.keySet(), app.processName)) {
                            bindMountAppStorageDirs = true;
                        }
                    }
                    app.bindMountPending = true;
                    bindMountAppStorageDirs = false;
                }
                if (!app.isolated) {
                    pkgDataInfoMap = pkgDataInfoMap2;
                    whitelistedAppDataInfoMap2 = whitelistedAppDataInfoMap;
                } else {
                    whitelistedAppDataInfoMap2 = null;
                    pkgDataInfoMap = null;
                }
                try {
                    if (hostingRecord.usesWebviewZygote()) {
                        try {
                            j = 64;
                            startResult = Process.startWebView(entryPoint, app.processName, uid, uid, gids, runtimeFlags, mountExternal, app.info.targetSdkVersion, seInfo, requiredAbi, instructionSet, app.info.dataDir, null, app.info.packageName, app.mDisabledCompatChanges, new String[]{"seq=" + app.startSeq});
                        } catch (Throwable th) {
                            th = th;
                            j = 64;
                            Trace.traceEnd(j);
                            throw th;
                        }
                    } else {
                        j = 64;
                        if (hostingRecord.usesAppZygote()) {
                            AppZygote appZygote = createAppZygoteForProcessIfNeeded(app);
                            startResult = appZygote.getProcess().start(entryPoint, app.processName, uid, uid, gids, runtimeFlags, mountExternal, app.info.targetSdkVersion, seInfo, requiredAbi, instructionSet, app.info.dataDir, (String) null, app.info.packageName, 0, isTopApp, app.mDisabledCompatChanges, pkgDataInfoMap, whitelistedAppDataInfoMap2, false, false, new String[]{"seq=" + app.startSeq});
                        } else {
                            startResult = Process.start(entryPoint, app.processName, uid, uid, gids, runtimeFlags, mountExternal, app.info.targetSdkVersion, seInfo, requiredAbi, instructionSet, app.info.dataDir, invokeWith, app.info.packageName, zygotePolicyFlags, isTopApp, app.mDisabledCompatChanges, pkgDataInfoMap, whitelistedAppDataInfoMap2, bindMountAppsData, bindMountAppStorageDirs, new String[]{"seq=" + app.startSeq});
                        }
                    }
                    try {
                        checkSlow(startTime, "startProcess: returned from zygote!");
                        Trace.traceEnd(j);
                        return startResult;
                    } catch (Throwable th2) {
                        th = th2;
                        Trace.traceEnd(j);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                j = 64;
            }
        } catch (Throwable th5) {
            th = th5;
            j = 64;
        }
    }

    void startProcessLocked(ProcessRecord app, HostingRecord hostingRecord, int zygotePolicyFlags) {
        startProcessLocked(app, hostingRecord, zygotePolicyFlags, null);
    }

    final boolean startProcessLocked(ProcessRecord app, HostingRecord hostingRecord, int zygotePolicyFlags, String abiOverride) {
        return startProcessLocked(app, hostingRecord, zygotePolicyFlags, false, false, false, abiOverride);
    }

    final ProcessRecord startProcessLocked(String processName, ApplicationInfo info, boolean knownToBeDead, int intentFlags, HostingRecord hostingRecord, int zygotePolicyFlags, boolean allowWhileBooting, boolean isolated, int isolatedUid, boolean keepIfLarge, String abiOverride, String entryPoint, String[] entryPointArgs, Runnable crashHandler) {
        ProcessRecord app;
        ProcessRecord app2;
        ProcessRecord precedence;
        long startTime = SystemClock.uptimeMillis();
        if (isolated) {
            app = null;
        } else {
            app = getProcessRecordLocked(processName, info.uid, keepIfLarge);
            checkSlow(startTime, "startProcess: after getProcessRecord");
            if ((intentFlags & 4) != 0) {
                if (this.mService.mAppErrors.isBadProcess(info.processName, info.uid)) {
                    return null;
                }
            } else {
                this.mService.mAppErrors.resetProcessCrashTimeLocked(info);
                if (this.mService.mAppErrors.isBadProcess(info.processName, info.uid)) {
                    EventLog.writeEvent(EventLogTags.AM_PROC_GOOD, Integer.valueOf(UserHandle.getUserId(info.uid)), Integer.valueOf(info.uid), info.processName);
                    this.mService.mAppErrors.clearBadProcess(info.processName, info.uid);
                    if (app != null) {
                        app.bad = false;
                    }
                }
            }
        }
        if (app != null && app.pid > 0) {
            if ((knownToBeDead || app.killed) && app.thread != null) {
                checkSlow(startTime, "startProcess: bad proc running, killing");
                killProcessGroup(app.uid, app.pid);
                checkSlow(startTime, "startProcess: done killing old proc");
                Slog.wtf(TAG, app.toString() + " is attached to a previous process");
                ProcessRecord precedence2 = app;
                app2 = null;
                precedence = precedence2;
            } else {
                app.addPackage(info.packageName, info.longVersionCode, this.mService.mProcessStats);
                checkSlow(startTime, "startProcess: done, added package to proc");
                return app;
            }
        } else {
            app2 = app;
            precedence = null;
        }
        if (app2 == null) {
            checkSlow(startTime, "startProcess: creating new process record");
            ProcessRecord precedence3 = precedence;
            app2 = newProcessRecordLocked(info, processName, isolated, isolatedUid, hostingRecord);
            if (app2 == null) {
                Slog.w(TAG, "Failed making new process record for " + processName + SliceClientPermissions.SliceAuthority.DELIMITER + info.uid + " isolated=" + isolated);
                return null;
            }
            app2.crashHandler = crashHandler;
            app2.isolatedEntryPoint = entryPoint;
            app2.isolatedEntryPointArgs = entryPointArgs;
            if (precedence3 != null) {
                app2.mPrecedence = precedence3;
                precedence3.mSuccessor = app2;
            }
            checkSlow(startTime, "startProcess: done creating new process record");
        } else {
            app2.addPackage(info.packageName, info.longVersionCode, this.mService.mProcessStats);
            checkSlow(startTime, "startProcess: added package to existing proc");
        }
        if (this.mService.mConstants.mEarlyAppListEnable && !this.mService.mBootAnimationComplete) {
            if (!this.mService.mConstants.mEarlyAppList.contains(info.packageName)) {
                if (!this.mService.mProcessesOnHold.contains(app2)) {
                    this.mService.mProcessesOnHold.add(app2);
                }
                Slog.d(TAG, "BootAnimation not exit, putting on hold: " + app2);
                return app2;
            }
            Slog.d(TAG, "allow to start " + app2 + " before BootAnimationComplete");
        }
        if (this.mService.mProcessesReady || this.mService.isAllowedWhileBooting(info) || allowWhileBooting) {
            checkSlow(startTime, "startProcess: stepping in to startProcess");
            boolean success = startProcessLocked(app2, hostingRecord, zygotePolicyFlags, abiOverride);
            checkSlow(startTime, "startProcess: done starting proc!");
            if (success) {
                return app2;
            }
            return null;
        }
        if (!this.mService.mProcessesOnHold.contains(app2)) {
            this.mService.mProcessesOnHold.add(app2);
        }
        checkSlow(startTime, "startProcess: returning with proc on hold");
        return app2;
    }

    private String isProcStartValidLocked(ProcessRecord app, long expectedStartSeq) {
        StringBuilder sb = null;
        if (app.killedByAm) {
            sb = 0 == 0 ? new StringBuilder() : null;
            sb.append("killedByAm=true;");
        }
        if (this.mProcessNames.get(app.processName, app.uid) != app) {
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append("No entry in mProcessNames;");
        }
        if (!app.pendingStart) {
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append("pendingStart=false;");
        }
        if (app.startSeq > expectedStartSeq) {
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append("seq=" + app.startSeq + ",expected=" + expectedStartSeq + ";");
        }
        try {
            AppGlobals.getPackageManager().checkPackageStartable(app.info.packageName, app.userId);
        } catch (RemoteException e) {
        } catch (SecurityException e2) {
            if (this.mService.mConstants.FLAG_PROCESS_START_ASYNC) {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append("Package is frozen;");
            } else {
                throw e2;
            }
        }
        if (sb == null) {
            return null;
        }
        return sb.toString();
    }

    private boolean handleProcessStartedLocked(ProcessRecord pending, Process.ProcessStartResult startResult, long expectedStartSeq) {
        if (this.mPendingStarts.get(expectedStartSeq) == null) {
            if (pending.pid == startResult.pid) {
                pending.setUsingWrapper(startResult.usingWrapper);
                return false;
            }
            return false;
        }
        return handleProcessStartedLocked(pending, startResult.pid, startResult.usingWrapper, expectedStartSeq, false);
    }

    boolean handleProcessStartedLocked(ProcessRecord app, int pid, boolean usingWrapper, long expectedStartSeq, boolean procAttached) {
        ProcessRecord oldApp;
        this.mPendingStarts.remove(expectedStartSeq);
        String reason = isProcStartValidLocked(app, expectedStartSeq);
        if (reason != null) {
            Slog.w(TAG, app + " start not valid, killing pid=" + pid + ", " + reason);
            app.pendingStart = false;
            Process.killProcessQuiet(pid);
            Process.killProcessGroup(app.uid, app.pid);
            noteAppKill(app, 13, 13, reason);
            return false;
        }
        this.mService.mBatteryStatsService.noteProcessStart(app.processName, app.info.uid);
        checkSlow(app.startTime, "startProcess: done updating battery stats");
        Object[] objArr = new Object[6];
        objArr[0] = Integer.valueOf(UserHandle.getUserId(app.startUid));
        objArr[1] = Integer.valueOf(pid);
        objArr[2] = Integer.valueOf(app.startUid);
        objArr[3] = app.processName;
        objArr[4] = app.hostingRecord.getType();
        objArr[5] = app.hostingRecord.getName() != null ? app.hostingRecord.getName() : "";
        EventLog.writeEvent(EventLogTags.AM_PROC_START, objArr);
        try {
            AppGlobals.getPackageManager().logAppProcessStartIfNeeded(app.processName, app.uid, app.seInfo, app.info.sourceDir, pid);
        } catch (RemoteException e) {
        }
        Watchdog.getInstance().processStarted(app.processName, pid);
        checkSlow(app.startTime, "startProcess: building log message");
        StringBuilder buf = this.mStringBuilder;
        buf.setLength(0);
        buf.append("Start proc ");
        buf.append(pid);
        buf.append(':');
        buf.append(app.processName);
        buf.append('/');
        UserHandle.formatUid(buf, app.startUid);
        if (app.isolatedEntryPoint != null) {
            buf.append(" [");
            buf.append(app.isolatedEntryPoint);
            buf.append("]");
        }
        buf.append(" for ");
        buf.append(app.hostingRecord.getType());
        if (app.hostingRecord.getName() != null) {
            buf.append(" ");
            buf.append(app.hostingRecord.getName());
        }
        this.mService.reportUidInfoMessageLocked(TAG, buf.toString(), app.startUid);
        app.setPid(pid);
        app.setUsingWrapper(usingWrapper);
        app.pendingStart = false;
        checkSlow(app.startTime, "startProcess: starting to update pids map");
        synchronized (this.mService.mPidsSelfLocked) {
            oldApp = this.mService.mPidsSelfLocked.get(pid);
        }
        if (oldApp != null && !app.isolated) {
            Slog.wtf(TAG, "handleProcessStartedLocked process:" + app.processName + " startSeq:" + app.startSeq + " pid:" + pid + " belongs to another existing app:" + oldApp.processName + " startSeq:" + oldApp.startSeq);
            this.mService.cleanUpApplicationRecordLocked(oldApp, false, false, -1, true);
        }
        this.mService.addPidLocked(app);
        synchronized (this.mService.mPidsSelfLocked) {
            if (!procAttached) {
                Message msg = this.mService.mHandler.obtainMessage(20);
                msg.obj = app;
                this.mService.mHandler.sendMessageDelayed(msg, usingWrapper ? 1200000L : JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
            }
        }
        checkSlow(app.startTime, "startProcess: done updating pids map");
        return true;
    }

    final void removeLruProcessLocked(ProcessRecord app) {
        int lrui = this.mLruProcesses.lastIndexOf(app);
        if (lrui >= 0) {
            if (!app.killed) {
                if (app.isPersistent()) {
                    Slog.w(TAG, "Removing persistent process that hasn't been killed: " + app);
                } else {
                    Slog.wtfStack(TAG, "Removing process that hasn't been killed: " + app);
                    if (app.pid > 0) {
                        Process.killProcessQuiet(app.pid);
                        killProcessGroup(app.uid, app.pid);
                        noteAppKill(app, 13, 16, "hasn't been killed");
                    } else {
                        app.pendingStart = false;
                    }
                }
            }
            int i = this.mLruProcessActivityStart;
            if (lrui < i) {
                this.mLruProcessActivityStart = i - 1;
            }
            int i2 = this.mLruProcessServiceStart;
            if (lrui < i2) {
                this.mLruProcessServiceStart = i2 - 1;
            }
            this.mLruProcesses.remove(lrui);
        }
    }

    boolean killPackageProcessesLocked(String packageName, int appId, int userId, int minOomAdj, int reasonCode, int subReason, String reason) {
        return killPackageProcessesLocked(packageName, appId, userId, minOomAdj, false, true, true, false, false, reasonCode, subReason, reason);
    }

    void killAppZygotesLocked(String packageName, int appId, int userId, boolean force) {
        ArrayList<AppZygote> zygotesToKill = new ArrayList<>();
        for (SparseArray<AppZygote> appZygotes : this.mAppZygotes.getMap().values()) {
            for (int i = 0; i < appZygotes.size(); i++) {
                int appZygoteUid = appZygotes.keyAt(i);
                if ((userId == -1 || UserHandle.getUserId(appZygoteUid) == userId) && (appId < 0 || UserHandle.getAppId(appZygoteUid) == appId)) {
                    AppZygote appZygote = appZygotes.valueAt(i);
                    if (packageName == null || packageName.equals(appZygote.getAppInfo().packageName)) {
                        zygotesToKill.add(appZygote);
                    }
                }
            }
        }
        Iterator<AppZygote> it = zygotesToKill.iterator();
        while (it.hasNext()) {
            killAppZygoteIfNeededLocked(it.next(), force);
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0098 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x009b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x009d  */
    /* JADX WARN: Code duplicated, block: B:63:0x009a A[SYNTHETIC] */
    final boolean killPackageProcessesLocked(String packageName, int appId, int userId, int minOomAdj, boolean callerWillRestart, boolean allowRestart, boolean doit, boolean evenPersistent, boolean setRemoved, int reasonCode, int subReason, String reason) {
        ArrayList<ProcessRecord> procs = new ArrayList<>();
        int NP = this.mProcessNames.getMap().size();
        for (int ip = 0; ip < NP; ip++) {
            SparseArray<ProcessRecord> apps = (SparseArray) this.mProcessNames.getMap().valueAt(ip);
            int NA = apps.size();
            for (int ia = 0; ia < NA; ia++) {
                ProcessRecord app = apps.valueAt(ia);
                if (!app.isPersistent() || evenPersistent) {
                    if (app.removed) {
                        if (doit) {
                            procs.add(app);
                        }
                    } else if (app.setAdj < minOomAdj) {
                        continue;
                    } else if (packageName == null) {
                        if ((userId == -1 || app.userId == userId) && (appId < 0 || UserHandle.getAppId(app.uid) == appId)) {
                            if (!doit) {
                                return true;
                            }
                            if (setRemoved) {
                                app.removed = true;
                            }
                            procs.add(app);
                        }
                    } else {
                        boolean isDep = app.pkgDeps != null && app.pkgDeps.contains(packageName);
                        if ((isDep || UserHandle.getAppId(app.uid) == appId) && ((userId == -1 || app.userId == userId) && (app.pkgList.containsKey(packageName) || isDep))) {
                            if (!doit) {
                                return true;
                            }
                            if (setRemoved) {
                                app.removed = true;
                            }
                            procs.add(app);
                        }
                    }
                }
            }
        }
        int N = procs.size();
        for (int i = 0; i < N; i++) {
            removeProcessLocked(procs.get(i), callerWillRestart, allowRestart, reasonCode, subReason, reason);
        }
        killAppZygotesLocked(packageName, appId, userId, false);
        this.mService.updateOomAdjLocked("updateOomAdj_processEnd");
        return N > 0;
    }

    boolean removeProcessLocked(ProcessRecord app, boolean callerWillRestart, boolean allowRestart, int reasonCode, String reason) {
        return removeProcessLocked(app, callerWillRestart, allowRestart, reasonCode, 0, reason);
    }

    boolean removeProcessLocked(ProcessRecord app, boolean callerWillRestart, boolean allowRestart, int reasonCode, int subReason, String reason) {
        String name = app.processName;
        int uid = app.uid;
        ProcessRecord old = (ProcessRecord) this.mProcessNames.get(name, uid);
        if (old != app) {
            Slog.w(TAG, "Ignoring remove of inactive process: " + app);
            return false;
        }
        removeProcessNameLocked(name, uid);
        this.mService.mAtmInternal.clearHeavyWeightProcessIfEquals(app.getWindowProcessController());
        boolean needRestart = false;
        if ((app.pid > 0 && app.pid != ActivityManagerService.MY_PID) || (app.pid == 0 && app.pendingStart)) {
            int pid = app.pid;
            if (pid > 0) {
                this.mService.removePidLocked(app);
                app.bindMountPending = false;
                this.mService.mHandler.removeMessages(20, app);
                this.mService.mBatteryStatsService.noteProcessFinish(app.processName, app.info.uid);
                if (app.isolated) {
                    this.mService.mBatteryStatsService.removeIsolatedUid(app.uid, app.info.uid);
                    this.mService.getPackageManagerInternalLocked().removeIsolatedUid(app.uid);
                }
            }
            boolean willRestart = false;
            if (app.isPersistent() && !app.isolated) {
                if (!callerWillRestart) {
                    willRestart = true;
                } else {
                    needRestart = true;
                }
            }
            app.kill(reason, reasonCode, subReason, true);
            this.mService.handleAppDiedLocked(app, willRestart, allowRestart);
            if (willRestart) {
                removeLruProcessLocked(app);
                this.mService.addAppLocked(app.info, null, false, null, 0);
            }
        } else {
            this.mRemovedProcesses.add(app);
        }
        return needRestart;
    }

    final void addProcessNameLocked(ProcessRecord proc) {
        ProcessRecord old = removeProcessNameLocked(proc.processName, proc.uid);
        if (old == proc && proc.isPersistent()) {
            Slog.w(TAG, "Re-adding persistent process " + proc);
        } else if (old != null) {
            Slog.wtf(TAG, "Already have existing proc " + old + " when adding " + proc);
        }
        UidRecord uidRec = this.mActiveUids.get(proc.uid);
        if (uidRec == null) {
            uidRec = new UidRecord(proc.uid);
            if (Arrays.binarySearch(this.mService.mDeviceIdleTempWhitelist, UserHandle.getAppId(proc.uid)) >= 0 || this.mService.mPendingTempWhitelist.indexOfKey(proc.uid) >= 0) {
                uidRec.curWhitelist = true;
                uidRec.setWhitelist = true;
            }
            uidRec.updateHasInternetPermission();
            this.mActiveUids.put(proc.uid, uidRec);
            EventLogTags.writeAmUidRunning(uidRec.uid);
            this.mService.noteUidProcessState(uidRec.uid, uidRec.getCurProcState(), uidRec.curCapability);
        }
        proc.uidRecord = uidRec;
        uidRec.procRecords.add(proc);
        proc.renderThreadTid = 0;
        uidRec.numProcs++;
        this.mProcessNames.put(proc.processName, proc.uid, proc);
        if (proc.isolated) {
            this.mIsolatedProcesses.put(proc.uid, proc);
        }
    }

    private IsolatedUidRange getOrCreateIsolatedUidRangeLocked(ApplicationInfo info, HostingRecord hostingRecord) {
        if (hostingRecord == null || !hostingRecord.usesAppZygote()) {
            return this.mGlobalIsolatedUids;
        }
        return this.mAppIsolatedUidRangeAllocator.getOrCreateIsolatedUidRangeLocked(info.processName, hostingRecord.getDefiningUid());
    }

    final ProcessRecord newProcessRecordLocked(ApplicationInfo info, String customProcess, boolean isolated, int isolatedUid, HostingRecord hostingRecord) {
        String proc = customProcess != null ? customProcess : info.processName;
        int userId = UserHandle.getUserId(info.uid);
        int uid = info.uid;
        if (isolated) {
            if (isolatedUid == 0) {
                IsolatedUidRange uidRange = getOrCreateIsolatedUidRangeLocked(info, hostingRecord);
                if (uidRange == null || (uid = uidRange.allocateIsolatedUidLocked(userId)) == -1) {
                    return null;
                }
            } else {
                uid = isolatedUid;
            }
            this.mAppExitInfoTracker.mIsolatedUidRecords.addIsolatedUid(uid, info.uid);
            this.mService.getPackageManagerInternalLocked().addIsolatedUid(uid, info.uid);
            this.mService.mBatteryStatsService.addIsolatedUid(uid, info.uid);
            FrameworkStatsLog.write(43, info.uid, uid, 1);
        }
        ProcessRecord r = new ProcessRecord(this.mService, info, proc, uid);
        if (!this.mService.mBooted && !this.mService.mBooting && userId == 0 && (info.flags & 9) == 9) {
            r.setCurrentSchedulingGroup(2);
            r.setSchedGroup = 2;
            r.setPersistent(true);
            r.maxAdj = PERSISTENT_PROC_ADJ;
        }
        if (isolated && isolatedUid != 0) {
            r.maxAdj = PERSISTENT_SERVICE_ADJ;
        }
        addProcessNameLocked(r);
        return r;
    }

    final ProcessRecord removeProcessNameLocked(String name, int uid) {
        return removeProcessNameLocked(name, uid, null);
    }

    final ProcessRecord removeProcessNameLocked(String name, int uid, ProcessRecord expecting) {
        ProcessRecord old = (ProcessRecord) this.mProcessNames.get(name, uid);
        if (expecting == null || old == expecting) {
            this.mProcessNames.m15remove(name, uid);
        }
        ProcessRecord record = expecting != null ? expecting : old;
        if (record != null && record.uidRecord != null) {
            UidRecord uidRecord = record.uidRecord;
            uidRecord.numProcs--;
            uidRecord.procRecords.remove(record);
            if (uidRecord.numProcs == 0) {
                this.mService.enqueueUidChangeLocked(uidRecord, -1, 1);
                EventLogTags.writeAmUidStopped(uid);
                this.mActiveUids.remove(uid);
                this.mService.noteUidProcessState(uid, 20, 0);
            }
            record.uidRecord = null;
        }
        this.mIsolatedProcesses.remove(uid);
        this.mGlobalIsolatedUids.freeIsolatedUidLocked(uid);
        if (record != null && record.appZygote) {
            removeProcessFromAppZygoteLocked(record);
        }
        return old;
    }

    void updateCoreSettingsLocked(Bundle settings) {
        for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord processRecord = this.mLruProcesses.get(i);
            try {
                if (processRecord.thread != null) {
                    processRecord.thread.setCoreSettings(settings);
                }
            } catch (RemoteException e) {
            }
        }
    }

    void killAllBackgroundProcessesExceptLocked(int minTargetSdk, int maxProcState) {
        ArrayList<ProcessRecord> procs = new ArrayList<>();
        int NP = this.mProcessNames.getMap().size();
        for (int ip = 0; ip < NP; ip++) {
            SparseArray<ProcessRecord> apps = (SparseArray) this.mProcessNames.getMap().valueAt(ip);
            int NA = apps.size();
            for (int ia = 0; ia < NA; ia++) {
                ProcessRecord app = apps.valueAt(ia);
                if (app.removed || ((minTargetSdk < 0 || app.info.targetSdkVersion < minTargetSdk) && (maxProcState < 0 || app.setProcState > maxProcState))) {
                    procs.add(app);
                }
            }
        }
        int N = procs.size();
        for (int i = 0; i < N; i++) {
            removeProcessLocked(procs.get(i), false, true, 13, 10, "kill all background except");
        }
    }

    void updateAllTimePrefsLocked(int timePref) {
        for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord r = this.mLruProcesses.get(i);
            if (r.thread != null) {
                try {
                    r.thread.updateTimePrefs(timePref);
                } catch (RemoteException e) {
                    Slog.w(TAG, "Failed to update preferences for: " + r.info.processName);
                }
            }
        }
    }

    void setAllHttpProxy() {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
                    ProcessRecord r = this.mLruProcesses.get(i);
                    if (r.pid != ActivityManagerService.MY_PID && r.thread != null && !r.isolated) {
                        try {
                            r.thread.updateHttpProxy();
                        } catch (RemoteException e) {
                            Slog.w(TAG, "Failed to update http proxy for: " + r.info.processName);
                        }
                    }
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
        ActivityThread.updateHttpProxy(this.mService.mContext);
    }

    void clearAllDnsCacheLocked() {
        for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord r = this.mLruProcesses.get(i);
            if (r.thread != null) {
                try {
                    r.thread.clearDnsCache();
                } catch (RemoteException e) {
                    Slog.w(TAG, "Failed to clear dns cache for: " + r.info.processName);
                }
            }
        }
    }

    void handleAllTrustStorageUpdateLocked() {
        for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord r = this.mLruProcesses.get(i);
            if (r.thread != null) {
                try {
                    r.thread.handleTrustStorageUpdate();
                } catch (RemoteException e) {
                    Slog.w(TAG, "Failed to handle trust storage update for: " + r.info.processName);
                }
            }
        }
    }

    int updateLruProcessInternalLocked(ProcessRecord app, long now, int index, int lruSeq, String what, Object obj, ProcessRecord srcApp) {
        app.lastActivityTime = now;
        if (app.hasActivitiesOrRecentTasks()) {
            return index;
        }
        int lrui = this.mLruProcesses.lastIndexOf(app);
        if (lrui < 0) {
            Slog.wtf(TAG, "Adding dependent process " + app + " not on LRU list: " + what + " " + obj + " from " + srcApp);
            return index;
        }
        if (lrui >= index) {
            return index;
        }
        int i = this.mLruProcessActivityStart;
        if (lrui >= i && index < i) {
            return index;
        }
        this.mLruProcesses.remove(lrui);
        if (index > 0) {
            index--;
        }
        this.mLruProcesses.add(index, app);
        app.lruSeq = lruSeq;
        return index;
    }

    private void updateClientActivitiesOrdering(ProcessRecord topApp, int topI, int bottomI, int endIndex) {
        ProcessRecord nextEndProc;
        ProcessRecord endProc;
        if (topApp.hasActivitiesOrRecentTasks() || topApp.treatLikeActivity || !topApp.hasClientActivities()) {
            return;
        }
        int uid = topApp.info.uid;
        if (topApp.connectionGroup > 0) {
            int endImportance = topApp.connectionImportance;
            for (int i = endIndex; i >= bottomI; i--) {
                ProcessRecord subProc = this.mLruProcesses.get(i);
                if (subProc.info.uid == uid && subProc.connectionGroup == topApp.connectionGroup) {
                    if (i == endIndex && subProc.connectionImportance >= endImportance) {
                        endIndex--;
                        endImportance = subProc.connectionImportance;
                    } else {
                        boolean moved = false;
                        for (int pos = topI; pos > endIndex; pos--) {
                            ProcessRecord posProc = this.mLruProcesses.get(pos);
                            if (subProc.connectionImportance <= posProc.connectionImportance) {
                                this.mLruProcesses.remove(i);
                                this.mLruProcesses.add(pos, subProc);
                                moved = true;
                                endIndex--;
                                break;
                            }
                        }
                        if (!moved) {
                            this.mLruProcesses.remove(i);
                            this.mLruProcesses.add(endIndex, subProc);
                            endIndex--;
                            endImportance = subProc.connectionImportance;
                        }
                    }
                }
            }
        }
        int i2 = endIndex;
        while (i2 >= bottomI) {
            ProcessRecord subProc2 = this.mLruProcesses.get(i2);
            if (subProc2.info.uid != uid) {
                if (i2 < endIndex) {
                    boolean hasActivity = false;
                    int connUid = 0;
                    int connGroup = 0;
                    while (i2 >= bottomI) {
                        this.mLruProcesses.remove(i2);
                        this.mLruProcesses.add(endIndex, subProc2);
                        i2--;
                        if (i2 < bottomI) {
                            break;
                        }
                        subProc2 = this.mLruProcesses.get(i2);
                        if (subProc2.hasActivitiesOrRecentTasks() || subProc2.treatLikeActivity) {
                            if (hasActivity) {
                                break;
                            }
                            hasActivity = true;
                            endIndex--;
                        } else {
                            if (!subProc2.hasClientActivities()) {
                                continue;
                            } else if (hasActivity) {
                                if (connUid == 0 || connUid != subProc2.info.uid || connGroup == 0 || connGroup != subProc2.connectionGroup) {
                                    break;
                                }
                            } else {
                                hasActivity = true;
                                connUid = subProc2.info.uid;
                                connGroup = subProc2.connectionGroup;
                            }
                            endIndex--;
                        }
                    }
                }
                do {
                    endIndex--;
                    if (endIndex < bottomI) {
                        break;
                    } else {
                        endProc = this.mLruProcesses.get(endIndex);
                    }
                } while (endProc.info.uid != uid);
                if (endIndex >= bottomI) {
                    ProcessRecord endProc2 = this.mLruProcesses.get(endIndex);
                    do {
                        endIndex--;
                        if (endIndex < bottomI) {
                            break;
                        }
                        nextEndProc = this.mLruProcesses.get(endIndex);
                        if (nextEndProc.info.uid != uid) {
                            break;
                        }
                    } while (nextEndProc.connectionGroup == endProc2.connectionGroup);
                }
                i2 = endIndex;
            } else {
                i2--;
            }
        }
    }

    final void updateLruProcessLocked(ProcessRecord app, boolean activityChange, ProcessRecord client) {
        int nextIndex;
        long now;
        boolean hasActivity = app.hasActivitiesOrRecentTasks() || app.hasClientActivities() || app.treatLikeActivity;
        if (activityChange || !hasActivity) {
            this.mLruSeq++;
            long now2 = SystemClock.uptimeMillis();
            app.lastActivityTime = now2;
            if (hasActivity) {
                int N = this.mLruProcesses.size();
                if (N > 0 && this.mLruProcesses.get(N - 1) == app) {
                    return;
                }
            } else {
                int i = this.mLruProcessServiceStart;
                if (i > 0 && this.mLruProcesses.get(i - 1) == app) {
                    return;
                }
            }
            int lrui = this.mLruProcesses.lastIndexOf(app);
            if (app.isPersistent() && lrui >= 0) {
                return;
            }
            if (lrui >= 0) {
                int i2 = this.mLruProcessActivityStart;
                if (lrui < i2) {
                    this.mLruProcessActivityStart = i2 - 1;
                }
                int i3 = this.mLruProcessServiceStart;
                if (lrui < i3) {
                    this.mLruProcessServiceStart = i3 - 1;
                }
                this.mLruProcesses.remove(lrui);
            }
            int nextActivityIndex = -1;
            if (hasActivity) {
                int N2 = this.mLruProcesses.size();
                nextIndex = this.mLruProcessServiceStart;
                if (!app.hasActivitiesOrRecentTasks() && !app.treatLikeActivity && this.mLruProcessActivityStart < N2 - 1) {
                    int pos = N2 - 1;
                    while (pos > this.mLruProcessActivityStart) {
                        ProcessRecord posproc = this.mLruProcesses.get(pos);
                        if (posproc.info.uid == app.info.uid) {
                            break;
                        } else {
                            pos--;
                        }
                    }
                    this.mLruProcesses.add(pos, app);
                    int endIndex = pos - 1;
                    if (endIndex < this.mLruProcessActivityStart) {
                        endIndex = this.mLruProcessActivityStart;
                    }
                    nextActivityIndex = endIndex;
                    updateClientActivitiesOrdering(app, pos, this.mLruProcessActivityStart, endIndex);
                } else {
                    this.mLruProcesses.add(app);
                    nextActivityIndex = this.mLruProcesses.size() - 1;
                }
            } else {
                int index = this.mLruProcessServiceStart;
                if (client != null) {
                    int clientIndex = this.mLruProcesses.lastIndexOf(client);
                    if (clientIndex <= lrui) {
                        clientIndex = lrui;
                    }
                    if (clientIndex >= 0 && index > clientIndex) {
                        index = clientIndex;
                    }
                }
                this.mLruProcesses.add(index, app);
                int nextIndex2 = index - 1;
                this.mLruProcessActivityStart++;
                int i4 = this.mLruProcessServiceStart + 1;
                this.mLruProcessServiceStart = i4;
                if (index > 1) {
                    updateClientActivitiesOrdering(app, i4 - 1, 0, index - 1);
                }
                nextIndex = nextIndex2;
            }
            app.lruSeq = this.mLruSeq;
            int nextActivityIndex2 = nextActivityIndex;
            int j = app.connections.size() - 1;
            int nextIndex3 = nextIndex;
            while (j >= 0) {
                ConnectionRecord cr = app.connections.valueAt(j);
                if (cr.binding == null || cr.serviceDead || cr.binding.service == null || cr.binding.service.app == null || cr.binding.service.app.lruSeq == this.mLruSeq || (cr.flags & 1073742128) != 0) {
                    now = now2;
                } else if (cr.binding.service.app.isPersistent()) {
                    now = now2;
                } else if (cr.binding.service.app.hasClientActivities()) {
                    if (nextActivityIndex2 >= 0) {
                        now = now2;
                        nextActivityIndex2 = updateLruProcessInternalLocked(cr.binding.service.app, now2, nextActivityIndex2, this.mLruSeq, "service connection", cr, app);
                    } else {
                        now = now2;
                    }
                } else {
                    now = now2;
                    nextIndex3 = updateLruProcessInternalLocked(cr.binding.service.app, now, nextIndex3, this.mLruSeq, "service connection", cr, app);
                }
                j--;
                now2 = now;
            }
            long now3 = now2;
            for (int j2 = app.conProviders.size() - 1; j2 >= 0; j2--) {
                ContentProviderRecord cpr = app.conProviders.get(j2).provider;
                if (cpr.proc != null && cpr.proc.lruSeq != this.mLruSeq && !cpr.proc.isPersistent()) {
                    nextIndex3 = updateLruProcessInternalLocked(cpr.proc, now3, nextIndex3, this.mLruSeq, "provider reference", cpr, app);
                }
            }
        }
    }

    final ProcessRecord getLRURecordForAppLocked(IApplicationThread thread) {
        if (thread == null) {
            return null;
        }
        IBinder threadBinder = thread.asBinder();
        for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord rec = this.mLruProcesses.get(i);
            if (rec.thread != null && rec.thread.asBinder() == threadBinder) {
                return rec;
            }
        }
        return null;
    }

    boolean haveBackgroundProcessLocked() {
        for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord rec = this.mLruProcesses.get(i);
            if (rec.thread != null && rec.setProcState >= 16) {
                return true;
            }
        }
        return false;
    }

    private static int procStateToImportance(int procState, int memAdj, ActivityManager.RunningAppProcessInfo currApp, int clientTargetSdk) {
        int imp = ActivityManager.RunningAppProcessInfo.procStateToImportanceForTargetSdk(procState, clientTargetSdk);
        if (imp == HEAVY_WEIGHT_APP_ADJ) {
            currApp.lru = memAdj;
        } else {
            currApp.lru = 0;
        }
        return imp;
    }

    void fillInProcMemInfoLocked(ProcessRecord app, ActivityManager.RunningAppProcessInfo outInfo, int clientTargetSdk) {
        outInfo.pid = app.pid;
        outInfo.uid = app.info.uid;
        if (this.mService.mAtmInternal.isHeavyWeightProcess(app.getWindowProcessController())) {
            outInfo.flags |= 1;
        }
        if (app.isPersistent()) {
            outInfo.flags |= 2;
        }
        if (app.hasActivities()) {
            outInfo.flags |= 4;
        }
        outInfo.lastTrimLevel = app.trimMemoryLevel;
        int adj = app.curAdj;
        int procState = app.getCurProcState();
        outInfo.importance = procStateToImportance(procState, adj, outInfo, clientTargetSdk);
        outInfo.importanceReasonCode = app.adjTypeCode;
        outInfo.processState = app.getCurProcState();
        outInfo.isFocused = app == this.mService.getTopAppLocked();
        outInfo.lastActivityTime = app.lastActivityTime;
    }

    List<ActivityManager.RunningAppProcessInfo> getRunningAppProcessesLocked(boolean allUsers, int userId, boolean allUids, int callingUid, int clientTargetSdk) {
        List<ActivityManager.RunningAppProcessInfo> runList = null;
        String calling_package = "system";
        try {
            String[] packages = AppGlobals.getPackageManager().getPackagesForUid(callingUid);
            if (packages != null && packages[0] != null) {
                calling_package = packages[0];
            }
        } catch (RemoteException e) {
        }
        for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord app = this.mLruProcesses.get(i);
            if ((allUsers || app.userId == userId) && ((allUids || calling_package.equals("com.mega.healthmanager") || app.uid == callingUid) && app.thread != null && !app.isCrashing() && !app.isNotResponding())) {
                ActivityManager.RunningAppProcessInfo currApp = new ActivityManager.RunningAppProcessInfo(app.processName, app.pid, app.getPackageList());
                fillInProcMemInfoLocked(app, currApp, clientTargetSdk);
                if (app.adjSource instanceof ProcessRecord) {
                    currApp.importanceReasonPid = ((ProcessRecord) app.adjSource).pid;
                    currApp.importanceReasonImportance = ActivityManager.RunningAppProcessInfo.procStateToImportance(app.adjSourceProcState);
                } else if (app.adjSource instanceof ActivityServiceConnectionsHolder) {
                    ActivityServiceConnectionsHolder r = (ActivityServiceConnectionsHolder) app.adjSource;
                    int pid = r.getActivityPid();
                    if (pid != -1) {
                        currApp.importanceReasonPid = pid;
                    }
                }
                if (app.adjTarget instanceof ComponentName) {
                    currApp.importanceReasonComponent = (ComponentName) app.adjTarget;
                }
                if (runList == null) {
                    runList = new ArrayList<>();
                }
                runList.add(currApp);
            }
        }
        return runList;
    }

    int getLruSizeLocked() {
        return this.mLruProcesses.size();
    }

    void dumpLruListHeaderLocked(PrintWriter pw) {
        pw.print("  Process LRU list (sorted by oom_adj, ");
        pw.print(this.mLruProcesses.size());
        pw.print(" total, non-act at ");
        pw.print(this.mLruProcesses.size() - this.mLruProcessActivityStart);
        pw.print(", non-svc at ");
        pw.print(this.mLruProcesses.size() - this.mLruProcessServiceStart);
        pw.println("):");
    }

    ArrayList<ProcessRecord> collectProcessesLocked(int start, boolean allPkgs, String[] args) {
        if (args != null && args.length > start && args[start].charAt(0) != '-') {
            ArrayList<ProcessRecord> procs = new ArrayList<>();
            int pid = -1;
            try {
                pid = Integer.parseInt(args[start]);
            } catch (NumberFormatException e) {
            }
            for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
                ProcessRecord proc = this.mLruProcesses.get(i);
                if (proc.pid > 0 && proc.pid == pid) {
                    procs.add(proc);
                } else if (allPkgs && proc.pkgList != null && proc.pkgList.containsKey(args[start])) {
                    procs.add(proc);
                } else if (proc.processName.equals(args[start])) {
                    procs.add(proc);
                }
            }
            int i2 = procs.size();
            if (i2 <= 0) {
                return null;
            }
            return procs;
        }
        return new ArrayList<>(this.mLruProcesses);
    }

    void updateApplicationInfoLocked(List<String> packagesToUpdate, int userId, boolean updateFrameworkRes) {
        for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord app = this.mLruProcesses.get(i);
            if (app.thread != null && (userId == -1 || app.userId == userId)) {
                int packageCount = app.pkgList.size();
                for (int j = 0; j < packageCount; j++) {
                    String packageName = app.pkgList.keyAt(j);
                    if (updateFrameworkRes || packagesToUpdate.contains(packageName)) {
                        try {
                            ApplicationInfo ai = AppGlobals.getPackageManager().getApplicationInfo(packageName, 1024, app.userId);
                            if (ai != null) {
                                app.thread.scheduleApplicationInfoChanged(ai);
                                if (ai.packageName.equals(app.info.packageName)) {
                                    app.info = ai;
                                }
                            }
                        } catch (RemoteException e) {
                            Slog.w(TAG, String.format("Failed to update %s ApplicationInfo for %s", packageName, app));
                        }
                    }
                }
            }
        }
    }

    void sendPackageBroadcastLocked(int cmd, String[] packages, int userId) {
        boolean foundProcess = false;
        for (int i = this.mLruProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord r = this.mLruProcesses.get(i);
            if (r.thread != null && (userId == -1 || r.userId == userId)) {
                try {
                    for (int index = packages.length - 1; index >= 0 && !foundProcess; index--) {
                        if (packages[index].equals(r.info.packageName)) {
                            foundProcess = true;
                        }
                    }
                    r.thread.dispatchPackageBroadcast(cmd, packages);
                } catch (RemoteException e) {
                }
            }
        }
        if (!foundProcess) {
            try {
                AppGlobals.getPackageManager().notifyPackagesReplacedReceived(packages);
            } catch (RemoteException e2) {
            }
        }
    }

    int getUidProcStateLocked(int uid) {
        UidRecord uidRec = this.mActiveUids.get(uid);
        if (uidRec == null) {
            return 20;
        }
        return uidRec.getCurProcState();
    }

    UidRecord getUidRecordLocked(int uid) {
        return this.mActiveUids.get(uid);
    }

    void doStopUidForIdleUidsLocked() {
        int size = this.mActiveUids.size();
        for (int i = 0; i < size; i++) {
            int uid = this.mActiveUids.keyAt(i);
            if (!UserHandle.isCore(uid)) {
                UidRecord uidRec = this.mActiveUids.valueAt(i);
                if (uidRec.idle) {
                    this.mService.doStopUidLocked(uidRec.uid, uidRec);
                }
            }
        }
    }

    int getBlockStateForUid(UidRecord uidRec) {
        boolean isAllowed = NetworkPolicyManager.isProcStateAllowedWhileIdleOrPowerSaveMode(uidRec.getCurProcState()) || NetworkPolicyManager.isProcStateAllowedWhileOnRestrictBackground(uidRec.getCurProcState());
        boolean wasAllowed = NetworkPolicyManager.isProcStateAllowedWhileIdleOrPowerSaveMode(uidRec.setProcState) || NetworkPolicyManager.isProcStateAllowedWhileOnRestrictBackground(uidRec.setProcState);
        if (wasAllowed || !isAllowed) {
            return (!wasAllowed || isAllowed) ? 0 : 2;
        }
        return 1;
    }

    void incrementProcStateSeqAndNotifyAppsLocked(ActiveUids activeUids) {
        UidRecord uidRec;
        int blockState;
        if (this.mService.mWaitForNetworkTimeoutMs <= 0) {
            return;
        }
        ArrayList<Integer> blockingUids = null;
        for (int i = activeUids.size() - 1; i >= 0; i--) {
            UidRecord uidRec2 = activeUids.valueAt(i);
            if (this.mService.mInjector.isNetworkRestrictedForUid(uidRec2.uid) && UserHandle.isApp(uidRec2.uid) && uidRec2.hasInternetPermission && uidRec2.setProcState != uidRec2.getCurProcState() && (blockState = getBlockStateForUid(uidRec2)) != 0) {
                synchronized (uidRec2.networkStateLock) {
                    long j = this.mProcStateSeqCounter + 1;
                    this.mProcStateSeqCounter = j;
                    uidRec2.curProcStateSeq = j;
                    if (blockState == 1) {
                        if (blockingUids == null) {
                            blockingUids = new ArrayList<>();
                        }
                        blockingUids.add(Integer.valueOf(uidRec2.uid));
                    } else if (uidRec2.waitingForNetwork) {
                        uidRec2.networkStateLock.notifyAll();
                    }
                }
            }
        }
        if (blockingUids == null) {
            return;
        }
        for (int i2 = this.mLruProcesses.size() - 1; i2 >= 0; i2--) {
            ProcessRecord app = this.mLruProcesses.get(i2);
            if (blockingUids.contains(Integer.valueOf(app.uid)) && !app.killedByAm && app.thread != null && (uidRec = getUidRecordLocked(app.uid)) != null) {
                try {
                    app.thread.setNetworkBlockSeq(uidRec.curProcStateSeq);
                } catch (RemoteException e) {
                }
            }
        }
    }

    private LocalSocket createSystemServerSocketForZygote() {
        File socketFile = new File(UNSOL_ZYGOTE_MSG_SOCKET_PATH);
        if (socketFile.exists()) {
            socketFile.delete();
        }
        LocalSocket serverSocket = null;
        try {
            serverSocket = new LocalSocket(1);
            serverSocket.bind(new LocalSocketAddress(UNSOL_ZYGOTE_MSG_SOCKET_PATH, LocalSocketAddress.Namespace.FILESYSTEM));
            Os.chmod(UNSOL_ZYGOTE_MSG_SOCKET_PATH, 438);
            return serverSocket;
        } catch (Exception e) {
            if (serverSocket != null) {
                try {
                    serverSocket.close();
                } catch (IOException e2) {
                }
                return null;
            }
            return serverSocket;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int handleZygoteMessages(FileDescriptor fd, int events) {
        fd.getInt$();
        if ((events & 1) != 0) {
            try {
                int len = Os.read(fd, this.mZygoteUnsolicitedMessage, 0, this.mZygoteUnsolicitedMessage.length);
                if (len > 0 && this.mZygoteSigChldMessage.length == Zygote.nativeParseSigChld(this.mZygoteUnsolicitedMessage, len, this.mZygoteSigChldMessage)) {
                    this.mAppExitInfoTracker.handleZygoteSigChld(this.mZygoteSigChldMessage[0], this.mZygoteSigChldMessage[1], this.mZygoteSigChldMessage[2]);
                }
            } catch (Exception e) {
                Slog.w(TAG, "Exception in reading unsolicited zygote message: " + e);
            }
        }
        return 1;
    }

    void noteProcessDiedLocked(ProcessRecord app) {
        Watchdog.getInstance().processDied(app.processName, app.pid);
        this.mAppExitInfoTracker.scheduleNoteProcessDied(app);
    }

    void noteAppKill(ProcessRecord app, int reason, int subReason, String msg) {
        this.mAppExitInfoTracker.scheduleNoteAppKill(app, reason, subReason, msg);
    }

    void noteAppKill(int pid, int uid, int reason, int subReason, String msg) {
        this.mAppExitInfoTracker.scheduleNoteAppKill(pid, uid, reason, subReason, msg);
    }

    void killProcessesWhenImperceptible(int[] pids, String reason, int requester) {
        ProcessRecord app;
        if (ArrayUtils.isEmpty(pids)) {
            return;
        }
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                for (int i : pids) {
                    synchronized (this.mService.mPidsSelfLocked) {
                        app = this.mService.mPidsSelfLocked.get(i);
                    }
                    if (app != null) {
                        this.mImperceptibleKillRunner.enqueueLocked(app, reason, requester);
                    }
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    private final class ImperceptibleKillRunner extends IUidObserver.Stub {
        private static final String DROPBOX_TAG_IMPERCEPTIBLE_KILL = "imperceptible_app_kill";
        private static final String EXTRA_PID = "pid";
        private static final String EXTRA_REASON = "reason";
        private static final String EXTRA_REQUESTER = "requester";
        private static final String EXTRA_TIMESTAMP = "timestamp";
        private static final String EXTRA_UID = "uid";
        private Handler mHandler;
        private volatile boolean mIdle;
        private IdlenessReceiver mReceiver;
        private boolean mUidObserverEnabled;
        private SparseArray<List<Bundle>> mWorkItems = new SparseArray<>();
        private ProcessMap<Long> mLastProcessKillTimes = new ProcessMap<>();

        private final class H extends Handler {
            static final int MSG_DEVICE_IDLE = 0;
            static final int MSG_UID_GONE = 1;
            static final int MSG_UID_STATE_CHANGED = 2;

            H(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                int i = msg.what;
                if (i == 0) {
                    ImperceptibleKillRunner.this.handleDeviceIdle();
                } else if (i == 1) {
                    ImperceptibleKillRunner.this.handleUidGone(msg.arg1);
                } else if (i == 2) {
                    ImperceptibleKillRunner.this.handleUidStateChanged(msg.arg1, msg.arg2);
                }
            }
        }

        private final class IdlenessReceiver extends BroadcastReceiver {
            private IdlenessReceiver() {
            }

            /* JADX WARN: Code duplicated, block: B:13:0x0038  */
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                byte b;
                PowerManager pm = (PowerManager) ProcessList.this.mService.mContext.getSystemService(PowerManager.class);
                String action = intent.getAction();
                int iHashCode = action.hashCode();
                if (iHashCode != 498807504) {
                    if (iHashCode == 870701415 && action.equals("android.os.action.DEVICE_IDLE_MODE_CHANGED")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (action.equals("android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED")) {
                    b = 0;
                } else {
                    b = -1;
                }
                if (b == 0) {
                    ImperceptibleKillRunner.this.notifyDeviceIdleness(pm.isLightDeviceIdleMode());
                } else if (b == 1) {
                    ImperceptibleKillRunner.this.notifyDeviceIdleness(pm.isDeviceIdleMode());
                }
            }
        }

        ImperceptibleKillRunner(Looper looper) {
            this.mHandler = new H(looper);
        }

        boolean enqueueLocked(ProcessRecord app, String reason, int requester) {
            Long last = app.isolated ? null : (Long) this.mLastProcessKillTimes.get(app.processName, app.uid);
            if (last != null && SystemClock.uptimeMillis() < last.longValue() + 60000) {
                return false;
            }
            Bundle bundle = new Bundle();
            bundle.putInt(EXTRA_PID, app.pid);
            bundle.putInt("uid", app.uid);
            bundle.putLong("timestamp", app.startTime);
            bundle.putString("reason", reason);
            bundle.putInt(EXTRA_REQUESTER, requester);
            List<Bundle> list = this.mWorkItems.get(app.uid);
            if (list == null) {
                list = new ArrayList();
                this.mWorkItems.put(app.uid, list);
            }
            list.add(bundle);
            if (this.mReceiver == null) {
                this.mReceiver = new IdlenessReceiver();
                IntentFilter filter = new IntentFilter("android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED");
                filter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
                ProcessList.this.mService.mContext.registerReceiver(this.mReceiver, filter);
                return true;
            }
            return true;
        }

        void notifyDeviceIdleness(boolean idle) {
            boolean diff = this.mIdle != idle;
            this.mIdle = idle;
            if (diff && idle) {
                synchronized (this) {
                    if (this.mWorkItems.size() > 0) {
                        this.mHandler.sendEmptyMessage(0);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleDeviceIdle() {
            DropBoxManager dbox = (DropBoxManager) ProcessList.this.mService.mContext.getSystemService(DropBoxManager.class);
            boolean logToDropbox = dbox != null && dbox.isTagEnabled(DROPBOX_TAG_IMPERCEPTIBLE_KILL);
            synchronized (ProcessList.this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    int j = this.mWorkItems.size();
                    int i = j - 1;
                    while (this.mIdle && i >= 0) {
                        List<Bundle> list = this.mWorkItems.valueAt(i);
                        int len = list.size();
                        int j2 = len - 1;
                        while (this.mIdle && j2 >= 0) {
                            Bundle bundle = list.get(j2);
                            int i2 = bundle.getInt(EXTRA_PID);
                            int i3 = bundle.getInt("uid");
                            long j3 = bundle.getLong("timestamp");
                            String string = bundle.getString("reason");
                            int size = bundle.getInt(EXTRA_REQUESTER);
                            int size2 = j;
                            int size3 = j2;
                            if (killProcessLocked(i2, i3, j3, string, size, dbox, logToDropbox)) {
                                list.remove(size3);
                            }
                            j2 = size3 - 1;
                            j = size2;
                        }
                        int size4 = j;
                        int size5 = list.size();
                        if (size5 == 0) {
                            this.mWorkItems.removeAt(i);
                        }
                        i--;
                        j = size4;
                    }
                    registerUidObserverIfNecessaryLocked();
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        private void registerUidObserverIfNecessaryLocked() {
            if (!this.mUidObserverEnabled && this.mWorkItems.size() > 0) {
                this.mUidObserverEnabled = true;
                ProcessList.this.mService.registerUidObserver(this, 3, -1, PackageManagerService.PLATFORM_PACKAGE_NAME);
            } else if (this.mUidObserverEnabled && this.mWorkItems.size() == 0) {
                this.mUidObserverEnabled = false;
                ProcessList.this.mService.unregisterUidObserver(this);
            }
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x00ef */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean killProcessLocked(int r15, int r16, long r17, java.lang.String r19, int r20, android.os.DropBoxManager r21, boolean r22) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 241
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ProcessList.ImperceptibleKillRunner.killProcessLocked(int, int, long, java.lang.String, int, android.os.DropBoxManager, boolean):boolean");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleUidStateChanged(int uid, int procState) {
            List<Bundle> list;
            DropBoxManager dbox = (DropBoxManager) ProcessList.this.mService.mContext.getSystemService(DropBoxManager.class);
            boolean logToDropbox = dbox != null && dbox.isTagEnabled(DROPBOX_TAG_IMPERCEPTIBLE_KILL);
            synchronized (ProcessList.this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    if (this.mIdle && !ProcessList.this.mService.mConstants.IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES.contains(Integer.valueOf(procState)) && (list = this.mWorkItems.get(uid)) != null) {
                        int len = list.size();
                        for (int j = len - 1; this.mIdle && j >= 0; j--) {
                            Bundle bundle = list.get(j);
                            if (killProcessLocked(bundle.getInt(EXTRA_PID), bundle.getInt("uid"), bundle.getLong("timestamp"), bundle.getString("reason"), bundle.getInt(EXTRA_REQUESTER), dbox, logToDropbox)) {
                                list.remove(j);
                            }
                        }
                        if (list.size() == 0) {
                            this.mWorkItems.remove(uid);
                        }
                        registerUidObserverIfNecessaryLocked();
                    }
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleUidGone(int uid) {
            synchronized (ProcessList.this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    this.mWorkItems.remove(uid);
                    registerUidObserverIfNecessaryLocked();
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void onUidGone(int uid, boolean disabled) {
            this.mHandler.obtainMessage(1, uid, 0).sendToTarget();
        }

        public void onUidActive(int uid) {
        }

        public void onUidIdle(int uid, boolean disabled) {
        }

        public void onUidStateChanged(int uid, int procState, long procStateSeq, int capability) {
            this.mHandler.obtainMessage(2, uid, procState).sendToTarget();
        }

        public void onUidCachedChanged(int uid, boolean cached) {
        }
    }
}
