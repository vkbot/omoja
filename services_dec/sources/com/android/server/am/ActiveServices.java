package com.android.server.am;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.IApplicationThread;
import android.app.IServiceConnection;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.ServiceStartArgs;
import android.app.admin.DevicePolicyEventLogger;
import android.appwidget.AppWidgetManagerInternal;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.ParceledListSlice;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.TransactionTooLargeException;
import android.os.UserHandle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.EventLog;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import android.webkit.WebViewZygote;
import com.android.internal.app.procstats.ServiceState;
import com.android.internal.os.TransferPipe;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.AppStateTracker;
import com.android.server.LocalServices;
import com.android.server.job.controllers.JobStatus;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.uri.NeededUriGrants;
import com.android.server.usage.AppStandbyController;
import com.android.server.wm.ActivityServiceConnectionsHolder;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final class ActiveServices {
    private static final boolean DEBUG_DELAYED_SERVICE = false;
    private static final boolean DEBUG_DELAYED_STARTS = false;
    private static final int DEBUG_FGS_ALLOW_WHILE_IN_USE = 0;
    private static final int DEBUG_FGS_ENFORCE_TYPE = 1;
    static final int LAST_ANR_LIFETIME_DURATION_MSECS = 7200000;
    private static final boolean LOG_SERVICE_START_STOP = false;
    static final int SERVICE_BACKGROUND_TIMEOUT = 200000;
    static final int SERVICE_START_FOREGROUND_TIMEOUT = 15000;
    static final int SERVICE_TIMEOUT = 20000;
    private static final boolean SHOW_DUNGEON_NOTIFICATION = false;
    private static final String TAG = "ActivityManager";
    private static final String TAG_MU = "ActivityManager_MU";
    private static final String TAG_SERVICE = "ActivityManager";
    private static final String TAG_SERVICE_EXECUTING = "ActivityManager";
    final ActivityManagerService mAm;
    AppWidgetManagerInternal mAppWidgetManagerInternal;
    String mLastAnrDump;
    final int mMaxStartingBackground;
    final SparseArray<ServiceMap> mServiceMap = new SparseArray<>();
    final ArrayMap<IBinder, ArrayList<ConnectionRecord>> mServiceConnections = new ArrayMap<>();
    final ArrayList<ServiceRecord> mPendingServices = new ArrayList<>();
    final ArrayList<ServiceRecord> mRestartingServices = new ArrayList<>();
    final ArrayList<ServiceRecord> mDestroyingServices = new ArrayList<>();
    private ArrayList<ServiceRecord> mTmpCollectionResults = null;
    private final SparseArray<AppOpCallback> mFgsAppOpCallbacks = new SparseArray<>();
    boolean mScreenOn = true;
    ArraySet<String> mWhiteListAllowWhileInUsePermissionInFgs = new ArraySet<>();
    final Runnable mLastAnrDumpClearer = new Runnable() { // from class: com.android.server.am.ActiveServices.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (ActiveServices.this.mAm) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActiveServices.this.mLastAnrDump = null;
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    };

    class ForcedStandbyListener extends AppStateTracker.Listener {
        ForcedStandbyListener() {
        }

        @Override // com.android.server.AppStateTracker.Listener
        public void stopForegroundServicesForUidPackage(int uid, String packageName) {
            synchronized (ActiveServices.this.mAm) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActiveServices.this.stopAllForegroundServicesLocked(uid, packageName);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    void stopAllForegroundServicesLocked(int uid, String packageName) {
        ServiceMap smap = getServiceMapLocked(UserHandle.getUserId(uid));
        int N = smap.mServicesByInstanceName.size();
        ArrayList<ServiceRecord> toStop = new ArrayList<>(N);
        for (int i = 0; i < N; i++) {
            ServiceRecord r = smap.mServicesByInstanceName.valueAt(i);
            if ((uid == r.serviceInfo.applicationInfo.uid || packageName.equals(r.serviceInfo.packageName)) && r.isForeground) {
                toStop.add(r);
            }
        }
        int numToStop = toStop.size();
        for (int i2 = 0; i2 < numToStop; i2++) {
            setServiceForegroundInnerLocked(toStop.get(i2), 0, null, 0, 0);
        }
    }

    static final class ActiveForegroundApp {
        boolean mAppOnTop;
        long mEndTime;
        long mHideTime;
        CharSequence mLabel;
        int mNumActive;
        String mPackageName;
        boolean mShownWhileScreenOn;
        boolean mShownWhileTop;
        long mStartTime;
        long mStartVisibleTime;
        int mUid;

        ActiveForegroundApp() {
        }
    }

    final class ServiceMap extends Handler {
        static final int MSG_BG_START_TIMEOUT = 1;
        static final int MSG_ENSURE_NOT_START_BG = 3;
        static final int MSG_UPDATE_FOREGROUND_APPS = 2;
        final ArrayMap<String, ActiveForegroundApp> mActiveForegroundApps;
        boolean mActiveForegroundAppsChanged;
        final ArrayList<ServiceRecord> mDelayedStartList;
        final ArrayMap<ComponentName, ServiceRecord> mServicesByInstanceName;
        final ArrayMap<Intent.FilterComparison, ServiceRecord> mServicesByIntent;
        final ArrayList<ServiceRecord> mStartingBackground;
        final int mUserId;

        ServiceMap(Looper looper, int userId) {
            super(looper);
            this.mServicesByInstanceName = new ArrayMap<>();
            this.mServicesByIntent = new ArrayMap<>();
            this.mDelayedStartList = new ArrayList<>();
            this.mStartingBackground = new ArrayList<>();
            this.mActiveForegroundApps = new ArrayMap<>();
            this.mUserId = userId;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                synchronized (ActiveServices.this.mAm) {
                    try {
                        ActivityManagerService.boostPriorityForLockedSection();
                        rescheduleDelayedStartsLocked();
                    } finally {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i == 2) {
                ActiveServices.this.updateForegroundApps(this);
                return;
            }
            if (i == 3) {
                synchronized (ActiveServices.this.mAm) {
                    try {
                        ActivityManagerService.boostPriorityForLockedSection();
                        rescheduleDelayedStartsLocked();
                    } finally {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        }

        void ensureNotStartingBackgroundLocked(ServiceRecord r) {
            if (this.mStartingBackground.remove(r)) {
                removeMessages(3);
                Message msg = obtainMessage(3);
                sendMessage(msg);
            }
            this.mDelayedStartList.remove(r);
        }

        void rescheduleDelayedStartsLocked() {
            removeMessages(1);
            long now = SystemClock.uptimeMillis();
            int i = 0;
            int N = this.mStartingBackground.size();
            while (i < N) {
                ServiceRecord r = this.mStartingBackground.get(i);
                if (r.startingBgTimeout <= now) {
                    Slog.i("ActivityManager", "Waited long enough for: " + r);
                    this.mStartingBackground.remove(i);
                    N += -1;
                    i += -1;
                }
                i++;
            }
            while (this.mDelayedStartList.size() > 0 && this.mStartingBackground.size() < ActiveServices.this.mMaxStartingBackground) {
                ServiceRecord r2 = this.mDelayedStartList.remove(0);
                r2.delayed = false;
                if (r2.pendingStarts.size() <= 0) {
                    Slog.wtf("ActivityManager", "**** NO PENDING STARTS! " + r2 + " startReq=" + r2.startRequested + " delayedStop=" + r2.delayedStop);
                } else {
                    try {
                        ActiveServices.this.startServiceInnerLocked(this, r2.pendingStarts.get(0).intent, r2, false, true);
                    } catch (TransactionTooLargeException e) {
                    }
                }
            }
            if (this.mStartingBackground.size() > 0) {
                ServiceRecord next = this.mStartingBackground.get(0);
                long when = next.startingBgTimeout > now ? next.startingBgTimeout : now;
                Message msg = obtainMessage(1);
                sendMessageAtTime(msg, when);
            }
            if (this.mStartingBackground.size() < ActiveServices.this.mMaxStartingBackground) {
                ActiveServices.this.mAm.backgroundServicesFinishedLocked(this.mUserId);
            }
        }
    }

    public ActiveServices(ActivityManagerService service) {
        int i = 1;
        this.mAm = service;
        int maxBg = 0;
        try {
            maxBg = Integer.parseInt(SystemProperties.get("ro.config.max_starting_bg", "0"));
        } catch (RuntimeException e) {
        }
        if (maxBg > 0) {
            i = maxBg;
        } else if (!ActivityManager.isLowRamDeviceStatic()) {
            i = 8;
        }
        this.mMaxStartingBackground = i;
        Slog.i("ActivityManager", "MaxStartingBackground" + this.mMaxStartingBackground);
    }

    void systemServicesReady() {
        AppStateTracker ast = (AppStateTracker) LocalServices.getService(AppStateTracker.class);
        ast.addListener(new ForcedStandbyListener());
        this.mAppWidgetManagerInternal = (AppWidgetManagerInternal) LocalServices.getService(AppWidgetManagerInternal.class);
        setWhiteListAllowWhileInUsePermissionInFgs();
    }

    private void setWhiteListAllowWhileInUsePermissionInFgs() {
        String attentionServicePackageName = this.mAm.mContext.getPackageManager().getAttentionServicePackageName();
        if (!TextUtils.isEmpty(attentionServicePackageName)) {
            this.mWhiteListAllowWhileInUsePermissionInFgs.add(attentionServicePackageName);
        }
        String systemCaptionsServicePackageName = this.mAm.mContext.getPackageManager().getSystemCaptionsServicePackageName();
        if (!TextUtils.isEmpty(systemCaptionsServicePackageName)) {
            this.mWhiteListAllowWhileInUsePermissionInFgs.add(systemCaptionsServicePackageName);
        }
    }

    ServiceRecord getServiceByNameLocked(ComponentName name, int callingUser) {
        return getServiceMapLocked(callingUser).mServicesByInstanceName.get(name);
    }

    boolean hasBackgroundServicesLocked(int callingUser) {
        ServiceMap smap = this.mServiceMap.get(callingUser);
        return smap != null && smap.mStartingBackground.size() >= this.mMaxStartingBackground;
    }

    boolean hasForegroundServiceNotificationLocked(String pkg, int userId, String channelId) {
        ServiceMap smap = this.mServiceMap.get(userId);
        if (smap != null) {
            for (int i = 0; i < smap.mServicesByInstanceName.size(); i++) {
                ServiceRecord sr = smap.mServicesByInstanceName.valueAt(i);
                if (sr.appInfo.packageName.equals(pkg) && sr.isForeground && Objects.equals(sr.foregroundNoti.getChannelId(), channelId)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    void stopForegroundServicesForChannelLocked(String pkg, int userId, String channelId) {
        ServiceMap smap = this.mServiceMap.get(userId);
        if (smap != null) {
            for (int i = 0; i < smap.mServicesByInstanceName.size(); i++) {
                ServiceRecord sr = smap.mServicesByInstanceName.valueAt(i);
                if (sr.appInfo.packageName.equals(pkg) && sr.isForeground && Objects.equals(sr.foregroundNoti.getChannelId(), channelId)) {
                    stopServiceLocked(sr);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ServiceMap getServiceMapLocked(int callingUser) {
        ServiceMap smap = this.mServiceMap.get(callingUser);
        if (smap == null) {
            ServiceMap smap2 = new ServiceMap(this.mAm.mHandler.getLooper(), callingUser);
            this.mServiceMap.put(callingUser, smap2);
            return smap2;
        }
        return smap;
    }

    ArrayMap<ComponentName, ServiceRecord> getServicesLocked(int callingUser) {
        return getServiceMapLocked(callingUser).mServicesByInstanceName;
    }

    private boolean appRestrictedAnyInBackground(int uid, String packageName) {
        int mode = this.mAm.getAppOpsManager().checkOpNoThrow(70, uid, packageName);
        return mode != 0;
    }

    ComponentName startServiceLocked(IApplicationThread caller, Intent service, String resolvedType, int callingPid, int callingUid, boolean fgRequired, String callingPackage, String callingFeatureId, int userId) throws TransactionTooLargeException {
        return startServiceLocked(caller, service, resolvedType, callingPid, callingUid, fgRequired, callingPackage, callingFeatureId, userId, false);
    }

    /* JADX WARN: Code duplicated, block: B:112:0x030b  */
    /* JADX WARN: Code duplicated, block: B:114:0x030e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0153  */
    /* JADX WARN: Code duplicated, block: B:59:0x0183  */
    /* JADX WARN: Code duplicated, block: B:61:0x01c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:64:0x01c9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:69:0x01f4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:72:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:77:0x020a  */
    /* JADX WARN: Code duplicated, block: B:80:0x022e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:82:0x0230  */
    /* JADX WARN: Code duplicated, block: B:84:0x025f  */
    /* JADX WARN: Code duplicated, block: B:86:0x0265  */
    /* JADX WARN: Instruction removed from duplicated block: B:59:0x0183, please report this as an issue */
    ComponentName startServiceLocked(IApplicationThread caller, Intent service, String resolvedType, int callingPid, int callingUid, boolean fgRequired, String callingPackage, String callingFeatureId, int userId, boolean allowBackgroundActivityStarts) throws Throwable {
        boolean callerFg;
        boolean forcedStandby;
        boolean forceSilentAbort;
        boolean fgRequired2;
        boolean fgRequired3;
        int allowed;
        boolean z;
        boolean fgRequired4;
        NeededUriGrants neededGrants;
        boolean fgRequired5;
        boolean addToStarting;
        ServiceState stracker;
        ActiveServices activeServices = this;
        if (caller != null) {
            ProcessRecord callerApp = activeServices.mAm.getRecordForAppLocked(caller);
            if (callerApp == null) {
                throw new SecurityException("Unable to find app for caller " + caller + " (pid=" + callingPid + ") when starting service " + service);
            }
            boolean callerFg2 = callerApp.setSchedGroup != 0;
            callerFg = callerFg2;
        } else {
            callerFg = true;
        }
        ServiceLookupResult res = retrieveServiceLocked(service, null, resolvedType, callingPackage, callingPid, callingUid, userId, true, callerFg, false, false);
        if (res == null) {
            return null;
        }
        if (res.record == null) {
            return new ComponentName("!", res.permission != null ? res.permission : "private to package");
        }
        ServiceRecord r = res.record;
        if (!activeServices.mAm.mUserController.exists(r.userId)) {
            Slog.w("ActivityManager", "Trying to start service with non-existent user! " + r.userId);
            return null;
        }
        boolean z2 = true;
        boolean bgLaunch = !activeServices.mAm.isUidActiveLocked(r.appInfo.uid);
        if (bgLaunch && activeServices.appRestrictedAnyInBackground(r.appInfo.uid, r.packageName)) {
            forcedStandby = true;
        } else {
            forcedStandby = false;
        }
        if (fgRequired) {
            int mode = activeServices.mAm.getAppOpsManager().checkOpNoThrow(76, r.appInfo.uid, r.packageName);
            if (mode != 0) {
                z2 = true;
                if (mode == 1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("startForegroundService not allowed due to app op: service ");
                    sb.append(service);
                    sb.append(" to ");
                    sb.append(r.shortInstanceName);
                    sb.append(" from pid=");
                    sb.append(callingPid);
                    sb.append(" uid=");
                    sb.append(callingUid);
                    sb.append(" pkg=");
                    callingPackage = callingPackage;
                    sb.append(callingPackage);
                    Slog.w("ActivityManager", sb.toString());
                    fgRequired2 = false;
                    forceSilentAbort = true;
                } else if (mode != 3) {
                    return new ComponentName("!!", "foreground not allowed as per app op");
                }
                if (forcedStandby && (r.startRequested || fgRequired2)) {
                    z = z2;
                } else {
                    fgRequired3 = fgRequired2;
                    allowed = activeServices.mAm.getAppStartModeLocked(r.appInfo.uid, r.packageName, r.appInfo.targetSdkVersion, callingPid, false, false, forcedStandby);
                    if (allowed == 0) {
                        z = true;
                        activeServices = this;
                        fgRequired2 = fgRequired3;
                    } else {
                        Slog.w("ActivityManager", "Background start not allowed: service " + service + " to " + r.shortInstanceName + " from pid=" + callingPid + " uid=" + callingUid + " pkg=" + callingPackage + " startFg?=" + fgRequired3);
                        if (allowed == 1 && !forceSilentAbort) {
                            if (!forcedStandby && fgRequired3) {
                                return null;
                            }
                            UidRecord uidRec = this.mAm.mProcessList.getUidRecordLocked(r.appInfo.uid);
                            return new ComponentName("?", "app is in background uid " + uidRec);
                        }
                        return null;
                    }
                }
                if (r.appInfo.targetSdkVersion >= 26 && fgRequired2) {
                    fgRequired4 = false;
                } else {
                    fgRequired4 = fgRequired2;
                }
                neededGrants = activeServices.mAm.mUgmInternal.checkGrantUriPermissionFromIntent(service, callingUid, r.packageName, r.userId);
                fgRequired5 = fgRequired4;
                if (!requestStartTargetPermissionsReviewIfNeededLocked(r, callingPackage, callingFeatureId, callingUid, service, callerFg, userId)) {
                    return null;
                }
                activeServices.unscheduleServiceRestartLocked(r, callingUid, false);
                r.lastActivity = SystemClock.uptimeMillis();
                r.startRequested = z;
                r.delayedStop = false;
                r.fgRequired = fgRequired5;
                r.pendingStarts.add(new ServiceRecord.StartItem(r, false, r.makeNextStartId(), service, neededGrants, callingUid));
                if (fgRequired5) {
                    stracker = r.getTracker();
                    if (stracker != null) {
                        stracker.setForeground(true, activeServices.mAm.mProcessStats.getMemFactorLocked(), r.lastActivity);
                    }
                    activeServices.mAm.mAppOpsService.startOperation(AppOpsManager.getToken(activeServices.mAm.mAppOpsService), 76, r.appInfo.uid, r.packageName, null, true, false, null, false);
                }
                ServiceMap smap = activeServices.getServiceMapLocked(r.userId);
                if (callerFg && !fgRequired5 && r.app == null && activeServices.mAm.mUserController.hasStartedUserState(r.userId)) {
                    ProcessRecord proc = activeServices.mAm.getProcessRecordLocked(r.processName, r.appInfo.uid, false);
                    if (proc == null || proc.getCurProcState() > 11) {
                        if (r.delayed) {
                            return r.name;
                        }
                        if (smap.mStartingBackground.size() >= activeServices.mMaxStartingBackground) {
                            Slog.i("ActivityManager", "Delaying start of: " + r);
                            smap.mDelayedStartList.add(r);
                            r.delayed = true;
                            return r.name;
                        }
                        addToStarting = true;
                    } else if (proc.getCurProcState() >= 10) {
                        addToStarting = true;
                    } else {
                        addToStarting = false;
                    }
                } else {
                    addToStarting = false;
                }
                if (allowBackgroundActivityStarts) {
                    r.whitelistBgActivityStartsOnServiceStart();
                }
                ComponentName cmp = startServiceInnerLocked(smap, service, r, callerFg, addToStarting);
                setFgsRestrictionLocked(callingPackage, callingPid, callingUid, r, allowBackgroundActivityStarts);
                return cmp;
            }
            z2 = true;
        }
        fgRequired2 = fgRequired;
        forceSilentAbort = false;
        if (forcedStandby) {
            fgRequired3 = fgRequired2;
            allowed = activeServices.mAm.getAppStartModeLocked(r.appInfo.uid, r.packageName, r.appInfo.targetSdkVersion, callingPid, false, false, forcedStandby);
            if (allowed == 0) {
                z = true;
                activeServices = this;
                fgRequired2 = fgRequired3;
            } else {
                Slog.w("ActivityManager", "Background start not allowed: service " + service + " to " + r.shortInstanceName + " from pid=" + callingPid + " uid=" + callingUid + " pkg=" + callingPackage + " startFg?=" + fgRequired3);
                if (allowed == 1) {
                    return null;
                }
                if (!forcedStandby) {
                }
                UidRecord uidRec2 = this.mAm.mProcessList.getUidRecordLocked(r.appInfo.uid);
                return new ComponentName("?", "app is in background uid " + uidRec2);
            }
        } else {
            fgRequired3 = fgRequired2;
            allowed = activeServices.mAm.getAppStartModeLocked(r.appInfo.uid, r.packageName, r.appInfo.targetSdkVersion, callingPid, false, false, forcedStandby);
            if (allowed == 0) {
                z = true;
                activeServices = this;
                fgRequired2 = fgRequired3;
            } else {
                Slog.w("ActivityManager", "Background start not allowed: service " + service + " to " + r.shortInstanceName + " from pid=" + callingPid + " uid=" + callingUid + " pkg=" + callingPackage + " startFg?=" + fgRequired3);
                if (allowed == 1) {
                    return null;
                }
                if (!forcedStandby) {
                }
                UidRecord uidRec3 = this.mAm.mProcessList.getUidRecordLocked(r.appInfo.uid);
                return new ComponentName("?", "app is in background uid " + uidRec3);
            }
        }
        if (r.appInfo.targetSdkVersion >= 26) {
            fgRequired4 = fgRequired2;
        } else {
            fgRequired4 = fgRequired2;
        }
        neededGrants = activeServices.mAm.mUgmInternal.checkGrantUriPermissionFromIntent(service, callingUid, r.packageName, r.userId);
        fgRequired5 = fgRequired4;
        if (!requestStartTargetPermissionsReviewIfNeededLocked(r, callingPackage, callingFeatureId, callingUid, service, callerFg, userId)) {
            return null;
        }
        activeServices.unscheduleServiceRestartLocked(r, callingUid, false);
        r.lastActivity = SystemClock.uptimeMillis();
        r.startRequested = z;
        r.delayedStop = false;
        r.fgRequired = fgRequired5;
        r.pendingStarts.add(new ServiceRecord.StartItem(r, false, r.makeNextStartId(), service, neededGrants, callingUid));
        if (fgRequired5) {
            stracker = r.getTracker();
            if (stracker != null) {
                stracker.setForeground(true, activeServices.mAm.mProcessStats.getMemFactorLocked(), r.lastActivity);
            }
            activeServices.mAm.mAppOpsService.startOperation(AppOpsManager.getToken(activeServices.mAm.mAppOpsService), 76, r.appInfo.uid, r.packageName, null, true, false, null, false);
        }
        ServiceMap smap2 = activeServices.getServiceMapLocked(r.userId);
        if (callerFg) {
            addToStarting = false;
        } else {
            addToStarting = false;
        }
        if (allowBackgroundActivityStarts) {
            r.whitelistBgActivityStartsOnServiceStart();
        }
        ComponentName cmp2 = startServiceInnerLocked(smap2, service, r, callerFg, addToStarting);
        setFgsRestrictionLocked(callingPackage, callingPid, callingUid, r, allowBackgroundActivityStarts);
        return cmp2;
    }

    private boolean requestStartTargetPermissionsReviewIfNeededLocked(ServiceRecord r, String callingPackage, String callingFeatureId, int callingUid, Intent service, boolean callerFg, final int userId) {
        if (!this.mAm.getPackageManagerInternalLocked().isPermissionsReviewRequired(r.packageName, r.userId)) {
            return true;
        }
        if (!callerFg) {
            Slog.w("ActivityManager", "u" + r.userId + " Starting a service in package" + r.packageName + " requires a permissions review");
            return false;
        }
        PendingIntentRecord intentSender = this.mAm.mPendingIntentController.getIntentSender(4, callingPackage, callingFeatureId, callingUid, userId, null, null, 0, new Intent[]{service}, new String[]{service.resolveType(this.mAm.mContext.getContentResolver())}, 1409286144, null);
        final Intent intent = new Intent("android.intent.action.REVIEW_PERMISSIONS");
        intent.addFlags(411041792);
        intent.putExtra("android.intent.extra.PACKAGE_NAME", r.packageName);
        intent.putExtra("android.intent.extra.INTENT", new IntentSender(intentSender));
        this.mAm.mHandler.post(new Runnable() { // from class: com.android.server.am.ActiveServices.2
            @Override // java.lang.Runnable
            public void run() {
                ActiveServices.this.mAm.mContext.startActivityAsUser(intent, new UserHandle(userId));
            }
        });
        return false;
    }

    ComponentName startServiceInnerLocked(ServiceMap smap, Intent service, ServiceRecord r, boolean callerFg, boolean addToStarting) throws TransactionTooLargeException {
        ServiceState stracker = r.getTracker();
        boolean first = true;
        if (stracker != null) {
            stracker.setStarted(true, this.mAm.mProcessStats.getMemFactorLocked(), r.lastActivity);
        }
        r.callStart = false;
        FrameworkStatsLog.write(99, r.appInfo.uid, r.name.getPackageName(), r.name.getClassName(), 1);
        synchronized (r.stats.getBatteryStats()) {
            r.stats.startRunningLocked();
        }
        String error = bringUpServiceLocked(r, service.getFlags(), callerFg, false, false);
        if (error != null) {
            return new ComponentName("!!", error);
        }
        if (r.startRequested && addToStarting) {
            if (smap.mStartingBackground.size() != 0) {
                first = false;
            }
            smap.mStartingBackground.add(r);
            r.startingBgTimeout = SystemClock.uptimeMillis() + this.mAm.mConstants.BG_START_TIMEOUT;
            if (first) {
                smap.rescheduleDelayedStartsLocked();
            }
        } else if (callerFg || r.fgRequired) {
            smap.ensureNotStartingBackgroundLocked(r);
        }
        return r.name;
    }

    private void stopServiceLocked(ServiceRecord service) {
        if (service.delayed) {
            service.delayedStop = true;
            return;
        }
        FrameworkStatsLog.write(99, service.appInfo.uid, service.name.getPackageName(), service.name.getClassName(), 2);
        synchronized (service.stats.getBatteryStats()) {
            service.stats.stopRunningLocked();
        }
        service.startRequested = false;
        if (service.tracker != null) {
            service.tracker.setStarted(false, this.mAm.mProcessStats.getMemFactorLocked(), SystemClock.uptimeMillis());
        }
        service.callStart = false;
        bringDownServiceIfNeededLocked(service, false, false);
    }

    int stopServiceLocked(IApplicationThread caller, Intent service, String resolvedType, int userId) throws Throwable {
        ProcessRecord callerApp = this.mAm.getRecordForAppLocked(caller);
        if (caller != null && callerApp == null) {
            throw new SecurityException("Unable to find app for caller " + caller + " (pid=" + Binder.getCallingPid() + ") when stopping service " + service);
        }
        ServiceLookupResult r = retrieveServiceLocked(service, null, resolvedType, null, Binder.getCallingPid(), Binder.getCallingUid(), userId, false, false, false, false);
        if (r != null) {
            if (r.record != null) {
                long origId = Binder.clearCallingIdentity();
                try {
                    stopServiceLocked(r.record);
                    return 1;
                } finally {
                    Binder.restoreCallingIdentity(origId);
                }
            }
            return -1;
        }
        return 0;
    }

    void stopInBackgroundLocked(int uid) {
        ServiceMap services = this.mServiceMap.get(UserHandle.getUserId(uid));
        ArrayList<ServiceRecord> stopping = null;
        if (services != null) {
            for (int i = services.mServicesByInstanceName.size() - 1; i >= 0; i--) {
                ServiceRecord service = services.mServicesByInstanceName.valueAt(i);
                if (service.appInfo.uid == uid && service.startRequested && this.mAm.getAppStartModeLocked(service.appInfo.uid, service.packageName, service.appInfo.targetSdkVersion, -1, false, false, false) != 0) {
                    if (stopping == null) {
                        stopping = new ArrayList<>();
                    }
                    String compName = service.shortInstanceName;
                    EventLogTags.writeAmStopIdleService(service.appInfo.uid, compName);
                    StringBuilder sb = new StringBuilder(64);
                    sb.append("Stopping service due to app idle: ");
                    UserHandle.formatUid(sb, service.appInfo.uid);
                    sb.append(" ");
                    TimeUtils.formatDuration(service.createRealTime - SystemClock.elapsedRealtime(), sb);
                    sb.append(" ");
                    sb.append(compName);
                    Slog.w("ActivityManager", sb.toString());
                    stopping.add(service);
                    if (appRestrictedAnyInBackground(service.appInfo.uid, service.packageName)) {
                        cancelForegroundNotificationLocked(service);
                    }
                }
            }
            if (stopping != null) {
                for (int i2 = stopping.size() - 1; i2 >= 0; i2--) {
                    ServiceRecord service2 = stopping.get(i2);
                    service2.delayed = false;
                    services.ensureNotStartingBackgroundLocked(service2);
                    stopServiceLocked(service2);
                }
            }
        }
    }

    void killMisbehavingService(ServiceRecord r, int appUid, int appPid, String localPackageName) {
        synchronized (this.mAm) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                if (!r.destroying) {
                    stopServiceLocked(r);
                } else {
                    ServiceMap smap = getServiceMapLocked(r.userId);
                    ServiceRecord found = smap.mServicesByInstanceName.remove(r.instanceName);
                    if (found != null) {
                        stopServiceLocked(found);
                    }
                }
                this.mAm.crashApplication(appUid, appPid, localPackageName, -1, "Bad notification for startForeground", true);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    IBinder peekServiceLocked(Intent service, String resolvedType, String callingPackage) throws Throwable {
        ServiceLookupResult r = retrieveServiceLocked(service, null, resolvedType, callingPackage, Binder.getCallingPid(), Binder.getCallingUid(), UserHandle.getCallingUserId(), false, false, false, false);
        if (r == null) {
            return null;
        }
        if (r.record == null) {
            throw new SecurityException("Permission Denial: Accessing service from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires " + r.permission);
        }
        IntentBindRecord ib = r.record.bindings.get(r.record.intent);
        if (ib == null) {
            return null;
        }
        IBinder ret = ib.binder;
        return ret;
    }

    boolean stopServiceTokenLocked(ComponentName className, IBinder token, int startId) {
        ServiceRecord r = findServiceLocked(className, token, UserHandle.getCallingUserId());
        if (r == null) {
            return false;
        }
        if (startId >= 0) {
            ServiceRecord.StartItem si = r.findDeliveredStart(startId, false, false);
            if (si != null) {
                while (r.deliveredStarts.size() > 0) {
                    ServiceRecord.StartItem cur = r.deliveredStarts.remove(0);
                    cur.removeUriPermissionsLocked();
                    if (cur == si) {
                        break;
                    }
                }
            }
            if (r.getLastStartId() != startId) {
                return false;
            }
            if (r.deliveredStarts.size() > 0) {
                Slog.w("ActivityManager", "stopServiceToken startId " + startId + " is last, but have " + r.deliveredStarts.size() + " remaining args");
            }
        }
        FrameworkStatsLog.write(99, r.appInfo.uid, r.name.getPackageName(), r.name.getClassName(), 2);
        synchronized (r.stats.getBatteryStats()) {
            r.stats.stopRunningLocked();
        }
        r.startRequested = false;
        if (r.tracker != null) {
            r.tracker.setStarted(false, this.mAm.mProcessStats.getMemFactorLocked(), SystemClock.uptimeMillis());
        }
        r.callStart = false;
        long origId = Binder.clearCallingIdentity();
        bringDownServiceIfNeededLocked(r, false, false);
        Binder.restoreCallingIdentity(origId);
        return true;
    }

    public void setServiceForegroundLocked(ComponentName className, IBinder token, int id, Notification notification, int flags, int foregroundServiceType) {
        int userId = UserHandle.getCallingUserId();
        long origId = Binder.clearCallingIdentity();
        try {
            ServiceRecord r = findServiceLocked(className, token, userId);
            if (r != null) {
                setServiceForegroundInnerLocked(r, id, notification, flags, foregroundServiceType);
            }
        } finally {
            Binder.restoreCallingIdentity(origId);
        }
    }

    public int getForegroundServiceTypeLocked(ComponentName className, IBinder token) {
        int userId = UserHandle.getCallingUserId();
        long origId = Binder.clearCallingIdentity();
        int ret = 0;
        try {
            ServiceRecord r = findServiceLocked(className, token, userId);
            if (r != null) {
                ret = r.foregroundServiceType;
            }
            return ret;
        } finally {
            Binder.restoreCallingIdentity(origId);
        }
    }

    boolean foregroundAppShownEnoughLocked(ActiveForegroundApp aa, long nowElapsed) {
        long j;
        aa.mHideTime = JobStatus.NO_LATEST_RUNTIME;
        if (aa.mShownWhileTop) {
            return true;
        }
        if (this.mScreenOn || aa.mShownWhileScreenOn) {
            long minTime = aa.mStartVisibleTime;
            if (aa.mStartTime != aa.mStartVisibleTime) {
                j = this.mAm.mConstants.FGSERVICE_SCREEN_ON_AFTER_TIME;
            } else {
                j = this.mAm.mConstants.FGSERVICE_MIN_SHOWN_TIME;
            }
            long minTime2 = minTime + j;
            if (nowElapsed >= minTime2) {
                return true;
            }
            long reportTime = this.mAm.mConstants.FGSERVICE_MIN_REPORT_TIME + nowElapsed;
            aa.mHideTime = reportTime > minTime2 ? reportTime : minTime2;
            return false;
        }
        long minTime3 = aa.mEndTime + this.mAm.mConstants.FGSERVICE_SCREEN_ON_BEFORE_TIME;
        if (nowElapsed >= minTime3) {
            return true;
        }
        aa.mHideTime = minTime3;
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0047 A[Catch: all -> 0x0097, TryCatch #0 {all -> 0x0097, blocks: (B:4:0x0004, B:6:0x0012, B:8:0x001c, B:10:0x002c, B:12:0x0032, B:24:0x0064, B:13:0x003a, B:15:0x0040, B:16:0x0043, B:18:0x0047, B:21:0x0053, B:22:0x0059, B:23:0x005d, B:25:0x0067, B:27:0x0074, B:28:0x0086, B:30:0x008a, B:34:0x0090, B:35:0x0092), top: B:42:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0053 A[Catch: all -> 0x0097, TryCatch #0 {all -> 0x0097, blocks: (B:4:0x0004, B:6:0x0012, B:8:0x001c, B:10:0x002c, B:12:0x0032, B:24:0x0064, B:13:0x003a, B:15:0x0040, B:16:0x0043, B:18:0x0047, B:21:0x0053, B:22:0x0059, B:23:0x005d, B:25:0x0067, B:27:0x0074, B:28:0x0086, B:30:0x008a, B:34:0x0090, B:35:0x0092), top: B:42:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x005d A[Catch: all -> 0x0097, TryCatch #0 {all -> 0x0097, blocks: (B:4:0x0004, B:6:0x0012, B:8:0x001c, B:10:0x002c, B:12:0x0032, B:24:0x0064, B:13:0x003a, B:15:0x0040, B:16:0x0043, B:18:0x0047, B:21:0x0053, B:22:0x0059, B:23:0x005d, B:25:0x0067, B:27:0x0074, B:28:0x0086, B:30:0x008a, B:34:0x0090, B:35:0x0092), top: B:42:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0064 A[SYNTHETIC] */
    void updateForegroundApps(ServiceMap smap) {
        boolean canRemove;
        ArrayList<ActiveForegroundApp> active = null;
        synchronized (this.mAm) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                long now = SystemClock.elapsedRealtime();
                long nextUpdateTime = JobStatus.NO_LATEST_RUNTIME;
                if (smap != null) {
                    for (int i = smap.mActiveForegroundApps.size() - 1; i >= 0; i--) {
                        ActiveForegroundApp aa = smap.mActiveForegroundApps.valueAt(i);
                        if (aa.mEndTime != 0) {
                            boolean canRemove2 = foregroundAppShownEnoughLocked(aa, now);
                            if (canRemove2) {
                                smap.mActiveForegroundApps.removeAt(i);
                                smap.mActiveForegroundAppsChanged = true;
                            } else {
                                if (aa.mHideTime < nextUpdateTime) {
                                    nextUpdateTime = aa.mHideTime;
                                }
                                canRemove = aa.mAppOnTop;
                                if (canRemove) {
                                    if (!appRestrictedAnyInBackground(aa.mUid, aa.mPackageName)) {
                                        if (active == null) {
                                            active = new ArrayList<>();
                                        }
                                        active.add(aa);
                                    } else {
                                        stopAllForegroundServicesLocked(aa.mUid, aa.mPackageName);
                                    }
                                }
                            }
                        } else {
                            canRemove = aa.mAppOnTop;
                            if (canRemove) {
                                if (!appRestrictedAnyInBackground(aa.mUid, aa.mPackageName)) {
                                    if (active == null) {
                                        active = new ArrayList<>();
                                    }
                                    active.add(aa);
                                } else {
                                    stopAllForegroundServicesLocked(aa.mUid, aa.mPackageName);
                                }
                            }
                        }
                    }
                    smap.removeMessages(2);
                    if (nextUpdateTime < JobStatus.NO_LATEST_RUNTIME) {
                        Message msg = smap.obtainMessage(2);
                        smap.sendMessageAtTime(msg, (SystemClock.uptimeMillis() + nextUpdateTime) - SystemClock.elapsedRealtime());
                    }
                }
                if (smap.mActiveForegroundAppsChanged) {
                    smap.mActiveForegroundAppsChanged = false;
                }
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    private void requestUpdateActiveForegroundAppsLocked(ServiceMap smap, long timeElapsed) {
        Message msg = smap.obtainMessage(2);
        if (timeElapsed != 0) {
            smap.sendMessageAtTime(msg, (SystemClock.uptimeMillis() + timeElapsed) - SystemClock.elapsedRealtime());
        } else {
            smap.mActiveForegroundAppsChanged = true;
            smap.sendMessage(msg);
        }
    }

    private void decActiveForegroundAppLocked(ServiceMap smap, ServiceRecord r) {
        ActiveForegroundApp active = smap.mActiveForegroundApps.get(r.packageName);
        if (active != null) {
            active.mNumActive--;
            if (active.mNumActive <= 0) {
                active.mEndTime = SystemClock.elapsedRealtime();
                if (foregroundAppShownEnoughLocked(active, active.mEndTime)) {
                    smap.mActiveForegroundApps.remove(r.packageName);
                    smap.mActiveForegroundAppsChanged = true;
                    requestUpdateActiveForegroundAppsLocked(smap, 0L);
                } else if (active.mHideTime < JobStatus.NO_LATEST_RUNTIME) {
                    requestUpdateActiveForegroundAppsLocked(smap, active.mHideTime);
                }
            }
        }
    }

    void updateScreenStateLocked(boolean screenOn) {
        if (this.mScreenOn != screenOn) {
            this.mScreenOn = screenOn;
            if (screenOn) {
                long nowElapsed = SystemClock.elapsedRealtime();
                for (int i = this.mServiceMap.size() - 1; i >= 0; i--) {
                    ServiceMap smap = this.mServiceMap.valueAt(i);
                    long nextUpdateTime = JobStatus.NO_LATEST_RUNTIME;
                    boolean changed = false;
                    for (int j = smap.mActiveForegroundApps.size() - 1; j >= 0; j--) {
                        ActiveForegroundApp active = smap.mActiveForegroundApps.valueAt(j);
                        if (active.mEndTime == 0) {
                            if (!active.mShownWhileScreenOn) {
                                active.mShownWhileScreenOn = true;
                                active.mStartVisibleTime = nowElapsed;
                            }
                        } else {
                            if (!active.mShownWhileScreenOn && active.mStartVisibleTime == active.mStartTime) {
                                active.mStartVisibleTime = nowElapsed;
                                active.mEndTime = nowElapsed;
                            }
                            if (foregroundAppShownEnoughLocked(active, nowElapsed)) {
                                smap.mActiveForegroundApps.remove(active.mPackageName);
                                smap.mActiveForegroundAppsChanged = true;
                                changed = true;
                            } else if (active.mHideTime < nextUpdateTime) {
                                nextUpdateTime = active.mHideTime;
                            }
                        }
                    }
                    if (changed) {
                        requestUpdateActiveForegroundAppsLocked(smap, 0L);
                    } else if (nextUpdateTime < JobStatus.NO_LATEST_RUNTIME) {
                        requestUpdateActiveForegroundAppsLocked(smap, nextUpdateTime);
                    }
                }
            }
        }
    }

    void foregroundServiceProcStateChangedLocked(UidRecord uidRec) {
        ServiceMap smap = this.mServiceMap.get(UserHandle.getUserId(uidRec.uid));
        if (smap != null) {
            boolean changed = false;
            for (int j = smap.mActiveForegroundApps.size() - 1; j >= 0; j--) {
                ActiveForegroundApp active = smap.mActiveForegroundApps.valueAt(j);
                if (active.mUid == uidRec.uid) {
                    if (uidRec.getCurProcState() <= 2) {
                        if (!active.mAppOnTop) {
                            active.mAppOnTop = true;
                            changed = true;
                        }
                        active.mShownWhileTop = true;
                    } else if (active.mAppOnTop) {
                        active.mAppOnTop = false;
                        changed = true;
                    }
                }
            }
            if (changed) {
                requestUpdateActiveForegroundAppsLocked(smap, 0L);
            }
        }
    }

    private boolean appIsTopLocked(int uid) {
        return this.mAm.getUidState(uid) <= 2;
    }

    private void setServiceForegroundInnerLocked(ServiceRecord r, int id, Notification notification, int flags, int foregroundServiceType) {
        int foregroundServiceType2;
        boolean alreadyStartedOp;
        boolean stopProcStatsOp;
        ServiceState stracker;
        boolean ignoreForeground;
        ServiceState stracker2;
        if (id == 0) {
            if (r.isForeground) {
                ServiceMap smap = getServiceMapLocked(r.userId);
                if (smap != null) {
                    decActiveForegroundAppLocked(smap, r);
                }
                r.isForeground = false;
                resetFgsRestrictionLocked(r);
                ServiceState stracker3 = r.getTracker();
                if (stracker3 != null) {
                    stracker3.setForeground(false, this.mAm.mProcessStats.getMemFactorLocked(), r.lastActivity);
                }
                this.mAm.mAppOpsService.finishOperation(AppOpsManager.getToken(this.mAm.mAppOpsService), 76, r.appInfo.uid, r.packageName, null);
                unregisterAppOpCallbackLocked(r);
                FrameworkStatsLog.write(60, r.appInfo.uid, r.shortInstanceName, 2, r.mAllowWhileInUsePermissionInFgs);
                this.mAm.updateForegroundServiceUsageStats(r.name, r.userId, false);
                if (r.app != null) {
                    this.mAm.updateLruProcessLocked(r.app, false, null);
                    updateServiceForegroundLocked(r.app, true);
                }
            }
            if ((flags & 1) != 0) {
                cancelForegroundNotificationLocked(r);
                r.foregroundId = 0;
                r.foregroundNoti = null;
            } else if (r.appInfo.targetSdkVersion >= 21) {
                r.stripForegroundServiceFlagFromNotification();
                if ((flags & 2) != 0) {
                    r.foregroundId = 0;
                    r.foregroundNoti = null;
                }
            }
            return;
        }
        if (notification == null) {
            throw new IllegalArgumentException("null notification");
        }
        if (r.appInfo.isInstantApp()) {
            int mode = this.mAm.getAppOpsManager().checkOpNoThrow(68, r.appInfo.uid, r.appInfo.packageName);
            if (mode != 0) {
                if (mode == 1) {
                    Slog.w("ActivityManager", "Instant app " + r.appInfo.packageName + " does not have permission to create foreground services, ignoring.");
                    return;
                }
                if (mode == 2) {
                    throw new SecurityException("Instant app " + r.appInfo.packageName + " does not have permission to create foreground services");
                }
                this.mAm.enforcePermission("android.permission.INSTANT_APP_FOREGROUND_SERVICE", r.app.pid, r.appInfo.uid, "startForeground");
            }
            foregroundServiceType2 = foregroundServiceType;
        } else {
            if (r.appInfo.targetSdkVersion >= 28) {
                this.mAm.enforcePermission("android.permission.FOREGROUND_SERVICE", r.app.pid, r.appInfo.uid, "startForeground");
            }
            int manifestType = r.serviceInfo.getForegroundServiceType();
            int foregroundServiceType3 = foregroundServiceType == -1 ? manifestType : foregroundServiceType;
            if ((foregroundServiceType3 & manifestType) != foregroundServiceType3) {
                throw new IllegalArgumentException("foregroundServiceType " + String.format("0x%08X", Integer.valueOf(foregroundServiceType3)) + " is not a subset of foregroundServiceType attribute " + String.format("0x%08X", Integer.valueOf(manifestType)) + " in service element of manifest file");
            }
            foregroundServiceType2 = foregroundServiceType3;
        }
        if (r.fgRequired) {
            r.fgRequired = false;
            r.fgWaiting = false;
            this.mAm.mHandler.removeMessages(66, r);
            alreadyStartedOp = true;
            stopProcStatsOp = true;
        } else {
            alreadyStartedOp = false;
            stopProcStatsOp = false;
        }
        boolean ignoreForeground2 = false;
        try {
            int mode2 = this.mAm.getAppOpsManager().checkOpNoThrow(76, r.appInfo.uid, r.packageName);
            if (mode2 != 0) {
                if (mode2 == 1) {
                    Slog.w("ActivityManager", "Service.startForeground() not allowed due to app op: service " + r.shortInstanceName);
                    ignoreForeground2 = true;
                } else if (mode2 != 3) {
                    throw new SecurityException("Foreground not allowed as per app op");
                }
            }
            if (ignoreForeground2 || appIsTopLocked(r.appInfo.uid) || !appRestrictedAnyInBackground(r.appInfo.uid, r.packageName)) {
                ignoreForeground = ignoreForeground2;
            } else {
                Slog.w("ActivityManager", "Service.startForeground() not allowed due to bg restriction: service " + r.shortInstanceName);
                updateServiceForegroundLocked(r.app, false);
                ignoreForeground = true;
            }
            if (!ignoreForeground) {
                if (r.mStartForegroundCount == 0) {
                    if (!r.fgRequired) {
                        long delayMs = SystemClock.elapsedRealtime() - r.createRealTime;
                        if (delayMs > this.mAm.mConstants.mFgsStartForegroundTimeoutMs) {
                            resetFgsRestrictionLocked(r);
                            setFgsRestrictionLocked(r.serviceInfo.packageName, r.app.pid, r.appInfo.uid, r, false);
                            EventLog.writeEvent(1397638484, "183147114", Integer.valueOf(r.appInfo.uid), "call setFgsRestrictionLocked again due to startForegroundTimeout");
                        }
                    }
                } else if (r.mStartForegroundCount >= 1) {
                    long delayMs2 = SystemClock.elapsedRealtime() - r.mLastSetFgsRestrictionTime;
                    if (delayMs2 > this.mAm.mConstants.mFgsStartForegroundTimeoutMs) {
                        resetFgsRestrictionLocked(r);
                        setFgsRestrictionLocked(r.serviceInfo.packageName, r.app.pid, r.appInfo.uid, r, false);
                        EventLog.writeEvent(1397638484, "183147114", Integer.valueOf(r.appInfo.uid), "call setFgsRestrictionLocked for " + (r.mStartForegroundCount + 1) + "th startForeground");
                    }
                }
                if (!r.mAllowWhileInUsePermissionInFgs) {
                    Slog.w("ActivityManager", "Foreground service started from background can not have location/camera/microphone access: service " + r.shortInstanceName);
                }
            }
            if (!ignoreForeground) {
                if (r.foregroundId != id) {
                    cancelForegroundNotificationLocked(r);
                    r.foregroundId = id;
                }
                notification.flags |= 64;
                r.foregroundNoti = notification;
                r.foregroundServiceType = foregroundServiceType2;
                if (!r.isForeground) {
                    ServiceMap smap2 = getServiceMapLocked(r.userId);
                    if (smap2 != null) {
                        ActiveForegroundApp active = smap2.mActiveForegroundApps.get(r.packageName);
                        if (active == null) {
                            active = new ActiveForegroundApp();
                            active.mPackageName = r.packageName;
                            active.mUid = r.appInfo.uid;
                            active.mShownWhileScreenOn = this.mScreenOn;
                            if (r.app != null && r.app.uidRecord != null) {
                                boolean z = r.app.uidRecord.getCurProcState() <= 2;
                                active.mShownWhileTop = z;
                                active.mAppOnTop = z;
                            }
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            active.mStartVisibleTime = jElapsedRealtime;
                            active.mStartTime = jElapsedRealtime;
                            smap2.mActiveForegroundApps.put(r.packageName, active);
                            requestUpdateActiveForegroundAppsLocked(smap2, 0L);
                        }
                        active.mNumActive++;
                    }
                    r.isForeground = true;
                    r.mStartForegroundCount++;
                    if (stopProcStatsOp) {
                        stopProcStatsOp = false;
                    } else {
                        ServiceState stracker4 = r.getTracker();
                        if (stracker4 != null) {
                            stracker4.setForeground(true, this.mAm.mProcessStats.getMemFactorLocked(), r.lastActivity);
                        }
                    }
                    this.mAm.mAppOpsService.startOperation(AppOpsManager.getToken(this.mAm.mAppOpsService), 76, r.appInfo.uid, r.packageName, null, true, false, "", false);
                    FrameworkStatsLog.write(60, r.appInfo.uid, r.shortInstanceName, 1, r.mAllowWhileInUsePermissionInFgs);
                    registerAppOpCallbackLocked(r);
                    this.mAm.updateForegroundServiceUsageStats(r.name, r.userId, true);
                }
                r.postNotification();
                if (r.app != null) {
                    updateServiceForegroundLocked(r.app, true);
                }
                getServiceMapLocked(r.userId).ensureNotStartingBackgroundLocked(r);
                this.mAm.notifyPackageUse(r.serviceInfo.packageName, 2);
            }
            if (stopProcStatsOp && (stracker2 = r.getTracker()) != null) {
                stracker2.setForeground(false, this.mAm.mProcessStats.getMemFactorLocked(), r.lastActivity);
            }
            if (alreadyStartedOp) {
                this.mAm.mAppOpsService.finishOperation(AppOpsManager.getToken(this.mAm.mAppOpsService), 76, r.appInfo.uid, r.packageName, null);
            }
        } catch (Throwable th) {
            if (stopProcStatsOp && (stracker = r.getTracker()) != null) {
                stracker.setForeground(false, this.mAm.mProcessStats.getMemFactorLocked(), r.lastActivity);
            }
            if (alreadyStartedOp) {
                this.mAm.mAppOpsService.finishOperation(AppOpsManager.getToken(this.mAm.mAppOpsService), 76, r.appInfo.uid, r.packageName, null);
            }
            throw th;
        }
    }

    private void registerAppOpCallbackLocked(ServiceRecord r) {
        if (r.app == null) {
            return;
        }
        int uid = r.appInfo.uid;
        AppOpCallback callback = this.mFgsAppOpCallbacks.get(uid);
        if (callback == null) {
            callback = new AppOpCallback(r.app, this.mAm.getAppOpsManager());
            this.mFgsAppOpCallbacks.put(uid, callback);
        }
        callback.registerLocked();
    }

    private void unregisterAppOpCallbackLocked(ServiceRecord r) {
        int uid = r.appInfo.uid;
        AppOpCallback callback = this.mFgsAppOpCallbacks.get(uid);
        if (callback != null) {
            callback.unregisterLocked();
            if (callback.isObsoleteLocked()) {
                this.mFgsAppOpCallbacks.remove(uid);
            }
        }
    }

    private static final class AppOpCallback {
        private static final int[] LOGGED_AP_OPS = {0, 1, 27, 26};
        private final AppOpsManager mAppOpsManager;
        private final ProcessRecord mProcessRecord;
        private final SparseIntArray mAcceptedOps = new SparseIntArray();
        private final SparseIntArray mRejectedOps = new SparseIntArray();
        private final Object mCounterLock = new Object();
        private final SparseIntArray mAppOpModes = new SparseIntArray();
        private int mNumFgs = 0;
        private boolean mDestroyed = false;
        private final AppOpsManager.OnOpNotedListener mOpNotedCallback = new AppOpsManager.OnOpNotedListener() { // from class: com.android.server.am.ActiveServices.AppOpCallback.1
            public void onOpNoted(int op, int uid, String pkgName, int result) {
                AppOpCallback.this.incrementOpCountIfNeeded(op, uid, result);
            }
        };
        private final AppOpsManager.OnOpStartedListener mOpStartedCallback = new AppOpsManager.OnOpStartedListener() { // from class: com.android.server.am.ActiveServices.AppOpCallback.2
            public void onOpStarted(int op, int uid, String pkgName, int result) {
                AppOpCallback.this.incrementOpCountIfNeeded(op, uid, result);
            }
        };

        AppOpCallback(ProcessRecord r, AppOpsManager appOpsManager) {
            this.mProcessRecord = r;
            this.mAppOpsManager = appOpsManager;
            for (int op : LOGGED_AP_OPS) {
                int mode = appOpsManager.unsafeCheckOpRawNoThrow(op, r.uid, r.info.packageName);
                this.mAppOpModes.put(op, mode);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void incrementOpCountIfNeeded(int op, int uid, int result) {
            if (uid == this.mProcessRecord.uid && isNotTop()) {
                incrementOpCount(op, result == 0);
            }
        }

        private boolean isNotTop() {
            return this.mProcessRecord.getCurProcState() != 2;
        }

        private void incrementOpCount(int op, boolean allowed) {
            synchronized (this.mCounterLock) {
                try {
                    SparseIntArray counter = allowed ? this.mAcceptedOps : this.mRejectedOps;
                    int index = counter.indexOfKey(op);
                    if (index >= 0) {
                        counter.setValueAt(index, counter.valueAt(index) + 1);
                    } else {
                        counter.put(op, 1);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        void registerLocked() {
            if (isObsoleteLocked()) {
                Slog.wtf("ActivityManager", "Trying to register on a stale AppOpCallback.");
                return;
            }
            int i = this.mNumFgs + 1;
            this.mNumFgs = i;
            if (i == 1) {
                this.mAppOpsManager.startWatchingNoted(LOGGED_AP_OPS, this.mOpNotedCallback);
                this.mAppOpsManager.startWatchingStarted(LOGGED_AP_OPS, this.mOpStartedCallback);
            }
        }

        void unregisterLocked() {
            int i = this.mNumFgs - 1;
            this.mNumFgs = i;
            if (i <= 0) {
                this.mDestroyed = true;
                logFinalValues();
                this.mAppOpsManager.stopWatchingNoted(this.mOpNotedCallback);
                this.mAppOpsManager.stopWatchingStarted(this.mOpStartedCallback);
            }
        }

        boolean isObsoleteLocked() {
            return this.mDestroyed;
        }

        private void logFinalValues() {
            synchronized (this.mCounterLock) {
                for (int op : LOGGED_AP_OPS) {
                    int acceptances = this.mAcceptedOps.get(op);
                    int rejections = this.mRejectedOps.get(op);
                    if (acceptances > 0 || rejections > 0) {
                        FrameworkStatsLog.write(256, this.mProcessRecord.uid, op, modeToEnum(this.mAppOpModes.get(op)), acceptances, rejections);
                    }
                }
            }
        }

        private static int modeToEnum(int mode) {
            if (mode != 0) {
                if (mode == 1) {
                    return 2;
                }
                if (mode == 4) {
                    return 3;
                }
                return 0;
            }
            return 1;
        }
    }

    private void cancelForegroundNotificationLocked(ServiceRecord r) {
        if (r.foregroundId != 0) {
            ServiceMap sm = getServiceMapLocked(r.userId);
            if (sm != null) {
                for (int i = sm.mServicesByInstanceName.size() - 1; i >= 0; i--) {
                    ServiceRecord other = sm.mServicesByInstanceName.valueAt(i);
                    if (other != r && other.foregroundId == r.foregroundId && other.packageName.equals(r.packageName)) {
                        return;
                    }
                }
            }
            r.cancelNotification();
        }
    }

    private void updateServiceForegroundLocked(ProcessRecord proc, boolean oomAdj) {
        boolean anyForeground = false;
        int fgServiceTypes = 0;
        for (int i = proc.numberOfRunningServices() - 1; i >= 0; i--) {
            ServiceRecord sr = proc.getRunningServiceAt(i);
            if (sr.isForeground || sr.fgRequired) {
                anyForeground = true;
                fgServiceTypes |= sr.foregroundServiceType;
            }
        }
        this.mAm.updateProcessForegroundLocked(proc, anyForeground, fgServiceTypes, oomAdj);
    }

    private void updateWhitelistManagerLocked(ProcessRecord proc) {
        proc.whitelistManager = false;
        for (int i = proc.numberOfRunningServices() - 1; i >= 0; i--) {
            ServiceRecord sr = proc.getRunningServiceAt(i);
            if (sr.whitelistManager) {
                proc.whitelistManager = true;
                return;
            }
        }
    }

    public void updateServiceConnectionActivitiesLocked(ProcessRecord clientProc) {
        ArraySet<ProcessRecord> updatedProcesses = null;
        for (int i = 0; i < clientProc.connections.size(); i++) {
            ConnectionRecord conn = clientProc.connections.valueAt(i);
            ProcessRecord proc = conn.binding.service.app;
            if (proc != null && proc != clientProc) {
                if (updatedProcesses == null) {
                    updatedProcesses = new ArraySet<>();
                } else if (updatedProcesses.contains(proc)) {
                }
                updatedProcesses.add(proc);
                updateServiceClientActivitiesLocked(proc, null, false);
            }
        }
    }

    private boolean updateServiceClientActivitiesLocked(ProcessRecord proc, ConnectionRecord modCr, boolean updateLru) {
        if (modCr != null && modCr.binding.client != null && !modCr.binding.client.hasActivities()) {
            return false;
        }
        boolean anyClientActivities = false;
        for (int i = proc.numberOfRunningServices() - 1; i >= 0 && !anyClientActivities; i--) {
            ServiceRecord sr = proc.getRunningServiceAt(i);
            ArrayMap<IBinder, ArrayList<ConnectionRecord>> connections = sr.getConnections();
            for (int conni = connections.size() - 1; conni >= 0 && !anyClientActivities; conni--) {
                ArrayList<ConnectionRecord> clist = connections.valueAt(conni);
                for (int cri = clist.size() - 1; cri >= 0; cri--) {
                    ConnectionRecord cr = clist.get(cri);
                    if (cr.binding.client != null && cr.binding.client != proc && cr.binding.client.hasActivities()) {
                        anyClientActivities = true;
                        break;
                    }
                }
            }
        }
        if (anyClientActivities == proc.hasClientActivities()) {
            return false;
        }
        proc.setHasClientActivities(anyClientActivities);
        if (updateLru) {
            this.mAm.updateLruProcessLocked(proc, anyClientActivities, null);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:171:0x0416  */
    /* JADX WARN: Code duplicated, block: B:174:0x041e A[Catch: all -> 0x0425, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0425, blocks: (B:166:0x0406, B:174:0x041e), top: B:205:0x03a3 }] */
    /* JADX WARN: Code duplicated, block: B:178:0x042c  */
    int bindServiceLocked(IApplicationThread caller, IBinder token, Intent service, String resolvedType, final IServiceConnection connection, int flags, String instanceName, String callingPackage, int userId) throws Throwable {
        ActivityServiceConnectionsHolder<ConnectionRecord> activity;
        Intent service2;
        int clientLabel;
        PendingIntent clientIntent;
        final boolean callerFg;
        final int i;
        boolean permissionsReviewRequired;
        ServiceState stracker;
        ArrayList<ConnectionRecord> clist;
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        ProcessRecord callerApp = this.mAm.getRecordForAppLocked(caller);
        if (callerApp == null) {
            throw new SecurityException("Unable to find app for caller " + caller + " (pid=" + callingPid + ") when binding service " + service);
        }
        if (token != null) {
            ActivityServiceConnectionsHolder<ConnectionRecord> activity2 = this.mAm.mAtmInternal.getServiceConnectionsHolder(token);
            if (activity2 == null) {
                Slog.w("ActivityManager", "Binding with unknown activity: " + token);
                return 0;
            }
            activity = activity2;
        } else {
            activity = null;
        }
        boolean isCallerSystem = callerApp.info.uid == 1000;
        if (isCallerSystem) {
            service.setDefusable(true);
            PendingIntent clientIntent2 = (PendingIntent) service.getParcelableExtra("android.intent.extra.client_intent");
            if (clientIntent2 != null) {
                int clientLabel2 = service.getIntExtra("android.intent.extra.client_label", 0);
                if (clientLabel2 != 0) {
                    service2 = service.cloneFilter();
                    clientLabel = clientLabel2;
                    clientIntent = clientIntent2;
                } else {
                    service2 = service;
                    clientLabel = clientLabel2;
                    clientIntent = clientIntent2;
                }
            } else {
                service2 = service;
                clientLabel = 0;
                clientIntent = clientIntent2;
            }
        } else {
            service2 = service;
            clientLabel = 0;
            clientIntent = null;
        }
        if ((flags & AudioFormat.OPUS) != 0) {
            this.mAm.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "BIND_TREAT_LIKE_ACTIVITY");
        }
        if ((flags & 524288) != 0 && !isCallerSystem) {
            throw new SecurityException("Non-system caller (pid=" + callingPid + ") set BIND_SCHEDULE_LIKE_TOP_APP when binding service " + service2);
        }
        if ((flags & 16777216) != 0 && !isCallerSystem) {
            throw new SecurityException("Non-system caller " + caller + " (pid=" + callingPid + ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service " + service2);
        }
        if ((flags & 4194304) != 0 && !isCallerSystem) {
            throw new SecurityException("Non-system caller " + caller + " (pid=" + callingPid + ") set BIND_ALLOW_INSTANT when binding service " + service2);
        }
        if ((flags & 1048576) != 0) {
            this.mAm.enforceCallingPermission("android.permission.START_ACTIVITIES_FROM_BACKGROUND", "BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS");
        }
        boolean callerFg2 = callerApp.setSchedGroup != 0;
        boolean isBindExternal = (flags & Integer.MIN_VALUE) != 0;
        boolean allowInstant = (flags & 4194304) != 0;
        final Intent service3 = service2;
        ActivityServiceConnectionsHolder<ConnectionRecord> activity3 = activity;
        ServiceLookupResult res = retrieveServiceLocked(service2, instanceName, resolvedType, callingPackage, callingPid, callingUid, userId, true, callerFg2, isBindExternal, allowInstant);
        if (res == null) {
            return 0;
        }
        if (res.record == null) {
            return -1;
        }
        final ServiceRecord s = res.record;
        if (this.mAm.getPackageManagerInternalLocked().isPermissionsReviewRequired(s.packageName, s.userId)) {
            callerFg = callerFg2;
            if (!callerFg) {
                Slog.w("ActivityManager", "u" + s.userId + " Binding to a service in package" + s.packageName + " requires a permissions review");
                return 0;
            }
            permissionsReviewRequired = true;
            Parcelable remoteCallback = new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.am.ActiveServices.3
                public void onResult(Bundle result) {
                    synchronized (ActiveServices.this.mAm) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            long identity = Binder.clearCallingIdentity();
                            try {
                                if (ActiveServices.this.mPendingServices.contains(s)) {
                                    if (!ActiveServices.this.mAm.getPackageManagerInternalLocked().isPermissionsReviewRequired(s.packageName, s.userId)) {
                                        try {
                                            ActiveServices.this.bringUpServiceLocked(s, service3.getFlags(), callerFg, false, false);
                                        } catch (RemoteException e) {
                                        }
                                    } else {
                                        ActiveServices.this.unbindServiceLocked(connection);
                                    }
                                    Binder.restoreCallingIdentity(identity);
                                    ActivityManagerService.resetPriorityAfterLockedSection();
                                    return;
                                }
                                Binder.restoreCallingIdentity(identity);
                                ActivityManagerService.resetPriorityAfterLockedSection();
                            } catch (Throwable th) {
                                Binder.restoreCallingIdentity(identity);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th2;
                        }
                    }
                }
            });
            final Intent intent = new Intent("android.intent.action.REVIEW_PERMISSIONS");
            intent.addFlags(411041792);
            intent.putExtra("android.intent.extra.PACKAGE_NAME", s.packageName);
            intent.putExtra("android.intent.extra.REMOTE_CALLBACK", remoteCallback);
            i = userId;
            this.mAm.mHandler.post(new Runnable() { // from class: com.android.server.am.ActiveServices.4
                @Override // java.lang.Runnable
                public void run() {
                    ActiveServices.this.mAm.mContext.startActivityAsUser(intent, new UserHandle(i));
                }
            });
        } else {
            callerFg = callerFg2;
            i = userId;
            permissionsReviewRequired = false;
        }
        long origId = Binder.clearCallingIdentity();
        try {
            unscheduleServiceRestartLocked(s, callerApp.info.uid, false);
            if ((flags & 1) != 0) {
                try {
                    s.lastActivity = SystemClock.uptimeMillis();
                    if (!s.hasAutoCreateConnections() && (stracker = s.getTracker()) != null) {
                        stracker.setBound(true, this.mAm.mProcessStats.getMemFactorLocked(), s.lastActivity);
                    }
                } catch (Throwable th) {
                    th = th;
                }
            }
            if ((flags & 2097152) != 0) {
                this.mAm.requireAllowedAssociationsLocked(s.appInfo.packageName);
            }
            boolean callerFg3 = callerFg;
            try {
                this.mAm.startAssociationLocked(callerApp.uid, callerApp.processName, callerApp.getCurProcState(), s.appInfo.uid, s.appInfo.longVersionCode, s.instanceName, s.processName);
                try {
                    this.mAm.grantImplicitAccess(callerApp.userId, service3, callerApp.uid, UserHandle.getAppId(s.appInfo.uid));
                    AppBindRecord b = s.retrieveAppBindingLocked(service3, callerApp);
                    try {
                        ConnectionRecord c = new ConnectionRecord(b, activity3, connection, flags, clientLabel, clientIntent, callerApp.uid, callerApp.processName, callingPackage);
                        IBinder binder = connection.asBinder();
                        s.addConnection(binder, c);
                        b.connections.add(c);
                        if (activity3 != null) {
                            try {
                                activity3.addConnection(c);
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                        try {
                            b.client.connections.add(c);
                            c.startAssociationIfNeeded();
                            if ((c.flags & 8) != 0) {
                                b.client.hasAboveClient = true;
                            }
                            if ((c.flags & 16777216) != 0) {
                                s.whitelistManager = true;
                            }
                            if ((flags & 1048576) != 0) {
                                s.setHasBindingWhitelistingBgActivityStarts(true);
                            }
                            if (s.app != null) {
                                updateServiceClientActivitiesLocked(s.app, c, true);
                            }
                            ArrayList<ConnectionRecord> clist2 = this.mServiceConnections.get(binder);
                            if (clist2 == null) {
                                ArrayList<ConnectionRecord> clist3 = new ArrayList<>();
                                this.mServiceConnections.put(binder, clist3);
                                clist = clist3;
                            } else {
                                clist = clist2;
                            }
                            clist.add(c);
                            if ((flags & 1) != 0) {
                                s.lastActivity = SystemClock.uptimeMillis();
                                if (bringUpServiceLocked(s, service3.getFlags(), callerFg3, false, permissionsReviewRequired) != null) {
                                    Binder.restoreCallingIdentity(origId);
                                    return 0;
                                }
                            }
                            setFgsRestrictionLocked(callingPackage, callingPid, callingUid, s, false);
                            if (s.app != null) {
                                if ((flags & AudioFormat.OPUS) != 0) {
                                    s.app.treatLikeActivity = true;
                                }
                                if (s.whitelistManager) {
                                    s.app.whitelistManager = true;
                                }
                                this.mAm.updateLruProcessLocked(s.app, (callerApp.hasActivitiesOrRecentTasks() && s.app.hasClientActivities()) || (callerApp.getCurProcState() <= 2 && (flags & AudioFormat.OPUS) != 0), b.client);
                                this.mAm.updateOomAdjLocked(s.app, "updateOomAdj_bindService");
                            }
                            try {
                                if (s.app == null) {
                                    if (!b.intent.requested) {
                                        maybeLogBindCrossProfileService(i, callingPackage, callerApp.info.uid);
                                        getServiceMapLocked(s.userId).ensureNotStartingBackgroundLocked(s);
                                        Binder.restoreCallingIdentity(origId);
                                        return 1;
                                    }
                                    requestServiceBindingLocked(s, b.intent, callerFg3, false);
                                    maybeLogBindCrossProfileService(i, callingPackage, callerApp.info.uid);
                                    getServiceMapLocked(s.userId).ensureNotStartingBackgroundLocked(s);
                                    Binder.restoreCallingIdentity(origId);
                                    return 1;
                                }
                                try {
                                    if (b.intent.received) {
                                        try {
                                            c.conn.connected(s.name, b.intent.binder, false);
                                        } catch (Exception e) {
                                            Slog.w("ActivityManager", "Failure sending service " + s.shortInstanceName + " to connection " + c.conn.asBinder() + " (in " + c.binding.client.processName + ")", e);
                                        }
                                        if (b.intent.apps.size() == 1 && b.intent.doRebind) {
                                            requestServiceBindingLocked(s, b.intent, callerFg3, true);
                                        }
                                        try {
                                            try {
                                                maybeLogBindCrossProfileService(i, callingPackage, callerApp.info.uid);
                                                getServiceMapLocked(s.userId).ensureNotStartingBackgroundLocked(s);
                                                Binder.restoreCallingIdentity(origId);
                                                return 1;
                                            } catch (Throwable th3) {
                                                th = th3;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                        }
                                    } else {
                                        try {
                                            if (!b.intent.requested) {
                                                maybeLogBindCrossProfileService(i, callingPackage, callerApp.info.uid);
                                                getServiceMapLocked(s.userId).ensureNotStartingBackgroundLocked(s);
                                                Binder.restoreCallingIdentity(origId);
                                                return 1;
                                            }
                                            requestServiceBindingLocked(s, b.intent, callerFg3, false);
                                            maybeLogBindCrossProfileService(i, callingPackage, callerApp.info.uid);
                                            getServiceMapLocked(s.userId).ensureNotStartingBackgroundLocked(s);
                                            Binder.restoreCallingIdentity(origId);
                                            return 1;
                                        } catch (Throwable th5) {
                                            th = th5;
                                        }
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
                    } catch (Throwable th9) {
                        th = th9;
                    }
                } catch (Throwable th10) {
                    th = th10;
                }
            } catch (Throwable th11) {
                th = th11;
            }
        } catch (Throwable th12) {
            th = th12;
        }
        Binder.restoreCallingIdentity(origId);
        throw th;
    }

    private void maybeLogBindCrossProfileService(int userId, String callingPackage, int callingUid) {
        int callingUserId;
        if (UserHandle.isCore(callingUid) || (callingUserId = UserHandle.getCallingUserId()) == userId || !this.mAm.mUserController.isSameProfileGroup(callingUserId, userId)) {
            return;
        }
        DevicePolicyEventLogger.createEvent(CecMessageType.SET_DIGITAL_TIMER).setStrings(new String[]{callingPackage}).write();
    }

    void publishServiceLocked(ServiceRecord r, Intent intent, IBinder service) throws Throwable {
        IBinder iBinder = service;
        long origId = Binder.clearCallingIdentity();
        if (r != null) {
            try {
                try {
                    Intent.FilterComparison filter = new Intent.FilterComparison(intent);
                    IntentBindRecord b = r.bindings.get(filter);
                    boolean z = false;
                    if (b != null && !b.received) {
                        b.binder = iBinder;
                        b.requested = true;
                        b.received = true;
                        ArrayMap<IBinder, ArrayList<ConnectionRecord>> connections = r.getConnections();
                        int conni = connections.size() - 1;
                        while (conni >= 0) {
                            ArrayList<ConnectionRecord> clist = connections.valueAt(conni);
                            int i = 0;
                            while (i < clist.size()) {
                                ConnectionRecord c = clist.get(i);
                                if (filter.equals(c.binding.intent.intent)) {
                                    try {
                                        c.conn.connected(r.name, iBinder, z);
                                    } catch (Exception e) {
                                        Slog.w("ActivityManager", "Failure sending service " + r.shortInstanceName + " to connection " + c.conn.asBinder() + " (in " + c.binding.client.processName + ")", e);
                                    }
                                }
                                i++;
                                iBinder = service;
                                z = false;
                            }
                            conni--;
                            iBinder = service;
                            z = false;
                        }
                    }
                    serviceDoneExecutingLocked(r, this.mDestroyingServices.contains(r), false);
                } catch (Throwable th) {
                    th = th;
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        Binder.restoreCallingIdentity(origId);
    }

    void updateServiceGroupLocked(IServiceConnection connection, int group, int importance) {
        IBinder binder = connection.asBinder();
        ArrayList<ConnectionRecord> clist = this.mServiceConnections.get(binder);
        if (clist == null) {
            throw new IllegalArgumentException("Could not find connection for " + connection.asBinder());
        }
        for (int i = clist.size() - 1; i >= 0; i--) {
            ConnectionRecord crec = clist.get(i);
            ServiceRecord srec = crec.binding.service;
            if (srec != null && (srec.serviceInfo.flags & 2) != 0) {
                if (srec.app != null) {
                    if (group > 0) {
                        srec.app.connectionService = srec;
                        srec.app.connectionGroup = group;
                        srec.app.connectionImportance = importance;
                    } else {
                        srec.app.connectionService = null;
                        srec.app.connectionGroup = 0;
                        srec.app.connectionImportance = 0;
                    }
                } else if (group > 0) {
                    srec.pendingConnectionGroup = group;
                    srec.pendingConnectionImportance = importance;
                } else {
                    srec.pendingConnectionGroup = 0;
                    srec.pendingConnectionImportance = 0;
                }
            }
        }
    }

    boolean unbindServiceLocked(IServiceConnection connection) {
        IBinder binder = connection.asBinder();
        ArrayList<ConnectionRecord> clist = this.mServiceConnections.get(binder);
        if (clist == null) {
            Slog.w("ActivityManager", "Unbind failed: could not find connection for " + connection.asBinder());
            return false;
        }
        long origId = Binder.clearCallingIdentity();
        while (true) {
            try {
                boolean z = true;
                if (clist.size() > 0) {
                    ConnectionRecord r = clist.get(0);
                    removeConnectionLocked(r, null, null);
                    if (clist.size() > 0 && clist.get(0) == r) {
                        Slog.wtf("ActivityManager", "Connection " + r + " not removed for binder " + binder);
                        clist.remove(0);
                    }
                    if (r.binding.service.app != null) {
                        if (r.binding.service.app.whitelistManager) {
                            updateWhitelistManagerLocked(r.binding.service.app);
                        }
                        if ((r.flags & AudioFormat.OPUS) != 0) {
                            r.binding.service.app.treatLikeActivity = true;
                            ActivityManagerService activityManagerService = this.mAm;
                            ProcessRecord processRecord = r.binding.service.app;
                            if (!r.binding.service.app.hasClientActivities() && !r.binding.service.app.treatLikeActivity) {
                                z = false;
                            }
                            activityManagerService.updateLruProcessLocked(processRecord, z, null);
                        }
                    }
                } else {
                    this.mAm.updateOomAdjLocked("updateOomAdj_unbindService");
                    Binder.restoreCallingIdentity(origId);
                    return true;
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(origId);
                throw th;
            }
        }
    }

    void unbindFinishedLocked(ServiceRecord r, Intent intent, boolean doRebind) {
        long origId = Binder.clearCallingIdentity();
        if (r != null) {
            try {
                Intent.FilterComparison filter = new Intent.FilterComparison(intent);
                IntentBindRecord b = r.bindings.get(filter);
                boolean inDestroying = this.mDestroyingServices.contains(r);
                if (b != null) {
                    if (b.apps.size() > 0 && !inDestroying) {
                        boolean inFg = false;
                        for (int i = b.apps.size() - 1; i >= 0; i--) {
                            ProcessRecord client = b.apps.valueAt(i).client;
                            if (client != null && client.setSchedGroup != 0) {
                                inFg = true;
                                break;
                            }
                        }
                        try {
                            requestServiceBindingLocked(r, b, inFg, true);
                        } catch (TransactionTooLargeException e) {
                        }
                    } else {
                        b.doRebind = true;
                    }
                }
                serviceDoneExecutingLocked(r, inDestroying, false);
            } finally {
                Binder.restoreCallingIdentity(origId);
            }
        }
    }

    private final ServiceRecord findServiceLocked(ComponentName name, IBinder token, int userId) {
        ServiceRecord r = getServiceByNameLocked(name, userId);
        if (r == token) {
            return r;
        }
        return null;
    }

    private final class ServiceLookupResult {
        final String permission;
        final ServiceRecord record;

        ServiceLookupResult(ServiceRecord _record, String _permission) {
            this.record = _record;
            this.permission = _permission;
        }
    }

    private class ServiceRestarter implements Runnable {
        private ServiceRecord mService;

        private ServiceRestarter() {
        }

        void setService(ServiceRecord service) {
            this.mService = service;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ActiveServices.this.mAm) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActiveServices.this.performServiceRestartLocked(this.mService);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    private ServiceLookupResult handleUserId(String packageName, Intent service, String instanceName, String resolvedType, String callingPackage, int callingPid, int callingUid, int userId, boolean createIfNeeded, boolean callingFromFg, boolean isBindExternal, boolean allowInstant) {
        if (UserManager.isSplitSystemUser() && this.mAm.mUserController.isSystemApp(packageName, this.mAm, callingUid, userId)) {
            return retrieveServiceLocked(service, instanceName, resolvedType, callingPackage, callingPid, callingUid, 0, createIfNeeded, callingFromFg, isBindExternal, allowInstant);
        }
        return null;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x03e0 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x0302: MOVE (r12 I:??[OBJECT, ARRAY]) = (r20 I:??[OBJECT, ARRAY] A[D('smap' com.android.server.am.ActiveServices$ServiceMap)]), block:B:114:0x0302 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [com.android.server.am.ServiceRecord] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.android.server.am.ActiveServices.ServiceLookupResult retrieveServiceLocked(android.content.Intent r32, java.lang.String r33, java.lang.String r34, java.lang.String r35, int r36, int r37, int r38, boolean r39, boolean r40, boolean r41, boolean r42) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActiveServices.retrieveServiceLocked(android.content.Intent, java.lang.String, java.lang.String, java.lang.String, int, int, int, boolean, boolean, boolean, boolean):com.android.server.am.ActiveServices$ServiceLookupResult");
    }

    private int getAllowMode(Intent service, String callingPackage) {
        if (callingPackage == null || service.getComponent() == null || !callingPackage.equals(service.getComponent().getPackageName())) {
            return 1;
        }
        return 3;
    }

    private final void bumpServiceExecutingLocked(ServiceRecord r, boolean fg, String why) {
        boolean timeoutNeeded = true;
        if (this.mAm.mBootPhase < 600 && r.app != null && r.app.pid == Process.myPid()) {
            Slog.w("ActivityManager", "Too early to start/bind service in system_server: Phase=" + this.mAm.mBootPhase + " " + r.getComponentName());
            timeoutNeeded = false;
        }
        long now = SystemClock.uptimeMillis();
        if (r.executeNesting == 0) {
            r.executeFg = fg;
            ServiceState stracker = r.getTracker();
            if (stracker != null) {
                stracker.setExecuting(true, this.mAm.mProcessStats.getMemFactorLocked(), now);
            }
            if (r.app != null) {
                r.app.executingServices.add(r);
                r.app.execServicesFg |= fg;
                if (timeoutNeeded && r.app.executingServices.size() == 1) {
                    scheduleServiceTimeoutLocked(r.app);
                }
            }
        } else if (r.app != null && fg && !r.app.execServicesFg) {
            r.app.execServicesFg = true;
            if (timeoutNeeded) {
                scheduleServiceTimeoutLocked(r.app);
            }
        }
        r.executeFg |= fg;
        r.executeNesting++;
        r.executingStart = now;
    }

    private final boolean requestServiceBindingLocked(ServiceRecord r, IntentBindRecord i, boolean execInFg, boolean rebind) throws TransactionTooLargeException {
        if (r.app == null || r.app.thread == null) {
            return false;
        }
        if ((!i.requested || rebind) && i.apps.size() > 0) {
            try {
                bumpServiceExecutingLocked(r, execInFg, "bind");
                r.app.forceProcessStateUpTo(10);
                r.app.thread.scheduleBindService(r, i.intent.getIntent(), rebind, r.app.getReportedProcState());
                if (!rebind) {
                    i.requested = true;
                }
                i.hasBound = true;
                i.doRebind = false;
            } catch (TransactionTooLargeException e) {
                boolean inDestroying = this.mDestroyingServices.contains(r);
                serviceDoneExecutingLocked(r, inDestroying, inDestroying);
                throw e;
            } catch (RemoteException e2) {
                boolean inDestroying2 = this.mDestroyingServices.contains(r);
                serviceDoneExecutingLocked(r, inDestroying2, inDestroying2);
                return false;
            }
        }
        return true;
    }

    private final boolean scheduleServiceRestartLocked(ServiceRecord r, boolean allowCancel) {
        String reason;
        long minDuration;
        long resetTime;
        if (!this.mAm.mAtmInternal.isShuttingDown()) {
            ServiceMap smap = getServiceMapLocked(r.userId);
            if (smap.mServicesByInstanceName.get(r.instanceName) != r) {
                ServiceRecord cur = smap.mServicesByInstanceName.get(r.instanceName);
                Slog.wtf("ActivityManager", "Attempting to schedule restart of " + r + " when found in map: " + cur);
                return false;
            }
            long now = SystemClock.uptimeMillis();
            int i = 3;
            if ((r.serviceInfo.applicationInfo.flags & 8) == 0) {
                long minDuration2 = this.mAm.mConstants.SERVICE_RESTART_DURATION;
                long resetTime2 = this.mAm.mConstants.SERVICE_RESET_RUN_DURATION;
                boolean canceled = false;
                int N = r.deliveredStarts.size();
                if (N > 0) {
                    int i2 = N - 1;
                    while (i2 >= 0) {
                        ServiceRecord.StartItem si = r.deliveredStarts.get(i2);
                        si.removeUriPermissionsLocked();
                        if (si.intent != null) {
                            if (!allowCancel || (si.deliveryCount < i && si.doneExecutingCount < 6)) {
                                r.pendingStarts.add(0, si);
                                boolean canceled2 = canceled;
                                long dur = (SystemClock.uptimeMillis() - si.deliveredTime) * 2;
                                if (minDuration2 < dur) {
                                    minDuration2 = dur;
                                }
                                if (resetTime2 < dur) {
                                    resetTime2 = dur;
                                }
                                canceled = canceled2;
                            } else {
                                Slog.w("ActivityManager", "Canceling start item " + si.intent + " in service " + r.shortInstanceName);
                                canceled = true;
                            }
                        }
                        i2--;
                        i = 3;
                    }
                    r.deliveredStarts.clear();
                    canceled = canceled;
                }
                if (allowCancel) {
                    boolean shouldStop = r.canStopIfKilled(canceled);
                    if (shouldStop && !r.hasAutoCreateConnections()) {
                        return false;
                    }
                    reason = (!r.startRequested || shouldStop) ? "connection" : "start-requested";
                } else {
                    reason = "always";
                }
                r.totalRestartCount++;
                if (r.restartDelay == 0) {
                    r.restartCount++;
                    r.restartDelay = minDuration2;
                } else if (r.crashCount > 1) {
                    r.restartDelay = this.mAm.mConstants.BOUND_SERVICE_CRASH_RESTART_DURATION * ((long) (r.crashCount - 1));
                } else if (now <= r.restartTime + resetTime2) {
                    r.restartDelay *= (long) this.mAm.mConstants.SERVICE_RESTART_DURATION_FACTOR;
                    if (r.restartDelay < minDuration2) {
                        r.restartDelay = minDuration2;
                    }
                } else {
                    r.restartCount = 1;
                    r.restartDelay = minDuration2;
                }
                r.nextRestartTime = r.restartDelay + now;
                while (true) {
                    boolean repeat = false;
                    long restartTimeBetween = this.mAm.mConstants.SERVICE_MIN_RESTART_TIME_BETWEEN;
                    int i3 = this.mRestartingServices.size() - 1;
                    while (true) {
                        if (i3 < 0) {
                            minDuration = minDuration2;
                            resetTime = resetTime2;
                            break;
                        }
                        ServiceRecord r2 = this.mRestartingServices.get(i3);
                        if (r2 != r) {
                            minDuration = minDuration2;
                            resetTime = resetTime2;
                            if (r.nextRestartTime >= r2.nextRestartTime - restartTimeBetween && r.nextRestartTime < r2.nextRestartTime + restartTimeBetween) {
                                r.nextRestartTime = r2.nextRestartTime + restartTimeBetween;
                                r.restartDelay = r.nextRestartTime - now;
                                repeat = true;
                                break;
                            }
                        } else {
                            minDuration = minDuration2;
                            resetTime = resetTime2;
                        }
                        i3--;
                        minDuration2 = minDuration;
                        resetTime2 = resetTime;
                    }
                    if (!repeat) {
                        break;
                    }
                    minDuration2 = minDuration;
                    resetTime2 = resetTime;
                }
            } else {
                r.totalRestartCount++;
                r.restartCount = 0;
                r.restartDelay = 0L;
                r.nextRestartTime = now;
                reason = "persistent";
            }
            if (!this.mRestartingServices.contains(r)) {
                r.createdFromFg = false;
                this.mRestartingServices.add(r);
                r.makeRestarting(this.mAm.mProcessStats.getMemFactorLocked(), now);
            }
            cancelForegroundNotificationLocked(r);
            this.mAm.mHandler.removeCallbacks(r.restarter);
            this.mAm.mHandler.postAtTime(r.restarter, r.nextRestartTime);
            r.nextRestartTime = SystemClock.uptimeMillis() + r.restartDelay;
            Slog.w("ActivityManager", "Scheduling restart of crashed service " + r.shortInstanceName + " in " + r.restartDelay + "ms for " + reason);
            EventLog.writeEvent(EventLogTags.AM_SCHEDULE_SERVICE_RESTART, Integer.valueOf(r.userId), r.shortInstanceName, Long.valueOf(r.restartDelay));
            return true;
        }
        Slog.w("ActivityManager", "Not scheduling restart of crashed service " + r.shortInstanceName + " - system is shutting down");
        return false;
    }

    final void performServiceRestartLocked(ServiceRecord r) {
        if (!this.mRestartingServices.contains(r)) {
            return;
        }
        if (!isServiceNeededLocked(r, false, false)) {
            Slog.wtf("ActivityManager", "Restarting service that is not needed: " + r);
            return;
        }
        try {
            bringUpServiceLocked(r, r.intent.getIntent().getFlags(), r.createdFromFg, true, false);
        } catch (TransactionTooLargeException e) {
        }
    }

    private final boolean unscheduleServiceRestartLocked(ServiceRecord r, int callingUid, boolean force) {
        if (!force && r.restartDelay == 0) {
            return false;
        }
        boolean removed = this.mRestartingServices.remove(r);
        if (removed || callingUid != r.appInfo.uid) {
            r.resetRestartCounter();
        }
        if (removed) {
            clearRestartingIfNeededLocked(r);
        }
        this.mAm.mHandler.removeCallbacks(r.restarter);
        return true;
    }

    private void clearRestartingIfNeededLocked(ServiceRecord r) {
        if (r.restartTracker != null) {
            boolean stillTracking = false;
            for (int i = this.mRestartingServices.size() - 1; i >= 0; i--) {
                if (this.mRestartingServices.get(i).restartTracker == r.restartTracker) {
                    stillTracking = true;
                    break;
                }
            }
            if (!stillTracking) {
                r.restartTracker.setRestarting(false, this.mAm.mProcessStats.getMemFactorLocked(), SystemClock.uptimeMillis());
                r.restartTracker = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String bringUpServiceLocked(ServiceRecord r, int intentFlags, boolean execInFg, boolean whileRestarting, boolean permissionsReviewRequired) throws TransactionTooLargeException {
        HostingRecord hostingRecord;
        ProcessRecord app;
        if (r.app != null && r.app.thread != null) {
            sendServiceArgsLocked(r, execInFg, false);
            return null;
        }
        if (!whileRestarting && this.mRestartingServices.contains(r)) {
            return null;
        }
        if (this.mRestartingServices.remove(r)) {
            clearRestartingIfNeededLocked(r);
        }
        if (r.delayed) {
            getServiceMapLocked(r.userId).mDelayedStartList.remove(r);
            r.delayed = false;
        }
        if (!this.mAm.mUserController.hasStartedUserState(r.userId)) {
            String msg = "Unable to launch app " + r.appInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + r.appInfo.uid + " for service " + r.intent.getIntent() + ": user " + r.userId + " is stopped";
            Slog.w("ActivityManager", msg);
            bringDownServiceLocked(r);
            return msg;
        }
        try {
            AppGlobals.getPackageManager().setPackageStoppedState(r.packageName, false, r.userId);
        } catch (RemoteException e) {
        } catch (IllegalArgumentException e2) {
            Slog.w("ActivityManager", "Failed trying to unstop package " + r.packageName + ": " + e2);
        }
        boolean isolated = (r.serviceInfo.flags & 2) != 0;
        String procName = r.processName;
        HostingRecord hostingRecord2 = new HostingRecord("service", r.instanceName);
        if (!isolated) {
            ProcessRecord app2 = this.mAm.getProcessRecordLocked(procName, r.appInfo.uid, false);
            if (app2 != null && app2.thread != null) {
                try {
                    app2.addPackage(r.appInfo.packageName, r.appInfo.longVersionCode, this.mAm.mProcessStats);
                    realStartServiceLocked(r, app2, execInFg);
                    return null;
                } catch (TransactionTooLargeException e3) {
                    throw e3;
                } catch (RemoteException e4) {
                    Slog.w("ActivityManager", "Exception when starting service " + r.shortInstanceName, e4);
                }
            }
            hostingRecord = hostingRecord2;
            app = app2;
        } else {
            ProcessRecord app3 = r.isolatedProc;
            if (WebViewZygote.isMultiprocessEnabled() && r.serviceInfo.packageName.equals(WebViewZygote.getPackageName())) {
                hostingRecord2 = HostingRecord.byWebviewZygote(r.instanceName);
            }
            if ((r.serviceInfo.flags & 8) == 0) {
                hostingRecord = hostingRecord2;
                app = app3;
            } else {
                hostingRecord = HostingRecord.byAppZygote(r.instanceName, r.definingPackageName, r.definingUid);
                app = app3;
            }
        }
        if (app == null && !permissionsReviewRequired) {
            ProcessRecord app4 = this.mAm.startProcessLocked(procName, r.appInfo, true, intentFlags, hostingRecord, 0, false, isolated, false);
            if (app4 == null) {
                String msg2 = "Unable to launch app " + r.appInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + r.appInfo.uid + " for service " + r.intent.getIntent() + ": process is bad";
                Slog.w("ActivityManager", msg2);
                bringDownServiceLocked(r);
                return msg2;
            }
            if (isolated) {
                r.isolatedProc = app4;
            }
        }
        if (r.fgRequired) {
            this.mAm.tempWhitelistUidLocked(r.appInfo.uid, 15000L, "fg-service-launch");
        }
        if (!this.mPendingServices.contains(r)) {
            this.mPendingServices.add(r);
        }
        if (r.delayedStop) {
            r.delayedStop = false;
            if (r.startRequested) {
                stopServiceLocked(r);
            }
        }
        return null;
    }

    private final void requestServiceBindingsLocked(ServiceRecord r, boolean execInFg) throws TransactionTooLargeException {
        for (int i = r.bindings.size() - 1; i >= 0; i--) {
            IntentBindRecord ibr = r.bindings.valueAt(i);
            if (!requestServiceBindingLocked(r, ibr, execInFg, false)) {
                return;
            }
        }
    }

    private final void realStartServiceLocked(ServiceRecord r, ProcessRecord app, boolean execInFg) throws RemoteException {
        boolean z;
        if (app.thread == null) {
            throw new RemoteException();
        }
        r.setProcess(app);
        long jUptimeMillis = SystemClock.uptimeMillis();
        r.lastActivity = jUptimeMillis;
        r.restartTime = jUptimeMillis;
        boolean newService = app.startService(r);
        bumpServiceExecutingLocked(r, execInFg, "create");
        this.mAm.updateLruProcessLocked(app, false, null);
        updateServiceForegroundLocked(r.app, false);
        this.mAm.updateOomAdjLocked(app, "updateOomAdj_startService");
        try {
            try {
                FrameworkStatsLog.write(100, r.appInfo.uid, r.name.getPackageName(), r.name.getClassName());
                synchronized (r.stats.getBatteryStats()) {
                    r.stats.startLaunchedLocked();
                }
                this.mAm.notifyPackageUse(r.serviceInfo.packageName, 1);
                app.forceProcessStateUpTo(10);
                app.thread.scheduleCreateService(r, r.serviceInfo, this.mAm.compatibilityInfoForPackage(r.serviceInfo.applicationInfo), app.getReportedProcState());
                r.postNotification();
                if (1 == 0) {
                    boolean inDestroying = this.mDestroyingServices.contains(r);
                    serviceDoneExecutingLocked(r, inDestroying, inDestroying);
                    if (newService) {
                        app.stopService(r);
                        r.setProcess(null);
                    }
                    if (!inDestroying) {
                        scheduleServiceRestartLocked(r, false);
                    }
                }
                if (r.whitelistManager) {
                    app.whitelistManager = true;
                }
                requestServiceBindingsLocked(r, execInFg);
                updateServiceClientActivitiesLocked(app, null, true);
                if (newService && 1 != 0) {
                    app.addBoundClientUidsOfNewService(r);
                }
                if (r.startRequested && r.callStart && r.pendingStarts.size() == 0) {
                    r.pendingStarts.add(new ServiceRecord.StartItem(r, false, r.makeNextStartId(), null, null, 0));
                }
                sendServiceArgsLocked(r, execInFg, true);
                if (r.delayed) {
                    getServiceMapLocked(r.userId).mDelayedStartList.remove(r);
                    z = false;
                    r.delayed = false;
                } else {
                    z = false;
                }
                if (r.delayedStop) {
                    r.delayedStop = z;
                    if (r.startRequested) {
                        stopServiceLocked(r);
                    }
                }
            } catch (DeadObjectException e) {
                Slog.w("ActivityManager", "Application dead when creating service " + r);
                this.mAm.appDiedLocked(app, "Died when creating service");
                throw e;
            }
        } catch (Throwable th) {
            if (0 == 0) {
                boolean inDestroying2 = this.mDestroyingServices.contains(r);
                serviceDoneExecutingLocked(r, inDestroying2, inDestroying2);
                if (newService) {
                    app.stopService(r);
                    r.setProcess(null);
                }
                if (!inDestroying2) {
                    scheduleServiceRestartLocked(r, false);
                }
            }
            throw th;
        }
    }

    private final void sendServiceArgsLocked(ServiceRecord r, boolean execInFg, boolean oomAdjusted) throws TransactionTooLargeException {
        int N = r.pendingStarts.size();
        if (N == 0) {
            return;
        }
        ArrayList<ServiceStartArgs> args = new ArrayList<>();
        while (r.pendingStarts.size() > 0) {
            ServiceRecord.StartItem si = r.pendingStarts.remove(0);
            if (si.intent != null || N <= 1) {
                si.deliveredTime = SystemClock.uptimeMillis();
                r.deliveredStarts.add(si);
                si.deliveryCount++;
                if (si.neededGrants != null) {
                    this.mAm.mUgmInternal.grantUriPermissionUncheckedFromIntent(si.neededGrants, si.getUriPermissionsLocked());
                }
                this.mAm.grantImplicitAccess(r.userId, si.intent, si.callingId, UserHandle.getAppId(r.appInfo.uid));
                bumpServiceExecutingLocked(r, execInFg, "start");
                if (!oomAdjusted) {
                    oomAdjusted = true;
                    this.mAm.updateOomAdjLocked(r.app, true, "updateOomAdj_startService");
                }
                if (r.fgRequired && !r.fgWaiting) {
                    if (!r.isForeground) {
                        scheduleServiceForegroundTransitionTimeoutLocked(r);
                    } else {
                        r.fgRequired = false;
                    }
                }
                int flags = 0;
                if (si.deliveryCount > 1) {
                    flags = 0 | 2;
                }
                if (si.doneExecutingCount > 0) {
                    flags |= 1;
                }
                args.add(new ServiceStartArgs(si.taskRemoved, si.id, flags, si.intent));
            }
        }
        ParceledListSlice<ServiceStartArgs> slice = new ParceledListSlice<>(args);
        slice.setInlineCountLimit(4);
        Exception caughtException = null;
        try {
            r.app.thread.scheduleServiceArgs(r, slice);
        } catch (TransactionTooLargeException e) {
            Slog.w("ActivityManager", "Failed delivering service starts", e);
            caughtException = e;
        } catch (RemoteException e2) {
            Slog.w("ActivityManager", "Failed delivering service starts", e2);
            caughtException = e2;
        } catch (Exception e3) {
            Slog.w("ActivityManager", "Unexpected exception", e3);
            caughtException = e3;
        }
        if (caughtException != null) {
            boolean inDestroying = this.mDestroyingServices.contains(r);
            for (int i = 0; i < args.size(); i++) {
                serviceDoneExecutingLocked(r, inDestroying, inDestroying);
            }
            if (caughtException instanceof TransactionTooLargeException) {
                throw ((TransactionTooLargeException) caughtException);
            }
        }
    }

    private final boolean isServiceNeededLocked(ServiceRecord r, boolean knowConn, boolean hasConn) {
        if (r.startRequested) {
            return true;
        }
        if (!knowConn) {
            hasConn = r.hasAutoCreateConnections();
        }
        return hasConn;
    }

    private final void bringDownServiceIfNeededLocked(ServiceRecord r, boolean knowConn, boolean hasConn) {
        if (isServiceNeededLocked(r, knowConn, hasConn) || this.mPendingServices.contains(r)) {
            return;
        }
        bringDownServiceLocked(r);
    }

    private final void bringDownServiceLocked(ServiceRecord r) {
        ArrayMap<IBinder, ArrayList<ConnectionRecord>> connections = r.getConnections();
        for (int conni = connections.size() - 1; conni >= 0; conni--) {
            ArrayList<ConnectionRecord> c = connections.valueAt(conni);
            for (int i = 0; i < c.size(); i++) {
                ConnectionRecord cr = c.get(i);
                cr.serviceDead = true;
                cr.stopAssociation();
                try {
                    cr.conn.connected(r.name, (IBinder) null, true);
                } catch (Exception e) {
                    Slog.w("ActivityManager", "Failure disconnecting service " + r.shortInstanceName + " to connection " + c.get(i).conn.asBinder() + " (in " + c.get(i).binding.client.processName + ")", e);
                }
            }
        }
        if (r.app != null && r.app.thread != null) {
            boolean needOomAdj = false;
            for (int i2 = r.bindings.size() - 1; i2 >= 0; i2--) {
                IntentBindRecord ibr = r.bindings.valueAt(i2);
                if (ibr.hasBound) {
                    try {
                        bumpServiceExecutingLocked(r, false, "bring down unbind");
                        needOomAdj = true;
                        ibr.hasBound = false;
                        ibr.requested = false;
                        r.app.thread.scheduleUnbindService(r, ibr.intent.getIntent());
                    } catch (Exception e2) {
                        Slog.w("ActivityManager", "Exception when unbinding service " + r.shortInstanceName, e2);
                        needOomAdj = false;
                        serviceProcessGoneLocked(r);
                    }
                }
            }
            if (needOomAdj) {
                this.mAm.updateOomAdjLocked(r.app, true, "updateOomAdj_unbindService");
            }
        }
        boolean needOomAdj2 = r.fgRequired;
        if (needOomAdj2) {
            Slog.w("ActivityManager", "Bringing down service while still waiting for start foreground: " + r);
            r.fgRequired = false;
            r.fgWaiting = false;
            ServiceState stracker = r.getTracker();
            if (stracker != null) {
                stracker.setForeground(false, this.mAm.mProcessStats.getMemFactorLocked(), r.lastActivity);
            }
            this.mAm.mAppOpsService.finishOperation(AppOpsManager.getToken(this.mAm.mAppOpsService), 76, r.appInfo.uid, r.packageName, null);
            this.mAm.mHandler.removeMessages(66, r);
            if (r.app != null) {
                Message msg = this.mAm.mHandler.obtainMessage(69);
                msg.obj = r.app;
                msg.getData().putCharSequence("servicerecord", r.toString());
                this.mAm.mHandler.sendMessage(msg);
            }
        }
        r.destroyTime = SystemClock.uptimeMillis();
        ServiceMap smap = getServiceMapLocked(r.userId);
        ServiceRecord found = smap.mServicesByInstanceName.remove(r.instanceName);
        if (found != null && found != r) {
            smap.mServicesByInstanceName.put(r.instanceName, found);
            throw new IllegalStateException("Bringing down " + r + " but actually running " + found);
        }
        smap.mServicesByIntent.remove(r.intent);
        r.totalRestartCount = 0;
        unscheduleServiceRestartLocked(r, 0, true);
        for (int i3 = this.mPendingServices.size() - 1; i3 >= 0; i3--) {
            if (this.mPendingServices.get(i3) == r) {
                this.mPendingServices.remove(i3);
            }
        }
        cancelForegroundNotificationLocked(r);
        if (r.isForeground) {
            decActiveForegroundAppLocked(smap, r);
            ServiceState stracker2 = r.getTracker();
            if (stracker2 != null) {
                stracker2.setForeground(false, this.mAm.mProcessStats.getMemFactorLocked(), r.lastActivity);
            }
            this.mAm.mAppOpsService.finishOperation(AppOpsManager.getToken(this.mAm.mAppOpsService), 76, r.appInfo.uid, r.packageName, null);
            unregisterAppOpCallbackLocked(r);
            FrameworkStatsLog.write(60, r.appInfo.uid, r.shortInstanceName, 2, r.mAllowWhileInUsePermissionInFgs);
            this.mAm.updateForegroundServiceUsageStats(r.name, r.userId, false);
        }
        r.isForeground = false;
        r.foregroundId = 0;
        r.foregroundNoti = null;
        resetFgsRestrictionLocked(r);
        r.clearDeliveredStartsLocked();
        r.pendingStarts.clear();
        smap.mDelayedStartList.remove(r);
        if (r.app != null) {
            synchronized (r.stats.getBatteryStats()) {
                r.stats.stopLaunchedLocked();
            }
            r.app.stopService(r);
            r.app.updateBoundClientUids();
            if (r.whitelistManager) {
                updateWhitelistManagerLocked(r.app);
            }
            if (r.app.thread != null) {
                updateServiceForegroundLocked(r.app, false);
                try {
                    bumpServiceExecutingLocked(r, false, "destroy");
                    this.mDestroyingServices.add(r);
                    r.destroying = true;
                    this.mAm.updateOomAdjLocked(r.app, true, "updateOomAdj_unbindService");
                    r.app.thread.scheduleStopService(r);
                } catch (Exception e3) {
                    Slog.w("ActivityManager", "Exception when destroying service " + r.shortInstanceName, e3);
                    serviceProcessGoneLocked(r);
                }
            }
        }
        if (r.bindings.size() > 0) {
            r.bindings.clear();
        }
        if (r.restarter instanceof ServiceRestarter) {
            ((ServiceRestarter) r.restarter).setService(null);
        }
        int memFactor = this.mAm.mProcessStats.getMemFactorLocked();
        long now = SystemClock.uptimeMillis();
        if (r.tracker != null) {
            r.tracker.setStarted(false, memFactor, now);
            r.tracker.setBound(false, memFactor, now);
            if (r.executeNesting == 0) {
                r.tracker.clearCurrentOwner(r, false);
                r.tracker = null;
            }
        }
        smap.ensureNotStartingBackgroundLocked(r);
    }

    void removeConnectionLocked(ConnectionRecord c, ProcessRecord skipApp, ActivityServiceConnectionsHolder skipAct) {
        IBinder binder = c.conn.asBinder();
        AppBindRecord b = c.binding;
        ServiceRecord s = b.service;
        ArrayList<ConnectionRecord> clist = s.getConnections().get(binder);
        if (clist != null) {
            clist.remove(c);
            if (clist.size() == 0) {
                s.removeConnection(binder);
            }
        }
        b.connections.remove(c);
        c.stopAssociation();
        if (c.activity != null && c.activity != skipAct) {
            c.activity.removeConnection(c);
        }
        if (b.client != skipApp) {
            b.client.connections.remove(c);
            if ((c.flags & 8) != 0) {
                b.client.updateHasAboveClientLocked();
            }
            if ((c.flags & 16777216) != 0) {
                s.updateWhitelistManager();
                if (!s.whitelistManager && s.app != null) {
                    updateWhitelistManagerLocked(s.app);
                }
            }
            if ((c.flags & 1048576) != 0) {
                s.updateHasBindingWhitelistingBgActivityStarts();
            }
            if (s.app != null) {
                updateServiceClientActivitiesLocked(s.app, c, true);
            }
        }
        ArrayList<ConnectionRecord> clist2 = this.mServiceConnections.get(binder);
        if (clist2 != null) {
            clist2.remove(c);
            if (clist2.size() == 0) {
                this.mServiceConnections.remove(binder);
            }
        }
        this.mAm.stopAssociationLocked(b.client.uid, b.client.processName, s.appInfo.uid, s.appInfo.longVersionCode, s.instanceName, s.processName);
        if (b.connections.size() == 0) {
            b.intent.apps.remove(b.client);
        }
        if (!c.serviceDead) {
            if (s.app != null && s.app.thread != null && b.intent.apps.size() == 0 && b.intent.hasBound) {
                try {
                    bumpServiceExecutingLocked(s, false, "unbind");
                    if (b.client != s.app && (c.flags & 32) == 0 && s.app.setProcState <= 13) {
                        this.mAm.updateLruProcessLocked(s.app, false, null);
                    }
                    this.mAm.updateOomAdjLocked(s.app, true, "updateOomAdj_unbindService");
                    b.intent.hasBound = false;
                    b.intent.doRebind = false;
                    s.app.thread.scheduleUnbindService(s, b.intent.intent.getIntent());
                } catch (Exception e) {
                    Slog.w("ActivityManager", "Exception when unbinding service " + s.shortInstanceName, e);
                    serviceProcessGoneLocked(s);
                }
            }
            if (s.getConnections().isEmpty()) {
                this.mPendingServices.remove(s);
            }
            if ((c.flags & 1) != 0) {
                boolean hasAutoCreate = s.hasAutoCreateConnections();
                if (!hasAutoCreate && s.tracker != null) {
                    s.tracker.setBound(false, this.mAm.mProcessStats.getMemFactorLocked(), SystemClock.uptimeMillis());
                }
                bringDownServiceIfNeededLocked(s, true, hasAutoCreate);
            }
        }
    }

    void serviceDoneExecutingLocked(ServiceRecord r, int type, int startId, int res) {
        boolean inDestroying = this.mDestroyingServices.contains(r);
        if (r != null) {
            if (type == 1) {
                r.callStart = true;
                if (res != 0 && res != 1) {
                    if (res == 2) {
                        r.findDeliveredStart(startId, false, true);
                        if (r.getLastStartId() == startId) {
                            r.stopIfKilled = true;
                        }
                    } else if (res == 3) {
                        ServiceRecord.StartItem si = r.findDeliveredStart(startId, false, false);
                        if (si != null) {
                            si.deliveryCount = 0;
                            si.doneExecutingCount++;
                            r.stopIfKilled = true;
                        }
                    } else if (res == 1000) {
                        r.findDeliveredStart(startId, true, true);
                    } else {
                        throw new IllegalArgumentException("Unknown service start result: " + res);
                    }
                } else {
                    r.findDeliveredStart(startId, false, true);
                    r.stopIfKilled = false;
                }
                if (res == 0) {
                    r.callStart = false;
                }
            } else if (type == 2) {
                if (!inDestroying) {
                    if (r.app != null) {
                        Slog.w("ActivityManager", "Service done with onDestroy, but not inDestroying: " + r + ", app=" + r.app);
                    }
                } else if (r.executeNesting != 1) {
                    Slog.w("ActivityManager", "Service done with onDestroy, but executeNesting=" + r.executeNesting + ": " + r);
                    r.executeNesting = 1;
                }
            }
            long origId = Binder.clearCallingIdentity();
            serviceDoneExecutingLocked(r, inDestroying, inDestroying);
            Binder.restoreCallingIdentity(origId);
            return;
        }
        Slog.w("ActivityManager", "Done executing unknown service from pid " + Binder.getCallingPid());
    }

    private void serviceProcessGoneLocked(ServiceRecord r) {
        if (r.tracker != null) {
            int memFactor = this.mAm.mProcessStats.getMemFactorLocked();
            long now = SystemClock.uptimeMillis();
            r.tracker.setExecuting(false, memFactor, now);
            r.tracker.setForeground(false, memFactor, now);
            r.tracker.setBound(false, memFactor, now);
            r.tracker.setStarted(false, memFactor, now);
        }
        serviceDoneExecutingLocked(r, true, true);
    }

    private void serviceDoneExecutingLocked(ServiceRecord r, boolean inDestroying, boolean finishing) {
        r.executeNesting--;
        if (r.executeNesting <= 0) {
            if (r.app != null) {
                r.app.execServicesFg = false;
                r.app.executingServices.remove(r);
                if (r.app.executingServices.size() == 0) {
                    this.mAm.mHandler.removeMessages(12, r.app);
                } else if (r.executeFg) {
                    for (int i = r.app.executingServices.size() - 1; i >= 0; i--) {
                        if (r.app.executingServices.valueAt(i).executeFg) {
                            r.app.execServicesFg = true;
                            break;
                        }
                    }
                }
                if (inDestroying) {
                    this.mDestroyingServices.remove(r);
                    r.bindings.clear();
                }
                this.mAm.updateOomAdjLocked(r.app, true, "updateOomAdj_unbindService");
            }
            r.executeFg = false;
            if (r.tracker != null) {
                int memFactor = this.mAm.mProcessStats.getMemFactorLocked();
                long now = SystemClock.uptimeMillis();
                r.tracker.setExecuting(false, memFactor, now);
                r.tracker.setForeground(false, memFactor, now);
                if (finishing) {
                    r.tracker.clearCurrentOwner(r, false);
                    r.tracker = null;
                }
            }
            if (finishing) {
                if (r.app != null && !r.app.isPersistent()) {
                    r.app.stopService(r);
                    r.app.updateBoundClientUids();
                    if (r.whitelistManager) {
                        updateWhitelistManagerLocked(r.app);
                    }
                }
                r.setProcess(null);
            }
        }
    }

    boolean attachApplicationLocked(ProcessRecord proc, String processName) throws RemoteException {
        boolean didSomething = false;
        if (this.mPendingServices.size() > 0) {
            ServiceRecord sr = null;
            int i = 0;
            while (i < this.mPendingServices.size()) {
                try {
                    sr = this.mPendingServices.get(i);
                    if (proc == sr.isolatedProc || (proc.uid == sr.appInfo.uid && processName.equals(sr.processName))) {
                        this.mPendingServices.remove(i);
                        i--;
                        proc.addPackage(sr.appInfo.packageName, sr.appInfo.longVersionCode, this.mAm.mProcessStats);
                        realStartServiceLocked(sr, proc, sr.createdFromFg);
                        didSomething = true;
                        if (!isServiceNeededLocked(sr, false, false)) {
                            bringDownServiceLocked(sr);
                        }
                    }
                    i++;
                } catch (RemoteException e) {
                    Slog.w("ActivityManager", "Exception in new application when starting service " + sr.shortInstanceName, e);
                    throw e;
                }
            }
        }
        if (this.mRestartingServices.size() > 0) {
            for (int i2 = 0; i2 < this.mRestartingServices.size(); i2++) {
                ServiceRecord sr2 = this.mRestartingServices.get(i2);
                if (proc == sr2.isolatedProc || (proc.uid == sr2.appInfo.uid && processName.equals(sr2.processName))) {
                    this.mAm.mHandler.removeCallbacks(sr2.restarter);
                    this.mAm.mHandler.post(sr2.restarter);
                }
            }
        }
        return didSomething;
    }

    void processStartTimedOutLocked(ProcessRecord proc) {
        int i = 0;
        while (i < this.mPendingServices.size()) {
            ServiceRecord sr = this.mPendingServices.get(i);
            if ((proc.uid == sr.appInfo.uid && proc.processName.equals(sr.processName)) || sr.isolatedProc == proc) {
                Slog.w("ActivityManager", "Forcing bringing down service: " + sr);
                sr.isolatedProc = null;
                this.mPendingServices.remove(i);
                i += -1;
                bringDownServiceLocked(sr);
            }
            i++;
        }
    }

    private boolean collectPackageServicesLocked(String packageName, Set<String> filterByClasses, boolean evenPersistent, boolean doit, ArrayMap<ComponentName, ServiceRecord> services) {
        boolean didSomething = false;
        for (int i = services.size() - 1; i >= 0; i--) {
            ServiceRecord service = services.valueAt(i);
            boolean sameComponent = packageName == null || (service.packageName.equals(packageName) && (filterByClasses == null || filterByClasses.contains(service.name.getClassName())));
            if (sameComponent && (service.app == null || evenPersistent || !service.app.isPersistent())) {
                if (!doit) {
                    return true;
                }
                didSomething = true;
                Slog.i("ActivityManager", "  Force stopping service " + service);
                if (service.app != null && !service.app.isPersistent()) {
                    service.app.stopService(service);
                    service.app.updateBoundClientUids();
                    if (service.whitelistManager) {
                        updateWhitelistManagerLocked(service.app);
                    }
                }
                service.setProcess(null);
                service.isolatedProc = null;
                if (this.mTmpCollectionResults == null) {
                    this.mTmpCollectionResults = new ArrayList<>();
                }
                this.mTmpCollectionResults.add(service);
            }
        }
        return didSomething;
    }

    boolean bringDownDisabledPackageServicesLocked(String packageName, Set<String> filterByClasses, int userId, boolean evenPersistent, boolean doit) {
        boolean didSomething = false;
        ArrayList<ServiceRecord> arrayList = this.mTmpCollectionResults;
        if (arrayList != null) {
            arrayList.clear();
        }
        if (userId == -1) {
            for (int i = this.mServiceMap.size() - 1; i >= 0; i--) {
                didSomething |= collectPackageServicesLocked(packageName, filterByClasses, evenPersistent, doit, this.mServiceMap.valueAt(i).mServicesByInstanceName);
                if (!doit && didSomething) {
                    return true;
                }
                if (doit && filterByClasses == null) {
                    forceStopPackageLocked(packageName, this.mServiceMap.valueAt(i).mUserId);
                }
            }
        } else {
            ServiceMap smap = this.mServiceMap.get(userId);
            if (smap != null) {
                ArrayMap<ComponentName, ServiceRecord> items = smap.mServicesByInstanceName;
                didSomething = collectPackageServicesLocked(packageName, filterByClasses, evenPersistent, doit, items);
            }
            if (doit && filterByClasses == null) {
                forceStopPackageLocked(packageName, userId);
            }
        }
        ArrayList<ServiceRecord> arrayList2 = this.mTmpCollectionResults;
        if (arrayList2 != null) {
            for (int i2 = arrayList2.size() - 1; i2 >= 0; i2--) {
                bringDownServiceLocked(this.mTmpCollectionResults.get(i2));
            }
            this.mTmpCollectionResults.clear();
        }
        return didSomething;
    }

    void forceStopPackageLocked(String packageName, int userId) {
        ServiceMap smap = this.mServiceMap.get(userId);
        if (smap != null && smap.mActiveForegroundApps.size() > 0) {
            for (int i = smap.mActiveForegroundApps.size() - 1; i >= 0; i--) {
                ActiveForegroundApp aa = smap.mActiveForegroundApps.valueAt(i);
                if (aa.mPackageName.equals(packageName)) {
                    smap.mActiveForegroundApps.removeAt(i);
                    smap.mActiveForegroundAppsChanged = true;
                }
            }
            if (smap.mActiveForegroundAppsChanged) {
                requestUpdateActiveForegroundAppsLocked(smap, 0L);
            }
        }
    }

    void cleanUpServices(int userId, ComponentName component, Intent baseIntent) {
        ArrayList<ServiceRecord> services = new ArrayList<>();
        ArrayMap<ComponentName, ServiceRecord> alls = getServicesLocked(userId);
        for (int i = alls.size() - 1; i >= 0; i--) {
            ServiceRecord sr = alls.valueAt(i);
            if (sr.packageName.equals(component.getPackageName())) {
                services.add(sr);
            }
        }
        int i2 = services.size();
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            ServiceRecord sr2 = services.get(i3);
            if (sr2.startRequested) {
                if ((sr2.serviceInfo.flags & 1) != 0) {
                    Slog.i("ActivityManager", "Stopping service " + sr2.shortInstanceName + ": remove task");
                    stopServiceLocked(sr2);
                } else {
                    sr2.pendingStarts.add(new ServiceRecord.StartItem(sr2, true, sr2.getLastStartId(), baseIntent, null, 0));
                    if (sr2.app != null && sr2.app.thread != null) {
                        try {
                            sendServiceArgsLocked(sr2, true, false);
                        } catch (TransactionTooLargeException e) {
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v4, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    final void killServicesLocked(ProcessRecord processRecord, boolean z) {
        ProcessRecord processRecord2;
        int size = processRecord.connections.size() - 1;
        while (true) {
            processRecord2 = null;
            if (size < 0) {
                break;
            }
            removeConnectionLocked(processRecord.connections.valueAt(size), processRecord, null);
            size--;
        }
        updateServiceConnectionActivitiesLocked(processRecord);
        processRecord.connections.clear();
        processRecord.whitelistManager = false;
        int iNumberOfRunningServices = processRecord.numberOfRunningServices() - 1;
        while (iNumberOfRunningServices >= 0) {
            ServiceRecord runningServiceAt = processRecord.getRunningServiceAt(iNumberOfRunningServices);
            synchronized (runningServiceAt.stats.getBatteryStats()) {
                runningServiceAt.stats.stopLaunchedLocked();
            }
            if (runningServiceAt.app != processRecord && runningServiceAt.app != null && !runningServiceAt.app.isPersistent()) {
                runningServiceAt.app.stopService(runningServiceAt);
                runningServiceAt.app.updateBoundClientUids();
            }
            runningServiceAt.setProcess(processRecord2);
            runningServiceAt.isolatedProc = processRecord2;
            runningServiceAt.executeNesting = 0;
            runningServiceAt.forceClearTracker();
            this.mDestroyingServices.remove(runningServiceAt);
            int size2 = runningServiceAt.bindings.size() - 1;
            ?? r4 = processRecord2;
            while (size2 >= 0) {
                IntentBindRecord intentBindRecordValueAt = runningServiceAt.bindings.valueAt(size2);
                intentBindRecordValueAt.binder = r4;
                intentBindRecordValueAt.hasBound = false;
                intentBindRecordValueAt.received = false;
                intentBindRecordValueAt.requested = false;
                for (int size3 = intentBindRecordValueAt.apps.size() - 1; size3 >= 0; size3--) {
                    ProcessRecord processRecordKeyAt = intentBindRecordValueAt.apps.keyAt(size3);
                    if (!processRecordKeyAt.killedByAm && processRecordKeyAt.thread != null) {
                        AppBindRecord appBindRecordValueAt = intentBindRecordValueAt.apps.valueAt(size3);
                        boolean z2 = false;
                        for (int size4 = appBindRecordValueAt.connections.size() - 1; size4 >= 0; size4--) {
                            if ((appBindRecordValueAt.connections.valueAt(size4).flags & 49) == 1) {
                                z2 = true;
                                break;
                            }
                        }
                        if (!z2) {
                        }
                    }
                }
                size2--;
                r4 = 0;
            }
            iNumberOfRunningServices--;
            processRecord2 = null;
        }
        ServiceMap serviceMapLocked = getServiceMapLocked(processRecord.userId);
        for (int iNumberOfRunningServices2 = processRecord.numberOfRunningServices() - 1; iNumberOfRunningServices2 >= 0; iNumberOfRunningServices2--) {
            ServiceRecord runningServiceAt2 = processRecord.getRunningServiceAt(iNumberOfRunningServices2);
            if (!processRecord.isPersistent()) {
                processRecord.stopService(runningServiceAt2);
                processRecord.updateBoundClientUids();
            }
            ServiceRecord serviceRecord = serviceMapLocked.mServicesByInstanceName.get(runningServiceAt2.instanceName);
            if (serviceRecord != runningServiceAt2) {
                if (serviceRecord != null) {
                    Slog.w("ActivityManager", "Service " + runningServiceAt2 + " in process " + processRecord + " not same as in map: " + serviceRecord);
                }
            } else if (z && runningServiceAt2.crashCount >= this.mAm.mConstants.BOUND_SERVICE_MAX_CRASH_RETRY && (runningServiceAt2.serviceInfo.applicationInfo.flags & 8) == 0) {
                Slog.w("ActivityManager", "Service crashed " + runningServiceAt2.crashCount + " times, stopping: " + runningServiceAt2);
                EventLog.writeEvent(EventLogTags.AM_SERVICE_CRASHED_TOO_MUCH, Integer.valueOf(runningServiceAt2.userId), Integer.valueOf(runningServiceAt2.crashCount), runningServiceAt2.shortInstanceName, Integer.valueOf(processRecord.pid));
                bringDownServiceLocked(runningServiceAt2);
            } else if (!z || !this.mAm.mUserController.isUserRunning(runningServiceAt2.userId, 0)) {
                bringDownServiceLocked(runningServiceAt2);
            } else if (!scheduleServiceRestartLocked(runningServiceAt2, true)) {
                bringDownServiceLocked(runningServiceAt2);
            } else if (runningServiceAt2.canStopIfKilled(false)) {
                runningServiceAt2.startRequested = false;
                if (runningServiceAt2.tracker != null) {
                    runningServiceAt2.tracker.setStarted(false, this.mAm.mProcessStats.getMemFactorLocked(), SystemClock.uptimeMillis());
                }
            }
        }
        if (!z) {
            processRecord.stopAllServices();
            processRecord.clearBoundClientUids();
            for (int size5 = this.mRestartingServices.size() - 1; size5 >= 0; size5--) {
                ServiceRecord serviceRecord2 = this.mRestartingServices.get(size5);
                if (serviceRecord2.processName.equals(processRecord.processName) && serviceRecord2.serviceInfo.applicationInfo.uid == processRecord.info.uid) {
                    this.mRestartingServices.remove(size5);
                    clearRestartingIfNeededLocked(serviceRecord2);
                }
            }
            for (int size6 = this.mPendingServices.size() - 1; size6 >= 0; size6--) {
                ServiceRecord serviceRecord3 = this.mPendingServices.get(size6);
                if (serviceRecord3.processName.equals(processRecord.processName) && serviceRecord3.serviceInfo.applicationInfo.uid == processRecord.info.uid) {
                    this.mPendingServices.remove(size6);
                }
            }
        }
        int size7 = this.mDestroyingServices.size();
        while (size7 > 0) {
            size7--;
            ServiceRecord serviceRecord4 = this.mDestroyingServices.get(size7);
            if (serviceRecord4.app == processRecord) {
                serviceRecord4.forceClearTracker();
                this.mDestroyingServices.remove(size7);
            }
        }
        processRecord.executingServices.clear();
    }

    ActivityManager.RunningServiceInfo makeRunningServiceInfoLocked(ServiceRecord r) {
        ActivityManager.RunningServiceInfo info = new ActivityManager.RunningServiceInfo();
        info.service = r.name;
        if (r.app != null) {
            info.pid = r.app.pid;
        }
        info.uid = r.appInfo.uid;
        info.process = r.processName;
        info.foreground = r.isForeground;
        info.activeSince = r.createRealTime;
        info.started = r.startRequested;
        info.clientCount = r.getConnections().size();
        info.crashCount = r.crashCount;
        info.lastActivityTime = r.lastActivity;
        if (r.isForeground) {
            info.flags |= 2;
        }
        if (r.startRequested) {
            info.flags |= 1;
        }
        if (r.app != null && r.app.pid == ActivityManagerService.MY_PID) {
            info.flags |= 4;
        }
        if (r.app != null && r.app.isPersistent()) {
            info.flags |= 8;
        }
        ArrayMap<IBinder, ArrayList<ConnectionRecord>> connections = r.getConnections();
        for (int conni = connections.size() - 1; conni >= 0; conni--) {
            ArrayList<ConnectionRecord> connl = connections.valueAt(conni);
            for (int i = 0; i < connl.size(); i++) {
                ConnectionRecord conn = connl.get(i);
                if (conn.clientLabel != 0) {
                    info.clientPackage = conn.binding.client.info.packageName;
                    info.clientLabel = conn.clientLabel;
                    return info;
                }
            }
        }
        return info;
    }

    List<ActivityManager.RunningServiceInfo> getRunningServiceInfoLocked(int maxNum, int flags, int callingUid, boolean allowed, boolean canInteractAcrossUsers) {
        ArrayList<ActivityManager.RunningServiceInfo> res = new ArrayList<>();
        long ident = Binder.clearCallingIdentity();
        try {
            if (canInteractAcrossUsers) {
                int[] users = this.mAm.mUserController.getUsers();
                for (int ui = 0; ui < users.length && res.size() < maxNum; ui++) {
                    ArrayMap<ComponentName, ServiceRecord> alls = getServicesLocked(users[ui]);
                    for (int i = 0; i < alls.size() && res.size() < maxNum; i++) {
                        res.add(makeRunningServiceInfoLocked(alls.valueAt(i)));
                    }
                }
                for (int i2 = 0; i2 < this.mRestartingServices.size() && res.size() < maxNum; i2++) {
                    ServiceRecord r = this.mRestartingServices.get(i2);
                    ActivityManager.RunningServiceInfo info = makeRunningServiceInfoLocked(r);
                    info.restarting = r.nextRestartTime;
                    res.add(info);
                }
            } else {
                int userId = UserHandle.getUserId(callingUid);
                ArrayMap<ComponentName, ServiceRecord> alls2 = getServicesLocked(userId);
                for (int i3 = 0; i3 < alls2.size() && res.size() < maxNum; i3++) {
                    ServiceRecord sr = alls2.valueAt(i3);
                    if (allowed || (sr.app != null && sr.app.uid == callingUid)) {
                        res.add(makeRunningServiceInfoLocked(sr));
                    }
                }
                for (int i4 = 0; i4 < this.mRestartingServices.size() && res.size() < maxNum; i4++) {
                    ServiceRecord r2 = this.mRestartingServices.get(i4);
                    if (r2.userId == userId && (allowed || (r2.app != null && r2.app.uid == callingUid))) {
                        ActivityManager.RunningServiceInfo info2 = makeRunningServiceInfoLocked(r2);
                        info2.restarting = r2.nextRestartTime;
                        res.add(info2);
                    }
                }
            }
            Binder.restoreCallingIdentity(ident);
            return res;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public PendingIntent getRunningServiceControlPanelLocked(ComponentName name) {
        int userId = UserHandle.getUserId(Binder.getCallingUid());
        ServiceRecord r = getServiceByNameLocked(name, userId);
        if (r != null) {
            ArrayMap<IBinder, ArrayList<ConnectionRecord>> connections = r.getConnections();
            for (int conni = connections.size() - 1; conni >= 0; conni--) {
                ArrayList<ConnectionRecord> conn = connections.valueAt(conni);
                for (int i = 0; i < conn.size(); i++) {
                    if (conn.get(i).clientIntent != null) {
                        return conn.get(i).clientIntent;
                    }
                }
            }
            return null;
        }
        return null;
    }

    void serviceTimeout(ProcessRecord proc) {
        String anrMessage = null;
        synchronized (this.mAm) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                if (proc.isDebugging()) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                if (proc.executingServices.size() != 0 && proc.thread != null) {
                    long now = SystemClock.uptimeMillis();
                    long maxTime = now - ((long) (proc.execServicesFg ? SERVICE_TIMEOUT : SERVICE_BACKGROUND_TIMEOUT));
                    ServiceRecord timeout = null;
                    long nextTime = 0;
                    for (int i = proc.executingServices.size() - 1; i >= 0; i--) {
                        ServiceRecord sr = proc.executingServices.valueAt(i);
                        if (sr.executingStart >= maxTime) {
                            if (sr.executingStart > nextTime) {
                                nextTime = sr.executingStart;
                            }
                        } else {
                            timeout = sr;
                            break;
                        }
                    }
                    if (timeout != null && this.mAm.mProcessList.mLruProcesses.contains(proc)) {
                        Slog.w("ActivityManager", "Timeout executing service: " + timeout);
                        StringWriter sw = new StringWriter();
                        FastPrintWriter fastPrintWriter = new FastPrintWriter(sw, false, 1024);
                        fastPrintWriter.println(timeout);
                        timeout.dump((PrintWriter) fastPrintWriter, "    ");
                        fastPrintWriter.close();
                        this.mLastAnrDump = sw.toString();
                        this.mAm.mHandler.removeCallbacks(this.mLastAnrDumpClearer);
                        this.mAm.mHandler.postDelayed(this.mLastAnrDumpClearer, AppStandbyController.SettingsObserver.DEFAULT_SYSTEM_UPDATE_TIMEOUT);
                        anrMessage = "executing service " + timeout.shortInstanceName;
                    } else {
                        Message msg = this.mAm.mHandler.obtainMessage(12);
                        msg.obj = proc;
                        this.mAm.mHandler.sendMessageAtTime(msg, proc.execServicesFg ? 20000 + nextTime : 200000 + nextTime);
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    if (anrMessage != null) {
                        this.mAm.mAnrHelper.appNotResponding(proc, anrMessage);
                        return;
                    }
                    return;
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    void serviceForegroundTimeout(ServiceRecord r) {
        synchronized (this.mAm) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                if (r.fgRequired && !r.destroying) {
                    ProcessRecord app = r.app;
                    if (app != null && app.isDebugging()) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    r.fgWaiting = false;
                    stopServiceLocked(r);
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    if (app != null) {
                        this.mAm.mAnrHelper.appNotResponding(app, "Context.startForegroundService() did not then call Service.startForeground(): " + r);
                        return;
                    }
                    return;
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void updateServiceApplicationInfoLocked(ApplicationInfo applicationInfo) {
        int userId = UserHandle.getUserId(applicationInfo.uid);
        ServiceMap serviceMap = this.mServiceMap.get(userId);
        if (serviceMap != null) {
            ArrayMap<ComponentName, ServiceRecord> servicesByName = serviceMap.mServicesByInstanceName;
            for (int j = servicesByName.size() - 1; j >= 0; j--) {
                ServiceRecord serviceRecord = servicesByName.valueAt(j);
                if (applicationInfo.packageName.equals(serviceRecord.appInfo.packageName)) {
                    serviceRecord.appInfo = applicationInfo;
                    serviceRecord.serviceInfo.applicationInfo = applicationInfo;
                }
            }
        }
    }

    void serviceForegroundCrash(ProcessRecord app, CharSequence serviceRecord) {
        this.mAm.crashApplication(app.uid, app.pid, app.info.packageName, app.userId, "Context.startForegroundService() did not then call Service.startForeground(): " + ((Object) serviceRecord), false);
    }

    void scheduleServiceTimeoutLocked(ProcessRecord proc) {
        if (proc.executingServices.size() == 0 || proc.thread == null) {
            return;
        }
        Message msg = this.mAm.mHandler.obtainMessage(12);
        msg.obj = proc;
        this.mAm.mHandler.sendMessageDelayed(msg, proc.execServicesFg ? 20000L : 200000L);
    }

    void scheduleServiceForegroundTransitionTimeoutLocked(ServiceRecord r) {
        if (r.app.executingServices.size() == 0 || r.app.thread == null) {
            return;
        }
        Message msg = this.mAm.mHandler.obtainMessage(66);
        msg.obj = r;
        r.fgWaiting = true;
        this.mAm.mHandler.sendMessageDelayed(msg, 15000L);
    }

    final class ServiceDumper {
        private final String[] args;
        private final boolean dumpAll;
        private final String dumpPackage;
        private final FileDescriptor fd;
        private final ActivityManagerService.ItemMatcher matcher;
        private final PrintWriter pw;
        final /* synthetic */ ActiveServices this$0;
        private final ArrayList<ServiceRecord> services = new ArrayList<>();
        private final long nowReal = SystemClock.elapsedRealtime();
        private boolean needSep = false;
        private boolean printedAnything = false;
        private boolean printed = false;

        ServiceDumper(ActiveServices this$0, FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, String dumpPackage) {
            ActiveServices activeServices = this$0;
            this.this$0 = activeServices;
            int i = 0;
            this.fd = fd;
            this.pw = pw;
            this.args = args;
            this.dumpAll = dumpAll;
            this.dumpPackage = dumpPackage;
            ActivityManagerService.ItemMatcher itemMatcher = new ActivityManagerService.ItemMatcher();
            this.matcher = itemMatcher;
            itemMatcher.build(args, opti);
            int[] users = activeServices.mAm.mUserController.getUsers();
            int length = users.length;
            while (i < length) {
                int user = users[i];
                ServiceMap smap = activeServices.getServiceMapLocked(user);
                if (smap.mServicesByInstanceName.size() > 0) {
                    for (int si = 0; si < smap.mServicesByInstanceName.size(); si++) {
                        ServiceRecord r = smap.mServicesByInstanceName.valueAt(si);
                        if (this.matcher.match(r, r.name) && (dumpPackage == null || dumpPackage.equals(r.appInfo.packageName))) {
                            this.services.add(r);
                        }
                    }
                }
                i++;
                activeServices = this$0;
            }
        }

        private void dumpHeaderLocked() {
            this.pw.println("ACTIVITY MANAGER SERVICES (dumpsys activity services)");
            if (this.this$0.mLastAnrDump != null) {
                this.pw.println("  Last ANR service:");
                this.pw.print(this.this$0.mLastAnrDump);
                this.pw.println();
            }
        }

        void dumpLocked() {
            dumpHeaderLocked();
            try {
                int[] users = this.this$0.mAm.mUserController.getUsers();
                for (int user : users) {
                    int serviceIdx = 0;
                    while (serviceIdx < this.services.size() && this.services.get(serviceIdx).userId != user) {
                        serviceIdx++;
                    }
                    this.printed = false;
                    if (serviceIdx < this.services.size()) {
                        this.needSep = false;
                        while (serviceIdx < this.services.size()) {
                            ServiceRecord r = this.services.get(serviceIdx);
                            serviceIdx++;
                            if (r.userId != user) {
                                break;
                            } else {
                                dumpServiceLocalLocked(r);
                            }
                        }
                        this.needSep |= this.printed;
                    }
                    dumpUserRemainsLocked(user);
                }
            } catch (Exception e) {
                Slog.w("ActivityManager", "Exception in dumpServicesLocked", e);
            }
            dumpRemainsLocked();
        }

        /* JADX WARN: Code duplicated, block: B:63:0x00a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        void dumpWithClient() {
            synchronized (this.this$0.mAm) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    dumpHeaderLocked();
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            try {
                int[] users = this.this$0.mAm.mUserController.getUsers();
                for (int user : users) {
                    int serviceIdx = 0;
                    while (serviceIdx < this.services.size() && this.services.get(serviceIdx).userId != user) {
                        serviceIdx++;
                    }
                    this.printed = false;
                    if (serviceIdx < this.services.size()) {
                        this.needSep = false;
                        while (serviceIdx < this.services.size()) {
                            ServiceRecord r = this.services.get(serviceIdx);
                            serviceIdx++;
                            if (r.userId != user) {
                                break;
                            }
                            synchronized (this.this$0.mAm) {
                                try {
                                    ActivityManagerService.boostPriorityForLockedSection();
                                    dumpServiceLocalLocked(r);
                                } catch (Throwable th2) {
                                    ActivityManagerService.resetPriorityAfterLockedSection();
                                    throw th2;
                                }
                            }
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            dumpServiceClient(r);
                            Slog.w("ActivityManager", "Exception in dumpServicesLocked", e);
                            synchronized (this.this$0.mAm) {
                                try {
                                    ActivityManagerService.boostPriorityForLockedSection();
                                    dumpRemainsLocked();
                                } finally {
                                    ActivityManagerService.resetPriorityAfterLockedSection();
                                }
                            }
                        }
                        this.needSep |= this.printed;
                    }
                    synchronized (this.this$0.mAm) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            dumpUserRemainsLocked(user);
                        } catch (Throwable th3) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th3;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            } catch (Exception e) {
                Slog.w("ActivityManager", "Exception in dumpServicesLocked", e);
            }
            synchronized (this.this$0.mAm) {
                ActivityManagerService.boostPriorityForLockedSection();
                dumpRemainsLocked();
            }
        }

        private void dumpUserHeaderLocked(int user) {
            if (!this.printed) {
                if (this.printedAnything) {
                    this.pw.println();
                }
                this.pw.println("  User " + user + " active services:");
                this.printed = true;
            }
            this.printedAnything = true;
            if (this.needSep) {
                this.pw.println();
            }
        }

        private void dumpServiceLocalLocked(ServiceRecord r) {
            dumpUserHeaderLocked(r.userId);
            this.pw.print("  * ");
            this.pw.println(r);
            if (this.dumpAll) {
                r.dump(this.pw, "    ");
                this.needSep = true;
                return;
            }
            this.pw.print("    app=");
            this.pw.println(r.app);
            this.pw.print("    created=");
            TimeUtils.formatDuration(r.createRealTime, this.nowReal, this.pw);
            this.pw.print(" started=");
            this.pw.print(r.startRequested);
            this.pw.print(" connections=");
            ArrayMap<IBinder, ArrayList<ConnectionRecord>> connections = r.getConnections();
            this.pw.println(connections.size());
            if (connections.size() > 0) {
                this.pw.println("    Connections:");
                for (int conni = 0; conni < connections.size(); conni++) {
                    ArrayList<ConnectionRecord> clist = connections.valueAt(conni);
                    for (int i = 0; i < clist.size(); i++) {
                        ConnectionRecord conn = clist.get(i);
                        this.pw.print("      ");
                        this.pw.print(conn.binding.intent.intent.getIntent().toShortString(false, false, false, false));
                        this.pw.print(" -> ");
                        ProcessRecord proc = conn.binding.client;
                        this.pw.println(proc != null ? proc.toShortString() : "null");
                    }
                }
            }
        }

        private void dumpServiceClient(ServiceRecord r) {
            IApplicationThread thread;
            ProcessRecord proc = r.app;
            if (proc == null || (thread = proc.thread) == null) {
                return;
            }
            this.pw.println("    Client:");
            this.pw.flush();
            try {
                TransferPipe tp = new TransferPipe();
                try {
                    thread.dumpService(tp.getWriteFd(), r, this.args);
                    tp.setBufferPrefix("      ");
                    tp.go(this.fd, 2000L);
                    tp.kill();
                } catch (Throwable th) {
                    tp.kill();
                    throw th;
                }
            } catch (RemoteException e) {
                this.pw.println("      Got a RemoteException while dumping the service");
            } catch (IOException e2) {
                this.pw.println("      Failure while dumping the service: " + e2);
            }
            this.needSep = true;
        }

        private void dumpUserRemainsLocked(int user) {
            String str;
            String str2;
            ServiceMap smap = this.this$0.getServiceMapLocked(user);
            this.printed = false;
            int SN = smap.mDelayedStartList.size();
            for (int si = 0; si < SN; si++) {
                ServiceRecord r = smap.mDelayedStartList.get(si);
                if (this.matcher.match(r, r.name) && ((str2 = this.dumpPackage) == null || str2.equals(r.appInfo.packageName))) {
                    if (!this.printed) {
                        if (this.printedAnything) {
                            this.pw.println();
                        }
                        this.pw.println("  User " + user + " delayed start services:");
                        this.printed = true;
                    }
                    this.printedAnything = true;
                    this.pw.print("  * Delayed start ");
                    this.pw.println(r);
                }
            }
            this.printed = false;
            int SN2 = smap.mStartingBackground.size();
            for (int si2 = 0; si2 < SN2; si2++) {
                ServiceRecord r2 = smap.mStartingBackground.get(si2);
                if (this.matcher.match(r2, r2.name) && ((str = this.dumpPackage) == null || str.equals(r2.appInfo.packageName))) {
                    if (!this.printed) {
                        if (this.printedAnything) {
                            this.pw.println();
                        }
                        this.pw.println("  User " + user + " starting in background:");
                        this.printed = true;
                    }
                    this.printedAnything = true;
                    this.pw.print("  * Starting bg ");
                    this.pw.println(r2);
                }
            }
        }

        private void dumpRemainsLocked() {
            String str;
            String str2;
            String str3;
            if (this.this$0.mPendingServices.size() > 0) {
                this.printed = false;
                for (int i = 0; i < this.this$0.mPendingServices.size(); i++) {
                    ServiceRecord r = this.this$0.mPendingServices.get(i);
                    if (this.matcher.match(r, r.name) && ((str3 = this.dumpPackage) == null || str3.equals(r.appInfo.packageName))) {
                        this.printedAnything = true;
                        if (!this.printed) {
                            if (this.needSep) {
                                this.pw.println();
                            }
                            this.needSep = true;
                            this.pw.println("  Pending services:");
                            this.printed = true;
                        }
                        this.pw.print("  * Pending ");
                        this.pw.println(r);
                        r.dump(this.pw, "    ");
                    }
                }
                this.needSep = true;
            }
            if (this.this$0.mRestartingServices.size() > 0) {
                this.printed = false;
                for (int i2 = 0; i2 < this.this$0.mRestartingServices.size(); i2++) {
                    ServiceRecord r2 = this.this$0.mRestartingServices.get(i2);
                    if (this.matcher.match(r2, r2.name) && ((str2 = this.dumpPackage) == null || str2.equals(r2.appInfo.packageName))) {
                        this.printedAnything = true;
                        if (!this.printed) {
                            if (this.needSep) {
                                this.pw.println();
                            }
                            this.needSep = true;
                            this.pw.println("  Restarting services:");
                            this.printed = true;
                        }
                        this.pw.print("  * Restarting ");
                        this.pw.println(r2);
                        r2.dump(this.pw, "    ");
                    }
                }
                this.needSep = true;
            }
            if (this.this$0.mDestroyingServices.size() > 0) {
                this.printed = false;
                for (int i3 = 0; i3 < this.this$0.mDestroyingServices.size(); i3++) {
                    ServiceRecord r3 = this.this$0.mDestroyingServices.get(i3);
                    if (this.matcher.match(r3, r3.name) && ((str = this.dumpPackage) == null || str.equals(r3.appInfo.packageName))) {
                        this.printedAnything = true;
                        if (!this.printed) {
                            if (this.needSep) {
                                this.pw.println();
                            }
                            this.needSep = true;
                            this.pw.println("  Destroying services:");
                            this.printed = true;
                        }
                        this.pw.print("  * Destroy ");
                        this.pw.println(r3);
                        r3.dump(this.pw, "    ");
                    }
                }
                this.needSep = true;
            }
            if (this.dumpAll) {
                this.printed = false;
                for (int ic = 0; ic < this.this$0.mServiceConnections.size(); ic++) {
                    ArrayList<ConnectionRecord> r4 = this.this$0.mServiceConnections.valueAt(ic);
                    for (int i4 = 0; i4 < r4.size(); i4++) {
                        ConnectionRecord cr = r4.get(i4);
                        if (this.matcher.match(cr.binding.service, cr.binding.service.name) && (this.dumpPackage == null || (cr.binding.client != null && this.dumpPackage.equals(cr.binding.client.info.packageName)))) {
                            this.printedAnything = true;
                            if (!this.printed) {
                                if (this.needSep) {
                                    this.pw.println();
                                }
                                this.needSep = true;
                                this.pw.println("  Connection bindings to services:");
                                this.printed = true;
                            }
                            this.pw.print("  * ");
                            this.pw.println(cr);
                            cr.dump(this.pw, "    ");
                        }
                    }
                }
            }
            if (this.matcher.all) {
                long nowElapsed = SystemClock.elapsedRealtime();
                int[] users = this.this$0.mAm.mUserController.getUsers();
                for (int user : users) {
                    boolean printedUser = false;
                    ServiceMap smap = this.this$0.mServiceMap.get(user);
                    if (smap != null) {
                        for (int i5 = smap.mActiveForegroundApps.size() - 1; i5 >= 0; i5--) {
                            ActiveForegroundApp aa = smap.mActiveForegroundApps.valueAt(i5);
                            String str4 = this.dumpPackage;
                            if (str4 == null || str4.equals(aa.mPackageName)) {
                                if (!printedUser) {
                                    printedUser = true;
                                    this.printedAnything = true;
                                    if (this.needSep) {
                                        this.pw.println();
                                    }
                                    this.needSep = true;
                                    this.pw.print("Active foreground apps - user ");
                                    this.pw.print(user);
                                    this.pw.println(":");
                                }
                                this.pw.print("  #");
                                this.pw.print(i5);
                                this.pw.print(": ");
                                this.pw.println(aa.mPackageName);
                                if (aa.mLabel != null) {
                                    this.pw.print("    mLabel=");
                                    this.pw.println(aa.mLabel);
                                }
                                this.pw.print("    mNumActive=");
                                this.pw.print(aa.mNumActive);
                                this.pw.print(" mAppOnTop=");
                                this.pw.print(aa.mAppOnTop);
                                this.pw.print(" mShownWhileTop=");
                                this.pw.print(aa.mShownWhileTop);
                                this.pw.print(" mShownWhileScreenOn=");
                                this.pw.println(aa.mShownWhileScreenOn);
                                this.pw.print("    mStartTime=");
                                TimeUtils.formatDuration(aa.mStartTime - nowElapsed, this.pw);
                                this.pw.print(" mStartVisibleTime=");
                                TimeUtils.formatDuration(aa.mStartVisibleTime - nowElapsed, this.pw);
                                this.pw.println();
                                if (aa.mEndTime != 0) {
                                    this.pw.print("    mEndTime=");
                                    TimeUtils.formatDuration(aa.mEndTime - nowElapsed, this.pw);
                                    this.pw.println();
                                }
                            }
                        }
                        if (smap.hasMessagesOrCallbacks()) {
                            if (this.needSep) {
                                this.pw.println();
                            }
                            this.printedAnything = true;
                            this.needSep = true;
                            this.pw.print("  Handler - user ");
                            this.pw.print(user);
                            this.pw.println(":");
                            smap.dumpMine(new PrintWriterPrinter(this.pw), "    ");
                        }
                    }
                }
            }
            if (!this.printedAnything) {
                this.pw.println("  (nothing)");
            }
        }
    }

    ServiceDumper newServiceDumperLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, String dumpPackage) {
        return new ServiceDumper(this, fd, pw, args, opti, dumpAll, dumpPackage);
    }

    protected void dumpDebug(ProtoOutputStream proto, long fieldId) {
        int[] users;
        ActiveServices activeServices = this;
        synchronized (activeServices.mAm) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                long outterToken = proto.start(fieldId);
                int[] users2 = activeServices.mAm.mUserController.getUsers();
                int length = users2.length;
                int i = 0;
                while (i < length) {
                    int user = users2[i];
                    ServiceMap smap = activeServices.mServiceMap.get(user);
                    if (smap == null) {
                        users = users2;
                    } else {
                        long token = proto.start(2246267895809L);
                        proto.write(1120986464257L, user);
                        ArrayMap<ComponentName, ServiceRecord> alls = smap.mServicesByInstanceName;
                        int i2 = 0;
                        while (i2 < alls.size()) {
                            alls.valueAt(i2).dumpDebug(proto, 2246267895810L);
                            i2++;
                            users2 = users2;
                        }
                        users = users2;
                        proto.end(token);
                    }
                    i++;
                    activeServices = this;
                    users2 = users;
                }
                proto.end(outterToken);
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    protected boolean dumpService(FileDescriptor fd, PrintWriter pw, String name, String[] args, int opti, boolean dumpAll) {
        ArrayList<ServiceRecord> services = new ArrayList<>();
        Predicate<ServiceRecord> filter = DumpUtils.filterRecord(name);
        synchronized (this.mAm) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                int[] users = this.mAm.mUserController.getUsers();
                for (int user : users) {
                    ServiceMap smap = this.mServiceMap.get(user);
                    if (smap != null) {
                        ArrayMap<ComponentName, ServiceRecord> alls = smap.mServicesByInstanceName;
                        for (int i = 0; i < alls.size(); i++) {
                            ServiceRecord r1 = alls.valueAt(i);
                            if (filter.test(r1)) {
                                services.add(r1);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
        if (services.size() <= 0) {
            return false;
        }
        services.sort(Comparator.comparing(new Function() { // from class: com.android.server.am.-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ServiceRecord) obj).getComponentName();
            }
        }));
        boolean needSep = false;
        for (int i2 = 0; i2 < services.size(); i2++) {
            if (needSep) {
                pw.println();
            }
            needSep = true;
            dumpService("", fd, pw, services.get(i2), args, dumpAll);
        }
        return true;
    }

    private void dumpService(String prefix, FileDescriptor fd, PrintWriter pw, ServiceRecord r, String[] args, boolean dumpAll) {
        String innerPrefix = prefix + "  ";
        synchronized (this.mAm) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                pw.print(prefix);
                pw.print("SERVICE ");
                pw.print(r.shortInstanceName);
                pw.print(" ");
                pw.print(Integer.toHexString(System.identityHashCode(r)));
                pw.print(" pid=");
                if (r.app != null) {
                    pw.println(r.app.pid);
                } else {
                    pw.println("(not running)");
                }
                if (dumpAll) {
                    r.dump(pw, innerPrefix);
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
        if (r.app != null && r.app.thread != null) {
            pw.print(prefix);
            pw.println("  Client:");
            pw.flush();
            try {
                TransferPipe tp = new TransferPipe();
                try {
                    r.app.thread.dumpService(tp.getWriteFd(), r, args);
                    tp.setBufferPrefix(prefix + "    ");
                    tp.go(fd);
                } finally {
                    tp.kill();
                }
            } catch (RemoteException e) {
                pw.println(prefix + "    Got a RemoteException while dumping the service");
            } catch (IOException e2) {
                pw.println(prefix + "    Failure while dumping the service: " + e2);
            }
        }
    }

    private boolean shouldAllowWhileInUsePermissionInFgsLocked(String callingPackage, int callingPid, int callingUid, ServiceRecord r, boolean allowBackgroundActivityStarts) {
        boolean isCallerSystem;
        ActiveInstrumentation instr;
        if (!this.mAm.mConstants.mFlagBackgroundFgsStartRestrictionEnabled || allowBackgroundActivityStarts) {
            return true;
        }
        int callingAppId = UserHandle.getAppId(callingUid);
        if (callingAppId == 0 || callingAppId == 1000 || callingAppId == 1027 || callingAppId == 2000) {
            isCallerSystem = true;
        } else {
            isCallerSystem = false;
        }
        if (isCallerSystem) {
            return true;
        }
        if (r != null && r.app != null && (instr = r.app.getActiveInstrumentation()) != null && instr.mHasBackgroundActivityStartsPermission) {
            return true;
        }
        for (int i = this.mAm.mProcessList.mLruProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord pr = this.mAm.mProcessList.mLruProcesses.get(i);
            if (pr.uid == callingUid && (!pr.mAllowBackgroundActivityStartsTokens.isEmpty() || pr.getWindowProcessController().areBackgroundActivityStartsAllowedByGracePeriodSafe())) {
                return true;
            }
        }
        if (this.mAm.checkPermission("android.permission.START_ACTIVITIES_FROM_BACKGROUND", callingPid, callingUid) == 0) {
            return true;
        }
        boolean isCallingUidTopApp = appIsTopLocked(callingUid);
        if (isCallingUidTopApp) {
            return true;
        }
        boolean isCallingUidVisible = this.mAm.mAtmInternal.isUidForeground(callingUid);
        if (isCallingUidVisible || this.mAm.mInternal.isTempAllowlistedForFgsWhileInUse(callingUid)) {
            return true;
        }
        if (verifyPackage(callingPackage, callingUid)) {
            boolean isWhiteListedPackage = this.mWhiteListAllowWhileInUsePermissionInFgs.contains(callingPackage);
            if (isWhiteListedPackage) {
                return true;
            }
        } else {
            EventLog.writeEvent(1397638484, "215003903", Integer.valueOf(callingUid), "callingPackage:" + callingPackage + " does not belong to callingUid:" + callingUid);
        }
        boolean isDeviceOwner = this.mAm.mInternal.isDeviceOwner(callingUid);
        return isDeviceOwner;
    }

    boolean canAllowWhileInUsePermissionInFgsLocked(int callingPid, int callingUid, String callingPackage) {
        return shouldAllowWhileInUsePermissionInFgsLocked(callingPackage, callingPid, callingUid, null, false);
    }

    private void setFgsRestrictionLocked(String callingPackage, int callingPid, int callingUid, ServiceRecord r, boolean allowBackgroundActivityStarts) {
        r.mLastSetFgsRestrictionTime = SystemClock.elapsedRealtime();
        if (!r.mAllowWhileInUsePermissionInFgs) {
            r.mAllowWhileInUsePermissionInFgs = shouldAllowWhileInUsePermissionInFgsLocked(callingPackage, callingPid, callingUid, r, allowBackgroundActivityStarts);
        }
    }

    private void resetFgsRestrictionLocked(ServiceRecord r) {
        r.mAllowWhileInUsePermissionInFgs = false;
        r.mLastSetFgsRestrictionTime = 0L;
    }

    private boolean verifyPackage(String packageName, int uid) {
        if (uid == 0 || uid == 1000) {
            return true;
        }
        int userId = UserHandle.getUserId(uid);
        int packageUid = this.mAm.getPackageManagerInternalLocked().getPackageUid(packageName, AudioFormat.EVRC, userId);
        return UserHandle.isSameApp(uid, packageUid);
    }
}
