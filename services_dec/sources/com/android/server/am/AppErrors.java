package com.android.server.am;

import android.app.ActivityManager;
import android.app.ApplicationErrorReport;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.VersionedPackage;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Binder;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.EventLog;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import com.android.internal.app.ProcessMap;
import com.android.internal.logging.MetricsLogger;
import com.android.server.PackageWatchdog;
import com.android.server.notification.SnoozeHelper;
import com.android.server.wm.WindowProcessController;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class AppErrors {
    private static final String TAG = "ActivityManager";
    private ArraySet<String> mAppsNotReportingCrashes;
    private final Context mContext;
    private final PackageWatchdog mPackageWatchdog;
    private final ActivityManagerService mService;
    private final ProcessMap<Long> mProcessCrashTimes = new ProcessMap<>();
    private final ProcessMap<Long> mProcessCrashTimesPersistent = new ProcessMap<>();
    private final ProcessMap<Long> mProcessCrashShowDialogTimes = new ProcessMap<>();
    private volatile ProcessMap<BadProcessInfo> mBadProcesses = new ProcessMap<>();
    private final Object mBadProcessLock = new Object();

    AppErrors(Context context, ActivityManagerService service, PackageWatchdog watchdog) {
        context.assertRuntimeOverlayThemable();
        this.mService = service;
        this.mContext = context;
        this.mPackageWatchdog = watchdog;
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId, String dumpPackage) {
        ProcessMap<BadProcessInfo> badProcesses;
        long token;
        int uidCount;
        ProcessMap<BadProcessInfo> badProcesses2 = this.mBadProcesses;
        if (this.mProcessCrashTimes.getMap().isEmpty() && badProcesses2.getMap().isEmpty()) {
            return;
        }
        long token2 = proto.start(fieldId);
        long now = SystemClock.uptimeMillis();
        proto.write(1112396529665L, now);
        long j = 2246267895810L;
        if (this.mProcessCrashTimes.getMap().isEmpty()) {
            badProcesses = badProcesses2;
            token = token2;
        } else {
            ArrayMap<String, SparseArray<Long>> pmap = this.mProcessCrashTimes.getMap();
            int procCount = pmap.size();
            int ip = 0;
            while (ip < procCount) {
                long ctoken = proto.start(j);
                String pname = pmap.keyAt(ip);
                SparseArray<Long> uids = pmap.valueAt(ip);
                int uidCount2 = uids.size();
                long now2 = now;
                proto.write(1138166333441L, pname);
                int i = 0;
                while (i < uidCount2) {
                    int puid = uids.keyAt(i);
                    ArrayMap<String, SparseArray<Long>> pmap2 = pmap;
                    ProcessRecord r = (ProcessRecord) this.mService.getProcessNames().get(pname, puid);
                    if (dumpPackage != null) {
                        if (r != null) {
                            uidCount = uidCount2;
                            if (!r.pkgList.containsKey(dumpPackage)) {
                            }
                        } else {
                            uidCount = uidCount2;
                        }
                        i++;
                        dumpPackage = dumpPackage;
                        badProcesses2 = badProcesses2;
                        pmap = pmap2;
                        uidCount2 = uidCount;
                        token2 = token2;
                    } else {
                        uidCount = uidCount2;
                    }
                    long etoken = proto.start(2246267895810L);
                    proto.write(1120986464257L, puid);
                    proto.write(1112396529666L, uids.valueAt(i).longValue());
                    proto.end(etoken);
                    i++;
                    dumpPackage = dumpPackage;
                    badProcesses2 = badProcesses2;
                    pmap = pmap2;
                    uidCount2 = uidCount;
                    token2 = token2;
                }
                proto.end(ctoken);
                ip++;
                now = now2;
                j = 2246267895810L;
            }
            badProcesses = badProcesses2;
            token = token2;
        }
        if (!badProcesses.getMap().isEmpty()) {
            ArrayMap<String, SparseArray<BadProcessInfo>> pmap3 = badProcesses.getMap();
            int processCount = pmap3.size();
            for (int ip2 = 0; ip2 < processCount; ip2++) {
                long btoken = proto.start(2246267895811L);
                String pname2 = pmap3.keyAt(ip2);
                SparseArray<BadProcessInfo> uids2 = pmap3.valueAt(ip2);
                int uidCount3 = uids2.size();
                proto.write(1138166333441L, pname2);
                int i2 = 0;
                while (i2 < uidCount3) {
                    int puid2 = uids2.keyAt(i2);
                    ProcessRecord r2 = (ProcessRecord) this.mService.getProcessNames().get(pname2, puid2);
                    if (dumpPackage == null || (r2 != null && r2.pkgList.containsKey(dumpPackage))) {
                        BadProcessInfo info = uids2.valueAt(i2);
                        long etoken2 = proto.start(2246267895810L);
                        proto.write(1120986464257L, puid2);
                        proto.write(1112396529666L, info.time);
                        proto.write(1138166333443L, info.shortMsg);
                        proto.write(1138166333444L, info.longMsg);
                        proto.write(1138166333445L, info.stack);
                        proto.end(etoken2);
                    }
                    i2++;
                    pmap3 = pmap3;
                    badProcesses = badProcesses;
                    pname2 = pname2;
                    processCount = processCount;
                }
                proto.end(btoken);
            }
        }
        proto.end(token);
    }

    boolean dumpLocked(FileDescriptor fd, PrintWriter pw, boolean needSep, String dumpPackage) {
        boolean needSep2;
        String str;
        ProcessMap<BadProcessInfo> badProcesses;
        boolean printed;
        int processCount;
        AppErrors appErrors = this;
        String str2 = dumpPackage;
        String str3 = " uid ";
        if (appErrors.mProcessCrashTimes.getMap().isEmpty()) {
            needSep2 = needSep;
        } else {
            long now = SystemClock.uptimeMillis();
            ArrayMap<String, SparseArray<Long>> pmap = appErrors.mProcessCrashTimes.getMap();
            int processCount2 = pmap.size();
            boolean printed2 = false;
            needSep2 = needSep;
            for (int ip = 0; ip < processCount2; ip++) {
                String pname = pmap.keyAt(ip);
                SparseArray<Long> uids = pmap.valueAt(ip);
                int uidCount = uids.size();
                int i = 0;
                while (i < uidCount) {
                    int puid = uids.keyAt(i);
                    ArrayMap<String, SparseArray<Long>> pmap2 = pmap;
                    ProcessRecord r = (ProcessRecord) appErrors.mService.getProcessNames().get(pname, puid);
                    if (str2 != null) {
                        if (r == null) {
                            processCount = processCount2;
                        } else {
                            processCount = processCount2;
                            if (!r.pkgList.containsKey(str2)) {
                            }
                        }
                        i++;
                        pmap = pmap2;
                        processCount2 = processCount;
                    } else {
                        processCount = processCount2;
                    }
                    if (!printed2) {
                        if (needSep2) {
                            pw.println();
                        }
                        needSep2 = true;
                        pw.println("  Time since processes crashed:");
                        printed2 = true;
                    }
                    pw.print("    Process ");
                    pw.print(pname);
                    pw.print(" uid ");
                    pw.print(puid);
                    pw.print(": last crashed ");
                    TimeUtils.formatDuration(now - uids.valueAt(i).longValue(), pw);
                    pw.println(" ago");
                    i++;
                    pmap = pmap2;
                    processCount2 = processCount;
                }
            }
        }
        ProcessMap<BadProcessInfo> badProcesses2 = appErrors.mBadProcesses;
        if (!badProcesses2.getMap().isEmpty()) {
            boolean printed3 = false;
            ArrayMap<String, SparseArray<BadProcessInfo>> pmap3 = badProcesses2.getMap();
            int processCount3 = pmap3.size();
            int ip2 = 0;
            while (ip2 < processCount3) {
                String pname2 = pmap3.keyAt(ip2);
                SparseArray<BadProcessInfo> uids2 = pmap3.valueAt(ip2);
                int uidCount2 = uids2.size();
                int i2 = 0;
                while (i2 < uidCount2) {
                    int puid2 = uids2.keyAt(i2);
                    ProcessRecord r2 = (ProcessRecord) appErrors.mService.getProcessNames().get(pname2, puid2);
                    if (str2 != null && (r2 == null || !r2.pkgList.containsKey(str2))) {
                        str = str3;
                        badProcesses = badProcesses2;
                    } else {
                        if (!printed3) {
                            if (needSep2) {
                                pw.println();
                            }
                            needSep2 = true;
                            pw.println("  Bad processes:");
                            printed3 = true;
                        }
                        BadProcessInfo info = uids2.valueAt(i2);
                        pw.print("    Bad process ");
                        pw.print(pname2);
                        pw.print(str3);
                        pw.print(puid2);
                        pw.print(": crashed at time ");
                        boolean needSep3 = needSep2;
                        pw.println(info.time);
                        if (info.shortMsg != null) {
                            pw.print("      Short msg: ");
                            pw.println(info.shortMsg);
                        }
                        if (info.longMsg != null) {
                            pw.print("      Long msg: ");
                            pw.println(info.longMsg);
                        }
                        if (info.stack == null) {
                            str = str3;
                            badProcesses = badProcesses2;
                            printed = printed3;
                        } else {
                            pw.println("      Stack:");
                            int lastPos = 0;
                            int pos = 0;
                            while (true) {
                                str = str3;
                                badProcesses = badProcesses2;
                                if (pos >= info.stack.length()) {
                                    break;
                                }
                                boolean printed4 = printed3;
                                if (info.stack.charAt(pos) == '\n') {
                                    pw.print("        ");
                                    pw.write(info.stack, lastPos, pos - lastPos);
                                    pw.println();
                                    lastPos = pos + 1;
                                }
                                pos++;
                                str3 = str;
                                badProcesses2 = badProcesses;
                                printed3 = printed4;
                            }
                            printed = printed3;
                            if (lastPos < info.stack.length()) {
                                pw.print("        ");
                                pw.write(info.stack, lastPos, info.stack.length() - lastPos);
                                pw.println();
                            }
                        }
                        needSep2 = needSep3;
                        printed3 = printed;
                    }
                    i2++;
                    appErrors = this;
                    str2 = dumpPackage;
                    str3 = str;
                    badProcesses2 = badProcesses;
                }
                ip2++;
                appErrors = this;
                str2 = dumpPackage;
            }
        }
        return needSep2;
    }

    boolean isBadProcess(String processName, int uid) {
        return this.mBadProcesses.get(processName, uid) != null;
    }

    void clearBadProcess(String processName, int uid) {
        synchronized (this.mBadProcessLock) {
            ProcessMap<BadProcessInfo> badProcesses = new ProcessMap<>();
            badProcesses.putAll(this.mBadProcesses);
            badProcesses.remove(processName, uid);
            this.mBadProcesses = badProcesses;
        }
    }

    void markBadProcess(String processName, int uid, BadProcessInfo info) {
        synchronized (this.mBadProcessLock) {
            ProcessMap<BadProcessInfo> badProcesses = new ProcessMap<>();
            badProcesses.putAll(this.mBadProcesses);
            badProcesses.put(processName, uid, info);
            this.mBadProcesses = badProcesses;
        }
    }

    void resetProcessCrashTimeLocked(ApplicationInfo info) {
        this.mProcessCrashTimes.remove(info.processName, info.uid);
    }

    void resetProcessCrashTimeLocked(boolean resetEntireUser, int appId, int userId) {
        ArrayMap<String, SparseArray<Long>> pmap = this.mProcessCrashTimes.getMap();
        for (int ip = pmap.size() - 1; ip >= 0; ip--) {
            SparseArray<Long> ba = pmap.valueAt(ip);
            for (int i = ba.size() - 1; i >= 0; i--) {
                boolean remove = false;
                int entUid = ba.keyAt(i);
                if (!resetEntireUser) {
                    if (userId == -1) {
                        if (UserHandle.getAppId(entUid) == appId) {
                            remove = true;
                        }
                    } else if (entUid == UserHandle.getUid(userId, appId)) {
                        remove = true;
                    }
                } else if (UserHandle.getUserId(entUid) == userId) {
                    remove = true;
                }
                if (remove) {
                    ba.removeAt(i);
                }
            }
            int i2 = ba.size();
            if (i2 == 0) {
                pmap.removeAt(ip);
            }
        }
    }

    void loadAppsNotReportingCrashesFromConfigLocked(String appsNotReportingCrashesConfig) {
        if (appsNotReportingCrashesConfig != null) {
            String[] split = appsNotReportingCrashesConfig.split(",");
            if (split.length > 0) {
                ArraySet<String> arraySet = new ArraySet<>();
                this.mAppsNotReportingCrashes = arraySet;
                Collections.addAll(arraySet, split);
            }
        }
    }

    void killAppAtUserRequestLocked(ProcessRecord app) {
        ProcessRecord.ErrorDialogController controller = app.getDialogController();
        int reasonCode = 6;
        int subReason = 0;
        if (controller.hasDebugWaitingDialog()) {
            reasonCode = 13;
            subReason = 1;
        }
        controller.clearAllErrorDialogs();
        killAppImmediateLocked(app, reasonCode, subReason, "user-terminated", "user request after error");
    }

    private void killAppImmediateLocked(ProcessRecord app, int reasonCode, int subReason, String reason, String killReason) {
        app.setCrashing(false);
        app.crashingReport = null;
        app.setNotResponding(false);
        app.notRespondingReport = null;
        if (app.pid > 0 && app.pid != ActivityManagerService.MY_PID) {
            handleAppCrashLocked(app, reason, null, null, null, null);
            app.kill(killReason, reasonCode, subReason, true);
        }
    }

    void scheduleAppCrashLocked(int uid, int initialPid, String packageName, int userId, String message, boolean force) {
        ProcessRecord proc = null;
        synchronized (this.mService.mPidsSelfLocked) {
            for (int i = 0; i < this.mService.mPidsSelfLocked.size(); i++) {
                ProcessRecord p = this.mService.mPidsSelfLocked.valueAt(i);
                if (uid < 0 || p.uid == uid) {
                    if (p.pid == initialPid) {
                        proc = p;
                        break;
                    } else if (p.pkgList.containsKey(packageName) && (userId < 0 || p.userId == userId)) {
                        proc = p;
                    }
                }
            }
        }
        if (proc == null) {
            Slog.w(TAG, "crashApplication: nothing for uid=" + uid + " initialPid=" + initialPid + " packageName=" + packageName + " userId=" + userId);
            return;
        }
        proc.scheduleCrash(message);
        if (force) {
            final ProcessRecord p2 = proc;
            this.mService.mHandler.postDelayed(new Runnable() { // from class: com.android.server.am.-$$Lambda$AppErrors$1aFX_-j-MSc0clpKk9XdlBZz9lU
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$scheduleAppCrashLocked$0$AppErrors(p2);
                }
            }, 5000L);
        }
    }

    public /* synthetic */ void lambda$scheduleAppCrashLocked$0$AppErrors(ProcessRecord p) {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                killAppImmediateLocked(p, 13, 14, "forced", "killed for invalid state");
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void crashApplication(ProcessRecord r, ApplicationErrorReport.CrashInfo crashInfo) {
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        long origId = Binder.clearCallingIdentity();
        try {
            crashApplicationInner(r, crashInfo, callingPid, callingUid);
        } finally {
            Binder.restoreCallingIdentity(origId);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:103:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:143:0x021d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x014a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x012c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x017a  */
    /* JADX WARN: Code duplicated, block: B:85:0x0181 A[Catch: all -> 0x01b8, TRY_LEAVE, TryCatch #11 {all -> 0x01b8, blocks: (B:73:0x0144, B:76:0x014a, B:85:0x0181, B:90:0x01ae, B:92:0x01b3, B:93:0x01b7, B:98:0x01c2, B:79:0x0159, B:87:0x0187, B:89:0x0198), top: B:158:0x0144, inners: #4, #7 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0198 A[Catch: all -> 0x01b2, TRY_LEAVE, TryCatch #7 {all -> 0x01b2, blocks: (B:87:0x0187, B:89:0x0198), top: B:153:0x0187, outer: #11 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01c2 A[Catch: all -> 0x01b8, TRY_LEAVE, TryCatch #11 {all -> 0x01b8, blocks: (B:73:0x0144, B:76:0x014a, B:85:0x0181, B:90:0x01ae, B:92:0x01b3, B:93:0x01b7, B:98:0x01c2, B:79:0x0159, B:87:0x0187, B:89:0x0198), top: B:158:0x0144, inners: #4, #7 }] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:138:0x0264
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    void crashApplicationInner(com.android.server.am.ProcessRecord r24, android.app.ApplicationErrorReport.CrashInfo r25, int r26, int r27) {
        /*
            Method dump skipped, instruction units count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AppErrors.crashApplicationInner(com.android.server.am.ProcessRecord, android.app.ApplicationErrorReport$CrashInfo, int, int):void");
    }

    private boolean handleAppCrashInActivityController(final ProcessRecord r, final ApplicationErrorReport.CrashInfo crashInfo, final String shortMsg, final String longMsg, final String stackTrace, long timeMillis, int callingPid, int callingUid) {
        final String name = r != null ? r.processName : null;
        final int pid = r != null ? r.pid : callingPid;
        final int uid = r != null ? r.info.uid : callingUid;
        return this.mService.mAtmInternal.handleAppCrashInActivityController(name, pid, shortMsg, longMsg, timeMillis, crashInfo.stackTrace, new Runnable() { // from class: com.android.server.am.-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleAppCrashInActivityController$1$AppErrors(crashInfo, name, pid, r, shortMsg, longMsg, stackTrace, uid);
            }
        });
    }

    public /* synthetic */ void lambda$handleAppCrashInActivityController$1$AppErrors(ApplicationErrorReport.CrashInfo crashInfo, String name, int pid, ProcessRecord r, String shortMsg, String longMsg, String stackTrace, int uid) {
        if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get("ro.debuggable", "0")) && "Native crash".equals(crashInfo.exceptionClassName)) {
            Slog.w(TAG, "Skip killing native crashed app " + name + "(" + pid + ") during testing");
            return;
        }
        Slog.w(TAG, "Force-killing crashed app " + name + " at watcher's request");
        if (r != null) {
            if (!makeAppCrashingLocked(r, shortMsg, longMsg, stackTrace, null)) {
                r.kill("crash", 4, true);
            }
        } else {
            Process.killProcess(pid);
            ProcessList.killProcessGroup(uid, pid);
            this.mService.mProcessList.noteAppKill(pid, uid, 4, 0, "crash");
        }
    }

    private boolean makeAppCrashingLocked(ProcessRecord app, String shortMsg, String longMsg, String stackTrace, AppErrorDialog.Data data) {
        app.setCrashing(true);
        app.crashingReport = generateProcessError(app, 1, null, shortMsg, longMsg, stackTrace);
        app.startAppProblemLocked();
        app.getWindowProcessController().stopFreezingActivities();
        return handleAppCrashLocked(app, "force-crash", shortMsg, longMsg, stackTrace, data);
    }

    ActivityManager.ProcessErrorStateInfo generateProcessError(ProcessRecord app, int condition, String activity, String shortMsg, String longMsg, String stackTrace) {
        ActivityManager.ProcessErrorStateInfo report = new ActivityManager.ProcessErrorStateInfo();
        report.condition = condition;
        report.processName = app.processName;
        report.pid = app.pid;
        report.uid = app.info.uid;
        report.tag = activity;
        report.shortMsg = shortMsg;
        report.longMsg = longMsg;
        report.stackTrace = stackTrace;
        return report;
    }

    Intent createAppErrorIntentLocked(ProcessRecord r, long timeMillis, ApplicationErrorReport.CrashInfo crashInfo) {
        ApplicationErrorReport report = createAppErrorReportLocked(r, timeMillis, crashInfo);
        if (report == null) {
            return null;
        }
        Intent result = new Intent("android.intent.action.APP_ERROR");
        result.setComponent(r.errorReportReceiver);
        result.putExtra("android.intent.extra.BUG_REPORT", report);
        result.addFlags(AudioFormat.EVRC);
        return result;
    }

    private ApplicationErrorReport createAppErrorReportLocked(ProcessRecord r, long timeMillis, ApplicationErrorReport.CrashInfo crashInfo) {
        if (r.errorReportReceiver == null) {
            return null;
        }
        if (!r.isCrashing() && !r.isNotResponding() && !r.forceCrashReport) {
            return null;
        }
        ApplicationErrorReport report = new ApplicationErrorReport();
        report.packageName = r.info.packageName;
        report.installerPackageName = r.errorReportReceiver.getPackageName();
        report.processName = r.processName;
        report.time = timeMillis;
        report.systemApp = (r.info.flags & 1) != 0;
        if (r.isCrashing() || r.forceCrashReport) {
            report.type = 1;
            report.crashInfo = crashInfo;
        } else if (r.isNotResponding()) {
            report.type = 2;
            report.anrInfo = new ApplicationErrorReport.AnrInfo();
            report.anrInfo.activity = r.notRespondingReport.tag;
            report.anrInfo.cause = r.notRespondingReport.shortMsg;
            report.anrInfo.info = r.notRespondingReport.longMsg;
        }
        return report;
    }

    boolean handleAppCrashLocked(ProcessRecord app, String reason, String shortMsg, String longMsg, String stackTrace, AppErrorDialog.Data data) {
        Long crashTime;
        Long crashTimePersistent;
        boolean z;
        long now = SystemClock.uptimeMillis();
        boolean showBackground = Settings.Secure.getInt(this.mContext.getContentResolver(), "anr_show_background", 0) != 0;
        boolean procIsBoundForeground = app.getCurProcState() == 5;
        if (!app.isolated) {
            Long crashTime2 = (Long) this.mProcessCrashTimes.get(app.info.processName, app.uid);
            crashTime = crashTime2;
            crashTimePersistent = (Long) this.mProcessCrashTimesPersistent.get(app.info.processName, app.uid);
        } else {
            crashTime = null;
            crashTimePersistent = null;
        }
        boolean tryAgain = false;
        for (int i = app.numberOfRunningServices() - 1; i >= 0; i--) {
            ServiceRecord sr = app.getRunningServiceAt(i);
            if (now > sr.restartTime + 60000) {
                sr.crashCount = 1;
            } else {
                sr.crashCount++;
            }
            if (sr.crashCount < this.mService.mConstants.BOUND_SERVICE_MAX_CRASH_RETRY && (sr.isForeground || procIsBoundForeground)) {
                tryAgain = true;
            }
        }
        if (crashTime != null && now < crashTime.longValue() + 60000) {
            Slog.w(TAG, "Process " + app.info.processName + " has crashed too many times: killing!");
            EventLog.writeEvent(EventLogTags.AM_PROCESS_CRASHED_TOO_MUCH, Integer.valueOf(app.userId), app.info.processName, Integer.valueOf(app.uid));
            this.mService.mAtmInternal.onHandleAppCrash(app.getWindowProcessController());
            if (app.isPersistent()) {
                z = false;
            } else {
                EventLog.writeEvent(EventLogTags.AM_PROC_BAD, Integer.valueOf(app.userId), Integer.valueOf(app.uid), app.info.processName);
                if (!app.isolated) {
                    markBadProcess(app.info.processName, app.uid, new BadProcessInfo(now, shortMsg, longMsg, stackTrace));
                    this.mProcessCrashTimes.remove(app.processName, app.uid);
                }
                app.bad = true;
                app.removed = true;
                this.mService.mProcessList.removeProcessLocked(app, false, tryAgain, 4, "crash");
                z = false;
                this.mService.mAtmInternal.resumeTopActivities(false);
                if (!showBackground) {
                    return false;
                }
            }
            this.mService.mAtmInternal.resumeTopActivities(z);
        } else {
            int affectedTaskId = this.mService.mAtmInternal.finishTopCrashedActivities(app.getWindowProcessController(), reason);
            if (data != null) {
                data.taskId = affectedTaskId;
            }
            if (data != null && crashTimePersistent != null && now < crashTimePersistent.longValue() + 60000) {
                data.repeating = true;
            }
        }
        if (data != null && tryAgain) {
            data.isRestartableForService = true;
        }
        WindowProcessController proc = app.getWindowProcessController();
        WindowProcessController homeProc = this.mService.mAtmInternal.getHomeProcess();
        if (proc == homeProc && proc.hasActivities() && (((ProcessRecord) homeProc.mOwner).info.flags & 1) == 0) {
            proc.clearPackagePreferredForHomeActivities();
        }
        if (!app.isolated) {
            this.mProcessCrashTimes.put(app.info.processName, app.uid, Long.valueOf(now));
            this.mProcessCrashTimesPersistent.put(app.info.processName, app.uid, Long.valueOf(now));
        }
        if (app.crashHandler != null) {
            this.mService.mHandler.post(app.crashHandler);
            return true;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:71:0x012f  */
    /* JADX WARN: Code duplicated, block: B:84:0x0162 A[Catch: all -> 0x016c, TryCatch #0 {all -> 0x016c, blocks: (B:8:0x0020, B:10:0x0029, B:11:0x0030, B:14:0x0035, B:16:0x0041, B:18:0x0059, B:19:0x005e, B:22:0x0063, B:24:0x006d, B:28:0x0076, B:30:0x0082, B:34:0x0089, B:37:0x0091, B:39:0x00ae, B:40:0x00b3, B:44:0x00b9, B:46:0x00bd, B:47:0x00cc, B:51:0x00de, B:55:0x00f8, B:57:0x00fc, B:61:0x010b, B:63:0x0111, B:67:0x0121, B:84:0x0162, B:85:0x0167, B:76:0x013a, B:78:0x013e, B:80:0x0149), top: B:92:0x0020 }] */
    void handleShowAppErrorUi(Message msg) {
        AppErrorDialog.Data data = (AppErrorDialog.Data) msg.obj;
        boolean z = false;
        boolean showBackground = Settings.Secure.getInt(this.mContext.getContentResolver(), "anr_show_background", 0) != 0;
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                ProcessRecord proc = data.proc;
                AppErrorResult res = data.result;
                if (proc == null) {
                    Slog.e(TAG, "handleShowAppErrorUi: proc is null");
                    return;
                }
                int userId = proc.userId;
                if (proc.getDialogController().hasCrashDialogs()) {
                    Slog.e(TAG, "App already has crash dialog: " + proc);
                    if (res != null) {
                        res.set(AppErrorDialog.ALREADY_SHOWING);
                    }
                    return;
                }
                boolean isBackground = UserHandle.getAppId(proc.uid) >= 10000 && proc.pid != ActivityManagerService.MY_PID;
                int[] currentProfileIds = this.mService.mUserController.getCurrentProfileIds();
                int length = currentProfileIds.length;
                for (int i = 0; i < length; i++) {
                    int profileId = currentProfileIds[i];
                    isBackground &= userId != profileId;
                }
                if (isBackground && !showBackground) {
                    Slog.w(TAG, "Skipping crash dialog of " + proc + ": background");
                    if (res != null) {
                        res.set(AppErrorDialog.BACKGROUND_USER);
                    }
                    return;
                }
                Long crashShowErrorTime = null;
                if (!proc.isolated) {
                    crashShowErrorTime = (Long) this.mProcessCrashShowDialogTimes.get(proc.info.processName, proc.uid);
                }
                boolean showFirstCrash = Settings.Global.getInt(this.mContext.getContentResolver(), "show_first_crash_dialog", 0) != 0;
                boolean showFirstCrashDevOption = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "show_first_crash_dialog_dev_option", 0, this.mService.mUserController.getCurrentUserId()) != 0;
                boolean crashSilenced = this.mAppsNotReportingCrashes != null && this.mAppsNotReportingCrashes.contains(proc.info.packageName);
                long now = SystemClock.uptimeMillis();
                if (crashShowErrorTime != null && now < crashShowErrorTime.longValue() + 60000) {
                    z = true;
                }
                boolean shouldThottle = z;
                if (this.mService.mAtmInternal.canShowErrorDialogs() || showBackground) {
                    if (crashSilenced || shouldThottle) {
                        if (res != null) {
                            res.set(AppErrorDialog.CANT_SHOW);
                        }
                    } else if (showFirstCrash || showFirstCrashDevOption || data.repeating) {
                        proc.getDialogController().showCrashDialogs(data);
                        if (!proc.isolated) {
                            this.mProcessCrashShowDialogTimes.put(proc.info.processName, proc.uid, Long.valueOf(now));
                        }
                    } else if (res != null) {
                        res.set(AppErrorDialog.CANT_SHOW);
                    }
                } else if (res != null) {
                    res.set(AppErrorDialog.CANT_SHOW);
                }
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    private void stopReportingCrashesLocked(ProcessRecord proc) {
        if (this.mAppsNotReportingCrashes == null) {
            this.mAppsNotReportingCrashes = new ArraySet<>();
        }
        this.mAppsNotReportingCrashes.add(proc.info.packageName);
    }

    void handleShowAnrUi(Message msg) {
        List<VersionedPackage> packageList = null;
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                AppNotRespondingDialog.Data data = (AppNotRespondingDialog.Data) msg.obj;
                ProcessRecord proc = data.proc;
                if (proc == null) {
                    Slog.e(TAG, "handleShowAnrUi: proc is null");
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                if (!proc.isPersistent()) {
                    packageList = proc.getPackageListWithVersionCode();
                }
                if (proc.getDialogController().hasAnrDialogs()) {
                    Slog.e(TAG, "App already has anr dialog: " + proc);
                    MetricsLogger.action(this.mContext, 317, -2);
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                boolean showBackground = Settings.Secure.getInt(this.mContext.getContentResolver(), "anr_show_background", 0) != 0;
                if (this.mService.mAtmInternal.canShowErrorDialogs() || showBackground) {
                    proc.getDialogController().showAnrDialogs(data);
                } else {
                    MetricsLogger.action(this.mContext, 317, -1);
                    this.mService.killAppAtUsersRequest(proc);
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
                if (packageList != null) {
                    this.mPackageWatchdog.onPackageFailure(packageList, 4);
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    static final class BadProcessInfo {
        final String longMsg;
        final String shortMsg;
        final String stack;
        final long time;

        BadProcessInfo(long time, String shortMsg, String longMsg, String stack) {
            this.time = time;
            this.shortMsg = shortMsg;
            this.longMsg = longMsg;
            this.stack = stack;
        }
    }
}
