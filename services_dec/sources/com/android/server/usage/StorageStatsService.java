package com.android.server.usage;

import android.app.AppOpsManager;
import android.app.usage.ExternalStorageStats;
import android.app.usage.IStorageStatsManager;
import android.app.usage.StorageStats;
import android.app.usage.UsageStatsManagerInternal;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.content.pm.ParceledListSlice;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelableException;
import android.os.StatFs;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.CrateInfo;
import android.os.storage.CrateMetadata;
import android.os.storage.StorageEventListener;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.DataUnit;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseLongArray;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.Preconditions;
import com.android.server.IoThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.pm.Installer;
import com.android.server.pm.PackageManagerService;
import com.android.server.storage.CacheQuotaStrategy;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class StorageStatsService extends IStorageStatsManager.Stub {
    private static final long DEFAULT_QUOTA = DataUnit.MEBIBYTES.toBytes(64);
    private static final long DELAY_IN_MILLIS = 30000;
    private static final String PROP_DISABLE_QUOTA = "fw.disable_quota";
    private static final String PROP_STORAGE_CRATES = "fw.storage_crates";
    private static final String PROP_VERIFY_STORAGE = "fw.verify_storage";
    private static final String TAG = "StorageStatsService";
    private final AppOpsManager mAppOps;
    private final Context mContext;
    private final H mHandler;
    private final Installer mInstaller;
    private final PackageManager mPackage;
    private final StorageManager mStorage;
    private final UserManager mUser;
    private final CopyOnWriteArrayList<Pair<String, StorageStatsManagerInternal.StorageStatsAugmenter>> mStorageStatsAugmenters = new CopyOnWriteArrayList<>();
    private final ArrayMap<String, SparseLongArray> mCacheQuotas = new ArrayMap<>();

    public static class Lifecycle extends SystemService {
        private StorageStatsService mService;

        public Lifecycle(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [android.os.IBinder, com.android.server.usage.StorageStatsService] */
        @Override // com.android.server.SystemService
        public void onStart() {
            ?? storageStatsService = new StorageStatsService(getContext());
            this.mService = storageStatsService;
            publishBinderService("storagestats", storageStatsService);
        }
    }

    public StorageStatsService(Context context) {
        this.mContext = (Context) Preconditions.checkNotNull(context);
        this.mAppOps = (AppOpsManager) Preconditions.checkNotNull((AppOpsManager) context.getSystemService(AppOpsManager.class));
        this.mUser = (UserManager) Preconditions.checkNotNull((UserManager) context.getSystemService(UserManager.class));
        this.mPackage = (PackageManager) Preconditions.checkNotNull(context.getPackageManager());
        this.mStorage = (StorageManager) Preconditions.checkNotNull((StorageManager) context.getSystemService(StorageManager.class));
        Installer installer = new Installer(context);
        this.mInstaller = installer;
        installer.onStart();
        invalidateMounts();
        H h = new H(IoThread.get().getLooper());
        this.mHandler = h;
        h.sendEmptyMessage(101);
        this.mStorage.registerListener(new StorageEventListener() { // from class: com.android.server.usage.StorageStatsService.1
            public void onVolumeStateChanged(VolumeInfo vol, int oldState, int newState) {
                int i = vol.type;
                if ((i == 0 || i == 1 || i == 2) && newState == 2) {
                    StorageStatsService.this.invalidateMounts();
                }
            }
        });
        LocalServices.addService(StorageStatsManagerInternal.class, new LocalService());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateMounts() {
        try {
            this.mInstaller.invalidateMounts();
        } catch (Installer.InstallerException e) {
            Slog.wtf(TAG, "Failed to invalidate mounts", e);
        }
    }

    private void enforceStatsPermission(int callingUid, String callingPackage) {
        String errMsg = checkStatsPermission(callingUid, callingPackage, true);
        if (errMsg != null) {
            throw new SecurityException(errMsg);
        }
    }

    private String checkStatsPermission(int callingUid, String callingPackage, boolean noteOp) {
        int mode = noteOp ? this.mAppOps.noteOp(43, callingUid, callingPackage) : this.mAppOps.checkOp(43, callingUid, callingPackage);
        if (mode == 0) {
            return null;
        }
        if (mode == 3) {
            if (this.mContext.checkCallingOrSelfPermission("android.permission.PACKAGE_USAGE_STATS") == 0) {
                return null;
            }
            return "Caller does not have android.permission.PACKAGE_USAGE_STATS; callingPackage=" + callingPackage + ", callingUid=" + callingUid;
        }
        return "Package " + callingPackage + " from UID " + callingUid + " blocked by mode " + mode;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public boolean isQuotaSupported(String volumeUuid, String callingPackage) throws ParcelableException {
        try {
            return this.mInstaller.isQuotaSupported(volumeUuid);
        } catch (Installer.InstallerException e) {
            throw new ParcelableException(new IOException(e.getMessage()));
        }
    }

    public boolean isReservedSupported(String volumeUuid, String callingPackage) {
        if (volumeUuid == StorageManager.UUID_PRIVATE_INTERNAL) {
            return SystemProperties.getBoolean("vold.has_reserved", false) || Build.IS_CONTAINER;
        }
        return false;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public long getTotalBytes(String volumeUuid, String callingPackage) throws ParcelableException {
        if (volumeUuid == StorageManager.UUID_PRIVATE_INTERNAL) {
            return FileUtils.roundStorageSize(this.mStorage.getPrimaryStorageSize());
        }
        VolumeInfo vol = this.mStorage.findVolumeByUuid(volumeUuid);
        if (vol == null) {
            throw new ParcelableException(new IOException("Failed to find storage device for UUID " + volumeUuid));
        }
        return FileUtils.roundStorageSize(vol.disk.size);
    }

    public long getFreeBytes(String volumeUuid, String callingPackage) {
        long token = Binder.clearCallingIdentity();
        try {
            try {
                File path = this.mStorage.findPathForUuid(volumeUuid);
                if (!isQuotaSupported(volumeUuid, PackageManagerService.PLATFORM_PACKAGE_NAME)) {
                    long cacheTotal = path.getUsableSpace();
                    Binder.restoreCallingIdentity(token);
                    return cacheTotal;
                }
                long cacheTotal2 = getCacheBytes(volumeUuid, PackageManagerService.PLATFORM_PACKAGE_NAME);
                long cacheReserved = this.mStorage.getStorageCacheBytes(path, 0);
                long cacheClearable = Math.max(0L, cacheTotal2 - cacheReserved);
                long usableSpace = path.getUsableSpace() + cacheClearable;
                Binder.restoreCallingIdentity(token);
                return usableSpace;
            } catch (FileNotFoundException e) {
                throw new ParcelableException(e);
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public long getCacheBytes(String volumeUuid, String callingPackage) throws ParcelableException {
        enforceStatsPermission(Binder.getCallingUid(), callingPackage);
        long cacheBytes = 0;
        for (UserInfo user : this.mUser.getUsers()) {
            StorageStats stats = queryStatsForUser(volumeUuid, user.id, null);
            cacheBytes += stats.cacheBytes;
        }
        return cacheBytes;
    }

    public long getCacheQuotaBytes(String volumeUuid, int uid, String callingPackage) {
        enforceStatsPermission(Binder.getCallingUid(), callingPackage);
        if (this.mCacheQuotas.containsKey(volumeUuid)) {
            SparseLongArray uidMap = this.mCacheQuotas.get(volumeUuid);
            return uidMap.get(uid, DEFAULT_QUOTA);
        }
        return DEFAULT_QUOTA;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public StorageStats queryStatsForPackage(String volumeUuid, final String packageName, final int userId, String callingPackage) throws ParcelableException {
        boolean callerHasStatsPermission;
        final PackageStats stats;
        if (userId != UserHandle.getCallingUserId()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", TAG);
        }
        try {
            ApplicationInfo appInfo = this.mPackage.getApplicationInfoAsUser(packageName, 8192, userId);
            if (Binder.getCallingUid() != appInfo.uid) {
                enforceStatsPermission(Binder.getCallingUid(), callingPackage);
                callerHasStatsPermission = true;
            } else {
                callerHasStatsPermission = checkStatsPermission(Binder.getCallingUid(), callingPackage, false) == null;
            }
            if (ArrayUtils.defeatNullable(this.mPackage.getPackagesForUid(appInfo.uid)).length == 1) {
                return queryStatsForUid(volumeUuid, appInfo.uid, callingPackage);
            }
            int appId = UserHandle.getUserId(appInfo.uid);
            String[] packageNames = {packageName};
            long[] ceDataInodes = new long[1];
            String[] codePaths = new String[0];
            String[] codePaths2 = (!appInfo.isSystemApp() || appInfo.isUpdatedSystemApp()) ? (String[]) ArrayUtils.appendElement(String.class, codePaths, appInfo.getCodePath()) : codePaths;
            PackageStats stats2 = new PackageStats(TAG);
            try {
                final boolean callerHasStatsPermission2 = callerHasStatsPermission;
                try {
                    this.mInstaller.getAppSize(volumeUuid, packageNames, userId, 0, appId, ceDataInodes, codePaths2, stats2);
                    if (volumeUuid == StorageManager.UUID_PRIVATE_INTERNAL) {
                        stats = stats2;
                        forEachStorageStatsAugmenter(new Consumer() { // from class: com.android.server.usage.-$$Lambda$StorageStatsService$wNCqEjBUk3qs1tuYbJHOuDgJ8rk
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                ((StorageStatsManagerInternal.StorageStatsAugmenter) obj).augmentStatsForPackage(stats, packageName, userId, callerHasStatsPermission2);
                            }
                        }, "queryStatsForPackage");
                    } else {
                        stats = stats2;
                    }
                    return translate(stats);
                } catch (Installer.InstallerException e) {
                    e = e;
                    throw new ParcelableException(new IOException(e.getMessage()));
                }
            } catch (Installer.InstallerException e2) {
                e = e2;
            }
        } catch (PackageManager.NameNotFoundException e3) {
            throw new ParcelableException(e3);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public StorageStats queryStatsForUid(String volumeUuid, final int uid, String callingPackage) throws ParcelableException {
        boolean callerHasStatsPermission;
        final PackageStats stats;
        int userId = UserHandle.getUserId(uid);
        int appId = UserHandle.getAppId(uid);
        if (userId != UserHandle.getCallingUserId()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", TAG);
        }
        if (Binder.getCallingUid() != uid) {
            enforceStatsPermission(Binder.getCallingUid(), callingPackage);
            callerHasStatsPermission = true;
        } else {
            callerHasStatsPermission = checkStatsPermission(Binder.getCallingUid(), callingPackage, false) == null;
        }
        String[] packageNames = ArrayUtils.defeatNullable(this.mPackage.getPackagesForUid(uid));
        long[] ceDataInodes = new long[packageNames.length];
        String[] codePaths = new String[0];
        String[] codePaths2 = codePaths;
        for (String str : packageNames) {
            try {
                ApplicationInfo appInfo = this.mPackage.getApplicationInfoAsUser(str, 8192, userId);
                if (!appInfo.isSystemApp() || appInfo.isUpdatedSystemApp()) {
                    codePaths2 = (String[]) ArrayUtils.appendElement(String.class, codePaths2, appInfo.getCodePath());
                }
            } catch (PackageManager.NameNotFoundException e) {
                throw new ParcelableException(e);
            }
        }
        PackageStats stats2 = new PackageStats(TAG);
        try {
            String[] codePaths3 = codePaths2;
            final boolean callerHasStatsPermission2 = callerHasStatsPermission;
            try {
                this.mInstaller.getAppSize(volumeUuid, packageNames, userId, getDefaultFlags(), appId, ceDataInodes, codePaths3, stats2);
                if (!SystemProperties.getBoolean(PROP_VERIFY_STORAGE, false)) {
                    stats = stats2;
                } else {
                    try {
                        PackageStats manualStats = new PackageStats(TAG);
                        this.mInstaller.getAppSize(volumeUuid, packageNames, userId, 0, appId, ceDataInodes, codePaths3, manualStats);
                        stats = stats2;
                        try {
                            checkEquals("UID " + uid, manualStats, stats);
                        } catch (Installer.InstallerException e2) {
                            e = e2;
                            throw new ParcelableException(new IOException(e.getMessage()));
                        }
                    } catch (Installer.InstallerException e3) {
                        e = e3;
                    }
                }
                if (volumeUuid == StorageManager.UUID_PRIVATE_INTERNAL) {
                    forEachStorageStatsAugmenter(new Consumer() { // from class: com.android.server.usage.-$$Lambda$StorageStatsService$tgQ1n6Nzx2HUgCixFqiqtHCcsAo
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ((StorageStatsManagerInternal.StorageStatsAugmenter) obj).augmentStatsForUid(stats, uid, callerHasStatsPermission2);
                        }
                    }, "queryStatsForUid");
                }
                return translate(stats);
            } catch (Installer.InstallerException e4) {
                e = e4;
            }
        } catch (Installer.InstallerException e5) {
            e = e5;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public StorageStats queryStatsForUser(String volumeUuid, int userId, String callingPackage) throws ParcelableException {
        if (userId != UserHandle.getCallingUserId()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", TAG);
        }
        enforceStatsPermission(Binder.getCallingUid(), callingPackage);
        int[] appIds = getAppIds(userId);
        PackageStats stats = new PackageStats(TAG);
        try {
            this.mInstaller.getUserSize(volumeUuid, userId, getDefaultFlags(), appIds, stats);
            if (SystemProperties.getBoolean(PROP_VERIFY_STORAGE, false)) {
                PackageStats manualStats = new PackageStats(TAG);
                this.mInstaller.getUserSize(volumeUuid, userId, 0, appIds, manualStats);
                checkEquals("User " + userId, manualStats, stats);
            }
            return translate(stats);
        } catch (Installer.InstallerException e) {
            throw new ParcelableException(new IOException(e.getMessage()));
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public ExternalStorageStats queryExternalStatsForUser(String volumeUuid, int userId, String callingPackage) throws ParcelableException {
        if (userId != UserHandle.getCallingUserId()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", TAG);
        }
        enforceStatsPermission(Binder.getCallingUid(), callingPackage);
        int[] appIds = getAppIds(userId);
        try {
            long[] stats = this.mInstaller.getExternalSize(volumeUuid, userId, getDefaultFlags(), appIds);
            if (SystemProperties.getBoolean(PROP_VERIFY_STORAGE, false)) {
                long[] manualStats = this.mInstaller.getExternalSize(volumeUuid, userId, 0, appIds);
                checkEquals("External " + userId, manualStats, stats);
            }
            ExternalStorageStats res = new ExternalStorageStats();
            res.totalBytes = stats[0];
            res.audioBytes = stats[1];
            res.videoBytes = stats[2];
            res.imageBytes = stats[3];
            res.appBytes = stats[4];
            res.obbBytes = stats[5];
            return res;
        } catch (Installer.InstallerException e) {
            throw new ParcelableException(new IOException(e.getMessage()));
        }
    }

    private int[] getAppIds(int userId) {
        int[] appIds = null;
        for (ApplicationInfo app : this.mPackage.getInstalledApplicationsAsUser(8192, userId)) {
            int appId = UserHandle.getAppId(app.uid);
            if (!ArrayUtils.contains(appIds, appId)) {
                appIds = ArrayUtils.appendInt(appIds, appId);
            }
        }
        return appIds;
    }

    private static int getDefaultFlags() {
        return SystemProperties.getBoolean(PROP_DISABLE_QUOTA, false) ? 0 : 4096;
    }

    private static void checkEquals(String msg, long[] a, long[] b) {
        for (int i = 0; i < a.length; i++) {
            checkEquals(msg + "[" + i + "]", a[i], b[i]);
        }
    }

    private static void checkEquals(String msg, PackageStats a, PackageStats b) {
        checkEquals(msg + " codeSize", a.codeSize, b.codeSize);
        checkEquals(msg + " dataSize", a.dataSize, b.dataSize);
        checkEquals(msg + " cacheSize", a.cacheSize, b.cacheSize);
        checkEquals(msg + " externalCodeSize", a.externalCodeSize, b.externalCodeSize);
        checkEquals(msg + " externalDataSize", a.externalDataSize, b.externalDataSize);
        checkEquals(msg + " externalCacheSize", a.externalCacheSize, b.externalCacheSize);
    }

    private static void checkEquals(String msg, long expected, long actual) {
        if (expected != actual) {
            Slog.e(TAG, msg + " expected " + expected + " actual " + actual);
        }
    }

    private static StorageStats translate(PackageStats stats) {
        StorageStats res = new StorageStats();
        res.codeBytes = stats.codeSize + stats.externalCodeSize;
        res.dataBytes = stats.dataSize + stats.externalDataSize;
        res.cacheBytes = stats.cacheSize + stats.externalCacheSize;
        return res;
    }

    private class H extends Handler {
        private static final boolean DEBUG = false;
        private static final double MINIMUM_CHANGE_DELTA = 0.05d;
        private static final int MSG_CHECK_STORAGE_DELTA = 100;
        private static final int MSG_LOAD_CACHED_QUOTAS_FROM_FILE = 101;
        private static final int UNSET = -1;
        private double mMinimumThresholdBytes;
        private long mPreviousBytes;
        private final StatFs mStats;

        public H(Looper looper) {
            super(looper);
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            this.mStats = statFs;
            this.mPreviousBytes = statFs.getAvailableBytes();
            this.mMinimumThresholdBytes = this.mStats.getTotalBytes() * MINIMUM_CHANGE_DELTA;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (!StorageStatsService.isCacheQuotaCalculationsEnabled(StorageStatsService.this.mContext.getContentResolver())) {
                return;
            }
            int i = msg.what;
            if (i == 100) {
                long bytesDelta = Math.abs(this.mPreviousBytes - this.mStats.getAvailableBytes());
                if (bytesDelta > this.mMinimumThresholdBytes) {
                    this.mPreviousBytes = this.mStats.getAvailableBytes();
                    recalculateQuotas(getInitializedStrategy());
                    StorageStatsService.this.notifySignificantDelta();
                }
                sendEmptyMessageDelayed(100, 30000L);
                return;
            }
            if (i == 101) {
                CacheQuotaStrategy strategy = getInitializedStrategy();
                this.mPreviousBytes = -1L;
                try {
                    this.mPreviousBytes = strategy.setupQuotasFromFile();
                } catch (IOException e) {
                    Slog.e(StorageStatsService.TAG, "An error occurred while reading the cache quota file.", e);
                } catch (IllegalStateException e2) {
                    Slog.e(StorageStatsService.TAG, "Cache quota XML file is malformed?", e2);
                }
                if (this.mPreviousBytes < 0) {
                    this.mPreviousBytes = this.mStats.getAvailableBytes();
                    recalculateQuotas(strategy);
                }
                sendEmptyMessageDelayed(100, 30000L);
            }
        }

        private void recalculateQuotas(CacheQuotaStrategy strategy) {
            strategy.recalculateQuotas();
        }

        private CacheQuotaStrategy getInitializedStrategy() {
            UsageStatsManagerInternal usageStatsManager = (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
            return new CacheQuotaStrategy(StorageStatsService.this.mContext, usageStatsManager, StorageStatsService.this.mInstaller, StorageStatsService.this.mCacheQuotas);
        }
    }

    static boolean isCacheQuotaCalculationsEnabled(ContentResolver resolver) {
        return Settings.Global.getInt(resolver, "enable_cache_quota_calculation", 1) != 0;
    }

    void notifySignificantDelta() {
        this.mContext.getContentResolver().notifyChange(Uri.parse("content://com.android.externalstorage.documents/"), (ContentObserver) null, false);
    }

    private static void checkCratesEnable() {
        boolean enable = SystemProperties.getBoolean(PROP_STORAGE_CRATES, false);
        if (!enable) {
            throw new IllegalStateException("Storage Crate feature is disabled.");
        }
    }

    private void enforceCratesPermission(int callingUid, String callingPackage) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_CRATES", callingPackage);
    }

    private static List<CrateInfo> convertCrateInfoFrom(CrateMetadata[] crateMetadatas) {
        CrateInfo crateInfo;
        if (ArrayUtils.isEmpty(crateMetadatas)) {
            return Collections.EMPTY_LIST;
        }
        ArrayList<CrateInfo> crateInfos = new ArrayList<>();
        for (CrateMetadata crateMetadata : crateMetadatas) {
            if (crateMetadata != null && !TextUtils.isEmpty(crateMetadata.id) && !TextUtils.isEmpty(crateMetadata.packageName) && (crateInfo = CrateInfo.copyFrom(crateMetadata.uid, crateMetadata.packageName, crateMetadata.id)) != null) {
                crateInfos.add(crateInfo);
            }
        }
        return crateInfos;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    private ParceledListSlice<CrateInfo> getAppCrates(String volumeUuid, String[] packageNames, int userId) throws ParcelableException {
        try {
            CrateMetadata[] crateMetadatas = this.mInstaller.getAppCrates(volumeUuid, packageNames, userId);
            return new ParceledListSlice<>(convertCrateInfoFrom(crateMetadatas));
        } catch (Installer.InstallerException e) {
            throw new ParcelableException(new IOException(e.getMessage()));
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public ParceledListSlice<CrateInfo> queryCratesForPackage(String volumeUuid, String packageName, int userId, String callingPackage) throws ParcelableException {
        checkCratesEnable();
        if (userId != UserHandle.getCallingUserId()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", TAG);
        }
        try {
            ApplicationInfo appInfo = this.mPackage.getApplicationInfoAsUser(packageName, 8192, userId);
            if (Binder.getCallingUid() != appInfo.uid) {
                enforceCratesPermission(Binder.getCallingUid(), callingPackage);
            }
            String[] packageNames = {packageName};
            return getAppCrates(volumeUuid, packageNames, userId);
        } catch (PackageManager.NameNotFoundException e) {
            throw new ParcelableException(e);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public ParceledListSlice<CrateInfo> queryCratesForUid(String volumeUuid, int uid, String callingPackage) throws ParcelableException {
        checkCratesEnable();
        int userId = UserHandle.getUserId(uid);
        if (userId != UserHandle.getCallingUserId()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", TAG);
        }
        if (Binder.getCallingUid() != uid) {
            enforceCratesPermission(Binder.getCallingUid(), callingPackage);
        }
        String[] packageNames = ArrayUtils.defeatNullable(this.mPackage.getPackagesForUid(uid));
        String[] validatedPackageNames = new String[0];
        for (String packageName : packageNames) {
            if (!TextUtils.isEmpty(packageName)) {
                try {
                    ApplicationInfo appInfo = this.mPackage.getApplicationInfoAsUser(packageName, 8192, userId);
                    if (appInfo != null) {
                        validatedPackageNames = (String[]) ArrayUtils.appendElement(String.class, validatedPackageNames, packageName);
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    throw new ParcelableException(e);
                }
            }
        }
        return getAppCrates(volumeUuid, validatedPackageNames, userId);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public ParceledListSlice<CrateInfo> queryCratesForUser(String volumeUuid, int userId, String callingPackage) throws ParcelableException {
        checkCratesEnable();
        if (userId != UserHandle.getCallingUserId()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", TAG);
        }
        enforceCratesPermission(Binder.getCallingUid(), callingPackage);
        try {
            CrateMetadata[] crateMetadatas = this.mInstaller.getUserCrates(volumeUuid, userId);
            return new ParceledListSlice<>(convertCrateInfoFrom(crateMetadatas));
        } catch (Installer.InstallerException e) {
            throw new ParcelableException(new IOException(e.getMessage()));
        }
    }

    void forEachStorageStatsAugmenter(Consumer<StorageStatsManagerInternal.StorageStatsAugmenter> consumer, String queryTag) {
        int count = this.mStorageStatsAugmenters.size();
        for (int i = 0; i < count; i++) {
            Pair<String, StorageStatsManagerInternal.StorageStatsAugmenter> pair = this.mStorageStatsAugmenters.get(i);
            String augmenterTag = (String) pair.first;
            StorageStatsManagerInternal.StorageStatsAugmenter storageStatsAugmenter = (StorageStatsManagerInternal.StorageStatsAugmenter) pair.second;
            Trace.traceBegin(524288L, queryTag + ":" + augmenterTag);
            try {
                consumer.accept(storageStatsAugmenter);
                Trace.traceEnd(524288L);
            } catch (Throwable th) {
                Trace.traceEnd(524288L);
                throw th;
            }
        }
    }

    private class LocalService extends StorageStatsManagerInternal {
        private LocalService() {
        }

        @Override // com.android.server.usage.StorageStatsManagerInternal
        public void registerStorageStatsAugmenter(StorageStatsManagerInternal.StorageStatsAugmenter storageStatsAugmenter, String tag) {
            StorageStatsService.this.mStorageStatsAugmenters.add(Pair.create(tag, storageStatsAugmenter));
        }
    }
}
