package com.android.server.am;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.INetd;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.PowerManagerInternal;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.compat.IPlatformCompat;
import com.android.server.BatteryService;
import com.android.server.LocalServices;
import com.android.server.ServiceThread;
import com.android.server.SystemService;
import com.android.server.connectivity.NetworkAgentInfo;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.usage.AppStandbyController;
import com.android.server.wm.ActivityServiceConnectionsHolder;
import com.android.server.wm.WindowProcessController;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class OomAdjuster {
    static final long CAMERA_MICROPHONE_CAPABILITY_CHANGE_ID = 136219221;
    static final String OOM_ADJ_REASON_ACTIVITY = "updateOomAdj_activityChange";
    static final String OOM_ADJ_REASON_BIND_SERVICE = "updateOomAdj_bindService";
    static final String OOM_ADJ_REASON_FINISH_RECEIVER = "updateOomAdj_finishReceiver";
    static final String OOM_ADJ_REASON_GET_PROVIDER = "updateOomAdj_getProvider";
    static final String OOM_ADJ_REASON_METHOD = "updateOomAdj";
    static final String OOM_ADJ_REASON_NONE = "updateOomAdj_meh";
    static final String OOM_ADJ_REASON_PROCESS_BEGIN = "updateOomAdj_processBegin";
    static final String OOM_ADJ_REASON_PROCESS_END = "updateOomAdj_processEnd";
    static final String OOM_ADJ_REASON_REMOVE_PROVIDER = "updateOomAdj_removeProvider";
    static final String OOM_ADJ_REASON_START_RECEIVER = "updateOomAdj_startReceiver";
    static final String OOM_ADJ_REASON_START_SERVICE = "updateOomAdj_startService";
    static final String OOM_ADJ_REASON_UI_VISIBILITY = "updateOomAdj_uiVisibility";
    static final String OOM_ADJ_REASON_UNBIND_SERVICE = "updateOomAdj_unbindService";
    static final String OOM_ADJ_REASON_WHITELIST = "updateOomAdj_whitelistChange";
    static final long PROCESS_CAPABILITY_CHANGE_ID = 136274596;
    private static final String TAG = "OomAdjuster";
    ActiveUids mActiveUids;
    int mAdjSeq;
    CachedAppOptimizer mCachedAppOptimizer;
    ActivityManagerConstants mConstants;
    PowerManagerInternal mLocalPowerManager;
    int mNewNumAServiceProcs;
    int mNewNumServiceProcs;
    int mNumCachedHiddenProcs;
    int mNumNonCachedProcs;
    int mNumServiceProcs;
    private final int mNumSlots;
    private final IPlatformCompat mPlatformCompat;
    private final Handler mProcessGroupHandler;
    private final ProcessList mProcessList;
    private final ActivityManagerService mService;
    private ArrayList<UidRecord> mTmpBecameIdle;
    private final ArraySet<BroadcastQueue> mTmpBroadcastQueue;
    private final ComputeOomAdjWindowCallback mTmpComputeOomAdjWindowCallback;
    final long[] mTmpLong;
    private ArrayList<ProcessRecord> mTmpProcessList;
    private ArrayDeque<ProcessRecord> mTmpQueue;
    private ActiveUids mTmpUidRecords;

    OomAdjuster(ActivityManagerService service, ProcessList processList, ActiveUids activeUids) {
        this(service, processList, activeUids, createAdjusterThread());
    }

    private static ServiceThread createAdjusterThread() {
        final ServiceThread adjusterThread = new ServiceThread(TAG, -10, false);
        adjusterThread.start();
        adjusterThread.getThreadHandler().post(new Runnable() { // from class: com.android.server.am.-$$Lambda$OomAdjuster$w2JKyOlVhlVlGBOm72ve5OICjWM
            @Override // java.lang.Runnable
            public final void run() {
                Process.setThreadGroupAndCpuset(adjusterThread.getThreadId(), 5);
            }
        });
        return adjusterThread;
    }

    OomAdjuster(ActivityManagerService service, ProcessList processList, ActiveUids activeUids, ServiceThread adjusterThread) {
        this.mTmpLong = new long[3];
        this.mAdjSeq = 0;
        this.mNumServiceProcs = 0;
        this.mNewNumAServiceProcs = 0;
        this.mNewNumServiceProcs = 0;
        this.mNumNonCachedProcs = 0;
        this.mNumCachedHiddenProcs = 0;
        this.mTmpBroadcastQueue = new ArraySet<>();
        this.mTmpProcessList = new ArrayList<>();
        this.mTmpBecameIdle = new ArrayList<>();
        this.mTmpComputeOomAdjWindowCallback = new ComputeOomAdjWindowCallback();
        this.mService = service;
        this.mProcessList = processList;
        this.mActiveUids = activeUids;
        this.mLocalPowerManager = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
        this.mConstants = this.mService.mConstants;
        this.mCachedAppOptimizer = new CachedAppOptimizer(this.mService);
        this.mProcessGroupHandler = new Handler(adjusterThread.getLooper(), new Handler.Callback() { // from class: com.android.server.am.-$$Lambda$OomAdjuster$co9XgUOJFi5BsFaUpo-gdH0hsrA
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return OomAdjuster.lambda$new$1(message);
            }
        });
        this.mTmpUidRecords = new ActiveUids(service, false);
        this.mTmpQueue = new ArrayDeque<>(this.mConstants.CUR_MAX_CACHED_PROCESSES << 1);
        this.mNumSlots = 10;
        IBinder b = ServiceManager.getService("platform_compat");
        this.mPlatformCompat = IPlatformCompat.Stub.asInterface(b);
    }

    static /* synthetic */ boolean lambda$new$1(Message msg) {
        int pid = msg.arg1;
        int group = msg.arg2;
        if (Trace.isTagEnabled(64L)) {
            Trace.traceBegin(64L, "setProcessGroup " + msg.obj + " to " + group);
        }
        try {
            Process.setProcessGroup(pid, group);
        } catch (Exception e) {
        } finally {
            Trace.traceEnd(64L);
        }
        return true;
    }

    void initSettings() {
        this.mCachedAppOptimizer.init();
        if (this.mService.mConstants.KEEP_WARMING_SERVICES.size() > 0) {
            IntentFilter filter = new IntentFilter("android.intent.action.USER_SWITCHED");
            this.mService.mContext.registerReceiverForAllUsers(new BroadcastReceiver() { // from class: com.android.server.am.OomAdjuster.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    synchronized (OomAdjuster.this.mService) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            OomAdjuster.this.handleUserSwitchedLocked();
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                    }
                }
            }, filter, null, this.mService.mHandler);
        }
    }

    void handleUserSwitchedLocked() {
        ArraySet<ComponentName> warmServices = this.mService.mConstants.KEEP_WARMING_SERVICES;
        ArrayList<ProcessRecord> processes = this.mProcessList.mLruProcesses;
        for (int i = processes.size() - 1; i >= 0; i--) {
            ProcessRecord app = processes.get(i);
            boolean includeWarmPkg = false;
            for (int j = warmServices.size() - 1; j >= 0; j--) {
                if (app.pkgList.containsKey(warmServices.valueAt(j).getPackageName())) {
                    includeWarmPkg = true;
                    break;
                }
            }
            if (includeWarmPkg) {
                for (int j2 = app.numberOfRunningServices() - 1; j2 >= 0; j2--) {
                    app.getRunningServiceAt(j2).updateKeepWarmLocked();
                }
            }
        }
    }

    boolean updateOomAdjLocked(ProcessRecord app, boolean oomAdjAll, String oomAdjReason) {
        if (oomAdjAll && this.mConstants.OOMADJ_UPDATE_QUICK) {
            return updateOomAdjLocked(app, oomAdjReason);
        }
        ProcessRecord TOP_APP = this.mService.getTopAppLocked();
        boolean wasCached = app.isCached();
        this.mAdjSeq++;
        int cachedAdj = app.getCurRawAdj() >= 900 ? app.getCurRawAdj() : 1001;
        boolean success = updateOomAdjLocked(app, cachedAdj, TOP_APP, false, SystemClock.uptimeMillis());
        if (oomAdjAll && (wasCached != app.isCached() || app.getCurRawAdj() == 1001)) {
            updateOomAdjLocked(oomAdjReason);
        }
        return success;
    }

    private final boolean updateOomAdjLocked(ProcessRecord app, int cachedAdj, ProcessRecord TOP_APP, boolean doingAll, long now) {
        if (app.thread == null) {
            return false;
        }
        app.resetCachedInfo();
        UidRecord uidRec = app.uidRecord;
        if (uidRec != null) {
            uidRec.reset();
        }
        computeOomAdjLocked(app, cachedAdj, TOP_APP, doingAll, now, false, true);
        boolean success = applyOomAdjLocked(app, doingAll, now, SystemClock.elapsedRealtime());
        if (uidRec != null) {
            ArraySet<ProcessRecord> procRecords = app.uidRecord.procRecords;
            for (int i = procRecords.size() - 1; i >= 0; i--) {
                ProcessRecord pr = procRecords.valueAt(i);
                if (!pr.killedByAm && pr.thread != null && (!pr.isolated || pr.numberOfRunningServices() > 0 || pr.isolatedEntryPoint != null)) {
                    updateAppUidRecLocked(pr);
                }
            }
            int i2 = uidRec.getCurProcState();
            if (i2 != 20 && (uidRec.setProcState != uidRec.getCurProcState() || uidRec.setCapability != uidRec.curCapability || uidRec.setWhitelist != uidRec.curWhitelist)) {
                ActiveUids uids = this.mTmpUidRecords;
                uids.clear();
                uids.put(uidRec.uid, uidRec);
                updateUidsLocked(uids, now);
                this.mProcessList.incrementProcStateSeqAndNotifyAppsLocked(uids);
            }
        }
        return success;
    }

    void updateOomAdjLocked(String oomAdjReason) {
        ProcessRecord topApp = this.mService.getTopAppLocked();
        updateOomAdjLockedInner(oomAdjReason, topApp, null, null, true, true);
    }

    boolean updateOomAdjLocked(ProcessRecord app, String oomAdjReason) {
        long j;
        long j2;
        int cachedAdj;
        ActiveUids uids;
        int i = 1;
        if (app == null || !this.mConstants.OOMADJ_UPDATE_QUICK) {
            updateOomAdjLocked(oomAdjReason);
            return true;
        }
        ProcessRecord topApp = this.mService.getTopAppLocked();
        Trace.traceBegin(64L, oomAdjReason);
        this.mService.mOomAdjProfiler.oomAdjStarted();
        this.mAdjSeq++;
        boolean wasCached = app.isCached();
        int oldAdj = app.getCurRawAdj();
        int cachedAdj2 = oldAdj >= 900 ? oldAdj : 1001;
        boolean wasBackground = ActivityManager.isProcStateBackground(app.setProcState);
        app.containsCycle = false;
        app.procStateChanged = false;
        app.resetCachedInfo();
        boolean success = updateOomAdjLocked(app, cachedAdj2, topApp, false, SystemClock.uptimeMillis());
        if (!success) {
            j = 64;
        } else {
            if (wasCached != app.isCached() || oldAdj == -10000 || wasBackground != ActivityManager.isProcStateBackground(app.setProcState)) {
                ArrayList<ProcessRecord> processes = this.mTmpProcessList;
                ActiveUids uids2 = this.mTmpUidRecords;
                ArrayDeque<ProcessRecord> queue = this.mTmpQueue;
                processes.clear();
                uids2.clear();
                queue.clear();
                app.mReachable = true;
                ProcessRecord pr = app;
                boolean containsCycle = false;
                while (pr != null) {
                    if (pr != app) {
                        processes.add(pr);
                    }
                    if (pr.uidRecord != null) {
                        uids2.put(pr.uidRecord.uid, pr.uidRecord);
                    }
                    int i2 = pr.connections.size() - i;
                    while (i2 >= 0) {
                        ConnectionRecord cr = pr.connections.valueAt(i2);
                        ProcessRecord service = (cr.flags & 2) != 0 ? cr.binding.service.isolatedProc : cr.binding.service.app;
                        if (service == null) {
                            cachedAdj = cachedAdj2;
                            uids = uids2;
                        } else if (service == pr) {
                            cachedAdj = cachedAdj2;
                            uids = uids2;
                        } else {
                            cachedAdj = cachedAdj2;
                            containsCycle |= service.mReachable;
                            boolean containsCycle2 = service.mReachable;
                            if (containsCycle2) {
                                uids = uids2;
                            } else {
                                uids = uids2;
                                if ((cr.flags & 134217888) != 32) {
                                    queue.offer(service);
                                    service.mReachable = true;
                                }
                            }
                        }
                        i2--;
                        cachedAdj2 = cachedAdj;
                        uids2 = uids;
                    }
                    int cachedAdj3 = cachedAdj2;
                    ActiveUids uids3 = uids2;
                    for (int i3 = pr.conProviders.size() - 1; i3 >= 0; i3--) {
                        ContentProviderConnection cpc = pr.conProviders.get(i3);
                        ProcessRecord provider = cpc.provider.proc;
                        if (provider != null && provider != pr) {
                            boolean z = containsCycle | provider.mReachable;
                            containsCycle = z;
                            if (!z) {
                                containsCycle |= provider.mReachable;
                                if (!provider.mReachable) {
                                    queue.offer(provider);
                                    provider.mReachable = true;
                                }
                            }
                        }
                    }
                    ProcessRecord pr2 = queue.poll();
                    pr = pr2;
                    cachedAdj2 = cachedAdj3;
                    uids2 = uids3;
                    i = 1;
                }
                ActiveUids uids4 = uids2;
                app.mReachable = false;
                int size = processes.size();
                if (size > 0) {
                    int l = 0;
                    for (int r = size - 1; l < r; r--) {
                        ProcessRecord t = processes.get(l);
                        processes.set(l, processes.get(r));
                        processes.set(r, t);
                        l++;
                    }
                    int l2 = this.mAdjSeq;
                    this.mAdjSeq = l2 - 1;
                    j2 = 64;
                    updateOomAdjLockedInner(oomAdjReason, topApp, processes, uids4, containsCycle, false);
                } else {
                    j2 = 64;
                    if (app.getCurRawAdj() == 1001) {
                        processes.add(app);
                        assignCachedAdjIfNecessary(processes);
                        applyOomAdjLocked(app, false, SystemClock.uptimeMillis(), SystemClock.elapsedRealtime());
                    }
                }
                this.mService.mOomAdjProfiler.oomAdjEnded();
                Trace.traceEnd(j2);
                return true;
            }
            j = 64;
        }
        this.mService.mOomAdjProfiler.oomAdjEnded();
        Trace.traceEnd(j);
        return success;
    }

    private void updateOomAdjLockedInner(String oomAdjReason, ProcessRecord topApp, ArrayList<ProcessRecord> processes, ActiveUids uids, boolean potentialCycles, boolean startProfiling) {
        ArrayList<ProcessRecord> arrayList;
        ActiveUids activeUids;
        int numProc;
        int i;
        ArrayList<ProcessRecord> activeProcesses;
        int numProc2;
        if (startProfiling) {
            Trace.traceBegin(64L, oomAdjReason);
            this.mService.mOomAdjProfiler.oomAdjStarted();
        }
        long now = SystemClock.uptimeMillis();
        long nowElapsed = SystemClock.elapsedRealtime();
        long oldTime = now - 1800000;
        boolean z = false;
        boolean fullUpdate = processes == null;
        if (fullUpdate) {
            arrayList = this.mProcessList.mLruProcesses;
        } else {
            arrayList = processes;
        }
        ArrayList<ProcessRecord> activeProcesses2 = arrayList;
        int numProc3 = activeProcesses2.size();
        if (uids != null) {
            activeUids = uids;
        } else {
            int numUids = this.mActiveUids.size();
            ActiveUids activeUids2 = this.mTmpUidRecords;
            activeUids2.clear();
            for (int i2 = 0; i2 < numUids; i2++) {
                UidRecord r = this.mActiveUids.valueAt(i2);
                activeUids2.put(r.uid, r);
            }
            activeUids = activeUids2;
        }
        for (int i3 = activeUids.size() - 1; i3 >= 0; i3--) {
            UidRecord uidRec = activeUids.valueAt(i3);
            uidRec.reset();
        }
        if (this.mService.mAtmInternal != null) {
            this.mService.mAtmInternal.rankTaskLayersIfNeeded();
        }
        this.mAdjSeq++;
        if (fullUpdate) {
            this.mNewNumServiceProcs = 0;
            this.mNewNumAServiceProcs = 0;
        }
        boolean computeClients = fullUpdate || potentialCycles;
        int i4 = numProc3 - 1;
        while (i4 >= 0) {
            ProcessRecord app = activeProcesses2.get(i4);
            app.mReachable = z;
            if (app.adjSeq != this.mAdjSeq) {
                app.containsCycle = false;
                app.setCurRawProcState(19);
                app.setCurRawAdj(NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE);
                app.setCapability = 0;
                app.resetCachedInfo();
            }
            i4--;
            z = false;
        }
        int i5 = numProc3 - 1;
        boolean retryCycles = false;
        int i6 = i5;
        while (i6 >= 0) {
            ProcessRecord app2 = activeProcesses2.get(i6);
            if (!app2.killedByAm && app2.thread != null) {
                app2.procStateChanged = false;
                computeOomAdjLocked(app2, NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE, topApp, fullUpdate, now, false, computeClients);
                boolean retryCycles2 = retryCycles | app2.containsCycle;
                app2.completedAdjSeq = this.mAdjSeq;
                retryCycles = retryCycles2;
            }
            i6--;
            numProc3 = numProc3;
            activeProcesses2 = activeProcesses2;
            nowElapsed = nowElapsed;
        }
        int numProc4 = numProc3;
        ArrayList<ProcessRecord> activeProcesses3 = activeProcesses2;
        long nowElapsed2 = nowElapsed;
        assignCachedAdjIfNecessary(this.mProcessList.mLruProcesses);
        if (computeClients) {
            int cycleCount = 0;
            while (retryCycles && cycleCount < 10) {
                int cycleCount2 = cycleCount + 1;
                int i7 = 0;
                while (true) {
                    numProc = numProc4;
                    if (i7 >= numProc) {
                        break;
                    }
                    ArrayList<ProcessRecord> activeProcesses4 = activeProcesses3;
                    ProcessRecord app3 = activeProcesses4.get(i7);
                    if (!app3.killedByAm && app3.thread != null && app3.containsCycle) {
                        app3.adjSeq--;
                        app3.completedAdjSeq--;
                    }
                    i7++;
                    activeProcesses3 = activeProcesses4;
                    numProc4 = numProc;
                }
                ArrayList<ProcessRecord> activeProcesses5 = activeProcesses3;
                retryCycles = false;
                int i8 = 0;
                while (i8 < numProc) {
                    ProcessRecord app4 = activeProcesses5.get(i8);
                    if (app4.killedByAm || app4.thread == null || !app4.containsCycle) {
                        i = i8;
                        activeProcesses = activeProcesses5;
                        numProc2 = numProc;
                    } else {
                        i = i8;
                        activeProcesses = activeProcesses5;
                        numProc2 = numProc;
                        if (computeOomAdjLocked(app4, app4.getCurRawAdj(), topApp, true, now, true, true)) {
                            retryCycles = true;
                        }
                    }
                    i8 = i + 1;
                    numProc = numProc2;
                    activeProcesses5 = activeProcesses;
                }
                activeProcesses3 = activeProcesses5;
                cycleCount = cycleCount2;
                numProc4 = numProc;
            }
        }
        this.mNumNonCachedProcs = 0;
        this.mNumCachedHiddenProcs = 0;
        boolean allChanged = updateAndTrimProcessLocked(now, nowElapsed2, oldTime, activeUids);
        this.mNumServiceProcs = this.mNewNumServiceProcs;
        if (this.mService.mAlwaysFinishActivities) {
            this.mService.mAtmInternal.scheduleDestroyAllActivities("always-finish");
        }
        if (allChanged) {
            ActivityManagerService activityManagerService = this.mService;
            activityManagerService.requestPssAllProcsLocked(now, false, activityManagerService.mProcessStats.isMemFactorLowered());
        }
        updateUidsLocked(activeUids, nowElapsed2);
        if (this.mService.mProcessStats.shouldWriteNowLocked(now)) {
            ActivityManagerService.MainHandler mainHandler = this.mService.mHandler;
            ActivityManagerService activityManagerService2 = this.mService;
            mainHandler.post(new ActivityManagerService.ProcStatsRunnable(activityManagerService2, activityManagerService2.mProcessStats));
        }
        this.mService.mProcessStats.updateTrackingAssociationsLocked(this.mAdjSeq, now);
        if (startProfiling) {
            this.mService.mOomAdjProfiler.oomAdjEnded();
            Trace.traceEnd(64L);
        }
    }

    private void assignCachedAdjIfNecessary(ArrayList<ProcessRecord> lruList) {
        int numEmptyProcs;
        int numLru = lruList.size();
        int curCachedAdj = 900;
        int nextCachedAdj = 900 + 10;
        int curCachedImpAdj = 0;
        int curEmptyAdj = 905;
        int nextEmptyAdj = 905 + 10;
        int emptyProcessLimit = this.mConstants.CUR_MAX_EMPTY_PROCESSES;
        int cachedProcessLimit = this.mConstants.CUR_MAX_CACHED_PROCESSES - emptyProcessLimit;
        int numEmptyProcs2 = (numLru - this.mNumNonCachedProcs) - this.mNumCachedHiddenProcs;
        if (numEmptyProcs2 > cachedProcessLimit) {
            numEmptyProcs2 = cachedProcessLimit;
        }
        int i = this.mNumCachedHiddenProcs;
        int cachedFactor = (i > 0 ? (i + this.mNumSlots) - 1 : 1) / this.mNumSlots;
        if (cachedFactor < 1) {
            cachedFactor = 1;
        }
        int i2 = this.mNumSlots;
        int emptyFactor = ((numEmptyProcs2 + i2) - 1) / i2;
        if (emptyFactor < 1) {
            emptyFactor = 1;
        }
        int stepCached = -1;
        int stepEmpty = -1;
        int lastCachedGroup = 0;
        int lastCachedGroupImportance = 0;
        int lastCachedGroupUid = 0;
        int numLru2 = numLru - 1;
        while (numLru2 >= 0) {
            int emptyProcessLimit2 = emptyProcessLimit;
            ProcessRecord app = lruList.get(numLru2);
            int cachedProcessLimit2 = cachedProcessLimit;
            if (app.killedByAm || app.thread == null) {
                numEmptyProcs = numEmptyProcs2;
            } else {
                numEmptyProcs = numEmptyProcs2;
                if (app.curAdj >= 1001) {
                    switch (app.getCurProcState()) {
                        case 16:
                        case 17:
                        case 18:
                            boolean inGroup = false;
                            if (app.connectionGroup != 0) {
                                if (lastCachedGroupUid == app.uid && lastCachedGroup == app.connectionGroup) {
                                    if (app.connectionImportance > lastCachedGroupImportance) {
                                        int lastCachedGroupImportance2 = app.connectionImportance;
                                        if (curCachedAdj < nextCachedAdj && curCachedAdj < 999) {
                                            curCachedImpAdj++;
                                            lastCachedGroupImportance = lastCachedGroupImportance2;
                                        } else {
                                            lastCachedGroupImportance = lastCachedGroupImportance2;
                                        }
                                    }
                                    inGroup = true;
                                } else {
                                    lastCachedGroupUid = app.uid;
                                    lastCachedGroup = app.connectionGroup;
                                    lastCachedGroupImportance = app.connectionImportance;
                                }
                            }
                            if (!inGroup && curCachedAdj != nextCachedAdj) {
                                stepCached++;
                                curCachedImpAdj = 0;
                                if (stepCached >= cachedFactor) {
                                    stepCached = 0;
                                    curCachedAdj = nextCachedAdj;
                                    nextCachedAdj += 10;
                                    if (nextCachedAdj > 999) {
                                        nextCachedAdj = 999;
                                    }
                                }
                            }
                            app.setCurRawAdj(curCachedAdj + curCachedImpAdj);
                            app.curAdj = app.modifyRawOomAdj(curCachedAdj + curCachedImpAdj);
                            break;
                        default:
                            if (curEmptyAdj != nextEmptyAdj && (stepEmpty = stepEmpty + 1) >= emptyFactor) {
                                stepEmpty = 0;
                                curEmptyAdj = nextEmptyAdj;
                                nextEmptyAdj += 10;
                                if (nextEmptyAdj > 999) {
                                    nextEmptyAdj = 999;
                                }
                            }
                            app.setCurRawAdj(curEmptyAdj);
                            app.curAdj = app.modifyRawOomAdj(curEmptyAdj);
                            break;
                    }
                }
            }
            numLru2--;
            emptyProcessLimit = emptyProcessLimit2;
            cachedProcessLimit = cachedProcessLimit2;
            numEmptyProcs2 = numEmptyProcs;
        }
    }

    private boolean updateAndTrimProcessLocked(long now, long nowElapsed, long oldTime, ActiveUids activeUids) {
        ProcessRecord app;
        ArrayList<ProcessRecord> lruList = this.mProcessList.mLruProcesses;
        int numLru = lruList.size();
        int emptyProcessLimit = this.mConstants.CUR_MAX_EMPTY_PROCESSES;
        int cachedProcessLimit = this.mConstants.CUR_MAX_CACHED_PROCESSES - emptyProcessLimit;
        int lastCachedGroup = 0;
        int lastCachedGroupUid = 0;
        int numCached = 0;
        int numCachedExtraGroup = 0;
        int numCachedExtraGroup2 = numLru - 1;
        int numTrimming = 0;
        int numEmpty = 0;
        while (numCachedExtraGroup2 >= 0) {
            ProcessRecord app2 = lruList.get(numCachedExtraGroup2);
            if (!app2.killedByAm && app2.thread != null) {
                if (app2.completedAdjSeq == this.mAdjSeq) {
                    applyOomAdjLocked(app2, true, now, nowElapsed);
                }
                int curProcState = app2.getCurProcState();
                if (curProcState == 16 || curProcState == 17) {
                    app = app2;
                    this.mNumCachedHiddenProcs++;
                    numCached++;
                    if (app.connectionGroup != 0) {
                        if (lastCachedGroupUid == app.info.uid && lastCachedGroup == app.connectionGroup) {
                            numCachedExtraGroup++;
                        } else {
                            lastCachedGroupUid = app.info.uid;
                            lastCachedGroup = app.connectionGroup;
                        }
                    } else {
                        lastCachedGroup = 0;
                        lastCachedGroupUid = 0;
                    }
                    if (numCached - numCachedExtraGroup > cachedProcessLimit) {
                        app.kill("cached #" + numCached, 13, 2, true);
                    }
                    numEmpty = numEmpty;
                } else {
                    if (curProcState != 19) {
                        this.mNumNonCachedProcs++;
                        app = app2;
                    } else {
                        if (numEmpty > this.mConstants.CUR_TRIM_EMPTY_PROCESSES) {
                            app = app2;
                            if (app.lastActivityTime < oldTime) {
                                app.kill("empty for " + (((oldTime + 1800000) - app.lastActivityTime) / 1000) + "s", 13, 4, true);
                            }
                        } else {
                            app = app2;
                        }
                        numEmpty++;
                        if (numEmpty > emptyProcessLimit) {
                            app.kill("empty #" + numEmpty, 13, 3, true);
                        }
                    }
                    numEmpty = numEmpty;
                }
                if (app.isolated && app.numberOfRunningServices() <= 0 && app.isolatedEntryPoint == null) {
                    app.kill("isolated not needed", 13, 17, true);
                } else {
                    updateAppUidRecLocked(app);
                }
                if (app.getCurProcState() < 14 || app.killedByAm) {
                    numTrimming = numTrimming;
                } else {
                    numTrimming++;
                }
            } else {
                numCachedExtraGroup2 = numCachedExtraGroup2;
                lruList = lruList;
                numLru = numLru;
                numEmpty = numEmpty;
                numTrimming = numTrimming;
            }
            numCachedExtraGroup2--;
            lruList = lruList;
            numLru = numLru;
        }
        this.mProcessList.incrementProcStateSeqAndNotifyAppsLocked(activeUids);
        return this.mService.updateLowMemStateLocked(numCached, numEmpty, numTrimming);
    }

    private void updateAppUidRecLocked(ProcessRecord app) {
        UidRecord uidRec = app.uidRecord;
        if (uidRec != null) {
            uidRec.ephemeral = app.info.isInstantApp();
            if (uidRec.getCurProcState() > app.getCurProcState()) {
                uidRec.setCurProcState(app.getCurProcState());
            }
            if (app.hasForegroundServices()) {
                uidRec.foregroundServices = true;
            }
            uidRec.curCapability |= app.curCapability;
        }
    }

    private void updateUidsLocked(ActiveUids activeUids, long nowElapsed) {
        ArrayList<UidRecord> becameIdle = this.mTmpBecameIdle;
        becameIdle.clear();
        PowerManagerInternal powerManagerInternal = this.mLocalPowerManager;
        if (powerManagerInternal != null) {
            powerManagerInternal.startUidChanges();
        }
        for (int i = activeUids.size() - 1; i >= 0; i--) {
            UidRecord uidRec = activeUids.valueAt(i);
            int uidChange = 0;
            if (uidRec.getCurProcState() != 20 && (uidRec.setProcState != uidRec.getCurProcState() || uidRec.setCapability != uidRec.curCapability || uidRec.setWhitelist != uidRec.curWhitelist)) {
                if (ActivityManager.isProcStateBackground(uidRec.getCurProcState()) && !uidRec.curWhitelist) {
                    if (!ActivityManager.isProcStateBackground(uidRec.setProcState) || uidRec.setWhitelist) {
                        uidRec.lastBackgroundTime = nowElapsed;
                        if (!this.mService.mHandler.hasMessages(58)) {
                            this.mService.mHandler.sendEmptyMessageDelayed(58, this.mConstants.BACKGROUND_SETTLE_TIME);
                        }
                    }
                    if (uidRec.idle && !uidRec.setIdle) {
                        uidChange = 2;
                        becameIdle.add(uidRec);
                    }
                } else {
                    if (uidRec.idle) {
                        uidChange = 4;
                        EventLogTags.writeAmUidActive(uidRec.uid);
                        uidRec.idle = false;
                    }
                    uidRec.lastBackgroundTime = 0L;
                }
                boolean wasCached = uidRec.setProcState > 11;
                boolean isCached = uidRec.getCurProcState() > 11;
                if (wasCached != isCached || uidRec.setProcState == 20) {
                    uidChange |= isCached ? 8 : 16;
                }
                uidRec.setProcState = uidRec.getCurProcState();
                uidRec.setCapability = uidRec.curCapability;
                uidRec.setWhitelist = uidRec.curWhitelist;
                uidRec.setIdle = uidRec.idle;
                this.mService.mAtmInternal.onUidProcStateChanged(uidRec.uid, uidRec.setProcState);
                this.mService.enqueueUidChangeLocked(uidRec, -1, uidChange);
                this.mService.noteUidProcessState(uidRec.uid, uidRec.getCurProcState(), uidRec.curCapability);
                if (uidRec.foregroundServices) {
                    this.mService.mServices.foregroundServiceProcStateChangedLocked(uidRec);
                }
            }
            this.mService.mInternal.deletePendingTopUid(uidRec.uid);
        }
        PowerManagerInternal powerManagerInternal2 = this.mLocalPowerManager;
        if (powerManagerInternal2 != null) {
            powerManagerInternal2.finishUidChanges();
        }
        int size = becameIdle.size();
        if (size > 0) {
            for (int i2 = size - 1; i2 >= 0; i2--) {
                this.mService.mServices.stopInBackgroundLocked(becameIdle.get(i2).uid);
            }
        }
    }

    final class ComputeOomAdjWindowCallback implements WindowProcessController.ComputeOomAdjCallback {
        int adj;
        ProcessRecord app;
        int appUid;
        boolean foregroundActivities;
        int logUid;
        int procState;
        int processStateCurTop;
        int schedGroup;

        ComputeOomAdjWindowCallback() {
        }

        void initialize(ProcessRecord app, int adj, boolean foregroundActivities, int procState, int schedGroup, int appUid, int logUid, int processStateCurTop) {
            this.app = app;
            this.adj = adj;
            this.foregroundActivities = foregroundActivities;
            this.procState = procState;
            this.schedGroup = schedGroup;
            this.appUid = appUid;
            this.logUid = logUid;
            this.processStateCurTop = processStateCurTop;
        }

        @Override // com.android.server.wm.WindowProcessController.ComputeOomAdjCallback
        public void onVisibleActivity() {
            if (this.adj > 100) {
                this.adj = 100;
                this.app.adjType = "vis-activity";
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to vis-activity: " + this.app);
                }
            }
            int i = this.procState;
            int i2 = this.processStateCurTop;
            if (i > i2) {
                this.procState = i2;
                this.app.adjType = "vis-activity";
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to vis-activity (top): " + this.app);
                }
            }
            if (this.schedGroup < 2) {
                this.schedGroup = 2;
            }
            this.app.setCached(false);
            this.app.empty = false;
            this.foregroundActivities = true;
        }

        @Override // com.android.server.wm.WindowProcessController.ComputeOomAdjCallback
        public void onPausedActivity() {
            if (this.adj > 200) {
                this.adj = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                this.app.adjType = "pause-activity";
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to pause-activity: " + this.app);
                }
            }
            int i = this.procState;
            int i2 = this.processStateCurTop;
            if (i > i2) {
                this.procState = i2;
                this.app.adjType = "pause-activity";
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to pause-activity (top): " + this.app);
                }
            }
            if (this.schedGroup < 2) {
                this.schedGroup = 2;
            }
            this.app.setCached(false);
            this.app.empty = false;
            this.foregroundActivities = true;
        }

        @Override // com.android.server.wm.WindowProcessController.ComputeOomAdjCallback
        public void onStoppingActivity(boolean finishing) {
            if (this.adj > 200) {
                this.adj = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                this.app.adjType = "stop-activity";
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to stop-activity: " + this.app);
                }
            }
            if (!finishing && this.procState > 15) {
                this.procState = 15;
                this.app.adjType = "stop-activity";
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to stop-activity: " + this.app);
                }
            }
            this.app.setCached(false);
            this.app.empty = false;
            this.foregroundActivities = true;
        }

        @Override // com.android.server.wm.WindowProcessController.ComputeOomAdjCallback
        public void onOtherActivity() {
            if (this.procState > 16) {
                this.procState = 16;
                this.app.adjType = "cch-act";
                if (this.logUid == this.appUid) {
                    OomAdjuster.this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to cached activity: " + this.app);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:238:0x05da  */
    /* JADX WARN: Code duplicated, block: B:290:0x069b  */
    /* JADX WARN: Code duplicated, block: B:291:0x06b5  */
    /* JADX WARN: Code duplicated, block: B:293:0x06bd  */
    /* JADX WARN: Code duplicated, block: B:294:0x06f1  */
    /* JADX WARN: Code duplicated, block: B:297:0x072b  */
    /* JADX WARN: Code duplicated, block: B:300:0x0747  */
    /* JADX WARN: Code duplicated, block: B:302:0x074f  */
    /* JADX WARN: Code duplicated, block: B:305:0x0757  */
    /* JADX WARN: Code duplicated, block: B:308:0x075f  */
    /* JADX WARN: Code duplicated, block: B:316:0x0779  */
    /* JADX WARN: Code duplicated, block: B:318:0x078a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:319:0x078c  */
    /* JADX WARN: Code duplicated, block: B:321:0x0790  */
    /* JADX WARN: Code duplicated, block: B:323:0x0798  */
    /* JADX WARN: Code duplicated, block: B:333:0x07be  */
    /* JADX WARN: Code duplicated, block: B:336:0x07c6  */
    /* JADX WARN: Code duplicated, block: B:338:0x07ca  */
    /* JADX WARN: Code duplicated, block: B:339:0x07d2  */
    /* JADX WARN: Code duplicated, block: B:340:0x07e6  */
    /* JADX WARN: Code duplicated, block: B:342:0x07f1  */
    /* JADX WARN: Code duplicated, block: B:347:0x07fe  */
    /* JADX WARN: Code duplicated, block: B:349:0x0805  */
    /* JADX WARN: Code duplicated, block: B:351:0x0809 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:353:0x080e  */
    /* JADX WARN: Code duplicated, block: B:355:0x0812  */
    /* JADX WARN: Code duplicated, block: B:356:0x0814  */
    /* JADX WARN: Code duplicated, block: B:358:0x0818  */
    /* JADX WARN: Code duplicated, block: B:359:0x081f  */
    /* JADX WARN: Code duplicated, block: B:362:0x0826  */
    /* JADX WARN: Code duplicated, block: B:364:0x082c  */
    /* JADX WARN: Code duplicated, block: B:365:0x0836  */
    /* JADX WARN: Code duplicated, block: B:366:0x0839  */
    /* JADX WARN: Code duplicated, block: B:370:0x084b  */
    /* JADX WARN: Code duplicated, block: B:372:0x0851  */
    /* JADX WARN: Code duplicated, block: B:374:0x0857  */
    /* JADX WARN: Code duplicated, block: B:375:0x0859  */
    /* JADX WARN: Code duplicated, block: B:378:0x085d  */
    /* JADX WARN: Code duplicated, block: B:380:0x0865  */
    /* JADX WARN: Code duplicated, block: B:381:0x0870  */
    /* JADX WARN: Code duplicated, block: B:383:0x0879  */
    /* JADX WARN: Code duplicated, block: B:386:0x0889  */
    /* JADX WARN: Code duplicated, block: B:387:0x0891  */
    /* JADX WARN: Code duplicated, block: B:389:0x0896  */
    /* JADX WARN: Code duplicated, block: B:404:0x08c6  */
    /* JADX WARN: Code duplicated, block: B:408:0x08d4 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:409:0x08d8  */
    /* JADX WARN: Code duplicated, block: B:411:0x08e6  */
    /* JADX WARN: Code duplicated, block: B:413:0x08f3  */
    /* JADX WARN: Code duplicated, block: B:415:0x08f7  */
    /* JADX WARN: Code duplicated, block: B:416:0x08fb  */
    /* JADX WARN: Code duplicated, block: B:418:0x0900  */
    /* JADX WARN: Code duplicated, block: B:419:0x0903  */
    /* JADX WARN: Code duplicated, block: B:422:0x0907  */
    /* JADX WARN: Code duplicated, block: B:425:0x0913  */
    /* JADX WARN: Code duplicated, block: B:427:0x0917  */
    /* JADX WARN: Code duplicated, block: B:429:0x091e  */
    /* JADX WARN: Code duplicated, block: B:431:0x0924  */
    /* JADX WARN: Code duplicated, block: B:432:0x0928  */
    /* JADX WARN: Code duplicated, block: B:435:0x092c  */
    /* JADX WARN: Code duplicated, block: B:439:0x093a  */
    /* JADX WARN: Code duplicated, block: B:441:0x094f  */
    /* JADX WARN: Code duplicated, block: B:442:0x0990  */
    /* JADX WARN: Code duplicated, block: B:443:0x0997  */
    /* JADX WARN: Code duplicated, block: B:445:0x09a7  */
    /* JADX WARN: Code duplicated, block: B:447:0x09ba  */
    /* JADX WARN: Code duplicated, block: B:448:0x09be  */
    /* JADX WARN: Code duplicated, block: B:452:0x09cb  */
    /* JADX WARN: Code duplicated, block: B:455:0x09d5  */
    /* JADX WARN: Code duplicated, block: B:469:0x0a24  */
    /* JADX WARN: Code duplicated, block: B:470:0x0a27  */
    private final boolean computeOomAdjLocked(ProcessRecord app, int cachedAdj, ProcessRecord topApp, boolean doingAll, long now, boolean cycleReEval, boolean computeClients) {
        int schedGroup;
        int adj;
        int procState;
        int logUid;
        boolean z;
        int procState2;
        int adj2;
        boolean foregroundActivities;
        int logUid2;
        int appUid;
        int capability;
        int adj3;
        long j;
        int schedGroup2;
        boolean foregroundActivities2;
        int schedGroup3;
        boolean z2;
        int capability2;
        int adj4;
        int appUid2;
        ProcessRecord client;
        long j2;
        int provi;
        String str;
        int i;
        String str2;
        ServiceRecord s;
        BackupRecord backupTarget;
        int capability3;
        int capabilityFromFGS;
        ArrayMap<IBinder, ArrayList<ConnectionRecord>> serviceConnections;
        int conni;
        ArrayList<ConnectionRecord> clist;
        int i2;
        ConnectionRecord cr;
        ArrayList<ConnectionRecord> clist2;
        boolean trackedProcState;
        ProcessRecord client2;
        ProcessRecord client3;
        int clientAdj;
        int clientProcState;
        ConnectionRecord cr2;
        int conni2;
        String str3;
        boolean z3;
        ActivityServiceConnectionsHolder<ConnectionRecord> activityServiceConnectionsHolder;
        String adjType;
        int procState3;
        int adj5;
        long j3;
        int schedGroup4;
        int adj6;
        int curSchedGroup;
        int adj7;
        int logUid3;
        int curSchedGroup2;
        int schedGroup5;
        boolean enabled;
        char c;
        int newAdj;
        int i3;
        int newAdj2;
        long j4;
        this = this;
        if (this.mAdjSeq == app.adjSeq) {
            if (app.adjSeq == app.completedAdjSeq) {
                return false;
            }
            app.containsCycle = true;
            return false;
        }
        if (app.thread == null) {
            app.adjSeq = this.mAdjSeq;
            app.setCurrentSchedulingGroup(0);
            app.setCurProcState(19);
            app.curAdj = 999;
            app.setCurRawAdj(999);
            app.completedAdjSeq = app.adjSeq;
            app.curCapability = 0;
            return false;
        }
        app.adjTypeCode = 0;
        app.adjSource = null;
        app.adjTarget = null;
        app.empty = false;
        app.setCached(false);
        app.shouldNotFreeze = false;
        int appUid3 = app.info.uid;
        int logUid4 = this.mService.mCurOomAdjUid;
        int prevAppAdj = app.curAdj;
        int prevProcState = app.getCurProcState();
        int prevCapability = app.curCapability;
        String str4 = "ActivityManager";
        if (app.maxAdj <= 0) {
            if (logUid4 == appUid3) {
                this.mService.reportOomAdjMessageLocked("ActivityManager", "Making fixed: " + app);
            }
            app.adjType = "fixed";
            app.adjSeq = this.mAdjSeq;
            app.setCurRawAdj(app.maxAdj);
            app.setHasForegroundActivities(false);
            app.setCurrentSchedulingGroup(2);
            app.curCapability = 7;
            app.setCurProcState(0);
            app.systemNoUi = true;
            if (app == topApp) {
                app.systemNoUi = false;
                app.setCurrentSchedulingGroup(3);
                app.adjType = "pers-top-activity";
            } else if (app.hasTopUi()) {
                app.systemNoUi = false;
                app.adjType = "pers-top-ui";
            } else if (app.getCachedHasVisibleActivities()) {
                app.systemNoUi = false;
            }
            if (!app.systemNoUi) {
                if (this.mService.mWakefulness == 1) {
                    app.setCurProcState(1);
                    app.setCurrentSchedulingGroup(3);
                } else {
                    app.setCurProcState(5);
                    app.setCurrentSchedulingGroup(1);
                }
            }
            app.setCurRawProcState(app.getCurProcState());
            app.curAdj = app.maxAdj;
            app.completedAdjSeq = app.adjSeq;
            return app.curAdj < prevAppAdj || app.getCurProcState() < prevProcState;
        }
        app.systemNoUi = false;
        int PROCESS_STATE_CUR_TOP = this.mService.mAtmInternal.getTopProcessState();
        boolean foregroundActivities3 = false;
        if (PROCESS_STATE_CUR_TOP == 2 && app == topApp) {
            adj = 0;
            schedGroup = 3;
            app.adjType = "top-activity";
            foregroundActivities3 = true;
            procState = PROCESS_STATE_CUR_TOP;
            if (logUid4 == appUid3) {
                this.reportOomAdjMessageLocked("ActivityManager", "Making top: " + app);
            }
        } else if (app.runningRemoteAnimation) {
            adj = 100;
            schedGroup = 3;
            app.adjType = "running-remote-anim";
            procState = PROCESS_STATE_CUR_TOP;
            if (logUid4 == appUid3) {
                this.reportOomAdjMessageLocked("ActivityManager", "Making running remote anim: " + app);
            }
        } else if (app.getActiveInstrumentation() != null) {
            adj = 0;
            schedGroup = 2;
            app.adjType = "instrumentation";
            procState = 4;
            if (logUid4 == appUid3) {
                this.reportOomAdjMessageLocked("ActivityManager", "Making instrumentation: " + app);
            }
        } else if (app.getCachedIsReceivingBroadcast(this.mTmpBroadcastQueue)) {
            adj = 0;
            schedGroup = this.mTmpBroadcastQueue.contains(this.mService.mFgBroadcastQueue) ? 2 : 0;
            app.adjType = INetd.IF_FLAG_BROADCAST;
            procState = 11;
            if (logUid4 == appUid3) {
                this.reportOomAdjMessageLocked("ActivityManager", "Making broadcast: " + app);
            }
        } else if (app.executingServices.size() > 0) {
            adj = 0;
            schedGroup = app.execServicesFg ? 2 : 0;
            app.adjType = "exec-service";
            procState = 10;
            if (logUid4 == appUid3) {
                this.reportOomAdjMessageLocked("ActivityManager", "Making exec-service: " + app);
            }
        } else if (app == topApp) {
            adj = 0;
            schedGroup = 0;
            app.adjType = "top-sleeping";
            foregroundActivities3 = true;
            procState = PROCESS_STATE_CUR_TOP;
            if (logUid4 == appUid3) {
                this.reportOomAdjMessageLocked("ActivityManager", "Making top (sleeping): " + app);
            }
        } else {
            schedGroup = 0;
            adj = cachedAdj;
            procState = 19;
            if (!app.containsCycle) {
                app.setCached(true);
                app.empty = true;
                app.adjType = "cch-empty";
            }
            if (logUid4 == appUid3) {
                this.reportOomAdjMessageLocked("ActivityManager", "Making empty: " + app);
            }
        }
        int schedGroup6 = schedGroup;
        boolean foregroundActivities4 = foregroundActivities3;
        int adj8 = adj;
        int adj9 = procState;
        if (!foregroundActivities4 && app.getCachedHasActivities()) {
            logUid = logUid4;
            z = false;
            app.computeOomAdjFromActivitiesIfNecessary(this.mTmpComputeOomAdjWindowCallback, adj8, foregroundActivities4, adj9, schedGroup6, appUid3, logUid, PROCESS_STATE_CUR_TOP);
            adj2 = app.mCachedAdj;
            boolean foregroundActivities5 = app.mCachedForegroundActivities;
            procState2 = app.mCachedProcState;
            foregroundActivities = foregroundActivities5;
            schedGroup6 = app.mCachedSchedGroup;
        } else {
            logUid = logUid4;
            z = false;
            procState2 = adj9;
            adj2 = adj8;
            foregroundActivities = foregroundActivities4;
        }
        if (procState2 <= 18 || !app.getCachedHasRecentTasks()) {
            logUid2 = logUid;
            appUid = appUid3;
        } else {
            procState2 = 18;
            app.adjType = "cch-rec";
            logUid2 = logUid;
            appUid = appUid3;
            if (logUid2 == appUid) {
                this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to cached recent: " + app);
            }
        }
        String str5 = ": ";
        String str6 = "Raise to ";
        if (adj2 > 200 || procState2 > 4) {
            if (app.hasForegroundServices()) {
                adj2 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                procState2 = 4;
                app.adjType = "fg-service";
                app.setCached(z);
                schedGroup6 = 2;
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise to " + app.adjType + ": " + app + " ");
                }
            } else if (app.hasOverlayUi()) {
                adj2 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                procState2 = 6;
                app.setCached(z);
                app.adjType = "has-overlay-ui";
                schedGroup6 = 2;
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise to overlay ui: " + app);
                }
            }
        }
        if (app.hasForegroundServices() && adj2 > 50) {
            capability = 0;
            adj3 = adj2;
            j = now;
            if (app.lastTopTime + this.mConstants.TOP_TO_FGS_GRACE_DURATION > j || app.setProcState <= 2) {
                app.adjType = "fg-service-act";
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise to recent fg: " + app);
                }
                adj3 = 50;
            }
        } else {
            capability = 0;
            adj3 = adj2;
            j = now;
        }
        if ((adj3 > 200 || procState2 > 8) && app.forcingToImportant != null) {
            adj3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
            procState2 = 8;
            app.setCached(false);
            app.adjType = "force-imp";
            app.adjSource = app.forcingToImportant;
            schedGroup6 = 2;
            if (logUid2 == appUid) {
                this.reportOomAdjMessageLocked("ActivityManager", "Raise to force imp: " + app);
            }
        }
        if (app.getCachedIsHeavyWeight()) {
            if (adj3 > 400) {
                adj3 = 400;
                schedGroup6 = 0;
                app.setCached(false);
                app.adjType = "heavy";
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to heavy: " + app);
                }
            }
            if (procState2 > 13) {
                procState2 = 13;
                app.adjType = "heavy";
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to heavy: " + app);
                }
            }
        }
        if (app.getCachedIsHomeProcess()) {
            if (adj3 > 600) {
                adj3 = SystemService.PHASE_THIRD_PARTY_APPS_CAN_START;
                schedGroup6 = 0;
                app.setCached(false);
                app.adjType = "home";
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to home: " + app);
                }
            }
            if (procState2 > 14) {
                procState2 = 14;
                app.adjType = "home";
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to home: " + app);
                }
            }
        }
        if (app.getCachedIsPreviousProcess() && app.getCachedHasActivities()) {
            if (adj3 > 700) {
                adj3 = 700;
                schedGroup6 = 0;
                app.setCached(false);
                app.adjType = "previous";
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to prev: " + app);
                }
            }
            if (procState2 <= 15) {
                schedGroup2 = schedGroup6;
            } else {
                procState2 = 15;
                app.adjType = "previous";
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to prev: " + app);
                }
                schedGroup2 = schedGroup6;
            }
        } else {
            schedGroup2 = schedGroup6;
        }
        if (cycleReEval) {
            procState2 = Math.min(procState2, app.getCurRawProcState());
            adj3 = Math.min(adj3, app.getCurRawAdj());
            schedGroup2 = Math.max(schedGroup2, app.getCurrentSchedulingGroup());
        }
        app.setCurRawAdj(adj3);
        app.setCurRawProcState(procState2);
        app.hasStartedServices = false;
        app.adjSeq = this.mAdjSeq;
        BackupRecord backupTarget2 = this.mService.mBackupTargets.get(app.userId);
        if (backupTarget2 == null || app != backupTarget2.app) {
            schedGroup2 = schedGroup2;
        } else {
            if (adj3 <= 300) {
                schedGroup2 = schedGroup2;
            } else {
                adj3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR;
                if (procState2 > 8) {
                    procState2 = 8;
                }
                app.adjType = BatteryService.HealthServiceWrapper.INSTANCE_HEALTHD;
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to backup: " + app);
                }
                app.setCached(false);
            }
            if (procState2 > 9) {
                procState2 = 9;
                app.adjType = BatteryService.HealthServiceWrapper.INSTANCE_HEALTHD;
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to backup: " + app);
                }
            }
        }
        int capabilityFromFGS2 = 0;
        int capability4 = capability;
        int adj10 = adj3;
        int is = app.numberOfRunningServices() - 1;
        while (true) {
            foregroundActivities2 = foregroundActivities;
            if (is < 0 || (adj10 <= 0 && schedGroup2 != 0 && procState2 <= 2)) {
                break;
                break;
            }
            ServiceRecord s2 = app.getRunningServiceAt(is);
            String str7 = str6;
            if (!s2.startRequested) {
                s = s2;
                backupTarget = backupTarget2;
                capability3 = capability4;
            } else {
                app.hasStartedServices = true;
                if (procState2 > 10) {
                    app.adjType = "started-services";
                    if (logUid2 == appUid) {
                        this.reportOomAdjMessageLocked("ActivityManager", "Raise procstate to started service: " + app);
                    }
                    procState2 = 10;
                }
                if (!s2.mKeepWarming && app.hasShownUi && !app.getCachedIsHomeProcess()) {
                    if (adj10 > 500) {
                        app.adjType = "cch-started-ui-services";
                    }
                    s = s2;
                    backupTarget = backupTarget2;
                    capability3 = capability4;
                } else {
                    if (s2.mKeepWarming) {
                        s = s2;
                        backupTarget = backupTarget2;
                        capability3 = capability4;
                    } else {
                        backupTarget = backupTarget2;
                        capability3 = capability4;
                        s = s2;
                        if (j >= s2.lastActivity + this.mConstants.MAX_SERVICE_INACTIVITY) {
                            this = this;
                        }
                        if (adj10 > 500) {
                            app.adjType = "cch-started-services";
                        }
                    }
                    if (adj10 <= 500) {
                        this = this;
                    } else {
                        adj10 = 500;
                        app.adjType = "started-services";
                        if (logUid2 != appUid) {
                            this = this;
                        } else {
                            this = this;
                            this.reportOomAdjMessageLocked("ActivityManager", "Raise adj to started service: " + app);
                        }
                        app.setCached(false);
                    }
                    if (adj10 > 500) {
                        app.adjType = "cch-started-services";
                    }
                }
            }
            ServiceRecord s3 = s;
            if (s3.isForeground) {
                int fgsType = s3.foregroundServiceType;
                if (s3.mAllowWhileInUsePermissionInFgs) {
                    int capabilityFromFGS3 = ((fgsType & 8) != 0 ? 1 : 0) | capabilityFromFGS2;
                    boolean enabled2 = false;
                    try {
                        procState2 = procState2;
                        try {
                            enabled2 = this.mPlatformCompat.isChangeEnabled(CAMERA_MICROPHONE_CAPABILITY_CHANGE_ID, s3.appInfo);
                        } catch (RemoteException e) {
                        }
                    } catch (RemoteException e2) {
                        procState2 = procState2;
                    }
                    if (enabled2) {
                        capabilityFromFGS = ((fgsType & 64) != 0 ? 2 : 0) | capabilityFromFGS3 | ((fgsType & 128) != 0 ? 4 : 0);
                    } else {
                        capabilityFromFGS = capabilityFromFGS3 | 6;
                    }
                }
                serviceConnections = s3.getConnections();
                conni = serviceConnections.size() - 1;
                procState2 = procState2;
                while (conni >= 0 && (adj10 > 0 || schedGroup2 == 0 || procState2 > 2)) {
                    clist = serviceConnections.valueAt(conni);
                    int i4 = adj10;
                    i2 = 0;
                    procState2 = procState2;
                    adj10 = i4;
                    while (i2 < clist.size() && (adj10 > 0 || schedGroup2 == 0 || procState2 > 2)) {
                        cr = clist.get(i2);
                        clist2 = clist;
                        if (cr.binding.client == app) {
                            adj10 = adj10;
                            i2 = i2;
                            logUid2 = logUid2;
                            str5 = str5;
                            capabilityFromFGS = capabilityFromFGS;
                            serviceConnections = serviceConnections;
                            foregroundActivities2 = foregroundActivities2;
                            clist2 = clist2;
                            str7 = str7;
                            conni = conni;
                            appUid = appUid;
                            s3 = s3;
                            is = is;
                        } else {
                            trackedProcState = false;
                            client2 = cr.binding.client;
                            if (computeClients) {
                                computeOomAdjLocked(client2, cachedAdj, topApp, doingAll, now, cycleReEval, true);
                                client3 = client2;
                            } else {
                                client3 = client2;
                                client3.setCurRawAdj(client3.setAdj);
                                client3.setCurRawProcState(client3.setProcState);
                            }
                            clientAdj = client3.getCurRawAdj();
                            clientProcState = client3.getCurRawProcState();
                            if ((cr.flags & 32) == 0) {
                                cr2 = cr;
                                if (shouldSkipDueToCycle(app, client3, procState2, adj10, cycleReEval)) {
                                    if (cr2.hasFlag(4096)) {
                                        capability3 |= client3.curCapability;
                                    }
                                    if (clientProcState >= 16) {
                                        clientProcState = 19;
                                    }
                                    adjType = null;
                                    if ((cr2.flags & 16) != 0) {
                                        procState3 = procState2;
                                        procState2 = clientProcState;
                                        adj5 = adj10;
                                        j3 = now;
                                    } else if (app.hasShownUi || app.getCachedIsHomeProcess()) {
                                        adj5 = adj10;
                                        procState3 = procState2;
                                        j4 = s3.lastActivity + this.mConstants.MAX_SERVICE_INACTIVITY;
                                        procState2 = clientProcState;
                                        j3 = now;
                                        if (j3 >= j4) {
                                            if (adj5 > clientAdj) {
                                                adjType = "cch-bound-services";
                                            }
                                            clientAdj = adj5;
                                        }
                                    } else {
                                        adj5 = adj10;
                                        if (adj5 > clientAdj) {
                                            adjType = "cch-bound-ui-services";
                                        }
                                        app.setCached(false);
                                        clientAdj = adj5;
                                        procState3 = procState2;
                                        j3 = now;
                                    }
                                    if (adj5 <= clientAdj) {
                                        if (app.hasShownUi || app.getCachedIsHomeProcess()) {
                                            c = 200;
                                        } else {
                                            c = 200;
                                            if (clientAdj > 200) {
                                                if (adj5 >= 900) {
                                                    adjType = "cch-bound-ui-services";
                                                    client3 = client3;
                                                    j3 = j3;
                                                    schedGroup4 = schedGroup2;
                                                    this = this;
                                                }
                                            }
                                            if ((cr2.flags & 8388612) == 0) {
                                                curSchedGroup2 = client3.getCurrentSchedulingGroup();
                                                if (curSchedGroup2 > schedGroup4) {
                                                    if ((cr2.flags & 64) != 0) {
                                                        schedGroup4 = curSchedGroup2;
                                                    } else {
                                                        schedGroup4 = 2;
                                                    }
                                                }
                                                if (procState2 < 2) {
                                                    if (cr2.hasFlag(67108864)) {
                                                        procState2 = 5;
                                                        schedGroup5 = schedGroup4;
                                                        adj6 = adj5;
                                                    } else {
                                                        schedGroup5 = schedGroup4;
                                                        if (this.mService.mWakefulness != 1 && (cr2.flags & 33554432) != 0) {
                                                            procState2 = 5;
                                                            adj6 = adj5;
                                                        } else {
                                                            procState2 = 6;
                                                            adj6 = adj5;
                                                        }
                                                    }
                                                } else {
                                                    schedGroup5 = schedGroup4;
                                                    if (procState2 == 2) {
                                                        try {
                                                            IPlatformCompat iPlatformCompat = this.mPlatformCompat;
                                                            try {
                                                                ApplicationInfo applicationInfo = client3.info;
                                                                adj6 = adj5;
                                                                try {
                                                                    enabled = iPlatformCompat.isChangeEnabled(PROCESS_CAPABILITY_CHANGE_ID, applicationInfo);
                                                                } catch (RemoteException e3) {
                                                                    enabled = false;
                                                                }
                                                            } catch (RemoteException e4) {
                                                                adj6 = adj5;
                                                            }
                                                        } catch (RemoteException e5) {
                                                            adj6 = adj5;
                                                        }
                                                        if (!enabled && !cr2.hasFlag(4096)) {
                                                            procState2 = 3;
                                                        } else {
                                                            capability3 |= 7;
                                                            procState2 = 3;
                                                        }
                                                    } else {
                                                        adj6 = adj5;
                                                    }
                                                }
                                                curSchedGroup = procState2;
                                                schedGroup4 = schedGroup5;
                                            } else {
                                                adj6 = adj5;
                                                if ((cr2.flags & 8388608) == 0) {
                                                    if (procState2 < 8) {
                                                        curSchedGroup = 8;
                                                    } else {
                                                        curSchedGroup = procState2;
                                                    }
                                                } else if (procState2 < 7) {
                                                    curSchedGroup = 7;
                                                } else {
                                                    curSchedGroup = procState2;
                                                }
                                            }
                                            if (schedGroup4 >= 3 && (cr2.flags & 524288) != 0) {
                                                schedGroup2 = 3;
                                            } else {
                                                schedGroup2 = schedGroup4;
                                            }
                                            if (!trackedProcState) {
                                                cr2.trackProcState(curSchedGroup, this.mAdjSeq, j3);
                                            }
                                            if (procState3 <= curSchedGroup) {
                                                procState2 = procState3;
                                            } else {
                                                procState2 = curSchedGroup;
                                                app.setCurRawProcState(procState2);
                                                if (adjType == null) {
                                                    adjType = "service";
                                                }
                                            }
                                            if (procState2 < 7 && (cr2.flags & AudioFormat.APTX) != 0) {
                                                app.setPendingUiClean(true);
                                            }
                                            if (adjType != null) {
                                                app.adjType = adjType;
                                                app.adjTypeCode = 2;
                                                app.adjSource = cr2.binding.client;
                                                app.adjSourceProcState = curSchedGroup;
                                                app.adjTarget = s3.instanceName;
                                                logUid3 = logUid2;
                                                if (logUid3 == appUid) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append(str7);
                                                    sb.append(adjType);
                                                    str3 = str5;
                                                    sb.append(str3);
                                                    sb.append(app);
                                                    sb.append(", due to ");
                                                    sb.append(cr2.binding.client);
                                                    sb.append(" adj=");
                                                    adj7 = adj6;
                                                    sb.append(adj7);
                                                    sb.append(" procState=");
                                                    sb.append(ProcessList.makeProcStateString(procState2));
                                                    this.reportOomAdjMessageLocked("ActivityManager", sb.toString());
                                                } else {
                                                    adj7 = adj6;
                                                    str3 = str5;
                                                }
                                            } else {
                                                adj7 = adj6;
                                                logUid3 = logUid2;
                                                str3 = str5;
                                            }
                                            conni2 = logUid3;
                                            adj10 = adj7;
                                            z3 = true;
                                        }
                                        if ((cr2.flags & 72) != 0) {
                                            if (clientAdj >= -700) {
                                                newAdj2 = clientAdj;
                                                client3 = client3;
                                                j3 = j3;
                                                this = this;
                                            } else {
                                                newAdj2 = -700;
                                                schedGroup2 = 2;
                                                procState3 = 0;
                                                client3 = client3;
                                                j3 = j3;
                                                this = this;
                                                cr2.trackProcState(0, this.mAdjSeq, j3);
                                                trackedProcState = true;
                                            }
                                        } else {
                                            client3 = client3;
                                            j3 = j3;
                                            this = this;
                                            if ((cr2.flags & 256) == 0 && clientAdj <= 200 && adj5 >= 250) {
                                                newAdj2 = 250;
                                            } else {
                                                newAdj = cr2.flags;
                                                if ((newAdj & 1073741824) != 0) {
                                                    i3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                    if (clientAdj >= 200 && adj5 >= 200) {
                                                        newAdj2 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                    }
                                                } else {
                                                    i3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                }
                                                if (clientAdj >= i3) {
                                                    newAdj2 = clientAdj;
                                                } else if (adj5 > 100) {
                                                    newAdj2 = Math.max(clientAdj, 100);
                                                } else {
                                                    newAdj2 = adj5;
                                                }
                                            }
                                        }
                                        if (!client3.isCached()) {
                                            app.setCached(false);
                                        }
                                        if (adj5 <= newAdj2) {
                                            schedGroup4 = schedGroup2;
                                        } else {
                                            adj5 = newAdj2;
                                            app.setCurRawAdj(adj5);
                                            adjType = "service";
                                            schedGroup4 = schedGroup2;
                                        }
                                        if ((cr2.flags & 8388612) == 0) {
                                            curSchedGroup2 = client3.getCurrentSchedulingGroup();
                                            if (curSchedGroup2 > schedGroup4) {
                                                if ((cr2.flags & 64) != 0) {
                                                    schedGroup4 = curSchedGroup2;
                                                } else {
                                                    schedGroup4 = 2;
                                                }
                                            }
                                            if (procState2 < 2) {
                                                if (cr2.hasFlag(67108864)) {
                                                    procState2 = 5;
                                                    schedGroup5 = schedGroup4;
                                                    adj6 = adj5;
                                                } else {
                                                    schedGroup5 = schedGroup4;
                                                    if (this.mService.mWakefulness != 1) {
                                                        procState2 = 6;
                                                        adj6 = adj5;
                                                    } else {
                                                        procState2 = 6;
                                                        adj6 = adj5;
                                                    }
                                                }
                                            } else {
                                                schedGroup5 = schedGroup4;
                                                if (procState2 == 2) {
                                                    IPlatformCompat iPlatformCompat2 = this.mPlatformCompat;
                                                    ApplicationInfo applicationInfo2 = client3.info;
                                                    adj6 = adj5;
                                                    enabled = iPlatformCompat2.isChangeEnabled(PROCESS_CAPABILITY_CHANGE_ID, applicationInfo2);
                                                    if (!enabled) {
                                                        capability3 |= 7;
                                                        procState2 = 3;
                                                    } else {
                                                        capability3 |= 7;
                                                        procState2 = 3;
                                                    }
                                                } else {
                                                    adj6 = adj5;
                                                }
                                            }
                                            curSchedGroup = procState2;
                                            schedGroup4 = schedGroup5;
                                        } else {
                                            adj6 = adj5;
                                            if ((cr2.flags & 8388608) == 0) {
                                                if (procState2 < 8) {
                                                    curSchedGroup = 8;
                                                } else {
                                                    curSchedGroup = procState2;
                                                }
                                            } else if (procState2 < 7) {
                                                curSchedGroup = 7;
                                            } else {
                                                curSchedGroup = procState2;
                                            }
                                        }
                                        if (schedGroup4 >= 3) {
                                            schedGroup2 = schedGroup4;
                                        } else {
                                            schedGroup2 = schedGroup4;
                                        }
                                        if (!trackedProcState) {
                                            cr2.trackProcState(curSchedGroup, this.mAdjSeq, j3);
                                        }
                                        if (procState3 <= curSchedGroup) {
                                            procState2 = procState3;
                                        } else {
                                            procState2 = curSchedGroup;
                                            app.setCurRawProcState(procState2);
                                            if (adjType == null) {
                                                adjType = "service";
                                            }
                                        }
                                        if (procState2 < 7) {
                                            app.setPendingUiClean(true);
                                        }
                                        if (adjType != null) {
                                            app.adjType = adjType;
                                            app.adjTypeCode = 2;
                                            app.adjSource = cr2.binding.client;
                                            app.adjSourceProcState = curSchedGroup;
                                            app.adjTarget = s3.instanceName;
                                            logUid3 = logUid2;
                                            if (logUid3 == appUid) {
                                                StringBuilder sb2 = new StringBuilder();
                                                sb2.append(str7);
                                                sb2.append(adjType);
                                                str3 = str5;
                                                sb2.append(str3);
                                                sb2.append(app);
                                                sb2.append(", due to ");
                                                sb2.append(cr2.binding.client);
                                                sb2.append(" adj=");
                                                adj7 = adj6;
                                                sb2.append(adj7);
                                                sb2.append(" procState=");
                                                sb2.append(ProcessList.makeProcStateString(procState2));
                                                this.reportOomAdjMessageLocked("ActivityManager", sb2.toString());
                                            } else {
                                                adj7 = adj6;
                                                str3 = str5;
                                            }
                                        } else {
                                            adj7 = adj6;
                                            logUid3 = logUid2;
                                            str3 = str5;
                                        }
                                        conni2 = logUid3;
                                        adj10 = adj7;
                                        z3 = true;
                                    }
                                    schedGroup4 = schedGroup2;
                                    if ((cr2.flags & 8388612) == 0) {
                                        curSchedGroup2 = client3.getCurrentSchedulingGroup();
                                        if (curSchedGroup2 > schedGroup4) {
                                            if ((cr2.flags & 64) != 0) {
                                                schedGroup4 = curSchedGroup2;
                                            } else {
                                                schedGroup4 = 2;
                                            }
                                        }
                                        if (procState2 < 2) {
                                            if (cr2.hasFlag(67108864)) {
                                                procState2 = 5;
                                                schedGroup5 = schedGroup4;
                                                adj6 = adj5;
                                            } else {
                                                schedGroup5 = schedGroup4;
                                                if (this.mService.mWakefulness != 1) {
                                                    procState2 = 6;
                                                    adj6 = adj5;
                                                } else {
                                                    procState2 = 6;
                                                    adj6 = adj5;
                                                }
                                            }
                                        } else {
                                            schedGroup5 = schedGroup4;
                                            if (procState2 == 2) {
                                                IPlatformCompat iPlatformCompat3 = this.mPlatformCompat;
                                                ApplicationInfo applicationInfo3 = client3.info;
                                                adj6 = adj5;
                                                enabled = iPlatformCompat3.isChangeEnabled(PROCESS_CAPABILITY_CHANGE_ID, applicationInfo3);
                                                if (!enabled) {
                                                    capability3 |= 7;
                                                    procState2 = 3;
                                                } else {
                                                    capability3 |= 7;
                                                    procState2 = 3;
                                                }
                                            } else {
                                                adj6 = adj5;
                                            }
                                        }
                                        curSchedGroup = procState2;
                                        schedGroup4 = schedGroup5;
                                    } else {
                                        adj6 = adj5;
                                        if ((cr2.flags & 8388608) == 0) {
                                            if (procState2 < 8) {
                                                curSchedGroup = 8;
                                            } else {
                                                curSchedGroup = procState2;
                                            }
                                        } else if (procState2 < 7) {
                                            curSchedGroup = 7;
                                        } else {
                                            curSchedGroup = procState2;
                                        }
                                    }
                                    if (schedGroup4 >= 3) {
                                        schedGroup2 = schedGroup4;
                                    } else {
                                        schedGroup2 = schedGroup4;
                                    }
                                    if (!trackedProcState) {
                                        cr2.trackProcState(curSchedGroup, this.mAdjSeq, j3);
                                    }
                                    if (procState3 <= curSchedGroup) {
                                        procState2 = procState3;
                                    } else {
                                        procState2 = curSchedGroup;
                                        app.setCurRawProcState(procState2);
                                        if (adjType == null) {
                                            adjType = "service";
                                        }
                                    }
                                    if (procState2 < 7) {
                                        app.setPendingUiClean(true);
                                    }
                                    if (adjType != null) {
                                        app.adjType = adjType;
                                        app.adjTypeCode = 2;
                                        app.adjSource = cr2.binding.client;
                                        app.adjSourceProcState = curSchedGroup;
                                        app.adjTarget = s3.instanceName;
                                        logUid3 = logUid2;
                                        if (logUid3 == appUid) {
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append(str7);
                                            sb3.append(adjType);
                                            str3 = str5;
                                            sb3.append(str3);
                                            sb3.append(app);
                                            sb3.append(", due to ");
                                            sb3.append(cr2.binding.client);
                                            sb3.append(" adj=");
                                            adj7 = adj6;
                                            sb3.append(adj7);
                                            sb3.append(" procState=");
                                            sb3.append(ProcessList.makeProcStateString(procState2));
                                            this.reportOomAdjMessageLocked("ActivityManager", sb3.toString());
                                        } else {
                                            adj7 = adj6;
                                            str3 = str5;
                                        }
                                    } else {
                                        adj7 = adj6;
                                        logUid3 = logUid2;
                                        str3 = str5;
                                    }
                                    conni2 = logUid3;
                                    adj10 = adj7;
                                    z3 = true;
                                }
                                i2++;
                                logUid2 = conni2;
                                appUid = appUid;
                                s3 = s3;
                                clist = clist2;
                                is = is;
                                conni = conni;
                                str7 = str7;
                                str5 = str5;
                                capabilityFromFGS = capabilityFromFGS;
                                serviceConnections = serviceConnections;
                                foregroundActivities2 = foregroundActivities2;
                            } else {
                                int logUid5 = procState2;
                                cr2 = cr;
                                int adj11 = adj10;
                                conni2 = logUid2;
                                str3 = str5;
                                if (clientAdj < 900) {
                                    z3 = true;
                                } else {
                                    z3 = true;
                                    app.shouldNotFreeze = true;
                                }
                                procState2 = logUid5;
                                adj10 = adj11;
                            }
                            if ((cr2.flags & AudioFormat.OPUS) != 0) {
                                app.treatLikeActivity = z3;
                            }
                            activityServiceConnectionsHolder = cr2.activity;
                            if ((cr2.flags & 128) != 0) {
                                str5 = str3;
                            } else if (activityServiceConnectionsHolder != null || adj10 <= 0) {
                                str5 = str3;
                            } else if (!activityServiceConnectionsHolder.isActivityVisible()) {
                                str5 = str3;
                            } else {
                                adj10 = 0;
                                app.setCurRawAdj(0);
                                str5 = str3;
                                if ((cr2.flags & 4) == 0) {
                                    if ((cr2.flags & 64) != 0) {
                                        schedGroup2 = 4;
                                    } else {
                                        schedGroup2 = 2;
                                    }
                                }
                                app.setCached(false);
                                app.adjType = "service";
                                app.adjTypeCode = 2;
                                app.adjSource = activityServiceConnectionsHolder;
                                app.adjSourceProcState = procState2;
                                app.adjTarget = s3.instanceName;
                                if (conni2 == appUid) {
                                    this.reportOomAdjMessageLocked("ActivityManager", "Raise to service w/activity: " + app);
                                }
                            }
                            i2++;
                            logUid2 = conni2;
                            appUid = appUid;
                            s3 = s3;
                            clist = clist2;
                            is = is;
                            conni = conni;
                            str7 = str7;
                            str5 = str5;
                            capabilityFromFGS = capabilityFromFGS;
                            serviceConnections = serviceConnections;
                            foregroundActivities2 = foregroundActivities2;
                        }
                        adj10 = adj10;
                        conni2 = logUid2;
                        i2++;
                        logUid2 = conni2;
                        appUid = appUid;
                        s3 = s3;
                        clist = clist2;
                        is = is;
                        conni = conni;
                        str7 = str7;
                        str5 = str5;
                        capabilityFromFGS = capabilityFromFGS;
                        serviceConnections = serviceConnections;
                        foregroundActivities2 = foregroundActivities2;
                    }
                    logUid2 = logUid2;
                    appUid = appUid;
                    s3 = s3;
                    is = is;
                    str7 = str7;
                    str5 = str5;
                    capabilityFromFGS = capabilityFromFGS;
                    serviceConnections = serviceConnections;
                    foregroundActivities2 = foregroundActivities2;
                    conni--;
                }
                is--;
                j = now;
                appUid = appUid;
                backupTarget2 = backupTarget;
                capability4 = capability3;
                str5 = str5;
                capabilityFromFGS2 = capabilityFromFGS;
                foregroundActivities = foregroundActivities2;
                logUid2 = logUid2;
                str6 = str7;
            }
            capabilityFromFGS = capabilityFromFGS2;
            serviceConnections = s3.getConnections();
            conni = serviceConnections.size() - 1;
            procState2 = procState2;
            while (conni >= 0) {
                clist = serviceConnections.valueAt(conni);
                int i5 = adj10;
                i2 = 0;
                procState2 = procState2;
                adj10 = i5;
                while (i2 < clist.size()) {
                    cr = clist.get(i2);
                    clist2 = clist;
                    if (cr.binding.client == app) {
                        adj10 = adj10;
                        i2 = i2;
                        logUid2 = logUid2;
                        str5 = str5;
                        capabilityFromFGS = capabilityFromFGS;
                        serviceConnections = serviceConnections;
                        foregroundActivities2 = foregroundActivities2;
                        clist2 = clist2;
                        str7 = str7;
                        conni = conni;
                        appUid = appUid;
                        s3 = s3;
                        is = is;
                    } else {
                        trackedProcState = false;
                        client2 = cr.binding.client;
                        if (computeClients) {
                            computeOomAdjLocked(client2, cachedAdj, topApp, doingAll, now, cycleReEval, true);
                            client3 = client2;
                        } else {
                            client3 = client2;
                            client3.setCurRawAdj(client3.setAdj);
                            client3.setCurRawProcState(client3.setProcState);
                        }
                        clientAdj = client3.getCurRawAdj();
                        clientProcState = client3.getCurRawProcState();
                        if ((cr.flags & 32) == 0) {
                            cr2 = cr;
                            if (shouldSkipDueToCycle(app, client3, procState2, adj10, cycleReEval)) {
                                if (cr2.hasFlag(4096)) {
                                    capability3 |= client3.curCapability;
                                }
                                if (clientProcState >= 16) {
                                    clientProcState = 19;
                                }
                                adjType = null;
                                if ((cr2.flags & 16) != 0) {
                                    procState3 = procState2;
                                    procState2 = clientProcState;
                                    adj5 = adj10;
                                    j3 = now;
                                } else if (app.hasShownUi) {
                                    adj5 = adj10;
                                    procState3 = procState2;
                                    j4 = s3.lastActivity + this.mConstants.MAX_SERVICE_INACTIVITY;
                                    procState2 = clientProcState;
                                    j3 = now;
                                    if (j3 >= j4) {
                                        if (adj5 > clientAdj) {
                                            adjType = "cch-bound-services";
                                        }
                                        clientAdj = adj5;
                                    }
                                } else {
                                    adj5 = adj10;
                                    procState3 = procState2;
                                    j4 = s3.lastActivity + this.mConstants.MAX_SERVICE_INACTIVITY;
                                    procState2 = clientProcState;
                                    j3 = now;
                                    if (j3 >= j4) {
                                        if (adj5 > clientAdj) {
                                            adjType = "cch-bound-services";
                                        }
                                        clientAdj = adj5;
                                    }
                                }
                                if (adj5 <= clientAdj) {
                                    if (app.hasShownUi) {
                                        c = 200;
                                        if ((cr2.flags & 72) != 0) {
                                            if (clientAdj >= -700) {
                                                newAdj2 = clientAdj;
                                                client3 = client3;
                                                j3 = j3;
                                                this = this;
                                            } else {
                                                newAdj2 = -700;
                                                schedGroup2 = 2;
                                                procState3 = 0;
                                                client3 = client3;
                                                j3 = j3;
                                                this = this;
                                                cr2.trackProcState(0, this.mAdjSeq, j3);
                                                trackedProcState = true;
                                            }
                                        } else {
                                            client3 = client3;
                                            j3 = j3;
                                            this = this;
                                            if ((cr2.flags & 256) == 0) {
                                                newAdj = cr2.flags;
                                                if ((newAdj & 1073741824) != 0) {
                                                    i3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                    if (clientAdj >= 200) {
                                                    }
                                                } else {
                                                    i3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                }
                                                if (clientAdj >= i3) {
                                                    newAdj2 = clientAdj;
                                                } else if (adj5 > 100) {
                                                    newAdj2 = Math.max(clientAdj, 100);
                                                } else {
                                                    newAdj2 = adj5;
                                                }
                                            } else {
                                                newAdj = cr2.flags;
                                                if ((newAdj & 1073741824) != 0) {
                                                    i3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                    if (clientAdj >= 200) {
                                                    }
                                                } else {
                                                    i3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                }
                                                if (clientAdj >= i3) {
                                                    newAdj2 = clientAdj;
                                                } else if (adj5 > 100) {
                                                    newAdj2 = Math.max(clientAdj, 100);
                                                } else {
                                                    newAdj2 = adj5;
                                                }
                                            }
                                        }
                                        if (!client3.isCached()) {
                                            app.setCached(false);
                                        }
                                        if (adj5 <= newAdj2) {
                                            schedGroup4 = schedGroup2;
                                        } else {
                                            adj5 = newAdj2;
                                            app.setCurRawAdj(adj5);
                                            adjType = "service";
                                            schedGroup4 = schedGroup2;
                                        }
                                    } else {
                                        c = 200;
                                        if ((cr2.flags & 72) != 0) {
                                            if (clientAdj >= -700) {
                                                newAdj2 = clientAdj;
                                                client3 = client3;
                                                j3 = j3;
                                                this = this;
                                            } else {
                                                newAdj2 = -700;
                                                schedGroup2 = 2;
                                                procState3 = 0;
                                                client3 = client3;
                                                j3 = j3;
                                                this = this;
                                                cr2.trackProcState(0, this.mAdjSeq, j3);
                                                trackedProcState = true;
                                            }
                                        } else {
                                            client3 = client3;
                                            j3 = j3;
                                            this = this;
                                            if ((cr2.flags & 256) == 0) {
                                                newAdj = cr2.flags;
                                                if ((newAdj & 1073741824) != 0) {
                                                    i3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                    if (clientAdj >= 200) {
                                                    }
                                                } else {
                                                    i3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                }
                                                if (clientAdj >= i3) {
                                                    newAdj2 = clientAdj;
                                                } else if (adj5 > 100) {
                                                    newAdj2 = Math.max(clientAdj, 100);
                                                } else {
                                                    newAdj2 = adj5;
                                                }
                                            } else {
                                                newAdj = cr2.flags;
                                                if ((newAdj & 1073741824) != 0) {
                                                    i3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                    if (clientAdj >= 200) {
                                                    }
                                                } else {
                                                    i3 = DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE;
                                                }
                                                if (clientAdj >= i3) {
                                                    newAdj2 = clientAdj;
                                                } else if (adj5 > 100) {
                                                    newAdj2 = Math.max(clientAdj, 100);
                                                } else {
                                                    newAdj2 = adj5;
                                                }
                                            }
                                        }
                                        if (!client3.isCached()) {
                                            app.setCached(false);
                                        }
                                        if (adj5 <= newAdj2) {
                                            schedGroup4 = schedGroup2;
                                        } else {
                                            adj5 = newAdj2;
                                            app.setCurRawAdj(adj5);
                                            adjType = "service";
                                            schedGroup4 = schedGroup2;
                                        }
                                    }
                                    if ((cr2.flags & 8388612) == 0) {
                                        curSchedGroup2 = client3.getCurrentSchedulingGroup();
                                        if (curSchedGroup2 > schedGroup4) {
                                            if ((cr2.flags & 64) != 0) {
                                                schedGroup4 = curSchedGroup2;
                                            } else {
                                                schedGroup4 = 2;
                                            }
                                        }
                                        if (procState2 < 2) {
                                            if (cr2.hasFlag(67108864)) {
                                                procState2 = 5;
                                                schedGroup5 = schedGroup4;
                                                adj6 = adj5;
                                            } else {
                                                schedGroup5 = schedGroup4;
                                                if (this.mService.mWakefulness != 1) {
                                                    procState2 = 6;
                                                    adj6 = adj5;
                                                } else {
                                                    procState2 = 6;
                                                    adj6 = adj5;
                                                }
                                            }
                                        } else {
                                            schedGroup5 = schedGroup4;
                                            if (procState2 == 2) {
                                                IPlatformCompat iPlatformCompat4 = this.mPlatformCompat;
                                                ApplicationInfo applicationInfo4 = client3.info;
                                                adj6 = adj5;
                                                enabled = iPlatformCompat4.isChangeEnabled(PROCESS_CAPABILITY_CHANGE_ID, applicationInfo4);
                                                if (!enabled) {
                                                    capability3 |= 7;
                                                    procState2 = 3;
                                                } else {
                                                    capability3 |= 7;
                                                    procState2 = 3;
                                                }
                                            } else {
                                                adj6 = adj5;
                                            }
                                        }
                                        curSchedGroup = procState2;
                                        schedGroup4 = schedGroup5;
                                    } else {
                                        adj6 = adj5;
                                        if ((cr2.flags & 8388608) == 0) {
                                            if (procState2 < 8) {
                                                curSchedGroup = 8;
                                            } else {
                                                curSchedGroup = procState2;
                                            }
                                        } else if (procState2 < 7) {
                                            curSchedGroup = 7;
                                        } else {
                                            curSchedGroup = procState2;
                                        }
                                    }
                                    if (schedGroup4 >= 3) {
                                        schedGroup2 = schedGroup4;
                                    } else {
                                        schedGroup2 = schedGroup4;
                                    }
                                    if (!trackedProcState) {
                                        cr2.trackProcState(curSchedGroup, this.mAdjSeq, j3);
                                    }
                                    if (procState3 <= curSchedGroup) {
                                        procState2 = procState3;
                                    } else {
                                        procState2 = curSchedGroup;
                                        app.setCurRawProcState(procState2);
                                        if (adjType == null) {
                                            adjType = "service";
                                        }
                                    }
                                    if (procState2 < 7) {
                                        app.setPendingUiClean(true);
                                    }
                                    if (adjType != null) {
                                        app.adjType = adjType;
                                        app.adjTypeCode = 2;
                                        app.adjSource = cr2.binding.client;
                                        app.adjSourceProcState = curSchedGroup;
                                        app.adjTarget = s3.instanceName;
                                        logUid3 = logUid2;
                                        if (logUid3 == appUid) {
                                            StringBuilder sb4 = new StringBuilder();
                                            sb4.append(str7);
                                            sb4.append(adjType);
                                            str3 = str5;
                                            sb4.append(str3);
                                            sb4.append(app);
                                            sb4.append(", due to ");
                                            sb4.append(cr2.binding.client);
                                            sb4.append(" adj=");
                                            adj7 = adj6;
                                            sb4.append(adj7);
                                            sb4.append(" procState=");
                                            sb4.append(ProcessList.makeProcStateString(procState2));
                                            this.reportOomAdjMessageLocked("ActivityManager", sb4.toString());
                                        } else {
                                            adj7 = adj6;
                                            str3 = str5;
                                        }
                                    } else {
                                        adj7 = adj6;
                                        logUid3 = logUid2;
                                        str3 = str5;
                                    }
                                    conni2 = logUid3;
                                    adj10 = adj7;
                                    z3 = true;
                                }
                                schedGroup4 = schedGroup2;
                                if ((cr2.flags & 8388612) == 0) {
                                    curSchedGroup2 = client3.getCurrentSchedulingGroup();
                                    if (curSchedGroup2 > schedGroup4) {
                                        if ((cr2.flags & 64) != 0) {
                                            schedGroup4 = curSchedGroup2;
                                        } else {
                                            schedGroup4 = 2;
                                        }
                                    }
                                    if (procState2 < 2) {
                                        if (cr2.hasFlag(67108864)) {
                                            procState2 = 5;
                                            schedGroup5 = schedGroup4;
                                            adj6 = adj5;
                                        } else {
                                            schedGroup5 = schedGroup4;
                                            if (this.mService.mWakefulness != 1) {
                                                procState2 = 6;
                                                adj6 = adj5;
                                            } else {
                                                procState2 = 6;
                                                adj6 = adj5;
                                            }
                                        }
                                    } else {
                                        schedGroup5 = schedGroup4;
                                        if (procState2 == 2) {
                                            IPlatformCompat iPlatformCompat5 = this.mPlatformCompat;
                                            ApplicationInfo applicationInfo5 = client3.info;
                                            adj6 = adj5;
                                            enabled = iPlatformCompat5.isChangeEnabled(PROCESS_CAPABILITY_CHANGE_ID, applicationInfo5);
                                            if (!enabled) {
                                                capability3 |= 7;
                                                procState2 = 3;
                                            } else {
                                                capability3 |= 7;
                                                procState2 = 3;
                                            }
                                        } else {
                                            adj6 = adj5;
                                        }
                                    }
                                    curSchedGroup = procState2;
                                    schedGroup4 = schedGroup5;
                                } else {
                                    adj6 = adj5;
                                    if ((cr2.flags & 8388608) == 0) {
                                        if (procState2 < 8) {
                                            curSchedGroup = 8;
                                        } else {
                                            curSchedGroup = procState2;
                                        }
                                    } else if (procState2 < 7) {
                                        curSchedGroup = 7;
                                    } else {
                                        curSchedGroup = procState2;
                                    }
                                }
                                if (schedGroup4 >= 3) {
                                    schedGroup2 = schedGroup4;
                                } else {
                                    schedGroup2 = schedGroup4;
                                }
                                if (!trackedProcState) {
                                    cr2.trackProcState(curSchedGroup, this.mAdjSeq, j3);
                                }
                                if (procState3 <= curSchedGroup) {
                                    procState2 = procState3;
                                } else {
                                    procState2 = curSchedGroup;
                                    app.setCurRawProcState(procState2);
                                    if (adjType == null) {
                                        adjType = "service";
                                    }
                                }
                                if (procState2 < 7) {
                                    app.setPendingUiClean(true);
                                }
                                if (adjType != null) {
                                    app.adjType = adjType;
                                    app.adjTypeCode = 2;
                                    app.adjSource = cr2.binding.client;
                                    app.adjSourceProcState = curSchedGroup;
                                    app.adjTarget = s3.instanceName;
                                    logUid3 = logUid2;
                                    if (logUid3 == appUid) {
                                        StringBuilder sb5 = new StringBuilder();
                                        sb5.append(str7);
                                        sb5.append(adjType);
                                        str3 = str5;
                                        sb5.append(str3);
                                        sb5.append(app);
                                        sb5.append(", due to ");
                                        sb5.append(cr2.binding.client);
                                        sb5.append(" adj=");
                                        adj7 = adj6;
                                        sb5.append(adj7);
                                        sb5.append(" procState=");
                                        sb5.append(ProcessList.makeProcStateString(procState2));
                                        this.reportOomAdjMessageLocked("ActivityManager", sb5.toString());
                                    } else {
                                        adj7 = adj6;
                                        str3 = str5;
                                    }
                                } else {
                                    adj7 = adj6;
                                    logUid3 = logUid2;
                                    str3 = str5;
                                }
                                conni2 = logUid3;
                                adj10 = adj7;
                                z3 = true;
                            }
                            i2++;
                            logUid2 = conni2;
                            appUid = appUid;
                            s3 = s3;
                            clist = clist2;
                            is = is;
                            conni = conni;
                            str7 = str7;
                            str5 = str5;
                            capabilityFromFGS = capabilityFromFGS;
                            serviceConnections = serviceConnections;
                            foregroundActivities2 = foregroundActivities2;
                        } else {
                            int logUid6 = procState2;
                            cr2 = cr;
                            int adj12 = adj10;
                            conni2 = logUid2;
                            str3 = str5;
                            if (clientAdj < 900) {
                                z3 = true;
                            } else {
                                z3 = true;
                                app.shouldNotFreeze = true;
                            }
                            procState2 = logUid6;
                            adj10 = adj12;
                        }
                        if ((cr2.flags & AudioFormat.OPUS) != 0) {
                            app.treatLikeActivity = z3;
                        }
                        activityServiceConnectionsHolder = cr2.activity;
                        if ((cr2.flags & 128) != 0) {
                            str5 = str3;
                        } else if (activityServiceConnectionsHolder != null) {
                            str5 = str3;
                        } else {
                            str5 = str3;
                        }
                        i2++;
                        logUid2 = conni2;
                        appUid = appUid;
                        s3 = s3;
                        clist = clist2;
                        is = is;
                        conni = conni;
                        str7 = str7;
                        str5 = str5;
                        capabilityFromFGS = capabilityFromFGS;
                        serviceConnections = serviceConnections;
                        foregroundActivities2 = foregroundActivities2;
                    }
                    adj10 = adj10;
                    conni2 = logUid2;
                    i2++;
                    logUid2 = conni2;
                    appUid = appUid;
                    s3 = s3;
                    clist = clist2;
                    is = is;
                    conni = conni;
                    str7 = str7;
                    str5 = str5;
                    capabilityFromFGS = capabilityFromFGS;
                    serviceConnections = serviceConnections;
                    foregroundActivities2 = foregroundActivities2;
                }
                logUid2 = logUid2;
                appUid = appUid;
                s3 = s3;
                is = is;
                str7 = str7;
                str5 = str5;
                capabilityFromFGS = capabilityFromFGS;
                serviceConnections = serviceConnections;
                foregroundActivities2 = foregroundActivities2;
                conni--;
            }
            is--;
            j = now;
            appUid = appUid;
            backupTarget2 = backupTarget;
            capability4 = capability3;
            str5 = str5;
            capabilityFromFGS2 = capabilityFromFGS;
            foregroundActivities = foregroundActivities2;
            logUid2 = logUid2;
            str6 = str7;
        }
        int provi2 = app.pubProviders.size() - 1;
        while (provi2 >= 0 && (adj10 > 0 || schedGroup2 == 0 || procState2 > 2)) {
            ContentProviderRecord cpr = app.pubProviders.valueAt(provi2);
            int i6 = cpr.connections.size() - 1;
            int provi3 = schedGroup2;
            int i7 = adj10;
            int procState4 = procState2;
            adj10 = i7;
            while (i6 >= 0 && (adj10 > 0 || provi3 == 0 || procState4 > 2)) {
                ContentProviderConnection conn = cpr.connections.get(i6);
                ProcessRecord client4 = conn.client;
                if (client4 == app) {
                    capabilityFromFGS2 = capabilityFromFGS2;
                    adj10 = adj10;
                    procState4 = procState4;
                    logUid2 = logUid2;
                    i6 = i6;
                    appUid = appUid;
                    provi2 = provi2;
                    str4 = str4;
                    str6 = str6;
                    str5 = str5;
                    provi3 = provi3;
                } else {
                    if (computeClients) {
                        appUid2 = 4;
                        client = client4;
                        computeOomAdjLocked(client4, cachedAdj, topApp, doingAll, now, cycleReEval, true);
                    } else {
                        appUid2 = 4;
                        client = client4;
                        client.setCurRawAdj(client.setAdj);
                        client.setCurRawProcState(client.setProcState);
                    }
                    if (!shouldSkipDueToCycle(app, client, procState4, adj10, cycleReEval)) {
                        int clientAdj2 = client.getCurRawAdj();
                        int clientProcState2 = client.getCurRawProcState();
                        if (clientProcState2 >= 16) {
                            clientProcState2 = 19;
                        }
                        String adjType2 = null;
                        int adj13 = adj10;
                        if (adj13 > clientAdj2) {
                            if (app.hasShownUi && !app.getCachedIsHomeProcess()) {
                                if (clientAdj2 > 200) {
                                    adjType2 = "cch-ui-provider";
                                }
                                app.setCached(app.isCached() & client.isCached());
                            }
                            adj13 = clientAdj2 > 0 ? clientAdj2 : 0;
                            app.setCurRawAdj(adj13);
                            adjType2 = "provider";
                            app.setCached(app.isCached() & client.isCached());
                        }
                        if (clientProcState2 <= appUid2) {
                            if (adjType2 == null) {
                                adjType2 = "provider";
                            }
                            if (clientProcState2 == 2) {
                                clientProcState2 = 3;
                            } else {
                                clientProcState2 = 5;
                            }
                        }
                        j2 = now;
                        conn.trackProcState(clientProcState2, this.mAdjSeq, j2);
                        int procState5 = procState4;
                        if (procState5 > clientProcState2) {
                            procState5 = clientProcState2;
                            app.setCurRawProcState(procState5);
                        }
                        if (client.getCurrentSchedulingGroup() > provi3) {
                            provi3 = 2;
                        }
                        if (adjType2 != null) {
                            provi3 = provi3;
                            app.adjType = adjType2;
                            app.adjTypeCode = 1;
                            app.adjSource = client;
                            app.adjSourceProcState = clientProcState2;
                            app.adjTarget = cpr.name;
                            provi = appUid;
                            i = logUid2;
                            if (i == provi) {
                                StringBuilder sb6 = new StringBuilder();
                                String str8 = str6;
                                sb6.append(str8);
                                sb6.append(adjType2);
                                str6 = str8;
                                str2 = str5;
                                sb6.append(str2);
                                sb6.append(app);
                                sb6.append(", due to ");
                                sb6.append(client);
                                sb6.append(" adj=");
                                sb6.append(adj13);
                                sb6.append(" procState=");
                                sb6.append(ProcessList.makeProcStateString(procState5));
                                String string = sb6.toString();
                                str = str4;
                                this.reportOomAdjMessageLocked(str, string);
                            } else {
                                str = str4;
                                str2 = str5;
                                str6 = str6;
                            }
                        } else {
                            provi3 = provi3;
                            provi = appUid;
                            str = str4;
                            i = logUid2;
                            str2 = str5;
                            str6 = str6;
                        }
                        adj10 = adj13;
                        procState4 = procState5;
                    }
                    str5 = str2;
                    j = j2;
                    logUid2 = i;
                    str4 = str;
                    appUid = provi;
                    provi2 = provi2;
                    i6--;
                    capabilityFromFGS2 = capabilityFromFGS2;
                }
                j2 = now;
                provi3 = provi3;
                adj10 = adj10;
                procState4 = procState4;
                provi = appUid;
                str = str4;
                i = logUid2;
                str2 = str5;
                str6 = str6;
                str5 = str2;
                j = j2;
                logUid2 = i;
                str4 = str;
                appUid = provi;
                provi2 = provi2;
                i6--;
                capabilityFromFGS2 = capabilityFromFGS2;
            }
            if (!cpr.hasExternalProcessHandles()) {
                procState2 = procState4;
                schedGroup2 = provi3;
            } else {
                if (adj10 <= 0) {
                    adj4 = adj10;
                } else {
                    adj4 = 0;
                    app.setCurRawAdj(0);
                    app.setCached(false);
                    app.adjType = "ext-provider";
                    app.adjTarget = cpr.name;
                    if (logUid2 == appUid) {
                        this.reportOomAdjMessageLocked(str4, "Raise adj to external provider: " + app);
                    }
                    provi3 = 2;
                }
                if (procState4 <= 6) {
                    adj10 = adj4;
                    procState2 = procState4;
                    schedGroup2 = provi3;
                } else {
                    app.setCurRawProcState(6);
                    if (logUid2 == appUid) {
                        this.reportOomAdjMessageLocked(str4, "Raise procstate to external provider: " + app);
                    }
                    adj10 = adj4;
                    schedGroup2 = provi3;
                    procState2 = 6;
                }
            }
            provi2--;
            str5 = str5;
            j = j;
            logUid2 = logUid2;
            str4 = str4;
            capabilityFromFGS2 = capabilityFromFGS2;
            appUid = appUid;
        }
        if (app.lastProviderTime > 0 && app.lastProviderTime + this.mConstants.CONTENT_PROVIDER_RETAIN_TIME > j) {
            if (adj10 > 700) {
                adj10 = 700;
                schedGroup2 = 0;
                app.setCached(false);
                app.adjType = "recent-provider";
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked(str4, "Raise adj to recent provider: " + app);
                }
            }
            if (procState2 > 15) {
                procState2 = 15;
                app.adjType = "recent-provider";
                if (logUid2 == appUid) {
                    this.reportOomAdjMessageLocked(str4, "Raise procstate to recent provider: " + app);
                }
            }
        }
        if (procState2 >= 19) {
            if (app.hasClientActivities()) {
                procState2 = 17;
                app.adjType = "cch-client-act";
            } else if (app.treatLikeActivity) {
                procState2 = 16;
                app.adjType = "cch-as-act";
            }
        }
        if (adj10 == 500) {
            if (doingAll && !cycleReEval) {
                app.serviceb = this.mNewNumAServiceProcs > this.mNumServiceProcs / 3;
                this.mNewNumServiceProcs++;
                if (!app.serviceb) {
                    if (this.mService.mLastMemoryLevel <= 0 || app.lastPss < this.mProcessList.getCachedRestoreThresholdKb()) {
                        int i8 = 1;
                        this.mNewNumAServiceProcs += i8;
                    } else {
                        app.serviceHighRam = true;
                        app.serviceb = true;
                    }
                } else {
                    app.serviceHighRam = false;
                }
            }
            if (app.serviceb) {
                adj10 = 800;
            }
        }
        app.setCurRawAdj(adj10);
        if (adj10 <= app.maxAdj) {
            schedGroup3 = schedGroup2;
        } else {
            adj10 = app.maxAdj;
            if (app.maxAdj > 250) {
                schedGroup3 = schedGroup2;
            } else {
                schedGroup3 = 2;
            }
        }
        if (procState2 < 5) {
            z2 = true;
        } else {
            z2 = true;
            if (this.mService.mWakefulness != 1 && schedGroup3 > 1) {
                schedGroup3 = 1;
            }
        }
        if (!app.hasForegroundServices()) {
            capability2 = capability4;
        } else {
            capability2 = capability4 | capabilityFromFGS2;
        }
        int capability5 = this.getDefaultCapability(app, procState2) | capability2;
        app.curAdj = app.modifyRawOomAdj(adj10);
        app.curCapability = capability5;
        app.setCurrentSchedulingGroup(schedGroup3);
        app.setCurProcState(procState2);
        app.setCurRawProcState(procState2);
        app.setHasForegroundActivities(foregroundActivities2);
        app.completedAdjSeq = this.mAdjSeq;
        if (app.curAdj < prevAppAdj || app.getCurProcState() < prevProcState || app.curCapability != prevCapability) {
            return z2;
        }
        return false;
    }

    private int getDefaultCapability(ProcessRecord app, int procState) {
        if (procState == 0 || procState == 1 || procState == 2) {
            return 7;
        }
        return (procState == 4 && !app.hasForegroundServices()) ? 6 : 0;
    }

    private boolean shouldSkipDueToCycle(ProcessRecord app, ProcessRecord client, int procState, int adj, boolean cycleReEval) {
        if (client.containsCycle) {
            app.containsCycle = true;
            if (client.completedAdjSeq < this.mAdjSeq) {
                if (!cycleReEval) {
                    return true;
                }
                if (client.getCurRawProcState() >= procState && client.getCurRawAdj() >= adj) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    void reportOomAdjMessageLocked(String tag, String msg) {
        Slog.d(tag, msg);
        if (this.mService.mCurOomAdjObserver != null) {
            this.mService.mUiHandler.obtainMessage(70, msg).sendToTarget();
        }
    }

    private final boolean applyOomAdjLocked(ProcessRecord app, boolean doingAll, long now, long nowElapsed) {
        boolean success;
        int changes;
        int processGroup;
        if (app.getCurRawAdj() != app.setRawAdj) {
            app.setRawAdj = app.getCurRawAdj();
        }
        if (this.mCachedAppOptimizer.useCompaction() && this.mService.mBooted) {
            if (app.curAdj != app.setAdj) {
                if (app.setAdj <= 200 && (app.curAdj == 700 || app.curAdj == 600)) {
                    this.mCachedAppOptimizer.compactAppSome(app);
                } else if ((app.setAdj < 900 || app.setAdj > 999) && app.curAdj >= 900 && app.curAdj <= 999) {
                    this.mCachedAppOptimizer.compactAppFull(app);
                }
            } else if (this.mService.mWakefulness != 1 && app.setAdj < 0 && this.mCachedAppOptimizer.shouldCompactPersistent(app, now)) {
                this.mCachedAppOptimizer.compactAppPersistent(app);
            } else if (this.mService.mWakefulness != 1 && app.getCurProcState() == 5 && this.mCachedAppOptimizer.shouldCompactBFGS(app, now)) {
                this.mCachedAppOptimizer.compactAppBfgs(app);
            }
        }
        if (app.curAdj != app.setAdj) {
            for (int index = 0; index < this.mProcessList.mLmkdWhiteList.size(); index++) {
                if (this.mProcessList.mLmkdWhiteList.get(index).package_name.equals(app.info.packageName)) {
                    if (app.curAdj <= this.mProcessList.mLmkdWhiteList.get(index).oom_score_adj) {
                        break;
                    }
                    app.curAdj = this.mProcessList.mLmkdWhiteList.get(index).oom_score_adj;
                    break;
                }
            }
            int index2 = app.pid;
            ProcessList.setOomAdj(index2, app.uid, app.curAdj);
            String msg = "Set " + app.pid + " " + app.processName + " adj " + app.curAdj + ": " + app.adjType;
            reportOomAdjMessageLocked("ActivityManager", msg);
            app.setAdj = app.curAdj;
            app.verifiedAdj = -10000;
            synchronized (this.mCachedAppOptimizer) {
                app.mSetAdjForCompact = app.setAdj;
            }
        }
        int curSchedGroup = app.getCurrentSchedulingGroup();
        boolean z = false;
        if (app.setSchedGroup != curSchedGroup) {
            int oldSchedGroup = app.setSchedGroup;
            app.setSchedGroup = curSchedGroup;
            String msg2 = "Setting sched group of " + app.processName + " to " + curSchedGroup + ": " + app.adjType;
            reportOomAdjMessageLocked("ActivityManager", msg2);
            String msg3 = app.waitingToKill;
            if (msg3 != null && app.curReceivers.isEmpty() && app.setSchedGroup == 0) {
                app.kill(app.waitingToKill, 10, 0, true);
                success = false;
            } else {
                if (curSchedGroup == 0) {
                    processGroup = 0;
                } else if (curSchedGroup != 1) {
                    if (curSchedGroup == 3 || curSchedGroup == 4) {
                        processGroup = 5;
                    } else {
                        processGroup = -1;
                    }
                } else {
                    processGroup = 7;
                }
                Handler handler = this.mProcessGroupHandler;
                handler.sendMessage(handler.obtainMessage(0, app.pid, processGroup, app.processName));
                try {
                    if (curSchedGroup == 3) {
                        if (oldSchedGroup != 3) {
                            app.getWindowProcessController().onTopProcChanged();
                            if (this.mService.mUseFifoUiScheduling) {
                                app.savedPriority = Process.getThreadPriority(app.pid);
                                ActivityManagerService.scheduleAsFifoPriority(app.pid, true);
                                if (app.renderThreadTid != 0) {
                                    ActivityManagerService.scheduleAsFifoPriority(app.renderThreadTid, true);
                                }
                            } else {
                                Process.setThreadPriority(app.pid, -10);
                                if (app.renderThreadTid != 0) {
                                    try {
                                        Process.setThreadPriority(app.renderThreadTid, -10);
                                    } catch (IllegalArgumentException e) {
                                    }
                                }
                            }
                        }
                    } else if (oldSchedGroup == 3 && curSchedGroup != 3) {
                        app.getWindowProcessController().onTopProcChanged();
                        if (this.mService.mUseFifoUiScheduling) {
                            try {
                                Process.setThreadScheduler(app.pid, 0, 0);
                                Process.setThreadPriority(app.pid, app.savedPriority);
                                if (app.renderThreadTid != 0) {
                                    Process.setThreadScheduler(app.renderThreadTid, 0, 0);
                                }
                            } catch (IllegalArgumentException e2) {
                                Slog.w(TAG, "Failed to set scheduling policy, thread does not exist:\n" + e2);
                            } catch (SecurityException e3) {
                                Slog.w(TAG, "Failed to set scheduling policy, not allowed:\n" + e3);
                            }
                        } else {
                            Process.setThreadPriority(app.pid, 0);
                        }
                        if (app.renderThreadTid != 0) {
                            Process.setThreadPriority(app.renderThreadTid, -4);
                        }
                    }
                } catch (Exception e4) {
                }
                success = true;
            }
        } else {
            success = true;
        }
        if (app.repForegroundActivities == app.hasForegroundActivities()) {
            changes = 0;
        } else {
            app.repForegroundActivities = app.hasForegroundActivities();
            int changes2 = 0 | 1;
            changes = changes2;
        }
        updateAppFreezeStateLocked(app);
        if (app.getReportedProcState() != app.getCurProcState()) {
            app.setReportedProcState(app.getCurProcState());
            if (app.thread != null) {
                try {
                    app.thread.setProcessState(app.getReportedProcState());
                } catch (RemoteException e5) {
                }
            }
        }
        if (app.setProcState == 20 || ProcessList.procStatesDifferForMem(app.getCurProcState(), app.setProcState)) {
            app.lastStateTime = now;
            app.nextPssTime = ProcessList.computeNextPssTime(app.getCurProcState(), app.procStateMemTracker, this.mService.mTestPssMode, this.mService.mAtmInternal.isSleeping(), now);
        } else if ((now > app.nextPssTime || (now > app.lastPssTime + AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT && now > app.lastStateTime + ProcessList.minTimeFromStateChange(this.mService.mTestPssMode))) && this.mService.requestPssLocked(app, app.setProcState)) {
            z = false;
            app.nextPssTime = ProcessList.computeNextPssTime(app.getCurProcState(), app.procStateMemTracker, this.mService.mTestPssMode, this.mService.mAtmInternal.isSleeping(), now);
        } else {
            z = false;
        }
        if (app.setProcState != app.getCurProcState()) {
            String msg4 = "Proc state change of " + app.processName + " to " + ProcessList.makeProcStateString(app.getCurProcState()) + " (" + app.getCurProcState() + "): " + app.adjType;
            reportOomAdjMessageLocked("ActivityManager", msg4);
            boolean setImportant = app.setProcState < 10 ? true : z;
            boolean curImportant = app.getCurProcState() < 10 ? true : z;
            if (setImportant && !curImportant) {
                app.setWhenUnimportant(now);
                app.lastCpuTime = 0L;
            }
            maybeUpdateUsageStatsLocked(app, nowElapsed);
            maybeUpdateLastTopTime(app, now);
            app.setProcState = app.getCurProcState();
            if (app.setProcState >= 14) {
                app.notCachedSinceIdle = z;
            }
            if (!doingAll) {
                ActivityManagerService activityManagerService = this.mService;
                activityManagerService.setProcessTrackerStateLocked(app, activityManagerService.mProcessStats.getMemFactorLocked(), now);
            } else {
                app.procStateChanged = true;
            }
        } else if (app.reportedInteraction && nowElapsed - app.getInteractionEventTime() > this.mConstants.USAGE_STATS_INTERACTION_INTERVAL) {
            maybeUpdateUsageStatsLocked(app, nowElapsed);
        } else if (!app.reportedInteraction && nowElapsed - app.getFgInteractionTime() > this.mConstants.SERVICE_USAGE_INTERACTION_TIME) {
            maybeUpdateUsageStatsLocked(app, nowElapsed);
        }
        if (app.curCapability != app.setCapability) {
            changes |= 4;
            app.setCapability = app.curCapability;
        }
        if (changes != 0) {
            ActivityManagerService.ProcessChangeItem item = this.mService.enqueueProcessChangeItemLocked(app.pid, app.info.uid);
            item.changes |= changes;
            item.foregroundActivities = app.repForegroundActivities;
            item.capability = app.setCapability;
        }
        return success;
    }

    void setAttachingSchedGroupLocked(ProcessRecord app) {
        int initialSchedGroup = 2;
        if (app.hasForegroundActivities()) {
            String fallbackReason = null;
            try {
                if (Process.getProcessGroup(app.pid) == 5) {
                    app.getWindowProcessController().onTopProcChanged();
                    Process.setThreadPriority(app.pid, -10);
                } else {
                    fallbackReason = "not expected top priority";
                }
            } catch (Exception e) {
                fallbackReason = e.toString();
            }
            if (fallbackReason == null) {
                initialSchedGroup = 3;
            } else {
                Slog.w(TAG, "Fallback pre-set sched group to default: " + fallbackReason);
            }
        }
        app.setSchedGroup = initialSchedGroup;
        app.setCurrentSchedulingGroup(initialSchedGroup);
    }

    void maybeUpdateUsageStats(ProcessRecord app, long nowElapsed) {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                maybeUpdateUsageStatsLocked(app, nowElapsed);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    private void maybeUpdateUsageStatsLocked(ProcessRecord app, long nowElapsed) {
        boolean isInteraction;
        if (this.mService.mUsageStatsService == null) {
            return;
        }
        if (app.getCurProcState() <= 2 || app.getCurProcState() == 3) {
            isInteraction = true;
            app.setFgInteractionTime(0L);
        } else if (app.getCurProcState() > 4) {
            isInteraction = app.getCurProcState() <= 6;
            app.setFgInteractionTime(0L);
        } else if (app.getFgInteractionTime() == 0) {
            app.setFgInteractionTime(nowElapsed);
            isInteraction = false;
        } else {
            isInteraction = nowElapsed > app.getFgInteractionTime() + this.mConstants.SERVICE_USAGE_INTERACTION_TIME;
        }
        if (isInteraction && (!app.reportedInteraction || nowElapsed - app.getInteractionEventTime() > this.mConstants.USAGE_STATS_INTERACTION_INTERVAL)) {
            app.setInteractionEventTime(nowElapsed);
            String[] packages = app.getPackageList();
            if (packages != null) {
                for (String str : packages) {
                    this.mService.mUsageStatsService.reportEvent(str, app.userId, 6);
                }
            }
        }
        app.reportedInteraction = isInteraction;
        if (!isInteraction) {
            app.setInteractionEventTime(0L);
        }
    }

    private void maybeUpdateLastTopTime(ProcessRecord app, long nowUptime) {
        if (app.setProcState <= 2 && app.getCurProcState() > 2) {
            app.lastTopTime = nowUptime;
        }
    }

    void idleUidsLocked() {
        int N = this.mActiveUids.size();
        if (N <= 0) {
            return;
        }
        long nowElapsed = SystemClock.elapsedRealtime();
        long maxBgTime = nowElapsed - this.mConstants.BACKGROUND_SETTLE_TIME;
        long nextTime = 0;
        PowerManagerInternal powerManagerInternal = this.mLocalPowerManager;
        if (powerManagerInternal != null) {
            powerManagerInternal.startUidChanges();
        }
        for (int i = N - 1; i >= 0; i--) {
            UidRecord uidRec = this.mActiveUids.valueAt(i);
            long bgTime = uidRec.lastBackgroundTime;
            if (bgTime > 0 && !uidRec.idle) {
                if (bgTime <= maxBgTime) {
                    EventLogTags.writeAmUidIdle(uidRec.uid);
                    uidRec.idle = true;
                    uidRec.setIdle = true;
                    this.mService.doStopUidLocked(uidRec.uid, uidRec);
                } else if (nextTime == 0 || nextTime > bgTime) {
                    nextTime = bgTime;
                }
            }
        }
        PowerManagerInternal powerManagerInternal2 = this.mLocalPowerManager;
        if (powerManagerInternal2 != null) {
            powerManagerInternal2.finishUidChanges();
        }
        if (nextTime > 0) {
            this.mService.mHandler.removeMessages(58);
            this.mService.mHandler.sendEmptyMessageDelayed(58, (this.mConstants.BACKGROUND_SETTLE_TIME + nextTime) - nowElapsed);
        }
    }

    final void setAppIdTempWhitelistStateLocked(int appId, boolean onWhitelist) {
        boolean changed = false;
        for (int i = this.mActiveUids.size() - 1; i >= 0; i--) {
            UidRecord uidRec = this.mActiveUids.valueAt(i);
            if (UserHandle.getAppId(uidRec.uid) == appId && uidRec.curWhitelist != onWhitelist) {
                uidRec.curWhitelist = onWhitelist;
                changed = true;
            }
        }
        if (changed) {
            updateOomAdjLocked(OOM_ADJ_REASON_WHITELIST);
        }
    }

    final void setUidTempWhitelistStateLocked(int uid, boolean onWhitelist) {
        UidRecord uidRec = this.mActiveUids.get(uid);
        if (uidRec != null && uidRec.curWhitelist != onWhitelist) {
            uidRec.curWhitelist = onWhitelist;
            updateOomAdjLocked(OOM_ADJ_REASON_WHITELIST);
        }
    }

    void dumpProcessListVariablesLocked(ProtoOutputStream proto) {
        proto.write(1120986464305L, this.mAdjSeq);
        proto.write(1120986464306L, this.mProcessList.mLruSeq);
        proto.write(1120986464307L, this.mNumNonCachedProcs);
        proto.write(1120986464309L, this.mNumServiceProcs);
        proto.write(1120986464310L, this.mNewNumServiceProcs);
    }

    void dumpSequenceNumbersLocked(PrintWriter pw) {
        pw.println("  mAdjSeq=" + this.mAdjSeq + " mLruSeq=" + this.mProcessList.mLruSeq);
    }

    void dumpProcCountsLocked(PrintWriter pw) {
        pw.println("  mNumNonCachedProcs=" + this.mNumNonCachedProcs + " (" + this.mProcessList.getLruSizeLocked() + " total) mNumCachedHiddenProcs=" + this.mNumCachedHiddenProcs + " mNumServiceProcs=" + this.mNumServiceProcs + " mNewNumServiceProcs=" + this.mNewNumServiceProcs);
    }

    void dumpCachedAppOptimizerSettings(PrintWriter pw) {
        this.mCachedAppOptimizer.dump(pw);
    }

    void updateAppFreezeStateLocked(ProcessRecord app) {
        if (!this.mCachedAppOptimizer.useFreezer()) {
            return;
        }
        if (app.frozen && app.shouldNotFreeze) {
            this.mCachedAppOptimizer.unfreezeAppLocked(app);
        }
        if (app.curAdj >= 900 && !app.frozen && !app.shouldNotFreeze) {
            this.mCachedAppOptimizer.freezeAppAsync(app);
        } else if (app.setAdj < 900 && app.frozen) {
            this.mCachedAppOptimizer.unfreezeAppLocked(app);
        }
    }
}
