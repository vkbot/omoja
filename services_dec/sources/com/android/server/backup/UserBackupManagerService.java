package com.android.server.backup;

import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AlarmManager;
import android.app.AppGlobals;
import android.app.IActivityManager;
import android.app.IBackupAgent;
import android.app.PendingIntent;
import android.app.backup.BackupAgent;
import android.app.backup.IBackupManager;
import android.app.backup.IBackupManagerMonitor;
import android.app.backup.IBackupObserver;
import android.app.backup.IFullBackupRestoreObserver;
import android.app.backup.IRestoreSession;
import android.app.backup.ISelectBackupTransportCallback;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.os.PowerSaveState;
import android.os.RemoteException;
import android.os.SELinux;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.WorkSource;
import android.os.storage.IStorageManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.EventLog;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.backup.IBackupTransport;
import com.android.internal.util.Preconditions;
import com.android.server.AppWidgetBackupBridge;
import com.android.server.EventLogTags;
import com.android.server.LocalServices;
import com.android.server.backup.fullbackup.FullBackupEntry;
import com.android.server.backup.fullbackup.PerformFullTransportBackupTask;
import com.android.server.backup.internal.BackupHandler;
import com.android.server.backup.internal.ClearDataObserver;
import com.android.server.backup.internal.OnTaskFinishedListener;
import com.android.server.backup.internal.Operation;
import com.android.server.backup.internal.PerformInitializeTask;
import com.android.server.backup.internal.RunInitializeReceiver;
import com.android.server.backup.internal.SetupObserver;
import com.android.server.backup.keyvalue.BackupRequest;
import com.android.server.backup.params.AdbBackupParams;
import com.android.server.backup.params.AdbParams;
import com.android.server.backup.params.AdbRestoreParams;
import com.android.server.backup.params.BackupParams;
import com.android.server.backup.params.ClearParams;
import com.android.server.backup.params.ClearRetryParams;
import com.android.server.backup.params.RestoreParams;
import com.android.server.backup.restore.ActiveRestoreSession;
import com.android.server.backup.restore.PerformUnifiedRestoreTask;
import com.android.server.backup.transport.OnTransportRegisteredListener;
import com.android.server.backup.transport.TransportClient;
import com.android.server.backup.transport.TransportNotRegisteredException;
import com.android.server.backup.utils.AppBackupUtils;
import com.android.server.backup.utils.BackupManagerMonitorUtils;
import com.android.server.backup.utils.BackupObserverUtils;
import com.android.server.backup.utils.FileUtils;
import com.android.server.backup.utils.SparseArrayUtils;
import com.android.server.job.JobSchedulerShellCommand;
import com.android.server.usage.AppStandbyController;
import com.google.android.collect.Sets;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.security.SecureRandom;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class UserBackupManagerService {
    public static final String BACKUP_FILE_HEADER_MAGIC = "ANDROID BACKUP\n";
    public static final int BACKUP_FILE_VERSION = 5;
    private static final String BACKUP_FINISHED_ACTION = "android.intent.action.BACKUP_FINISHED";
    private static final String BACKUP_FINISHED_PACKAGE_EXTRA = "packageName";
    public static final String BACKUP_MANIFEST_FILENAME = "_manifest";
    public static final int BACKUP_MANIFEST_VERSION = 1;
    public static final String BACKUP_METADATA_FILENAME = "_meta";
    public static final int BACKUP_METADATA_VERSION = 1;
    public static final int BACKUP_WIDGET_METADATA_TOKEN = 33549569;
    private static final long BIND_TIMEOUT_INTERVAL = 10000;
    private static final int BUSY_BACKOFF_FUZZ = 7200000;
    private static final long BUSY_BACKOFF_MIN_MILLIS = 3600000;
    private static final long CLEAR_DATA_TIMEOUT_INTERVAL = 30000;
    private static final int CURRENT_ANCESTRAL_RECORD_VERSION = 1;
    private static final long INITIALIZATION_DELAY_MILLIS = 3000;
    private static final String INIT_SENTINEL_FILE_NAME = "_need_init_";
    public static final String KEY_WIDGET_STATE = "￭￭widget";
    private static final int OP_ACKNOWLEDGED = 1;
    public static final int OP_PENDING = 0;
    private static final int OP_TIMEOUT = -1;
    public static final int OP_TYPE_BACKUP = 2;
    public static final int OP_TYPE_BACKUP_WAIT = 0;
    public static final int OP_TYPE_RESTORE_WAIT = 1;
    public static final String PACKAGE_MANAGER_SENTINEL = "@pm@";
    public static final String RUN_INITIALIZE_ACTION = "android.app.backup.intent.INIT";
    private static final int SCHEDULE_FILE_VERSION = 1;
    private static final String SERIAL_ID_FILE = "serial_id";
    public static final String SETTINGS_PACKAGE = "com.android.providers.settings";
    public static final String SHARED_BACKUP_AGENT_PACKAGE = "com.android.sharedstoragebackup";
    private static final String SKIP_USER_FACING_PACKAGES = "backup_skip_user_facing_packages";
    private static final long TIMEOUT_FULL_CONFIRMATION = 60000;
    private static final long TRANSPORT_RETRY_INTERVAL = 3600000;
    private static final String WALLPAPER_PACKAGE = "com.android.wallpaperbackup";
    private ActiveRestoreSession mActiveRestoreSession;
    private final IActivityManager mActivityManager;
    private final ActivityManagerInternal mActivityManagerInternal;
    private final BackupAgentTimeoutParameters mAgentTimeoutParameters;
    private final AlarmManager mAlarmManager;
    private File mAncestralSerialNumberFile;
    private boolean mAutoRestore;
    private final BackupHandler mBackupHandler;
    private final IBackupManager mBackupManagerBinder;
    private final BackupPasswordManager mBackupPasswordManager;
    private final UserBackupPreferences mBackupPreferences;
    private volatile boolean mBackupRunning;
    private final File mBaseStateDir;
    private volatile boolean mClearingData;
    private IBackupAgent mConnectedAgent;
    private volatile boolean mConnecting;
    private final BackupManagerConstants mConstants;
    private final Context mContext;
    private final File mDataDir;
    private boolean mEnabled;
    private ArrayList<FullBackupEntry> mFullBackupQueue;
    private final File mFullBackupScheduleFile;
    private boolean mIsRestoreInProgress;
    private DataChangedJournal mJournal;
    private final File mJournalDir;
    private volatile long mLastBackupPass;
    private final PackageManager mPackageManager;
    private final IPackageManager mPackageManagerBinder;
    private PowerManager mPowerManager;
    private ProcessedPackagesJournal mProcessedPackagesJournal;
    private final long mRegisterTransportsRequestedTime;
    private final PendingIntent mRunInitIntent;
    private final BroadcastReceiver mRunInitReceiver;
    private PerformFullTransportBackupTask mRunningFullBackupTask;
    private boolean mSetupComplete;
    private final ContentObserver mSetupObserver;
    private final IStorageManager mStorageManager;
    private File mTokenFile;
    private final TransportManager mTransportManager;
    private final int mUserId;
    private final BackupWakeLock mWakelock;
    private final ArraySet<String> mPendingInits = new ArraySet<>();
    private final SparseArray<HashSet<String>> mBackupParticipants = new SparseArray<>();
    private final HashMap<String, BackupRequest> mPendingBackups = new HashMap<>();
    private final Object mQueueLock = new Object();
    private final Object mAgentConnectLock = new Object();
    private final Object mClearDataLock = new Object();
    private final SparseArray<AdbParams> mAdbBackupRestoreConfirmations = new SparseArray<>();
    private final SecureRandom mRng = new SecureRandom();
    private final Queue<PerformUnifiedRestoreTask> mPendingRestores = new ArrayDeque();
    private final SparseArray<Operation> mCurrentOperations = new SparseArray<>();
    private final Object mCurrentOpLock = new Object();
    private final Random mTokenGenerator = new Random();
    private final AtomicInteger mNextToken = new AtomicInteger();
    private Set<String> mAncestralPackages = null;
    private long mAncestralToken = 0;
    private long mCurrentToken = 0;
    private Runnable mFullBackupScheduleWriter = new Runnable() { // from class: com.android.server.backup.UserBackupManagerService.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (UserBackupManagerService.this.mQueueLock) {
                try {
                    ByteArrayOutputStream bufStream = new ByteArrayOutputStream(4096);
                    DataOutputStream bufOut = new DataOutputStream(bufStream);
                    bufOut.writeInt(1);
                    int numPackages = UserBackupManagerService.this.mFullBackupQueue.size();
                    bufOut.writeInt(numPackages);
                    for (int i = 0; i < numPackages; i++) {
                        FullBackupEntry entry = (FullBackupEntry) UserBackupManagerService.this.mFullBackupQueue.get(i);
                        bufOut.writeUTF(entry.packageName);
                        bufOut.writeLong(entry.lastBackup);
                    }
                    bufOut.flush();
                    AtomicFile af = new AtomicFile(UserBackupManagerService.this.mFullBackupScheduleFile);
                    FileOutputStream out = af.startWrite();
                    out.write(bufStream.toByteArray());
                    af.finishWrite(out);
                } catch (Exception e) {
                    Slog.e(BackupManagerService.TAG, UserBackupManagerService.addUserIdToLogMessage(UserBackupManagerService.this.mUserId, "Unable to write backup schedule!"), e);
                }
            }
        }
    };
    private BroadcastReceiver mPackageTrackingReceiver = new AnonymousClass2();

    public static class BackupWakeLock {
        private boolean mHasQuit = false;
        private final PowerManager.WakeLock mPowerManagerWakeLock;
        private int mUserId;

        public BackupWakeLock(PowerManager.WakeLock powerManagerWakeLock, int userId) {
            this.mPowerManagerWakeLock = powerManagerWakeLock;
            this.mUserId = userId;
        }

        public synchronized void acquire() {
            if (this.mHasQuit) {
                Slog.v(BackupManagerService.TAG, UserBackupManagerService.addUserIdToLogMessage(this.mUserId, "Ignore wakelock acquire after quit: " + this.mPowerManagerWakeLock.getTag()));
                return;
            }
            this.mPowerManagerWakeLock.acquire();
            Slog.v(BackupManagerService.TAG, UserBackupManagerService.addUserIdToLogMessage(this.mUserId, "Acquired wakelock:" + this.mPowerManagerWakeLock.getTag()));
        }

        public synchronized void release() {
            if (this.mHasQuit) {
                Slog.v(BackupManagerService.TAG, UserBackupManagerService.addUserIdToLogMessage(this.mUserId, "Ignore wakelock release after quit: " + this.mPowerManagerWakeLock.getTag()));
                return;
            }
            this.mPowerManagerWakeLock.release();
            Slog.v(BackupManagerService.TAG, UserBackupManagerService.addUserIdToLogMessage(this.mUserId, "Released wakelock:" + this.mPowerManagerWakeLock.getTag()));
        }

        public synchronized boolean isHeld() {
            return this.mPowerManagerWakeLock.isHeld();
        }

        public synchronized void quit() {
            while (this.mPowerManagerWakeLock.isHeld()) {
                Slog.v(BackupManagerService.TAG, UserBackupManagerService.addUserIdToLogMessage(this.mUserId, "Releasing wakelock: " + this.mPowerManagerWakeLock.getTag()));
                this.mPowerManagerWakeLock.release();
            }
            this.mHasQuit = true;
        }
    }

    static UserBackupManagerService createAndInitializeService(int userId, Context context, BackupManagerService backupManagerService, Set<ComponentName> transportWhitelist) {
        String currentTransport = Settings.Secure.getStringForUser(context.getContentResolver(), "backup_transport", userId);
        if (TextUtils.isEmpty(currentTransport)) {
            currentTransport = null;
        }
        Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(userId, "Starting with transport " + currentTransport));
        TransportManager transportManager = new TransportManager(userId, context, transportWhitelist, currentTransport);
        File baseStateDir = UserBackupManagerFiles.getBaseStateDir(userId);
        File dataDir = UserBackupManagerFiles.getDataDir(userId);
        HandlerThread userBackupThread = new HandlerThread("backup-" + userId, 10);
        userBackupThread.start();
        Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(userId, "Started thread " + userBackupThread.getName()));
        return createAndInitializeService(userId, context, backupManagerService, userBackupThread, baseStateDir, dataDir, transportManager);
    }

    public static UserBackupManagerService createAndInitializeService(int userId, Context context, BackupManagerService backupManagerService, HandlerThread userBackupThread, File baseStateDir, File dataDir, TransportManager transportManager) {
        return new UserBackupManagerService(userId, context, backupManagerService, userBackupThread, baseStateDir, dataDir, transportManager);
    }

    public static boolean getSetupCompleteSettingForUser(Context context, int userId) {
        return Settings.Secure.getIntForUser(context.getContentResolver(), "user_setup_complete", 0, userId) != 0;
    }

    private UserBackupManagerService(int userId, Context context, BackupManagerService parent, HandlerThread userBackupThread, File baseStateDir, File dataDir, TransportManager transportManager) {
        this.mUserId = userId;
        Objects.requireNonNull(context, "context cannot be null");
        this.mContext = context;
        this.mPackageManager = context.getPackageManager();
        this.mPackageManagerBinder = AppGlobals.getPackageManager();
        this.mActivityManager = ActivityManager.getService();
        this.mActivityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        this.mAlarmManager = (AlarmManager) context.getSystemService("alarm");
        this.mPowerManager = (PowerManager) context.getSystemService("power");
        this.mStorageManager = IStorageManager.Stub.asInterface(ServiceManager.getService("mount"));
        Objects.requireNonNull(parent, "parent cannot be null");
        this.mBackupManagerBinder = BackupManagerService.asInterface(parent.asBinder());
        BackupAgentTimeoutParameters backupAgentTimeoutParameters = new BackupAgentTimeoutParameters(Handler.getMain(), this.mContext.getContentResolver());
        this.mAgentTimeoutParameters = backupAgentTimeoutParameters;
        backupAgentTimeoutParameters.start();
        Objects.requireNonNull(userBackupThread, "userBackupThread cannot be null");
        this.mBackupHandler = new BackupHandler(this, userBackupThread);
        ContentResolver resolver = context.getContentResolver();
        this.mSetupComplete = getSetupCompleteSettingForUser(context, userId);
        this.mAutoRestore = Settings.Secure.getIntForUser(resolver, "backup_auto_restore", 1, userId) != 0;
        this.mSetupObserver = new SetupObserver(this, this.mBackupHandler);
        resolver.registerContentObserver(Settings.Secure.getUriFor("user_setup_complete"), false, this.mSetupObserver, this.mUserId);
        Objects.requireNonNull(baseStateDir, "baseStateDir cannot be null");
        File file = baseStateDir;
        this.mBaseStateDir = file;
        if (userId == 0) {
            file.mkdirs();
            if (!SELinux.restorecon(this.mBaseStateDir)) {
                Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(userId, "SELinux restorecon failed on " + this.mBaseStateDir));
            }
        }
        Objects.requireNonNull(dataDir, "dataDir cannot be null");
        this.mDataDir = dataDir;
        this.mBackupPasswordManager = new BackupPasswordManager(this.mContext, this.mBaseStateDir, this.mRng);
        this.mRunInitReceiver = new RunInitializeReceiver(this);
        IntentFilter filter = new IntentFilter();
        filter.addAction(RUN_INITIALIZE_ACTION);
        context.registerReceiverAsUser(this.mRunInitReceiver, UserHandle.of(userId), filter, "android.permission.BACKUP", null);
        Intent initIntent = new Intent(RUN_INITIALIZE_ACTION);
        initIntent.addFlags(1073741824);
        this.mRunInitIntent = PendingIntent.getBroadcastAsUser(context, 0, initIntent, 0, UserHandle.of(userId));
        File file2 = new File(this.mBaseStateDir, "pending");
        this.mJournalDir = file2;
        file2.mkdirs();
        this.mJournal = null;
        BackupManagerConstants backupManagerConstants = new BackupManagerConstants(this.mBackupHandler, this.mContext.getContentResolver());
        this.mConstants = backupManagerConstants;
        backupManagerConstants.start();
        synchronized (this.mBackupParticipants) {
            addPackageParticipantsLocked(null);
        }
        Objects.requireNonNull(transportManager, "transportManager cannot be null");
        TransportManager transportManager2 = transportManager;
        this.mTransportManager = transportManager2;
        transportManager2.setOnTransportRegisteredListener(new OnTransportRegisteredListener() { // from class: com.android.server.backup.-$$Lambda$UserBackupManagerService$9cuIH_XloqtNByp_6hXeGaVars8
            @Override // com.android.server.backup.transport.OnTransportRegisteredListener
            public final void onTransportRegistered(String str, String str2) {
                this.f$0.onTransportRegistered(str, str2);
            }
        });
        this.mRegisterTransportsRequestedTime = SystemClock.elapsedRealtime();
        BackupHandler backupHandler = this.mBackupHandler;
        final TransportManager transportManager3 = this.mTransportManager;
        Objects.requireNonNull(transportManager3);
        backupHandler.postDelayed(new Runnable() { // from class: com.android.server.backup.-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q
            @Override // java.lang.Runnable
            public final void run() {
                transportManager3.registerTransports();
            }
        }, 3000L);
        this.mBackupHandler.postDelayed(new Runnable() { // from class: com.android.server.backup.-$$Lambda$UserBackupManagerService$_gNqJq9Ygtc0ZVwYhCSDKCUKrKY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.parseLeftoverJournals();
            }
        }, 3000L);
        this.mBackupPreferences = new UserBackupPreferences(this.mContext, this.mBaseStateDir);
        this.mWakelock = new BackupWakeLock(this.mPowerManager.newWakeLock(1, "*backup*-" + userId + "-" + userBackupThread.getThreadId()), userId);
        this.mFullBackupScheduleFile = new File(this.mBaseStateDir, "fb-schedule");
        initPackageTracking();
    }

    void initializeBackupEnableState() {
        boolean isEnabled = UserBackupManagerFilePersistedSettings.readBackupEnableState(this.mUserId);
        setBackupEnabled(isEnabled);
    }

    protected void tearDownService() {
        this.mAgentTimeoutParameters.stop();
        this.mConstants.stop();
        this.mContext.getContentResolver().unregisterContentObserver(this.mSetupObserver);
        this.mContext.unregisterReceiver(this.mRunInitReceiver);
        this.mContext.unregisterReceiver(this.mPackageTrackingReceiver);
        this.mBackupHandler.stop();
    }

    public int getUserId() {
        return this.mUserId;
    }

    public BackupManagerConstants getConstants() {
        return this.mConstants;
    }

    public BackupAgentTimeoutParameters getAgentTimeoutParameters() {
        return this.mAgentTimeoutParameters;
    }

    public Context getContext() {
        return this.mContext;
    }

    public PackageManager getPackageManager() {
        return this.mPackageManager;
    }

    public IPackageManager getPackageManagerBinder() {
        return this.mPackageManagerBinder;
    }

    public IActivityManager getActivityManager() {
        return this.mActivityManager;
    }

    public AlarmManager getAlarmManager() {
        return this.mAlarmManager;
    }

    void setPowerManager(PowerManager powerManager) {
        this.mPowerManager = powerManager;
    }

    public TransportManager getTransportManager() {
        return this.mTransportManager;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public void setEnabled(boolean enabled) {
        this.mEnabled = enabled;
    }

    public boolean isSetupComplete() {
        return this.mSetupComplete;
    }

    public void setSetupComplete(boolean setupComplete) {
        this.mSetupComplete = setupComplete;
    }

    public BackupWakeLock getWakelock() {
        return this.mWakelock;
    }

    public void setWorkSource(WorkSource workSource) {
        this.mWakelock.mPowerManagerWakeLock.setWorkSource(workSource);
    }

    public Handler getBackupHandler() {
        return this.mBackupHandler;
    }

    public PendingIntent getRunInitIntent() {
        return this.mRunInitIntent;
    }

    public HashMap<String, BackupRequest> getPendingBackups() {
        return this.mPendingBackups;
    }

    public Object getQueueLock() {
        return this.mQueueLock;
    }

    public boolean isBackupRunning() {
        return this.mBackupRunning;
    }

    public void setBackupRunning(boolean backupRunning) {
        this.mBackupRunning = backupRunning;
    }

    public void setLastBackupPass(long lastBackupPass) {
        this.mLastBackupPass = lastBackupPass;
    }

    public Object getClearDataLock() {
        return this.mClearDataLock;
    }

    public void setClearingData(boolean clearingData) {
        this.mClearingData = clearingData;
    }

    public boolean isRestoreInProgress() {
        return this.mIsRestoreInProgress;
    }

    public void setRestoreInProgress(boolean restoreInProgress) {
        this.mIsRestoreInProgress = restoreInProgress;
    }

    public Queue<PerformUnifiedRestoreTask> getPendingRestores() {
        return this.mPendingRestores;
    }

    public ActiveRestoreSession getActiveRestoreSession() {
        return this.mActiveRestoreSession;
    }

    public SparseArray<Operation> getCurrentOperations() {
        return this.mCurrentOperations;
    }

    public Object getCurrentOpLock() {
        return this.mCurrentOpLock;
    }

    public SparseArray<AdbParams> getAdbBackupRestoreConfirmations() {
        return this.mAdbBackupRestoreConfirmations;
    }

    public File getBaseStateDir() {
        return this.mBaseStateDir;
    }

    public File getDataDir() {
        return this.mDataDir;
    }

    BroadcastReceiver getPackageTrackingReceiver() {
        return this.mPackageTrackingReceiver;
    }

    public DataChangedJournal getJournal() {
        return this.mJournal;
    }

    public void setJournal(DataChangedJournal journal) {
        this.mJournal = journal;
    }

    public SecureRandom getRng() {
        return this.mRng;
    }

    public void setAncestralPackages(Set<String> ancestralPackages) {
        this.mAncestralPackages = ancestralPackages;
    }

    public void setAncestralToken(long ancestralToken) {
        this.mAncestralToken = ancestralToken;
    }

    public long getCurrentToken() {
        return this.mCurrentToken;
    }

    public void setCurrentToken(long currentToken) {
        this.mCurrentToken = currentToken;
    }

    public ArraySet<String> getPendingInits() {
        return this.mPendingInits;
    }

    public void clearPendingInits() {
        this.mPendingInits.clear();
    }

    public void setRunningFullBackupTask(PerformFullTransportBackupTask runningFullBackupTask) {
        this.mRunningFullBackupTask = runningFullBackupTask;
    }

    public int generateRandomIntegerToken() {
        int token = this.mTokenGenerator.nextInt();
        if (token < 0) {
            token = -token;
        }
        return (token & (-256)) | (this.mNextToken.incrementAndGet() & 255);
    }

    public BackupAgent makeMetadataAgent() {
        PackageManagerBackupAgent pmAgent = new PackageManagerBackupAgent(this.mPackageManager, this.mUserId);
        pmAgent.attach(this.mContext);
        pmAgent.onCreate(UserHandle.of(this.mUserId));
        return pmAgent;
    }

    public PackageManagerBackupAgent makeMetadataAgent(List<PackageInfo> packages) {
        PackageManagerBackupAgent pmAgent = new PackageManagerBackupAgent(this.mPackageManager, packages, this.mUserId);
        pmAgent.attach(this.mContext);
        pmAgent.onCreate(UserHandle.of(this.mUserId));
        return pmAgent;
    }

    private void initPackageTracking() {
        this.mTokenFile = new File(this.mBaseStateDir, "ancestral");
        try {
            DataInputStream tokenStream = new DataInputStream(new BufferedInputStream(new FileInputStream(this.mTokenFile)));
            try {
                int version = tokenStream.readInt();
                if (version == 1) {
                    this.mAncestralToken = tokenStream.readLong();
                    this.mCurrentToken = tokenStream.readLong();
                    int numPackages = tokenStream.readInt();
                    if (numPackages >= 0) {
                        this.mAncestralPackages = new HashSet();
                        for (int i = 0; i < numPackages; i++) {
                            String pkgName = tokenStream.readUTF();
                            this.mAncestralPackages.add(pkgName);
                        }
                    }
                }
                tokenStream.close();
            } catch (Throwable th) {
                try {
                    tokenStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (FileNotFoundException e) {
            Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "No ancestral data"));
        } catch (IOException e2) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to read token file"), e2);
        }
        ProcessedPackagesJournal processedPackagesJournal = new ProcessedPackagesJournal(this.mBaseStateDir);
        this.mProcessedPackagesJournal = processedPackagesJournal;
        processedPackagesJournal.init();
        synchronized (this.mQueueLock) {
            this.mFullBackupQueue = readFullBackupSchedule();
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_ADDED");
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addAction("android.intent.action.PACKAGE_CHANGED");
        filter.addDataScheme(com.android.server.pm.Settings.ATTR_PACKAGE);
        this.mContext.registerReceiverAsUser(this.mPackageTrackingReceiver, UserHandle.of(this.mUserId), filter, null, null);
        IntentFilter sdFilter = new IntentFilter();
        sdFilter.addAction("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE");
        sdFilter.addAction("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
        this.mContext.registerReceiverAsUser(this.mPackageTrackingReceiver, UserHandle.of(this.mUserId), sdFilter, null, null);
    }

    private ArrayList<FullBackupEntry> readFullBackupSchedule() throws Throwable {
        Throwable th;
        Throwable th2;
        Throwable th3;
        boolean changed;
        int version;
        int i;
        StringBuilder sb;
        boolean changed2 = false;
        ArrayList<FullBackupEntry> schedule = null;
        List<PackageInfo> apps = PackageManagerBackupAgent.getStorableApplications(this.mPackageManager, this.mUserId);
        if (this.mFullBackupScheduleFile.exists()) {
            try {
                FileInputStream fstream = new FileInputStream(this.mFullBackupScheduleFile);
                try {
                    try {
                        BufferedInputStream bufStream = new BufferedInputStream(fstream);
                        try {
                            try {
                                DataInputStream in = new DataInputStream(bufStream);
                                try {
                                    try {
                                        int version2 = in.readInt();
                                        try {
                                            if (version2 != 1) {
                                                Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unknown backup schedule version " + version2));
                                                in.close();
                                                bufStream.close();
                                                fstream.close();
                                                return null;
                                            }
                                            int numPackages = in.readInt();
                                            schedule = new ArrayList<>(numPackages);
                                            HashSet<String> foundApps = new HashSet<>(numPackages);
                                            int i2 = 0;
                                            while (i2 < numPackages) {
                                                String pkgName = in.readUTF();
                                                long lastBackup = in.readLong();
                                                foundApps.add(pkgName);
                                                try {
                                                    changed = changed2;
                                                    try {
                                                        try {
                                                            PackageInfo pkg = this.mPackageManager.getPackageInfoAsUser(pkgName, 0, this.mUserId);
                                                            try {
                                                                try {
                                                                    if (AppBackupUtils.appGetsFullBackup(pkg)) {
                                                                        try {
                                                                            if (AppBackupUtils.appIsEligibleForBackup(pkg.applicationInfo, this.mUserId)) {
                                                                                int version3 = version2;
                                                                                numPackages = numPackages;
                                                                                try {
                                                                                    schedule.add(new FullBackupEntry(pkgName, lastBackup));
                                                                                    version = version3;
                                                                                } catch (PackageManager.NameNotFoundException e) {
                                                                                    e = e;
                                                                                    version = version3;
                                                                                    Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Package " + pkgName + " not installed; dropping from full backup"));
                                                                                }
                                                                            }
                                                                        } catch (PackageManager.NameNotFoundException e2) {
                                                                            e = e2;
                                                                            numPackages = numPackages;
                                                                            version = version2;
                                                                        }
                                                                        i2++;
                                                                        numPackages = numPackages;
                                                                        version2 = version;
                                                                        changed2 = changed;
                                                                    }
                                                                    sb.append(" no longer eligible for full backup");
                                                                    Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(i, sb.toString()));
                                                                } catch (PackageManager.NameNotFoundException e3) {
                                                                    e = e3;
                                                                    Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Package " + pkgName + " not installed; dropping from full backup"));
                                                                }
                                                                i = this.mUserId;
                                                                sb = new StringBuilder();
                                                                sb.append("Package ");
                                                                sb.append(pkgName);
                                                                version = version2;
                                                            } catch (PackageManager.NameNotFoundException e4) {
                                                                e = e4;
                                                                version = version2;
                                                            }
                                                        } catch (PackageManager.NameNotFoundException e5) {
                                                            e = e5;
                                                            numPackages = numPackages;
                                                            version = version2;
                                                        }
                                                        i2++;
                                                        numPackages = numPackages;
                                                        version2 = version;
                                                        changed2 = changed;
                                                    } catch (Throwable th4) {
                                                        th3 = th4;
                                                        changed2 = changed;
                                                    }
                                                } catch (PackageManager.NameNotFoundException e6) {
                                                    e = e6;
                                                    changed = changed2;
                                                    numPackages = numPackages;
                                                    version = version2;
                                                }
                                            }
                                            changed = changed2;
                                            changed2 = changed;
                                            for (PackageInfo app : apps) {
                                                if (AppBackupUtils.appGetsFullBackup(app) && AppBackupUtils.appIsEligibleForBackup(app.applicationInfo, this.mUserId) && !foundApps.contains(app.packageName)) {
                                                    schedule.add(new FullBackupEntry(app.packageName, 0L));
                                                    changed2 = true;
                                                }
                                            }
                                            Collections.sort(schedule);
                                            in.close();
                                            bufStream.close();
                                            fstream.close();
                                        } catch (Throwable th5) {
                                            th3 = th5;
                                        }
                                    } catch (Throwable th6) {
                                        th2 = th6;
                                        try {
                                            bufStream.close();
                                            throw th2;
                                        } catch (Throwable th7) {
                                            th2.addSuppressed(th7);
                                            throw th2;
                                        }
                                    }
                                } catch (Throwable th8) {
                                    th3 = th8;
                                }
                                try {
                                    in.close();
                                    throw th3;
                                } catch (Throwable th9) {
                                    th3.addSuppressed(th9);
                                    throw th3;
                                }
                            } catch (Throwable th10) {
                                th2 = th10;
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            try {
                                fstream.close();
                                throw th;
                            } catch (Throwable th12) {
                                th.addSuppressed(th12);
                                throw th;
                            }
                        }
                    } catch (Exception e7) {
                        e = e7;
                        Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to read backup schedule"), e);
                        this.mFullBackupScheduleFile.delete();
                        schedule = null;
                    }
                } catch (Throwable th13) {
                    th = th13;
                }
            } catch (Exception e8) {
                e = e8;
            }
        }
        if (schedule == null) {
            changed2 = true;
            schedule = new ArrayList<>(apps.size());
            for (PackageInfo info : apps) {
                if (AppBackupUtils.appGetsFullBackup(info) && AppBackupUtils.appIsEligibleForBackup(info.applicationInfo, this.mUserId)) {
                    schedule.add(new FullBackupEntry(info.packageName, 0L));
                }
            }
        }
        if (changed2) {
            writeFullBackupScheduleAsync();
        }
        return schedule;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeFullBackupScheduleAsync() {
        this.mBackupHandler.removeCallbacks(this.mFullBackupScheduleWriter);
        this.mBackupHandler.post(this.mFullBackupScheduleWriter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseLeftoverJournals() {
        ArrayList<DataChangedJournal> journals = DataChangedJournal.listJournals(this.mJournalDir);
        for (DataChangedJournal journal : journals) {
            if (!journal.equals(this.mJournal)) {
                try {
                    journal.forEach(new Consumer() { // from class: com.android.server.backup.-$$Lambda$UserBackupManagerService$W51Aw9Pu9AOsFVYQgIZy31INmwI
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) throws Throwable {
                            this.f$0.lambda$parseLeftoverJournals$0$UserBackupManagerService((String) obj);
                        }
                    });
                } catch (IOException e) {
                    Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Can't read " + journal), e);
                }
            }
        }
    }

    public /* synthetic */ void lambda$parseLeftoverJournals$0$UserBackupManagerService(String packageName) throws Throwable {
        Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Found stale backup journal, scheduling"));
        dataChangedImpl(packageName);
    }

    public Set<String> getExcludedRestoreKeys(String packageName) {
        return this.mBackupPreferences.getExcludedRestoreKeysForPackage(packageName);
    }

    public byte[] randomBytes(int bits) {
        byte[] array = new byte[bits / 8];
        this.mRng.nextBytes(array);
        return array;
    }

    public boolean setBackupPassword(String currentPw, String newPw) {
        return this.mBackupPasswordManager.setBackupPassword(currentPw, newPw);
    }

    public boolean hasBackupPassword() {
        return this.mBackupPasswordManager.hasBackupPassword();
    }

    public boolean backupPasswordMatches(String currentPw) {
        return this.mBackupPasswordManager.backupPasswordMatches(currentPw);
    }

    public void recordInitPending(boolean isPending, String transportName, String transportDirName) {
        synchronized (this.mQueueLock) {
            File stateDir = new File(this.mBaseStateDir, transportDirName);
            File initPendingFile = new File(stateDir, INIT_SENTINEL_FILE_NAME);
            if (isPending) {
                this.mPendingInits.add(transportName);
                try {
                    new FileOutputStream(initPendingFile).close();
                } catch (IOException e) {
                }
            } else {
                initPendingFile.delete();
                this.mPendingInits.remove(transportName);
            }
        }
    }

    public void resetBackupState(File stateFileDir) {
        synchronized (this.mQueueLock) {
            this.mProcessedPackagesJournal.reset();
            this.mCurrentToken = 0L;
            writeRestoreTokens();
            for (File sf : stateFileDir.listFiles()) {
                if (!sf.getName().equals(INIT_SENTINEL_FILE_NAME)) {
                    sf.delete();
                }
            }
        }
        synchronized (this.mBackupParticipants) {
            int numParticipants = this.mBackupParticipants.size();
            for (int i = 0; i < numParticipants; i++) {
                HashSet<String> participants = this.mBackupParticipants.valueAt(i);
                if (participants != null) {
                    for (String packageName : participants) {
                        dataChangedImpl(packageName);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTransportRegistered(String transportName, String transportDirName) {
        long timeMs = SystemClock.elapsedRealtime() - this.mRegisterTransportsRequestedTime;
        Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Transport " + transportName + " registered " + timeMs + "ms after first request (delay = 3000ms)"));
        File stateDir = new File(this.mBaseStateDir, transportDirName);
        stateDir.mkdirs();
        File initSentinel = new File(stateDir, INIT_SENTINEL_FILE_NAME);
        if (initSentinel.exists()) {
            synchronized (this.mQueueLock) {
                this.mPendingInits.add(transportName);
                this.mAlarmManager.set(0, System.currentTimeMillis() + 60000, this.mRunInitIntent);
            }
        }
    }

    /* JADX INFO: renamed from: com.android.server.backup.UserBackupManagerService$2, reason: invalid class name */
    class AnonymousClass2 extends BroadcastReceiver {
        AnonymousClass2() {
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0169 */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onReceive(android.content.Context r18, android.content.Intent r19) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 411
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.UserBackupManagerService.AnonymousClass2.onReceive(android.content.Context, android.content.Intent):void");
        }

        public /* synthetic */ void lambda$onReceive$0$UserBackupManagerService$2(String packageName, String[] components) {
            UserBackupManagerService.this.mTransportManager.onPackageChanged(packageName, components);
        }

        public /* synthetic */ void lambda$onReceive$1$UserBackupManagerService$2(String packageName) {
            UserBackupManagerService.this.mTransportManager.onPackageAdded(packageName);
        }

        public /* synthetic */ void lambda$onReceive$2$UserBackupManagerService$2(String packageName) {
            UserBackupManagerService.this.mTransportManager.onPackageRemoved(packageName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPackageParticipantsLocked(String[] packageNames) {
        List<PackageInfo> targetApps = allAgentPackages();
        if (packageNames != null) {
            for (String packageName : packageNames) {
                addPackageParticipantsLockedInner(packageName, targetApps);
            }
            return;
        }
        addPackageParticipantsLockedInner(null, targetApps);
    }

    private void addPackageParticipantsLockedInner(String packageName, List<PackageInfo> targetPkgs) {
        for (PackageInfo pkg : targetPkgs) {
            if (packageName == null || pkg.packageName.equals(packageName)) {
                int uid = pkg.applicationInfo.uid;
                HashSet<String> set = this.mBackupParticipants.get(uid);
                if (set == null) {
                    set = new HashSet<>();
                    this.mBackupParticipants.put(uid, set);
                }
                set.add(pkg.packageName);
                Message msg = this.mBackupHandler.obtainMessage(16, pkg.packageName);
                this.mBackupHandler.sendMessage(msg);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removePackageParticipantsLocked(String[] packageNames, int oldUid) {
        if (packageNames == null) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "removePackageParticipants with null list"));
            return;
        }
        for (String pkg : packageNames) {
            HashSet<String> set = this.mBackupParticipants.get(oldUid);
            if (set != null && set.contains(pkg)) {
                removePackageFromSetLocked(set, pkg);
                if (set.isEmpty()) {
                    this.mBackupParticipants.remove(oldUid);
                }
            }
        }
    }

    private void removePackageFromSetLocked(HashSet<String> set, String packageName) {
        if (set.contains(packageName)) {
            set.remove(packageName);
            this.mPendingBackups.remove(packageName);
        }
    }

    private List<PackageInfo> allAgentPackages() {
        List<PackageInfo> packages = this.mPackageManager.getInstalledPackagesAsUser(AudioFormat.OPUS, this.mUserId);
        int numPackages = packages.size();
        for (int a = numPackages - 1; a >= 0; a--) {
            PackageInfo pkg = packages.get(a);
            try {
                ApplicationInfo app = pkg.applicationInfo;
                if ((app.flags & 32768) == 0 || app.backupAgentName == null || (app.flags & 67108864) != 0) {
                    packages.remove(a);
                } else {
                    ApplicationInfo app2 = this.mPackageManager.getApplicationInfoAsUser(pkg.packageName, 1024, this.mUserId);
                    pkg.applicationInfo.sharedLibraryFiles = app2.sharedLibraryFiles;
                    pkg.applicationInfo.sharedLibraryInfos = app2.sharedLibraryInfos;
                }
            } catch (PackageManager.NameNotFoundException e) {
                packages.remove(a);
            }
        }
        return packages;
    }

    public void logBackupComplete(String packageName) {
        if (packageName.equals(PACKAGE_MANAGER_SENTINEL)) {
            return;
        }
        for (String receiver : this.mConstants.getBackupFinishedNotificationReceivers()) {
            Intent notification = new Intent();
            notification.setAction(BACKUP_FINISHED_ACTION);
            notification.setPackage(receiver);
            notification.addFlags(268435488);
            notification.putExtra(BACKUP_FINISHED_PACKAGE_EXTRA, packageName);
            this.mContext.sendBroadcastAsUser(notification, UserHandle.of(this.mUserId));
        }
        this.mProcessedPackagesJournal.addPackage(packageName);
    }

    public void writeRestoreTokens() {
        try {
            RandomAccessFile af = new RandomAccessFile(this.mTokenFile, "rwd");
            try {
                af.writeInt(1);
                af.writeLong(this.mAncestralToken);
                af.writeLong(this.mCurrentToken);
                if (this.mAncestralPackages == null) {
                    af.writeInt(-1);
                } else {
                    af.writeInt(this.mAncestralPackages.size());
                    Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Ancestral packages:  " + this.mAncestralPackages.size()));
                    for (String pkgName : this.mAncestralPackages) {
                        af.writeUTF(pkgName);
                    }
                }
                af.close();
            } catch (Throwable th) {
                try {
                    af.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to write token file:"), e);
        }
    }

    public IBackupAgent bindToAgentSynchronous(ApplicationInfo app, int mode) {
        IBackupAgent agent = null;
        synchronized (this.mAgentConnectLock) {
            this.mConnecting = true;
            this.mConnectedAgent = null;
            try {
                if (this.mActivityManager.bindBackupAgent(app.packageName, mode, this.mUserId)) {
                    Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "awaiting agent for " + app));
                    long timeoutMark = System.currentTimeMillis() + 10000;
                    while (this.mConnecting && this.mConnectedAgent == null && System.currentTimeMillis() < timeoutMark) {
                        try {
                            this.mAgentConnectLock.wait(5000L);
                        } catch (InterruptedException e) {
                            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Interrupted: " + e));
                            this.mConnecting = false;
                            this.mConnectedAgent = null;
                        }
                    }
                    if (this.mConnecting) {
                        Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Timeout waiting for agent " + app));
                        this.mConnectedAgent = null;
                    }
                    Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "got agent " + this.mConnectedAgent));
                    agent = this.mConnectedAgent;
                }
            } catch (RemoteException e2) {
            }
        }
        if (agent == null) {
            this.mActivityManagerInternal.clearPendingBackup(this.mUserId);
        }
        return agent;
    }

    public void unbindAgent(ApplicationInfo app) {
        try {
            this.mActivityManager.unbindBackupAgent(app);
        } catch (RemoteException e) {
        }
    }

    public void clearApplicationDataAfterRestoreFailure(String packageName) {
        clearApplicationDataSynchronous(packageName, true, false);
    }

    public void clearApplicationDataBeforeRestore(String packageName) {
        clearApplicationDataSynchronous(packageName, false, true);
    }

    private void clearApplicationDataSynchronous(String packageName, boolean checkFlagAllowClearUserDataOnFailedRestore, boolean keepSystemState) {
        boolean shouldClearData;
        try {
            ApplicationInfo applicationInfo = this.mPackageManager.getPackageInfoAsUser(packageName, 0, this.mUserId).applicationInfo;
            if (checkFlagAllowClearUserDataOnFailedRestore && applicationInfo.targetSdkVersion >= 29) {
                shouldClearData = (applicationInfo.privateFlags & 67108864) != 0;
            } else {
                shouldClearData = (applicationInfo.flags & 64) != 0;
            }
            if (!shouldClearData) {
                return;
            }
            ClearDataObserver observer = new ClearDataObserver(this);
            synchronized (this.mClearDataLock) {
                this.mClearingData = true;
                try {
                    this.mActivityManager.clearApplicationUserData(packageName, keepSystemState, observer, this.mUserId);
                } catch (RemoteException e) {
                }
                long timeoutMark = System.currentTimeMillis() + 30000;
                while (this.mClearingData && System.currentTimeMillis() < timeoutMark) {
                    try {
                        this.mClearDataLock.wait(5000L);
                    } catch (InterruptedException e2) {
                        this.mClearingData = false;
                        Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Interrupted while waiting for " + packageName + " data to be cleared"), e2);
                    }
                }
                if (this.mClearingData) {
                    Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Clearing app data for " + packageName + " timed out"));
                }
            }
        } catch (PackageManager.NameNotFoundException e3) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Tried to clear data for " + packageName + " but not found"));
        }
    }

    public long getAvailableRestoreToken(String packageName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "getAvailableRestoreToken");
        long token = this.mAncestralToken;
        synchronized (this.mQueueLock) {
            if (this.mCurrentToken != 0 && this.mProcessedPackagesJournal.hasBeenProcessed(packageName)) {
                token = this.mCurrentToken;
            }
        }
        return token;
    }

    public int requestBackup(String[] packages, IBackupObserver observer, int flags) {
        return requestBackup(packages, observer, null, flags);
    }

    public int requestBackup(String[] packages, IBackupObserver observer, IBackupManagerMonitor monitor, int flags) {
        int logTag;
        this.mContext.enforceCallingPermission("android.permission.BACKUP", "requestBackup");
        if (packages == null || packages.length < 1) {
            Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "No packages named for backup request"));
            BackupObserverUtils.sendBackupFinished(observer, JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE);
            BackupManagerMonitorUtils.monitorEvent(monitor, 49, null, 1, null);
            throw new IllegalArgumentException("No packages are provided for backup");
        }
        if (!this.mEnabled || !this.mSetupComplete) {
            Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Backup requested but enabled=" + this.mEnabled + " setupComplete=" + this.mSetupComplete));
            BackupObserverUtils.sendBackupFinished(observer, -2001);
            if (this.mSetupComplete) {
                logTag = 13;
            } else {
                logTag = 14;
            }
            BackupManagerMonitorUtils.monitorEvent(monitor, logTag, null, 3, null);
            return -2001;
        }
        try {
            String transportDirName = this.mTransportManager.getTransportDirName(this.mTransportManager.getCurrentTransportName());
            final TransportClient transportClient = this.mTransportManager.getCurrentTransportClientOrThrow("BMS.requestBackup()");
            OnTaskFinishedListener listener = new OnTaskFinishedListener() { // from class: com.android.server.backup.-$$Lambda$UserBackupManagerService$sAYsrY5C5zAl7EgKgwo188kx6JE
                @Override // com.android.server.backup.internal.OnTaskFinishedListener
                public final void onFinished(String str) {
                    this.f$0.lambda$requestBackup$1$UserBackupManagerService(transportClient, str);
                }
            };
            ArrayList<String> fullBackupList = new ArrayList<>();
            ArrayList<String> kvBackupList = new ArrayList<>();
            for (String packageName : packages) {
                if (!PACKAGE_MANAGER_SENTINEL.equals(packageName)) {
                    try {
                        PackageInfo packageInfo = this.mPackageManager.getPackageInfoAsUser(packageName, AudioFormat.OPUS, this.mUserId);
                        if (!AppBackupUtils.appIsEligibleForBackup(packageInfo.applicationInfo, this.mUserId)) {
                            BackupObserverUtils.sendBackupOnPackageResult(observer, packageName, -2001);
                        } else if (AppBackupUtils.appGetsFullBackup(packageInfo)) {
                            fullBackupList.add(packageInfo.packageName);
                        } else {
                            kvBackupList.add(packageInfo.packageName);
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        BackupObserverUtils.sendBackupOnPackageResult(observer, packageName, -2002);
                    }
                } else {
                    kvBackupList.add(packageName);
                }
            }
            EventLog.writeEvent(EventLogTags.BACKUP_REQUESTED, Integer.valueOf(packages.length), Integer.valueOf(kvBackupList.size()), Integer.valueOf(fullBackupList.size()));
            boolean nonIncrementalBackup = (flags & 1) != 0;
            Message msg = this.mBackupHandler.obtainMessage(15);
            msg.obj = new BackupParams(transportClient, transportDirName, kvBackupList, fullBackupList, observer, monitor, listener, true, nonIncrementalBackup);
            this.mBackupHandler.sendMessage(msg);
            return 0;
        } catch (TransportNotRegisteredException e2) {
            BackupObserverUtils.sendBackupFinished(observer, JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE);
            BackupManagerMonitorUtils.monitorEvent(monitor, 50, null, 1, null);
            return JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
        }
    }

    public /* synthetic */ void lambda$requestBackup$1$UserBackupManagerService(TransportClient transportClient, String caller) {
        this.mTransportManager.disposeOfTransportClient(transportClient, caller);
    }

    public void cancelBackups() {
        this.mContext.enforceCallingPermission("android.permission.BACKUP", "cancelBackups");
        long oldToken = Binder.clearCallingIdentity();
        try {
            List<Integer> operationsToCancel = new ArrayList<>();
            synchronized (this.mCurrentOpLock) {
                for (int i = 0; i < this.mCurrentOperations.size(); i++) {
                    Operation op = this.mCurrentOperations.valueAt(i);
                    int token = this.mCurrentOperations.keyAt(i);
                    if (op.type == 2) {
                        operationsToCancel.add(Integer.valueOf(token));
                    }
                }
            }
            for (Integer token2 : operationsToCancel) {
                handleCancel(token2.intValue(), true);
            }
            KeyValueBackupJob.schedule(this.mUserId, this.mContext, AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT, this.mConstants);
            FullBackupJob.schedule(this.mUserId, this.mContext, AppStandbyController.SettingsObserver.DEFAULT_SYSTEM_UPDATE_TIMEOUT, this.mConstants);
            Binder.restoreCallingIdentity(oldToken);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(oldToken);
            throw th;
        }
    }

    public void prepareOperationTimeout(int token, long interval, BackupRestoreTask callback, int operationType) {
        if (operationType != 0 && operationType != 1) {
            Slog.wtf(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "prepareOperationTimeout() doesn't support operation " + Integer.toHexString(token) + " of type " + operationType));
            return;
        }
        synchronized (this.mCurrentOpLock) {
            this.mCurrentOperations.put(token, new Operation(0, callback, operationType));
            Message msg = this.mBackupHandler.obtainMessage(getMessageIdForOperationType(operationType), token, 0, callback);
            this.mBackupHandler.sendMessageDelayed(msg, interval);
        }
    }

    private int getMessageIdForOperationType(int operationType) {
        if (operationType == 0) {
            return 17;
        }
        if (operationType == 1) {
            return 18;
        }
        Slog.wtf(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "getMessageIdForOperationType called on invalid operation type: " + operationType));
        return -1;
    }

    public void putOperation(int token, Operation operation) {
        synchronized (this.mCurrentOpLock) {
            this.mCurrentOperations.put(token, operation);
        }
    }

    public void removeOperation(int token) {
        synchronized (this.mCurrentOpLock) {
            if (this.mCurrentOperations.get(token) == null) {
                Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Duplicate remove for operation. token=" + Integer.toHexString(token)));
            }
            this.mCurrentOperations.remove(token);
        }
    }

    public boolean waitUntilOperationComplete(int token) {
        Operation op;
        int finalState = 0;
        synchronized (this.mCurrentOpLock) {
            while (true) {
                op = this.mCurrentOperations.get(token);
                if (op == null) {
                    break;
                }
                if (op.state == 0) {
                    try {
                        this.mCurrentOpLock.wait();
                    } catch (InterruptedException e) {
                    }
                } else {
                    finalState = op.state;
                    break;
                }
            }
        }
        removeOperation(token);
        if (op != null) {
            this.mBackupHandler.removeMessages(getMessageIdForOperationType(op.type));
        }
        return finalState == 1;
    }

    public void handleCancel(int token, boolean cancelAll) {
        Operation op;
        synchronized (this.mCurrentOpLock) {
            op = this.mCurrentOperations.get(token);
            int state = op != null ? op.state : -1;
            if (state == 1) {
                Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Operation already got an ack.Should have been removed from mCurrentOperations."));
                op = null;
                this.mCurrentOperations.delete(token);
            } else if (state == 0) {
                Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Cancel: token=" + Integer.toHexString(token)));
                op.state = -1;
                if (op.type == 0 || op.type == 1) {
                    this.mBackupHandler.removeMessages(getMessageIdForOperationType(op.type));
                }
            }
            this.mCurrentOpLock.notifyAll();
        }
        if (op != null && op.callback != null) {
            op.callback.handleCancel(cancelAll);
        }
    }

    public boolean isBackupOperationInProgress() {
        synchronized (this.mCurrentOpLock) {
            for (int i = 0; i < this.mCurrentOperations.size(); i++) {
                Operation op = this.mCurrentOperations.valueAt(i);
                if (op.type == 2 && op.state == 0) {
                    return true;
                }
            }
            return false;
        }
    }

    public void tearDownAgentAndKill(ApplicationInfo app) {
        if (app == null) {
            return;
        }
        try {
            this.mActivityManager.unbindBackupAgent(app);
            if (!UserHandle.isCore(app.uid) && !app.packageName.equals("com.android.backupconfirm")) {
                this.mActivityManager.killApplicationProcess(app.processName, app.uid);
            }
        } catch (RemoteException e) {
            Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Lost app trying to shut down"));
        }
    }

    public boolean deviceIsEncrypted() {
        try {
            return (this.mStorageManager.getEncryptionState() == 1 || this.mStorageManager.getPasswordType() == 1) ? false : true;
        } catch (Exception e) {
            Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to communicate with storagemanager service: " + e.getMessage()));
            return true;
        }
    }

    public void scheduleNextFullBackupJob(long transportMinLatency) throws Throwable {
        synchronized (this.mQueueLock) {
            try {
                try {
                    if (this.mFullBackupQueue.size() > 0) {
                        long upcomingLastBackup = this.mFullBackupQueue.get(0).lastBackup;
                        long timeSinceLast = System.currentTimeMillis() - upcomingLastBackup;
                        long interval = this.mConstants.getFullBackupIntervalMilliseconds();
                        long appLatency = timeSinceLast < interval ? interval - timeSinceLast : 0L;
                        long latency = Math.max(transportMinLatency, appLatency);
                        FullBackupJob.schedule(this.mUserId, this.mContext, latency, this.mConstants);
                    } else {
                        Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Full backup queue empty; not scheduling"));
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dequeueFullBackupLocked(String packageName) {
        int numPackages = this.mFullBackupQueue.size();
        for (int i = numPackages - 1; i >= 0; i--) {
            FullBackupEntry e = this.mFullBackupQueue.get(i);
            if (packageName.equals(e.packageName)) {
                this.mFullBackupQueue.remove(i);
            }
        }
    }

    public void enqueueFullBackup(String packageName, long lastBackedUp) {
        FullBackupEntry newEntry = new FullBackupEntry(packageName, lastBackedUp);
        synchronized (this.mQueueLock) {
            dequeueFullBackupLocked(packageName);
            int which = -1;
            if (lastBackedUp > 0) {
                which = this.mFullBackupQueue.size() - 1;
                while (which >= 0) {
                    FullBackupEntry entry = this.mFullBackupQueue.get(which);
                    if (entry.lastBackup > lastBackedUp) {
                        which--;
                    } else {
                        this.mFullBackupQueue.add(which + 1, newEntry);
                        break;
                    }
                }
            }
            if (which < 0) {
                this.mFullBackupQueue.add(0, newEntry);
            }
        }
        writeFullBackupScheduleAsync();
    }

    private boolean fullBackupAllowable(String transportName) {
        if (!this.mTransportManager.isTransportRegistered(transportName)) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Transport not registered; full data backup not performed"));
            return false;
        }
        try {
            String transportDirName = this.mTransportManager.getTransportDirName(transportName);
            File stateDir = new File(this.mBaseStateDir, transportDirName);
            File pmState = new File(stateDir, PACKAGE_MANAGER_SENTINEL);
            if (pmState.length() <= 0) {
                Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Full backup requested but dataset not yet initialized"));
                return false;
            }
            return true;
        } catch (Exception e) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to get transport name: " + e.getMessage()));
            return false;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x02cb */
    /* JADX WARN: Code duplicated, block: B:93:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:94:0x01c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean beginFullBackup(com.android.server.backup.FullBackupJob r29) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instruction units count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.UserBackupManagerService.beginFullBackup(com.android.server.backup.FullBackupJob):boolean");
    }

    public void endFullBackup() {
        Runnable endFullBackupRunnable = new Runnable() { // from class: com.android.server.backup.UserBackupManagerService.3
            @Override // java.lang.Runnable
            public void run() {
                PerformFullTransportBackupTask pftbt = null;
                synchronized (UserBackupManagerService.this.mQueueLock) {
                    if (UserBackupManagerService.this.mRunningFullBackupTask != null) {
                        pftbt = UserBackupManagerService.this.mRunningFullBackupTask;
                    }
                }
                if (pftbt != null) {
                    Slog.i(BackupManagerService.TAG, UserBackupManagerService.addUserIdToLogMessage(UserBackupManagerService.this.mUserId, "Telling running backup to stop"));
                    pftbt.handleCancel(true);
                }
            }
        };
        new Thread(endFullBackupRunnable, "end-full-backup").start();
    }

    public void restoreWidgetData(String packageName, byte[] widgetData) {
        AppWidgetBackupBridge.restoreWidgetState(packageName, widgetData, this.mUserId);
    }

    public void dataChangedImpl(String packageName) throws Throwable {
        HashSet<String> targets = dataChangedTargets(packageName);
        dataChangedImpl(packageName, targets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dataChangedImpl(String packageName, HashSet<String> targets) throws Throwable {
        if (targets == null) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "dataChanged but no participant pkg='" + packageName + "' uid=" + Binder.getCallingUid()));
            return;
        }
        synchronized (this.mQueueLock) {
            if (targets.contains(packageName)) {
                BackupRequest req = new BackupRequest(packageName);
                if (this.mPendingBackups.put(packageName, req) == null) {
                    writeToJournalLocked(packageName);
                }
            }
        }
        KeyValueBackupJob.schedule(this.mUserId, this.mContext, this.mConstants);
    }

    private HashSet<String> dataChangedTargets(String packageName) {
        HashSet<String> hashSetUnion;
        HashSet<String> hashSet;
        if (this.mContext.checkPermission("android.permission.BACKUP", Binder.getCallingPid(), Binder.getCallingUid()) == -1) {
            synchronized (this.mBackupParticipants) {
                hashSet = this.mBackupParticipants.get(Binder.getCallingUid());
            }
            return hashSet;
        }
        if (PACKAGE_MANAGER_SENTINEL.equals(packageName)) {
            return Sets.newHashSet(new String[]{PACKAGE_MANAGER_SENTINEL});
        }
        synchronized (this.mBackupParticipants) {
            hashSetUnion = SparseArrayUtils.union(this.mBackupParticipants);
        }
        return hashSetUnion;
    }

    private void writeToJournalLocked(String str) {
        try {
            if (this.mJournal == null) {
                this.mJournal = DataChangedJournal.newJournal(this.mJournalDir);
            }
            this.mJournal.addPackage(str);
        } catch (IOException e) {
            Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Can't write " + str + " to backup journal"), e);
            this.mJournal = null;
        }
    }

    public void dataChanged(final String packageName) {
        final HashSet<String> targets = dataChangedTargets(packageName);
        if (targets == null) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "dataChanged but no participant pkg='" + packageName + "' uid=" + Binder.getCallingUid()));
            return;
        }
        this.mBackupHandler.post(new Runnable() { // from class: com.android.server.backup.UserBackupManagerService.4
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                UserBackupManagerService.this.dataChangedImpl(packageName, targets);
            }
        });
    }

    public void initializeTransports(String[] transportNames, IBackupObserver observer) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "initializeTransport");
        Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "initializeTransport(): " + Arrays.asList(transportNames)));
        long oldId = Binder.clearCallingIdentity();
        try {
            this.mWakelock.acquire();
            OnTaskFinishedListener listener = new OnTaskFinishedListener() { // from class: com.android.server.backup.-$$Lambda$UserBackupManagerService$pLslHGi1wuuGrjS32QbMlDjlGbM
                @Override // com.android.server.backup.internal.OnTaskFinishedListener
                public final void onFinished(String str) {
                    this.f$0.lambda$initializeTransports$2$UserBackupManagerService(str);
                }
            };
            this.mBackupHandler.post(new PerformInitializeTask(this, transportNames, observer, listener));
        } finally {
            Binder.restoreCallingIdentity(oldId);
        }
    }

    public /* synthetic */ void lambda$initializeTransports$2$UserBackupManagerService(String caller) {
        this.mWakelock.release();
    }

    public void setAncestralSerialNumber(long ancestralSerialNumber) {
        this.mContext.enforceCallingPermission("android.permission.BACKUP", "setAncestralSerialNumber");
        Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Setting ancestral work profile id to " + ancestralSerialNumber));
        try {
            RandomAccessFile af = getAncestralSerialNumberFile();
            try {
                af.writeLong(ancestralSerialNumber);
                if (af != null) {
                    af.close();
                }
            } catch (Throwable th) {
                if (af != null) {
                    try {
                        af.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to write to work profile serial mapping file:"), e);
        }
    }

    public long getAncestralSerialNumber() {
        try {
            RandomAccessFile af = getAncestralSerialNumberFile();
            try {
                long j = af.readLong();
                if (af != null) {
                    af.close();
                }
                return j;
            } catch (Throwable th) {
                if (af != null) {
                    try {
                        af.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to write to work profile serial number file:"), e);
            return -1L;
        }
    }

    private RandomAccessFile getAncestralSerialNumberFile() throws FileNotFoundException {
        if (this.mAncestralSerialNumberFile == null) {
            File file = new File(UserBackupManagerFiles.getBaseStateDir(getUserId()), SERIAL_ID_FILE);
            this.mAncestralSerialNumberFile = file;
            FileUtils.createNewFile(file);
        }
        return new RandomAccessFile(this.mAncestralSerialNumberFile, "rwd");
    }

    void setAncestralSerialNumberFile(File ancestralSerialNumberFile) {
        this.mAncestralSerialNumberFile = ancestralSerialNumberFile;
    }

    public void clearBackupData(String transportName, String packageName) {
        HashSet<String> apps;
        Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "clearBackupData() of " + packageName + " on " + transportName));
        try {
            PackageInfo info = this.mPackageManager.getPackageInfoAsUser(packageName, AudioFormat.OPUS, this.mUserId);
            if (this.mContext.checkPermission("android.permission.BACKUP", Binder.getCallingPid(), Binder.getCallingUid()) == -1) {
                apps = this.mBackupParticipants.get(Binder.getCallingUid());
            } else {
                apps = this.mProcessedPackagesJournal.getPackagesCopy();
            }
            if (apps.contains(packageName)) {
                this.mBackupHandler.removeMessages(12);
                synchronized (this.mQueueLock) {
                    final TransportClient transportClient = this.mTransportManager.getTransportClient(transportName, "BMS.clearBackupData()");
                    if (transportClient == null) {
                        Message msg = this.mBackupHandler.obtainMessage(12, new ClearRetryParams(transportName, packageName));
                        this.mBackupHandler.sendMessageDelayed(msg, AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT);
                        return;
                    }
                    long oldId = Binder.clearCallingIdentity();
                    OnTaskFinishedListener listener = new OnTaskFinishedListener() { // from class: com.android.server.backup.-$$Lambda$UserBackupManagerService$TD-nE027xyQbZ7zQ3L8rJfQM2V4
                        @Override // com.android.server.backup.internal.OnTaskFinishedListener
                        public final void onFinished(String str) {
                            this.f$0.lambda$clearBackupData$3$UserBackupManagerService(transportClient, str);
                        }
                    };
                    this.mWakelock.acquire();
                    Message msg2 = this.mBackupHandler.obtainMessage(4, new ClearParams(transportClient, info, listener));
                    this.mBackupHandler.sendMessage(msg2);
                    Binder.restoreCallingIdentity(oldId);
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "No such package '" + packageName + "' - not clearing backup data"));
        }
    }

    public /* synthetic */ void lambda$clearBackupData$3$UserBackupManagerService(TransportClient transportClient, String caller) {
        this.mTransportManager.disposeOfTransportClient(transportClient, caller);
    }

    public void backupNow() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "backupNow");
        long oldId = Binder.clearCallingIdentity();
        try {
            PowerSaveState result = this.mPowerManager.getPowerSaveState(5);
            if (!result.batterySaverEnabled) {
                Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Scheduling immediate backup pass"));
                synchronized (getQueueLock()) {
                    if (getPendingInits().size() > 0) {
                        try {
                            getAlarmManager().cancel(this.mRunInitIntent);
                            this.mRunInitIntent.send();
                        } catch (PendingIntent.CanceledException e) {
                            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Run init intent cancelled"));
                        }
                        Binder.restoreCallingIdentity(oldId);
                        return;
                    }
                    if (isEnabled() && isSetupComplete()) {
                        Message message = this.mBackupHandler.obtainMessage(1);
                        this.mBackupHandler.sendMessage(message);
                        KeyValueBackupJob.cancel(this.mUserId, this.mContext);
                    }
                    Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Backup pass but enabled=" + isEnabled() + " setupComplete=" + isSetupComplete()));
                    Binder.restoreCallingIdentity(oldId);
                    return;
                }
            }
            Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Not running backup while in battery save mode"));
            KeyValueBackupJob.schedule(this.mUserId, this.mContext, this.mConstants);
            Binder.restoreCallingIdentity(oldId);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(oldId);
            throw th;
        }
    }

    public void adbBackup(ParcelFileDescriptor fd, boolean includeApks, boolean includeObbs, boolean includeShared, boolean doWidgets, boolean doAllApps, boolean includeSystem, boolean compress, boolean doKeyValue, String[] pkgList) {
        this.mContext.enforceCallingPermission("android.permission.BACKUP", "adbBackup");
        int callingUserHandle = UserHandle.getCallingUserId();
        if (callingUserHandle != 0) {
            throw new IllegalStateException("Backup supported only for the device owner");
        }
        if (!doAllApps && !includeShared && (pkgList == null || pkgList.length == 0)) {
            throw new IllegalArgumentException("Backup requested but neither shared nor any apps named");
        }
        long oldId = Binder.clearCallingIdentity();
        try {
            if (!this.mSetupComplete) {
                Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Backup not supported before setup"));
                try {
                    fd.close();
                } catch (IOException e) {
                    Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "IO error closing output for adb backup: " + e.getMessage()));
                }
                Binder.restoreCallingIdentity(oldId);
                Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Adb backup processing complete."));
                return;
            }
            Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Requesting backup: apks=" + includeApks + " obb=" + includeObbs + " shared=" + includeShared + " all=" + doAllApps + " system=" + includeSystem + " includekeyvalue=" + doKeyValue + " pkgs=" + pkgList));
            Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Beginning adb backup..."));
            AdbBackupParams params = new AdbBackupParams(fd, includeApks, includeObbs, includeShared, doWidgets, doAllApps, includeSystem, compress, doKeyValue, pkgList);
            int token = generateRandomIntegerToken();
            synchronized (this.mAdbBackupRestoreConfirmations) {
                this.mAdbBackupRestoreConfirmations.put(token, params);
            }
            Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Starting backup confirmation UI, token=" + token));
            if (!startConfirmationUi(token, "fullback")) {
                Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to launch backup confirmation UI"));
                this.mAdbBackupRestoreConfirmations.delete(token);
                try {
                    fd.close();
                } catch (IOException e2) {
                    Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "IO error closing output for adb backup: " + e2.getMessage()));
                }
                Binder.restoreCallingIdentity(oldId);
                Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Adb backup processing complete."));
                return;
            }
            this.mPowerManager.userActivity(SystemClock.uptimeMillis(), 0, 0);
            startConfirmationTimeout(token, params);
            Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Waiting for backup completion..."));
            waitForCompletion(params);
            try {
                fd.close();
            } catch (IOException e3) {
                Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "IO error closing output for adb backup: " + e3.getMessage()));
            }
            Binder.restoreCallingIdentity(oldId);
            Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Adb backup processing complete."));
        } catch (Throwable th) {
            try {
                fd.close();
            } catch (IOException e4) {
                Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "IO error closing output for adb backup: " + e4.getMessage()));
            }
            Binder.restoreCallingIdentity(oldId);
            Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Adb backup processing complete."));
            throw th;
        }
    }

    public void fullTransportBackup(String[] pkgNames) {
        this.mContext.enforceCallingPermission("android.permission.BACKUP", "fullTransportBackup");
        int callingUserHandle = UserHandle.getCallingUserId();
        if (callingUserHandle != 0) {
            throw new IllegalStateException("Restore supported only for the device owner");
        }
        String transportName = this.mTransportManager.getCurrentTransportName();
        if (!fullBackupAllowable(transportName)) {
            Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Full backup not currently possible -- key/value backup not yet run?"));
        } else {
            Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "fullTransportBackup()"));
            long oldId = Binder.clearCallingIdentity();
            try {
                CountDownLatch latch = new CountDownLatch(1);
                Runnable task = PerformFullTransportBackupTask.newWithCurrentTransport(this, null, pkgNames, false, null, latch, null, null, false, "BMS.fullTransportBackup()");
                this.mWakelock.acquire();
                new Thread(task, "full-transport-master").start();
                while (true) {
                    try {
                        latch.await();
                        break;
                    } catch (InterruptedException e) {
                    }
                }
                long now = System.currentTimeMillis();
                for (String pkg : pkgNames) {
                    enqueueFullBackup(pkg, now);
                }
                Binder.restoreCallingIdentity(oldId);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(oldId);
                throw th;
            }
        }
        Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Done with full transport backup."));
    }

    public void adbRestore(ParcelFileDescriptor fd) {
        this.mContext.enforceCallingPermission("android.permission.BACKUP", "adbRestore");
        int callingUserHandle = UserHandle.getCallingUserId();
        if (callingUserHandle != 0) {
            throw new IllegalStateException("Restore supported only for the device owner");
        }
        long oldId = Binder.clearCallingIdentity();
        try {
            if (!this.mSetupComplete) {
                Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Full restore not permitted before setup"));
                try {
                    fd.close();
                } catch (IOException e) {
                    Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Error trying to close fd after adb restore: " + e));
                }
                Binder.restoreCallingIdentity(oldId);
                Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "adb restore processing complete."));
                return;
            }
            Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Beginning restore..."));
            AdbRestoreParams params = new AdbRestoreParams(fd);
            int token = generateRandomIntegerToken();
            synchronized (this.mAdbBackupRestoreConfirmations) {
                this.mAdbBackupRestoreConfirmations.put(token, params);
            }
            Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Starting restore confirmation UI, token=" + token));
            if (!startConfirmationUi(token, "fullrest")) {
                Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to launch restore confirmation"));
                this.mAdbBackupRestoreConfirmations.delete(token);
                try {
                    fd.close();
                } catch (IOException e2) {
                    Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Error trying to close fd after adb restore: " + e2));
                }
                Binder.restoreCallingIdentity(oldId);
                Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "adb restore processing complete."));
                return;
            }
            this.mPowerManager.userActivity(SystemClock.uptimeMillis(), 0, 0);
            startConfirmationTimeout(token, params);
            Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Waiting for restore completion..."));
            waitForCompletion(params);
            try {
                fd.close();
            } catch (IOException e3) {
                Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Error trying to close fd after adb restore: " + e3));
            }
            Binder.restoreCallingIdentity(oldId);
            Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "adb restore processing complete."));
        } catch (Throwable th) {
            try {
                fd.close();
            } catch (IOException e4) {
                Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Error trying to close fd after adb restore: " + e4));
            }
            Binder.restoreCallingIdentity(oldId);
            Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "adb restore processing complete."));
            throw th;
        }
    }

    public void excludeKeysFromRestore(String packageName, List<String> keys) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "excludeKeysFromRestore");
        this.mBackupPreferences.addExcludedKeys(packageName, keys);
    }

    private boolean startConfirmationUi(int token, String action) {
        try {
            Intent confIntent = new Intent(action);
            confIntent.setClassName("com.android.backupconfirm", "com.android.backupconfirm.BackupRestoreConfirmation");
            confIntent.putExtra("conftoken", token);
            confIntent.addFlags(AudioFormat.APTX);
            this.mContext.startActivityAsUser(confIntent, UserHandle.SYSTEM);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    private void startConfirmationTimeout(int token, AdbParams params) {
        Message msg = this.mBackupHandler.obtainMessage(9, token, 0, params);
        this.mBackupHandler.sendMessageDelayed(msg, 60000L);
    }

    private void waitForCompletion(AdbParams params) {
        synchronized (params.latch) {
            while (!params.latch.get()) {
                try {
                    params.latch.wait();
                } catch (InterruptedException e) {
                }
            }
        }
    }

    public void signalAdbBackupRestoreCompletion(AdbParams params) {
        synchronized (params.latch) {
            params.latch.set(true);
            params.latch.notifyAll();
        }
    }

    public void acknowledgeAdbBackupOrRestore(int token, boolean allow, String curPassword, String encPpassword, IFullBackupRestoreObserver observer) {
        int verb;
        Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "acknowledgeAdbBackupOrRestore : token=" + token + " allow=" + allow));
        this.mContext.enforceCallingPermission("android.permission.BACKUP", "acknowledgeAdbBackupOrRestore");
        long oldId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mAdbBackupRestoreConfirmations) {
                AdbParams params = this.mAdbBackupRestoreConfirmations.get(token);
                if (params != null) {
                    this.mBackupHandler.removeMessages(9, params);
                    this.mAdbBackupRestoreConfirmations.delete(token);
                    if (allow) {
                        if (params instanceof AdbBackupParams) {
                            verb = 2;
                        } else {
                            verb = 10;
                        }
                        params.observer = observer;
                        params.curPassword = curPassword;
                        params.encryptPassword = encPpassword;
                        this.mWakelock.acquire();
                        Message msg = this.mBackupHandler.obtainMessage(verb, params);
                        this.mBackupHandler.sendMessage(msg);
                    } else {
                        Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "User rejected full backup/restore operation"));
                        signalAdbBackupRestoreCompletion(params);
                    }
                } else {
                    Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Attempted to ack full backup/restore with invalid token"));
                }
            }
            Binder.restoreCallingIdentity(oldId);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(oldId);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x0051 A[Catch: all -> 0x009f, TryCatch #2 {, blocks: (B:11:0x003c, B:13:0x0040, B:24:0x0099, B:15:0x0051, B:17:0x005a, B:19:0x005e, B:20:0x0073, B:22:0x007a, B:23:0x008d), top: B:39:0x003c, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x007a A[Catch: all -> 0x009f, LOOP:0: B:20:0x0073->B:22:0x007a, LOOP_END, TryCatch #2 {, blocks: (B:11:0x003c, B:13:0x0040, B:24:0x0099, B:15:0x0051, B:17:0x005a, B:19:0x005e, B:20:0x0073, B:22:0x007a, B:23:0x008d), top: B:39:0x003c, outer: #1 }] */
    public void setBackupEnabled(boolean enable) {
        final List<String> transportNames;
        final List<String> transportDirNames;
        int i;
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "setBackupEnabled");
        Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Backup enabled => " + enable));
        long oldId = Binder.clearCallingIdentity();
        try {
            boolean wasEnabled = this.mEnabled;
            synchronized (this) {
                UserBackupManagerFilePersistedSettings.writeBackupEnableState(this.mUserId, enable);
                this.mEnabled = enable;
            }
            synchronized (this.mQueueLock) {
                if (!enable || wasEnabled) {
                    if (!enable) {
                        KeyValueBackupJob.cancel(this.mUserId, this.mContext);
                        if (wasEnabled && this.mSetupComplete) {
                            transportNames = new ArrayList<>();
                            transportDirNames = new ArrayList<>();
                            this.mTransportManager.forEachRegisteredTransport(new Consumer() { // from class: com.android.server.backup.-$$Lambda$UserBackupManagerService$C404OP5-rQYG326aUSsvijaNzdg
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    this.f$0.lambda$setBackupEnabled$4$UserBackupManagerService(transportNames, transportDirNames, (String) obj);
                                }
                            });
                            for (i = 0; i < transportNames.size(); i++) {
                                recordInitPending(true, transportNames.get(i), transportDirNames.get(i));
                            }
                            this.mAlarmManager.set(0, System.currentTimeMillis(), this.mRunInitIntent);
                        }
                    }
                } else if (this.mSetupComplete) {
                    KeyValueBackupJob.schedule(this.mUserId, this.mContext, this.mConstants);
                    scheduleNextFullBackupJob(0L);
                } else if (!enable) {
                    KeyValueBackupJob.cancel(this.mUserId, this.mContext);
                    if (wasEnabled) {
                        transportNames = new ArrayList<>();
                        transportDirNames = new ArrayList<>();
                        this.mTransportManager.forEachRegisteredTransport(new Consumer() { // from class: com.android.server.backup.-$$Lambda$UserBackupManagerService$C404OP5-rQYG326aUSsvijaNzdg
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                this.f$0.lambda$setBackupEnabled$4$UserBackupManagerService(transportNames, transportDirNames, (String) obj);
                            }
                        });
                        while (i < transportNames.size()) {
                            recordInitPending(true, transportNames.get(i), transportDirNames.get(i));
                        }
                        this.mAlarmManager.set(0, System.currentTimeMillis(), this.mRunInitIntent);
                    }
                }
                throw th;
            }
            Binder.restoreCallingIdentity(oldId);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(oldId);
            throw th;
        }
    }

    public /* synthetic */ void lambda$setBackupEnabled$4$UserBackupManagerService(List transportNames, List transportDirNames, String name) {
        try {
            String dirName = this.mTransportManager.getTransportDirName(name);
            transportNames.add(name);
            transportDirNames.add(dirName);
        } catch (TransportNotRegisteredException e) {
            Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unexpected unregistered transport"), e);
        }
    }

    public void setAutoRestore(boolean doAutoRestore) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "setAutoRestore");
        Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Auto restore => " + doAutoRestore));
        long oldId = Binder.clearCallingIdentity();
        try {
            synchronized (this) {
                Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "backup_auto_restore", doAutoRestore ? 1 : 0, this.mUserId);
                this.mAutoRestore = doAutoRestore;
            }
            Binder.restoreCallingIdentity(oldId);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(oldId);
            throw th;
        }
    }

    public boolean isBackupEnabled() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "isBackupEnabled");
        return this.mEnabled;
    }

    public String getCurrentTransport() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "getCurrentTransport");
        String currentTransport = this.mTransportManager.getCurrentTransportName();
        return currentTransport;
    }

    public ComponentName getCurrentTransportComponent() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "getCurrentTransportComponent");
        long oldId = Binder.clearCallingIdentity();
        try {
            return this.mTransportManager.getCurrentTransportComponent();
        } catch (TransportNotRegisteredException e) {
            return null;
        } finally {
            Binder.restoreCallingIdentity(oldId);
        }
    }

    public String[] listAllTransports() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "listAllTransports");
        return this.mTransportManager.getRegisteredTransportNames();
    }

    public ComponentName[] listAllTransportComponents() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "listAllTransportComponents");
        return this.mTransportManager.getRegisteredTransportComponents();
    }

    public void updateTransportAttributes(ComponentName transportComponent, String name, Intent configurationIntent, String currentDestinationString, Intent dataManagementIntent, CharSequence dataManagementLabel) {
        updateTransportAttributes(Binder.getCallingUid(), transportComponent, name, configurationIntent, currentDestinationString, dataManagementIntent, dataManagementLabel);
    }

    void updateTransportAttributes(int callingUid, ComponentName transportComponent, String name, Intent configurationIntent, String currentDestinationString, Intent dataManagementIntent, CharSequence dataManagementLabel) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "updateTransportAttributes");
        Objects.requireNonNull(transportComponent, "transportComponent can't be null");
        Objects.requireNonNull(name, "name can't be null");
        Objects.requireNonNull(currentDestinationString, "currentDestinationString can't be null");
        Preconditions.checkArgument((dataManagementIntent == null) == (dataManagementLabel == null), "dataManagementLabel should be null iff dataManagementIntent is null");
        try {
            int transportUid = this.mContext.getPackageManager().getPackageUidAsUser(transportComponent.getPackageName(), 0, this.mUserId);
            if (callingUid != transportUid) {
                try {
                    throw new SecurityException("Only the transport can change its description");
                } catch (PackageManager.NameNotFoundException e) {
                    e = e;
                    throw new SecurityException("Transport package not found", e);
                }
            } else {
                long oldId = Binder.clearCallingIdentity();
                try {
                    this.mTransportManager.updateTransportAttributes(transportComponent, name, configurationIntent, currentDestinationString, dataManagementIntent, dataManagementLabel);
                } finally {
                    Binder.restoreCallingIdentity(oldId);
                }
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e = e2;
        }
    }

    @Deprecated
    public String selectBackupTransport(String transportName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "selectBackupTransport");
        long oldId = Binder.clearCallingIdentity();
        try {
            String previousTransportName = this.mTransportManager.selectTransport(transportName);
            updateStateForTransport(transportName);
            Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "selectBackupTransport(transport = " + transportName + "): previous transport = " + previousTransportName));
            return previousTransportName;
        } finally {
            Binder.restoreCallingIdentity(oldId);
        }
    }

    public void selectBackupTransportAsync(final ComponentName transportComponent, final ISelectBackupTransportCallback listener) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "selectBackupTransportAsync");
        long oldId = Binder.clearCallingIdentity();
        try {
            String transportString = transportComponent.flattenToShortString();
            Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "selectBackupTransportAsync(transport = " + transportString + ")"));
            this.mBackupHandler.post(new Runnable() { // from class: com.android.server.backup.-$$Lambda$UserBackupManagerService$076XriH8-AsUaXKFvRearB4ERls
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$selectBackupTransportAsync$5$UserBackupManagerService(transportComponent, listener);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(oldId);
        }
    }

    public /* synthetic */ void lambda$selectBackupTransportAsync$5$UserBackupManagerService(ComponentName transportComponent, ISelectBackupTransportCallback listener) {
        String transportName = null;
        int result = this.mTransportManager.registerAndSelectTransport(transportComponent);
        if (result == 0) {
            try {
                transportName = this.mTransportManager.getTransportName(transportComponent);
                updateStateForTransport(transportName);
            } catch (TransportNotRegisteredException e) {
                Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Transport got unregistered"));
                result = -1;
            }
        }
        try {
            if (transportName != null) {
                listener.onSuccess(transportName);
            } else {
                listener.onFailure(result);
            }
        } catch (RemoteException e2) {
            Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "ISelectBackupTransportCallback listener not available"));
        }
    }

    public List<PackageInfo> filterUserFacingPackages(List<PackageInfo> packages) {
        if (!shouldSkipUserFacingData()) {
            return packages;
        }
        List<PackageInfo> filteredPackages = new ArrayList<>(packages.size());
        for (PackageInfo packageInfo : packages) {
            if (shouldSkipPackage(packageInfo.packageName)) {
                Slog.i(BackupManagerService.TAG, "Will skip backup/restore for " + packageInfo.packageName);
            } else {
                filteredPackages.add(packageInfo);
            }
        }
        return filteredPackages;
    }

    public boolean shouldSkipUserFacingData() {
        return Settings.Secure.getInt(this.mContext.getContentResolver(), SKIP_USER_FACING_PACKAGES, 0) != 0;
    }

    public boolean shouldSkipPackage(String packageName) {
        return WALLPAPER_PACKAGE.equals(packageName);
    }

    private void updateStateForTransport(String newTransportName) {
        Settings.Secure.putStringForUser(this.mContext.getContentResolver(), "backup_transport", newTransportName, this.mUserId);
        TransportClient transportClient = this.mTransportManager.getTransportClient(newTransportName, "BMS.updateStateForTransport()");
        if (transportClient != null) {
            try {
                IBackupTransport transport = transportClient.connectOrThrow("BMS.updateStateForTransport()");
                this.mCurrentToken = transport.getCurrentRestoreSet();
            } catch (Exception e) {
                this.mCurrentToken = 0L;
                Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Transport " + newTransportName + " not available: current token = 0"));
            }
            this.mTransportManager.disposeOfTransportClient(transportClient, "BMS.updateStateForTransport()");
            return;
        }
        Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Transport " + newTransportName + " not registered: current token = 0"));
        this.mCurrentToken = 0L;
    }

    public Intent getConfigurationIntent(String transportName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "getConfigurationIntent");
        try {
            Intent intent = this.mTransportManager.getTransportConfigurationIntent(transportName);
            return intent;
        } catch (TransportNotRegisteredException e) {
            Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to get configuration intent from transport: " + e.getMessage()));
            return null;
        }
    }

    public String getDestinationString(String transportName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "getDestinationString");
        try {
            String string = this.mTransportManager.getTransportCurrentDestinationString(transportName);
            return string;
        } catch (TransportNotRegisteredException e) {
            Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to get destination string from transport: " + e.getMessage()));
            return null;
        }
    }

    public Intent getDataManagementIntent(String transportName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "getDataManagementIntent");
        try {
            Intent intent = this.mTransportManager.getTransportDataManagementIntent(transportName);
            return intent;
        } catch (TransportNotRegisteredException e) {
            Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to get management intent from transport: " + e.getMessage()));
            return null;
        }
    }

    public CharSequence getDataManagementLabel(String transportName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "getDataManagementLabel");
        try {
            CharSequence label = this.mTransportManager.getTransportDataManagementLabel(transportName);
            return label;
        } catch (TransportNotRegisteredException e) {
            Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to get management label from transport: " + e.getMessage()));
            return null;
        }
    }

    public void agentConnected(String packageName, IBinder agentBinder) {
        synchronized (this.mAgentConnectLock) {
            if (Binder.getCallingUid() == 1000) {
                Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "agentConnected pkg=" + packageName + " agent=" + agentBinder));
                this.mConnectedAgent = IBackupAgent.Stub.asInterface(agentBinder);
                this.mConnecting = false;
            } else {
                Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Non-system process uid=" + Binder.getCallingUid() + " claiming agent connected"));
            }
            this.mAgentConnectLock.notifyAll();
        }
    }

    public void agentDisconnected(String packageName) {
        synchronized (this.mAgentConnectLock) {
            if (Binder.getCallingUid() == 1000) {
                this.mConnectedAgent = null;
                this.mConnecting = false;
            } else {
                Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Non-system process uid=" + Binder.getCallingUid() + " claiming agent disconnected"));
            }
            this.mAgentConnectLock.notifyAll();
        }
    }

    public void restoreAtInstall(String packageName, int token) {
        boolean skip;
        if (Binder.getCallingUid() != 1000) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Non-system process uid=" + Binder.getCallingUid() + " attemping install-time restore"));
            return;
        }
        boolean skip2 = false;
        long restoreSet = getAvailableRestoreToken(packageName);
        Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "restoreAtInstall pkg=" + packageName + " token=" + Integer.toHexString(token) + " restoreSet=" + Long.toHexString(restoreSet)));
        if (restoreSet == 0) {
            skip2 = true;
        }
        final TransportClient transportClient = this.mTransportManager.getCurrentTransportClient("BMS.restoreAtInstall()");
        if (transportClient == null) {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "No transport client"));
            skip2 = true;
        }
        if (this.mAutoRestore) {
            skip = skip2;
        } else {
            Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Non-restorable state: auto=" + this.mAutoRestore));
            skip = true;
        }
        if (!skip) {
            try {
                this.mWakelock.acquire();
                OnTaskFinishedListener listener = new OnTaskFinishedListener() { // from class: com.android.server.backup.-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg
                    @Override // com.android.server.backup.internal.OnTaskFinishedListener
                    public final void onFinished(String str) {
                        this.f$0.lambda$restoreAtInstall$6$UserBackupManagerService(transportClient, str);
                    }
                };
                Message msg = this.mBackupHandler.obtainMessage(3);
                msg.obj = RestoreParams.createForRestoreAtInstall(transportClient, null, null, restoreSet, packageName, token, listener);
                this.mBackupHandler.sendMessage(msg);
            } catch (Exception e) {
                Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Unable to contact transport: " + e.getMessage()));
                skip = true;
            }
        }
        if (skip) {
            if (transportClient != null) {
                this.mTransportManager.disposeOfTransportClient(transportClient, "BMS.restoreAtInstall()");
            }
            Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Finishing install immediately"));
            try {
                try {
                    this.mPackageManagerBinder.finishPackageInstall(token, false);
                } catch (RemoteException e2) {
                }
            } catch (RemoteException e3) {
            }
        }
    }

    public /* synthetic */ void lambda$restoreAtInstall$6$UserBackupManagerService(TransportClient transportClient, String caller) {
        this.mTransportManager.disposeOfTransportClient(transportClient, caller);
        this.mWakelock.release();
    }

    public IRestoreSession beginRestoreSession(String packageName, String transport) {
        Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "beginRestoreSession: pkg=" + packageName + " transport=" + transport));
        boolean needPermission = true;
        if (transport == null) {
            transport = this.mTransportManager.getCurrentTransportName();
            if (packageName != null) {
                try {
                    PackageInfo app = this.mPackageManager.getPackageInfoAsUser(packageName, 0, this.mUserId);
                    if (app.applicationInfo.uid == Binder.getCallingUid()) {
                        needPermission = false;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Asked to restore nonexistent pkg " + packageName));
                    throw new IllegalArgumentException("Package " + packageName + " not found");
                }
            }
        }
        if (needPermission) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "beginRestoreSession");
        } else {
            Slog.d(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "restoring self on current transport; no permission needed"));
        }
        synchronized (this) {
            if (this.mActiveRestoreSession != null) {
                Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Restore session requested but one already active"));
                return null;
            }
            if (this.mBackupRunning) {
                Slog.i(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Restore session requested but currently running backups"));
                return null;
            }
            this.mActiveRestoreSession = new ActiveRestoreSession(this, packageName, transport);
            this.mBackupHandler.sendEmptyMessageDelayed(8, this.mAgentTimeoutParameters.getRestoreAgentTimeoutMillis());
            return this.mActiveRestoreSession;
        }
    }

    public void clearRestoreSession(ActiveRestoreSession currentSession) {
        synchronized (this) {
            if (currentSession != this.mActiveRestoreSession) {
                Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "ending non-current restore session"));
            } else {
                Slog.v(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Clearing restore session and halting timeout"));
                this.mActiveRestoreSession = null;
                this.mBackupHandler.removeMessages(8);
            }
        }
    }

    public void opComplete(int token, long result) {
        Operation op;
        synchronized (this.mCurrentOpLock) {
            op = this.mCurrentOperations.get(token);
            if (op != null) {
                if (op.state == -1) {
                    op = null;
                    this.mCurrentOperations.delete(token);
                } else if (op.state == 1) {
                    Slog.w(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Received duplicate ack for token=" + Integer.toHexString(token)));
                    op = null;
                    this.mCurrentOperations.remove(token);
                } else if (op.state == 0) {
                    op.state = 1;
                }
            }
            this.mCurrentOpLock.notifyAll();
        }
        if (op != null && op.callback != null) {
            Pair<BackupRestoreTask, Long> callbackAndResult = Pair.create(op.callback, Long.valueOf(result));
            Message msg = this.mBackupHandler.obtainMessage(21, callbackAndResult);
            this.mBackupHandler.sendMessage(msg);
        }
    }

    public boolean isAppEligibleForBackup(String packageName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "isAppEligibleForBackup");
        long oldToken = Binder.clearCallingIdentity();
        try {
            TransportClient transportClient = this.mTransportManager.getCurrentTransportClient("BMS.isAppEligibleForBackup");
            boolean eligible = AppBackupUtils.appIsRunningAndEligibleForBackupWithTransport(transportClient, packageName, this.mPackageManager, this.mUserId);
            if (transportClient != null) {
                this.mTransportManager.disposeOfTransportClient(transportClient, "BMS.isAppEligibleForBackup");
            }
            return eligible;
        } finally {
            Binder.restoreCallingIdentity(oldToken);
        }
    }

    public String[] filterAppsEligibleForBackup(String[] packages) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BACKUP", "filterAppsEligibleForBackup");
        long oldToken = Binder.clearCallingIdentity();
        try {
            TransportClient transportClient = this.mTransportManager.getCurrentTransportClient("BMS.filterAppsEligibleForBackup");
            List<String> eligibleApps = new LinkedList<>();
            for (String packageName : packages) {
                if (AppBackupUtils.appIsRunningAndEligibleForBackupWithTransport(transportClient, packageName, this.mPackageManager, this.mUserId)) {
                    eligibleApps.add(packageName);
                }
            }
            if (transportClient != null) {
                this.mTransportManager.disposeOfTransportClient(transportClient, "BMS.filterAppsEligibleForBackup");
            }
            return (String[]) eligibleApps.toArray(new String[eligibleApps.size()]);
        } finally {
            Binder.restoreCallingIdentity(oldToken);
        }
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        long identityToken = Binder.clearCallingIdentity();
        if (args != null) {
            try {
                for (String arg : args) {
                    if ("agents".startsWith(arg)) {
                        dumpAgents(pw);
                        Binder.restoreCallingIdentity(identityToken);
                        return;
                    } else if ("transportclients".equals(arg.toLowerCase())) {
                        this.mTransportManager.dumpTransportClients(pw);
                        Binder.restoreCallingIdentity(identityToken);
                        return;
                    } else {
                        if ("transportstats".equals(arg.toLowerCase())) {
                            this.mTransportManager.dumpTransportStats(pw);
                            Binder.restoreCallingIdentity(identityToken);
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identityToken);
                throw th;
            }
        }
        dumpInternal(pw);
        Binder.restoreCallingIdentity(identityToken);
    }

    private void dumpAgents(PrintWriter pw) {
        List<PackageInfo> agentPackages = allAgentPackages();
        pw.println("Defined backup agents:");
        for (PackageInfo pkg : agentPackages) {
            pw.print("  ");
            pw.print(pkg.packageName);
            pw.println(':');
            pw.print("      ");
            pw.println(pkg.applicationInfo.backupAgentName);
        }
    }

    private void dumpInternal(PrintWriter pw) {
        int i;
        String userPrefix = this.mUserId == 0 ? "" : "User " + this.mUserId + ":";
        synchronized (this.mQueueLock) {
            StringBuilder sb = new StringBuilder();
            sb.append(userPrefix);
            sb.append("Backup Manager is ");
            sb.append(this.mEnabled ? "enabled" : "disabled");
            sb.append(" / ");
            sb.append(!this.mSetupComplete ? "not " : "");
            sb.append("setup complete / ");
            sb.append(this.mPendingInits.size() == 0 ? "not " : "");
            sb.append("pending init");
            pw.println(sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Auto-restore is ");
            sb2.append(this.mAutoRestore ? "enabled" : "disabled");
            pw.println(sb2.toString());
            if (this.mBackupRunning) {
                pw.println("Backup currently running");
            }
            pw.println(isBackupOperationInProgress() ? "Backup in progress" : "No backups running");
            pw.println("Last backup pass started: " + this.mLastBackupPass + " (now = " + System.currentTimeMillis() + ')');
            StringBuilder sb3 = new StringBuilder();
            sb3.append("  next scheduled: ");
            sb3.append(KeyValueBackupJob.nextScheduled(this.mUserId));
            pw.println(sb3.toString());
            pw.println(userPrefix + "Transport whitelist:");
            for (ComponentName transport : this.mTransportManager.getTransportWhitelist()) {
                pw.print("    ");
                pw.println(transport.flattenToShortString());
            }
            pw.println(userPrefix + "Available transports:");
            String[] transports = listAllTransports();
            if (transports != null) {
                int length = transports.length;
                int i2 = 0;
                while (i2 < length) {
                    String t = transports[i2];
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(t.equals(this.mTransportManager.getCurrentTransportName()) ? "  * " : "    ");
                    sb4.append(t);
                    pw.println(sb4.toString());
                    try {
                        File dir = new File(this.mBaseStateDir, this.mTransportManager.getTransportDirName(t));
                        pw.println("       destination: " + this.mTransportManager.getTransportCurrentDestinationString(t));
                        pw.println("       intent: " + this.mTransportManager.getTransportConfigurationIntent(t));
                        File[] fileArrListFiles = dir.listFiles();
                        int length2 = fileArrListFiles.length;
                        int i3 = 0;
                        while (i3 < length2) {
                            File f = fileArrListFiles[i3];
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("       ");
                            sb5.append(f.getName());
                            sb5.append(" - ");
                            i = i2;
                            try {
                                sb5.append(f.length());
                                sb5.append(" state bytes");
                                pw.println(sb5.toString());
                                i3++;
                                i2 = i;
                            } catch (Exception e) {
                                e = e;
                                Slog.e(BackupManagerService.TAG, addUserIdToLogMessage(this.mUserId, "Error in transport"), e);
                                pw.println("        Error: " + e);
                                i2 = i + 1;
                            }
                        }
                        i = i2;
                    } catch (Exception e2) {
                        e = e2;
                        i = i2;
                    }
                    i2 = i + 1;
                }
            }
            this.mTransportManager.dumpTransportClients(pw);
            pw.println(userPrefix + "Pending init: " + this.mPendingInits.size());
            for (String s : this.mPendingInits) {
                pw.println("    " + s);
            }
            pw.print(userPrefix + "Ancestral: ");
            pw.println(Long.toHexString(this.mAncestralToken));
            pw.print(userPrefix + "Current:   ");
            pw.println(Long.toHexString(this.mCurrentToken));
            int numPackages = this.mBackupParticipants.size();
            pw.println(userPrefix + "Participants:");
            for (int i4 = 0; i4 < numPackages; i4++) {
                int uid = this.mBackupParticipants.keyAt(i4);
                pw.print("  uid: ");
                pw.println(uid);
                HashSet<String> participants = this.mBackupParticipants.valueAt(i4);
                for (String app : participants) {
                    pw.println("    " + app);
                }
            }
            StringBuilder sb6 = new StringBuilder();
            sb6.append(userPrefix);
            sb6.append("Ancestral packages: ");
            sb6.append(this.mAncestralPackages == null ? "none" : Integer.valueOf(this.mAncestralPackages.size()));
            pw.println(sb6.toString());
            if (this.mAncestralPackages != null) {
                for (String pkg : this.mAncestralPackages) {
                    pw.println("    " + pkg);
                }
            }
            Set<String> processedPackages = this.mProcessedPackagesJournal.getPackagesCopy();
            pw.println(userPrefix + "Ever backed up: " + processedPackages.size());
            for (String pkg2 : processedPackages) {
                pw.println("    " + pkg2);
            }
            pw.println(userPrefix + "Pending key/value backup: " + this.mPendingBackups.size());
            for (BackupRequest req : this.mPendingBackups.values()) {
                pw.println("    " + req);
            }
            pw.println(userPrefix + "Full backup queue:" + this.mFullBackupQueue.size());
            for (FullBackupEntry entry : this.mFullBackupQueue) {
                pw.print("    ");
                pw.print(entry.lastBackup);
                pw.print(" : ");
                pw.println(entry.packageName);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String addUserIdToLogMessage(int userId, String message) {
        return "[UserID:" + userId + "] " + message;
    }

    public IBackupManager getBackupManagerBinder() {
        return this.mBackupManagerBinder;
    }
}
