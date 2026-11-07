package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AppOpsManager;
import android.app.IActivityManager;
import android.app.KeyguardManager;
import android.app.admin.SecurityLog;
import android.app.usage.StorageStatsManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.IPackageMoveObserver;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ProviderInfo;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.content.res.ObbInfo;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.net.Uri;
import android.os.Binder;
import android.os.DropBoxManager;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IStoraged;
import android.os.IVold;
import android.os.IVoldListener;
import android.os.IVoldMountCallback;
import android.os.IVoldTaskListener;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.ParcelableException;
import android.os.PersistableBundle;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.UserManagerInternal;
import android.os.storage.DiskInfo;
import android.os.storage.IObbActionListener;
import android.os.storage.IStorageEventListener;
import android.os.storage.IStorageManager;
import android.os.storage.IStorageShutdownObserver;
import android.os.storage.StorageManager;
import android.os.storage.StorageManagerInternal;
import android.os.storage.StorageVolume;
import android.os.storage.VolumeInfo;
import android.os.storage.VolumeRecord;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.sysprop.VoldProperties;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.DataUnit;
import android.util.EventLog;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.TimeUtils;
import android.util.Xml;
import com.android.internal.app.IAppOpsCallback;
import com.android.internal.app.IAppOpsService;
import com.android.internal.content.PackageMonitor;
import com.android.internal.os.AppFuseMount;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.FuseUnavailableMountException;
import com.android.internal.os.SomeArgs;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.HexDump;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.internal.util.XmlUtils;
import com.android.internal.widget.LockPatternUtils;
import com.android.server.am.ProcessList;
import com.android.server.backup.BackupPasswordManager;
import com.android.server.notification.SnoozeHelper;
import com.android.server.pm.Installer;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.storage.AppFuseBridge;
import com.android.server.storage.StorageSessionController;
import com.android.server.usage.UnixCalendar;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.spec.KeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import libcore.io.IoUtils;
import libcore.util.EmptyArray;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
class StorageManagerService extends IStorageManager.Stub implements Watchdog.Monitor, ActivityTaskManagerInternal.ScreenObserver {
    private static final String ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY = "persist.sys.vold_app_data_isolation_enabled";
    private static final String ATTR_CREATED_MILLIS = "createdMillis";
    private static final String ATTR_FS_UUID = "fsUuid";
    private static final String ATTR_LAST_BENCH_MILLIS = "lastBenchMillis";
    private static final String ATTR_LAST_SEEN_MILLIS = "lastSeenMillis";
    private static final String ATTR_LAST_TRIM_MILLIS = "lastTrimMillis";
    private static final String ATTR_NICKNAME = "nickname";
    private static final String ATTR_PART_GUID = "partGuid";
    private static final String ATTR_PRIMARY_STORAGE_UUID = "primaryStorageUuid";
    private static final String ATTR_TYPE = "type";
    private static final String ATTR_USER_FLAGS = "userFlags";
    private static final String ATTR_VERSION = "version";
    private static final int CRYPTO_ALGORITHM_KEY_SIZE = 128;
    private static final boolean DEBUG_EVENTS = false;
    private static final boolean DEBUG_OBB = false;
    private static final boolean DEFAULT_FUSE_ENABLED = true;
    private static final boolean EMULATE_FBE_SUPPORTED = true;
    public static final int FAILED_MOUNT_RESET_TIMEOUT_SECONDS = 10;
    private static final String FUSE_ENABLED = "fuse_enabled";
    private static final int H_ABORT_IDLE_MAINT = 12;
    private static final int H_BOOT_COMPLETED = 13;
    private static final int H_COMPLETE_UNLOCK_USER = 14;
    private static final int H_DAEMON_CONNECTED = 2;
    private static final int H_FSTRIM = 4;
    private static final int H_INTERNAL_BROADCAST = 7;
    private static final int H_PARTITION_FORGET = 9;
    private static final int H_RESET = 10;
    private static final int H_RUN_IDLE_MAINT = 11;
    private static final int H_SHUTDOWN = 3;
    private static final int H_SYSTEM_READY = 1;
    private static final int H_VOLUME_BROADCAST = 6;
    private static final int H_VOLUME_MOUNT = 5;
    private static final int H_VOLUME_MOUNT_IF_NEED = 20;
    private static final int H_VOLUME_STATE_CHANGED = 15;
    private static final int H_VOLUME_UNMOUNT = 8;
    private static final String ISOLATED_STORAGE_ENABLED = "isolated_storage_enabled";
    private static final String LAST_FSTRIM_FILE = "last-fstrim";
    private static final int MOVE_STATUS_COPY_FINISHED = 82;
    private static final int OBB_FLUSH_MOUNT_STATE = 2;
    private static final int OBB_RUN_ACTION = 1;
    private static final int PBKDF2_HASH_ROUNDS = 1024;
    private static final String TAG_STORAGE_BENCHMARK = "storage_benchmark";
    private static final String TAG_STORAGE_TRIM = "storage_trim";
    private static final String TAG_VOLUME = "volume";
    private static final String TAG_VOLUMES = "volumes";
    private static final int VERSION_ADD_PRIMARY = 2;
    private static final int VERSION_FIX_PRIMARY = 3;
    private static final int VERSION_INIT = 1;
    private static final boolean WATCHDOG_ENABLE = true;
    private static final String ZRAM_ENABLED_PROPERTY = "persist.sys.zram_enabled";
    public static String sMediaStoreAuthorityProcessName;
    private final Callbacks mCallbacks;
    private final Context mContext;
    private volatile boolean mExternalDelay;
    private volatile int mExternalDelayTime;
    private final Handler mHandler;
    private IAppOpsService mIAppOpsService;
    private IPackageManager mIPackageManager;
    private final Installer mInstaller;
    private final boolean mIsAutomotive;
    private final boolean mIsFuseEnabled;
    private long mLastMaintenance;
    private final File mLastMaintenanceFile;
    private final LockPatternUtils mLockPatternUtils;
    private IPackageMoveObserver mMoveCallback;
    private String mMoveTargetUuid;
    private final ObbActionHandler mObbActionHandler;
    private PackageManagerInternal mPmInternal;
    private String mPrimaryStorageUuid;
    private final ContentResolver mResolver;
    private final AtomicFile mSettingsFile;
    private final StorageSessionController mStorageSessionController;
    private volatile IStoraged mStoraged;
    private volatile IVold mVold;
    private final boolean mVoldAppDataIsolationEnabled;
    static StorageManagerService sSelf = null;
    private static final boolean ENABLE_ISOLATED_STORAGE = StorageManager.hasIsolatedStorage();
    private static final String TAG = "StorageManagerService";
    private static final boolean LOCAL_LOGV = Log.isLoggable(TAG, 2);
    private static final String[] ALL_STORAGE_PERMISSIONS = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    public static final Pattern KNOWN_APP_DIR_PATHS = Pattern.compile("(?i)(^/storage/[^/]+/(?:([0-9]+)/)?Android/(?:data|media|obb|sandbox)/)([^/]+)(/.*)?");
    public static final String[] CRYPTO_TYPES = {"password", BatteryService.HealthServiceWrapper.INSTANCE_VENDOR, "pattern", "pin"};
    private final Set<Integer> mFuseMountedUser = new ArraySet();
    private final Object mLock = LockGuard.installNewLock(4);
    private final Object mPackagesLock = new Object();
    private WatchedLockedUsers mLocalUnlockedUsers = new WatchedLockedUsers();
    private int[] mSystemUnlockedUsers = EmptyArray.INT;
    private ArrayMap<String, DiskInfo> mDisks = new ArrayMap<>();
    private final ArrayMap<String, VolumeInfo> mVolumes = new ArrayMap<>();
    private ArrayMap<String, VolumeRecord> mRecords = new ArrayMap<>();
    private ArrayMap<String, CountDownLatch> mDiskScanLatches = new ArrayMap<>();
    private volatile int mMediaStoreAuthorityAppId = -1;
    private volatile int mDownloadsAuthorityAppId = -1;
    private volatile int mExternalStorageAuthorityAppId = -1;
    private volatile int mCurrentUserId = 0;
    private final Object mAppFuseLock = new Object();
    private int mNextAppFuseName = 0;
    private AppFuseBridge mAppFuseBridge = null;
    private volatile boolean mBootCompleted = false;
    private volatile boolean mDaemonConnected = false;
    private volatile boolean mSecureKeyguardShowing = true;
    private final Map<IBinder, List<ObbState>> mObbMounts = new HashMap();
    private final Map<String, ObbState> mObbPathToStateMap = new HashMap();
    private final StorageManagerInternalImpl mStorageManagerInternal = new StorageManagerInternalImpl();
    private final Set<Integer> mUidsWithLegacyExternalStorage = new ArraySet();
    private final Map<Integer, PackageMonitor> mPackageMonitorsForUser = new ArrayMap();
    private BroadcastReceiver mUserReceiver = new BroadcastReceiver() { // from class: com.android.server.StorageManagerService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            int userId = intent.getIntExtra("android.intent.extra.user_handle", -1);
            Preconditions.checkArgument(userId >= 0);
            try {
                if ("android.intent.action.USER_ADDED".equals(action)) {
                    UserManager um = (UserManager) StorageManagerService.this.mContext.getSystemService(UserManager.class);
                    int userSerialNumber = um.getUserSerialNumber(userId);
                    StorageManagerService.this.mVold.onUserAdded(userId, userSerialNumber);
                } else if ("android.intent.action.USER_REMOVED".equals(action)) {
                    synchronized (StorageManagerService.this.mVolumes) {
                        int size = StorageManagerService.this.mVolumes.size();
                        for (int i = 0; i < size; i++) {
                            VolumeInfo vol = (VolumeInfo) StorageManagerService.this.mVolumes.valueAt(i);
                            if (vol.mountUserId == userId) {
                                vol.mountUserId = -10000;
                                StorageManagerService.this.mHandler.obtainMessage(8, vol).sendToTarget();
                            }
                        }
                    }
                    StorageManagerService.this.mVold.onUserRemoved(userId);
                }
            } catch (Exception e) {
                Slog.wtf(StorageManagerService.TAG, e);
            }
        }
    };
    private final IVoldListener mListener = new IVoldListener.Stub() { // from class: com.android.server.StorageManagerService.4
        /* JADX WARN: Code duplicated, block: B:8:0x001e  */
        @Override // android.os.IVoldListener
        public void onDiskCreated(String diskId, int flags) {
            synchronized (StorageManagerService.this.mLock) {
                String value = SystemProperties.get("persist.sys.adoptable");
                byte b = -1;
                int iHashCode = value.hashCode();
                if (iHashCode != 464944051) {
                    if (iHashCode == 1528363547 && value.equals("force_off")) {
                        b = 1;
                    }
                } else if (value.equals("force_on")) {
                    b = 0;
                }
                if (b == 0) {
                    flags |= 1;
                } else if (b == 1) {
                    flags &= -2;
                }
                StorageManagerService.this.mDisks.put(diskId, new DiskInfo(diskId, flags));
            }
        }

        @Override // android.os.IVoldListener
        public void onDiskScanned(String diskId) {
            synchronized (StorageManagerService.this.mLock) {
                DiskInfo disk = (DiskInfo) StorageManagerService.this.mDisks.get(diskId);
                if (disk != null) {
                    StorageManagerService.this.onDiskScannedLocked(disk);
                }
            }
        }

        @Override // android.os.IVoldListener
        public void onDiskMetadataChanged(String diskId, long sizeBytes, String label, String sysPath) {
            synchronized (StorageManagerService.this.mLock) {
                DiskInfo disk = (DiskInfo) StorageManagerService.this.mDisks.get(diskId);
                if (disk != null) {
                    disk.size = sizeBytes;
                    disk.label = label;
                    disk.sysPath = sysPath;
                }
            }
        }

        @Override // android.os.IVoldListener
        public void onDiskDestroyed(String diskId) {
            synchronized (StorageManagerService.this.mLock) {
                DiskInfo disk = (DiskInfo) StorageManagerService.this.mDisks.remove(diskId);
                if (disk != null) {
                    StorageManagerService.this.mCallbacks.notifyDiskDestroyed(disk);
                }
            }
        }

        @Override // android.os.IVoldListener
        public void onVolumeCreated(String volId, int type, String diskId, String partGuid, int userId) {
            synchronized (StorageManagerService.this.mLock) {
                DiskInfo disk = (DiskInfo) StorageManagerService.this.mDisks.get(diskId);
                VolumeInfo vol = new VolumeInfo(volId, type, disk, partGuid);
                vol.mountUserId = userId;
                StorageManagerService.this.mVolumes.put(volId, vol);
                StorageManagerService.this.onVolumeCreatedLocked(vol);
            }
        }

        @Override // android.os.IVoldListener
        public void onVolumeStateChanged(String volId, int state) {
            synchronized (StorageManagerService.this.mLock) {
                VolumeInfo vol = (VolumeInfo) StorageManagerService.this.mVolumes.get(volId);
                if (vol != null) {
                    int oldState = vol.state;
                    vol.state = state;
                    SomeArgs args = SomeArgs.obtain();
                    args.arg1 = vol;
                    args.arg2 = Integer.valueOf(oldState);
                    args.arg3 = Integer.valueOf(state);
                    StorageManagerService.this.mHandler.obtainMessage(15, args).sendToTarget();
                    StorageManagerService.this.onVolumeStateChangedLocked(vol, oldState, state);
                }
            }
        }

        @Override // android.os.IVoldListener
        public void onVolumeMetadataChanged(String volId, String fsType, String fsUuid, String fsLabel) {
            synchronized (StorageManagerService.this.mLock) {
                VolumeInfo vol = (VolumeInfo) StorageManagerService.this.mVolumes.get(volId);
                if (vol != null) {
                    vol.fsType = fsType;
                    vol.fsUuid = fsUuid;
                    vol.fsLabel = fsLabel;
                }
            }
        }

        @Override // android.os.IVoldListener
        public void onVolumePathChanged(String volId, String path) {
            synchronized (StorageManagerService.this.mLock) {
                VolumeInfo vol = (VolumeInfo) StorageManagerService.this.mVolumes.get(volId);
                if (vol != null) {
                    vol.path = path;
                }
            }
        }

        @Override // android.os.IVoldListener
        public void onVolumeInternalPathChanged(String volId, String internalPath) {
            synchronized (StorageManagerService.this.mLock) {
                VolumeInfo vol = (VolumeInfo) StorageManagerService.this.mVolumes.get(volId);
                if (vol != null) {
                    vol.internalPath = internalPath;
                }
            }
        }

        @Override // android.os.IVoldListener
        public void onVolumeDestroyed(String volId) {
            VolumeInfo vol;
            synchronized (StorageManagerService.this.mLock) {
                vol = (VolumeInfo) StorageManagerService.this.mVolumes.remove(volId);
            }
            if (vol != null) {
                StorageManagerService.this.mStorageSessionController.onVolumeRemove(vol);
                try {
                    if (vol.type == 1) {
                        StorageManagerService.this.mInstaller.onPrivateVolumeRemoved(vol.getFsUuid());
                    }
                } catch (Installer.InstallerException e) {
                    Slog.i(StorageManagerService.TAG, "Failed when private volume unmounted " + vol, e);
                }
            }
        }
    };
    private IAppOpsCallback.Stub mAppOpsCallback = new IAppOpsCallback.Stub() { // from class: com.android.server.StorageManagerService.14
        public void opChanged(int op, int uid, String packageName) throws RemoteException {
            if (StorageManagerService.ENABLE_ISOLATED_STORAGE) {
                int mountMode = StorageManagerService.this.getMountMode(uid, packageName);
                boolean isUidActive = ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).getUidProcessState(uid) != 20;
                if (isUidActive) {
                    StorageManagerService.this.remountUidExternalStorage(uid, mountMode);
                }
            }
        }
    };

    public static class Lifecycle extends SystemService {
        private StorageManagerService mStorageManagerService;

        public Lifecycle(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [android.os.IBinder, com.android.server.StorageManagerService] */
        @Override // com.android.server.SystemService
        public void onStart() {
            ?? storageManagerService = new StorageManagerService(getContext());
            this.mStorageManagerService = storageManagerService;
            publishBinderService("mount", storageManagerService);
            this.mStorageManagerService.start();
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            if (phase == 500) {
                this.mStorageManagerService.servicesReady();
            } else if (phase == 550) {
                this.mStorageManagerService.systemReady();
            } else if (phase == 1000) {
                this.mStorageManagerService.bootCompleted();
            }
        }

        @Override // com.android.server.SystemService
        public void onSwitchUser(int userHandle) {
            this.mStorageManagerService.mCurrentUserId = userHandle;
        }

        @Override // com.android.server.SystemService
        public void onUnlockUser(int userHandle) {
            this.mStorageManagerService.onUnlockUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onCleanupUser(int userHandle) {
            this.mStorageManagerService.onCleanupUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onStopUser(int userHandle) {
            this.mStorageManagerService.onStopUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onUserStarting(SystemService.TargetUser user) {
            this.mStorageManagerService.snapshotAndMonitorLegacyStorageAppOp(user.getUserHandle());
        }
    }

    private class WatchedLockedUsers {
        private int[] users = EmptyArray.INT;

        public WatchedLockedUsers() {
            invalidateIsUserUnlockedCache();
        }

        public void append(int userId) {
            this.users = ArrayUtils.appendInt(this.users, userId);
            invalidateIsUserUnlockedCache();
        }

        public void remove(int userId) {
            this.users = ArrayUtils.removeInt(this.users, userId);
            invalidateIsUserUnlockedCache();
        }

        public boolean contains(int userId) {
            return ArrayUtils.contains(this.users, userId);
        }

        public int[] all() {
            return this.users;
        }

        public String toString() {
            return Arrays.toString(this.users);
        }

        private void invalidateIsUserUnlockedCache() {
            UserManager.invalidateIsUserUnlockedCache();
        }
    }

    private VolumeInfo findVolumeByIdOrThrow(String id) {
        synchronized (this.mLock) {
            VolumeInfo vol = this.mVolumes.get(id);
            if (vol != null) {
                return vol;
            }
            throw new IllegalArgumentException("No volume found for ID " + id);
        }
    }

    private String findVolumeIdForPathOrThrow(String path) {
        synchronized (this.mLock) {
            for (int i = 0; i < this.mVolumes.size(); i++) {
                VolumeInfo vol = this.mVolumes.valueAt(i);
                if (vol.path != null && path.startsWith(vol.path)) {
                    return vol.id;
                }
            }
            throw new IllegalArgumentException("No volume found for path " + path);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public VolumeRecord findRecordForPath(String path) {
        synchronized (this.mLock) {
            for (int i = 0; i < this.mVolumes.size(); i++) {
                VolumeInfo vol = this.mVolumes.valueAt(i);
                if (vol.path != null && path.startsWith(vol.path)) {
                    return this.mRecords.get(vol.fsUuid);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String scrubPath(String path) {
        if (path.startsWith(Environment.getDataDirectory().getAbsolutePath())) {
            return "internal";
        }
        VolumeRecord rec = findRecordForPath(path);
        if (rec == null || rec.createdMillis == 0) {
            return UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
        }
        return "ext:" + ((int) ((System.currentTimeMillis() - rec.createdMillis) / UnixCalendar.WEEK_IN_MILLIS)) + "w";
    }

    private VolumeInfo findStorageForUuidAsUser(String volumeUuid, int userId) {
        StorageManager storage = (StorageManager) this.mContext.getSystemService(StorageManager.class);
        if (Objects.equals(StorageManager.UUID_PRIVATE_INTERNAL, volumeUuid)) {
            return storage.findVolumeById("emulated;" + userId);
        }
        if (Objects.equals("primary_physical", volumeUuid)) {
            return storage.getPrimaryPhysicalVolume();
        }
        VolumeInfo info = storage.findVolumeByUuid(volumeUuid);
        if (info == null) {
            Slog.w(TAG, "findStorageForUuidAsUser cannot find volumeUuid:" + volumeUuid);
            return null;
        }
        String emulatedUuid = info.getId().replace("private", "emulated") + ";" + userId;
        return storage.findVolumeById(emulatedUuid);
    }

    private boolean shouldBenchmark() {
        long benchInterval = Settings.Global.getLong(this.mContext.getContentResolver(), "storage_benchmark_interval", UnixCalendar.WEEK_IN_MILLIS);
        if (benchInterval == -1) {
            return false;
        }
        if (benchInterval == 0) {
            return true;
        }
        synchronized (this.mLock) {
            for (int i = 0; i < this.mVolumes.size(); i++) {
                VolumeInfo vol = this.mVolumes.valueAt(i);
                VolumeRecord rec = this.mRecords.get(vol.fsUuid);
                if (vol.isMountedWritable() && rec != null) {
                    long benchAge = System.currentTimeMillis() - rec.lastBenchMillis;
                    if (benchAge >= benchInterval) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private CountDownLatch findOrCreateDiskScanLatch(String diskId) {
        CountDownLatch latch;
        synchronized (this.mLock) {
            latch = this.mDiskScanLatches.get(diskId);
            if (latch == null) {
                latch = new CountDownLatch(1);
                this.mDiskScanLatches.put(diskId, latch);
            }
        }
        return latch;
    }

    class ObbState implements IBinder.DeathRecipient {
        final String canonicalPath;
        final int nonce;
        final int ownerGid;
        final String rawPath;
        final IObbActionListener token;
        String volId;

        public ObbState(String rawPath, String canonicalPath, int callingUid, IObbActionListener token, int nonce, String volId) {
            this.rawPath = rawPath;
            this.canonicalPath = canonicalPath;
            this.ownerGid = UserHandle.getSharedAppGid(callingUid);
            this.token = token;
            this.nonce = nonce;
            this.volId = volId;
        }

        public IBinder getBinder() {
            return this.token.asBinder();
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ObbAction action = StorageManagerService.this.new UnmountObbAction(this, true);
            StorageManagerService.this.mObbActionHandler.sendMessage(StorageManagerService.this.mObbActionHandler.obtainMessage(1, action));
        }

        public void link() throws RemoteException {
            getBinder().linkToDeath(this, 0);
        }

        public void unlink() {
            getBinder().unlinkToDeath(this, 0);
        }

        public String toString() {
            return "ObbState{rawPath=" + this.rawPath + ",canonicalPath=" + this.canonicalPath + ",ownerGid=" + this.ownerGid + ",token=" + this.token + ",binder=" + getBinder() + ",volId=" + this.volId + '}';
        }
    }

    class StorageManagerServiceHandler extends Handler {
        public StorageManagerServiceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) throws Throwable {
            int i = msg.what;
            if (i != 20) {
                switch (i) {
                    case 1:
                        StorageManagerService.this.handleSystemReady();
                        return;
                    case 2:
                        StorageManagerService.this.handleDaemonConnected();
                        return;
                    case 3:
                        IStorageShutdownObserver obs = (IStorageShutdownObserver) msg.obj;
                        boolean success = false;
                        try {
                            StorageManagerService.this.mVold.shutdown();
                            success = true;
                        } catch (Exception e) {
                            Slog.wtf(StorageManagerService.TAG, e);
                        }
                        if (obs != null) {
                            try {
                                obs.onShutDownComplete(success ? 0 : -1);
                                return;
                            } catch (Exception e2) {
                                return;
                            }
                        }
                        return;
                    case 4:
                        Slog.i(StorageManagerService.TAG, "Running fstrim idle maintenance");
                        try {
                            StorageManagerService.this.mLastMaintenance = System.currentTimeMillis();
                            StorageManagerService.this.mLastMaintenanceFile.setLastModified(StorageManagerService.this.mLastMaintenance);
                            break;
                        } catch (Exception e3) {
                            Slog.e(StorageManagerService.TAG, "Unable to record last fstrim!");
                        }
                        StorageManagerService.this.fstrim(0, null);
                        Runnable callback = (Runnable) msg.obj;
                        if (callback != null) {
                            callback.run();
                            return;
                        }
                        return;
                    case 5:
                        VolumeInfo vol = (VolumeInfo) msg.obj;
                        if (!StorageManagerService.this.isMountDisallowed(vol)) {
                            StorageManagerService.this.mount(vol);
                            return;
                        }
                        Slog.i(StorageManagerService.TAG, "Ignoring mount " + vol.getId() + " due to policy");
                        return;
                    case 6:
                        StorageVolume userVol = (StorageVolume) msg.obj;
                        String envState = userVol.getState();
                        Slog.d(StorageManagerService.TAG, "Volume " + userVol.getId() + " broadcasting " + envState + " to " + userVol.getOwner());
                        String action = VolumeInfo.getBroadcastForEnvironment(envState);
                        if (action != null) {
                            Intent intent = new Intent(action, Uri.fromFile(userVol.getPathFile()));
                            intent.putExtra("android.os.storage.extra.STORAGE_VOLUME", userVol);
                            intent.addFlags(AudioFormat.HE_AAC_V1);
                            StorageManagerService.this.mContext.sendBroadcastAsUser(intent, userVol.getOwner());
                            return;
                        }
                        return;
                    case 7:
                        StorageManagerService.this.mContext.sendBroadcastAsUser((Intent) msg.obj, UserHandle.ALL, "android.permission.WRITE_MEDIA_STORAGE");
                        return;
                    case 8:
                        StorageManagerService.this.unmount((VolumeInfo) msg.obj);
                        return;
                    case 9:
                        VolumeRecord rec = (VolumeRecord) msg.obj;
                        StorageManagerService.this.forgetPartition(rec.partGuid, rec.fsUuid);
                        return;
                    case 10:
                        StorageManagerService.this.resetIfBootedAndConnected();
                        return;
                    case 11:
                        Slog.i(StorageManagerService.TAG, "Running idle maintenance");
                        StorageManagerService.this.runIdleMaint((Runnable) msg.obj);
                        return;
                    case 12:
                        Slog.i(StorageManagerService.TAG, "Aborting idle maintenance");
                        StorageManagerService.this.abortIdleMaint((Runnable) msg.obj);
                        return;
                    case 13:
                        StorageManagerService.this.handleBootCompleted();
                        return;
                    case 14:
                        StorageManagerService.this.completeUnlockUser(((Integer) msg.obj).intValue());
                        return;
                    case 15:
                        SomeArgs args = (SomeArgs) msg.obj;
                        StorageManagerService.this.onVolumeStateChangedAsync((VolumeInfo) args.arg1, ((Integer) args.arg2).intValue(), ((Integer) args.arg3).intValue());
                        return;
                    default:
                        return;
                }
            }
            Slog.d(StorageManagerService.TAG, "Mount mountable volume if need");
            synchronized (StorageManagerService.this.mLock) {
                StorageManagerService.this.mExternalDelay = false;
                int size = StorageManagerService.this.mVolumes.size();
                for (int i2 = 0; i2 < size; i2++) {
                    VolumeInfo vol2 = (VolumeInfo) StorageManagerService.this.mVolumes.valueAt(i2);
                    if (vol2.type == 0 && vol2.state == 0) {
                        Slog.d(StorageManagerService.TAG, "start mount volume: " + vol2.toString());
                        StorageManagerService.this.mHandler.obtainMessage(5, vol2).sendToTarget();
                    }
                }
            }
        }
    }

    private void waitForLatch(CountDownLatch latch, String condition, long timeoutMillis) throws TimeoutException {
        long startMillis = SystemClock.elapsedRealtime();
        while (!latch.await(5000L, TimeUnit.MILLISECONDS)) {
            try {
                Slog.w(TAG, "Thread " + Thread.currentThread().getName() + " still waiting for " + condition + "...");
            } catch (InterruptedException e) {
                Slog.w(TAG, "Interrupt while waiting for " + condition);
            }
            if (timeoutMillis > 0 && SystemClock.elapsedRealtime() > startMillis + timeoutMillis) {
                throw new TimeoutException("Thread " + Thread.currentThread().getName() + " gave up waiting for " + condition + " after " + timeoutMillis + "ms");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSystemReady() {
        MountServiceIdler.scheduleIdlePass(this.mContext);
        Handler handler = null;
        this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("zram_enabled"), false, new ContentObserver(handler) { // from class: com.android.server.StorageManagerService.2
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                StorageManagerService.this.refreshZramSettings();
            }
        });
        refreshZramSettings();
        String zramPropValue = SystemProperties.get(ZRAM_ENABLED_PROPERTY);
        if (!zramPropValue.equals("0") && this.mContext.getResources().getBoolean(R.bool.config_defaultBatteryPercentageSetting)) {
            ZramWriteback.scheduleZramWriteback(this.mContext);
        }
        this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("isolated_storage_remote"), false, new ContentObserver(handler) { // from class: com.android.server.StorageManagerService.3
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                StorageManagerService.this.refreshIsolatedStorageSettings();
            }
        });
        DeviceConfig.addOnPropertiesChangedListener("storage_native_boot", this.mContext.getMainExecutor(), new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                this.f$0.lambda$handleSystemReady$0$StorageManagerService(properties);
            }
        });
        refreshIsolatedStorageSettings();
    }

    public /* synthetic */ void lambda$handleSystemReady$0$StorageManagerService(DeviceConfig.Properties properties) {
        refreshIsolatedStorageSettings();
        refreshFuseSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshZramSettings() {
        String propertyValue = SystemProperties.get(ZRAM_ENABLED_PROPERTY);
        if ("".equals(propertyValue)) {
            return;
        }
        String desiredPropertyValue = Settings.Global.getInt(this.mContext.getContentResolver(), "zram_enabled", 1) != 0 ? SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION : "0";
        if (!desiredPropertyValue.equals(propertyValue)) {
            SystemProperties.set(ZRAM_ENABLED_PROPERTY, desiredPropertyValue);
            if (desiredPropertyValue.equals(SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION) && this.mContext.getResources().getBoolean(R.bool.config_defaultBatteryPercentageSetting)) {
                ZramWriteback.scheduleZramWriteback(this.mContext);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshIsolatedStorageSettings() {
        boolean res;
        Settings.Global.putString(this.mResolver, "isolated_storage_remote", DeviceConfig.getProperty("storage_native_boot", ISOLATED_STORAGE_ENABLED));
        int local = Settings.Global.getInt(this.mContext.getContentResolver(), "isolated_storage_local", 0);
        int remote = Settings.Global.getInt(this.mContext.getContentResolver(), "isolated_storage_remote", 0);
        if (local == -1) {
            res = false;
        } else if (local == 1) {
            res = true;
        } else if (remote == -1) {
            res = false;
        } else if (remote == 1) {
            res = true;
        } else {
            res = true;
        }
        Slog.d(TAG, "Isolated storage local flag " + local + " and remote flag " + remote + " resolved to " + res);
        SystemProperties.set("persist.sys.isolated_storage", Boolean.toString(res));
    }

    private void refreshFuseSettings() {
        int isFuseEnabled = DeviceConfig.getInt("storage_native_boot", FUSE_ENABLED, 0);
        if (isFuseEnabled == 1) {
            Slog.d(TAG, "Device Config flag for FUSE is enabled, turn Settings fuse flag on");
            SystemProperties.set("persist.sys.fflag.override.settings_fuse", "true");
        } else if (isFuseEnabled == -1) {
            Slog.d(TAG, "Device Config flag for FUSE is disabled, turn Settings fuse flag off");
            SystemProperties.set("persist.sys.fflag.override.settings_fuse", "false");
        }
    }

    @Deprecated
    private void killMediaProvider(List<UserInfo> users) {
        ProviderInfo provider;
        if (users == null) {
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            for (UserInfo user : users) {
                if (!user.isSystemOnly() && (provider = this.mPmInternal.resolveContentProvider("media", 786432, user.id)) != null) {
                    IActivityManager am = ActivityManager.getService();
                    try {
                        am.killApplication(provider.applicationInfo.packageName, UserHandle.getAppId(provider.applicationInfo.uid), -1, "vold reset");
                        break;
                    } catch (RemoteException e) {
                    }
                }
            }
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private void addInternalVolumeLocked() {
        VolumeInfo internal = new VolumeInfo("private", 1, (DiskInfo) null, (String) null);
        internal.state = 2;
        internal.path = Environment.getDataDirectory().getAbsolutePath();
        this.mVolumes.put(internal.id, internal);
    }

    private void initIfBootedAndConnected() {
        Slog.d(TAG, "Thinking about init, mBootCompleted=" + this.mBootCompleted + ", mDaemonConnected=" + this.mDaemonConnected);
        if (this.mBootCompleted && this.mDaemonConnected && !StorageManager.isFileEncryptedNativeOnly()) {
            boolean initLocked = StorageManager.isFileEncryptedEmulatedOnly();
            Slog.d(TAG, "Setting up emulation state, initlocked=" + initLocked);
            List<UserInfo> users = ((UserManager) this.mContext.getSystemService(UserManager.class)).getUsers();
            for (UserInfo user : users) {
                if (initLocked) {
                    try {
                        this.mVold.lockUserKey(user.id);
                    } catch (Exception e) {
                        Slog.wtf(TAG, e);
                    }
                } else {
                    this.mVold.unlockUserKey(user.id, user.serialNumber, encodeBytes(null), encodeBytes(null));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetIfBootedAndConnected() {
        int[] systemUnlockedUsers;
        Slog.d(TAG, "Thinking about reset, mBootCompleted=" + this.mBootCompleted + ", mDaemonConnected=" + this.mDaemonConnected);
        if (this.mBootCompleted && this.mDaemonConnected) {
            UserManager userManager = (UserManager) this.mContext.getSystemService(UserManager.class);
            List<UserInfo> users = userManager.getUsers();
            if (this.mIsFuseEnabled) {
                this.mStorageSessionController.onReset(this.mVold, new Runnable() { // from class: com.android.server.-$$Lambda$StorageManagerService$r27LXIZ-GHtEGwWREPUZctEIq8I
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$resetIfBootedAndConnected$1$StorageManagerService();
                    }
                });
            } else {
                killMediaProvider(users);
            }
            synchronized (this.mLock) {
                systemUnlockedUsers = Arrays.copyOf(this.mSystemUnlockedUsers, this.mSystemUnlockedUsers.length);
                this.mDisks.clear();
                this.mVolumes.clear();
                addInternalVolumeLocked();
            }
            try {
                Slog.i(TAG, "Resetting vold...");
                this.mVold.reset();
                Slog.i(TAG, "Reset vold");
                for (UserInfo user : users) {
                    this.mVold.onUserAdded(user.id, user.serialNumber);
                }
                for (int userId : systemUnlockedUsers) {
                    this.mVold.onUserStarted(userId);
                    this.mStoraged.onUserStarted(userId);
                }
                if (this.mIsAutomotive) {
                    restoreAllUnlockedUsers(userManager, users, systemUnlockedUsers);
                }
                this.mVold.onSecureKeyguardStateChanged(this.mSecureKeyguardShowing);
                this.mStorageManagerInternal.onReset(this.mVold);
            } catch (Exception e) {
                Slog.wtf(TAG, e);
            }
        }
        if (this.mBootCompleted && this.mExternalDelay && !this.mHandler.hasMessages(20)) {
            Slog.i(TAG, "send msg H_VOLUME_MOUNT_IF_NEED delay " + this.mExternalDelayTime + "ms");
            this.mHandler.sendEmptyMessageDelayed(20, (long) this.mExternalDelayTime);
        }
    }

    public /* synthetic */ void lambda$resetIfBootedAndConnected$1$StorageManagerService() {
        this.mHandler.removeCallbacksAndMessages(null);
    }

    private void restoreAllUnlockedUsers(UserManager userManager, List<UserInfo> allUsers, int[] systemUnlockedUsers) throws Exception {
        Arrays.sort(systemUnlockedUsers);
        UserManager.invalidateIsUserUnlockedCache();
        for (UserInfo user : allUsers) {
            int userId = user.id;
            if (userManager.isUserRunning(userId) && Arrays.binarySearch(systemUnlockedUsers, userId) < 0) {
                boolean unlockingOrUnlocked = userManager.isUserUnlockingOrUnlocked(userId);
                if (unlockingOrUnlocked) {
                    Slog.w(TAG, "UNLOCK_USER lost from vold reset, will retry, user:" + userId);
                    this.mVold.onUserStarted(userId);
                    this.mStoraged.onUserStarted(userId);
                    this.mHandler.obtainMessage(14, Integer.valueOf(userId)).sendToTarget();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUnlockUser(int userId) {
        Slog.d(TAG, "onUnlockUser " + userId);
        try {
            this.mStorageSessionController.onUnlockUser(userId);
            this.mVold.onUserStarted(userId);
            this.mStoraged.onUserStarted(userId);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
        this.mHandler.obtainMessage(14, Integer.valueOf(userId)).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completeUnlockUser(int userId) {
        if (userId == 0) {
            this.mPmInternal.migrateLegacyObbData();
        }
        onKeyguardStateChanged(false);
        synchronized (this.mLock) {
            if (this.mIsAutomotive) {
                for (int unlockedUser : this.mSystemUnlockedUsers) {
                    if (unlockedUser == userId) {
                        Log.i(TAG, "completeUnlockUser called for already unlocked user:" + userId);
                        return;
                    }
                }
            }
            for (int i = 0; i < this.mVolumes.size(); i++) {
                VolumeInfo vol = this.mVolumes.valueAt(i);
                if (vol.isVisibleForRead(userId) && vol.isMountedReadable()) {
                    StorageVolume userVol = vol.buildStorageVolume(this.mContext, userId, false);
                    this.mHandler.obtainMessage(6, userVol).sendToTarget();
                    String envState = VolumeInfo.getEnvironmentForState(vol.getState());
                    this.mCallbacks.notifyStorageStateChanged(userVol.getPath(), envState, envState);
                }
            }
            this.mSystemUnlockedUsers = ArrayUtils.appendInt(this.mSystemUnlockedUsers, userId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCleanupUser(int userId) {
        Slog.d(TAG, "onCleanupUser " + userId);
        try {
            this.mVold.onUserStopped(userId);
            this.mStoraged.onUserStopped(userId);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
        synchronized (this.mLock) {
            this.mSystemUnlockedUsers = ArrayUtils.removeInt(this.mSystemUnlockedUsers, userId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStopUser(int userId) {
        Slog.i(TAG, "onStopUser " + userId);
        try {
            this.mStorageSessionController.onUserStopping(userId);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
        PackageMonitor monitor = this.mPackageMonitorsForUser.remove(Integer.valueOf(userId));
        if (monitor != null) {
            monitor.unregister();
        }
    }

    private boolean supportsBlockCheckpoint() throws RemoteException {
        enforcePermission("android.permission.MOUNT_FORMAT_FILESYSTEMS");
        return this.mVold.supportsBlockCheckpoint();
    }

    @Override // com.android.server.wm.ActivityTaskManagerInternal.ScreenObserver
    public void onAwakeStateChanged(boolean isAwake) {
    }

    @Override // com.android.server.wm.ActivityTaskManagerInternal.ScreenObserver
    public void onKeyguardStateChanged(boolean isShowing) {
        this.mSecureKeyguardShowing = isShowing && ((KeyguardManager) this.mContext.getSystemService(KeyguardManager.class)).isDeviceSecure(this.mCurrentUserId);
        try {
            this.mVold.onSecureKeyguardStateChanged(this.mSecureKeyguardShowing);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    void runIdleMaintenance(Runnable callback) {
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(4, callback));
    }

    public void runMaintenance() {
        enforcePermission("android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        runIdleMaintenance(null);
    }

    public long lastMaintenance() {
        return this.mLastMaintenance;
    }

    public void onDaemonConnected() {
        this.mDaemonConnected = true;
        this.mHandler.obtainMessage(2).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDaemonConnected() {
        initIfBootedAndConnected();
        resetIfBootedAndConnected();
        if ("".equals(VoldProperties.encrypt_progress().orElse(""))) {
            copyLocaleFromMountService();
        }
    }

    private void copyLocaleFromMountService() {
        try {
            String systemLocale = getField("SystemLocale");
            if (TextUtils.isEmpty(systemLocale)) {
                return;
            }
            Slog.d(TAG, "Got locale " + systemLocale + " from mount service");
            Locale locale = Locale.forLanguageTag(systemLocale);
            Configuration config = new Configuration();
            config.setLocale(locale);
            try {
                ActivityManager.getService().updatePersistentConfiguration(config);
            } catch (RemoteException e) {
                Slog.e(TAG, "Error setting system locale from mount service", e);
            }
            Slog.d(TAG, "Setting system properties to " + systemLocale + " from mount service");
            SystemProperties.set("persist.sys.locale", locale.toLanguageTag());
        } catch (RemoteException e2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDiskScannedLocked(DiskInfo disk) {
        int volumeCount = 0;
        for (int i = 0; i < this.mVolumes.size(); i++) {
            VolumeInfo vol = this.mVolumes.valueAt(i);
            if (Objects.equals(disk.id, vol.getDiskId())) {
                volumeCount++;
            }
        }
        Intent intent = new Intent("android.os.storage.action.DISK_SCANNED");
        intent.addFlags(AudioFormat.HE_AAC_V1);
        intent.putExtra("android.os.storage.extra.DISK_ID", disk.id);
        intent.putExtra("android.os.storage.extra.VOLUME_COUNT", volumeCount);
        this.mHandler.obtainMessage(7, intent).sendToTarget();
        CountDownLatch latch = this.mDiskScanLatches.remove(disk.id);
        if (latch != null) {
            latch.countDown();
        }
        disk.volumeCount = volumeCount;
        this.mCallbacks.notifyDiskScanned(disk, volumeCount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVolumeCreatedLocked(VolumeInfo vol) {
        if (this.mPmInternal.isOnlyCoreApps()) {
            Slog.d(TAG, "System booted in core-only mode; ignoring volume " + vol.getId());
            return;
        }
        ActivityManagerInternal amInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        if (this.mIsFuseEnabled && vol.mountUserId >= 0 && !amInternal.isUserRunning(vol.mountUserId, 0)) {
            Slog.d(TAG, "Ignoring volume " + vol.getId() + " because user " + Integer.toString(vol.mountUserId) + " is no longer running.");
            return;
        }
        if (vol.type == 2) {
            StorageManager storage = (StorageManager) this.mContext.getSystemService(StorageManager.class);
            VolumeInfo privateVol = storage.findPrivateForEmulated(vol);
            if (Objects.equals(StorageManager.UUID_PRIVATE_INTERNAL, this.mPrimaryStorageUuid) && "private".equals(privateVol.id)) {
                Slog.v(TAG, "Found primary storage at " + vol);
                vol.mountFlags = vol.mountFlags | 1;
                vol.mountFlags = vol.mountFlags | 2;
                this.mHandler.obtainMessage(5, vol).sendToTarget();
                return;
            }
            if (Objects.equals(privateVol.fsUuid, this.mPrimaryStorageUuid)) {
                Slog.v(TAG, "Found primary storage at " + vol);
                vol.mountFlags = vol.mountFlags | 1;
                vol.mountFlags = vol.mountFlags | 2;
                this.mHandler.obtainMessage(5, vol).sendToTarget();
                return;
            }
            return;
        }
        if (vol.type == 0) {
            if (Objects.equals("primary_physical", this.mPrimaryStorageUuid) && vol.disk.isDefaultPrimary()) {
                Slog.v(TAG, "Found primary storage at " + vol);
                vol.mountFlags = vol.mountFlags | 1;
                vol.mountFlags = vol.mountFlags | 2;
            }
            if (vol.disk.isAdoptable()) {
                vol.mountFlags |= 2;
            }
            vol.mountUserId = this.mCurrentUserId;
            this.mHandler.obtainMessage(5, vol).sendToTarget();
            return;
        }
        if (vol.type == 1) {
            this.mHandler.obtainMessage(5, vol).sendToTarget();
            return;
        }
        if (vol.type == 5) {
            vol.mountUserId = this.mCurrentUserId;
            this.mHandler.obtainMessage(5, vol).sendToTarget();
        } else {
            Slog.d(TAG, "Skipping automatic mounting of " + vol);
        }
    }

    private boolean isBroadcastWorthy(VolumeInfo vol) {
        int type = vol.getType();
        if (type != 0 && type != 1 && type != 2 && type != 5) {
            return false;
        }
        int state = vol.getState();
        return state == 0 || state == 8 || state == 2 || state == 3 || state == 5 || state == 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVolumeStateChangedLocked(final VolumeInfo vol, int oldState, int newState) {
        if (vol.type == 2) {
            if (newState != 2) {
                this.mFuseMountedUser.remove(Integer.valueOf(vol.getMountUserId()));
            } else if (this.mVoldAppDataIsolationEnabled) {
                final int userId = vol.getMountUserId();
                this.mFuseMountedUser.add(Integer.valueOf(userId));
                new Thread(new Runnable() { // from class: com.android.server.-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onVolumeStateChangedLocked$2$StorageManagerService(vol, userId);
                    }
                }).start();
            }
        }
    }

    public /* synthetic */ void lambda$onVolumeStateChangedLocked$2$StorageManagerService(VolumeInfo vol, int userId) {
        Map<Integer, String> pidPkgMap = null;
        for (int i = 0; i < 5; i++) {
            try {
                pidPkgMap = ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).getProcessesWithPendingBindMounts(vol.getMountUserId());
                break;
            } catch (IllegalStateException e) {
                Slog.i(TAG, "Some processes are starting, retry");
                SystemClock.sleep(100L);
            }
        }
        if (pidPkgMap != null) {
            remountAppStorageDirs(pidPkgMap, userId);
        } else {
            Slog.wtf(TAG, "Not able to getStorageNotOptimizedProcesses() after 5 retries");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0114 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onVolumeStateChangedAsync(android.os.storage.VolumeInfo r17, int r18, int r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.StorageManagerService.onVolumeStateChangedAsync(android.os.storage.VolumeInfo, int, int):void");
    }

    private void maybeLogMediaMount(VolumeInfo vol, int newState) {
        DiskInfo disk;
        if (!SecurityLog.isLoggingEnabled() || (disk = vol.getDisk()) == null || (disk.flags & 12) == 0) {
            return;
        }
        String label = disk.label != null ? disk.label.trim() : "";
        if (newState == 2 || newState == 3) {
            SecurityLog.writeEvent(210013, new Object[]{vol.path, label});
        } else if (newState == 0 || newState == 8) {
            SecurityLog.writeEvent(210014, new Object[]{vol.path, label});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMoveStatusLocked(int status) {
        IPackageMoveObserver iPackageMoveObserver = this.mMoveCallback;
        if (iPackageMoveObserver == null) {
            Slog.w(TAG, "Odd, status but no move requested");
            return;
        }
        try {
            iPackageMoveObserver.onStatusChanged(-1, status, -1L);
        } catch (RemoteException e) {
        }
        if (status == 82) {
            Slog.d(TAG, "Move to " + this.mMoveTargetUuid + " copy phase finshed; persisting");
            this.mPrimaryStorageUuid = this.mMoveTargetUuid;
            writeSettingsLocked();
        }
        if (PackageManager.isMoveStatusFinished(status)) {
            Slog.d(TAG, "Move to " + this.mMoveTargetUuid + " finished with status " + status);
            this.mMoveCallback = null;
            this.mMoveTargetUuid = null;
        }
    }

    private void enforcePermission(String perm) {
        this.mContext.enforceCallingOrSelfPermission(perm, perm);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMountDisallowed(VolumeInfo vol) {
        UserManager userManager = (UserManager) this.mContext.getSystemService(UserManager.class);
        boolean isUsbRestricted = false;
        if (vol.disk != null && vol.disk.isUsb()) {
            isUsbRestricted = userManager.hasUserRestriction("no_usb_file_transfer", Binder.getCallingUserHandle());
        }
        boolean isTypeRestricted = false;
        if (vol.type == 0 || vol.type == 1 || vol.type == 5) {
            isTypeRestricted = userManager.hasUserRestriction("no_physical_media", Binder.getCallingUserHandle());
        }
        return isUsbRestricted || isTypeRestricted;
    }

    private void enforceAdminUser() {
        UserManager um = (UserManager) this.mContext.getSystemService("user");
        int callingUserId = UserHandle.getCallingUserId();
        long token = Binder.clearCallingIdentity();
        try {
            boolean isAdmin = um.getUserInfo(callingUserId).isAdmin();
            Binder.restoreCallingIdentity(token);
            if (!isAdmin) {
                throw new SecurityException("Only admin users can adopt sd cards");
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public StorageManagerService(Context context) {
        boolean z;
        sSelf = this;
        SystemProperties.set("sys.isolated_storage_snapshot", Boolean.toString(SystemProperties.getBoolean("persist.sys.isolated_storage", true)));
        boolean z2 = SystemProperties.getBoolean("persist.sys.fuse", true);
        this.mIsFuseEnabled = z2;
        if (!z2 || !SystemProperties.getBoolean(ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY, false)) {
            z = false;
        } else {
            z = true;
        }
        this.mVoldAppDataIsolationEnabled = z;
        this.mContext = context;
        this.mResolver = context.getContentResolver();
        this.mCallbacks = new Callbacks(FgThread.get().getLooper());
        this.mLockPatternUtils = new LockPatternUtils(this.mContext);
        HandlerThread hthread = new HandlerThread(TAG);
        hthread.start();
        this.mHandler = new StorageManagerServiceHandler(hthread.getLooper());
        this.mObbActionHandler = new ObbActionHandler(IoThread.get().getLooper());
        this.mStorageSessionController = new StorageSessionController(this.mContext, this.mIsFuseEnabled);
        Installer installer = new Installer(this.mContext);
        this.mInstaller = installer;
        installer.onStart();
        File dataDir = Environment.getDataDirectory();
        File systemDir = new File(dataDir, "system");
        File file = new File(systemDir, LAST_FSTRIM_FILE);
        this.mLastMaintenanceFile = file;
        if (!file.exists()) {
            try {
                new FileOutputStream(this.mLastMaintenanceFile).close();
            } catch (IOException e) {
                Slog.e(TAG, "Unable to create fstrim record " + this.mLastMaintenanceFile.getPath());
            }
        } else {
            this.mLastMaintenance = this.mLastMaintenanceFile.lastModified();
        }
        this.mSettingsFile = new AtomicFile(new File(Environment.getDataSystemDirectory(), "storage.xml"), "storage-settings");
        synchronized (this.mLock) {
            readSettingsLocked();
        }
        LocalServices.addService(StorageManagerInternal.class, this.mStorageManagerInternal);
        IntentFilter userFilter = new IntentFilter();
        userFilter.addAction("android.intent.action.USER_ADDED");
        userFilter.addAction("android.intent.action.USER_REMOVED");
        this.mContext.registerReceiver(this.mUserReceiver, userFilter, null, this.mHandler);
        synchronized (this.mLock) {
            addInternalVolumeLocked();
        }
        Watchdog.getInstance().addMonitor(this);
        this.mIsAutomotive = context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
        this.mExternalDelayTime = SystemProperties.getInt("persist.sys.ex_mount_delay", 0);
        if (this.mExternalDelayTime > 15000) {
            this.mExternalDelayTime = ProcessList.PSS_MIN_TIME_FROM_STATE_CHANGE;
        }
        this.mExternalDelay = this.mExternalDelayTime != 0;
    }

    private void updateFusePropFromSettings() {
        boolean settingsFuseFlag = SystemProperties.getBoolean("persist.sys.fflag.override.settings_fuse", true);
        Slog.d(TAG, "FUSE flags. Settings: " + settingsFuseFlag + ". Default: true");
        if (this.mIsFuseEnabled != settingsFuseFlag) {
            Slog.i(TAG, "Toggling persist.sys.fuse to " + settingsFuseFlag);
            SystemProperties.set("persist.sys.fuse", Boolean.toString(settingsFuseFlag));
            ((PowerManager) this.mContext.getSystemService(PowerManager.class)).reboot("fuse_prop");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void start() {
        lambda$connectStoraged$3$StorageManagerService();
        lambda$connectVold$4$StorageManagerService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: connectStoraged, reason: merged with bridge method [inline-methods] */
    public void lambda$connectStoraged$3$StorageManagerService() {
        IBinder binder = ServiceManager.getService("storaged");
        if (binder != null) {
            try {
                binder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.StorageManagerService.5
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        Slog.w(StorageManagerService.TAG, "storaged died; reconnecting");
                        StorageManagerService.this.mStoraged = null;
                        StorageManagerService.this.lambda$connectStoraged$3$StorageManagerService();
                    }
                }, 0);
            } catch (RemoteException e) {
                binder = null;
            }
        }
        if (binder != null) {
            this.mStoraged = IStoraged.Stub.asInterface(binder);
        } else {
            Slog.w(TAG, "storaged not found; trying again");
        }
        if (this.mStoraged == null) {
            BackgroundThread.getHandler().postDelayed(new Runnable() { // from class: com.android.server.-$$Lambda$StorageManagerService$1Q-KZa2Hx_KUWPEktCctvDhjjtQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$connectStoraged$3$StorageManagerService();
                }
            }, 1000L);
        } else {
            onDaemonConnected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: connectVold, reason: merged with bridge method [inline-methods] */
    public void lambda$connectVold$4$StorageManagerService() {
        IBinder binder = ServiceManager.getService("vold");
        if (binder != null) {
            try {
                binder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.StorageManagerService.6
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        Slog.w(StorageManagerService.TAG, "vold died; reconnecting");
                        StorageManagerService.this.mVold = null;
                        StorageManagerService.this.lambda$connectVold$4$StorageManagerService();
                    }
                }, 0);
            } catch (RemoteException e) {
                binder = null;
            }
        }
        if (binder == null) {
            Slog.w(TAG, "vold not found; trying again");
        } else {
            this.mVold = IVold.Stub.asInterface(binder);
            try {
                this.mVold.setListener(this.mListener);
            } catch (RemoteException e2) {
                this.mVold = null;
                Slog.w(TAG, "vold listener rejected; trying again", e2);
            }
        }
        if (this.mVold == null) {
            BackgroundThread.getHandler().postDelayed(new Runnable() { // from class: com.android.server.-$$Lambda$StorageManagerService$43y8_l8yNNnpxoU9-BJAIKmuH5I
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$connectVold$4$StorageManagerService();
                }
            }, 1000L);
        } else {
            onDaemonConnected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void servicesReady() {
        this.mPmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        this.mIPackageManager = IPackageManager.Stub.asInterface(ServiceManager.getService(com.android.server.pm.Settings.ATTR_PACKAGE));
        this.mIAppOpsService = IAppOpsService.Stub.asInterface(ServiceManager.getService("appops"));
        ProviderInfo provider = getProviderInfo("media");
        if (provider != null) {
            this.mMediaStoreAuthorityAppId = UserHandle.getAppId(provider.applicationInfo.uid);
            sMediaStoreAuthorityProcessName = provider.applicationInfo.processName;
        }
        ProviderInfo provider2 = getProviderInfo("downloads");
        if (provider2 != null) {
            this.mDownloadsAuthorityAppId = UserHandle.getAppId(provider2.applicationInfo.uid);
        }
        ProviderInfo provider3 = getProviderInfo("com.android.externalstorage.documents");
        if (provider3 != null) {
            this.mExternalStorageAuthorityAppId = UserHandle.getAppId(provider3.applicationInfo.uid);
        }
        if (!this.mIsFuseEnabled) {
            try {
                this.mIAppOpsService.startWatchingMode(66, (String) null, this.mAppOpsCallback);
                this.mIAppOpsService.startWatchingMode(87, (String) null, this.mAppOpsCallback);
            } catch (RemoteException e) {
            }
        }
    }

    private ProviderInfo getProviderInfo(String authority) {
        return this.mPmInternal.resolveContentProvider(authority, 786432, UserHandle.getUserId(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLegacyStorageApps(String packageName, int uid, boolean hasLegacy) {
        synchronized (this.mLock) {
            try {
                if (hasLegacy) {
                    Slog.v(TAG, "Package " + packageName + " has legacy storage");
                    this.mUidsWithLegacyExternalStorage.add(Integer.valueOf(uid));
                } else {
                    Slog.v(TAG, "Package " + packageName + " does not have legacy storage");
                    this.mUidsWithLegacyExternalStorage.remove(Integer.valueOf(uid));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void snapshotAndMonitorLegacyStorageAppOp(UserHandle user) {
        int userId = user.getIdentifier();
        Iterator<ApplicationInfo> it = this.mPmInternal.getInstalledApplications(4988928, userId, Process.myUid()).iterator();
        while (true) {
            boolean hasLegacy = true;
            if (it.hasNext()) {
                ApplicationInfo ai = it.next();
                try {
                    if (this.mIAppOpsService.checkOperation(87, ai.uid, ai.packageName) != 0) {
                        hasLegacy = false;
                    }
                    updateLegacyStorageApps(ai.packageName, ai.uid, hasLegacy);
                } catch (RemoteException e) {
                    Slog.e(TAG, "Failed to check legacy op for package " + ai.packageName, e);
                }
            } else {
                PackageMonitor monitor = new PackageMonitor() { // from class: com.android.server.StorageManagerService.7
                    public void onPackageRemoved(String packageName, int uid) {
                        StorageManagerService.this.updateLegacyStorageApps(packageName, uid, false);
                    }
                };
                monitor.register(this.mContext, user, true, this.mHandler);
                this.mPackageMonitorsForUser.put(Integer.valueOf(userId), monitor);
                return;
            }
        }
    }

    private static long getLastAccessTime(AppOpsManager manager, int uid, String packageName, int[] ops) {
        long maxTime = 0;
        List<AppOpsManager.PackageOps> pkgs = manager.getOpsForPackage(uid, packageName, ops);
        for (AppOpsManager.PackageOps pkg : CollectionUtils.emptyIfNull(pkgs)) {
            for (AppOpsManager.OpEntry op : CollectionUtils.emptyIfNull(pkg.getOps())) {
                maxTime = Math.max(maxTime, op.getLastAccessTime(13));
            }
        }
        return maxTime;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void systemReady() {
        ((ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class)).registerScreenObserver(this);
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bootCompleted() {
        this.mBootCompleted = true;
        this.mHandler.obtainMessage(13).sendToTarget();
        updateFusePropFromSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBootCompleted() {
        initIfBootedAndConnected();
        resetIfBootedAndConnected();
    }

    private String getDefaultPrimaryStorageUuid() {
        if (SystemProperties.getBoolean("ro.vold.primary_physical", false)) {
            return "primary_physical";
        }
        return StorageManager.UUID_PRIVATE_INTERNAL;
    }

    private void readSettingsLocked() {
        this.mRecords.clear();
        this.mPrimaryStorageUuid = getDefaultPrimaryStorageUuid();
        FileInputStream fis = null;
        try {
            try {
                fis = this.mSettingsFile.openRead();
                XmlPullParser in = Xml.newPullParser();
                in.setInput(fis, StandardCharsets.UTF_8.name());
                while (true) {
                    int type = in.next();
                    boolean z = true;
                    if (type == 1) {
                        break;
                    }
                    if (type == 2) {
                        String tag = in.getName();
                        if (TAG_VOLUMES.equals(tag)) {
                            int version = XmlUtils.readIntAttribute(in, ATTR_VERSION, 1);
                            boolean primaryPhysical = SystemProperties.getBoolean("ro.vold.primary_physical", false);
                            if (version < 3 && (version < 2 || primaryPhysical)) {
                                z = false;
                            }
                            boolean validAttr = z;
                            if (validAttr) {
                                this.mPrimaryStorageUuid = XmlUtils.readStringAttribute(in, ATTR_PRIMARY_STORAGE_UUID);
                            }
                        } else if (TAG_VOLUME.equals(tag)) {
                            VolumeRecord rec = readVolumeRecord(in);
                            this.mRecords.put(rec.fsUuid, rec);
                        }
                    }
                }
            } catch (FileNotFoundException e) {
            } catch (IOException e2) {
                Slog.wtf(TAG, "Failed reading metadata", e2);
            } catch (XmlPullParserException e3) {
                Slog.wtf(TAG, "Failed reading metadata", e3);
            }
            IoUtils.closeQuietly(fis);
        } catch (Throwable th) {
            IoUtils.closeQuietly(fis);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeSettingsLocked() {
        FileOutputStream fos = null;
        try {
            fos = this.mSettingsFile.startWrite();
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(fos, StandardCharsets.UTF_8.name());
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.startTag(null, TAG_VOLUMES);
            XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_VERSION, 3);
            XmlUtils.writeStringAttribute(fastXmlSerializer, ATTR_PRIMARY_STORAGE_UUID, this.mPrimaryStorageUuid);
            int size = this.mRecords.size();
            for (int i = 0; i < size; i++) {
                VolumeRecord rec = this.mRecords.valueAt(i);
                writeVolumeRecord(fastXmlSerializer, rec);
            }
            fastXmlSerializer.endTag(null, TAG_VOLUMES);
            fastXmlSerializer.endDocument();
            this.mSettingsFile.finishWrite(fos);
        } catch (IOException e) {
            if (fos != null) {
                this.mSettingsFile.failWrite(fos);
            }
        }
    }

    public static VolumeRecord readVolumeRecord(XmlPullParser in) throws IOException {
        int type = XmlUtils.readIntAttribute(in, "type");
        String fsUuid = XmlUtils.readStringAttribute(in, ATTR_FS_UUID);
        VolumeRecord meta = new VolumeRecord(type, fsUuid);
        meta.partGuid = XmlUtils.readStringAttribute(in, ATTR_PART_GUID);
        meta.nickname = XmlUtils.readStringAttribute(in, ATTR_NICKNAME);
        meta.userFlags = XmlUtils.readIntAttribute(in, ATTR_USER_FLAGS);
        meta.createdMillis = XmlUtils.readLongAttribute(in, ATTR_CREATED_MILLIS, 0L);
        meta.lastSeenMillis = XmlUtils.readLongAttribute(in, ATTR_LAST_SEEN_MILLIS, 0L);
        meta.lastTrimMillis = XmlUtils.readLongAttribute(in, ATTR_LAST_TRIM_MILLIS, 0L);
        meta.lastBenchMillis = XmlUtils.readLongAttribute(in, ATTR_LAST_BENCH_MILLIS, 0L);
        return meta;
    }

    public static void writeVolumeRecord(XmlSerializer out, VolumeRecord rec) throws IOException {
        out.startTag(null, TAG_VOLUME);
        XmlUtils.writeIntAttribute(out, "type", rec.type);
        XmlUtils.writeStringAttribute(out, ATTR_FS_UUID, rec.fsUuid);
        XmlUtils.writeStringAttribute(out, ATTR_PART_GUID, rec.partGuid);
        XmlUtils.writeStringAttribute(out, ATTR_NICKNAME, rec.nickname);
        XmlUtils.writeIntAttribute(out, ATTR_USER_FLAGS, rec.userFlags);
        XmlUtils.writeLongAttribute(out, ATTR_CREATED_MILLIS, rec.createdMillis);
        XmlUtils.writeLongAttribute(out, ATTR_LAST_SEEN_MILLIS, rec.lastSeenMillis);
        XmlUtils.writeLongAttribute(out, ATTR_LAST_TRIM_MILLIS, rec.lastTrimMillis);
        XmlUtils.writeLongAttribute(out, ATTR_LAST_BENCH_MILLIS, rec.lastBenchMillis);
        out.endTag(null, TAG_VOLUME);
    }

    public void registerListener(IStorageEventListener listener) {
        this.mCallbacks.register(listener);
    }

    public void unregisterListener(IStorageEventListener listener) {
        this.mCallbacks.unregister(listener);
    }

    public void shutdown(IStorageShutdownObserver observer) {
        enforcePermission("android.permission.SHUTDOWN");
        Slog.i(TAG, "Shutting down");
        this.mHandler.obtainMessage(3, observer).sendToTarget();
    }

    public void mount(String volId) {
        enforcePermission("android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        VolumeInfo vol = findVolumeByIdOrThrow(volId);
        if (isMountDisallowed(vol)) {
            throw new SecurityException("Mounting " + volId + " restricted by policy");
        }
        mount(vol);
    }

    private void remountAppStorageDirs(Map<Integer, String> pidPkgMap, int userId) {
        for (Map.Entry<Integer, String> entry : pidPkgMap.entrySet()) {
            int pid = entry.getKey().intValue();
            String packageName = entry.getValue();
            Slog.i(TAG, "Remounting storage for pid: " + pid);
            String[] sharedPackages = this.mPmInternal.getSharedUserPackagesForPackage(packageName, userId);
            int uid = this.mPmInternal.getPackageUidInternal(packageName, 0, userId);
            String[] packages = sharedPackages.length != 0 ? sharedPackages : new String[]{packageName};
            try {
                this.mVold.remountAppStorageDirs(uid, pid, packages);
            } catch (RemoteException e) {
                throw e.rethrowAsRuntimeException();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPrimaryStorageCandidateVolume(VolumeInfo vol) {
        if ("private".equals(vol.getId())) {
            return true;
        }
        return vol.isMountedWritable() && vol.getType() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mount(final VolumeInfo vol) {
        if (this.mExternalDelay && vol.type == 0) {
            Slog.i(TAG, "external volume mount ignore: " + vol.toString());
            return;
        }
        try {
            Slog.i(TAG, "Mounting volume " + vol);
            this.mVold.mount(vol.id, vol.mountFlags, vol.mountUserId, new IVoldMountCallback.Stub() { // from class: com.android.server.StorageManagerService.8
                @Override // android.os.IVoldMountCallback
                public boolean onVolumeChecking(FileDescriptor fd, String path, String internalPath) {
                    vol.path = path;
                    vol.internalPath = internalPath;
                    ParcelFileDescriptor pfd = new ParcelFileDescriptor(fd);
                    try {
                        try {
                            StorageManagerService.this.mStorageSessionController.onVolumeMount(pfd, vol);
                            try {
                                pfd.close();
                            } catch (Exception e) {
                                Slog.e(StorageManagerService.TAG, "Failed to close FUSE device fd", e);
                            }
                            return true;
                        } catch (Throwable th) {
                            try {
                                pfd.close();
                            } catch (Exception e2) {
                                Slog.e(StorageManagerService.TAG, "Failed to close FUSE device fd", e2);
                            }
                            throw th;
                        }
                    } catch (StorageSessionController.ExternalStorageServiceException e3) {
                        Slog.e(StorageManagerService.TAG, "Failed to mount volume " + vol, e3);
                        Slog.e(StorageManagerService.TAG, "Failed to mount vol path:" + path);
                        if (!StorageManagerService.isPrimaryStorageCandidateVolume(vol)) {
                            Slog.e(StorageManagerService.TAG, "Failed to mount vol, (mega)ignored to reset external vold, path:" + path);
                            try {
                                pfd.close();
                            } catch (Exception e4) {
                                Slog.e(StorageManagerService.TAG, "Failed to close FUSE device fd", e4);
                            }
                            return false;
                        }
                        if (path != null && path.startsWith("/storage/dvr")) {
                            Slog.e(StorageManagerService.TAG, "Failed to mount TF, (mega)ignored to reset TF vold, path:" + path);
                            try {
                                pfd.close();
                            } catch (Exception e5) {
                                Slog.e(StorageManagerService.TAG, "Failed to close FUSE device fd", e5);
                            }
                            return false;
                        }
                        Slog.i(StorageManagerService.TAG, "Scheduling reset in 10s, as vol mount fail,vol path:" + path);
                        StorageManagerService.this.mHandler.removeMessages(10);
                        StorageManagerService.this.mHandler.sendMessageDelayed(StorageManagerService.this.mHandler.obtainMessage(10), TimeUnit.SECONDS.toMillis((long) 10));
                        try {
                            pfd.close();
                        } catch (Exception e6) {
                            Slog.e(StorageManagerService.TAG, "Failed to close FUSE device fd", e6);
                        }
                        return false;
                    }
                }
            });
            Slog.i(TAG, "Mounted volume " + vol);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void unmount(String volId) {
        enforcePermission("android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        VolumeInfo vol = findVolumeByIdOrThrow(volId);
        unmount(vol);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unmount(VolumeInfo vol) {
        try {
            try {
                if (vol.type == 1) {
                    this.mInstaller.onPrivateVolumeRemoved(vol.getFsUuid());
                }
            } catch (Installer.InstallerException e) {
                Slog.e(TAG, "Failed unmount mirror data", e);
            }
            this.mVold.unmount(vol.id);
            this.mStorageSessionController.onVolumeUnmount(vol);
        } catch (Exception e2) {
            Slog.wtf(TAG, e2);
        }
    }

    public void format(String volId) {
        enforcePermission("android.permission.MOUNT_FORMAT_FILESYSTEMS");
        VolumeInfo vol = findVolumeByIdOrThrow(volId);
        String fsUuid = vol.fsUuid;
        try {
            this.mVold.format(vol.id, UiModeManagerService.Shell.NIGHT_MODE_STR_AUTO);
            if (!TextUtils.isEmpty(fsUuid)) {
                forgetVolume(fsUuid);
            }
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void benchmark(String volId, final IVoldTaskListener listener) {
        enforcePermission("android.permission.MOUNT_FORMAT_FILESYSTEMS");
        try {
            this.mVold.benchmark(volId, new IVoldTaskListener.Stub() { // from class: com.android.server.StorageManagerService.9
                @Override // android.os.IVoldTaskListener
                public void onStatus(int status, PersistableBundle extras) {
                    StorageManagerService.this.dispatchOnStatus(listener, status, extras);
                }

                @Override // android.os.IVoldTaskListener
                public void onFinished(int status, PersistableBundle extras) {
                    StorageManagerService.this.dispatchOnFinished(listener, status, extras);
                    String path = extras.getString("path");
                    String ident = extras.getString("ident");
                    long create = extras.getLong("create");
                    long run = extras.getLong("run");
                    long destroy = extras.getLong("destroy");
                    DropBoxManager dropBox = (DropBoxManager) StorageManagerService.this.mContext.getSystemService(DropBoxManager.class);
                    dropBox.addText(StorageManagerService.TAG_STORAGE_BENCHMARK, StorageManagerService.this.scrubPath(path) + " " + ident + " " + create + " " + run + " " + destroy);
                    synchronized (StorageManagerService.this.mLock) {
                        VolumeRecord rec = StorageManagerService.this.findRecordForPath(path);
                        if (rec != null) {
                            rec.lastBenchMillis = System.currentTimeMillis();
                            StorageManagerService.this.writeSettingsLocked();
                        }
                    }
                }
            });
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        }
    }

    public void partitionPublic(String diskId) {
        enforcePermission("android.permission.MOUNT_FORMAT_FILESYSTEMS");
        CountDownLatch latch = findOrCreateDiskScanLatch(diskId);
        try {
            this.mVold.partition(diskId, 0, -1);
            waitForLatch(latch, "partitionPublic", 180000L);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void partitionPrivate(String diskId) {
        enforcePermission("android.permission.MOUNT_FORMAT_FILESYSTEMS");
        enforceAdminUser();
        CountDownLatch latch = findOrCreateDiskScanLatch(diskId);
        try {
            this.mVold.partition(diskId, 1, -1);
            waitForLatch(latch, "partitionPrivate", 180000L);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void partitionMixed(String diskId, int ratio) {
        enforcePermission("android.permission.MOUNT_FORMAT_FILESYSTEMS");
        enforceAdminUser();
        CountDownLatch latch = findOrCreateDiskScanLatch(diskId);
        try {
            this.mVold.partition(diskId, 2, ratio);
            waitForLatch(latch, "partitionMixed", 180000L);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void setVolumeNickname(String fsUuid, String nickname) {
        enforcePermission("android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        Objects.requireNonNull(fsUuid);
        synchronized (this.mLock) {
            VolumeRecord rec = this.mRecords.get(fsUuid);
            rec.nickname = nickname;
            this.mCallbacks.notifyVolumeRecordChanged(rec);
            writeSettingsLocked();
        }
    }

    public void setVolumeUserFlags(String fsUuid, int flags, int mask) {
        enforcePermission("android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        Objects.requireNonNull(fsUuid);
        synchronized (this.mLock) {
            VolumeRecord rec = this.mRecords.get(fsUuid);
            rec.userFlags = (rec.userFlags & (~mask)) | (flags & mask);
            this.mCallbacks.notifyVolumeRecordChanged(rec);
            writeSettingsLocked();
        }
    }

    public void forgetVolume(String fsUuid) {
        enforcePermission("android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        Objects.requireNonNull(fsUuid);
        synchronized (this.mLock) {
            VolumeRecord rec = this.mRecords.remove(fsUuid);
            if (rec != null && !TextUtils.isEmpty(rec.partGuid)) {
                this.mHandler.obtainMessage(9, rec).sendToTarget();
            }
            this.mCallbacks.notifyVolumeForgotten(fsUuid);
            if (Objects.equals(this.mPrimaryStorageUuid, fsUuid)) {
                this.mPrimaryStorageUuid = getDefaultPrimaryStorageUuid();
                this.mHandler.obtainMessage(10).sendToTarget();
            }
            writeSettingsLocked();
        }
    }

    public void forgetAllVolumes() {
        enforcePermission("android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        synchronized (this.mLock) {
            for (int i = 0; i < this.mRecords.size(); i++) {
                String fsUuid = this.mRecords.keyAt(i);
                VolumeRecord rec = this.mRecords.valueAt(i);
                if (!TextUtils.isEmpty(rec.partGuid)) {
                    this.mHandler.obtainMessage(9, rec).sendToTarget();
                }
                this.mCallbacks.notifyVolumeForgotten(fsUuid);
            }
            this.mRecords.clear();
            if (!Objects.equals(StorageManager.UUID_PRIVATE_INTERNAL, this.mPrimaryStorageUuid)) {
                this.mPrimaryStorageUuid = getDefaultPrimaryStorageUuid();
            }
            writeSettingsLocked();
            this.mHandler.obtainMessage(10).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forgetPartition(String partGuid, String fsUuid) {
        try {
            this.mVold.forgetPartition(partGuid, fsUuid);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void fstrim(int flags, final IVoldTaskListener listener) {
        if (this.mVold == null) {
            return;
        }
        enforcePermission("android.permission.MOUNT_FORMAT_FILESYSTEMS");
        try {
            if (needsCheckpoint() && supportsBlockCheckpoint()) {
                Slog.i(TAG, "Skipping fstrim - block based checkpoint in progress");
                return;
            }
            this.mVold.fstrim(flags, new IVoldTaskListener.Stub() { // from class: com.android.server.StorageManagerService.10
                @Override // android.os.IVoldTaskListener
                public void onStatus(int status, PersistableBundle extras) {
                    StorageManagerService.this.dispatchOnStatus(listener, status, extras);
                    if (status != 0) {
                        return;
                    }
                    String path = extras.getString("path");
                    long bytes = extras.getLong("bytes");
                    long time = extras.getLong("time");
                    DropBoxManager dropBox = (DropBoxManager) StorageManagerService.this.mContext.getSystemService(DropBoxManager.class);
                    dropBox.addText(StorageManagerService.TAG_STORAGE_TRIM, StorageManagerService.this.scrubPath(path) + " " + bytes + " " + time);
                    synchronized (StorageManagerService.this.mLock) {
                        VolumeRecord rec = StorageManagerService.this.findRecordForPath(path);
                        if (rec != null) {
                            rec.lastTrimMillis = System.currentTimeMillis();
                            StorageManagerService.this.writeSettingsLocked();
                        }
                    }
                }

                @Override // android.os.IVoldTaskListener
                public void onFinished(int status, PersistableBundle extras) {
                    StorageManagerService.this.dispatchOnFinished(listener, status, extras);
                }
            });
        } catch (RemoteException e) {
            throw e.rethrowAsRuntimeException();
        }
    }

    void runIdleMaint(final Runnable callback) {
        enforcePermission("android.permission.MOUNT_FORMAT_FILESYSTEMS");
        try {
            if (needsCheckpoint() && supportsBlockCheckpoint()) {
                Slog.i(TAG, "Skipping idle maintenance - block based checkpoint in progress");
            } else {
                this.mVold.runIdleMaint(new IVoldTaskListener.Stub() { // from class: com.android.server.StorageManagerService.11
                    @Override // android.os.IVoldTaskListener
                    public void onStatus(int status, PersistableBundle extras) {
                    }

                    @Override // android.os.IVoldTaskListener
                    public void onFinished(int status, PersistableBundle extras) {
                        if (callback != null) {
                            BackgroundThread.getHandler().post(callback);
                        }
                    }
                });
            }
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void runIdleMaintenance() {
        runIdleMaint(null);
    }

    void abortIdleMaint(final Runnable callback) {
        enforcePermission("android.permission.MOUNT_FORMAT_FILESYSTEMS");
        try {
            this.mVold.abortIdleMaint(new IVoldTaskListener.Stub() { // from class: com.android.server.StorageManagerService.12
                @Override // android.os.IVoldTaskListener
                public void onStatus(int status, PersistableBundle extras) {
                }

                @Override // android.os.IVoldTaskListener
                public void onFinished(int status, PersistableBundle extras) {
                    if (callback != null) {
                        BackgroundThread.getHandler().post(callback);
                    }
                }
            });
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void abortIdleMaintenance() {
        abortIdleMaint(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void remountUidExternalStorage(int uid, int mode) {
        if (uid == 1000) {
            return;
        }
        try {
            this.mVold.remountUid(uid, mode);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void setDebugFlags(int flags, int mask) {
        int value;
        String value2;
        String value3;
        enforcePermission("android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        if ((mask & 4) != 0) {
            if (StorageManager.isFileEncryptedNativeOnly()) {
                throw new IllegalStateException("Emulation not supported on device with native FBE");
            }
            if (this.mLockPatternUtils.isCredentialRequiredToDecrypt(false)) {
                throw new IllegalStateException("Emulation requires disabling 'Secure start-up' in Settings > Security");
            }
            long token = Binder.clearCallingIdentity();
            boolean emulateFbe = (flags & 4) != 0;
            try {
                SystemProperties.set("persist.sys.emulate_fbe", Boolean.toString(emulateFbe));
                ((PowerManager) this.mContext.getSystemService(PowerManager.class)).reboot(null);
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
        if ((mask & 3) != 0) {
            if ((flags & 1) != 0) {
                value3 = "force_on";
            } else if ((flags & 2) != 0) {
                value3 = "force_off";
            } else {
                value3 = "";
            }
            long token2 = Binder.clearCallingIdentity();
            try {
                SystemProperties.set("persist.sys.adoptable", value3);
                this.mHandler.obtainMessage(10).sendToTarget();
                Binder.restoreCallingIdentity(token2);
            } catch (Throwable th2) {
                Binder.restoreCallingIdentity(token2);
                throw th2;
            }
        }
        if ((mask & 24) != 0) {
            if ((flags & 8) != 0) {
                value2 = "force_on";
            } else if ((flags & 16) != 0) {
                value2 = "force_off";
            } else {
                value2 = "";
            }
            long token3 = Binder.clearCallingIdentity();
            try {
                SystemProperties.set("persist.sys.sdcardfs", value2);
                this.mHandler.obtainMessage(10).sendToTarget();
                Binder.restoreCallingIdentity(token3);
            } catch (Throwable th3) {
                Binder.restoreCallingIdentity(token3);
                throw th3;
            }
        }
        if ((mask & 32) != 0) {
            boolean enabled = (flags & 32) != 0;
            long token4 = Binder.clearCallingIdentity();
            try {
                SystemProperties.set("persist.sys.virtual_disk", Boolean.toString(enabled));
                this.mHandler.obtainMessage(10).sendToTarget();
                Binder.restoreCallingIdentity(token4);
            } catch (Throwable th4) {
                Binder.restoreCallingIdentity(token4);
                throw th4;
            }
        }
        if ((mask & CecMessageType.INITIATE_ARC) != 0) {
            if ((flags & 64) != 0) {
                value = 1;
            } else {
                int value4 = flags & 128;
                if (value4 != 0) {
                    value = -1;
                } else {
                    value = 0;
                }
            }
            long token5 = Binder.clearCallingIdentity();
            try {
                Settings.Global.putInt(this.mContext.getContentResolver(), "isolated_storage_local", value);
                refreshIsolatedStorageSettings();
                this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$StorageManagerService$BseoOaqQft6Zl5fkxkPPeceEDjQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setDebugFlags$5$StorageManagerService();
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(token5);
            }
        }
    }

    public /* synthetic */ void lambda$setDebugFlags$5$StorageManagerService() {
        ((PowerManager) this.mContext.getSystemService(PowerManager.class)).reboot(null);
    }

    public String getPrimaryStorageUuid() {
        String str;
        synchronized (this.mLock) {
            str = this.mPrimaryStorageUuid;
        }
        return str;
    }

    public void setPrimaryStorageUuid(String volumeUuid, IPackageMoveObserver callback) {
        enforcePermission("android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        synchronized (this.mLock) {
            if (Objects.equals(this.mPrimaryStorageUuid, volumeUuid)) {
                throw new IllegalArgumentException("Primary storage already at " + volumeUuid);
            }
            if (this.mMoveCallback != null) {
                throw new IllegalStateException("Move already in progress");
            }
            this.mMoveCallback = callback;
            this.mMoveTargetUuid = volumeUuid;
            List<UserInfo> users = ((UserManager) this.mContext.getSystemService(UserManager.class)).getUsers();
            for (UserInfo user : users) {
                if (StorageManager.isFileEncryptedNativeOrEmulated() && !isUserKeyUnlocked(user.id)) {
                    Slog.w(TAG, "Failing move due to locked user " + user.id);
                    onMoveStatusLocked(-10);
                    return;
                }
            }
            if (!Objects.equals("primary_physical", this.mPrimaryStorageUuid) && !Objects.equals("primary_physical", volumeUuid)) {
                int currentUserId = this.mCurrentUserId;
                VolumeInfo from = findStorageForUuidAsUser(this.mPrimaryStorageUuid, currentUserId);
                VolumeInfo to = findStorageForUuidAsUser(volumeUuid, currentUserId);
                if (from == null) {
                    Slog.w(TAG, "Failing move due to missing from volume " + this.mPrimaryStorageUuid);
                    onMoveStatusLocked(-6);
                    return;
                }
                if (to == null) {
                    Slog.w(TAG, "Failing move due to missing to volume " + volumeUuid);
                    onMoveStatusLocked(-6);
                    return;
                }
                try {
                    this.mVold.moveStorage(from.id, to.id, new IVoldTaskListener.Stub() { // from class: com.android.server.StorageManagerService.13
                        @Override // android.os.IVoldTaskListener
                        public void onStatus(int status, PersistableBundle extras) {
                            synchronized (StorageManagerService.this.mLock) {
                                StorageManagerService.this.onMoveStatusLocked(status);
                            }
                        }

                        @Override // android.os.IVoldTaskListener
                        public void onFinished(int status, PersistableBundle extras) {
                        }
                    });
                    return;
                } catch (Exception e) {
                    Slog.wtf(TAG, e);
                    return;
                }
            }
            Slog.d(TAG, "Skipping move to/from primary physical");
            onMoveStatusLocked(82);
            onMoveStatusLocked(-100);
            this.mHandler.obtainMessage(10).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void warnOnNotMounted() {
        synchronized (this.mLock) {
            for (int i = 0; i < this.mVolumes.size(); i++) {
                VolumeInfo vol = this.mVolumes.valueAt(i);
                if (vol.isPrimary() && vol.isMountedWritable()) {
                    return;
                }
            }
            Slog.w(TAG, "No primary storage mounted!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUidOwnerOfPackageOrSystem(String packageName, int callerUid) {
        if (callerUid == 1000) {
            return true;
        }
        if (packageName == null) {
            return false;
        }
        int packageUid = this.mPmInternal.getPackageUid(packageName, AudioFormat.EVRC, UserHandle.getUserId(callerUid));
        if (callerUid == packageUid) {
            return true;
        }
        return false;
    }

    public String getMountedObbPath(String rawPath) {
        ObbState state;
        Objects.requireNonNull(rawPath, "rawPath cannot be null");
        warnOnNotMounted();
        synchronized (this.mObbMounts) {
            state = this.mObbPathToStateMap.get(rawPath);
        }
        if (state == null) {
            Slog.w(TAG, "Failed to find OBB mounted at " + rawPath);
            return null;
        }
        return findVolumeByIdOrThrow(state.volId).getPath().getAbsolutePath();
    }

    public boolean isObbMounted(String rawPath) {
        boolean zContainsKey;
        Objects.requireNonNull(rawPath, "rawPath cannot be null");
        synchronized (this.mObbMounts) {
            zContainsKey = this.mObbPathToStateMap.containsKey(rawPath);
        }
        return zContainsKey;
    }

    public void mountObb(String rawPath, String canonicalPath, String key, IObbActionListener token, int nonce, ObbInfo obbInfo) {
        Objects.requireNonNull(rawPath, "rawPath cannot be null");
        Objects.requireNonNull(canonicalPath, "canonicalPath cannot be null");
        Objects.requireNonNull(token, "token cannot be null");
        Objects.requireNonNull(obbInfo, "obbIfno cannot be null");
        int callingUid = Binder.getCallingUid();
        ObbState obbState = new ObbState(rawPath, canonicalPath, callingUid, token, nonce, null);
        ObbAction action = new MountObbAction(obbState, key, callingUid, obbInfo);
        ObbActionHandler obbActionHandler = this.mObbActionHandler;
        obbActionHandler.sendMessage(obbActionHandler.obtainMessage(1, action));
    }

    public void unmountObb(String rawPath, boolean force, IObbActionListener token, int nonce) {
        ObbState existingState;
        Objects.requireNonNull(rawPath, "rawPath cannot be null");
        synchronized (this.mObbMounts) {
            existingState = this.mObbPathToStateMap.get(rawPath);
        }
        if (existingState != null) {
            int callingUid = Binder.getCallingUid();
            ObbState newState = new ObbState(rawPath, existingState.canonicalPath, callingUid, token, nonce, existingState.volId);
            ObbAction action = new UnmountObbAction(newState, force);
            ObbActionHandler obbActionHandler = this.mObbActionHandler;
            obbActionHandler.sendMessage(obbActionHandler.obtainMessage(1, action));
            return;
        }
        Slog.w(TAG, "Unknown OBB mount at " + rawPath);
    }

    public int getEncryptionState() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "no permission to access the crypt keeper");
        try {
            return this.mVold.fdeComplete();
        } catch (Exception e) {
            Slog.wtf(TAG, e);
            return -1;
        }
    }

    public int decryptStorage(String password) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "no permission to access the crypt keeper");
        if (TextUtils.isEmpty(password)) {
            throw new IllegalArgumentException("password cannot be empty");
        }
        try {
            this.mVold.fdeCheckPassword(password);
            this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.-$$Lambda$StorageManagerService$kHfrfIqfu8okPHuGRmwjnqh0v3g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$decryptStorage$6$StorageManagerService();
                }
            }, 1000L);
            return 0;
        } catch (Exception e) {
            Slog.wtf(TAG, e);
            return -1;
        } catch (ServiceSpecificException e2) {
            Slog.e(TAG, "fdeCheckPassword failed", e2);
            return e2.errorCode;
        }
    }

    public /* synthetic */ void lambda$decryptStorage$6$StorageManagerService() {
        try {
            this.mVold.fdeRestart();
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public int encryptStorage(int type, String password) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "no permission to access the crypt keeper");
        if (type == 1) {
            password = "";
        } else if (TextUtils.isEmpty(password)) {
            throw new IllegalArgumentException("password cannot be empty");
        }
        try {
            this.mVold.fdeEnable(type, password, 0);
            return 0;
        } catch (Exception e) {
            Slog.wtf(TAG, e);
            return -1;
        }
    }

    public int changeEncryptionPassword(int type, String password) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "no permission to access the crypt keeper");
        if (StorageManager.isFileEncryptedNativeOnly()) {
            return -1;
        }
        if (type == 1) {
            password = "";
        } else if (TextUtils.isEmpty(password)) {
            throw new IllegalArgumentException("password cannot be empty");
        }
        try {
            this.mVold.fdeChangePassword(type, password);
            return 0;
        } catch (Exception e) {
            Slog.wtf(TAG, e);
            return -1;
        }
    }

    public int verifyEncryptionPassword(String password) throws RemoteException {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("no permission to access the crypt keeper");
        }
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "no permission to access the crypt keeper");
        if (TextUtils.isEmpty(password)) {
            throw new IllegalArgumentException("password cannot be empty");
        }
        try {
            this.mVold.fdeVerifyPassword(password);
            return 0;
        } catch (Exception e) {
            Slog.wtf(TAG, e);
            return -1;
        }
    }

    public int getPasswordType() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "no permission to access the crypt keeper");
        try {
            return this.mVold.fdeGetPasswordType();
        } catch (Exception e) {
            Slog.wtf(TAG, e);
            return -1;
        }
    }

    public void setField(String field, String contents) throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "no permission to access the crypt keeper");
        if (!StorageManager.isBlockEncrypted()) {
            return;
        }
        try {
            this.mVold.fdeSetField(field, contents);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public String getField(String field) throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "no permission to access the crypt keeper");
        if (!StorageManager.isBlockEncrypted()) {
            return null;
        }
        try {
            return this.mVold.fdeGetField(field);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
            return null;
        }
    }

    public boolean isConvertibleToFBE() throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "no permission to access the crypt keeper");
        try {
            return this.mVold.isConvertibleToFbe();
        } catch (Exception e) {
            Slog.wtf(TAG, e);
            return false;
        }
    }

    public boolean supportsCheckpoint() throws RemoteException {
        return this.mVold.supportsCheckpoint();
    }

    public void startCheckpoint(int numTries) throws RemoteException {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1000 && callingUid != 0 && callingUid != 2000) {
            throw new SecurityException("no permission to start filesystem checkpoint");
        }
        this.mVold.startCheckpoint(numTries);
    }

    public void commitChanges() throws RemoteException {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("no permission to commit checkpoint changes");
        }
        this.mVold.commitChanges();
    }

    public boolean needsCheckpoint() throws RemoteException {
        enforcePermission("android.permission.MOUNT_FORMAT_FILESYSTEMS");
        return this.mVold.needsCheckpoint();
    }

    public void abortChanges(String message, boolean retry) throws RemoteException {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("no permission to commit checkpoint changes");
        }
        this.mVold.abortChanges(message, retry);
    }

    public String getPassword() throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "only keyguard can retrieve password");
        try {
            return this.mVold.fdeGetPassword();
        } catch (Exception e) {
            Slog.wtf(TAG, e);
            return null;
        }
    }

    public void clearPassword() throws RemoteException {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CRYPT_KEEPER", "only keyguard can clear password");
        try {
            this.mVold.fdeClearPassword();
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void createUserKey(int userId, int serialNumber, boolean ephemeral) {
        enforcePermission("android.permission.STORAGE_INTERNAL");
        try {
            this.mVold.createUserKey(userId, serialNumber, ephemeral);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void destroyUserKey(int userId) {
        enforcePermission("android.permission.STORAGE_INTERNAL");
        try {
            this.mVold.destroyUserKey(userId);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    private String encodeBytes(byte[] bytes) {
        if (ArrayUtils.isEmpty(bytes)) {
            return "!";
        }
        return HexDump.toHexString(bytes);
    }

    public void addUserKeyAuth(int userId, int serialNumber, byte[] token, byte[] secret) {
        enforcePermission("android.permission.STORAGE_INTERNAL");
        try {
            this.mVold.addUserKeyAuth(userId, serialNumber, encodeBytes(token), encodeBytes(secret));
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void clearUserKeyAuth(int userId, int serialNumber, byte[] token, byte[] secret) {
        enforcePermission("android.permission.STORAGE_INTERNAL");
        try {
            this.mVold.clearUserKeyAuth(userId, serialNumber, encodeBytes(token), encodeBytes(secret));
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void fixateNewestUserKeyAuth(int userId) {
        enforcePermission("android.permission.STORAGE_INTERNAL");
        try {
            this.mVold.fixateNewestUserKeyAuth(userId);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void unlockUserKey(int userId, int serialNumber, byte[] token, byte[] secret) {
        boolean isFsEncrypted = StorageManager.isFileEncryptedNativeOrEmulated();
        StringBuilder sb = new StringBuilder();
        sb.append("unlockUserKey: ");
        sb.append(userId);
        sb.append(" isFileEncryptedNativeOrEmulated: ");
        sb.append(isFsEncrypted);
        sb.append(" hasToken: ");
        sb.append(token != null);
        sb.append(" hasSecret: ");
        sb.append(secret != null);
        Slog.d(TAG, sb.toString());
        enforcePermission("android.permission.STORAGE_INTERNAL");
        if (isFsEncrypted) {
            try {
                this.mVold.unlockUserKey(userId, serialNumber, encodeBytes(token), encodeBytes(secret));
            } catch (Exception e) {
                Slog.wtf(TAG, e);
                return;
            }
        }
        synchronized (this.mLock) {
            this.mLocalUnlockedUsers.append(userId);
        }
    }

    public void lockUserKey(int userId) {
        enforcePermission("android.permission.STORAGE_INTERNAL");
        try {
            this.mVold.lockUserKey(userId);
            synchronized (this.mLock) {
                this.mLocalUnlockedUsers.remove(userId);
            }
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public boolean isUserKeyUnlocked(int userId) {
        boolean zContains;
        synchronized (this.mLock) {
            zContains = this.mLocalUnlockedUsers.contains(userId);
        }
        return zContains;
    }

    private boolean isSystemUnlocked(int userId) {
        boolean zContains;
        synchronized (this.mLock) {
            zContains = ArrayUtils.contains(this.mSystemUnlockedUsers, userId);
        }
        return zContains;
    }

    private void prepareUserStorageIfNeeded(VolumeInfo vol) {
        int flags;
        if (vol.type != 1) {
            return;
        }
        UserManager um = (UserManager) this.mContext.getSystemService(UserManager.class);
        UserManagerInternal umInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        for (UserInfo user : um.getUsers(false)) {
            if (umInternal.isUserUnlockingOrUnlocked(user.id)) {
                flags = 3;
            } else {
                int flags2 = user.id;
                if (umInternal.isUserRunning(flags2)) {
                    flags = 1;
                }
            }
            prepareUserStorageInternal(vol.fsUuid, user.id, user.serialNumber, flags);
        }
    }

    public void prepareUserStorage(String volumeUuid, int userId, int serialNumber, int flags) {
        enforcePermission("android.permission.STORAGE_INTERNAL");
        prepareUserStorageInternal(volumeUuid, userId, serialNumber, flags);
    }

    private void prepareUserStorageInternal(String volumeUuid, int userId, int serialNumber, int flags) {
        try {
            this.mVold.prepareUserStorage(volumeUuid, userId, serialNumber, flags);
            if (volumeUuid != null) {
                StorageManager storage = (StorageManager) this.mContext.getSystemService(StorageManager.class);
                VolumeInfo info = storage.findVolumeByUuid(volumeUuid);
                if (info != null && userId == 0 && info.type == 1) {
                    this.mInstaller.tryMountDataMirror(volumeUuid);
                }
            }
        } catch (Exception e) {
            EventLog.writeEvent(1397638484, "224585613", -1, "");
            Slog.wtf(TAG, e);
            UserManagerInternal umInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
            if (umInternal.shouldIgnorePrepareStorageErrors(userId)) {
                Slog.wtf(TAG, "ignoring error preparing storage for existing user " + userId + "; device may be insecure!");
                return;
            }
            throw new RuntimeException(e);
        }
    }

    public void destroyUserStorage(String volumeUuid, int userId, int flags) {
        enforcePermission("android.permission.STORAGE_INTERNAL");
        try {
            this.mVold.destroyUserStorage(volumeUuid, userId, flags);
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    public void fixupAppDir(String path) {
        Matcher matcher = KNOWN_APP_DIR_PATHS.matcher(path);
        if (matcher.matches()) {
            if (matcher.group(2) == null) {
                Log.e(TAG, "Asked to fixup an app dir without a userId: " + path);
                return;
            }
            try {
                int userId = Integer.parseInt(matcher.group(2));
                String packageName = matcher.group(3);
                int uid = this.mContext.getPackageManager().getPackageUidAsUser(packageName, userId);
                try {
                    this.mVold.fixupAppDir(path + SliceClientPermissions.SliceAuthority.DELIMITER, uid);
                    return;
                } catch (RemoteException | ServiceSpecificException e) {
                    Log.e(TAG, "Failed to fixup app dir for " + packageName, e);
                    return;
                }
            } catch (PackageManager.NameNotFoundException e2) {
                Log.e(TAG, "Couldn't find package to fixup app dir " + path, e2);
                return;
            } catch (NumberFormatException e3) {
                Log.e(TAG, "Invalid userId in path: " + path, e3);
                return;
            }
        }
        Log.e(TAG, "Path " + path + " is not a valid application-specific directory");
    }

    class AppFuseMountScope extends AppFuseBridge.MountScope {
        private boolean mMounted;

        public AppFuseMountScope(int uid, int mountId) {
            super(uid, mountId);
            this.mMounted = false;
        }

        @Override // com.android.server.storage.AppFuseBridge.MountScope
        public ParcelFileDescriptor open() throws NativeDaemonConnectorException {
            try {
                FileDescriptor fd = StorageManagerService.this.mVold.mountAppFuse(this.uid, this.mountId);
                this.mMounted = true;
                return new ParcelFileDescriptor(fd);
            } catch (Exception e) {
                throw new NativeDaemonConnectorException("Failed to mount", e);
            }
        }

        @Override // com.android.server.storage.AppFuseBridge.MountScope
        public ParcelFileDescriptor openFile(int mountId, int fileId, int flags) throws NativeDaemonConnectorException {
            try {
                return new ParcelFileDescriptor(StorageManagerService.this.mVold.openAppFuseFile(this.uid, mountId, fileId, flags));
            } catch (Exception e) {
                throw new NativeDaemonConnectorException("Failed to open", e);
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() throws Exception {
            if (this.mMounted) {
                StorageManagerService.this.mVold.unmountAppFuse(this.uid, this.mountId);
                this.mMounted = false;
            }
        }
    }

    public AppFuseMount mountProxyFileDescriptorBridge() {
        AppFuseMount appFuseMount;
        Slog.v(TAG, "mountProxyFileDescriptorBridge");
        int uid = Binder.getCallingUid();
        while (true) {
            synchronized (this.mAppFuseLock) {
                boolean newlyCreated = false;
                if (this.mAppFuseBridge == null) {
                    this.mAppFuseBridge = new AppFuseBridge();
                    new Thread(this.mAppFuseBridge, AppFuseBridge.TAG).start();
                    newlyCreated = true;
                }
                try {
                    int name = this.mNextAppFuseName;
                    this.mNextAppFuseName = name + 1;
                    try {
                        appFuseMount = new AppFuseMount(name, this.mAppFuseBridge.addBridge(new AppFuseMountScope(uid, name)));
                    } catch (FuseUnavailableMountException e) {
                        if (newlyCreated) {
                            Slog.e(TAG, "", e);
                            return null;
                        }
                        this.mAppFuseBridge = null;
                    }
                } catch (NativeDaemonConnectorException e2) {
                    throw e2.rethrowAsParcelableException();
                }
            }
            return appFuseMount;
        }
    }

    public ParcelFileDescriptor openProxyFileDescriptor(int mountId, int fileId, int mode) {
        Slog.v(TAG, "mountProxyFileDescriptor");
        int mode2 = mode & 805306368;
        try {
            synchronized (this.mAppFuseLock) {
                if (this.mAppFuseBridge == null) {
                    Slog.e(TAG, "FuseBridge has not been created");
                    return null;
                }
                return this.mAppFuseBridge.openFile(mountId, fileId, mode2);
            }
        } catch (FuseUnavailableMountException | InterruptedException e) {
            Slog.v(TAG, "The mount point has already been invalid", e);
            return null;
        }
    }

    public void mkdirs(String callingPkg, String appPath) {
        int callingUid = Binder.getCallingUid();
        int userId = UserHandle.getUserId(callingUid);
        String propertyName = "sys.user." + userId + ".ce_available";
        if (!isUserKeyUnlocked(userId)) {
            throw new IllegalStateException("Failed to prepare " + appPath);
        }
        if (userId == 0 && !SystemProperties.getBoolean(propertyName, false)) {
            throw new IllegalStateException("Failed to prepare " + appPath);
        }
        AppOpsManager appOps = (AppOpsManager) this.mContext.getSystemService("appops");
        appOps.checkPackage(callingUid, callingPkg);
        try {
            File appFile = new File(appPath).getCanonicalFile();
            String appPath2 = appFile.getAbsolutePath();
            if (!appPath2.endsWith(SliceClientPermissions.SliceAuthority.DELIMITER)) {
                appPath2 = appPath2 + SliceClientPermissions.SliceAuthority.DELIMITER;
            }
            Matcher matcher = KNOWN_APP_DIR_PATHS.matcher(appPath2);
            if (matcher.matches()) {
                if (!matcher.group(3).equals(callingPkg)) {
                    throw new SecurityException("Invalid mkdirs path: " + appFile + " does not contain calling package " + callingPkg);
                }
                if ((matcher.group(2) != null && !matcher.group(2).equals(Integer.toString(userId))) || (matcher.group(2) == null && userId != this.mCurrentUserId)) {
                    throw new SecurityException("Invalid mkdirs path: " + appFile + " does not match calling user id " + userId);
                }
                try {
                    this.mVold.setupAppDir(appPath2, callingUid);
                    return;
                } catch (RemoteException e) {
                    throw new IllegalStateException("Failed to prepare " + appPath2 + ": " + e);
                }
            }
            throw new SecurityException("Invalid mkdirs path: " + appFile + " is not a known app path.");
        } catch (IOException e2) {
            throw new IllegalStateException("Failed to resolve " + appPath + ": " + e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00bb A[Catch: all -> 0x00aa, TRY_LEAVE, TryCatch #7 {all -> 0x00aa, blocks: (B:34:0x00a2, B:43:0x00bb, B:48:0x00c9), top: B:146:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00c1 A[Catch: all -> 0x01cf, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x01cf, blocks: (B:27:0x0095, B:45:0x00c1), top: B:150:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00c7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:52:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ed A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:71:0x0127  */
    /* JADX WARN: Code duplicated, block: B:75:0x0134 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:80:0x0163 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x0165 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:86:0x0190  */
    /* JADX WARN: Code duplicated, block: B:91:0x019f  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 5 */
    public StorageVolume[] getVolumeList(int uid, String packageName, int flags) throws Throwable {
        boolean z;
        boolean match;
        boolean reportUnmounted;
        boolean forWrite;
        boolean includeInvisible;
        boolean systemUserUnlocked;
        StorageVolume userVol;
        ArrayList<StorageVolume> res;
        ArraySet<String> resUuids;
        int userId = UserHandle.getUserId(uid);
        boolean forWrite2 = (flags & 256) != 0;
        boolean realState = (flags & 512) != 0;
        boolean includeInvisible2 = (flags & 1024) != 0;
        boolean includeRecent = (flags & 2048) != 0;
        boolean systemUserUnlocked2 = isSystemUnlocked(0);
        boolean callerIsMediaStore = UserHandle.isSameApp(Binder.getCallingUid(), this.mMediaStoreAuthorityAppId);
        long token = Binder.clearCallingIdentity();
        try {
            boolean userIsDemo = ((UserManagerInternal) LocalServices.getService(UserManagerInternal.class)).getUserInfo(userId).isDemo();
            boolean userKeyUnlocked = isUserKeyUnlocked(userId);
            boolean storagePermission = this.mStorageManagerInternal.hasExternalStorage(uid, packageName);
            Binder.restoreCallingIdentity(token);
            ArrayList<StorageVolume> res2 = new ArrayList<>();
            ArraySet<String> resUuids2 = new ArraySet<>();
            synchronized (this.mLock) {
                boolean foundPrimary = false;
                int i = 0;
                while (i < this.mVolumes.size()) {
                    try {
                        String volId = this.mVolumes.keyAt(i);
                        VolumeInfo vol = this.mVolumes.valueAt(i);
                        long token2 = token;
                        try {
                            int type = vol.getType();
                            if (type == 0) {
                                if (forWrite2) {
                                    match = vol.isVisibleForWrite(userId);
                                } else {
                                    if (!vol.isVisibleForRead(userId) || (includeInvisible2 && vol.getPath() != null)) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    match = z;
                                }
                                if (match) {
                                    reportUnmounted = false;
                                    if (callerIsMediaStore) {
                                        forWrite = forWrite2;
                                        includeInvisible = includeInvisible2;
                                        systemUserUnlocked = systemUserUnlocked2;
                                    } else if (systemUserUnlocked2) {
                                        forWrite = forWrite2;
                                        includeInvisible = includeInvisible2;
                                        systemUserUnlocked = systemUserUnlocked2;
                                        if (vol.getType() != 2 && !userKeyUnlocked) {
                                            reportUnmounted = true;
                                            Slog.w(TAG, "Reporting " + volId + "unmounted due to " + userId + " locked");
                                        } else if (!storagePermission && !realState) {
                                            Slog.w(TAG, "Reporting " + volId + "unmounted due to missing permissions");
                                            reportUnmounted = true;
                                        }
                                    } else {
                                        reportUnmounted = true;
                                        forWrite = forWrite2;
                                        includeInvisible = includeInvisible2;
                                        try {
                                            StringBuilder sb = new StringBuilder();
                                            systemUserUnlocked = systemUserUnlocked2;
                                            try {
                                                sb.append("Reporting ");
                                                sb.append(volId);
                                                sb.append(" unmounted due to system locked");
                                                Slog.w(TAG, sb.toString());
                                            } catch (Throwable th) {
                                                th = th;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    }
                                    try {
                                        userVol = vol.buildStorageVolume(this.mContext, userId, reportUnmounted);
                                        if (vol.isPrimary()) {
                                            res = res2;
                                            try {
                                                res.add(0, userVol);
                                                foundPrimary = true;
                                            } catch (Throwable th3) {
                                                th = th3;
                                            }
                                        } else {
                                            res = res2;
                                            res.add(userVol);
                                        }
                                        try {
                                            resUuids = resUuids2;
                                            resUuids.add(userVol.getUuid());
                                        } catch (Throwable th4) {
                                            th = th4;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                    }
                                } else {
                                    forWrite = forWrite2;
                                    includeInvisible = includeInvisible2;
                                    systemUserUnlocked = systemUserUnlocked2;
                                    res = res2;
                                    resUuids = resUuids2;
                                }
                                try {
                                    i++;
                                    resUuids2 = resUuids;
                                    res2 = res;
                                    token = token2;
                                    forWrite2 = forWrite;
                                    includeInvisible2 = includeInvisible;
                                    systemUserUnlocked2 = systemUserUnlocked;
                                } catch (Throwable th6) {
                                    th = th6;
                                }
                            } else if (type != 2) {
                                if (type == 5) {
                                    if (forWrite2) {
                                        match = vol.isVisibleForWrite(userId);
                                    } else {
                                        if (vol.isVisibleForRead(userId)) {
                                            z = true;
                                        } else {
                                            z = true;
                                        }
                                        match = z;
                                    }
                                    if (match) {
                                        reportUnmounted = false;
                                        if (callerIsMediaStore) {
                                            forWrite = forWrite2;
                                            includeInvisible = includeInvisible2;
                                            systemUserUnlocked = systemUserUnlocked2;
                                        } else if (systemUserUnlocked2) {
                                            reportUnmounted = true;
                                            forWrite = forWrite2;
                                            includeInvisible = includeInvisible2;
                                            StringBuilder sb2 = new StringBuilder();
                                            systemUserUnlocked = systemUserUnlocked2;
                                            sb2.append("Reporting ");
                                            sb2.append(volId);
                                            sb2.append(" unmounted due to system locked");
                                            Slog.w(TAG, sb2.toString());
                                        } else {
                                            forWrite = forWrite2;
                                            includeInvisible = includeInvisible2;
                                            systemUserUnlocked = systemUserUnlocked2;
                                            if (vol.getType() != 2) {
                                                if (!storagePermission) {
                                                    Slog.w(TAG, "Reporting " + volId + "unmounted due to missing permissions");
                                                    reportUnmounted = true;
                                                }
                                            } else if (!storagePermission) {
                                                Slog.w(TAG, "Reporting " + volId + "unmounted due to missing permissions");
                                                reportUnmounted = true;
                                            }
                                        }
                                        userVol = vol.buildStorageVolume(this.mContext, userId, reportUnmounted);
                                        if (vol.isPrimary()) {
                                            res = res2;
                                            res.add(0, userVol);
                                            foundPrimary = true;
                                        } else {
                                            res = res2;
                                            res.add(userVol);
                                        }
                                        resUuids = resUuids2;
                                        resUuids.add(userVol.getUuid());
                                    }
                                    i++;
                                    resUuids2 = resUuids;
                                    res2 = res;
                                    token = token2;
                                    forWrite2 = forWrite;
                                    includeInvisible2 = includeInvisible;
                                    systemUserUnlocked2 = systemUserUnlocked;
                                }
                                forWrite = forWrite2;
                                includeInvisible = includeInvisible2;
                                systemUserUnlocked = systemUserUnlocked2;
                                res = res2;
                                resUuids = resUuids2;
                                i++;
                                resUuids2 = resUuids;
                                res2 = res;
                                token = token2;
                                forWrite2 = forWrite;
                                includeInvisible2 = includeInvisible;
                                systemUserUnlocked2 = systemUserUnlocked;
                            } else {
                                try {
                                    if (vol.getMountUserId() == userId) {
                                        if (forWrite2) {
                                            match = vol.isVisibleForWrite(userId);
                                        } else {
                                            if (vol.isVisibleForRead(userId)) {
                                                z = true;
                                            } else {
                                                z = true;
                                            }
                                            match = z;
                                        }
                                        if (match) {
                                            reportUnmounted = false;
                                            if (callerIsMediaStore) {
                                                forWrite = forWrite2;
                                                includeInvisible = includeInvisible2;
                                                systemUserUnlocked = systemUserUnlocked2;
                                            } else if (systemUserUnlocked2) {
                                                reportUnmounted = true;
                                                forWrite = forWrite2;
                                                includeInvisible = includeInvisible2;
                                                StringBuilder sb3 = new StringBuilder();
                                                systemUserUnlocked = systemUserUnlocked2;
                                                sb3.append("Reporting ");
                                                sb3.append(volId);
                                                sb3.append(" unmounted due to system locked");
                                                Slog.w(TAG, sb3.toString());
                                            } else {
                                                forWrite = forWrite2;
                                                includeInvisible = includeInvisible2;
                                                systemUserUnlocked = systemUserUnlocked2;
                                                if (vol.getType() != 2) {
                                                    if (!storagePermission) {
                                                        Slog.w(TAG, "Reporting " + volId + "unmounted due to missing permissions");
                                                        reportUnmounted = true;
                                                    }
                                                } else if (!storagePermission) {
                                                    Slog.w(TAG, "Reporting " + volId + "unmounted due to missing permissions");
                                                    reportUnmounted = true;
                                                }
                                            }
                                            userVol = vol.buildStorageVolume(this.mContext, userId, reportUnmounted);
                                            if (vol.isPrimary()) {
                                                res = res2;
                                                res.add(0, userVol);
                                                foundPrimary = true;
                                            } else {
                                                res = res2;
                                                res.add(userVol);
                                            }
                                            resUuids = resUuids2;
                                            resUuids.add(userVol.getUuid());
                                        }
                                        i++;
                                        resUuids2 = resUuids;
                                        res2 = res;
                                        token = token2;
                                        forWrite2 = forWrite;
                                        includeInvisible2 = includeInvisible;
                                        systemUserUnlocked2 = systemUserUnlocked;
                                    }
                                    forWrite = forWrite2;
                                    includeInvisible = includeInvisible2;
                                    systemUserUnlocked = systemUserUnlocked2;
                                    res = res2;
                                    resUuids = resUuids2;
                                    i++;
                                    resUuids2 = resUuids;
                                    res2 = res;
                                    token = token2;
                                    forWrite2 = forWrite;
                                    includeInvisible2 = includeInvisible;
                                    systemUserUnlocked2 = systemUserUnlocked;
                                } catch (Throwable th7) {
                                    th = th7;
                                }
                            }
                        } catch (Throwable th8) {
                            th = th8;
                        }
                    } catch (Throwable th9) {
                        th = th9;
                    }
                    throw th;
                }
                ArrayList<StorageVolume> res3 = res2;
                ArraySet<String> resUuids3 = resUuids2;
                if (includeRecent) {
                    long lastWeek = System.currentTimeMillis() - UnixCalendar.WEEK_IN_MILLIS;
                    for (int i2 = 0; i2 < this.mRecords.size(); i2++) {
                        VolumeRecord rec = this.mRecords.valueAt(i2);
                        if (!resUuids3.contains(rec.fsUuid) && rec.lastSeenMillis > 0 && rec.lastSeenMillis < lastWeek) {
                            StorageVolume userVol2 = rec.buildStorageVolume(this.mContext);
                            res3.add(userVol2);
                            resUuids3.add(userVol2.getUuid());
                        }
                    }
                }
                if (userIsDemo) {
                    File path = Environment.getDataPreloadsMediaDirectory();
                    UserHandle user = new UserHandle(userId);
                    String description = this.mContext.getString(R.string.unknownName);
                    res3.add(new StorageVolume("demo", path, path, description, false, false, true, false, 0L, user, "demo", "mounted_ro"));
                }
                if (!foundPrimary) {
                    Slog.w(TAG, "No primary storage defined yet; hacking together a stub");
                    boolean primaryPhysical = SystemProperties.getBoolean("ro.vold.primary_physical", false);
                    File path2 = Environment.getLegacyExternalStorageDirectory();
                    String description2 = this.mContext.getString(R.string.unknownName);
                    boolean emulated = !primaryPhysical;
                    UserHandle owner = new UserHandle(userId);
                    res3.add(0, new StorageVolume("stub_primary", path2, path2, description2, true, primaryPhysical, emulated, false, 0L, owner, null, "removed"));
                }
                return (StorageVolume[]) res3.toArray(new StorageVolume[res3.size()]);
            }
        } catch (Throwable th10) {
            Binder.restoreCallingIdentity(token);
            throw th10;
        }
    }

    public DiskInfo[] getDisks() {
        DiskInfo[] res;
        synchronized (this.mLock) {
            res = new DiskInfo[this.mDisks.size()];
            for (int i = 0; i < this.mDisks.size(); i++) {
                res[i] = this.mDisks.valueAt(i);
            }
        }
        return res;
    }

    public VolumeInfo[] getVolumes(int flags) {
        VolumeInfo[] res;
        synchronized (this.mLock) {
            res = new VolumeInfo[this.mVolumes.size()];
            for (int i = 0; i < this.mVolumes.size(); i++) {
                res[i] = this.mVolumes.valueAt(i);
            }
        }
        return res;
    }

    public VolumeRecord[] getVolumeRecords(int flags) {
        VolumeRecord[] res;
        synchronized (this.mLock) {
            res = new VolumeRecord[this.mRecords.size()];
            for (int i = 0; i < this.mRecords.size(); i++) {
                res[i] = this.mRecords.valueAt(i);
            }
        }
        return res;
    }

    public long getCacheQuotaBytes(String volumeUuid, int uid) {
        if (uid != Binder.getCallingUid()) {
            this.mContext.enforceCallingPermission("android.permission.STORAGE_INTERNAL", TAG);
        }
        long token = Binder.clearCallingIdentity();
        StorageStatsManager stats = (StorageStatsManager) this.mContext.getSystemService(StorageStatsManager.class);
        try {
            return stats.getCacheQuotaBytes(volumeUuid, uid);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public long getCacheSizeBytes(String volumeUuid, int uid) {
        if (uid != Binder.getCallingUid()) {
            this.mContext.enforceCallingPermission("android.permission.STORAGE_INTERNAL", TAG);
        }
        long token = Binder.clearCallingIdentity();
        try {
            try {
                long cacheBytes = ((StorageStatsManager) this.mContext.getSystemService(StorageStatsManager.class)).queryStatsForUid(volumeUuid, uid).getCacheBytes();
                Binder.restoreCallingIdentity(token);
                return cacheBytes;
            } catch (IOException e) {
                throw new ParcelableException(e);
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    private int adjustAllocateFlags(int flags, int callingUid, String callingPackage) {
        if ((flags & 1) != 0) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.ALLOCATE_AGGRESSIVE", TAG);
        }
        int flags2 = flags & (-3) & (-5);
        AppOpsManager appOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        long token = Binder.clearCallingIdentity();
        try {
            if (appOps.isOperationActive(26, callingUid, callingPackage)) {
                Slog.d(TAG, "UID " + callingUid + " is actively using camera; letting them defy reserved cached data");
                flags2 |= 4;
            }
            return flags2;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public long getAllocatableBytes(String volumeUuid, int flags, String callingPackage) {
        int flags2 = adjustAllocateFlags(flags, Binder.getCallingUid(), callingPackage);
        StorageManager storage = (StorageManager) this.mContext.getSystemService(StorageManager.class);
        StorageStatsManager stats = (StorageStatsManager) this.mContext.getSystemService(StorageStatsManager.class);
        long token = Binder.clearCallingIdentity();
        try {
            try {
                File path = storage.findPathForUuid(volumeUuid);
                long usable = 0;
                long lowReserved = 0;
                long fullReserved = 0;
                long cacheClearable = 0;
                if ((flags2 & 16) == 0) {
                    usable = path.getUsableSpace();
                    lowReserved = storage.getStorageLowBytes(path);
                    fullReserved = storage.getStorageFullBytes(path);
                }
                long lowReserved2 = lowReserved;
                if ((flags2 & 8) == 0 && stats.isQuotaSupported(volumeUuid)) {
                    long cacheTotal = stats.getCacheBytes(volumeUuid);
                    long cacheReserved = storage.getStorageCacheBytes(path, flags2);
                    cacheClearable = Math.max(0L, cacheTotal - cacheReserved);
                }
                if ((flags2 & 1) != 0) {
                    long jMax = Math.max(0L, (usable + cacheClearable) - fullReserved);
                    Binder.restoreCallingIdentity(token);
                    return jMax;
                }
                long jMax2 = Math.max(0L, (usable + cacheClearable) - lowReserved2);
                Binder.restoreCallingIdentity(token);
                return jMax2;
            } catch (IOException e) {
                throw new ParcelableException(e);
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public void allocateBytes(String volumeUuid, long bytes, int flags, String callingPackage) throws ParcelableException {
        long bytes2;
        int flags2 = adjustAllocateFlags(flags, Binder.getCallingUid(), callingPackage);
        long allocatableBytes = getAllocatableBytes(volumeUuid, flags2 | 8, callingPackage);
        if (bytes > allocatableBytes) {
            long cacheClearable = getAllocatableBytes(volumeUuid, flags2 | 16, callingPackage);
            if (bytes > allocatableBytes + cacheClearable) {
                throw new ParcelableException(new IOException("Failed to allocate " + bytes + " because only " + (allocatableBytes + cacheClearable) + " allocatable"));
            }
        }
        StorageManager storage = (StorageManager) this.mContext.getSystemService(StorageManager.class);
        long token = Binder.clearCallingIdentity();
        try {
            try {
                File path = storage.findPathForUuid(volumeUuid);
                if ((flags2 & 1) != 0) {
                    bytes2 = bytes + storage.getStorageFullBytes(path);
                } else {
                    bytes2 = bytes + storage.getStorageLowBytes(path);
                }
                this.mPmInternal.freeStorage(volumeUuid, bytes2, flags2);
                Binder.restoreCallingIdentity(token);
            } catch (IOException e) {
                throw new ParcelableException(e);
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addObbStateLocked(ObbState obbState) throws RemoteException {
        IBinder binder = obbState.getBinder();
        List<ObbState> obbStates = this.mObbMounts.get(binder);
        if (obbStates == null) {
            obbStates = new ArrayList();
            this.mObbMounts.put(binder, obbStates);
        } else {
            for (ObbState o : obbStates) {
                if (o.rawPath.equals(obbState.rawPath)) {
                    throw new IllegalStateException("Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic.");
                }
            }
        }
        obbStates.add(obbState);
        try {
            obbState.link();
            this.mObbPathToStateMap.put(obbState.rawPath, obbState);
        } catch (RemoteException e) {
            obbStates.remove(obbState);
            if (obbStates.isEmpty()) {
                this.mObbMounts.remove(binder);
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeObbStateLocked(ObbState obbState) {
        IBinder binder = obbState.getBinder();
        List<ObbState> obbStates = this.mObbMounts.get(binder);
        if (obbStates != null) {
            if (obbStates.remove(obbState)) {
                obbState.unlink();
            }
            if (obbStates.isEmpty()) {
                this.mObbMounts.remove(binder);
            }
        }
        this.mObbPathToStateMap.remove(obbState.rawPath);
    }

    private class ObbActionHandler extends Handler {
        ObbActionHandler(Looper l) {
            super(l);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                ObbAction action = (ObbAction) msg.obj;
                action.execute(this);
                return;
            }
            if (i == 2) {
                String path = (String) msg.obj;
                synchronized (StorageManagerService.this.mObbMounts) {
                    List<ObbState> obbStatesToRemove = new LinkedList<>();
                    for (ObbState state : StorageManagerService.this.mObbPathToStateMap.values()) {
                        if (state.canonicalPath.startsWith(path)) {
                            obbStatesToRemove.add(state);
                        }
                    }
                    for (ObbState obbState : obbStatesToRemove) {
                        StorageManagerService.this.removeObbStateLocked(obbState);
                        try {
                            obbState.token.onObbResult(obbState.rawPath, obbState.nonce, 2);
                        } catch (RemoteException e) {
                            Slog.i(StorageManagerService.TAG, "Couldn't send unmount notification for  OBB: " + obbState.rawPath);
                        }
                    }
                }
            }
        }
    }

    private static class ObbException extends Exception {
        public final int status;

        public ObbException(int status, String message) {
            super(message);
            this.status = status;
        }

        public ObbException(int status, Throwable cause) {
            super(cause.getMessage(), cause);
            this.status = status;
        }
    }

    abstract class ObbAction {
        ObbState mObbState;

        abstract void handleExecute() throws ObbException;

        ObbAction(ObbState obbState) {
            this.mObbState = obbState;
        }

        public void execute(ObbActionHandler handler) {
            try {
                handleExecute();
            } catch (ObbException e) {
                notifyObbStateChange(e);
            }
        }

        protected void notifyObbStateChange(ObbException e) {
            Slog.w(StorageManagerService.TAG, e);
            notifyObbStateChange(e.status);
        }

        protected void notifyObbStateChange(int status) {
            ObbState obbState = this.mObbState;
            if (obbState == null || obbState.token == null) {
                return;
            }
            try {
                this.mObbState.token.onObbResult(this.mObbState.rawPath, this.mObbState.nonce, status);
            } catch (RemoteException e) {
                Slog.w(StorageManagerService.TAG, "StorageEventListener went away while calling onObbStateChanged");
            }
        }
    }

    class MountObbAction extends ObbAction {
        private final int mCallingUid;
        private final String mKey;
        private ObbInfo mObbInfo;

        MountObbAction(ObbState obbState, String key, int callingUid, ObbInfo obbInfo) {
            super(obbState);
            this.mKey = key;
            this.mCallingUid = callingUid;
            this.mObbInfo = obbInfo;
        }

        @Override // com.android.server.StorageManagerService.ObbAction
        public void handleExecute() throws ObbException {
            boolean isMounted;
            String binderKey;
            StorageManagerService.this.warnOnNotMounted();
            if (StorageManagerService.this.isUidOwnerOfPackageOrSystem(this.mObbInfo.packageName, this.mCallingUid)) {
                synchronized (StorageManagerService.this.mObbMounts) {
                    isMounted = StorageManagerService.this.mObbPathToStateMap.containsKey(this.mObbState.rawPath);
                }
                if (isMounted) {
                    throw new ObbException(24, "Attempt to mount OBB which is already mounted: " + this.mObbInfo.filename);
                }
                if (this.mKey == null) {
                    binderKey = "";
                } else {
                    try {
                        SecretKeyFactory factory = SecretKeyFactory.getInstance(BackupPasswordManager.PBKDF_CURRENT);
                        KeySpec ks = new PBEKeySpec(this.mKey.toCharArray(), this.mObbInfo.salt, 1024, 128);
                        SecretKey key = factory.generateSecret(ks);
                        BigInteger bi = new BigInteger(key.getEncoded());
                        String hashedKey = bi.toString(16);
                        binderKey = hashedKey;
                    } catch (GeneralSecurityException e) {
                        throw new ObbException(20, e);
                    }
                }
                try {
                    this.mObbState.volId = StorageManagerService.this.mVold.createObb(this.mObbState.canonicalPath, binderKey, this.mObbState.ownerGid);
                    StorageManagerService.this.mVold.mount(this.mObbState.volId, 0, -1, null);
                    synchronized (StorageManagerService.this.mObbMounts) {
                        StorageManagerService.this.addObbStateLocked(this.mObbState);
                    }
                    notifyObbStateChange(1);
                    return;
                } catch (Exception e2) {
                    throw new ObbException(21, e2);
                }
            }
            throw new ObbException(25, "Denied attempt to mount OBB " + this.mObbInfo.filename + " which is owned by " + this.mObbInfo.packageName);
        }

        public String toString() {
            return "MountObbAction{" + this.mObbState + '}';
        }
    }

    class UnmountObbAction extends ObbAction {
        private final boolean mForceUnmount;

        UnmountObbAction(ObbState obbState, boolean force) {
            super(obbState);
            this.mForceUnmount = force;
        }

        @Override // com.android.server.StorageManagerService.ObbAction
        public void handleExecute() throws ObbException {
            ObbState existingState;
            StorageManagerService.this.warnOnNotMounted();
            synchronized (StorageManagerService.this.mObbMounts) {
                existingState = (ObbState) StorageManagerService.this.mObbPathToStateMap.get(this.mObbState.rawPath);
            }
            if (existingState == null) {
                throw new ObbException(23, "Missing existingState");
            }
            if (existingState.ownerGid == this.mObbState.ownerGid) {
                try {
                    StorageManagerService.this.mVold.unmount(this.mObbState.volId);
                    StorageManagerService.this.mVold.destroyObb(this.mObbState.volId);
                    this.mObbState.volId = null;
                    synchronized (StorageManagerService.this.mObbMounts) {
                        StorageManagerService.this.removeObbStateLocked(existingState);
                    }
                    notifyObbStateChange(2);
                    return;
                } catch (Exception e) {
                    throw new ObbException(22, e);
                }
            }
            notifyObbStateChange(new ObbException(25, "Permission denied to unmount OBB " + existingState.rawPath + " (owned by GID " + existingState.ownerGid + ")"));
        }

        public String toString() {
            return "UnmountObbAction{" + this.mObbState + ",force=" + this.mForceUnmount + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOnStatus(IVoldTaskListener listener, int status, PersistableBundle extras) {
        if (listener != null) {
            try {
                listener.onStatus(status, extras);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOnFinished(IVoldTaskListener listener, int status, PersistableBundle extras) {
        if (listener != null) {
            try {
                listener.onFinished(status, extras);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMountMode(int uid, String packageName) {
        int mode = getMountModeInternal(uid, packageName);
        if (LOCAL_LOGV) {
            Slog.v(TAG, "Resolved mode " + mode + " for " + packageName + SliceClientPermissions.SliceAuthority.DELIMITER + UserHandle.formatUid(uid));
        }
        return mode;
    }

    private int getMountModeInternal(int uid, String packageName) {
        String packageName2;
        ApplicationInfo ai;
        try {
            if (Process.isIsolated(uid)) {
                return 0;
            }
            String[] packagesForUid = this.mIPackageManager.getPackagesForUid(uid);
            if (ArrayUtils.isEmpty(packagesForUid)) {
                return 0;
            }
            if (packageName != null) {
                packageName2 = packageName;
            } else {
                packageName2 = packagesForUid[0];
            }
            try {
                if (this.mPmInternal.isInstantApp(packageName2, UserHandle.getUserId(uid))) {
                    return 0;
                }
                if (this.mIsFuseEnabled && this.mStorageManagerInternal.isExternalStorageService(uid)) {
                    return 7;
                }
                if (this.mIsFuseEnabled && (this.mDownloadsAuthorityAppId == UserHandle.getAppId(uid) || this.mExternalStorageAuthorityAppId == UserHandle.getAppId(uid))) {
                    return 8;
                }
                boolean hasMtp = this.mIPackageManager.checkUidPermission("android.permission.ACCESS_MTP", uid) == 0;
                if (this.mIsFuseEnabled && hasMtp && (ai = this.mIPackageManager.getApplicationInfo(packageName2, 0, UserHandle.getUserId(uid))) != null && ai.isSignedWithPlatformKey()) {
                    return 8;
                }
                boolean hasRead = StorageManager.checkPermissionAndCheckOp(this.mContext, false, 0, uid, packageName2, "android.permission.READ_EXTERNAL_STORAGE", 59);
                boolean hasWrite = StorageManager.checkPermissionAndCheckOp(this.mContext, false, 0, uid, packageName2, "android.permission.WRITE_EXTERNAL_STORAGE", 60);
                boolean hasFull = this.mIPackageManager.checkUidPermission("android.permission.WRITE_MEDIA_STORAGE", uid) == 0;
                if (hasFull && hasWrite) {
                    return 6;
                }
                boolean hasInstall = this.mIPackageManager.checkUidPermission("android.permission.INSTALL_PACKAGES", uid) == 0;
                boolean hasInstallOp = false;
                for (String uidPackageName : packagesForUid) {
                    if (this.mIAppOpsService.checkOperation(66, uid, uidPackageName) == 0) {
                        hasInstallOp = true;
                        break;
                    }
                }
                if ((hasInstall || hasInstallOp) && hasWrite) {
                    return 5;
                }
                boolean hasLegacy = this.mIAppOpsService.checkOperation(87, uid, packageName2) == 0;
                if (hasLegacy && hasWrite) {
                    return 3;
                }
                return (hasLegacy && hasRead) ? 2 : 1;
            } catch (RemoteException e) {
                return 0;
            }
        } catch (RemoteException e2) {
            return 0;
        }
    }

    private static class Callbacks extends Handler {
        private static final int MSG_DISK_DESTROYED = 6;
        private static final int MSG_DISK_SCANNED = 5;
        private static final int MSG_STORAGE_STATE_CHANGED = 1;
        private static final int MSG_VOLUME_FORGOTTEN = 4;
        private static final int MSG_VOLUME_RECORD_CHANGED = 3;
        private static final int MSG_VOLUME_STATE_CHANGED = 2;
        private final RemoteCallbackList<IStorageEventListener> mCallbacks;

        public Callbacks(Looper looper) {
            super(looper);
            this.mCallbacks = new RemoteCallbackList<>();
        }

        public void register(IStorageEventListener callback) {
            this.mCallbacks.register(callback);
        }

        public void unregister(IStorageEventListener callback) {
            this.mCallbacks.unregister(callback);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            SomeArgs args = (SomeArgs) msg.obj;
            int n = this.mCallbacks.beginBroadcast();
            for (int i = 0; i < n; i++) {
                IStorageEventListener callback = (IStorageEventListener) this.mCallbacks.getBroadcastItem(i);
                try {
                    invokeCallback(callback, msg.what, args);
                } catch (RemoteException e) {
                }
            }
            this.mCallbacks.finishBroadcast();
            args.recycle();
        }

        private void invokeCallback(IStorageEventListener callback, int what, SomeArgs args) throws RemoteException {
            switch (what) {
                case 1:
                    callback.onStorageStateChanged((String) args.arg1, (String) args.arg2, (String) args.arg3);
                    break;
                case 2:
                    callback.onVolumeStateChanged((VolumeInfo) args.arg1, args.argi2, args.argi3);
                    break;
                case 3:
                    callback.onVolumeRecordChanged((VolumeRecord) args.arg1);
                    break;
                case 4:
                    callback.onVolumeForgotten((String) args.arg1);
                    break;
                case 5:
                    callback.onDiskScanned((DiskInfo) args.arg1, args.argi2);
                    break;
                case 6:
                    callback.onDiskDestroyed((DiskInfo) args.arg1);
                    break;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyStorageStateChanged(String path, String oldState, String newState) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = path;
            args.arg2 = oldState;
            args.arg3 = newState;
            obtainMessage(1, args).sendToTarget();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyVolumeStateChanged(VolumeInfo vol, int oldState, int newState) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = vol.clone();
            args.argi2 = oldState;
            args.argi3 = newState;
            obtainMessage(2, args).sendToTarget();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyVolumeRecordChanged(VolumeRecord rec) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = rec.clone();
            obtainMessage(3, args).sendToTarget();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyVolumeForgotten(String fsUuid) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = fsUuid;
            obtainMessage(4, args).sendToTarget();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyDiskScanned(DiskInfo disk, int volumeCount) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = disk.clone();
            args.argi2 = volumeCount;
            obtainMessage(5, args).sendToTarget();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyDiskDestroyed(DiskInfo disk) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = disk.clone();
            obtainMessage(6, args).sendToTarget();
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, writer)) {
            IndentingPrintWriter pw = new IndentingPrintWriter(writer, "  ", 160);
            synchronized (this.mLock) {
                pw.println("Disks:");
                pw.increaseIndent();
                for (int i = 0; i < this.mDisks.size(); i++) {
                    DiskInfo disk = this.mDisks.valueAt(i);
                    disk.dump(pw);
                }
                pw.decreaseIndent();
                pw.println();
                pw.println("Volumes:");
                pw.increaseIndent();
                for (int i2 = 0; i2 < this.mVolumes.size(); i2++) {
                    VolumeInfo vol = this.mVolumes.valueAt(i2);
                    if (!"private".equals(vol.id)) {
                        vol.dump(pw);
                    }
                }
                pw.decreaseIndent();
                pw.println();
                pw.println("Records:");
                pw.increaseIndent();
                for (int i3 = 0; i3 < this.mRecords.size(); i3++) {
                    VolumeRecord note = this.mRecords.valueAt(i3);
                    note.dump(pw);
                }
                pw.decreaseIndent();
                pw.println();
                pw.println("Primary storage UUID: " + this.mPrimaryStorageUuid);
                pw.println();
                Pair<String, Long> pair = StorageManager.getPrimaryStoragePathAndSize();
                if (pair == null) {
                    pw.println("Internal storage total size: N/A");
                } else {
                    pw.print("Internal storage (");
                    pw.print((String) pair.first);
                    pw.print(") total size: ");
                    pw.print(pair.second);
                    pw.print(" (");
                    pw.print(DataUnit.MEBIBYTES.toBytes(((Long) pair.second).longValue()));
                    pw.println(" MiB)");
                }
                pw.println();
                pw.println("Local unlocked users: " + this.mLocalUnlockedUsers);
                pw.println("System unlocked users: " + Arrays.toString(this.mSystemUnlockedUsers));
                ContentResolver cr = this.mContext.getContentResolver();
                pw.println();
                pw.println("Isolated storage, local feature flag: " + Settings.Global.getInt(cr, "isolated_storage_local", 0));
                pw.println("Isolated storage, remote feature flag: " + Settings.Global.getInt(cr, "isolated_storage_remote", 0));
                pw.println("Isolated storage, resolved: " + StorageManager.hasIsolatedStorage());
                pw.println("Forced scoped storage app list: " + DeviceConfig.getProperty("storage_native_boot", "forced_scoped_storage_whitelist"));
                pw.println("isAutomotive:" + this.mIsAutomotive);
            }
            synchronized (this.mObbMounts) {
                pw.println();
                pw.println("mObbMounts:");
                pw.increaseIndent();
                for (Map.Entry<IBinder, List<ObbState>> e : this.mObbMounts.entrySet()) {
                    pw.println(e.getKey() + ":");
                    pw.increaseIndent();
                    List<ObbState> obbStates = e.getValue();
                    for (ObbState obbState : obbStates) {
                        pw.println(obbState);
                    }
                    pw.decreaseIndent();
                }
                pw.decreaseIndent();
                pw.println();
                pw.println("mObbPathToStateMap:");
                pw.increaseIndent();
                for (Map.Entry<String, ObbState> e2 : this.mObbPathToStateMap.entrySet()) {
                    pw.print(e2.getKey());
                    pw.print(" -> ");
                    pw.println(e2.getValue());
                }
                pw.decreaseIndent();
            }
            pw.println();
            pw.print("Last maintenance: ");
            pw.println(TimeUtils.formatForLogging(this.mLastMaintenance));
        }
    }

    @Override // com.android.server.Watchdog.Monitor
    public void monitor() {
        try {
            this.mVold.monitor();
        } catch (Exception e) {
            Slog.wtf(TAG, e);
        }
    }

    private final class StorageManagerInternalImpl extends StorageManagerInternal {
        private final CopyOnWriteArrayList<StorageManagerInternal.ExternalStorageMountPolicy> mPolicies;
        private final List<StorageManagerInternal.ResetListener> mResetListeners;

        private StorageManagerInternalImpl() {
            this.mPolicies = new CopyOnWriteArrayList<>();
            this.mResetListeners = new ArrayList();
        }

        public void addExternalStoragePolicy(StorageManagerInternal.ExternalStorageMountPolicy policy) {
            this.mPolicies.add(policy);
        }

        public boolean prepareStorageDirs(int userId, Set<String> packageList, String processName) {
            synchronized (StorageManagerService.this.mLock) {
                if (!StorageManagerService.this.mFuseMountedUser.contains(Integer.valueOf(userId))) {
                    Slog.w(StorageManagerService.TAG, "User " + userId + " is not unlocked yet so skip mounting obb");
                    return false;
                }
                try {
                    IVold vold = IVold.Stub.asInterface(ServiceManager.getServiceOrThrow("vold"));
                    for (String pkg : packageList) {
                        String packageObbDir = String.format("/storage/emulated/%d/Android/obb/%s/", Integer.valueOf(userId), pkg);
                        String packageDataDir = String.format("/storage/emulated/%d/Android/data/%s/", Integer.valueOf(userId), pkg);
                        int appUid = UserHandle.getUid(userId, StorageManagerService.this.mPmInternal.getPackage(pkg).getUid());
                        File file = new File(packageObbDir);
                        if (!file.exists()) {
                            vold.setupAppDir(packageObbDir, appUid);
                        }
                        File file2 = new File(packageDataDir);
                        if (!file2.exists()) {
                            vold.setupAppDir(packageDataDir, appUid);
                        }
                    }
                    return true;
                } catch (ServiceManager.ServiceNotFoundException | RemoteException e) {
                    Slog.e(StorageManagerService.TAG, "Unable to create obb and data directories for " + processName, e);
                    return false;
                }
            }
        }

        public void onExternalStoragePolicyChanged(int uid, String packageName) {
            int mountMode = getExternalStorageMountMode(uid, packageName);
            StorageManagerService.this.remountUidExternalStorage(uid, mountMode);
        }

        public int getExternalStorageMountMode(int uid, String packageName) {
            if (StorageManagerService.ENABLE_ISOLATED_STORAGE) {
                return StorageManagerService.this.getMountMode(uid, packageName);
            }
            if (packageName == null) {
                try {
                    String[] packagesForUid = StorageManagerService.this.mIPackageManager.getPackagesForUid(uid);
                    packageName = packagesForUid[0];
                } catch (RemoteException e) {
                }
            }
            int mountMode = Integer.MAX_VALUE;
            for (StorageManagerInternal.ExternalStorageMountPolicy policy : this.mPolicies) {
                int policyMode = policy.getMountMode(uid, packageName);
                if (policyMode == 0) {
                    return 0;
                }
                mountMode = Math.min(mountMode, policyMode);
            }
            if (mountMode == Integer.MAX_VALUE) {
                return 0;
            }
            return mountMode;
        }

        public void addResetListener(StorageManagerInternal.ResetListener listener) {
            synchronized (this.mResetListeners) {
                this.mResetListeners.add(listener);
            }
        }

        public void onReset(IVold vold) {
            synchronized (this.mResetListeners) {
                for (StorageManagerInternal.ResetListener listener : this.mResetListeners) {
                    listener.onReset(vold);
                }
            }
        }

        public void resetUser(int userId) {
            StorageManagerService.this.mHandler.obtainMessage(10).sendToTarget();
        }

        public boolean hasLegacyExternalStorage(int uid) {
            boolean zContains;
            synchronized (StorageManagerService.this.mLock) {
                zContains = StorageManagerService.this.mUidsWithLegacyExternalStorage.contains(Integer.valueOf(uid));
            }
            return zContains;
        }

        public void prepareAppDataAfterInstall(String packageName, int uid) {
            int userId = UserHandle.getUserId(uid);
            Environment.UserEnvironment userEnv = new Environment.UserEnvironment(userId);
            File[] packageObbDirs = userEnv.buildExternalStorageAppObbDirs(packageName);
            for (File packageObbDir : packageObbDirs) {
                try {
                    StorageManagerService.this.mVold.fixupAppDir(packageObbDir.getCanonicalPath() + SliceClientPermissions.SliceAuthority.DELIMITER, uid);
                } catch (RemoteException | ServiceSpecificException e) {
                    Log.e(StorageManagerService.TAG, "Failed to fixup app dir for " + packageName, e);
                } catch (IOException e2) {
                    Log.e(StorageManagerService.TAG, "Failed to get canonical path for " + packageName);
                }
            }
        }

        public boolean isExternalStorageService(int uid) {
            return StorageManagerService.this.mMediaStoreAuthorityAppId == UserHandle.getAppId(uid);
        }

        public boolean hasExternalStorage(int uid, String packageName) {
            if (uid != 1000) {
                if (StorageManagerService.ENABLE_ISOLATED_STORAGE) {
                    return StorageManagerService.this.getMountMode(uid, packageName) != 0;
                }
                for (StorageManagerInternal.ExternalStorageMountPolicy policy : this.mPolicies) {
                    boolean policyHasStorage = policy.hasExternalStorage(uid, packageName);
                    if (!policyHasStorage) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        }

        private void killAppForOpChange(int code, int uid) {
            IActivityManager am = ActivityManager.getService();
            try {
                am.killUid(UserHandle.getAppId(uid), -1, AppOpsManager.opToName(code) + " changed.");
            } catch (RemoteException e) {
            }
        }

        public void onAppOpsChanged(int code, int uid, String packageName, int mode, int previousMode) {
            long token = Binder.clearCallingIdentity();
            try {
                if (StorageManagerService.this.mIsFuseEnabled) {
                    if (code == 66) {
                        if (previousMode == 0 || mode == 0) {
                            killAppForOpChange(code, uid);
                        }
                        return;
                    } else if (code == 87) {
                        StorageManagerService.this.updateLegacyStorageApps(packageName, uid, mode == 0);
                        return;
                    } else if (code == 92) {
                        if (mode != 0) {
                            killAppForOpChange(code, uid);
                        }
                        return;
                    }
                }
                if (mode == 0 && (code == 59 || code == 60 || code == 66)) {
                    UserManagerInternal userManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
                    if (userManagerInternal.isUserInitialized(UserHandle.getUserId(uid))) {
                        onExternalStoragePolicyChanged(uid, packageName);
                    }
                }
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }
    }
}
