package com.android.server.content;

import android.R;
import android.accounts.Account;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.job.JobInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IContentService;
import android.content.ISyncStatusObserver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.PeriodicSync;
import android.content.SyncAdapterType;
import android.content.SyncInfo;
import android.content.SyncRequest;
import android.content.SyncStatusInfo;
import android.content.pm.ProviderInfo;
import android.database.IContentObserver;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.FactoryTest;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.BinderDeathDispatcher;
import com.android.internal.util.ArrayUtils;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.pm.Settings;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ContentService extends IContentService.Stub {
    private static final long BACKGROUND_OBSERVER_DELAY = 10000;
    static final boolean DEBUG = false;
    static final String TAG = "ContentService";
    private static final int TOO_MANY_OBSERVERS_THRESHOLD = 1000;
    private Context mContext;
    private boolean mFactoryTest;
    private static final BinderDeathDispatcher<IContentObserver> sObserverDeathDispatcher = new BinderDeathDispatcher<>();
    private static final ArraySet<Integer> sObserverLeakDetectedUid = new ArraySet<>(0);
    private static final ArrayList<String> mUriWhiteList = new ArrayList<>();
    private final ObserverNode mRootNode = new ObserverNode("");
    private SyncManager mSyncManager = null;
    private final Object mSyncManagerLock = new Object();
    private final SparseArray<ArrayMap<String, ArrayMap<Pair<String, Uri>, Bundle>>> mCache = new SparseArray<>();
    private BroadcastReceiver mCacheReceiver = new BroadcastReceiver() { // from class: com.android.server.content.ContentService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (ContentService.this.mCache) {
                if ("android.intent.action.LOCALE_CHANGED".equals(intent.getAction())) {
                    ContentService.this.mCache.clear();
                } else {
                    Uri data = intent.getData();
                    if (data != null) {
                        int userId = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                        String packageName = data.getSchemeSpecificPart();
                        ContentService.this.invalidateCacheLocked(userId, packageName, null);
                    }
                }
            }
        }
    };

    public static class Lifecycle extends SystemService {
        private ContentService mService;

        public Lifecycle(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v2, types: [android.os.IBinder, com.android.server.content.ContentService] */
        @Override // com.android.server.SystemService
        public void onStart() {
            boolean factoryTest = FactoryTest.getMode() == 1;
            ?? contentService = new ContentService(getContext(), factoryTest);
            this.mService = contentService;
            publishBinderService(ActivityTaskManagerInternal.ASSIST_KEY_CONTENT, contentService);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            this.mService.onBootPhase(phase);
        }

        @Override // com.android.server.SystemService
        public void onStartUser(int userHandle) {
            this.mService.onStartUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onUnlockUser(int userHandle) {
            this.mService.onUnlockUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onStopUser(int userHandle) {
            this.mService.onStopUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onCleanupUser(int userHandle) {
            synchronized (this.mService.mCache) {
                this.mService.mCache.remove(userHandle);
            }
        }
    }

    private SyncManager getSyncManager() {
        SyncManager syncManager;
        synchronized (this.mSyncManagerLock) {
            try {
                if (this.mSyncManager == null) {
                    this.mSyncManager = new SyncManager(this.mContext, this.mFactoryTest);
                }
            } catch (SQLiteException e) {
                Log.e(TAG, "Can't create SyncManager", e);
            }
            syncManager = this.mSyncManager;
        }
        return syncManager;
    }

    void onStartUser(int userHandle) {
        SyncManager syncManager = this.mSyncManager;
        if (syncManager != null) {
            syncManager.onStartUser(userHandle);
        }
    }

    void onUnlockUser(int userHandle) {
        SyncManager syncManager = this.mSyncManager;
        if (syncManager != null) {
            syncManager.onUnlockUser(userHandle);
        }
    }

    void onStopUser(int userHandle) {
        SyncManager syncManager = this.mSyncManager;
        if (syncManager != null) {
            syncManager.onStopUser(userHandle);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0148 */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0147, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0146, code lost:
    
        r0 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected synchronized void dump(java.io.FileDescriptor r19, java.io.PrintWriter r20, java.lang.String[] r21) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.content.ContentService.dump(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    ContentService(Context context, boolean factoryTest) {
        this.mContext = context;
        this.mFactoryTest = factoryTest;
        PermissionManagerServiceInternal permissionManagerInternal = (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);
        permissionManagerInternal.setSyncAdapterPackagesProvider(new PermissionManagerServiceInternal.SyncAdapterPackagesProvider() { // from class: com.android.server.content.-$$Lambda$ContentService$5-BNVxd6JTWU9ogp3u-0kfiqgbI
            @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.SyncAdapterPackagesProvider
            public final String[] getPackages(String str, int i) {
                return this.f$0.lambda$new$0$ContentService(str, i);
            }
        });
        IntentFilter packageFilter = new IntentFilter();
        packageFilter.addAction("android.intent.action.PACKAGE_ADDED");
        packageFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        packageFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        packageFilter.addAction("android.intent.action.PACKAGE_DATA_CLEARED");
        packageFilter.addDataScheme(Settings.ATTR_PACKAGE);
        this.mContext.registerReceiverAsUser(this.mCacheReceiver, UserHandle.ALL, packageFilter, null, null);
        IntentFilter localeFilter = new IntentFilter();
        localeFilter.addAction("android.intent.action.LOCALE_CHANGED");
        this.mContext.registerReceiverAsUser(this.mCacheReceiver, UserHandle.ALL, localeFilter, null, null);
        String[] uriWhiteList = this.mContext.getResources().getStringArray(R.array.config_roundedCornerBottomRadiusAdjustmentArray);
        mUriWhiteList.addAll(Arrays.asList(uriWhiteList));
    }

    void onBootPhase(int phase) {
        if (phase == 550) {
            getSyncManager();
        }
        SyncManager syncManager = this.mSyncManager;
        if (syncManager != null) {
            syncManager.onBootPhase(phase);
        }
    }

    public void registerContentObserver(Uri uri, boolean notifyForDescendants, IContentObserver observer, int userHandle, int targetSdkVersion) throws Throwable {
        if (observer == null || uri == null) {
            throw new IllegalArgumentException("You must pass a valid uri and observer");
        }
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        int userHandle2 = handleIncomingUser(uri, pid, uid, 1, true, userHandle);
        String msg = ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).checkContentProviderAccess(uri.getAuthority(), userHandle2);
        if (msg != null) {
            if (targetSdkVersion >= 26) {
                throw new SecurityException(msg);
            }
            if (!msg.startsWith("Failed to find provider")) {
                Log.w(TAG, "Ignoring content changes for " + uri + " from " + uid + ": " + msg);
                return;
            }
        }
        synchronized (this.mRootNode) {
            try {
                try {
                    this.mRootNode.addObserverLocked(uri, observer, notifyForDescendants, this.mRootNode, uid, pid, userHandle2);
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void registerContentObserver(Uri uri, boolean notifyForDescendants, IContentObserver observer) throws Throwable {
        registerContentObserver(uri, notifyForDescendants, observer, UserHandle.getCallingUserId(), 10000);
    }

    public void unregisterContentObserver(IContentObserver observer) {
        if (observer == null) {
            throw new IllegalArgumentException("You must pass a valid observer");
        }
        synchronized (this.mRootNode) {
            this.mRootNode.removeObserverLocked(observer);
        }
    }

    public void notifyChange(Uri[] uris, IContentObserver observer, boolean observerWantsSelfNotifications, int flags, int userId, int targetSdkVersion, String callingPackage) throws Throwable {
        int callingUid;
        SyncManager syncManager;
        int callingUid2 = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        int callingUserId = UserHandle.getCallingUserId();
        ObserverCollector collector = new ObserverCollector();
        ArrayMap<Pair<String, Integer>, String> validatedProviders = new ArrayMap<>();
        for (Uri uri : uris) {
            int resolvedUserId = handleIncomingUser(uri, callingPid, callingUid2, 2, true, userId);
            Pair<String, Integer> provider = Pair.create(uri.getAuthority(), Integer.valueOf(resolvedUserId));
            if (!validatedProviders.containsKey(provider)) {
                String msg = ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).checkContentProviderAccess(uri.getAuthority(), resolvedUserId);
                if (msg != null) {
                    if (targetSdkVersion >= 26) {
                        throw new SecurityException(msg);
                    }
                    if (!msg.startsWith("Failed to find provider")) {
                        Log.w(TAG, "Ignoring notify for " + uri + " from " + callingUid2 + ": " + msg);
                    }
                }
                String packageName = getProviderPackageName(uri, resolvedUserId);
                validatedProviders.put(provider, packageName);
            }
            synchronized (this.mRootNode) {
                int segmentCount = ObserverNode.countUriSegments(uri);
                this.mRootNode.collectObserversLocked(uri, segmentCount, 0, observer, observerWantsSelfNotifications, flags, resolvedUserId, collector);
            }
        }
        long token = clearCallingIdentity();
        try {
            collector.dispatch();
            int i = 0;
            while (i < validatedProviders.size()) {
                String authority = (String) validatedProviders.keyAt(i).first;
                int resolvedUserId2 = ((Integer) validatedProviders.keyAt(i).second).intValue();
                String packageName2 = validatedProviders.valueAt(i);
                if ((flags & 1) == 0 || (syncManager = getSyncManager()) == null) {
                    callingUid = callingUid2;
                } else {
                    callingUid = callingUid2;
                    try {
                        syncManager.scheduleLocalSync(null, callingUserId, callingUid2, authority, getSyncExemptionForCaller(callingUid2), callingUid, callingPid, callingPackage);
                    } catch (Throwable th) {
                        th = th;
                        Binder.restoreCallingIdentity(token);
                        throw th;
                    }
                }
                synchronized (this.mCache) {
                    for (Uri uri2 : uris) {
                        if (Objects.equals(uri2.getAuthority(), authority)) {
                            invalidateCacheLocked(resolvedUserId2, packageName2, uri2);
                        }
                    }
                }
                i++;
                validatedProviders = validatedProviders;
                callingUid2 = callingUid;
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private int checkUriPermission(Uri uri, int pid, int uid, int modeFlags, int userHandle) {
        try {
            return ActivityManager.getService().checkUriPermission(uri, pid, uid, modeFlags, userHandle, (IBinder) null);
        } catch (RemoteException e) {
            return -1;
        }
    }

    public static class ObserverCollector {
        private final ArrayMap<Key, List<Uri>> collected = new ArrayMap<>();

        /* JADX INFO: Access modifiers changed from: private */
        static class Key {
            final int flags;
            final IContentObserver observer;
            final boolean selfChange;
            final int uid;
            final int userId;

            Key(IContentObserver observer, int uid, boolean selfChange, int flags, int userId) {
                this.observer = observer;
                this.uid = uid;
                this.selfChange = selfChange;
                this.flags = flags;
                this.userId = userId;
            }

            public boolean equals(Object o) {
                if (!(o instanceof Key)) {
                    return false;
                }
                Key other = (Key) o;
                return Objects.equals(this.observer, other.observer) && this.uid == other.uid && this.selfChange == other.selfChange && this.flags == other.flags && this.userId == other.userId;
            }

            public int hashCode() {
                return Objects.hash(this.observer, Integer.valueOf(this.uid), Boolean.valueOf(this.selfChange), Integer.valueOf(this.flags), Integer.valueOf(this.userId));
            }
        }

        private int modifyFlags(Uri uri, int flags) {
            if (uri == null || !ContentService.mUriWhiteList.contains(uri.toString())) {
                return flags;
            }
            int realFlags = flags | 32768;
            Slog.i(ContentService.TAG, "modify flags for uri: " + uri);
            return realFlags;
        }

        public void collect(IContentObserver observer, int uid, boolean selfChange, Uri uri, int flags, int userId) {
            Key key = new Key(observer, uid, selfChange, modifyFlags(uri, flags), userId);
            List<Uri> value = this.collected.get(key);
            if (value == null) {
                value = new ArrayList();
                this.collected.put(key, value);
            }
            value.add(uri);
        }

        public void dispatch() {
            for (int i = 0; i < this.collected.size(); i++) {
                final Key key = this.collected.keyAt(i);
                final List<Uri> value = this.collected.valueAt(i);
                Runnable task = new Runnable() { // from class: com.android.server.content.-$$Lambda$ContentService$ObserverCollector$U_N0n8bSqn83QF2baB67wvMEADg
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContentService.ObserverCollector.Key key2 = key;
                        List list = value;
                        key2.observer.onChangeEtc(key2.selfChange, (Uri[]) list.toArray(new Uri[list.size()]), key2.flags, key2.userId);
                    }
                };
                boolean noDelay = (key.flags & 32768) != 0;
                int procState = ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).getUidProcessState(key.uid);
                if (procState <= 6 || noDelay) {
                    task.run();
                } else {
                    BackgroundThread.getHandler().postDelayed(task, 10000L);
                }
            }
        }
    }

    public void requestSync(Account account, String authority, Bundle extras, String callingPackage) {
        Bundle.setDefusable(extras, true);
        ContentResolver.validateSyncExtrasBundle(extras);
        int userId = UserHandle.getCallingUserId();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        validateExtras(callingUid, extras);
        int syncExemption = getSyncExemptionAndCleanUpExtrasForCaller(callingUid, extras);
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null) {
                syncManager.scheduleSync(account, userId, callingUid, authority, extras, -2, syncExemption, callingUid, callingPid, callingPackage);
            }
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public void sync(SyncRequest request, String callingPackage) throws Throwable {
        syncAsUser(request, UserHandle.getCallingUserId(), callingPackage);
    }

    private long clampPeriod(long period) {
        long minPeriod = JobInfo.getMinPeriodMillis() / 1000;
        if (period < minPeriod) {
            Slog.w(TAG, "Requested poll frequency of " + period + " seconds being rounded up to " + minPeriod + "s.");
            return minPeriod;
        }
        return period;
    }

    public void syncAsUser(SyncRequest request, int userId, String callingPackage) throws Throwable {
        enforceCrossUserPermission(userId, "no permission to request sync as user: " + userId);
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        Bundle extras = request.getBundle();
        validateExtras(callingUid, extras);
        int syncExemption = getSyncExemptionAndCleanUpExtrasForCaller(callingUid, extras);
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager == null) {
                restoreCallingIdentity(identityToken);
                return;
            }
            long flextime = request.getSyncFlexTime();
            long runAtTime = request.getSyncRunTime();
            if (request.isPeriodic()) {
                try {
                    this.mContext.enforceCallingOrSelfPermission("android.permission.WRITE_SYNC_SETTINGS", "no permission to write the sync settings");
                    SyncStorageEngine.EndPoint info = new SyncStorageEngine.EndPoint(request.getAccount(), request.getProvider(), userId);
                    getSyncManager().updateOrAddPeriodicSync(info, clampPeriod(runAtTime), flextime, extras);
                } catch (Throwable th) {
                    th = th;
                }
            } else {
                try {
                    syncManager.scheduleSync(request.getAccount(), userId, callingUid, request.getProvider(), extras, -2, syncExemption, callingUid, callingPid, callingPackage);
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            restoreCallingIdentity(identityToken);
            return;
        } catch (Throwable th3) {
            th = th3;
        }
        restoreCallingIdentity(identityToken);
        throw th;
    }

    public void cancelSync(Account account, String authority, ComponentName cname) {
        cancelSyncAsUser(account, authority, cname, UserHandle.getCallingUserId());
    }

    public void cancelSyncAsUser(Account account, String authority, ComponentName cname, int userId) {
        if (authority != null && authority.length() == 0) {
            throw new IllegalArgumentException("Authority must be non-empty");
        }
        enforceCrossUserPermission(userId, "no permission to modify the sync settings for user " + userId);
        long identityToken = clearCallingIdentity();
        if (cname != null) {
            Slog.e(TAG, "cname not null.");
            return;
        }
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null) {
                SyncStorageEngine.EndPoint info = new SyncStorageEngine.EndPoint(account, authority, userId);
                syncManager.clearScheduledSyncOperations(info);
                syncManager.cancelActiveSync(info, null, "API");
            }
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public void cancelRequest(SyncRequest request) {
        SyncManager syncManager = getSyncManager();
        if (syncManager == null) {
            return;
        }
        int userId = UserHandle.getCallingUserId();
        int callingUid = Binder.getCallingUid();
        if (request.isPeriodic()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.WRITE_SYNC_SETTINGS", "no permission to write the sync settings");
        }
        Bundle extras = new Bundle(request.getBundle());
        validateExtras(callingUid, extras);
        long identityToken = clearCallingIdentity();
        try {
            Account account = request.getAccount();
            String provider = request.getProvider();
            SyncStorageEngine.EndPoint info = new SyncStorageEngine.EndPoint(account, provider, userId);
            if (request.isPeriodic()) {
                getSyncManager().removePeriodicSync(info, extras, "cancelRequest() by uid=" + callingUid);
            }
            syncManager.cancelScheduledSyncOperation(info, extras);
            syncManager.cancelActiveSync(info, extras, "API");
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public SyncAdapterType[] getSyncAdapterTypes() {
        return getSyncAdapterTypesAsUser(UserHandle.getCallingUserId());
    }

    public SyncAdapterType[] getSyncAdapterTypesAsUser(int userId) {
        enforceCrossUserPermission(userId, "no permission to read sync settings for user " + userId);
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            return syncManager.getSyncAdapterTypes(userId);
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    /* JADX INFO: renamed from: getSyncAdapterPackagesForAuthorityAsUser, reason: merged with bridge method [inline-methods] */
    public String[] lambda$new$0$ContentService(String authority, int userId) {
        enforceCrossUserPermission(userId, "no permission to read sync settings for user " + userId);
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            return syncManager.getSyncAdapterPackagesForAuthorityAsUser(authority, userId);
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public boolean getSyncAutomatically(Account account, String providerName) {
        return getSyncAutomaticallyAsUser(account, providerName, UserHandle.getCallingUserId());
    }

    public boolean getSyncAutomaticallyAsUser(Account account, String providerName, int userId) {
        enforceCrossUserPermission(userId, "no permission to read the sync settings for user " + userId);
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_SYNC_SETTINGS", "no permission to read the sync settings");
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null) {
                return syncManager.getSyncStorageEngine().getSyncAutomatically(account, userId, providerName);
            }
            return false;
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public void setSyncAutomatically(Account account, String providerName, boolean sync) {
        setSyncAutomaticallyAsUser(account, providerName, sync, UserHandle.getCallingUserId());
    }

    public void setSyncAutomaticallyAsUser(Account account, String providerName, boolean sync, int userId) {
        if (TextUtils.isEmpty(providerName)) {
            throw new IllegalArgumentException("Authority must be non-empty");
        }
        this.mContext.enforceCallingOrSelfPermission("android.permission.WRITE_SYNC_SETTINGS", "no permission to write the sync settings");
        enforceCrossUserPermission(userId, "no permission to modify the sync settings for user " + userId);
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        int syncExemptionFlag = getSyncExemptionForCaller(callingUid);
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null) {
                syncManager.getSyncStorageEngine().setSyncAutomatically(account, userId, providerName, sync, syncExemptionFlag, callingUid, callingPid);
            }
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public void addPeriodicSync(Account account, String authority, Bundle extras, long pollFrequency) {
        Bundle.setDefusable(extras, true);
        if (account == null) {
            throw new IllegalArgumentException("Account must not be null");
        }
        if (TextUtils.isEmpty(authority)) {
            throw new IllegalArgumentException("Authority must not be empty.");
        }
        this.mContext.enforceCallingOrSelfPermission("android.permission.WRITE_SYNC_SETTINGS", "no permission to write the sync settings");
        validateExtras(Binder.getCallingUid(), extras);
        int userId = UserHandle.getCallingUserId();
        long pollFrequency2 = clampPeriod(pollFrequency);
        long defaultFlex = SyncStorageEngine.calculateDefaultFlexTime(pollFrequency2);
        long identityToken = clearCallingIdentity();
        try {
            SyncStorageEngine.EndPoint info = new SyncStorageEngine.EndPoint(account, authority, userId);
            getSyncManager().updateOrAddPeriodicSync(info, pollFrequency2, defaultFlex, extras);
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public void removePeriodicSync(Account account, String authority, Bundle extras) {
        Bundle.setDefusable(extras, true);
        if (account == null) {
            throw new IllegalArgumentException("Account must not be null");
        }
        if (TextUtils.isEmpty(authority)) {
            throw new IllegalArgumentException("Authority must not be empty");
        }
        this.mContext.enforceCallingOrSelfPermission("android.permission.WRITE_SYNC_SETTINGS", "no permission to write the sync settings");
        validateExtras(Binder.getCallingUid(), extras);
        int callingUid = Binder.getCallingUid();
        int userId = UserHandle.getCallingUserId();
        long identityToken = clearCallingIdentity();
        try {
            getSyncManager().removePeriodicSync(new SyncStorageEngine.EndPoint(account, authority, userId), extras, "removePeriodicSync() by uid=" + callingUid);
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public List<PeriodicSync> getPeriodicSyncs(Account account, String providerName, ComponentName cname) {
        if (account == null) {
            throw new IllegalArgumentException("Account must not be null");
        }
        if (TextUtils.isEmpty(providerName)) {
            throw new IllegalArgumentException("Authority must not be empty");
        }
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_SYNC_SETTINGS", "no permission to read the sync settings");
        int userId = UserHandle.getCallingUserId();
        long identityToken = clearCallingIdentity();
        try {
            return getSyncManager().getPeriodicSyncs(new SyncStorageEngine.EndPoint(account, providerName, userId));
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public int getIsSyncable(Account account, String providerName) {
        return getIsSyncableAsUser(account, providerName, UserHandle.getCallingUserId());
    }

    public int getIsSyncableAsUser(Account account, String providerName, int userId) {
        enforceCrossUserPermission(userId, "no permission to read the sync settings for user " + userId);
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_SYNC_SETTINGS", "no permission to read the sync settings");
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null) {
                return syncManager.computeSyncable(account, userId, providerName, false);
            }
            return -1;
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public void setIsSyncable(Account account, String providerName, int syncable) {
        setIsSyncableAsUser(account, providerName, syncable, UserHandle.getCallingUserId());
    }

    public void setIsSyncableAsUser(Account account, String providerName, int syncable, int userId) {
        if (TextUtils.isEmpty(providerName)) {
            throw new IllegalArgumentException("Authority must not be empty");
        }
        enforceCrossUserPermission(userId, "no permission to set the sync settings for user " + userId);
        this.mContext.enforceCallingOrSelfPermission("android.permission.WRITE_SYNC_SETTINGS", "no permission to write the sync settings");
        int syncable2 = normalizeSyncable(syncable);
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null) {
                syncManager.getSyncStorageEngine().setIsSyncable(account, userId, providerName, syncable2, callingUid, callingPid);
            }
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public boolean getMasterSyncAutomatically() {
        return getMasterSyncAutomaticallyAsUser(UserHandle.getCallingUserId());
    }

    public boolean getMasterSyncAutomaticallyAsUser(int userId) {
        enforceCrossUserPermission(userId, "no permission to read the sync settings for user " + userId);
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_SYNC_SETTINGS", "no permission to read the sync settings");
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null) {
                return syncManager.getSyncStorageEngine().getMasterSyncAutomatically(userId);
            }
            return false;
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public void setMasterSyncAutomatically(boolean flag) {
        setMasterSyncAutomaticallyAsUser(flag, UserHandle.getCallingUserId());
    }

    public void setMasterSyncAutomaticallyAsUser(boolean flag, int userId) {
        enforceCrossUserPermission(userId, "no permission to set the sync status for user " + userId);
        this.mContext.enforceCallingOrSelfPermission("android.permission.WRITE_SYNC_SETTINGS", "no permission to write the sync settings");
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null) {
                syncManager.getSyncStorageEngine().setMasterSyncAutomatically(flag, userId, getSyncExemptionForCaller(callingUid), callingUid, callingPid);
            }
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public boolean isSyncActive(Account account, String authority, ComponentName cname) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_SYNC_STATS", "no permission to read the sync stats");
        int userId = UserHandle.getCallingUserId();
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null) {
                return syncManager.getSyncStorageEngine().isSyncActive(new SyncStorageEngine.EndPoint(account, authority, userId));
            }
            return false;
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public List<SyncInfo> getCurrentSyncs() {
        return getCurrentSyncsAsUser(UserHandle.getCallingUserId());
    }

    public List<SyncInfo> getCurrentSyncsAsUser(int userId) {
        enforceCrossUserPermission(userId, "no permission to read the sync settings for user " + userId);
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_SYNC_STATS", "no permission to read the sync stats");
        boolean canAccessAccounts = this.mContext.checkCallingOrSelfPermission("android.permission.GET_ACCOUNTS") == 0;
        long identityToken = clearCallingIdentity();
        try {
            return getSyncManager().getSyncStorageEngine().getCurrentSyncsCopy(userId, canAccessAccounts);
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public SyncStatusInfo getSyncStatus(Account account, String authority, ComponentName cname) {
        return getSyncStatusAsUser(account, authority, cname, UserHandle.getCallingUserId());
    }

    public SyncStatusInfo getSyncStatusAsUser(Account account, String authority, ComponentName cname, int userId) {
        if (TextUtils.isEmpty(authority)) {
            throw new IllegalArgumentException("Authority must not be empty");
        }
        enforceCrossUserPermission(userId, "no permission to read the sync stats for user " + userId);
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_SYNC_STATS", "no permission to read the sync stats");
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null) {
                if (account != null && authority != null) {
                    SyncStorageEngine.EndPoint info = new SyncStorageEngine.EndPoint(account, authority, userId);
                    SyncStatusInfo statusByAuthority = syncManager.getSyncStorageEngine().getStatusByAuthority(info);
                    restoreCallingIdentity(identityToken);
                    return statusByAuthority;
                }
                throw new IllegalArgumentException("Must call sync status with valid authority");
            }
            restoreCallingIdentity(identityToken);
            return null;
        } catch (Throwable th) {
            restoreCallingIdentity(identityToken);
            throw th;
        }
    }

    public boolean isSyncPending(Account account, String authority, ComponentName cname) {
        return isSyncPendingAsUser(account, authority, cname, UserHandle.getCallingUserId());
    }

    public boolean isSyncPendingAsUser(Account account, String authority, ComponentName cname, int userId) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_SYNC_STATS", "no permission to read the sync stats");
        enforceCrossUserPermission(userId, "no permission to retrieve the sync settings for user " + userId);
        long identityToken = clearCallingIdentity();
        SyncManager syncManager = getSyncManager();
        if (syncManager == null) {
            return false;
        }
        try {
            if (account != null && authority != null) {
                SyncStorageEngine.EndPoint info = new SyncStorageEngine.EndPoint(account, authority, userId);
                boolean zIsSyncPending = syncManager.getSyncStorageEngine().isSyncPending(info);
                restoreCallingIdentity(identityToken);
                return zIsSyncPending;
            }
            throw new IllegalArgumentException("Invalid authority specified");
        } catch (Throwable th) {
            restoreCallingIdentity(identityToken);
            throw th;
        }
    }

    public void addStatusChangeListener(int mask, ISyncStatusObserver callback) {
        int callingUid = Binder.getCallingUid();
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null && callback != null) {
                syncManager.getSyncStorageEngine().addStatusChangeListener(mask, UserHandle.getUserId(callingUid), callback);
            }
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    public void removeStatusChangeListener(ISyncStatusObserver callback) {
        long identityToken = clearCallingIdentity();
        try {
            SyncManager syncManager = getSyncManager();
            if (syncManager != null && callback != null) {
                syncManager.getSyncStorageEngine().removeStatusChangeListener(callback);
            }
        } finally {
            restoreCallingIdentity(identityToken);
        }
    }

    private String getProviderPackageName(Uri uri, int userId) {
        ProviderInfo pi = this.mContext.getPackageManager().resolveContentProviderAsUser(uri.getAuthority(), 0, userId);
        if (pi != null) {
            return pi.packageName;
        }
        return null;
    }

    private ArrayMap<Pair<String, Uri>, Bundle> findOrCreateCacheLocked(int userId, String providerPackageName) {
        ArrayMap<String, ArrayMap<Pair<String, Uri>, Bundle>> userCache = this.mCache.get(userId);
        if (userCache == null) {
            userCache = new ArrayMap<>();
            this.mCache.put(userId, userCache);
        }
        ArrayMap<Pair<String, Uri>, Bundle> packageCache = userCache.get(providerPackageName);
        if (packageCache == null) {
            ArrayMap<Pair<String, Uri>, Bundle> packageCache2 = new ArrayMap<>();
            userCache.put(providerPackageName, packageCache2);
            return packageCache2;
        }
        return packageCache;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateCacheLocked(int userId, String providerPackageName, Uri uri) {
        ArrayMap<Pair<String, Uri>, Bundle> packageCache;
        ArrayMap<String, ArrayMap<Pair<String, Uri>, Bundle>> userCache = this.mCache.get(userId);
        if (userCache == null || (packageCache = userCache.get(providerPackageName)) == null) {
            return;
        }
        if (uri != null) {
            int i = 0;
            while (i < packageCache.size()) {
                Pair<String, Uri> key = packageCache.keyAt(i);
                if (key.second != null && ((Uri) key.second).toString().startsWith(uri.toString())) {
                    packageCache.removeAt(i);
                } else {
                    i++;
                }
            }
            return;
        }
        packageCache.clear();
    }

    public void putCache(String packageName, Uri key, Bundle value, int userId) {
        Bundle.setDefusable(value, true);
        enforceNonFullCrossUserPermission(userId, TAG);
        this.mContext.enforceCallingOrSelfPermission("android.permission.CACHE_CONTENT", TAG);
        ((AppOpsManager) this.mContext.getSystemService(AppOpsManager.class)).checkPackage(Binder.getCallingUid(), packageName);
        String providerPackageName = getProviderPackageName(key, userId);
        Pair<String, Uri> fullKey = Pair.create(packageName, key);
        synchronized (this.mCache) {
            ArrayMap<Pair<String, Uri>, Bundle> cache = findOrCreateCacheLocked(userId, providerPackageName);
            if (value != null) {
                cache.put(fullKey, value);
            } else {
                cache.remove(fullKey);
            }
        }
    }

    public Bundle getCache(String packageName, Uri key, int userId) {
        Bundle bundle;
        enforceNonFullCrossUserPermission(userId, TAG);
        this.mContext.enforceCallingOrSelfPermission("android.permission.CACHE_CONTENT", TAG);
        ((AppOpsManager) this.mContext.getSystemService(AppOpsManager.class)).checkPackage(Binder.getCallingUid(), packageName);
        String providerPackageName = getProviderPackageName(key, userId);
        Pair<String, Uri> fullKey = Pair.create(packageName, key);
        synchronized (this.mCache) {
            ArrayMap<Pair<String, Uri>, Bundle> cache = findOrCreateCacheLocked(userId, providerPackageName);
            bundle = cache.get(fullKey);
        }
        return bundle;
    }

    private int handleIncomingUser(Uri uri, int pid, int uid, int modeFlags, boolean allowNonFull, int userId) {
        if (userId == -2) {
            userId = ActivityManager.getCurrentUser();
        }
        if (userId == -1) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "No access to " + uri);
        } else {
            if (userId < 0) {
                throw new IllegalArgumentException("Invalid user: " + userId);
            }
            if (userId != UserHandle.getCallingUserId() && checkUriPermission(uri, pid, uid, modeFlags, userId) != 0) {
                boolean allow = false;
                if (this.mContext.checkCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL") == 0) {
                    allow = true;
                } else if (allowNonFull && this.mContext.checkCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS") == 0) {
                    allow = true;
                }
                if (!allow) {
                    String permissions = allowNonFull ? "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS" : "android.permission.INTERACT_ACROSS_USERS_FULL";
                    throw new SecurityException("No access to " + uri + ": neither user " + uid + " nor current process has " + permissions);
                }
            }
        }
        return userId;
    }

    private void enforceCrossUserPermission(int userHandle, String message) {
        int callingUser = UserHandle.getCallingUserId();
        if (callingUser != userHandle) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", message);
        }
    }

    private void enforceNonFullCrossUserPermission(int userHandle, String message) {
        int callingUser = UserHandle.getCallingUserId();
        if (callingUser == userHandle) {
            return;
        }
        int interactAcrossUsersState = this.mContext.checkCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS");
        if (interactAcrossUsersState == 0) {
            return;
        }
        this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", message);
    }

    private static int normalizeSyncable(int syncable) {
        if (syncable > 0) {
            return 1;
        }
        if (syncable == 0) {
            return 0;
        }
        return -2;
    }

    private void validateExtras(int callingUid, Bundle extras) {
        if (extras.containsKey("v_exemption") && callingUid != 0 && callingUid != 1000 && callingUid != 2000) {
            Log.w(TAG, "Invalid extras specified. requestsync -f/-F needs to run on 'adb shell'");
            throw new SecurityException("Invalid extras specified.");
        }
    }

    private int getSyncExemptionForCaller(int callingUid) {
        return getSyncExemptionAndCleanUpExtrasForCaller(callingUid, null);
    }

    private int getSyncExemptionAndCleanUpExtrasForCaller(int callingUid, Bundle extras) {
        if (extras != null) {
            int exemption = extras.getInt("v_exemption", -1);
            extras.remove("v_exemption");
            if (exemption != -1) {
                return exemption;
            }
        }
        ActivityManagerInternal ami = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        if (ami == null) {
            return 0;
        }
        int procState = ami.getUidProcessState(callingUid);
        boolean isUidActive = ami.isUidActive(callingUid);
        if (procState <= 2 || procState == 3) {
            return 2;
        }
        if (procState > 6 && !isUidActive) {
            return 0;
        }
        return 1;
    }

    public static final class ObserverNode {
        private String mName;
        private ArrayList<ObserverNode> mChildren = new ArrayList<>();
        private ArrayList<ObserverEntry> mObservers = new ArrayList<>();

        private class ObserverEntry implements IBinder.DeathRecipient {
            public final boolean notifyForDescendants;
            public final IContentObserver observer;
            private final Object observersLock;
            public final int pid;
            public final int uid;
            private final int userHandle;

            public ObserverEntry(IContentObserver o, boolean n, Object observersLock, int _uid, int _pid, int _userHandle, Uri uri) {
                boolean alreadyDetected;
                this.observersLock = observersLock;
                this.observer = o;
                this.uid = _uid;
                this.pid = _pid;
                this.userHandle = _userHandle;
                this.notifyForDescendants = n;
                int entries = ContentService.sObserverDeathDispatcher.linkToDeath(this.observer, this);
                if (entries == -1) {
                    binderDied();
                    return;
                }
                if (entries == 1000) {
                    synchronized (ContentService.sObserverLeakDetectedUid) {
                        alreadyDetected = ContentService.sObserverLeakDetectedUid.contains(Integer.valueOf(this.uid));
                        if (!alreadyDetected) {
                            ContentService.sObserverLeakDetectedUid.add(Integer.valueOf(this.uid));
                        }
                    }
                    if (!alreadyDetected) {
                        String caller = null;
                        try {
                            caller = (String) ArrayUtils.firstOrNull(AppGlobals.getPackageManager().getPackagesForUid(this.uid));
                        } catch (RemoteException e) {
                        }
                        Slog.wtf(ContentService.TAG, "Observer registered too many times. Leak? cpid=" + this.pid + " cuid=" + this.uid + " cpkg=" + caller + " url=" + uri);
                    }
                }
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                synchronized (this.observersLock) {
                    ObserverNode.this.removeObserverLocked(this.observer);
                }
            }

            public void dumpLocked(FileDescriptor fd, PrintWriter pw, String[] args, String name, String prefix, SparseIntArray pidCounts) {
                int i = this.pid;
                pidCounts.put(i, pidCounts.get(i) + 1);
                pw.print(prefix);
                pw.print(name);
                pw.print(": pid=");
                pw.print(this.pid);
                pw.print(" uid=");
                pw.print(this.uid);
                pw.print(" user=");
                pw.print(this.userHandle);
                pw.print(" target=");
                IContentObserver iContentObserver = this.observer;
                pw.println(Integer.toHexString(System.identityHashCode(iContentObserver != null ? iContentObserver.asBinder() : null)));
            }
        }

        public ObserverNode(String name) {
            this.mName = name;
        }

        public void dumpLocked(FileDescriptor fd, PrintWriter pw, String[] args, String name, String prefix, int[] counts, SparseIntArray pidCounts) {
            String innerName;
            String innerName2 = null;
            if (this.mObservers.size() > 0) {
                innerName2 = "".equals(name) ? this.mName : name + SliceClientPermissions.SliceAuthority.DELIMITER + this.mName;
                for (int i = 0; i < this.mObservers.size(); i++) {
                    counts[1] = counts[1] + 1;
                    this.mObservers.get(i).dumpLocked(fd, pw, args, innerName2, prefix, pidCounts);
                }
            }
            if (this.mChildren.size() > 0) {
                if (innerName2 != null) {
                    innerName = innerName2;
                } else if ("".equals(name)) {
                    String innerName3 = this.mName;
                    innerName = innerName3;
                } else {
                    String innerName4 = name + SliceClientPermissions.SliceAuthority.DELIMITER + this.mName;
                    innerName = innerName4;
                }
                for (int i2 = 0; i2 < this.mChildren.size(); i2++) {
                    counts[0] = counts[0] + 1;
                    this.mChildren.get(i2).dumpLocked(fd, pw, args, innerName, prefix, counts, pidCounts);
                }
            }
        }

        public static String getUriSegment(Uri uri, int index) {
            if (uri != null) {
                if (index == 0) {
                    return uri.getAuthority();
                }
                return uri.getPathSegments().get(index - 1);
            }
            return null;
        }

        public static int countUriSegments(Uri uri) {
            if (uri == null) {
                return 0;
            }
            return uri.getPathSegments().size() + 1;
        }

        public void addObserverLocked(Uri uri, IContentObserver observer, boolean notifyForDescendants, Object observersLock, int uid, int pid, int userHandle) {
            addObserverLocked(uri, 0, observer, notifyForDescendants, observersLock, uid, pid, userHandle);
        }

        private void addObserverLocked(Uri uri, int index, IContentObserver observer, boolean notifyForDescendants, Object observersLock, int uid, int pid, int userHandle) {
            if (index == countUriSegments(uri)) {
                this.mObservers.add(new ObserverEntry(observer, notifyForDescendants, observersLock, uid, pid, userHandle, uri));
                return;
            }
            String segment = getUriSegment(uri, index);
            if (segment == null) {
                throw new IllegalArgumentException("Invalid Uri (" + uri + ") used for observer");
            }
            int N = this.mChildren.size();
            for (int i = 0; i < N; i++) {
                ObserverNode node = this.mChildren.get(i);
                if (node.mName.equals(segment)) {
                    node.addObserverLocked(uri, index + 1, observer, notifyForDescendants, observersLock, uid, pid, userHandle);
                    return;
                }
            }
            ObserverNode node2 = new ObserverNode(segment);
            this.mChildren.add(node2);
            node2.addObserverLocked(uri, index + 1, observer, notifyForDescendants, observersLock, uid, pid, userHandle);
        }

        public boolean removeObserverLocked(IContentObserver observer) {
            int size = this.mChildren.size();
            int i = 0;
            while (i < size) {
                boolean empty = this.mChildren.get(i).removeObserverLocked(observer);
                if (empty) {
                    this.mChildren.remove(i);
                    i--;
                    size--;
                }
                i++;
            }
            IBinder observerBinder = observer.asBinder();
            int size2 = this.mObservers.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ObserverEntry entry = this.mObservers.get(i2);
                if (entry.observer.asBinder() == observerBinder) {
                    this.mObservers.remove(i2);
                    ContentService.sObserverDeathDispatcher.unlinkToDeath(observer, entry);
                    break;
                }
            }
            return this.mChildren.size() == 0 && this.mObservers.size() == 0;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x004f  */
        private void collectMyObserversLocked(Uri uri, boolean leaf, IContentObserver observer, boolean observerWantsSelfNotifications, int flags, int targetUserHandle, ObserverCollector collector) {
            int N = this.mObservers.size();
            IBinder observerBinder = observer == null ? null : observer.asBinder();
            for (int i = 0; i < N; i++) {
                ObserverEntry entry = this.mObservers.get(i);
                boolean selfChange = entry.observer.asBinder() == observerBinder;
                if ((!selfChange || observerWantsSelfNotifications) && (targetUserHandle == -1 || entry.userHandle == -1 || targetUserHandle == entry.userHandle)) {
                    if (leaf) {
                        if ((flags & 2) == 0 || !entry.notifyForDescendants) {
                            collector.collect(entry.observer, entry.uid, selfChange, uri, flags, targetUserHandle);
                        }
                    } else if (entry.notifyForDescendants) {
                        collector.collect(entry.observer, entry.uid, selfChange, uri, flags, targetUserHandle);
                    }
                }
            }
        }

        public void collectObserversLocked(Uri uri, int index, IContentObserver observer, boolean observerWantsSelfNotifications, int flags, int targetUserHandle, ObserverCollector collector) {
            collectObserversLocked(uri, countUriSegments(uri), index, observer, observerWantsSelfNotifications, flags, targetUserHandle, collector);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0046  */
        /* JADX WARN: Code duplicated, block: B:15:0x0058  */
        /* JADX WARN: Code duplicated, block: B:20:0x0078 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:23:0x006f A[SYNTHETIC] */
        public void collectObserversLocked(Uri uri, int segmentCount, int index, IContentObserver observer, boolean observerWantsSelfNotifications, int flags, int targetUserHandle, ObserverCollector collector) {
            String segment;
            int N;
            int i;
            ObserverNode node;
            int i2 = index;
            if (i2 >= segmentCount) {
                collectMyObserversLocked(uri, true, observer, observerWantsSelfNotifications, flags, targetUserHandle, collector);
            } else {
                if (i2 < segmentCount) {
                    String segment2 = getUriSegment(uri, i2);
                    collectMyObserversLocked(uri, false, observer, observerWantsSelfNotifications, flags, targetUserHandle, collector);
                    segment = segment2;
                }
                N = this.mChildren.size();
                i = 0;
                while (i < N) {
                    node = this.mChildren.get(i);
                    if (segment != null || node.mName.equals(segment)) {
                        node.collectObserversLocked(uri, segmentCount, i2 + 1, observer, observerWantsSelfNotifications, flags, targetUserHandle, collector);
                        if (segment != null) {
                            return;
                        }
                    }
                    i++;
                    i2 = index;
                }
            }
            segment = null;
            N = this.mChildren.size();
            i = 0;
            while (i < N) {
                node = this.mChildren.get(i);
                if (segment != null) {
                    node.collectObserversLocked(uri, segmentCount, i2 + 1, observer, observerWantsSelfNotifications, flags, targetUserHandle, collector);
                    if (segment != null) {
                        return;
                    }
                } else {
                    node.collectObserversLocked(uri, segmentCount, i2 + 1, observer, observerWantsSelfNotifications, flags, targetUserHandle, collector);
                    if (segment != null) {
                        return;
                    }
                }
                i++;
                i2 = index;
            }
        }
    }

    private void enforceShell(String method) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 2000 && callingUid != 0) {
            throw new SecurityException("Non-shell user attempted to call " + method);
        }
    }

    public void resetTodayStats() {
        enforceShell("resetTodayStats");
        if (this.mSyncManager != null) {
            long token = Binder.clearCallingIdentity();
            try {
                this.mSyncManager.resetTodayStats();
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }
    }

    public void onDbCorruption(String tag, String message, String stacktrace) {
        Slog.e(tag, message);
        Slog.e(tag, "at " + stacktrace);
        Slog.wtf(tag, message);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new ContentShellCommand(this).exec(this, in, out, err, args, callback, resultReceiver);
    }
}
