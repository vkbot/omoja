package com.android.server.am;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.BroadcastOptions;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ResolveInfo;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.net.INetd;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.permission.IPermissionManager;
import android.util.EventLog;
import android.util.Slog;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.pm.PackageManagerService;
import com.android.server.slice.SliceClientPermissions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class BroadcastQueue {
    static final int BROADCAST_INTENT_MSG = 200;
    static final int BROADCAST_TIMEOUT_MSG = 201;
    static final int MAX_BROADCAST_HISTORY;
    static final int MAX_BROADCAST_SUMMARY_HISTORY;
    private static final String TAG = "BroadcastQueue";
    private static final String TAG_BROADCAST = "BroadcastQueue";
    private static final String TAG_MU = "BroadcastQueue_MU";
    final Intent[] mBroadcastSummaryHistory;
    boolean mBroadcastsScheduled;
    final BroadcastConstants mConstants;
    final boolean mDelayBehindServices;
    final BroadcastDispatcher mDispatcher;
    final BroadcastHandler mHandler;
    boolean mLogLatencyMetrics;
    BroadcastRecord mPendingBroadcast;
    int mPendingBroadcastRecvIndex;
    boolean mPendingBroadcastTimeoutMessage;
    final String mQueueName;
    final ActivityManagerService mService;
    final long[] mSummaryHistoryDispatchTime;
    final long[] mSummaryHistoryEnqueueTime;
    final long[] mSummaryHistoryFinishTime;
    int mSummaryHistoryNext;
    final ArrayList<BroadcastRecord> mParallelBroadcasts = new ArrayList<>();
    final SparseIntArray mSplitRefcounts = new SparseIntArray();
    private int mNextToken = 0;
    final BroadcastRecord[] mBroadcastHistory = new BroadcastRecord[MAX_BROADCAST_HISTORY];
    int mHistoryNext = 0;

    static {
        MAX_BROADCAST_HISTORY = ActivityManager.isLowRamDeviceStatic() ? 10 : 50;
        MAX_BROADCAST_SUMMARY_HISTORY = ActivityManager.isLowRamDeviceStatic() ? 25 : DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR;
    }

    private final class BroadcastHandler extends Handler {
        public BroadcastHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 200) {
                BroadcastQueue.this.processNextBroadcast(true);
                return;
            }
            if (i == BroadcastQueue.BROADCAST_TIMEOUT_MSG) {
                synchronized (BroadcastQueue.this.mService) {
                    try {
                        ActivityManagerService.boostPriorityForLockedSection();
                        BroadcastQueue.this.broadcastTimeoutLocked(true);
                    } finally {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        }
    }

    BroadcastQueue(ActivityManagerService service, Handler handler, String name, BroadcastConstants constants, boolean allowDelayBehindServices) {
        int i = MAX_BROADCAST_SUMMARY_HISTORY;
        this.mBroadcastSummaryHistory = new Intent[i];
        this.mSummaryHistoryNext = 0;
        this.mSummaryHistoryEnqueueTime = new long[i];
        this.mSummaryHistoryDispatchTime = new long[i];
        this.mSummaryHistoryFinishTime = new long[i];
        this.mBroadcastsScheduled = false;
        this.mPendingBroadcast = null;
        this.mLogLatencyMetrics = true;
        this.mService = service;
        BroadcastHandler broadcastHandler = new BroadcastHandler(handler.getLooper());
        this.mHandler = broadcastHandler;
        this.mQueueName = name;
        this.mDelayBehindServices = allowDelayBehindServices;
        this.mConstants = constants;
        this.mDispatcher = new BroadcastDispatcher(this, constants, broadcastHandler, this.mService);
    }

    void start(ContentResolver resolver) {
        this.mDispatcher.start();
        this.mConstants.startObserving(this.mHandler, resolver);
    }

    public String toString() {
        return this.mQueueName;
    }

    public boolean isPendingBroadcastProcessLocked(int pid) {
        BroadcastRecord broadcastRecord = this.mPendingBroadcast;
        return broadcastRecord != null && broadcastRecord.curApp.pid == pid;
    }

    public void enqueueParallelBroadcastLocked(BroadcastRecord r) {
        this.mParallelBroadcasts.add(r);
        enqueueBroadcastHelper(r);
    }

    public void enqueueOrderedBroadcastLocked(BroadcastRecord r) {
        this.mDispatcher.enqueueOrderedBroadcastLocked(r);
        enqueueBroadcastHelper(r);
    }

    private void enqueueBroadcastHelper(BroadcastRecord r) {
        r.enqueueClockTime = System.currentTimeMillis();
        if (Trace.isTagEnabled(64L)) {
            Trace.asyncTraceBegin(64L, createBroadcastTraceTitle(r, 0), System.identityHashCode(r));
        }
    }

    public final BroadcastRecord replaceParallelBroadcastLocked(BroadcastRecord r) {
        return replaceBroadcastLocked(this.mParallelBroadcasts, r, "PARALLEL");
    }

    public final BroadcastRecord replaceOrderedBroadcastLocked(BroadcastRecord r) {
        return this.mDispatcher.replaceBroadcastLocked(r, "ORDERED");
    }

    private BroadcastRecord replaceBroadcastLocked(ArrayList<BroadcastRecord> queue, BroadcastRecord r, String typeForLogging) {
        Intent intent = r.intent;
        for (int i = queue.size() - 1; i > 0; i--) {
            BroadcastRecord old = queue.get(i);
            if (old.userId == r.userId && intent.filterEquals(old.intent)) {
                queue.set(i, r);
                return old;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void processCurBroadcastLocked(BroadcastRecord broadcastRecord, ProcessRecord processRecord, boolean z) throws RemoteException {
        if (processRecord.thread == null) {
            throw new RemoteException();
        }
        if (processRecord.inFullBackup) {
            skipReceiverLocked(broadcastRecord);
            return;
        }
        broadcastRecord.receiver = processRecord.thread.asBinder();
        broadcastRecord.curApp = processRecord;
        processRecord.curReceivers.add(broadcastRecord);
        processRecord.forceProcessStateUpTo(11);
        this.mService.mProcessList.updateLruProcessLocked(processRecord, false, null);
        if (!z) {
            this.mService.updateOomAdjLocked(processRecord, "updateOomAdj_meh");
        }
        broadcastRecord.intent.setComponent(broadcastRecord.curComponent);
        boolean z2 = false;
        try {
            this.mService.notifyPackageUse(broadcastRecord.intent.getComponent().getPackageName(), 3);
            processRecord.thread.scheduleReceiver(new Intent(broadcastRecord.intent), broadcastRecord.curReceiver, this.mService.compatibilityInfoForPackage(broadcastRecord.curReceiver.applicationInfo), broadcastRecord.resultCode, broadcastRecord.resultData, broadcastRecord.resultExtras, broadcastRecord.ordered, broadcastRecord.userId, processRecord.getReportedProcState());
            boolean z3 = true;
        } finally {
            if (!z2) {
                broadcastRecord.receiver = null;
                broadcastRecord.curApp = null;
                processRecord.curReceivers.remove(broadcastRecord);
            }
        }
    }

    public boolean sendPendingBroadcastsLocked(ProcessRecord app) {
        BroadcastRecord br = this.mPendingBroadcast;
        if (br == null || br.curApp.pid <= 0 || br.curApp.pid != app.pid) {
            return false;
        }
        if (br.curApp != app) {
            Slog.e("BroadcastQueue", "App mismatch when sending pending broadcast to " + app.processName + ", intended target is " + br.curApp.processName);
            return false;
        }
        try {
            this.mPendingBroadcast = null;
            processCurBroadcastLocked(br, app, false);
            return true;
        } catch (Exception e) {
            Slog.w("BroadcastQueue", "Exception in new application when starting receiver " + br.curComponent.flattenToShortString(), e);
            logBroadcastReceiverDiscardLocked(br);
            finishReceiverLocked(br, br.resultCode, br.resultData, br.resultExtras, br.resultAbort, false);
            scheduleBroadcastsLocked();
            br.state = 0;
            throw new RuntimeException(e.getMessage());
        }
    }

    public void skipPendingBroadcastLocked(int pid) {
        BroadcastRecord br = this.mPendingBroadcast;
        if (br != null && br.curApp.pid == pid) {
            br.state = 0;
            br.nextReceiver = this.mPendingBroadcastRecvIndex;
            this.mPendingBroadcast = null;
            scheduleBroadcastsLocked();
        }
    }

    public void skipCurrentReceiverLocked(ProcessRecord app) {
        BroadcastRecord broadcastRecord;
        BroadcastRecord r = null;
        BroadcastRecord curActive = this.mDispatcher.getActiveBroadcastLocked();
        if (curActive != null && curActive.curApp == app) {
            r = curActive;
        }
        if (r == null && (broadcastRecord = this.mPendingBroadcast) != null && broadcastRecord.curApp == app) {
            r = this.mPendingBroadcast;
        }
        if (r != null) {
            skipReceiverLocked(r);
        }
    }

    private void skipReceiverLocked(BroadcastRecord r) {
        logBroadcastReceiverDiscardLocked(r);
        finishReceiverLocked(r, r.resultCode, r.resultData, r.resultExtras, r.resultAbort, false);
        scheduleBroadcastsLocked();
    }

    public void scheduleBroadcastsLocked() {
        if (this.mBroadcastsScheduled) {
            return;
        }
        BroadcastHandler broadcastHandler = this.mHandler;
        broadcastHandler.sendMessage(broadcastHandler.obtainMessage(200, this));
        this.mBroadcastsScheduled = true;
    }

    public BroadcastRecord getMatchingOrderedReceiver(IBinder receiver) {
        BroadcastRecord br = this.mDispatcher.getActiveBroadcastLocked();
        if (br != null && br.receiver == receiver) {
            return br;
        }
        return null;
    }

    private int nextSplitTokenLocked() {
        int next = this.mNextToken + 1;
        if (next <= 0) {
            next = 1;
        }
        this.mNextToken = next;
        return next;
    }

    private void postActivityStartTokenRemoval(final ProcessRecord app, final BroadcastRecord r) {
        String msgToken = (app.toShortString() + r.toString()).intern();
        this.mHandler.removeCallbacksAndMessages(msgToken);
        this.mHandler.postAtTime(new Runnable() { // from class: com.android.server.am.-$$Lambda$BroadcastQueue$-Rc4kAs41vmqWweLcJR0YLxZ0dM
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$postActivityStartTokenRemoval$0$BroadcastQueue(app, r);
            }
        }, msgToken, r.receiverTime + this.mConstants.ALLOW_BG_ACTIVITY_START_TIMEOUT);
    }

    public /* synthetic */ void lambda$postActivityStartTokenRemoval$0$BroadcastQueue(ProcessRecord app, BroadcastRecord r) {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                app.removeAllowBackgroundActivityStartsToken(r);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean finishReceiverLocked(BroadcastRecord r, int resultCode, String resultData, Bundle resultExtras, boolean resultAbort, boolean waitForServices) {
        ActivityInfo nextReceiver;
        int state = r.state;
        ActivityInfo receiver = r.curReceiver;
        long finishTime = SystemClock.uptimeMillis();
        long elapsed = finishTime - r.receiverTime;
        boolean z = false;
        r.state = 0;
        if (state == 0) {
            Slog.w("BroadcastQueue", "finishReceiver [" + this.mQueueName + "] called but state is IDLE");
        }
        if (r.allowBackgroundActivityStarts && r.curApp != null) {
            if (elapsed <= this.mConstants.ALLOW_BG_ACTIVITY_START_TIMEOUT) {
                postActivityStartTokenRemoval(r.curApp, r);
            } else {
                r.curApp.removeAllowBackgroundActivityStartsToken(r);
            }
        }
        if (r.nextReceiver > 0) {
            r.duration[r.nextReceiver - 1] = elapsed;
        }
        if (!r.timeoutExempt && r.curApp != null && this.mConstants.SLOW_TIME > 0 && elapsed > this.mConstants.SLOW_TIME && !UserHandle.isCore(r.curApp.uid)) {
            this.mDispatcher.startDeferring(r.curApp.uid);
        }
        r.receiver = null;
        r.intent.setComponent(null);
        if (r.curApp != null && r.curApp.curReceivers.contains(r)) {
            r.curApp.curReceivers.remove(r);
        }
        if (r.curFilter != null) {
            r.curFilter.receiverList.curBroadcast = null;
        }
        r.curFilter = null;
        r.curReceiver = null;
        r.curApp = null;
        this.mPendingBroadcast = null;
        r.resultCode = resultCode;
        r.resultData = resultData;
        r.resultExtras = resultExtras;
        if (resultAbort && (r.intent.getFlags() & AudioFormat.OPUS) == 0) {
            r.resultAbort = resultAbort;
        } else {
            r.resultAbort = false;
        }
        if (waitForServices && r.curComponent != null && r.queue.mDelayBehindServices && r.queue.mDispatcher.getActiveBroadcastLocked() == r) {
            if (r.nextReceiver < r.receivers.size()) {
                Object obj = r.receivers.get(r.nextReceiver);
                nextReceiver = obj instanceof ActivityInfo ? (ActivityInfo) obj : null;
            } else {
                nextReceiver = null;
            }
            if ((receiver != null && nextReceiver != null && receiver.applicationInfo.uid == nextReceiver.applicationInfo.uid && receiver.processName.equals(nextReceiver.processName)) || !this.mService.mServices.hasBackgroundServicesLocked(r.userId)) {
                z = false;
            } else {
                Slog.i("BroadcastQueue", "Delay finish: " + r.curComponent.flattenToShortString());
                r.state = 4;
                return false;
            }
        }
        r.curComponent = null;
        if (state == 1 || state == 3) {
            return true;
        }
        return z;
    }

    public void backgroundServicesFinishedLocked(int userId) {
        BroadcastRecord br = this.mDispatcher.getActiveBroadcastLocked();
        if (br != null && br.userId == userId && br.state == 4) {
            Slog.i("BroadcastQueue", "Resuming delayed broadcast");
            br.curComponent = null;
            br.state = 0;
            processNextBroadcast(false);
        }
    }

    void performReceiveLocked(ProcessRecord app, IIntentReceiver receiver, Intent intent, int resultCode, String data, Bundle extras, boolean ordered, boolean sticky, int sendingUser) throws RemoteException {
        if (app != null) {
            if (app.thread == null) {
                throw new RemoteException("app.thread must not be null");
            }
            try {
                app.thread.scheduleRegisteredReceiver(receiver, intent, resultCode, data, extras, ordered, sticky, sendingUser, app.getReportedProcState());
                return;
            } catch (RemoteException ex) {
                synchronized (this.mService) {
                    try {
                        ActivityManagerService.boostPriorityForLockedSection();
                        Slog.w("BroadcastQueue", "Can't deliver broadcast to " + app.processName + " (pid " + app.pid + "). Crashing it.");
                        app.scheduleCrash("can't deliver broadcast");
                        throw ex;
                    } finally {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        }
        receiver.performReceive(intent, resultCode, data, extras, ordered, sticky, sendingUser);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x04f5  */
    /* JADX WARN: Code duplicated, block: B:103:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:105:0x0501  */
    /* JADX WARN: Code duplicated, block: B:107:0x0519  */
    /* JADX WARN: Code duplicated, block: B:108:0x0534  */
    /* JADX WARN: Code duplicated, block: B:110:0x053a  */
    /* JADX WARN: Code duplicated, block: B:113:0x054d A[Catch: RemoteException -> 0x059d, TryCatch #0 {RemoteException -> 0x059d, blocks: (B:111:0x0547, B:113:0x054d, B:116:0x0557, B:123:0x0599, B:117:0x055b, B:119:0x058c, B:121:0x0590), top: B:134:0x0547 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x055b A[Catch: RemoteException -> 0x059d, TryCatch #0 {RemoteException -> 0x059d, blocks: (B:111:0x0547, B:113:0x054d, B:116:0x0557, B:123:0x0599, B:117:0x055b, B:119:0x058c, B:121:0x0590), top: B:134:0x0547 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x058c A[Catch: RemoteException -> 0x059d, TryCatch #0 {RemoteException -> 0x059d, blocks: (B:111:0x0547, B:113:0x054d, B:116:0x0557, B:123:0x0599, B:117:0x055b, B:119:0x058c, B:121:0x0590), top: B:134:0x0547 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x0599 A[Catch: RemoteException -> 0x059d, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x059d, blocks: (B:111:0x0547, B:113:0x054d, B:116:0x0557, B:123:0x0599, B:117:0x055b, B:119:0x058c, B:121:0x0590), top: B:134:0x0547 }] */
    /* JADX WARN: Code duplicated, block: B:143:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:49:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:51:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:55:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:57:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:58:0x0344  */
    /* JADX WARN: Code duplicated, block: B:61:0x034e  */
    /* JADX WARN: Code duplicated, block: B:67:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:76:0x041e  */
    /* JADX WARN: Code duplicated, block: B:77:0x0420  */
    /* JADX WARN: Code duplicated, block: B:80:0x0426 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:87:0x0482  */
    /* JADX WARN: Code duplicated, block: B:94:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:97:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:99:0x04eb  */
    /* JADX WARN: Instruction removed from duplicated block: B:57:0x02f6, please report this as an issue */
    private void deliverToRegisteredReceiverLocked(BroadcastRecord r, BroadcastFilter filter, boolean ordered, int index) {
        boolean skip;
        boolean skip2;
        String str;
        String str2;
        boolean skip3;
        String str3;
        String str4;
        boolean skip4;
        boolean z;
        boolean skip5;
        int perm;
        boolean skip6 = false;
        if (!this.mService.validateAssociationAllowedLocked(r.callerPackage, r.callingUid, filter.packageName, filter.owningUid)) {
            Slog.w("BroadcastQueue", "Association not allowed: broadcasting " + r.intent.toString() + " from " + r.callerPackage + " (pid=" + r.callingPid + ", uid=" + r.callingUid + ") to " + filter.packageName + " through " + filter);
            skip6 = true;
        }
        if (!skip6 && !this.mService.mIntentFirewall.checkBroadcast(r.intent, r.callingUid, r.callingPid, r.resolvedType, filter.receiverList.uid)) {
            Slog.w("BroadcastQueue", "Firewall blocked: broadcasting " + r.intent.toString() + " from " + r.callerPackage + " (pid=" + r.callingPid + ", uid=" + r.callingUid + ") to " + filter.packageName + " through " + filter);
            skip6 = true;
        }
        String str5 = ") requires appop ";
        if (filter.requiredPermission != null) {
            int perm2 = ActivityManagerService.checkComponentPermission(filter.requiredPermission, r.callingPid, r.callingUid, -1, true);
            if (perm2 != 0) {
                Slog.w("BroadcastQueue", "Permission Denial: broadcasting " + r.intent.toString() + " from " + r.callerPackage + " (pid=" + r.callingPid + ", uid=" + r.callingUid + ") requires " + filter.requiredPermission + " due to registered receiver " + filter);
                skip = true;
            } else {
                int opCode = AppOpsManager.permissionToOpCode(filter.requiredPermission);
                if (opCode != -1 && this.mService.getAppOpsManager().noteOpNoThrow(opCode, r.callingUid, r.callerPackage, r.callerFeatureId, "") != 0) {
                    Slog.w("BroadcastQueue", "Appop Denial: broadcasting " + r.intent.toString() + " from " + r.callerPackage + " (pid=" + r.callingPid + ", uid=" + r.callingUid + ") requires appop " + AppOpsManager.permissionToOp(filter.requiredPermission) + " due to registered receiver " + filter);
                    skip = true;
                }
            }
            String str6 = "Appop Denial: receiving ";
            if (!skip || r.requiredPermissions == null || r.requiredPermissions.length <= 0) {
                skip2 = skip;
                str = ") requires appop ";
                str2 = "Appop Denial: receiving ";
            } else {
                int i = 0;
                while (true) {
                    if (i < r.requiredPermissions.length) {
                        String requiredPermission = r.requiredPermissions[i];
                        boolean skip7 = skip;
                        int i2 = i;
                        String str7 = str6;
                        String str8 = str5;
                        int perm3 = ActivityManagerService.checkComponentPermission(requiredPermission, filter.receiverList.pid, filter.receiverList.uid, -1, true);
                        if (perm3 != 0) {
                            Slog.w("BroadcastQueue", "Permission Denial: receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") requires " + requiredPermission + " due to sender " + r.callerPackage + " (uid " + r.callingUid + ")");
                            skip3 = true;
                            str = str8;
                            str2 = str7;
                            break;
                        }
                        int appOp = AppOpsManager.permissionToOpCode(requiredPermission);
                        if (appOp != -1 && appOp != r.appOp) {
                            if (this.mService.getAppOpsManager().noteOpNoThrow(appOp, filter.receiverList.uid, filter.packageName, filter.featureId, "") != 0) {
                                StringBuilder sb = new StringBuilder();
                                str2 = str7;
                                sb.append(str2);
                                sb.append(r.intent.toString());
                                sb.append(" to ");
                                sb.append(filter.receiverList.app);
                                sb.append(" (pid=");
                                sb.append(filter.receiverList.pid);
                                sb.append(", uid=");
                                sb.append(filter.receiverList.uid);
                                str = str8;
                                sb.append(str);
                                sb.append(AppOpsManager.permissionToOp(requiredPermission));
                                sb.append(" due to sender ");
                                sb.append(r.callerPackage);
                                sb.append(" (uid ");
                                sb.append(r.callingUid);
                                sb.append(")");
                                Slog.w("BroadcastQueue", sb.toString());
                                skip3 = true;
                                break;
                            }
                        }
                        int perm4 = i2 + 1;
                        str6 = str7;
                        str5 = str8;
                        i = perm4;
                        skip = skip7;
                    } else {
                        skip2 = skip;
                        str = str5;
                        str2 = str6;
                    }
                }
                if (skip3) {
                    str3 = " due to sender ";
                    str4 = str;
                } else {
                    if (r.requiredPermissions != null || r.requiredPermissions.length == 0) {
                        str3 = " due to sender ";
                        str4 = str;
                        perm = ActivityManagerService.checkComponentPermission(null, filter.receiverList.pid, filter.receiverList.uid, -1, true);
                        if (perm != 0) {
                            Slog.w("BroadcastQueue", "Permission Denial: security check failed when receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ")");
                            skip4 = true;
                        }
                        if (!skip4 && r.appOp != -1 && this.mService.getAppOpsManager().noteOpNoThrow(r.appOp, filter.receiverList.uid, filter.packageName, filter.featureId, "") != 0) {
                            Slog.w("BroadcastQueue", str2 + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + str4 + AppOpsManager.opToName(r.appOp) + str3 + r.callerPackage + " (uid " + r.callingUid + ")");
                            skip4 = true;
                        }
                        if (!skip4 && (filter.receiverList.app == null || filter.receiverList.app.killed || filter.receiverList.app.isCrashing())) {
                            Slog.w("BroadcastQueue", "Skipping deliver [" + this.mQueueName + "] " + r + " to " + filter.receiverList + ": process gone or crashing");
                            skip4 = true;
                        }
                        if ((r.intent.getFlags() & 2097152) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        boolean visibleToInstantApps = z;
                        if (!skip4 && !visibleToInstantApps && filter.instantApp && filter.receiverList.uid != r.callingUid) {
                            Slog.w("BroadcastQueue", "Instant App Denial: receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ") not specifying FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS");
                            skip4 = true;
                        }
                        if (skip4 && !filter.visibleToInstantApp && r.callerInstantApp && filter.receiverList.uid != r.callingUid) {
                            Slog.w("BroadcastQueue", "Instant App Denial: receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") requires receiver be visible to instant apps due to sender " + r.callerPackage + " (uid " + r.callingUid + ")");
                            skip5 = true;
                        } else {
                            skip5 = skip4;
                        }
                        if (skip5) {
                            if (!requestStartTargetPermissionsReviewIfNeededLocked(r, filter.packageName, filter.owningUserId)) {
                                r.delivery[index] = 2;
                                return;
                            }
                            r.delivery[index] = 1;
                            if (ordered) {
                                r.receiver = filter.receiverList.receiver.asBinder();
                                r.curFilter = filter;
                                filter.receiverList.curBroadcast = r;
                                r.state = 2;
                                if (filter.receiverList.app != null) {
                                    r.curApp = filter.receiverList.app;
                                    filter.receiverList.app.curReceivers.add(r);
                                    this.mService.updateOomAdjLocked(r.curApp, true, "updateOomAdj_startReceiver");
                                }
                            } else if (filter.receiverList.app != null) {
                                this.mService.mOomAdjuster.mCachedAppOptimizer.unfreezeTemporarily(filter.receiverList.app);
                            }
                            try {
                                if (filter.receiverList.app == null && filter.receiverList.app.inFullBackup) {
                                    if (ordered) {
                                        skipReceiverLocked(r);
                                    }
                                } else {
                                    r.receiverTime = SystemClock.uptimeMillis();
                                    maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                                    performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                                    if (r.allowBackgroundActivityStarts && !r.ordered) {
                                        postActivityStartTokenRemoval(filter.receiverList.app, r);
                                    }
                                }
                                if (ordered) {
                                    r.state = 3;
                                    return;
                                }
                                return;
                            } catch (RemoteException e) {
                                Slog.w("BroadcastQueue", "Failure sending broadcast " + r.intent, e);
                                if (filter.receiverList.app != null) {
                                    filter.receiverList.app.removeAllowBackgroundActivityStartsToken(r);
                                    if (ordered) {
                                        filter.receiverList.app.curReceivers.remove(r);
                                    }
                                }
                                if (ordered) {
                                    r.receiver = null;
                                    r.curFilter = null;
                                    filter.receiverList.curBroadcast = null;
                                    return;
                                }
                                return;
                            }
                        }
                        r.delivery[index] = 2;
                    }
                    str3 = " due to sender ";
                    str4 = str;
                }
                skip4 = skip3;
                if (!skip4) {
                    Slog.w("BroadcastQueue", str2 + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + str4 + AppOpsManager.opToName(r.appOp) + str3 + r.callerPackage + " (uid " + r.callingUid + ")");
                    skip4 = true;
                }
                if (!skip4) {
                    Slog.w("BroadcastQueue", "Skipping deliver [" + this.mQueueName + "] " + r + " to " + filter.receiverList + ": process gone or crashing");
                    skip4 = true;
                }
                if ((r.intent.getFlags() & 2097152) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                boolean visibleToInstantApps2 = z;
                if (!skip4) {
                    Slog.w("BroadcastQueue", "Instant App Denial: receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ") not specifying FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS");
                    skip4 = true;
                }
                if (skip4) {
                    skip5 = skip4;
                } else {
                    skip5 = skip4;
                }
                if (skip5) {
                    if (!requestStartTargetPermissionsReviewIfNeededLocked(r, filter.packageName, filter.owningUserId)) {
                        r.delivery[index] = 2;
                        return;
                    }
                    r.delivery[index] = 1;
                    if (ordered) {
                        r.receiver = filter.receiverList.receiver.asBinder();
                        r.curFilter = filter;
                        filter.receiverList.curBroadcast = r;
                        r.state = 2;
                        if (filter.receiverList.app != null) {
                            r.curApp = filter.receiverList.app;
                            filter.receiverList.app.curReceivers.add(r);
                            this.mService.updateOomAdjLocked(r.curApp, true, "updateOomAdj_startReceiver");
                        }
                    } else if (filter.receiverList.app != null) {
                        this.mService.mOomAdjuster.mCachedAppOptimizer.unfreezeTemporarily(filter.receiverList.app);
                    }
                    if (filter.receiverList.app == null) {
                        r.receiverTime = SystemClock.uptimeMillis();
                        maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                        performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                        if (r.allowBackgroundActivityStarts) {
                            postActivityStartTokenRemoval(filter.receiverList.app, r);
                        }
                    } else {
                        r.receiverTime = SystemClock.uptimeMillis();
                        maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                        performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                        if (r.allowBackgroundActivityStarts) {
                            postActivityStartTokenRemoval(filter.receiverList.app, r);
                        }
                    }
                    if (ordered) {
                        r.state = 3;
                        return;
                    }
                    return;
                }
                r.delivery[index] = 2;
            }
            skip3 = skip2;
            if (skip3) {
                if (r.requiredPermissions != null) {
                    str3 = " due to sender ";
                    str4 = str;
                    perm = ActivityManagerService.checkComponentPermission(null, filter.receiverList.pid, filter.receiverList.uid, -1, true);
                    if (perm != 0) {
                        Slog.w("BroadcastQueue", "Permission Denial: security check failed when receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ")");
                        skip4 = true;
                    }
                } else {
                    str3 = " due to sender ";
                    str4 = str;
                    perm = ActivityManagerService.checkComponentPermission(null, filter.receiverList.pid, filter.receiverList.uid, -1, true);
                    if (perm != 0) {
                        Slog.w("BroadcastQueue", "Permission Denial: security check failed when receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ")");
                        skip4 = true;
                    }
                }
                if (!skip4) {
                    Slog.w("BroadcastQueue", str2 + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + str4 + AppOpsManager.opToName(r.appOp) + str3 + r.callerPackage + " (uid " + r.callingUid + ")");
                    skip4 = true;
                }
                if (!skip4) {
                    Slog.w("BroadcastQueue", "Skipping deliver [" + this.mQueueName + "] " + r + " to " + filter.receiverList + ": process gone or crashing");
                    skip4 = true;
                }
                if ((r.intent.getFlags() & 2097152) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                boolean visibleToInstantApps3 = z;
                if (!skip4) {
                    Slog.w("BroadcastQueue", "Instant App Denial: receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ") not specifying FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS");
                    skip4 = true;
                }
                if (skip4) {
                    skip5 = skip4;
                } else {
                    skip5 = skip4;
                }
                if (skip5) {
                    if (!requestStartTargetPermissionsReviewIfNeededLocked(r, filter.packageName, filter.owningUserId)) {
                        r.delivery[index] = 2;
                        return;
                    }
                    r.delivery[index] = 1;
                    if (ordered) {
                        r.receiver = filter.receiverList.receiver.asBinder();
                        r.curFilter = filter;
                        filter.receiverList.curBroadcast = r;
                        r.state = 2;
                        if (filter.receiverList.app != null) {
                            r.curApp = filter.receiverList.app;
                            filter.receiverList.app.curReceivers.add(r);
                            this.mService.updateOomAdjLocked(r.curApp, true, "updateOomAdj_startReceiver");
                        }
                    } else if (filter.receiverList.app != null) {
                        this.mService.mOomAdjuster.mCachedAppOptimizer.unfreezeTemporarily(filter.receiverList.app);
                    }
                    if (filter.receiverList.app == null) {
                        r.receiverTime = SystemClock.uptimeMillis();
                        maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                        performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                        if (r.allowBackgroundActivityStarts) {
                            postActivityStartTokenRemoval(filter.receiverList.app, r);
                        }
                    } else {
                        r.receiverTime = SystemClock.uptimeMillis();
                        maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                        performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                        if (r.allowBackgroundActivityStarts) {
                            postActivityStartTokenRemoval(filter.receiverList.app, r);
                        }
                    }
                    if (ordered) {
                        r.state = 3;
                        return;
                    }
                    return;
                }
                r.delivery[index] = 2;
            }
            str3 = " due to sender ";
            str4 = str;
            skip4 = skip3;
            if (!skip4) {
                Slog.w("BroadcastQueue", str2 + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + str4 + AppOpsManager.opToName(r.appOp) + str3 + r.callerPackage + " (uid " + r.callingUid + ")");
                skip4 = true;
            }
            if (!skip4) {
                Slog.w("BroadcastQueue", "Skipping deliver [" + this.mQueueName + "] " + r + " to " + filter.receiverList + ": process gone or crashing");
                skip4 = true;
            }
            if ((r.intent.getFlags() & 2097152) != 0) {
                z = true;
            } else {
                z = false;
            }
            boolean visibleToInstantApps4 = z;
            if (!skip4) {
                Slog.w("BroadcastQueue", "Instant App Denial: receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ") not specifying FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS");
                skip4 = true;
            }
            if (skip4) {
                skip5 = skip4;
            } else {
                skip5 = skip4;
            }
            if (skip5) {
                if (!requestStartTargetPermissionsReviewIfNeededLocked(r, filter.packageName, filter.owningUserId)) {
                    r.delivery[index] = 2;
                    return;
                }
                r.delivery[index] = 1;
                if (ordered) {
                    r.receiver = filter.receiverList.receiver.asBinder();
                    r.curFilter = filter;
                    filter.receiverList.curBroadcast = r;
                    r.state = 2;
                    if (filter.receiverList.app != null) {
                        r.curApp = filter.receiverList.app;
                        filter.receiverList.app.curReceivers.add(r);
                        this.mService.updateOomAdjLocked(r.curApp, true, "updateOomAdj_startReceiver");
                    }
                } else if (filter.receiverList.app != null) {
                    this.mService.mOomAdjuster.mCachedAppOptimizer.unfreezeTemporarily(filter.receiverList.app);
                }
                if (filter.receiverList.app == null) {
                    r.receiverTime = SystemClock.uptimeMillis();
                    maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                    performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                    if (r.allowBackgroundActivityStarts) {
                        postActivityStartTokenRemoval(filter.receiverList.app, r);
                    }
                } else {
                    r.receiverTime = SystemClock.uptimeMillis();
                    maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                    performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                    if (r.allowBackgroundActivityStarts) {
                        postActivityStartTokenRemoval(filter.receiverList.app, r);
                    }
                }
                if (ordered) {
                    r.state = 3;
                    return;
                }
                return;
            }
            r.delivery[index] = 2;
        }
        skip = skip6;
        String str9 = "Appop Denial: receiving ";
        if (!skip) {
            skip2 = skip;
            str = ") requires appop ";
            str2 = "Appop Denial: receiving ";
            skip3 = skip2;
            break;
        }
        skip2 = skip;
        str = ") requires appop ";
        str2 = "Appop Denial: receiving ";
        skip3 = skip2;
        break;
        if (skip3) {
            if (r.requiredPermissions != null) {
                str3 = " due to sender ";
                str4 = str;
                perm = ActivityManagerService.checkComponentPermission(null, filter.receiverList.pid, filter.receiverList.uid, -1, true);
                if (perm != 0) {
                    Slog.w("BroadcastQueue", "Permission Denial: security check failed when receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ")");
                    skip4 = true;
                }
            } else {
                str3 = " due to sender ";
                str4 = str;
                perm = ActivityManagerService.checkComponentPermission(null, filter.receiverList.pid, filter.receiverList.uid, -1, true);
                if (perm != 0) {
                    Slog.w("BroadcastQueue", "Permission Denial: security check failed when receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ")");
                    skip4 = true;
                }
            }
            if (!skip4) {
                Slog.w("BroadcastQueue", str2 + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + str4 + AppOpsManager.opToName(r.appOp) + str3 + r.callerPackage + " (uid " + r.callingUid + ")");
                skip4 = true;
            }
            if (!skip4) {
                Slog.w("BroadcastQueue", "Skipping deliver [" + this.mQueueName + "] " + r + " to " + filter.receiverList + ": process gone or crashing");
                skip4 = true;
            }
            if ((r.intent.getFlags() & 2097152) != 0) {
                z = true;
            } else {
                z = false;
            }
            boolean visibleToInstantApps5 = z;
            if (!skip4) {
                Slog.w("BroadcastQueue", "Instant App Denial: receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ") not specifying FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS");
                skip4 = true;
            }
            if (skip4) {
                skip5 = skip4;
            } else {
                skip5 = skip4;
            }
            if (skip5) {
                if (!requestStartTargetPermissionsReviewIfNeededLocked(r, filter.packageName, filter.owningUserId)) {
                    r.delivery[index] = 2;
                    return;
                }
                r.delivery[index] = 1;
                if (ordered) {
                    r.receiver = filter.receiverList.receiver.asBinder();
                    r.curFilter = filter;
                    filter.receiverList.curBroadcast = r;
                    r.state = 2;
                    if (filter.receiverList.app != null) {
                        r.curApp = filter.receiverList.app;
                        filter.receiverList.app.curReceivers.add(r);
                        this.mService.updateOomAdjLocked(r.curApp, true, "updateOomAdj_startReceiver");
                    }
                } else if (filter.receiverList.app != null) {
                    this.mService.mOomAdjuster.mCachedAppOptimizer.unfreezeTemporarily(filter.receiverList.app);
                }
                if (filter.receiverList.app == null) {
                    r.receiverTime = SystemClock.uptimeMillis();
                    maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                    performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                    if (r.allowBackgroundActivityStarts) {
                        postActivityStartTokenRemoval(filter.receiverList.app, r);
                    }
                } else {
                    r.receiverTime = SystemClock.uptimeMillis();
                    maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                    performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                    if (r.allowBackgroundActivityStarts) {
                        postActivityStartTokenRemoval(filter.receiverList.app, r);
                    }
                }
                if (ordered) {
                    r.state = 3;
                    return;
                }
                return;
            }
            r.delivery[index] = 2;
        }
        str3 = " due to sender ";
        str4 = str;
        skip4 = skip3;
        if (!skip4) {
            Slog.w("BroadcastQueue", str2 + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + str4 + AppOpsManager.opToName(r.appOp) + str3 + r.callerPackage + " (uid " + r.callingUid + ")");
            skip4 = true;
        }
        if (!skip4) {
            Slog.w("BroadcastQueue", "Skipping deliver [" + this.mQueueName + "] " + r + " to " + filter.receiverList + ": process gone or crashing");
            skip4 = true;
        }
        if ((r.intent.getFlags() & 2097152) != 0) {
            z = true;
        } else {
            z = false;
        }
        boolean visibleToInstantApps6 = z;
        if (!skip4) {
            Slog.w("BroadcastQueue", "Instant App Denial: receiving " + r.intent.toString() + " to " + filter.receiverList.app + " (pid=" + filter.receiverList.pid + ", uid=" + filter.receiverList.uid + ") due to sender " + r.callerPackage + " (uid " + r.callingUid + ") not specifying FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS");
            skip4 = true;
        }
        if (skip4) {
            skip5 = skip4;
        } else {
            skip5 = skip4;
        }
        if (skip5) {
            if (!requestStartTargetPermissionsReviewIfNeededLocked(r, filter.packageName, filter.owningUserId)) {
                r.delivery[index] = 2;
                return;
            }
            r.delivery[index] = 1;
            if (ordered) {
                r.receiver = filter.receiverList.receiver.asBinder();
                r.curFilter = filter;
                filter.receiverList.curBroadcast = r;
                r.state = 2;
                if (filter.receiverList.app != null) {
                    r.curApp = filter.receiverList.app;
                    filter.receiverList.app.curReceivers.add(r);
                    this.mService.updateOomAdjLocked(r.curApp, true, "updateOomAdj_startReceiver");
                }
            } else if (filter.receiverList.app != null) {
                this.mService.mOomAdjuster.mCachedAppOptimizer.unfreezeTemporarily(filter.receiverList.app);
            }
            if (filter.receiverList.app == null) {
                r.receiverTime = SystemClock.uptimeMillis();
                maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                if (r.allowBackgroundActivityStarts) {
                    postActivityStartTokenRemoval(filter.receiverList.app, r);
                }
            } else {
                r.receiverTime = SystemClock.uptimeMillis();
                maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r);
                performReceiveLocked(filter.receiverList.app, filter.receiverList.receiver, new Intent(r.intent), r.resultCode, r.resultData, r.resultExtras, r.ordered, r.initialSticky, r.userId);
                if (r.allowBackgroundActivityStarts) {
                    postActivityStartTokenRemoval(filter.receiverList.app, r);
                }
            }
            if (ordered) {
                r.state = 3;
                return;
            }
            return;
        }
        r.delivery[index] = 2;
    }

    private boolean requestStartTargetPermissionsReviewIfNeededLocked(BroadcastRecord receiverRecord, String receivingPackageName, final int receivingUserId) {
        if (!this.mService.getPackageManagerInternalLocked().isPermissionsReviewRequired(receivingPackageName, receivingUserId)) {
            return true;
        }
        boolean callerForeground = receiverRecord.callerApp == null || receiverRecord.callerApp.setSchedGroup != 0;
        if (callerForeground && receiverRecord.intent.getComponent() != null) {
            PendingIntentRecord intentSender = this.mService.mPendingIntentController.getIntentSender(1, receiverRecord.callerPackage, receiverRecord.callerFeatureId, receiverRecord.callingUid, receiverRecord.userId, null, null, 0, new Intent[]{receiverRecord.intent}, new String[]{receiverRecord.intent.resolveType(this.mService.mContext.getContentResolver())}, 1409286144, null);
            final Intent intent = new Intent("android.intent.action.REVIEW_PERMISSIONS");
            intent.addFlags(411041792);
            intent.putExtra("android.intent.extra.PACKAGE_NAME", receivingPackageName);
            intent.putExtra("android.intent.extra.INTENT", new IntentSender(intentSender));
            this.mHandler.post(new Runnable() { // from class: com.android.server.am.BroadcastQueue.1
                @Override // java.lang.Runnable
                public void run() {
                    BroadcastQueue.this.mService.mContext.startActivityAsUser(intent, new UserHandle(receivingUserId));
                }
            });
        } else {
            Slog.w("BroadcastQueue", "u" + receivingUserId + " Receiving a broadcast in package" + receivingPackageName + " requires a permissions review");
        }
        return false;
    }

    final void scheduleTempWhitelistLocked(int uid, long duration, BroadcastRecord r) {
        if (duration > 2147483647L) {
            duration = 2147483647L;
        }
        StringBuilder b = new StringBuilder();
        b.append("broadcast:");
        UserHandle.formatUid(b, r.callingUid);
        b.append(":");
        if (r.intent.getAction() != null) {
            b.append(r.intent.getAction());
        } else if (r.intent.getComponent() != null) {
            r.intent.getComponent().appendShortString(b);
        } else if (r.intent.getData() != null) {
            b.append(r.intent.getData());
        }
        this.mService.tempWhitelistUidLocked(uid, duration, b.toString());
    }

    final boolean isSignaturePerm(String[] perms) {
        if (perms == null) {
            return false;
        }
        IPermissionManager pm = AppGlobals.getPermissionManager();
        for (int i = perms.length - 1; i >= 0; i--) {
            try {
                PermissionInfo pi = pm.getPermissionInfo(perms[i], PackageManagerService.PLATFORM_PACKAGE_NAME, 0);
                if (pi == null || (pi.protectionLevel & 31) != 2) {
                    return false;
                }
            } catch (RemoteException e) {
                return false;
            }
        }
        return true;
    }

    final void processNextBroadcast(boolean fromMsg) {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                processNextBroadcastLocked(fromMsg, false);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:300:0x0a5c  */
    /* JADX WARN: Code duplicated, block: B:302:0x0a60  */
    /* JADX WARN: Code duplicated, block: B:304:0x0a77  */
    /* JADX WARN: Code duplicated, block: B:309:0x0a95  */
    /* JADX WARN: Code duplicated, block: B:312:0x0a9b  */
    /* JADX WARN: Code duplicated, block: B:343:0x0b8b  */
    /* JADX WARN: Code duplicated, block: B:346:0x0baf  */
    /* JADX WARN: Code duplicated, block: B:347:0x0bb2  */
    /* JADX WARN: Code duplicated, block: B:350:0x0bbf  */
    /* JADX WARN: Code duplicated, block: B:351:0x0bc2  */
    /* JADX WARN: Code duplicated, block: B:354:0x0bd8  */
    /* JADX WARN: Code duplicated, block: B:356:0x0c24  */
    /* JADX WARN: Code duplicated, block: B:96:0x022b  */
    /* JADX WARN: Instruction removed from duplicated block: B:354:0x0bd8, please report this as an issue */
    final void processNextBroadcastLocked(boolean fromMsg, boolean skipOomAdj) {
        int i;
        boolean forceReceive;
        BroadcastRecord r;
        IIntentReceiver iIntentReceiver;
        BroadcastRecord r2;
        boolean sendResult;
        boolean skip;
        int opCode;
        boolean isSingleton;
        boolean skip2;
        boolean skip3;
        boolean skip4;
        boolean z;
        boolean isActivityCapable;
        int i2;
        boolean z2;
        ProcessRecord processRecordStartProcessLocked;
        BroadcastRecord defer;
        boolean isDead;
        this.mService.updateCpuStats();
        if (fromMsg) {
            this.mBroadcastsScheduled = false;
        }
        while (true) {
            i = 1;
            if (this.mParallelBroadcasts.size() <= 0) {
                break;
            }
            BroadcastRecord r3 = this.mParallelBroadcasts.remove(0);
            r3.dispatchTime = SystemClock.uptimeMillis();
            r3.dispatchClockTime = System.currentTimeMillis();
            if (Trace.isTagEnabled(64L)) {
                Trace.asyncTraceEnd(64L, createBroadcastTraceTitle(r3, 0), System.identityHashCode(r3));
                Trace.asyncTraceBegin(64L, createBroadcastTraceTitle(r3, 1), System.identityHashCode(r3));
            }
            int N = r3.receivers.size();
            for (int i3 = 0; i3 < N; i3++) {
                Object target = r3.receivers.get(i3);
                deliverToRegisteredReceiverLocked(r3, (BroadcastFilter) target, false, i3);
            }
            addBroadcastToHistoryLocked(r3);
        }
        BroadcastRecord r4 = this.mPendingBroadcast;
        IIntentReceiver iIntentReceiver2 = null;
        if (r4 != null) {
            if (r4.curApp.pid <= 0) {
                ProcessRecord proc = (ProcessRecord) this.mService.mProcessList.mProcessNames.get(this.mPendingBroadcast.curApp.processName, this.mPendingBroadcast.curApp.uid);
                isDead = proc == null || !proc.pendingStart;
            } else {
                synchronized (this.mService.mPidsSelfLocked) {
                    ProcessRecord proc2 = this.mService.mPidsSelfLocked.get(this.mPendingBroadcast.curApp.pid);
                    isDead = proc2 == null || proc2.isCrashing();
                }
            }
            if (!isDead) {
                return;
            }
            Slog.w("BroadcastQueue", "pending app  [" + this.mQueueName + "]" + this.mPendingBroadcast.curApp + " died before responding to broadcast");
            this.mPendingBroadcast.state = 0;
            this.mPendingBroadcast.nextReceiver = this.mPendingBroadcastRecvIndex;
            this.mPendingBroadcast = null;
        }
        boolean looped = false;
        while (true) {
            long now = SystemClock.uptimeMillis();
            BroadcastRecord r5 = this.mDispatcher.getNextBroadcastLocked(now);
            if (r5 == null) {
                this.mDispatcher.scheduleDeferralCheckLocked(false);
                this.mService.scheduleAppGcsLocked();
                if (looped) {
                    this.mService.updateOomAdjLocked("updateOomAdj_startReceiver");
                }
                if (this.mService.mUserController.mBootCompleted && this.mLogLatencyMetrics) {
                    this.mLogLatencyMetrics = false;
                    return;
                }
                return;
            }
            int numReceivers = r5.receivers != null ? r5.receivers.size() : 0;
            if (this.mService.mProcessesReady && !r5.timeoutExempt && r5.dispatchTime > 0 && numReceivers > 0 && now > r5.dispatchTime + (this.mConstants.TIMEOUT * 2 * ((long) numReceivers))) {
                Slog.w("BroadcastQueue", "Hung broadcast [" + this.mQueueName + "] discarded after timeout failure: now=" + now + " dispatchTime=" + r5.dispatchTime + " startTime=" + r5.receiverTime + " intent=" + r5.intent + " numReceivers=" + numReceivers + " nextReceiver=" + r5.nextReceiver + " state=" + r5.state);
                broadcastTimeoutLocked(false);
                r5.state = 0;
                forceReceive = true;
            } else {
                forceReceive = false;
            }
            if (r5.state != 0) {
                return;
            }
            if (r5.receivers == null || r5.nextReceiver >= numReceivers || r5.resultAbort || forceReceive) {
                if (r5.resultTo != null) {
                    if (r5.splitToken != 0) {
                        int newCount = this.mSplitRefcounts.get(r5.splitToken) - i;
                        if (newCount == 0) {
                            this.mSplitRefcounts.delete(r5.splitToken);
                            sendResult = true;
                        } else {
                            this.mSplitRefcounts.put(r5.splitToken, newCount);
                            sendResult = false;
                        }
                    } else {
                        sendResult = true;
                    }
                    if (sendResult) {
                        if (r5.callerApp != null) {
                            this.mService.mOomAdjuster.mCachedAppOptimizer.unfreezeTemporarily(r5.callerApp);
                        }
                        try {
                            try {
                                r = r5;
                                iIntentReceiver = null;
                                try {
                                    performReceiveLocked(r5.callerApp, r5.resultTo, new Intent(r5.intent), r5.resultCode, r5.resultData, r5.resultExtras, false, false, r5.userId);
                                    r.resultTo = null;
                                } catch (RemoteException e) {
                                    e = e;
                                    r.resultTo = iIntentReceiver;
                                    Slog.w("BroadcastQueue", "Failure [" + this.mQueueName + "] sending broadcast result of " + r.intent, e);
                                }
                            } catch (RemoteException e2) {
                                e = e2;
                                r = r5;
                                iIntentReceiver = null;
                            }
                        } catch (RemoteException e3) {
                            e = e3;
                            r = r5;
                            iIntentReceiver = iIntentReceiver2;
                        }
                    } else {
                        r = r5;
                        iIntentReceiver = iIntentReceiver2;
                    }
                } else {
                    r = r5;
                    iIntentReceiver = iIntentReceiver2;
                }
                cancelBroadcastTimeoutLocked();
                addBroadcastToHistoryLocked(r);
                if (r.intent.getComponent() == null && r.intent.getPackage() == null && (r.intent.getFlags() & 1073741824) == 0) {
                    this.mService.addBroadcastStatLocked(r.intent.getAction(), r.callerPackage, r.manifestCount, r.manifestSkipCount, r.finishTime - r.dispatchTime);
                }
                this.mDispatcher.retireBroadcastLocked(r);
                looped = true;
                r2 = null;
            } else if (!r5.deferred) {
                int receiverUid = r5.getReceiverUid(r5.receivers.get(r5.nextReceiver));
                if (this.mDispatcher.isDeferringLocked(receiverUid)) {
                    if (r5.nextReceiver + i == numReceivers) {
                        defer = r5;
                        this.mDispatcher.retireBroadcastLocked(r5);
                    } else {
                        defer = r5.splitRecipientsLocked(receiverUid, r5.nextReceiver);
                        if (r5.resultTo != null) {
                            int token = r5.splitToken;
                            if (token == 0) {
                                int iNextSplitTokenLocked = nextSplitTokenLocked();
                                defer.splitToken = iNextSplitTokenLocked;
                                r5.splitToken = iNextSplitTokenLocked;
                                this.mSplitRefcounts.put(r5.splitToken, 2);
                            } else {
                                int curCount = this.mSplitRefcounts.get(token);
                                this.mSplitRefcounts.put(token, curCount + 1);
                            }
                        }
                    }
                    this.mDispatcher.addDeferredBroadcast(receiverUid, defer);
                    looped = true;
                    r2 = null;
                    iIntentReceiver = iIntentReceiver2;
                } else {
                    r2 = r5;
                    iIntentReceiver = iIntentReceiver2;
                }
            } else {
                r2 = r5;
                iIntentReceiver = iIntentReceiver2;
            }
            if (r2 != null) {
                int recIdx = r2.nextReceiver;
                r2.nextReceiver = recIdx + 1;
                r2.receiverTime = SystemClock.uptimeMillis();
                if (recIdx == 0) {
                    r2.dispatchTime = r2.receiverTime;
                    r2.dispatchClockTime = System.currentTimeMillis();
                    if (this.mLogLatencyMetrics) {
                        FrameworkStatsLog.write(CecMessageType.MENU_STATUS, r2.dispatchClockTime - r2.enqueueClockTime);
                    }
                    if (Trace.isTagEnabled(64L)) {
                        Trace.asyncTraceEnd(64L, createBroadcastTraceTitle(r2, 0), System.identityHashCode(r2));
                        Trace.asyncTraceBegin(64L, createBroadcastTraceTitle(r2, 1), System.identityHashCode(r2));
                    }
                }
                if (!this.mPendingBroadcastTimeoutMessage) {
                    long timeoutTime = r2.receiverTime + this.mConstants.TIMEOUT;
                    setBroadcastTimeoutLocked(timeoutTime);
                }
                BroadcastOptions brOptions = r2.options;
                Object nextReceiver = r2.receivers.get(recIdx);
                if (nextReceiver instanceof BroadcastFilter) {
                    BroadcastFilter filter = (BroadcastFilter) nextReceiver;
                    deliverToRegisteredReceiverLocked(r2, filter, r2.ordered, recIdx);
                    if (r2.receiver == null || !r2.ordered) {
                        r2.state = 0;
                        scheduleBroadcastsLocked();
                        return;
                    }
                    if (filter.receiverList != null) {
                        maybeAddAllowBackgroundActivityStartsToken(filter.receiverList.app, r2);
                    }
                    if (brOptions != null && brOptions.getTemporaryAppWhitelistDuration() > 0) {
                        scheduleTempWhitelistLocked(filter.owningUid, brOptions.getTemporaryAppWhitelistDuration(), r2);
                        return;
                    }
                    return;
                }
                ResolveInfo info = (ResolveInfo) nextReceiver;
                ComponentName component = new ComponentName(info.activityInfo.applicationInfo.packageName, info.activityInfo.name);
                boolean skip5 = false;
                if (brOptions != null && (info.activityInfo.applicationInfo.targetSdkVersion < brOptions.getMinManifestReceiverApiLevel() || info.activityInfo.applicationInfo.targetSdkVersion > brOptions.getMaxManifestReceiverApiLevel())) {
                    skip5 = true;
                }
                if (!skip5 && !this.mService.validateAssociationAllowedLocked(r2.callerPackage, r2.callingUid, component.getPackageName(), info.activityInfo.applicationInfo.uid)) {
                    Slog.w("BroadcastQueue", "Association not allowed: broadcasting " + r2.intent.toString() + " from " + r2.callerPackage + " (pid=" + r2.callingPid + ", uid=" + r2.callingUid + ") to " + component.flattenToShortString());
                    skip5 = true;
                }
                if (!skip5 && ((skip5 = !this.mService.mIntentFirewall.checkBroadcast(r2.intent, r2.callingUid, r2.callingPid, r2.resolvedType, info.activityInfo.applicationInfo.uid)))) {
                    Slog.w("BroadcastQueue", "Firewall blocked: broadcasting " + r2.intent.toString() + " from " + r2.callerPackage + " (pid=" + r2.callingPid + ", uid=" + r2.callingUid + ") to " + component.flattenToShortString());
                }
                int perm = ActivityManagerService.checkComponentPermission(info.activityInfo.permission, r2.callingPid, r2.callingUid, info.activityInfo.applicationInfo.uid, info.activityInfo.exported);
                if (!skip5 && perm != 0) {
                    if (!info.activityInfo.exported) {
                        Slog.w("BroadcastQueue", "Permission Denial: broadcasting " + r2.intent.toString() + " from " + r2.callerPackage + " (pid=" + r2.callingPid + ", uid=" + r2.callingUid + ") is not exported from uid " + info.activityInfo.applicationInfo.uid + " due to receiver " + component.flattenToShortString());
                    } else {
                        Slog.w("BroadcastQueue", "Permission Denial: broadcasting " + r2.intent.toString() + " from " + r2.callerPackage + " (pid=" + r2.callingPid + ", uid=" + r2.callingUid + ") requires " + info.activityInfo.permission + " due to receiver " + component.flattenToShortString());
                    }
                    skip = true;
                } else if (!skip5 && info.activityInfo.permission != null && (opCode = AppOpsManager.permissionToOpCode(info.activityInfo.permission)) != -1 && this.mService.getAppOpsManager().noteOpNoThrow(opCode, r2.callingUid, r2.callerPackage, r2.callerFeatureId, "") != 0) {
                    Slog.w("BroadcastQueue", "Appop Denial: broadcasting " + r2.intent.toString() + " from " + r2.callerPackage + " (pid=" + r2.callingPid + ", uid=" + r2.callingUid + ") requires appop " + AppOpsManager.permissionToOp(info.activityInfo.permission) + " due to registered receiver " + component.flattenToShortString());
                    skip = true;
                } else {
                    skip = skip5;
                }
                if (!skip && info.activityInfo.applicationInfo.uid != 1000 && r2.requiredPermissions != null && r2.requiredPermissions.length > 0) {
                    int perm2 = perm;
                    for (int perm3 = 0; perm3 < r2.requiredPermissions.length; perm3++) {
                        String requiredPermission = r2.requiredPermissions[perm3];
                        try {
                            perm2 = AppGlobals.getPackageManager().checkPermission(requiredPermission, info.activityInfo.applicationInfo.packageName, UserHandle.getUserId(info.activityInfo.applicationInfo.uid));
                        } catch (RemoteException e4) {
                            perm2 = -1;
                        }
                        if (perm2 != 0) {
                            Slog.w("BroadcastQueue", "Permission Denial: receiving " + r2.intent + " to " + component.flattenToShortString() + " requires " + requiredPermission + " due to sender " + r2.callerPackage + " (uid " + r2.callingUid + ")");
                            skip = true;
                            break;
                        }
                        int appOp = AppOpsManager.permissionToOpCode(requiredPermission);
                        if (appOp != -1 && appOp != r2.appOp && this.mService.getAppOpsManager().noteOpNoThrow(appOp, info.activityInfo.applicationInfo.uid, info.activityInfo.packageName, (String) null, "") != 0) {
                            Slog.w("BroadcastQueue", "Appop Denial: receiving " + r2.intent + " to " + component.flattenToShortString() + " requires appop " + AppOpsManager.permissionToOp(requiredPermission) + " due to sender " + r2.callerPackage + " (uid " + r2.callingUid + ")");
                            skip = true;
                            break;
                        }
                    }
                }
                if (!skip && r2.appOp != -1 && this.mService.getAppOpsManager().noteOpNoThrow(r2.appOp, info.activityInfo.applicationInfo.uid, info.activityInfo.packageName, (String) null, "") != 0) {
                    Slog.w("BroadcastQueue", "Appop Denial: receiving " + r2.intent + " to " + component.flattenToShortString() + " requires appop " + AppOpsManager.opToName(r2.appOp) + " due to sender " + r2.callerPackage + " (uid " + r2.callingUid + ")");
                    skip = true;
                }
                try {
                    boolean isSingleton2 = this.mService.isSingleton(info.activityInfo.processName, info.activityInfo.applicationInfo, info.activityInfo.name, info.activityInfo.flags);
                    isSingleton = isSingleton2;
                } catch (SecurityException e5) {
                    Slog.w("BroadcastQueue", e5.getMessage());
                    skip = true;
                    isSingleton = false;
                }
                if ((info.activityInfo.flags & 1073741824) != 0 && ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS", info.activityInfo.applicationInfo.uid) != 0) {
                    Slog.w("BroadcastQueue", "Permission Denial: Receiver " + component.flattenToShortString() + " requests FLAG_SINGLE_USER, but app does not hold android.permission.INTERACT_ACROSS_USERS");
                    skip = true;
                }
                if (!skip && info.activityInfo.applicationInfo.isInstantApp() && r2.callingUid != info.activityInfo.applicationInfo.uid) {
                    Slog.w("BroadcastQueue", "Instant App Denial: receiving " + r2.intent + " to " + component.flattenToShortString() + " due to sender " + r2.callerPackage + " (uid " + r2.callingUid + ") Instant Apps do not support manifest receivers");
                    skip = true;
                }
                if (!skip && r2.callerInstantApp && (info.activityInfo.flags & 1048576) == 0 && r2.callingUid != info.activityInfo.applicationInfo.uid) {
                    Slog.w("BroadcastQueue", "Instant App Denial: receiving " + r2.intent + " to " + component.flattenToShortString() + " requires receiver have visibleToInstantApps set due to sender " + r2.callerPackage + " (uid " + r2.callingUid + ")");
                    skip = true;
                }
                if (r2.curApp != null && r2.curApp.isCrashing()) {
                    Slog.w("BroadcastQueue", "Skipping deliver ordered [" + this.mQueueName + "] " + r2 + " to " + r2.curApp + ": process crashing");
                    skip = true;
                }
                if (!skip) {
                    boolean isAvailable = false;
                    try {
                        isAvailable = AppGlobals.getPackageManager().isPackageAvailable(info.activityInfo.packageName, UserHandle.getUserId(info.activityInfo.applicationInfo.uid));
                    } catch (Exception e6) {
                        Slog.w("BroadcastQueue", "Exception getting recipient info for " + info.activityInfo.packageName, e6);
                    }
                    if (!isAvailable) {
                        skip = true;
                    }
                }
                if (!skip && !requestStartTargetPermissionsReviewIfNeededLocked(r2, info.activityInfo.packageName, UserHandle.getUserId(info.activityInfo.applicationInfo.uid))) {
                    skip = true;
                }
                int receiverUid2 = info.activityInfo.applicationInfo.uid;
                if (r2.callingUid != 1000 && isSingleton && this.mService.isValidSingletonCall(r2.callingUid, receiverUid2)) {
                    info.activityInfo = this.mService.getActivityInfoForUser(info.activityInfo, 0);
                }
                String targetProcess = info.activityInfo.processName;
                ProcessRecord app = this.mService.getProcessRecordLocked(targetProcess, info.activityInfo.applicationInfo.uid, false);
                if (skip) {
                    skip2 = skip;
                } else {
                    skip2 = skip;
                    int allowed = this.mService.getAppStartModeLocked(info.activityInfo.applicationInfo.uid, info.activityInfo.packageName, info.activityInfo.applicationInfo.targetSdkVersion, -1, true, false, false);
                    if (allowed != 0) {
                        if (allowed == 3) {
                            Slog.w("BroadcastQueue", "Background execution disabled: receiving " + r2.intent + " to " + component.flattenToShortString());
                            skip3 = true;
                        } else if ((r2.intent.getFlags() & 8388608) != 0 || (r2.intent.getComponent() == null && r2.intent.getPackage() == null && (r2.intent.getFlags() & 16777216) == 0 && !isSignaturePerm(r2.requiredPermissions))) {
                            this.mService.addBackgroundCheckViolationLocked(r2.intent.getAction(), component.getPackageName());
                            Slog.w("BroadcastQueue", "Background execution not allowed: receiving " + r2.intent + " to " + component.flattenToShortString());
                            skip3 = true;
                        }
                    }
                    if (skip3 && !"android.intent.action.ACTION_SHUTDOWN".equals(r2.intent.getAction()) && !this.mService.mUserController.isUserRunning(UserHandle.getUserId(info.activityInfo.applicationInfo.uid), 0)) {
                        Slog.w("BroadcastQueue", "Skipping delivery to " + info.activityInfo.packageName + " / " + info.activityInfo.applicationInfo.uid + " : user is not running");
                        skip4 = true;
                    } else {
                        skip4 = skip3;
                    }
                    if (skip4) {
                        r2.delivery[recIdx] = 2;
                        r2.receiver = null;
                        r2.curFilter = null;
                        r2.state = 0;
                        r2.manifestSkipCount++;
                        scheduleBroadcastsLocked();
                        return;
                    }
                    r2.manifestCount++;
                    r2.delivery[recIdx] = 1;
                    r2.state = 1;
                    r2.curComponent = component;
                    r2.curReceiver = info.activityInfo;
                    if (brOptions != null || brOptions.getTemporaryAppWhitelistDuration() <= 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                    isActivityCapable = z;
                    if (isActivityCapable) {
                        scheduleTempWhitelistLocked(receiverUid2, brOptions.getTemporaryAppWhitelistDuration(), r2);
                    }
                    try {
                        AppGlobals.getPackageManager().setPackageStoppedState(r2.curComponent.getPackageName(), false, r2.userId);
                    } catch (RemoteException e7) {
                    } catch (IllegalArgumentException e8) {
                        Slog.w("BroadcastQueue", "Failed trying to unstop package " + r2.curComponent.getPackageName() + ": " + e8);
                    }
                    if (app != null || app.thread == null || app.killed) {
                        targetProcess = targetProcess;
                        receiverUid2 = receiverUid2;
                    } else {
                        try {
                            try {
                                try {
                                    app.addPackage(info.activityInfo.packageName, info.activityInfo.applicationInfo.longVersionCode, this.mService.mProcessStats);
                                    maybeAddAllowBackgroundActivityStartsToken(app, r2);
                                    try {
                                        processCurBroadcastLocked(r2, app, skipOomAdj);
                                        return;
                                    } catch (RemoteException e9) {
                                        e = e9;
                                        Slog.w("BroadcastQueue", "Exception when sending broadcast to " + r2.curComponent, e);
                                        ActivityManagerService activityManagerService = this.mService;
                                        ApplicationInfo applicationInfo = info.activityInfo.applicationInfo;
                                        int flags = r2.intent.getFlags() | 4;
                                        HostingRecord hostingRecord = new HostingRecord(INetd.IF_FLAG_BROADCAST, r2.curComponent);
                                        if (isActivityCapable) {
                                            i2 = 1;
                                        } else {
                                            i2 = 0;
                                        }
                                        if ((r2.intent.getFlags() & 33554432) != 0) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        processRecordStartProcessLocked = activityManagerService.startProcessLocked(targetProcess, applicationInfo, true, flags, hostingRecord, i2, z2, false, false);
                                        r2.curApp = processRecordStartProcessLocked;
                                        if (processRecordStartProcessLocked != null) {
                                            maybeAddAllowBackgroundActivityStartsToken(r2.curApp, r2);
                                            this.mPendingBroadcast = r2;
                                            this.mPendingBroadcastRecvIndex = recIdx;
                                            return;
                                        }
                                        Slog.w("BroadcastQueue", "Unable to launch app " + info.activityInfo.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + receiverUid2 + " for broadcast " + r2.intent + ": process is bad");
                                        logBroadcastReceiverDiscardLocked(r2);
                                        finishReceiverLocked(r2, r2.resultCode, r2.resultData, r2.resultExtras, r2.resultAbort, false);
                                        scheduleBroadcastsLocked();
                                        r2.state = 0;
                                        return;
                                    } catch (RuntimeException e10) {
                                        e = e10;
                                        Slog.wtf("BroadcastQueue", "Failed sending broadcast to " + r2.curComponent + " with " + r2.intent, e);
                                        logBroadcastReceiverDiscardLocked(r2);
                                        finishReceiverLocked(r2, r2.resultCode, r2.resultData, r2.resultExtras, r2.resultAbort, false);
                                        scheduleBroadcastsLocked();
                                        r2.state = 0;
                                        return;
                                    }
                                } catch (RemoteException e11) {
                                    e = e11;
                                }
                            } catch (RemoteException e12) {
                                e = e12;
                            }
                        } catch (RuntimeException e13) {
                            e = e13;
                        }
                    }
                    ActivityManagerService activityManagerService2 = this.mService;
                    ApplicationInfo applicationInfo2 = info.activityInfo.applicationInfo;
                    int flags2 = r2.intent.getFlags() | 4;
                    HostingRecord hostingRecord2 = new HostingRecord(INetd.IF_FLAG_BROADCAST, r2.curComponent);
                    if (isActivityCapable) {
                        i2 = 1;
                    } else {
                        i2 = 0;
                    }
                    if ((r2.intent.getFlags() & 33554432) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    processRecordStartProcessLocked = activityManagerService2.startProcessLocked(targetProcess, applicationInfo2, true, flags2, hostingRecord2, i2, z2, false, false);
                    r2.curApp = processRecordStartProcessLocked;
                    if (processRecordStartProcessLocked != null) {
                        maybeAddAllowBackgroundActivityStartsToken(r2.curApp, r2);
                        this.mPendingBroadcast = r2;
                        this.mPendingBroadcastRecvIndex = recIdx;
                        return;
                    }
                    Slog.w("BroadcastQueue", "Unable to launch app " + info.activityInfo.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + receiverUid2 + " for broadcast " + r2.intent + ": process is bad");
                    logBroadcastReceiverDiscardLocked(r2);
                    finishReceiverLocked(r2, r2.resultCode, r2.resultData, r2.resultExtras, r2.resultAbort, false);
                    scheduleBroadcastsLocked();
                    r2.state = 0;
                    return;
                }
                skip3 = skip2;
                if (skip3) {
                    skip4 = skip3;
                } else {
                    skip4 = skip3;
                }
                if (skip4) {
                    r2.delivery[recIdx] = 2;
                    r2.receiver = null;
                    r2.curFilter = null;
                    r2.state = 0;
                    r2.manifestSkipCount++;
                    scheduleBroadcastsLocked();
                    return;
                }
                r2.manifestCount++;
                r2.delivery[recIdx] = 1;
                r2.state = 1;
                r2.curComponent = component;
                r2.curReceiver = info.activityInfo;
                if (brOptions != null) {
                    z = false;
                } else {
                    z = false;
                }
                isActivityCapable = z;
                if (isActivityCapable) {
                    scheduleTempWhitelistLocked(receiverUid2, brOptions.getTemporaryAppWhitelistDuration(), r2);
                }
                AppGlobals.getPackageManager().setPackageStoppedState(r2.curComponent.getPackageName(), false, r2.userId);
                if (app != null) {
                    targetProcess = targetProcess;
                    receiverUid2 = receiverUid2;
                } else {
                    targetProcess = targetProcess;
                    receiverUid2 = receiverUid2;
                }
                ActivityManagerService activityManagerService3 = this.mService;
                ApplicationInfo applicationInfo3 = info.activityInfo.applicationInfo;
                int flags3 = r2.intent.getFlags() | 4;
                HostingRecord hostingRecord3 = new HostingRecord(INetd.IF_FLAG_BROADCAST, r2.curComponent);
                if (isActivityCapable) {
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                if ((r2.intent.getFlags() & 33554432) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                processRecordStartProcessLocked = activityManagerService3.startProcessLocked(targetProcess, applicationInfo3, true, flags3, hostingRecord3, i2, z2, false, false);
                r2.curApp = processRecordStartProcessLocked;
                if (processRecordStartProcessLocked != null) {
                    maybeAddAllowBackgroundActivityStartsToken(r2.curApp, r2);
                    this.mPendingBroadcast = r2;
                    this.mPendingBroadcastRecvIndex = recIdx;
                    return;
                }
                Slog.w("BroadcastQueue", "Unable to launch app " + info.activityInfo.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + receiverUid2 + " for broadcast " + r2.intent + ": process is bad");
                logBroadcastReceiverDiscardLocked(r2);
                finishReceiverLocked(r2, r2.resultCode, r2.resultData, r2.resultExtras, r2.resultAbort, false);
                scheduleBroadcastsLocked();
                r2.state = 0;
                return;
            }
            iIntentReceiver2 = iIntentReceiver;
            i = 1;
        }
    }

    private void maybeAddAllowBackgroundActivityStartsToken(ProcessRecord proc, BroadcastRecord r) {
        if (r == null || proc == null || !r.allowBackgroundActivityStarts) {
            return;
        }
        String msgToken = (proc.toShortString() + r.toString()).intern();
        this.mHandler.removeCallbacksAndMessages(msgToken);
        proc.addAllowBackgroundActivityStartsToken(r);
    }

    final void setBroadcastTimeoutLocked(long timeoutTime) {
        if (!this.mPendingBroadcastTimeoutMessage) {
            Message msg = this.mHandler.obtainMessage(BROADCAST_TIMEOUT_MSG, this);
            this.mHandler.sendMessageAtTime(msg, timeoutTime);
            this.mPendingBroadcastTimeoutMessage = true;
        }
    }

    final void cancelBroadcastTimeoutLocked() {
        if (this.mPendingBroadcastTimeoutMessage) {
            this.mHandler.removeMessages(BROADCAST_TIMEOUT_MSG, this);
            this.mPendingBroadcastTimeoutMessage = false;
        }
    }

    final void broadcastTimeoutLocked(boolean fromMsg) {
        Object curReceiver;
        ProcessRecord app;
        String anrMessage;
        boolean debugging = false;
        if (fromMsg) {
            this.mPendingBroadcastTimeoutMessage = false;
        }
        if (this.mDispatcher.isEmpty() || this.mDispatcher.getActiveBroadcastLocked() == null) {
            return;
        }
        long now = SystemClock.uptimeMillis();
        BroadcastRecord r = this.mDispatcher.getActiveBroadcastLocked();
        if (fromMsg) {
            if (!this.mService.mProcessesReady || r.timeoutExempt) {
                return;
            }
            long timeoutTime = r.receiverTime + this.mConstants.TIMEOUT;
            if (timeoutTime > now) {
                setBroadcastTimeoutLocked(timeoutTime);
                return;
            }
        }
        if (r.state == 4) {
            StringBuilder sb = new StringBuilder();
            sb.append("Waited long enough for: ");
            sb.append(r.curComponent != null ? r.curComponent.flattenToShortString() : "(null)");
            Slog.i("BroadcastQueue", sb.toString());
            r.curComponent = null;
            r.state = 0;
            processNextBroadcast(false);
            return;
        }
        if (r.curApp != null && r.curApp.isDebugging()) {
            debugging = true;
        }
        Slog.w("BroadcastQueue", "Timeout of broadcast " + r + " - receiver=" + r.receiver + ", started " + (now - r.receiverTime) + "ms ago");
        r.receiverTime = now;
        if (!debugging) {
            r.anrCount++;
        }
        ProcessRecord app2 = null;
        if (r.nextReceiver > 0) {
            Object curReceiver2 = r.receivers.get(r.nextReceiver - 1);
            r.delivery[r.nextReceiver - 1] = 3;
            curReceiver = curReceiver2;
        } else {
            Object curReceiver3 = r.curReceiver;
            curReceiver = curReceiver3;
        }
        Slog.w("BroadcastQueue", "Receiver during timeout of " + r + " : " + curReceiver);
        logBroadcastReceiverDiscardLocked(r);
        if (curReceiver != null && (curReceiver instanceof BroadcastFilter)) {
            BroadcastFilter bf = (BroadcastFilter) curReceiver;
            if (bf.receiverList.pid != 0 && bf.receiverList.pid != ActivityManagerService.MY_PID) {
                synchronized (this.mService.mPidsSelfLocked) {
                    app2 = this.mService.mPidsSelfLocked.get(bf.receiverList.pid);
                }
            }
            app = app2;
        } else {
            app = r.curApp;
        }
        if (app == null) {
            anrMessage = null;
        } else {
            String anrMessage2 = "Broadcast of " + r.intent.toString();
            anrMessage = anrMessage2;
        }
        if (this.mPendingBroadcast == r) {
            this.mPendingBroadcast = null;
        }
        finishReceiverLocked(r, r.resultCode, r.resultData, r.resultExtras, r.resultAbort, false);
        scheduleBroadcastsLocked();
        if (!debugging && anrMessage != null) {
            this.mService.mAnrHelper.appNotResponding(app, anrMessage);
        }
    }

    private final int ringAdvance(int x, int increment, int ringSize) {
        int x2 = x + increment;
        if (x2 < 0) {
            return ringSize - 1;
        }
        if (x2 >= ringSize) {
            return 0;
        }
        return x2;
    }

    private final void addBroadcastToHistoryLocked(BroadcastRecord original) {
        if (original.callingUid < 0) {
            return;
        }
        original.finishTime = SystemClock.uptimeMillis();
        if (Trace.isTagEnabled(64L)) {
            Trace.asyncTraceEnd(64L, createBroadcastTraceTitle(original, 1), System.identityHashCode(original));
        }
        BroadcastRecord historyRecord = original.maybeStripForHistory();
        BroadcastRecord[] broadcastRecordArr = this.mBroadcastHistory;
        int i = this.mHistoryNext;
        broadcastRecordArr[i] = historyRecord;
        this.mHistoryNext = ringAdvance(i, 1, MAX_BROADCAST_HISTORY);
        this.mBroadcastSummaryHistory[this.mSummaryHistoryNext] = historyRecord.intent;
        this.mSummaryHistoryEnqueueTime[this.mSummaryHistoryNext] = historyRecord.enqueueClockTime;
        this.mSummaryHistoryDispatchTime[this.mSummaryHistoryNext] = historyRecord.dispatchClockTime;
        this.mSummaryHistoryFinishTime[this.mSummaryHistoryNext] = System.currentTimeMillis();
        this.mSummaryHistoryNext = ringAdvance(this.mSummaryHistoryNext, 1, MAX_BROADCAST_SUMMARY_HISTORY);
    }

    boolean cleanupDisabledPackageReceiversLocked(String packageName, Set<String> filterByClasses, int userId, boolean doit) {
        boolean didSomething = false;
        for (int i = this.mParallelBroadcasts.size() - 1; i >= 0; i--) {
            didSomething |= this.mParallelBroadcasts.get(i).cleanupDisabledPackageReceiversLocked(packageName, filterByClasses, userId, doit);
            if (!doit && didSomething) {
                return true;
            }
        }
        return didSomething | this.mDispatcher.cleanupDisabledPackageReceiversLocked(packageName, filterByClasses, userId, doit);
    }

    final void logBroadcastReceiverDiscardLocked(BroadcastRecord r) {
        int logIndex = r.nextReceiver - 1;
        if (logIndex >= 0 && logIndex < r.receivers.size()) {
            Object curReceiver = r.receivers.get(logIndex);
            if (curReceiver instanceof BroadcastFilter) {
                BroadcastFilter bf = (BroadcastFilter) curReceiver;
                EventLog.writeEvent(EventLogTags.AM_BROADCAST_DISCARD_FILTER, Integer.valueOf(bf.owningUserId), Integer.valueOf(System.identityHashCode(r)), r.intent.getAction(), Integer.valueOf(logIndex), Integer.valueOf(System.identityHashCode(bf)));
                return;
            } else {
                ResolveInfo ri = (ResolveInfo) curReceiver;
                EventLog.writeEvent(EventLogTags.AM_BROADCAST_DISCARD_APP, Integer.valueOf(UserHandle.getUserId(ri.activityInfo.applicationInfo.uid)), Integer.valueOf(System.identityHashCode(r)), r.intent.getAction(), Integer.valueOf(logIndex), ri.toString());
                return;
            }
        }
        if (logIndex < 0) {
            Slog.w("BroadcastQueue", "Discarding broadcast before first receiver is invoked: " + r);
        }
        EventLog.writeEvent(EventLogTags.AM_BROADCAST_DISCARD_APP, -1, Integer.valueOf(System.identityHashCode(r)), r.intent.getAction(), Integer.valueOf(r.nextReceiver), "NONE");
    }

    private String createBroadcastTraceTitle(BroadcastRecord record, int state) {
        Object[] objArr = new Object[4];
        objArr[0] = state == 0 ? "in queue" : "dispatched";
        objArr[1] = record.callerPackage == null ? "" : record.callerPackage;
        objArr[2] = record.callerApp == null ? "process unknown" : record.callerApp.toShortString();
        objArr[3] = record.intent != null ? record.intent.getAction() : "";
        return String.format("Broadcast %s from %s (%s) %s", objArr);
    }

    boolean isIdle() {
        return this.mParallelBroadcasts.isEmpty() && this.mDispatcher.isEmpty() && this.mPendingBroadcast == null;
    }

    void cancelDeferrals() {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                this.mDispatcher.cancelDeferralsLocked();
                scheduleBroadcastsLocked();
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    String describeState() {
        String str;
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                str = this.mParallelBroadcasts.size() + " parallel; " + this.mDispatcher.describeStateLocked();
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
        return str;
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        int i;
        long token = proto.start(fieldId);
        proto.write(1138166333441L, this.mQueueName);
        int N = this.mParallelBroadcasts.size();
        for (int i2 = N - 1; i2 >= 0; i2--) {
            this.mParallelBroadcasts.get(i2).dumpDebug(proto, 2246267895810L);
        }
        this.mDispatcher.dumpDebug(proto, 2246267895811L);
        BroadcastRecord broadcastRecord = this.mPendingBroadcast;
        if (broadcastRecord != null) {
            broadcastRecord.dumpDebug(proto, 1146756268036L);
        }
        int lastIndex = this.mHistoryNext;
        int ringIndex = lastIndex;
        do {
            i = -1;
            ringIndex = ringAdvance(ringIndex, -1, MAX_BROADCAST_HISTORY);
            BroadcastRecord r = this.mBroadcastHistory[ringIndex];
            if (r != null) {
                r.dumpDebug(proto, 2246267895813L);
            }
        } while (ringIndex != lastIndex);
        int i3 = this.mSummaryHistoryNext;
        int ringIndex2 = i3;
        int lastIndex2 = i3;
        while (true) {
            int ringIndex3 = ringAdvance(ringIndex2, i, MAX_BROADCAST_SUMMARY_HISTORY);
            Intent intent = this.mBroadcastSummaryHistory[ringIndex3];
            if (intent != null) {
                long summaryToken = proto.start(2246267895814L);
                intent.dumpDebug(proto, 1146756268033L, false, true, true, false);
                proto.write(1112396529666L, this.mSummaryHistoryEnqueueTime[ringIndex3]);
                proto.write(1112396529667L, this.mSummaryHistoryDispatchTime[ringIndex3]);
                proto.write(1112396529668L, this.mSummaryHistoryFinishTime[ringIndex3]);
                proto.end(summaryToken);
            }
            int lastIndex3 = lastIndex2;
            if (ringIndex3 != lastIndex3) {
                lastIndex2 = lastIndex3;
                ringIndex2 = ringIndex3;
                i = -1;
            } else {
                proto.end(token);
                return;
            }
        }
    }

    final boolean dumpLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, String dumpPackage, boolean needSep) {
        boolean needSep2;
        BroadcastRecord broadcastRecord;
        boolean needSep3;
        String str;
        String str2 = dumpPackage;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        String str3 = ":";
        if (this.mParallelBroadcasts.isEmpty() && this.mDispatcher.isEmpty() && this.mPendingBroadcast == null) {
            needSep2 = needSep;
        } else {
            boolean printed = false;
            needSep2 = needSep;
            for (int i = this.mParallelBroadcasts.size() - 1; i >= 0; i--) {
                BroadcastRecord br = this.mParallelBroadcasts.get(i);
                if (str2 == null || str2.equals(br.callerPackage)) {
                    if (!printed) {
                        if (needSep2) {
                            pw.println();
                        }
                        needSep2 = true;
                        printed = true;
                        pw.println("  Active broadcasts [" + this.mQueueName + "]:");
                    }
                    pw.println("  Active Broadcast " + this.mQueueName + " #" + i + ":");
                    br.dump(pw, "    ", sdf);
                }
            }
            this.mDispatcher.dumpLocked(pw, str2, this.mQueueName, sdf);
            if (str2 == null || ((broadcastRecord = this.mPendingBroadcast) != null && str2.equals(broadcastRecord.callerPackage))) {
                pw.println();
                pw.println("  Pending broadcast [" + this.mQueueName + "]:");
                BroadcastRecord broadcastRecord2 = this.mPendingBroadcast;
                if (broadcastRecord2 != null) {
                    broadcastRecord2.dump(pw, "    ", sdf);
                } else {
                    pw.println("    (null)");
                }
                needSep2 = true;
            }
        }
        this.mConstants.dump(pw);
        boolean printed2 = false;
        int i2 = -1;
        int lastIndex = this.mHistoryNext;
        int ringIndex = lastIndex;
        while (true) {
            int ringIndex2 = ringAdvance(ringIndex, -1, MAX_BROADCAST_HISTORY);
            BroadcastRecord r = this.mBroadcastHistory[ringIndex2];
            int lastIndex2 = lastIndex;
            if (r == null) {
                str = str3;
            } else {
                i2++;
                if (str2 != null && !str2.equals(r.callerPackage)) {
                    str = str3;
                } else {
                    if (!printed2) {
                        if (needSep2) {
                            pw.println();
                        }
                        pw.println("  Historical broadcasts [" + this.mQueueName + "]:");
                        printed2 = true;
                        needSep2 = true;
                    }
                    if (dumpAll) {
                        StringBuilder sb = new StringBuilder();
                        needSep3 = needSep2;
                        sb.append("  Historical Broadcast ");
                        sb.append(this.mQueueName);
                        sb.append(" #");
                        pw.print(sb.toString());
                        pw.print(i2);
                        pw.println(str3);
                        r.dump(pw, "    ", sdf);
                        str = str3;
                    } else {
                        needSep3 = needSep2;
                        pw.print("  #");
                        pw.print(i2);
                        pw.print(": ");
                        pw.println(r);
                        pw.print("    ");
                        str = str3;
                        pw.println(r.intent.toShortString(false, true, true, false));
                        if (r.targetComp != null && r.targetComp != r.intent.getComponent()) {
                            pw.print("    targetComp: ");
                            pw.println(r.targetComp.toShortString());
                        }
                        Bundle bundle = r.intent.getExtras();
                        if (bundle != null) {
                            pw.print("    extras: ");
                            pw.println(bundle.toString());
                        }
                    }
                    needSep2 = needSep3;
                }
            }
            ringIndex = ringIndex2;
            if (ringIndex == lastIndex2) {
                break;
            }
            str2 = dumpPackage;
            lastIndex = lastIndex2;
            str3 = str;
        }
        if (str2 == null) {
            int lastIndex3 = this.mSummaryHistoryNext;
            int ringIndex3 = lastIndex3;
            if (dumpAll) {
                printed2 = false;
                i2 = -1;
            } else {
                int j = i2;
                while (j > 0 && ringIndex3 != lastIndex3) {
                    ringIndex3 = ringAdvance(ringIndex3, -1, MAX_BROADCAST_SUMMARY_HISTORY);
                    if (this.mBroadcastHistory[ringIndex3] != null) {
                        j--;
                    }
                }
            }
            while (true) {
                ringIndex3 = ringAdvance(ringIndex3, -1, MAX_BROADCAST_SUMMARY_HISTORY);
                Intent intent = this.mBroadcastSummaryHistory[ringIndex3];
                if (intent != null) {
                    if (!printed2) {
                        if (needSep2) {
                            pw.println();
                        }
                        needSep2 = true;
                        pw.println("  Historical broadcasts summary [" + this.mQueueName + "]:");
                        printed2 = true;
                    }
                    if (!dumpAll && i2 >= 50) {
                        pw.println("  ...");
                        break;
                    }
                    i2++;
                    pw.print("  #");
                    pw.print(i2);
                    pw.print(": ");
                    boolean needSep4 = needSep2;
                    pw.println(intent.toShortString(false, true, true, false));
                    pw.print("    ");
                    TimeUtils.formatDuration(this.mSummaryHistoryDispatchTime[ringIndex3] - this.mSummaryHistoryEnqueueTime[ringIndex3], pw);
                    pw.print(" dispatch ");
                    TimeUtils.formatDuration(this.mSummaryHistoryFinishTime[ringIndex3] - this.mSummaryHistoryDispatchTime[ringIndex3], pw);
                    pw.println(" finish");
                    pw.print("    enq=");
                    pw.print(sdf.format(new Date(this.mSummaryHistoryEnqueueTime[ringIndex3])));
                    pw.print(" disp=");
                    pw.print(sdf.format(new Date(this.mSummaryHistoryDispatchTime[ringIndex3])));
                    pw.print(" fin=");
                    pw.println(sdf.format(new Date(this.mSummaryHistoryFinishTime[ringIndex3])));
                    Bundle bundle2 = intent.getExtras();
                    if (bundle2 != null) {
                        pw.print("    extras: ");
                        pw.println(bundle2.toString());
                    }
                    needSep2 = needSep4;
                }
                int lastIndex4 = lastIndex3;
                if (ringIndex3 == lastIndex4) {
                    break;
                }
                lastIndex3 = lastIndex4;
            }
        }
        return needSep2;
    }
}
