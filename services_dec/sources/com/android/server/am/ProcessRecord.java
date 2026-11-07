package com.android.server.am;

import android.app.ActivityManager;
import android.app.ApplicationErrorReport;
import android.app.Dialog;
import android.app.IApplicationThread;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProcessInfo;
import android.content.pm.VersionedPackage;
import android.content.res.CompatibilityInfo;
import android.os.Binder;
import android.os.Debug;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.DebugUtils;
import android.util.EventLog;
import android.util.Slog;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import com.android.internal.app.procstats.ProcessState;
import com.android.internal.app.procstats.ProcessStats;
import com.android.internal.os.BatteryStatsImpl;
import com.android.internal.os.Zygote;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.connectivity.NetworkAgentInfo;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.wm.WindowProcessController;
import com.android.server.wm.WindowProcessListener;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class ProcessRecord implements WindowProcessListener {
    private static final String TAG = "ActivityManager";
    private static final int VALUE_FALSE = 0;
    private static final int VALUE_INVALID = -1;
    private static final int VALUE_TRUE = 1;
    int adjSeq;
    Object adjSource;
    int adjSourceProcState;
    Object adjTarget;
    String adjType;
    int adjTypeCode;
    final boolean appZygote;
    boolean bad;
    ProcessState baseProcessTracker;
    boolean bindMountPending;
    CompatibilityInfo compat;
    int completedAdjSeq;
    int connectionGroup;
    int connectionImportance;
    ServiceRecord connectionService;
    boolean containsCycle;
    Runnable crashHandler;
    ActivityManager.ProcessErrorStateInfo crashingReport;
    int curAdj;
    int curCapability;
    long curCpuTime;
    BatteryStatsImpl.Uid.Proc curProcBatteryStats;
    IBinder.DeathRecipient deathRecipient;
    boolean empty;
    ComponentName errorReportReceiver;
    boolean execServicesFg;
    boolean forceCrashReport;
    Object forcingToImportant;
    long freezeUnfreezeTime;
    boolean frozen;
    int[] gids;
    boolean hasAboveClient;
    boolean hasShownUi;
    boolean hasStartedServices;
    HostingRecord hostingRecord;
    public boolean inFullBackup;
    volatile ApplicationInfo info;
    long initialIdlePss;
    String instructionSet;
    final boolean isolated;
    String isolatedEntryPoint;
    String[] isolatedEntryPointArgs;
    boolean killed;
    boolean killedByAm;
    long lastActivityTime;
    long lastCachedPss;
    long lastCachedSwapPss;
    int lastCompactAction;
    long lastCompactTime;
    long lastCpuTime;
    long lastLowMemory;
    Debug.MemoryInfo lastMemInfo;
    long lastMemInfoTime;
    long lastProviderTime;
    long lastPss;
    long lastPssTime;
    long lastRequestedGc;
    long lastStateTime;
    long lastSwapPss;
    long lastTopTime;
    int lruSeq;
    private volatile boolean mCached;
    private boolean mCrashing;
    private int mCurRawAdj;
    private int mCurSchedGroup;
    private boolean mDebugging;
    long[] mDisabledCompatChanges;
    private long mFgInteractionTime;
    private int mFgServiceTypes;
    private boolean mHasClientActivities;
    private boolean mHasForegroundActivities;
    private boolean mHasForegroundServices;
    private boolean mHasOverlayUi;
    private boolean mHasTopUi;
    private ActiveInstrumentation mInstr;
    private long mInteractionEventTime;
    long mLastRss;
    private boolean mNotResponding;
    boolean mPendingCompact;
    private boolean mPendingUiClean;
    private boolean mPersistent;
    int mPidForCompact;
    volatile ProcessRecord mPrecedence;
    boolean mReachable;
    private int mRepFgServiceTypes;
    private String mRequiredAbi;
    private final ActivityManagerService mService;
    int mSetAdjForCompact;
    volatile ProcessRecord mSuccessor;
    private boolean mUsingWrapper;
    private long mWhenUnimportant;
    private final WindowProcessController mWindowProcessController;
    int maxAdj;
    int mountMode;
    long nextPssTime;
    boolean notCachedSinceIdle;
    ActivityManager.ProcessErrorStateInfo notRespondingReport;
    boolean pendingStart;
    int pid;
    ArraySet<String> pkgDeps;
    String procStatFile;
    boolean procStateChanged;
    final ProcessInfo processInfo;
    final String processName;
    int pssStatType;
    volatile boolean removed;
    int renderThreadTid;
    boolean repForegroundActivities;
    boolean reportLowMemory;
    boolean reportedInteraction;
    int reqCompactAction;
    boolean runningRemoteAnimation;
    int savedPriority;
    String seInfo;
    boolean serviceHighRam;
    boolean serviceb;
    int setAdj;
    int setCapability;
    int setRawAdj;
    int setSchedGroup;
    String shortStringName;
    boolean shouldNotFreeze;
    long startSeq;
    long startTime;
    int startUid;
    boolean starting;
    String stringName;
    boolean systemNoUi;
    IApplicationThread thread;
    boolean treatLikeActivity;
    int trimMemoryLevel;
    final int uid;
    UidRecord uidRecord;
    boolean unlocked;
    final int userId;
    int verifiedAdj;
    boolean waitedForDebugger;
    String waitingToKill;
    boolean whitelistManager;
    final PackageList pkgList = new PackageList();
    final ProcessList.ProcStateMemTracker procStateMemTracker = new ProcessList.ProcStateMemTracker();
    private int mCurProcState = 20;
    private int mRepProcState = 20;
    private int mCurRawProcState = 20;
    int setProcState = 20;
    int pssProcState = 20;
    final ArraySet<BroadcastRecord> curReceivers = new ArraySet<>();
    private final ErrorDialogController mDialogController = new ErrorDialogController();
    private final ArraySet<ServiceRecord> mServices = new ArraySet<>();
    final ArraySet<ServiceRecord> executingServices = new ArraySet<>();
    final ArraySet<ConnectionRecord> connections = new ArraySet<>();
    final ArraySet<ReceiverList> receivers = new ArraySet<>();
    final ArrayMap<String, ContentProviderRecord> pubProviders = new ArrayMap<>();
    final ArrayList<ContentProviderConnection> conProviders = new ArrayList<>();
    final ArraySet<Binder> mAllowBackgroundActivityStartsTokens = new ArraySet<>();
    private ArraySet<Integer> mBoundClientUids = new ArraySet<>();
    private int mCachedHasActivities = -1;
    private int mCachedIsHeavyWeight = -1;
    private int mCachedHasVisibleActivities = -1;
    private int mCachedIsHomeProcess = -1;
    private int mCachedIsPreviousProcess = -1;
    private int mCachedHasRecentTasks = -1;
    private int mCachedIsReceivingBroadcast = -1;
    int mCachedAdj = -10000;
    boolean mCachedForegroundActivities = false;
    int mCachedProcState = 19;
    int mCachedSchedGroup = 0;

    final class PackageList {
        final ArrayMap<String, ProcessStats.ProcessStateHolder> mPkgList = new ArrayMap<>();

        PackageList() {
        }

        ProcessStats.ProcessStateHolder put(String key, ProcessStats.ProcessStateHolder value) {
            ProcessRecord.this.mWindowProcessController.addPackage(key);
            return this.mPkgList.put(key, value);
        }

        void clear() {
            this.mPkgList.clear();
            ProcessRecord.this.mWindowProcessController.clearPackageList();
        }

        int size() {
            return this.mPkgList.size();
        }

        String keyAt(int index) {
            return this.mPkgList.keyAt(index);
        }

        public ProcessStats.ProcessStateHolder valueAt(int index) {
            return this.mPkgList.valueAt(index);
        }

        ProcessStats.ProcessStateHolder get(String pkgName) {
            return this.mPkgList.get(pkgName);
        }

        boolean containsKey(Object key) {
            return this.mPkgList.containsKey(key);
        }
    }

    void setStartParams(int startUid, HostingRecord hostingRecord, String seInfo, long startTime) {
        this.startUid = startUid;
        this.hostingRecord = hostingRecord;
        this.seInfo = seInfo;
        this.startTime = startTime;
    }

    void dump(PrintWriter pw, String prefix) {
        long nowUptime = SystemClock.uptimeMillis();
        pw.print(prefix);
        pw.print("user #");
        pw.print(this.userId);
        pw.print(" uid=");
        pw.print(this.info.uid);
        if (this.uid != this.info.uid) {
            pw.print(" ISOLATED uid=");
            pw.print(this.uid);
        }
        pw.print(" gids={");
        if (this.gids != null) {
            for (int gi = 0; gi < this.gids.length; gi++) {
                if (gi != 0) {
                    pw.print(", ");
                }
                pw.print(this.gids[gi]);
            }
        }
        pw.println("}");
        if (this.processInfo != null) {
            pw.print(prefix);
            pw.println("processInfo:");
            if (this.processInfo.deniedPermissions != null) {
                for (int i = 0; i < this.processInfo.deniedPermissions.size(); i++) {
                    pw.print(prefix);
                    pw.print("  deny: ");
                    pw.println((String) this.processInfo.deniedPermissions.valueAt(i));
                }
            }
            if (this.processInfo.gwpAsanMode != -1) {
                pw.print(prefix);
                pw.println("  gwpAsanMode=" + this.processInfo.gwpAsanMode);
            }
        }
        pw.print(prefix);
        pw.print("mRequiredAbi=");
        pw.print(this.mRequiredAbi);
        pw.print(" instructionSet=");
        pw.println(this.instructionSet);
        if (this.info.className != null) {
            pw.print(prefix);
            pw.print("class=");
            pw.println(this.info.className);
        }
        if (this.info.manageSpaceActivityName != null) {
            pw.print(prefix);
            pw.print("manageSpaceActivityName=");
            pw.println(this.info.manageSpaceActivityName);
        }
        pw.print(prefix);
        pw.print("dir=");
        pw.print(this.info.sourceDir);
        pw.print(" publicDir=");
        pw.print(this.info.publicSourceDir);
        pw.print(" data=");
        pw.println(this.info.dataDir);
        pw.print(prefix);
        pw.print("packageList={");
        for (int i2 = 0; i2 < this.pkgList.size(); i2++) {
            if (i2 > 0) {
                pw.print(", ");
            }
            pw.print(this.pkgList.keyAt(i2));
        }
        pw.println("}");
        if (this.pkgDeps != null) {
            pw.print(prefix);
            pw.print("packageDependencies={");
            for (int i3 = 0; i3 < this.pkgDeps.size(); i3++) {
                if (i3 > 0) {
                    pw.print(", ");
                }
                pw.print(this.pkgDeps.valueAt(i3));
            }
            pw.println("}");
        }
        pw.print(prefix);
        pw.print("compat=");
        pw.println(this.compat);
        if (this.mInstr != null) {
            pw.print(prefix);
            pw.print("mInstr=");
            pw.println(this.mInstr);
        }
        pw.print(prefix);
        pw.print("thread=");
        pw.println(this.thread);
        pw.print(prefix);
        pw.print("pid=");
        pw.print(this.pid);
        pw.print(" starting=");
        pw.println(this.starting);
        pw.print(prefix);
        pw.print("lastActivityTime=");
        TimeUtils.formatDuration(this.lastActivityTime, nowUptime, pw);
        pw.print(" lastPssTime=");
        TimeUtils.formatDuration(this.lastPssTime, nowUptime, pw);
        pw.print(" pssStatType=");
        pw.print(this.pssStatType);
        pw.print(" nextPssTime=");
        TimeUtils.formatDuration(this.nextPssTime, nowUptime, pw);
        pw.println();
        pw.print(prefix);
        pw.print("lastPss=");
        DebugUtils.printSizeValue(pw, this.lastPss * 1024);
        pw.print(" lastSwapPss=");
        DebugUtils.printSizeValue(pw, this.lastSwapPss * 1024);
        pw.print(" lastCachedPss=");
        DebugUtils.printSizeValue(pw, this.lastCachedPss * 1024);
        pw.print(" lastCachedSwapPss=");
        DebugUtils.printSizeValue(pw, this.lastCachedSwapPss * 1024);
        pw.print(" lastRss=");
        DebugUtils.printSizeValue(pw, this.mLastRss * 1024);
        pw.println();
        pw.print(prefix);
        pw.print("procStateMemTracker: ");
        this.procStateMemTracker.dumpLine(pw);
        pw.print(prefix);
        pw.print("adjSeq=");
        pw.print(this.adjSeq);
        pw.print(" lruSeq=");
        pw.println(this.lruSeq);
        pw.print(prefix);
        pw.print("oom adj: max=");
        pw.print(this.maxAdj);
        pw.print(" curRaw=");
        pw.print(this.mCurRawAdj);
        pw.print(" setRaw=");
        pw.print(this.setRawAdj);
        pw.print(" cur=");
        pw.print(this.curAdj);
        pw.print(" set=");
        pw.println(this.setAdj);
        synchronized (this.mService.mOomAdjuster.mCachedAppOptimizer) {
            pw.print(prefix);
            pw.print("lastCompactTime=");
            pw.print(this.lastCompactTime);
            pw.print(" lastCompactAction=");
            pw.println(this.lastCompactAction);
        }
        pw.print(prefix);
        pw.print("mCurSchedGroup=");
        pw.print(this.mCurSchedGroup);
        pw.print(" setSchedGroup=");
        pw.print(this.setSchedGroup);
        pw.print(" systemNoUi=");
        pw.print(this.systemNoUi);
        pw.print(" trimMemoryLevel=");
        pw.println(this.trimMemoryLevel);
        pw.print(prefix);
        pw.print("curProcState=");
        pw.print(getCurProcState());
        pw.print(" mRepProcState=");
        pw.print(this.mRepProcState);
        pw.print(" pssProcState=");
        pw.print(this.pssProcState);
        pw.print(" setProcState=");
        pw.print(this.setProcState);
        pw.print(" lastStateTime=");
        TimeUtils.formatDuration(this.lastStateTime, nowUptime, pw);
        pw.println();
        pw.print(prefix);
        pw.print("curCapability=");
        ActivityManager.printCapabilitiesFull(pw, this.curCapability);
        pw.print(" setCapability=");
        ActivityManager.printCapabilitiesFull(pw, this.setCapability);
        pw.println();
        if (this.hasShownUi || this.mPendingUiClean || this.hasAboveClient || this.treatLikeActivity) {
            pw.print(prefix);
            pw.print("hasShownUi=");
            pw.print(this.hasShownUi);
            pw.print(" pendingUiClean=");
            pw.print(this.mPendingUiClean);
            pw.print(" hasAboveClient=");
            pw.print(this.hasAboveClient);
            pw.print(" treatLikeActivity=");
            pw.println(this.treatLikeActivity);
        }
        pw.print(prefix);
        pw.print("cached=");
        pw.print(this.mCached);
        pw.print(" empty=");
        pw.println(this.empty);
        if (this.serviceb) {
            pw.print(prefix);
            pw.print("serviceb=");
            pw.print(this.serviceb);
            pw.print(" serviceHighRam=");
            pw.println(this.serviceHighRam);
        }
        if (this.notCachedSinceIdle) {
            pw.print(prefix);
            pw.print("notCachedSinceIdle=");
            pw.print(this.notCachedSinceIdle);
            pw.print(" initialIdlePss=");
            pw.println(this.initialIdlePss);
        }
        if (this.connectionService != null || this.connectionGroup != 0) {
            pw.print(prefix);
            pw.print("connectionGroup=");
            pw.print(this.connectionGroup);
            pw.print(" Importance=");
            pw.print(this.connectionImportance);
            pw.print(" Service=");
            pw.println(this.connectionService);
        }
        if (hasTopUi() || hasOverlayUi() || this.runningRemoteAnimation) {
            pw.print(prefix);
            pw.print("hasTopUi=");
            pw.print(hasTopUi());
            pw.print(" hasOverlayUi=");
            pw.print(hasOverlayUi());
            pw.print(" runningRemoteAnimation=");
            pw.println(this.runningRemoteAnimation);
        }
        if (this.mHasForegroundServices || this.forcingToImportant != null) {
            pw.print(prefix);
            pw.print("mHasForegroundServices=");
            pw.print(this.mHasForegroundServices);
            pw.print(" forcingToImportant=");
            pw.println(this.forcingToImportant);
        }
        if (this.reportedInteraction || this.mFgInteractionTime != 0) {
            pw.print(prefix);
            pw.print("reportedInteraction=");
            pw.print(this.reportedInteraction);
            if (this.mInteractionEventTime != 0) {
                pw.print(" time=");
                TimeUtils.formatDuration(this.mInteractionEventTime, SystemClock.elapsedRealtime(), pw);
            }
            if (this.mFgInteractionTime != 0) {
                pw.print(" fgInteractionTime=");
                TimeUtils.formatDuration(this.mFgInteractionTime, SystemClock.elapsedRealtime(), pw);
            }
            pw.println();
        }
        if (this.mPersistent || this.removed) {
            pw.print(prefix);
            pw.print("persistent=");
            pw.print(this.mPersistent);
            pw.print(" removed=");
            pw.println(this.removed);
        }
        if (this.mHasClientActivities || this.mHasForegroundActivities || this.repForegroundActivities) {
            pw.print(prefix);
            pw.print("hasClientActivities=");
            pw.print(this.mHasClientActivities);
            pw.print(" foregroundActivities=");
            pw.print(this.mHasForegroundActivities);
            pw.print(" (rep=");
            pw.print(this.repForegroundActivities);
            pw.println(")");
        }
        if (this.lastProviderTime > 0) {
            pw.print(prefix);
            pw.print("lastProviderTime=");
            TimeUtils.formatDuration(this.lastProviderTime, nowUptime, pw);
            pw.println();
        }
        if (this.lastTopTime > 0) {
            pw.print(prefix);
            pw.print("lastTopTime=");
            TimeUtils.formatDuration(this.lastTopTime, nowUptime, pw);
            pw.println();
        }
        if (this.hasStartedServices) {
            pw.print(prefix);
            pw.print("hasStartedServices=");
            pw.println(this.hasStartedServices);
        }
        if (this.pendingStart) {
            pw.print(prefix);
            pw.print("pendingStart=");
            pw.println(this.pendingStart);
        }
        pw.print(prefix);
        pw.print("startSeq=");
        pw.println(this.startSeq);
        pw.print(prefix);
        pw.print("mountMode=");
        pw.println(DebugUtils.valueToString(Zygote.class, "MOUNT_EXTERNAL_", this.mountMode));
        if (this.setProcState > 10) {
            pw.print(prefix);
            pw.print("lastCpuTime=");
            pw.print(this.lastCpuTime);
            if (this.lastCpuTime > 0) {
                pw.print(" timeUsed=");
                TimeUtils.formatDuration(this.curCpuTime - this.lastCpuTime, pw);
            }
            pw.print(" whenUnimportant=");
            TimeUtils.formatDuration(this.mWhenUnimportant - nowUptime, pw);
            pw.println();
        }
        pw.print(prefix);
        pw.print("lastRequestedGc=");
        TimeUtils.formatDuration(this.lastRequestedGc, nowUptime, pw);
        pw.print(" lastLowMemory=");
        TimeUtils.formatDuration(this.lastLowMemory, nowUptime, pw);
        pw.print(" reportLowMemory=");
        pw.println(this.reportLowMemory);
        if (this.killed || this.killedByAm || this.waitingToKill != null) {
            pw.print(prefix);
            pw.print("killed=");
            pw.print(this.killed);
            pw.print(" killedByAm=");
            pw.print(this.killedByAm);
            pw.print(" waitingToKill=");
            pw.println(this.waitingToKill);
        }
        if (this.mDebugging || this.mCrashing || this.mDialogController.hasCrashDialogs() || this.mNotResponding || this.mDialogController.hasAnrDialogs() || this.bad) {
            pw.print(prefix);
            pw.print("mDebugging=");
            pw.print(this.mDebugging);
            pw.print(" mCrashing=" + this.mCrashing);
            pw.print(" " + this.mDialogController.mCrashDialogs);
            pw.print(" mNotResponding=" + this.mNotResponding);
            pw.print(" " + this.mDialogController.mAnrDialogs);
            pw.print(" bad=" + this.bad);
            if (this.errorReportReceiver != null) {
                pw.print(" errorReportReceiver=");
                pw.print(this.errorReportReceiver.flattenToShortString());
            }
            pw.println();
        }
        if (this.whitelistManager) {
            pw.print(prefix);
            pw.print("whitelistManager=");
            pw.println(this.whitelistManager);
        }
        if (this.isolatedEntryPoint != null || this.isolatedEntryPointArgs != null) {
            pw.print(prefix);
            pw.print("isolatedEntryPoint=");
            pw.println(this.isolatedEntryPoint);
            pw.print(prefix);
            pw.print("isolatedEntryPointArgs=");
            pw.println(Arrays.toString(this.isolatedEntryPointArgs));
        }
        this.mWindowProcessController.dump(pw, prefix);
        if (this.mServices.size() > 0) {
            pw.print(prefix);
            pw.println("Services:");
            for (int i4 = 0; i4 < this.mServices.size(); i4++) {
                pw.print(prefix);
                pw.print("  - ");
                pw.println(this.mServices.valueAt(i4));
            }
        }
        if (this.executingServices.size() > 0) {
            pw.print(prefix);
            pw.print("Executing Services (fg=");
            pw.print(this.execServicesFg);
            pw.println(")");
            for (int i5 = 0; i5 < this.executingServices.size(); i5++) {
                pw.print(prefix);
                pw.print("  - ");
                pw.println(this.executingServices.valueAt(i5));
            }
        }
        if (this.connections.size() > 0) {
            pw.print(prefix);
            pw.println("Connections:");
            for (int i6 = 0; i6 < this.connections.size(); i6++) {
                pw.print(prefix);
                pw.print("  - ");
                pw.println(this.connections.valueAt(i6));
            }
        }
        if (this.pubProviders.size() > 0) {
            pw.print(prefix);
            pw.println("Published Providers:");
            for (int i7 = 0; i7 < this.pubProviders.size(); i7++) {
                pw.print(prefix);
                pw.print("  - ");
                pw.println(this.pubProviders.keyAt(i7));
                pw.print(prefix);
                pw.print("    -> ");
                pw.println(this.pubProviders.valueAt(i7));
            }
        }
        if (this.conProviders.size() > 0) {
            pw.print(prefix);
            pw.println("Connected Providers:");
            for (int i8 = 0; i8 < this.conProviders.size(); i8++) {
                pw.print(prefix);
                pw.print("  - ");
                pw.println(this.conProviders.get(i8).toShortString());
            }
        }
        if (!this.curReceivers.isEmpty()) {
            pw.print(prefix);
            pw.println("Current Receivers:");
            for (int i9 = 0; i9 < this.curReceivers.size(); i9++) {
                pw.print(prefix);
                pw.print("  - ");
                pw.println(this.curReceivers.valueAt(i9));
            }
        }
        if (this.receivers.size() > 0) {
            pw.print(prefix);
            pw.println("Receivers:");
            for (int i10 = 0; i10 < this.receivers.size(); i10++) {
                pw.print(prefix);
                pw.print("  - ");
                pw.println(this.receivers.valueAt(i10));
            }
        }
        if (this.mAllowBackgroundActivityStartsTokens.size() > 0) {
            pw.print(prefix);
            pw.println("Background activity start whitelist tokens:");
            for (int i11 = 0; i11 < this.mAllowBackgroundActivityStartsTokens.size(); i11++) {
                pw.print(prefix);
                pw.print("  - ");
                pw.println(this.mAllowBackgroundActivityStartsTokens.valueAt(i11));
            }
        }
    }

    ProcessRecord(ActivityManagerService _service, ApplicationInfo _info, String _processName, int _uid) {
        ProcessInfo procInfo;
        ArrayMap<String, ProcessInfo> processes;
        this.mService = _service;
        this.info = _info;
        ProcessInfo procInfo2 = null;
        if (_service.mPackageManagerInt != null && (processes = _service.mPackageManagerInt.getProcessesForUid(_uid)) != null && (procInfo2 = processes.get(_processName)) != null && procInfo2.deniedPermissions == null && procInfo2.gwpAsanMode == -1) {
            procInfo = null;
        } else {
            procInfo = procInfo2;
        }
        this.processInfo = procInfo;
        this.isolated = _info.uid != _uid;
        this.appZygote = UserHandle.getAppId(_uid) >= 90000 && UserHandle.getAppId(_uid) <= 98999;
        this.uid = _uid;
        this.userId = UserHandle.getUserId(_uid);
        this.processName = _processName;
        this.maxAdj = NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE;
        this.setRawAdj = -10000;
        this.mCurRawAdj = -10000;
        this.verifiedAdj = -10000;
        this.setAdj = -10000;
        this.curAdj = -10000;
        this.mPersistent = false;
        this.removed = false;
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.nextPssTime = jUptimeMillis;
        this.lastPssTime = jUptimeMillis;
        this.lastStateTime = jUptimeMillis;
        this.freezeUnfreezeTime = jUptimeMillis;
        this.mWindowProcessController = new WindowProcessController(this.mService.mActivityTaskManager, this.info, this.processName, this.uid, this.userId, this, this);
        this.pkgList.put(_info.packageName, new ProcessStats.ProcessStateHolder(_info.longVersionCode));
    }

    public void setPid(int _pid) {
        this.pid = _pid;
        synchronized (this.mService.mOomAdjuster.mCachedAppOptimizer) {
            this.mPidForCompact = _pid;
        }
        this.mWindowProcessController.setPid(this.pid);
        this.procStatFile = null;
        this.shortStringName = null;
        this.stringName = null;
    }

    public void makeActive(IApplicationThread _thread, ProcessStatsService tracker) {
        if (this.thread == null) {
            ProcessState origBase = this.baseProcessTracker;
            if (origBase != null) {
                origBase.setState(-1, tracker.getMemFactorLocked(), SystemClock.uptimeMillis(), this.pkgList.mPkgList);
                for (int ipkg = this.pkgList.size() - 1; ipkg >= 0; ipkg--) {
                    FrameworkStatsLog.write(3, this.uid, this.processName, this.pkgList.keyAt(ipkg), ActivityManager.processStateAmToProto(-1), this.pkgList.valueAt(ipkg).appVersion);
                }
                origBase.makeInactive();
            }
            ProcessState processStateLocked = tracker.getProcessStateLocked(this.info.packageName, this.info.uid, this.info.longVersionCode, this.processName);
            this.baseProcessTracker = processStateLocked;
            processStateLocked.makeActive();
            for (int i = 0; i < this.pkgList.size(); i++) {
                ProcessStats.ProcessStateHolder holder = this.pkgList.valueAt(i);
                if (holder.state != null && holder.state != origBase) {
                    holder.state.makeInactive();
                }
                tracker.updateProcessStateHolderLocked(holder, this.pkgList.keyAt(i), this.info.uid, this.info.longVersionCode, this.processName);
                if (holder.state != this.baseProcessTracker) {
                    holder.state.makeActive();
                }
            }
        }
        this.thread = _thread;
        this.mWindowProcessController.setThread(_thread);
    }

    public void makeInactive(ProcessStatsService tracker) {
        this.thread = null;
        this.mWindowProcessController.setThread(null);
        ProcessState origBase = this.baseProcessTracker;
        if (origBase != null) {
            if (origBase != null) {
                origBase.setState(-1, tracker.getMemFactorLocked(), SystemClock.uptimeMillis(), this.pkgList.mPkgList);
                for (int ipkg = this.pkgList.size() - 1; ipkg >= 0; ipkg--) {
                    FrameworkStatsLog.write(3, this.uid, this.processName, this.pkgList.keyAt(ipkg), ActivityManager.processStateAmToProto(-1), this.pkgList.valueAt(ipkg).appVersion);
                }
                origBase.makeInactive();
            }
            this.baseProcessTracker = null;
            for (int i = 0; i < this.pkgList.size(); i++) {
                ProcessStats.ProcessStateHolder holder = this.pkgList.valueAt(i);
                if (holder.state != null && holder.state != origBase) {
                    holder.state.makeInactive();
                }
                holder.pkg = null;
                holder.state = null;
            }
        }
    }

    boolean startService(ServiceRecord record) {
        if (record == null) {
            return false;
        }
        boolean added = this.mServices.add(record);
        if (added && record.serviceInfo != null) {
            this.mWindowProcessController.onServiceStarted(record.serviceInfo);
        }
        return added;
    }

    boolean stopService(ServiceRecord record) {
        return this.mServices.remove(record);
    }

    void stopAllServices() {
        this.mServices.clear();
    }

    int numberOfRunningServices() {
        return this.mServices.size();
    }

    ServiceRecord getRunningServiceAt(int index) {
        return this.mServices.valueAt(index);
    }

    void setCached(boolean cached) {
        if (this.mCached != cached) {
            this.mCached = cached;
            this.mWindowProcessController.onProcCachedStateChanged(cached);
        }
    }

    @Override // com.android.server.wm.WindowProcessListener
    public boolean isCached() {
        return this.mCached;
    }

    boolean hasActivities() {
        return this.mWindowProcessController.hasActivities();
    }

    boolean hasActivitiesOrRecentTasks() {
        return this.mWindowProcessController.hasActivitiesOrRecentTasks();
    }

    boolean hasRecentTasks() {
        return this.mWindowProcessController.hasRecentTasks();
    }

    public boolean isInterestingToUserLocked() {
        if (this.mWindowProcessController.isInterestingToUser()) {
            return true;
        }
        int servicesSize = this.mServices.size();
        for (int i = 0; i < servicesSize; i++) {
            ServiceRecord r = this.mServices.valueAt(i);
            if (r.isForeground) {
                return true;
            }
        }
        return false;
    }

    public void unlinkDeathRecipient() {
        IApplicationThread iApplicationThread;
        if (this.deathRecipient != null && (iApplicationThread = this.thread) != null) {
            iApplicationThread.asBinder().unlinkToDeath(this.deathRecipient, 0);
        }
        this.deathRecipient = null;
    }

    void updateHasAboveClientLocked() {
        this.hasAboveClient = false;
        for (int i = this.connections.size() - 1; i >= 0; i--) {
            ConnectionRecord cr = this.connections.valueAt(i);
            if ((cr.flags & 8) != 0) {
                this.hasAboveClient = true;
                return;
            }
        }
    }

    int modifyRawOomAdj(int adj) {
        if (this.hasAboveClient && adj >= 0) {
            if (adj < 100) {
                return 100;
            }
            if (adj < 200) {
                return DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
            }
            if (adj < 250) {
                return 250;
            }
            if (adj < 900) {
                return 900;
            }
            if (adj < 999) {
                return adj + 1;
            }
            return adj;
        }
        return adj;
    }

    void scheduleCrash(String message) {
        if (!this.killedByAm && this.thread != null) {
            if (this.pid == Process.myPid()) {
                Slog.w(TAG, "scheduleCrash: trying to crash system process!");
                return;
            }
            long ident = Binder.clearCallingIdentity();
            try {
                try {
                    this.thread.scheduleCrash(message);
                } catch (RemoteException e) {
                    kill("scheduleCrash for '" + message + "' failed", 4, true);
                }
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
    }

    void kill(String reason, int reasonCode, boolean noisy) {
        kill(reason, reasonCode, 0, noisy);
    }

    void kill(String reason, int reasonCode, int subReason, boolean noisy) {
        if (!this.killedByAm) {
            Trace.traceBegin(64L, "kill");
            if (this.mService != null && (noisy || this.info.uid == this.mService.mCurOomAdjUid)) {
                this.mService.reportUidInfoMessageLocked(TAG, "Killing " + toShortString() + " (adj " + this.setAdj + "): " + reason, this.info.uid);
            }
            if (this.pid > 0) {
                this.mService.mProcessList.noteAppKill(this, reasonCode, subReason, reason);
                EventLog.writeEvent(EventLogTags.AM_KILL, Integer.valueOf(this.userId), Integer.valueOf(this.pid), this.processName, Integer.valueOf(this.setAdj), reason);
                Process.killProcessQuiet(this.pid);
                ProcessList.killProcessGroup(this.uid, this.pid);
            } else {
                this.pendingStart = false;
            }
            if (!this.mPersistent) {
                this.killed = true;
                this.killedByAm = true;
            }
            Trace.traceEnd(64L);
        }
    }

    @Override // com.android.server.wm.WindowProcessListener
    public void dumpDebug(ProtoOutputStream proto, long fieldId) {
        dumpDebug(proto, fieldId, -1);
    }

    public void dumpDebug(ProtoOutputStream proto, long fieldId, int lruIndex) {
        long token = proto.start(fieldId);
        proto.write(1120986464257L, this.pid);
        proto.write(1138166333442L, this.processName);
        proto.write(1120986464259L, this.info.uid);
        if (UserHandle.getAppId(this.info.uid) >= 10000) {
            proto.write(1120986464260L, this.userId);
            proto.write(1120986464261L, UserHandle.getAppId(this.info.uid));
        }
        if (this.uid != this.info.uid) {
            proto.write(1120986464262L, UserHandle.getAppId(this.uid));
        }
        proto.write(1133871366151L, this.mPersistent);
        if (lruIndex >= 0) {
            proto.write(1120986464264L, lruIndex);
        }
        proto.end(token);
    }

    public String toShortString() {
        String str = this.shortStringName;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(128);
        toShortString(sb);
        String string = sb.toString();
        this.shortStringName = string;
        return string;
    }

    void toShortString(StringBuilder sb) {
        sb.append(this.pid);
        sb.append(':');
        sb.append(this.processName);
        sb.append('/');
        if (this.info.uid < 10000) {
            sb.append(this.uid);
            return;
        }
        sb.append('u');
        sb.append(this.userId);
        int appId = UserHandle.getAppId(this.info.uid);
        if (appId >= 10000) {
            sb.append('a');
            sb.append(appId - 10000);
        } else {
            sb.append('s');
            sb.append(appId);
        }
        if (this.uid != this.info.uid) {
            sb.append('i');
            sb.append(UserHandle.getAppId(this.uid) - 99000);
        }
    }

    public String toString() {
        String str = this.stringName;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("ProcessRecord{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(' ');
        toShortString(sb);
        sb.append('}');
        String string = sb.toString();
        this.stringName = string;
        return string;
    }

    public String makeAdjReason() {
        if (this.adjSource != null || this.adjTarget != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append(' ');
            Object obj = this.adjTarget;
            if (obj instanceof ComponentName) {
                sb.append(((ComponentName) obj).flattenToShortString());
            } else if (obj != null) {
                sb.append(obj.toString());
            } else {
                sb.append("{null}");
            }
            sb.append("<=");
            Object obj2 = this.adjSource;
            if (obj2 instanceof ProcessRecord) {
                sb.append("Proc{");
                sb.append(((ProcessRecord) this.adjSource).toShortString());
                sb.append("}");
            } else if (obj2 != null) {
                sb.append(obj2.toString());
            } else {
                sb.append("{null}");
            }
            return sb.toString();
        }
        return null;
    }

    public boolean addPackage(String pkg, long versionCode, ProcessStatsService tracker) {
        if (!this.pkgList.containsKey(pkg)) {
            ProcessStats.ProcessStateHolder holder = new ProcessStats.ProcessStateHolder(versionCode);
            if (this.baseProcessTracker != null) {
                tracker.updateProcessStateHolderLocked(holder, pkg, this.info.uid, versionCode, this.processName);
                this.pkgList.put(pkg, holder);
                if (holder.state != this.baseProcessTracker) {
                    holder.state.makeActive();
                    return true;
                }
                return true;
            }
            this.pkgList.put(pkg, holder);
            return true;
        }
        return false;
    }

    public int getSetAdjWithServices() {
        if (this.setAdj >= 900 && this.hasStartedServices) {
            return 800;
        }
        return this.setAdj;
    }

    public void forceProcessStateUpTo(int newState) {
        if (this.mRepProcState > newState) {
            this.mRepProcState = newState;
            setCurProcState(newState);
            setCurRawProcState(newState);
            for (int ipkg = this.pkgList.size() - 1; ipkg >= 0; ipkg--) {
                FrameworkStatsLog.write(3, this.uid, this.processName, this.pkgList.keyAt(ipkg), ActivityManager.processStateAmToProto(this.mRepProcState), this.pkgList.valueAt(ipkg).appVersion);
            }
        }
    }

    public void resetPackageList(ProcessStatsService tracker) {
        int N = this.pkgList.size();
        if (this.baseProcessTracker != null) {
            long now = SystemClock.uptimeMillis();
            this.baseProcessTracker.setState(-1, tracker.getMemFactorLocked(), now, this.pkgList.mPkgList);
            for (int ipkg = this.pkgList.size() - 1; ipkg >= 0; ipkg--) {
                FrameworkStatsLog.write(3, this.uid, this.processName, this.pkgList.keyAt(ipkg), ActivityManager.processStateAmToProto(-1), this.pkgList.valueAt(ipkg).appVersion);
            }
            if (N != 1) {
                for (int i = 0; i < N; i++) {
                    ProcessStats.ProcessStateHolder holder = this.pkgList.valueAt(i);
                    if (holder.state != null && holder.state != this.baseProcessTracker) {
                        holder.state.makeInactive();
                    }
                }
                this.pkgList.clear();
                ProcessStats.ProcessStateHolder holder2 = new ProcessStats.ProcessStateHolder(this.info.longVersionCode);
                tracker.updateProcessStateHolderLocked(holder2, this.info.packageName, this.info.uid, this.info.longVersionCode, this.processName);
                this.pkgList.put(this.info.packageName, holder2);
                if (holder2.state != this.baseProcessTracker) {
                    holder2.state.makeActive();
                    return;
                }
                return;
            }
            return;
        }
        if (N != 1) {
            this.pkgList.clear();
            this.pkgList.put(this.info.packageName, new ProcessStats.ProcessStateHolder(this.info.longVersionCode));
        }
    }

    public String[] getPackageList() {
        int size = this.pkgList.size();
        if (size == 0) {
            return null;
        }
        String[] list = new String[size];
        for (int i = 0; i < this.pkgList.size(); i++) {
            list[i] = this.pkgList.keyAt(i);
        }
        return list;
    }

    public List<VersionedPackage> getPackageListWithVersionCode() {
        int size = this.pkgList.size();
        if (size == 0) {
            return null;
        }
        List<VersionedPackage> list = new ArrayList<>();
        for (int i = 0; i < this.pkgList.size(); i++) {
            list.add(new VersionedPackage(this.pkgList.keyAt(i), this.pkgList.valueAt(i).appVersion));
        }
        return list;
    }

    WindowProcessController getWindowProcessController() {
        return this.mWindowProcessController;
    }

    void setCurrentSchedulingGroup(int curSchedGroup) {
        this.mCurSchedGroup = curSchedGroup;
        this.mWindowProcessController.setCurrentSchedulingGroup(curSchedGroup);
    }

    int getCurrentSchedulingGroup() {
        return this.mCurSchedGroup;
    }

    void setCurProcState(int curProcState) {
        this.mCurProcState = curProcState;
        this.mWindowProcessController.setCurrentProcState(curProcState);
    }

    int getCurProcState() {
        return this.mCurProcState;
    }

    void setCurRawProcState(int curRawProcState) {
        this.mCurRawProcState = curRawProcState;
    }

    int getCurRawProcState() {
        return this.mCurRawProcState;
    }

    void setReportedProcState(int repProcState) {
        this.mRepProcState = repProcState;
        for (int ipkg = this.pkgList.size() - 1; ipkg >= 0; ipkg--) {
            FrameworkStatsLog.write(3, this.uid, this.processName, this.pkgList.keyAt(ipkg), ActivityManager.processStateAmToProto(this.mRepProcState), this.pkgList.valueAt(ipkg).appVersion);
        }
        this.mWindowProcessController.setReportedProcState(repProcState);
    }

    int getReportedProcState() {
        return this.mRepProcState;
    }

    void setCrashing(boolean crashing) {
        this.mCrashing = crashing;
        this.mWindowProcessController.setCrashing(crashing);
    }

    boolean isCrashing() {
        return this.mCrashing;
    }

    void setNotResponding(boolean notResponding) {
        this.mNotResponding = notResponding;
        this.mWindowProcessController.setNotResponding(notResponding);
    }

    boolean isNotResponding() {
        return this.mNotResponding;
    }

    void setPersistent(boolean persistent) {
        this.mPersistent = persistent;
        this.mWindowProcessController.setPersistent(persistent);
    }

    boolean isPersistent() {
        return this.mPersistent;
    }

    public void setRequiredAbi(String requiredAbi) {
        this.mRequiredAbi = requiredAbi;
        this.mWindowProcessController.setRequiredAbi(requiredAbi);
    }

    String getRequiredAbi() {
        return this.mRequiredAbi;
    }

    void setHasForegroundServices(boolean hasForegroundServices, int fgServiceTypes) {
        this.mHasForegroundServices = hasForegroundServices;
        this.mFgServiceTypes = fgServiceTypes;
        this.mWindowProcessController.setHasForegroundServices(hasForegroundServices);
    }

    boolean hasForegroundServices() {
        return this.mHasForegroundServices;
    }

    boolean hasLocationForegroundServices() {
        return this.mHasForegroundServices && (this.mFgServiceTypes & 8) != 0;
    }

    boolean hasLocationCapability() {
        return (this.setCapability & 1) != 0;
    }

    int getForegroundServiceTypes() {
        if (this.mHasForegroundServices) {
            return this.mFgServiceTypes;
        }
        return 0;
    }

    int getReportedForegroundServiceTypes() {
        return this.mRepFgServiceTypes;
    }

    void setReportedForegroundServiceTypes(int foregroundServiceTypes) {
        this.mRepFgServiceTypes = foregroundServiceTypes;
    }

    void setHasForegroundActivities(boolean hasForegroundActivities) {
        this.mHasForegroundActivities = hasForegroundActivities;
        this.mWindowProcessController.setHasForegroundActivities(hasForegroundActivities);
    }

    boolean hasForegroundActivities() {
        return this.mHasForegroundActivities;
    }

    void setHasClientActivities(boolean hasClientActivities) {
        this.mHasClientActivities = hasClientActivities;
        this.mWindowProcessController.setHasClientActivities(hasClientActivities);
    }

    boolean hasClientActivities() {
        return this.mHasClientActivities;
    }

    void setHasTopUi(boolean hasTopUi) {
        this.mHasTopUi = hasTopUi;
        this.mWindowProcessController.setHasTopUi(hasTopUi);
    }

    boolean hasTopUi() {
        return this.mHasTopUi;
    }

    void setHasOverlayUi(boolean hasOverlayUi) {
        this.mHasOverlayUi = hasOverlayUi;
        this.mWindowProcessController.setHasOverlayUi(hasOverlayUi);
    }

    boolean hasOverlayUi() {
        return this.mHasOverlayUi;
    }

    void setInteractionEventTime(long interactionEventTime) {
        this.mInteractionEventTime = interactionEventTime;
        this.mWindowProcessController.setInteractionEventTime(interactionEventTime);
    }

    long getInteractionEventTime() {
        return this.mInteractionEventTime;
    }

    void setFgInteractionTime(long fgInteractionTime) {
        this.mFgInteractionTime = fgInteractionTime;
        this.mWindowProcessController.setFgInteractionTime(fgInteractionTime);
    }

    long getFgInteractionTime() {
        return this.mFgInteractionTime;
    }

    void setWhenUnimportant(long whenUnimportant) {
        this.mWhenUnimportant = whenUnimportant;
        this.mWindowProcessController.setWhenUnimportant(whenUnimportant);
    }

    long getWhenUnimportant() {
        return this.mWhenUnimportant;
    }

    void setDebugging(boolean debugging) {
        this.mDebugging = debugging;
        this.mWindowProcessController.setDebugging(debugging);
    }

    boolean isDebugging() {
        return this.mDebugging;
    }

    void setUsingWrapper(boolean usingWrapper) {
        this.mUsingWrapper = usingWrapper;
        this.mWindowProcessController.setUsingWrapper(usingWrapper);
    }

    boolean isUsingWrapper() {
        return this.mUsingWrapper;
    }

    void addAllowBackgroundActivityStartsToken(Binder entity) {
        if (entity == null) {
            return;
        }
        this.mAllowBackgroundActivityStartsTokens.add(entity);
        this.mWindowProcessController.setAllowBackgroundActivityStarts(true);
    }

    void removeAllowBackgroundActivityStartsToken(Binder entity) {
        if (entity == null) {
            return;
        }
        this.mAllowBackgroundActivityStartsTokens.remove(entity);
        this.mWindowProcessController.setAllowBackgroundActivityStarts(!this.mAllowBackgroundActivityStartsTokens.isEmpty());
    }

    void addBoundClientUid(int clientUid, String clientPackageName, int bindFlags) {
        this.mBoundClientUids.add(Integer.valueOf(clientUid));
        this.mWindowProcessController.addBoundClientUid(clientUid, clientPackageName, bindFlags);
    }

    void updateBoundClientUids() {
        clearBoundClientUids();
        if (this.mServices.isEmpty()) {
            return;
        }
        ArraySet<Integer> boundClientUids = new ArraySet<>();
        int serviceCount = this.mServices.size();
        for (int j = 0; j < serviceCount; j++) {
            ArrayMap<IBinder, ArrayList<ConnectionRecord>> conns = this.mServices.valueAt(j).getConnections();
            int N = conns.size();
            for (int conni = 0; conni < N; conni++) {
                ArrayList<ConnectionRecord> c = conns.valueAt(conni);
                for (int i = 0; i < c.size(); i++) {
                    ConnectionRecord cr = c.get(i);
                    boundClientUids.add(Integer.valueOf(cr.clientUid));
                    this.mWindowProcessController.addBoundClientUid(cr.clientUid, cr.clientPackageName, cr.flags);
                }
            }
        }
        this.mBoundClientUids = boundClientUids;
    }

    void addBoundClientUidsOfNewService(ServiceRecord sr) {
        if (sr == null) {
            return;
        }
        ArrayMap<IBinder, ArrayList<ConnectionRecord>> conns = sr.getConnections();
        for (int conni = conns.size() - 1; conni >= 0; conni--) {
            ArrayList<ConnectionRecord> c = conns.valueAt(conni);
            for (int i = 0; i < c.size(); i++) {
                ConnectionRecord cr = c.get(i);
                this.mBoundClientUids.add(Integer.valueOf(cr.clientUid));
                this.mWindowProcessController.addBoundClientUid(cr.clientUid, cr.clientPackageName, cr.flags);
            }
        }
    }

    void clearBoundClientUids() {
        this.mBoundClientUids.clear();
        this.mWindowProcessController.clearBoundClientUids();
    }

    void setActiveInstrumentation(ActiveInstrumentation instr) {
        this.mInstr = instr;
        boolean isInstrumenting = instr != null;
        this.mWindowProcessController.setInstrumenting(isInstrumenting, isInstrumenting && instr.mHasBackgroundActivityStartsPermission);
    }

    ActiveInstrumentation getActiveInstrumentation() {
        return this.mInstr;
    }

    void setCurRawAdj(int curRawAdj) {
        this.mCurRawAdj = curRawAdj;
        this.mWindowProcessController.setPerceptible(curRawAdj <= 200);
    }

    int getCurRawAdj() {
        return this.mCurRawAdj;
    }

    @Override // com.android.server.wm.WindowProcessListener
    public void clearProfilerIfNeeded() {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                if (this.mService.mProfileData.getProfileProc() != null && this.mService.mProfileData.getProfilerInfo() != null && this.mService.mProfileData.getProfileProc() == this) {
                    this.mService.clearProfilerLocked();
                }
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // com.android.server.wm.WindowProcessListener
    public void updateServiceConnectionActivities() {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                this.mService.mServices.updateServiceConnectionActivitiesLocked(this);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // com.android.server.wm.WindowProcessListener
    public void setPendingUiClean(boolean pendingUiClean) {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                this.mPendingUiClean = pendingUiClean;
                this.mWindowProcessController.setPendingUiClean(pendingUiClean);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    boolean hasPendingUiClean() {
        return this.mPendingUiClean;
    }

    @Override // com.android.server.wm.WindowProcessListener
    public void setPendingUiCleanAndForceProcessStateUpTo(int newState) {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                setPendingUiClean(true);
                forceProcessStateUpTo(newState);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // com.android.server.wm.WindowProcessListener
    public void updateProcessInfo(boolean updateServiceConnectionActivities, boolean activityChange, boolean updateOomAdj) {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                if (updateServiceConnectionActivities) {
                    this.mService.mServices.updateServiceConnectionActivitiesLocked(this);
                }
                this.mService.mProcessList.updateLruProcessLocked(this, activityChange, null);
                if (updateOomAdj) {
                    this.mService.updateOomAdjLocked(this, "updateOomAdj_activityChange");
                }
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // com.android.server.wm.WindowProcessListener
    public boolean isRemoved() {
        return this.removed;
    }

    @Override // com.android.server.wm.WindowProcessListener
    public long getCpuTime() {
        return this.mService.mProcessCpuTracker.getCpuTimeForPid(this.pid);
    }

    @Override // com.android.server.wm.WindowProcessListener
    public void onStartActivity(int topProcessState, boolean setProfileProc, String packageName, long versionCode) {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                this.waitingToKill = null;
                if (setProfileProc) {
                    this.mService.mProfileData.setProfileProc(this);
                }
                if (packageName != null) {
                    addPackage(packageName, versionCode, this.mService.mProcessStats);
                }
                updateProcessInfo(false, true, true);
                this.hasShownUi = true;
                setPendingUiClean(true);
                forceProcessStateUpTo(topProcessState);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // com.android.server.wm.WindowProcessListener
    public void appDied(String reason) {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                this.mService.appDiedLocked(this, reason);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // com.android.server.wm.WindowProcessListener
    public void setRunningRemoteAnimation(boolean runningRemoteAnimation) {
        if (this.pid == Process.myPid()) {
            Slog.wtf(TAG, "system can't run remote animation");
            return;
        }
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                if (this.runningRemoteAnimation == runningRemoteAnimation) {
                    return;
                }
                this.runningRemoteAnimation = runningRemoteAnimation;
                this.mService.updateOomAdjLocked(this, true, "updateOomAdj_uiVisibility");
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public long getInputDispatchingTimeout() {
        return this.mWindowProcessController.getInputDispatchingTimeout();
    }

    public int getProcessClassEnum() {
        if (this.pid == ActivityManagerService.MY_PID) {
            return 3;
        }
        if (this.info == null) {
            return 0;
        }
        return (this.info.flags & 1) != 0 ? 2 : 1;
    }

    boolean isSilentAnr() {
        return (getShowBackground() || isInterestingForBackgroundTraces()) ? false : true;
    }

    List<ProcessRecord> getLruProcessList() {
        return this.mService.mProcessList.mLruProcesses;
    }

    boolean isMonitorCpuUsage() {
        return true;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0483 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void appNotResponding(java.lang.String r38, android.content.pm.ApplicationInfo r39, java.lang.String r40, com.android.server.wm.WindowProcessController r41, boolean r42, java.lang.String r43, boolean r44) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1157
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ProcessRecord.appNotResponding(java.lang.String, android.content.pm.ApplicationInfo, java.lang.String, com.android.server.wm.WindowProcessController, boolean, java.lang.String, boolean):void");
    }

    public /* synthetic */ void lambda$appNotResponding$0$ProcessRecord() {
        kill("anr", 6, true);
    }

    public /* synthetic */ void lambda$appNotResponding$1$ProcessRecord() {
        kill("anr", 6, true);
    }

    public /* synthetic */ void lambda$appNotResponding$2$ProcessRecord() {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                this.mService.mServices.scheduleServiceTimeoutLocked(this);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    private void makeAppNotRespondingLocked(String activity, String shortMsg, String longMsg) {
        setNotResponding(true);
        if (this.mService.mAppErrors != null) {
            this.notRespondingReport = this.mService.mAppErrors.generateProcessError(this, 2, activity, shortMsg, longMsg, null);
        }
        startAppProblemLocked();
        getWindowProcessController().stopFreezingActivities();
    }

    void startAppProblemLocked() {
        this.errorReportReceiver = null;
        for (int userId : this.mService.mUserController.getCurrentProfileIds()) {
            if (this.userId == userId) {
                this.errorReportReceiver = ApplicationErrorReport.getErrorReportReceiver(this.mService.mContext, this.info.packageName, this.info.flags);
            }
        }
        this.mService.skipCurrentReceiverLocked(this);
    }

    private boolean isInterestingForBackgroundTraces() {
        if (this.pid == ActivityManagerService.MY_PID || isInterestingToUserLocked()) {
            return true;
        }
        return (this.info != null && "com.android.systemui".equals(this.info.packageName)) || hasTopUi() || hasOverlayUi();
    }

    private boolean getShowBackground() {
        return Settings.Secure.getInt(this.mService.mContext.getContentResolver(), "anr_show_background", 0) != 0;
    }

    void resetCachedInfo() {
        this.mCachedHasActivities = -1;
        this.mCachedIsHeavyWeight = -1;
        this.mCachedHasVisibleActivities = -1;
        this.mCachedIsHomeProcess = -1;
        this.mCachedIsPreviousProcess = -1;
        this.mCachedHasRecentTasks = -1;
        this.mCachedIsReceivingBroadcast = -1;
        this.mCachedAdj = -10000;
        this.mCachedForegroundActivities = false;
        this.mCachedProcState = 19;
        this.mCachedSchedGroup = 0;
    }

    boolean getCachedHasActivities() {
        if (this.mCachedHasActivities == -1) {
            this.mCachedHasActivities = getWindowProcessController().hasActivities() ? 1 : 0;
        }
        return this.mCachedHasActivities == 1;
    }

    boolean getCachedIsHeavyWeight() {
        if (this.mCachedIsHeavyWeight == -1) {
            this.mCachedIsHeavyWeight = this.mService.mAtmInternal.isHeavyWeightProcess(getWindowProcessController()) ? 1 : 0;
        }
        return this.mCachedIsHeavyWeight == 1;
    }

    boolean getCachedHasVisibleActivities() {
        if (this.mCachedHasVisibleActivities == -1) {
            this.mCachedHasVisibleActivities = getWindowProcessController().hasVisibleActivities() ? 1 : 0;
        }
        return this.mCachedHasVisibleActivities == 1;
    }

    boolean getCachedIsHomeProcess() {
        if (this.mCachedIsHomeProcess == -1) {
            this.mCachedIsHomeProcess = getWindowProcessController().isHomeProcess() ? 1 : 0;
        }
        return this.mCachedIsHomeProcess == 1;
    }

    boolean getCachedIsPreviousProcess() {
        if (this.mCachedIsPreviousProcess == -1) {
            this.mCachedIsPreviousProcess = getWindowProcessController().isPreviousProcess() ? 1 : 0;
        }
        return this.mCachedIsPreviousProcess == 1;
    }

    boolean getCachedHasRecentTasks() {
        if (this.mCachedHasRecentTasks == -1) {
            this.mCachedHasRecentTasks = getWindowProcessController().hasRecentTasks() ? 1 : 0;
        }
        return this.mCachedHasRecentTasks == 1;
    }

    boolean getCachedIsReceivingBroadcast(ArraySet<BroadcastQueue> tmpQueue) {
        if (this.mCachedIsReceivingBroadcast == -1) {
            tmpQueue.clear();
            int i = this.mService.isReceivingBroadcastLocked(this, tmpQueue) ? 1 : 0;
            this.mCachedIsReceivingBroadcast = i;
            if (i == 1) {
                this.mCachedSchedGroup = tmpQueue.contains(this.mService.mFgBroadcastQueue) ? 2 : 0;
            }
        }
        return this.mCachedIsReceivingBroadcast == 1;
    }

    void computeOomAdjFromActivitiesIfNecessary(OomAdjuster.ComputeOomAdjWindowCallback callback, int adj, boolean foregroundActivities, int procState, int schedGroup, int appUid, int logUid, int processCurTop) {
        if (this.mCachedAdj != -10000) {
            return;
        }
        callback.initialize(this, adj, foregroundActivities, procState, schedGroup, appUid, logUid, processCurTop);
        int minLayer = getWindowProcessController().computeOomAdjFromActivities(99, callback);
        this.mCachedAdj = callback.adj;
        this.mCachedForegroundActivities = callback.foregroundActivities;
        this.mCachedProcState = callback.procState;
        this.mCachedSchedGroup = callback.schedGroup;
        int i = this.mCachedAdj;
        if (i == 100) {
            this.mCachedAdj = i + minLayer;
        }
    }

    ErrorDialogController getDialogController() {
        return this.mDialogController;
    }

    class ErrorDialogController {
        private List<AppNotRespondingDialog> mAnrDialogs;
        private List<AppErrorDialog> mCrashDialogs;
        private List<StrictModeViolationDialog> mViolationDialogs;
        private AppWaitingForDebuggerDialog mWaitDialog;

        ErrorDialogController() {
        }

        boolean hasCrashDialogs() {
            return this.mCrashDialogs != null;
        }

        boolean hasAnrDialogs() {
            return this.mAnrDialogs != null;
        }

        boolean hasViolationDialogs() {
            return this.mViolationDialogs != null;
        }

        boolean hasDebugWaitingDialog() {
            return this.mWaitDialog != null;
        }

        void clearAllErrorDialogs() {
            clearCrashDialogs();
            clearAnrDialogs();
            clearViolationDialogs();
            clearWaitingDialog();
        }

        void clearCrashDialogs() {
            clearCrashDialogs(true);
        }

        void clearCrashDialogs(boolean needDismiss) {
            List<AppErrorDialog> list = this.mCrashDialogs;
            if (list == null) {
                return;
            }
            if (needDismiss) {
                forAllDialogs(list, $$Lambda$wajKhQOjpilT0K4j1sLOJKYftw.INSTANCE);
            }
            this.mCrashDialogs = null;
        }

        void clearAnrDialogs() {
            List<AppNotRespondingDialog> list = this.mAnrDialogs;
            if (list == null) {
                return;
            }
            forAllDialogs(list, $$Lambda$wajKhQOjpilT0K4j1sLOJKYftw.INSTANCE);
            this.mAnrDialogs = null;
        }

        void clearViolationDialogs() {
            List<StrictModeViolationDialog> list = this.mViolationDialogs;
            if (list == null) {
                return;
            }
            forAllDialogs(list, $$Lambda$wajKhQOjpilT0K4j1sLOJKYftw.INSTANCE);
            this.mViolationDialogs = null;
        }

        void clearWaitingDialog() {
            AppWaitingForDebuggerDialog appWaitingForDebuggerDialog = this.mWaitDialog;
            if (appWaitingForDebuggerDialog == null) {
                return;
            }
            appWaitingForDebuggerDialog.dismiss();
            this.mWaitDialog = null;
        }

        void forAllDialogs(List<? extends BaseErrorDialog> dialogs, Consumer<BaseErrorDialog> c) {
            for (int i = dialogs.size() - 1; i >= 0; i--) {
                c.accept(dialogs.get(i));
            }
        }

        void showCrashDialogs(AppErrorDialog.Data data) {
            List<Context> contexts = getDisplayContexts(false);
            this.mCrashDialogs = new ArrayList();
            for (int i = contexts.size() - 1; i >= 0; i--) {
                Context c = contexts.get(i);
                this.mCrashDialogs.add(new AppErrorDialog(c, ProcessRecord.this.mService, data));
            }
            ProcessRecord.this.mService.mUiHandler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$ProcessRecord$ErrorDialogController$W-AQD6Azm5daJOusD9r1R26WGBo
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showCrashDialogs$0$ProcessRecord$ErrorDialogController();
                }
            });
        }

        public /* synthetic */ void lambda$showCrashDialogs$0$ProcessRecord$ErrorDialogController() {
            List<AppErrorDialog> dialogs;
            synchronized (ProcessRecord.this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    dialogs = this.mCrashDialogs;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            if (dialogs != null) {
                forAllDialogs(dialogs, $$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg.INSTANCE);
            }
        }

        void showAnrDialogs(AppNotRespondingDialog.Data data) {
            List<Context> contexts = getDisplayContexts(ProcessRecord.this.isSilentAnr());
            this.mAnrDialogs = new ArrayList();
            for (int i = contexts.size() - 1; i >= 0; i--) {
                Context c = contexts.get(i);
                this.mAnrDialogs.add(new AppNotRespondingDialog(ProcessRecord.this.mService, c, data));
            }
            ProcessRecord.this.mService.mUiHandler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$ProcessRecord$ErrorDialogController$pOUTBc6k6s3-ZuZYLsjopLU9JWw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showAnrDialogs$1$ProcessRecord$ErrorDialogController();
                }
            });
        }

        public /* synthetic */ void lambda$showAnrDialogs$1$ProcessRecord$ErrorDialogController() {
            List<AppNotRespondingDialog> dialogs;
            synchronized (ProcessRecord.this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    dialogs = this.mAnrDialogs;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            if (dialogs != null) {
                forAllDialogs(dialogs, $$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg.INSTANCE);
            }
        }

        void showViolationDialogs(AppErrorResult res) {
            List<Context> contexts = getDisplayContexts(false);
            this.mViolationDialogs = new ArrayList();
            for (int i = contexts.size() - 1; i >= 0; i--) {
                Context c = contexts.get(i);
                this.mViolationDialogs.add(new StrictModeViolationDialog(c, ProcessRecord.this.mService, res, ProcessRecord.this));
            }
            ProcessRecord.this.mService.mUiHandler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$ProcessRecord$ErrorDialogController$yEOzfx-KIitetidLDudmF3WIN9Y
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showViolationDialogs$2$ProcessRecord$ErrorDialogController();
                }
            });
        }

        public /* synthetic */ void lambda$showViolationDialogs$2$ProcessRecord$ErrorDialogController() {
            List<StrictModeViolationDialog> dialogs;
            synchronized (ProcessRecord.this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    dialogs = this.mViolationDialogs;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            if (dialogs != null) {
                forAllDialogs(dialogs, $$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg.INSTANCE);
            }
        }

        void showDebugWaitingDialogs() {
            List<Context> contexts = getDisplayContexts(true);
            Context c = contexts.get(0);
            this.mWaitDialog = new AppWaitingForDebuggerDialog(ProcessRecord.this.mService, c, ProcessRecord.this);
            ProcessRecord.this.mService.mUiHandler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$ProcessRecord$ErrorDialogController$Pxxn90rYyxqzAxLE-3U2iU5qX6M
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showDebugWaitingDialogs$3$ProcessRecord$ErrorDialogController();
                }
            });
        }

        public /* synthetic */ void lambda$showDebugWaitingDialogs$3$ProcessRecord$ErrorDialogController() {
            Dialog dialog;
            synchronized (ProcessRecord.this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    dialog = this.mWaitDialog;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            if (dialog != null) {
                dialog.show();
            }
        }

        private List<Context> getDisplayContexts(boolean lastUsedOnly) {
            List<Context> displayContexts = new ArrayList<>();
            if (!lastUsedOnly) {
                ProcessRecord.this.mWindowProcessController.getDisplayContextsWithErrorDialogs(displayContexts);
            }
            if (displayContexts.isEmpty() || lastUsedOnly) {
                displayContexts.add(ProcessRecord.this.mService.mWmInternal != null ? ProcessRecord.this.mService.mWmInternal.getTopFocusedDisplayUiContext() : ProcessRecord.this.mService.mUiContext);
            }
            return displayContexts;
        }
    }
}
