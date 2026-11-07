package com.android.server.locksettings;

import android.R;
import android.app.ActivityManager;
import android.app.IActivityManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.app.admin.DevicePolicyManagerInternal;
import android.app.admin.DeviceStateCache;
import android.app.admin.PasswordMetrics;
import android.app.trust.IStrongAuthTracker;
import android.app.trust.TrustManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.sqlite.SQLiteDatabase;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.authsecret.V1_0.IAuthSecret;
import android.hardware.biometrics.BiometricManager;
import android.hardware.face.Face;
import android.hardware.face.FaceManager;
import android.hardware.fingerprint.Fingerprint;
import android.hardware.fingerprint.FingerprintManager;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IProgressListener;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.StrictMode;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.UserManagerInternal;
import android.os.storage.IStorageManager;
import android.os.storage.StorageManager;
import android.provider.Settings;
import android.security.KeyStore;
import android.security.keystore.AndroidKeyStoreProvider;
import android.security.keystore.KeyProtection;
import android.security.keystore.UserNotAuthenticatedException;
import android.security.keystore.recovery.KeyChainProtectionParams;
import android.security.keystore.recovery.KeyChainSnapshot;
import android.security.keystore.recovery.RecoveryCertPath;
import android.security.keystore.recovery.WrappedApplicationKey;
import android.service.gatekeeper.GateKeeperResponse;
import android.service.gatekeeper.IGateKeeperService;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.EventLog;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.internal.widget.ICheckCredentialProgressCallback;
import com.android.internal.widget.ILockSettings;
import com.android.internal.widget.LockPatternUtils;
import com.android.internal.widget.LockSettingsInternal;
import com.android.internal.widget.LockscreenCredential;
import com.android.internal.widget.RebootEscrowListener;
import com.android.internal.widget.VerifyCredentialResponse;
import com.android.server.LocalServices;
import com.android.server.ServiceThread;
import com.android.server.SystemService;
import com.android.server.UiModeManagerService;
import com.android.server.job.controllers.JobStatus;
import com.android.server.locksettings.recoverablekeystore.RecoverableKeyStoreManager;
import com.android.server.notification.SnoozeHelper;
import com.android.server.wm.WindowManagerInternal;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import libcore.util.HexEncoding;

/* JADX INFO: loaded from: classes.dex */
public class LockSettingsService extends ILockSettings.Stub {
    private static final String BIOMETRIC_PERMISSION = "android.permission.MANAGE_BIOMETRIC";
    private static final int CHALLENGE_FROM_CALLER = 1;
    private static final int CHALLENGE_INTERNAL = 2;
    private static final int CHALLENGE_NONE = 0;
    private static final boolean DEBUG = false;
    private static final String GSI_RUNNING_PROP = "ro.gsid.image_running";
    private static final String PERMISSION = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE";
    private static final String PREV_SYNTHETIC_PASSWORD_HANDLE_KEY = "prev-sp-handle";
    private static final int PROFILE_KEY_IV_SIZE = 12;
    private static final String SYNTHETIC_PASSWORD_UPDATE_TIME_KEY = "sp-handle-ts";
    private static final String TAG = "LockSettingsService";
    private static final String USER_SERIAL_NUMBER_KEY = "serial-number";
    private final IActivityManager mActivityManager;
    protected IAuthSecret mAuthSecretService;
    private final BroadcastReceiver mBroadcastReceiver;
    private final Context mContext;
    private final DeviceProvisionedObserver mDeviceProvisionedObserver;
    private boolean mFirstCallToVold;
    protected IGateKeeperService mGateKeeperService;
    protected final Handler mHandler;
    protected boolean mHasSecureLockScreen;
    private final Injector mInjector;
    private final KeyStore mKeyStore;
    private ManagedProfilePasswordCache mManagedProfilePasswordCache;
    private final NotificationManager mNotificationManager;
    private final RebootEscrowManager mRebootEscrowManager;
    private final RecoverableKeyStoreManager mRecoverableKeyStoreManager;
    private final Object mSeparateChallengeLock;
    private final SyntheticPasswordManager mSpManager;
    protected final LockSettingsStorage mStorage;
    private final IStorageManager mStorageManager;
    private final LockSettingsStrongAuth mStrongAuth;
    private final SynchronizedStrongAuthTracker mStrongAuthTracker;
    private final UserManager mUserManager;
    final SparseArray<PasswordMetrics> mUserPasswordMetrics;
    private static final int[] SYSTEM_CREDENTIAL_UIDS = {1010, 1016, 0, 1000};
    private static final String[] VALID_SETTINGS = {"lockscreen.lockedoutpermanently", "lockscreen.patterneverchosen", "lockscreen.password_type", "lockscreen.password_type_alternate", "lockscreen.password_salt", "lockscreen.disabled", "lockscreen.options", "lockscreen.biometric_weak_fallback", "lockscreen.biometricweakeverchosen", "lockscreen.power_button_instantly_locks", "lockscreen.passwordhistory", "lock_pattern_autolock", "lock_biometric_weak_flags", "lock_pattern_visible_pattern", "lock_pattern_tactile_feedback_enabled"};
    private static final String[] READ_CONTACTS_PROTECTED_SETTINGS = {"lock_screen_owner_info_enabled", "lock_screen_owner_info"};
    private static final String SEPARATE_PROFILE_CHALLENGE_KEY = "lockscreen.profilechallenge";
    private static final String[] READ_PASSWORD_PROTECTED_SETTINGS = {"lockscreen.password_salt", "lockscreen.passwordhistory", "lockscreen.password_type", SEPARATE_PROFILE_CHALLENGE_KEY};

    @interface ChallengeType {
    }

    public static final class Lifecycle extends SystemService {
        private LockSettingsService mLockSettingsService;

        public Lifecycle(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [android.os.IBinder, com.android.server.locksettings.LockSettingsService] */
        @Override // com.android.server.SystemService
        public void onStart() {
            AndroidKeyStoreProvider.install();
            ?? lockSettingsService = new LockSettingsService(getContext());
            this.mLockSettingsService = lockSettingsService;
            publishBinderService("lock_settings", lockSettingsService);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            super.onBootPhase(phase);
            if (phase == 550) {
                this.mLockSettingsService.migrateOldDataAfterSystemReady();
            }
        }

        @Override // com.android.server.SystemService
        public void onStartUser(int userHandle) {
            this.mLockSettingsService.onStartUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onUnlockUser(int userHandle) {
            this.mLockSettingsService.onUnlockUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onCleanupUser(int userHandle) {
            this.mLockSettingsService.onCleanupUser(userHandle);
        }
    }

    protected static class SynchronizedStrongAuthTracker extends LockPatternUtils.StrongAuthTracker {
        public SynchronizedStrongAuthTracker(Context context) {
            super(context);
        }

        protected void handleStrongAuthRequiredChanged(int strongAuthFlags, int userId) {
            synchronized (this) {
                super.handleStrongAuthRequiredChanged(strongAuthFlags, userId);
            }
        }

        public int getStrongAuthForUser(int userId) {
            int strongAuthForUser;
            synchronized (this) {
                strongAuthForUser = super.getStrongAuthForUser(userId);
            }
            return strongAuthForUser;
        }

        void register(LockSettingsStrongAuth strongAuth) {
            strongAuth.registerStrongAuthTracker(getStub());
        }
    }

    private class PendingResetLockout {
        final byte[] mHAT;
        final int mUserId;

        PendingResetLockout(int userId, byte[] hat) {
            this.mUserId = userId;
            this.mHAT = hat;
        }
    }

    private LockscreenCredential generateRandomProfilePassword() {
        byte[] bArr = new byte[0];
        try {
            byte[] randomLockSeed = SecureRandom.getInstance("SHA1PRNG").generateSeed(40);
            char[] newPasswordChars = HexEncoding.encode(randomLockSeed);
            byte[] newPassword = new byte[newPasswordChars.length];
            for (int i = 0; i < newPasswordChars.length; i++) {
                newPassword[i] = (byte) newPasswordChars[i];
            }
            LockscreenCredential credential = LockscreenCredential.createManagedPassword(newPassword);
            Arrays.fill(newPasswordChars, (char) 0);
            Arrays.fill(newPassword, (byte) 0);
            Arrays.fill(randomLockSeed, (byte) 0);
            return credential;
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("Fail to generate profile password", e);
        }
    }

    public void tieManagedProfileLockIfNecessary(int managedUserId, LockscreenCredential managedUserPassword) {
        if (!this.mUserManager.getUserInfo(managedUserId).isManagedProfile() || getSeparateProfileChallengeEnabledInternal(managedUserId) || this.mStorage.hasChildProfileLock(managedUserId)) {
            return;
        }
        int parentId = this.mUserManager.getProfileParent(managedUserId).id;
        if (!isUserSecure(parentId) && !managedUserPassword.isNone()) {
            setLockCredentialInternal(LockscreenCredential.createNone(), managedUserPassword, managedUserId, true);
            return;
        }
        try {
            if (getGateKeeperService().getSecureUserId(parentId) == 0) {
                return;
            }
            LockscreenCredential unifiedProfilePassword = generateRandomProfilePassword();
            try {
                setLockCredentialInternal(unifiedProfilePassword, managedUserPassword, managedUserId, true);
                tieProfileLockToParent(managedUserId, unifiedProfilePassword);
                this.mManagedProfilePasswordCache.storePassword(managedUserId, unifiedProfilePassword);
                if (unifiedProfilePassword != null) {
                    unifiedProfilePassword.close();
                }
            } catch (Throwable th) {
                if (unifiedProfilePassword != null) {
                    try {
                        unifiedProfilePassword.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to talk to GateKeeper service", e);
        }
    }

    static class Injector {
        protected Context mContext;

        public Injector(Context context) {
            this.mContext = context;
        }

        public Context getContext() {
            return this.mContext;
        }

        public ServiceThread getServiceThread() {
            ServiceThread handlerThread = new ServiceThread(LockSettingsService.TAG, 10, true);
            handlerThread.start();
            return handlerThread;
        }

        public Handler getHandler(ServiceThread handlerThread) {
            return new Handler(handlerThread.getLooper());
        }

        public LockSettingsStorage getStorage() {
            final LockSettingsStorage storage = new LockSettingsStorage(this.mContext);
            storage.setDatabaseOnCreateCallback(new LockSettingsStorage.Callback() { // from class: com.android.server.locksettings.LockSettingsService.Injector.1
                @Override // com.android.server.locksettings.LockSettingsStorage.Callback
                public void initialize(SQLiteDatabase db) {
                    boolean lockScreenDisable = SystemProperties.getBoolean("ro.lockscreen.disable.default", false);
                    if (lockScreenDisable) {
                        storage.writeKeyValue(db, "lockscreen.disabled", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION, 0);
                    }
                }
            });
            return storage;
        }

        public LockSettingsStrongAuth getStrongAuth() {
            return new LockSettingsStrongAuth(this.mContext);
        }

        public SynchronizedStrongAuthTracker getStrongAuthTracker() {
            return new SynchronizedStrongAuthTracker(this.mContext);
        }

        public IActivityManager getActivityManager() {
            return ActivityManager.getService();
        }

        public NotificationManager getNotificationManager() {
            return (NotificationManager) this.mContext.getSystemService("notification");
        }

        public UserManager getUserManager() {
            return (UserManager) this.mContext.getSystemService("user");
        }

        public UserManagerInternal getUserManagerInternal() {
            return (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        }

        public DevicePolicyManager getDevicePolicyManager() {
            return (DevicePolicyManager) this.mContext.getSystemService("device_policy");
        }

        public DeviceStateCache getDeviceStateCache() {
            return DeviceStateCache.getInstance();
        }

        public KeyStore getKeyStore() {
            return KeyStore.getInstance();
        }

        public RecoverableKeyStoreManager getRecoverableKeyStoreManager(KeyStore keyStore) {
            return RecoverableKeyStoreManager.getInstance(this.mContext, keyStore);
        }

        public IStorageManager getStorageManager() {
            IBinder service = ServiceManager.getService("mount");
            if (service != null) {
                return IStorageManager.Stub.asInterface(service);
            }
            return null;
        }

        public SyntheticPasswordManager getSyntheticPasswordManager(LockSettingsStorage storage) {
            return new SyntheticPasswordManager(getContext(), storage, getUserManager(), new PasswordSlotManager());
        }

        public RebootEscrowManager getRebootEscrowManager(RebootEscrowManager.Callbacks callbacks, LockSettingsStorage storage) {
            return new RebootEscrowManager(this.mContext, callbacks, storage);
        }

        public boolean hasEnrolledBiometrics(int userId) {
            BiometricManager bm = (BiometricManager) this.mContext.getSystemService(BiometricManager.class);
            return bm.hasEnrolledBiometrics(userId);
        }

        public int binderGetCallingUid() {
            return Binder.getCallingUid();
        }

        public boolean isGsiRunning() {
            return SystemProperties.getInt(LockSettingsService.GSI_RUNNING_PROP, 0) > 0;
        }

        public FingerprintManager getFingerprintManager() {
            if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.fingerprint")) {
                return (FingerprintManager) this.mContext.getSystemService("fingerprint");
            }
            return null;
        }

        public FaceManager getFaceManager() {
            if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.biometrics.face")) {
                return (FaceManager) this.mContext.getSystemService("face");
            }
            return null;
        }

        public int settingsGlobalGetInt(ContentResolver contentResolver, String keyName, int defaultValue) {
            return Settings.Global.getInt(contentResolver, keyName, defaultValue);
        }

        public int settingsSecureGetInt(ContentResolver contentResolver, String keyName, int defaultValue, int userId) {
            return Settings.Secure.getIntForUser(contentResolver, keyName, defaultValue, userId);
        }

        public ManagedProfilePasswordCache getManagedProfilePasswordCache() {
            try {
                java.security.KeyStore ks = java.security.KeyStore.getInstance("AndroidKeyStore");
                ks.load(null);
                return new ManagedProfilePasswordCache(ks, getUserManager());
            } catch (Exception e) {
                throw new IllegalStateException("Cannot load keystore", e);
            }
        }
    }

    public LockSettingsService(Context context) {
        this(new Injector(context));
    }

    protected LockSettingsService(Injector injector) {
        this.mSeparateChallengeLock = new Object();
        this.mDeviceProvisionedObserver = new DeviceProvisionedObserver();
        this.mUserPasswordMetrics = new SparseArray<>();
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.locksettings.LockSettingsService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int userHandle;
                if ("android.intent.action.USER_ADDED".equals(intent.getAction())) {
                    int userHandle2 = intent.getIntExtra("android.intent.extra.user_handle", 0);
                    KeyStore ks = KeyStore.getInstance();
                    UserInfo parentInfo = LockSettingsService.this.mUserManager.getProfileParent(userHandle2);
                    int parentHandle = parentInfo != null ? parentInfo.id : -1;
                    ks.onUserAdded(userHandle2, parentHandle);
                    return;
                }
                if ("android.intent.action.USER_STARTING".equals(intent.getAction())) {
                    LockSettingsService.this.mStorage.prefetchUser(intent.getIntExtra("android.intent.extra.user_handle", 0));
                } else if ("android.intent.action.USER_REMOVED".equals(intent.getAction()) && (userHandle = intent.getIntExtra("android.intent.extra.user_handle", 0)) > 0) {
                    LockSettingsService.this.removeUser(userHandle, false);
                }
            }
        };
        this.mInjector = injector;
        this.mContext = injector.getContext();
        KeyStore keyStore = injector.getKeyStore();
        this.mKeyStore = keyStore;
        this.mRecoverableKeyStoreManager = injector.getRecoverableKeyStoreManager(keyStore);
        this.mHandler = injector.getHandler(injector.getServiceThread());
        this.mStrongAuth = injector.getStrongAuth();
        this.mActivityManager = injector.getActivityManager();
        this.mFirstCallToVold = true;
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.USER_ADDED");
        filter.addAction("android.intent.action.USER_STARTING");
        filter.addAction("android.intent.action.USER_REMOVED");
        injector.getContext().registerReceiverAsUser(this.mBroadcastReceiver, UserHandle.ALL, filter, null, null);
        this.mStorage = injector.getStorage();
        this.mNotificationManager = injector.getNotificationManager();
        this.mUserManager = injector.getUserManager();
        this.mStorageManager = injector.getStorageManager();
        SynchronizedStrongAuthTracker strongAuthTracker = injector.getStrongAuthTracker();
        this.mStrongAuthTracker = strongAuthTracker;
        strongAuthTracker.register(this.mStrongAuth);
        this.mSpManager = injector.getSyntheticPasswordManager(this.mStorage);
        this.mManagedProfilePasswordCache = injector.getManagedProfilePasswordCache();
        this.mRebootEscrowManager = injector.getRebootEscrowManager(new RebootEscrowCallbacks(), this.mStorage);
        LocalServices.addService(LockSettingsInternal.class, new LocalService());
    }

    private void maybeShowEncryptionNotificationForUser(int userId) {
        UserInfo parent;
        UserInfo user = this.mUserManager.getUserInfo(userId);
        if (!user.isManagedProfile() || isUserKeyUnlocked(userId)) {
            return;
        }
        UserHandle userHandle = user.getUserHandle();
        boolean isSecure = isUserSecure(userId);
        if (isSecure && !this.mUserManager.isUserUnlockingOrUnlocked(userHandle) && (parent = this.mUserManager.getProfileParent(userId)) != null && this.mUserManager.isUserUnlockingOrUnlocked(parent.getUserHandle()) && !this.mUserManager.isQuietModeEnabled(userHandle)) {
            showEncryptionNotificationForProfile(userHandle);
        }
    }

    private void showEncryptionNotificationForProfile(UserHandle user) {
        Resources r = this.mContext.getResources();
        CharSequence title = r.getText(R.string.notification_title_abusive_bg_apps);
        CharSequence message = r.getText(R.string.notification_title);
        CharSequence detail = r.getText(R.string.notification_reply_button_accessibility);
        KeyguardManager km = (KeyguardManager) this.mContext.getSystemService("keyguard");
        Intent unlockIntent = km.createConfirmDeviceCredentialIntent(null, null, user.getIdentifier());
        if (unlockIntent == null) {
            return;
        }
        unlockIntent.setFlags(276824064);
        PendingIntent intent = PendingIntent.getActivity(this.mContext, 0, unlockIntent, AudioFormat.OPUS);
        showEncryptionNotification(user, title, message, detail, intent);
    }

    private void showEncryptionNotification(UserHandle user, CharSequence title, CharSequence message, CharSequence detail, PendingIntent intent) {
        if (StorageManager.isFileEncryptedNativeOrEmulated()) {
            Notification notification = new Notification.Builder(this.mContext, SystemNotificationChannels.DEVICE_ADMIN).setSmallIcon(R.drawable.ic_menu_find_material).setWhen(0L).setOngoing(true).setTicker(title).setColor(this.mContext.getColor(R.color.system_notification_accent_color)).setContentTitle(title).setContentText(message).setSubText(detail).setVisibility(1).setContentIntent(intent).build();
            this.mNotificationManager.notifyAsUser(null, 9, notification, user);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideEncryptionNotification(UserHandle userHandle) {
        this.mNotificationManager.cancelAsUser(null, 9, userHandle);
    }

    public void onCleanupUser(int userId) {
        hideEncryptionNotification(new UserHandle(userId));
        int strongAuthRequired = LockPatternUtils.StrongAuthTracker.getDefaultFlags(this.mContext);
        requireStrongAuth(strongAuthRequired, userId);
        synchronized (this) {
            this.mUserPasswordMetrics.remove(userId);
        }
    }

    public void onStartUser(int userId) {
        maybeShowEncryptionNotificationForUser(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupDataForReusedUserIdIfNecessary(int userId) {
        int serialNumber;
        int storedSerialNumber;
        if (userId != 0 && (storedSerialNumber = this.mStorage.getInt(USER_SERIAL_NUMBER_KEY, -1, userId)) != (serialNumber = this.mUserManager.getUserSerialNumber(userId))) {
            if (storedSerialNumber != -1) {
                removeUser(userId, true);
            }
            this.mStorage.setInt(USER_SERIAL_NUMBER_KEY, serialNumber, userId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensureProfileKeystoreUnlocked(int userId) {
        KeyStore ks = KeyStore.getInstance();
        if (ks.state(userId) == KeyStore.State.LOCKED && this.mUserManager.getUserInfo(userId).isManagedProfile() && hasUnifiedChallenge(userId)) {
            Slog.i(TAG, "Managed profile got unlocked, will unlock its keystore");
            unlockChildProfile(userId, true, 0, 0L, null);
        }
    }

    public void onUnlockUser(final int userId) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.locksettings.LockSettingsService.1
            @Override // java.lang.Runnable
            public void run() {
                LockSettingsService.this.cleanupDataForReusedUserIdIfNecessary(userId);
                LockSettingsService.this.ensureProfileKeystoreUnlocked(userId);
                LockSettingsService.this.hideEncryptionNotification(new UserHandle(userId));
                if (LockSettingsService.this.mUserManager.getUserInfo(userId).isManagedProfile()) {
                    LockSettingsService.this.tieManagedProfileLockIfNecessary(userId, LockscreenCredential.createNone());
                }
                if (LockSettingsService.this.mUserManager.getUserInfo(userId).isPrimary() && !LockSettingsService.this.isUserSecure(userId)) {
                    LockSettingsService.this.tryDeriveAuthTokenForUnsecuredPrimaryUser(userId);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryDeriveAuthTokenForUnsecuredPrimaryUser(int userId) {
        synchronized (this.mSpManager) {
            if (isSyntheticPasswordBasedCredentialLocked(userId)) {
                long handle = getSyntheticPasswordHandleLocked(userId);
                SyntheticPasswordManager.AuthenticationResult result = this.mSpManager.unwrapPasswordBasedSyntheticPassword(getGateKeeperService(), handle, LockscreenCredential.createNone(), userId, null);
                if (result.authToken != null) {
                    Slog.i(TAG, "Retrieved auth token for user " + userId);
                    onAuthTokenKnownForUser(userId, result.authToken);
                } else {
                    Slog.e(TAG, "Auth token not available for user " + userId);
                }
            }
        }
    }

    public void systemReady() {
        if (this.mContext.checkCallingOrSelfPermission(PERMISSION) != 0) {
            EventLog.writeEvent(1397638484, "28251513", Integer.valueOf(getCallingUid()), "");
        }
        checkWritePermission(0);
        this.mHasSecureLockScreen = this.mContext.getPackageManager().hasSystemFeature("android.software.secure_lock_screen");
        migrateOldData();
        getGateKeeperService();
        this.mSpManager.initWeaverService();
        getAuthSecretHal();
        this.mDeviceProvisionedObserver.onSystemReady();
        this.mRebootEscrowManager.loadRebootEscrowDataIfAvailable();
        this.mStorage.prefetchUser(0);
    }

    private void getAuthSecretHal() {
        try {
            this.mAuthSecretService = IAuthSecret.getService(true);
        } catch (RemoteException e) {
            Slog.w(TAG, "Failed to get AuthSecret HAL", e);
        } catch (NoSuchElementException e2) {
            Slog.i(TAG, "Device doesn't implement AuthSecret HAL");
        }
    }

    private void migrateOldData() {
        int i;
        int i2;
        int i3 = 0;
        if (getString("migrated", null, 0) == null) {
            ContentResolver cr = this.mContext.getContentResolver();
            for (String validSetting : VALID_SETTINGS) {
                String value = Settings.Secure.getString(cr, validSetting);
                if (value != null) {
                    setString(validSetting, value, 0);
                }
            }
            setString("migrated", "true", 0);
            Slog.i(TAG, "Migrated lock settings to new location");
        }
        if (getString("migrated_user_specific", null, 0) != null) {
            i = 0;
        } else {
            ContentResolver cr2 = this.mContext.getContentResolver();
            List<UserInfo> users = this.mUserManager.getUsers();
            int user = 0;
            while (user < users.size()) {
                int userId = users.get(user).id;
                String ownerInfo = Settings.Secure.getStringForUser(cr2, "lock_screen_owner_info", userId);
                if (!TextUtils.isEmpty(ownerInfo)) {
                    setString("lock_screen_owner_info", ownerInfo, userId);
                    Settings.Secure.putStringForUser(cr2, "lock_screen_owner_info", "", userId);
                }
                try {
                    int ivalue = Settings.Secure.getIntForUser(cr2, "lock_screen_owner_info_enabled", userId);
                    boolean enabled = ivalue != 0;
                    setLong("lock_screen_owner_info_enabled", enabled ? 1L : 0L, userId);
                } catch (Settings.SettingNotFoundException e) {
                    if (!TextUtils.isEmpty(ownerInfo)) {
                        setLong("lock_screen_owner_info_enabled", 1L, userId);
                    }
                }
                Settings.Secure.putIntForUser(cr2, "lock_screen_owner_info_enabled", 0, userId);
                user++;
                i3 = 0;
            }
            i = i3;
            setString("migrated_user_specific", "true", i);
            Slog.i(TAG, "Migrated per-user lock settings to new location");
        }
        if (getString("migrated_biometric_weak", null, i) != null) {
            i2 = 0;
        } else {
            List<UserInfo> users2 = this.mUserManager.getUsers();
            for (int i4 = 0; i4 < users2.size(); i4++) {
                int userId2 = users2.get(i4).id;
                long type = getLong("lockscreen.password_type", 0L, userId2);
                long alternateType = getLong("lockscreen.password_type_alternate", 0L, userId2);
                if (type == 32768) {
                    setLong("lockscreen.password_type", alternateType, userId2);
                }
                setLong("lockscreen.password_type_alternate", 0L, userId2);
            }
            i2 = 0;
            setString("migrated_biometric_weak", "true", 0);
            Slog.i(TAG, "Migrated biometric weak to use the fallback instead");
        }
        if (getString("migrated_lockscreen_disabled", null, i2) == null) {
            List<UserInfo> users3 = this.mUserManager.getUsers();
            int userCount = users3.size();
            int switchableUsers = 0;
            for (int i5 = 0; i5 < userCount; i5++) {
                if (users3.get(i5).supportsSwitchTo()) {
                    switchableUsers++;
                }
            }
            if (switchableUsers > 1) {
                for (int i6 = 0; i6 < userCount; i6++) {
                    int id = users3.get(i6).id;
                    if (getBoolean("lockscreen.disabled", false, id)) {
                        setBoolean("lockscreen.disabled", false, id);
                    }
                }
            }
            setString("migrated_lockscreen_disabled", "true", 0);
            Slog.i(TAG, "Migrated lockscreen disabled flag");
        }
        boolean isWatch = this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.watch");
        if (isWatch && getString("migrated_wear_lockscreen_disabled", null, 0) == null) {
            List<UserInfo> users4 = this.mUserManager.getUsers();
            int userCount2 = users4.size();
            for (int i7 = 0; i7 < userCount2; i7++) {
                setBoolean("lockscreen.disabled", false, users4.get(i7).id);
            }
            setString("migrated_wear_lockscreen_disabled", "true", 0);
            Slog.i(TAG, "Migrated lockscreen_disabled for Wear devices");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void migrateOldDataAfterSystemReady() {
        if (LockPatternUtils.frpCredentialEnabled(this.mContext) && !getBoolean("migrated_frp", false, 0)) {
            migrateFrpCredential();
            setBoolean("migrated_frp", true, 0);
            Slog.i(TAG, "Migrated migrated_frp.");
        }
    }

    private void migrateFrpCredential() {
        if (this.mStorage.readPersistentDataBlock() != LockSettingsStorage.PersistentData.NONE) {
            return;
        }
        for (UserInfo userInfo : this.mUserManager.getUsers()) {
            if (LockPatternUtils.userOwnsFrpCredential(this.mContext, userInfo) && isUserSecure(userInfo.id)) {
                synchronized (this.mSpManager) {
                    if (isSyntheticPasswordBasedCredentialLocked(userInfo.id)) {
                        int actualQuality = (int) getLong("lockscreen.password_type", 0L, userInfo.id);
                        this.mSpManager.migrateFrpPasswordLocked(getSyntheticPasswordHandleLocked(userInfo.id), userInfo, redactActualQualityToMostLenientEquivalentQuality(actualQuality));
                    }
                }
                return;
            }
        }
    }

    private int redactActualQualityToMostLenientEquivalentQuality(int quality) {
        if (quality == 131072 || quality == 196608) {
            return 131072;
        }
        if (quality == 262144 || quality == 327680 || quality == 393216) {
            return 262144;
        }
        return quality;
    }

    private void enforceFrpResolved() {
        ContentResolver cr = this.mContext.getContentResolver();
        boolean inSetupWizard = this.mInjector.settingsSecureGetInt(cr, "user_setup_complete", 0, 0) == 0;
        boolean secureFrp = this.mInjector.settingsSecureGetInt(cr, "secure_frp_mode", 0, 0) == 1;
        if (inSetupWizard && secureFrp) {
            throw new SecurityException("Cannot change credential in SUW while factory reset protection is not resolved yet");
        }
    }

    private final void checkWritePermission(int userId) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, "LockSettingsWrite");
    }

    private final void checkPasswordReadPermission(int userId) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, "LockSettingsRead");
    }

    private final void checkPasswordHavePermission(int userId) {
        if (this.mContext.checkCallingOrSelfPermission(PERMISSION) != 0) {
            EventLog.writeEvent(1397638484, "28251513", Integer.valueOf(getCallingUid()), "");
        }
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, "LockSettingsHave");
    }

    private final void checkReadPermission(String requestedKey, int userId) {
        int callingUid = Binder.getCallingUid();
        int i = 0;
        while (true) {
            String[] strArr = READ_CONTACTS_PROTECTED_SETTINGS;
            if (i < strArr.length) {
                String key = strArr[i];
                if (!key.equals(requestedKey) || this.mContext.checkCallingOrSelfPermission("android.permission.READ_CONTACTS") == 0) {
                    i++;
                } else {
                    throw new SecurityException("uid=" + callingUid + " needs permission android.permission.READ_CONTACTS to read " + requestedKey + " for user " + userId);
                }
            } else {
                int i2 = 0;
                while (true) {
                    String[] strArr2 = READ_PASSWORD_PROTECTED_SETTINGS;
                    if (i2 < strArr2.length) {
                        String key2 = strArr2[i2];
                        if (!key2.equals(requestedKey) || this.mContext.checkCallingOrSelfPermission(PERMISSION) == 0) {
                            i2++;
                        } else {
                            throw new SecurityException("uid=" + callingUid + " needs permission " + PERMISSION + " to read " + requestedKey + " for user " + userId);
                        }
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private final void checkBiometricPermission() {
        this.mContext.enforceCallingOrSelfPermission(BIOMETRIC_PERMISSION, "LockSettingsBiometric");
    }

    public boolean hasSecureLockScreen() {
        return this.mHasSecureLockScreen;
    }

    public boolean getSeparateProfileChallengeEnabled(int userId) {
        checkReadPermission(SEPARATE_PROFILE_CHALLENGE_KEY, userId);
        return getSeparateProfileChallengeEnabledInternal(userId);
    }

    private boolean getSeparateProfileChallengeEnabledInternal(int userId) {
        boolean z;
        synchronized (this.mSeparateChallengeLock) {
            z = this.mStorage.getBoolean(SEPARATE_PROFILE_CHALLENGE_KEY, false, userId);
        }
        return z;
    }

    public void setSeparateProfileChallengeEnabled(int userId, boolean enabled, LockscreenCredential managedUserPassword) {
        checkWritePermission(userId);
        if (!this.mHasSecureLockScreen) {
            throw new UnsupportedOperationException("This operation requires secure lock screen feature.");
        }
        synchronized (this.mSeparateChallengeLock) {
            setSeparateProfileChallengeEnabledLocked(userId, enabled, managedUserPassword != null ? managedUserPassword : LockscreenCredential.createNone());
        }
        notifySeparateProfileChallengeChanged(userId);
    }

    private void setSeparateProfileChallengeEnabledLocked(int userId, boolean enabled, LockscreenCredential managedUserPassword) {
        boolean old = getBoolean(SEPARATE_PROFILE_CHALLENGE_KEY, false, userId);
        setBoolean(SEPARATE_PROFILE_CHALLENGE_KEY, enabled, userId);
        try {
            if (enabled) {
                this.mStorage.removeChildProfileLock(userId);
                removeKeystoreProfileKey(userId);
            } else {
                tieManagedProfileLockIfNecessary(userId, managedUserPassword);
            }
        } catch (IllegalStateException e) {
            setBoolean(SEPARATE_PROFILE_CHALLENGE_KEY, old, userId);
            throw e;
        }
    }

    private void notifySeparateProfileChallengeChanged(final int userId) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.locksettings.-$$Lambda$LockSettingsService$6ZJNEvi0AXsP3F_UD8F01RaIg3M
            @Override // java.lang.Runnable
            public final void run() {
                LockSettingsService.lambda$notifySeparateProfileChallengeChanged$0(userId);
            }
        });
    }

    static /* synthetic */ void lambda$notifySeparateProfileChallengeChanged$0(int userId) {
        DevicePolicyManagerInternal dpmi = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
        if (dpmi != null) {
            dpmi.reportSeparateProfileChallengeChanged(userId);
        }
    }

    public void setBoolean(String key, boolean value, int userId) {
        checkWritePermission(userId);
        this.mStorage.setBoolean(key, value, userId);
    }

    public void setLong(String key, long value, int userId) {
        checkWritePermission(userId);
        this.mStorage.setLong(key, value, userId);
    }

    public void setString(String key, String value, int userId) {
        checkWritePermission(userId);
        this.mStorage.setString(key, value, userId);
    }

    public boolean getBoolean(String key, boolean defaultValue, int userId) {
        checkReadPermission(key, userId);
        if ("lock_pattern_autolock".equals(key)) {
            return getCredentialTypeInternal(userId) == 1;
        }
        return this.mStorage.getBoolean(key, defaultValue, userId);
    }

    public long getLong(String key, long defaultValue, int userId) {
        checkReadPermission(key, userId);
        return this.mStorage.getLong(key, defaultValue, userId);
    }

    public String getString(String key, String defaultValue, int userId) {
        checkReadPermission(key, userId);
        return this.mStorage.getString(key, defaultValue, userId);
    }

    private void setKeyguardStoredQuality(int quality, int userId) {
        this.mStorage.setLong("lockscreen.password_type", quality, userId);
    }

    private int getKeyguardStoredQuality(int userId) {
        return (int) this.mStorage.getLong("lockscreen.password_type", 0L, userId);
    }

    public int getCredentialType(int userId) {
        checkPasswordHavePermission(userId);
        return getCredentialTypeInternal(userId);
    }

    public int getCredentialTypeInternal(int userId) {
        if (userId == -9999) {
            return getFrpCredentialType();
        }
        synchronized (this.mSpManager) {
            if (isSyntheticPasswordBasedCredentialLocked(userId)) {
                long handle = getSyntheticPasswordHandleLocked(userId);
                int rawType = this.mSpManager.getCredentialType(handle, userId);
                if (rawType != 2) {
                    return rawType;
                }
                return pinOrPasswordQualityToCredentialType(getKeyguardStoredQuality(userId));
            }
            int savedQuality = getKeyguardStoredQuality(userId);
            if (savedQuality == 65536 && this.mStorage.hasPattern(userId)) {
                return 1;
            }
            if (savedQuality >= 131072 && this.mStorage.hasPassword(userId)) {
                return pinOrPasswordQualityToCredentialType(savedQuality);
            }
            return -1;
        }
    }

    private int getFrpCredentialType() {
        LockSettingsStorage.PersistentData data = this.mStorage.readPersistentDataBlock();
        if (data.type != 1 && data.type != 2) {
            return -1;
        }
        int credentialType = SyntheticPasswordManager.getFrpCredentialType(data.payload);
        if (credentialType != 2) {
            return credentialType;
        }
        return pinOrPasswordQualityToCredentialType(data.qualityForUi);
    }

    private static int pinOrPasswordQualityToCredentialType(int quality) {
        if (LockPatternUtils.isQualityAlphabeticPassword(quality)) {
            return 4;
        }
        if (LockPatternUtils.isQualityNumericPin(quality)) {
            return 3;
        }
        throw new IllegalArgumentException("Quality is neither Pin nor password: " + quality);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUserSecure(int userId) {
        return getCredentialTypeInternal(userId) != -1;
    }

    private void setKeystorePassword(byte[] password, int userHandle) {
        KeyStore ks = KeyStore.getInstance();
        String passwordString = password == null ? null : new String(password);
        ks.onUserPasswordChanged(userHandle, passwordString);
    }

    private void unlockKeystore(byte[] password, int userHandle) {
        String passwordString = password == null ? null : new String(password);
        KeyStore ks = KeyStore.getInstance();
        ks.unlock(userHandle, passwordString);
    }

    protected LockscreenCredential getDecryptedPasswordForTiedProfile(int userId) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, UnrecoverableKeyException, IOException, InvalidKeyException, KeyStoreException, CertificateException, InvalidAlgorithmParameterException {
        byte[] storedData = this.mStorage.readChildProfileLock(userId);
        if (storedData == null) {
            throw new FileNotFoundException("Child profile lock file not found");
        }
        byte[] iv = Arrays.copyOfRange(storedData, 0, 12);
        byte[] encryptedPassword = Arrays.copyOfRange(storedData, 12, storedData.length);
        java.security.KeyStore keyStore = java.security.KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        SecretKey decryptionKey = (SecretKey) keyStore.getKey("profile_key_name_decrypt_" + userId, null);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, decryptionKey, new GCMParameterSpec(128, iv));
        byte[] decryptionResult = cipher.doFinal(encryptedPassword);
        LockscreenCredential credential = LockscreenCredential.createManagedPassword(decryptionResult);
        Arrays.fill(decryptionResult, (byte) 0);
        this.mManagedProfilePasswordCache.storePassword(userId, credential);
        return credential;
    }

    private void unlockChildProfile(int profileHandle, boolean ignoreUserNotAuthenticated, int challengeType, long challenge, ArrayList<PendingResetLockout> resetLockouts) {
        try {
            doVerifyCredential(getDecryptedPasswordForTiedProfile(profileHandle), challengeType, challenge, profileHandle, null, resetLockouts);
        } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | CertificateException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            if (e instanceof FileNotFoundException) {
                Slog.i(TAG, "Child profile key not found");
            } else if (ignoreUserNotAuthenticated && (e instanceof UserNotAuthenticatedException)) {
                Slog.i(TAG, "Parent keystore seems locked, ignoring");
            } else {
                Slog.e(TAG, "Failed to decrypt child profile key", e);
            }
        }
    }

    private void unlockUser(int userId, byte[] token, byte[] secret) {
        unlockUser(userId, token, secret, 0, 0L, null);
    }

    private void unlockUser(int userId, byte[] token, byte[] secret, final int challengeType, long challenge, final ArrayList<PendingResetLockout> resetLockouts) {
        UserInfo profile;
        StringBuilder sb = new StringBuilder();
        sb.append("Unlocking user ");
        sb.append(userId);
        sb.append(" with secret only, length ");
        sb.append(secret != null ? secret.length : 0);
        Slog.i(TAG, sb.toString());
        boolean alreadyUnlocked = this.mUserManager.isUserUnlockingOrUnlocked(userId);
        final CountDownLatch latch = new CountDownLatch(1);
        try {
            this.mActivityManager.unlockUser(userId, token, secret, new IProgressListener.Stub() { // from class: com.android.server.locksettings.LockSettingsService.3
                public void onStarted(int id, Bundle extras) throws RemoteException {
                    Slog.d(LockSettingsService.TAG, "unlockUser started");
                }

                public void onProgress(int id, int progress, Bundle extras) throws RemoteException {
                    Slog.d(LockSettingsService.TAG, "unlockUser progress " + progress);
                }

                public void onFinished(int id, Bundle extras) throws RemoteException {
                    Slog.d(LockSettingsService.TAG, "unlockUser finished");
                    latch.countDown();
                }
            });
            try {
                latch.await(15L, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            if (this.mUserManager.getUserInfo(userId).isManagedProfile()) {
                return;
            }
            for (UserInfo profile2 : this.mUserManager.getProfiles(userId)) {
                if (profile2.id != userId && profile2.isManagedProfile()) {
                    if (!hasUnifiedChallenge(profile2.id)) {
                        profile = profile2;
                    } else if (this.mUserManager.isUserRunning(profile2.id)) {
                        unlockChildProfile(profile2.id, false, challengeType, challenge, resetLockouts);
                        profile = profile2;
                    } else {
                        profile = profile2;
                        try {
                            getDecryptedPasswordForTiedProfile(profile.id);
                        } catch (IOException | GeneralSecurityException e2) {
                            Slog.d(TAG, "Cache work profile password failed", e2);
                        }
                    }
                    if (!alreadyUnlocked) {
                        long ident = clearCallingIdentity();
                        try {
                            maybeShowEncryptionNotificationForUser(profile.id);
                            restoreCallingIdentity(ident);
                        } catch (Throwable th) {
                            restoreCallingIdentity(ident);
                            throw th;
                        }
                    }
                }
            }
            if (resetLockouts != null && !resetLockouts.isEmpty()) {
                this.mHandler.post(new Runnable() { // from class: com.android.server.locksettings.-$$Lambda$LockSettingsService$25VQEBWGuGqdc4Xjn9m8HXt9ZTI
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$unlockUser$1$LockSettingsService(resetLockouts, challengeType);
                    }
                });
            }
        } catch (RemoteException e3) {
            throw e3.rethrowAsRuntimeException();
        }
    }

    public /* synthetic */ void lambda$unlockUser$1$LockSettingsService(ArrayList resetLockouts, int challengeType) {
        BiometricManager bm = (BiometricManager) this.mContext.getSystemService(BiometricManager.class);
        PackageManager pm = this.mContext.getPackageManager();
        for (int i = 0; i < resetLockouts.size(); i++) {
            bm.setActiveUser(((PendingResetLockout) resetLockouts.get(i)).mUserId);
            bm.resetLockout(((PendingResetLockout) resetLockouts.get(i)).mHAT);
        }
        if (challengeType == 2 && pm.hasSystemFeature("android.hardware.biometrics.face")) {
            ((FaceManager) this.mContext.getSystemService(FaceManager.class)).revokeChallenge();
        }
    }

    private boolean hasUnifiedChallenge(int userId) {
        return !getSeparateProfileChallengeEnabledInternal(userId) && this.mStorage.hasChildProfileLock(userId);
    }

    private Map<Integer, LockscreenCredential> getDecryptedPasswordsForAllTiedProfiles(int userId) {
        if (this.mUserManager.getUserInfo(userId).isManagedProfile()) {
            return null;
        }
        Map<Integer, LockscreenCredential> result = new ArrayMap<>();
        List<UserInfo> profiles = this.mUserManager.getProfiles(userId);
        int size = profiles.size();
        for (int i = 0; i < size; i++) {
            UserInfo profile = profiles.get(i);
            if (profile.isManagedProfile()) {
                int managedUserId = profile.id;
                if (!getSeparateProfileChallengeEnabledInternal(managedUserId)) {
                    try {
                        result.put(Integer.valueOf(managedUserId), getDecryptedPasswordForTiedProfile(managedUserId));
                    } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | CertificateException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
                        Slog.e(TAG, "getDecryptedPasswordsForAllTiedProfiles failed for user " + managedUserId, e);
                    }
                }
            }
        }
        return result;
    }

    private void synchronizeUnifiedWorkChallengeForProfiles(int userId, Map<Integer, LockscreenCredential> profilePasswordMap) {
        if (this.mUserManager.getUserInfo(userId).isManagedProfile()) {
            return;
        }
        boolean isSecure = isUserSecure(userId);
        List<UserInfo> profiles = this.mUserManager.getProfiles(userId);
        int size = profiles.size();
        for (int i = 0; i < size; i++) {
            UserInfo profile = profiles.get(i);
            if (profile.isManagedProfile()) {
                int managedUserId = profile.id;
                if (!getSeparateProfileChallengeEnabledInternal(managedUserId)) {
                    if (isSecure) {
                        tieManagedProfileLockIfNecessary(managedUserId, LockscreenCredential.createNone());
                    } else if (profilePasswordMap != null && profilePasswordMap.containsKey(Integer.valueOf(managedUserId))) {
                        setLockCredentialInternal(LockscreenCredential.createNone(), profilePasswordMap.get(Integer.valueOf(managedUserId)), managedUserId, true);
                        this.mStorage.removeChildProfileLock(managedUserId);
                        removeKeystoreProfileKey(managedUserId);
                    } else {
                        Slog.wtf(TAG, "Attempt to clear tied challenge, but no password supplied.");
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isManagedProfileWithUnifiedLock(int userId) {
        return this.mUserManager.getUserInfo(userId).isManagedProfile() && !getSeparateProfileChallengeEnabledInternal(userId);
    }

    private boolean isManagedProfileWithSeparatedLock(int userId) {
        return this.mUserManager.getUserInfo(userId).isManagedProfile() && getSeparateProfileChallengeEnabledInternal(userId);
    }

    private void sendCredentialsOnUnlockIfRequired(LockscreenCredential credential, int userId) {
        if (userId == -9999 || isManagedProfileWithUnifiedLock(userId)) {
            return;
        }
        byte[] secret = credential.isNone() ? null : credential.getCredential();
        Iterator<Integer> it = getProfilesWithSameLockScreen(userId).iterator();
        while (it.hasNext()) {
            int profileId = it.next().intValue();
            this.mRecoverableKeyStoreManager.lockScreenSecretAvailable(credential.getType(), secret, profileId);
        }
    }

    private void sendCredentialsOnChangeIfRequired(LockscreenCredential credential, int userId, boolean isLockTiedToParent) {
        if (isLockTiedToParent) {
            return;
        }
        byte[] secret = credential.isNone() ? null : credential.getCredential();
        Iterator<Integer> it = getProfilesWithSameLockScreen(userId).iterator();
        while (it.hasNext()) {
            int profileId = it.next().intValue();
            this.mRecoverableKeyStoreManager.lockScreenSecretChanged(credential.getType(), secret, profileId);
        }
    }

    private Set<Integer> getProfilesWithSameLockScreen(int userId) {
        Set<Integer> profiles = new ArraySet<>();
        for (UserInfo profile : this.mUserManager.getProfiles(userId)) {
            if (profile.id == userId || (profile.profileGroupId == userId && isManagedProfileWithUnifiedLock(profile.id))) {
                profiles.add(Integer.valueOf(profile.id));
            }
        }
        return profiles;
    }

    public boolean setLockCredential(LockscreenCredential credential, LockscreenCredential savedCredential, int userId) {
        LockscreenCredential savedCredential2;
        if (!this.mHasSecureLockScreen) {
            throw new UnsupportedOperationException("This operation requires secure lock screen feature");
        }
        checkWritePermission(userId);
        enforceFrpResolved();
        if (!savedCredential.isNone() && isManagedProfileWithUnifiedLock(userId)) {
            verifyCredential(savedCredential, 0L, this.mUserManager.getProfileParent(userId).id);
            savedCredential.zeroize();
            savedCredential2 = LockscreenCredential.createNone();
        } else {
            savedCredential2 = savedCredential;
        }
        synchronized (this.mSeparateChallengeLock) {
            if (!setLockCredentialInternal(credential, savedCredential2, userId, false)) {
                scheduleGc();
                return false;
            }
            setSeparateProfileChallengeEnabledLocked(userId, true, null);
            notifyPasswordChanged(userId);
            if (this.mUserManager.getUserInfo(userId).isManagedProfile()) {
                setDeviceUnlockedForUser(userId);
            }
            notifySeparateProfileChallengeChanged(userId);
            scheduleGc();
            return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0093  */
    private boolean setLockCredentialInternal(LockscreenCredential credential, LockscreenCredential savedCredential, int userId, boolean isLockTiedToParent) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, UnrecoverableKeyException, IOException, InvalidKeyException, KeyStoreException, CertificateException, InvalidAlgorithmParameterException {
        LockscreenCredential savedCredential2;
        Objects.requireNonNull(credential);
        Objects.requireNonNull(savedCredential);
        synchronized (this.mSpManager) {
            if (isSyntheticPasswordBasedCredentialLocked(userId)) {
                return spBasedSetLockCredentialInternalLocked(credential, savedCredential, userId, isLockTiedToParent);
            }
            if (credential.isNone()) {
                clearUserKeyProtection(userId, null);
                gateKeeperClearSecureUserId(userId);
                this.mStorage.writeCredentialHash(LockSettingsStorage.CredentialHash.createEmptyHash(), userId);
                setKeyguardStoredQuality(0, userId);
                setKeystorePassword(null, userId);
                fixateNewestUserKeyAuth(userId);
                synchronizeUnifiedWorkChallengeForProfiles(userId, null);
                setUserPasswordMetrics(LockscreenCredential.createNone(), userId);
                sendCredentialsOnChangeIfRequired(credential, userId, isLockTiedToParent);
                return true;
            }
            LockSettingsStorage.CredentialHash currentHandle = this.mStorage.readCredentialHash(userId);
            if (isManagedProfileWithUnifiedLock(userId)) {
                if (savedCredential.isNone()) {
                    try {
                        savedCredential2 = getDecryptedPasswordForTiedProfile(userId);
                    } catch (FileNotFoundException e) {
                        Slog.i(TAG, "Child profile key not found");
                        savedCredential2 = savedCredential;
                    } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | CertificateException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e2) {
                        Slog.e(TAG, "Failed to decrypt child profile key", e2);
                        savedCredential2 = savedCredential;
                    }
                } else {
                    savedCredential2 = savedCredential;
                }
            } else if (currentHandle.hash == null) {
                if (!savedCredential.isNone()) {
                    Slog.w(TAG, "Saved credential provided, but none stored");
                }
                savedCredential.close();
                savedCredential2 = LockscreenCredential.createNone();
            } else {
                savedCredential2 = savedCredential;
            }
            synchronized (this.mSpManager) {
                if (shouldMigrateToSyntheticPasswordLocked(userId)) {
                    initializeSyntheticPasswordLocked(currentHandle.hash, savedCredential2, userId);
                    return spBasedSetLockCredentialInternalLocked(credential, savedCredential2, userId, isLockTiedToParent);
                }
                byte[] enrolledHandle = enrollCredential(currentHandle.hash, savedCredential2.getCredential(), credential.getCredential(), userId);
                if (enrolledHandle == null) {
                    Object[] objArr = new Object[1];
                    objArr[0] = credential.isPattern() ? "pattern" : "password";
                    Slog.w(TAG, String.format("Failed to enroll %s: incorrect credential", objArr));
                    return false;
                }
                LockSettingsStorage.CredentialHash willStore = LockSettingsStorage.CredentialHash.create(enrolledHandle, credential.getType());
                this.mStorage.writeCredentialHash(willStore, userId);
                setKeyguardStoredQuality(LockPatternUtils.credentialTypeToPasswordQuality(credential.getType()), userId);
                try {
                    try {
                        GateKeeperResponse gkResponse = getGateKeeperService().verifyChallenge(userId, 0L, willStore.hash, credential.getCredential());
                        setUserKeyProtection(userId, credential, convertResponse(gkResponse));
                        fixateNewestUserKeyAuth(userId);
                        doVerifyCredential(credential, 1, 0L, userId, null);
                        synchronizeUnifiedWorkChallengeForProfiles(userId, null);
                        sendCredentialsOnChangeIfRequired(credential, userId, isLockTiedToParent);
                        return true;
                    } catch (RemoteException e3) {
                        e = e3;
                        throw new IllegalStateException("Failed to verify current credential", e);
                    }
                } catch (RemoteException e4) {
                    e = e4;
                }
            }
        }
    }

    private VerifyCredentialResponse convertResponse(GateKeeperResponse gateKeeperResponse) {
        return VerifyCredentialResponse.fromGateKeeperResponse(gateKeeperResponse);
    }

    protected void tieProfileLockToParent(int userId, LockscreenCredential password) {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(new SecureRandom());
            SecretKey secretKey = keyGenerator.generateKey();
            java.security.KeyStore keyStore = java.security.KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            try {
                keyStore.setEntry("profile_key_name_encrypt_" + userId, new java.security.KeyStore.SecretKeyEntry(secretKey), new KeyProtection.Builder(1).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
                keyStore.setEntry("profile_key_name_decrypt_" + userId, new java.security.KeyStore.SecretKeyEntry(secretKey), new KeyProtection.Builder(2).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setUserAuthenticationRequired(true).setUserAuthenticationValidityDurationSeconds(30).setCriticalToDeviceEncryption(true).build());
                SecretKey keyStoreEncryptionKey = (SecretKey) keyStore.getKey("profile_key_name_encrypt_" + userId, null);
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(1, keyStoreEncryptionKey);
                byte[] encryptionResult = cipher.doFinal(password.getCredential());
                byte[] iv = cipher.getIV();
                keyStore.deleteEntry("profile_key_name_encrypt_" + userId);
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                try {
                    if (iv.length != 12) {
                        throw new IllegalArgumentException("Invalid iv length: " + iv.length);
                    }
                    outputStream.write(iv);
                    outputStream.write(encryptionResult);
                    this.mStorage.writeChildProfileLock(userId, outputStream.toByteArray());
                } catch (IOException e) {
                    throw new IllegalStateException("Failed to concatenate byte arrays", e);
                }
            } catch (Throwable th) {
                keyStore.deleteEntry("profile_key_name_encrypt_" + userId);
                throw th;
            }
        } catch (IOException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | CertificateException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e2) {
            throw new IllegalStateException("Failed to encrypt key", e2);
        }
    }

    private byte[] enrollCredential(byte[] enrolledHandle, byte[] enrolledCredential, byte[] toEnroll, int userId) {
        checkWritePermission(userId);
        try {
            GateKeeperResponse response = getGateKeeperService().enroll(userId, enrolledHandle, enrolledCredential, toEnroll);
            if (response == null) {
                return null;
            }
            byte[] hash = response.getPayload();
            if (hash == null) {
                Slog.e(TAG, "Throttled while enrolling a password");
            } else {
                setKeystorePassword(toEnroll, userId);
            }
            return hash;
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to enroll credential", e);
            return null;
        }
    }

    private void setAuthlessUserKeyProtection(int userId, byte[] key) {
        addUserKeyAuth(userId, null, key);
    }

    private void setUserKeyProtection(int userId, LockscreenCredential credential, VerifyCredentialResponse vcr) {
        if (vcr == null) {
            throw new IllegalArgumentException("Null response verifying a credential we just set");
        }
        if (vcr.getResponseCode() != 0) {
            throw new IllegalArgumentException("Non-OK response verifying a credential we just set " + vcr.getResponseCode());
        }
        byte[] token = vcr.getPayload();
        if (token == null) {
            throw new IllegalArgumentException("Empty payload verifying a credential we just set");
        }
        addUserKeyAuth(userId, token, secretFromCredential(credential));
    }

    private void clearUserKeyProtection(int userId, byte[] secret) {
        UserInfo userInfo = this.mUserManager.getUserInfo(userId);
        long callingId = Binder.clearCallingIdentity();
        try {
            try {
                this.mStorageManager.clearUserKeyAuth(userId, userInfo.serialNumber, (byte[]) null, secret);
                Binder.restoreCallingIdentity(callingId);
            } catch (RemoteException e) {
                throw new IllegalStateException("clearUserKeyAuth failed user=" + userId);
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(callingId);
            throw th;
        }
    }

    private static byte[] secretFromCredential(LockscreenCredential credential) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-512");
            byte[] personalization = "Android FBE credential hash".getBytes();
            digest.update(Arrays.copyOf(personalization, 128));
            digest.update(credential.getCredential());
            return digest.digest();
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("NoSuchAlgorithmException for SHA-512");
        }
    }

    private boolean isUserKeyUnlocked(int userId) {
        try {
            return this.mStorageManager.isUserKeyUnlocked(userId);
        } catch (RemoteException e) {
            Slog.e(TAG, "failed to check user key locked state", e);
            return false;
        }
    }

    private void unlockUserKey(int userId, byte[] token, byte[] secret) {
        UserInfo userInfo = this.mUserManager.getUserInfo(userId);
        try {
            this.mStorageManager.unlockUserKey(userId, userInfo.serialNumber, token, secret);
        } catch (RemoteException e) {
            throw new IllegalStateException("Failed to unlock user key " + userId, e);
        }
    }

    private void addUserKeyAuth(int userId, byte[] token, byte[] secret) {
        UserInfo userInfo = this.mUserManager.getUserInfo(userId);
        long callingId = Binder.clearCallingIdentity();
        try {
            try {
                this.mStorageManager.addUserKeyAuth(userId, userInfo.serialNumber, token, secret);
                Binder.restoreCallingIdentity(callingId);
            } catch (RemoteException e) {
                throw new IllegalStateException("Failed to add new key to vold " + userId, e);
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(callingId);
            throw th;
        }
    }

    private void fixateNewestUserKeyAuth(int userId) {
        long callingId = Binder.clearCallingIdentity();
        try {
            try {
                this.mStorageManager.fixateNewestUserKeyAuth(userId);
            } catch (RemoteException e) {
                Slog.w(TAG, "fixateNewestUserKeyAuth failed", e);
            }
        } finally {
            Binder.restoreCallingIdentity(callingId);
        }
    }

    public void resetKeyStore(int userId) {
        checkWritePermission(userId);
        List<UserInfo> profiles = this.mUserManager.getProfiles(userId);
        LockscreenCredential managedUserDecryptedPassword = null;
        int managedUserId = -1;
        for (UserInfo pi : profiles) {
            if (pi.isManagedProfile() && !getSeparateProfileChallengeEnabledInternal(pi.id) && this.mStorage.hasChildProfileLock(pi.id)) {
                if (managedUserId == -1) {
                    try {
                        managedUserDecryptedPassword = getDecryptedPasswordForTiedProfile(pi.id);
                        managedUserId = pi.id;
                    } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | CertificateException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
                        Slog.e(TAG, "Failed to decrypt child profile key", e);
                    }
                } else {
                    Slog.e(TAG, "More than one managed profile, uid1:" + managedUserId + ", uid2:" + pi.id);
                }
            }
        }
        try {
            for (int profileId : this.mUserManager.getProfileIdsWithDisabled(userId)) {
                for (int uid : SYSTEM_CREDENTIAL_UIDS) {
                    this.mKeyStore.clearUid(UserHandle.getUid(profileId, uid));
                }
            }
            if (managedUserId != -1 && managedUserDecryptedPassword != null) {
                tieProfileLockToParent(managedUserId, managedUserDecryptedPassword);
            }
            if (managedUserDecryptedPassword != null) {
                managedUserDecryptedPassword.zeroize();
            }
        } catch (Throwable th) {
            if (managedUserId != -1 && managedUserDecryptedPassword != null) {
                tieProfileLockToParent(managedUserId, managedUserDecryptedPassword);
            }
            throw th;
        }
    }

    public VerifyCredentialResponse checkCredential(LockscreenCredential credential, int userId, ICheckCredentialProgressCallback progressCallback) {
        checkPasswordReadPermission(userId);
        try {
            return doVerifyCredential(credential, 0, 0L, userId, progressCallback);
        } finally {
            scheduleGc();
        }
    }

    public VerifyCredentialResponse verifyCredential(LockscreenCredential credential, long challenge, int userId) {
        checkPasswordReadPermission(userId);
        int challengeType = 1;
        if (challenge == 0) {
            Slog.w(TAG, "VerifyCredential called with challenge=0");
            challengeType = 0;
        }
        try {
            return doVerifyCredential(credential, challengeType, challenge, userId, null);
        } finally {
            scheduleGc();
        }
    }

    private VerifyCredentialResponse doVerifyCredential(LockscreenCredential credential, int challengeType, long challenge, int userId, ICheckCredentialProgressCallback progressCallback) {
        return doVerifyCredential(credential, challengeType, challenge, userId, progressCallback, null);
    }

    private VerifyCredentialResponse doVerifyCredential(LockscreenCredential credential, int challengeType, long challenge, int userId, ICheckCredentialProgressCallback progressCallback, ArrayList<PendingResetLockout> resetLockouts) throws Throwable {
        if (credential == null || credential.isNone()) {
            throw new IllegalArgumentException("Credential can't be null or empty");
        }
        if (userId == -9999 && this.mInjector.settingsGlobalGetInt(this.mContext.getContentResolver(), "device_provisioned", 0) != 0) {
            Slog.e(TAG, "FRP credential can only be verified prior to provisioning.");
            return VerifyCredentialResponse.ERROR;
        }
        VerifyCredentialResponse response = spBasedDoVerifyCredential(credential, challengeType, challenge, userId, progressCallback, resetLockouts);
        if (response != null) {
            if (response.getResponseCode() == 0) {
                sendCredentialsOnUnlockIfRequired(credential, userId);
            }
            return response;
        }
        if (userId == -9999) {
            Slog.wtf(TAG, "Unexpected FRP credential type, should be SP based.");
            return VerifyCredentialResponse.ERROR;
        }
        LockSettingsStorage.CredentialHash storedHash = this.mStorage.readCredentialHash(userId);
        if (!credential.checkAgainstStoredType(storedHash.type)) {
            Slog.wtf(TAG, "doVerifyCredential type mismatch with stored credential?? stored: " + storedHash.type + " passed in: " + credential.getType());
            return VerifyCredentialResponse.ERROR;
        }
        VerifyCredentialResponse response2 = verifyCredential(userId, storedHash, credential, challengeType, challenge, progressCallback);
        if (response2.getResponseCode() == 0) {
            this.mStrongAuth.reportSuccessfulStrongAuthUnlock(userId);
        }
        return response2;
    }

    public VerifyCredentialResponse verifyTiedProfileChallenge(LockscreenCredential credential, long challenge, int userId) {
        checkPasswordReadPermission(userId);
        if (!isManagedProfileWithUnifiedLock(userId)) {
            throw new IllegalArgumentException("User id must be managed profile with unified lock");
        }
        int parentProfileId = this.mUserManager.getProfileParent(userId).id;
        VerifyCredentialResponse parentResponse = doVerifyCredential(credential, 1, challenge, parentProfileId, null);
        try {
            if (parentResponse.getResponseCode() != 0) {
                return parentResponse;
            }
            try {
                VerifyCredentialResponse verifyCredentialResponseDoVerifyCredential = doVerifyCredential(getDecryptedPasswordForTiedProfile(userId), 1, challenge, userId, null);
                scheduleGc();
                return verifyCredentialResponseDoVerifyCredential;
            } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | CertificateException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
                Slog.e(TAG, "Failed to decrypt child profile key", e);
                throw new IllegalStateException("Unable to get tied profile token");
            }
        } catch (Throwable th) {
            scheduleGc();
            throw th;
        }
    }

    private VerifyCredentialResponse verifyCredential(int userId, LockSettingsStorage.CredentialHash storedHash, LockscreenCredential credential, int challengeType, long challenge, ICheckCredentialProgressCallback progressCallback) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, UnrecoverableKeyException, IOException, InvalidKeyException, KeyStoreException, CertificateException, InvalidAlgorithmParameterException {
        GateKeeperResponse gateKeeperResponse;
        if ((storedHash == null || storedHash.hash.length == 0) && credential.isNone()) {
            return VerifyCredentialResponse.OK;
        }
        if (storedHash == null || storedHash.hash.length == 0 || credential.isNone()) {
            return VerifyCredentialResponse.ERROR;
        }
        StrictMode.noteDiskRead();
        try {
            gateKeeperResponse = getGateKeeperService().verifyChallenge(userId, challenge, storedHash.hash, credential.getCredential());
        } catch (RemoteException e) {
            Slog.e(TAG, "gatekeeper verify failed", e);
            gateKeeperResponse = GateKeeperResponse.ERROR;
        }
        VerifyCredentialResponse response = convertResponse(gateKeeperResponse);
        boolean shouldReEnroll = gateKeeperResponse.getShouldReEnroll();
        if (response.getResponseCode() == 0) {
            if (progressCallback != null) {
                try {
                    progressCallback.onCredentialVerified();
                } catch (RemoteException e2) {
                    Slog.w(TAG, "progressCallback throws exception", e2);
                }
            }
            setUserPasswordMetrics(credential, userId);
            unlockKeystore(credential.getCredential(), userId);
            Slog.i(TAG, "Unlocking user " + userId + " with token length " + response.getPayload().length);
            unlockUser(userId, response.getPayload(), secretFromCredential(credential));
            if (isManagedProfileWithSeparatedLock(userId)) {
                setDeviceUnlockedForUser(userId);
            }
            if (shouldReEnroll) {
                setLockCredentialInternal(credential, credential, userId, false);
            } else {
                synchronized (this.mSpManager) {
                    if (shouldMigrateToSyntheticPasswordLocked(userId)) {
                        SyntheticPasswordManager.AuthenticationToken auth = initializeSyntheticPasswordLocked(storedHash.hash, credential, userId);
                        activateEscrowTokens(auth, userId);
                    }
                }
            }
            sendCredentialsOnUnlockIfRequired(credential, userId);
        } else if (response.getResponseCode() == 1 && response.getTimeout() > 0) {
            requireStrongAuth(8, userId);
        }
        return response;
    }

    private void setUserPasswordMetrics(LockscreenCredential password, int userHandle) {
        synchronized (this) {
            this.mUserPasswordMetrics.put(userHandle, PasswordMetrics.computeForCredential(password));
        }
    }

    PasswordMetrics getUserPasswordMetrics(int userHandle) {
        PasswordMetrics passwordMetrics;
        if (!isUserSecure(userHandle)) {
            return new PasswordMetrics(-1);
        }
        synchronized (this) {
            passwordMetrics = this.mUserPasswordMetrics.get(userHandle);
        }
        return passwordMetrics;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PasswordMetrics loadPasswordMetrics(SyntheticPasswordManager.AuthenticationToken auth, int userHandle) {
        PasswordMetrics passwordMetrics;
        synchronized (this.mSpManager) {
            passwordMetrics = this.mSpManager.getPasswordMetrics(auth, getSyntheticPasswordHandleLocked(userHandle), userHandle);
        }
        return passwordMetrics;
    }

    private void notifyPasswordChanged(final int userId) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.locksettings.-$$Lambda$LockSettingsService$uLUdo5pAFhnR0hn-L5FUgWTjl70
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyPasswordChanged$2$LockSettingsService(userId);
            }
        });
    }

    public /* synthetic */ void lambda$notifyPasswordChanged$2$LockSettingsService(int userId) {
        this.mInjector.getDevicePolicyManager().reportPasswordChanged(userId);
        ((WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class)).reportPasswordChanged(userId);
    }

    private LockscreenCredential createPattern(String patternString) {
        byte[] patternBytes = patternString.getBytes();
        LockscreenCredential pattern = LockscreenCredential.createPattern(LockPatternUtils.byteArrayToPattern(patternBytes));
        Arrays.fill(patternBytes, (byte) 0);
        return pattern;
    }

    public boolean checkVoldPassword(int userId) {
        LockscreenCredential credential;
        if (!this.mFirstCallToVold) {
            return false;
        }
        this.mFirstCallToVold = false;
        checkPasswordReadPermission(userId);
        IStorageManager service = this.mInjector.getStorageManager();
        long identity = Binder.clearCallingIdentity();
        try {
            try {
                String password = service.getPassword();
                service.clearPassword();
                Binder.restoreCallingIdentity(identity);
                if (TextUtils.isEmpty(password)) {
                    return false;
                }
                try {
                    int credentialTypeInternal = getCredentialTypeInternal(userId);
                    if (credentialTypeInternal == 1) {
                        credential = createPattern(password);
                    } else if (credentialTypeInternal == 3) {
                        credential = LockscreenCredential.createPin(password);
                    } else if (credentialTypeInternal != 4) {
                        credential = null;
                        Slog.e(TAG, "Unknown credential type");
                    } else {
                        credential = LockscreenCredential.createPassword(password);
                    }
                    return credential != null && checkCredential(credential, userId, null).getResponseCode() == 0;
                } catch (Exception e) {
                    Slog.e(TAG, "checkVoldPassword failed: ", e);
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        } catch (RemoteException e2) {
            Slog.w(TAG, "vold getPassword() failed", e2);
            Binder.restoreCallingIdentity(identity);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUser(int userId, boolean unknownUser) {
        Slog.i(TAG, "RemoveUser: " + userId);
        this.mSpManager.removeUser(userId);
        this.mStrongAuth.removeUser(userId);
        KeyStore ks = KeyStore.getInstance();
        ks.onUserRemoved(userId);
        this.mManagedProfilePasswordCache.removePassword(userId);
        gateKeeperClearSecureUserId(userId);
        if (unknownUser || this.mUserManager.getUserInfo(userId).isManagedProfile()) {
            removeKeystoreProfileKey(userId);
        }
        this.mStorage.removeUser(userId);
    }

    private void removeKeystoreProfileKey(int targetUserId) {
        Slog.i(TAG, "Remove keystore profile key for user: " + targetUserId);
        try {
            java.security.KeyStore keyStore = java.security.KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            keyStore.deleteEntry("profile_key_name_encrypt_" + targetUserId);
            keyStore.deleteEntry("profile_key_name_decrypt_" + targetUserId);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            Slog.e(TAG, "Unable to remove keystore profile key for user:" + targetUserId, e);
        }
    }

    public void registerStrongAuthTracker(IStrongAuthTracker tracker) {
        checkPasswordReadPermission(-1);
        this.mStrongAuth.registerStrongAuthTracker(tracker);
    }

    public void unregisterStrongAuthTracker(IStrongAuthTracker tracker) {
        checkPasswordReadPermission(-1);
        this.mStrongAuth.unregisterStrongAuthTracker(tracker);
    }

    public void requireStrongAuth(int strongAuthReason, int userId) {
        checkWritePermission(userId);
        this.mStrongAuth.requireStrongAuth(strongAuthReason, userId);
    }

    public void reportSuccessfulBiometricUnlock(boolean isStrongBiometric, int userId) {
        checkBiometricPermission();
        this.mStrongAuth.reportSuccessfulBiometricUnlock(isStrongBiometric, userId);
    }

    public void scheduleNonStrongBiometricIdleTimeout(int userId) {
        checkBiometricPermission();
        this.mStrongAuth.scheduleNonStrongBiometricIdleTimeout(userId);
    }

    public void userPresent(int userId) {
        checkWritePermission(userId);
        this.mStrongAuth.reportUnlock(userId);
    }

    public int getStrongAuthForUser(int userId) {
        checkPasswordReadPermission(userId);
        return this.mStrongAuthTracker.getStrongAuthForUser(userId);
    }

    private boolean isCallerShell() {
        int callingUid = Binder.getCallingUid();
        return callingUid == 2000 || callingUid == 0;
    }

    private void enforceShell() {
        if (!isCallerShell()) {
            throw new SecurityException("Caller must be shell");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) throws Throwable {
        enforceShell();
        long origId = Binder.clearCallingIdentity();
        try {
            try {
                new LockSettingsShellCommand(new LockPatternUtils(this.mContext)).exec(this, in, out, err, args, callback, resultReceiver);
                Binder.restoreCallingIdentity(origId);
            } catch (Throwable th) {
                th = th;
                Binder.restoreCallingIdentity(origId);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void initRecoveryServiceWithSigFile(String rootCertificateAlias, byte[] recoveryServiceCertFile, byte[] recoveryServiceSigFile) throws RemoteException {
        this.mRecoverableKeyStoreManager.initRecoveryServiceWithSigFile(rootCertificateAlias, recoveryServiceCertFile, recoveryServiceSigFile);
    }

    public KeyChainSnapshot getKeyChainSnapshot() throws RemoteException {
        return this.mRecoverableKeyStoreManager.getKeyChainSnapshot();
    }

    public void setSnapshotCreatedPendingIntent(PendingIntent intent) throws RemoteException {
        this.mRecoverableKeyStoreManager.setSnapshotCreatedPendingIntent(intent);
    }

    public void setServerParams(byte[] serverParams) throws RemoteException {
        this.mRecoverableKeyStoreManager.setServerParams(serverParams);
    }

    public void setRecoveryStatus(String alias, int status) throws RemoteException {
        this.mRecoverableKeyStoreManager.setRecoveryStatus(alias, status);
    }

    public Map getRecoveryStatus() throws RemoteException {
        return this.mRecoverableKeyStoreManager.getRecoveryStatus();
    }

    public void setRecoverySecretTypes(int[] secretTypes) throws RemoteException {
        this.mRecoverableKeyStoreManager.setRecoverySecretTypes(secretTypes);
    }

    public int[] getRecoverySecretTypes() throws RemoteException {
        return this.mRecoverableKeyStoreManager.getRecoverySecretTypes();
    }

    public byte[] startRecoverySessionWithCertPath(String sessionId, String rootCertificateAlias, RecoveryCertPath verifierCertPath, byte[] vaultParams, byte[] vaultChallenge, List<KeyChainProtectionParams> secrets) throws RemoteException {
        return this.mRecoverableKeyStoreManager.startRecoverySessionWithCertPath(sessionId, rootCertificateAlias, verifierCertPath, vaultParams, vaultChallenge, secrets);
    }

    public Map<String, String> recoverKeyChainSnapshot(String sessionId, byte[] recoveryKeyBlob, List<WrappedApplicationKey> applicationKeys) throws RemoteException {
        return this.mRecoverableKeyStoreManager.recoverKeyChainSnapshot(sessionId, recoveryKeyBlob, applicationKeys);
    }

    public void closeSession(String sessionId) throws RemoteException {
        this.mRecoverableKeyStoreManager.closeSession(sessionId);
    }

    public void removeKey(String alias) throws RemoteException {
        this.mRecoverableKeyStoreManager.removeKey(alias);
    }

    public String generateKey(String alias) throws RemoteException {
        return this.mRecoverableKeyStoreManager.generateKey(alias);
    }

    public String generateKeyWithMetadata(String alias, byte[] metadata) throws RemoteException {
        return this.mRecoverableKeyStoreManager.generateKeyWithMetadata(alias, metadata);
    }

    public String importKey(String alias, byte[] keyBytes) throws RemoteException {
        return this.mRecoverableKeyStoreManager.importKey(alias, keyBytes);
    }

    public String importKeyWithMetadata(String alias, byte[] keyBytes, byte[] metadata) throws RemoteException {
        return this.mRecoverableKeyStoreManager.importKeyWithMetadata(alias, keyBytes, metadata);
    }

    public String getKey(String alias) throws RemoteException {
        return this.mRecoverableKeyStoreManager.getKey(alias);
    }

    private class GateKeeperDiedRecipient implements IBinder.DeathRecipient {
        private GateKeeperDiedRecipient() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            LockSettingsService.this.mGateKeeperService.asBinder().unlinkToDeath(this, 0);
            LockSettingsService.this.mGateKeeperService = null;
        }
    }

    protected synchronized IGateKeeperService getGateKeeperService() {
        if (this.mGateKeeperService != null) {
            return this.mGateKeeperService;
        }
        IBinder service = ServiceManager.getService("android.service.gatekeeper.IGateKeeperService");
        if (service != null) {
            try {
                service.linkToDeath(new GateKeeperDiedRecipient(), 0);
            } catch (RemoteException e) {
                Slog.w(TAG, " Unable to register death recipient", e);
            }
            IGateKeeperService iGateKeeperServiceAsInterface = IGateKeeperService.Stub.asInterface(service);
            this.mGateKeeperService = iGateKeeperServiceAsInterface;
            return iGateKeeperServiceAsInterface;
        }
        Slog.e(TAG, "Unable to acquire GateKeeperService");
        return null;
    }

    private void gateKeeperClearSecureUserId(int userId) {
        try {
            getGateKeeperService().clearSecureUserId(userId);
        } catch (RemoteException e) {
            Slog.w(TAG, "Failed to clear SID", e);
        }
    }

    private void onAuthTokenKnownForUser(int userId, SyntheticPasswordManager.AuthenticationToken auth) {
        if (this.mInjector.isGsiRunning()) {
            Slog.w(TAG, "Running in GSI; skipping calls to AuthSecret and RebootEscrow");
        } else {
            this.mRebootEscrowManager.callToRebootEscrowIfNeeded(userId, auth.getVersion(), auth.getSyntheticPassword());
            callToAuthSecretIfNeeded(userId, auth);
        }
    }

    private void callToAuthSecretIfNeeded(int userId, SyntheticPasswordManager.AuthenticationToken auth) {
        if (this.mAuthSecretService != null && this.mUserManager.getUserInfo(userId).isPrimary()) {
            try {
                byte[] rawSecret = auth.deriveVendorAuthSecret();
                ArrayList<Byte> secret = new ArrayList<>(rawSecret.length);
                for (byte b : rawSecret) {
                    secret.add(Byte.valueOf(b));
                }
                this.mAuthSecretService.primaryUserCredential(secret);
            } catch (RemoteException e) {
                Slog.w(TAG, "Failed to pass primary user secret to AuthSecret HAL", e);
            }
        }
    }

    protected SyntheticPasswordManager.AuthenticationToken initializeSyntheticPasswordLocked(byte[] credentialHash, LockscreenCredential credential, int userId) {
        Slog.i(TAG, "Initialize SyntheticPassword for user: " + userId);
        Preconditions.checkState(getSyntheticPasswordHandleLocked(userId) == 0, "Cannot reinitialize SP");
        SyntheticPasswordManager.AuthenticationToken auth = this.mSpManager.newSyntheticPasswordAndSid(getGateKeeperService(), credentialHash, credential, userId);
        if (auth == null) {
            Slog.wtf(TAG, "initializeSyntheticPasswordLocked returns null auth token");
            return null;
        }
        long handle = this.mSpManager.createPasswordBasedSyntheticPassword(getGateKeeperService(), credential, auth, userId);
        if (!credential.isNone()) {
            if (credentialHash == null) {
                this.mSpManager.newSidForUser(getGateKeeperService(), auth, userId);
            }
            this.mSpManager.verifyChallenge(getGateKeeperService(), auth, 0L, userId);
            setAuthlessUserKeyProtection(userId, auth.deriveDiskEncryptionKey());
            setKeystorePassword(auth.deriveKeyStorePassword(), userId);
        } else {
            clearUserKeyProtection(userId, null);
            setKeystorePassword(null, userId);
            gateKeeperClearSecureUserId(userId);
        }
        fixateNewestUserKeyAuth(userId);
        setSyntheticPasswordHandleLocked(handle, userId);
        onAuthTokenKnownForUser(userId, auth);
        return auth;
    }

    long getSyntheticPasswordHandleLocked(int userId) {
        return getLong("sp-handle", 0L, userId);
    }

    private void setSyntheticPasswordHandleLocked(long handle, int userId) {
        long oldHandle = getSyntheticPasswordHandleLocked(userId);
        setLong("sp-handle", handle, userId);
        setLong(PREV_SYNTHETIC_PASSWORD_HANDLE_KEY, oldHandle, userId);
        setLong(SYNTHETIC_PASSWORD_UPDATE_TIME_KEY, System.currentTimeMillis(), userId);
    }

    boolean isSyntheticPasswordBasedCredential(int userId) {
        boolean zIsSyntheticPasswordBasedCredentialLocked;
        synchronized (this.mSpManager) {
            zIsSyntheticPasswordBasedCredentialLocked = isSyntheticPasswordBasedCredentialLocked(userId);
        }
        return zIsSyntheticPasswordBasedCredentialLocked;
    }

    private boolean isSyntheticPasswordBasedCredentialLocked(int userId) {
        if (userId == -9999) {
            int type = this.mStorage.readPersistentDataBlock().type;
            return type == 1 || type == 2;
        }
        long handle = getSyntheticPasswordHandleLocked(userId);
        return handle != 0;
    }

    protected boolean shouldMigrateToSyntheticPasswordLocked(int userId) {
        return getSyntheticPasswordHandleLocked(userId) == 0;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0141 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.android.internal.widget.VerifyCredentialResponse spBasedDoVerifyCredential(com.android.internal.widget.LockscreenCredential r21, int r22, long r23, int r25, com.android.internal.widget.ICheckCredentialProgressCallback r26, java.util.ArrayList<com.android.server.locksettings.LockSettingsService.PendingResetLockout> r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.locksettings.LockSettingsService.spBasedDoVerifyCredential(com.android.internal.widget.LockscreenCredential, int, long, int, com.android.internal.widget.ICheckCredentialProgressCallback, java.util.ArrayList):com.android.internal.widget.VerifyCredentialResponse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCredentialVerified(SyntheticPasswordManager.AuthenticationToken authToken, int challengeType, long challenge, ArrayList<PendingResetLockout> resetLockouts, PasswordMetrics metrics, int userId) {
        if (metrics != null) {
            synchronized (this) {
                this.mUserPasswordMetrics.put(userId, metrics);
            }
        } else {
            Slog.wtf(TAG, "Null metrics after credential verification");
        }
        unlockKeystore(authToken.deriveKeyStorePassword(), userId);
        byte[] secret = authToken.deriveDiskEncryptionKey();
        unlockUser(userId, null, secret, challengeType, challenge, resetLockouts);
        Arrays.fill(secret, (byte) 0);
        activateEscrowTokens(authToken, userId);
        if (isManagedProfileWithSeparatedLock(userId)) {
            setDeviceUnlockedForUser(userId);
        }
        this.mStrongAuth.reportSuccessfulStrongAuthUnlock(userId);
        onAuthTokenKnownForUser(userId, authToken);
    }

    private void setDeviceUnlockedForUser(int userId) {
        TrustManager trustManager = (TrustManager) this.mContext.getSystemService(TrustManager.class);
        trustManager.setDeviceLockedForUser(userId, false);
    }

    private long setLockCredentialWithAuthTokenLocked(LockscreenCredential credential, SyntheticPasswordManager.AuthenticationToken auth, int userId) {
        Map<Integer, LockscreenCredential> profilePasswords;
        long newHandle = this.mSpManager.createPasswordBasedSyntheticPassword(getGateKeeperService(), credential, auth, userId);
        if (!credential.isNone()) {
            profilePasswords = null;
            if (this.mSpManager.hasSidForUser(userId)) {
                this.mSpManager.verifyChallenge(getGateKeeperService(), auth, 0L, userId);
            } else {
                this.mSpManager.newSidForUser(getGateKeeperService(), auth, userId);
                this.mSpManager.verifyChallenge(getGateKeeperService(), auth, 0L, userId);
                setAuthlessUserKeyProtection(userId, auth.deriveDiskEncryptionKey());
                fixateNewestUserKeyAuth(userId);
                setKeystorePassword(auth.deriveKeyStorePassword(), userId);
            }
        } else {
            profilePasswords = getDecryptedPasswordsForAllTiedProfiles(userId);
            this.mSpManager.clearSidForUser(userId);
            gateKeeperClearSecureUserId(userId);
            unlockUserKey(userId, null, auth.deriveDiskEncryptionKey());
            clearUserKeyProtection(userId, auth.deriveDiskEncryptionKey());
            fixateNewestUserKeyAuth(userId);
            unlockKeystore(auth.deriveKeyStorePassword(), userId);
            setKeystorePassword(null, userId);
            removeBiometricsForUser(userId);
        }
        setSyntheticPasswordHandleLocked(newHandle, userId);
        synchronizeUnifiedWorkChallengeForProfiles(userId, profilePasswords);
        setUserPasswordMetrics(credential, userId);
        this.mManagedProfilePasswordCache.removePassword(userId);
        if (profilePasswords != null) {
            for (Map.Entry<Integer, LockscreenCredential> entry : profilePasswords.entrySet()) {
                entry.getValue().zeroize();
            }
        }
        return newHandle;
    }

    private void removeBiometricsForUser(int userId) {
        removeAllFingerprintForUser(userId);
        removeAllFaceForUser(userId);
    }

    private void removeAllFingerprintForUser(int userId) {
        FingerprintManager mFingerprintManager = this.mInjector.getFingerprintManager();
        if (mFingerprintManager != null && mFingerprintManager.isHardwareDetected() && mFingerprintManager.hasEnrolledFingerprints(userId)) {
            mFingerprintManager.setActiveUser(userId);
            CountDownLatch latch = new CountDownLatch(1);
            Fingerprint finger = new Fingerprint((CharSequence) null, userId, 0, 0L);
            mFingerprintManager.remove(finger, userId, fingerprintManagerRemovalCallback(latch));
            try {
                latch.await(JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                Slog.e(TAG, "Latch interrupted when removing fingerprint", e);
            }
        }
    }

    private void removeAllFaceForUser(int userId) {
        FaceManager mFaceManager = this.mInjector.getFaceManager();
        if (mFaceManager != null && mFaceManager.isHardwareDetected() && mFaceManager.hasEnrolledTemplates(userId)) {
            mFaceManager.setActiveUser(userId);
            CountDownLatch latch = new CountDownLatch(1);
            Face face = new Face((CharSequence) null, 0, 0L);
            mFaceManager.remove(face, userId, faceManagerRemovalCallback(latch));
            try {
                latch.await(JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                Slog.e(TAG, "Latch interrupted when removing face", e);
            }
        }
    }

    private FingerprintManager.RemovalCallback fingerprintManagerRemovalCallback(final CountDownLatch latch) {
        return new FingerprintManager.RemovalCallback() { // from class: com.android.server.locksettings.LockSettingsService.4
            public void onRemovalError(Fingerprint fp, int errMsgId, CharSequence err) {
                Slog.e(LockSettingsService.TAG, String.format("Can't remove fingerprint %d in group %d. Reason: %s", Integer.valueOf(fp.getBiometricId()), Integer.valueOf(fp.getGroupId()), err));
                latch.countDown();
            }

            public void onRemovalSucceeded(Fingerprint fp, int remaining) {
                if (remaining == 0) {
                    latch.countDown();
                }
            }
        };
    }

    private FaceManager.RemovalCallback faceManagerRemovalCallback(final CountDownLatch latch) {
        return new FaceManager.RemovalCallback() { // from class: com.android.server.locksettings.LockSettingsService.5
            public void onRemovalError(Face face, int errMsgId, CharSequence err) {
                Slog.e(LockSettingsService.TAG, String.format("Can't remove face %d. Reason: %s", Integer.valueOf(face.getBiometricId()), err));
                latch.countDown();
            }

            public void onRemovalSucceeded(Face face, int remaining) {
                if (remaining == 0) {
                    latch.countDown();
                }
            }
        };
    }

    private boolean spBasedSetLockCredentialInternalLocked(LockscreenCredential credential, LockscreenCredential savedCredential, int userId, boolean isLockTiedToParent) {
        LockscreenCredential savedCredential2;
        if (savedCredential.isNone() && isManagedProfileWithUnifiedLock(userId)) {
            try {
                savedCredential2 = getDecryptedPasswordForTiedProfile(userId);
            } catch (FileNotFoundException e) {
                Slog.i(TAG, "Child profile key not found");
                savedCredential2 = savedCredential;
            } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | CertificateException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e2) {
                Slog.e(TAG, "Failed to decrypt child profile key", e2);
                savedCredential2 = savedCredential;
            }
        } else {
            savedCredential2 = savedCredential;
        }
        long handle = getSyntheticPasswordHandleLocked(userId);
        SyntheticPasswordManager.AuthenticationResult authResult = this.mSpManager.unwrapPasswordBasedSyntheticPassword(getGateKeeperService(), handle, savedCredential2, userId, null);
        VerifyCredentialResponse response = authResult.gkResponse;
        SyntheticPasswordManager.AuthenticationToken auth = authResult.authToken;
        if (auth == null) {
            if (response != null && response.getResponseCode() != -1) {
                if (response.getResponseCode() == 1) {
                    Slog.w(TAG, "Failed to enroll: rate limit exceeded.");
                    return false;
                }
                throw new IllegalStateException("password change failed");
            }
            Slog.w(TAG, "Failed to enroll: incorrect credential.");
            return false;
        }
        onAuthTokenKnownForUser(userId, auth);
        setLockCredentialWithAuthTokenLocked(credential, auth, userId);
        this.mSpManager.destroyPasswordBasedSyntheticPassword(handle, userId);
        sendCredentialsOnChangeIfRequired(credential, userId, isLockTiedToParent);
        return true;
    }

    public byte[] getHashFactor(LockscreenCredential currentCredential, int userId) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, UnrecoverableKeyException, IOException, InvalidKeyException, KeyStoreException, CertificateException, InvalidAlgorithmParameterException {
        checkPasswordReadPermission(userId);
        try {
            if (isManagedProfileWithUnifiedLock(userId)) {
                try {
                    currentCredential = getDecryptedPasswordForTiedProfile(userId);
                } catch (Exception e) {
                    Slog.e(TAG, "Failed to get work profile credential", e);
                    scheduleGc();
                    return null;
                }
            }
            synchronized (this.mSpManager) {
                if (!isSyntheticPasswordBasedCredentialLocked(userId)) {
                    Slog.w(TAG, "Synthetic password not enabled");
                    scheduleGc();
                    return null;
                }
                long handle = getSyntheticPasswordHandleLocked(userId);
                SyntheticPasswordManager.AuthenticationResult auth = this.mSpManager.unwrapPasswordBasedSyntheticPassword(getGateKeeperService(), handle, currentCredential, userId, null);
                if (auth.authToken == null) {
                    Slog.w(TAG, "Current credential is incorrect");
                    scheduleGc();
                    return null;
                }
                byte[] bArrDerivePasswordHashFactor = auth.authToken.derivePasswordHashFactor();
                scheduleGc();
                return bArrDerivePasswordHashFactor;
            }
        } catch (Throwable th) {
            scheduleGc();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long addEscrowToken(byte[] token, int userId, LockPatternUtils.EscrowTokenStateChangeCallback callback) {
        long handle;
        synchronized (this.mSpManager) {
            SyntheticPasswordManager.AuthenticationToken auth = null;
            if (!isUserSecure(userId)) {
                if (shouldMigrateToSyntheticPasswordLocked(userId)) {
                    auth = initializeSyntheticPasswordLocked(null, LockscreenCredential.createNone(), userId);
                } else {
                    long pwdHandle = getSyntheticPasswordHandleLocked(userId);
                    auth = this.mSpManager.unwrapPasswordBasedSyntheticPassword(getGateKeeperService(), pwdHandle, LockscreenCredential.createNone(), userId, null).authToken;
                }
            }
            if (isSyntheticPasswordBasedCredentialLocked(userId)) {
                disableEscrowTokenOnNonManagedDevicesIfNeeded(userId);
                if (!this.mSpManager.hasEscrowData(userId)) {
                    throw new SecurityException("Escrow token is disabled on the current user");
                }
            }
            handle = this.mSpManager.createTokenBasedSyntheticPassword(token, userId, callback);
            if (auth != null) {
                this.mSpManager.activateTokenBasedSyntheticPassword(handle, auth, userId);
            }
        }
        return handle;
    }

    private void activateEscrowTokens(SyntheticPasswordManager.AuthenticationToken auth, int userId) {
        synchronized (this.mSpManager) {
            disableEscrowTokenOnNonManagedDevicesIfNeeded(userId);
            Iterator<Long> it = this.mSpManager.getPendingTokensForUser(userId).iterator();
            while (it.hasNext()) {
                long handle = it.next().longValue();
                Slog.i(TAG, String.format("activateEscrowTokens: %x %d ", Long.valueOf(handle), Integer.valueOf(userId)));
                this.mSpManager.activateTokenBasedSyntheticPassword(handle, auth, userId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEscrowTokenActive(long handle, int userId) {
        boolean zExistsHandle;
        synchronized (this.mSpManager) {
            zExistsHandle = this.mSpManager.existsHandle(handle, userId);
        }
        return zExistsHandle;
    }

    public boolean hasPendingEscrowToken(int userId) {
        boolean z;
        checkPasswordReadPermission(userId);
        synchronized (this.mSpManager) {
            z = !this.mSpManager.getPendingTokensForUser(userId).isEmpty();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeEscrowToken(long handle, int userId) {
        synchronized (this.mSpManager) {
            if (handle == getSyntheticPasswordHandleLocked(userId)) {
                Slog.w(TAG, "Cannot remove password handle");
                return false;
            }
            if (this.mSpManager.removePendingToken(handle, userId)) {
                return true;
            }
            if (!this.mSpManager.existsHandle(handle, userId)) {
                return false;
            }
            this.mSpManager.destroyTokenBasedSyntheticPassword(handle, userId);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setLockCredentialWithToken(LockscreenCredential credential, long tokenHandle, byte[] token, final int userId) {
        boolean result;
        synchronized (this.mSpManager) {
            if (!this.mSpManager.hasEscrowData(userId)) {
                throw new SecurityException("Escrow token is disabled on the current user");
            }
            result = setLockCredentialWithTokenInternalLocked(credential, tokenHandle, token, userId);
        }
        if (result) {
            synchronized (this.mSeparateChallengeLock) {
                setSeparateProfileChallengeEnabledLocked(userId, true, null);
            }
            if (credential.isNone()) {
                this.mHandler.post(new Runnable() { // from class: com.android.server.locksettings.-$$Lambda$LockSettingsService$3iCV7W6YQrxOv5dDGr5Cx3toXr0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setLockCredentialWithToken$3$LockSettingsService(userId);
                    }
                });
            }
            notifyPasswordChanged(userId);
            notifySeparateProfileChallengeChanged(userId);
        }
        return result;
    }

    public /* synthetic */ void lambda$setLockCredentialWithToken$3$LockSettingsService(int userId) {
        unlockUser(userId, null, null);
    }

    private boolean setLockCredentialWithTokenInternalLocked(LockscreenCredential credential, long tokenHandle, byte[] token, int userId) {
        SyntheticPasswordManager.AuthenticationResult result = this.mSpManager.unwrapTokenBasedSyntheticPassword(getGateKeeperService(), tokenHandle, token, userId);
        if (result.authToken == null) {
            Slog.w(TAG, "Invalid escrow token supplied");
            return false;
        }
        if (result.gkResponse.getResponseCode() != 0) {
            Slog.e(TAG, "Obsolete token: synthetic password derived but it fails GK verification.");
            return false;
        }
        onAuthTokenKnownForUser(userId, result.authToken);
        long oldHandle = getSyntheticPasswordHandleLocked(userId);
        setLockCredentialWithAuthTokenLocked(credential, result.authToken, userId);
        this.mSpManager.destroyPasswordBasedSyntheticPassword(oldHandle, userId);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean unlockUserWithToken(long tokenHandle, byte[] token, int userId) {
        synchronized (this.mSpManager) {
            if (!this.mSpManager.hasEscrowData(userId)) {
                throw new SecurityException("Escrow token is disabled on the current user");
            }
            SyntheticPasswordManager.AuthenticationResult authResult = this.mSpManager.unwrapTokenBasedSyntheticPassword(getGateKeeperService(), tokenHandle, token, userId);
            if (authResult.authToken == null) {
                Slog.w(TAG, "Invalid escrow token supplied");
                return false;
            }
            onCredentialVerified(authResult.authToken, 0, 0L, null, loadPasswordMetrics(authResult.authToken, userId), userId);
            return true;
        }
    }

    public boolean tryUnlockWithCachedUnifiedChallenge(int userId) {
        LockscreenCredential cred = this.mManagedProfilePasswordCache.retrievePassword(userId);
        if (cred != null) {
            try {
                boolean z = doVerifyCredential(cred, 0, 0L, userId, null).getResponseCode() == 0;
                if (cred != null) {
                    cred.close();
                }
                return z;
            } catch (Throwable th) {
                if (cred != null) {
                    try {
                        cred.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (cred != null) {
            cred.close();
        }
        return false;
    }

    public void removeCachedUnifiedChallenge(int userId) {
        this.mManagedProfilePasswordCache.removePassword(userId);
    }

    static String timestampToString(long timestamp) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(timestamp));
    }

    private static String credentialTypeToString(int credentialType) {
        if (credentialType == -1) {
            return "None";
        }
        if (credentialType == 1) {
            return "Pattern";
        }
        if (credentialType == 3) {
            return "Pin";
        }
        if (credentialType == 4) {
            return "Password";
        }
        return "Unknown " + credentialType;
    }

    protected void dump(FileDescriptor fd, PrintWriter printWriter, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, printWriter)) {
            IndentingPrintWriter pw = new IndentingPrintWriter(printWriter, "  ");
            pw.println("Current lock settings service state:");
            pw.println();
            pw.println("User State:");
            pw.increaseIndent();
            List<UserInfo> users = this.mUserManager.getUsers();
            for (int user = 0; user < users.size(); user++) {
                int userId = users.get(user).id;
                pw.println("User " + userId);
                pw.increaseIndent();
                synchronized (this.mSpManager) {
                    pw.println(String.format("SP Handle: %x", Long.valueOf(getSyntheticPasswordHandleLocked(userId))));
                    pw.println(String.format("Last changed: %s (%x)", timestampToString(getLong(SYNTHETIC_PASSWORD_UPDATE_TIME_KEY, 0L, userId)), Long.valueOf(getLong(PREV_SYNTHETIC_PASSWORD_HANDLE_KEY, 0L, userId))));
                }
                try {
                    pw.println(String.format("SID: %x", Long.valueOf(getGateKeeperService().getSecureUserId(userId))));
                } catch (RemoteException e) {
                }
                pw.println("Quality: " + getKeyguardStoredQuality(userId));
                pw.println("CredentialType: " + credentialTypeToString(getCredentialTypeInternal(userId)));
                pw.println("SeparateChallenge: " + getSeparateProfileChallengeEnabledInternal(userId));
                Object[] objArr = new Object[1];
                objArr[0] = getUserPasswordMetrics(userId) != null ? "known" : UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
                pw.println(String.format("Metrics: %s", objArr));
                pw.decreaseIndent();
            }
            pw.println();
            pw.decreaseIndent();
            pw.println("Storage:");
            pw.increaseIndent();
            this.mStorage.dump(pw);
            pw.println();
            pw.decreaseIndent();
            pw.println("StrongAuth:");
            pw.increaseIndent();
            this.mStrongAuth.dump(pw);
            pw.println();
            pw.decreaseIndent();
            pw.println("RebootEscrow:");
            pw.increaseIndent();
            this.mRebootEscrowManager.dump(pw);
            pw.println();
            pw.decreaseIndent();
        }
    }

    private void disableEscrowTokenOnNonManagedDevicesIfNeeded(int userId) {
        UserManagerInternal userManagerInternal = this.mInjector.getUserManagerInternal();
        if (userManagerInternal.isUserManaged(userId)) {
            Slog.i(TAG, "Managed profile can have escrow token");
            return;
        }
        if (userManagerInternal.isDeviceManaged()) {
            Slog.i(TAG, "Corp-owned device can have escrow token");
            return;
        }
        if (!this.mInjector.getDeviceStateCache().isDeviceProvisioned()) {
            Slog.i(TAG, "Postpone disabling escrow tokens until device is provisioned");
            return;
        }
        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return;
        }
        Slog.i(TAG, "Disabling escrow token on user " + userId);
        if (isSyntheticPasswordBasedCredentialLocked(userId)) {
            this.mSpManager.destroyEscrowData(userId);
        }
    }

    private void scheduleGc() {
        this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.locksettings.-$$Lambda$LockSettingsService$RYXk-pEQUEGQzg20DHY1hVBg6R8
            @Override // java.lang.Runnable
            public final void run() {
                LockSettingsService.lambda$scheduleGc$4();
            }
        }, 2000L);
    }

    static /* synthetic */ void lambda$scheduleGc$4() {
        System.gc();
        System.runFinalization();
        System.gc();
    }

    private class DeviceProvisionedObserver extends ContentObserver {
        private final Uri mDeviceProvisionedUri;
        private boolean mRegistered;

        public DeviceProvisionedObserver() {
            super(null);
            this.mDeviceProvisionedUri = Settings.Global.getUriFor("device_provisioned");
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            if (this.mDeviceProvisionedUri.equals(uri)) {
                updateRegistration();
                if (isProvisioned()) {
                    Slog.i(LockSettingsService.TAG, "Reporting device setup complete to IGateKeeperService");
                    reportDeviceSetupComplete();
                    clearFrpCredentialIfOwnerNotSecure();
                }
            }
        }

        public void onSystemReady() {
            if (LockPatternUtils.frpCredentialEnabled(LockSettingsService.this.mContext)) {
                updateRegistration();
            } else if (!isProvisioned()) {
                Slog.i(LockSettingsService.TAG, "FRP credential disabled, reporting device setup complete to Gatekeeper immediately");
                reportDeviceSetupComplete();
            }
        }

        private void reportDeviceSetupComplete() {
            try {
                LockSettingsService.this.getGateKeeperService().reportDeviceSetupComplete();
            } catch (RemoteException e) {
                Slog.e(LockSettingsService.TAG, "Failure reporting to IGateKeeperService", e);
            }
        }

        private void clearFrpCredentialIfOwnerNotSecure() {
            List<UserInfo> users = LockSettingsService.this.mUserManager.getUsers();
            for (UserInfo user : users) {
                if (LockPatternUtils.userOwnsFrpCredential(LockSettingsService.this.mContext, user)) {
                    if (!LockSettingsService.this.isUserSecure(user.id)) {
                        LockSettingsService.this.mStorage.writePersistentDataBlock(0, user.id, 0, null);
                        return;
                    }
                    return;
                }
            }
        }

        private void updateRegistration() {
            boolean register = !isProvisioned();
            if (register == this.mRegistered) {
                return;
            }
            if (register) {
                LockSettingsService.this.mContext.getContentResolver().registerContentObserver(this.mDeviceProvisionedUri, false, this);
            } else {
                LockSettingsService.this.mContext.getContentResolver().unregisterContentObserver(this);
            }
            this.mRegistered = register;
        }

        private boolean isProvisioned() {
            return Settings.Global.getInt(LockSettingsService.this.mContext.getContentResolver(), "device_provisioned", 0) != 0;
        }
    }

    private final class LocalService extends LockSettingsInternal {
        private LocalService() {
        }

        public long addEscrowToken(byte[] token, int userId, LockPatternUtils.EscrowTokenStateChangeCallback callback) {
            return LockSettingsService.this.addEscrowToken(token, userId, callback);
        }

        public boolean removeEscrowToken(long handle, int userId) {
            return LockSettingsService.this.removeEscrowToken(handle, userId);
        }

        public boolean isEscrowTokenActive(long handle, int userId) {
            return LockSettingsService.this.isEscrowTokenActive(handle, userId);
        }

        public boolean setLockCredentialWithToken(LockscreenCredential credential, long tokenHandle, byte[] token, int userId) {
            if (LockSettingsService.this.mHasSecureLockScreen) {
                return LockSettingsService.this.setLockCredentialWithToken(credential, tokenHandle, token, userId);
            }
            throw new UnsupportedOperationException("This operation requires secure lock screen feature.");
        }

        public boolean unlockUserWithToken(long tokenHandle, byte[] token, int userId) {
            return LockSettingsService.this.unlockUserWithToken(tokenHandle, token, userId);
        }

        public PasswordMetrics getUserPasswordMetrics(int userHandle) {
            long identity = Binder.clearCallingIdentity();
            try {
                if (LockSettingsService.this.isManagedProfileWithUnifiedLock(userHandle)) {
                    Slog.w(LockSettingsService.TAG, "Querying password metrics for unified challenge profile: " + userHandle);
                }
                return LockSettingsService.this.getUserPasswordMetrics(userHandle);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public void prepareRebootEscrow() {
            if (LockSettingsService.this.mRebootEscrowManager.prepareRebootEscrow()) {
                LockSettingsService.this.mStrongAuth.requireStrongAuth(64, -1);
            }
        }

        public void setRebootEscrowListener(RebootEscrowListener listener) {
            LockSettingsService.this.mRebootEscrowManager.setRebootEscrowListener(listener);
        }

        public void clearRebootEscrow() {
            if (LockSettingsService.this.mRebootEscrowManager.clearRebootEscrow()) {
                LockSettingsService.this.mStrongAuth.noLongerRequireStrongAuth(64, -1);
            }
        }

        public boolean armRebootEscrow() {
            return LockSettingsService.this.mRebootEscrowManager.armRebootEscrowIfNeeded();
        }

        public void refreshStrongAuthTimeout(int userId) {
            LockSettingsService.this.mStrongAuth.refreshStrongAuthTimeout(userId);
        }
    }

    private class RebootEscrowCallbacks implements RebootEscrowManager.Callbacks {
        private RebootEscrowCallbacks() {
        }

        @Override // com.android.server.locksettings.RebootEscrowManager.Callbacks
        public boolean isUserSecure(int userId) {
            return LockSettingsService.this.isUserSecure(userId);
        }

        @Override // com.android.server.locksettings.RebootEscrowManager.Callbacks
        public void onRebootEscrowRestored(byte spVersion, byte[] syntheticPassword, int userId) {
            SyntheticPasswordManager.AuthenticationToken authToken = new SyntheticPasswordManager.AuthenticationToken(spVersion);
            authToken.recreateDirectly(syntheticPassword);
            LockSettingsService lockSettingsService = LockSettingsService.this;
            lockSettingsService.onCredentialVerified(authToken, 0, 0L, null, lockSettingsService.loadPasswordMetrics(authToken, userId), userId);
        }
    }
}
