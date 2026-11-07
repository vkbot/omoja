package com.android.server.am;

import android.R;
import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.app.IAppTraceRetriever;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.icu.text.SimpleDateFormat;
import android.os.Binder;
import android.os.FileUtils;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Pair;
import android.util.Pools;
import android.util.Slog;
import android.util.SparseArray;
import android.util.proto.ProtoInputStream;
import android.util.proto.ProtoOutputStream;
import android.util.proto.WireTypeMismatchException;
import com.android.internal.app.ProcessMap;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.function.HexConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.IoThread;
import com.android.server.ServiceThread;
import com.android.server.SystemServiceManager;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.job.controllers.JobStatus;
import com.android.server.pm.Settings;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class AppExitInfoTracker {
    static final String APP_EXIT_INFO_FILE = "procexitinfo";
    private static final long APP_EXIT_INFO_PERSIST_INTERVAL = TimeUnit.MINUTES.toMillis(30);
    private static final int APP_EXIT_RAW_INFO_POOL_SIZE = 8;
    static final String APP_EXIT_STORE_DIR = "procexitstore";
    private static final String APP_TRACE_FILE_SUFFIX = ".gz";
    private static final int FOREACH_ACTION_NONE = 0;
    private static final int FOREACH_ACTION_REMOVE_ITEM = 1;
    private static final int FOREACH_ACTION_STOP_ITERATION = 2;
    private static final String TAG = "ActivityManager";
    private int mAppExitInfoHistoryListSize;
    private KillHandler mKillHandler;
    File mProcExitInfoFile;
    File mProcExitStoreDir;
    private ActivityManagerService mService;
    private final Object mLock = new Object();
    private Runnable mAppExitInfoPersistTask = null;
    private long mLastAppExitInfoPersistTimestamp = 0;
    boolean mAppExitInfoLoaded = false;
    final ArrayList<ApplicationExitInfo> mTmpInfoList = new ArrayList<>();
    final ArrayList<ApplicationExitInfo> mTmpInfoList2 = new ArrayList<>();
    final IsolatedUidRecords mIsolatedUidRecords = new IsolatedUidRecords();
    final AppExitInfoExternalSource mAppExitInfoSourceZygote = new AppExitInfoExternalSource("zygote", null);
    final AppExitInfoExternalSource mAppExitInfoSourceLmkd = new AppExitInfoExternalSource("lmkd", 3);
    final SparseArray<SparseArray<byte[]>> mActiveAppStateSummary = new SparseArray<>();
    final SparseArray<SparseArray<File>> mActiveAppTraces = new SparseArray<>();
    final AppTraceRetriever mAppTraceRetriever = new AppTraceRetriever();
    private final ProcessMap<AppExitInfoContainer> mData = new ProcessMap<>();
    private final Pools.SynchronizedPool<ApplicationExitInfo> mRawRecordsPool = new Pools.SynchronizedPool<>(8);

    interface LmkdKillListener {
        void onLmkdKillOccurred(int i, int i2);
    }

    AppExitInfoTracker() {
    }

    void init(ActivityManagerService service) {
        this.mService = service;
        ServiceThread thread = new ServiceThread("ActivityManager:killHandler", 10, true);
        thread.start();
        this.mKillHandler = new KillHandler(thread.getLooper());
        File file = new File(SystemServiceManager.ensureSystemDir(), APP_EXIT_STORE_DIR);
        this.mProcExitStoreDir = file;
        if (!FileUtils.createDir(file)) {
            Slog.e(TAG, "Unable to create " + this.mProcExitStoreDir);
            return;
        }
        this.mProcExitInfoFile = new File(this.mProcExitStoreDir, APP_EXIT_INFO_FILE);
        this.mAppExitInfoHistoryListSize = service.mContext.getResources().getInteger(R.integer.config_attentiveTimeout);
    }

    void onSystemReady() {
        registerForUserRemoval();
        registerForPackageRemoval();
        IoThread.getHandler().post(new Runnable() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$Yc6vluAEWPBi2TSflPrFu351ztU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onSystemReady$0$AppExitInfoTracker();
            }
        });
    }

    public /* synthetic */ void lambda$onSystemReady$0$AppExitInfoTracker() {
        SystemProperties.set("persist.sys.lmk.reportkills", Boolean.toString(SystemProperties.getBoolean("sys.lmk.reportkills", false)));
        loadExistingProcessExitInfo();
    }

    void scheduleNoteProcessDied(ProcessRecord app) {
        if (app == null || app.info == null) {
            return;
        }
        synchronized (this.mLock) {
            if (this.mAppExitInfoLoaded) {
                this.mKillHandler.obtainMessage(4103, obtainRawRecordLocked(app)).sendToTarget();
            }
        }
    }

    void scheduleNoteAppKill(ProcessRecord app, int reason, int subReason, String msg) {
        synchronized (this.mLock) {
            if (this.mAppExitInfoLoaded) {
                if (app != null && app.info != null) {
                    ApplicationExitInfo raw = obtainRawRecordLocked(app);
                    raw.setReason(reason);
                    raw.setSubReason(subReason);
                    raw.setDescription(msg);
                    this.mKillHandler.obtainMessage(4104, raw).sendToTarget();
                }
            }
        }
    }

    void scheduleNoteAppKill(int pid, int uid, int reason, int subReason, String msg) {
        ProcessRecord app;
        synchronized (this.mLock) {
            if (this.mAppExitInfoLoaded) {
                synchronized (this.mService.mPidsSelfLocked) {
                    app = this.mService.mPidsSelfLocked.get(pid);
                }
                if (app != null) {
                    scheduleNoteAppKill(app, reason, subReason, msg);
                }
            }
        }
    }

    void setLmkdKillListener(final LmkdKillListener listener) {
        synchronized (this.mLock) {
            this.mAppExitInfoSourceLmkd.setOnProcDiedListener(new BiConsumer() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$LrV5fgRdrB2bonNSZZAbUAXpryI
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    listener.onLmkdKillOccurred(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            });
        }
    }

    void scheduleNoteLmkdProcKilled(int pid, int uid) {
        this.mKillHandler.obtainMessage(4101, pid, uid).sendToTarget();
    }

    private void scheduleChildProcDied(int pid, int uid, int status) {
        this.mKillHandler.obtainMessage(4102, pid, uid, Integer.valueOf(status)).sendToTarget();
    }

    void handleZygoteSigChld(int pid, int uid, int status) {
        scheduleChildProcDied(pid, uid, status);
    }

    void handleNoteProcessDiedLocked(ApplicationExitInfo raw) {
        if (raw != null) {
            ApplicationExitInfo info = getExitInfoLocked(raw.getPackageName(), raw.getPackageUid(), raw.getPid());
            Pair<Long, Object> zygote = this.mAppExitInfoSourceZygote.remove(raw.getPid(), raw.getRealUid());
            Pair<Long, Object> lmkd = this.mAppExitInfoSourceLmkd.remove(raw.getPid(), raw.getRealUid());
            this.mIsolatedUidRecords.removeIsolatedUidLocked(raw.getRealUid());
            if (info == null) {
                info = addExitInfoLocked(raw);
            }
            if (lmkd != null) {
                updateExistingExitInfoRecordLocked(info, null, 3);
            } else if (zygote != null) {
                updateExistingExitInfoRecordLocked(info, (Integer) zygote.second, null);
            }
        }
    }

    void handleNoteAppKillLocked(ApplicationExitInfo raw) {
        ApplicationExitInfo info = getExitInfoLocked(raw.getPackageName(), raw.getPackageUid(), raw.getPid());
        if (info == null) {
            addExitInfoLocked(raw);
            return;
        }
        info.setReason(raw.getReason());
        info.setSubReason(raw.getSubReason());
        info.setStatus(0);
        info.setTimestamp(System.currentTimeMillis());
        info.setDescription(raw.getDescription());
    }

    private ApplicationExitInfo addExitInfoLocked(ApplicationExitInfo raw) {
        if (!this.mAppExitInfoLoaded) {
            Slog.w(TAG, "Skipping saving the exit info due to ongoing loading from storage");
            return null;
        }
        ApplicationExitInfo info = new ApplicationExitInfo(raw);
        String[] packages = raw.getPackageList();
        int uid = raw.getPackageUid();
        for (String str : packages) {
            addExitInfoInnerLocked(str, uid, info);
        }
        schedulePersistProcessExitInfo(false);
        return info;
    }

    private void updateExistingExitInfoRecordLocked(ApplicationExitInfo info, Integer status, Integer reason) {
        if (info == null || !isFresh(info.getTimestamp())) {
            return;
        }
        if (status != null) {
            if (OsConstants.WIFEXITED(status.intValue())) {
                info.setReason(1);
                info.setStatus(OsConstants.WEXITSTATUS(status.intValue()));
            } else if (OsConstants.WIFSIGNALED(status.intValue())) {
                if (info.getReason() == 0) {
                    info.setReason(2);
                    info.setStatus(OsConstants.WTERMSIG(status.intValue()));
                } else if (info.getReason() == 5) {
                    info.setStatus(OsConstants.WTERMSIG(status.intValue()));
                }
            }
        }
        if (reason != null) {
            info.setReason(reason.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateExitInfoIfNecessaryLocked(final int pid, int uid, final Integer status, final Integer reason) {
        Integer k = this.mIsolatedUidRecords.getUidByIsolatedUid(uid);
        if (k != null) {
            uid = k.intValue();
        }
        final ArrayList<ApplicationExitInfo> tlist = this.mTmpInfoList;
        tlist.clear();
        final int targetUid = uid;
        forEachPackageLocked(new BiFunction() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$xUd65bpeb_3cGXv8w6rHG0fu89U
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return this.f$0.lambda$updateExitInfoIfNecessaryLocked$2$AppExitInfoTracker(targetUid, tlist, pid, status, reason, (String) obj, (SparseArray) obj2);
            }
        });
        return tlist.size() > 0;
    }

    public /* synthetic */ Integer lambda$updateExitInfoIfNecessaryLocked$2$AppExitInfoTracker(int targetUid, ArrayList tlist, int pid, Integer status, Integer reason, String packageName, SparseArray records) {
        AppExitInfoContainer container = (AppExitInfoContainer) records.get(targetUid);
        if (container == null) {
            return 0;
        }
        tlist.clear();
        container.getExitInfoLocked(pid, 1, tlist);
        if (tlist.size() == 0) {
            return 0;
        }
        ApplicationExitInfo info = (ApplicationExitInfo) tlist.get(0);
        if (info.getRealUid() != targetUid) {
            tlist.clear();
            return 0;
        }
        updateExistingExitInfoRecordLocked(info, status, reason);
        return 2;
    }

    void getExitInfo(String packageName, final int filterUid, final int filterPid, int maxNum, ArrayList<ApplicationExitInfo> results) {
        long identity = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                boolean emptyPackageName = TextUtils.isEmpty(packageName);
                if (!emptyPackageName) {
                    AppExitInfoContainer container = (AppExitInfoContainer) this.mData.get(packageName, filterUid);
                    if (container != null) {
                        container.getExitInfoLocked(filterPid, maxNum, results);
                    }
                } else {
                    final ArrayList<ApplicationExitInfo> list = this.mTmpInfoList2;
                    list.clear();
                    forEachPackageLocked(new BiFunction() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk
                        @Override // java.util.function.BiFunction
                        public final Object apply(Object obj, Object obj2) {
                            return this.f$0.lambda$getExitInfo$3$AppExitInfoTracker(filterUid, list, filterPid, (String) obj, (SparseArray) obj2);
                        }
                    });
                    Collections.sort(list, new Comparator() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return AppExitInfoTracker.lambda$getExitInfo$4((ApplicationExitInfo) obj, (ApplicationExitInfo) obj2);
                        }
                    });
                    int size = list.size();
                    if (maxNum > 0) {
                        size = Math.min(size, maxNum);
                    }
                    for (int i = 0; i < size; i++) {
                        results.add(list.get(i));
                    }
                    list.clear();
                }
            }
            Binder.restoreCallingIdentity(identity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    public /* synthetic */ Integer lambda$getExitInfo$3$AppExitInfoTracker(int filterUid, ArrayList list, int filterPid, String name, SparseArray records) {
        AppExitInfoContainer container = (AppExitInfoContainer) records.get(filterUid);
        if (container != null) {
            this.mTmpInfoList.clear();
            list.addAll(container.toListLocked(this.mTmpInfoList, filterPid));
        }
        return 0;
    }

    static /* synthetic */ int lambda$getExitInfo$4(ApplicationExitInfo a, ApplicationExitInfo b) {
        return (int) (b.getTimestamp() - a.getTimestamp());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ApplicationExitInfo getExitInfoLocked(String packageName, int filterUid, int filterPid) {
        ArrayList<ApplicationExitInfo> list = this.mTmpInfoList;
        list.clear();
        getExitInfo(packageName, filterUid, filterPid, 1, list);
        ApplicationExitInfo info = list.size() > 0 ? list.get(0) : null;
        list.clear();
        return info;
    }

    void onUserRemoved(int userId) {
        this.mAppExitInfoSourceZygote.removeByUserId(userId);
        this.mAppExitInfoSourceLmkd.removeByUserId(userId);
        this.mIsolatedUidRecords.removeByUserId(userId);
        synchronized (this.mLock) {
            removeByUserIdLocked(userId);
            schedulePersistProcessExitInfo(true);
        }
    }

    void onPackageRemoved(String packageName, int uid, boolean allUsers) {
        if (packageName != null) {
            boolean removeUid = TextUtils.isEmpty(this.mService.mPackageManagerInt.getNameForUid(uid));
            synchronized (this.mLock) {
                if (removeUid) {
                    try {
                        this.mAppExitInfoSourceZygote.removeByUidLocked(uid, allUsers);
                        this.mAppExitInfoSourceLmkd.removeByUidLocked(uid, allUsers);
                        this.mIsolatedUidRecords.removeAppUid(uid, allUsers);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                removePackageLocked(packageName, uid, removeUid, allUsers ? -1 : UserHandle.getUserId(uid));
                schedulePersistProcessExitInfo(true);
            }
        }
    }

    private void registerForUserRemoval() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.USER_REMOVED");
        this.mService.mContext.registerReceiverForAllUsers(new BroadcastReceiver() { // from class: com.android.server.am.AppExitInfoTracker.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int userId = intent.getIntExtra("android.intent.extra.user_handle", -1);
                if (userId < 1) {
                    return;
                }
                AppExitInfoTracker.this.onUserRemoved(userId);
            }
        }, filter, null, this.mKillHandler);
    }

    private void registerForPackageRemoval() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addDataScheme(Settings.ATTR_PACKAGE);
        this.mService.mContext.registerReceiverForAllUsers(new BroadcastReceiver() { // from class: com.android.server.am.AppExitInfoTracker.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                boolean replacing = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                if (replacing) {
                    return;
                }
                int uid = intent.getIntExtra("android.intent.extra.UID", -10000);
                boolean allUsers = intent.getBooleanExtra("android.intent.extra.REMOVED_FOR_ALL_USERS", false);
                AppExitInfoTracker.this.onPackageRemoved(intent.getData().getSchemeSpecificPart(), uid, allUsers);
            }
        }, filter, null, this.mKillHandler);
    }

    void loadExistingProcessExitInfo() {
        if (!this.mProcExitInfoFile.canRead()) {
            synchronized (this.mLock) {
                this.mAppExitInfoLoaded = true;
            }
            return;
        }
        FileInputStream fin = null;
        try {
            try {
                AtomicFile af = new AtomicFile(this.mProcExitInfoFile);
                fin = af.openRead();
                ProtoInputStream proto = new ProtoInputStream(fin);
                for (int next = proto.nextField(); next != -1; next = proto.nextField()) {
                    if (next == 1) {
                        synchronized (this.mLock) {
                            this.mLastAppExitInfoPersistTimestamp = proto.readLong(1112396529665L);
                        }
                    } else if (next == 2) {
                        loadPackagesFromProto(proto, next);
                    }
                }
                if (fin != null) {
                    try {
                        fin.close();
                    } catch (IOException e) {
                    }
                }
            } catch (IOException | IllegalArgumentException | WireTypeMismatchException e2) {
                Slog.w(TAG, "Error in loading historical app exit info from persistent storage: " + e2);
                if (fin != null) {
                    try {
                        fin.close();
                    } catch (IOException e3) {
                    }
                }
            }
            synchronized (this.mLock) {
                pruneAnrTracesIfNecessaryLocked();
                this.mAppExitInfoLoaded = true;
            }
        } catch (Throwable th) {
            if (fin != null) {
                try {
                    fin.close();
                } catch (IOException e4) {
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.util.proto.WireTypeMismatchException */
    private void loadPackagesFromProto(ProtoInputStream proto, long fieldId) throws WireTypeMismatchException, IOException {
        long token = proto.start(fieldId);
        String pkgName = "";
        int next = proto.nextField();
        while (next != -1) {
            if (next == 1) {
                pkgName = proto.readString(1138166333441L);
            } else if (next != 2) {
                continue;
            } else {
                AppExitInfoContainer container = new AppExitInfoContainer(this.mAppExitInfoHistoryListSize);
                int uid = container.readFromProto(proto, 2246267895810L);
                synchronized (this.mLock) {
                    this.mData.put(pkgName, uid, container);
                }
            }
            next = proto.nextField();
        }
        proto.end(token);
    }

    void persistProcessExitInfo() {
        AtomicFile af = new AtomicFile(this.mProcExitInfoFile);
        FileOutputStream out = null;
        long now = System.currentTimeMillis();
        try {
            out = af.startWrite();
            final ProtoOutputStream proto = new ProtoOutputStream(out);
            proto.write(1112396529665L, now);
            synchronized (this.mLock) {
                forEachPackageLocked(new BiFunction() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$M7pmR3pU58DetrzQsI3M2-go5XU
                    @Override // java.util.function.BiFunction
                    public final Object apply(Object obj, Object obj2) {
                        return AppExitInfoTracker.lambda$persistProcessExitInfo$5(proto, (String) obj, (SparseArray) obj2);
                    }
                });
                this.mLastAppExitInfoPersistTimestamp = now;
            }
            proto.flush();
            af.finishWrite(out);
        } catch (IOException e) {
            Slog.w(TAG, "Unable to write historical app exit info into persistent storage: " + e);
            af.failWrite(out);
        }
        synchronized (this.mLock) {
            this.mAppExitInfoPersistTask = null;
        }
    }

    static /* synthetic */ Integer lambda$persistProcessExitInfo$5(ProtoOutputStream proto, String packageName, SparseArray records) {
        long token = proto.start(2246267895810L);
        proto.write(1138166333441L, packageName);
        int uidArraySize = records.size();
        for (int j = 0; j < uidArraySize; j++) {
            ((AppExitInfoContainer) records.valueAt(j)).writeToProto(proto, 2246267895810L);
        }
        proto.end(token);
        return 0;
    }

    void schedulePersistProcessExitInfo(boolean immediately) {
        synchronized (this.mLock) {
            if (this.mAppExitInfoPersistTask == null || immediately) {
                if (this.mAppExitInfoPersistTask != null) {
                    IoThread.getHandler().removeCallbacks(this.mAppExitInfoPersistTask);
                }
                this.mAppExitInfoPersistTask = new Runnable() { // from class: com.android.server.am.-$$Lambda$nvO8eEA3_tju6oGhhJ2BoQfYghg
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.persistProcessExitInfo();
                    }
                };
                IoThread.getHandler().postDelayed(this.mAppExitInfoPersistTask, immediately ? 0L : APP_EXIT_INFO_PERSIST_INTERVAL);
            }
        }
    }

    void clearProcessExitInfo(boolean removeFile) {
        synchronized (this.mLock) {
            if (this.mAppExitInfoPersistTask != null) {
                IoThread.getHandler().removeCallbacks(this.mAppExitInfoPersistTask);
                this.mAppExitInfoPersistTask = null;
            }
            if (removeFile && this.mProcExitInfoFile != null) {
                this.mProcExitInfoFile.delete();
            }
            this.mData.getMap().clear();
            this.mActiveAppStateSummary.clear();
            this.mActiveAppTraces.clear();
            pruneAnrTracesIfNecessaryLocked();
        }
    }

    void clearHistoryProcessExitInfo(String packageName, int userId) {
        if (TextUtils.isEmpty(packageName)) {
            synchronized (this.mLock) {
                removeByUserIdLocked(userId);
            }
        } else {
            int uid = this.mService.mPackageManagerInt.getPackageUid(packageName, 131072, userId);
            synchronized (this.mLock) {
                removePackageLocked(packageName, uid, true, userId);
            }
        }
        schedulePersistProcessExitInfo(true);
    }

    void dumpHistoryProcessExitInfo(final PrintWriter pw, String packageName) {
        pw.println("ACTIVITY MANAGER PROCESS EXIT INFO (dumpsys activity exit-info)");
        final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        synchronized (this.mLock) {
            pw.println("Last Timestamp of Persistence Into Persistent Storage: " + sdf.format(new Date(this.mLastAppExitInfoPersistTimestamp)));
            if (TextUtils.isEmpty(packageName)) {
                forEachPackageLocked(new BiFunction() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$ykvdMbwZILd9oyb6cyIe3GfomwU
                    @Override // java.util.function.BiFunction
                    public final Object apply(Object obj, Object obj2) {
                        return this.f$0.lambda$dumpHistoryProcessExitInfo$6$AppExitInfoTracker(pw, sdf, (String) obj, (SparseArray) obj2);
                    }
                });
            } else {
                SparseArray<AppExitInfoContainer> array = (SparseArray) this.mData.getMap().get(packageName);
                if (array != null) {
                    dumpHistoryProcessExitInfoLocked(pw, "  ", packageName, array, sdf);
                }
            }
        }
    }

    public /* synthetic */ Integer lambda$dumpHistoryProcessExitInfo$6$AppExitInfoTracker(PrintWriter pw, SimpleDateFormat sdf, String name, SparseArray records) {
        dumpHistoryProcessExitInfoLocked(pw, "  ", name, records, sdf);
        return 0;
    }

    private void dumpHistoryProcessExitInfoLocked(PrintWriter pw, String prefix, String packageName, SparseArray<AppExitInfoContainer> array, SimpleDateFormat sdf) {
        pw.println(prefix + "package: " + packageName);
        int size = array.size();
        for (int i = 0; i < size; i++) {
            pw.println(prefix + "  Historical Process Exit for userId=" + array.keyAt(i));
            array.valueAt(i).dumpLocked(pw, prefix + "    ", sdf);
        }
    }

    private void addExitInfoInnerLocked(String packageName, int userId, ApplicationExitInfo info) {
        AppExitInfoContainer container = (AppExitInfoContainer) this.mData.get(packageName, userId);
        if (container == null) {
            container = new AppExitInfoContainer(this.mAppExitInfoHistoryListSize);
            if (UserHandle.isIsolated(info.getRealUid())) {
                Integer k = this.mIsolatedUidRecords.getUidByIsolatedUid(info.getRealUid());
                if (k != null) {
                    container.mUid = k.intValue();
                }
            } else {
                container.mUid = info.getRealUid();
            }
            this.mData.put(packageName, userId, container);
        }
        container.addExitInfoLocked(info);
    }

    private void forEachPackageLocked(BiFunction<String, SparseArray<AppExitInfoContainer>, Integer> callback) {
        if (callback != null) {
            ArrayMap<String, SparseArray<AppExitInfoContainer>> map = this.mData.getMap();
            int i = map.size() - 1;
            while (i >= 0) {
                int iIntValue = callback.apply(map.keyAt(i), map.valueAt(i)).intValue();
                if (iIntValue == 1) {
                    SparseArray<AppExitInfoContainer> records = map.valueAt(i);
                    for (int j = records.size() - 1; j >= 0; j--) {
                        records.valueAt(j).destroyLocked();
                    }
                    map.removeAt(i);
                } else if (iIntValue == 2) {
                    i = 0;
                }
                i--;
            }
        }
    }

    private void removePackageLocked(String packageName, int uid, boolean removeUid, int userId) {
        if (removeUid) {
            this.mActiveAppStateSummary.remove(uid);
            int idx = this.mActiveAppTraces.indexOfKey(uid);
            if (idx >= 0) {
                SparseArray<File> array = this.mActiveAppTraces.valueAt(idx);
                for (int i = array.size() - 1; i >= 0; i--) {
                    array.valueAt(i).delete();
                }
                this.mActiveAppTraces.removeAt(idx);
            }
        }
        ArrayMap<String, SparseArray<AppExitInfoContainer>> map = this.mData.getMap();
        SparseArray<AppExitInfoContainer> array2 = map.get(packageName);
        if (array2 == null) {
            return;
        }
        if (userId == -1) {
            for (int i2 = array2.size() - 1; i2 >= 0; i2--) {
                array2.valueAt(i2).destroyLocked();
            }
            this.mData.getMap().remove(packageName);
            return;
        }
        for (int i3 = array2.size() - 1; i3 >= 0; i3--) {
            if (UserHandle.getUserId(array2.keyAt(i3)) == userId) {
                array2.valueAt(i3).destroyLocked();
                array2.removeAt(i3);
                break;
            }
        }
        int i4 = array2.size();
        if (i4 == 0) {
            map.remove(packageName);
        }
    }

    private void removeByUserIdLocked(final int userId) {
        if (userId == -1) {
            this.mData.getMap().clear();
            this.mActiveAppStateSummary.clear();
            this.mActiveAppTraces.clear();
            pruneAnrTracesIfNecessaryLocked();
            return;
        }
        removeFromSparse2dArray(this.mActiveAppStateSummary, new Predicate() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$vzdjnEjW-9gbfxjIkvPxuQNiFW0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AppExitInfoTracker.lambda$removeByUserIdLocked$7(userId, (Integer) obj);
            }
        }, null, null);
        removeFromSparse2dArray(this.mActiveAppTraces, new Predicate() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$XP9Dt_b6q1v_FLyDNEaaEtbN2tI
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AppExitInfoTracker.lambda$removeByUserIdLocked$8(userId, (Integer) obj);
            }
        }, null, new Consumer() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$Y37hrsxr0wudP-NPU4f6GLWVNsM
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((File) obj).delete();
            }
        });
        forEachPackageLocked(new BiFunction() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$ZY9TAD2R71ar3yQbfwDIrtpb_VY
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return AppExitInfoTracker.lambda$removeByUserIdLocked$10(userId, (String) obj, (SparseArray) obj2);
            }
        });
    }

    static /* synthetic */ boolean lambda$removeByUserIdLocked$7(int userId, Integer v) {
        return UserHandle.getUserId(v.intValue()) == userId;
    }

    static /* synthetic */ boolean lambda$removeByUserIdLocked$8(int userId, Integer v) {
        return UserHandle.getUserId(v.intValue()) == userId;
    }

    static /* synthetic */ Integer lambda$removeByUserIdLocked$10(int userId, String packageName, SparseArray records) {
        for (int i = records.size() - 1; i >= 0; i--) {
            if (UserHandle.getUserId(records.keyAt(i)) == userId) {
                ((AppExitInfoContainer) records.valueAt(i)).destroyLocked();
                records.removeAt(i);
                break;
            }
        }
        int i2 = records.size();
        return Integer.valueOf(i2 != 0 ? 0 : 1);
    }

    ApplicationExitInfo obtainRawRecordLocked(ProcessRecord app) {
        ApplicationExitInfo info = (ApplicationExitInfo) this.mRawRecordsPool.acquire();
        if (info == null) {
            info = new ApplicationExitInfo();
        }
        int definingUid = app.hostingRecord != null ? app.hostingRecord.getDefiningUid() : 0;
        info.setPid(app.pid);
        info.setRealUid(app.uid);
        info.setPackageUid(app.info.uid);
        info.setDefiningUid(definingUid > 0 ? definingUid : app.info.uid);
        info.setProcessName(app.processName);
        info.setConnectionGroup(app.connectionGroup);
        info.setPackageName(app.info.packageName);
        info.setPackageList(app.getPackageList());
        info.setReason(0);
        info.setStatus(0);
        info.setImportance(ActivityManager.RunningAppProcessInfo.procStateToImportance(app.setProcState));
        info.setPss(app.lastPss);
        info.setRss(app.mLastRss);
        info.setTimestamp(System.currentTimeMillis());
        return info;
    }

    void recycleRawRecordLocked(ApplicationExitInfo info) {
        info.setProcessName(null);
        info.setDescription(null);
        info.setPackageList(null);
        this.mRawRecordsPool.release(info);
    }

    void setProcessStateSummary(int uid, int pid, byte[] data) {
        synchronized (this.mLock) {
            Integer k = this.mIsolatedUidRecords.getUidByIsolatedUid(uid);
            if (k != null) {
                uid = k.intValue();
            }
            putToSparse2dArray(this.mActiveAppStateSummary, uid, pid, data, $$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY.INSTANCE, null);
        }
    }

    byte[] getProcessStateSummary(int uid, int pid) {
        synchronized (this.mLock) {
            Integer k = this.mIsolatedUidRecords.getUidByIsolatedUid(uid);
            if (k != null) {
                uid = k.intValue();
            }
            int index = this.mActiveAppStateSummary.indexOfKey(uid);
            if (index < 0) {
                return null;
            }
            return this.mActiveAppStateSummary.valueAt(index).get(pid);
        }
    }

    void scheduleLogAnrTrace(int pid, int uid, String[] packageList, File traceFile, long startOff, long endOff) {
        this.mKillHandler.sendMessage(PooledLambda.obtainMessage(new HexConsumer() { // from class: com.android.server.am.-$$Lambda$VSkN0NYXfJkOHZPqzFU-0f4s4R4
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) throws Throwable {
                this.f$0.handleLogAnrTrace(((Integer) obj).intValue(), ((Integer) obj2).intValue(), (String[]) obj3, (File) obj4, ((Long) obj5).longValue(), ((Long) obj6).longValue());
            }
        }, Integer.valueOf(pid), Integer.valueOf(uid), packageList, traceFile, Long.valueOf(startOff), Long.valueOf(endOff)));
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0083  */
    /* JADX WARN: Code duplicated, block: B:34:0x008b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0090  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:69:0x0077 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x0092 A[SYNTHETIC] */
    void handleLogAnrTrace(int pid, int uid, String[] packageList, File traceFile, long startOff, long endOff) throws Throwable {
        boolean pending;
        int i;
        AppExitInfoContainer container;
        if (traceFile.exists() && !ArrayUtils.isEmpty(packageList)) {
            long size = traceFile.length();
            long length = endOff - startOff;
            if (startOff >= size || endOff > size) {
                return;
            }
            if (length <= 0) {
                return;
            }
            File outFile = new File(this.mProcExitStoreDir, traceFile.getName() + ".gz");
            if (copyToGzFile(traceFile, outFile, startOff, length)) {
                synchronized (this.mLock) {
                    try {
                        try {
                            int uid2 = uid;
                            try {
                                Integer k = this.mIsolatedUidRecords.getUidByIsolatedUid(uid2);
                                if (k == null) {
                                    pending = true;
                                    for (String str : packageList) {
                                        container = (AppExitInfoContainer) this.mData.get(str, uid2);
                                        if (container != null) {
                                            if (container.appendTraceIfNecessaryLocked(pid, outFile)) {
                                                pending = false;
                                            }
                                        }
                                    }
                                    if (pending) {
                                        putToSparse2dArray(this.mActiveAppTraces, uid2, pid, outFile, $$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY.INSTANCE, new Consumer() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4
                                            @Override // java.util.function.Consumer
                                            public final void accept(Object obj) {
                                                ((File) obj).delete();
                                            }
                                        });
                                    }
                                    return;
                                }
                                try {
                                    uid2 = k.intValue();
                                    pending = true;
                                    while (i < packageList.length) {
                                        try {
                                            try {
                                                container = (AppExitInfoContainer) this.mData.get(str, uid2);
                                                if (container != null) {
                                                    try {
                                                        if (container.appendTraceIfNecessaryLocked(pid, outFile)) {
                                                            pending = false;
                                                        }
                                                    } catch (Throwable th) {
                                                        th = th;
                                                    }
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                        }
                                    }
                                    if (pending) {
                                        try {
                                            putToSparse2dArray(this.mActiveAppTraces, uid2, pid, outFile, $$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY.INSTANCE, new Consumer() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4
                                                @Override // java.util.function.Consumer
                                                public final void accept(Object obj) {
                                                    ((File) obj).delete();
                                                }
                                            });
                                        } catch (Throwable th4) {
                                            th = th4;
                                        }
                                    }
                                    return;
                                } catch (Throwable th5) {
                                    th = th5;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                        }
                    } catch (Throwable th8) {
                        th = th8;
                    }
                    throw th;
                }
            }
        }
    }

    private static boolean copyToGzFile(File inFile, File outFile, long start, long length) {
        int t;
        long remaining = length;
        try {
            BufferedInputStream in = new BufferedInputStream(new FileInputStream(inFile));
            try {
                GZIPOutputStream out = new GZIPOutputStream(new BufferedOutputStream(new FileOutputStream(outFile)));
                try {
                    byte[] buffer = new byte[8192];
                    in.skip(start);
                    while (remaining > 0 && (t = in.read(buffer, 0, (int) Math.min(buffer.length, remaining))) >= 0) {
                        out.write(buffer, 0, t);
                        remaining -= (long) t;
                    }
                    out.close();
                    in.close();
                    return remaining == 0 && outFile.exists();
                } catch (Throwable th) {
                    try {
                        out.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    in.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException e) {
            return false;
        }
    }

    private void pruneAnrTracesIfNecessaryLocked() {
        final ArraySet<String> allFiles = new ArraySet<>();
        File[] files = this.mProcExitStoreDir.listFiles(new FileFilter() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$JduFGZz0nH2A0BHWR2JObNY-HIA
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                return AppExitInfoTracker.lambda$pruneAnrTracesIfNecessaryLocked$12(allFiles, file);
            }
        });
        if (ArrayUtils.isEmpty(files)) {
            return;
        }
        forEachPackageLocked(new BiFunction() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$pGj1RV5EdCXTSGnbNiqDUSduYTk
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return AppExitInfoTracker.lambda$pruneAnrTracesIfNecessaryLocked$14(allFiles, (String) obj, (SparseArray) obj2);
            }
        });
        forEachSparse2dArray(this.mActiveAppTraces, new Consumer() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$Du2pQ0u67kwpa3kgguj5fWqQfXM
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                allFiles.remove(((File) obj).getName());
            }
        });
        for (int i = allFiles.size() - 1; i >= 0; i--) {
            new File(this.mProcExitStoreDir, allFiles.valueAt(i)).delete();
        }
    }

    static /* synthetic */ boolean lambda$pruneAnrTracesIfNecessaryLocked$12(ArraySet allFiles, File f) {
        String name = f.getName();
        boolean trace = name.startsWith("anr_") && name.endsWith(".gz");
        if (trace) {
            allFiles.add(name);
        }
        return trace;
    }

    static /* synthetic */ Integer lambda$pruneAnrTracesIfNecessaryLocked$14(final ArraySet allFiles, String name, SparseArray records) {
        for (int i = records.size() - 1; i >= 0; i--) {
            AppExitInfoContainer container = (AppExitInfoContainer) records.valueAt(i);
            container.forEachRecordLocked(new BiFunction() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$Q3GtkIfPxcC3Upjekif3W0ekKvY
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return AppExitInfoTracker.lambda$pruneAnrTracesIfNecessaryLocked$13(allFiles, (Integer) obj, (ApplicationExitInfo) obj2);
                }
            });
        }
        return 0;
    }

    static /* synthetic */ Integer lambda$pruneAnrTracesIfNecessaryLocked$13(ArraySet allFiles, Integer pid, ApplicationExitInfo info) {
        File traceFile = info.getTraceFile();
        if (traceFile != null) {
            allFiles.remove(traceFile.getName());
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T extends SparseArray<U>, U> void putToSparse2dArray(SparseArray<T> array, int outerKey, int innerKey, U value, Supplier<T> newInstance, Consumer<U> consumer) {
        T innerArray;
        int idx = array.indexOfKey(outerKey);
        if (idx < 0) {
            T innerArray2 = newInstance.get();
            innerArray = innerArray2;
            array.put(outerKey, innerArray);
        } else {
            T innerArray3 = array.valueAt(idx);
            innerArray = innerArray3;
        }
        int idx2 = innerArray.indexOfKey(innerKey);
        if (idx2 >= 0) {
            if (consumer != 0) {
                consumer.accept(innerArray.valueAt(idx2));
            }
            innerArray.setValueAt(idx2, value);
            return;
        }
        innerArray.put(innerKey, value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T extends SparseArray<U>, U> void forEachSparse2dArray(SparseArray<T> array, Consumer<U> consumer) {
        if (consumer != 0) {
            for (int i = array.size() - 1; i >= 0; i--) {
                T innerArray = array.valueAt(i);
                if (innerArray != null) {
                    for (int j = innerArray.size() - 1; j >= 0; j--) {
                        consumer.accept(innerArray.valueAt(j));
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T extends SparseArray<U>, U> void removeFromSparse2dArray(SparseArray<T> array, Predicate<Integer> outerPredicate, Predicate<Integer> innerPredicate, Consumer<U> consumer) {
        T innerArray;
        for (int i = array.size() - 1; i >= 0; i--) {
            if ((outerPredicate == null || outerPredicate.test(Integer.valueOf(array.keyAt(i)))) && (innerArray = array.valueAt(i)) != null) {
                for (int j = innerArray.size() - 1; j >= 0; j--) {
                    if (innerPredicate == null || innerPredicate.test(Integer.valueOf(innerArray.keyAt(j)))) {
                        if (consumer != 0) {
                            consumer.accept(innerArray.valueAt(j));
                        }
                        innerArray.removeAt(j);
                    }
                }
                int j2 = innerArray.size();
                if (j2 == 0) {
                    array.removeAt(i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends SparseArray<U>, U> U findAndRemoveFromSparse2dArray(SparseArray<T> sparseArray, int i, int i2) {
        T tValueAt;
        int iIndexOfKey;
        int iIndexOfKey2 = sparseArray.indexOfKey(i);
        if (iIndexOfKey2 < 0 || (tValueAt = sparseArray.valueAt(iIndexOfKey2)) == null || (iIndexOfKey = tValueAt.indexOfKey(i2)) < 0) {
            return null;
        }
        U u = (U) tValueAt.valueAt(iIndexOfKey);
        tValueAt.removeAt(iIndexOfKey);
        if (tValueAt.size() == 0) {
            sparseArray.removeAt(iIndexOfKey2);
        }
        return u;
    }

    final class AppExitInfoContainer {
        private SparseArray<ApplicationExitInfo> mInfos = new SparseArray<>();
        private int mMaxCapacity;
        private int mUid;

        AppExitInfoContainer(int maxCapacity) {
            this.mMaxCapacity = maxCapacity;
        }

        void getExitInfoLocked(int filterPid, int maxNum, ArrayList<ApplicationExitInfo> results) {
            if (filterPid > 0) {
                ApplicationExitInfo r = this.mInfos.get(filterPid);
                if (r != null) {
                    results.add(r);
                    return;
                }
                return;
            }
            int numRep = this.mInfos.size();
            if (maxNum <= 0 || numRep <= maxNum) {
                for (int i = 0; i < numRep; i++) {
                    results.add(this.mInfos.valueAt(i));
                }
                Collections.sort(results, new Comparator() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UJh7jNVpjR6lqMYBGte4jdTlSE0
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return AppExitInfoTracker.AppExitInfoContainer.lambda$getExitInfoLocked$0((ApplicationExitInfo) obj, (ApplicationExitInfo) obj2);
                    }
                });
                return;
            }
            if (maxNum == 1) {
                ApplicationExitInfo r2 = this.mInfos.valueAt(0);
                for (int i2 = 1; i2 < numRep; i2++) {
                    ApplicationExitInfo t = this.mInfos.valueAt(i2);
                    if (r2.getTimestamp() < t.getTimestamp()) {
                        r2 = t;
                    }
                }
                results.add(r2);
                return;
            }
            ArrayList<ApplicationExitInfo> list = AppExitInfoTracker.this.mTmpInfoList2;
            list.clear();
            for (int i3 = 0; i3 < numRep; i3++) {
                list.add(this.mInfos.valueAt(i3));
            }
            Collections.sort(list, new Comparator() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$RLhS-SmRlSPkWGNtIw3PWkm5huk
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return AppExitInfoTracker.AppExitInfoContainer.lambda$getExitInfoLocked$1((ApplicationExitInfo) obj, (ApplicationExitInfo) obj2);
                }
            });
            for (int i4 = 0; i4 < maxNum; i4++) {
                results.add(list.get(i4));
            }
            list.clear();
        }

        static /* synthetic */ int lambda$getExitInfoLocked$0(ApplicationExitInfo a, ApplicationExitInfo b) {
            return (int) (b.getTimestamp() - a.getTimestamp());
        }

        static /* synthetic */ int lambda$getExitInfoLocked$1(ApplicationExitInfo a, ApplicationExitInfo b) {
            return (int) (b.getTimestamp() - a.getTimestamp());
        }

        void addExitInfoLocked(ApplicationExitInfo info) {
            int size = this.mInfos.size();
            if (size >= this.mMaxCapacity) {
                int oldestIndex = -1;
                long oldestTimeStamp = JobStatus.NO_LATEST_RUNTIME;
                for (int i = 0; i < size; i++) {
                    ApplicationExitInfo r = this.mInfos.valueAt(i);
                    if (r.getTimestamp() < oldestTimeStamp) {
                        oldestTimeStamp = r.getTimestamp();
                        oldestIndex = i;
                    }
                }
                if (oldestIndex >= 0) {
                    File traceFile = this.mInfos.valueAt(oldestIndex).getTraceFile();
                    if (traceFile != null) {
                        traceFile.delete();
                    }
                    this.mInfos.removeAt(oldestIndex);
                }
            }
            int uid = info.getPackageUid();
            int pid = info.getPid();
            info.setProcessStateSummary((byte[]) AppExitInfoTracker.findAndRemoveFromSparse2dArray(AppExitInfoTracker.this.mActiveAppStateSummary, uid, pid));
            info.setTraceFile((File) AppExitInfoTracker.findAndRemoveFromSparse2dArray(AppExitInfoTracker.this.mActiveAppTraces, uid, pid));
            info.setAppTraceRetriever(AppExitInfoTracker.this.mAppTraceRetriever);
            this.mInfos.append(pid, info);
        }

        boolean appendTraceIfNecessaryLocked(int pid, File traceFile) {
            ApplicationExitInfo r = this.mInfos.get(pid);
            if (r != null) {
                r.setTraceFile(traceFile);
                r.setAppTraceRetriever(AppExitInfoTracker.this.mAppTraceRetriever);
                return true;
            }
            return false;
        }

        void destroyLocked() {
            for (int i = this.mInfos.size() - 1; i >= 0; i--) {
                ApplicationExitInfo ai = this.mInfos.valueAt(i);
                File traceFile = ai.getTraceFile();
                if (traceFile != null) {
                    traceFile.delete();
                }
                ai.setTraceFile(null);
                ai.setAppTraceRetriever(null);
            }
        }

        void forEachRecordLocked(BiFunction<Integer, ApplicationExitInfo, Integer> callback) {
            if (callback != null) {
                int i = this.mInfos.size() - 1;
                while (i >= 0) {
                    int iIntValue = callback.apply(Integer.valueOf(this.mInfos.keyAt(i)), this.mInfos.valueAt(i)).intValue();
                    if (iIntValue == 1) {
                        File traceFile = this.mInfos.valueAt(i).getTraceFile();
                        if (traceFile != null) {
                            traceFile.delete();
                        }
                        this.mInfos.removeAt(i);
                    } else if (iIntValue == 2) {
                        i = 0;
                    }
                    i--;
                }
            }
        }

        void dumpLocked(PrintWriter pw, String prefix, SimpleDateFormat sdf) {
            ArrayList<ApplicationExitInfo> list = new ArrayList<>();
            for (int i = this.mInfos.size() - 1; i >= 0; i--) {
                list.add(this.mInfos.valueAt(i));
            }
            Collections.sort(list, new Comparator() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UGYjMlfjNQLNoNs9jB0lra88GDI
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return AppExitInfoTracker.AppExitInfoContainer.lambda$dumpLocked$2((ApplicationExitInfo) obj, (ApplicationExitInfo) obj2);
                }
            });
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                list.get(i2).dump(pw, prefix + "  ", "#" + i2, sdf);
            }
        }

        static /* synthetic */ int lambda$dumpLocked$2(ApplicationExitInfo a, ApplicationExitInfo b) {
            return (int) (b.getTimestamp() - a.getTimestamp());
        }

        void writeToProto(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1120986464257L, this.mUid);
            int size = this.mInfos.size();
            for (int i = 0; i < size; i++) {
                this.mInfos.valueAt(i).writeToProto(proto, 2246267895810L);
            }
            proto.end(token);
        }

        int readFromProto(ProtoInputStream proto, long fieldId) throws WireTypeMismatchException, IOException {
            long token = proto.start(fieldId);
            int next = proto.nextField();
            while (next != -1) {
                if (next == 1) {
                    this.mUid = proto.readInt(1120986464257L);
                } else if (next == 2) {
                    ApplicationExitInfo info = new ApplicationExitInfo();
                    info.readFromProto(proto, 2246267895810L);
                    this.mInfos.put(info.getPid(), info);
                }
                next = proto.nextField();
            }
            proto.end(token);
            return this.mUid;
        }

        List<ApplicationExitInfo> toListLocked(List<ApplicationExitInfo> list, int filterPid) {
            if (list == null) {
                list = new ArrayList();
            }
            for (int i = this.mInfos.size() - 1; i >= 0; i--) {
                if (filterPid == 0 || filterPid == this.mInfos.keyAt(i)) {
                    list.add(this.mInfos.valueAt(i));
                }
            }
            return list;
        }
    }

    final class IsolatedUidRecords {
        private final SparseArray<ArraySet<Integer>> mUidToIsolatedUidMap = new SparseArray<>();
        private final SparseArray<Integer> mIsolatedUidToUidMap = new SparseArray<>();

        IsolatedUidRecords() {
        }

        void addIsolatedUid(int isolatedUid, int uid) {
            synchronized (AppExitInfoTracker.this.mLock) {
                ArraySet<Integer> set = this.mUidToIsolatedUidMap.get(uid);
                if (set == null) {
                    set = new ArraySet<>();
                    this.mUidToIsolatedUidMap.put(uid, set);
                }
                set.add(Integer.valueOf(isolatedUid));
                this.mIsolatedUidToUidMap.put(isolatedUid, Integer.valueOf(uid));
            }
        }

        Integer getUidByIsolatedUid(int isolatedUid) {
            Integer num;
            if (UserHandle.isIsolated(isolatedUid)) {
                synchronized (AppExitInfoTracker.this.mLock) {
                    num = this.mIsolatedUidToUidMap.get(isolatedUid);
                }
                return num;
            }
            return Integer.valueOf(isolatedUid);
        }

        private void removeAppUidLocked(int uid) {
            ArraySet<Integer> set = this.mUidToIsolatedUidMap.get(uid);
            if (set != null) {
                for (int i = set.size() - 1; i >= 0; i--) {
                    int isolatedUid = set.removeAt(i).intValue();
                    this.mIsolatedUidToUidMap.remove(isolatedUid);
                }
            }
        }

        void removeAppUid(int uid, boolean allUsers) {
            synchronized (AppExitInfoTracker.this.mLock) {
                try {
                    if (allUsers) {
                        int uid2 = UserHandle.getAppId(uid);
                        for (int i = this.mUidToIsolatedUidMap.size() - 1; i >= 0; i--) {
                            int u = this.mUidToIsolatedUidMap.keyAt(i);
                            if (uid2 == UserHandle.getAppId(u)) {
                                removeAppUidLocked(u);
                            }
                            this.mUidToIsolatedUidMap.removeAt(i);
                        }
                    } else {
                        removeAppUidLocked(uid);
                        this.mUidToIsolatedUidMap.remove(uid);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        int removeIsolatedUidLocked(int isolatedUid) {
            int uid;
            if (!UserHandle.isIsolated(isolatedUid) || (uid = this.mIsolatedUidToUidMap.get(isolatedUid, -1).intValue()) == -1) {
                return isolatedUid;
            }
            this.mIsolatedUidToUidMap.remove(isolatedUid);
            ArraySet<Integer> set = this.mUidToIsolatedUidMap.get(uid);
            if (set != null) {
                set.remove(Integer.valueOf(isolatedUid));
            }
            return uid;
        }

        void removeByUserId(int userId) {
            if (userId == -2) {
                userId = AppExitInfoTracker.this.mService.mUserController.getCurrentUserId();
            }
            synchronized (AppExitInfoTracker.this.mLock) {
                try {
                    if (userId == -1) {
                        this.mIsolatedUidToUidMap.clear();
                        this.mUidToIsolatedUidMap.clear();
                        return;
                    }
                    for (int i = this.mIsolatedUidToUidMap.size() - 1; i >= 0; i--) {
                        this.mIsolatedUidToUidMap.keyAt(i);
                        int uid = this.mIsolatedUidToUidMap.valueAt(i).intValue();
                        if (UserHandle.getUserId(uid) == userId) {
                            this.mIsolatedUidToUidMap.removeAt(i);
                            this.mUidToIsolatedUidMap.remove(uid);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    final class KillHandler extends Handler {
        static final int MSG_APP_KILL = 4104;
        static final int MSG_CHILD_PROC_DIED = 4102;
        static final int MSG_LMKD_PROC_KILLED = 4101;
        static final int MSG_PROC_DIED = 4103;

        KillHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case MSG_LMKD_PROC_KILLED /* 4101 */:
                    AppExitInfoTracker.this.mAppExitInfoSourceLmkd.onProcDied(msg.arg1, msg.arg2, null);
                    return;
                case MSG_CHILD_PROC_DIED /* 4102 */:
                    AppExitInfoTracker.this.mAppExitInfoSourceZygote.onProcDied(msg.arg1, msg.arg2, (Integer) msg.obj);
                    return;
                case MSG_PROC_DIED /* 4103 */:
                    ApplicationExitInfo raw = (ApplicationExitInfo) msg.obj;
                    synchronized (AppExitInfoTracker.this.mLock) {
                        AppExitInfoTracker.this.handleNoteProcessDiedLocked(raw);
                        AppExitInfoTracker.this.recycleRawRecordLocked(raw);
                        break;
                    }
                    return;
                case MSG_APP_KILL /* 4104 */:
                    ApplicationExitInfo raw2 = (ApplicationExitInfo) msg.obj;
                    synchronized (AppExitInfoTracker.this.mLock) {
                        AppExitInfoTracker.this.handleNoteAppKillLocked(raw2);
                        AppExitInfoTracker.this.recycleRawRecordLocked(raw2);
                        break;
                    }
                    return;
                default:
                    super.handleMessage(msg);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isFresh(long timestamp) {
        long now = System.currentTimeMillis();
        return BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS + timestamp >= now;
    }

    final class AppExitInfoExternalSource {
        private static final long APP_EXIT_INFO_FRESHNESS_MS = 300000;
        private final SparseArray<SparseArray<Pair<Long, Object>>> mData = new SparseArray<>();
        private final Integer mPresetReason;
        private BiConsumer<Integer, Integer> mProcDiedListener;
        private final String mTag;

        AppExitInfoExternalSource(String tag, Integer reason) {
            this.mTag = tag;
            this.mPresetReason = reason;
        }

        private void addLocked(int pid, int uid, Object extra) {
            Integer k = AppExitInfoTracker.this.mIsolatedUidRecords.getUidByIsolatedUid(uid);
            if (k != null) {
                uid = k.intValue();
            }
            SparseArray<Pair<Long, Object>> array = this.mData.get(uid);
            if (array == null) {
                array = new SparseArray<>();
                this.mData.put(uid, array);
            }
            array.put(pid, new Pair<>(Long.valueOf(System.currentTimeMillis()), extra));
        }

        Pair<Long, Object> remove(int pid, int uid) {
            Pair<Long, Object> p;
            synchronized (AppExitInfoTracker.this.mLock) {
                Integer k = AppExitInfoTracker.this.mIsolatedUidRecords.getUidByIsolatedUid(uid);
                if (k != null) {
                    uid = k.intValue();
                }
                SparseArray<Pair<Long, Object>> array = this.mData.get(uid);
                if (array == null || (p = array.get(pid)) == null) {
                    return null;
                }
                array.remove(pid);
                return AppExitInfoTracker.isFresh(((Long) p.first).longValue()) ? p : null;
            }
        }

        void removeByUserId(int userId) {
            if (userId == -2) {
                userId = AppExitInfoTracker.this.mService.mUserController.getCurrentUserId();
            }
            synchronized (AppExitInfoTracker.this.mLock) {
                try {
                    if (userId == -1) {
                        this.mData.clear();
                        return;
                    }
                    for (int i = this.mData.size() - 1; i >= 0; i--) {
                        int uid = this.mData.keyAt(i);
                        if (UserHandle.getUserId(uid) == userId) {
                            this.mData.removeAt(i);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        void removeByUidLocked(int uid, boolean allUsers) {
            Integer k;
            if (UserHandle.isIsolated(uid) && (k = AppExitInfoTracker.this.mIsolatedUidRecords.getUidByIsolatedUid(uid)) != null) {
                uid = k.intValue();
            }
            if (allUsers) {
                int uid2 = UserHandle.getAppId(uid);
                for (int i = this.mData.size() - 1; i >= 0; i--) {
                    if (UserHandle.getAppId(this.mData.keyAt(i)) == uid2) {
                        this.mData.removeAt(i);
                    }
                }
                return;
            }
            this.mData.remove(uid);
        }

        void setOnProcDiedListener(BiConsumer<Integer, Integer> listener) {
            synchronized (AppExitInfoTracker.this.mLock) {
                this.mProcDiedListener = listener;
            }
        }

        void onProcDied(final int pid, final int uid, Integer status) {
            if (AppExitInfoTracker.this.mService != null) {
                synchronized (AppExitInfoTracker.this.mLock) {
                    if (!AppExitInfoTracker.this.updateExitInfoIfNecessaryLocked(pid, uid, status, this.mPresetReason)) {
                        addLocked(pid, uid, status);
                    }
                    final BiConsumer<Integer, Integer> listener = this.mProcDiedListener;
                    if (listener != null) {
                        AppExitInfoTracker.this.mService.mHandler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$AppExitInfoTracker$AppExitInfoExternalSource$lEw-U7omc69c99jUnvgjDvhihE8
                            @Override // java.lang.Runnable
                            public final void run() {
                                listener.accept(Integer.valueOf(pid), Integer.valueOf(uid));
                            }
                        });
                    }
                }
            }
        }
    }

    class AppTraceRetriever extends IAppTraceRetriever.Stub {
        AppTraceRetriever() {
        }

        public ParcelFileDescriptor getTraceFileDescriptor(String packageName, int uid, int pid) {
            AppExitInfoTracker.this.mService.enforceNotIsolatedCaller("getTraceFileDescriptor");
            if (TextUtils.isEmpty(packageName)) {
                throw new IllegalArgumentException("Invalid package name");
            }
            int callingPid = Binder.getCallingPid();
            int callingUid = Binder.getCallingUid();
            UserHandle.getCallingUserId();
            int userId = UserHandle.getUserId(uid);
            AppExitInfoTracker.this.mService.mUserController.handleIncomingUser(callingPid, callingUid, userId, true, 0, "getTraceFileDescriptor", null);
            if (AppExitInfoTracker.this.mService.enforceDumpPermissionForPackage(packageName, userId, callingUid, "getTraceFileDescriptor") == -1) {
                return null;
            }
            synchronized (AppExitInfoTracker.this.mLock) {
                ApplicationExitInfo info = AppExitInfoTracker.this.getExitInfoLocked(packageName, uid, pid);
                if (info == null) {
                    return null;
                }
                File traceFile = info.getTraceFile();
                if (traceFile == null) {
                    return null;
                }
                long identity = Binder.clearCallingIdentity();
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(traceFile, AudioFormat.EVRC);
                    Binder.restoreCallingIdentity(identity);
                    return parcelFileDescriptorOpen;
                } catch (FileNotFoundException e) {
                    Binder.restoreCallingIdentity(identity);
                    return null;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }
}
