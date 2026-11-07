package com.android.server.devicepolicy;

import android.R;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityTaskManager;
import android.app.ActivityThread;
import android.app.AlarmManager;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.BroadcastOptions;
import android.app.IActivityManager;
import android.app.IActivityTaskManager;
import android.app.IApplicationThread;
import android.app.IServiceConnection;
import android.app.IStopUserCallback;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.admin.DeviceAdminInfo;
import android.app.admin.DevicePolicyCache;
import android.app.admin.DevicePolicyEventLogger;
import android.app.admin.DevicePolicyManagerInternal;
import android.app.admin.DeviceStateCache;
import android.app.admin.FactoryResetProtectionPolicy;
import android.app.admin.NetworkEvent;
import android.app.admin.PasswordMetrics;
import android.app.admin.PasswordPolicy;
import android.app.admin.SecurityLog;
import android.app.admin.StartInstallingUpdateCallback;
import android.app.admin.SystemUpdateInfo;
import android.app.admin.SystemUpdatePolicy;
import android.app.backup.IBackupManager;
import android.app.trust.TrustManager;
import android.app.usage.UsageStatsManagerInternal;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.PermissionChecker;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.CrossProfileApps;
import android.content.pm.CrossProfileAppsInternal;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.content.pm.PermissionInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.StringParceledListSlice;
import android.content.pm.SuspendDialogInfo;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Icon;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.IAudioService;
import android.net.ConnectivityManager;
import android.net.IIpConnectivityMetrics;
import android.net.NetworkUtils;
import android.net.ProxyInfo;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.PersistableBundle;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.Process;
import android.os.RecoverySystem;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.UserManagerInternal;
import android.os.storage.StorageManager;
import android.permission.IPermissionManager;
import android.permission.PermissionControllerManager;
import android.provider.ContactsContract;
import android.provider.ContactsInternal;
import android.provider.Settings;
import android.provider.Telephony;
import android.security.IKeyChainAliasCallback;
import android.security.IKeyChainService;
import android.security.KeyChain;
import android.security.keymaster.KeymasterCertificateChain;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.ParcelableKeyGenParameterSpec;
import android.service.persistentdata.PersistentDataBlockManager;
import android.telephony.TelephonyManager;
import android.telephony.data.ApnSetting;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Xml;
import android.view.IWindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.IAccessibilityManager;
import android.view.inputmethod.InputMethodInfo;
import com.android.internal.compat.IPlatformCompat;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.os.BackgroundThread;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.telephony.SmsApplication;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.JournaledFile;
import com.android.internal.util.Preconditions;
import com.android.internal.util.StatLogger;
import com.android.internal.util.XmlUtils;
import com.android.internal.widget.LockPatternUtils;
import com.android.internal.widget.LockSettingsInternal;
import com.android.internal.widget.LockscreenCredential;
import com.android.internal.widget.PasswordValidationError;
import com.android.server.BatteryService;
import com.android.server.LocalServices;
import com.android.server.LockGuard;
import com.android.server.PersistentDataBlockManagerInternal;
import com.android.server.SystemServerInitThreadPool;
import com.android.server.SystemService;
import com.android.server.UiModeManagerService;
import com.android.server.connectivity.NetworkAgentInfo;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.hdmi.HdmiCecKeycode;
import com.android.server.inputmethod.InputMethodManagerInternal;
import com.android.server.job.controllers.JobStatus;
import com.android.server.net.NetworkPolicyManagerInternal;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.RestrictionsSet;
import com.android.server.pm.UserRestrictionsUtils;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.power.backlight.BackLightSettings;
import com.android.server.storage.DeviceStorageMonitorInternal;
import com.android.server.uri.NeededUriGrants;
import com.android.server.uri.UriGrantsManagerInternal;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.ActivityTaskManagerService;
import com.google.android.collect.Sets;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.text.DateFormat;
import java.time.LocalDate;
import java.time.chrono.ChronoLocalDate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class DevicePolicyManagerService extends BaseIDevicePolicyManager {
    private static final String AB_DEVICE_KEY = "ro.build.ab_update";
    private static final String ACTION_EXPIRED_PASSWORD_NOTIFICATION = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION";
    static final String ACTION_PROFILE_OFF_DEADLINE = "com.android.server.ACTION_PROFILE_OFF_DEADLINE";
    static final String ACTION_TURN_PROFILE_ON_NOTIFICATION = "com.android.server.ACTION_TURN_PROFILE_ON_NOTIFICATION";
    private static final long ADMIN_APP_PASSWORD_COMPLEXITY = 123562444;
    private static final String ATTR_ALIAS = "alias";
    private static final String ATTR_APPLICATION_RESTRICTIONS_MANAGER = "application-restrictions-manager";
    private static final String ATTR_DELEGATED_CERT_INSTALLER = "delegated-cert-installer";
    private static final String ATTR_DEVICE_PAIRED = "device-paired";
    private static final String ATTR_DEVICE_PROVISIONING_CONFIG_APPLIED = "device-provisioning-config-applied";
    private static final String ATTR_DISABLED = "disabled";
    private static final String ATTR_ID = "id";
    private static final String ATTR_NAME = "name";
    private static final String ATTR_PERMISSION_POLICY = "permission-policy";
    private static final String ATTR_PERMISSION_PROVIDER = "permission-provider";
    private static final String ATTR_PROVISIONING_STATE = "provisioning-state";
    private static final String ATTR_SETUP_COMPLETE = "setup-complete";
    private static final String ATTR_VALUE = "value";
    private static final String CALLED_FROM_PARENT = "calledFromParent";
    private static final Set<Integer> DA_DISALLOWED_POLICIES;
    private static final String[] DELEGATIONS;
    private static final Set<String> DEPRECATED_USER_RESTRICTIONS;
    private static final int DEVICE_ADMIN_DEACTIVATE_TIMEOUT = 10000;
    private static final List<String> DEVICE_OWNER_DELEGATIONS;
    private static final String DEVICE_POLICIES_XML = "device_policies.xml";
    private static final String DO_NOT_ASK_CREDENTIALS_ON_BOOT_XML = "do-not-ask-credentials-on-boot";
    private static final boolean ENABLE_LOCK_GUARD = true;
    private static final List<String> EXCLUSIVE_DELEGATIONS;
    private static final long EXPIRATION_GRACE_PERIOD_MS;
    private static final Set<String> GLOBAL_SETTINGS_DEPRECATED;
    private static final Set<String> GLOBAL_SETTINGS_WHITELIST;
    protected static final String LOG_TAG = "DevicePolicyManager";
    private static final String LOG_TAG_DEVICE_OWNER = "device-owner";
    private static final String LOG_TAG_PROFILE_OWNER = "profile-owner";
    private static final long MANAGED_PROFILE_MAXIMUM_TIME_OFF_THRESHOLD;
    private static final long MANAGED_PROFILE_OFF_WARNING_PERIOD;
    private static final int MAX_LONG_SUPPORT_MESSAGE_LENGTH = 20000;
    private static final int MAX_ORG_NAME_LENGTH = 200;
    private static final int MAX_PACKAGE_NAME_LENGTH = 223;
    private static final int MAX_POLICY_STRING_LENGTH = 65535;
    private static final int MAX_SHORT_SUPPORT_MESSAGE_LENGTH = 200;
    private static final long MINIMUM_STRONG_AUTH_TIMEOUT_MS;
    private static final long MS_PER_DAY;
    private static final String NOT_CALLED_FROM_PARENT = "notCalledFromParent";
    private static final int PROFILE_KEYGUARD_FEATURES = 440;
    private static final int PROFILE_KEYGUARD_FEATURES_PROFILE_ONLY = 8;
    private static final int PROFILE_OFF_DEADLINE_DEFAULT = 0;
    private static final int PROFILE_OFF_DEADLINE_REACHED = 2;
    private static final int PROFILE_OFF_DEADLINE_WARNING = 1;
    private static final String PROPERTY_ORGANIZATION_OWNED = "ro.organization_owned";
    private static final int REQUEST_EXPIRE_PASSWORD = 5571;
    private static final int REQUEST_PROFILE_OFF_DEADLINE = 5572;
    private static final Set<String> SECURE_SETTINGS_DEVICEOWNER_WHITELIST;
    private static final Set<String> SECURE_SETTINGS_WHITELIST;
    private static final int STATUS_BAR_DISABLE2_MASK = 1;
    private static final int STATUS_BAR_DISABLE_MASK = 34013184;
    private static final Set<String> SYSTEM_SETTINGS_WHITELIST;
    private static final String TAG_ACCEPTED_CA_CERTIFICATES = "accepted-ca-certificate";
    private static final String TAG_ADMIN_BROADCAST_PENDING = "admin-broadcast-pending";
    private static final String TAG_AFFILIATION_ID = "affiliation-id";
    private static final String TAG_APPS_SUSPENDED = "apps-suspended";
    private static final String TAG_CURRENT_INPUT_METHOD_SET = "current-ime-set";
    private static final String TAG_INITIALIZATION_BUNDLE = "initialization-bundle";
    private static final String TAG_LAST_BUG_REPORT_REQUEST = "last-bug-report-request";
    private static final String TAG_LAST_NETWORK_LOG_RETRIEVAL = "last-network-log-retrieval";
    private static final String TAG_LAST_SECURITY_LOG_RETRIEVAL = "last-security-log-retrieval";
    private static final String TAG_LOCK_TASK_COMPONENTS = "lock-task-component";
    private static final String TAG_LOCK_TASK_FEATURES = "lock-task-features";
    private static final String TAG_OWNER_INSTALLED_CA_CERT = "owner-installed-ca-cert";
    private static final String TAG_PASSWORD_TOKEN_HANDLE = "password-token";
    private static final String TAG_PASSWORD_VALIDITY = "password-validity";
    private static final String TAG_PROTECTED_PACKAGES = "protected-packages";
    private static final String TAG_SECONDARY_LOCK_SCREEN = "secondary-lock-screen";
    private static final String TAG_STATUS_BAR = "statusbar";
    private static final String TAG_TRANSFER_OWNERSHIP_BUNDLE = "transfer-ownership-bundle";
    private static final String TRANSFER_OWNERSHIP_PARAMETERS_XML = "transfer-ownership-parameters.xml";
    private static final int UNATTENDED_MANAGED_KIOSK_MS = 30000;
    private static final long USE_SET_LOCATION_ENABLED = 117835097;
    private static final boolean VERBOSE_LOG = false;
    final Handler mBackgroundHandler;
    private final CertificateMonitor mCertificateMonitor;
    private DevicePolicyConstants mConstants;
    private final DevicePolicyConstantsObserver mConstantsObserver;
    final Context mContext;
    private final DeviceAdminServiceController mDeviceAdminServiceController;
    final Handler mHandler;
    final boolean mHasFeature;
    final boolean mHasTelephonyFeature;
    final IPackageManager mIPackageManager;
    final IPermissionManager mIPermissionManager;
    private final IPlatformCompat mIPlatformCompat;
    final Injector mInjector;
    private final boolean mIsAutomotive;
    final boolean mIsWatch;
    final LocalService mLocalService;
    private final Object mLockDoNoUseDirectly;
    private final LockPatternUtils mLockPatternUtils;
    private final LockSettingsInternal mLockSettingsInternal;
    private NetworkLogger mNetworkLogger;
    private final OverlayPackagesProvider mOverlayPackagesProvider;
    final Owners mOwners;
    private final Set<Pair<String, Integer>> mPackagesToRemove;
    private final DevicePolicyCacheImpl mPolicyCache;
    final BroadcastReceiver mReceiver;
    private final BroadcastReceiver mRemoteBugreportConsentReceiver;
    private final BroadcastReceiver mRemoteBugreportFinishedReceiver;
    private final AtomicBoolean mRemoteBugreportServiceIsActive;
    private final AtomicBoolean mRemoteBugreportSharingAccepted;
    private final Runnable mRemoteBugreportTimeoutRunnable;
    private final SecurityLogMonitor mSecurityLogMonitor;
    private final SetupContentObserver mSetupContentObserver;
    private final StatLogger mStatLogger;
    private final DeviceStateCacheImpl mStateCache;
    final TelephonyManager mTelephonyManager;
    private final Binder mToken;
    final TransferOwnershipMetadataManager mTransferOwnershipMetadataManager;
    final UsageStatsManagerInternal mUsageStatsManagerInternal;
    final SparseArray<DevicePolicyData> mUserData;
    final UserManager mUserManager;
    final UserManagerInternal mUserManagerInternal;

    interface Stats {
        public static final int COUNT = 1;
        public static final int LOCK_GUARD_GUARD = 0;
    }

    static {
        long millis = TimeUnit.DAYS.toMillis(1L);
        MS_PER_DAY = millis;
        EXPIRATION_GRACE_PERIOD_MS = 5 * millis;
        MANAGED_PROFILE_MAXIMUM_TIME_OFF_THRESHOLD = 3 * millis;
        MANAGED_PROFILE_OFF_WARNING_PERIOD = millis * 1;
        DELEGATIONS = new String[]{"delegation-cert-install", "delegation-app-restrictions", "delegation-block-uninstall", "delegation-enable-system-app", "delegation-keep-uninstalled-packages", "delegation-package-access", "delegation-permission-grant", "delegation-install-existing-package", "delegation-keep-uninstalled-packages", "delegation-network-logging", "delegation-cert-selection"};
        DEVICE_OWNER_DELEGATIONS = Arrays.asList("delegation-network-logging");
        EXCLUSIVE_DELEGATIONS = Arrays.asList("delegation-network-logging", "delegation-cert-selection");
        ArraySet arraySet = new ArraySet();
        SECURE_SETTINGS_WHITELIST = arraySet;
        arraySet.add("default_input_method");
        SECURE_SETTINGS_WHITELIST.add("skip_first_use_hints");
        SECURE_SETTINGS_WHITELIST.add("install_non_market_apps");
        ArraySet arraySet2 = new ArraySet();
        SECURE_SETTINGS_DEVICEOWNER_WHITELIST = arraySet2;
        arraySet2.addAll(SECURE_SETTINGS_WHITELIST);
        SECURE_SETTINGS_DEVICEOWNER_WHITELIST.add("location_mode");
        ArraySet arraySet3 = new ArraySet();
        GLOBAL_SETTINGS_WHITELIST = arraySet3;
        arraySet3.add("adb_enabled");
        GLOBAL_SETTINGS_WHITELIST.add("adb_wifi_enabled");
        GLOBAL_SETTINGS_WHITELIST.add("auto_time");
        GLOBAL_SETTINGS_WHITELIST.add("auto_time_zone");
        GLOBAL_SETTINGS_WHITELIST.add("data_roaming");
        GLOBAL_SETTINGS_WHITELIST.add("usb_mass_storage_enabled");
        GLOBAL_SETTINGS_WHITELIST.add("wifi_sleep_policy");
        GLOBAL_SETTINGS_WHITELIST.add("stay_on_while_plugged_in");
        GLOBAL_SETTINGS_WHITELIST.add("wifi_device_owner_configs_lockdown");
        GLOBAL_SETTINGS_WHITELIST.add("private_dns_mode");
        GLOBAL_SETTINGS_WHITELIST.add("private_dns_specifier");
        ArraySet arraySet4 = new ArraySet();
        GLOBAL_SETTINGS_DEPRECATED = arraySet4;
        arraySet4.add("bluetooth_on");
        GLOBAL_SETTINGS_DEPRECATED.add("development_settings_enabled");
        GLOBAL_SETTINGS_DEPRECATED.add("mode_ringer");
        GLOBAL_SETTINGS_DEPRECATED.add("network_preference");
        GLOBAL_SETTINGS_DEPRECATED.add("wifi_on");
        ArraySet arraySet5 = new ArraySet();
        SYSTEM_SETTINGS_WHITELIST = arraySet5;
        arraySet5.add("screen_brightness");
        SYSTEM_SETTINGS_WHITELIST.add("screen_brightness_float");
        SYSTEM_SETTINGS_WHITELIST.add("screen_brightness_mode");
        SYSTEM_SETTINGS_WHITELIST.add("screen_off_timeout");
        ArraySet arraySet6 = new ArraySet();
        DA_DISALLOWED_POLICIES = arraySet6;
        arraySet6.add(8);
        DA_DISALLOWED_POLICIES.add(9);
        DA_DISALLOWED_POLICIES.add(6);
        DA_DISALLOWED_POLICIES.add(0);
        DEPRECATED_USER_RESTRICTIONS = Sets.newHashSet(new String[]{"no_add_managed_profile", "no_remove_managed_profile"});
        MINIMUM_STRONG_AUTH_TIMEOUT_MS = TimeUnit.HOURS.toMillis(1L);
    }

    final Object getLockObject() {
        long start = this.mStatLogger.getTime();
        LockGuard.guard(7);
        this.mStatLogger.logDurationStat(0, start);
        return this.mLockDoNoUseDirectly;
    }

    final void ensureLocked() {
        if (Thread.holdsLock(this.mLockDoNoUseDirectly)) {
            return;
        }
        Slog.wtfStack(LOG_TAG, "Not holding DPMS lock.");
    }

    public static final class Lifecycle extends SystemService {
        private BaseIDevicePolicyManager mService;

        public Lifecycle(Context context) {
            super(context);
            String dpmsClassName = context.getResources().getString(R.string.config_extensionFallbackPackageName);
            dpmsClassName = TextUtils.isEmpty(dpmsClassName) ? DevicePolicyManagerService.class.getName() : dpmsClassName;
            try {
                this.mService = (BaseIDevicePolicyManager) Class.forName(dpmsClassName).getConstructor(Context.class).newInstance(context);
            } catch (Exception e) {
                throw new IllegalStateException("Failed to instantiate DevicePolicyManagerService with class name: " + dpmsClassName, e);
            }
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            publishBinderService("device_policy", this.mService);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            this.mService.systemReady(phase);
        }

        @Override // com.android.server.SystemService
        public void onStartUser(int userHandle) {
            this.mService.handleStartUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onUnlockUser(int userHandle) {
            this.mService.handleUnlockUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onStopUser(int userHandle) {
            this.mService.handleStopUser(userHandle);
        }
    }

    public static class DevicePolicyData {
        int mPermissionPolicy;
        ComponentName mRestrictionsProvider;
        int mUserHandle;
        int mUserProvisioningState;
        int mFailedPasswordAttempts = 0;
        boolean mPasswordValidAtLastCheckpoint = true;
        int mPasswordOwner = -1;
        long mLastMaximumTimeToLock = -1;
        boolean mUserSetupComplete = false;
        boolean mPaired = false;
        boolean mDeviceProvisioningConfigApplied = false;
        final ArrayMap<ComponentName, ActiveAdmin> mAdminMap = new ArrayMap<>();
        final ArrayList<ActiveAdmin> mAdminList = new ArrayList<>();
        final ArrayList<ComponentName> mRemovingAdmins = new ArrayList<>();
        final ArraySet<String> mAcceptedCaCertificates = new ArraySet<>();
        List<String> mLockTaskPackages = new ArrayList();
        List<String> mUserControlDisabledPackages = new ArrayList();
        int mLockTaskFeatures = 16;
        boolean mStatusBarDisabled = false;
        final ArrayMap<String, List<String>> mDelegationMap = new ArrayMap<>();
        boolean doNotAskCredentialsOnBoot = false;
        Set<String> mAffiliationIds = new ArraySet();
        long mLastSecurityLogRetrievalTime = -1;
        long mLastBugReportRequestTime = -1;
        long mLastNetworkLogsRetrievalTime = -1;
        boolean mCurrentInputMethodSet = false;
        boolean mSecondaryLockscreenEnabled = false;
        Set<String> mOwnerInstalledCaCerts = new ArraySet();
        boolean mAdminBroadcastPending = false;
        PersistableBundle mInitBundle = null;
        long mPasswordTokenHandle = 0;
        boolean mAppsSuspended = false;

        public DevicePolicyData(int userHandle) {
            this.mUserHandle = userHandle;
        }
    }

    protected static class RestrictionsListener implements UserManagerInternal.UserRestrictionsListener {
        private Context mContext;

        public RestrictionsListener(Context context) {
            this.mContext = context;
        }

        @Override // android.os.UserManagerInternal.UserRestrictionsListener
        public void onUserRestrictionsChanged(int userId, Bundle newRestrictions, Bundle prevRestrictions) {
            boolean newlyDisallowed = newRestrictions.getBoolean("no_sharing_into_profile");
            boolean previouslyDisallowed = prevRestrictions.getBoolean("no_sharing_into_profile");
            boolean restrictionChanged = newlyDisallowed != previouslyDisallowed;
            if (restrictionChanged) {
                Intent intent = new Intent("android.app.action.DATA_SHARING_RESTRICTION_CHANGED");
                intent.setPackage(DevicePolicyManagerService.getManagedProvisioningPackage(this.mContext));
                intent.putExtra("android.intent.extra.USER_ID", userId);
                intent.addFlags(AudioFormat.EVRC);
                this.mContext.sendBroadcastAsUser(intent, UserHandle.SYSTEM);
            }
        }
    }

    static class ActiveAdmin {
        private static final String ATTR_LAST_NETWORK_LOGGING_NOTIFICATION = "last-notification";
        private static final String ATTR_NUM_NETWORK_LOGGING_NOTIFICATIONS = "num-notifications";
        private static final String ATTR_VALUE = "value";
        static final int DEF_KEYGUARD_FEATURES_DISABLED = 0;
        static final int DEF_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE = 0;
        static final int DEF_MAXIMUM_NETWORK_LOGGING_NOTIFICATIONS_SHOWN = 2;
        static final long DEF_MAXIMUM_TIME_TO_UNLOCK = 0;
        static final int DEF_ORGANIZATION_COLOR = Color.parseColor("#00796B");
        static final long DEF_PASSWORD_EXPIRATION_DATE = 0;
        static final long DEF_PASSWORD_EXPIRATION_TIMEOUT = 0;
        static final int DEF_PASSWORD_HISTORY_LENGTH = 0;
        private static final String TAG_ACCOUNT_TYPE = "account-type";
        private static final String TAG_ALWAYS_ON_VPN_LOCKDOWN = "vpn-lockdown";
        private static final String TAG_ALWAYS_ON_VPN_PACKAGE = "vpn-package";
        private static final String TAG_COMMON_CRITERIA_MODE = "common-criteria-mode";
        private static final String TAG_CROSS_PROFILE_CALENDAR_PACKAGES = "cross-profile-calendar-packages";
        private static final String TAG_CROSS_PROFILE_CALENDAR_PACKAGES_NULL = "cross-profile-calendar-packages-null";
        private static final String TAG_CROSS_PROFILE_PACKAGES = "cross-profile-packages";
        private static final String TAG_CROSS_PROFILE_WIDGET_PROVIDERS = "cross-profile-widget-providers";
        private static final String TAG_DEFAULT_ENABLED_USER_RESTRICTIONS = "default-enabled-user-restrictions";
        private static final String TAG_DISABLE_ACCOUNT_MANAGEMENT = "disable-account-management";
        private static final String TAG_DISABLE_BLUETOOTH_CONTACT_SHARING = "disable-bt-contacts-sharing";
        private static final String TAG_DISABLE_CALLER_ID = "disable-caller-id";
        private static final String TAG_DISABLE_CAMERA = "disable-camera";
        private static final String TAG_DISABLE_CONTACTS_SEARCH = "disable-contacts-search";
        private static final String TAG_DISABLE_KEYGUARD_FEATURES = "disable-keyguard-features";
        private static final String TAG_DISABLE_SCREEN_CAPTURE = "disable-screen-capture";
        private static final String TAG_ENCRYPTION_REQUESTED = "encryption-requested";
        private static final String TAG_END_USER_SESSION_MESSAGE = "end_user_session_message";
        private static final String TAG_FACTORY_RESET_PROTECTION_POLICY = "factory_reset_protection_policy";
        private static final String TAG_FORCE_EPHEMERAL_USERS = "force_ephemeral_users";
        private static final String TAG_GLOBAL_PROXY_EXCLUSION_LIST = "global-proxy-exclusion-list";
        private static final String TAG_GLOBAL_PROXY_SPEC = "global-proxy-spec";
        private static final String TAG_IS_LOGOUT_ENABLED = "is_logout_enabled";
        private static final String TAG_IS_NETWORK_LOGGING_ENABLED = "is_network_logging_enabled";
        private static final String TAG_KEEP_UNINSTALLED_PACKAGES = "keep-uninstalled-packages";
        private static final String TAG_LONG_SUPPORT_MESSAGE = "long-support-message";
        private static final String TAG_MANAGE_TRUST_AGENT_FEATURES = "manage-trust-agent-features";
        private static final String TAG_MAX_FAILED_PASSWORD_WIPE = "max-failed-password-wipe";
        private static final String TAG_MAX_TIME_TO_UNLOCK = "max-time-to-unlock";
        private static final String TAG_METERED_DATA_DISABLED_PACKAGES = "metered_data_disabled_packages";
        private static final String TAG_MIN_PASSWORD_LENGTH = "min-password-length";
        private static final String TAG_MIN_PASSWORD_LETTERS = "min-password-letters";
        private static final String TAG_MIN_PASSWORD_LOWERCASE = "min-password-lowercase";
        private static final String TAG_MIN_PASSWORD_NONLETTER = "min-password-nonletter";
        private static final String TAG_MIN_PASSWORD_NUMERIC = "min-password-numeric";
        private static final String TAG_MIN_PASSWORD_SYMBOLS = "min-password-symbols";
        private static final String TAG_MIN_PASSWORD_UPPERCASE = "min-password-uppercase";
        private static final String TAG_ORGANIZATION_COLOR = "organization-color";
        private static final String TAG_ORGANIZATION_NAME = "organization-name";
        private static final String TAG_PACKAGE_LIST_ITEM = "item";
        private static final String TAG_PARENT_ADMIN = "parent-admin";
        private static final String TAG_PASSWORD_EXPIRATION_DATE = "password-expiration-date";
        private static final String TAG_PASSWORD_EXPIRATION_TIMEOUT = "password-expiration-timeout";
        private static final String TAG_PASSWORD_HISTORY_LENGTH = "password-history-length";
        private static final String TAG_PASSWORD_QUALITY = "password-quality";
        private static final String TAG_PERMITTED_ACCESSIBILITY_SERVICES = "permitted-accessiblity-services";
        private static final String TAG_PERMITTED_IMES = "permitted-imes";
        private static final String TAG_PERMITTED_NOTIFICATION_LISTENERS = "permitted-notification-listeners";
        private static final String TAG_POLICIES = "policies";
        private static final String TAG_PROFILE_MAXIMUM_TIME_OFF = "profile-max-time-off";
        private static final String TAG_PROFILE_OFF_DEADLINE = "profile-off-deadline";
        private static final String TAG_PROVIDER = "provider";
        private static final String TAG_REQUIRE_AUTO_TIME = "require_auto_time";
        private static final String TAG_RESTRICTION = "restriction";
        private static final String TAG_SHORT_SUPPORT_MESSAGE = "short-support-message";
        private static final String TAG_SPECIFIES_GLOBAL_PROXY = "specifies-global-proxy";
        private static final String TAG_START_USER_SESSION_MESSAGE = "start_user_session_message";
        private static final String TAG_STRONG_AUTH_UNLOCK_TIMEOUT = "strong-auth-unlock-timeout";
        private static final String TAG_SUSPEND_PERSONAL_APPS = "suspend-personal-apps";
        private static final String TAG_TEST_ONLY_ADMIN = "test-only-admin";
        private static final String TAG_TRUST_AGENT_COMPONENT = "component";
        private static final String TAG_TRUST_AGENT_COMPONENT_OPTIONS = "trust-agent-component-options";
        private static final String TAG_USER_RESTRICTIONS = "user-restrictions";
        List<String> crossProfileWidgetProviders;
        DeviceAdminInfo info;
        final boolean isParent;
        List<String> keepUninstalledPackages;
        public boolean mAlwaysOnVpnLockdown;
        public String mAlwaysOnVpnPackage;
        boolean mCommonCriteriaMode;
        List<String> meteredDisabledPackages;
        ActiveAdmin parentAdmin;
        List<String> permittedAccessiblityServices;
        List<String> permittedInputMethods;
        List<String> permittedNotificationListeners;
        Bundle userRestrictions;
        int passwordHistoryLength = 0;
        PasswordPolicy mPasswordPolicy = new PasswordPolicy();
        FactoryResetProtectionPolicy mFactoryResetProtectionPolicy = null;
        long maximumTimeToUnlock = 0;
        long strongAuthUnlockTimeout = 0;
        int maximumFailedPasswordsForWipe = 0;
        long passwordExpirationTimeout = 0;
        long passwordExpirationDate = 0;
        int disabledKeyguardFeatures = 0;
        boolean encryptionRequested = false;
        boolean testOnlyAdmin = false;
        boolean disableCamera = false;
        boolean disableCallerId = false;
        boolean disableContactsSearch = false;
        boolean disableBluetoothContactSharing = true;
        boolean disableScreenCapture = false;
        boolean requireAutoTime = false;
        boolean forceEphemeralUsers = false;
        boolean isNetworkLoggingEnabled = false;
        boolean isLogoutEnabled = false;
        int numNetworkLoggingNotifications = 0;
        long lastNetworkLoggingNotificationTimeMs = 0;
        final Set<String> accountTypesWithManagementDisabled = new ArraySet();
        boolean specifiesGlobalProxy = false;
        String globalProxySpec = null;
        String globalProxyExclusionList = null;
        ArrayMap<String, TrustAgentInfo> trustAgentInfos = new ArrayMap<>();
        final Set<String> defaultEnabledRestrictionsAlreadySet = new ArraySet();
        CharSequence shortSupportMessage = null;
        CharSequence longSupportMessage = null;
        int organizationColor = DEF_ORGANIZATION_COLOR;
        String organizationName = null;
        String startUserSessionMessage = null;
        String endUserSessionMessage = null;
        List<String> mCrossProfileCalendarPackages = Collections.emptyList();
        List<String> mCrossProfilePackages = Collections.emptyList();
        boolean mSuspendPersonalApps = false;
        long mProfileMaximumTimeOffMillis = 0;
        long mProfileOffDeadline = 0;

        static class TrustAgentInfo {
            public PersistableBundle options;

            TrustAgentInfo(PersistableBundle bundle) {
                this.options = bundle;
            }
        }

        ActiveAdmin(DeviceAdminInfo _info, boolean parent) {
            this.info = _info;
            this.isParent = parent;
        }

        ActiveAdmin getParentActiveAdmin() {
            Preconditions.checkState(!this.isParent);
            if (this.parentAdmin == null) {
                this.parentAdmin = new ActiveAdmin(this.info, true);
            }
            return this.parentAdmin;
        }

        boolean hasParentActiveAdmin() {
            return this.parentAdmin != null;
        }

        int getUid() {
            return this.info.getActivityInfo().applicationInfo.uid;
        }

        public UserHandle getUserHandle() {
            return UserHandle.of(UserHandle.getUserId(this.info.getActivityInfo().applicationInfo.uid));
        }

        void writeToXml(XmlSerializer out) throws IllegalStateException, IOException, IllegalArgumentException {
            out.startTag(null, TAG_POLICIES);
            this.info.writePoliciesToXml(out);
            out.endTag(null, TAG_POLICIES);
            if (this.mPasswordPolicy.quality != 0) {
                writeAttributeValueToXml(out, TAG_PASSWORD_QUALITY, this.mPasswordPolicy.quality);
                if (this.mPasswordPolicy.length != 0) {
                    writeAttributeValueToXml(out, TAG_MIN_PASSWORD_LENGTH, this.mPasswordPolicy.length);
                }
                if (this.mPasswordPolicy.upperCase != 0) {
                    writeAttributeValueToXml(out, TAG_MIN_PASSWORD_UPPERCASE, this.mPasswordPolicy.upperCase);
                }
                if (this.mPasswordPolicy.lowerCase != 0) {
                    writeAttributeValueToXml(out, TAG_MIN_PASSWORD_LOWERCASE, this.mPasswordPolicy.lowerCase);
                }
                if (this.mPasswordPolicy.letters != 1) {
                    writeAttributeValueToXml(out, TAG_MIN_PASSWORD_LETTERS, this.mPasswordPolicy.letters);
                }
                if (this.mPasswordPolicy.numeric != 1) {
                    writeAttributeValueToXml(out, TAG_MIN_PASSWORD_NUMERIC, this.mPasswordPolicy.numeric);
                }
                if (this.mPasswordPolicy.symbols != 1) {
                    writeAttributeValueToXml(out, TAG_MIN_PASSWORD_SYMBOLS, this.mPasswordPolicy.symbols);
                }
                if (this.mPasswordPolicy.nonLetter > 0) {
                    writeAttributeValueToXml(out, TAG_MIN_PASSWORD_NONLETTER, this.mPasswordPolicy.nonLetter);
                }
            }
            int i = this.passwordHistoryLength;
            if (i != 0) {
                writeAttributeValueToXml(out, TAG_PASSWORD_HISTORY_LENGTH, i);
            }
            long j = this.maximumTimeToUnlock;
            if (j != 0) {
                writeAttributeValueToXml(out, TAG_MAX_TIME_TO_UNLOCK, j);
            }
            long j2 = this.strongAuthUnlockTimeout;
            if (j2 != 259200000) {
                writeAttributeValueToXml(out, TAG_STRONG_AUTH_UNLOCK_TIMEOUT, j2);
            }
            int i2 = this.maximumFailedPasswordsForWipe;
            if (i2 != 0) {
                writeAttributeValueToXml(out, TAG_MAX_FAILED_PASSWORD_WIPE, i2);
            }
            boolean z = this.specifiesGlobalProxy;
            if (z) {
                writeAttributeValueToXml(out, TAG_SPECIFIES_GLOBAL_PROXY, z);
                String str = this.globalProxySpec;
                if (str != null) {
                    writeAttributeValueToXml(out, TAG_GLOBAL_PROXY_SPEC, str);
                }
                String str2 = this.globalProxyExclusionList;
                if (str2 != null) {
                    writeAttributeValueToXml(out, TAG_GLOBAL_PROXY_EXCLUSION_LIST, str2);
                }
            }
            long j3 = this.passwordExpirationTimeout;
            if (j3 != 0) {
                writeAttributeValueToXml(out, TAG_PASSWORD_EXPIRATION_TIMEOUT, j3);
            }
            long j4 = this.passwordExpirationDate;
            if (j4 != 0) {
                writeAttributeValueToXml(out, TAG_PASSWORD_EXPIRATION_DATE, j4);
            }
            boolean z2 = this.encryptionRequested;
            if (z2) {
                writeAttributeValueToXml(out, TAG_ENCRYPTION_REQUESTED, z2);
            }
            boolean z3 = this.testOnlyAdmin;
            if (z3) {
                writeAttributeValueToXml(out, TAG_TEST_ONLY_ADMIN, z3);
            }
            boolean z4 = this.disableCamera;
            if (z4) {
                writeAttributeValueToXml(out, TAG_DISABLE_CAMERA, z4);
            }
            boolean z5 = this.disableCallerId;
            if (z5) {
                writeAttributeValueToXml(out, TAG_DISABLE_CALLER_ID, z5);
            }
            boolean z6 = this.disableContactsSearch;
            if (z6) {
                writeAttributeValueToXml(out, TAG_DISABLE_CONTACTS_SEARCH, z6);
            }
            boolean z7 = this.disableBluetoothContactSharing;
            if (!z7) {
                writeAttributeValueToXml(out, TAG_DISABLE_BLUETOOTH_CONTACT_SHARING, z7);
            }
            boolean z8 = this.disableScreenCapture;
            if (z8) {
                writeAttributeValueToXml(out, TAG_DISABLE_SCREEN_CAPTURE, z8);
            }
            boolean z9 = this.requireAutoTime;
            if (z9) {
                writeAttributeValueToXml(out, TAG_REQUIRE_AUTO_TIME, z9);
            }
            boolean z10 = this.forceEphemeralUsers;
            if (z10) {
                writeAttributeValueToXml(out, TAG_FORCE_EPHEMERAL_USERS, z10);
            }
            if (this.isNetworkLoggingEnabled) {
                out.startTag(null, TAG_IS_NETWORK_LOGGING_ENABLED);
                out.attribute(null, ATTR_VALUE, Boolean.toString(this.isNetworkLoggingEnabled));
                out.attribute(null, ATTR_NUM_NETWORK_LOGGING_NOTIFICATIONS, Integer.toString(this.numNetworkLoggingNotifications));
                out.attribute(null, ATTR_LAST_NETWORK_LOGGING_NOTIFICATION, Long.toString(this.lastNetworkLoggingNotificationTimeMs));
                out.endTag(null, TAG_IS_NETWORK_LOGGING_ENABLED);
            }
            int i3 = this.disabledKeyguardFeatures;
            if (i3 != 0) {
                writeAttributeValueToXml(out, TAG_DISABLE_KEYGUARD_FEATURES, i3);
            }
            if (!this.accountTypesWithManagementDisabled.isEmpty()) {
                writeAttributeValuesToXml(out, TAG_DISABLE_ACCOUNT_MANAGEMENT, TAG_ACCOUNT_TYPE, this.accountTypesWithManagementDisabled);
            }
            if (!this.trustAgentInfos.isEmpty()) {
                Set<Map.Entry<String, TrustAgentInfo>> set = this.trustAgentInfos.entrySet();
                out.startTag(null, TAG_MANAGE_TRUST_AGENT_FEATURES);
                for (Map.Entry<String, TrustAgentInfo> entry : set) {
                    TrustAgentInfo trustAgentInfo = entry.getValue();
                    out.startTag(null, TAG_TRUST_AGENT_COMPONENT);
                    out.attribute(null, ATTR_VALUE, entry.getKey());
                    if (trustAgentInfo.options != null) {
                        out.startTag(null, TAG_TRUST_AGENT_COMPONENT_OPTIONS);
                        try {
                            trustAgentInfo.options.saveToXml(out);
                        } catch (XmlPullParserException e) {
                            Log.e(DevicePolicyManagerService.LOG_TAG, "Failed to save TrustAgent options", e);
                        }
                        out.endTag(null, TAG_TRUST_AGENT_COMPONENT_OPTIONS);
                    }
                    out.endTag(null, TAG_TRUST_AGENT_COMPONENT);
                }
                out.endTag(null, TAG_MANAGE_TRUST_AGENT_FEATURES);
            }
            List<String> list = this.crossProfileWidgetProviders;
            if (list != null && !list.isEmpty()) {
                writeAttributeValuesToXml(out, TAG_CROSS_PROFILE_WIDGET_PROVIDERS, TAG_PROVIDER, this.crossProfileWidgetProviders);
            }
            writePackageListToXml(out, TAG_PERMITTED_ACCESSIBILITY_SERVICES, this.permittedAccessiblityServices);
            writePackageListToXml(out, TAG_PERMITTED_IMES, this.permittedInputMethods);
            writePackageListToXml(out, TAG_PERMITTED_NOTIFICATION_LISTENERS, this.permittedNotificationListeners);
            writePackageListToXml(out, TAG_KEEP_UNINSTALLED_PACKAGES, this.keepUninstalledPackages);
            writePackageListToXml(out, TAG_METERED_DATA_DISABLED_PACKAGES, this.meteredDisabledPackages);
            if (hasUserRestrictions()) {
                UserRestrictionsUtils.writeRestrictions(out, this.userRestrictions, TAG_USER_RESTRICTIONS);
            }
            if (!this.defaultEnabledRestrictionsAlreadySet.isEmpty()) {
                writeAttributeValuesToXml(out, TAG_DEFAULT_ENABLED_USER_RESTRICTIONS, TAG_RESTRICTION, this.defaultEnabledRestrictionsAlreadySet);
            }
            if (!TextUtils.isEmpty(this.shortSupportMessage)) {
                writeTextToXml(out, TAG_SHORT_SUPPORT_MESSAGE, this.shortSupportMessage.toString());
            }
            if (!TextUtils.isEmpty(this.longSupportMessage)) {
                writeTextToXml(out, TAG_LONG_SUPPORT_MESSAGE, this.longSupportMessage.toString());
            }
            if (this.parentAdmin != null) {
                out.startTag(null, TAG_PARENT_ADMIN);
                this.parentAdmin.writeToXml(out);
                out.endTag(null, TAG_PARENT_ADMIN);
            }
            int i4 = this.organizationColor;
            if (i4 != DEF_ORGANIZATION_COLOR) {
                writeAttributeValueToXml(out, TAG_ORGANIZATION_COLOR, i4);
            }
            String str3 = this.organizationName;
            if (str3 != null) {
                writeTextToXml(out, TAG_ORGANIZATION_NAME, str3);
            }
            boolean z11 = this.isLogoutEnabled;
            if (z11) {
                writeAttributeValueToXml(out, TAG_IS_LOGOUT_ENABLED, z11);
            }
            String str4 = this.startUserSessionMessage;
            if (str4 != null) {
                writeTextToXml(out, TAG_START_USER_SESSION_MESSAGE, str4);
            }
            String str5 = this.endUserSessionMessage;
            if (str5 != null) {
                writeTextToXml(out, TAG_END_USER_SESSION_MESSAGE, str5);
            }
            List<String> list2 = this.mCrossProfileCalendarPackages;
            if (list2 == null) {
                out.startTag(null, TAG_CROSS_PROFILE_CALENDAR_PACKAGES_NULL);
                out.endTag(null, TAG_CROSS_PROFILE_CALENDAR_PACKAGES_NULL);
            } else {
                writePackageListToXml(out, TAG_CROSS_PROFILE_CALENDAR_PACKAGES, list2);
            }
            writePackageListToXml(out, TAG_CROSS_PROFILE_PACKAGES, this.mCrossProfilePackages);
            if (this.mFactoryResetProtectionPolicy != null) {
                out.startTag(null, TAG_FACTORY_RESET_PROTECTION_POLICY);
                this.mFactoryResetProtectionPolicy.writeToXml(out);
                out.endTag(null, TAG_FACTORY_RESET_PROTECTION_POLICY);
            }
            boolean z12 = this.mSuspendPersonalApps;
            if (z12) {
                writeAttributeValueToXml(out, TAG_SUSPEND_PERSONAL_APPS, z12);
            }
            long j5 = this.mProfileMaximumTimeOffMillis;
            if (j5 != 0) {
                writeAttributeValueToXml(out, TAG_PROFILE_MAXIMUM_TIME_OFF, j5);
            }
            if (this.mProfileMaximumTimeOffMillis != 0) {
                writeAttributeValueToXml(out, TAG_PROFILE_OFF_DEADLINE, this.mProfileOffDeadline);
            }
            if (!TextUtils.isEmpty(this.mAlwaysOnVpnPackage)) {
                writeAttributeValueToXml(out, TAG_ALWAYS_ON_VPN_PACKAGE, this.mAlwaysOnVpnPackage);
            }
            boolean z13 = this.mAlwaysOnVpnLockdown;
            if (z13) {
                writeAttributeValueToXml(out, TAG_ALWAYS_ON_VPN_LOCKDOWN, z13);
            }
            boolean z14 = this.mCommonCriteriaMode;
            if (z14) {
                writeAttributeValueToXml(out, TAG_COMMON_CRITERIA_MODE, z14);
            }
        }

        void writeTextToXml(XmlSerializer out, String tag, String text) throws IOException {
            out.startTag(null, tag);
            out.text(text);
            out.endTag(null, tag);
        }

        void writePackageListToXml(XmlSerializer out, String outerTag, List<String> packageList) throws IllegalStateException, IOException, IllegalArgumentException {
            if (packageList == null) {
                return;
            }
            writeAttributeValuesToXml(out, outerTag, "item", packageList);
        }

        void writeAttributeValueToXml(XmlSerializer out, String tag, String value) throws IOException {
            out.startTag(null, tag);
            out.attribute(null, ATTR_VALUE, value);
            out.endTag(null, tag);
        }

        void writeAttributeValueToXml(XmlSerializer out, String tag, int value) throws IOException {
            out.startTag(null, tag);
            out.attribute(null, ATTR_VALUE, Integer.toString(value));
            out.endTag(null, tag);
        }

        void writeAttributeValueToXml(XmlSerializer out, String tag, long value) throws IOException {
            out.startTag(null, tag);
            out.attribute(null, ATTR_VALUE, Long.toString(value));
            out.endTag(null, tag);
        }

        void writeAttributeValueToXml(XmlSerializer out, String tag, boolean value) throws IOException {
            out.startTag(null, tag);
            out.attribute(null, ATTR_VALUE, Boolean.toString(value));
            out.endTag(null, tag);
        }

        void writeAttributeValuesToXml(XmlSerializer out, String outerTag, String innerTag, Collection<String> values) throws IOException {
            out.startTag(null, outerTag);
            for (String value : values) {
                out.startTag(null, innerTag);
                out.attribute(null, ATTR_VALUE, value);
                out.endTag(null, innerTag);
            }
            out.endTag(null, outerTag);
        }

        void readFromXml(XmlPullParser parser, boolean shouldOverridePolicies) throws XmlPullParserException, IOException {
            int outerDepth = parser.getDepth();
            while (true) {
                int type = parser.next();
                if (type != 1) {
                    if (type != 3 || parser.getDepth() > outerDepth) {
                        if (type != 3 && type != 4) {
                            String tag = parser.getName();
                            if (TAG_POLICIES.equals(tag)) {
                                if (shouldOverridePolicies) {
                                    Log.d(DevicePolicyManagerService.LOG_TAG, "Overriding device admin policies from XML.");
                                    this.info.readPoliciesFromXml(parser);
                                }
                            } else if (TAG_PASSWORD_QUALITY.equals(tag)) {
                                this.mPasswordPolicy.quality = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_MIN_PASSWORD_LENGTH.equals(tag)) {
                                this.mPasswordPolicy.length = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_PASSWORD_HISTORY_LENGTH.equals(tag)) {
                                this.passwordHistoryLength = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_MIN_PASSWORD_UPPERCASE.equals(tag)) {
                                this.mPasswordPolicy.upperCase = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_MIN_PASSWORD_LOWERCASE.equals(tag)) {
                                this.mPasswordPolicy.lowerCase = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_MIN_PASSWORD_LETTERS.equals(tag)) {
                                this.mPasswordPolicy.letters = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_MIN_PASSWORD_NUMERIC.equals(tag)) {
                                this.mPasswordPolicy.numeric = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_MIN_PASSWORD_SYMBOLS.equals(tag)) {
                                this.mPasswordPolicy.symbols = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_MIN_PASSWORD_NONLETTER.equals(tag)) {
                                this.mPasswordPolicy.nonLetter = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_MAX_TIME_TO_UNLOCK.equals(tag)) {
                                this.maximumTimeToUnlock = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_STRONG_AUTH_UNLOCK_TIMEOUT.equals(tag)) {
                                this.strongAuthUnlockTimeout = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_MAX_FAILED_PASSWORD_WIPE.equals(tag)) {
                                this.maximumFailedPasswordsForWipe = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_SPECIFIES_GLOBAL_PROXY.equals(tag)) {
                                this.specifiesGlobalProxy = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_GLOBAL_PROXY_SPEC.equals(tag)) {
                                this.globalProxySpec = parser.getAttributeValue(null, ATTR_VALUE);
                            } else if (TAG_GLOBAL_PROXY_EXCLUSION_LIST.equals(tag)) {
                                this.globalProxyExclusionList = parser.getAttributeValue(null, ATTR_VALUE);
                            } else if (TAG_PASSWORD_EXPIRATION_TIMEOUT.equals(tag)) {
                                this.passwordExpirationTimeout = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_PASSWORD_EXPIRATION_DATE.equals(tag)) {
                                this.passwordExpirationDate = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_ENCRYPTION_REQUESTED.equals(tag)) {
                                this.encryptionRequested = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_TEST_ONLY_ADMIN.equals(tag)) {
                                this.testOnlyAdmin = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_DISABLE_CAMERA.equals(tag)) {
                                this.disableCamera = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_DISABLE_CALLER_ID.equals(tag)) {
                                this.disableCallerId = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_DISABLE_CONTACTS_SEARCH.equals(tag)) {
                                this.disableContactsSearch = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_DISABLE_BLUETOOTH_CONTACT_SHARING.equals(tag)) {
                                this.disableBluetoothContactSharing = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_DISABLE_SCREEN_CAPTURE.equals(tag)) {
                                this.disableScreenCapture = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_REQUIRE_AUTO_TIME.equals(tag)) {
                                this.requireAutoTime = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_FORCE_EPHEMERAL_USERS.equals(tag)) {
                                this.forceEphemeralUsers = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_IS_NETWORK_LOGGING_ENABLED.equals(tag)) {
                                this.isNetworkLoggingEnabled = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                                this.lastNetworkLoggingNotificationTimeMs = Long.parseLong(parser.getAttributeValue(null, ATTR_LAST_NETWORK_LOGGING_NOTIFICATION));
                                this.numNetworkLoggingNotifications = Integer.parseInt(parser.getAttributeValue(null, ATTR_NUM_NETWORK_LOGGING_NOTIFICATIONS));
                            } else if (TAG_DISABLE_KEYGUARD_FEATURES.equals(tag)) {
                                this.disabledKeyguardFeatures = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_DISABLE_ACCOUNT_MANAGEMENT.equals(tag)) {
                                readAttributeValues(parser, TAG_ACCOUNT_TYPE, this.accountTypesWithManagementDisabled);
                            } else if (TAG_MANAGE_TRUST_AGENT_FEATURES.equals(tag)) {
                                this.trustAgentInfos = getAllTrustAgentInfos(parser, tag);
                            } else if (TAG_CROSS_PROFILE_WIDGET_PROVIDERS.equals(tag)) {
                                ArrayList arrayList = new ArrayList();
                                this.crossProfileWidgetProviders = arrayList;
                                readAttributeValues(parser, TAG_PROVIDER, arrayList);
                            } else if (TAG_PERMITTED_ACCESSIBILITY_SERVICES.equals(tag)) {
                                this.permittedAccessiblityServices = readPackageList(parser, tag);
                            } else if (TAG_PERMITTED_IMES.equals(tag)) {
                                this.permittedInputMethods = readPackageList(parser, tag);
                            } else if (TAG_PERMITTED_NOTIFICATION_LISTENERS.equals(tag)) {
                                this.permittedNotificationListeners = readPackageList(parser, tag);
                            } else if (TAG_KEEP_UNINSTALLED_PACKAGES.equals(tag)) {
                                this.keepUninstalledPackages = readPackageList(parser, tag);
                            } else if (TAG_METERED_DATA_DISABLED_PACKAGES.equals(tag)) {
                                this.meteredDisabledPackages = readPackageList(parser, tag);
                            } else if (TAG_USER_RESTRICTIONS.equals(tag)) {
                                this.userRestrictions = UserRestrictionsUtils.readRestrictions(parser);
                            } else if (TAG_DEFAULT_ENABLED_USER_RESTRICTIONS.equals(tag)) {
                                readAttributeValues(parser, TAG_RESTRICTION, this.defaultEnabledRestrictionsAlreadySet);
                            } else if (TAG_SHORT_SUPPORT_MESSAGE.equals(tag)) {
                                if (parser.next() == 4) {
                                    this.shortSupportMessage = parser.getText();
                                } else {
                                    Log.w(DevicePolicyManagerService.LOG_TAG, "Missing text when loading short support message");
                                }
                            } else if (TAG_LONG_SUPPORT_MESSAGE.equals(tag)) {
                                if (parser.next() == 4) {
                                    this.longSupportMessage = parser.getText();
                                } else {
                                    Log.w(DevicePolicyManagerService.LOG_TAG, "Missing text when loading long support message");
                                }
                            } else if (TAG_PARENT_ADMIN.equals(tag)) {
                                Preconditions.checkState(!this.isParent);
                                ActiveAdmin activeAdmin = new ActiveAdmin(this.info, true);
                                this.parentAdmin = activeAdmin;
                                activeAdmin.readFromXml(parser, shouldOverridePolicies);
                            } else if (TAG_ORGANIZATION_COLOR.equals(tag)) {
                                this.organizationColor = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_ORGANIZATION_NAME.equals(tag)) {
                                if (parser.next() == 4) {
                                    this.organizationName = parser.getText();
                                } else {
                                    Log.w(DevicePolicyManagerService.LOG_TAG, "Missing text when loading organization name");
                                }
                            } else if (TAG_IS_LOGOUT_ENABLED.equals(tag)) {
                                this.isLogoutEnabled = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_START_USER_SESSION_MESSAGE.equals(tag)) {
                                if (parser.next() == 4) {
                                    this.startUserSessionMessage = parser.getText();
                                } else {
                                    Log.w(DevicePolicyManagerService.LOG_TAG, "Missing text when loading start session message");
                                }
                            } else if (TAG_END_USER_SESSION_MESSAGE.equals(tag)) {
                                if (parser.next() == 4) {
                                    this.endUserSessionMessage = parser.getText();
                                } else {
                                    Log.w(DevicePolicyManagerService.LOG_TAG, "Missing text when loading end session message");
                                }
                            } else if (TAG_CROSS_PROFILE_CALENDAR_PACKAGES.equals(tag)) {
                                this.mCrossProfileCalendarPackages = readPackageList(parser, tag);
                            } else if (TAG_CROSS_PROFILE_CALENDAR_PACKAGES_NULL.equals(tag)) {
                                this.mCrossProfileCalendarPackages = null;
                            } else if (TAG_CROSS_PROFILE_PACKAGES.equals(tag)) {
                                this.mCrossProfilePackages = readPackageList(parser, tag);
                            } else if (TAG_FACTORY_RESET_PROTECTION_POLICY.equals(tag)) {
                                this.mFactoryResetProtectionPolicy = FactoryResetProtectionPolicy.readFromXml(parser);
                            } else if (TAG_SUSPEND_PERSONAL_APPS.equals(tag)) {
                                this.mSuspendPersonalApps = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_PROFILE_MAXIMUM_TIME_OFF.equals(tag)) {
                                this.mProfileMaximumTimeOffMillis = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_PROFILE_OFF_DEADLINE.equals(tag)) {
                                this.mProfileOffDeadline = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_ALWAYS_ON_VPN_PACKAGE.equals(tag)) {
                                this.mAlwaysOnVpnPackage = parser.getAttributeValue(null, ATTR_VALUE);
                            } else if (TAG_ALWAYS_ON_VPN_LOCKDOWN.equals(tag)) {
                                this.mAlwaysOnVpnLockdown = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else if (TAG_COMMON_CRITERIA_MODE.equals(tag)) {
                                this.mCommonCriteriaMode = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                            } else {
                                Slog.w(DevicePolicyManagerService.LOG_TAG, "Unknown admin tag: " + tag);
                                XmlUtils.skipCurrentTag(parser);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        }

        private List<String> readPackageList(XmlPullParser parser, String tag) throws XmlPullParserException, IOException {
            List<String> result = new ArrayList<>();
            int outerDepth = parser.getDepth();
            while (true) {
                int outerType = parser.next();
                if (outerType == 1 || (outerType == 3 && parser.getDepth() <= outerDepth)) {
                    break;
                }
                if (outerType != 3 && outerType != 4) {
                    String outerTag = parser.getName();
                    if ("item".equals(outerTag)) {
                        String packageName = parser.getAttributeValue(null, ATTR_VALUE);
                        if (packageName != null) {
                            result.add(packageName);
                        } else {
                            Slog.w(DevicePolicyManagerService.LOG_TAG, "Package name missing under " + outerTag);
                        }
                    } else {
                        Slog.w(DevicePolicyManagerService.LOG_TAG, "Unknown tag under " + tag + ": " + outerTag);
                    }
                }
            }
            return result;
        }

        private void readAttributeValues(XmlPullParser parser, String tag, Collection<String> result) throws XmlPullParserException, IOException {
            result.clear();
            int outerDepthDAM = parser.getDepth();
            while (true) {
                int typeDAM = parser.next();
                if (typeDAM != 1) {
                    if (typeDAM != 3 || parser.getDepth() > outerDepthDAM) {
                        if (typeDAM != 3 && typeDAM != 4) {
                            String tagDAM = parser.getName();
                            if (tag.equals(tagDAM)) {
                                result.add(parser.getAttributeValue(null, ATTR_VALUE));
                            } else {
                                Slog.e(DevicePolicyManagerService.LOG_TAG, "Expected tag " + tag + " but found " + tagDAM);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        }

        private ArrayMap<String, TrustAgentInfo> getAllTrustAgentInfos(XmlPullParser parser, String tag) throws XmlPullParserException, IOException {
            int outerDepthDAM = parser.getDepth();
            ArrayMap<String, TrustAgentInfo> result = new ArrayMap<>();
            while (true) {
                int typeDAM = parser.next();
                if (typeDAM == 1 || (typeDAM == 3 && parser.getDepth() <= outerDepthDAM)) {
                    break;
                }
                if (typeDAM != 3 && typeDAM != 4) {
                    String tagDAM = parser.getName();
                    if (TAG_TRUST_AGENT_COMPONENT.equals(tagDAM)) {
                        String component = parser.getAttributeValue(null, ATTR_VALUE);
                        TrustAgentInfo trustAgentInfo = getTrustAgentInfo(parser, tag);
                        result.put(component, trustAgentInfo);
                    } else {
                        Slog.w(DevicePolicyManagerService.LOG_TAG, "Unknown tag under " + tag + ": " + tagDAM);
                    }
                }
            }
            return result;
        }

        private TrustAgentInfo getTrustAgentInfo(XmlPullParser parser, String tag) throws XmlPullParserException, IOException {
            int outerDepthDAM = parser.getDepth();
            TrustAgentInfo result = new TrustAgentInfo(null);
            while (true) {
                int typeDAM = parser.next();
                if (typeDAM == 1 || (typeDAM == 3 && parser.getDepth() <= outerDepthDAM)) {
                    break;
                }
                if (typeDAM != 3 && typeDAM != 4) {
                    String tagDAM = parser.getName();
                    if (TAG_TRUST_AGENT_COMPONENT_OPTIONS.equals(tagDAM)) {
                        result.options = PersistableBundle.restoreFromXml(parser);
                    } else {
                        Slog.w(DevicePolicyManagerService.LOG_TAG, "Unknown tag under " + tag + ": " + tagDAM);
                    }
                }
            }
            return result;
        }

        boolean hasUserRestrictions() {
            Bundle bundle = this.userRestrictions;
            return bundle != null && bundle.size() > 0;
        }

        Bundle ensureUserRestrictions() {
            if (this.userRestrictions == null) {
                this.userRestrictions = new Bundle();
            }
            return this.userRestrictions;
        }

        public void transfer(DeviceAdminInfo deviceAdminInfo) {
            if (hasParentActiveAdmin()) {
                this.parentAdmin.info = deviceAdminInfo;
            }
            this.info = deviceAdminInfo;
        }

        Bundle addSyntheticRestrictions(Bundle restrictions) {
            if (this.disableCamera) {
                restrictions.putBoolean("no_camera", true);
            }
            if (this.requireAutoTime) {
                restrictions.putBoolean("no_config_date_time", true);
            }
            return restrictions;
        }

        static Bundle removeDeprecatedRestrictions(Bundle restrictions) {
            for (String deprecatedRestriction : DevicePolicyManagerService.DEPRECATED_USER_RESTRICTIONS) {
                restrictions.remove(deprecatedRestriction);
            }
            return restrictions;
        }

        static Bundle filterRestrictions(Bundle restrictions, Predicate<String> filter) {
            Bundle result = new Bundle();
            for (String key : restrictions.keySet()) {
                if (restrictions.getBoolean(key) && filter.test(key)) {
                    result.putBoolean(key, true);
                }
            }
            return result;
        }

        Bundle getEffectiveRestrictions() {
            return addSyntheticRestrictions(removeDeprecatedRestrictions(new Bundle(ensureUserRestrictions())));
        }

        Bundle getLocalUserRestrictions(final int adminType) {
            return filterRestrictions(getEffectiveRestrictions(), new Predicate() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$ActiveAdmin$Itq6pSsfsSgkuDfqznUMc7YMLwU
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return UserRestrictionsUtils.isLocal(adminType, (String) obj);
                }
            });
        }

        Bundle getGlobalUserRestrictions(final int adminType) {
            return filterRestrictions(getEffectiveRestrictions(), new Predicate() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$ActiveAdmin$UjhGsndXbfnmx5tCnLRWDR1J0oo
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return UserRestrictionsUtils.isGlobal(adminType, (String) obj);
                }
            });
        }

        void dump(IndentingPrintWriter pw) {
            pw.print("uid=");
            pw.println(getUid());
            pw.print("testOnlyAdmin=");
            pw.println(this.testOnlyAdmin);
            pw.println("policies:");
            ArrayList<DeviceAdminInfo.PolicyInfo> pols = this.info.getUsedPolicies();
            if (pols != null) {
                pw.increaseIndent();
                for (int i = 0; i < pols.size(); i++) {
                    pw.println(pols.get(i).tag);
                }
                pw.decreaseIndent();
            }
            pw.print("passwordQuality=0x");
            pw.println(Integer.toHexString(this.mPasswordPolicy.quality));
            pw.print("minimumPasswordLength=");
            pw.println(this.mPasswordPolicy.length);
            pw.print("passwordHistoryLength=");
            pw.println(this.passwordHistoryLength);
            pw.print("minimumPasswordUpperCase=");
            pw.println(this.mPasswordPolicy.upperCase);
            pw.print("minimumPasswordLowerCase=");
            pw.println(this.mPasswordPolicy.lowerCase);
            pw.print("minimumPasswordLetters=");
            pw.println(this.mPasswordPolicy.letters);
            pw.print("minimumPasswordNumeric=");
            pw.println(this.mPasswordPolicy.numeric);
            pw.print("minimumPasswordSymbols=");
            pw.println(this.mPasswordPolicy.symbols);
            pw.print("minimumPasswordNonLetter=");
            pw.println(this.mPasswordPolicy.nonLetter);
            pw.print("maximumTimeToUnlock=");
            pw.println(this.maximumTimeToUnlock);
            pw.print("strongAuthUnlockTimeout=");
            pw.println(this.strongAuthUnlockTimeout);
            pw.print("maximumFailedPasswordsForWipe=");
            pw.println(this.maximumFailedPasswordsForWipe);
            pw.print("specifiesGlobalProxy=");
            pw.println(this.specifiesGlobalProxy);
            pw.print("passwordExpirationTimeout=");
            pw.println(this.passwordExpirationTimeout);
            pw.print("passwordExpirationDate=");
            pw.println(this.passwordExpirationDate);
            if (this.globalProxySpec != null) {
                pw.print("globalProxySpec=");
                pw.println(this.globalProxySpec);
            }
            if (this.globalProxyExclusionList != null) {
                pw.print("globalProxyEclusionList=");
                pw.println(this.globalProxyExclusionList);
            }
            pw.print("encryptionRequested=");
            pw.println(this.encryptionRequested);
            pw.print("disableCamera=");
            pw.println(this.disableCamera);
            pw.print("disableCallerId=");
            pw.println(this.disableCallerId);
            pw.print("disableContactsSearch=");
            pw.println(this.disableContactsSearch);
            pw.print("disableBluetoothContactSharing=");
            pw.println(this.disableBluetoothContactSharing);
            pw.print("disableScreenCapture=");
            pw.println(this.disableScreenCapture);
            pw.print("requireAutoTime=");
            pw.println(this.requireAutoTime);
            pw.print("forceEphemeralUsers=");
            pw.println(this.forceEphemeralUsers);
            pw.print("isNetworkLoggingEnabled=");
            pw.println(this.isNetworkLoggingEnabled);
            pw.print("disabledKeyguardFeatures=");
            pw.println(this.disabledKeyguardFeatures);
            pw.print("crossProfileWidgetProviders=");
            pw.println(this.crossProfileWidgetProviders);
            if (this.permittedAccessiblityServices != null) {
                pw.print("permittedAccessibilityServices=");
                pw.println(this.permittedAccessiblityServices);
            }
            if (this.permittedInputMethods != null) {
                pw.print("permittedInputMethods=");
                pw.println(this.permittedInputMethods);
            }
            if (this.permittedNotificationListeners != null) {
                pw.print("permittedNotificationListeners=");
                pw.println(this.permittedNotificationListeners);
            }
            if (this.keepUninstalledPackages != null) {
                pw.print("keepUninstalledPackages=");
                pw.println(this.keepUninstalledPackages);
            }
            pw.print("organizationColor=");
            pw.println(this.organizationColor);
            if (this.organizationName != null) {
                pw.print("organizationName=");
                pw.println(this.organizationName);
            }
            pw.println("userRestrictions:");
            UserRestrictionsUtils.dumpRestrictions(pw, "  ", this.userRestrictions);
            pw.print("defaultEnabledRestrictionsAlreadySet=");
            pw.println(this.defaultEnabledRestrictionsAlreadySet);
            pw.print("isParent=");
            pw.println(this.isParent);
            if (this.parentAdmin != null) {
                pw.println("parentAdmin:");
                pw.increaseIndent();
                this.parentAdmin.dump(pw);
                pw.decreaseIndent();
            }
            if (this.mCrossProfileCalendarPackages != null) {
                pw.print("mCrossProfileCalendarPackages=");
                pw.println(this.mCrossProfileCalendarPackages);
            }
            pw.print("mCrossProfilePackages=");
            pw.println(this.mCrossProfilePackages);
            pw.print("mSuspendPersonalApps=");
            pw.println(this.mSuspendPersonalApps);
            pw.print("mProfileMaximumTimeOffMillis=");
            pw.println(this.mProfileMaximumTimeOffMillis);
            pw.print("mProfileOffDeadline=");
            pw.println(this.mProfileOffDeadline);
            pw.print("mAlwaysOnVpnPackage=");
            pw.println(this.mAlwaysOnVpnPackage);
            pw.print("mAlwaysOnVpnLockdown=");
            pw.println(this.mAlwaysOnVpnLockdown);
            pw.print("mCommonCriteriaMode=");
            pw.println(this.mCommonCriteriaMode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePackagesChanged(String packageName, int userHandle) {
        boolean removedAdmin = false;
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        synchronized (getLockObject()) {
            for (int i = policy.mAdminList.size() - 1; i >= 0; i--) {
                ActiveAdmin aa = policy.mAdminList.get(i);
                try {
                    String adminPackage = aa.info.getPackageName();
                    if ((packageName == null || packageName.equals(adminPackage)) && (this.mIPackageManager.getPackageInfo(adminPackage, 0, userHandle) == null || this.mIPackageManager.getReceiverInfo(aa.info.getComponent(), 786432, userHandle) == null)) {
                        removedAdmin = true;
                        policy.mAdminList.remove(i);
                        policy.mAdminMap.remove(aa.info.getComponent());
                        pushActiveAdminPackagesLocked(userHandle);
                        pushMeteredDisabledPackagesLocked(userHandle);
                    }
                } catch (RemoteException e) {
                }
            }
            if (removedAdmin) {
                validatePasswordOwnerLocked(policy);
            }
            boolean removedDelegate = false;
            for (int i2 = policy.mDelegationMap.size() - 1; i2 >= 0; i2--) {
                String delegatePackage = policy.mDelegationMap.keyAt(i2);
                if (isRemovedPackage(packageName, delegatePackage, userHandle)) {
                    policy.mDelegationMap.removeAt(i2);
                    removedDelegate = true;
                }
            }
            ComponentName owner = getOwnerComponent(userHandle);
            if (packageName != null && owner != null && owner.getPackageName().equals(packageName)) {
                startOwnerService(userHandle, "package-broadcast");
            }
            if (removedAdmin || removedDelegate) {
                saveSettingsLocked(policy.mUserHandle);
            }
        }
        if (removedAdmin) {
            pushUserRestrictions(userHandle);
        }
    }

    private boolean isRemovedPackage(String changedPackage, String targetPackage, int userHandle) {
        if (targetPackage == null) {
            return false;
        }
        if (changedPackage != null) {
            try {
                if (!changedPackage.equals(targetPackage)) {
                    return false;
                }
            } catch (RemoteException e) {
                return false;
            }
        }
        return this.mIPackageManager.getPackageInfo(targetPackage, 0, userHandle) == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNewPackageInstalled(String packageName, int userHandle) {
        if (!lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle).mAppsSuspended) {
            return;
        }
        String[] packagesToSuspend = {packageName};
        if (this.mInjector.getPackageManager(userHandle).getUnsuspendablePackages(packagesToSuspend).length != 0) {
            Slog.i(LOG_TAG, "Newly installed package is unsuspendable: " + packageName);
            return;
        }
        try {
            this.mIPackageManager.setPackagesSuspendedAsUser(packagesToSuspend, true, (PersistableBundle) null, (PersistableBundle) null, (SuspendDialogInfo) null, PackageManagerService.PLATFORM_PACKAGE_NAME, userHandle);
        } catch (RemoteException e) {
        }
    }

    static class Injector {
        public final Context mContext;

        Injector(Context context) {
            this.mContext = context;
        }

        public boolean hasFeature() {
            return getPackageManager().hasSystemFeature("android.software.device_admin");
        }

        Context createContextAsUser(UserHandle user) throws PackageManager.NameNotFoundException {
            String packageName = this.mContext.getPackageName();
            return this.mContext.createPackageContextAsUser(packageName, 0, user);
        }

        Resources getResources() {
            return this.mContext.getResources();
        }

        Owners newOwners() {
            return new Owners(getUserManager(), getUserManagerInternal(), getPackageManagerInternal(), getActivityTaskManagerInternal(), getActivityManagerInternal());
        }

        UserManager getUserManager() {
            return UserManager.get(this.mContext);
        }

        UserManagerInternal getUserManagerInternal() {
            return (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        }

        PackageManagerInternal getPackageManagerInternal() {
            return (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        }

        ActivityTaskManagerInternal getActivityTaskManagerInternal() {
            return (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        }

        PermissionControllerManager getPermissionControllerManager(UserHandle user) {
            if (user.equals(this.mContext.getUser())) {
                return (PermissionControllerManager) this.mContext.getSystemService(PermissionControllerManager.class);
            }
            try {
                return (PermissionControllerManager) this.mContext.createPackageContextAsUser(this.mContext.getPackageName(), 0, user).getSystemService(PermissionControllerManager.class);
            } catch (PackageManager.NameNotFoundException notPossible) {
                throw new IllegalStateException(notPossible);
            }
        }

        UsageStatsManagerInternal getUsageStatsManagerInternal() {
            return (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
        }

        NetworkPolicyManagerInternal getNetworkPolicyManagerInternal() {
            return (NetworkPolicyManagerInternal) LocalServices.getService(NetworkPolicyManagerInternal.class);
        }

        NotificationManager getNotificationManager() {
            return (NotificationManager) this.mContext.getSystemService(NotificationManager.class);
        }

        IIpConnectivityMetrics getIIpConnectivityMetrics() {
            return IIpConnectivityMetrics.Stub.asInterface(ServiceManager.getService("connmetrics"));
        }

        PackageManager getPackageManager() {
            return this.mContext.getPackageManager();
        }

        PackageManager getPackageManager(int userId) {
            return this.mContext.createContextAsUser(UserHandle.of(userId), 0).getPackageManager();
        }

        PowerManagerInternal getPowerManagerInternal() {
            return (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
        }

        TelephonyManager getTelephonyManager() {
            return (TelephonyManager) this.mContext.getSystemService(TelephonyManager.class);
        }

        TrustManager getTrustManager() {
            return (TrustManager) this.mContext.getSystemService("trust");
        }

        AlarmManager getAlarmManager() {
            return (AlarmManager) this.mContext.getSystemService(AlarmManager.class);
        }

        ConnectivityManager getConnectivityManager() {
            return (ConnectivityManager) this.mContext.getSystemService(ConnectivityManager.class);
        }

        LocationManager getLocationManager() {
            return (LocationManager) this.mContext.getSystemService(LocationManager.class);
        }

        IWindowManager getIWindowManager() {
            return IWindowManager.Stub.asInterface(ServiceManager.getService("window"));
        }

        IActivityManager getIActivityManager() {
            return ActivityManager.getService();
        }

        IActivityTaskManager getIActivityTaskManager() {
            return ActivityTaskManager.getService();
        }

        ActivityManagerInternal getActivityManagerInternal() {
            return (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        }

        IPackageManager getIPackageManager() {
            return AppGlobals.getPackageManager();
        }

        IPermissionManager getIPermissionManager() {
            return AppGlobals.getPermissionManager();
        }

        IBackupManager getIBackupManager() {
            return IBackupManager.Stub.asInterface(ServiceManager.getService(BatteryService.HealthServiceWrapper.INSTANCE_HEALTHD));
        }

        IAudioService getIAudioService() {
            return IAudioService.Stub.asInterface(ServiceManager.getService("audio"));
        }

        PersistentDataBlockManagerInternal getPersistentDataBlockManagerInternal() {
            return (PersistentDataBlockManagerInternal) LocalServices.getService(PersistentDataBlockManagerInternal.class);
        }

        LockSettingsInternal getLockSettingsInternal() {
            return (LockSettingsInternal) LocalServices.getService(LockSettingsInternal.class);
        }

        IPlatformCompat getIPlatformCompat() {
            return IPlatformCompat.Stub.asInterface(ServiceManager.getService("platform_compat"));
        }

        boolean hasUserSetupCompleted(DevicePolicyData userData) {
            return userData.mUserSetupComplete;
        }

        boolean isBuildDebuggable() {
            return Build.IS_DEBUGGABLE;
        }

        LockPatternUtils newLockPatternUtils() {
            return new LockPatternUtils(this.mContext);
        }

        boolean storageManagerIsFileBasedEncryptionEnabled() {
            return StorageManager.isFileEncryptedNativeOnly();
        }

        boolean storageManagerIsNonDefaultBlockEncrypted() {
            long identity = Binder.clearCallingIdentity();
            try {
                return StorageManager.isNonDefaultBlockEncrypted();
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        boolean storageManagerIsEncrypted() {
            return StorageManager.isEncrypted();
        }

        boolean storageManagerIsEncryptable() {
            return StorageManager.isEncryptable();
        }

        Looper getMyLooper() {
            return Looper.myLooper();
        }

        WifiManager getWifiManager() {
            return (WifiManager) this.mContext.getSystemService(WifiManager.class);
        }

        long binderClearCallingIdentity() {
            return Binder.clearCallingIdentity();
        }

        void binderRestoreCallingIdentity(long token) {
            Binder.restoreCallingIdentity(token);
        }

        int binderGetCallingUid() {
            return Binder.getCallingUid();
        }

        int binderGetCallingPid() {
            return Binder.getCallingPid();
        }

        UserHandle binderGetCallingUserHandle() {
            return Binder.getCallingUserHandle();
        }

        boolean binderIsCallingUidMyUid() {
            return Binder.getCallingUid() == Process.myUid();
        }

        void binderWithCleanCallingIdentity(FunctionalUtils.ThrowingRunnable action) {
            Binder.withCleanCallingIdentity(action);
        }

        final <T> T binderWithCleanCallingIdentity(FunctionalUtils.ThrowingSupplier<T> throwingSupplier) {
            return (T) Binder.withCleanCallingIdentity(throwingSupplier);
        }

        final int userHandleGetCallingUserId() {
            return UserHandle.getUserId(binderGetCallingUid());
        }

        File environmentGetUserSystemDirectory(int userId) {
            return Environment.getUserSystemDirectory(userId);
        }

        void powerManagerGoToSleep(long time, int reason, int flags) {
            ((PowerManager) this.mContext.getSystemService(PowerManager.class)).goToSleep(time, reason, flags);
        }

        void powerManagerReboot(String reason) {
            ((PowerManager) this.mContext.getSystemService(PowerManager.class)).reboot(reason);
        }

        void recoverySystemRebootWipeUserData(boolean shutdown, String reason, boolean force, boolean wipeEuicc) throws IOException {
            RecoverySystem.rebootWipeUserData(this.mContext, shutdown, reason, force, wipeEuicc);
        }

        boolean systemPropertiesGetBoolean(String key, boolean def) {
            return SystemProperties.getBoolean(key, def);
        }

        long systemPropertiesGetLong(String key, long def) {
            return SystemProperties.getLong(key, def);
        }

        String systemPropertiesGet(String key, String def) {
            return SystemProperties.get(key, def);
        }

        String systemPropertiesGet(String key) {
            return SystemProperties.get(key);
        }

        void systemPropertiesSet(String key, String value) {
            SystemProperties.set(key, value);
        }

        boolean userManagerIsSplitSystemUser() {
            return UserManager.isSplitSystemUser();
        }

        String getDevicePolicyFilePathForSystemUser() {
            return "/data/system/";
        }

        PendingIntent pendingIntentGetActivityAsUser(Context context, int requestCode, Intent intent, int flags, Bundle options, UserHandle user) {
            return PendingIntent.getActivityAsUser(context, requestCode, intent, flags, options, user);
        }

        PendingIntent pendingIntentGetBroadcast(Context context, int requestCode, Intent intent, int flags) {
            return PendingIntent.getBroadcast(context, requestCode, intent, flags);
        }

        void registerContentObserver(Uri uri, boolean notifyForDescendents, ContentObserver observer, int userHandle) {
            this.mContext.getContentResolver().registerContentObserver(uri, notifyForDescendents, observer, userHandle);
        }

        int settingsSecureGetIntForUser(String name, int def, int userHandle) {
            return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), name, def, userHandle);
        }

        String settingsSecureGetStringForUser(String name, int userHandle) {
            return Settings.Secure.getStringForUser(this.mContext.getContentResolver(), name, userHandle);
        }

        void settingsSecurePutIntForUser(String name, int value, int userHandle) {
            Settings.Secure.putIntForUser(this.mContext.getContentResolver(), name, value, userHandle);
        }

        void settingsSecurePutStringForUser(String name, String value, int userHandle) {
            Settings.Secure.putStringForUser(this.mContext.getContentResolver(), name, value, userHandle);
        }

        void settingsGlobalPutStringForUser(String name, String value, int userHandle) {
            Settings.Global.putStringForUser(this.mContext.getContentResolver(), name, value, userHandle);
        }

        void settingsSecurePutInt(String name, int value) {
            Settings.Secure.putInt(this.mContext.getContentResolver(), name, value);
        }

        int settingsGlobalGetInt(String name, int def) {
            return Settings.Global.getInt(this.mContext.getContentResolver(), name, def);
        }

        String settingsGlobalGetString(String name) {
            return Settings.Global.getString(this.mContext.getContentResolver(), name);
        }

        void settingsGlobalPutInt(String name, int value) {
            Settings.Global.putInt(this.mContext.getContentResolver(), name, value);
        }

        void settingsSecurePutString(String name, String value) {
            Settings.Secure.putString(this.mContext.getContentResolver(), name, value);
        }

        void settingsGlobalPutString(String name, String value) {
            Settings.Global.putString(this.mContext.getContentResolver(), name, value);
        }

        void settingsSystemPutStringForUser(String name, String value, int userId) {
            Settings.System.putStringForUser(this.mContext.getContentResolver(), name, value, userId);
        }

        void securityLogSetLoggingEnabledProperty(boolean enabled) {
            SecurityLog.setLoggingEnabledProperty(enabled);
        }

        boolean securityLogGetLoggingEnabledProperty() {
            return SecurityLog.getLoggingEnabledProperty();
        }

        boolean securityLogIsLoggingEnabled() {
            return SecurityLog.isLoggingEnabled();
        }

        KeyChain.KeyChainConnection keyChainBindAsUser(UserHandle user) throws InterruptedException {
            return KeyChain.bindAsUser(this.mContext, user);
        }

        void postOnSystemServerInitThreadPool(Runnable runnable) {
            SystemServerInitThreadPool.submit(runnable, DevicePolicyManagerService.LOG_TAG);
        }

        public TransferOwnershipMetadataManager newTransferOwnershipMetadataManager() {
            return new TransferOwnershipMetadataManager();
        }

        public void runCryptoSelfTest() {
            CryptoTestHelper.runAndLogSelfTest();
        }

        public String[] getPersonalAppsForSuspension(int userId) {
            return new PersonalAppsSuspensionHelper(this.mContext.createContextAsUser(UserHandle.of(userId), 0)).getPersonalAppsForSuspension();
        }

        public long systemCurrentTimeMillis() {
            return System.currentTimeMillis();
        }
    }

    public DevicePolicyManagerService(Context context) {
        this(new Injector(context));
    }

    DevicePolicyManagerService(Injector injector) {
        this.mPolicyCache = new DevicePolicyCacheImpl();
        this.mStateCache = new DeviceStateCacheImpl();
        this.mPackagesToRemove = new ArraySet();
        this.mToken = new Binder();
        this.mRemoteBugreportServiceIsActive = new AtomicBoolean();
        this.mRemoteBugreportSharingAccepted = new AtomicBoolean();
        this.mStatLogger = new StatLogger(new String[]{"LockGuard.guard()"});
        this.mLockDoNoUseDirectly = LockGuard.installNewLock(7, true);
        this.mRemoteBugreportTimeoutRunnable = new Runnable() { // from class: com.android.server.devicepolicy.DevicePolicyManagerService.1
            @Override // java.lang.Runnable
            public void run() {
                if (DevicePolicyManagerService.this.mRemoteBugreportServiceIsActive.get()) {
                    DevicePolicyManagerService.this.onBugreportFailed();
                }
            }
        };
        this.mRemoteBugreportFinishedReceiver = new BroadcastReceiver() { // from class: com.android.server.devicepolicy.DevicePolicyManagerService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if ("android.intent.action.REMOTE_BUGREPORT_DISPATCH".equals(intent.getAction()) && DevicePolicyManagerService.this.mRemoteBugreportServiceIsActive.get()) {
                    DevicePolicyManagerService.this.onBugreportFinished(intent);
                }
            }
        };
        this.mRemoteBugreportConsentReceiver = new BroadcastReceiver() { // from class: com.android.server.devicepolicy.DevicePolicyManagerService.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                DevicePolicyManagerService.this.mInjector.getNotificationManager().cancel(DevicePolicyManagerService.LOG_TAG, 678432343);
                if ("com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED".equals(action)) {
                    DevicePolicyManagerService.this.onBugreportSharingAccepted();
                } else if ("com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED".equals(action)) {
                    DevicePolicyManagerService.this.onBugreportSharingDeclined();
                }
                DevicePolicyManagerService.this.mContext.unregisterReceiver(DevicePolicyManagerService.this.mRemoteBugreportConsentReceiver);
            }
        };
        this.mUserData = new SparseArray<>();
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.server.devicepolicy.DevicePolicyManagerService.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                final int userHandle = intent.getIntExtra("android.intent.extra.user_handle", getSendingUserId());
                if ("android.intent.action.USER_STARTED".equals(action) && userHandle == DevicePolicyManagerService.this.mOwners.getDeviceOwnerUserId()) {
                    synchronized (DevicePolicyManagerService.this.getLockObject()) {
                        if (DevicePolicyManagerService.this.isNetworkLoggingEnabledInternalLocked()) {
                            DevicePolicyManagerService.this.setNetworkLoggingActiveInternal(true);
                        }
                    }
                }
                if ("android.intent.action.BOOT_COMPLETED".equals(action) && userHandle == DevicePolicyManagerService.this.mOwners.getDeviceOwnerUserId() && DevicePolicyManagerService.this.getDeviceOwnerRemoteBugreportUri() != null) {
                    IntentFilter filterConsent = new IntentFilter();
                    filterConsent.addAction("com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED");
                    filterConsent.addAction("com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED");
                    DevicePolicyManagerService.this.mContext.registerReceiver(DevicePolicyManagerService.this.mRemoteBugreportConsentReceiver, filterConsent);
                    DevicePolicyManagerService.this.mInjector.getNotificationManager().notifyAsUser(DevicePolicyManagerService.LOG_TAG, 678432343, RemoteBugreportUtils.buildNotification(DevicePolicyManagerService.this.mContext, 3), UserHandle.ALL);
                }
                if ("android.intent.action.BOOT_COMPLETED".equals(action) || DevicePolicyManagerService.ACTION_EXPIRED_PASSWORD_NOTIFICATION.equals(action)) {
                    DevicePolicyManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.devicepolicy.DevicePolicyManagerService.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DevicePolicyManagerService.this.handlePasswordExpirationNotification(userHandle);
                        }
                    });
                }
                if ("android.intent.action.USER_ADDED".equals(action)) {
                    sendDeviceOwnerUserCommand("android.app.action.USER_ADDED", userHandle);
                    synchronized (DevicePolicyManagerService.this.getLockObject()) {
                        DevicePolicyManagerService.this.maybePauseDeviceWideLoggingLocked();
                    }
                    return;
                }
                if ("android.intent.action.USER_REMOVED".equals(action)) {
                    sendDeviceOwnerUserCommand("android.app.action.USER_REMOVED", userHandle);
                    synchronized (DevicePolicyManagerService.this.getLockObject()) {
                        boolean isRemovedUserAffiliated = DevicePolicyManagerService.this.isUserAffiliatedWithDeviceLocked(userHandle);
                        DevicePolicyManagerService.this.removeUserData(userHandle);
                        if (!isRemovedUserAffiliated) {
                            DevicePolicyManagerService.this.discardDeviceWideLogsLocked();
                            DevicePolicyManagerService.this.maybeResumeDeviceWideLoggingLocked();
                        }
                    }
                    return;
                }
                if ("android.intent.action.USER_STARTED".equals(action)) {
                    sendDeviceOwnerUserCommand("android.app.action.USER_STARTED", userHandle);
                    synchronized (DevicePolicyManagerService.this.getLockObject()) {
                        DevicePolicyManagerService.this.maybeSendAdminEnabledBroadcastLocked(userHandle);
                        DevicePolicyManagerService.this.mUserData.remove(userHandle);
                    }
                    DevicePolicyManagerService.this.handlePackagesChanged(null, userHandle);
                    DevicePolicyManagerService.this.updatePersonalAppsSuspensionOnUserStart(userHandle);
                    return;
                }
                if ("android.intent.action.USER_STOPPED".equals(action)) {
                    sendDeviceOwnerUserCommand("android.app.action.USER_STOPPED", userHandle);
                    if (DevicePolicyManagerService.this.isManagedProfile(userHandle)) {
                        Slog.d(DevicePolicyManagerService.LOG_TAG, "Managed profile was stopped");
                        DevicePolicyManagerService.this.updatePersonalAppsSuspension(userHandle, false);
                        return;
                    }
                    return;
                }
                if ("android.intent.action.USER_SWITCHED".equals(action)) {
                    sendDeviceOwnerUserCommand("android.app.action.USER_SWITCHED", userHandle);
                    return;
                }
                if ("android.intent.action.USER_UNLOCKED".equals(action)) {
                    synchronized (DevicePolicyManagerService.this.getLockObject()) {
                        DevicePolicyManagerService.this.maybeSendAdminEnabledBroadcastLocked(userHandle);
                    }
                    if (DevicePolicyManagerService.this.isManagedProfile(userHandle)) {
                        Slog.d(DevicePolicyManagerService.LOG_TAG, "Managed profile became unlocked");
                        if (DevicePolicyManagerService.this.updatePersonalAppsSuspension(userHandle, true) == 2) {
                            DevicePolicyManagerService.this.triggerPolicyComplianceCheck(userHandle);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if ("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE".equals(action)) {
                    DevicePolicyManagerService.this.handlePackagesChanged(null, userHandle);
                    return;
                }
                if ("android.intent.action.PACKAGE_CHANGED".equals(action)) {
                    DevicePolicyManagerService.this.handlePackagesChanged(intent.getData().getSchemeSpecificPart(), userHandle);
                    return;
                }
                if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                    if (intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                        DevicePolicyManagerService.this.handlePackagesChanged(intent.getData().getSchemeSpecificPart(), userHandle);
                        return;
                    } else {
                        DevicePolicyManagerService.this.handleNewPackageInstalled(intent.getData().getSchemeSpecificPart(), userHandle);
                        return;
                    }
                }
                if ("android.intent.action.PACKAGE_REMOVED".equals(action) && !intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                    DevicePolicyManagerService.this.handlePackagesChanged(intent.getData().getSchemeSpecificPart(), userHandle);
                    return;
                }
                if ("android.intent.action.MANAGED_PROFILE_ADDED".equals(action)) {
                    DevicePolicyManagerService.this.clearWipeProfileNotification();
                    return;
                }
                if ("android.intent.action.DATE_CHANGED".equals(action) || "android.intent.action.TIME_SET".equals(action)) {
                    DevicePolicyManagerService.this.updateSystemUpdateFreezePeriodsRecord(true);
                    int userId = DevicePolicyManagerService.this.getManagedUserId(0);
                    if (userId >= 0) {
                        DevicePolicyManagerService devicePolicyManagerService = DevicePolicyManagerService.this;
                        devicePolicyManagerService.updatePersonalAppsSuspension(userId, devicePolicyManagerService.mUserManager.isUserUnlocked(userId));
                        return;
                    }
                    return;
                }
                if (DevicePolicyManagerService.ACTION_PROFILE_OFF_DEADLINE.equals(action)) {
                    Slog.i(DevicePolicyManagerService.LOG_TAG, "Profile off deadline alarm was triggered");
                    int userId2 = DevicePolicyManagerService.this.getManagedUserId(0);
                    if (userId2 >= 0) {
                        DevicePolicyManagerService devicePolicyManagerService2 = DevicePolicyManagerService.this;
                        devicePolicyManagerService2.updatePersonalAppsSuspension(userId2, devicePolicyManagerService2.mUserManager.isUserUnlocked(userId2));
                        return;
                    } else {
                        Slog.wtf(DevicePolicyManagerService.LOG_TAG, "Got deadline alarm for nonexistent profile");
                        return;
                    }
                }
                if (DevicePolicyManagerService.ACTION_TURN_PROFILE_ON_NOTIFICATION.equals(action)) {
                    Slog.i(DevicePolicyManagerService.LOG_TAG, "requesting to turn on the profile: " + userHandle);
                    DevicePolicyManagerService.this.mUserManager.requestQuietModeEnabled(false, UserHandle.of(userHandle));
                }
            }

            private void sendDeviceOwnerUserCommand(String action, int userHandle) {
                synchronized (DevicePolicyManagerService.this.getLockObject()) {
                    ActiveAdmin deviceOwner = DevicePolicyManagerService.this.getDeviceOwnerAdminLocked();
                    if (deviceOwner != null) {
                        Bundle extras = new Bundle();
                        extras.putParcelable("android.intent.extra.USER", UserHandle.of(userHandle));
                        DevicePolicyManagerService.this.sendAdminCommandLocked(deviceOwner, action, extras, null, true);
                    }
                }
            }
        };
        this.mInjector = injector;
        Context context = injector.mContext;
        Objects.requireNonNull(context);
        this.mContext = context;
        Looper myLooper = injector.getMyLooper();
        Objects.requireNonNull(myLooper);
        this.mHandler = new Handler(myLooper);
        DevicePolicyConstantsObserver devicePolicyConstantsObserver = new DevicePolicyConstantsObserver(this.mHandler);
        this.mConstantsObserver = devicePolicyConstantsObserver;
        devicePolicyConstantsObserver.register();
        this.mConstants = loadConstants();
        Owners ownersNewOwners = injector.newOwners();
        Objects.requireNonNull(ownersNewOwners);
        this.mOwners = ownersNewOwners;
        UserManager userManager = injector.getUserManager();
        Objects.requireNonNull(userManager);
        this.mUserManager = userManager;
        UserManagerInternal userManagerInternal = injector.getUserManagerInternal();
        Objects.requireNonNull(userManagerInternal);
        this.mUserManagerInternal = userManagerInternal;
        UsageStatsManagerInternal usageStatsManagerInternal = injector.getUsageStatsManagerInternal();
        Objects.requireNonNull(usageStatsManagerInternal);
        this.mUsageStatsManagerInternal = usageStatsManagerInternal;
        IPackageManager iPackageManager = injector.getIPackageManager();
        Objects.requireNonNull(iPackageManager);
        this.mIPackageManager = iPackageManager;
        IPlatformCompat iPlatformCompat = injector.getIPlatformCompat();
        Objects.requireNonNull(iPlatformCompat);
        this.mIPlatformCompat = iPlatformCompat;
        IPermissionManager iPermissionManager = injector.getIPermissionManager();
        Objects.requireNonNull(iPermissionManager);
        this.mIPermissionManager = iPermissionManager;
        TelephonyManager telephonyManager = injector.getTelephonyManager();
        Objects.requireNonNull(telephonyManager);
        this.mTelephonyManager = telephonyManager;
        this.mLocalService = new LocalService();
        this.mLockPatternUtils = injector.newLockPatternUtils();
        this.mLockSettingsInternal = injector.getLockSettingsInternal();
        this.mSecurityLogMonitor = new SecurityLogMonitor(this);
        this.mHasFeature = this.mInjector.hasFeature();
        this.mIsWatch = this.mInjector.getPackageManager().hasSystemFeature("android.hardware.type.watch");
        this.mHasTelephonyFeature = this.mInjector.getPackageManager().hasSystemFeature("android.hardware.telephony");
        this.mIsAutomotive = this.mInjector.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
        Handler handler = BackgroundThread.getHandler();
        this.mBackgroundHandler = handler;
        this.mCertificateMonitor = new CertificateMonitor(this, this.mInjector, handler);
        this.mDeviceAdminServiceController = new DeviceAdminServiceController(this, this.mConstants);
        this.mOverlayPackagesProvider = new OverlayPackagesProvider(this.mContext);
        this.mTransferOwnershipMetadataManager = this.mInjector.newTransferOwnershipMetadataManager();
        if (!this.mHasFeature) {
            this.mSetupContentObserver = null;
            return;
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.BOOT_COMPLETED");
        filter.addAction(ACTION_EXPIRED_PASSWORD_NOTIFICATION);
        filter.addAction(ACTION_TURN_PROFILE_ON_NOTIFICATION);
        filter.addAction(ACTION_PROFILE_OFF_DEADLINE);
        filter.addAction("android.intent.action.USER_ADDED");
        filter.addAction("android.intent.action.USER_REMOVED");
        filter.addAction("android.intent.action.USER_STARTED");
        filter.addAction("android.intent.action.USER_STOPPED");
        filter.addAction("android.intent.action.USER_SWITCHED");
        filter.addAction("android.intent.action.USER_UNLOCKED");
        filter.addAction("android.intent.action.MANAGED_PROFILE_UNAVAILABLE");
        filter.setPriority(1000);
        this.mContext.registerReceiverAsUser(this.mReceiver, UserHandle.ALL, filter, null, this.mHandler);
        IntentFilter filter2 = new IntentFilter();
        filter2.addAction("android.intent.action.PACKAGE_CHANGED");
        filter2.addAction("android.intent.action.PACKAGE_REMOVED");
        filter2.addAction("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
        filter2.addAction("android.intent.action.PACKAGE_ADDED");
        filter2.addDataScheme(com.android.server.pm.Settings.ATTR_PACKAGE);
        this.mContext.registerReceiverAsUser(this.mReceiver, UserHandle.ALL, filter2, null, this.mHandler);
        IntentFilter filter3 = new IntentFilter();
        filter3.addAction("android.intent.action.MANAGED_PROFILE_ADDED");
        filter3.addAction("android.intent.action.TIME_SET");
        filter3.addAction("android.intent.action.DATE_CHANGED");
        this.mContext.registerReceiverAsUser(this.mReceiver, UserHandle.ALL, filter3, null, this.mHandler);
        LocalServices.addService(DevicePolicyManagerInternal.class, this.mLocalService);
        this.mSetupContentObserver = new SetupContentObserver(this.mHandler);
        this.mUserManagerInternal.addUserRestrictionsListener(new RestrictionsListener(this.mContext));
        loadOwners();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: getUserData, reason: merged with bridge method [inline-methods] */
    public DevicePolicyData lambda$getUserDataUnchecked$0$DevicePolicyManagerService(int userHandle) {
        DevicePolicyData policy;
        synchronized (getLockObject()) {
            policy = this.mUserData.get(userHandle);
            if (policy == null) {
                policy = new DevicePolicyData(userHandle);
                this.mUserData.append(userHandle, policy);
                loadSettingsLocked(policy, userHandle);
                if (userHandle == 0) {
                    this.mStateCache.setDeviceProvisioned(policy.mUserSetupComplete);
                }
            }
        }
        return policy;
    }

    DevicePolicyData getUserDataUnchecked(final int userHandle) {
        return (DevicePolicyData) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$E3l49EGA6UCGqdaOZqz6OFNlTrc
            public final Object getOrThrow() {
                return this.f$0.lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            }
        });
    }

    void removeUserData(int userHandle) {
        synchronized (getLockObject()) {
            try {
                if (userHandle == 0) {
                    Slog.w(LOG_TAG, "Tried to remove device policy file for user 0! Ignoring.");
                    return;
                }
                updatePasswordQualityCacheForUserGroup(userHandle);
                this.mPolicyCache.onUserRemoved(userHandle);
                this.mOwners.removeProfileOwner(userHandle);
                this.mOwners.writeProfileOwner(userHandle);
                DevicePolicyData policy = this.mUserData.get(userHandle);
                if (policy != null) {
                    this.mUserData.remove(userHandle);
                }
                File policyFile = new File(this.mInjector.environmentGetUserSystemDirectory(userHandle), DEVICE_POLICIES_XML);
                policyFile.delete();
                Slog.i(LOG_TAG, "Removed device policy file " + policyFile.getAbsolutePath());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void loadOwners() {
        synchronized (getLockObject()) {
            this.mOwners.load();
            setDeviceOwnershipSystemPropertyLocked();
            findOwnerComponentIfNecessaryLocked();
            updateDeviceOwnerLocked();
        }
    }

    private void migrateToProfileOnOrganizationOwnedDeviceIfCompLocked() {
        logIfVerbose("Checking whether we need to migrate COMP ");
        int doUserId = this.mOwners.getDeviceOwnerUserId();
        if (doUserId == -10000) {
            logIfVerbose("No DO found, skipping migration.");
            return;
        }
        List<UserInfo> profiles = this.mUserManager.getProfiles(doUserId);
        if (profiles.size() != 2) {
            if (profiles.size() == 1) {
                logIfVerbose("Profile not found, skipping migration.");
                return;
            }
            Slog.wtf(LOG_TAG, "Found " + profiles.size() + " profiles, skipping migration");
            return;
        }
        int poUserId = getManagedUserId(doUserId);
        if (poUserId < 0) {
            Slog.wtf(LOG_TAG, "Found DO and a profile, but it is not managed, skipping migration");
            return;
        }
        ActiveAdmin doAdmin = getDeviceOwnerAdminLocked();
        ActiveAdmin poAdmin = getProfileOwnerAdminLocked(poUserId);
        if (doAdmin == null || poAdmin == null) {
            Slog.wtf(LOG_TAG, "Failed to get either PO or DO admin, aborting migration.");
            return;
        }
        ComponentName doAdminComponent = this.mOwners.getDeviceOwnerComponent();
        ComponentName poAdminComponent = this.mOwners.getProfileOwnerComponent(poUserId);
        if (doAdminComponent == null || poAdminComponent == null) {
            Slog.wtf(LOG_TAG, "Cannot find PO or DO component name, aborting migration.");
            return;
        }
        if (!doAdminComponent.getPackageName().equals(poAdminComponent.getPackageName())) {
            Slog.e(LOG_TAG, "DO and PO are different packages, aborting migration.");
            return;
        }
        Slog.i(LOG_TAG, String.format("Migrating COMP to PO on a corp owned device; primary user: %d; profile: %d", Integer.valueOf(doUserId), Integer.valueOf(poUserId)));
        Slog.i(LOG_TAG, "Giving the PO additional power...");
        markProfileOwnerOnOrganizationOwnedDeviceUncheckedLocked(poAdminComponent, poUserId);
        Slog.i(LOG_TAG, "Migrating DO policies to PO...");
        moveDoPoliciesToProfileParentAdminLocked(doAdmin, poAdmin.getParentActiveAdmin());
        migratePersonalAppSuspensionLocked(doUserId, poUserId, poAdmin);
        saveSettingsLocked(poUserId);
        Slog.i(LOG_TAG, "Clearing the DO...");
        ComponentName doAdminReceiver = doAdmin.info.getComponent();
        clearDeviceOwnerLocked(doAdmin, doUserId);
        Slog.i(LOG_TAG, "Removing admin artifacts...");
        removeAdminArtifacts(doAdminReceiver, doUserId);
        Slog.i(LOG_TAG, "Uninstalling the DO...");
        uninstallOrDisablePackage(doAdminComponent.getPackageName(), doUserId);
        Slog.i(LOG_TAG, "Migration complete.");
        DevicePolicyEventLogger.createEvent(CecMessageType.VENDOR_COMMAND).setAdmin(poAdminComponent).write();
    }

    private void migratePersonalAppSuspensionLocked(int doUserId, int poUserId, ActiveAdmin poAdmin) {
        PackageManagerInternal pmi = this.mInjector.getPackageManagerInternal();
        if (!pmi.isSuspendingAnyPackages(PackageManagerService.PLATFORM_PACKAGE_NAME, doUserId)) {
            Slog.i(LOG_TAG, "DO is not suspending any apps.");
            return;
        }
        if (getTargetSdk(poAdmin.info.getPackageName(), poUserId) >= 30) {
            Slog.i(LOG_TAG, "PO is targeting R+, keeping personal apps suspended.");
            lambda$getUserDataUnchecked$0$DevicePolicyManagerService(doUserId).mAppsSuspended = true;
            poAdmin.mSuspendPersonalApps = true;
        } else {
            Slog.i(LOG_TAG, "PO isn't targeting R+, unsuspending personal apps.");
            pmi.unsuspendForSuspendingPackage(PackageManagerService.PLATFORM_PACKAGE_NAME, doUserId);
        }
    }

    private void uninstallOrDisablePackage(final String packageName, final int userHandle) {
        try {
            ApplicationInfo appInfo = this.mIPackageManager.getApplicationInfo(packageName, 786432, userHandle);
            if (appInfo == null) {
                Slog.wtf(LOG_TAG, "Failed to get package info for " + packageName);
                return;
            }
            if ((appInfo.flags & 1) != 0) {
                Slog.i(LOG_TAG, String.format("Package %s is pre-installed, marking disabled until used", packageName));
                this.mContext.getPackageManager().setApplicationEnabledSetting(packageName, 4, 0);
            } else {
                IIntentSender.Stub mLocalSender = new IIntentSender.Stub() { // from class: com.android.server.devicepolicy.DevicePolicyManagerService.5
                    public void send(int code, Intent intent, String resolvedType, IBinder whitelistToken, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) {
                        int status = intent.getIntExtra("android.content.pm.extra.STATUS", 1);
                        if (status == 0) {
                            Slog.i(DevicePolicyManagerService.LOG_TAG, String.format("Package %s uninstalled for user %d", packageName, Integer.valueOf(userHandle)));
                        } else {
                            Slog.e(DevicePolicyManagerService.LOG_TAG, String.format("Failed to uninstall %s; status: %d", packageName, Integer.valueOf(status)));
                        }
                    }
                };
                PackageInstaller pi = this.mInjector.getPackageManager(userHandle).getPackageInstaller();
                pi.uninstall(packageName, 0, new IntentSender(mLocalSender));
            }
        } catch (RemoteException e) {
        }
    }

    private void moveDoPoliciesToProfileParentAdminLocked(ActiveAdmin doAdmin, ActiveAdmin parentAdmin) {
        if (parentAdmin.mPasswordPolicy.quality == 0) {
            parentAdmin.mPasswordPolicy = doAdmin.mPasswordPolicy;
        }
        if (parentAdmin.passwordHistoryLength == 0) {
            parentAdmin.passwordHistoryLength = doAdmin.passwordHistoryLength;
        }
        if (parentAdmin.passwordExpirationTimeout == 0) {
            parentAdmin.passwordExpirationTimeout = doAdmin.passwordExpirationTimeout;
        }
        if (parentAdmin.maximumFailedPasswordsForWipe == 0) {
            parentAdmin.maximumFailedPasswordsForWipe = doAdmin.maximumFailedPasswordsForWipe;
        }
        if (parentAdmin.maximumTimeToUnlock == 0) {
            parentAdmin.maximumTimeToUnlock = doAdmin.maximumTimeToUnlock;
        }
        if (parentAdmin.strongAuthUnlockTimeout == 259200000) {
            parentAdmin.strongAuthUnlockTimeout = doAdmin.strongAuthUnlockTimeout;
        }
        parentAdmin.disabledKeyguardFeatures |= doAdmin.disabledKeyguardFeatures & 438;
        parentAdmin.trustAgentInfos.putAll((ArrayMap<? extends String, ? extends ActiveAdmin.TrustAgentInfo>) doAdmin.trustAgentInfos);
        parentAdmin.disableCamera = doAdmin.disableCamera;
        parentAdmin.requireAutoTime = doAdmin.requireAutoTime;
        parentAdmin.disableScreenCapture = doAdmin.disableScreenCapture;
        parentAdmin.accountTypesWithManagementDisabled.addAll(doAdmin.accountTypesWithManagementDisabled);
        moveDoUserRestrictionsToCopeParent(doAdmin, parentAdmin);
    }

    private void moveDoUserRestrictionsToCopeParent(ActiveAdmin doAdmin, ActiveAdmin parentAdmin) {
        if (doAdmin.userRestrictions == null) {
            return;
        }
        for (String restriction : doAdmin.userRestrictions.keySet()) {
            if (UserRestrictionsUtils.canProfileOwnerOfOrganizationOwnedDeviceChange(restriction)) {
                parentAdmin.ensureUserRestrictions().putBoolean(restriction, doAdmin.userRestrictions.getBoolean(restriction));
            }
        }
    }

    private void applyManagedProfileRestrictionIfDeviceOwnerLocked() {
        int doUserId = this.mOwners.getDeviceOwnerUserId();
        if (doUserId == -10000) {
            logIfVerbose("No DO found, skipping application of restriction.");
            return;
        }
        UserHandle doUserHandle = UserHandle.of(doUserId);
        if (!this.mUserManager.hasUserRestriction("no_add_managed_profile", doUserHandle)) {
            this.mUserManager.setUserRestriction("no_add_managed_profile", true, doUserHandle);
        }
    }

    private void maybeSetDefaultProfileOwnerUserRestrictions() {
        synchronized (getLockObject()) {
            Iterator<Integer> it = this.mOwners.getProfileOwnerKeys().iterator();
            while (it.hasNext()) {
                int userId = it.next().intValue();
                ActiveAdmin profileOwner = getProfileOwnerAdminLocked(userId);
                if (profileOwner != null && this.mUserManager.isManagedProfile(userId)) {
                    maybeSetDefaultRestrictionsForAdminLocked(userId, profileOwner, UserRestrictionsUtils.getDefaultEnabledForManagedProfiles());
                    ensureUnknownSourcesRestrictionForProfileOwnerLocked(userId, profileOwner, false);
                }
            }
        }
    }

    private void ensureUnknownSourcesRestrictionForProfileOwnerLocked(int userId, ActiveAdmin profileOwner, boolean newOwner) {
        if (newOwner || this.mInjector.settingsSecureGetIntForUser("unknown_sources_default_reversed", 0, userId) != 0) {
            profileOwner.ensureUserRestrictions().putBoolean("no_install_unknown_sources", true);
            saveUserRestrictionsLocked(userId);
            this.mInjector.settingsSecurePutIntForUser("unknown_sources_default_reversed", 0, userId);
        }
    }

    private void maybeSetDefaultRestrictionsForAdminLocked(int userId, ActiveAdmin admin, Set<String> defaultRestrictions) {
        if (defaultRestrictions.equals(admin.defaultEnabledRestrictionsAlreadySet)) {
            return;
        }
        Slog.i(LOG_TAG, "New user restrictions need to be set by default for user " + userId);
        Set<String> restrictionsToSet = new ArraySet<>(defaultRestrictions);
        restrictionsToSet.removeAll(admin.defaultEnabledRestrictionsAlreadySet);
        if (!restrictionsToSet.isEmpty()) {
            for (String restriction : restrictionsToSet) {
                admin.ensureUserRestrictions().putBoolean(restriction, true);
            }
            admin.defaultEnabledRestrictionsAlreadySet.addAll(restrictionsToSet);
            Slog.i(LOG_TAG, "Enabled the following restrictions by default: " + restrictionsToSet);
            saveUserRestrictionsLocked(userId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDeviceOwnershipSystemPropertyLocked() {
        if (StorageManager.inCryptKeeperBounce()) {
            return;
        }
        boolean deviceProvisioned = this.mInjector.settingsGlobalGetInt("device_provisioned", 0) != 0;
        boolean hasDeviceOwner = this.mOwners.hasDeviceOwner();
        boolean hasOrgOwnedProfile = isOrganizationOwnedDeviceWithManagedProfile();
        if (!hasDeviceOwner && !hasOrgOwnedProfile && !deviceProvisioned) {
            return;
        }
        String value = Boolean.toString(hasDeviceOwner || hasOrgOwnedProfile);
        String currentVal = this.mInjector.systemPropertiesGet(PROPERTY_ORGANIZATION_OWNED, null);
        if (TextUtils.isEmpty(currentVal)) {
            Slog.i(LOG_TAG, "Set ro.organization_owned property to " + value);
            this.mInjector.systemPropertiesSet(PROPERTY_ORGANIZATION_OWNED, value);
            return;
        }
        if (!value.equals(currentVal)) {
            Slog.w(LOG_TAG, "Cannot change existing ro.organization_owned to " + value);
        }
    }

    private void maybeStartSecurityLogMonitorOnActivityManagerReady() {
        synchronized (getLockObject()) {
            if (this.mInjector.securityLogIsLoggingEnabled()) {
                this.mSecurityLogMonitor.start(getSecurityLoggingEnabledUser());
                this.mInjector.runCryptoSelfTest();
                maybePauseDeviceWideLoggingLocked();
            }
        }
    }

    private void findOwnerComponentIfNecessaryLocked() {
        if (!this.mOwners.hasDeviceOwner()) {
            return;
        }
        ComponentName doComponentName = this.mOwners.getDeviceOwnerComponent();
        if (!TextUtils.isEmpty(doComponentName.getClassName())) {
            return;
        }
        ComponentName doComponent = findAdminComponentWithPackageLocked(doComponentName.getPackageName(), this.mOwners.getDeviceOwnerUserId());
        if (doComponent == null) {
            Slog.e(LOG_TAG, "Device-owner isn't registered as device-admin");
            return;
        }
        Owners owners = this.mOwners;
        owners.setDeviceOwnerWithRestrictionsMigrated(doComponent, owners.getDeviceOwnerName(), this.mOwners.getDeviceOwnerUserId(), !this.mOwners.getDeviceOwnerUserRestrictionsNeedsMigration());
        this.mOwners.writeDeviceOwner();
    }

    private void migrateUserRestrictionsIfNecessaryLocked() {
        if (this.mOwners.getDeviceOwnerUserRestrictionsNeedsMigration()) {
            ActiveAdmin deviceOwnerAdmin = getDeviceOwnerAdminLocked();
            migrateUserRestrictionsForUser(UserHandle.SYSTEM, deviceOwnerAdmin, null, true);
            pushUserRestrictions(0);
            this.mOwners.setDeviceOwnerUserRestrictionsMigrated();
        }
        Set<String> secondaryUserExceptionList = Sets.newArraySet(new String[]{"no_outgoing_calls", "no_sms"});
        for (UserInfo ui : this.mUserManager.getUsers()) {
            int userId = ui.id;
            if (this.mOwners.getProfileOwnerUserRestrictionsNeedsMigration(userId)) {
                ActiveAdmin profileOwnerAdmin = getProfileOwnerAdminLocked(userId);
                Set<String> exceptionList = userId == 0 ? null : secondaryUserExceptionList;
                migrateUserRestrictionsForUser(ui.getUserHandle(), profileOwnerAdmin, exceptionList, false);
                pushUserRestrictions(userId);
                this.mOwners.setProfileOwnerUserRestrictionsMigrated(userId);
            }
        }
    }

    private void migrateUserRestrictionsForUser(UserHandle user, ActiveAdmin admin, Set<String> exceptionList, boolean isDeviceOwner) {
        boolean canOwnerChange;
        Bundle origRestrictions = this.mUserManagerInternal.getBaseUserRestrictions(user.getIdentifier());
        Bundle newBaseRestrictions = new Bundle();
        Bundle newOwnerRestrictions = new Bundle();
        for (String key : origRestrictions.keySet()) {
            if (origRestrictions.getBoolean(key)) {
                if (isDeviceOwner) {
                    canOwnerChange = UserRestrictionsUtils.canDeviceOwnerChange(key);
                } else {
                    canOwnerChange = UserRestrictionsUtils.canProfileOwnerChange(key, user.getIdentifier());
                }
                if (!canOwnerChange || (exceptionList != null && exceptionList.contains(key))) {
                    newBaseRestrictions.putBoolean(key, true);
                } else {
                    newOwnerRestrictions.putBoolean(key, true);
                }
            }
        }
        this.mUserManagerInternal.setBaseUserRestrictionsByDpmsForMigration(user.getIdentifier(), newBaseRestrictions);
        if (admin != null) {
            admin.ensureUserRestrictions().clear();
            admin.ensureUserRestrictions().putAll(newOwnerRestrictions);
        } else {
            Slog.w(LOG_TAG, "ActiveAdmin for DO/PO not found. user=" + user.getIdentifier());
        }
        saveSettingsLocked(user.getIdentifier());
    }

    private ComponentName findAdminComponentWithPackageLocked(String packageName, int userId) {
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
        int n = policy.mAdminList.size();
        ComponentName found = null;
        int nFound = 0;
        for (int i = 0; i < n; i++) {
            ActiveAdmin admin = policy.mAdminList.get(i);
            if (packageName.equals(admin.info.getPackageName())) {
                if (nFound == 0) {
                    found = admin.info.getComponent();
                }
                nFound++;
            }
        }
        if (nFound > 1) {
            Slog.w(LOG_TAG, "Multiple DA found; assume the first one is DO.");
        }
        return found;
    }

    private void setExpirationAlarmCheckLocked(final Context context, final int userHandle, final boolean parent) {
        long alarmTime;
        long expiration = getPasswordExpirationLocked(null, userHandle, parent);
        long now = System.currentTimeMillis();
        long timeToExpire = expiration - now;
        if (expiration == 0) {
            alarmTime = 0;
        } else if (timeToExpire <= 0) {
            alarmTime = MS_PER_DAY + now;
        } else {
            long alarmInterval = timeToExpire % MS_PER_DAY;
            if (alarmInterval == 0) {
                alarmInterval = MS_PER_DAY;
            }
            alarmTime = now + alarmInterval;
        }
        final long j = alarmTime;
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$VDIwg4X1iKAqFvQldV7uz3FQETk
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setExpirationAlarmCheckLocked$1$DevicePolicyManagerService(parent, userHandle, context, j);
            }
        });
    }

    public /* synthetic */ void lambda$setExpirationAlarmCheckLocked$1$DevicePolicyManagerService(boolean parent, int userHandle, Context context, long alarmTime) throws Exception {
        int affectedUserHandle = parent ? getProfileParentId(userHandle) : userHandle;
        AlarmManager am = this.mInjector.getAlarmManager();
        PendingIntent pi = PendingIntent.getBroadcastAsUser(context, REQUEST_EXPIRE_PASSWORD, new Intent(ACTION_EXPIRED_PASSWORD_NOTIFICATION), 1207959552, UserHandle.of(affectedUserHandle));
        am.cancel(pi);
        if (alarmTime != 0) {
            am.set(1, alarmTime, pi);
        }
    }

    ActiveAdmin getActiveAdminUncheckedLocked(ComponentName who, int userHandle) {
        ensureLocked();
        ActiveAdmin admin = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle).mAdminMap.get(who);
        if (admin != null && who.getPackageName().equals(admin.info.getActivityInfo().packageName) && who.getClassName().equals(admin.info.getActivityInfo().name)) {
            return admin;
        }
        return null;
    }

    ActiveAdmin getActiveAdminUncheckedLocked(ComponentName who, int userHandle, boolean parent) {
        ensureLocked();
        if (parent) {
            enforceManagedProfile(userHandle, "call APIs on the parent profile");
        }
        ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle);
        if (admin != null && parent) {
            return admin.getParentActiveAdmin();
        }
        return admin;
    }

    ActiveAdmin getActiveAdminForCallerLocked(ComponentName who, int reqPolicy) throws SecurityException {
        return getActiveAdminOrCheckPermissionForCallerLocked(who, reqPolicy, null);
    }

    ActiveAdmin getActiveAdminOrCheckPermissionForCallerLocked(ComponentName who, int reqPolicy, String permission) throws SecurityException {
        ensureLocked();
        int callingUid = this.mInjector.binderGetCallingUid();
        ActiveAdmin result = getActiveAdminWithPolicyForUidLocked(who, reqPolicy, callingUid);
        if (result != null) {
            return result;
        }
        if (permission != null && this.mContext.checkCallingPermission(permission) == 0) {
            return null;
        }
        if (who != null) {
            int userId = UserHandle.getUserId(callingUid);
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
            ActiveAdmin admin = policy.mAdminMap.get(who);
            boolean isDeviceOwner = isDeviceOwner(admin.info.getComponent(), userId);
            boolean isProfileOwner = isProfileOwner(admin.info.getComponent(), userId);
            if (reqPolicy == -2) {
                throw new SecurityException("Admin " + admin.info.getComponent() + " does not own the device");
            }
            if (reqPolicy == -1) {
                throw new SecurityException("Admin " + admin.info.getComponent() + " does not own the profile");
            }
            if (reqPolicy == -3) {
                throw new SecurityException("Admin " + admin.info.getComponent() + " is not the profile owner on organization-owned device");
            }
            if (DA_DISALLOWED_POLICIES.contains(Integer.valueOf(reqPolicy)) && !isDeviceOwner && !isProfileOwner) {
                throw new SecurityException("Admin " + admin.info.getComponent() + " is not a device owner or profile owner, so may not use policy: " + admin.info.getTagForPolicy(reqPolicy));
            }
            throw new SecurityException("Admin " + admin.info.getComponent() + " did not specify uses-policy for: " + admin.info.getTagForPolicy(reqPolicy));
        }
        throw new SecurityException("No active admin owned by uid " + callingUid + " for policy #" + reqPolicy);
    }

    ActiveAdmin getActiveAdminForCallerLocked(ComponentName who, int reqPolicy, boolean parent) throws SecurityException {
        return getActiveAdminOrCheckPermissionForCallerLocked(who, reqPolicy, parent, null);
    }

    ActiveAdmin getActiveAdminOrCheckPermissionForCallerLocked(ComponentName who, int reqPolicy, boolean parent, String permission) throws SecurityException {
        ensureLocked();
        if (parent) {
            enforceManagedProfile(this.mInjector.userHandleGetCallingUserId(), "call APIs on the parent profile");
        }
        ActiveAdmin admin = getActiveAdminOrCheckPermissionForCallerLocked(who, reqPolicy, permission);
        return parent ? admin.getParentActiveAdmin() : admin;
    }

    private ActiveAdmin getActiveAdminForUidLocked(ComponentName who, int uid) {
        ensureLocked();
        int userId = UserHandle.getUserId(uid);
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
        ActiveAdmin admin = policy.mAdminMap.get(who);
        if (admin == null) {
            throw new SecurityException("No active admin " + who + " for UID " + uid);
        }
        if (admin.getUid() != uid) {
            throw new SecurityException("Admin " + who + " is not owned by uid " + uid);
        }
        return admin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ActiveAdmin getActiveAdminWithPolicyForUidLocked(ComponentName who, int reqPolicy, int uid) {
        ensureLocked();
        int userId = UserHandle.getUserId(uid);
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
        if (who != null) {
            ActiveAdmin admin = policy.mAdminMap.get(who);
            if (admin == null) {
                throw new SecurityException("No active admin " + who);
            }
            if (admin.getUid() != uid) {
                throw new SecurityException("Admin " + who + " is not owned by uid " + uid);
            }
            if (isActiveAdminWithPolicyForUserLocked(admin, reqPolicy, userId)) {
                return admin;
            }
            return null;
        }
        for (ActiveAdmin admin2 : policy.mAdminList) {
            if (admin2.getUid() == uid && isActiveAdminWithPolicyForUserLocked(admin2, reqPolicy, userId)) {
                return admin2;
            }
        }
        return null;
    }

    boolean isActiveAdminWithPolicyForUserLocked(ActiveAdmin admin, int reqPolicy, int userId) {
        ensureLocked();
        boolean ownsDevice = isDeviceOwner(admin.info.getComponent(), userId);
        boolean ownsProfile = isProfileOwner(admin.info.getComponent(), userId);
        boolean ownsProfileOnOrganizationOwnedDevice = isProfileOwnerOfOrganizationOwnedDevice(admin.info.getComponent(), userId);
        if (reqPolicy == -2) {
            return ownsDevice;
        }
        if (reqPolicy == -3) {
            return ownsDevice || ownsProfileOnOrganizationOwnedDevice;
        }
        if (reqPolicy == -1) {
            return ownsDevice || ownsProfileOnOrganizationOwnedDevice || ownsProfile;
        }
        boolean allowedToUsePolicy = ownsDevice || ownsProfile || !DA_DISALLOWED_POLICIES.contains(Integer.valueOf(reqPolicy)) || getTargetSdk(admin.info.getPackageName(), userId) < 29;
        return allowedToUsePolicy && admin.info.usesPolicy(reqPolicy);
    }

    void sendAdminCommandLocked(ActiveAdmin admin, String action) {
        sendAdminCommandLocked(admin, action, null);
    }

    void sendAdminCommandLocked(ActiveAdmin admin, String action, BroadcastReceiver result) {
        sendAdminCommandLocked(admin, action, (Bundle) null, result);
    }

    void sendAdminCommandLocked(ActiveAdmin admin, String action, Bundle adminExtras, BroadcastReceiver result) {
        sendAdminCommandLocked(admin, action, adminExtras, result, false);
    }

    boolean sendAdminCommandLocked(ActiveAdmin admin, String action, Bundle adminExtras, BroadcastReceiver result, boolean inForeground) {
        Intent intent = new Intent(action);
        intent.setComponent(admin.info.getComponent());
        if (UserManager.isDeviceInDemoMode(this.mContext)) {
            intent.addFlags(AudioFormat.EVRC);
        }
        if (action.equals("android.app.action.ACTION_PASSWORD_EXPIRING")) {
            intent.putExtra("expiration", admin.passwordExpirationDate);
        }
        if (inForeground) {
            intent.addFlags(AudioFormat.EVRC);
        }
        if (adminExtras != null) {
            intent.putExtras(adminExtras);
        }
        if (this.mInjector.getPackageManager().queryBroadcastReceiversAsUser(intent, AudioFormat.EVRC, admin.getUserHandle()).isEmpty()) {
            return false;
        }
        BroadcastOptions options = BroadcastOptions.makeBasic();
        options.setBackgroundActivityStartsAllowed(true);
        if (result == null) {
            this.mContext.sendBroadcastAsUser(intent, admin.getUserHandle(), null, options.toBundle());
            return true;
        }
        this.mContext.sendOrderedBroadcastAsUser(intent, admin.getUserHandle(), null, -1, options.toBundle(), result, this.mHandler, -1, null, null);
        return true;
    }

    void sendAdminCommandLocked(String action, int reqPolicy, int userHandle, Bundle adminExtras) {
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        int count = policy.mAdminList.size();
        for (int i = 0; i < count; i++) {
            ActiveAdmin admin = policy.mAdminList.get(i);
            if (admin.info.usesPolicy(reqPolicy)) {
                sendAdminCommandLocked(admin, action, adminExtras, (BroadcastReceiver) null);
            }
        }
    }

    private void sendAdminCommandToSelfAndProfilesLocked(String action, int reqPolicy, int userHandle, Bundle adminExtras) {
        int[] profileIds = this.mUserManager.getProfileIdsWithDisabled(userHandle);
        for (int profileId : profileIds) {
            sendAdminCommandLocked(action, reqPolicy, profileId, adminExtras);
        }
    }

    private void sendAdminCommandForLockscreenPoliciesLocked(String action, int reqPolicy, int userHandle) {
        Bundle extras = new Bundle();
        extras.putParcelable("android.intent.extra.USER", UserHandle.of(userHandle));
        if (isSeparateProfileChallengeEnabled(userHandle)) {
            sendAdminCommandLocked(action, reqPolicy, userHandle, extras);
        } else {
            sendAdminCommandToSelfAndProfilesLocked(action, reqPolicy, userHandle, extras);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: removeActiveAdminLocked, reason: merged with bridge method [inline-methods] */
    public void lambda$removeActiveAdmin$7$DevicePolicyManagerService(final ComponentName adminReceiver, final int userHandle) {
        ActiveAdmin admin = getActiveAdminUncheckedLocked(adminReceiver, userHandle);
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        if (admin != null && !policy.mRemovingAdmins.contains(adminReceiver)) {
            policy.mRemovingAdmins.add(adminReceiver);
            sendAdminCommandLocked(admin, "android.app.action.DEVICE_ADMIN_DISABLED", new BroadcastReceiver() { // from class: com.android.server.devicepolicy.DevicePolicyManagerService.6
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    DevicePolicyManagerService.this.removeAdminArtifacts(adminReceiver, userHandle);
                    DevicePolicyManagerService.this.removePackageIfRequired(adminReceiver.getPackageName(), userHandle);
                }
            });
        }
    }

    public DeviceAdminInfo findAdmin(final ComponentName adminName, final int userHandle, boolean throwForMissingPermission) {
        if (!this.mHasFeature) {
            return null;
        }
        enforceFullCrossUsersPermission(userHandle);
        ActivityInfo ai = (ActivityInfo) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$W0PqT_DujOnRfFtIRJT9BUc0AKo
            public final Object getOrThrow() {
                return this.f$0.lambda$findAdmin$2$DevicePolicyManagerService(adminName, userHandle);
            }
        });
        if (ai == null) {
            throw new IllegalArgumentException("Unknown admin: " + adminName);
        }
        if (!"android.permission.BIND_DEVICE_ADMIN".equals(ai.permission)) {
            String message = "DeviceAdminReceiver " + adminName + " must be protected with android.permission.BIND_DEVICE_ADMIN";
            Slog.w(LOG_TAG, message);
            if (throwForMissingPermission && ai.applicationInfo.targetSdkVersion > 23) {
                throw new IllegalArgumentException(message);
            }
        }
        try {
            return new DeviceAdminInfo(this.mContext, ai);
        } catch (IOException | XmlPullParserException e) {
            Slog.w(LOG_TAG, "Bad device admin requested for user=" + userHandle + ": " + adminName, e);
            return null;
        }
    }

    public /* synthetic */ ActivityInfo lambda$findAdmin$2$DevicePolicyManagerService(ComponentName adminName, int userHandle) throws Exception {
        try {
            return this.mIPackageManager.getReceiverInfo(adminName, 819328, userHandle);
        } catch (RemoteException e) {
            return null;
        }
    }

    private File getPolicyFileDirectory(int userId) {
        if (userId == 0) {
            return new File(this.mInjector.getDevicePolicyFilePathForSystemUser());
        }
        return this.mInjector.environmentGetUserSystemDirectory(userId);
    }

    private JournaledFile makeJournaledFile(int userId) {
        String base = new File(getPolicyFileDirectory(userId), DEVICE_POLICIES_XML).getAbsolutePath();
        return new JournaledFile(new File(base), new File(base + ".tmp"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveSettingsLocked(int userHandle) {
        String str = DO_NOT_ASK_CREDENTIALS_ON_BOOT_XML;
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        JournaledFile journal = makeJournaledFile(userHandle);
        FileOutputStream stream = null;
        try {
            File fileChooseForWrite = journal.chooseForWrite();
            String str2 = TAG_AFFILIATION_ID;
            FileOutputStream stream2 = new FileOutputStream(fileChooseForWrite, false);
            try {
                XmlSerializer out = new FastXmlSerializer();
                out.setOutput(stream2, StandardCharsets.UTF_8.name());
                stream = stream2;
                out.startDocument(null, true);
                out.startTag(null, "policies");
                if (policy.mRestrictionsProvider != null) {
                    out.attribute(null, ATTR_PERMISSION_PROVIDER, policy.mRestrictionsProvider.flattenToString());
                }
                if (policy.mUserSetupComplete) {
                    out.attribute(null, ATTR_SETUP_COMPLETE, Boolean.toString(true));
                }
                if (policy.mPaired) {
                    out.attribute(null, ATTR_DEVICE_PAIRED, Boolean.toString(true));
                }
                if (policy.mDeviceProvisioningConfigApplied) {
                    out.attribute(null, ATTR_DEVICE_PROVISIONING_CONFIG_APPLIED, Boolean.toString(true));
                }
                if (policy.mUserProvisioningState != 0) {
                    out.attribute(null, ATTR_PROVISIONING_STATE, Integer.toString(policy.mUserProvisioningState));
                }
                if (policy.mPermissionPolicy != 0) {
                    out.attribute(null, ATTR_PERMISSION_POLICY, Integer.toString(policy.mPermissionPolicy));
                }
                for (int i = 0; i < policy.mDelegationMap.size(); i++) {
                    String scope = policy.mDelegationMap.keyAt(i);
                    List<String> scopes = policy.mDelegationMap.valueAt(i);
                    for (String scope2 : scopes) {
                        out.startTag(null, "delegation");
                        out.attribute(null, "delegatePackage", scope);
                        String delegatePackage = scope;
                        out.attribute(null, "scope", scope2);
                        out.endTag(null, "delegation");
                        scopes = scopes;
                        str = str;
                        scope = delegatePackage;
                    }
                }
                String str3 = str;
                int i2 = 0;
                for (int N = policy.mAdminList.size(); i2 < N; N = N) {
                    ActiveAdmin ap = policy.mAdminList.get(i2);
                    if (ap != null) {
                        out.startTag(null, "admin");
                        out.attribute(null, "name", ap.info.getComponent().flattenToString());
                        ap.writeToXml(out);
                        out.endTag(null, "admin");
                    }
                    i2++;
                }
                int N2 = policy.mPasswordOwner;
                if (N2 >= 0) {
                    out.startTag(null, "password-owner");
                    out.attribute(null, ATTR_VALUE, Integer.toString(policy.mPasswordOwner));
                    out.endTag(null, "password-owner");
                }
                if (policy.mFailedPasswordAttempts != 0) {
                    out.startTag(null, "failed-password-attempts");
                    out.attribute(null, ATTR_VALUE, Integer.toString(policy.mFailedPasswordAttempts));
                    out.endTag(null, "failed-password-attempts");
                }
                try {
                    if (!this.mInjector.storageManagerIsFileBasedEncryptionEnabled()) {
                        out.startTag(null, TAG_PASSWORD_VALIDITY);
                        out.attribute(null, ATTR_VALUE, Boolean.toString(policy.mPasswordValidAtLastCheckpoint));
                        out.endTag(null, TAG_PASSWORD_VALIDITY);
                    }
                    for (int i3 = 0; i3 < policy.mAcceptedCaCertificates.size(); i3++) {
                        out.startTag(null, TAG_ACCEPTED_CA_CERTIFICATES);
                        out.attribute(null, "name", policy.mAcceptedCaCertificates.valueAt(i3));
                        out.endTag(null, TAG_ACCEPTED_CA_CERTIFICATES);
                    }
                    for (int i4 = 0; i4 < policy.mLockTaskPackages.size(); i4++) {
                        String component = policy.mLockTaskPackages.get(i4);
                        out.startTag(null, TAG_LOCK_TASK_COMPONENTS);
                        out.attribute(null, "name", component);
                        out.endTag(null, TAG_LOCK_TASK_COMPONENTS);
                    }
                    int i5 = policy.mLockTaskFeatures;
                    if (i5 != 0) {
                        out.startTag(null, TAG_LOCK_TASK_FEATURES);
                        out.attribute(null, ATTR_VALUE, Integer.toString(policy.mLockTaskFeatures));
                        out.endTag(null, TAG_LOCK_TASK_FEATURES);
                    }
                    if (policy.mSecondaryLockscreenEnabled) {
                        out.startTag(null, TAG_SECONDARY_LOCK_SCREEN);
                        out.attribute(null, ATTR_VALUE, Boolean.toString(true));
                        out.endTag(null, TAG_SECONDARY_LOCK_SCREEN);
                    }
                    if (policy.mStatusBarDisabled) {
                        out.startTag(null, TAG_STATUS_BAR);
                        out.attribute(null, ATTR_DISABLED, Boolean.toString(policy.mStatusBarDisabled));
                        out.endTag(null, TAG_STATUS_BAR);
                    }
                    if (policy.doNotAskCredentialsOnBoot) {
                        out.startTag(null, str3);
                        out.endTag(null, str3);
                    }
                    for (String id : policy.mAffiliationIds) {
                        String str4 = str2;
                        out.startTag(null, str4);
                        out.attribute(null, ATTR_ID, id);
                        out.endTag(null, str4);
                        str2 = str4;
                    }
                    if (policy.mLastSecurityLogRetrievalTime >= 0) {
                        out.startTag(null, TAG_LAST_SECURITY_LOG_RETRIEVAL);
                        out.attribute(null, ATTR_VALUE, Long.toString(policy.mLastSecurityLogRetrievalTime));
                        out.endTag(null, TAG_LAST_SECURITY_LOG_RETRIEVAL);
                    }
                    if (policy.mLastBugReportRequestTime >= 0) {
                        out.startTag(null, TAG_LAST_BUG_REPORT_REQUEST);
                        out.attribute(null, ATTR_VALUE, Long.toString(policy.mLastBugReportRequestTime));
                        out.endTag(null, TAG_LAST_BUG_REPORT_REQUEST);
                    }
                    if (policy.mLastNetworkLogsRetrievalTime >= 0) {
                        out.startTag(null, TAG_LAST_NETWORK_LOG_RETRIEVAL);
                        out.attribute(null, ATTR_VALUE, Long.toString(policy.mLastNetworkLogsRetrievalTime));
                        out.endTag(null, TAG_LAST_NETWORK_LOG_RETRIEVAL);
                    }
                    if (policy.mAdminBroadcastPending) {
                        out.startTag(null, TAG_ADMIN_BROADCAST_PENDING);
                        out.attribute(null, ATTR_VALUE, Boolean.toString(policy.mAdminBroadcastPending));
                        out.endTag(null, TAG_ADMIN_BROADCAST_PENDING);
                    }
                    if (policy.mInitBundle != null) {
                        out.startTag(null, TAG_INITIALIZATION_BUNDLE);
                        policy.mInitBundle.saveToXml(out);
                        out.endTag(null, TAG_INITIALIZATION_BUNDLE);
                    }
                    if (policy.mPasswordTokenHandle != 0) {
                        out.startTag(null, TAG_PASSWORD_TOKEN_HANDLE);
                        out.attribute(null, ATTR_VALUE, Long.toString(policy.mPasswordTokenHandle));
                        out.endTag(null, TAG_PASSWORD_TOKEN_HANDLE);
                    }
                    if (policy.mCurrentInputMethodSet) {
                        out.startTag(null, TAG_CURRENT_INPUT_METHOD_SET);
                        out.endTag(null, TAG_CURRENT_INPUT_METHOD_SET);
                    }
                    for (String cert : policy.mOwnerInstalledCaCerts) {
                        out.startTag(null, TAG_OWNER_INSTALLED_CA_CERT);
                        out.attribute(null, ATTR_ALIAS, cert);
                        out.endTag(null, TAG_OWNER_INSTALLED_CA_CERT);
                    }
                    int size = policy.mUserControlDisabledPackages.size();
                    for (int i6 = 0; i6 < size; i6++) {
                        String packageName = policy.mUserControlDisabledPackages.get(i6);
                        out.startTag(null, TAG_PROTECTED_PACKAGES);
                        out.attribute(null, "name", packageName);
                        out.endTag(null, TAG_PROTECTED_PACKAGES);
                    }
                    if (policy.mAppsSuspended) {
                        out.startTag(null, TAG_APPS_SUSPENDED);
                        out.attribute(null, ATTR_VALUE, Boolean.toString(policy.mAppsSuspended));
                        out.endTag(null, TAG_APPS_SUSPENDED);
                    }
                    out.endTag(null, "policies");
                    out.endDocument();
                    stream.flush();
                    FileUtils.sync(stream);
                    stream.close();
                    journal.commit();
                    sendChangedNotification(userHandle);
                } catch (IOException | XmlPullParserException e) {
                    e = e;
                    Slog.w(LOG_TAG, "failed writing file", e);
                    if (stream != null) {
                        try {
                            stream.close();
                        } catch (IOException e2) {
                        }
                    }
                    journal.rollback();
                }
            } catch (IOException | XmlPullParserException e3) {
                e = e3;
                stream = stream2;
            }
        } catch (IOException | XmlPullParserException e4) {
            e = e4;
        }
    }

    private void sendChangedNotification(final int userHandle) {
        final Intent intent = new Intent("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED");
        intent.setFlags(1073741824);
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$eD2HDpBc-OGp1j6mPQwOljJf8zo
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$sendChangedNotification$3$DevicePolicyManagerService(intent, userHandle);
            }
        });
    }

    public /* synthetic */ void lambda$sendChangedNotification$3$DevicePolicyManagerService(Intent intent, int userHandle) throws Exception {
        this.mContext.sendBroadcastAsUser(intent, new UserHandle(userHandle));
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01ef A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0214 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x0225 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x022c A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TRY_LEAVE, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0247 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0260 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x0276 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x028d A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x02a6 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x02bf A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x02d9 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x02e8 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0300 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0319 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x0332 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:149:0x034b A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:152:0x0368 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:155:0x037a A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:160:0x0392 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:162:0x039b A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:163:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:164:0x03ae A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:166:0x03b8 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x03c6 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:169:0x03ce A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:170:0x03d3 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:172:0x03dd A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x03eb A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x03f4 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:176:0x0400 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:178:0x0409 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:179:0x0415 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:212:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:215:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:218:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:227:0x049a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x0382 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:0x02b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x02c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x02e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:245:0x02f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:246:0x042e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x0177 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x030a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x0323 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x018f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:251:0x033c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:252:0x0353 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:253:0x0370 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:254:0x0389 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:255:0x01fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:256:0x0238 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:0x0251 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:258:0x0268 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:259:0x027f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:260:0x0297 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x006b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0078 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x007b  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c1 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00d8 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ea A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00f4 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0103  */
    /* JADX WARN: Code duplicated, block: B:57:0x010b A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0110  */
    /* JADX WARN: Code duplicated, block: B:61:0x011b A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0125 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0136 A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0174  */
    /* JADX WARN: Code duplicated, block: B:78:0x017f A[Catch: IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TRY_LEAVE, TryCatch #4 {IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, blocks: (B:27:0x006e, B:29:0x0078, B:31:0x007d, B:33:0x0086, B:35:0x0093, B:37:0x0098, B:39:0x00a1, B:41:0x00ae, B:43:0x00b3, B:45:0x00c1, B:46:0x00c7, B:48:0x00d8, B:49:0x00de, B:51:0x00ea, B:53:0x00f4, B:55:0x0105, B:57:0x010b, B:59:0x0112, B:61:0x011b, B:63:0x0125, B:64:0x0130, B:66:0x0136, B:67:0x013b, B:68:0x0161, B:72:0x016c, B:78:0x017f, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:82:0x0190, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:84:0x0196, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:86:0x01a2, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:88:0x01af, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:90:0x01ba, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:100:0x01d7, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:102:0x01ef, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:104:0x01fb, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:106:0x0214, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:107:0x021f, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:109:0x0225, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:111:0x022c, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:115:0x0239, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:116:0x0247, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:118:0x0251, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:119:0x0260, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:121:0x0268, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:122:0x0276, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:124:0x027f, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:125:0x028d, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:127:0x0297, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:128:0x02a6, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:130:0x02b0, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:131:0x02bf, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:133:0x02c8, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:134:0x02d9, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:136:0x02e1, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:137:0x02e8, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:139:0x02f0, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:140:0x0300, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:142:0x030a, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:143:0x0319, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:145:0x0323, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:146:0x0332, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:148:0x033c, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:149:0x034b, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:151:0x0353, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:152:0x0368, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:154:0x0370, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:155:0x037a, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:158:0x0389, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:160:0x0392, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:162:0x039b, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:164:0x03ae, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:166:0x03b8, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:167:0x03c6, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:169:0x03ce, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:170:0x03d3, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:172:0x03dd, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:173:0x03eb, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:175:0x03f4, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:176:0x0400, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:178:0x0409, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:179:0x0415, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:188:0x044a, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464, B:189:0x0464), top: B:222:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01a2 A[Catch: RuntimeException -> 0x01d1, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException -> 0x0465, FileNotFoundException -> 0x046a, TRY_LEAVE, TryCatch #1 {RuntimeException -> 0x01d1, blocks: (B:84:0x0196, B:86:0x01a2), top: B:220:0x0196 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01cc  */
    /* JADX WARN: Instruction removed from duplicated block: B:179:0x0415, please report this as an issue */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x0467: MOVE (r8 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY] A[D('stream' java.io.FileInputStream)]), block:B:191:0x0466 */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x046b: MOVE (r8 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY] A[D('stream' java.io.FileInputStream)]), block:B:193:0x046b */
    private void loadSettingsLocked(DevicePolicyData policy, int userHandle) {
        Exception e;
        int type;
        FileInputStream stream;
        FileInputStream stream2;
        String userSetupComplete;
        FileInputStream stream3;
        String paired;
        String deviceProvisioningConfigApplied;
        String provisioningState;
        String permissionPolicy;
        String certDelegate;
        String appRestrictionsDelegate;
        int outerDepth;
        int type2;
        int type3;
        int outerDepth2;
        String tag;
        String name;
        RuntimeException e2;
        DeviceAdminInfo dai;
        String delegatePackage;
        String scope;
        List<String> scopes;
        List<String> scopes2;
        List<String> scopes3;
        JournaledFile journal = makeJournaledFile(userHandle);
        FileInputStream stream4 = null;
        File file = journal.chooseForRead();
        boolean needsRewrite = false;
        try {
            stream4 = new FileInputStream(file);
            try {
                XmlPullParser parser = Xml.newPullParser();
                parser.setInput(stream4, StandardCharsets.UTF_8.name());
                do {
                    type = parser.next();
                    if (type == 1) {
                        break;
                    }
                } while (type != 2);
                String tag2 = parser.getName();
                try {
                    try {
                        if (!"policies".equals(tag2)) {
                            throw new XmlPullParserException("Settings do not start with policies tag: found " + tag2);
                        }
                        String permissionProvider = parser.getAttributeValue(null, ATTR_PERMISSION_PROVIDER);
                        if (permissionProvider != null) {
                            try {
                                policy.mRestrictionsProvider = ComponentName.unflattenFromString(permissionProvider);
                                try {
                                    userSetupComplete = parser.getAttributeValue(null, ATTR_SETUP_COMPLETE);
                                    if (userSetupComplete != null) {
                                        stream3 = stream4;
                                        if (Boolean.toString(true).equals(userSetupComplete)) {
                                            policy.mUserSetupComplete = true;
                                        }
                                    } else {
                                        stream3 = stream4;
                                    }
                                    paired = parser.getAttributeValue(null, ATTR_DEVICE_PAIRED);
                                    if (paired != null && Boolean.toString(true).equals(paired)) {
                                        policy.mPaired = true;
                                    }
                                    deviceProvisioningConfigApplied = parser.getAttributeValue(null, ATTR_DEVICE_PROVISIONING_CONFIG_APPLIED);
                                    if (deviceProvisioningConfigApplied != null && Boolean.toString(true).equals(deviceProvisioningConfigApplied)) {
                                        policy.mDeviceProvisioningConfigApplied = true;
                                    }
                                    provisioningState = parser.getAttributeValue(null, ATTR_PROVISIONING_STATE);
                                    if (!TextUtils.isEmpty(provisioningState)) {
                                        policy.mUserProvisioningState = Integer.parseInt(provisioningState);
                                    }
                                    permissionPolicy = parser.getAttributeValue(null, ATTR_PERMISSION_POLICY);
                                    if (!TextUtils.isEmpty(permissionPolicy)) {
                                        policy.mPermissionPolicy = Integer.parseInt(permissionPolicy);
                                    }
                                    certDelegate = parser.getAttributeValue(null, ATTR_DELEGATED_CERT_INSTALLER);
                                    if (certDelegate == null) {
                                        scopes3 = policy.mDelegationMap.get(certDelegate);
                                        if (scopes3 == null) {
                                            scopes3 = new ArrayList();
                                            policy.mDelegationMap.put(certDelegate, scopes3);
                                        }
                                        if (!scopes3.contains("delegation-cert-install")) {
                                            scopes3.add("delegation-cert-install");
                                            needsRewrite = true;
                                        }
                                    }
                                    appRestrictionsDelegate = parser.getAttributeValue(null, ATTR_APPLICATION_RESTRICTIONS_MANAGER);
                                    if (appRestrictionsDelegate != null) {
                                        scopes2 = policy.mDelegationMap.get(appRestrictionsDelegate);
                                        if (scopes2 == null) {
                                            scopes2 = new ArrayList();
                                            policy.mDelegationMap.put(appRestrictionsDelegate, scopes2);
                                        }
                                        if (!scopes2.contains("delegation-app-restrictions")) {
                                            scopes2.add("delegation-app-restrictions");
                                            needsRewrite = true;
                                        }
                                    }
                                    parser.next();
                                    outerDepth = parser.getDepth();
                                    policy.mLockTaskPackages.clear();
                                    policy.mAdminList.clear();
                                    policy.mAdminMap.clear();
                                    policy.mAffiliationIds.clear();
                                    policy.mOwnerInstalledCaCerts.clear();
                                    policy.mUserControlDisabledPackages.clear();
                                    while (true) {
                                        type2 = parser.next();
                                        if (type2 != 1 || (type2 == 3 && parser.getDepth() <= outerDepth)) {
                                            break;
                                            break;
                                        }
                                        if (type2 != 3) {
                                            type3 = type2;
                                            outerDepth2 = outerDepth;
                                        } else if (type2 == 4) {
                                            type3 = type2;
                                            outerDepth2 = outerDepth;
                                        } else {
                                            tag = parser.getName();
                                            if ("admin".equals(tag)) {
                                                name = parser.getAttributeValue(null, "name");
                                                try {
                                                    dai = findAdmin(ComponentName.unflattenFromString(name), userHandle, false);
                                                    if (dai != null) {
                                                        boolean shouldOverwritePolicies = shouldOverwritePoliciesFromXml(dai.getComponent(), userHandle);
                                                        type3 = type2;
                                                        try {
                                                            ActiveAdmin ap = new ActiveAdmin(dai, false);
                                                            ap.readFromXml(parser, shouldOverwritePolicies);
                                                            outerDepth2 = outerDepth;
                                                            try {
                                                                policy.mAdminMap.put(ap.info.getComponent(), ap);
                                                            } catch (RuntimeException e3) {
                                                                e2 = e3;
                                                                Slog.w(LOG_TAG, "Failed loading admin " + name, e2);
                                                            }
                                                        } catch (RuntimeException e4) {
                                                            outerDepth2 = outerDepth;
                                                            e2 = e4;
                                                        }
                                                    } else {
                                                        type3 = type2;
                                                        outerDepth2 = outerDepth;
                                                    }
                                                } catch (RuntimeException e5) {
                                                    type3 = type2;
                                                    outerDepth2 = outerDepth;
                                                    e2 = e5;
                                                }
                                            } else {
                                                type3 = type2;
                                                outerDepth2 = outerDepth;
                                                if ("delegation".equals(tag)) {
                                                    delegatePackage = parser.getAttributeValue(null, "delegatePackage");
                                                    scope = parser.getAttributeValue(null, "scope");
                                                    scopes = policy.mDelegationMap.get(delegatePackage);
                                                    if (scopes == null) {
                                                        scopes = new ArrayList();
                                                        policy.mDelegationMap.put(delegatePackage, scopes);
                                                    }
                                                    if (!scopes.contains(scope)) {
                                                        scopes.add(scope);
                                                    }
                                                } else if ("failed-password-attempts".equals(tag)) {
                                                    policy.mFailedPasswordAttempts = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                                                } else if ("password-owner".equals(tag)) {
                                                    policy.mPasswordOwner = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                                                } else if (TAG_ACCEPTED_CA_CERTIFICATES.equals(tag)) {
                                                    policy.mAcceptedCaCertificates.add(parser.getAttributeValue(null, "name"));
                                                } else if (TAG_LOCK_TASK_COMPONENTS.equals(tag)) {
                                                    policy.mLockTaskPackages.add(parser.getAttributeValue(null, "name"));
                                                } else if (TAG_LOCK_TASK_FEATURES.equals(tag)) {
                                                    policy.mLockTaskFeatures = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                                                } else if (TAG_SECONDARY_LOCK_SCREEN.equals(tag)) {
                                                    policy.mSecondaryLockscreenEnabled = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                                                } else if (TAG_STATUS_BAR.equals(tag)) {
                                                    policy.mStatusBarDisabled = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_DISABLED));
                                                } else if (DO_NOT_ASK_CREDENTIALS_ON_BOOT_XML.equals(tag)) {
                                                    policy.doNotAskCredentialsOnBoot = true;
                                                } else if (TAG_AFFILIATION_ID.equals(tag)) {
                                                    policy.mAffiliationIds.add(parser.getAttributeValue(null, ATTR_ID));
                                                } else if (TAG_LAST_SECURITY_LOG_RETRIEVAL.equals(tag)) {
                                                    policy.mLastSecurityLogRetrievalTime = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                                                } else if (TAG_LAST_BUG_REPORT_REQUEST.equals(tag)) {
                                                    policy.mLastBugReportRequestTime = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                                                } else if (TAG_LAST_NETWORK_LOG_RETRIEVAL.equals(tag)) {
                                                    policy.mLastNetworkLogsRetrievalTime = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                                                } else if (TAG_ADMIN_BROADCAST_PENDING.equals(tag)) {
                                                    String pending = parser.getAttributeValue(null, ATTR_VALUE);
                                                    policy.mAdminBroadcastPending = Boolean.toString(true).equals(pending);
                                                } else if (TAG_INITIALIZATION_BUNDLE.equals(tag)) {
                                                    policy.mInitBundle = PersistableBundle.restoreFromXml(parser);
                                                } else if ("active-password".equals(tag)) {
                                                    needsRewrite = true;
                                                    outerDepth = outerDepth2;
                                                } else if (TAG_PASSWORD_VALIDITY.equals(tag)) {
                                                    if (!this.mInjector.storageManagerIsFileBasedEncryptionEnabled()) {
                                                        policy.mPasswordValidAtLastCheckpoint = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                                                    }
                                                } else if (TAG_PASSWORD_TOKEN_HANDLE.equals(tag)) {
                                                    policy.mPasswordTokenHandle = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                                                } else if (TAG_CURRENT_INPUT_METHOD_SET.equals(tag)) {
                                                    policy.mCurrentInputMethodSet = true;
                                                } else if (TAG_OWNER_INSTALLED_CA_CERT.equals(tag)) {
                                                    policy.mOwnerInstalledCaCerts.add(parser.getAttributeValue(null, ATTR_ALIAS));
                                                } else if (TAG_PROTECTED_PACKAGES.equals(tag)) {
                                                    policy.mUserControlDisabledPackages.add(parser.getAttributeValue(null, "name"));
                                                } else if (TAG_APPS_SUSPENDED.equals(tag)) {
                                                    policy.mAppsSuspended = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                                                } else {
                                                    Slog.w(LOG_TAG, "Unknown tag: " + tag);
                                                    XmlUtils.skipCurrentTag(parser);
                                                }
                                            }
                                        }
                                        outerDepth = outerDepth2;
                                    }
                                    stream4 = stream3;
                                } catch (FileNotFoundException e6) {
                                } catch (IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException e7) {
                                    e = e7;
                                    Slog.w(LOG_TAG, "failed parsing " + file, e);
                                }
                            } catch (FileNotFoundException e8) {
                            } catch (IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException e9) {
                                e = e9;
                                Slog.w(LOG_TAG, "failed parsing " + file, e);
                                if (stream4 != null) {
                                    try {
                                        stream4.close();
                                    } catch (IOException e10) {
                                    }
                                }
                                policy.mAdminList.addAll(policy.mAdminMap.values());
                                if (needsRewrite) {
                                    saveSettingsLocked(userHandle);
                                }
                                validatePasswordOwnerLocked(policy);
                                updateMaximumTimeToLockLocked(userHandle);
                                updateLockTaskPackagesLocked(policy.mLockTaskPackages, userHandle);
                                updateLockTaskFeaturesLocked(policy.mLockTaskFeatures, userHandle);
                                if (userHandle == 0) {
                                    updateUserControlDisabledPackagesLocked(policy.mUserControlDisabledPackages);
                                }
                                if (policy.mStatusBarDisabled) {
                                    setStatusBarDisabledInternal(policy.mStatusBarDisabled, userHandle);
                                }
                            }
                        } else {
                            userSetupComplete = parser.getAttributeValue(null, ATTR_SETUP_COMPLETE);
                            if (userSetupComplete != null) {
                                stream3 = stream4;
                                if (Boolean.toString(true).equals(userSetupComplete)) {
                                    policy.mUserSetupComplete = true;
                                }
                            } else {
                                stream3 = stream4;
                            }
                            paired = parser.getAttributeValue(null, ATTR_DEVICE_PAIRED);
                            if (paired != null) {
                                policy.mPaired = true;
                            }
                            deviceProvisioningConfigApplied = parser.getAttributeValue(null, ATTR_DEVICE_PROVISIONING_CONFIG_APPLIED);
                            if (deviceProvisioningConfigApplied != null) {
                                policy.mDeviceProvisioningConfigApplied = true;
                            }
                            provisioningState = parser.getAttributeValue(null, ATTR_PROVISIONING_STATE);
                            if (!TextUtils.isEmpty(provisioningState)) {
                                policy.mUserProvisioningState = Integer.parseInt(provisioningState);
                            }
                            permissionPolicy = parser.getAttributeValue(null, ATTR_PERMISSION_POLICY);
                            if (!TextUtils.isEmpty(permissionPolicy)) {
                                policy.mPermissionPolicy = Integer.parseInt(permissionPolicy);
                            }
                            certDelegate = parser.getAttributeValue(null, ATTR_DELEGATED_CERT_INSTALLER);
                            if (certDelegate == null) {
                                scopes3 = policy.mDelegationMap.get(certDelegate);
                                if (scopes3 == null) {
                                    scopes3 = new ArrayList();
                                    policy.mDelegationMap.put(certDelegate, scopes3);
                                }
                                if (!scopes3.contains("delegation-cert-install")) {
                                    scopes3.add("delegation-cert-install");
                                    needsRewrite = true;
                                }
                            }
                            appRestrictionsDelegate = parser.getAttributeValue(null, ATTR_APPLICATION_RESTRICTIONS_MANAGER);
                            if (appRestrictionsDelegate != null) {
                                scopes2 = policy.mDelegationMap.get(appRestrictionsDelegate);
                                if (scopes2 == null) {
                                    scopes2 = new ArrayList();
                                    policy.mDelegationMap.put(appRestrictionsDelegate, scopes2);
                                }
                                if (!scopes2.contains("delegation-app-restrictions")) {
                                    scopes2.add("delegation-app-restrictions");
                                    needsRewrite = true;
                                }
                            }
                            parser.next();
                            outerDepth = parser.getDepth();
                            policy.mLockTaskPackages.clear();
                            policy.mAdminList.clear();
                            policy.mAdminMap.clear();
                            policy.mAffiliationIds.clear();
                            policy.mOwnerInstalledCaCerts.clear();
                            policy.mUserControlDisabledPackages.clear();
                            while (true) {
                                type2 = parser.next();
                                if (type2 != 1) {
                                    break;
                                }
                                if (type2 != 3) {
                                    type3 = type2;
                                    outerDepth2 = outerDepth;
                                } else if (type2 == 4) {
                                    type3 = type2;
                                    outerDepth2 = outerDepth;
                                } else {
                                    tag = parser.getName();
                                    if ("admin".equals(tag)) {
                                        name = parser.getAttributeValue(null, "name");
                                        dai = findAdmin(ComponentName.unflattenFromString(name), userHandle, false);
                                        if (dai != null) {
                                            boolean shouldOverwritePolicies2 = shouldOverwritePoliciesFromXml(dai.getComponent(), userHandle);
                                            type3 = type2;
                                            ActiveAdmin ap2 = new ActiveAdmin(dai, false);
                                            ap2.readFromXml(parser, shouldOverwritePolicies2);
                                            outerDepth2 = outerDepth;
                                            policy.mAdminMap.put(ap2.info.getComponent(), ap2);
                                        } else {
                                            type3 = type2;
                                            outerDepth2 = outerDepth;
                                        }
                                    } else {
                                        type3 = type2;
                                        outerDepth2 = outerDepth;
                                        if ("delegation".equals(tag)) {
                                            delegatePackage = parser.getAttributeValue(null, "delegatePackage");
                                            scope = parser.getAttributeValue(null, "scope");
                                            scopes = policy.mDelegationMap.get(delegatePackage);
                                            if (scopes == null) {
                                                scopes = new ArrayList();
                                                policy.mDelegationMap.put(delegatePackage, scopes);
                                            }
                                            if (!scopes.contains(scope)) {
                                                scopes.add(scope);
                                            }
                                        } else if ("failed-password-attempts".equals(tag)) {
                                            policy.mFailedPasswordAttempts = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                                        } else if ("password-owner".equals(tag)) {
                                            policy.mPasswordOwner = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                                        } else if (TAG_ACCEPTED_CA_CERTIFICATES.equals(tag)) {
                                            policy.mAcceptedCaCertificates.add(parser.getAttributeValue(null, "name"));
                                        } else if (TAG_LOCK_TASK_COMPONENTS.equals(tag)) {
                                            policy.mLockTaskPackages.add(parser.getAttributeValue(null, "name"));
                                        } else if (TAG_LOCK_TASK_FEATURES.equals(tag)) {
                                            policy.mLockTaskFeatures = Integer.parseInt(parser.getAttributeValue(null, ATTR_VALUE));
                                        } else if (TAG_SECONDARY_LOCK_SCREEN.equals(tag)) {
                                            policy.mSecondaryLockscreenEnabled = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                                        } else if (TAG_STATUS_BAR.equals(tag)) {
                                            policy.mStatusBarDisabled = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_DISABLED));
                                        } else if (DO_NOT_ASK_CREDENTIALS_ON_BOOT_XML.equals(tag)) {
                                            policy.doNotAskCredentialsOnBoot = true;
                                        } else if (TAG_AFFILIATION_ID.equals(tag)) {
                                            policy.mAffiliationIds.add(parser.getAttributeValue(null, ATTR_ID));
                                        } else if (TAG_LAST_SECURITY_LOG_RETRIEVAL.equals(tag)) {
                                            policy.mLastSecurityLogRetrievalTime = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                                        } else if (TAG_LAST_BUG_REPORT_REQUEST.equals(tag)) {
                                            policy.mLastBugReportRequestTime = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                                        } else if (TAG_LAST_NETWORK_LOG_RETRIEVAL.equals(tag)) {
                                            policy.mLastNetworkLogsRetrievalTime = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                                        } else if (TAG_ADMIN_BROADCAST_PENDING.equals(tag)) {
                                            String pending2 = parser.getAttributeValue(null, ATTR_VALUE);
                                            policy.mAdminBroadcastPending = Boolean.toString(true).equals(pending2);
                                        } else if (TAG_INITIALIZATION_BUNDLE.equals(tag)) {
                                            policy.mInitBundle = PersistableBundle.restoreFromXml(parser);
                                        } else if ("active-password".equals(tag)) {
                                            needsRewrite = true;
                                            outerDepth = outerDepth2;
                                        } else if (TAG_PASSWORD_VALIDITY.equals(tag)) {
                                            if (!this.mInjector.storageManagerIsFileBasedEncryptionEnabled()) {
                                                policy.mPasswordValidAtLastCheckpoint = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                                            }
                                        } else if (TAG_PASSWORD_TOKEN_HANDLE.equals(tag)) {
                                            policy.mPasswordTokenHandle = Long.parseLong(parser.getAttributeValue(null, ATTR_VALUE));
                                        } else if (TAG_CURRENT_INPUT_METHOD_SET.equals(tag)) {
                                            policy.mCurrentInputMethodSet = true;
                                        } else if (TAG_OWNER_INSTALLED_CA_CERT.equals(tag)) {
                                            policy.mOwnerInstalledCaCerts.add(parser.getAttributeValue(null, ATTR_ALIAS));
                                        } else if (TAG_PROTECTED_PACKAGES.equals(tag)) {
                                            policy.mUserControlDisabledPackages.add(parser.getAttributeValue(null, "name"));
                                        } else if (TAG_APPS_SUSPENDED.equals(tag)) {
                                            policy.mAppsSuspended = Boolean.parseBoolean(parser.getAttributeValue(null, ATTR_VALUE));
                                        } else {
                                            Slog.w(LOG_TAG, "Unknown tag: " + tag);
                                            XmlUtils.skipCurrentTag(parser);
                                        }
                                    }
                                }
                                outerDepth = outerDepth2;
                            }
                            stream4 = stream3;
                        }
                    } catch (IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException e11) {
                        e = e11;
                        stream4 = stream2;
                    }
                } catch (FileNotFoundException e12) {
                    stream4 = stream;
                }
            } catch (FileNotFoundException e13) {
            } catch (IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException e14) {
                e = e14;
            }
        } catch (FileNotFoundException e15) {
        } catch (IOException | IndexOutOfBoundsException | NullPointerException | NumberFormatException | XmlPullParserException e16) {
            e = e16;
        }
        if (stream4 != null) {
            stream4.close();
        }
        policy.mAdminList.addAll(policy.mAdminMap.values());
        if (needsRewrite) {
            saveSettingsLocked(userHandle);
        }
        validatePasswordOwnerLocked(policy);
        updateMaximumTimeToLockLocked(userHandle);
        updateLockTaskPackagesLocked(policy.mLockTaskPackages, userHandle);
        updateLockTaskFeaturesLocked(policy.mLockTaskFeatures, userHandle);
        if (userHandle == 0) {
            updateUserControlDisabledPackagesLocked(policy.mUserControlDisabledPackages);
        }
        if (policy.mStatusBarDisabled) {
            setStatusBarDisabledInternal(policy.mStatusBarDisabled, userHandle);
        }
    }

    private boolean shouldOverwritePoliciesFromXml(ComponentName deviceAdminComponent, int userHandle) {
        return (isProfileOwner(deviceAdminComponent, userHandle) || isDeviceOwner(deviceAdminComponent, userHandle)) ? false : true;
    }

    private void updateLockTaskPackagesLocked(List<String> packages, int userId) {
        long ident = this.mInjector.binderClearCallingIdentity();
        try {
            this.mInjector.getIActivityManager().updateLockTaskPackages(userId, (String[]) packages.toArray(new String[packages.size()]));
        } catch (RemoteException e) {
        } finally {
            this.mInjector.binderRestoreCallingIdentity(ident);
        }
    }

    private void updateUserControlDisabledPackagesLocked(List<String> packages) {
        this.mInjector.getPackageManagerInternal().setDeviceOwnerProtectedPackages(packages);
        this.mUsageStatsManagerInternal.setAdminProtectedPackages(new ArraySet(packages), -1);
    }

    private void updateLockTaskFeaturesLocked(int flags, int userId) {
        long ident = this.mInjector.binderClearCallingIdentity();
        try {
            this.mInjector.getIActivityTaskManager().updateLockTaskFeatures(userId, flags);
        } catch (RemoteException e) {
        } finally {
            this.mInjector.binderRestoreCallingIdentity(ident);
        }
    }

    private void updateDeviceOwnerLocked() {
        long ident = this.mInjector.binderClearCallingIdentity();
        try {
            ComponentName deviceOwnerComponent = this.mOwners.getDeviceOwnerComponent();
            if (deviceOwnerComponent != null) {
                this.mInjector.getIActivityManager().updateDeviceOwner(deviceOwnerComponent.getPackageName());
            }
        } catch (RemoteException e) {
        } finally {
            this.mInjector.binderRestoreCallingIdentity(ident);
        }
    }

    static void validateQualityConstant(int quality) {
        if (quality == 0 || quality == 32768 || quality == 65536 || quality == 131072 || quality == 196608 || quality == 262144 || quality == 327680 || quality == 393216 || quality == 524288) {
            return;
        }
        throw new IllegalArgumentException("Invalid quality constant: 0x" + Integer.toHexString(quality));
    }

    void validatePasswordOwnerLocked(DevicePolicyData policy) {
        if (policy.mPasswordOwner >= 0) {
            boolean haveOwner = false;
            for (int i = policy.mAdminList.size() - 1; i >= 0; i--) {
                if (policy.mAdminList.get(i).getUid() == policy.mPasswordOwner) {
                    haveOwner = true;
                    break;
                }
            }
            if (!haveOwner) {
                Slog.w(LOG_TAG, "Previous password owner " + policy.mPasswordOwner + " no longer active; disabling");
                policy.mPasswordOwner = -1;
            }
        }
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    void systemReady(int phase) {
        if (!this.mHasFeature) {
            return;
        }
        if (phase == 480) {
            onLockSettingsReady();
            loadAdminDataAsync();
            this.mOwners.systemReady();
        } else if (phase != 550) {
            if (phase == 1000) {
                ensureDeviceOwnerUserStarted();
            }
        } else {
            synchronized (getLockObject()) {
                migrateToProfileOnOrganizationOwnedDeviceIfCompLocked();
                applyManagedProfileRestrictionIfDeviceOwnerLocked();
            }
            maybeStartSecurityLogMonitorOnActivityManagerReady();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePersonalAppsSuspensionOnUserStart(int userHandle) {
        int profileUserHandle = getManagedUserId(userHandle);
        if (profileUserHandle >= 0) {
            updatePersonalAppsSuspension(profileUserHandle, false);
        } else {
            suspendPersonalAppsInternal(userHandle, false);
        }
    }

    private void onLockSettingsReady() {
        List<String> packageList;
        synchronized (getLockObject()) {
            migrateUserRestrictionsIfNecessaryLocked();
        }
        lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
        cleanUpOldUsers();
        maybeSetDefaultProfileOwnerUserRestrictions();
        handleStartUser(0);
        maybeLogStart();
        this.mSetupContentObserver.register();
        updateUserSetupCompleteAndPaired();
        synchronized (getLockObject()) {
            packageList = getKeepUninstalledPackagesLocked();
        }
        if (packageList != null) {
            this.mInjector.getPackageManagerInternal().setKeepUninstalledPackages(packageList);
        }
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwner = getDeviceOwnerAdminLocked();
            if (deviceOwner != null) {
                this.mUserManagerInternal.setForceEphemeralUsers(deviceOwner.forceEphemeralUsers);
                ActivityManagerInternal activityManagerInternal = this.mInjector.getActivityManagerInternal();
                activityManagerInternal.setSwitchingFromSystemUserMessage(deviceOwner.startUserSessionMessage);
                activityManagerInternal.setSwitchingToSystemUserMessage(deviceOwner.endUserSessionMessage);
            }
            revertTransferOwnershipIfNecessaryLocked();
        }
    }

    private void revertTransferOwnershipIfNecessaryLocked() {
        if (!this.mTransferOwnershipMetadataManager.metadataFileExists()) {
            return;
        }
        Slog.e(LOG_TAG, "Owner transfer metadata file exists! Reverting transfer.");
        TransferOwnershipMetadataManager.Metadata metadata = this.mTransferOwnershipMetadataManager.loadMetadataFile();
        if (metadata.adminType.equals(LOG_TAG_PROFILE_OWNER)) {
            transferProfileOwnershipLocked(metadata.targetComponent, metadata.sourceComponent, metadata.userId);
            deleteTransferOwnershipMetadataFileLocked();
            deleteTransferOwnershipBundleLocked(metadata.userId);
        } else if (metadata.adminType.equals(LOG_TAG_DEVICE_OWNER)) {
            transferDeviceOwnershipLocked(metadata.targetComponent, metadata.sourceComponent, metadata.userId);
            deleteTransferOwnershipMetadataFileLocked();
            deleteTransferOwnershipBundleLocked(metadata.userId);
        }
        updateSystemUpdateFreezePeriodsRecord(true);
    }

    private void maybeLogStart() {
        if (!SecurityLog.isLoggingEnabled()) {
            return;
        }
        String verifiedBootState = this.mInjector.systemPropertiesGet("ro.boot.verifiedbootstate");
        String verityMode = this.mInjector.systemPropertiesGet("ro.boot.veritymode");
        SecurityLog.writeEvent(210009, new Object[]{verifiedBootState, verityMode});
    }

    private void ensureDeviceOwnerUserStarted() {
        synchronized (getLockObject()) {
            if (this.mOwners.hasDeviceOwner()) {
                int userId = this.mOwners.getDeviceOwnerUserId();
                if (userId != 0) {
                    try {
                        this.mInjector.getIActivityManager().startUserInBackground(userId);
                    } catch (RemoteException e) {
                        Slog.w(LOG_TAG, "Exception starting user", e);
                    }
                }
            }
        }
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    void handleStartUser(int userId) {
        updateScreenCaptureDisabled(userId, getScreenCaptureDisabled(null, userId, false));
        pushUserRestrictions(userId);
        updatePasswordQualityCacheForUserGroup(userId == 0 ? -1 : userId);
        startOwnerService(userId, "start-user");
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    void handleUnlockUser(int userId) {
        startOwnerService(userId, "unlock-user");
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    void handleStopUser(int userId) {
        stopOwnerService(userId, "stop-user");
    }

    private void startOwnerService(int userId, String actionForLog) {
        ComponentName owner = getOwnerComponent(userId);
        if (owner != null) {
            this.mDeviceAdminServiceController.startServiceForOwner(owner.getPackageName(), userId, actionForLog);
        }
    }

    private void stopOwnerService(int userId, String actionForLog) {
        this.mDeviceAdminServiceController.stopServiceForOwner(userId, actionForLog);
    }

    private void cleanUpOldUsers() {
        Collection<? extends Integer> usersWithProfileOwners;
        ArraySet arraySet;
        synchronized (getLockObject()) {
            usersWithProfileOwners = this.mOwners.getProfileOwnerKeys();
            arraySet = new ArraySet();
            for (int i = 0; i < this.mUserData.size(); i++) {
                arraySet.add(Integer.valueOf(this.mUserData.keyAt(i)));
            }
        }
        List<UserInfo> allUsers = this.mUserManager.getUsers();
        Set<Integer> deletedUsers = new ArraySet<>();
        deletedUsers.addAll(usersWithProfileOwners);
        deletedUsers.addAll(arraySet);
        for (UserInfo userInfo : allUsers) {
            deletedUsers.remove(Integer.valueOf(userInfo.id));
        }
        for (Integer userId : deletedUsers) {
            removeUserData(userId.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePasswordExpirationNotification(int userHandle) {
        Bundle adminExtras = new Bundle();
        adminExtras.putParcelable("android.intent.extra.USER", UserHandle.of(userHandle));
        synchronized (getLockObject()) {
            long now = System.currentTimeMillis();
            List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, false);
            int N = admins.size();
            for (int i = 0; i < N; i++) {
                ActiveAdmin admin = admins.get(i);
                if (admin.info.usesPolicy(6) && admin.passwordExpirationTimeout > 0 && now >= admin.passwordExpirationDate - EXPIRATION_GRACE_PERIOD_MS && admin.passwordExpirationDate > 0) {
                    sendAdminCommandLocked(admin, "android.app.action.ACTION_PASSWORD_EXPIRING", adminExtras, (BroadcastReceiver) null);
                }
            }
            setExpirationAlarmCheckLocked(this.mContext, userHandle, false);
        }
    }

    protected void onInstalledCertificatesChanged(UserHandle userHandle, Collection<String> installedCertificates) {
        if (!this.mHasFeature) {
            return;
        }
        enforceManageUsers();
        synchronized (getLockObject()) {
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle.getIdentifier());
            boolean changed = false | policy.mAcceptedCaCertificates.retainAll(installedCertificates);
            if (changed | policy.mOwnerInstalledCaCerts.retainAll(installedCertificates)) {
                saveSettingsLocked(userHandle.getIdentifier());
            }
        }
    }

    protected Set<String> getAcceptedCaCertificates(UserHandle userHandle) {
        ArraySet<String> arraySet;
        if (!this.mHasFeature) {
            return Collections.emptySet();
        }
        synchronized (getLockObject()) {
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle.getIdentifier());
            arraySet = policy.mAcceptedCaCertificates;
        }
        return arraySet;
    }

    public void setActiveAdmin(ComponentName adminReceiver, boolean refreshing, int userHandle) {
        if (!this.mHasFeature) {
            return;
        }
        setActiveAdmin(adminReceiver, refreshing, userHandle, null);
    }

    private void setActiveAdmin(final ComponentName adminReceiver, final boolean refreshing, final int userHandle, final Bundle onEnableData) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEVICE_ADMINS", null);
        enforceFullCrossUsersPermission(userHandle);
        final DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        final DeviceAdminInfo info = findAdmin(adminReceiver, userHandle, true);
        synchronized (getLockObject()) {
            checkActiveAdminPrecondition(adminReceiver, info, policy);
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setActiveAdmin$4$DevicePolicyManagerService(adminReceiver, userHandle, refreshing, info, policy, onEnableData);
                }
            });
        }
    }

    public /* synthetic */ void lambda$setActiveAdmin$4$DevicePolicyManagerService(ComponentName adminReceiver, int userHandle, boolean refreshing, DeviceAdminInfo info, DevicePolicyData policy, Bundle onEnableData) throws Exception {
        ActiveAdmin existingAdmin = getActiveAdminUncheckedLocked(adminReceiver, userHandle);
        if (!refreshing && existingAdmin != null) {
            throw new IllegalArgumentException("Admin is already added");
        }
        ActiveAdmin newAdmin = new ActiveAdmin(info, false);
        newAdmin.testOnlyAdmin = existingAdmin != null ? existingAdmin.testOnlyAdmin : isPackageTestOnly(adminReceiver.getPackageName(), userHandle);
        policy.mAdminMap.put(adminReceiver, newAdmin);
        int replaceIndex = -1;
        int N = policy.mAdminList.size();
        for (int i = 0; i < N; i++) {
            ActiveAdmin oldAdmin = policy.mAdminList.get(i);
            if (oldAdmin.info.getComponent().equals(adminReceiver)) {
                replaceIndex = i;
                break;
            }
        }
        if (replaceIndex == -1) {
            policy.mAdminList.add(newAdmin);
            enableIfNecessary(info.getPackageName(), userHandle);
            this.mUsageStatsManagerInternal.onActiveAdminAdded(adminReceiver.getPackageName(), userHandle);
        } else {
            policy.mAdminList.set(replaceIndex, newAdmin);
        }
        saveSettingsLocked(userHandle);
        sendAdminCommandLocked(newAdmin, "android.app.action.DEVICE_ADMIN_ENABLED", onEnableData, (BroadcastReceiver) null);
    }

    private void loadAdminDataAsync() {
        this.mInjector.postOnSystemServerInitThreadPool(new Runnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$uscGE01UNkxETEanV-Gb-ZwPjKI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAdminDataAsync$5$DevicePolicyManagerService();
            }
        });
    }

    public /* synthetic */ void lambda$loadAdminDataAsync$5$DevicePolicyManagerService() {
        pushActiveAdminPackages();
        this.mUsageStatsManagerInternal.onAdminDataAvailable();
        pushAllMeteredRestrictedPackages();
        this.mInjector.getNetworkPolicyManagerInternal().onAdminDataAvailable();
    }

    private void pushActiveAdminPackages() {
        synchronized (getLockObject()) {
            List<UserInfo> users = this.mUserManager.getUsers();
            for (int i = users.size() - 1; i >= 0; i--) {
                int userId = users.get(i).id;
                this.mUsageStatsManagerInternal.setActiveAdminApps(getActiveAdminPackagesLocked(userId), userId);
            }
        }
    }

    private void pushAllMeteredRestrictedPackages() {
        synchronized (getLockObject()) {
            List<UserInfo> users = this.mUserManager.getUsers();
            for (int i = users.size() - 1; i >= 0; i--) {
                int userId = users.get(i).id;
                this.mInjector.getNetworkPolicyManagerInternal().setMeteredRestrictedPackagesAsync(getMeteredDisabledPackagesLocked(userId), userId);
            }
        }
    }

    private void pushActiveAdminPackagesLocked(int userId) {
        this.mUsageStatsManagerInternal.setActiveAdminApps(getActiveAdminPackagesLocked(userId), userId);
    }

    private Set<String> getActiveAdminPackagesLocked(int userId) {
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
        Set<String> adminPkgs = null;
        for (int i = policy.mAdminList.size() - 1; i >= 0; i--) {
            String pkgName = policy.mAdminList.get(i).info.getPackageName();
            if (adminPkgs == null) {
                adminPkgs = new ArraySet<>();
            }
            adminPkgs.add(pkgName);
        }
        return adminPkgs;
    }

    private void transferActiveAdminUncheckedLocked(ComponentName incomingReceiver, ComponentName outgoingReceiver, int userHandle) {
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        if (!policy.mAdminMap.containsKey(outgoingReceiver) && policy.mAdminMap.containsKey(incomingReceiver)) {
            return;
        }
        DeviceAdminInfo incomingDeviceInfo = findAdmin(incomingReceiver, userHandle, true);
        ActiveAdmin adminToTransfer = policy.mAdminMap.get(outgoingReceiver);
        int oldAdminUid = adminToTransfer.getUid();
        adminToTransfer.transfer(incomingDeviceInfo);
        policy.mAdminMap.remove(outgoingReceiver);
        policy.mAdminMap.put(incomingReceiver, adminToTransfer);
        if (policy.mPasswordOwner == oldAdminUid) {
            policy.mPasswordOwner = adminToTransfer.getUid();
        }
        saveSettingsLocked(userHandle);
        sendAdminCommandLocked(adminToTransfer, "android.app.action.DEVICE_ADMIN_ENABLED", (Bundle) null, (BroadcastReceiver) null);
    }

    private void checkActiveAdminPrecondition(ComponentName adminReceiver, DeviceAdminInfo info, DevicePolicyData policy) {
        if (info == null) {
            throw new IllegalArgumentException("Bad admin: " + adminReceiver);
        }
        if (!info.getActivityInfo().applicationInfo.isInternal()) {
            throw new IllegalArgumentException("Only apps in internal storage can be active admin: " + adminReceiver);
        }
        if (info.getActivityInfo().applicationInfo.isInstantApp()) {
            throw new IllegalArgumentException("Instant apps cannot be device admins: " + adminReceiver);
        }
        if (policy.mRemovingAdmins.contains(adminReceiver)) {
            throw new IllegalArgumentException("Trying to set an admin which is being removed");
        }
    }

    public boolean isAdminActive(ComponentName adminReceiver, int userHandle) {
        boolean z;
        if (!this.mHasFeature) {
            return false;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            z = getActiveAdminUncheckedLocked(adminReceiver, userHandle) != null;
        }
        return z;
    }

    public boolean isRemovingAdmin(ComponentName adminReceiver, int userHandle) {
        boolean zContains;
        if (!this.mHasFeature) {
            return false;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            zContains = policyData.mRemovingAdmins.contains(adminReceiver);
        }
        return zContains;
    }

    public boolean hasGrantedPolicy(ComponentName adminReceiver, int policyId, int userHandle) {
        boolean zUsesPolicy;
        if (!this.mHasFeature) {
            return false;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            ActiveAdmin administrator = getActiveAdminUncheckedLocked(adminReceiver, userHandle);
            if (administrator == null) {
                throw new SecurityException("No active admin " + adminReceiver);
            }
            zUsesPolicy = administrator.info.usesPolicy(policyId);
        }
        return zUsesPolicy;
    }

    public List<ComponentName> getActiveAdmins(int userHandle) {
        if (!this.mHasFeature) {
            return Collections.EMPTY_LIST;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            int N = policy.mAdminList.size();
            if (N <= 0) {
                return null;
            }
            ArrayList<ComponentName> res = new ArrayList<>(N);
            for (int i = 0; i < N; i++) {
                res.add(policy.mAdminList.get(i).info.getComponent());
            }
            return res;
        }
    }

    public boolean packageHasActiveAdmins(String packageName, int userHandle) {
        if (!this.mHasFeature) {
            return false;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            int N = policy.mAdminList.size();
            for (int i = 0; i < N; i++) {
                if (policy.mAdminList.get(i).info.getPackageName().equals(packageName)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void forceRemoveActiveAdmin(final ComponentName adminReceiver, final int userHandle) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(adminReceiver, "ComponentName is null");
        enforceShell("forceRemoveActiveAdmin");
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$kMbNyFCPm-YTFbzEmBLvLJbyLPM
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$forceRemoveActiveAdmin$6$DevicePolicyManagerService(adminReceiver, userHandle);
            }
        });
    }

    public /* synthetic */ void lambda$forceRemoveActiveAdmin$6$DevicePolicyManagerService(ComponentName adminReceiver, int userHandle) throws Exception {
        synchronized (getLockObject()) {
            if (!isAdminTestOnlyLocked(adminReceiver, userHandle)) {
                throw new SecurityException("Attempt to remove non-test admin " + adminReceiver + " " + userHandle);
            }
            if (isDeviceOwner(adminReceiver, userHandle)) {
                clearDeviceOwnerLocked(getDeviceOwnerAdminLocked(), userHandle);
            }
            if (isProfileOwner(adminReceiver, userHandle)) {
                if (isProfileOwnerOfOrganizationOwnedDevice(userHandle)) {
                    UserHandle parentUserHandle = UserHandle.of(getProfileParentId(userHandle));
                    this.mUserManager.setUserRestriction("no_remove_managed_profile", false, parentUserHandle);
                    this.mUserManager.setUserRestriction("no_add_user", false, parentUserHandle);
                }
                ActiveAdmin admin = getActiveAdminUncheckedLocked(adminReceiver, userHandle, false);
                clearProfileOwnerLocked(admin, userHandle);
            }
        }
        removeAdminArtifacts(adminReceiver, userHandle);
        Slog.i(LOG_TAG, "Admin " + adminReceiver + " removed from user " + userHandle);
    }

    private void clearDeviceOwnerUserRestrictionLocked(UserHandle userHandle) {
        if (this.mUserManager.hasUserRestriction("no_add_user", userHandle)) {
            this.mUserManager.setUserRestriction("no_add_user", false, userHandle);
        }
        if (this.mUserManager.hasUserRestriction("no_add_managed_profile", userHandle)) {
            this.mUserManager.setUserRestriction("no_add_managed_profile", false, userHandle);
        }
    }

    private boolean isPackageTestOnly(String packageName, int userHandle) {
        try {
            ApplicationInfo ai = this.mInjector.getIPackageManager().getApplicationInfo(packageName, 786432, userHandle);
            if (ai != null) {
                return (ai.flags & 256) != 0;
            }
            throw new IllegalStateException("Couldn't find package: " + packageName + " on user " + userHandle);
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    private boolean isAdminTestOnlyLocked(ComponentName who, int userHandle) {
        ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle);
        return admin != null && admin.testOnlyAdmin;
    }

    private void enforceShell(String method) {
        int callingUid = this.mInjector.binderGetCallingUid();
        if (callingUid != 2000 && callingUid != 0) {
            throw new SecurityException("Non-shell user attempted to call " + method);
        }
    }

    public void removeActiveAdmin(final ComponentName adminReceiver, final int userHandle) {
        if (!this.mHasFeature) {
            return;
        }
        enforceFullCrossUsersPermission(userHandle);
        enforceUserUnlocked(userHandle);
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminUncheckedLocked(adminReceiver, userHandle);
            if (admin == null) {
                return;
            }
            if (!isDeviceOwner(adminReceiver, userHandle) && !isProfileOwner(adminReceiver, userHandle)) {
                if (admin.getUid() != this.mInjector.binderGetCallingUid()) {
                    this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEVICE_ADMINS", null);
                }
                this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$2h0zQxmPn2IIGWmGaNIAQMexgvQ
                    public final void runOrThrow() throws Exception {
                        this.f$0.lambda$removeActiveAdmin$7$DevicePolicyManagerService(adminReceiver, userHandle);
                    }
                });
                return;
            }
            Slog.e(LOG_TAG, "Device/profile owner cannot be removed: component=" + adminReceiver);
        }
    }

    public boolean isSeparateProfileChallengeAllowed(int userHandle) {
        enforceSystemCaller("query separate challenge support");
        ComponentName profileOwner = getProfileOwner(userHandle);
        return profileOwner != null && getTargetSdk(profileOwner.getPackageName(), userHandle) > 23;
    }

    public void setPasswordQuality(final ComponentName who, final int quality, final boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        validateQualityConstant(quality);
        final int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            final ActiveAdmin ap = getActiveAdminForCallerLocked(who, 0, parent);
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setPasswordQuality$8$DevicePolicyManagerService(ap, quality, userId, parent, who);
                }
            });
        }
        DevicePolicyEventLogger devicePolicyEventLogger = DevicePolicyEventLogger.createEvent(1).setAdmin(who).setInt(quality);
        String[] strArr = new String[1];
        strArr[0] = parent ? CALLED_FROM_PARENT : NOT_CALLED_FROM_PARENT;
        devicePolicyEventLogger.setStrings(strArr).write();
    }

    public /* synthetic */ void lambda$setPasswordQuality$8$DevicePolicyManagerService(ActiveAdmin ap, int quality, int userId, boolean parent, ComponentName who) throws Exception {
        PasswordPolicy passwordPolicy = ap.mPasswordPolicy;
        if (passwordPolicy.quality != quality) {
            passwordPolicy.quality = quality;
            resetInactivePasswordRequirementsIfRPlus(userId, ap);
            updatePasswordValidityCheckpointLocked(userId, parent);
            updatePasswordQualityCacheForUserGroup(userId);
            saveSettingsLocked(userId);
        }
        maybeLogPasswordComplexitySet(who, userId, parent, passwordPolicy);
    }

    private boolean passwordQualityInvocationOrderCheckEnabled(String packageName, int userId) {
        try {
            return this.mIPlatformCompat.isChangeEnabledByPackageName(ADMIN_APP_PASSWORD_COMPLEXITY, packageName, userId);
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Failed to get a response from PLATFORM_COMPAT_SERVICE", e);
            return getTargetSdk(packageName, userId) > 29;
        }
    }

    private void resetInactivePasswordRequirementsIfRPlus(int userId, ActiveAdmin admin) {
        if (passwordQualityInvocationOrderCheckEnabled(admin.info.getPackageName(), userId)) {
            PasswordPolicy policy = admin.mPasswordPolicy;
            if (policy.quality < 131072) {
                policy.length = 0;
            }
            if (policy.quality < 393216) {
                policy.letters = 1;
                policy.upperCase = 0;
                policy.lowerCase = 0;
                policy.numeric = 1;
                policy.symbols = 1;
                policy.nonLetter = 0;
            }
        }
    }

    private void updatePasswordValidityCheckpointLocked(int userHandle, boolean parent) {
        boolean newCheckpoint;
        int credentialOwner = getCredentialOwner(userHandle, parent);
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(credentialOwner);
        PasswordMetrics metrics = this.mLockSettingsInternal.getUserPasswordMetrics(credentialOwner);
        if (metrics != null && (newCheckpoint = isPasswordSufficientForUserWithoutCheckpointLocked(metrics, userHandle, parent)) != policy.mPasswordValidAtLastCheckpoint) {
            policy.mPasswordValidAtLastCheckpoint = newCheckpoint;
            saveSettingsLocked(credentialOwner);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePasswordQualityCacheForUserGroup(int userId) {
        List<UserInfo> users;
        if (userId == -1) {
            users = this.mUserManager.getUsers();
        } else {
            users = this.mUserManager.getProfiles(userId);
        }
        for (UserInfo userInfo : users) {
            int currentUserId = userInfo.id;
            this.mPolicyCache.setPasswordQuality(currentUserId, getPasswordQuality(null, currentUserId, false));
        }
    }

    public int getPasswordQuality(ComponentName who, int userHandle, boolean parent) {
        if (!this.mHasFeature) {
            return 0;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            int mode = 0;
            try {
                if (who != null) {
                    ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle, parent);
                    return admin != null ? admin.mPasswordPolicy.quality : 0;
                }
                List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, parent);
                int N = admins.size();
                for (int i = 0; i < N; i++) {
                    ActiveAdmin admin2 = admins.get(i);
                    if (mode < admin2.mPasswordPolicy.quality) {
                        mode = admin2.mPasswordPolicy.quality;
                    }
                }
                return mode;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private List<ActiveAdmin> getActiveAdminsForLockscreenPoliciesLocked(int userHandle, boolean parent) {
        if (!parent && isSeparateProfileChallengeEnabled(userHandle)) {
            return getUserDataUnchecked(userHandle).mAdminList;
        }
        return getActiveAdminsForUserAndItsManagedProfilesLocked(getProfileParentId(userHandle), new Predicate() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$MvCZq_N8hoaiWKavde0PKNRNSUM
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$getActiveAdminsForLockscreenPoliciesLocked$9$DevicePolicyManagerService((UserInfo) obj);
            }
        });
    }

    public /* synthetic */ boolean lambda$getActiveAdminsForLockscreenPoliciesLocked$9$DevicePolicyManagerService(UserInfo user) {
        return !this.mLockPatternUtils.isSeparateProfileChallengeEnabled(user.id);
    }

    private List<ActiveAdmin> getActiveAdminsForAffectedUserLocked(int userHandle) {
        if (isManagedProfile(userHandle)) {
            return getUserDataUnchecked(userHandle).mAdminList;
        }
        return getActiveAdminsForUserAndItsManagedProfilesLocked(userHandle, new Predicate() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$PCclwKytv7A925cDWslIbe1Q7Qc
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return DevicePolicyManagerService.lambda$getActiveAdminsForAffectedUserLocked$10((UserInfo) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$getActiveAdminsForAffectedUserLocked$10(UserInfo user) {
        return false;
    }

    private List<ActiveAdmin> getActiveAdminsForUserAndItsManagedProfilesLocked(final int userHandle, final Predicate<UserInfo> shouldIncludeProfileAdmins) {
        final ArrayList<ActiveAdmin> admins = new ArrayList<>();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$mDI3uIriMcjdhtgIeymmGEZxwoo
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$getActiveAdminsForUserAndItsManagedProfilesLocked$11$DevicePolicyManagerService(userHandle, admins, shouldIncludeProfileAdmins);
            }
        });
        return admins;
    }

    public /* synthetic */ void lambda$getActiveAdminsForUserAndItsManagedProfilesLocked$11$DevicePolicyManagerService(int userHandle, ArrayList admins, Predicate shouldIncludeProfileAdmins) throws Exception {
        for (UserInfo userInfo : this.mUserManager.getProfiles(userHandle)) {
            DevicePolicyData policy = getUserDataUnchecked(userInfo.id);
            if (userInfo.id == userHandle) {
                admins.addAll(policy.mAdminList);
            } else if (userInfo.isManagedProfile()) {
                for (int i = 0; i < policy.mAdminList.size(); i++) {
                    ActiveAdmin admin = policy.mAdminList.get(i);
                    if (admin.hasParentActiveAdmin()) {
                        admins.add(admin.getParentActiveAdmin());
                    }
                    if (shouldIncludeProfileAdmins.test(userInfo)) {
                        admins.add(admin);
                    }
                }
            } else {
                Slog.w(LOG_TAG, "Unknown user type: " + userInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSeparateProfileChallengeEnabled(final int userHandle) {
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$0diVa0pOEMc-Q6tr-ta8iSa3olw
            public final Object getOrThrow() {
                return this.f$0.lambda$isSeparateProfileChallengeEnabled$12$DevicePolicyManagerService(userHandle);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isSeparateProfileChallengeEnabled$12$DevicePolicyManagerService(int userHandle) throws Exception {
        return Boolean.valueOf(this.mLockPatternUtils.isSeparateProfileChallengeEnabled(userHandle));
    }

    public void setPasswordMinimumLength(ComponentName who, int length, boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 0, parent);
            ensureMinimumQuality(userId, ap, 131072, "setPasswordMinimumLength");
            PasswordPolicy passwordPolicy = ap.mPasswordPolicy;
            if (passwordPolicy.length != length) {
                passwordPolicy.length = length;
                updatePasswordValidityCheckpointLocked(userId, parent);
                saveSettingsLocked(userId);
            }
            maybeLogPasswordComplexitySet(who, userId, parent, passwordPolicy);
        }
        DevicePolicyEventLogger.createEvent(2).setAdmin(who).setInt(length).write();
    }

    private void ensureMinimumQuality(final int userId, final ActiveAdmin admin, final int minimumQuality, final String operation) {
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$ensureMinimumQuality$13$DevicePolicyManagerService(admin, minimumQuality, userId, operation);
            }
        });
    }

    public /* synthetic */ void lambda$ensureMinimumQuality$13$DevicePolicyManagerService(ActiveAdmin admin, int minimumQuality, int userId, String operation) throws Exception {
        if (admin.mPasswordPolicy.quality < minimumQuality && passwordQualityInvocationOrderCheckEnabled(admin.info.getPackageName(), userId)) {
            throw new IllegalStateException(String.format("password quality should be at least %d for %s", Integer.valueOf(minimumQuality), operation));
        }
    }

    public int getPasswordMinimumLength(ComponentName who, int userHandle, boolean parent) {
        return getStrictestPasswordRequirement(who, userHandle, parent, new Function() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$8m6ETZ9G6u09DOeRclrLBLmcvXY
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((DevicePolicyManagerService.ActiveAdmin) obj).mPasswordPolicy.length);
            }
        }, 131072);
    }

    public void setPasswordHistoryLength(ComponentName who, int length, boolean parent) {
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 0, parent);
            if (ap.passwordHistoryLength != length) {
                ap.passwordHistoryLength = length;
                updatePasswordValidityCheckpointLocked(userId, parent);
                saveSettingsLocked(userId);
            }
        }
        if (SecurityLog.isLoggingEnabled()) {
            int affectedUserId = parent ? getProfileParentId(userId) : userId;
            SecurityLog.writeEvent(210018, new Object[]{who.getPackageName(), Integer.valueOf(userId), Integer.valueOf(affectedUserId), Integer.valueOf(length)});
        }
    }

    public int getPasswordHistoryLength(ComponentName who, int userHandle, boolean parent) {
        if (!this.mLockPatternUtils.hasSecureLockScreen()) {
            return 0;
        }
        return getStrictestPasswordRequirement(who, userHandle, parent, new Function() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$tWYI31o9UB0oOJEus8BJtUC2mSA
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((DevicePolicyManagerService.ActiveAdmin) obj).passwordHistoryLength);
            }
        }, 0);
    }

    public void setPasswordExpirationTimeout(ComponentName who, long timeout, boolean parent) {
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        Preconditions.checkArgumentNonnegative(timeout, "Timeout must be >= 0 ms");
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 6, parent);
            long expiration = timeout > 0 ? System.currentTimeMillis() + timeout : 0L;
            ap.passwordExpirationDate = expiration;
            ap.passwordExpirationTimeout = timeout;
            if (timeout > 0) {
                Slog.w(LOG_TAG, "setPasswordExpiration(): password will expire on " + DateFormat.getDateTimeInstance(2, 2).format(new Date(expiration)));
            }
            saveSettingsLocked(userHandle);
            setExpirationAlarmCheckLocked(this.mContext, userHandle, parent);
        }
        if (SecurityLog.isLoggingEnabled()) {
            int affectedUserId = parent ? getProfileParentId(userHandle) : userHandle;
            SecurityLog.writeEvent(210016, new Object[]{who.getPackageName(), Integer.valueOf(userHandle), Integer.valueOf(affectedUserId), Long.valueOf(timeout)});
        }
    }

    public long getPasswordExpirationTimeout(ComponentName who, int userHandle, boolean parent) {
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return 0L;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            long timeout = 0;
            try {
                if (who != null) {
                    ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle, parent);
                    return admin != null ? admin.passwordExpirationTimeout : 0L;
                }
                List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, parent);
                int N = admins.size();
                for (int i = 0; i < N; i++) {
                    ActiveAdmin admin2 = admins.get(i);
                    if (timeout == 0 || (admin2.passwordExpirationTimeout != 0 && timeout > admin2.passwordExpirationTimeout)) {
                        timeout = admin2.passwordExpirationTimeout;
                    }
                }
                return timeout;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean addCrossProfileWidgetProvider(ComponentName admin, String packageName) {
        int userId = UserHandle.getCallingUserId();
        List<String> changedProviders = null;
        synchronized (getLockObject()) {
            ActiveAdmin activeAdmin = getActiveAdminForCallerLocked(admin, -1);
            if (activeAdmin.crossProfileWidgetProviders == null) {
                activeAdmin.crossProfileWidgetProviders = new ArrayList();
            }
            List<String> providers = activeAdmin.crossProfileWidgetProviders;
            if (!providers.contains(packageName)) {
                providers.add(packageName);
                changedProviders = new ArrayList<>(providers);
                saveSettingsLocked(userId);
            }
        }
        DevicePolicyEventLogger.createEvent(49).setAdmin(admin).write();
        if (changedProviders == null) {
            return false;
        }
        this.mLocalService.notifyCrossProfileProvidersChanged(userId, changedProviders);
        return true;
    }

    public boolean removeCrossProfileWidgetProvider(ComponentName admin, String packageName) {
        int userId = UserHandle.getCallingUserId();
        List<String> changedProviders = null;
        synchronized (getLockObject()) {
            ActiveAdmin activeAdmin = getActiveAdminForCallerLocked(admin, -1);
            if (activeAdmin.crossProfileWidgetProviders != null && !activeAdmin.crossProfileWidgetProviders.isEmpty()) {
                List<String> providers = activeAdmin.crossProfileWidgetProviders;
                if (providers.remove(packageName)) {
                    changedProviders = new ArrayList<>(providers);
                    saveSettingsLocked(userId);
                }
                DevicePolicyEventLogger.createEvent(HdmiCecKeycode.CEC_KEYCODE_F5).setAdmin(admin).write();
                if (changedProviders == null) {
                    return false;
                }
                this.mLocalService.notifyCrossProfileProvidersChanged(userId, changedProviders);
                return true;
            }
            return false;
        }
    }

    public List<String> getCrossProfileWidgetProviders(ComponentName admin) {
        synchronized (getLockObject()) {
            ActiveAdmin activeAdmin = getActiveAdminForCallerLocked(admin, -1);
            if (activeAdmin.crossProfileWidgetProviders != null && !activeAdmin.crossProfileWidgetProviders.isEmpty()) {
                if (this.mInjector.binderIsCallingUidMyUid()) {
                    return new ArrayList(activeAdmin.crossProfileWidgetProviders);
                }
                return activeAdmin.crossProfileWidgetProviders;
            }
            return null;
        }
    }

    private long getPasswordExpirationLocked(ComponentName who, int userHandle, boolean parent) {
        long timeout = 0;
        if (who != null) {
            ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle, parent);
            if (admin != null) {
                return admin.passwordExpirationDate;
            }
            return 0L;
        }
        List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, parent);
        int N = admins.size();
        for (int i = 0; i < N; i++) {
            ActiveAdmin admin2 = admins.get(i);
            if (timeout == 0 || (admin2.passwordExpirationDate != 0 && timeout > admin2.passwordExpirationDate)) {
                timeout = admin2.passwordExpirationDate;
            }
        }
        return timeout;
    }

    public long getPasswordExpiration(ComponentName who, int userHandle, boolean parent) {
        long passwordExpirationLocked;
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return 0L;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            passwordExpirationLocked = getPasswordExpirationLocked(who, userHandle, parent);
        }
        return passwordExpirationLocked;
    }

    public void setPasswordMinimumUpperCase(ComponentName who, int length, boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 0, parent);
            ensureMinimumQuality(userId, ap, 393216, "setPasswordMinimumUpperCase");
            PasswordPolicy passwordPolicy = ap.mPasswordPolicy;
            if (passwordPolicy.upperCase != length) {
                passwordPolicy.upperCase = length;
                updatePasswordValidityCheckpointLocked(userId, parent);
                saveSettingsLocked(userId);
            }
            maybeLogPasswordComplexitySet(who, userId, parent, passwordPolicy);
        }
        DevicePolicyEventLogger.createEvent(7).setAdmin(who).setInt(length).write();
    }

    public int getPasswordMinimumUpperCase(ComponentName who, int userHandle, boolean parent) {
        return getStrictestPasswordRequirement(who, userHandle, parent, new Function() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$Omg78vw58IPNY8HRcUSslIMaH40
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((DevicePolicyManagerService.ActiveAdmin) obj).mPasswordPolicy.upperCase);
            }
        }, 393216);
    }

    public void setPasswordMinimumLowerCase(ComponentName who, int length, boolean parent) {
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 0, parent);
            ensureMinimumQuality(userId, ap, 393216, "setPasswordMinimumLowerCase");
            PasswordPolicy passwordPolicy = ap.mPasswordPolicy;
            if (passwordPolicy.lowerCase != length) {
                passwordPolicy.lowerCase = length;
                updatePasswordValidityCheckpointLocked(userId, parent);
                saveSettingsLocked(userId);
            }
            maybeLogPasswordComplexitySet(who, userId, parent, passwordPolicy);
        }
        DevicePolicyEventLogger.createEvent(6).setAdmin(who).setInt(length).write();
    }

    public int getPasswordMinimumLowerCase(ComponentName who, int userHandle, boolean parent) {
        return getStrictestPasswordRequirement(who, userHandle, parent, new Function() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$cNgs8e5vj88uyEUuc68wGOw_Hhs
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((DevicePolicyManagerService.ActiveAdmin) obj).mPasswordPolicy.lowerCase);
            }
        }, 393216);
    }

    public void setPasswordMinimumLetters(ComponentName who, int length, boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 0, parent);
            ensureMinimumQuality(userId, ap, 393216, "setPasswordMinimumLetters");
            PasswordPolicy passwordPolicy = ap.mPasswordPolicy;
            if (passwordPolicy.letters != length) {
                passwordPolicy.letters = length;
                updatePasswordValidityCheckpointLocked(userId, parent);
                saveSettingsLocked(userId);
            }
            maybeLogPasswordComplexitySet(who, userId, parent, passwordPolicy);
        }
        DevicePolicyEventLogger.createEvent(5).setAdmin(who).setInt(length).write();
    }

    public int getPasswordMinimumLetters(ComponentName who, int userHandle, boolean parent) {
        return getStrictestPasswordRequirement(who, userHandle, parent, new Function() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$8lOCXThb21-zutHjuKq74wAF1gU
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((DevicePolicyManagerService.ActiveAdmin) obj).mPasswordPolicy.letters);
            }
        }, 393216);
    }

    public void setPasswordMinimumNumeric(ComponentName who, int length, boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 0, parent);
            ensureMinimumQuality(userId, ap, 393216, "setPasswordMinimumNumeric");
            PasswordPolicy passwordPolicy = ap.mPasswordPolicy;
            if (passwordPolicy.numeric != length) {
                passwordPolicy.numeric = length;
                updatePasswordValidityCheckpointLocked(userId, parent);
                saveSettingsLocked(userId);
            }
            maybeLogPasswordComplexitySet(who, userId, parent, passwordPolicy);
        }
        DevicePolicyEventLogger.createEvent(3).setAdmin(who).setInt(length).write();
    }

    public int getPasswordMinimumNumeric(ComponentName who, int userHandle, boolean parent) {
        return getStrictestPasswordRequirement(who, userHandle, parent, new Function() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$kSoXdhWKOQf1JjdKOiwdvbdlo98
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((DevicePolicyManagerService.ActiveAdmin) obj).mPasswordPolicy.numeric);
            }
        }, 393216);
    }

    public void setPasswordMinimumSymbols(ComponentName who, int length, boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 0, parent);
            ensureMinimumQuality(userId, ap, 393216, "setPasswordMinimumSymbols");
            PasswordPolicy passwordPolicy = ap.mPasswordPolicy;
            if (passwordPolicy.symbols != length) {
                ap.mPasswordPolicy.symbols = length;
                updatePasswordValidityCheckpointLocked(userId, parent);
                saveSettingsLocked(userId);
            }
            maybeLogPasswordComplexitySet(who, userId, parent, passwordPolicy);
        }
        DevicePolicyEventLogger.createEvent(8).setAdmin(who).setInt(length).write();
    }

    public int getPasswordMinimumSymbols(ComponentName who, int userHandle, boolean parent) {
        return getStrictestPasswordRequirement(who, userHandle, parent, new Function() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$AuOlu0RbyACpjyqkDNCn8M9U_-4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((DevicePolicyManagerService.ActiveAdmin) obj).mPasswordPolicy.symbols);
            }
        }, 393216);
    }

    public void setPasswordMinimumNonLetter(ComponentName who, int length, boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 0, parent);
            ensureMinimumQuality(userId, ap, 393216, "setPasswordMinimumNonLetter");
            PasswordPolicy passwordPolicy = ap.mPasswordPolicy;
            if (passwordPolicy.nonLetter != length) {
                ap.mPasswordPolicy.nonLetter = length;
                updatePasswordValidityCheckpointLocked(userId, parent);
                saveSettingsLocked(userId);
            }
            maybeLogPasswordComplexitySet(who, userId, parent, passwordPolicy);
        }
        DevicePolicyEventLogger.createEvent(4).setAdmin(who).setInt(length).write();
    }

    public int getPasswordMinimumNonLetter(ComponentName who, int userHandle, boolean parent) {
        return getStrictestPasswordRequirement(who, userHandle, parent, new Function() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$XCuce-y3cC1XYNnIB5yVmAnp8So
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((DevicePolicyManagerService.ActiveAdmin) obj).mPasswordPolicy.nonLetter);
            }
        }, 393216);
    }

    private int getStrictestPasswordRequirement(ComponentName who, int userHandle, boolean parent, Function<ActiveAdmin, Integer> getter, int minimumPasswordQuality) {
        if (!this.mHasFeature) {
            return 0;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            try {
                if (who != null) {
                    ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle, parent);
                    return admin != null ? getter.apply(admin).intValue() : 0;
                }
                int maxValue = 0;
                List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, parent);
                int N = admins.size();
                for (int i = 0; i < N; i++) {
                    ActiveAdmin admin2 = admins.get(i);
                    if (isLimitPasswordAllowed(admin2, minimumPasswordQuality)) {
                        Integer adminValue = getter.apply(admin2);
                        if (adminValue.intValue() > maxValue) {
                            maxValue = adminValue.intValue();
                        }
                    }
                }
                return maxValue;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public PasswordMetrics getPasswordMinimumMetrics(int userHandle) {
        return getPasswordMinimumMetrics(userHandle, false);
    }

    private PasswordMetrics getPasswordMinimumMetrics(int userHandle, boolean parent) {
        if (!this.mHasFeature) {
            new PasswordMetrics(-1);
        }
        enforceFullCrossUsersPermission(userHandle);
        ArrayList<PasswordMetrics> adminMetrics = new ArrayList<>();
        synchronized (getLockObject()) {
            List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, parent);
            for (ActiveAdmin admin : admins) {
                adminMetrics.add(admin.mPasswordPolicy.getMinMetrics());
            }
        }
        return PasswordMetrics.merge(adminMetrics);
    }

    public boolean isActivePasswordSufficient(int userHandle, boolean parent) {
        boolean activePasswordSufficientForUserLocked;
        if (!this.mHasFeature) {
            return true;
        }
        enforceFullCrossUsersPermission(userHandle);
        enforceUserUnlocked(userHandle, parent);
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(null, 0, parent);
            int credentialOwner = getCredentialOwner(userHandle, parent);
            DevicePolicyData policy = getUserDataUnchecked(credentialOwner);
            PasswordMetrics metrics = this.mLockSettingsInternal.getUserPasswordMetrics(credentialOwner);
            activePasswordSufficientForUserLocked = isActivePasswordSufficientForUserLocked(policy.mPasswordValidAtLastCheckpoint, metrics, userHandle, parent);
        }
        return activePasswordSufficientForUserLocked;
    }

    public boolean isUsingUnifiedPassword(ComponentName admin) {
        if (!this.mHasFeature) {
            return true;
        }
        int userId = this.mInjector.userHandleGetCallingUserId();
        enforceProfileOrDeviceOwner(admin);
        enforceManagedProfile(userId, "query unified challenge status");
        return true ^ isSeparateProfileChallengeEnabled(userId);
    }

    public boolean isProfileActivePasswordSufficientForParent(int userHandle) {
        boolean zIsActivePasswordSufficientForUserLocked;
        if (!this.mHasFeature) {
            return true;
        }
        enforceFullCrossUsersPermission(userHandle);
        enforceManagedProfile(userHandle, "call APIs refering to the parent profile");
        synchronized (getLockObject()) {
            int targetUser = getProfileParentId(userHandle);
            enforceUserUnlocked(targetUser, false);
            int credentialOwner = getCredentialOwner(userHandle, false);
            DevicePolicyData policy = getUserDataUnchecked(credentialOwner);
            PasswordMetrics metrics = this.mLockSettingsInternal.getUserPasswordMetrics(credentialOwner);
            zIsActivePasswordSufficientForUserLocked = isActivePasswordSufficientForUserLocked(policy.mPasswordValidAtLastCheckpoint, metrics, targetUser, false);
        }
        return zIsActivePasswordSufficientForUserLocked;
    }

    public boolean isPasswordSufficientAfterProfileUnification(int userHandle, final int profileUser) {
        boolean zIsEmpty;
        if (!this.mHasFeature) {
            return true;
        }
        enforceFullCrossUsersPermission(userHandle);
        enforceNotManagedProfile(userHandle, "check password sufficiency");
        enforceUserUnlocked(userHandle);
        synchronized (getLockObject()) {
            PasswordMetrics metrics = this.mLockSettingsInternal.getUserPasswordMetrics(userHandle);
            List<ActiveAdmin> admins = getActiveAdminsForUserAndItsManagedProfilesLocked(userHandle, new Predicate() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$WWE2z5Q71LPUB2n6sdrruHEUx2s
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.lambda$isPasswordSufficientAfterProfileUnification$22$DevicePolicyManagerService(profileUser, (UserInfo) obj);
                }
            });
            ArrayList<PasswordMetrics> adminMetrics = new ArrayList<>(admins.size());
            for (ActiveAdmin admin : admins) {
                adminMetrics.add(admin.mPasswordPolicy.getMinMetrics());
            }
            zIsEmpty = PasswordMetrics.validatePasswordMetrics(PasswordMetrics.merge(adminMetrics), 0, false, metrics).isEmpty();
        }
        return zIsEmpty;
    }

    public /* synthetic */ boolean lambda$isPasswordSufficientAfterProfileUnification$22$DevicePolicyManagerService(int profileUser, UserInfo user) {
        return user.id == profileUser || !this.mLockPatternUtils.isSeparateProfileChallengeEnabled(user.id);
    }

    private boolean isActivePasswordSufficientForUserLocked(boolean passwordValidAtLastCheckpoint, PasswordMetrics metrics, int userHandle, boolean parent) {
        if (!this.mInjector.storageManagerIsFileBasedEncryptionEnabled() && metrics == null) {
            return passwordValidAtLastCheckpoint;
        }
        if (metrics == null) {
            throw new IllegalStateException("isActivePasswordSufficient called on FBE-locked user");
        }
        return isPasswordSufficientForUserWithoutCheckpointLocked(metrics, userHandle, parent);
    }

    private boolean isPasswordSufficientForUserWithoutCheckpointLocked(PasswordMetrics metrics, int userId, boolean parent) {
        PasswordMetrics minMetrics = getPasswordMinimumMetrics(userId, parent);
        List<PasswordValidationError> passwordValidationErrors = PasswordMetrics.validatePasswordMetrics(minMetrics, 0, false, metrics);
        return passwordValidationErrors.isEmpty();
    }

    public int getPasswordComplexity(boolean parent) {
        int iDetermineComplexity;
        DevicePolicyEventLogger.createEvent(72).setStrings(parent ? CALLED_FROM_PARENT : NOT_CALLED_FROM_PARENT, this.mInjector.getPackageManager().getPackagesForUid(this.mInjector.binderGetCallingUid())).write();
        int callingUserId = this.mInjector.userHandleGetCallingUserId();
        if (parent) {
            enforceProfileOwnerOrSystemUser();
        }
        enforceUserUnlocked(callingUserId);
        this.mContext.enforceCallingOrSelfPermission("android.permission.REQUEST_PASSWORD_COMPLEXITY", "Must have android.permission.REQUEST_PASSWORD_COMPLEXITY permission.");
        synchronized (getLockObject()) {
            int credentialOwner = getCredentialOwner(callingUserId, parent);
            PasswordMetrics metrics = this.mLockSettingsInternal.getUserPasswordMetrics(credentialOwner);
            iDetermineComplexity = metrics == null ? 0 : metrics.determineComplexity();
        }
        return iDetermineComplexity;
    }

    public int getCurrentFailedPasswordAttempts(int userHandle, boolean parent) {
        int i;
        if (!this.mLockPatternUtils.hasSecureLockScreen()) {
            return 0;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            if (!isCallerWithSystemUid() && this.mContext.checkCallingPermission("android.permission.ACCESS_KEYGUARD_SECURE_STORAGE") != 0) {
                getActiveAdminForCallerLocked(null, 1, parent);
            }
            DevicePolicyData policy = getUserDataUnchecked(getCredentialOwner(userHandle, parent));
            i = policy.mFailedPasswordAttempts;
        }
        return i;
    }

    public void setMaximumFailedPasswordsForWipe(ComponentName who, int num, boolean parent) {
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, 4, parent);
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 1, parent);
            if (ap.maximumFailedPasswordsForWipe != num) {
                ap.maximumFailedPasswordsForWipe = num;
                saveSettingsLocked(userId);
            }
        }
        if (SecurityLog.isLoggingEnabled()) {
            int affectedUserId = parent ? getProfileParentId(userId) : userId;
            SecurityLog.writeEvent(210020, new Object[]{who.getPackageName(), Integer.valueOf(userId), Integer.valueOf(affectedUserId), Integer.valueOf(num)});
        }
    }

    public int getMaximumFailedPasswordsForWipe(ComponentName who, int userHandle, boolean parent) {
        ActiveAdmin admin;
        int i;
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return 0;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            try {
                if (who != null) {
                    admin = getActiveAdminUncheckedLocked(who, userHandle, parent);
                } else {
                    admin = getAdminWithMinimumFailedPasswordsForWipeLocked(userHandle, parent);
                }
                i = admin != null ? admin.maximumFailedPasswordsForWipe : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public int getProfileWithMinimumFailedPasswordsForWipe(int userHandle, boolean parent) {
        int userIdToWipeForFailedPasswords;
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return -10000;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            ActiveAdmin admin = getAdminWithMinimumFailedPasswordsForWipeLocked(userHandle, parent);
            userIdToWipeForFailedPasswords = admin != null ? getUserIdToWipeForFailedPasswords(admin) : -10000;
        }
        return userIdToWipeForFailedPasswords;
    }

    private ActiveAdmin getAdminWithMinimumFailedPasswordsForWipeLocked(int userHandle, boolean parent) {
        int count = 0;
        ActiveAdmin strictestAdmin = null;
        List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, parent);
        int N = admins.size();
        for (int i = 0; i < N; i++) {
            ActiveAdmin admin = admins.get(i);
            if (admin.maximumFailedPasswordsForWipe != 0) {
                int userId = getUserIdToWipeForFailedPasswords(admin);
                if (count == 0 || count > admin.maximumFailedPasswordsForWipe || (count == admin.maximumFailedPasswordsForWipe && getUserInfo(userId).isPrimary())) {
                    count = admin.maximumFailedPasswordsForWipe;
                    strictestAdmin = admin;
                }
            }
        }
        return strictestAdmin;
    }

    private UserInfo getUserInfo(final int userId) {
        return (UserInfo) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$iOVcvtWm-2P-Xugbpi6eKxqOn8c
            public final Object getOrThrow() {
                return this.f$0.lambda$getUserInfo$23$DevicePolicyManagerService(userId);
            }
        });
    }

    public /* synthetic */ UserInfo lambda$getUserInfo$23$DevicePolicyManagerService(int userId) throws Exception {
        return this.mUserManager.getUserInfo(userId);
    }

    private boolean setPasswordPrivileged(String password, int flags, int callingUid) {
        if (isLockScreenSecureUnchecked(UserHandle.getUserId(callingUid))) {
            throw new SecurityException("Cannot change current password");
        }
        return resetPasswordInternal(password, 0L, null, flags, callingUid);
    }

    public boolean resetPassword(String password, int flags) throws RemoteException {
        if (!this.mLockPatternUtils.hasSecureLockScreen()) {
            Slog.w(LOG_TAG, "Cannot reset password when the device has no lock screen");
            return false;
        }
        if (password == null) {
            password = "";
        }
        int callingUid = this.mInjector.binderGetCallingUid();
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        if (this.mContext.checkCallingPermission("android.permission.RESET_PASSWORD") == 0) {
            return setPasswordPrivileged(password, flags, callingUid);
        }
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminWithPolicyForUidLocked(null, -1, callingUid);
            if (admin != null) {
                if (getTargetSdk(admin.info.getPackageName(), userHandle) < 26) {
                    Slog.e(LOG_TAG, "DPC can no longer call resetPassword()");
                    return false;
                }
                throw new SecurityException("Device admin can no longer call resetPassword()");
            }
            if (getTargetSdk(getActiveAdminForCallerLocked(null, 2, false).info.getPackageName(), userHandle) <= 23) {
                Slog.e(LOG_TAG, "Device admin can no longer call resetPassword()");
                return false;
            }
            throw new SecurityException("Device admin can no longer call resetPassword()");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4, types: [long] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.server.devicepolicy.DevicePolicyManagerService$Injector] */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.android.server.devicepolicy.DevicePolicyManagerService$Injector] */
    /* JADX WARN: Type inference failed for: r7v4, types: [long] */
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
    private boolean resetPasswordInternal(String str, long j, byte[] bArr, int i, int i2) throws Throwable {
        boolean z;
        int i3;
        int userId = UserHandle.getUserId(i2);
        synchronized (getLockObject()) {
            PasswordMetrics passwordMinimumMetrics = getPasswordMinimumMetrics(userId);
            ?? r10 = -1;
            List listValidatePasswordMetrics = str.isEmpty() ? PasswordMetrics.validatePasswordMetrics(passwordMinimumMetrics, 0, false, new PasswordMetrics(-1)) : PasswordMetrics.validatePassword(passwordMinimumMetrics, 0, false, str.getBytes());
            if (!listValidatePasswordMetrics.isEmpty()) {
                Log.w(LOG_TAG, "Failed to reset password due to constraint violation: " + listValidatePasswordMetrics.get(0));
                return false;
            }
            DevicePolicyData devicePolicyDataLambda$getUserDataUnchecked$0$DevicePolicyManagerService = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
            if (devicePolicyDataLambda$getUserDataUnchecked$0$DevicePolicyManagerService.mPasswordOwner >= 0 && devicePolicyDataLambda$getUserDataUnchecked$0$DevicePolicyManagerService.mPasswordOwner != i2) {
                Slog.w(LOG_TAG, "resetPassword: already set by another uid and not entered by user");
                return false;
            }
            boolean zIsCallerDeviceOwner = isCallerDeviceOwner(i2);
            boolean z2 = (i & 2) != 0;
            if (zIsCallerDeviceOwner && z2) {
                setDoNotAskCredentialsOnBoot();
            }
            long jBinderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
            LockscreenCredential lockscreenCredentialCreatePasswordOrNone = LockscreenCredential.createPasswordOrNone(str);
            try {
                if (j != 0 && bArr != null) {
                    try {
                        long j2 = jBinderClearCallingIdentity;
                        if (!this.mLockPatternUtils.setLockCredentialWithToken(lockscreenCredentialCreatePasswordOrNone, j, bArr, userId)) {
                            this.mInjector.binderRestoreCallingIdentity(j2);
                            return false;
                        }
                        z = false;
                        r10 = j2;
                    } catch (Throwable th) {
                        th = th;
                        r10 = jBinderClearCallingIdentity;
                        this.mInjector.binderRestoreCallingIdentity(r10);
                        throw th;
                    }
                } else {
                    if (!this.mLockPatternUtils.setLockCredential(lockscreenCredentialCreatePasswordOrNone, LockscreenCredential.createNone(), userId)) {
                        this.mInjector.binderRestoreCallingIdentity(jBinderClearCallingIdentity);
                        return false;
                    }
                    z = false;
                    r10 = jBinderClearCallingIdentity;
                }
                if ((i & 1) != 0) {
                    z = true;
                }
                if (z) {
                    i3 = -1;
                    this.mLockPatternUtils.requireStrongAuth(2, -1);
                } else {
                    i3 = -1;
                }
                synchronized (getLockObject()) {
                    if (z) {
                        i3 = i2;
                    }
                    int i4 = i3;
                    if (devicePolicyDataLambda$getUserDataUnchecked$0$DevicePolicyManagerService.mPasswordOwner != i4) {
                        devicePolicyDataLambda$getUserDataUnchecked$0$DevicePolicyManagerService.mPasswordOwner = i4;
                        saveSettingsLocked(userId);
                    }
                }
                this.mInjector.binderRestoreCallingIdentity(r10);
                return true;
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private boolean isLockScreenSecureUnchecked(final int userId) {
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$1FFSythVtxuOalHJwHtbFM3ZI-M
            public final Object getOrThrow() {
                return this.f$0.lambda$isLockScreenSecureUnchecked$24$DevicePolicyManagerService(userId);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isLockScreenSecureUnchecked$24$DevicePolicyManagerService(int userId) throws Exception {
        return Boolean.valueOf(this.mLockPatternUtils.isSecure(userId));
    }

    private void setDoNotAskCredentialsOnBoot() {
        synchronized (getLockObject()) {
            DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
            if (!policyData.doNotAskCredentialsOnBoot) {
                policyData.doNotAskCredentialsOnBoot = true;
                saveSettingsLocked(0);
            }
        }
    }

    public boolean getDoNotAskCredentialsOnBoot() {
        boolean z;
        this.mContext.enforceCallingOrSelfPermission("android.permission.QUERY_DO_NOT_ASK_CREDENTIALS_ON_BOOT", null);
        synchronized (getLockObject()) {
            DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
            z = policyData.doNotAskCredentialsOnBoot;
        }
        return z;
    }

    public void setMaximumTimeToLock(ComponentName who, long timeMs, boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 3, parent);
            if (ap.maximumTimeToUnlock != timeMs) {
                ap.maximumTimeToUnlock = timeMs;
                saveSettingsLocked(userHandle);
                updateMaximumTimeToLockLocked(userHandle);
            }
        }
        if (SecurityLog.isLoggingEnabled()) {
            int affectedUserId = parent ? getProfileParentId(userHandle) : userHandle;
            SecurityLog.writeEvent(210019, new Object[]{who.getPackageName(), Integer.valueOf(userHandle), Integer.valueOf(affectedUserId), Long.valueOf(timeMs)});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMaximumTimeToLockLocked(final int userId) {
        if (isManagedProfile(userId)) {
            updateProfileLockTimeoutLocked(userId);
        }
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$SsR9y4-hj6Xw2ls1bInxrta0CQw
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$updateMaximumTimeToLockLocked$25$DevicePolicyManagerService(userId);
            }
        });
    }

    public /* synthetic */ void lambda$updateMaximumTimeToLockLocked$25$DevicePolicyManagerService(int userId) throws Exception {
        int parentId = getProfileParentId(userId);
        long timeMs = getMaximumTimeToLockPolicyFromAdmins(getActiveAdminsForLockscreenPoliciesLocked(parentId, false));
        DevicePolicyData policy = getUserDataUnchecked(parentId);
        if (policy.mLastMaximumTimeToLock == timeMs) {
            return;
        }
        policy.mLastMaximumTimeToLock = timeMs;
        if (policy.mLastMaximumTimeToLock != JobStatus.NO_LATEST_RUNTIME) {
            this.mInjector.settingsGlobalPutInt("stay_on_while_plugged_in", 0);
        }
        getPowerManagerInternal().setMaximumScreenOffTimeoutFromDeviceAdmin(0, timeMs);
    }

    private void updateProfileLockTimeoutLocked(final int userId) {
        long timeMs;
        if (isSeparateProfileChallengeEnabled(userId)) {
            timeMs = getMaximumTimeToLockPolicyFromAdmins(getActiveAdminsForLockscreenPoliciesLocked(userId, false));
        } else {
            timeMs = JobStatus.NO_LATEST_RUNTIME;
        }
        final DevicePolicyData policy = getUserDataUnchecked(userId);
        if (policy.mLastMaximumTimeToLock == timeMs) {
            return;
        }
        policy.mLastMaximumTimeToLock = timeMs;
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$Z4Z1L2SoQNQaQFS40CclOGVDZHc
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$updateProfileLockTimeoutLocked$26$DevicePolicyManagerService(userId, policy);
            }
        });
    }

    public /* synthetic */ void lambda$updateProfileLockTimeoutLocked$26$DevicePolicyManagerService(int userId, DevicePolicyData policy) throws Exception {
        getPowerManagerInternal().setMaximumScreenOffTimeoutFromDeviceAdmin(userId, policy.mLastMaximumTimeToLock);
    }

    public long getMaximumTimeToLock(ComponentName who, int userHandle, boolean parent) {
        long j = 0;
        if (!this.mHasFeature) {
            return 0L;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            try {
                if (who != null) {
                    ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle, parent);
                    return admin != null ? admin.maximumTimeToUnlock : 0L;
                }
                List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, parent);
                long timeMs = getMaximumTimeToLockPolicyFromAdmins(admins);
                if (timeMs != JobStatus.NO_LATEST_RUNTIME) {
                    j = timeMs;
                }
                return j;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private long getMaximumTimeToLockPolicyFromAdmins(List<ActiveAdmin> admins) {
        long time = JobStatus.NO_LATEST_RUNTIME;
        for (ActiveAdmin admin : admins) {
            if (admin.maximumTimeToUnlock > 0 && admin.maximumTimeToUnlock < time) {
                time = admin.maximumTimeToUnlock;
            }
        }
        return time;
    }

    public void setRequiredStrongAuthTimeout(ComponentName who, long timeoutMs, boolean parent) {
        long timeoutMs2;
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        Preconditions.checkArgument(timeoutMs >= 0, "Timeout must not be a negative number.");
        long minimumStrongAuthTimeout = getMinimumStrongAuthTimeoutMs();
        if (timeoutMs != 0 && timeoutMs < minimumStrongAuthTimeout) {
            timeoutMs = minimumStrongAuthTimeout;
        }
        if (timeoutMs <= 259200000) {
            timeoutMs2 = timeoutMs;
        } else {
            timeoutMs2 = 259200000;
        }
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        boolean changed = false;
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, -1, parent);
            if (ap.strongAuthUnlockTimeout != timeoutMs2) {
                ap.strongAuthUnlockTimeout = timeoutMs2;
                saveSettingsLocked(userHandle);
                changed = true;
            }
        }
        if (changed) {
            this.mLockSettingsInternal.refreshStrongAuthTimeout(userHandle);
            if (isManagedProfile(userHandle) && !isSeparateProfileChallengeEnabled(userHandle)) {
                this.mLockSettingsInternal.refreshStrongAuthTimeout(getProfileParentId(userHandle));
            }
        }
    }

    public long getRequiredStrongAuthTimeout(ComponentName who, int userId, boolean parent) {
        if (!this.mHasFeature) {
            return 259200000L;
        }
        if (!this.mLockPatternUtils.hasSecureLockScreen()) {
            return 0L;
        }
        enforceFullCrossUsersPermission(userId);
        synchronized (getLockObject()) {
            try {
                if (who != null) {
                    ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userId, parent);
                    return admin != null ? admin.strongAuthUnlockTimeout : 0L;
                }
                List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userId, parent);
                long strongAuthUnlockTimeout = 259200000;
                for (int i = 0; i < admins.size(); i++) {
                    long timeout = admins.get(i).strongAuthUnlockTimeout;
                    if (timeout != 0) {
                        strongAuthUnlockTimeout = Math.min(timeout, strongAuthUnlockTimeout);
                    }
                }
                return Math.max(strongAuthUnlockTimeout, getMinimumStrongAuthTimeoutMs());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private long getMinimumStrongAuthTimeoutMs() {
        if (!this.mInjector.isBuildDebuggable()) {
            return MINIMUM_STRONG_AUTH_TIMEOUT_MS;
        }
        return Math.min(this.mInjector.systemPropertiesGetLong("persist.sys.min_str_auth_timeo", MINIMUM_STRONG_AUTH_TIMEOUT_MS), MINIMUM_STRONG_AUTH_TIMEOUT_MS);
    }

    public void lockNow(int flags, boolean parent) {
        Injector injector;
        ComponentName component;
        int userToLock;
        if (!this.mHasFeature && this.mContext.checkCallingPermission("android.permission.LOCK_DEVICE") != 0) {
            return;
        }
        int callingUserId = this.mInjector.userHandleGetCallingUserId();
        ComponentName adminComponent = null;
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminOrCheckPermissionForCallerLocked(null, 3, parent, "android.permission.LOCK_DEVICE");
            long ident = this.mInjector.binderClearCallingIdentity();
            if (admin == null) {
                component = null;
            } else {
                try {
                    component = admin.info.getComponent();
                } catch (RemoteException e) {
                    injector = this.mInjector;
                } catch (Throwable th) {
                    this.mInjector.binderRestoreCallingIdentity(ident);
                    throw th;
                }
            }
            adminComponent = component;
            if (adminComponent != null && (flags & 1) != 0) {
                enforceManagedProfile(callingUserId, "set FLAG_EVICT_CREDENTIAL_ENCRYPTION_KEY");
                if (!isProfileOwner(adminComponent, callingUserId)) {
                    throw new SecurityException("Only profile owner admins can set FLAG_EVICT_CREDENTIAL_ENCRYPTION_KEY");
                }
                if (parent) {
                    throw new IllegalArgumentException("Cannot set FLAG_EVICT_CREDENTIAL_ENCRYPTION_KEY for the parent");
                }
                if (!this.mInjector.storageManagerIsFileBasedEncryptionEnabled()) {
                    throw new UnsupportedOperationException("FLAG_EVICT_CREDENTIAL_ENCRYPTION_KEY only applies to FBE devices");
                }
                this.mUserManager.evictCredentialEncryptionKey(callingUserId);
            }
            if (parent || !isSeparateProfileChallengeEnabled(callingUserId)) {
                userToLock = -1;
            } else {
                userToLock = callingUserId;
            }
            this.mLockPatternUtils.requireStrongAuth(2, userToLock);
            if (userToLock == -1) {
                if (!this.mIsAutomotive) {
                    this.mInjector.powerManagerGoToSleep(SystemClock.uptimeMillis(), 1, 0);
                }
                this.mInjector.getIWindowManager().lockNow((Bundle) null);
            } else {
                this.mInjector.getTrustManager().setDeviceLockedForUser(userToLock, true);
            }
            if (SecurityLog.isLoggingEnabled() && adminComponent != null) {
                int affectedUserId = parent ? getProfileParentId(callingUserId) : callingUserId;
                SecurityLog.writeEvent(210022, new Object[]{adminComponent.getPackageName(), Integer.valueOf(callingUserId), Integer.valueOf(affectedUserId)});
            }
            injector = this.mInjector;
            injector.binderRestoreCallingIdentity(ident);
        }
        DevicePolicyEventLogger.createEvent(10).setAdmin(adminComponent).setInt(flags).write();
    }

    public void enforceCanManageCaCerts(ComponentName who, String callerPackage) {
        if (who == null) {
            if (!isCallerDelegate(callerPackage, this.mInjector.binderGetCallingUid(), "delegation-cert-install")) {
                this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_CA_CERTIFICATES", null);
                return;
            }
            return;
        }
        enforceProfileOrDeviceOwner(who);
    }

    private void enforceDeviceOwner(ComponentName who) {
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -2);
        }
    }

    private void enforceProfileOrDeviceOwner(ComponentName who) {
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
        }
    }

    private void enforceNetworkStackOrProfileOrDeviceOwner(ComponentName who) {
        if (this.mContext.checkCallingPermission("android.permission.MAINLINE_NETWORK_STACK") == 0) {
            return;
        }
        enforceProfileOrDeviceOwner(who);
    }

    private void enforceDeviceOwnerOrProfileOwnerOnOrganizationOwnedDevice(ComponentName who) {
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -3);
        }
    }

    private void enforceProfileOwnerOfOrganizationOwnedDevice(ActiveAdmin admin) {
        if (!isProfileOwnerOfOrganizationOwnedDevice(admin)) {
            throw new SecurityException(String.format("Provided admin %s is either not a profile owner or not on a corporate-owned device.", admin));
        }
    }

    public boolean approveCaCert(String alias, int userId, boolean approval) {
        enforceManageUsers();
        synchronized (getLockObject()) {
            Set<String> certs = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mAcceptedCaCertificates;
            boolean changed = approval ? certs.add(alias) : certs.remove(alias);
            if (!changed) {
                return false;
            }
            saveSettingsLocked(userId);
            this.mCertificateMonitor.onCertificateApprovalsChanged(userId);
            return true;
        }
    }

    public boolean isCaCertApproved(String alias, int userId) {
        boolean zContains;
        enforceManageUsers();
        synchronized (getLockObject()) {
            zContains = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mAcceptedCaCertificates.contains(alias);
        }
        return zContains;
    }

    private void removeCaApprovalsIfNeeded(int userId) {
        for (UserInfo userInfo : this.mUserManager.getProfiles(userId)) {
            boolean isSecure = this.mLockPatternUtils.isSecure(userInfo.id);
            if (userInfo.isManagedProfile()) {
                isSecure |= this.mLockPatternUtils.isSecure(getProfileParentId(userInfo.id));
            }
            if (!isSecure) {
                synchronized (getLockObject()) {
                    lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userInfo.id).mAcceptedCaCertificates.clear();
                    saveSettingsLocked(userInfo.id);
                }
                this.mCertificateMonitor.onCertificateApprovalsChanged(userId);
            }
        }
    }

    public boolean installCaCert(final ComponentName admin, final String callerPackage, final byte[] certBuffer) throws RemoteException {
        if (!this.mHasFeature) {
            return false;
        }
        enforceCanManageCaCerts(admin, callerPackage);
        final UserHandle userHandle = this.mInjector.binderGetCallingUserHandle();
        String alias = (String) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY
            public final Object getOrThrow() {
                return this.f$0.lambda$installCaCert$27$DevicePolicyManagerService(userHandle, certBuffer, admin, callerPackage);
            }
        });
        if (alias == null) {
            Log.w(LOG_TAG, "Problem installing cert");
            return false;
        }
        synchronized (getLockObject()) {
            lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle.getIdentifier()).mOwnerInstalledCaCerts.add(alias);
            saveSettingsLocked(userHandle.getIdentifier());
        }
        return true;
    }

    public /* synthetic */ String lambda$installCaCert$27$DevicePolicyManagerService(UserHandle userHandle, byte[] certBuffer, ComponentName admin, String callerPackage) throws Exception {
        String installedAlias = this.mCertificateMonitor.installCaCert(userHandle, certBuffer);
        boolean isDelegate = admin == null;
        DevicePolicyEventLogger.createEvent(21).setAdmin(callerPackage).setBoolean(isDelegate).write();
        return installedAlias;
    }

    public void uninstallCaCerts(final ComponentName admin, final String callerPackage, final String[] aliases) {
        if (!this.mHasFeature) {
            return;
        }
        enforceCanManageCaCerts(admin, callerPackage);
        final int userId = this.mInjector.userHandleGetCallingUserId();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$uninstallCaCerts$28$DevicePolicyManagerService(userId, aliases, admin, callerPackage);
            }
        });
        synchronized (getLockObject()) {
            if (lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mOwnerInstalledCaCerts.removeAll(Arrays.asList(aliases))) {
                saveSettingsLocked(userId);
            }
        }
    }

    public /* synthetic */ void lambda$uninstallCaCerts$28$DevicePolicyManagerService(int userId, String[] aliases, ComponentName admin, String callerPackage) throws Exception {
        this.mCertificateMonitor.uninstallCaCerts(UserHandle.of(userId), aliases);
        boolean isDelegate = admin == null;
        DevicePolicyEventLogger.createEvent(24).setAdmin(callerPackage).setBoolean(isDelegate).write();
    }

    public boolean installKeyPair(ComponentName who, String callerPackage, byte[] privKey, byte[] cert, byte[] chain, String alias, boolean requestAccess, boolean isUserSelectable) throws Throwable {
        enforceCanManageScope(who, callerPackage, -1, "delegation-cert-install");
        int callingUid = this.mInjector.binderGetCallingUid();
        long id = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                KeyChain.KeyChainConnection keyChainConnection = KeyChain.bindAsUser(this.mContext, UserHandle.getUserHandleForUid(callingUid));
                try {
                    try {
                        IKeyChainService keyChain = keyChainConnection.getService();
                        if (!keyChain.installKeyPair(privKey, cert, chain, alias, -1)) {
                            keyChainConnection.close();
                            this.mInjector.binderRestoreCallingIdentity(id);
                            return false;
                        }
                        if (requestAccess) {
                            keyChain.setGrant(callingUid, alias, true);
                        }
                        try {
                            try {
                                keyChain.setUserSelectable(alias, isUserSelectable);
                                boolean isDelegate = who == null;
                                DevicePolicyEventLogger.createEvent(20).setAdmin(callerPackage).setBoolean(isDelegate).write();
                                keyChainConnection.close();
                                this.mInjector.binderRestoreCallingIdentity(id);
                                return true;
                            } catch (RemoteException e) {
                                e = e;
                                Log.e(LOG_TAG, "Installing certificate", e);
                                keyChainConnection.close();
                                this.mInjector.binderRestoreCallingIdentity(id);
                                return false;
                            }
                        } catch (Throwable th) {
                            th = th;
                            keyChainConnection.close();
                            throw th;
                        }
                    } catch (InterruptedException e2) {
                        e = e2;
                        Log.w(LOG_TAG, "Interrupted while installing certificate", e);
                        Thread.currentThread().interrupt();
                        this.mInjector.binderRestoreCallingIdentity(id);
                        return false;
                    }
                } catch (RemoteException e3) {
                    e = e3;
                } catch (Throwable th2) {
                    th = th2;
                    keyChainConnection.close();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
        } catch (InterruptedException e4) {
            e = e4;
        } catch (Throwable th4) {
            th = th4;
            this.mInjector.binderRestoreCallingIdentity(id);
            throw th;
        }
    }

    public boolean removeKeyPair(ComponentName who, String callerPackage, String alias) {
        enforceCanManageScope(who, callerPackage, -1, "delegation-cert-install");
        UserHandle userHandle = new UserHandle(UserHandle.getCallingUserId());
        long id = Binder.clearCallingIdentity();
        try {
            try {
                KeyChain.KeyChainConnection keyChainConnection = KeyChain.bindAsUser(this.mContext, userHandle);
                try {
                    try {
                        IKeyChainService keyChain = keyChainConnection.getService();
                        boolean result = keyChain.removeKeyPair(alias);
                        boolean isDelegate = who == null;
                        DevicePolicyEventLogger.createEvent(23).setAdmin(callerPackage).setBoolean(isDelegate).write();
                        keyChainConnection.close();
                        Binder.restoreCallingIdentity(id);
                        return result;
                    } catch (Throwable th) {
                        keyChainConnection.close();
                        throw th;
                    }
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "Removing keypair", e);
                    keyChainConnection.close();
                    Binder.restoreCallingIdentity(id);
                    return false;
                }
            } catch (InterruptedException e2) {
                Log.w(LOG_TAG, "Interrupted while removing keypair", e2);
                Thread.currentThread().interrupt();
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(id);
            throw th2;
        }
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    public boolean setKeyGrantForApp(ComponentName who, String callerPackage, String alias, String packageName, boolean hasGrant) {
        enforceCanManageScope(who, callerPackage, -1, "delegation-cert-selection");
        if (TextUtils.isEmpty(alias)) {
            throw new IllegalArgumentException("Alias to grant cannot be empty.");
        }
        if (TextUtils.isEmpty(packageName)) {
            throw new IllegalArgumentException("Package to grant to cannot be empty.");
        }
        int userId = this.mInjector.userHandleGetCallingUserId();
        try {
            ApplicationInfo ai = this.mInjector.getIPackageManager().getApplicationInfo(packageName, 0, userId);
            if (ai == null) {
                throw new IllegalArgumentException(String.format("Provided package %s is not installed", packageName));
            }
            int granteeUid = ai.uid;
            int callingUid = this.mInjector.binderGetCallingUid();
            long id = this.mInjector.binderClearCallingIdentity();
            try {
                try {
                    KeyChain.KeyChainConnection keyChainConnection = KeyChain.bindAsUser(this.mContext, UserHandle.getUserHandleForUid(callingUid));
                    try {
                        try {
                            IKeyChainService keyChain = keyChainConnection.getService();
                            keyChain.setGrant(granteeUid, alias, hasGrant);
                            keyChainConnection.close();
                            this.mInjector.binderRestoreCallingIdentity(id);
                            return true;
                        } catch (Throwable th) {
                            keyChainConnection.close();
                            throw th;
                        }
                    } catch (RemoteException e) {
                        Log.e(LOG_TAG, "Setting grant for package.", e);
                        keyChainConnection.close();
                        this.mInjector.binderRestoreCallingIdentity(id);
                        return false;
                    }
                } catch (InterruptedException e2) {
                    Log.w(LOG_TAG, "Interrupted while setting key grant", e2);
                    Thread.currentThread().interrupt();
                    this.mInjector.binderRestoreCallingIdentity(id);
                    return false;
                }
            } catch (Throwable th2) {
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th2;
            }
        } catch (RemoteException e3) {
            throw new IllegalStateException("Failure getting grantee uid", e3);
        }
    }

    public void enforceCallerCanRequestDeviceIdAttestation(ComponentName who, String callerPackage, int callerUid) throws SecurityException {
        int userId = UserHandle.getUserId(callerUid);
        if (hasProfileOwner(userId)) {
            enforceCanManageScope(who, callerPackage, -1, "delegation-cert-install");
            if (isProfileOwnerOfOrganizationOwnedDevice(userId)) {
                return;
            } else {
                throw new SecurityException("Profile Owner is not allowed to access Device IDs.");
            }
        }
        enforceCanManageScope(who, callerPackage, -2, "delegation-cert-install");
    }

    public static int[] translateIdAttestationFlags(int idAttestationFlags) {
        Map<Integer, Integer> idTypeToAttestationFlag = new HashMap<>();
        idTypeToAttestationFlag.put(2, 1);
        idTypeToAttestationFlag.put(4, 2);
        idTypeToAttestationFlag.put(8, 3);
        idTypeToAttestationFlag.put(16, 4);
        int numFlagsSet = Integer.bitCount(idAttestationFlags);
        if (numFlagsSet == 0) {
            return null;
        }
        if ((idAttestationFlags & 1) != 0) {
            numFlagsSet--;
            idAttestationFlags &= -2;
        }
        int[] attestationUtilsFlags = new int[numFlagsSet];
        int i = 0;
        for (Integer idType : idTypeToAttestationFlag.keySet()) {
            if ((idType.intValue() & idAttestationFlags) != 0) {
                attestationUtilsFlags[i] = idTypeToAttestationFlag.get(idType).intValue();
                i++;
            }
        }
        return attestationUtilsFlags;
    }

    /* JADX WARN: Code duplicated, block: B:124:0x019b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:? A[Catch: InterruptedException -> 0x01a5, RemoteException -> 0x01a7, all -> 0x01dd, SYNTHETIC, TRY_LEAVE, TryCatch #15 {all -> 0x01dd, blocks: (B:106:0x01ba, B:109:0x01cf, B:97:0x01a4, B:96:0x01a1, B:81:0x017d), top: B:123:0x0063 }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 6 */
    public boolean generateKeyPair(ComponentName who, String callerPackage, String algorithm, ParcelableKeyGenParameterSpec parcelableKeySpec, int idAttestationFlags, KeymasterCertificateChain attestationChain) throws Throwable {
        Throwable th;
        int[] attestationUtilsFlags = translateIdAttestationFlags(idAttestationFlags);
        boolean deviceIdAttestationRequired = attestationUtilsFlags != null;
        int callingUid = this.mInjector.binderGetCallingUid();
        if (!deviceIdAttestationRequired || attestationUtilsFlags.length <= 0) {
            enforceCanManageScope(who, callerPackage, -1, "delegation-cert-install");
        } else {
            enforceCallerCanRequestDeviceIdAttestation(who, callerPackage, callingUid);
            enforceIndividualAttestationSupportedIfRequested(attestationUtilsFlags);
        }
        KeyGenParameterSpec keySpec = parcelableKeySpec.getSpec();
        String alias = keySpec.getKeystoreAlias();
        if (TextUtils.isEmpty(alias)) {
            throw new IllegalArgumentException("Empty alias provided.");
        }
        if (keySpec.getUid() != -1) {
            Log.e(LOG_TAG, "Only the caller can be granted access to the generated keypair.");
            return false;
        }
        if (deviceIdAttestationRequired && keySpec.getAttestationChallenge() == null) {
            throw new IllegalArgumentException("Requested Device ID attestation but challenge is empty.");
        }
        UserHandle userHandle = this.mInjector.binderGetCallingUserHandle();
        long id = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                try {
                    KeyChain.KeyChainConnection keyChainConnection = KeyChain.bindAsUser(this.mContext, userHandle);
                    try {
                        IKeyChainService keyChain = keyChainConnection.getService();
                        KeyGenParameterSpec noAttestationSpec = new KeyGenParameterSpec.Builder(keySpec).setAttestationChallenge(null).build();
                        int generationResult = keyChain.generateKeyPair(algorithm, new ParcelableKeyGenParameterSpec(noAttestationSpec));
                        try {
                            if (generationResult != 0) {
                                Log.e(LOG_TAG, String.format("KeyChain failed to generate a keypair, error %d.", Integer.valueOf(generationResult)));
                                if (generationResult == 6) {
                                    throw new ServiceSpecificException(1, String.format("KeyChain error: %d", Integer.valueOf(generationResult)));
                                }
                                if (keyChainConnection != null) {
                                    try {
                                        keyChainConnection.close();
                                    } catch (RemoteException e) {
                                        e = e;
                                        Log.e(LOG_TAG, "KeyChain error while generating a keypair", e);
                                        this.mInjector.binderRestoreCallingIdentity(id);
                                        return false;
                                    } catch (InterruptedException e2) {
                                        e = e2;
                                        Log.w(LOG_TAG, "Interrupted while generating keypair", e);
                                        Thread.currentThread().interrupt();
                                        this.mInjector.binderRestoreCallingIdentity(id);
                                        return false;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        this.mInjector.binderRestoreCallingIdentity(id);
                                        throw th;
                                    }
                                }
                                this.mInjector.binderRestoreCallingIdentity(id);
                                return false;
                            }
                            keyChain.setGrant(callingUid, alias, true);
                            byte[] attestationChallenge = keySpec.getAttestationChallenge();
                            if (attestationChallenge != null) {
                                try {
                                    int attestationResult = keyChain.attestKey(alias, attestationChallenge, attestationUtilsFlags, attestationChain);
                                    if (attestationResult != 0) {
                                        Log.e(LOG_TAG, String.format("Attestation for %s failed (rc=%d), deleting key.", alias, Integer.valueOf(attestationResult)));
                                        keyChain.removeKeyPair(alias);
                                        if (attestationResult == 3) {
                                            throw new UnsupportedOperationException("Device does not support Device ID attestation.");
                                        }
                                        if (keyChainConnection != null) {
                                            try {
                                                keyChainConnection.close();
                                            } catch (RemoteException e3) {
                                                e = e3;
                                                Log.e(LOG_TAG, "KeyChain error while generating a keypair", e);
                                                this.mInjector.binderRestoreCallingIdentity(id);
                                                return false;
                                            } catch (InterruptedException e4) {
                                                e = e4;
                                                Log.w(LOG_TAG, "Interrupted while generating keypair", e);
                                                Thread.currentThread().interrupt();
                                                this.mInjector.binderRestoreCallingIdentity(id);
                                                return false;
                                            } catch (Throwable th3) {
                                                th = th3;
                                                this.mInjector.binderRestoreCallingIdentity(id);
                                                throw th;
                                            }
                                        }
                                        this.mInjector.binderRestoreCallingIdentity(id);
                                        return false;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    th = th;
                                    if (keyChainConnection != null) {
                                        throw th;
                                    }
                                    try {
                                        keyChainConnection.close();
                                        throw th;
                                    } catch (Throwable th5) {
                                        th.addSuppressed(th5);
                                        throw th;
                                    }
                                }
                            }
                            boolean isDelegate = who == null;
                            try {
                                DevicePolicyEventLogger.createEvent(59).setAdmin(callerPackage).setBoolean(isDelegate).setInt(idAttestationFlags).setStrings(new String[]{algorithm}).write();
                                if (keyChainConnection != null) {
                                    keyChainConnection.close();
                                }
                                this.mInjector.binderRestoreCallingIdentity(id);
                                return true;
                            } catch (Throwable th6) {
                                th = th6;
                                th = th;
                                if (keyChainConnection != null) {
                                    throw th;
                                }
                                keyChainConnection.close();
                                throw th;
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
            } catch (RemoteException e5) {
                e = e5;
            } catch (InterruptedException e6) {
                e = e6;
            }
        } catch (RemoteException e7) {
            e = e7;
        } catch (InterruptedException e8) {
            e = e8;
        } catch (Throwable th10) {
            th = th10;
        }
        this.mInjector.binderRestoreCallingIdentity(id);
        return false;
    }

    private void enforceIndividualAttestationSupportedIfRequested(int[] attestationUtilsFlags) {
        for (int attestationFlag : attestationUtilsFlags) {
            if (attestationFlag == 4 && !this.mInjector.getPackageManager().hasSystemFeature("android.hardware.device_unique_attestation")) {
                throw new UnsupportedOperationException("Device Individual attestation is not supported on this device.");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:68:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:? A[Catch: RemoteException -> 0x008b, InterruptedException -> 0x008d, all -> 0x00c0, SYNTHETIC, TRY_LEAVE, TryCatch #0 {all -> 0x00c0, blocks: (B:55:0x009e, B:60:0x00b1, B:27:0x006a, B:44:0x008a, B:43:0x0087), top: B:67:0x001d }] */
    public boolean setKeyPairCertificate(ComponentName who, String callerPackage, String alias, byte[] cert, byte[] chain, boolean isUserSelectable) throws Throwable {
        Throwable th;
        enforceCanManageScope(who, callerPackage, -1, "delegation-cert-install");
        int callingUid = this.mInjector.binderGetCallingUid();
        long id = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                KeyChain.KeyChainConnection keyChainConnection = KeyChain.bindAsUser(this.mContext, UserHandle.getUserHandleForUid(callingUid));
                try {
                    try {
                        IKeyChainService keyChain = keyChainConnection.getService();
                        try {
                            if (keyChain.setKeyPairCertificate(alias, cert, chain)) {
                                try {
                                    keyChain.setUserSelectable(alias, isUserSelectable);
                                    boolean isDelegate = who == null;
                                    DevicePolicyEventLogger.createEvent(60).setAdmin(callerPackage).setBoolean(isDelegate).write();
                                    if (keyChainConnection != null) {
                                        keyChainConnection.close();
                                    }
                                    this.mInjector.binderRestoreCallingIdentity(id);
                                    return true;
                                } catch (Throwable th2) {
                                    th = th2;
                                    th = th;
                                    if (keyChainConnection != null) {
                                        throw th;
                                    }
                                    try {
                                        keyChainConnection.close();
                                        throw th;
                                    } catch (Throwable th3) {
                                        th.addSuppressed(th3);
                                        throw th;
                                    }
                                }
                            }
                            if (keyChainConnection != null) {
                                try {
                                    keyChainConnection.close();
                                } catch (RemoteException e) {
                                    e = e;
                                    Log.e(LOG_TAG, "Failed setting keypair certificate", e);
                                    this.mInjector.binderRestoreCallingIdentity(id);
                                    return false;
                                } catch (InterruptedException e2) {
                                    e = e2;
                                    Log.w(LOG_TAG, "Interrupted while setting keypair certificate", e);
                                    Thread.currentThread().interrupt();
                                    this.mInjector.binderRestoreCallingIdentity(id);
                                    return false;
                                } catch (Throwable th4) {
                                    th = th4;
                                    this.mInjector.binderRestoreCallingIdentity(id);
                                    throw th;
                                }
                            }
                            this.mInjector.binderRestoreCallingIdentity(id);
                            return false;
                        } catch (Throwable th5) {
                            th = th5;
                            th = th;
                            if (keyChainConnection != null) {
                                throw th;
                            }
                            keyChainConnection.close();
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                } catch (RemoteException e3) {
                    e = e3;
                    Log.e(LOG_TAG, "Failed setting keypair certificate", e);
                    this.mInjector.binderRestoreCallingIdentity(id);
                    return false;
                } catch (InterruptedException e4) {
                    e = e4;
                    Log.w(LOG_TAG, "Interrupted while setting keypair certificate", e);
                    Thread.currentThread().interrupt();
                    this.mInjector.binderRestoreCallingIdentity(id);
                    return false;
                }
            } catch (Throwable th7) {
                th = th7;
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
        } catch (RemoteException e5) {
            e = e5;
        } catch (InterruptedException e6) {
            e = e6;
        } catch (Throwable th8) {
            th = th8;
        }
    }

    public void choosePrivateKeyAlias(int uid, Uri uri, String alias, final IBinder response) {
        ComponentName aliasChooser;
        boolean isDelegate;
        enforceSystemCaller("choose private key alias");
        final UserHandle caller = this.mInjector.binderGetCallingUserHandle();
        ComponentName aliasChooser2 = getProfileOwner(caller.getIdentifier());
        if (aliasChooser2 == null && caller.isSystem()) {
            synchronized (getLockObject()) {
                ActiveAdmin deviceOwnerAdmin = getDeviceOwnerAdminLocked();
                if (deviceOwnerAdmin != null) {
                    aliasChooser2 = deviceOwnerAdmin.info.getComponent();
                }
            }
            aliasChooser = aliasChooser2;
        } else {
            aliasChooser = aliasChooser2;
        }
        if (aliasChooser == null) {
            sendPrivateKeyAliasResponse(null, response);
            return;
        }
        final Intent intent = new Intent("android.app.action.CHOOSE_PRIVATE_KEY_ALIAS");
        intent.putExtra("android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID", uid);
        intent.putExtra("android.app.extra.CHOOSE_PRIVATE_KEY_URI", uri);
        intent.putExtra("android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS", alias);
        intent.putExtra("android.app.extra.CHOOSE_PRIVATE_KEY_RESPONSE", response);
        intent.addFlags(AudioFormat.EVRC);
        ComponentName delegateReceiver = resolveDelegateReceiver("delegation-cert-selection", "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS", caller.getIdentifier());
        if (delegateReceiver != null) {
            intent.setComponent(delegateReceiver);
            isDelegate = true;
        } else {
            intent.setComponent(aliasChooser);
            isDelegate = false;
        }
        final boolean z = isDelegate;
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$KC0Z7yzWFjtErh_0xtfrg7axi3g
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$choosePrivateKeyAlias$29$DevicePolicyManagerService(intent, caller, response, z);
            }
        });
    }

    public /* synthetic */ void lambda$choosePrivateKeyAlias$29$DevicePolicyManagerService(Intent intent, UserHandle caller, final IBinder response, boolean isDelegate) throws Exception {
        this.mContext.sendOrderedBroadcastAsUser(intent, caller, null, new BroadcastReceiver() { // from class: com.android.server.devicepolicy.DevicePolicyManagerService.7
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent2) {
                String chosenAlias = getResultData();
                DevicePolicyManagerService.this.sendPrivateKeyAliasResponse(chosenAlias, response);
            }
        }, null, -1, null, null);
        DevicePolicyEventLogger.createEvent(22).setAdmin(intent.getComponent()).setBoolean(isDelegate).write();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPrivateKeyAliasResponse(String alias, IBinder responseBinder) {
        IKeyChainAliasCallback keyChainAliasResponse = IKeyChainAliasCallback.Stub.asInterface(responseBinder);
        try {
            keyChainAliasResponse.alias(alias);
        } catch (Exception e) {
            Log.e(LOG_TAG, "error while responding to callback", e);
        }
    }

    private static boolean shouldCheckIfDelegatePackageIsInstalled(String delegatePackage, int targetSdk, List<String> scopes) {
        if (targetSdk >= 24) {
            return true;
        }
        return ((scopes.size() == 1 && scopes.get(0).equals("delegation-cert-install")) || scopes.isEmpty()) ? false : true;
    }

    public void setDelegatedScopes(ComponentName who, String delegatePackage, List<String> scopeList) throws SecurityException {
        Objects.requireNonNull(who, "ComponentName is null");
        Preconditions.checkStringNotEmpty(delegatePackage, "Delegate package is null or empty");
        Preconditions.checkCollectionElementsNotNull(scopeList, "Scopes");
        ArrayList<String> scopes = new ArrayList<>(new ArraySet(scopeList));
        if (scopes.retainAll(Arrays.asList(DELEGATIONS))) {
            throw new IllegalArgumentException("Unexpected delegation scopes");
        }
        boolean hasDoDelegation = !Collections.disjoint(scopes, DEVICE_OWNER_DELEGATIONS);
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            try {
                if (hasDoDelegation) {
                    getActiveAdminForCallerLocked(who, -2);
                } else {
                    getActiveAdminForCallerLocked(who, -1);
                }
                if (shouldCheckIfDelegatePackageIsInstalled(delegatePackage, getTargetSdk(who.getPackageName(), userId), scopes) && !isPackageInstalledForUser(delegatePackage, userId)) {
                    throw new IllegalArgumentException("Package " + delegatePackage + " is not installed on the current user");
                }
                DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
                List<String> exclusiveScopes = null;
                if (!scopes.isEmpty()) {
                    policy.mDelegationMap.put(delegatePackage, new ArrayList(scopes));
                    exclusiveScopes = new ArrayList<>(scopes);
                    exclusiveScopes.retainAll(EXCLUSIVE_DELEGATIONS);
                } else {
                    policy.mDelegationMap.remove(delegatePackage);
                }
                sendDelegationChangedBroadcast(delegatePackage, scopes, userId);
                if (exclusiveScopes != null && !exclusiveScopes.isEmpty()) {
                    for (int i = policy.mDelegationMap.size() - 1; i >= 0; i--) {
                        String currentPackage = policy.mDelegationMap.keyAt(i);
                        List<String> currentScopes = policy.mDelegationMap.valueAt(i);
                        if (!currentPackage.equals(delegatePackage) && currentScopes.removeAll(exclusiveScopes)) {
                            if (currentScopes.isEmpty()) {
                                policy.mDelegationMap.removeAt(i);
                            }
                            sendDelegationChangedBroadcast(currentPackage, new ArrayList<>(currentScopes), userId);
                        }
                    }
                }
                saveSettingsLocked(userId);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void sendDelegationChangedBroadcast(String delegatePackage, ArrayList<String> scopes, int userId) {
        Intent intent = new Intent("android.app.action.APPLICATION_DELEGATION_SCOPES_CHANGED");
        intent.addFlags(1073741824);
        intent.setPackage(delegatePackage);
        intent.putStringArrayListExtra("android.app.extra.DELEGATION_SCOPES", scopes);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.of(userId));
    }

    public List<String> getDelegatedScopes(ComponentName who, String delegatePackage) throws SecurityException {
        List<String> list;
        Objects.requireNonNull(delegatePackage, "Delegate package is null");
        int callingUid = this.mInjector.binderGetCallingUid();
        int userId = UserHandle.getUserId(callingUid);
        synchronized (getLockObject()) {
            try {
                if (who != null) {
                    getActiveAdminForCallerLocked(who, -1);
                } else if (!isCallingFromPackage(delegatePackage, callingUid)) {
                    throw new SecurityException("Caller with uid " + callingUid + " is not " + delegatePackage);
                }
                DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
                List<String> scopes = policy.mDelegationMap.get(delegatePackage);
                list = scopes == null ? Collections.EMPTY_LIST : scopes;
            } catch (Throwable th) {
                throw th;
            }
        }
        return list;
    }

    public List<String> getDelegatePackages(ComponentName who, String scope) throws SecurityException {
        List<String> delegatePackagesInternalLocked;
        Objects.requireNonNull(who, "ComponentName is null");
        Objects.requireNonNull(scope, "Scope is null");
        if (!Arrays.asList(DELEGATIONS).contains(scope)) {
            throw new IllegalArgumentException("Unexpected delegation scope: " + scope);
        }
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            delegatePackagesInternalLocked = getDelegatePackagesInternalLocked(scope, userId);
        }
        return delegatePackagesInternalLocked;
    }

    private List<String> getDelegatePackagesInternalLocked(String scope, int userId) {
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
        List<String> delegatePackagesWithScope = new ArrayList<>();
        for (int i = 0; i < policy.mDelegationMap.size(); i++) {
            if (policy.mDelegationMap.valueAt(i).contains(scope)) {
                delegatePackagesWithScope.add(policy.mDelegationMap.keyAt(i));
            }
        }
        return delegatePackagesWithScope;
    }

    private ComponentName resolveDelegateReceiver(String scope, String action, int userId) {
        List<String> delegates;
        synchronized (getLockObject()) {
            delegates = getDelegatePackagesInternalLocked(scope, userId);
        }
        if (delegates.size() == 0) {
            return null;
        }
        if (delegates.size() > 1) {
            Slog.wtf(LOG_TAG, "More than one delegate holds " + scope);
            return null;
        }
        String pkg = delegates.get(0);
        Intent intent = new Intent(action);
        intent.setPackage(pkg);
        try {
            List<ResolveInfo> receivers = this.mIPackageManager.queryIntentReceivers(intent, (String) null, 0, userId).getList();
            int count = receivers.size();
            if (count < 1) {
                return null;
            }
            if (count > 1) {
                Slog.w(LOG_TAG, pkg + " defines more than one delegate receiver for " + action);
            }
            return receivers.get(0).activityInfo.getComponentName();
        } catch (RemoteException e) {
            return null;
        }
    }

    private boolean isCallerDelegate(String callerPackage, int callerUid, String scope) {
        Objects.requireNonNull(callerPackage, "callerPackage is null");
        if (!Arrays.asList(DELEGATIONS).contains(scope)) {
            throw new IllegalArgumentException("Unexpected delegation scope: " + scope);
        }
        int userId = UserHandle.getUserId(callerUid);
        synchronized (getLockObject()) {
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
            List<String> scopes = policy.mDelegationMap.get(callerPackage);
            if (scopes != null && scopes.contains(scope)) {
                return isCallingFromPackage(callerPackage, callerUid);
            }
            return false;
        }
    }

    private void enforceCanManageScope(ComponentName who, String callerPackage, int reqPolicy, String scope) {
        enforceCanManageScopeOrCheckPermission(who, callerPackage, reqPolicy, scope, null);
    }

    private void enforceCanManageScopeOrCheckPermission(ComponentName who, String callerPackage, int reqPolicy, String scope, String permission) {
        if (who != null) {
            synchronized (getLockObject()) {
                getActiveAdminForCallerLocked(who, reqPolicy);
            }
        } else {
            if (isCallerDelegate(callerPackage, this.mInjector.binderGetCallingUid(), scope)) {
                return;
            }
            if (permission == null) {
                throw new SecurityException("Caller with uid " + this.mInjector.binderGetCallingUid() + " is not a delegate of scope " + scope + ".");
            }
            this.mContext.enforceCallingOrSelfPermission(permission, null);
        }
    }

    private void setDelegatedScopePreO(ComponentName who, String delegatePackage, String scope) {
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
            if (delegatePackage != null) {
                List<String> scopes = policy.mDelegationMap.get(delegatePackage);
                if (scopes == null) {
                    scopes = new ArrayList();
                }
                if (!scopes.contains(scope)) {
                    scopes.add(scope);
                    setDelegatedScopes(who, delegatePackage, scopes);
                }
            }
            for (int i = 0; i < policy.mDelegationMap.size(); i++) {
                String currentPackage = policy.mDelegationMap.keyAt(i);
                List<String> currentScopes = policy.mDelegationMap.valueAt(i);
                if (!currentPackage.equals(delegatePackage) && currentScopes.contains(scope)) {
                    List<String> newScopes = new ArrayList<>(currentScopes);
                    newScopes.remove(scope);
                    setDelegatedScopes(who, currentPackage, newScopes);
                }
            }
        }
    }

    public void setCertInstallerPackage(ComponentName who, String installerPackage) throws SecurityException {
        setDelegatedScopePreO(who, installerPackage, "delegation-cert-install");
        DevicePolicyEventLogger.createEvent(25).setAdmin(who).setStrings(new String[]{installerPackage}).write();
    }

    public String getCertInstallerPackage(ComponentName who) throws SecurityException {
        List<String> delegatePackages = getDelegatePackages(who, "delegation-cert-install");
        if (delegatePackages.size() > 0) {
            return delegatePackages.get(0);
        }
        return null;
    }

    public boolean setAlwaysOnVpnPackage(final ComponentName who, final String vpnPackage, final boolean lockdown, final List<String> lockdownWhitelist) throws SecurityException {
        enforceProfileOrDeviceOwner(who);
        final int userId = this.mInjector.userHandleGetCallingUserId();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setAlwaysOnVpnPackage$30$DevicePolicyManagerService(vpnPackage, userId, lockdown, lockdownWhitelist, who);
            }
        });
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            if (!TextUtils.equals(vpnPackage, admin.mAlwaysOnVpnPackage) || lockdown != admin.mAlwaysOnVpnLockdown) {
                admin.mAlwaysOnVpnPackage = vpnPackage;
                admin.mAlwaysOnVpnLockdown = lockdown;
                saveSettingsLocked(userId);
            }
        }
        return true;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    public /* synthetic */ void lambda$setAlwaysOnVpnPackage$30$DevicePolicyManagerService(String vpnPackage, int userId, boolean lockdown, List lockdownWhitelist, ComponentName who) throws Exception {
        if (vpnPackage != null && !isPackageInstalledForUser(vpnPackage, userId)) {
            Slog.w(LOG_TAG, "Non-existent VPN package specified: " + vpnPackage);
            throw new ServiceSpecificException(1, vpnPackage);
        }
        if (vpnPackage != null && lockdown && lockdownWhitelist != null) {
            Iterator it = lockdownWhitelist.iterator();
            while (it.hasNext()) {
                String packageName = (String) it.next();
                if (!isPackageInstalledForUser(packageName, userId)) {
                    Slog.w(LOG_TAG, "Non-existent package in VPN whitelist: " + packageName);
                    throw new ServiceSpecificException(1, packageName);
                }
            }
        }
        if (!this.mInjector.getConnectivityManager().setAlwaysOnVpnPackageForUser(userId, vpnPackage, lockdown, lockdownWhitelist)) {
            throw new UnsupportedOperationException();
        }
        DevicePolicyEventLogger.createEvent(26).setAdmin(who).setStrings(new String[]{vpnPackage}).setBoolean(lockdown).setInt(lockdownWhitelist != null ? lockdownWhitelist.size() : 0).write();
    }

    public String getAlwaysOnVpnPackage(ComponentName admin) throws SecurityException {
        enforceProfileOrDeviceOwner(admin);
        final int userId = this.mInjector.userHandleGetCallingUserId();
        return (String) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$Fgo6KGvG0qe9Ep_X392nYq_GMH4
            public final Object getOrThrow() {
                return this.f$0.lambda$getAlwaysOnVpnPackage$31$DevicePolicyManagerService(userId);
            }
        });
    }

    public /* synthetic */ String lambda$getAlwaysOnVpnPackage$31$DevicePolicyManagerService(int userId) throws Exception {
        return this.mInjector.getConnectivityManager().getAlwaysOnVpnPackageForUser(userId);
    }

    public String getAlwaysOnVpnPackageForUser(int userHandle) {
        String str;
        enforceSystemCaller("getAlwaysOnVpnPackageForUser");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getDeviceOrProfileOwnerAdminLocked(userHandle);
            str = admin != null ? admin.mAlwaysOnVpnPackage : null;
        }
        return str;
    }

    public boolean isAlwaysOnVpnLockdownEnabled(ComponentName admin) throws SecurityException {
        enforceNetworkStackOrProfileOrDeviceOwner(admin);
        final int userId = this.mInjector.userHandleGetCallingUserId();
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$W_EOiMR88VHfIKObgtqzPusoGq4
            public final Object getOrThrow() {
                return this.f$0.lambda$isAlwaysOnVpnLockdownEnabled$32$DevicePolicyManagerService(userId);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isAlwaysOnVpnLockdownEnabled$32$DevicePolicyManagerService(int userId) throws Exception {
        return Boolean.valueOf(this.mInjector.getConnectivityManager().isVpnLockdownEnabled(userId));
    }

    public boolean isAlwaysOnVpnLockdownEnabledForUser(int userHandle) {
        boolean zBooleanValue;
        enforceSystemCaller("isAlwaysOnVpnLockdownEnabledForUser");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getDeviceOrProfileOwnerAdminLocked(userHandle);
            zBooleanValue = (admin != null ? Boolean.valueOf(admin.mAlwaysOnVpnLockdown) : null).booleanValue();
        }
        return zBooleanValue;
    }

    public List<String> getAlwaysOnVpnLockdownWhitelist(ComponentName admin) throws SecurityException {
        enforceProfileOrDeviceOwner(admin);
        final int userId = this.mInjector.userHandleGetCallingUserId();
        return (List) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$Dgn7mIvO7GV5cu-z9FT6ErtFPmE
            public final Object getOrThrow() {
                return this.f$0.lambda$getAlwaysOnVpnLockdownWhitelist$33$DevicePolicyManagerService(userId);
            }
        });
    }

    public /* synthetic */ List lambda$getAlwaysOnVpnLockdownWhitelist$33$DevicePolicyManagerService(int userId) throws Exception {
        return this.mInjector.getConnectivityManager().getVpnLockdownWhitelist(userId);
    }

    private void forceWipeDeviceNoLock(boolean wipeExtRequested, String reason, boolean wipeEuicc) {
        wtfIfInLock();
        if (wipeExtRequested) {
            try {
                try {
                    StorageManager sm = (StorageManager) this.mContext.getSystemService("storage");
                    sm.wipeAdoptableDisks();
                } catch (IOException | SecurityException e) {
                    Slog.w(LOG_TAG, "Failed requesting data wipe", e);
                    if (0 == 0) {
                        SecurityLog.writeEvent(210023, new Object[0]);
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (0 == 0) {
                    SecurityLog.writeEvent(210023, new Object[0]);
                }
                throw th;
            }
        }
        this.mInjector.recoverySystemRebootWipeUserData(false, reason, true, wipeEuicc);
        if (1 == 0) {
            SecurityLog.writeEvent(210023, new Object[0]);
        }
    }

    private void forceWipeUser(int userId, String wipeReasonForUser, boolean wipeSilently) {
        try {
            IActivityManager am = this.mInjector.getIActivityManager();
            if (am.getCurrentUser().id == userId) {
                am.switchUser(0);
            }
            boolean success = this.mUserManagerInternal.removeUserEvenWhenDisallowed(userId);
            if (!success) {
                Slog.w(LOG_TAG, "Couldn't remove user " + userId);
            } else if (isManagedProfile(userId) && !wipeSilently) {
                sendWipeProfileNotification(wipeReasonForUser);
            }
            if (!success) {
                SecurityLog.writeEvent(210023, new Object[0]);
            }
        } catch (RemoteException e) {
            if (0 == 0) {
                SecurityLog.writeEvent(210023, new Object[0]);
            }
        } catch (Throwable th) {
            if (0 == 0) {
                SecurityLog.writeEvent(210023, new Object[0]);
            }
            throw th;
        }
    }

    public void wipeDataWithReason(int flags, String wipeReasonForUser, boolean calledOnParentInstance) {
        ActiveAdmin admin;
        int userId;
        if (!this.mHasFeature) {
            return;
        }
        enforceFullCrossUsersPermission(this.mInjector.userHandleGetCallingUserId());
        synchronized (getLockObject()) {
            admin = getActiveAdminForCallerLocked(null, 4);
        }
        if (admin == null) {
            throw new SecurityException(String.format("No active admin for user %d", Integer.valueOf(this.mInjector.userHandleGetCallingUserId())));
        }
        boolean calledByProfileOwnerOnOrgOwnedDevice = isProfileOwnerOfOrganizationOwnedDevice(admin);
        if (calledOnParentInstance && !calledByProfileOwnerOnOrgOwnedDevice) {
            throw new SecurityException("Wiping the entire device can only be done by a profileowner on organization-owned device.");
        }
        if ((flags & 2) != 0 && !isDeviceOwner(admin) && !calledByProfileOwnerOnOrgOwnedDevice) {
            throw new SecurityException("Only device owners or proflie owners of organization-owned device can set WIPE_RESET_PROTECTION_DATA");
        }
        if (TextUtils.isEmpty(wipeReasonForUser)) {
            if (calledByProfileOwnerOnOrgOwnedDevice && !calledOnParentInstance) {
                wipeReasonForUser = this.mContext.getString(R.string.crossSimFormat_spn);
            } else {
                wipeReasonForUser = this.mContext.getString(R.string.permlab_readSyncStats);
            }
        }
        int userId2 = admin.getUserHandle().getIdentifier();
        if (calledByProfileOwnerOnOrgOwnedDevice) {
            if (calledOnParentInstance) {
                userId = 0;
            } else {
                this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$fGkKJ1VMbsV8nZ73Dlvo3-N5_2Q
                    public final void runOrThrow() throws Exception {
                        this.f$0.lambda$wipeDataWithReason$34$DevicePolicyManagerService();
                    }
                });
                userId = userId2;
            }
        } else {
            userId = userId2;
        }
        DevicePolicyEventLogger devicePolicyEventLogger = DevicePolicyEventLogger.createEvent(11).setAdmin(admin.info.getComponent()).setInt(flags);
        String[] strArr = new String[1];
        strArr[0] = calledOnParentInstance ? CALLED_FROM_PARENT : NOT_CALLED_FROM_PARENT;
        devicePolicyEventLogger.setStrings(strArr).write();
        String internalReason = String.format("DevicePolicyManager.wipeDataWithReason() from %s, organization-owned? %s", admin.info.getComponent().flattenToShortString(), Boolean.valueOf(calledByProfileOwnerOnOrgOwnedDevice));
        wipeDataNoLock(admin.info.getComponent(), flags, internalReason, wipeReasonForUser, userId);
    }

    public /* synthetic */ void lambda$wipeDataWithReason$34$DevicePolicyManagerService() throws Exception {
        this.mUserManager.setUserRestriction("no_remove_managed_profile", false, UserHandle.SYSTEM);
        this.mUserManager.setUserRestriction("no_add_user", false, UserHandle.SYSTEM);
        this.mLockPatternUtils.setDeviceOwnerInfo((String) null);
    }

    private void wipeDataNoLock(final ComponentName admin, final int flags, final String internalReason, final String wipeReasonForUser, final int userId) {
        wtfIfInLock();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$wipeDataNoLock$35$DevicePolicyManagerService(userId, admin, flags, internalReason, wipeReasonForUser);
            }
        });
    }

    public /* synthetic */ void lambda$wipeDataNoLock$35$DevicePolicyManagerService(int userId, ComponentName admin, int flags, String internalReason, String wipeReasonForUser) throws Exception {
        String restriction;
        PersistentDataBlockManager manager;
        if (userId == 0) {
            restriction = "no_factory_reset";
        } else if (isManagedProfile(userId)) {
            restriction = "no_remove_managed_profile";
        } else {
            restriction = "no_remove_user";
        }
        if (isAdminAffectedByRestriction(admin, restriction, userId)) {
            throw new SecurityException("Cannot wipe data. " + restriction + " restriction is set for user " + userId);
        }
        if ((flags & 2) != 0 && (manager = (PersistentDataBlockManager) this.mContext.getSystemService("persistent_data_block")) != null) {
            manager.wipe();
        }
        if (userId == 0) {
            forceWipeDeviceNoLock((flags & 1) != 0, internalReason, (flags & 4) != 0);
        } else {
            forceWipeUser(userId, wipeReasonForUser, (flags & 8) != 0);
        }
    }

    private void sendWipeProfileNotification(String wipeReasonForUser) {
        Notification notification = new Notification.Builder(this.mContext, SystemNotificationChannels.DEVICE_ADMIN).setSmallIcon(R.drawable.stat_sys_warning).setContentTitle(this.mContext.getString(R.string.permlab_readSyncSettings)).setContentText(wipeReasonForUser).setColor(this.mContext.getColor(R.color.system_notification_accent_color)).setStyle(new Notification.BigTextStyle().bigText(wipeReasonForUser)).build();
        this.mInjector.getNotificationManager().notify(NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE, notification);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearWipeProfileNotification() {
        this.mInjector.getNotificationManager().cancel(NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE);
    }

    public void setFactoryResetProtectionPolicy(ComponentName who, FactoryResetProtectionPolicy policy) {
        if (!this.mHasFeature) {
            return;
        }
        Preconditions.checkNotNull(who, "ComponentName is null");
        final int frpManagementAgentUid = getFrpManagementAgentUidOrThrow();
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -3);
            admin.mFactoryResetProtectionPolicy = policy;
            saveSettingsLocked(userId);
        }
        final Intent intent = new Intent("android.app.action.RESET_PROTECTION_POLICY_CHANGED").addFlags(AudioFormat.EVRCB);
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$oWsLtfkKNFB2cV5_IoTQb5uG0qM
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setFactoryResetProtectionPolicy$36$DevicePolicyManagerService(intent, frpManagementAgentUid);
            }
        });
        DevicePolicyEventLogger.createEvent(CecMessageType.ACTIVE_SOURCE).setAdmin(who).write();
    }

    public /* synthetic */ void lambda$setFactoryResetProtectionPolicy$36$DevicePolicyManagerService(Intent intent, int frpManagementAgentUid) throws Exception {
        this.mContext.sendBroadcastAsUser(intent, UserHandle.getUserHandleForUid(frpManagementAgentUid), "android.permission.MANAGE_FACTORY_RESET_PROTECTION");
    }

    public FactoryResetProtectionPolicy getFactoryResetProtectionPolicy(ComponentName who) {
        ActiveAdmin admin;
        if (!this.mHasFeature) {
            return null;
        }
        int frpManagementAgentUid = getFrpManagementAgentUidOrThrow();
        synchronized (getLockObject()) {
            try {
                if (who == null) {
                    if (frpManagementAgentUid != this.mInjector.binderGetCallingUid() && this.mContext.checkCallingPermission("android.permission.MASTER_CLEAR") != 0) {
                        throw new SecurityException("Must be called by the FRP management agent on device");
                    }
                    admin = getDeviceOwnerOrProfileOwnerOfOrganizationOwnedDeviceLocked(UserHandle.getUserId(frpManagementAgentUid));
                } else {
                    admin = getActiveAdminForCallerLocked(who, -3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (admin != null) {
            return admin.mFactoryResetProtectionPolicy;
        }
        return null;
    }

    private int getFrpManagementAgentUid() {
        PersistentDataBlockManagerInternal pdb = this.mInjector.getPersistentDataBlockManagerInternal();
        if (pdb != null) {
            return pdb.getAllowedUid();
        }
        return -1;
    }

    private int getFrpManagementAgentUidOrThrow() {
        int uid = getFrpManagementAgentUid();
        if (uid == -1) {
            throw new UnsupportedOperationException("The persistent data block service is not supported on this device");
        }
        return uid;
    }

    public boolean isFactoryResetProtectionPolicySupported() {
        return getFrpManagementAgentUid() != -1;
    }

    public void getRemoveWarning(ComponentName comp, final RemoteCallback result, int userHandle) {
        if (!this.mHasFeature) {
            return;
        }
        enforceFullCrossUsersPermission(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.BIND_DEVICE_ADMIN", null);
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminUncheckedLocked(comp, userHandle);
            if (admin == null) {
                result.sendResult((Bundle) null);
                return;
            }
            Intent intent = new Intent("android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED");
            intent.setFlags(AudioFormat.EVRC);
            intent.setComponent(admin.info.getComponent());
            this.mContext.sendOrderedBroadcastAsUser(intent, new UserHandle(userHandle), null, new BroadcastReceiver() { // from class: com.android.server.devicepolicy.DevicePolicyManagerService.8
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent2) {
                    result.sendResult(getResultExtras(false));
                }
            }, null, -1, null, null);
        }
    }

    public void reportPasswordChanged(int userId) {
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return;
        }
        enforceSystemCaller("report password change");
        if (!isSeparateProfileChallengeEnabled(userId)) {
            enforceNotManagedProfile(userId, "set the active password");
        }
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
        synchronized (getLockObject()) {
            policy.mFailedPasswordAttempts = 0;
            updatePasswordValidityCheckpointLocked(userId, false);
            saveSettingsLocked(userId);
            updatePasswordExpirationsLocked(userId);
            setExpirationAlarmCheckLocked(this.mContext, userId, false);
            sendAdminCommandForLockscreenPoliciesLocked("android.app.action.ACTION_PASSWORD_CHANGED", 0, userId);
        }
        removeCaApprovalsIfNeeded(userId);
    }

    private void updatePasswordExpirationsLocked(int userHandle) {
        ArraySet<Integer> affectedUserIds = new ArraySet<>();
        List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, false);
        int N = admins.size();
        for (int i = 0; i < N; i++) {
            ActiveAdmin admin = admins.get(i);
            if (admin.info.usesPolicy(6)) {
                affectedUserIds.add(Integer.valueOf(admin.getUserHandle().getIdentifier()));
                long timeout = admin.passwordExpirationTimeout;
                long expiration = timeout > 0 ? System.currentTimeMillis() + timeout : 0L;
                admin.passwordExpirationDate = expiration;
            }
        }
        Iterator<Integer> it = affectedUserIds.iterator();
        while (it.hasNext()) {
            int affectedUserId = it.next().intValue();
            saveSettingsLocked(affectedUserId);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00e5 */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0057, code lost:
    
        r16.mInjector.binderRestoreCallingIdentity(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
    
        if (r13 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005f, code lost:
    
        if (r14 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        r15 = getUserIdToWipeForFailedPasswords(r14);
        android.util.Slog.i(com.android.server.devicepolicy.DevicePolicyManagerService.LOG_TAG, "Max failed password attempts policy reached for admin: " + r14.info.getComponent().flattenToShortString() + ". Calling wipeData for user " + r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008d, code lost:
    
        r5 = r16.mContext.getString(android.R.string.permlab_receiveBootCompleted);
        wipeDataNoLock(r14.info.getComponent(), 0, "reportFailedPasswordAttempt()", r5, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a8, code lost:
    
        android.util.Slog.w(com.android.server.devicepolicy.DevicePolicyManagerService.LOG_TAG, "Failed to wipe user " + r15 + " after max failed password attempts reached.", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e6, code lost:
    
        r0 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void reportFailedPasswordAttempt(int r17) {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.devicepolicy.DevicePolicyManagerService.reportFailedPasswordAttempt(int):void");
    }

    private int getUserIdToWipeForFailedPasswords(ActiveAdmin admin) {
        int userId = admin.getUserHandle().getIdentifier();
        ComponentName component = admin.info.getComponent();
        return isProfileOwnerOfOrganizationOwnedDevice(component, userId) ? getProfileParentId(userId) : userId;
    }

    public void reportSuccessfulPasswordAttempt(final int userHandle) {
        enforceFullCrossUsersPermission(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.BIND_DEVICE_ADMIN", null);
        synchronized (getLockObject()) {
            final DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            if (policy.mFailedPasswordAttempts != 0 || policy.mPasswordOwner >= 0) {
                this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$Tf0q34mpCvG-X0h8xOQyHLd1Puc
                    public final void runOrThrow() throws Exception {
                        this.f$0.lambda$reportSuccessfulPasswordAttempt$37$DevicePolicyManagerService(policy, userHandle);
                    }
                });
            }
        }
        if (this.mInjector.securityLogIsLoggingEnabled()) {
            SecurityLog.writeEvent(210007, new Object[]{1, 1});
        }
    }

    public /* synthetic */ void lambda$reportSuccessfulPasswordAttempt$37$DevicePolicyManagerService(DevicePolicyData policy, int userHandle) throws Exception {
        policy.mFailedPasswordAttempts = 0;
        policy.mPasswordOwner = -1;
        saveSettingsLocked(userHandle);
        if (this.mHasFeature) {
            sendAdminCommandForLockscreenPoliciesLocked("android.app.action.ACTION_PASSWORD_SUCCEEDED", 1, userHandle);
        }
    }

    public void reportFailedBiometricAttempt(int userHandle) {
        enforceFullCrossUsersPermission(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.BIND_DEVICE_ADMIN", null);
        if (this.mInjector.securityLogIsLoggingEnabled()) {
            SecurityLog.writeEvent(210007, new Object[]{0, 0});
        }
    }

    public void reportSuccessfulBiometricAttempt(int userHandle) {
        enforceFullCrossUsersPermission(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.BIND_DEVICE_ADMIN", null);
        if (this.mInjector.securityLogIsLoggingEnabled()) {
            SecurityLog.writeEvent(210007, new Object[]{1, 0});
        }
    }

    public void reportKeyguardDismissed(int userHandle) {
        enforceFullCrossUsersPermission(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.BIND_DEVICE_ADMIN", null);
        if (this.mInjector.securityLogIsLoggingEnabled()) {
            SecurityLog.writeEvent(210006, new Object[0]);
        }
    }

    public void reportKeyguardSecured(int userHandle) {
        enforceFullCrossUsersPermission(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.BIND_DEVICE_ADMIN", null);
        if (this.mInjector.securityLogIsLoggingEnabled()) {
            SecurityLog.writeEvent(210008, new Object[0]);
        }
    }

    public ComponentName setGlobalProxy(ComponentName who, String proxySpec, String exclusionList) {
        if (!this.mHasFeature) {
            return null;
        }
        synchronized (getLockObject()) {
            Objects.requireNonNull(who, "ComponentName is null");
            final DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, 5);
            Set<ComponentName> compSet = policy.mAdminMap.keySet();
            for (ComponentName component : compSet) {
                ActiveAdmin ap = policy.mAdminMap.get(component);
                if (ap.specifiesGlobalProxy && !component.equals(who)) {
                    return component;
                }
            }
            if (UserHandle.getCallingUserId() != 0) {
                Slog.w(LOG_TAG, "Only the owner is allowed to set the global proxy. User " + UserHandle.getCallingUserId() + " is not permitted.");
                return null;
            }
            if (proxySpec == null) {
                admin.specifiesGlobalProxy = false;
                admin.globalProxySpec = null;
                admin.globalProxyExclusionList = null;
            } else {
                admin.specifiesGlobalProxy = true;
                admin.globalProxySpec = proxySpec;
                admin.globalProxyExclusionList = exclusionList;
            }
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$GZd44oNE3IpkbK4yqi6AVs8SBAw
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setGlobalProxy$38$DevicePolicyManagerService(policy);
                }
            });
            return null;
        }
    }

    public ComponentName getGlobalProxyAdmin(int userHandle) {
        if (!this.mHasFeature) {
            return null;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
            int N = policy.mAdminList.size();
            for (int i = 0; i < N; i++) {
                ActiveAdmin ap = policy.mAdminList.get(i);
                if (ap.specifiesGlobalProxy) {
                    return ap.info.getComponent();
                }
            }
            return null;
        }
    }

    public void setRecommendedGlobalProxy(ComponentName who, final ProxyInfo proxyInfo) {
        enforceDeviceOwner(who);
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$3BpC92RwmXncw9zPUT7Ffcu3Oeg
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setRecommendedGlobalProxy$39$DevicePolicyManagerService(proxyInfo);
            }
        });
    }

    public /* synthetic */ void lambda$setRecommendedGlobalProxy$39$DevicePolicyManagerService(ProxyInfo proxyInfo) throws Exception {
        this.mInjector.getConnectivityManager().setGlobalProxy(proxyInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: resetGlobalProxyLocked, reason: merged with bridge method [inline-methods] */
    public void lambda$setGlobalProxy$38$DevicePolicyManagerService(DevicePolicyData policy) {
        int N = policy.mAdminList.size();
        for (int i = 0; i < N; i++) {
            ActiveAdmin ap = policy.mAdminList.get(i);
            if (ap.specifiesGlobalProxy) {
                saveGlobalProxyLocked(ap.globalProxySpec, ap.globalProxyExclusionList);
                return;
            }
        }
        saveGlobalProxyLocked(null, null);
    }

    private void saveGlobalProxyLocked(String proxySpec, String exclusionList) {
        if (exclusionList == null) {
            exclusionList = "";
        }
        if (proxySpec == null) {
            proxySpec = "";
        }
        String[] data = proxySpec.trim().split(":");
        int proxyPort = 8080;
        if (data.length > 1) {
            try {
                proxyPort = Integer.parseInt(data[1]);
            } catch (NumberFormatException e) {
            }
        }
        String exclusionList2 = exclusionList.trim();
        ProxyInfo proxyProperties = new ProxyInfo(data[0], proxyPort, exclusionList2);
        if (!proxyProperties.isValid()) {
            Slog.e(LOG_TAG, "Invalid proxy properties, ignoring: " + proxyProperties.toString());
            return;
        }
        this.mInjector.settingsGlobalPutString("global_http_proxy_host", data[0]);
        this.mInjector.settingsGlobalPutInt("global_http_proxy_port", proxyPort);
        this.mInjector.settingsGlobalPutString("global_http_proxy_exclusion_list", exclusionList2);
    }

    public int setStorageEncryption(ComponentName who, boolean encrypt) {
        int i;
        if (!this.mHasFeature) {
            return 0;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            try {
                if (userHandle != 0) {
                    Slog.w(LOG_TAG, "Only owner/system user is allowed to set storage encryption. User " + UserHandle.getCallingUserId() + " is not permitted.");
                    return 0;
                }
                ActiveAdmin ap = getActiveAdminForCallerLocked(who, 7);
                if (!isEncryptionSupported()) {
                    return 0;
                }
                if (ap.encryptionRequested != encrypt) {
                    ap.encryptionRequested = encrypt;
                    saveSettingsLocked(userHandle);
                }
                DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
                boolean newRequested = false;
                int N = policy.mAdminList.size();
                for (int i2 = 0; i2 < N; i2++) {
                    newRequested |= policy.mAdminList.get(i2).encryptionRequested;
                }
                setEncryptionRequested(newRequested);
                if (newRequested) {
                    i = 3;
                } else {
                    i = 1;
                }
                return i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean getStorageEncryption(ComponentName who, int userHandle) {
        if (!this.mHasFeature) {
            return false;
        }
        enforceFullCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            try {
                if (who != null) {
                    ActiveAdmin ap = getActiveAdminUncheckedLocked(who, userHandle);
                    return ap != null ? ap.encryptionRequested : false;
                }
                DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
                int N = policy.mAdminList.size();
                for (int i = 0; i < N; i++) {
                    if (policy.mAdminList.get(i).encryptionRequested) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getStorageEncryptionStatus(String callerPackage, int userHandle) {
        enforceFullCrossUsersPermission(userHandle);
        ensureCallerPackage(callerPackage);
        try {
            ApplicationInfo ai = this.mIPackageManager.getApplicationInfo(callerPackage, 0, userHandle);
            boolean legacyApp = false;
            if (ai.targetSdkVersion <= 23) {
                legacyApp = true;
            }
            int rawStatus = getEncryptionStatus();
            if (rawStatus == 5 && legacyApp) {
                return 3;
            }
            return rawStatus;
        } catch (RemoteException e) {
            throw new SecurityException(e);
        }
    }

    private boolean isEncryptionSupported() {
        return getEncryptionStatus() != 0;
    }

    private int getEncryptionStatus() {
        if (this.mInjector.storageManagerIsFileBasedEncryptionEnabled()) {
            return 5;
        }
        if (this.mInjector.storageManagerIsNonDefaultBlockEncrypted()) {
            return 3;
        }
        if (this.mInjector.storageManagerIsEncrypted()) {
            return 4;
        }
        if (this.mInjector.storageManagerIsEncryptable()) {
            return 1;
        }
        return 0;
    }

    private void setEncryptionRequested(boolean encrypt) {
    }

    public void setScreenCaptureDisabled(ComponentName who, boolean disabled, boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, -1, parent);
            if (parent) {
                enforceProfileOwnerOfOrganizationOwnedDevice(ap);
            }
            if (ap.disableScreenCapture != disabled) {
                ap.disableScreenCapture = disabled;
                saveSettingsLocked(userHandle);
                int affectedUserId = parent ? getProfileParentId(userHandle) : userHandle;
                updateScreenCaptureDisabled(affectedUserId, disabled);
            }
        }
        DevicePolicyEventLogger.createEvent(29).setAdmin(who).setBoolean(disabled).write();
    }

    public boolean getScreenCaptureDisabled(ComponentName who, int userHandle, boolean parent) {
        boolean z = false;
        if (!this.mHasFeature) {
            return false;
        }
        synchronized (getLockObject()) {
            if (parent) {
                try {
                    ActiveAdmin ap = getActiveAdminForCallerLocked(who, -3, parent);
                    enforceProfileOwnerOfOrganizationOwnedDevice(ap);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (who != null) {
                ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle, parent);
                if (admin != null && admin.disableScreenCapture) {
                    z = true;
                }
                return z;
            }
            int affectedUserId = parent ? getProfileParentId(userHandle) : userHandle;
            List<ActiveAdmin> admins = getActiveAdminsForAffectedUserLocked(affectedUserId);
            Iterator<ActiveAdmin> it = admins.iterator();
            while (it.hasNext()) {
                if (it.next().disableScreenCapture) {
                    return true;
                }
            }
            return false;
        }
    }

    private void updateScreenCaptureDisabled(final int userHandle, boolean disabled) {
        this.mPolicyCache.setScreenCaptureAllowed(userHandle, !disabled);
        this.mHandler.post(new Runnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$MpKSZCaip5itOpByyM31AZdtkIk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateScreenCaptureDisabled$40$DevicePolicyManagerService(userHandle);
            }
        });
    }

    public /* synthetic */ void lambda$updateScreenCaptureDisabled$40$DevicePolicyManagerService(int userHandle) {
        try {
            this.mInjector.getIWindowManager().refreshScreenCaptureDisabled(userHandle);
        } catch (RemoteException e) {
            Log.w(LOG_TAG, "Unable to notify WindowManager.", e);
        }
    }

    public void setAutoTimeRequired(ComponentName who, boolean required) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = UserHandle.getCallingUserId();
        boolean requireAutoTimeChanged = false;
        synchronized (getLockObject()) {
            if (isManagedProfile(userHandle)) {
                throw new SecurityException("Managed profile cannot set auto time required");
            }
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            if (admin.requireAutoTime != required) {
                admin.requireAutoTime = required;
                saveSettingsLocked(userHandle);
                requireAutoTimeChanged = true;
            }
        }
        if (requireAutoTimeChanged) {
            pushUserRestrictions(userHandle);
        }
        if (required) {
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$b3NTO2da8giLE0FbLlcsmHCo9uc
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setAutoTimeRequired$41$DevicePolicyManagerService();
                }
            });
        }
        DevicePolicyEventLogger.createEvent(36).setAdmin(who).setBoolean(required).write();
    }

    public /* synthetic */ void lambda$setAutoTimeRequired$41$DevicePolicyManagerService() throws Exception {
        this.mInjector.settingsGlobalPutInt("auto_time", 1);
    }

    public boolean getAutoTimeRequired() {
        if (!this.mHasFeature) {
            return false;
        }
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwner = getDeviceOwnerAdminLocked();
            if (deviceOwner != null && deviceOwner.requireAutoTime) {
                return true;
            }
            for (Integer userId : this.mOwners.getProfileOwnerKeys()) {
                ActiveAdmin profileOwner = getProfileOwnerAdminLocked(userId.intValue());
                if (profileOwner != null && profileOwner.requireAutoTime) {
                    return true;
                }
            }
            return false;
        }
    }

    public void setAutoTimeEnabled(ComponentName who, final boolean enabled) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceProfileOwnerOnUser0OrProfileOwnerOrganizationOwned();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$YzzvHB4UD9JrQUosVFftX4PrsaM
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setAutoTimeEnabled$42$DevicePolicyManagerService(enabled);
            }
        });
        DevicePolicyEventLogger.createEvent(BackLightSettings.DEFAULT_BRIGHTNESS).setAdmin(who).setBoolean(enabled).write();
    }

    public /* synthetic */ void lambda$setAutoTimeEnabled$42$DevicePolicyManagerService(boolean z) throws Exception {
        this.mInjector.settingsGlobalPutInt("auto_time", z ? 1 : 0);
    }

    public boolean getAutoTimeEnabled(ComponentName who) {
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceProfileOwnerOnUser0OrProfileOwnerOrganizationOwned();
        return this.mInjector.settingsGlobalGetInt("auto_time", 0) > 0;
    }

    public void setAutoTimeZoneEnabled(ComponentName who, final boolean enabled) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceProfileOwnerOnUser0OrProfileOwnerOrganizationOwned();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$YebNDt72K_EBAICmMtNJmfL7aIY
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setAutoTimeZoneEnabled$43$DevicePolicyManagerService(enabled);
            }
        });
        DevicePolicyEventLogger.createEvent(128).setAdmin(who).setBoolean(enabled).write();
    }

    public /* synthetic */ void lambda$setAutoTimeZoneEnabled$43$DevicePolicyManagerService(boolean z) throws Exception {
        this.mInjector.settingsGlobalPutInt("auto_time_zone", z ? 1 : 0);
    }

    public boolean getAutoTimeZoneEnabled(ComponentName who) {
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceProfileOwnerOnUser0OrProfileOwnerOrganizationOwned();
        return this.mInjector.settingsGlobalGetInt("auto_time_zone", 0) > 0;
    }

    public void setForceEphemeralUsers(ComponentName who, boolean forceEphemeralUsers) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        if (forceEphemeralUsers && !this.mInjector.userManagerIsSplitSystemUser()) {
            throw new UnsupportedOperationException("Cannot force ephemeral users on systems without split system user.");
        }
        boolean removeAllUsers = false;
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwner = getActiveAdminForCallerLocked(who, -2);
            if (deviceOwner.forceEphemeralUsers != forceEphemeralUsers) {
                deviceOwner.forceEphemeralUsers = forceEphemeralUsers;
                saveSettingsLocked(this.mInjector.userHandleGetCallingUserId());
                this.mUserManagerInternal.setForceEphemeralUsers(forceEphemeralUsers);
                removeAllUsers = forceEphemeralUsers;
            }
        }
        if (removeAllUsers) {
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$1wt3IEUSd5Y7SSKrQL0AgOHtqtc
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setForceEphemeralUsers$44$DevicePolicyManagerService();
                }
            });
        }
    }

    public /* synthetic */ void lambda$setForceEphemeralUsers$44$DevicePolicyManagerService() throws Exception {
        this.mUserManagerInternal.removeAllUsers();
    }

    public boolean getForceEphemeralUsers(ComponentName who) {
        boolean z;
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwner = getActiveAdminForCallerLocked(who, -2);
            z = deviceOwner.forceEphemeralUsers;
        }
        return z;
    }

    private void ensureDeviceOwnerAndAllUsersAffiliated(ComponentName who) throws SecurityException {
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -2);
        }
        ensureAllUsersAffiliated();
    }

    private void ensureAllUsersAffiliated() throws SecurityException {
        synchronized (getLockObject()) {
            if (!areAllUsersAffiliatedWithDeviceLocked()) {
                throw new SecurityException("Not all users are affiliated.");
            }
        }
    }

    public boolean requestBugreport(ComponentName who) {
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        ensureDeviceOwnerAndAllUsersAffiliated(who);
        if (this.mRemoteBugreportServiceIsActive.get() || getDeviceOwnerRemoteBugreportUri() != null) {
            Slog.d(LOG_TAG, "Remote bugreport wasn't started because there's already one running.");
            return false;
        }
        long currentTime = System.currentTimeMillis();
        synchronized (getLockObject()) {
            DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
            if (currentTime > policyData.mLastBugReportRequestTime) {
                policyData.mLastBugReportRequestTime = currentTime;
                saveSettingsLocked(0);
            }
        }
        long callingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            this.mInjector.getIActivityManager().requestRemoteBugReport();
            this.mRemoteBugreportServiceIsActive.set(true);
            this.mRemoteBugreportSharingAccepted.set(false);
            registerRemoteBugreportReceivers();
            this.mInjector.getNotificationManager().notifyAsUser(LOG_TAG, 678432343, RemoteBugreportUtils.buildNotification(this.mContext, 1), UserHandle.ALL);
            this.mHandler.postDelayed(this.mRemoteBugreportTimeoutRunnable, 600000L);
            DevicePolicyEventLogger.createEvent(53).setAdmin(who).write();
            return true;
        } catch (RemoteException re) {
            Slog.e(LOG_TAG, "Failed to make remote calls to start bugreportremote service", re);
            return false;
        } finally {
            this.mInjector.binderRestoreCallingIdentity(callingIdentity);
        }
    }

    void sendDeviceOwnerCommand(String action, Bundle extras) {
        int deviceOwnerUserId;
        synchronized (getLockObject()) {
            deviceOwnerUserId = this.mOwners.getDeviceOwnerUserId();
        }
        ComponentName receiverComponent = null;
        if (action.equals("android.app.action.NETWORK_LOGS_AVAILABLE")) {
            receiverComponent = resolveDelegateReceiver("delegation-network-logging", action, deviceOwnerUserId);
        }
        if (receiverComponent == null) {
            synchronized (getLockObject()) {
                receiverComponent = this.mOwners.getDeviceOwnerComponent();
            }
        }
        sendActiveAdminCommand(action, extras, deviceOwnerUserId, receiverComponent);
    }

    private void sendProfileOwnerCommand(String action, Bundle extras, int userHandle) {
        sendActiveAdminCommand(action, extras, userHandle, this.mOwners.getProfileOwnerComponent(userHandle));
    }

    private void sendActiveAdminCommand(String action, Bundle extras, int userHandle, ComponentName receiverComponent) {
        Intent intent = new Intent(action);
        intent.setComponent(receiverComponent);
        if (extras != null) {
            intent.putExtras(extras);
        }
        this.mContext.sendBroadcastAsUser(intent, UserHandle.of(userHandle));
    }

    private void sendOwnerChangedBroadcast(String broadcast, int userId) {
        Intent intent = new Intent(broadcast).addFlags(16777216);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.of(userId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getDeviceOwnerRemoteBugreportUri() {
        String deviceOwnerRemoteBugreportUri;
        synchronized (getLockObject()) {
            deviceOwnerRemoteBugreportUri = this.mOwners.getDeviceOwnerRemoteBugreportUri();
        }
        return deviceOwnerRemoteBugreportUri;
    }

    private void setDeviceOwnerRemoteBugreportUriAndHash(String bugreportUri, String bugreportHash) {
        synchronized (getLockObject()) {
            this.mOwners.setDeviceOwnerRemoteBugreportUriAndHash(bugreportUri, bugreportHash);
        }
    }

    private void registerRemoteBugreportReceivers() {
        try {
            IntentFilter filterFinished = new IntentFilter("android.intent.action.REMOTE_BUGREPORT_DISPATCH", "application/vnd.android.bugreport");
            this.mContext.registerReceiver(this.mRemoteBugreportFinishedReceiver, filterFinished);
        } catch (IntentFilter.MalformedMimeTypeException e) {
            Slog.w(LOG_TAG, "Failed to set type application/vnd.android.bugreport", e);
        }
        IntentFilter filterConsent = new IntentFilter();
        filterConsent.addAction("com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED");
        filterConsent.addAction("com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED");
        this.mContext.registerReceiver(this.mRemoteBugreportConsentReceiver, filterConsent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBugreportFinished(Intent intent) {
        this.mHandler.removeCallbacks(this.mRemoteBugreportTimeoutRunnable);
        this.mRemoteBugreportServiceIsActive.set(false);
        Uri bugreportUri = intent.getData();
        String bugreportUriString = null;
        if (bugreportUri != null) {
            bugreportUriString = bugreportUri.toString();
        }
        String bugreportHash = intent.getStringExtra("android.intent.extra.REMOTE_BUGREPORT_HASH");
        if (this.mRemoteBugreportSharingAccepted.get()) {
            shareBugreportWithDeviceOwnerIfExists(bugreportUriString, bugreportHash);
            this.mInjector.getNotificationManager().cancel(LOG_TAG, 678432343);
        } else {
            setDeviceOwnerRemoteBugreportUriAndHash(bugreportUriString, bugreportHash);
            this.mInjector.getNotificationManager().notifyAsUser(LOG_TAG, 678432343, RemoteBugreportUtils.buildNotification(this.mContext, 3), UserHandle.ALL);
        }
        this.mContext.unregisterReceiver(this.mRemoteBugreportFinishedReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBugreportFailed() {
        this.mRemoteBugreportServiceIsActive.set(false);
        this.mInjector.systemPropertiesSet("ctl.stop", "bugreportd");
        this.mRemoteBugreportSharingAccepted.set(false);
        setDeviceOwnerRemoteBugreportUriAndHash(null, null);
        this.mInjector.getNotificationManager().cancel(LOG_TAG, 678432343);
        Bundle extras = new Bundle();
        extras.putInt("android.app.extra.BUGREPORT_FAILURE_REASON", 0);
        sendDeviceOwnerCommand("android.app.action.BUGREPORT_FAILED", extras);
        this.mContext.unregisterReceiver(this.mRemoteBugreportConsentReceiver);
        this.mContext.unregisterReceiver(this.mRemoteBugreportFinishedReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBugreportSharingAccepted() {
        String bugreportUriString;
        String bugreportHash;
        this.mRemoteBugreportSharingAccepted.set(true);
        synchronized (getLockObject()) {
            bugreportUriString = getDeviceOwnerRemoteBugreportUri();
            bugreportHash = this.mOwners.getDeviceOwnerRemoteBugreportHash();
        }
        if (bugreportUriString != null) {
            shareBugreportWithDeviceOwnerIfExists(bugreportUriString, bugreportHash);
        } else if (this.mRemoteBugreportServiceIsActive.get()) {
            this.mInjector.getNotificationManager().notifyAsUser(LOG_TAG, 678432343, RemoteBugreportUtils.buildNotification(this.mContext, 2), UserHandle.ALL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBugreportSharingDeclined() {
        if (this.mRemoteBugreportServiceIsActive.get()) {
            this.mInjector.systemPropertiesSet("ctl.stop", "bugreportd");
            this.mRemoteBugreportServiceIsActive.set(false);
            this.mHandler.removeCallbacks(this.mRemoteBugreportTimeoutRunnable);
            this.mContext.unregisterReceiver(this.mRemoteBugreportFinishedReceiver);
        }
        this.mRemoteBugreportSharingAccepted.set(false);
        setDeviceOwnerRemoteBugreportUriAndHash(null, null);
        sendDeviceOwnerCommand("android.app.action.BUGREPORT_SHARING_DECLINED", null);
    }

    private void shareBugreportWithDeviceOwnerIfExists(String bugreportUriString, String bugreportHash) {
        ParcelFileDescriptor pfd = null;
        try {
            if (bugreportUriString == null) {
                throw new FileNotFoundException();
            }
            Uri bugreportUri = Uri.parse(bugreportUriString);
            ParcelFileDescriptor pfd2 = this.mContext.getContentResolver().openFileDescriptor(bugreportUri, ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD);
            synchronized (getLockObject()) {
                Intent intent = new Intent("android.app.action.BUGREPORT_SHARE");
                intent.setComponent(this.mOwners.getDeviceOwnerComponent());
                intent.setDataAndType(bugreportUri, "application/vnd.android.bugreport");
                intent.putExtra("android.app.extra.BUGREPORT_HASH", bugreportHash);
                intent.setFlags(1);
                UriGrantsManagerInternal ugm = (UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class);
                NeededUriGrants needed = ugm.checkGrantUriPermissionFromIntent(intent, 2000, this.mOwners.getDeviceOwnerComponent().getPackageName(), this.mOwners.getDeviceOwnerUserId());
                ugm.grantUriPermissionUncheckedFromIntent(needed, null);
                this.mContext.sendBroadcastAsUser(intent, UserHandle.of(this.mOwners.getDeviceOwnerUserId()));
            }
            if (pfd2 != null) {
                try {
                    pfd2.close();
                } catch (IOException e) {
                }
            }
        } catch (FileNotFoundException e2) {
            Bundle extras = new Bundle();
            extras.putInt("android.app.extra.BUGREPORT_FAILURE_REASON", 1);
            sendDeviceOwnerCommand("android.app.action.BUGREPORT_FAILED", extras);
        } finally {
            if (0 != 0) {
                try {
                    pfd.close();
                } catch (IOException e3) {
                }
            }
            this.mRemoteBugreportSharingAccepted.set(false);
            setDeviceOwnerRemoteBugreportUriAndHash(null, null);
        }
    }

    public void setCameraDisabled(ComponentName componentName, boolean z, boolean z2) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(componentName, "ComponentName is null");
        int iUserHandleGetCallingUserId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin activeAdminForCallerLocked = getActiveAdminForCallerLocked(componentName, 8, z2);
            if (z2) {
                enforceProfileOwnerOfOrganizationOwnedDevice(activeAdminForCallerLocked);
            }
            if (activeAdminForCallerLocked.disableCamera != z) {
                activeAdminForCallerLocked.disableCamera = z;
                saveSettingsLocked(iUserHandleGetCallingUserId);
            }
        }
        pushUserRestrictions(iUserHandleGetCallingUserId);
        int profileParentId = z2 ? getProfileParentId(iUserHandleGetCallingUserId) : iUserHandleGetCallingUserId;
        if (SecurityLog.isLoggingEnabled()) {
            SecurityLog.writeEvent(210034, new Object[]{componentName.getPackageName(), Integer.valueOf(iUserHandleGetCallingUserId), Integer.valueOf(profileParentId), Integer.valueOf(z ? 1 : 0)});
        }
        DevicePolicyEventLogger devicePolicyEventLogger = DevicePolicyEventLogger.createEvent(30).setAdmin(componentName).setBoolean(z);
        String[] strArr = new String[1];
        strArr[0] = z2 ? CALLED_FROM_PARENT : NOT_CALLED_FROM_PARENT;
        devicePolicyEventLogger.setStrings(strArr).write();
    }

    public boolean getCameraDisabled(ComponentName who, int userHandle, boolean parent) {
        return getCameraDisabled(who, userHandle, true, parent);
    }

    private boolean getCameraDisabled(ComponentName who, int userHandle, boolean mergeDeviceOwnerRestriction, boolean parent) {
        ActiveAdmin deviceOwner;
        if (!this.mHasFeature) {
            return false;
        }
        synchronized (getLockObject()) {
            if (parent) {
                try {
                    ActiveAdmin ap = getActiveAdminForCallerLocked(who, 8, parent);
                    enforceProfileOwnerOfOrganizationOwnedDevice(ap);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (who != null) {
                ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle, parent);
                return admin != null ? admin.disableCamera : false;
            }
            if (mergeDeviceOwnerRestriction && (deviceOwner = getDeviceOwnerAdminLocked()) != null && deviceOwner.disableCamera) {
                return true;
            }
            int affectedUserId = parent ? getProfileParentId(userHandle) : userHandle;
            List<ActiveAdmin> admins = getActiveAdminsForAffectedUserLocked(affectedUserId);
            Iterator<ActiveAdmin> it = admins.iterator();
            while (it.hasNext()) {
                if (it.next().disableCamera) {
                    return true;
                }
            }
            return false;
        }
    }

    public void setKeyguardDisabledFeatures(ComponentName who, int which, boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, 9, parent);
            if (isManagedProfile(userHandle)) {
                if (parent) {
                    if (isProfileOwnerOfOrganizationOwnedDevice(ap)) {
                        which &= 438;
                    } else {
                        which &= 432;
                    }
                } else {
                    which &= PROFILE_KEYGUARD_FEATURES;
                }
            }
            if (ap.disabledKeyguardFeatures != which) {
                ap.disabledKeyguardFeatures = which;
                saveSettingsLocked(userHandle);
            }
        }
        if (SecurityLog.isLoggingEnabled()) {
            int affectedUserId = parent ? getProfileParentId(userHandle) : userHandle;
            SecurityLog.writeEvent(210021, new Object[]{who.getPackageName(), Integer.valueOf(userHandle), Integer.valueOf(affectedUserId), Integer.valueOf(which)});
        }
        DevicePolicyEventLogger devicePolicyEventLogger = DevicePolicyEventLogger.createEvent(9).setAdmin(who).setInt(which);
        String[] strArr = new String[1];
        strArr[0] = parent ? CALLED_FROM_PARENT : NOT_CALLED_FROM_PARENT;
        devicePolicyEventLogger.setStrings(strArr).write();
    }

    public int getKeyguardDisabledFeatures(ComponentName who, int userHandle, boolean parent) {
        List<ActiveAdmin> admins;
        if (!this.mHasFeature) {
            return 0;
        }
        enforceFullCrossUsersPermission(userHandle);
        long ident = this.mInjector.binderClearCallingIdentity();
        try {
            synchronized (getLockObject()) {
                try {
                    if (who != null) {
                        ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle, parent);
                        int i = admin != null ? admin.disabledKeyguardFeatures : 0;
                        this.mInjector.binderRestoreCallingIdentity(ident);
                        return i;
                    }
                    if (!parent && isManagedProfile(userHandle)) {
                        admins = getUserDataUnchecked(userHandle).mAdminList;
                    } else {
                        admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, parent);
                    }
                    int which = 0;
                    int N = admins.size();
                    for (int i2 = 0; i2 < N; i2++) {
                        ActiveAdmin admin2 = admins.get(i2);
                        int userId = admin2.getUserHandle().getIdentifier();
                        boolean isRequestedUser = !parent && userId == userHandle;
                        if (isRequestedUser || !isManagedProfile(userId)) {
                            which |= admin2.disabledKeyguardFeatures;
                        } else {
                            which |= admin2.disabledKeyguardFeatures & 438;
                        }
                    }
                    this.mInjector.binderRestoreCallingIdentity(ident);
                    return which;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            this.mInjector.binderRestoreCallingIdentity(ident);
            throw th2;
        }
    }

    public void setKeepUninstalledPackages(ComponentName who, String callerPackage, List<String> packageList) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(packageList, "packageList is null");
        int userHandle = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            enforceCanManageScope(who, callerPackage, -2, "delegation-keep-uninstalled-packages");
            ActiveAdmin deviceOwner = getDeviceOwnerAdminLocked();
            deviceOwner.keepUninstalledPackages = packageList;
            saveSettingsLocked(userHandle);
            this.mInjector.getPackageManagerInternal().setKeepUninstalledPackages(packageList);
        }
        boolean isDelegate = who == null;
        DevicePolicyEventLogger.createEvent(61).setAdmin(callerPackage).setBoolean(isDelegate).setStrings((String[]) packageList.toArray(new String[0])).write();
    }

    public List<String> getKeepUninstalledPackages(ComponentName who, String callerPackage) {
        List<String> keepUninstalledPackagesLocked;
        if (!this.mHasFeature) {
            return null;
        }
        synchronized (getLockObject()) {
            enforceCanManageScope(who, callerPackage, -2, "delegation-keep-uninstalled-packages");
            keepUninstalledPackagesLocked = getKeepUninstalledPackagesLocked();
        }
        return keepUninstalledPackagesLocked;
    }

    private List<String> getKeepUninstalledPackagesLocked() {
        ActiveAdmin deviceOwner = getDeviceOwnerAdminLocked();
        if (deviceOwner != null) {
            return deviceOwner.keepUninstalledPackages;
        }
        return null;
    }

    public boolean setDeviceOwner(ComponentName admin, String ownerName, final int userId) {
        if (!this.mHasFeature) {
            return false;
        }
        if (admin == null || !isPackageInstalledForUser(admin.getPackageName(), userId)) {
            throw new IllegalArgumentException("Invalid component " + admin + " for device owner");
        }
        boolean hasIncompatibleAccountsOrNonAdb = hasIncompatibleAccountsOrNonAdbNoLock(userId, admin);
        synchronized (getLockObject()) {
            enforceCanSetDeviceOwnerLocked(admin, userId, hasIncompatibleAccountsOrNonAdb);
            ActiveAdmin activeAdmin = getActiveAdminUncheckedLocked(admin, userId);
            if (activeAdmin == null || lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mRemovingAdmins.contains(admin)) {
                throw new IllegalArgumentException("Not active admin: " + admin);
            }
            toggleBackupServiceActive(0, false);
            if (isAdb()) {
                MetricsLogger.action(this.mContext, 617, LOG_TAG_DEVICE_OWNER);
                DevicePolicyEventLogger.createEvent(82).setAdmin(admin).setStrings(new String[]{LOG_TAG_DEVICE_OWNER}).write();
            }
            this.mOwners.setDeviceOwner(admin, ownerName, userId);
            this.mOwners.writeDeviceOwner();
            updateDeviceOwnerLocked();
            setDeviceOwnershipSystemPropertyLocked();
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$sUVpi_BVE2_hZ5timBv59wD_svs
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setDeviceOwner$45$DevicePolicyManagerService(userId);
                }
            });
            this.mDeviceAdminServiceController.startServiceForOwner(admin.getPackageName(), userId, "set-device-owner");
            Slog.i(LOG_TAG, "Device owner set: " + admin + " on user " + userId);
        }
        return true;
    }

    public /* synthetic */ void lambda$setDeviceOwner$45$DevicePolicyManagerService(int userId) throws Exception {
        this.mUserManager.setUserRestriction("no_add_managed_profile", true, UserHandle.of(userId));
        sendOwnerChangedBroadcast("android.app.action.DEVICE_OWNER_CHANGED", userId);
    }

    public boolean hasDeviceOwner() {
        enforceDeviceOwnerOrManageUsers();
        return this.mOwners.hasDeviceOwner();
    }

    boolean isDeviceOwner(ActiveAdmin admin) {
        return isDeviceOwner(admin.info.getComponent(), admin.getUserHandle().getIdentifier());
    }

    public boolean isDeviceOwner(ComponentName who, int userId) {
        boolean z;
        synchronized (getLockObject()) {
            z = this.mOwners.hasDeviceOwner() && this.mOwners.getDeviceOwnerUserId() == userId && this.mOwners.getDeviceOwnerComponent().equals(who);
        }
        return z;
    }

    private boolean isDeviceOwnerPackage(String packageName, int userId) {
        boolean z;
        synchronized (getLockObject()) {
            z = this.mOwners.hasDeviceOwner() && this.mOwners.getDeviceOwnerUserId() == userId && this.mOwners.getDeviceOwnerPackageName().equals(packageName);
        }
        return z;
    }

    private boolean isProfileOwnerPackage(String packageName, int userId) {
        boolean z;
        synchronized (getLockObject()) {
            z = this.mOwners.hasProfileOwner(userId) && this.mOwners.getProfileOwnerPackage(userId).equals(packageName);
        }
        return z;
    }

    public boolean isProfileOwner(ComponentName who, int userId) {
        ComponentName profileOwner = getProfileOwner(userId);
        return who != null && who.equals(profileOwner);
    }

    private boolean hasProfileOwner(int userId) {
        boolean zHasProfileOwner;
        synchronized (getLockObject()) {
            zHasProfileOwner = this.mOwners.hasProfileOwner(userId);
        }
        return zHasProfileOwner;
    }

    private boolean isProfileOwnerOfOrganizationOwnedDevice(int userId) {
        boolean zIsProfileOwnerOfOrganizationOwnedDevice;
        synchronized (getLockObject()) {
            zIsProfileOwnerOfOrganizationOwnedDevice = this.mOwners.isProfileOwnerOfOrganizationOwnedDevice(userId);
        }
        return zIsProfileOwnerOfOrganizationOwnedDevice;
    }

    private boolean isProfileOwnerOfOrganizationOwnedDevice(ActiveAdmin admin) {
        if (admin == null) {
            return false;
        }
        return isProfileOwnerOfOrganizationOwnedDevice(admin.info.getComponent(), admin.getUserHandle().getIdentifier());
    }

    private boolean isProfileOwnerOfOrganizationOwnedDevice(ComponentName who, int userId) {
        return isProfileOwner(who, userId) && isProfileOwnerOfOrganizationOwnedDevice(userId);
    }

    public ComponentName getDeviceOwnerComponent(boolean callingUserOnly) {
        if (!this.mHasFeature) {
            return null;
        }
        if (!callingUserOnly) {
            enforceManageUsers();
        }
        synchronized (getLockObject()) {
            if (!this.mOwners.hasDeviceOwner()) {
                return null;
            }
            if (callingUserOnly && this.mInjector.userHandleGetCallingUserId() != this.mOwners.getDeviceOwnerUserId()) {
                return null;
            }
            return this.mOwners.getDeviceOwnerComponent();
        }
    }

    public int getDeviceOwnerUserId() {
        int deviceOwnerUserId;
        if (!this.mHasFeature) {
            return -10000;
        }
        enforceManageUsers();
        synchronized (getLockObject()) {
            deviceOwnerUserId = this.mOwners.hasDeviceOwner() ? this.mOwners.getDeviceOwnerUserId() : -10000;
        }
        return deviceOwnerUserId;
    }

    public String getDeviceOwnerName() {
        if (!this.mHasFeature) {
            return null;
        }
        enforceManageUsers();
        synchronized (getLockObject()) {
            if (!this.mOwners.hasDeviceOwner()) {
                return null;
            }
            String deviceOwnerPackage = this.mOwners.getDeviceOwnerPackageName();
            return getApplicationLabel(deviceOwnerPackage, 0);
        }
    }

    ActiveAdmin getDeviceOwnerAdminLocked() {
        ensureLocked();
        ComponentName component = this.mOwners.getDeviceOwnerComponent();
        if (component == null) {
            return null;
        }
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(this.mOwners.getDeviceOwnerUserId());
        int n = policy.mAdminList.size();
        for (int i = 0; i < n; i++) {
            ActiveAdmin admin = policy.mAdminList.get(i);
            if (component.equals(admin.info.getComponent())) {
                return admin;
            }
        }
        Slog.wtf(LOG_TAG, "Active admin for device owner not found. component=" + component);
        return null;
    }

    ActiveAdmin getDeviceOwnerOrProfileOwnerOfOrganizationOwnedDeviceLocked(int userId) {
        ActiveAdmin admin = getDeviceOwnerAdminLocked();
        if (admin == null) {
            return getProfileOwnerOfOrganizationOwnedDeviceLocked(userId);
        }
        return admin;
    }

    public void clearDeviceOwner(String packageName) {
        Objects.requireNonNull(packageName, "packageName is null");
        int callingUid = this.mInjector.binderGetCallingUid();
        if (!isCallingFromPackage(packageName, callingUid)) {
            throw new SecurityException("Invalid packageName");
        }
        synchronized (getLockObject()) {
            final ComponentName deviceOwnerComponent = this.mOwners.getDeviceOwnerComponent();
            final int deviceOwnerUserId = this.mOwners.getDeviceOwnerUserId();
            if (!this.mOwners.hasDeviceOwner() || !deviceOwnerComponent.getPackageName().equals(packageName) || deviceOwnerUserId != UserHandle.getUserId(callingUid)) {
                throw new SecurityException("clearDeviceOwner can only be called by the device owner");
            }
            enforceUserUnlocked(deviceOwnerUserId);
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(deviceOwnerUserId);
            if (policy.mPasswordTokenHandle != 0) {
                this.mLockPatternUtils.removeEscrowToken(policy.mPasswordTokenHandle, deviceOwnerUserId);
            }
            final ActiveAdmin admin = getDeviceOwnerAdminLocked();
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$AJ1y854sYTZ_MPW0IOAcTsPyhjc
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$clearDeviceOwner$46$DevicePolicyManagerService(admin, deviceOwnerUserId, deviceOwnerComponent);
                }
            });
            Slog.i(LOG_TAG, "Device owner removed: " + deviceOwnerComponent);
        }
    }

    public /* synthetic */ void lambda$clearDeviceOwner$46$DevicePolicyManagerService(ActiveAdmin admin, int deviceOwnerUserId, ComponentName deviceOwnerComponent) throws Exception {
        clearDeviceOwnerLocked(admin, deviceOwnerUserId);
        lambda$removeActiveAdmin$7$DevicePolicyManagerService(deviceOwnerComponent, deviceOwnerUserId);
        sendOwnerChangedBroadcast("android.app.action.DEVICE_OWNER_CHANGED", deviceOwnerUserId);
    }

    private void clearOverrideApnUnchecked() {
        if (!this.mHasTelephonyFeature) {
            return;
        }
        setOverrideApnsEnabledUnchecked(false);
        List<ApnSetting> apns = getOverrideApnsUnchecked();
        for (int i = 0; i < apns.size(); i++) {
            removeOverrideApnUnchecked(apns.get(i).getId());
        }
    }

    private void clearDeviceOwnerLocked(ActiveAdmin admin, int userId) {
        this.mDeviceAdminServiceController.stopServiceForOwner(userId, "clear-device-owner");
        if (admin != null) {
            admin.disableCamera = false;
            admin.userRestrictions = null;
            admin.defaultEnabledRestrictionsAlreadySet.clear();
            admin.forceEphemeralUsers = false;
            admin.isNetworkLoggingEnabled = false;
            this.mUserManagerInternal.setForceEphemeralUsers(admin.forceEphemeralUsers);
        }
        DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
        policyData.mCurrentInputMethodSet = false;
        saveSettingsLocked(userId);
        DevicePolicyData systemPolicyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
        systemPolicyData.mLastSecurityLogRetrievalTime = -1L;
        systemPolicyData.mLastBugReportRequestTime = -1L;
        systemPolicyData.mLastNetworkLogsRetrievalTime = -1L;
        saveSettingsLocked(0);
        clearUserPoliciesLocked(userId);
        clearOverrideApnUnchecked();
        clearApplicationRestrictions(userId);
        this.mInjector.getPackageManagerInternal().clearBlockUninstallForUser(userId);
        this.mOwners.clearDeviceOwner();
        this.mOwners.writeDeviceOwner();
        updateDeviceOwnerLocked();
        clearDeviceOwnerUserRestrictionLocked(UserHandle.of(userId));
        this.mInjector.securityLogSetLoggingEnabledProperty(false);
        this.mSecurityLogMonitor.stop();
        setNetworkLoggingActiveInternal(false);
        deleteTransferOwnershipBundleLocked(userId);
        toggleBackupServiceActive(0, true);
    }

    private void clearApplicationRestrictions(final int userId) {
        this.mBackgroundHandler.post(new Runnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$yG0U24nBabuXep-vu0wvlNyljlY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearApplicationRestrictions$47$DevicePolicyManagerService(userId);
            }
        });
    }

    public /* synthetic */ void lambda$clearApplicationRestrictions$47$DevicePolicyManagerService(int userId) {
        List<PackageInfo> installedPackageInfos = this.mInjector.getPackageManager(userId).getInstalledPackages(786432);
        UserHandle userHandle = UserHandle.of(userId);
        for (PackageInfo packageInfo : installedPackageInfos) {
            this.mInjector.getUserManager().setApplicationRestrictions(packageInfo.packageName, null, userHandle);
        }
    }

    public boolean setProfileOwner(ComponentName who, String ownerName, final int userHandle) {
        if (!this.mHasFeature) {
            return false;
        }
        if (who == null || !isPackageInstalledForUser(who.getPackageName(), userHandle)) {
            throw new IllegalArgumentException("Component " + who + " not installed for userId:" + userHandle);
        }
        boolean hasIncompatibleAccountsOrNonAdb = hasIncompatibleAccountsOrNonAdbNoLock(userHandle, who);
        synchronized (getLockObject()) {
            enforceCanSetProfileOwnerLocked(who, userHandle, hasIncompatibleAccountsOrNonAdb);
            final ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle);
            if (admin == null || lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle).mRemovingAdmins.contains(who)) {
                throw new IllegalArgumentException("Not active admin: " + who);
            }
            int parentUserId = getProfileParentId(userHandle);
            if (parentUserId != userHandle && this.mUserManager.hasUserRestriction("no_add_managed_profile", UserHandle.of(parentUserId))) {
                Slog.i(LOG_TAG, "Cannot set profile owner because of restriction.");
                return false;
            }
            if (isAdb()) {
                MetricsLogger.action(this.mContext, 617, LOG_TAG_PROFILE_OWNER);
                DevicePolicyEventLogger.createEvent(82).setAdmin(who).setStrings(new String[]{LOG_TAG_PROFILE_OWNER}).write();
            }
            toggleBackupServiceActive(userHandle, false);
            this.mOwners.setProfileOwner(who, ownerName, userHandle);
            this.mOwners.writeProfileOwner(userHandle);
            Slog.i(LOG_TAG, "Profile owner set: " + who + " on user " + userHandle);
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$6JgDkElDkUD02PU6ArKIybRSx74
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setProfileOwner$48$DevicePolicyManagerService(userHandle, admin);
                }
            });
            this.mDeviceAdminServiceController.startServiceForOwner(who.getPackageName(), userHandle, "set-profile-owner");
            return true;
        }
    }

    public /* synthetic */ void lambda$setProfileOwner$48$DevicePolicyManagerService(int userHandle, ActiveAdmin admin) throws Exception {
        if (this.mUserManager.isManagedProfile(userHandle)) {
            maybeSetDefaultRestrictionsForAdminLocked(userHandle, admin, UserRestrictionsUtils.getDefaultEnabledForManagedProfiles());
            ensureUnknownSourcesRestrictionForProfileOwnerLocked(userHandle, admin, true);
        }
        sendOwnerChangedBroadcast("android.app.action.PROFILE_OWNER_CHANGED", userHandle);
    }

    private void toggleBackupServiceActive(int userId, boolean makeActive) {
        long ident = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                if (this.mInjector.getIBackupManager() != null) {
                    this.mInjector.getIBackupManager().setBackupServiceActive(userId, makeActive);
                }
                this.mInjector.binderRestoreCallingIdentity(ident);
            } catch (RemoteException e) {
                Object[] objArr = new Object[1];
                objArr[0] = makeActive ? "activating" : "deactivating";
                throw new IllegalStateException(String.format("Failed %s backup service.", objArr), e);
            }
        } catch (Throwable th) {
            this.mInjector.binderRestoreCallingIdentity(ident);
            throw th;
        }
    }

    public void clearProfileOwner(final ComponentName who) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        final int userId = this.mInjector.userHandleGetCallingUserId();
        enforceNotManagedProfile(userId, "clear profile owner");
        enforceUserUnlocked(userId);
        synchronized (getLockObject()) {
            final ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$gHXBW5obI5bGEUL_qnloZ8Ik-Fo
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$clearProfileOwner$49$DevicePolicyManagerService(admin, userId, who);
                }
            });
            Slog.i(LOG_TAG, "Profile owner " + who + " removed from user " + userId);
        }
    }

    public /* synthetic */ void lambda$clearProfileOwner$49$DevicePolicyManagerService(ActiveAdmin admin, int userId, ComponentName who) throws Exception {
        clearProfileOwnerLocked(admin, userId);
        lambda$removeActiveAdmin$7$DevicePolicyManagerService(who, userId);
        sendOwnerChangedBroadcast("android.app.action.PROFILE_OWNER_CHANGED", userId);
    }

    public void clearProfileOwnerLocked(ActiveAdmin admin, int userId) {
        this.mDeviceAdminServiceController.stopServiceForOwner(userId, "clear-profile-owner");
        if (admin != null) {
            admin.disableCamera = false;
            admin.userRestrictions = null;
            admin.defaultEnabledRestrictionsAlreadySet.clear();
        }
        DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
        policyData.mCurrentInputMethodSet = false;
        policyData.mOwnerInstalledCaCerts.clear();
        saveSettingsLocked(userId);
        clearUserPoliciesLocked(userId);
        clearApplicationRestrictions(userId);
        this.mOwners.removeProfileOwner(userId);
        this.mOwners.writeProfileOwner(userId);
        deleteTransferOwnershipBundleLocked(userId);
        toggleBackupServiceActive(userId, true);
        applyManagedProfileRestrictionIfDeviceOwnerLocked();
    }

    public void setDeviceOwnerLockScreenInfo(ComponentName who, final CharSequence info) {
        Objects.requireNonNull(who, "ComponentName is null");
        if (!this.mHasFeature) {
            return;
        }
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            if (!isProfileOwnerOfOrganizationOwnedDevice(admin) && !isDeviceOwner(admin)) {
                throw new SecurityException("Only Device Owner or Profile Owner of organization-owned device can set screen lock info.");
            }
        }
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$GBVASs-O0lex5Dd9rS-k6hCRyHE
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setDeviceOwnerLockScreenInfo$50$DevicePolicyManagerService(info);
            }
        });
        DevicePolicyEventLogger.createEvent(42).setAdmin(who).write();
    }

    public /* synthetic */ void lambda$setDeviceOwnerLockScreenInfo$50$DevicePolicyManagerService(CharSequence info) throws Exception {
        this.mLockPatternUtils.setDeviceOwnerInfo(info != null ? info.toString() : null);
    }

    public CharSequence getDeviceOwnerLockScreenInfo() {
        return this.mLockPatternUtils.getDeviceOwnerInfo();
    }

    private void clearUserPoliciesLocked(int userId) {
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
        policy.mPermissionPolicy = 0;
        policy.mDelegationMap.clear();
        policy.mStatusBarDisabled = false;
        policy.mSecondaryLockscreenEnabled = false;
        policy.mUserProvisioningState = 0;
        policy.mAffiliationIds.clear();
        policy.mLockTaskPackages.clear();
        updateLockTaskPackagesLocked(policy.mLockTaskPackages, userId);
        policy.mLockTaskFeatures = 0;
        policy.mUserControlDisabledPackages.clear();
        updateUserControlDisabledPackagesLocked(policy.mUserControlDisabledPackages);
        saveSettingsLocked(userId);
        try {
            this.mIPermissionManager.updatePermissionFlagsForAllApps(4, 0, userId);
            pushUserRestrictions(userId);
        } catch (RemoteException e) {
        }
    }

    public boolean hasUserSetupCompleted() {
        return hasUserSetupCompleted(UserHandle.getCallingUserId());
    }

    private boolean hasUserSetupCompleted(int userHandle) {
        if (!this.mHasFeature) {
            return true;
        }
        boolean hasUserSetupCompleted = this.mInjector.hasUserSetupCompleted(lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle));
        if (hasUserSetupCompleted) {
            return this.mOwners.hasDeviceOwner();
        }
        return false;
    }

    private boolean hasPaired(int userHandle) {
        if (!this.mHasFeature) {
            return true;
        }
        return lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle).mPaired;
    }

    public int getUserProvisioningState() {
        if (!this.mHasFeature) {
            return 0;
        }
        enforceManageUsers();
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        return getUserProvisioningState(userHandle);
    }

    private int getUserProvisioningState(int userHandle) {
        return lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle).mUserProvisioningState;
    }

    public void setUserProvisioningState(int newState, int userHandle) {
        if (!this.mHasFeature) {
            return;
        }
        if (userHandle != this.mOwners.getDeviceOwnerUserId() && !this.mOwners.hasProfileOwner(userHandle) && getManagedUserId(userHandle) == -1) {
            throw new IllegalStateException("Not allowed to change provisioning state unless a device or profile owner is set.");
        }
        synchronized (getLockObject()) {
            boolean transitionCheckNeeded = true;
            if (isAdb()) {
                if (getUserProvisioningState(userHandle) != 0 || newState != 3) {
                    throw new IllegalStateException("Not allowed to change provisioning state unless current provisioning state is unmanaged, and new state is finalized.");
                }
                transitionCheckNeeded = false;
            } else {
                enforceCanManageProfileAndDeviceOwners();
            }
            DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            if (transitionCheckNeeded) {
                checkUserProvisioningStateTransition(policyData.mUserProvisioningState, newState);
            }
            policyData.mUserProvisioningState = newState;
            saveSettingsLocked(userHandle);
        }
    }

    private void checkUserProvisioningStateTransition(int currentState, int newState) {
        if (currentState != 0) {
            if (currentState == 1 || currentState == 2) {
                if (newState == 3) {
                    return;
                }
            } else if (currentState == 4 && newState == 0) {
                return;
            }
        } else if (newState != 0) {
            return;
        }
        throw new IllegalStateException("Cannot move to user provisioning state [" + newState + "] from state [" + currentState + "]");
    }

    public void setProfileEnabled(ComponentName who) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            final int userId = UserHandle.getCallingUserId();
            enforceManagedProfile(userId, "enable the profile");
            UserInfo managedProfile = getUserInfo(userId);
            if (managedProfile.isEnabled()) {
                Slog.e(LOG_TAG, "setProfileEnabled is called when the profile is already enabled");
            } else {
                this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$yyRZl2GpUexUXfLFFPH1uLwUVIk
                    public final void runOrThrow() throws Exception {
                        this.f$0.lambda$setProfileEnabled$51$DevicePolicyManagerService(userId);
                    }
                });
            }
        }
    }

    public /* synthetic */ void lambda$setProfileEnabled$51$DevicePolicyManagerService(int userId) throws Exception {
        this.mUserManager.setUserEnabled(userId);
        UserInfo parent = this.mUserManager.getProfileParent(userId);
        Intent intent = new Intent("android.intent.action.MANAGED_PROFILE_ADDED");
        intent.putExtra("android.intent.extra.USER", new UserHandle(userId));
        UserHandle parentHandle = new UserHandle(parent.id);
        this.mLocalService.broadcastIntentToCrossProfileManifestReceiversAsUser(intent, parentHandle, true);
        intent.addFlags(1342177280);
        this.mContext.sendBroadcastAsUser(intent, parentHandle);
    }

    public void setProfileName(final ComponentName who, final String profileName) {
        Objects.requireNonNull(who, "ComponentName is null");
        enforceProfileOrDeviceOwner(who);
        final int userId = UserHandle.getCallingUserId();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$7xrTEdFpImbnnwbWRuOeQoAGpSw
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setProfileName$52$DevicePolicyManagerService(userId, profileName, who);
            }
        });
    }

    public /* synthetic */ void lambda$setProfileName$52$DevicePolicyManagerService(int userId, String profileName, ComponentName who) throws Exception {
        this.mUserManager.setUserName(userId, profileName);
        DevicePolicyEventLogger.createEvent(40).setAdmin(who).write();
    }

    public ComponentName getProfileOwnerAsUser(int userHandle) {
        enforceCrossUsersPermission(userHandle);
        return getProfileOwner(userHandle);
    }

    public ComponentName getProfileOwner(int userHandle) {
        ComponentName profileOwnerComponent;
        if (!this.mHasFeature) {
            return null;
        }
        synchronized (getLockObject()) {
            profileOwnerComponent = this.mOwners.getProfileOwnerComponent(userHandle);
        }
        return profileOwnerComponent;
    }

    ActiveAdmin getProfileOwnerAdminLocked(int userHandle) {
        ComponentName profileOwner = this.mOwners.getProfileOwnerComponent(userHandle);
        if (profileOwner == null) {
            return null;
        }
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        int n = policy.mAdminList.size();
        for (int i = 0; i < n; i++) {
            ActiveAdmin admin = policy.mAdminList.get(i);
            if (profileOwner.equals(admin.info.getComponent())) {
                return admin;
            }
        }
        return null;
    }

    private ActiveAdmin getDeviceOrProfileOwnerAdminLocked(int userHandle) {
        ActiveAdmin admin = getProfileOwnerAdminLocked(userHandle);
        if (admin == null && getDeviceOwnerUserId() == userHandle) {
            return getDeviceOwnerAdminLocked();
        }
        return admin;
    }

    ActiveAdmin getProfileOwnerOfOrganizationOwnedDeviceLocked(final int userHandle) {
        return (ActiveAdmin) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$618RSoGYj0mcR9mfpEflcd0OItQ
            public final Object getOrThrow() {
                return this.f$0.lambda$getProfileOwnerOfOrganizationOwnedDeviceLocked$53$DevicePolicyManagerService(userHandle);
            }
        });
    }

    public /* synthetic */ ActiveAdmin lambda$getProfileOwnerOfOrganizationOwnedDeviceLocked$53$DevicePolicyManagerService(int userHandle) throws Exception {
        for (UserInfo userInfo : this.mUserManager.getProfiles(userHandle)) {
            if (userInfo.isManagedProfile() && getProfileOwner(userInfo.id) != null && isProfileOwnerOfOrganizationOwnedDevice(userInfo.id)) {
                ComponentName who = getProfileOwner(userInfo.id);
                return getActiveAdminUncheckedLocked(who, userInfo.id);
            }
        }
        return null;
    }

    public ComponentName getProfileOwnerOrDeviceOwnerSupervisionComponent(UserHandle userHandle) {
        if (!this.mHasFeature) {
            return null;
        }
        synchronized (getLockObject()) {
            String supervisor = this.mContext.getResources().getString(R.string.config_dozeComponent);
            if (supervisor == null) {
                return null;
            }
            ComponentName supervisorComponent = ComponentName.unflattenFromString(supervisor);
            ComponentName doComponent = this.mOwners.getDeviceOwnerComponent();
            ComponentName poComponent = this.mOwners.getProfileOwnerComponent(userHandle.getIdentifier());
            if (supervisorComponent == null) {
                return null;
            }
            if (!supervisorComponent.equals(doComponent) && !supervisorComponent.equals(poComponent)) {
                return null;
            }
            return supervisorComponent;
        }
    }

    public String getProfileOwnerName(int userHandle) {
        if (!this.mHasFeature) {
            return null;
        }
        enforceManageUsers();
        ComponentName profileOwner = getProfileOwner(userHandle);
        if (profileOwner == null) {
            return null;
        }
        return getApplicationLabel(profileOwner.getPackageName(), userHandle);
    }

    private int getOrganizationOwnedProfileUserId() {
        for (UserInfo ui : this.mUserManagerInternal.getUserInfos()) {
            if (ui.isManagedProfile() && isProfileOwnerOfOrganizationOwnedDevice(ui.id)) {
                return ui.id;
            }
        }
        return -10000;
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    public boolean isOrganizationOwnedDeviceWithManagedProfile() {
        return this.mHasFeature && getOrganizationOwnedProfileUserId() != -10000;
    }

    public boolean checkDeviceIdentifierAccess(String packageName, int pid, int uid) {
        ensureCallerIdentityMatchesIfNotSystem(packageName, pid, uid);
        if (!doesPackageMatchUid(packageName, uid) || this.mContext.checkPermission("android.permission.READ_PHONE_STATE", pid, uid) != 0) {
            return false;
        }
        ComponentName deviceOwner = getDeviceOwnerComponent(true);
        if (deviceOwner != null && (deviceOwner.getPackageName().equals(packageName) || isCallerDelegate(packageName, uid, "delegation-cert-install"))) {
            return true;
        }
        int userId = UserHandle.getUserId(uid);
        ComponentName profileOwner = getProfileOwnerAsUser(userId);
        boolean isCallerProfileOwnerOrDelegate = profileOwner != null && (profileOwner.getPackageName().equals(packageName) || isCallerDelegate(packageName, uid, "delegation-cert-install"));
        return (isCallerProfileOwnerOrDelegate && isProfileOwnerOfOrganizationOwnedDevice(userId)) || isCallerProfileOwnerOrDelegate;
    }

    private boolean doesPackageMatchUid(String packageName, int uid) {
        int userId = UserHandle.getUserId(uid);
        try {
            ApplicationInfo appInfo = this.mIPackageManager.getApplicationInfo(packageName, 0, userId);
            if (appInfo == null) {
                Log.w(LOG_TAG, String.format("appInfo could not be found for package %s", packageName));
                return false;
            }
            if (uid == appInfo.uid) {
                return true;
            }
            String message = String.format("Package %s (uid=%d) does not match provided uid %d", packageName, Integer.valueOf(appInfo.uid), Integer.valueOf(uid));
            Log.w(LOG_TAG, message);
            throw new SecurityException(message);
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Exception caught obtaining appInfo for package " + packageName, e);
            return false;
        }
    }

    private void ensureCallerIdentityMatchesIfNotSystem(String packageName, int pid, int uid) {
        int callingUid = this.mInjector.binderGetCallingUid();
        int callingPid = this.mInjector.binderGetCallingPid();
        if (UserHandle.getAppId(callingUid) >= 10000) {
            if (callingUid != uid || callingPid != pid) {
                String message = String.format("Calling uid %d, pid %d cannot check device identifier access for package %s (uid=%d, pid=%d)", Integer.valueOf(callingUid), Integer.valueOf(callingPid), packageName, Integer.valueOf(uid), Integer.valueOf(pid));
                Log.w(LOG_TAG, message);
                throw new SecurityException(message);
            }
        }
    }

    private String getApplicationLabel(final String packageName, final int userHandle) {
        return (String) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$8OqjeHp9AIbdyNZwOogfEG_Hjn8
            public final Object getOrThrow() {
                return this.f$0.lambda$getApplicationLabel$54$DevicePolicyManagerService(userHandle, packageName);
            }
        });
    }

    public /* synthetic */ String lambda$getApplicationLabel$54$DevicePolicyManagerService(int userHandle, String packageName) throws Exception {
        try {
            UserHandle handle = new UserHandle(userHandle);
            Context userContext = this.mContext.createPackageContextAsUser(packageName, 0, handle);
            ApplicationInfo appInfo = userContext.getApplicationInfo();
            CharSequence result = null;
            if (appInfo != null) {
                result = appInfo.loadUnsafeLabel(userContext.getPackageManager());
            }
            if (result != null) {
                return result.toString();
            }
            return null;
        } catch (PackageManager.NameNotFoundException nnfe) {
            Log.w(LOG_TAG, packageName + " is not installed for user " + userHandle, nnfe);
            return null;
        }
    }

    private void wtfIfInLock() {
        if (Thread.holdsLock(this)) {
            Slog.wtfStack(LOG_TAG, "Shouldn't be called with DPMS lock held");
        }
    }

    private void enforceCanSetProfileOwnerLocked(ComponentName owner, int userHandle, boolean hasIncompatibleAccountsOrNonAdb) {
        UserInfo info = getUserInfo(userHandle);
        if (info == null) {
            throw new IllegalArgumentException("Attempted to set profile owner for invalid userId: " + userHandle);
        }
        if (info.isGuest()) {
            throw new IllegalStateException("Cannot set a profile owner on a guest");
        }
        if (this.mOwners.hasProfileOwner(userHandle)) {
            throw new IllegalStateException("Trying to set the profile owner, but profile owner is already set.");
        }
        if (this.mOwners.hasDeviceOwner() && this.mOwners.getDeviceOwnerUserId() == userHandle) {
            throw new IllegalStateException("Trying to set the profile owner, but the user already has a device owner.");
        }
        if (isAdb()) {
            if ((this.mIsWatch || hasUserSetupCompleted(userHandle)) && hasIncompatibleAccountsOrNonAdb) {
                throw new IllegalStateException("Not allowed to set the profile owner because there are already some accounts on the profile");
            }
            return;
        }
        enforceCanManageProfileAndDeviceOwners();
        if (this.mIsWatch || hasUserSetupCompleted(userHandle)) {
            if (!isCallerWithSystemUid()) {
                throw new IllegalStateException("Cannot set the profile owner on a user which is already set-up");
            }
            if (!this.mIsWatch) {
                String supervisor = this.mContext.getResources().getString(R.string.config_dozeComponent);
                if (supervisor == null) {
                    throw new IllegalStateException("Unable to set profile owner post-setup, nodefault supervisor profile owner defined");
                }
                ComponentName supervisorComponent = ComponentName.unflattenFromString(supervisor);
                if (!owner.equals(supervisorComponent)) {
                    throw new IllegalStateException("Unable to set non-default profile owner post-setup " + owner);
                }
            }
        }
    }

    private void enforceCanSetDeviceOwnerLocked(ComponentName owner, int userId, boolean hasIncompatibleAccountsOrNonAdb) {
        if (!isAdb()) {
            enforceCanManageProfileAndDeviceOwners();
        }
        int code = checkDeviceOwnerProvisioningPreConditionLocked(owner, userId, isAdb(), hasIncompatibleAccountsOrNonAdb);
        switch (code) {
            case 0:
                return;
            case 1:
                throw new IllegalStateException("Trying to set the device owner, but device owner is already set.");
            case 2:
                throw new IllegalStateException("Trying to set the device owner, but the user already has a profile owner.");
            case 3:
                throw new IllegalStateException("User not running: " + userId);
            case 4:
                throw new IllegalStateException("Cannot set the device owner if the device is already set-up");
            case 5:
                throw new IllegalStateException("Not allowed to set the device owner because there are already several users on the device");
            case 6:
                throw new IllegalStateException("Not allowed to set the device owner because there are already some accounts on the device");
            case 7:
                throw new IllegalStateException("User is not system user");
            case 8:
                throw new IllegalStateException("Not allowed to set the device owner because this device has already paired");
            default:
                throw new IllegalStateException("Unexpected @ProvisioningPreCondition " + code);
        }
    }

    private void enforceUserUnlocked(int userId) {
        Preconditions.checkState(this.mUserManager.isUserUnlocked(userId), "User must be running and unlocked");
    }

    private void enforceUserUnlocked(int userId, boolean parent) {
        if (parent) {
            enforceUserUnlocked(getProfileParentId(userId));
        } else {
            enforceUserUnlocked(userId);
        }
    }

    private void enforceManageUsers() {
        int callingUid = this.mInjector.binderGetCallingUid();
        if (!isCallerWithSystemUid() && callingUid != 0) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USERS", null);
        }
    }

    private void enforceAcrossUsersPermissions() {
        int callingUid = this.mInjector.binderGetCallingUid();
        int callingPid = this.mInjector.binderGetCallingPid();
        String packageName = this.mContext.getPackageName();
        if (isCallerWithSystemUid() || callingUid == 0 || PermissionChecker.checkPermissionForPreflight(this.mContext, "android.permission.INTERACT_ACROSS_PROFILES", callingPid, callingUid, packageName) == 0 || this.mContext.checkCallingPermission("android.permission.INTERACT_ACROSS_USERS") == 0 || this.mContext.checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL") == 0) {
        } else {
            throw new SecurityException("Calling user does not have INTERACT_ACROSS_PROFILES orINTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL permissions");
        }
    }

    private void enforceFullCrossUsersPermission(int userHandle) {
        enforceSystemUserOrPermissionIfCrossUser(userHandle, "android.permission.INTERACT_ACROSS_USERS_FULL");
    }

    private void enforceCrossUsersPermission(int userHandle) {
        enforceSystemUserOrPermissionIfCrossUser(userHandle, "android.permission.INTERACT_ACROSS_USERS");
    }

    private void enforceSystemUserOrPermission(String permission) {
        if (!isCallerWithSystemUid() && this.mInjector.binderGetCallingUid() != 0) {
            this.mContext.enforceCallingOrSelfPermission(permission, "Must be system or have " + permission + " permission");
        }
    }

    private void enforceSystemUserOrPermissionIfCrossUser(int userHandle, String permission) {
        if (userHandle < 0) {
            throw new IllegalArgumentException("Invalid userId " + userHandle);
        }
        if (userHandle == this.mInjector.userHandleGetCallingUserId()) {
            return;
        }
        enforceSystemUserOrPermission(permission);
    }

    private void enforceManagedProfile(int userId, String message) {
        if (!isManagedProfile(userId)) {
            throw new SecurityException(String.format("You can not %s outside a managed profile, userId = %d", message, Integer.valueOf(userId)));
        }
    }

    private void enforceNotManagedProfile(int userId, String message) {
        if (isManagedProfile(userId)) {
            throw new SecurityException(String.format("You can not %s for a managed profile, userId = %d", message, Integer.valueOf(userId)));
        }
    }

    private void enforceDeviceOwnerOrManageUsers() {
        synchronized (getLockObject()) {
            if (getActiveAdminWithPolicyForUidLocked(null, -2, this.mInjector.binderGetCallingUid()) != null) {
                return;
            }
            enforceManageUsers();
        }
    }

    private void enforceProfileOwnerOrSystemUser() {
        synchronized (getLockObject()) {
            if (getActiveAdminWithPolicyForUidLocked(null, -1, this.mInjector.binderGetCallingUid()) != null) {
                return;
            }
            Preconditions.checkState(isCallerWithSystemUid(), "Only profile owner, device owner and system may call this method.");
        }
    }

    private void enforceProfileOwnerOnUser0OrProfileOwnerOrganizationOwned() {
        synchronized (getLockObject()) {
            if (getActiveAdminWithPolicyForUidLocked(null, -3, this.mInjector.binderGetCallingUid()) != null) {
                return;
            }
            ActiveAdmin owner = getActiveAdminWithPolicyForUidLocked(null, -1, this.mInjector.binderGetCallingUid());
            if (owner == null || !owner.getUserHandle().isSystem()) {
                throw new SecurityException("No active admin found");
            }
        }
    }

    private void enforceProfileOwnerOrFullCrossUsersPermission(int userId) {
        if (userId == this.mInjector.userHandleGetCallingUserId()) {
            synchronized (getLockObject()) {
                if (getActiveAdminWithPolicyForUidLocked(null, -1, this.mInjector.binderGetCallingUid()) != null) {
                    return;
                }
            }
        }
        enforceSystemUserOrPermission("android.permission.INTERACT_ACROSS_USERS_FULL");
    }

    private boolean canUserUseLockTaskLocked(int userId) {
        if (isUserAffiliatedWithDeviceLocked(userId)) {
            return true;
        }
        if (this.mOwners.hasDeviceOwner()) {
            return false;
        }
        ComponentName profileOwner = getProfileOwner(userId);
        return (profileOwner == null || isManagedProfile(userId)) ? false : true;
    }

    private void enforceCanCallLockTaskLocked(ComponentName who) {
        getActiveAdminForCallerLocked(who, -1);
        int userId = this.mInjector.userHandleGetCallingUserId();
        if (!canUserUseLockTaskLocked(userId)) {
            throw new SecurityException("User " + userId + " is not allowed to use lock task");
        }
    }

    private void ensureCallerPackage(String packageName) {
        if (packageName == null) {
            enforceSystemCaller("omit package name");
            return;
        }
        int callingUid = this.mInjector.binderGetCallingUid();
        int userId = this.mInjector.userHandleGetCallingUserId();
        try {
            ApplicationInfo ai = this.mIPackageManager.getApplicationInfo(packageName, 0, userId);
            Preconditions.checkState(ai.uid == callingUid, "Unmatching package name");
        } catch (RemoteException e) {
        }
    }

    private boolean isCallerWithSystemUid() {
        return UserHandle.isSameApp(this.mInjector.binderGetCallingUid(), 1000);
    }

    protected int getProfileParentId(final int userHandle) {
        return ((Integer) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$hRvJuO1gf5MsRwxjvTdgEH89AJ4
            public final Object getOrThrow() {
                return this.f$0.lambda$getProfileParentId$55$DevicePolicyManagerService(userHandle);
            }
        })).intValue();
    }

    public /* synthetic */ Integer lambda$getProfileParentId$55$DevicePolicyManagerService(int userHandle) throws Exception {
        UserInfo parentUser = this.mUserManager.getProfileParent(userHandle);
        return Integer.valueOf(parentUser != null ? parentUser.id : userHandle);
    }

    private int getCredentialOwner(final int userHandle, final boolean parent) {
        return ((Integer) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$3PMRGJU-0j94dGmQcTSGdeHm9es
            public final Object getOrThrow() {
                return this.f$0.lambda$getCredentialOwner$56$DevicePolicyManagerService(userHandle, parent);
            }
        })).intValue();
    }

    public /* synthetic */ Integer lambda$getCredentialOwner$56$DevicePolicyManagerService(int userHandle, boolean parent) throws Exception {
        UserInfo parentProfile;
        int effectiveUserHandle = userHandle;
        if (parent && (parentProfile = this.mUserManager.getProfileParent(userHandle)) != null) {
            effectiveUserHandle = parentProfile.id;
        }
        return Integer.valueOf(this.mUserManager.getCredentialOwnerProfile(effectiveUserHandle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isManagedProfile(int userHandle) {
        UserInfo user = getUserInfo(userHandle);
        return user != null && user.isManagedProfile();
    }

    private void enableIfNecessary(String packageName, int userId) {
        try {
            ApplicationInfo ai = this.mIPackageManager.getApplicationInfo(packageName, 32768, userId);
            if (ai.enabledSetting == 4) {
                this.mIPackageManager.setApplicationEnabledSetting(packageName, 0, 1, userId, LOG_TAG);
            }
        } catch (RemoteException e) {
        }
    }

    private void dumpDevicePolicyData(IndentingPrintWriter pw) {
        int userCount = this.mUserData.size();
        for (int u = 0; u < userCount; u++) {
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(this.mUserData.keyAt(u));
            pw.println();
            pw.println("Enabled Device Admins (User " + policy.mUserHandle + ", provisioningState: " + policy.mUserProvisioningState + "):");
            int n = policy.mAdminList.size();
            for (int i = 0; i < n; i++) {
                ActiveAdmin ap = policy.mAdminList.get(i);
                if (ap != null) {
                    pw.increaseIndent();
                    pw.print(ap.info.getComponent().flattenToShortString());
                    pw.println(":");
                    pw.increaseIndent();
                    ap.dump(pw);
                    pw.decreaseIndent();
                    pw.decreaseIndent();
                }
            }
            if (!policy.mRemovingAdmins.isEmpty()) {
                pw.increaseIndent();
                pw.println("Removing Device Admins (User " + policy.mUserHandle + "): " + policy.mRemovingAdmins);
                pw.decreaseIndent();
            }
            pw.println();
            pw.increaseIndent();
            pw.print("mPasswordOwner=");
            pw.println(policy.mPasswordOwner);
            pw.print("mUserControlDisabledPackages=");
            pw.println(policy.mUserControlDisabledPackages);
            pw.print("mAppsSuspended=");
            pw.println(policy.mAppsSuspended);
            pw.decreaseIndent();
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter printWriter, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, LOG_TAG, printWriter)) {
            IndentingPrintWriter pw = new IndentingPrintWriter(printWriter, "  ");
            synchronized (getLockObject()) {
                pw.println("Current Device Policy Manager state:");
                pw.increaseIndent();
                this.mOwners.dump(pw);
                pw.println();
                this.mDeviceAdminServiceController.dump(pw);
                pw.println();
                dumpDevicePolicyData(pw);
                pw.println();
                this.mConstants.dump(pw);
                pw.println();
                this.mStatLogger.dump(pw);
                pw.println();
                pw.println("Encryption Status: " + getEncryptionStatusName(getEncryptionStatus()));
                pw.println();
                this.mPolicyCache.dump(pw);
                pw.println();
                this.mStateCache.dump(pw);
            }
        }
    }

    private String getEncryptionStatusName(int encryptionStatus) {
        if (encryptionStatus == 0) {
            return "unsupported";
        }
        if (encryptionStatus == 1) {
            return "inactive";
        }
        if (encryptionStatus == 2) {
            return "activating";
        }
        if (encryptionStatus == 3) {
            return "block";
        }
        if (encryptionStatus == 4) {
            return "block default key";
        }
        if (encryptionStatus == 5) {
            return "per-user";
        }
        return UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
    }

    public void addPersistentPreferredActivity(ComponentName who, IntentFilter filter, ComponentName activity) {
        Injector injector;
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            long id = this.mInjector.binderClearCallingIdentity();
            try {
                try {
                    this.mIPackageManager.addPersistentPreferredActivity(filter, activity, userHandle);
                    this.mIPackageManager.flushPackageRestrictionsAsUser(userHandle);
                    injector = this.mInjector;
                } catch (RemoteException e) {
                    injector = this.mInjector;
                }
                injector.binderRestoreCallingIdentity(id);
            } catch (Throwable th) {
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
        }
        String activityPackage = activity != null ? activity.getPackageName() : null;
        DevicePolicyEventLogger.createEvent(52).setAdmin(who).setStrings(activityPackage, getIntentFilterActions(filter)).write();
    }

    public void clearPackagePersistentPreferredActivities(ComponentName who, String packageName) {
        Injector injector;
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            long id = this.mInjector.binderClearCallingIdentity();
            try {
                this.mIPackageManager.clearPackagePersistentPreferredActivities(packageName, userHandle);
                this.mIPackageManager.flushPackageRestrictionsAsUser(userHandle);
                injector = this.mInjector;
            } catch (RemoteException e) {
                injector = this.mInjector;
            } catch (Throwable th) {
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
            injector.binderRestoreCallingIdentity(id);
        }
    }

    public void setDefaultSmsApplication(ComponentName admin, final String packageName, boolean parent) {
        Objects.requireNonNull(admin, "ComponentName is null");
        if (parent) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(admin, -3, parent);
            enforceProfileOwnerOfOrganizationOwnedDevice(ap);
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$MDhujAGk4eG0OntgRld3-J2QTjA
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setDefaultSmsApplication$57$DevicePolicyManagerService(packageName);
                }
            });
        } else {
            enforceDeviceOwner(admin);
        }
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$Stlw-ruesGd30Nhy63yNmxN91SA
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setDefaultSmsApplication$58$DevicePolicyManagerService(packageName);
            }
        });
    }

    public /* synthetic */ void lambda$setDefaultSmsApplication$57$DevicePolicyManagerService(String packageName) throws Exception {
        lambda$setApplicationHidden$64$DevicePolicyManagerService(packageName, getProfileParentId(this.mInjector.userHandleGetCallingUserId()));
    }

    public /* synthetic */ void lambda$setDefaultSmsApplication$58$DevicePolicyManagerService(String packageName) throws Exception {
        SmsApplication.setDefaultApplication(packageName, this.mContext);
    }

    public boolean setApplicationRestrictionsManagingPackage(ComponentName admin, String packageName) {
        try {
            setDelegatedScopePreO(admin, packageName, "delegation-app-restrictions");
            return true;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    public String getApplicationRestrictionsManagingPackage(ComponentName admin) {
        List<String> delegatePackages = getDelegatePackages(admin, "delegation-app-restrictions");
        if (delegatePackages.size() > 0) {
            return delegatePackages.get(0);
        }
        return null;
    }

    public boolean isCallerApplicationRestrictionsManagingPackage(String callerPackage) {
        return isCallerDelegate(callerPackage, this.mInjector.binderGetCallingUid(), "delegation-app-restrictions");
    }

    public void setApplicationRestrictions(final ComponentName who, final String callerPackage, final String packageName, final Bundle settings) {
        enforceCanManageScope(who, callerPackage, -1, "delegation-app-restrictions");
        final UserHandle userHandle = this.mInjector.binderGetCallingUserHandle();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setApplicationRestrictions$59$DevicePolicyManagerService(packageName, settings, userHandle, who, callerPackage);
            }
        });
    }

    public /* synthetic */ void lambda$setApplicationRestrictions$59$DevicePolicyManagerService(String packageName, Bundle settings, UserHandle userHandle, ComponentName who, String callerPackage) throws Exception {
        this.mUserManager.setApplicationRestrictions(packageName, settings, userHandle);
        boolean isDelegate = who == null;
        DevicePolicyEventLogger.createEvent(62).setAdmin(callerPackage).setBoolean(isDelegate).setStrings(new String[]{packageName}).write();
    }

    public void setTrustAgentConfiguration(ComponentName admin, ComponentName agent, PersistableBundle args, boolean parent) {
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return;
        }
        Objects.requireNonNull(admin, "admin is null");
        Objects.requireNonNull(agent, "agent is null");
        enforceMaxPackageNameLength(agent.getPackageName());
        String agentAsString = agent.flattenToString();
        enforceMaxStringLength(agentAsString, "agent name");
        if (args != null) {
            enforceMaxStringLength(args, "args");
        }
        int userHandle = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(admin, 9, parent);
            ap.trustAgentInfos.put(agent.flattenToString(), new ActiveAdmin.TrustAgentInfo(args));
            saveSettingsLocked(userHandle);
        }
    }

    public List<PersistableBundle> getTrustAgentConfiguration(ComponentName admin, ComponentName agent, int userHandle, boolean parent) {
        if (this.mHasFeature && this.mLockPatternUtils.hasSecureLockScreen()) {
            Objects.requireNonNull(agent, "agent null");
            enforceFullCrossUsersPermission(userHandle);
            synchronized (getLockObject()) {
                String componentName = agent.flattenToString();
                if (admin != null) {
                    ActiveAdmin ap = getActiveAdminUncheckedLocked(admin, userHandle, parent);
                    if (ap == null) {
                        return null;
                    }
                    ActiveAdmin.TrustAgentInfo trustAgentInfo = ap.trustAgentInfos.get(componentName);
                    if (trustAgentInfo != null && trustAgentInfo.options != null) {
                        List<PersistableBundle> result = new ArrayList<>();
                        result.add(trustAgentInfo.options);
                        return result;
                    }
                    return null;
                }
                List<PersistableBundle> result2 = null;
                List<ActiveAdmin> admins = getActiveAdminsForLockscreenPoliciesLocked(userHandle, parent);
                boolean allAdminsHaveOptions = true;
                int N = admins.size();
                int i = 0;
                while (i < N) {
                    ActiveAdmin active = admins.get(i);
                    boolean disablesTrust = (active.disabledKeyguardFeatures & 16) != 0;
                    ActiveAdmin.TrustAgentInfo info = active.trustAgentInfos.get(componentName);
                    if (info != null && info.options != null && !info.options.isEmpty()) {
                        if (disablesTrust) {
                            if (result2 == null) {
                                result2 = new ArrayList<>();
                            }
                            result2.add(info.options);
                        } else {
                            Log.w(LOG_TAG, "Ignoring admin " + active.info + " because it has trust options but doesn't declare KEYGUARD_DISABLE_TRUST_AGENTS");
                        }
                    } else if (disablesTrust) {
                        allAdminsHaveOptions = false;
                        break;
                    }
                    i++;
                    componentName = componentName;
                }
                return allAdminsHaveOptions ? result2 : null;
            }
        }
        return null;
    }

    public void setRestrictionsProvider(ComponentName who, ComponentName permissionProvider) {
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            int userHandle = UserHandle.getCallingUserId();
            DevicePolicyData userData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            userData.mRestrictionsProvider = permissionProvider;
            saveSettingsLocked(userHandle);
        }
    }

    public ComponentName getRestrictionsProvider(int userHandle) {
        ComponentName componentName;
        enforceSystemCaller("query the permission provider");
        synchronized (getLockObject()) {
            DevicePolicyData userData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            componentName = userData != null ? userData.mRestrictionsProvider : null;
        }
        return componentName;
    }

    public void addCrossProfileIntentFilter(ComponentName who, IntentFilter filter, int flags) {
        Injector injector;
        Objects.requireNonNull(who, "ComponentName is null");
        int callingUserId = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            long id = this.mInjector.binderClearCallingIdentity();
            try {
                try {
                    UserInfo parent = this.mUserManager.getProfileParent(callingUserId);
                    if (parent == null) {
                        Slog.e(LOG_TAG, "Cannot call addCrossProfileIntentFilter if there is no parent");
                        this.mInjector.binderRestoreCallingIdentity(id);
                        return;
                    }
                    if ((flags & 1) != 0) {
                        this.mIPackageManager.addCrossProfileIntentFilter(filter, who.getPackageName(), callingUserId, parent.id, 0);
                    }
                    if ((flags & 2) != 0) {
                        this.mIPackageManager.addCrossProfileIntentFilter(filter, who.getPackageName(), parent.id, callingUserId, 0);
                    }
                    injector = this.mInjector;
                    injector.binderRestoreCallingIdentity(id);
                    DevicePolicyEventLogger.createEvent(48).setAdmin(who).setStrings(getIntentFilterActions(filter)).setInt(flags).write();
                } catch (RemoteException e) {
                    injector = this.mInjector;
                }
            } catch (Throwable th) {
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
        }
    }

    private static String[] getIntentFilterActions(IntentFilter filter) {
        if (filter == null) {
            return null;
        }
        int actionsCount = filter.countActions();
        String[] actions = new String[actionsCount];
        for (int i = 0; i < actionsCount; i++) {
            actions[i] = filter.getAction(i);
        }
        return actions;
    }

    public void clearCrossProfileIntentFilters(ComponentName who) {
        Injector injector;
        Objects.requireNonNull(who, "ComponentName is null");
        int callingUserId = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            long id = this.mInjector.binderClearCallingIdentity();
            try {
                UserInfo parent = this.mUserManager.getProfileParent(callingUserId);
                if (parent == null) {
                    Slog.e(LOG_TAG, "Cannot call clearCrossProfileIntentFilter if there is no parent");
                    this.mInjector.binderRestoreCallingIdentity(id);
                } else {
                    this.mIPackageManager.clearCrossProfileIntentFilters(callingUserId, who.getPackageName());
                    this.mIPackageManager.clearCrossProfileIntentFilters(parent.id, who.getPackageName());
                    injector = this.mInjector;
                    injector.binderRestoreCallingIdentity(id);
                }
            } catch (RemoteException e) {
                injector = this.mInjector;
            } catch (Throwable th) {
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
        }
    }

    private boolean checkPackagesInPermittedListOrSystem(List<String> enabledPackages, List<String> permittedList, int userIdToCheck) {
        long id = this.mInjector.binderClearCallingIdentity();
        try {
            UserInfo user = getUserInfo(userIdToCheck);
            if (user.isManagedProfile()) {
                userIdToCheck = user.profileGroupId;
            }
            Iterator<String> it = enabledPackages.iterator();
            while (true) {
                if (it.hasNext()) {
                    String enabledPackage = it.next();
                    boolean systemService = false;
                    try {
                        ApplicationInfo applicationInfo = this.mIPackageManager.getApplicationInfo(enabledPackage, 8192, userIdToCheck);
                        systemService = (applicationInfo.flags & 1) != 0;
                    } catch (RemoteException e) {
                        Log.i(LOG_TAG, "Can't talk to package managed", e);
                    }
                    if (!systemService && !permittedList.contains(enabledPackage)) {
                        this.mInjector.binderRestoreCallingIdentity(id);
                        return false;
                    }
                } else {
                    this.mInjector.binderRestoreCallingIdentity(id);
                    return true;
                }
            }
        } catch (Throwable th) {
            this.mInjector.binderRestoreCallingIdentity(id);
            throw th;
        }
    }

    private AccessibilityManager getAccessibilityManagerForUser(int userId) {
        IBinder iBinder = ServiceManager.getService("accessibility");
        IAccessibilityManager service = iBinder == null ? null : IAccessibilityManager.Stub.asInterface(iBinder);
        return new AccessibilityManager(this.mContext, service, userId);
    }

    public boolean setPermittedAccessibilityServices(ComponentName who, List packageList) {
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        if (packageList != null) {
            Iterator it = packageList.iterator();
            while (it.hasNext()) {
                String pkg = (String) it.next();
                enforceMaxPackageNameLength(pkg);
            }
            int userId = UserHandle.getCallingUserId();
            long id = this.mInjector.binderClearCallingIdentity();
            try {
                UserInfo user = getUserInfo(userId);
                if (user.isManagedProfile()) {
                    userId = user.profileGroupId;
                }
                AccessibilityManager accessibilityManager = getAccessibilityManagerForUser(userId);
                List<AccessibilityServiceInfo> enabledServices = accessibilityManager.getEnabledAccessibilityServiceList(-1);
                this.mInjector.binderRestoreCallingIdentity(id);
                if (enabledServices != null) {
                    List<String> enabledPackages = new ArrayList<>();
                    for (AccessibilityServiceInfo service : enabledServices) {
                        enabledPackages.add(service.getResolveInfo().serviceInfo.packageName);
                    }
                    if (!checkPackagesInPermittedListOrSystem(enabledPackages, packageList, userId)) {
                        Slog.e(LOG_TAG, "Cannot set permitted accessibility services, because it contains already enabled accesibility services.");
                        return false;
                    }
                }
            } catch (Throwable th) {
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
        }
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            admin.permittedAccessiblityServices = packageList;
            saveSettingsLocked(UserHandle.getCallingUserId());
        }
        String[] packageArray = packageList != null ? (String[]) packageList.toArray(new String[0]) : null;
        DevicePolicyEventLogger.createEvent(28).setAdmin(who).setStrings(packageArray).write();
        return true;
    }

    public List getPermittedAccessibilityServices(ComponentName who) {
        List<String> list;
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            list = admin.permittedAccessiblityServices;
        }
        return list;
    }

    public List getPermittedAccessibilityServicesForUser(int userId) {
        List<String> result;
        if (!this.mHasFeature) {
            return null;
        }
        enforceManageUsers();
        synchronized (getLockObject()) {
            result = null;
            int[] profileIds = this.mUserManager.getProfileIdsWithDisabled(userId);
            for (int profileId : profileIds) {
                DevicePolicyData policy = getUserDataUnchecked(profileId);
                int N = policy.mAdminList.size();
                for (int j = 0; j < N; j++) {
                    ActiveAdmin admin = policy.mAdminList.get(j);
                    List<String> fromAdmin = admin.permittedAccessiblityServices;
                    if (fromAdmin != null) {
                        if (result == null) {
                            result = new ArrayList<>(fromAdmin);
                        } else {
                            result.retainAll(fromAdmin);
                        }
                    }
                }
            }
            if (result != null) {
                long id = this.mInjector.binderClearCallingIdentity();
                try {
                    UserInfo user = getUserInfo(userId);
                    if (user.isManagedProfile()) {
                        userId = user.profileGroupId;
                    }
                    AccessibilityManager accessibilityManager = getAccessibilityManagerForUser(userId);
                    List<AccessibilityServiceInfo> installedServices = accessibilityManager.getInstalledAccessibilityServiceList();
                    if (installedServices != null) {
                        for (AccessibilityServiceInfo service : installedServices) {
                            ServiceInfo serviceInfo = service.getResolveInfo().serviceInfo;
                            ApplicationInfo applicationInfo = serviceInfo.applicationInfo;
                            if ((applicationInfo.flags & 1) != 0) {
                                result.add(serviceInfo.packageName);
                            }
                        }
                    }
                    this.mInjector.binderRestoreCallingIdentity(id);
                } catch (Throwable th) {
                    this.mInjector.binderRestoreCallingIdentity(id);
                    throw th;
                }
            }
        }
        return result;
    }

    public boolean isAccessibilityServicePermittedByAdmin(ComponentName who, String packageName, int userHandle) {
        if (!this.mHasFeature) {
            return true;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        Preconditions.checkStringNotEmpty(packageName, "packageName is null");
        enforceSystemCaller("query if an accessibility service is disabled by admin");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle);
            if (admin == null) {
                return false;
            }
            if (admin.permittedAccessiblityServices == null) {
                return true;
            }
            return checkPackagesInPermittedListOrSystem(Collections.singletonList(packageName), admin.permittedAccessiblityServices, userHandle);
        }
    }

    public boolean setPermittedInputMethods(ComponentName who, List packageList) {
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int callingUserId = this.mInjector.userHandleGetCallingUserId();
        if (packageList != null) {
            Iterator it = packageList.iterator();
            while (it.hasNext()) {
                String pkg = (String) it.next();
                enforceMaxPackageNameLength(pkg);
            }
            List<InputMethodInfo> enabledImes = InputMethodManagerInternal.get().getEnabledInputMethodListAsUser(callingUserId);
            if (enabledImes != null) {
                List<String> enabledPackages = new ArrayList<>();
                for (InputMethodInfo ime : enabledImes) {
                    enabledPackages.add(ime.getPackageName());
                }
                if (!checkPackagesInPermittedListOrSystem(enabledPackages, packageList, callingUserId)) {
                    Slog.e(LOG_TAG, "Cannot set permitted input methods, because it contains already enabled input method.");
                    return false;
                }
            }
        }
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            admin.permittedInputMethods = packageList;
            saveSettingsLocked(callingUserId);
        }
        String[] packageArray = packageList != null ? (String[]) packageList.toArray(new String[0]) : null;
        DevicePolicyEventLogger.createEvent(27).setAdmin(who).setStrings(packageArray).write();
        return true;
    }

    public List getPermittedInputMethods(ComponentName who) {
        List<String> list;
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            list = admin.permittedInputMethods;
        }
        return list;
    }

    public List getPermittedInputMethodsForCurrentUser() {
        List<String> result;
        List<InputMethodInfo> imes;
        enforceManageUsers();
        int callingUserId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            result = null;
            DevicePolicyData policy = getUserDataUnchecked(callingUserId);
            for (int i = 0; i < policy.mAdminList.size(); i++) {
                ActiveAdmin admin = policy.mAdminList.get(i);
                List<String> fromAdmin = admin.permittedInputMethods;
                if (fromAdmin != null) {
                    if (result == null) {
                        result = new ArrayList<>(fromAdmin);
                    } else {
                        result.retainAll(fromAdmin);
                    }
                }
            }
            if (result != null && (imes = InputMethodManagerInternal.get().getInputMethodListAsUser(callingUserId)) != null) {
                for (InputMethodInfo ime : imes) {
                    ServiceInfo serviceInfo = ime.getServiceInfo();
                    ApplicationInfo applicationInfo = serviceInfo.applicationInfo;
                    if ((applicationInfo.flags & 1) != 0) {
                        result.add(serviceInfo.packageName);
                    }
                }
            }
        }
        return result;
    }

    public boolean isInputMethodPermittedByAdmin(ComponentName who, String packageName, int userHandle) {
        if (!this.mHasFeature) {
            return true;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        Preconditions.checkStringNotEmpty(packageName, "packageName is null");
        enforceSystemCaller("query if an input method is disabled by admin");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle);
            if (admin == null) {
                return false;
            }
            if (admin.permittedInputMethods == null) {
                return true;
            }
            return checkPackagesInPermittedListOrSystem(Collections.singletonList(packageName), admin.permittedInputMethods, userHandle);
        }
    }

    public boolean setPermittedCrossProfileNotificationListeners(ComponentName who, List<String> packageList) {
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int callingUserId = this.mInjector.userHandleGetCallingUserId();
        if (!isManagedProfile(callingUserId)) {
            return false;
        }
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            admin.permittedNotificationListeners = packageList;
            saveSettingsLocked(callingUserId);
        }
        return true;
    }

    public List<String> getPermittedCrossProfileNotificationListeners(ComponentName who) {
        List<String> list;
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            list = admin.permittedNotificationListeners;
        }
        return list;
    }

    public boolean isNotificationListenerServicePermitted(String packageName, int userId) {
        if (!this.mHasFeature) {
            return true;
        }
        Preconditions.checkStringNotEmpty(packageName, "packageName is null or empty");
        enforceSystemCaller("query if a notification listener service is permitted");
        synchronized (getLockObject()) {
            ActiveAdmin profileOwner = getProfileOwnerAdminLocked(userId);
            if (profileOwner != null && profileOwner.permittedNotificationListeners != null) {
                return checkPackagesInPermittedListOrSystem(Collections.singletonList(packageName), profileOwner.permittedNotificationListeners, userId);
            }
            return true;
        }
    }

    private void enforceSystemCaller(String action) {
        if (!isCallerWithSystemUid()) {
            throw new SecurityException("Only the system can " + action);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeSendAdminEnabledBroadcastLocked(int userHandle) {
        DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        if (policyData.mAdminBroadcastPending) {
            ActiveAdmin admin = getProfileOwnerAdminLocked(userHandle);
            boolean clearInitBundle = true;
            if (admin != null) {
                PersistableBundle initBundle = policyData.mInitBundle;
                clearInitBundle = sendAdminCommandLocked(admin, "android.app.action.DEVICE_ADMIN_ENABLED", initBundle == null ? null : new Bundle(initBundle), null, true);
            }
            if (clearInitBundle) {
                policyData.mInitBundle = null;
                policyData.mAdminBroadcastPending = false;
                saveSettingsLocked(userHandle);
            }
        }
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    public void finalizeWorkProfileProvisioning(UserHandle managedProfileUser, Account migratedAccount) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS") != 0) {
            throw new SecurityException("Calling identity is not authorized");
        }
        if (!isManagedProfile(managedProfileUser.getIdentifier())) {
            throw new IllegalStateException("Given user is not a managed profile");
        }
        ComponentName profileOwnerComponent = this.mOwners.getProfileOwnerComponent(managedProfileUser.getIdentifier());
        if (profileOwnerComponent == null) {
            throw new IllegalStateException("There is no profile owner on the given profile");
        }
        Intent primaryProfileSuccessIntent = new Intent("android.app.action.MANAGED_PROFILE_PROVISIONED");
        primaryProfileSuccessIntent.setPackage(profileOwnerComponent.getPackageName());
        primaryProfileSuccessIntent.addFlags(268435488);
        primaryProfileSuccessIntent.putExtra("android.intent.extra.USER", managedProfileUser);
        if (migratedAccount != null) {
            primaryProfileSuccessIntent.putExtra("android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE", migratedAccount);
        }
        this.mContext.sendBroadcastAsUser(primaryProfileSuccessIntent, UserHandle.of(getProfileParentId(managedProfileUser.getIdentifier())));
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    public UserHandle createAndManageUser(ComponentName admin, String name, ComponentName profileOwner, PersistableBundle adminExtras, int flags) throws Throwable {
        Objects.requireNonNull(admin, "admin is null");
        Objects.requireNonNull(profileOwner, "profileOwner is null");
        if (!admin.getPackageName().equals(profileOwner.getPackageName())) {
            throw new IllegalArgumentException("profileOwner " + profileOwner + " and admin " + admin + " are not in the same package");
        }
        if (!this.mInjector.binderGetCallingUserHandle().isSystem()) {
            throw new SecurityException("createAndManageUser was called from non-system user");
        }
        boolean ephemeral = (flags & 2) != 0;
        boolean demo = (flags & 4) != 0 && UserManager.isDeviceInDemoMode(this.mContext);
        boolean leaveAllSystemAppsEnabled = (flags & 16) != 0;
        UserHandle user = null;
        synchronized (getLockObject()) {
            try {
                try {
                    getActiveAdminForCallerLocked(admin, -2);
                    int callingUid = this.mInjector.binderGetCallingUid();
                    long id = this.mInjector.binderClearCallingIdentity();
                    try {
                        int targetSdkVersion = this.mInjector.getPackageManagerInternal().getUidTargetSdkVersion(callingUid);
                        DeviceStorageMonitorInternal deviceStorageMonitorInternal = (DeviceStorageMonitorInternal) LocalServices.getService(DeviceStorageMonitorInternal.class);
                        try {
                            try {
                                if (deviceStorageMonitorInternal.isMemoryLow()) {
                                    if (targetSdkVersion >= 28) {
                                        throw new ServiceSpecificException(5, "low device storage");
                                    }
                                    this.mInjector.binderRestoreCallingIdentity(id);
                                    return null;
                                }
                                if (!this.mUserManager.canAddMoreUsers()) {
                                    if (targetSdkVersion >= 28) {
                                        throw new ServiceSpecificException(6, "user limit reached");
                                    }
                                    this.mInjector.binderRestoreCallingIdentity(id);
                                    return null;
                                }
                                int userInfoFlags = ephemeral ? 256 : 0;
                                String userType = demo ? "android.os.usertype.full.DEMO" : "android.os.usertype.full.SECONDARY";
                                String[] disallowedPackages = !leaveAllSystemAppsEnabled ? (String[]) this.mOverlayPackagesProvider.getNonRequiredApps(admin, UserHandle.myUserId(), "android.app.action.PROVISION_MANAGED_USER").toArray(new String[0]) : null;
                                try {
                                    try {
                                        try {
                                            UserInfo userInfo = this.mUserManagerInternal.createUserEvenWhenDisallowed(name, userType, userInfoFlags, disallowedPackages);
                                            if (userInfo != null) {
                                                user = userInfo.getUserHandle();
                                            }
                                        } catch (UserManager.CheckedUserOperationException e) {
                                            e = e;
                                            Log.e(LOG_TAG, "Couldn't createUserEvenWhenDisallowed", e);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                    }
                                } catch (UserManager.CheckedUserOperationException e2) {
                                    e = e2;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                                try {
                                    this.mInjector.binderRestoreCallingIdentity(id);
                                    if (user == null) {
                                        if (targetSdkVersion < 28) {
                                            return null;
                                        }
                                        throw new ServiceSpecificException(1, "failed to create user");
                                    }
                                    int userHandle = user.getIdentifier();
                                    Intent intent = new Intent("android.app.action.MANAGED_USER_CREATED").putExtra("android.intent.extra.user_handle", userHandle).putExtra("android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED", leaveAllSystemAppsEnabled).setPackage(getManagedProvisioningPackage(this.mContext)).addFlags(AudioFormat.EVRC);
                                    this.mContext.sendBroadcastAsUser(intent, UserHandle.SYSTEM);
                                    long id2 = this.mInjector.binderClearCallingIdentity();
                                    String adminPkg = admin.getPackageName();
                                    try {
                                        if (!this.mIPackageManager.isPackageAvailable(adminPkg, userHandle)) {
                                            this.mIPackageManager.installExistingPackageAsUser(adminPkg, userHandle, 4194304, 1, (List) null);
                                        }
                                    } catch (RemoteException e3) {
                                    }
                                    setActiveAdmin(profileOwner, true, userHandle);
                                    String ownerName = getProfileOwnerName(Process.myUserHandle().getIdentifier());
                                    setProfileOwner(profileOwner, ownerName, userHandle);
                                    try {
                                        try {
                                            synchronized (getLockObject()) {
                                                try {
                                                    DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
                                                    policyData.mInitBundle = adminExtras;
                                                    policyData.mAdminBroadcastPending = true;
                                                    saveSettingsLocked(userHandle);
                                                    if ((flags & 1) != 0) {
                                                        Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "user_setup_complete", 1, userHandle);
                                                    }
                                                    this.mInjector.binderRestoreCallingIdentity(id2);
                                                    return user;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    throw th;
                                                }
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                        }
                                    } catch (Throwable th5) {
                                        re = th5;
                                        try {
                                            this.mUserManager.removeUser(userHandle);
                                            if (targetSdkVersion >= 28) {
                                                throw new ServiceSpecificException(1, re.getMessage());
                                            }
                                            this.mInjector.binderRestoreCallingIdentity(id2);
                                            return null;
                                        } catch (Throwable re) {
                                            this.mInjector.binderRestoreCallingIdentity(id2);
                                            throw re;
                                        }
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    throw th;
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
                    this.mInjector.binderRestoreCallingIdentity(id);
                    throw th;
                } catch (Throwable th10) {
                    th = th10;
                }
            } catch (Throwable th11) {
                th = th11;
            }
        }
    }

    public boolean removeUser(final ComponentName who, final UserHandle userHandle) {
        Objects.requireNonNull(who, "ComponentName is null");
        Objects.requireNonNull(userHandle, "UserHandle is null");
        enforceDeviceOwner(who);
        final int callingUserId = this.mInjector.userHandleGetCallingUserId();
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$9W65ptLRJPi4uxjSjBjpuNDNtg0
            public final Object getOrThrow() {
                return this.f$0.lambda$removeUser$60$DevicePolicyManagerService(userHandle, who, callingUserId);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$removeUser$60$DevicePolicyManagerService(UserHandle userHandle, ComponentName who, int callingUserId) throws Exception {
        String restriction;
        if (isManagedProfile(userHandle.getIdentifier())) {
            restriction = "no_remove_managed_profile";
        } else {
            restriction = "no_remove_user";
        }
        if (isAdminAffectedByRestriction(who, restriction, callingUserId)) {
            Log.w(LOG_TAG, "The device owner cannot remove a user because " + restriction + " is enabled, and was not set by the device owner");
            return false;
        }
        return Boolean.valueOf(this.mUserManagerInternal.removeUserEvenWhenDisallowed(userHandle.getIdentifier()));
    }

    private boolean isAdminAffectedByRestriction(ComponentName admin, String userRestriction, int userId) {
        int userRestrictionSource = this.mUserManager.getUserRestrictionSource(userRestriction, UserHandle.of(userId));
        if (userRestrictionSource == 0) {
            return false;
        }
        if (userRestrictionSource == 2) {
            return !isDeviceOwner(admin, userId);
        }
        if (userRestrictionSource != 4) {
            return true;
        }
        return !isProfileOwner(admin, userId);
    }

    public boolean switchUser(ComponentName who, UserHandle userHandle) {
        boolean zSwitchUser;
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -2);
            long id = this.mInjector.binderClearCallingIdentity();
            int userId = 0;
            if (userHandle != null) {
                try {
                    try {
                        userId = userHandle.getIdentifier();
                    } catch (RemoteException e) {
                        Log.e(LOG_TAG, "Couldn't switch user", e);
                        this.mInjector.binderRestoreCallingIdentity(id);
                        return false;
                    }
                } catch (Throwable th) {
                    this.mInjector.binderRestoreCallingIdentity(id);
                    throw th;
                }
            }
            zSwitchUser = this.mInjector.getIActivityManager().switchUser(userId);
            this.mInjector.binderRestoreCallingIdentity(id);
        }
        return zSwitchUser;
    }

    public int startUserInBackground(ComponentName who, UserHandle userHandle) {
        Objects.requireNonNull(who, "ComponentName is null");
        Objects.requireNonNull(userHandle, "UserHandle is null");
        enforceDeviceOwner(who);
        int userId = userHandle.getIdentifier();
        if (isManagedProfile(userId)) {
            Log.w(LOG_TAG, "Managed profile cannot be started in background");
            return 2;
        }
        long id = this.mInjector.binderClearCallingIdentity();
        try {
            if (!this.mInjector.getActivityManagerInternal().canStartMoreUsers()) {
                Log.w(LOG_TAG, "Cannot start more users in background");
                this.mInjector.binderRestoreCallingIdentity(id);
                return 3;
            }
            if (this.mInjector.getIActivityManager().startUserInBackground(userId)) {
                this.mInjector.binderRestoreCallingIdentity(id);
                return 0;
            }
            this.mInjector.binderRestoreCallingIdentity(id);
            return 1;
        } catch (RemoteException e) {
            this.mInjector.binderRestoreCallingIdentity(id);
            return 1;
        } catch (Throwable th) {
            this.mInjector.binderRestoreCallingIdentity(id);
            throw th;
        }
    }

    public int stopUser(ComponentName who, UserHandle userHandle) {
        Objects.requireNonNull(who, "ComponentName is null");
        Objects.requireNonNull(userHandle, "UserHandle is null");
        enforceDeviceOwner(who);
        int userId = userHandle.getIdentifier();
        if (isManagedProfile(userId)) {
            Log.w(LOG_TAG, "Managed profile cannot be stopped");
            return 2;
        }
        return stopUserUnchecked(userId);
    }

    public int logoutUser(ComponentName who) {
        Objects.requireNonNull(who, "ComponentName is null");
        int callingUserId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            if (!isUserAffiliatedWithDeviceLocked(callingUserId)) {
                throw new SecurityException("Admin " + who + " is neither the device owner or affiliated user's profile owner.");
            }
        }
        if (isManagedProfile(callingUserId)) {
            Log.w(LOG_TAG, "Managed profile cannot be logout");
            return 2;
        }
        long id = this.mInjector.binderClearCallingIdentity();
        try {
            if (this.mInjector.getIActivityManager().switchUser(0)) {
                return stopUserUnchecked(callingUserId);
            }
            Log.w(LOG_TAG, "Failed to switch to primary user");
            return 1;
        } catch (RemoteException e) {
            return 1;
        } finally {
            this.mInjector.binderRestoreCallingIdentity(id);
        }
    }

    private int stopUserUnchecked(int userId) {
        long id = this.mInjector.binderClearCallingIdentity();
        try {
            int iStopUser = this.mInjector.getIActivityManager().stopUser(userId, true, (IStopUserCallback) null);
            if (iStopUser == -2) {
                this.mInjector.binderRestoreCallingIdentity(id);
                return 4;
            }
            if (iStopUser != 0) {
                this.mInjector.binderRestoreCallingIdentity(id);
                return 1;
            }
            this.mInjector.binderRestoreCallingIdentity(id);
            return 0;
        } catch (RemoteException e) {
            this.mInjector.binderRestoreCallingIdentity(id);
            return 1;
        } catch (Throwable th) {
            this.mInjector.binderRestoreCallingIdentity(id);
            throw th;
        }
    }

    public List<UserHandle> getSecondaryUsers(ComponentName who) {
        Objects.requireNonNull(who, "ComponentName is null");
        enforceDeviceOwner(who);
        return (List) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$v6ysSfg9A-OdF3DKN_5-eHYZcfg
            public final Object getOrThrow() {
                return this.f$0.lambda$getSecondaryUsers$61$DevicePolicyManagerService();
            }
        });
    }

    public /* synthetic */ List lambda$getSecondaryUsers$61$DevicePolicyManagerService() throws Exception {
        List<UserInfo> userInfos = this.mInjector.getUserManager().getUsers(true);
        List<UserHandle> userHandles = new ArrayList<>();
        for (UserInfo userInfo : userInfos) {
            UserHandle userHandle = userInfo.getUserHandle();
            if (!userHandle.isSystem() && !isManagedProfile(userHandle.getIdentifier())) {
                userHandles.add(userInfo.getUserHandle());
            }
        }
        return userHandles;
    }

    public boolean isEphemeralUser(ComponentName who) {
        Objects.requireNonNull(who, "ComponentName is null");
        enforceProfileOrDeviceOwner(who);
        final int callingUserId = this.mInjector.userHandleGetCallingUserId();
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$NM277PNv78w1mkpB-avt411PSag
            public final Object getOrThrow() {
                return this.f$0.lambda$isEphemeralUser$62$DevicePolicyManagerService(callingUserId);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isEphemeralUser$62$DevicePolicyManagerService(int callingUserId) throws Exception {
        return Boolean.valueOf(this.mInjector.getUserManager().isUserEphemeral(callingUserId));
    }

    public Bundle getApplicationRestrictions(ComponentName who, String callerPackage, final String packageName) {
        enforceCanManageScope(who, callerPackage, -1, "delegation-app-restrictions");
        final UserHandle userHandle = this.mInjector.binderGetCallingUserHandle();
        return (Bundle) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$xNvmnuCEG4Pl75-HBeeIW-JURcQ
            public final Object getOrThrow() {
                return this.f$0.lambda$getApplicationRestrictions$63$DevicePolicyManagerService(packageName, userHandle);
            }
        });
    }

    public /* synthetic */ Bundle lambda$getApplicationRestrictions$63$DevicePolicyManagerService(String packageName, UserHandle userHandle) throws Exception {
        Bundle bundle = this.mUserManager.getApplicationRestrictions(packageName, userHandle);
        return bundle != null ? bundle : Bundle.EMPTY;
    }

    public String[] setPackagesSuspended(ComponentName who, String callerPackage, String[] packageNames, boolean suspended) {
        long id;
        int callingUserId = UserHandle.getCallingUserId();
        String[] result = null;
        synchronized (getLockObject()) {
            enforceCanManageScope(who, callerPackage, -1, "delegation-package-access");
            long id2 = this.mInjector.binderClearCallingIdentity();
            try {
                try {
                    result = this.mIPackageManager.setPackagesSuspendedAsUser(packageNames, suspended, (PersistableBundle) null, (PersistableBundle) null, (SuspendDialogInfo) null, PackageManagerService.PLATFORM_PACKAGE_NAME, callingUserId);
                    this.mInjector.binderRestoreCallingIdentity(id2);
                } catch (RemoteException e) {
                    re = e;
                    id = id2;
                    try {
                        Slog.e(LOG_TAG, "Failed talking to the package manager", re);
                        this.mInjector.binderRestoreCallingIdentity(id);
                    } catch (Throwable th) {
                        th = th;
                        this.mInjector.binderRestoreCallingIdentity(id);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    id = id2;
                    this.mInjector.binderRestoreCallingIdentity(id);
                    throw th;
                }
            } catch (RemoteException e2) {
                re = e2;
                id = id2;
            } catch (Throwable th3) {
                th = th3;
                id = id2;
            }
        }
        boolean isDelegate = who == null;
        DevicePolicyEventLogger.createEvent(68).setAdmin(callerPackage).setBoolean(isDelegate).setStrings(packageNames).write();
        return result != null ? result : packageNames;
    }

    public boolean isPackageSuspended(ComponentName who, String callerPackage, String packageName) {
        boolean zIsPackageSuspendedForUser;
        int callingUserId = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            enforceCanManageScope(who, callerPackage, -1, "delegation-package-access");
            long id = this.mInjector.binderClearCallingIdentity();
            try {
                try {
                    zIsPackageSuspendedForUser = this.mIPackageManager.isPackageSuspendedForUser(packageName, callingUserId);
                    this.mInjector.binderRestoreCallingIdentity(id);
                } catch (RemoteException re) {
                    Slog.e(LOG_TAG, "Failed talking to the package manager", re);
                    this.mInjector.binderRestoreCallingIdentity(id);
                    return false;
                }
            } catch (Throwable th) {
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
        }
        return zIsPackageSuspendedForUser;
    }

    public void setUserRestriction(ComponentName who, String key, boolean enabledFromThisOwner, boolean parent) {
        int eventId;
        int eventTag;
        Objects.requireNonNull(who, "ComponentName is null");
        if (!UserRestrictionsUtils.isValidRestriction(key)) {
            return;
        }
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin activeAdmin = getActiveAdminForCallerLocked(who, -1, parent);
            boolean isDeviceOwner = isDeviceOwner(who, userHandle);
            if (isDeviceOwner) {
                if (!UserRestrictionsUtils.canDeviceOwnerChange(key)) {
                    throw new SecurityException("Device owner cannot set user restriction " + key);
                }
                if (parent) {
                    throw new IllegalArgumentException("Cannot use the parent instance in Device Owner mode");
                }
            } else {
                boolean profileOwnerCanChangeOnItself = !parent && UserRestrictionsUtils.canProfileOwnerChange(key, userHandle);
                boolean orgOwnedProfileOwnerCanChangesGlobally = parent && isProfileOwnerOfOrganizationOwnedDevice(activeAdmin) && UserRestrictionsUtils.canProfileOwnerOfOrganizationOwnedDeviceChange(key);
                if (!profileOwnerCanChangeOnItself && !orgOwnedProfileOwnerCanChangesGlobally) {
                    throw new SecurityException("Profile owner cannot set user restriction " + key);
                }
            }
            Bundle restrictions = activeAdmin.ensureUserRestrictions();
            if (enabledFromThisOwner) {
                restrictions.putBoolean(key, true);
            } else {
                restrictions.remove(key);
            }
            saveUserRestrictionsLocked(userHandle);
        }
        if (enabledFromThisOwner) {
            eventId = 12;
        } else {
            eventId = 13;
        }
        DevicePolicyEventLogger admin = DevicePolicyEventLogger.createEvent(eventId).setAdmin(who);
        String[] strArr = new String[2];
        strArr[0] = key;
        strArr[1] = parent ? CALLED_FROM_PARENT : NOT_CALLED_FROM_PARENT;
        admin.setStrings(strArr).write();
        if (SecurityLog.isLoggingEnabled()) {
            if (enabledFromThisOwner) {
                eventTag = 210027;
            } else {
                eventTag = 210028;
            }
            SecurityLog.writeEvent(eventTag, new Object[]{who.getPackageName(), Integer.valueOf(userHandle), key});
        }
    }

    private void saveUserRestrictionsLocked(int userId) {
        saveSettingsLocked(userId);
        pushUserRestrictions(userId);
        sendChangedNotification(userId);
    }

    private void pushUserRestrictions(int originatingUserId) {
        Bundle global;
        RestrictionsSet local = new RestrictionsSet();
        synchronized (getLockObject()) {
            boolean isDeviceOwner = this.mOwners.isDeviceOwnerUserId(originatingUserId);
            if (isDeviceOwner) {
                ActiveAdmin deviceOwner = getDeviceOwnerAdminLocked();
                if (deviceOwner == null) {
                    return;
                }
                global = deviceOwner.getGlobalUserRestrictions(0);
                local.updateRestrictions(originatingUserId, deviceOwner.getLocalUserRestrictions(0));
            } else {
                ActiveAdmin profileOwner = getProfileOwnerAdminLocked(originatingUserId);
                if (profileOwner == null) {
                    return;
                }
                global = profileOwner.getGlobalUserRestrictions(1);
                local.updateRestrictions(originatingUserId, profileOwner.getLocalUserRestrictions(1));
                if (isProfileOwnerOfOrganizationOwnedDevice(profileOwner.getUserHandle().getIdentifier())) {
                    UserRestrictionsUtils.merge(global, profileOwner.getParentActiveAdmin().getGlobalUserRestrictions(2));
                    local.updateRestrictions(getProfileParentId(profileOwner.getUserHandle().getIdentifier()), profileOwner.getParentActiveAdmin().getLocalUserRestrictions(2));
                }
            }
            this.mUserManagerInternal.setDevicePolicyUserRestrictions(originatingUserId, global, local, isDeviceOwner);
        }
    }

    public Bundle getUserRestrictions(ComponentName who, boolean parent) {
        Bundle bundle;
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin activeAdmin = getActiveAdminForCallerLocked(who, -1, parent);
            if (parent) {
                enforceProfileOwnerOfOrganizationOwnedDevice(activeAdmin);
            }
            bundle = activeAdmin.userRestrictions;
        }
        return bundle;
    }

    public boolean setApplicationHidden(ComponentName who, String callerPackage, final String packageName, final boolean hidden, boolean parent) {
        boolean result;
        final int userId = parent ? getProfileParentId(UserHandle.getCallingUserId()) : UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            enforceCanManageScope(who, callerPackage, -1, "delegation-package-access");
            if (parent) {
                getActiveAdminForCallerLocked(who, -3, parent);
                this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$b6dFLQOqF0sBfbo4jm2WLvHzgLU
                    public final void runOrThrow() throws Exception {
                        this.f$0.lambda$setApplicationHidden$64$DevicePolicyManagerService(packageName, userId);
                    }
                });
            }
            result = ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$3igxJWr-9JHbbBQIhu3oSje6LfI
                public final Object getOrThrow() {
                    return this.f$0.lambda$setApplicationHidden$65$DevicePolicyManagerService(packageName, hidden, userId);
                }
            })).booleanValue();
        }
        boolean isDelegate = who == null;
        DevicePolicyEventLogger devicePolicyEventLogger = DevicePolicyEventLogger.createEvent(63).setAdmin(callerPackage).setBoolean(isDelegate);
        String[] strArr = new String[3];
        strArr[0] = packageName;
        strArr[1] = hidden ? "hidden" : "not_hidden";
        strArr[2] = parent ? CALLED_FROM_PARENT : NOT_CALLED_FROM_PARENT;
        devicePolicyEventLogger.setStrings(strArr).write();
        return result;
    }

    public /* synthetic */ Boolean lambda$setApplicationHidden$65$DevicePolicyManagerService(String packageName, boolean hidden, int userId) throws Exception {
        return Boolean.valueOf(this.mIPackageManager.setApplicationHiddenSettingAsUser(packageName, hidden, userId));
    }

    public boolean isApplicationHidden(ComponentName who, String callerPackage, final String packageName, boolean parent) {
        boolean zBooleanValue;
        final int userId = parent ? getProfileParentId(UserHandle.getCallingUserId()) : UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            enforceCanManageScope(who, callerPackage, -1, "delegation-package-access");
            if (parent) {
                getActiveAdminForCallerLocked(who, -3, parent);
                this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$8c01T1VfrA2f17KUyVPH5I2iY84
                    public final void runOrThrow() throws Exception {
                        this.f$0.lambda$isApplicationHidden$66$DevicePolicyManagerService(packageName, userId);
                    }
                });
            }
            zBooleanValue = ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$83mxXqMA5j-vl407oK1-5dzIjT8
                public final Object getOrThrow() {
                    return this.f$0.lambda$isApplicationHidden$67$DevicePolicyManagerService(packageName, userId);
                }
            })).booleanValue();
        }
        return zBooleanValue;
    }

    public /* synthetic */ Boolean lambda$isApplicationHidden$67$DevicePolicyManagerService(String packageName, int userId) throws Exception {
        return Boolean.valueOf(this.mIPackageManager.getApplicationHiddenSettingAsUser(packageName, userId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: enforcePackageIsSystemPackage, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$setApplicationHidden$64$DevicePolicyManagerService(String packageName, int userId) throws RemoteException {
        boolean isSystem;
        try {
            isSystem = isSystemApp(this.mIPackageManager, packageName, userId);
        } catch (IllegalArgumentException e) {
            isSystem = false;
        }
        if (!isSystem) {
            throw new IllegalArgumentException("The provided package is not a system package");
        }
    }

    public void enableSystemApp(ComponentName who, String callerPackage, String packageName) {
        Injector injector;
        synchronized (getLockObject()) {
            enforceCanManageScope(who, callerPackage, -1, "delegation-enable-system-app");
            boolean isDemo = isCurrentUserDemo();
            int userId = UserHandle.getCallingUserId();
            long id = this.mInjector.binderClearCallingIdentity();
            try {
                try {
                    int parentUserId = getProfileParentId(userId);
                    if (!isDemo && !isSystemApp(this.mIPackageManager, packageName, parentUserId)) {
                        throw new IllegalArgumentException("Only system apps can be enabled this way.");
                    }
                    this.mIPackageManager.installExistingPackageAsUser(packageName, userId, 4194304, 1, (List) null);
                    if (isDemo) {
                        this.mIPackageManager.setApplicationEnabledSetting(packageName, 1, 1, userId, LOG_TAG);
                    }
                    injector = this.mInjector;
                } catch (RemoteException re) {
                    Slog.wtf(LOG_TAG, "Failed to install " + packageName, re);
                    injector = this.mInjector;
                }
                injector.binderRestoreCallingIdentity(id);
            } catch (Throwable th) {
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
        }
        boolean isDelegate = who == null;
        DevicePolicyEventLogger.createEvent(64).setAdmin(callerPackage).setBoolean(isDelegate).setStrings(new String[]{packageName}).write();
    }

    public int enableSystemAppWithIntent(ComponentName who, String callerPackage, Intent intent) {
        int numberOfAppsInstalled = 0;
        synchronized (getLockObject()) {
            try {
                enforceCanManageScope(who, callerPackage, -1, "delegation-enable-system-app");
                int userId = UserHandle.getCallingUserId();
                long id = this.mInjector.binderClearCallingIdentity();
                try {
                    try {
                        int parentUserId = getProfileParentId(userId);
                        List<ResolveInfo> activitiesToEnable = this.mIPackageManager.queryIntentActivities(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 786432, parentUserId).getList();
                        if (activitiesToEnable != null) {
                            for (ResolveInfo info : activitiesToEnable) {
                                if (info.activityInfo != null) {
                                    String packageName = info.activityInfo.packageName;
                                    if (isSystemApp(this.mIPackageManager, packageName, parentUserId)) {
                                        numberOfAppsInstalled++;
                                        this.mIPackageManager.installExistingPackageAsUser(packageName, userId, 4194304, 1, (List) null);
                                    } else {
                                        Slog.d(LOG_TAG, "Not enabling " + packageName + " since is not a system app");
                                    }
                                }
                            }
                        }
                        this.mInjector.binderRestoreCallingIdentity(id);
                    } catch (RemoteException e) {
                        Slog.wtf(LOG_TAG, "Failed to resolve intent for: " + intent);
                        this.mInjector.binderRestoreCallingIdentity(id);
                        return 0;
                    }
                } catch (Throwable th) {
                    this.mInjector.binderRestoreCallingIdentity(id);
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        boolean isDelegate = who == null;
        DevicePolicyEventLogger.createEvent(65).setAdmin(callerPackage).setBoolean(isDelegate).setStrings(new String[]{intent.getAction()}).write();
        return numberOfAppsInstalled;
    }

    private boolean isSystemApp(IPackageManager pm, String packageName, int userId) throws RemoteException {
        ApplicationInfo appInfo = pm.getApplicationInfo(packageName, 8192, userId);
        if (appInfo != null) {
            return (appInfo.flags & 1) != 0;
        }
        throw new IllegalArgumentException("The application " + packageName + " is not present on this device");
    }

    public boolean installExistingPackage(ComponentName who, String callerPackage, String packageName) {
        boolean result;
        synchronized (getLockObject()) {
            enforceCanManageScope(who, callerPackage, -1, "delegation-install-existing-package");
            int callingUserId = this.mInjector.userHandleGetCallingUserId();
            if (!isUserAffiliatedWithDeviceLocked(callingUserId)) {
                throw new SecurityException("Admin " + who + " is neither the device owner or affiliated user's profile owner.");
            }
            long id = this.mInjector.binderClearCallingIdentity();
            try {
                result = this.mIPackageManager.installExistingPackageAsUser(packageName, callingUserId, 4194304, 1, (List) null) == 1;
                this.mInjector.binderRestoreCallingIdentity(id);
            } catch (RemoteException e) {
                this.mInjector.binderRestoreCallingIdentity(id);
                return false;
            } catch (Throwable th) {
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
        }
        if (result) {
            boolean isDelegate = who == null;
            DevicePolicyEventLogger.createEvent(66).setAdmin(callerPackage).setBoolean(isDelegate).setStrings(new String[]{packageName}).write();
        }
        return result;
    }

    public void setAccountManagementDisabled(ComponentName who, String accountType, boolean disabled, boolean parent) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceMaxStringLength(accountType, "account type");
        synchronized (getLockObject()) {
            ActiveAdmin ap = getActiveAdminForCallerLocked(who, parent ? -3 : -1, parent);
            if (disabled) {
                ap.accountTypesWithManagementDisabled.add(accountType);
            } else {
                ap.accountTypesWithManagementDisabled.remove(accountType);
            }
            saveSettingsLocked(UserHandle.getCallingUserId());
        }
    }

    public String[] getAccountTypesWithManagementDisabled() {
        return getAccountTypesWithManagementDisabledAsUser(UserHandle.getCallingUserId(), false);
    }

    public String[] getAccountTypesWithManagementDisabledAsUser(int userId, boolean parent) {
        String[] strArr;
        enforceFullCrossUsersPermission(userId);
        if (!this.mHasFeature) {
            return null;
        }
        synchronized (getLockObject()) {
            ArraySet<String> resultSet = new ArraySet<>();
            if (!parent) {
                DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
                for (ActiveAdmin admin : policy.mAdminList) {
                    resultSet.addAll(admin.accountTypesWithManagementDisabled);
                }
            }
            ActiveAdmin orgOwnedAdmin = getProfileOwnerOfOrganizationOwnedDeviceLocked(userId);
            boolean shouldGetParentAccounts = orgOwnedAdmin != null && (parent || UserHandle.getUserId(orgOwnedAdmin.getUid()) != userId);
            if (shouldGetParentAccounts) {
                resultSet.addAll(orgOwnedAdmin.getParentActiveAdmin().accountTypesWithManagementDisabled);
            }
            strArr = (String[]) resultSet.toArray(new String[resultSet.size()]);
        }
        return strArr;
    }

    public void setUninstallBlocked(ComponentName who, String callerPackage, String packageName, boolean uninstallBlocked) {
        Injector injector;
        int userId = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            enforceCanManageScope(who, callerPackage, -1, "delegation-block-uninstall");
            long id = this.mInjector.binderClearCallingIdentity();
            try {
                try {
                    this.mIPackageManager.setBlockUninstallForUser(packageName, uninstallBlocked, userId);
                    injector = this.mInjector;
                } catch (RemoteException re) {
                    Slog.e(LOG_TAG, "Failed to setBlockUninstallForUser", re);
                    injector = this.mInjector;
                }
                injector.binderRestoreCallingIdentity(id);
            } catch (Throwable th) {
                this.mInjector.binderRestoreCallingIdentity(id);
                throw th;
            }
        }
        if (uninstallBlocked) {
            PackageManagerInternal pmi = this.mInjector.getPackageManagerInternal();
            pmi.removeNonSystemPackageSuspensions(packageName, userId);
            pmi.removeDistractingPackageRestrictions(packageName, userId);
            pmi.flushPackageRestrictions(userId);
        }
        boolean isDelegate = who == null;
        DevicePolicyEventLogger.createEvent(67).setAdmin(callerPackage).setBoolean(isDelegate).setStrings(new String[]{packageName}).write();
    }

    public boolean isUninstallBlocked(ComponentName who, String packageName) {
        long id;
        boolean blockUninstallForUser;
        int userId = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            if (who != null) {
                getActiveAdminForCallerLocked(who, -1);
                id = this.mInjector.binderClearCallingIdentity();
                try {
                    try {
                        blockUninstallForUser = this.mIPackageManager.getBlockUninstallForUser(packageName, userId);
                        this.mInjector.binderRestoreCallingIdentity(id);
                    } catch (RemoteException re) {
                        Slog.e(LOG_TAG, "Failed to getBlockUninstallForUser", re);
                        this.mInjector.binderRestoreCallingIdentity(id);
                        return false;
                    }
                } catch (Throwable th) {
                    this.mInjector.binderRestoreCallingIdentity(id);
                    throw th;
                }
            } else {
                id = this.mInjector.binderClearCallingIdentity();
                blockUninstallForUser = this.mIPackageManager.getBlockUninstallForUser(packageName, userId);
                this.mInjector.binderRestoreCallingIdentity(id);
            }
            throw th;
        }
        return blockUninstallForUser;
    }

    public void setCrossProfileCallerIdDisabled(ComponentName who, boolean disabled) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            if (admin.disableCallerId != disabled) {
                admin.disableCallerId = disabled;
                saveSettingsLocked(this.mInjector.userHandleGetCallingUserId());
            }
        }
        DevicePolicyEventLogger.createEvent(46).setAdmin(who).setBoolean(disabled).write();
    }

    public boolean getCrossProfileCallerIdDisabled(ComponentName who) {
        boolean z;
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            z = admin.disableCallerId;
        }
        return z;
    }

    public boolean getCrossProfileCallerIdDisabledForUser(int userId) {
        boolean z;
        enforceCrossUsersPermission(userId);
        synchronized (getLockObject()) {
            ActiveAdmin admin = getProfileOwnerAdminLocked(userId);
            z = admin != null ? admin.disableCallerId : false;
        }
        return z;
    }

    public void setCrossProfileContactsSearchDisabled(ComponentName who, boolean disabled) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            if (admin.disableContactsSearch != disabled) {
                admin.disableContactsSearch = disabled;
                saveSettingsLocked(this.mInjector.userHandleGetCallingUserId());
            }
        }
        DevicePolicyEventLogger.createEvent(45).setAdmin(who).setBoolean(disabled).write();
    }

    public boolean getCrossProfileContactsSearchDisabled(ComponentName who) {
        boolean z;
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            z = admin.disableContactsSearch;
        }
        return z;
    }

    public boolean getCrossProfileContactsSearchDisabledForUser(int userId) {
        boolean z;
        enforceCrossUsersPermission(userId);
        synchronized (getLockObject()) {
            ActiveAdmin admin = getProfileOwnerAdminLocked(userId);
            z = admin != null ? admin.disableContactsSearch : false;
        }
        return z;
    }

    public void startManagedQuickContact(String actualLookupKey, long actualContactId, boolean isContactIdIgnored, long actualDirectoryId, Intent originalIntent) {
        final Intent intent = ContactsContract.QuickContact.rebuildManagedQuickContactsIntent(actualLookupKey, actualContactId, isContactIdIgnored, actualDirectoryId, originalIntent);
        final int callingUserId = UserHandle.getCallingUserId();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$IA51YIZQ09ey9aTtvnl0DivINic
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$startManagedQuickContact$68$DevicePolicyManagerService(callingUserId, intent);
            }
        });
    }

    public /* synthetic */ void lambda$startManagedQuickContact$68$DevicePolicyManagerService(int callingUserId, Intent intent) throws Exception {
        synchronized (getLockObject()) {
            int managedUserId = getManagedUserId(callingUserId);
            if (managedUserId < 0) {
                return;
            }
            if (isCrossProfileQuickContactDisabled(managedUserId)) {
                return;
            }
            ContactsInternal.startQuickContactWithErrorToastForUser(this.mContext, intent, new UserHandle(managedUserId));
        }
    }

    private boolean isCrossProfileQuickContactDisabled(int userId) {
        return getCrossProfileCallerIdDisabledForUser(userId) && getCrossProfileContactsSearchDisabledForUser(userId);
    }

    public int getManagedUserId(int callingUserId) {
        for (UserInfo ui : this.mUserManager.getProfiles(callingUserId)) {
            if (ui.id != callingUserId && ui.isManagedProfile()) {
                return ui.id;
            }
        }
        return -1;
    }

    public void setBluetoothContactSharingDisabled(ComponentName who, boolean disabled) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            if (admin.disableBluetoothContactSharing != disabled) {
                admin.disableBluetoothContactSharing = disabled;
                saveSettingsLocked(UserHandle.getCallingUserId());
            }
        }
        DevicePolicyEventLogger.createEvent(47).setAdmin(who).setBoolean(disabled).write();
    }

    public boolean getBluetoothContactSharingDisabled(ComponentName who) {
        boolean z;
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            z = admin.disableBluetoothContactSharing;
        }
        return z;
    }

    public boolean getBluetoothContactSharingDisabledForUser(int userId) {
        boolean z;
        synchronized (getLockObject()) {
            ActiveAdmin admin = getProfileOwnerAdminLocked(userId);
            z = admin != null ? admin.disableBluetoothContactSharing : false;
        }
        return z;
    }

    public void setSecondaryLockscreenEnabled(ComponentName who, boolean enabled) {
        enforceCanSetSecondaryLockscreenEnabled(who);
        synchronized (getLockObject()) {
            int userId = this.mInjector.userHandleGetCallingUserId();
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
            policy.mSecondaryLockscreenEnabled = enabled;
            saveSettingsLocked(userId);
        }
    }

    public boolean isSecondaryLockscreenEnabled(UserHandle userHandle) {
        boolean z;
        synchronized (getLockObject()) {
            z = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle.getIdentifier()).mSecondaryLockscreenEnabled;
        }
        return z;
    }

    private void enforceCanSetSecondaryLockscreenEnabled(ComponentName who) {
        enforceProfileOrDeviceOwner(who);
        int userId = this.mInjector.userHandleGetCallingUserId();
        if (isManagedProfile(userId)) {
            throw new SecurityException("User " + userId + " is not allowed to call setSecondaryLockscreenEnabled");
        }
        String supervisor = this.mContext.getResources().getString(R.string.config_dozeComponent);
        if (supervisor == null) {
            throw new SecurityException("Unable to set secondary lockscreen setting, no default supervision component defined");
        }
        ComponentName supervisorComponent = ComponentName.unflattenFromString(supervisor);
        if (!who.equals(supervisorComponent)) {
            throw new SecurityException("Admin " + who + " is not the default supervision component");
        }
    }

    public void setLockTaskPackages(ComponentName who, String[] packages) throws SecurityException {
        Objects.requireNonNull(who, "ComponentName is null");
        Objects.requireNonNull(packages, "packages is null");
        for (String pkg : packages) {
            enforceMaxPackageNameLength(pkg);
        }
        synchronized (getLockObject()) {
            enforceCanCallLockTaskLocked(who);
            int userHandle = this.mInjector.userHandleGetCallingUserId();
            setLockTaskPackagesLocked(userHandle, new ArrayList(Arrays.asList(packages)));
        }
    }

    private void setLockTaskPackagesLocked(int userHandle, List<String> packages) {
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        policy.mLockTaskPackages = packages;
        saveSettingsLocked(userHandle);
        updateLockTaskPackagesLocked(packages, userHandle);
    }

    public String[] getLockTaskPackages(ComponentName who) {
        String[] strArr;
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = this.mInjector.binderGetCallingUserHandle().getIdentifier();
        synchronized (getLockObject()) {
            enforceCanCallLockTaskLocked(who);
            List<String> packages = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle).mLockTaskPackages;
            strArr = (String[]) packages.toArray(new String[packages.size()]);
        }
        return strArr;
    }

    public boolean isLockTaskPermitted(String pkg) {
        boolean zContains;
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            zContains = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle).mLockTaskPackages.contains(pkg);
        }
        return zContains;
    }

    public void setLockTaskFeatures(ComponentName who, int flags) {
        Objects.requireNonNull(who, "ComponentName is null");
        boolean z = true;
        boolean hasHome = (flags & 4) != 0;
        boolean hasOverview = (flags & 8) != 0;
        Preconditions.checkArgument(hasHome || !hasOverview, "Cannot use LOCK_TASK_FEATURE_OVERVIEW without LOCK_TASK_FEATURE_HOME");
        boolean hasNotification = (flags & 2) != 0;
        if (!hasHome && hasNotification) {
            z = false;
        }
        Preconditions.checkArgument(z, "Cannot use LOCK_TASK_FEATURE_NOTIFICATIONS without LOCK_TASK_FEATURE_HOME");
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            enforceCanCallLockTaskLocked(who);
            setLockTaskFeaturesLocked(userHandle, flags);
        }
    }

    private void setLockTaskFeaturesLocked(int userHandle, int flags) {
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        policy.mLockTaskFeatures = flags;
        saveSettingsLocked(userHandle);
        updateLockTaskFeaturesLocked(flags, userHandle);
    }

    public int getLockTaskFeatures(ComponentName who) {
        int i;
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            enforceCanCallLockTaskLocked(who);
            i = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle).mLockTaskFeatures;
        }
        return i;
    }

    private void maybeClearLockTaskPolicyLocked() {
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$hUuh5dIc-N7BD7eJAxYBFdUSRRY
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$maybeClearLockTaskPolicyLocked$69$DevicePolicyManagerService();
            }
        });
    }

    public /* synthetic */ void lambda$maybeClearLockTaskPolicyLocked$69$DevicePolicyManagerService() throws Exception {
        List<UserInfo> userInfos = this.mUserManager.getUsers(true);
        for (int i = userInfos.size() - 1; i >= 0; i--) {
            int userId = userInfos.get(i).id;
            if (!canUserUseLockTaskLocked(userId)) {
                List<String> lockTaskPackages = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mLockTaskPackages;
                if (!lockTaskPackages.isEmpty()) {
                    Slog.d(LOG_TAG, "User id " + userId + " not affiliated. Clearing lock task packages");
                    setLockTaskPackagesLocked(userId, Collections.emptyList());
                }
                int lockTaskFeatures = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mLockTaskFeatures;
                if (lockTaskFeatures != 0) {
                    Slog.d(LOG_TAG, "User id " + userId + " not affiliated. Clearing lock task features");
                    setLockTaskFeaturesLocked(userId, 0);
                }
            }
        }
    }

    public void notifyLockTaskModeChanged(boolean isEnabled, String pkg, int userHandle) {
        enforceSystemCaller("call notifyLockTaskModeChanged");
        synchronized (getLockObject()) {
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            if (policy.mStatusBarDisabled) {
                setStatusBarDisabledInternal(!isEnabled, userHandle);
            }
            Bundle adminExtras = new Bundle();
            adminExtras.putString("android.app.extra.LOCK_TASK_PACKAGE", pkg);
            for (ActiveAdmin admin : policy.mAdminList) {
                boolean ownsDevice = isDeviceOwner(admin.info.getComponent(), userHandle);
                boolean ownsProfile = isProfileOwner(admin.info.getComponent(), userHandle);
                if (ownsDevice || ownsProfile) {
                    if (isEnabled) {
                        sendAdminCommandLocked(admin, "android.app.action.LOCK_TASK_ENTERING", adminExtras, (BroadcastReceiver) null);
                    } else {
                        sendAdminCommandLocked(admin, "android.app.action.LOCK_TASK_EXITING");
                    }
                    DevicePolicyEventLogger.createEvent(51).setAdmin(admin.info.getPackageName()).setBoolean(isEnabled).setStrings(new String[]{pkg}).write();
                }
            }
        }
    }

    public void setGlobalSetting(ComponentName who, final String setting, final String value) {
        Objects.requireNonNull(who, "ComponentName is null");
        DevicePolicyEventLogger.createEvent(111).setAdmin(who).setStrings(new String[]{setting, value}).write();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -2);
            if (GLOBAL_SETTINGS_DEPRECATED.contains(setting)) {
                Log.i(LOG_TAG, "Global setting no longer supported: " + setting);
                return;
            }
            if (!GLOBAL_SETTINGS_WHITELIST.contains(setting) && !UserManager.isDeviceInDemoMode(this.mContext)) {
                throw new SecurityException(String.format("Permission denial: device owners cannot update %1$s", setting));
            }
            if ("stay_on_while_plugged_in".equals(setting)) {
                long timeMs = getMaximumTimeToLock(who, this.mInjector.userHandleGetCallingUserId(), false);
                if (timeMs > 0 && timeMs < JobStatus.NO_LATEST_RUNTIME) {
                    return;
                }
            }
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$894ujN_qww_EpROjsVOC0YY5qx0
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setGlobalSetting$70$DevicePolicyManagerService(setting, value);
                }
            });
        }
    }

    public /* synthetic */ void lambda$setGlobalSetting$70$DevicePolicyManagerService(String setting, String value) throws Exception {
        this.mInjector.settingsGlobalPutString(setting, value);
    }

    public void setSystemSetting(ComponentName who, final String setting, final String value) {
        Objects.requireNonNull(who, "ComponentName is null");
        Preconditions.checkStringNotEmpty(setting, "String setting is null or empty");
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            if (!SYSTEM_SETTINGS_WHITELIST.contains(setting)) {
                throw new SecurityException(String.format("Permission denial: device owners cannot update %1$s", setting));
            }
            final int callingUserId = this.mInjector.userHandleGetCallingUserId();
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$dhvmeszm1pcQE1-YdsBo8p9c6wM
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setSystemSetting$71$DevicePolicyManagerService(setting, value, callingUserId);
                }
            });
        }
    }

    public /* synthetic */ void lambda$setSystemSetting$71$DevicePolicyManagerService(String setting, String value, int callingUserId) throws Exception {
        this.mInjector.settingsSystemPutStringForUser(setting, value, callingUserId);
    }

    public void setConfiguredNetworksLockdownState(ComponentName who, final boolean lockdown) {
        if (!this.mHasFeature) {
            return;
        }
        Preconditions.checkNotNull(who, "ComponentName is null");
        enforceDeviceOwnerOrProfileOwnerOnOrganizationOwnedDevice(who);
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$fJNAzCI3mwnUqZcVwOV9M87qqL4
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setConfiguredNetworksLockdownState$72$DevicePolicyManagerService(lockdown);
            }
        });
        DevicePolicyEventLogger.createEvent(CecMessageType.REPORT_PHYSICAL_ADDRESS).setAdmin(who).setBoolean(lockdown).write();
    }

    public /* synthetic */ void lambda$setConfiguredNetworksLockdownState$72$DevicePolicyManagerService(boolean z) throws Exception {
        this.mInjector.settingsGlobalPutInt("wifi_device_owner_configs_lockdown", z ? 1 : 0);
    }

    public boolean hasLockdownAdminConfiguredNetworks(ComponentName who) {
        if (!this.mHasFeature) {
            return false;
        }
        Preconditions.checkNotNull(who, "ComponentName is null");
        enforceDeviceOwnerOrProfileOwnerOnOrganizationOwnedDevice(who);
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$MIqKv-Yr1Kj270ONV0ilPWZmzHg
            public final Object getOrThrow() {
                return this.f$0.lambda$hasLockdownAdminConfiguredNetworks$73$DevicePolicyManagerService();
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$hasLockdownAdminConfiguredNetworks$73$DevicePolicyManagerService() throws Exception {
        return Boolean.valueOf(this.mInjector.settingsGlobalGetInt("wifi_device_owner_configs_lockdown", 0) > 0);
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    public void setLocationEnabled(ComponentName who, final boolean locationEnabled) {
        Objects.requireNonNull(who);
        enforceDeviceOwner(who);
        final UserHandle user = this.mInjector.binderGetCallingUserHandle();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$KMSC44D4g-vW3awRQ_VcGEjg-5Y
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setLocationEnabled$74$DevicePolicyManagerService(user, locationEnabled);
            }
        });
        DevicePolicyEventLogger admin = DevicePolicyEventLogger.createEvent(14).setAdmin(who);
        String[] strArr = new String[2];
        strArr[0] = "location_mode";
        strArr[1] = Integer.toString(locationEnabled ? 3 : 0);
        admin.setStrings(strArr).write();
    }

    public /* synthetic */ void lambda$setLocationEnabled$74$DevicePolicyManagerService(UserHandle user, boolean locationEnabled) throws Exception {
        boolean wasLocationEnabled = this.mInjector.getLocationManager().isLocationEnabledForUser(user);
        this.mInjector.getLocationManager().setLocationEnabledForUser(locationEnabled, user);
        if (locationEnabled && wasLocationEnabled != locationEnabled) {
            showLocationSettingsEnabledNotification(user);
        }
    }

    private void showLocationSettingsEnabledNotification(UserHandle user) {
        Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS").addFlags(AudioFormat.EVRC);
        ActivityInfo targetInfo = intent.resolveActivityInfo(this.mInjector.getPackageManager(user.getIdentifier()), 1048576);
        if (targetInfo != null) {
            intent.setComponent(targetInfo.getComponentName());
        } else {
            Slog.wtf(LOG_TAG, "Failed to resolve intent for location settings");
        }
        PendingIntent locationSettingsIntent = this.mInjector.pendingIntentGetActivityAsUser(this.mContext, 0, intent, AudioFormat.OPUS, null, user);
        Notification notification = new Notification.Builder(this.mContext, SystemNotificationChannels.DEVICE_ADMIN).setSmallIcon(R.drawable.ic_cab_done_holo_light).setContentTitle(this.mContext.getString(R.string.font_family_display_3_material)).setContentText(this.mContext.getString(R.string.font_family_display_2_material)).setColor(this.mContext.getColor(R.color.system_notification_accent_color)).setShowWhen(true).setContentIntent(locationSettingsIntent).setAutoCancel(true).build();
        this.mInjector.getNotificationManager().notify(59, notification);
    }

    public boolean setTime(ComponentName who, final long millis) {
        Objects.requireNonNull(who, "ComponentName is null in setTime");
        enforceDeviceOwnerOrProfileOwnerOnOrganizationOwnedDevice(who);
        if (this.mInjector.settingsGlobalGetInt("auto_time", 0) == 1) {
            return false;
        }
        DevicePolicyEventLogger.createEvent(CecMessageType.REQUEST_ACTIVE_SOURCE).setAdmin(who).write();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$7e4uuP4UTiA9RIuQFlKNKQAB9wo
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setTime$75$DevicePolicyManagerService(millis);
            }
        });
        return true;
    }

    public /* synthetic */ void lambda$setTime$75$DevicePolicyManagerService(long millis) throws Exception {
        this.mInjector.getAlarmManager().setTime(millis);
    }

    public boolean setTimeZone(ComponentName who, final String timeZone) {
        Objects.requireNonNull(who, "ComponentName is null in setTimeZone");
        enforceDeviceOwnerOrProfileOwnerOnOrganizationOwnedDevice(who);
        if (this.mInjector.settingsGlobalGetInt("auto_time_zone", 0) == 1) {
            return false;
        }
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$5qNMqBX-bLyhFvh65S8aJdYLXAM
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setTimeZone$76$DevicePolicyManagerService(timeZone);
            }
        });
        DevicePolicyEventLogger.createEvent(CecMessageType.SET_STREAM_PATH).setAdmin(who).write();
        return true;
    }

    public /* synthetic */ void lambda$setTimeZone$76$DevicePolicyManagerService(String timeZone) throws Exception {
        this.mInjector.getAlarmManager().setTimeZone(timeZone);
    }

    public void setSecureSetting(ComponentName who, final String setting, final String value) {
        Objects.requireNonNull(who, "ComponentName is null");
        final int callingUserId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            if (isDeviceOwner(who, callingUserId)) {
                if (!SECURE_SETTINGS_DEVICEOWNER_WHITELIST.contains(setting) && !isCurrentUserDemo()) {
                    throw new SecurityException(String.format("Permission denial: Device owners cannot update %1$s", setting));
                }
            } else if (!SECURE_SETTINGS_WHITELIST.contains(setting) && !isCurrentUserDemo()) {
                throw new SecurityException(String.format("Permission denial: Profile owners cannot update %1$s", setting));
            }
            if (setting.equals("location_mode") && isSetSecureSettingLocationModeCheckEnabled(who.getPackageName(), callingUserId)) {
                throw new UnsupportedOperationException("location_mode is deprecated. Please use setLocationEnabled() instead.");
            }
            if (setting.equals("install_non_market_apps")) {
                if (getTargetSdk(who.getPackageName(), callingUserId) >= 26) {
                    throw new UnsupportedOperationException("install_non_market_apps is deprecated. Please use one of the user restrictions no_install_unknown_sources or no_install_unknown_sources_globally instead.");
                }
                if (!this.mUserManager.isManagedProfile(callingUserId)) {
                    Slog.e(LOG_TAG, "Ignoring setSecureSetting request for " + setting + ". User restriction no_install_unknown_sources or no_install_unknown_sources_globally should be used instead.");
                } else {
                    try {
                        setUserRestriction(who, "no_install_unknown_sources", Integer.parseInt(value) == 0, false);
                        DevicePolicyEventLogger.createEvent(14).setAdmin(who).setStrings(new String[]{setting, value}).write();
                    } catch (NumberFormatException e) {
                        Slog.e(LOG_TAG, "Invalid value: " + value + " for setting " + setting);
                    }
                }
                return;
            }
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$1VPVEblQN9E9nRRmtfmNoNpYUZ4
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setSecureSetting$77$DevicePolicyManagerService(setting, callingUserId, value);
                }
            });
            DevicePolicyEventLogger.createEvent(14).setAdmin(who).setStrings(new String[]{setting, value}).write();
        }
    }

    public /* synthetic */ void lambda$setSecureSetting$77$DevicePolicyManagerService(String setting, int callingUserId, String value) throws Exception {
        if ("default_input_method".equals(setting)) {
            String currentValue = this.mInjector.settingsSecureGetStringForUser("default_input_method", callingUserId);
            if (!TextUtils.equals(currentValue, value)) {
                this.mSetupContentObserver.addPendingChangeByOwnerLocked(callingUserId);
            }
            lambda$getUserDataUnchecked$0$DevicePolicyManagerService(callingUserId).mCurrentInputMethodSet = true;
            saveSettingsLocked(callingUserId);
        }
        this.mInjector.settingsSecurePutStringForUser(setting, value, callingUserId);
        if (setting.equals("location_mode") && Integer.parseInt(value) != 0) {
            showLocationSettingsEnabledNotification(UserHandle.of(callingUserId));
        }
    }

    private boolean isSetSecureSettingLocationModeCheckEnabled(String packageName, int userId) {
        long ident = this.mInjector.binderClearCallingIdentity();
        try {
            return this.mIPlatformCompat.isChangeEnabledByPackageName(USE_SET_LOCATION_ENABLED, packageName, userId);
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Failed to get a response from PLATFORM_COMPAT_SERVICE", e);
            return getTargetSdk(packageName, userId) > 29;
        } finally {
            this.mInjector.binderRestoreCallingIdentity(ident);
        }
    }

    public void setMasterVolumeMuted(ComponentName who, boolean on) {
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            setUserRestriction(who, "disallow_unmute_device", on, false);
            DevicePolicyEventLogger.createEvent(35).setAdmin(who).setBoolean(on).write();
        }
    }

    public boolean isMasterVolumeMuted(ComponentName who) {
        boolean zIsMasterMute;
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            AudioManager audioManager = (AudioManager) this.mContext.getSystemService("audio");
            zIsMasterMute = audioManager.isMasterMute();
        }
        return zIsMasterMute;
    }

    public void setUserIcon(ComponentName who, final Bitmap icon) {
        synchronized (getLockObject()) {
            Objects.requireNonNull(who, "ComponentName is null");
            getActiveAdminForCallerLocked(who, -1);
            final int userId = UserHandle.getCallingUserId();
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$rgX-GNnoZT63e9X4mWS0Dsa6JtU
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setUserIcon$78$DevicePolicyManagerService(userId, icon);
                }
            });
        }
        DevicePolicyEventLogger.createEvent(41).setAdmin(who).write();
    }

    public /* synthetic */ void lambda$setUserIcon$78$DevicePolicyManagerService(int userId, Bitmap icon) throws Exception {
        this.mUserManagerInternal.setUserIcon(userId, icon);
    }

    public boolean setKeyguardDisabled(ComponentName who, boolean disabled) {
        Objects.requireNonNull(who, "ComponentName is null");
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            if (!isUserAffiliatedWithDeviceLocked(userId)) {
                throw new SecurityException("Admin " + who + " is neither the device owner or affiliated user's profile owner.");
            }
        }
        if (isManagedProfile(userId)) {
            throw new SecurityException("Managed profile cannot disable keyguard");
        }
        long ident = this.mInjector.binderClearCallingIdentity();
        if (disabled) {
            try {
                if (this.mLockPatternUtils.isSecure(userId)) {
                    this.mInjector.binderRestoreCallingIdentity(ident);
                    return false;
                }
            } catch (RemoteException e) {
            } catch (Throwable th) {
                this.mInjector.binderRestoreCallingIdentity(ident);
                throw th;
            }
        }
        this.mLockPatternUtils.setLockScreenDisabled(disabled, userId);
        if (disabled) {
            this.mInjector.getIWindowManager().dismissKeyguard((IKeyguardDismissCallback) null, (CharSequence) null);
        }
        DevicePolicyEventLogger.createEvent(37).setAdmin(who).setBoolean(disabled).write();
        this.mInjector.binderRestoreCallingIdentity(ident);
        return true;
    }

    public boolean setStatusBarDisabled(ComponentName who, boolean disabled) {
        int userId = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -1);
            if (!isUserAffiliatedWithDeviceLocked(userId)) {
                throw new SecurityException("Admin " + who + " is neither the device owner or affiliated user's profile owner.");
            }
            if (isManagedProfile(userId)) {
                throw new SecurityException("Managed profile cannot disable status bar");
            }
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
            if (policy.mStatusBarDisabled != disabled) {
                boolean isLockTaskMode = false;
                try {
                    isLockTaskMode = this.mInjector.getIActivityTaskManager().getLockTaskModeState() != 0;
                } catch (RemoteException e) {
                    Slog.e(LOG_TAG, "Failed to get LockTask mode");
                }
                if (!isLockTaskMode && !setStatusBarDisabledInternal(disabled, userId)) {
                    return false;
                }
                policy.mStatusBarDisabled = disabled;
                saveSettingsLocked(userId);
            }
            DevicePolicyEventLogger.createEvent(38).setAdmin(who).setBoolean(disabled).write();
            return true;
        }
    }

    private boolean setStatusBarDisabledInternal(boolean disabled, int userId) {
        long ident = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                IStatusBarService statusBarService = IStatusBarService.Stub.asInterface(ServiceManager.checkService(TAG_STATUS_BAR));
                if (statusBarService != null) {
                    int flags1 = disabled ? STATUS_BAR_DISABLE_MASK : 0;
                    int flags2 = disabled ? 1 : 0;
                    statusBarService.disableForUser(flags1, this.mToken, this.mContext.getPackageName(), userId);
                    statusBarService.disable2ForUser(flags2, this.mToken, this.mContext.getPackageName(), userId);
                    return true;
                }
            } catch (RemoteException e) {
                Slog.e(LOG_TAG, "Failed to disable the status bar", e);
            }
            return false;
        } finally {
            this.mInjector.binderRestoreCallingIdentity(ident);
        }
    }

    void updateUserSetupCompleteAndPaired() {
        List<UserInfo> users = this.mUserManager.getUsers(true);
        int N = users.size();
        for (int i = 0; i < N; i++) {
            int userHandle = users.get(i).id;
            if (this.mInjector.settingsSecureGetIntForUser("user_setup_complete", 0, userHandle) != 0) {
                DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
                if (!policy.mUserSetupComplete) {
                    policy.mUserSetupComplete = true;
                    if (userHandle == 0) {
                        this.mStateCache.setDeviceProvisioned(true);
                    }
                    synchronized (getLockObject()) {
                        saveSettingsLocked(userHandle);
                    }
                }
            }
            if (this.mIsWatch && this.mInjector.settingsSecureGetIntForUser("device_paired", 0, userHandle) != 0) {
                DevicePolicyData policy2 = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
                if (policy2.mPaired) {
                    continue;
                } else {
                    policy2.mPaired = true;
                    synchronized (getLockObject()) {
                        saveSettingsLocked(userHandle);
                    }
                }
            }
        }
    }

    private class SetupContentObserver extends ContentObserver {
        private final Uri mDefaultImeChanged;
        private final Uri mDeviceProvisioned;
        private final Uri mPaired;
        private Set<Integer> mUserIdsWithPendingChangesByOwner;
        private final Uri mUserSetupComplete;

        public SetupContentObserver(Handler handler) {
            super(handler);
            this.mUserSetupComplete = Settings.Secure.getUriFor("user_setup_complete");
            this.mDeviceProvisioned = Settings.Global.getUriFor("device_provisioned");
            this.mPaired = Settings.Secure.getUriFor("device_paired");
            this.mDefaultImeChanged = Settings.Secure.getUriFor("default_input_method");
            this.mUserIdsWithPendingChangesByOwner = new ArraySet();
        }

        void register() {
            DevicePolicyManagerService.this.mInjector.registerContentObserver(this.mUserSetupComplete, false, this, -1);
            DevicePolicyManagerService.this.mInjector.registerContentObserver(this.mDeviceProvisioned, false, this, -1);
            if (DevicePolicyManagerService.this.mIsWatch) {
                DevicePolicyManagerService.this.mInjector.registerContentObserver(this.mPaired, false, this, -1);
            }
            DevicePolicyManagerService.this.mInjector.registerContentObserver(this.mDefaultImeChanged, false, this, -1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addPendingChangeByOwnerLocked(int userId) {
            this.mUserIdsWithPendingChangesByOwner.add(Integer.valueOf(userId));
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            if (this.mUserSetupComplete.equals(uri) || (DevicePolicyManagerService.this.mIsWatch && this.mPaired.equals(uri))) {
                DevicePolicyManagerService.this.updateUserSetupCompleteAndPaired();
                return;
            }
            if (this.mDeviceProvisioned.equals(uri)) {
                synchronized (DevicePolicyManagerService.this.getLockObject()) {
                    DevicePolicyManagerService.this.setDeviceOwnershipSystemPropertyLocked();
                }
            } else if (this.mDefaultImeChanged.equals(uri)) {
                synchronized (DevicePolicyManagerService.this.getLockObject()) {
                    if (this.mUserIdsWithPendingChangesByOwner.contains(Integer.valueOf(userId))) {
                        this.mUserIdsWithPendingChangesByOwner.remove(Integer.valueOf(userId));
                    } else {
                        DevicePolicyManagerService.this.lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mCurrentInputMethodSet = false;
                        DevicePolicyManagerService.this.saveSettingsLocked(userId);
                    }
                }
            }
        }
    }

    private class DevicePolicyConstantsObserver extends ContentObserver {
        final Uri mConstantsUri;

        DevicePolicyConstantsObserver(Handler handler) {
            super(handler);
            this.mConstantsUri = Settings.Global.getUriFor("device_policy_constants");
        }

        void register() {
            DevicePolicyManagerService.this.mInjector.registerContentObserver(this.mConstantsUri, false, this, -1);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            DevicePolicyManagerService devicePolicyManagerService = DevicePolicyManagerService.this;
            devicePolicyManagerService.mConstants = devicePolicyManagerService.loadConstants();
        }
    }

    final class LocalService extends DevicePolicyManagerInternal {
        private List<DevicePolicyManagerInternal.OnCrossProfileWidgetProvidersChangeListener> mWidgetProviderListeners;

        LocalService() {
        }

        public List<String> getCrossProfileWidgetProviders(int profileId) {
            synchronized (DevicePolicyManagerService.this.getLockObject()) {
                if (DevicePolicyManagerService.this.mOwners == null) {
                    return Collections.emptyList();
                }
                ComponentName ownerComponent = DevicePolicyManagerService.this.mOwners.getProfileOwnerComponent(profileId);
                if (ownerComponent == null) {
                    return Collections.emptyList();
                }
                DevicePolicyData policy = DevicePolicyManagerService.this.getUserDataUnchecked(profileId);
                ActiveAdmin admin = policy.mAdminMap.get(ownerComponent);
                if (admin != null && admin.crossProfileWidgetProviders != null && !admin.crossProfileWidgetProviders.isEmpty()) {
                    return admin.crossProfileWidgetProviders;
                }
                return Collections.emptyList();
            }
        }

        public void addOnCrossProfileWidgetProvidersChangeListener(DevicePolicyManagerInternal.OnCrossProfileWidgetProvidersChangeListener listener) {
            synchronized (DevicePolicyManagerService.this.getLockObject()) {
                if (this.mWidgetProviderListeners == null) {
                    this.mWidgetProviderListeners = new ArrayList();
                }
                if (!this.mWidgetProviderListeners.contains(listener)) {
                    this.mWidgetProviderListeners.add(listener);
                }
            }
        }

        public ComponentName getProfileOwnerOrDeviceOwnerSupervisionComponent(UserHandle userHandle) {
            return DevicePolicyManagerService.this.getProfileOwnerOrDeviceOwnerSupervisionComponent(userHandle);
        }

        public boolean isActiveAdminWithPolicy(int uid, int reqPolicy) {
            boolean z;
            synchronized (DevicePolicyManagerService.this.getLockObject()) {
                z = DevicePolicyManagerService.this.getActiveAdminWithPolicyForUidLocked(null, reqPolicy, uid) != null;
            }
            return z;
        }

        public boolean isActiveSupervisionApp(int uid) {
            synchronized (DevicePolicyManagerService.this.getLockObject()) {
                ActiveAdmin admin = DevicePolicyManagerService.this.getActiveAdminWithPolicyForUidLocked(null, -1, uid);
                if (admin == null) {
                    return false;
                }
                String supervisionString = DevicePolicyManagerService.this.mContext.getResources().getString(R.string.config_dozeComponent);
                if (supervisionString == null) {
                    return false;
                }
                ComponentName supervisorComponent = ComponentName.unflattenFromString(supervisionString);
                return admin.info.getComponent().equals(supervisorComponent);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyCrossProfileProvidersChanged(int userId, List<String> packages) {
            List<DevicePolicyManagerInternal.OnCrossProfileWidgetProvidersChangeListener> listeners;
            synchronized (DevicePolicyManagerService.this.getLockObject()) {
                listeners = new ArrayList<>(this.mWidgetProviderListeners);
            }
            int listenerCount = listeners.size();
            for (int i = 0; i < listenerCount; i++) {
                DevicePolicyManagerInternal.OnCrossProfileWidgetProvidersChangeListener listener = listeners.get(i);
                listener.onCrossProfileWidgetProvidersChanged(userId, packages);
            }
        }

        public Intent createShowAdminSupportIntent(int userId, boolean useDefaultIfNoAdmin) {
            ComponentName profileOwner = DevicePolicyManagerService.this.mOwners.getProfileOwnerComponent(userId);
            if (profileOwner != null) {
                return DevicePolicyManagerService.this.createShowAdminSupportIntent(profileOwner, userId);
            }
            Pair<Integer, ComponentName> deviceOwner = DevicePolicyManagerService.this.mOwners.getDeviceOwnerUserIdAndComponent();
            if (deviceOwner != null && ((Integer) deviceOwner.first).intValue() == userId) {
                return DevicePolicyManagerService.this.createShowAdminSupportIntent((ComponentName) deviceOwner.second, userId);
            }
            if (useDefaultIfNoAdmin) {
                return DevicePolicyManagerService.this.createShowAdminSupportIntent(null, userId);
            }
            return null;
        }

        public Intent createUserRestrictionSupportIntent(int userId, String userRestriction) {
            long ident = DevicePolicyManagerService.this.mInjector.binderClearCallingIdentity();
            try {
                List<UserManager.EnforcingUser> sources = DevicePolicyManagerService.this.mUserManager.getUserRestrictionSources(userRestriction, UserHandle.of(userId));
                if (sources != null && !sources.isEmpty()) {
                    if (sources.size() > 1) {
                        return DevicePolicyManagerService.this.createShowAdminSupportIntent(null, userId);
                    }
                    UserManager.EnforcingUser enforcingUser = sources.get(0);
                    int sourceType = enforcingUser.getUserRestrictionSource();
                    int enforcingUserId = enforcingUser.getUserHandle().getIdentifier();
                    if (sourceType == 4) {
                        ComponentName profileOwner = DevicePolicyManagerService.this.mOwners.getProfileOwnerComponent(enforcingUserId);
                        if (profileOwner != null) {
                            return DevicePolicyManagerService.this.createShowAdminSupportIntent(profileOwner, enforcingUserId);
                        }
                    } else if (sourceType == 2) {
                        Pair<Integer, ComponentName> deviceOwner = DevicePolicyManagerService.this.mOwners.getDeviceOwnerUserIdAndComponent();
                        if (deviceOwner != null) {
                            return DevicePolicyManagerService.this.createShowAdminSupportIntent((ComponentName) deviceOwner.second, ((Integer) deviceOwner.first).intValue());
                        }
                    } else if (sourceType == 1) {
                        DevicePolicyManagerService.this.mInjector.binderRestoreCallingIdentity(ident);
                        return null;
                    }
                    return null;
                }
                return null;
            } finally {
                DevicePolicyManagerService.this.mInjector.binderRestoreCallingIdentity(ident);
            }
        }

        public boolean isUserAffiliatedWithDevice(int userId) {
            return DevicePolicyManagerService.this.isUserAffiliatedWithDeviceLocked(userId);
        }

        public boolean canSilentlyInstallPackage(String callerPackage, int callerUid) {
            if (callerPackage == null || !isUserAffiliatedWithDevice(UserHandle.getUserId(callerUid)) || !isActiveAdminWithPolicy(callerUid, -1)) {
                return false;
            }
            return true;
        }

        public void reportSeparateProfileChallengeChanged(final int userId) {
            DevicePolicyManagerService.this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$LocalService$YxQa4ZcUPWKs76meOLw1c_tn1OU
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$reportSeparateProfileChallengeChanged$0$DevicePolicyManagerService$LocalService(userId);
                }
            });
            DevicePolicyEventLogger.createEvent(110).setBoolean(DevicePolicyManagerService.this.isSeparateProfileChallengeEnabled(userId)).write();
        }

        public /* synthetic */ void lambda$reportSeparateProfileChallengeChanged$0$DevicePolicyManagerService$LocalService(int userId) throws Exception {
            synchronized (DevicePolicyManagerService.this.getLockObject()) {
                DevicePolicyManagerService.this.updateMaximumTimeToLockLocked(userId);
                DevicePolicyManagerService.this.updatePasswordQualityCacheForUserGroup(userId);
            }
        }

        public CharSequence getPrintingDisabledReasonForUser(int userId) {
            synchronized (DevicePolicyManagerService.this.getLockObject()) {
                if (!DevicePolicyManagerService.this.mUserManager.hasUserRestriction("no_printing", UserHandle.of(userId))) {
                    Log.e(DevicePolicyManagerService.LOG_TAG, "printing is enabled");
                    return null;
                }
                String ownerPackage = DevicePolicyManagerService.this.mOwners.getProfileOwnerPackage(userId);
                if (ownerPackage == null) {
                    ownerPackage = DevicePolicyManagerService.this.mOwners.getDeviceOwnerPackageName();
                }
                final String packageName = ownerPackage;
                final PackageManager pm = DevicePolicyManagerService.this.mInjector.getPackageManager();
                PackageInfo packageInfo = (PackageInfo) DevicePolicyManagerService.this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$LocalService$ba6AfSyqJmx_GvlIKBK-H5Jsypg
                    public final Object getOrThrow() {
                        return DevicePolicyManagerService.LocalService.lambda$getPrintingDisabledReasonForUser$1(pm, packageName);
                    }
                });
                if (packageInfo == null) {
                    Log.e(DevicePolicyManagerService.LOG_TAG, "packageInfo is inexplicably null");
                    return null;
                }
                ApplicationInfo appInfo = packageInfo.applicationInfo;
                if (appInfo == null) {
                    Log.e(DevicePolicyManagerService.LOG_TAG, "appInfo is inexplicably null");
                    return null;
                }
                CharSequence appLabel = pm.getApplicationLabel(appInfo);
                if (appLabel == null) {
                    Log.e(DevicePolicyManagerService.LOG_TAG, "appLabel is inexplicably null");
                    return null;
                }
                return ActivityThread.currentActivityThread().getSystemUiContext().getResources().getString(R.string.notification_phishing_alert_content_description, appLabel);
            }
        }

        static /* synthetic */ PackageInfo lambda$getPrintingDisabledReasonForUser$1(PackageManager pm, String packageName) throws Exception {
            try {
                return pm.getPackageInfo(packageName, 0);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(DevicePolicyManagerService.LOG_TAG, "getPackageInfo error", e);
                return null;
            }
        }

        protected DevicePolicyCache getDevicePolicyCache() {
            return DevicePolicyManagerService.this.mPolicyCache;
        }

        protected DeviceStateCache getDeviceStateCache() {
            return DevicePolicyManagerService.this.mStateCache;
        }

        public List<String> getAllCrossProfilePackages() {
            return DevicePolicyManagerService.this.getAllCrossProfilePackages();
        }

        public List<String> getDefaultCrossProfilePackages() {
            return DevicePolicyManagerService.this.getDefaultCrossProfilePackages();
        }

        public void broadcastIntentToCrossProfileManifestReceiversAsUser(Intent intent, UserHandle parentHandle, boolean requiresPermission) {
            Objects.requireNonNull(intent);
            Objects.requireNonNull(parentHandle);
            int userId = parentHandle.getIdentifier();
            Slog.i(DevicePolicyManagerService.LOG_TAG, String.format("Sending %s broadcast to manifest receivers.", intent.getAction()));
            try {
                List<ResolveInfo> receivers = DevicePolicyManagerService.this.mIPackageManager.queryIntentReceivers(intent, (String) null, 1024, parentHandle.getIdentifier()).getList();
                for (ResolveInfo receiver : receivers) {
                    String packageName = receiver.getComponentInfo().packageName;
                    if (checkCrossProfilePackagePermissions(packageName, userId, requiresPermission) || checkModifyQuietModePermission(packageName, userId)) {
                        Slog.i(DevicePolicyManagerService.LOG_TAG, String.format("Sending %s broadcast to %s.", intent.getAction(), packageName));
                        Intent packageIntent = new Intent(intent).setComponent(receiver.getComponentInfo().getComponentName()).addFlags(16777216);
                        DevicePolicyManagerService.this.mContext.sendBroadcastAsUser(packageIntent, parentHandle);
                    }
                }
            } catch (RemoteException ex) {
                Slog.w(DevicePolicyManagerService.LOG_TAG, String.format("Cannot get list of broadcast receivers for %s because: %s.", intent.getAction(), ex));
            }
        }

        private boolean checkModifyQuietModePermission(String packageName, int userId) {
            try {
                PackageManager packageManager = DevicePolicyManagerService.this.mInjector.getPackageManager();
                Objects.requireNonNull(packageName);
                ApplicationInfo applicationInfoAsUser = packageManager.getApplicationInfoAsUser(packageName, 0, userId);
                Objects.requireNonNull(applicationInfoAsUser);
                int uid = applicationInfoAsUser.uid;
                return ActivityManager.checkComponentPermission("android.permission.MODIFY_QUIET_MODE", uid, -1, true) == 0;
            } catch (PackageManager.NameNotFoundException e) {
                Slog.w(DevicePolicyManagerService.LOG_TAG, String.format("Cannot find the package %s to check for permissions.", packageName));
                return false;
            }
        }

        private boolean checkCrossProfilePackagePermissions(String packageName, int userId, boolean requiresPermission) {
            PackageManagerInternal pmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            AndroidPackage androidPackage = pmInternal.getPackage(packageName);
            if (androidPackage == null || !androidPackage.isCrossProfile()) {
                return false;
            }
            if (!requiresPermission) {
                return true;
            }
            if (!isPackageEnabled(packageName, userId)) {
                return false;
            }
            try {
                CrossProfileAppsInternal crossProfileAppsService = (CrossProfileAppsInternal) LocalServices.getService(CrossProfileAppsInternal.class);
                return crossProfileAppsService.verifyPackageHasInteractAcrossProfilePermission(packageName, userId);
            } catch (PackageManager.NameNotFoundException e) {
                Slog.w(DevicePolicyManagerService.LOG_TAG, String.format("Cannot find the package %s to check for permissions.", packageName));
                return false;
            }
        }

        private boolean isPackageEnabled(String packageName, int userId) {
            int callingUid = Binder.getCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                PackageInfo info = DevicePolicyManagerService.this.mInjector.getPackageManagerInternal().getPackageInfo(packageName, 786432, callingUid, userId);
                return info != null && info.applicationInfo.enabled;
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public ComponentName getProfileOwnerAsUser(int userHandle) {
            return DevicePolicyManagerService.this.getProfileOwnerAsUser(userHandle);
        }

        public boolean supportsResetOp(int op) {
            return op == 93 && LocalServices.getService(CrossProfileAppsInternal.class) != null;
        }

        public void resetOp(int op, String packageName, int userId) {
            if (op != 93) {
                throw new IllegalArgumentException("Unsupported op for DPM reset: " + op);
            }
            ((CrossProfileAppsInternal) LocalServices.getService(CrossProfileAppsInternal.class)).setInteractAcrossProfilesAppOp(packageName, findInteractAcrossProfilesResetMode(packageName), userId);
        }

        private int findInteractAcrossProfilesResetMode(String packageName) {
            if (getDefaultCrossProfilePackages().contains(packageName)) {
                return 0;
            }
            return AppOpsManager.opToDefaultMode(93);
        }

        public boolean isDeviceOrProfileOwnerInCallingUser(String packageName) {
            return isDeviceOwnerInCallingUser(packageName) || isProfileOwnerInCallingUser(packageName);
        }

        private boolean isDeviceOwnerInCallingUser(String packageName) {
            ComponentName deviceOwnerInCallingUser = DevicePolicyManagerService.this.getDeviceOwnerComponent(true);
            return deviceOwnerInCallingUser != null && packageName.equals(deviceOwnerInCallingUser.getPackageName());
        }

        private boolean isProfileOwnerInCallingUser(String packageName) {
            ComponentName profileOwnerInCallingUser = getProfileOwnerAsUser(UserHandle.getCallingUserId());
            return profileOwnerInCallingUser != null && packageName.equals(profileOwnerInCallingUser.getPackageName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent createShowAdminSupportIntent(ComponentName admin, int userId) {
        Intent intent = new Intent("android.settings.SHOW_ADMIN_SUPPORT_DETAILS");
        intent.putExtra("android.intent.extra.USER_ID", userId);
        intent.putExtra("android.app.extra.DEVICE_ADMIN", admin);
        intent.setFlags(AudioFormat.EVRC);
        return intent;
    }

    public Intent createAdminSupportIntent(String restriction) {
        ActiveAdmin admin;
        Objects.requireNonNull(restriction);
        int uid = this.mInjector.binderGetCallingUid();
        int userId = UserHandle.getUserId(uid);
        Intent intent = null;
        if ("policy_disable_camera".equals(restriction) || "policy_disable_screen_capture".equals(restriction)) {
            synchronized (getLockObject()) {
                DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
                int N = policy.mAdminList.size();
                for (int i = 0; i < N; i++) {
                    ActiveAdmin admin2 = policy.mAdminList.get(i);
                    if ((admin2.disableCamera && "policy_disable_camera".equals(restriction)) || (admin2.disableScreenCapture && "policy_disable_screen_capture".equals(restriction))) {
                        intent = createShowAdminSupportIntent(admin2.info.getComponent(), userId);
                        break;
                    }
                }
                if (intent == null && "policy_disable_camera".equals(restriction) && (admin = getDeviceOwnerAdminLocked()) != null && admin.disableCamera) {
                    intent = createShowAdminSupportIntent(admin.info.getComponent(), this.mOwners.getDeviceOwnerUserId());
                }
            }
        } else {
            intent = this.mLocalService.createUserRestrictionSupportIntent(userId, restriction);
        }
        if (intent != null) {
            intent.putExtra("android.app.extra.RESTRICTION", restriction);
        }
        return intent;
    }

    private static boolean isLimitPasswordAllowed(ActiveAdmin admin, int minPasswordQuality) {
        if (admin.mPasswordPolicy.quality < minPasswordQuality) {
            return false;
        }
        return admin.info.usesPolicy(0);
    }

    public void setSystemUpdatePolicy(ComponentName who, SystemUpdatePolicy policy) {
        if (policy != null) {
            policy.validateType();
            policy.validateFreezePeriods();
            Pair<LocalDate, LocalDate> record = this.mOwners.getSystemUpdateFreezePeriodRecord();
            policy.validateAgainstPreviousFreezePeriod((LocalDate) record.first, (LocalDate) record.second, LocalDate.now());
        }
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(who, -3);
            if (policy == null) {
                this.mOwners.clearSystemUpdatePolicy();
            } else {
                this.mOwners.setSystemUpdatePolicy(policy);
                updateSystemUpdateFreezePeriodsRecord(false);
            }
            this.mOwners.writeDeviceOwner();
        }
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$Z1LI9Lyl-wMUQtV1EQlCfsxUFP4
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$setSystemUpdatePolicy$79$DevicePolicyManagerService();
            }
        });
        DevicePolicyEventLogger.createEvent(50).setAdmin(who).setInt(policy != null ? policy.getPolicyType() : 0).write();
    }

    public /* synthetic */ void lambda$setSystemUpdatePolicy$79$DevicePolicyManagerService() throws Exception {
        this.mContext.sendBroadcastAsUser(new Intent("android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"), UserHandle.SYSTEM);
    }

    public SystemUpdatePolicy getSystemUpdatePolicy() {
        synchronized (getLockObject()) {
            SystemUpdatePolicy policy = this.mOwners.getSystemUpdatePolicy();
            if (policy == null || policy.isValid()) {
                return policy;
            }
            Slog.w(LOG_TAG, "Stored system update policy is invalid, return null instead.");
            return null;
        }
    }

    private static boolean withinRange(Pair<LocalDate, LocalDate> range, LocalDate date) {
        return (date.isBefore((ChronoLocalDate) range.first) || date.isAfter((ChronoLocalDate) range.second)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSystemUpdateFreezePeriodsRecord(boolean saveIfChanged) {
        boolean changed;
        Slog.d(LOG_TAG, "updateSystemUpdateFreezePeriodsRecord");
        synchronized (getLockObject()) {
            SystemUpdatePolicy policy = this.mOwners.getSystemUpdatePolicy();
            if (policy == null) {
                return;
            }
            LocalDate now = LocalDate.now();
            Pair<LocalDate, LocalDate> currentPeriod = policy.getCurrentFreezePeriod(now);
            if (currentPeriod == null) {
                return;
            }
            Pair<LocalDate, LocalDate> record = this.mOwners.getSystemUpdateFreezePeriodRecord();
            LocalDate start = (LocalDate) record.first;
            LocalDate end = (LocalDate) record.second;
            if (end == null || start == null) {
                changed = this.mOwners.setSystemUpdateFreezePeriodRecord(now, now);
            } else if (now.equals(end.plusDays(1L))) {
                changed = this.mOwners.setSystemUpdateFreezePeriodRecord(start, now);
            } else if (now.isAfter(end.plusDays(1L))) {
                if (withinRange(currentPeriod, start) && withinRange(currentPeriod, end)) {
                    changed = this.mOwners.setSystemUpdateFreezePeriodRecord(start, now);
                } else {
                    changed = this.mOwners.setSystemUpdateFreezePeriodRecord(now, now);
                }
            } else {
                boolean changed2 = now.isBefore(start);
                if (changed2) {
                    changed = this.mOwners.setSystemUpdateFreezePeriodRecord(now, now);
                } else {
                    changed = false;
                }
            }
            if (changed && saveIfChanged) {
                this.mOwners.writeDeviceOwner();
            }
        }
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    public void clearSystemUpdatePolicyFreezePeriodRecord() {
        enforceShell("clearSystemUpdatePolicyFreezePeriodRecord");
        synchronized (getLockObject()) {
            Slog.i(LOG_TAG, "Clear freeze period record: " + this.mOwners.getSystemUpdateFreezePeriodRecordAsString());
            if (this.mOwners.setSystemUpdateFreezePeriodRecord(null, null)) {
                this.mOwners.writeDeviceOwner();
            }
        }
    }

    boolean isCallerDeviceOwner(int callerUid) {
        synchronized (getLockObject()) {
            if (!this.mOwners.hasDeviceOwner()) {
                return false;
            }
            if (UserHandle.getUserId(callerUid) != this.mOwners.getDeviceOwnerUserId()) {
                return false;
            }
            String deviceOwnerPackageName = this.mOwners.getDeviceOwnerComponent().getPackageName();
            try {
                String[] pkgs = this.mInjector.getIPackageManager().getPackagesForUid(callerUid);
                for (String pkg : pkgs) {
                    if (deviceOwnerPackageName.equals(pkg)) {
                        return true;
                    }
                }
                return false;
            } catch (RemoteException e) {
                return false;
            }
        }
    }

    public void notifyPendingSystemUpdate(SystemUpdateInfo info) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.NOTIFY_PENDING_SYSTEM_UPDATE", "Only the system update service can broadcast update information");
        if (UserHandle.getCallingUserId() != 0) {
            Slog.w(LOG_TAG, "Only the system update service in the system user can broadcast update information.");
        } else {
            if (!this.mOwners.saveSystemUpdateInfo(info)) {
                return;
            }
            final Intent intent = new Intent("android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE").putExtra("android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME", info == null ? -1L : info.getReceivedTime());
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$644zL8wgO32pVumtOZ1j2oplpRA
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$notifyPendingSystemUpdate$80$DevicePolicyManagerService(intent);
                }
            });
        }
    }

    public /* synthetic */ void lambda$notifyPendingSystemUpdate$80$DevicePolicyManagerService(Intent intent) throws Exception {
        synchronized (getLockObject()) {
            if (this.mOwners.hasDeviceOwner()) {
                UserHandle deviceOwnerUser = UserHandle.of(this.mOwners.getDeviceOwnerUserId());
                intent.setComponent(this.mOwners.getDeviceOwnerComponent());
                this.mContext.sendBroadcastAsUser(intent, deviceOwnerUser);
            }
        }
        try {
            int[] runningUserIds = this.mInjector.getIActivityManager().getRunningUserIds();
            for (int userId : runningUserIds) {
                synchronized (getLockObject()) {
                    ComponentName profileOwnerPackage = this.mOwners.getProfileOwnerComponent(userId);
                    if (profileOwnerPackage != null) {
                        intent.setComponent(profileOwnerPackage);
                        this.mContext.sendBroadcastAsUser(intent, UserHandle.of(userId));
                    }
                }
            }
        } catch (RemoteException e) {
            Log.e(LOG_TAG, "Could not retrieve the list of running users", e);
        }
    }

    public SystemUpdateInfo getPendingSystemUpdate(ComponentName admin) {
        Objects.requireNonNull(admin, "ComponentName is null");
        enforceProfileOrDeviceOwner(admin);
        return this.mOwners.getSystemUpdateInfo();
    }

    public void setPermissionPolicy(ComponentName admin, String callerPackage, int policy) throws RemoteException {
        int userId = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            enforceCanManageScope(admin, callerPackage, -1, "delegation-permission-grant");
            DevicePolicyData userPolicy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
            if (userPolicy.mPermissionPolicy != policy) {
                userPolicy.mPermissionPolicy = policy;
                saveSettingsLocked(userId);
            }
        }
        boolean isDelegate = admin == null;
        DevicePolicyEventLogger.createEvent(18).setAdmin(callerPackage).setInt(policy).setBoolean(isDelegate).write();
    }

    public int getPermissionPolicy(ComponentName admin) throws RemoteException {
        int i;
        int userId = UserHandle.getCallingUserId();
        synchronized (getLockObject()) {
            DevicePolicyData userPolicy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId);
            i = userPolicy.mPermissionPolicy;
        }
        return i;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public void setPermissionGrantState(final ComponentName admin, final String callerPackage, String packageName, final String permission, final int grantState, final RemoteCallback callback) throws Throwable {
        long ident;
        Objects.requireNonNull(callback);
        UserHandle user = this.mInjector.binderGetCallingUserHandle();
        synchronized (getLockObject()) {
            try {
                try {
                    enforceCanManageScope(admin, callerPackage, -1, "delegation-permission-grant");
                    long ident2 = this.mInjector.binderClearCallingIdentity();
                    try {
                        final boolean isPostQAdmin = getTargetSdk(callerPackage, user.getIdentifier()) >= 29;
                        if (!isPostQAdmin) {
                            try {
                                if (getTargetSdk(packageName, user.getIdentifier()) < 23) {
                                    callback.sendResult((Bundle) null);
                                    this.mInjector.binderRestoreCallingIdentity(ident2);
                                    return;
                                }
                            } catch (SecurityException e) {
                                e = e;
                            } catch (Throwable th) {
                                th = th;
                                this.mInjector.binderRestoreCallingIdentity(ident2);
                                throw th;
                            }
                        }
                        try {
                            try {
                                if (isRuntimePermission(permission)) {
                                    if (grantState == 1 || grantState == 2 || grantState == 0) {
                                        try {
                                            ident = ident2;
                                            try {
                                                this.mInjector.getPermissionControllerManager(user).setRuntimePermissionGrantStateByDeviceAdmin(callerPackage, packageName, permission, grantState, this.mContext.getMainExecutor(), new Consumer() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$o0LwS4YG_RzBTpouxzUjijvm1sw
                                                    @Override // java.util.function.Consumer
                                                    public final void accept(Object obj) {
                                                        DevicePolicyManagerService.lambda$setPermissionGrantState$81(isPostQAdmin, callback, admin, callerPackage, permission, grantState, (Boolean) obj);
                                                    }
                                                });
                                            } catch (SecurityException e2) {
                                                e = e2;
                                                ident2 = ident;
                                                Slog.e(LOG_TAG, "Could not set permission grant state", e);
                                                callback.sendResult((Bundle) null);
                                                this.mInjector.binderRestoreCallingIdentity(ident2);
                                            } catch (Throwable th2) {
                                                th = th2;
                                                ident2 = ident;
                                                this.mInjector.binderRestoreCallingIdentity(ident2);
                                                throw th;
                                            }
                                        } catch (SecurityException e3) {
                                            e = e3;
                                            ident = ident2;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            ident = ident2;
                                        }
                                    } else {
                                        ident = ident2;
                                    }
                                    try {
                                        this.mInjector.binderRestoreCallingIdentity(ident);
                                    } catch (Throwable th4) {
                                        th = th4;
                                        throw th;
                                    }
                                }
                                try {
                                    callback.sendResult((Bundle) null);
                                    this.mInjector.binderRestoreCallingIdentity(ident2);
                                    return;
                                } catch (PackageManager.NameNotFoundException e4) {
                                    e = e4;
                                    try {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("Cannot check if ");
                                        ident2 = ident2;
                                        try {
                                            try {
                                                sb.append(permission);
                                                sb.append("is a runtime permission");
                                                throw new RemoteException(sb.toString(), e, false, true);
                                            } catch (SecurityException e5) {
                                                e = e5;
                                                Slog.e(LOG_TAG, "Could not set permission grant state", e);
                                                callback.sendResult((Bundle) null);
                                                this.mInjector.binderRestoreCallingIdentity(ident2);
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            this.mInjector.binderRestoreCallingIdentity(ident2);
                                            throw th;
                                        }
                                    } catch (SecurityException e6) {
                                        e = e6;
                                        ident2 = ident2;
                                    } catch (Throwable th6) {
                                        th = th6;
                                        ident2 = ident2;
                                        this.mInjector.binderRestoreCallingIdentity(ident2);
                                        throw th;
                                    }
                                }
                            } catch (PackageManager.NameNotFoundException e7) {
                                e = e7;
                            }
                        } catch (SecurityException e8) {
                            e = e8;
                        } catch (Throwable th7) {
                            th = th7;
                        }
                    } catch (SecurityException e9) {
                        e = e9;
                    }
                    Slog.e(LOG_TAG, "Could not set permission grant state", e);
                    callback.sendResult((Bundle) null);
                    this.mInjector.binderRestoreCallingIdentity(ident2);
                } catch (Throwable th8) {
                    th = th8;
                }
            } catch (Throwable th9) {
                th = th9;
            }
        }
    }

    static /* synthetic */ void lambda$setPermissionGrantState$81(boolean isPostQAdmin, RemoteCallback callback, ComponentName admin, String callerPackage, String permission, int grantState, Boolean permissionWasSet) {
        if (isPostQAdmin && !permissionWasSet.booleanValue()) {
            callback.sendResult((Bundle) null);
            return;
        }
        boolean isDelegate = admin == null;
        DevicePolicyEventLogger.createEvent(19).setAdmin(callerPackage).setStrings(new String[]{permission}).setInt(grantState).setBoolean(isDelegate).write();
        callback.sendResult(Bundle.EMPTY);
    }

    public int getPermissionGrantState(ComponentName admin, final String callerPackage, final String packageName, final String permission) throws RemoteException {
        int iIntValue;
        final PackageManager packageManager = this.mInjector.getPackageManager();
        final UserHandle user = this.mInjector.binderGetCallingUserHandle();
        if (!isCallerWithSystemUid()) {
            enforceCanManageScope(admin, callerPackage, -1, "delegation-permission-grant");
        }
        synchronized (getLockObject()) {
            iIntValue = ((Integer) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs
                public final Object getOrThrow() {
                    return this.f$0.lambda$getPermissionGrantState$82$DevicePolicyManagerService(callerPackage, user, permission, packageName, packageManager);
                }
            })).intValue();
        }
        return iIntValue;
    }

    public /* synthetic */ Integer lambda$getPermissionGrantState$82$DevicePolicyManagerService(String callerPackage, UserHandle user, String permission, String packageName, PackageManager packageManager) throws Exception {
        int granted;
        if (getTargetSdk(callerPackage, user.getIdentifier()) < 29) {
            granted = this.mIPackageManager.checkPermission(permission, packageName, user.getIdentifier());
        } else {
            try {
                int uid = packageManager.getPackageUidAsUser(packageName, user.getIdentifier());
                if (PermissionChecker.checkPermissionForPreflight(this.mContext, permission, -1, uid, packageName) != 0) {
                    granted = -1;
                } else {
                    granted = 0;
                }
            } catch (PackageManager.NameNotFoundException e) {
                throw new RemoteException("Cannot check if " + permission + "is a runtime permission", e, false, true);
            }
        }
        int permFlags = packageManager.getPermissionFlags(permission, packageName, user);
        if ((permFlags & 4) != 4) {
            return 0;
        }
        return Integer.valueOf(granted != 0 ? 2 : 1);
    }

    boolean isPackageInstalledForUser(final String packageName, final int userHandle) {
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$XZQm7n2szdd5c9UgCUEe2WHB0qA
            public final Object getOrThrow() {
                return this.f$0.lambda$isPackageInstalledForUser$83$DevicePolicyManagerService(packageName, userHandle);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isPackageInstalledForUser$83$DevicePolicyManagerService(String packageName, int userHandle) throws Exception {
        try {
            boolean z = false;
            PackageInfo pi = this.mInjector.getIPackageManager().getPackageInfo(packageName, 0, userHandle);
            if (pi != null && pi.applicationInfo.flags != 0) {
                z = true;
            }
            return Boolean.valueOf(z);
        } catch (RemoteException re) {
            throw new RuntimeException("Package manager has died", re);
        }
    }

    public boolean isRuntimePermission(String permissionName) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = this.mInjector.getPackageManager();
        PermissionInfo permissionInfo = packageManager.getPermissionInfo(permissionName, 0);
        return (permissionInfo.protectionLevel & 15) == 1;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0038 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isProvisioningAllowed(java.lang.String r9, java.lang.String r10) {
        /*
            r8 = this;
            java.util.Objects.requireNonNull(r10)
            com.android.server.devicepolicy.DevicePolicyManagerService$Injector r0 = r8.mInjector
            int r0 = r0.binderGetCallingUid()
            com.android.server.devicepolicy.DevicePolicyManagerService$Injector r1 = r8.mInjector
            long r1 = r1.binderClearCallingIdentity()
            com.android.server.devicepolicy.DevicePolicyManagerService$Injector r3 = r8.mInjector     // Catch: java.lang.Throwable -> L38 android.content.pm.PackageManager.NameNotFoundException -> L3a
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: java.lang.Throwable -> L38 android.content.pm.PackageManager.NameNotFoundException -> L3a
            int r4 = android.os.UserHandle.getUserId(r0)     // Catch: java.lang.Throwable -> L38 android.content.pm.PackageManager.NameNotFoundException -> L3a
            int r3 = r3.getPackageUidAsUser(r10, r4)     // Catch: java.lang.Throwable -> L38 android.content.pm.PackageManager.NameNotFoundException -> L3a
            r4 = 1
            r5 = 0
            if (r0 != r3) goto L23
            r6 = r4
            goto L24
        L23:
            r6 = r5
        L24:
            java.lang.String r7 = "Caller uid doesn't match the one for the provided package."
            com.android.internal.util.Preconditions.checkArgument(r6, r7)     // Catch: java.lang.Throwable -> L38 android.content.pm.PackageManager.NameNotFoundException -> L3a
            com.android.server.devicepolicy.DevicePolicyManagerService$Injector r3 = r8.mInjector
            r3.binderRestoreCallingIdentity(r1)
            int r3 = r8.checkProvisioningPreConditionSkipPermission(r9, r10)
            if (r3 != 0) goto L36
            goto L37
        L36:
            r4 = r5
        L37:
            return r4
        L38:
            r3 = move-exception
            goto L52
        L3a:
            r3 = move-exception
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L38
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L38
            r5.<init>()     // Catch: java.lang.Throwable -> L38
            java.lang.String r6 = "Invalid package provided "
            r5.append(r6)     // Catch: java.lang.Throwable -> L38
            r5.append(r10)     // Catch: java.lang.Throwable -> L38
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L38
            r4.<init>(r5, r3)     // Catch: java.lang.Throwable -> L38
            throw r4     // Catch: java.lang.Throwable -> L38
        L52:
            com.android.server.devicepolicy.DevicePolicyManagerService$Injector r4 = r8.mInjector
            r4.binderRestoreCallingIdentity(r1)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.devicepolicy.DevicePolicyManagerService.isProvisioningAllowed(java.lang.String, java.lang.String):boolean");
    }

    public int checkProvisioningPreCondition(String action, String packageName) {
        Objects.requireNonNull(packageName);
        enforceCanManageProfileAndDeviceOwners();
        return checkProvisioningPreConditionSkipPermission(action, packageName);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private int checkProvisioningPreConditionSkipPermission(String action, String packageName) {
        if (!this.mHasFeature) {
            return 13;
        }
        int callingUserId = this.mInjector.userHandleGetCallingUserId();
        if (action != null) {
            byte b = -1;
            switch (action.hashCode()) {
                case -920528692:
                    if (action.equals("android.app.action.PROVISION_MANAGED_DEVICE")) {
                        b = 1;
                    }
                    break;
                case -514404415:
                    if (action.equals("android.app.action.PROVISION_MANAGED_USER")) {
                        b = 3;
                    }
                    break;
                case -340845101:
                    if (action.equals("android.app.action.PROVISION_MANAGED_PROFILE")) {
                        b = 0;
                    }
                    break;
                case 631897778:
                    if (action.equals("android.app.action.PROVISION_MANAGED_SHAREABLE_DEVICE")) {
                        b = 4;
                    }
                    break;
                case 1340354933:
                    if (action.equals("android.app.action.PROVISION_FINANCED_DEVICE")) {
                        b = 2;
                    }
                    break;
            }
            if (b == 0) {
                return checkManagedProfileProvisioningPreCondition(packageName, callingUserId);
            }
            if (b == 1 || b == 2) {
                return checkDeviceOwnerProvisioningPreCondition(callingUserId);
            }
            if (b == 3) {
                return checkManagedUserProvisioningPreCondition(callingUserId);
            }
            if (b == 4) {
                return checkManagedShareableDeviceProvisioningPreCondition(callingUserId);
            }
        }
        throw new IllegalArgumentException("Unknown provisioning action " + action);
    }

    private int checkDeviceOwnerProvisioningPreConditionLocked(ComponentName owner, int deviceOwnerUserId, boolean isAdb, boolean hasIncompatibleAccountsOrNonAdb) {
        if (this.mOwners.hasDeviceOwner()) {
            return 1;
        }
        if (this.mOwners.hasProfileOwner(deviceOwnerUserId)) {
            return 2;
        }
        if (!this.mUserManager.isUserRunning(new UserHandle(deviceOwnerUserId))) {
            return 3;
        }
        if (this.mIsWatch && hasPaired(0)) {
            return 8;
        }
        if (isAdb) {
            if ((this.mIsWatch || hasUserSetupCompleted(0)) && !this.mInjector.userManagerIsSplitSystemUser()) {
                if (this.mUserManager.getUserCount() > 1) {
                    return 5;
                }
                if (hasIncompatibleAccountsOrNonAdb) {
                    return 6;
                }
            }
            return 0;
        }
        if (!this.mInjector.userManagerIsSplitSystemUser()) {
            if (deviceOwnerUserId != 0) {
                return 7;
            }
            if (hasUserSetupCompleted(0)) {
                return 4;
            }
        }
        return 0;
    }

    private int checkDeviceOwnerProvisioningPreCondition(int deviceOwnerUserId) {
        int iCheckDeviceOwnerProvisioningPreConditionLocked;
        synchronized (getLockObject()) {
            iCheckDeviceOwnerProvisioningPreConditionLocked = checkDeviceOwnerProvisioningPreConditionLocked(null, deviceOwnerUserId, false, true);
        }
        return iCheckDeviceOwnerProvisioningPreConditionLocked;
    }

    private int checkManagedProfileProvisioningPreCondition(String packageName, int callingUserId) {
        boolean hasDeviceOwner;
        if (!hasFeatureManagedUsers()) {
            return 9;
        }
        if (callingUserId == 0 && this.mInjector.userManagerIsSplitSystemUser()) {
            return 14;
        }
        if (getProfileOwner(callingUserId) != null) {
            return 2;
        }
        long ident = this.mInjector.binderClearCallingIdentity();
        try {
            UserHandle callingUserHandle = UserHandle.of(callingUserId);
            synchronized (getLockObject()) {
                hasDeviceOwner = getDeviceOwnerAdminLocked() != null;
            }
            boolean addingProfileRestricted = this.mUserManager.hasUserRestriction("no_add_managed_profile", callingUserHandle);
            if (this.mUserManager.getUserInfo(callingUserId).isProfile()) {
                Slog.i(LOG_TAG, String.format("Calling user %d is a profile, cannot add another.", Integer.valueOf(callingUserId)));
                this.mInjector.binderRestoreCallingIdentity(ident);
                return 11;
            }
            if (hasDeviceOwner && !addingProfileRestricted) {
                Slog.wtf(LOG_TAG, "Has a device owner but no restriction on adding a profile.");
            }
            if (addingProfileRestricted) {
                Slog.i(LOG_TAG, String.format("Adding a profile is restricted: User %s Has device owner? %b", callingUserHandle, Boolean.valueOf(hasDeviceOwner)));
                this.mInjector.binderRestoreCallingIdentity(ident);
                return 11;
            }
            boolean canRemoveProfile = !this.mUserManager.hasUserRestriction("no_remove_managed_profile", callingUserHandle);
            if (this.mUserManager.canAddMoreManagedProfiles(callingUserId, canRemoveProfile)) {
                this.mInjector.binderRestoreCallingIdentity(ident);
                return 0;
            }
            Slog.i(LOG_TAG, String.format("Cannot add more profiles: Can remove current? %b", Boolean.valueOf(canRemoveProfile)));
            this.mInjector.binderRestoreCallingIdentity(ident);
            return 11;
        } catch (Throwable th) {
            this.mInjector.binderRestoreCallingIdentity(ident);
            throw th;
        }
    }

    private ComponentName getOwnerComponent(String packageName, int userId) {
        if (isDeviceOwnerPackage(packageName, userId)) {
            return this.mOwners.getDeviceOwnerComponent();
        }
        if (isProfileOwnerPackage(packageName, userId)) {
            return this.mOwners.getProfileOwnerComponent(userId);
        }
        return null;
    }

    private ComponentName getOwnerComponent(int userId) {
        synchronized (getLockObject()) {
            if (this.mOwners.getDeviceOwnerUserId() == userId) {
                return this.mOwners.getDeviceOwnerComponent();
            }
            if (this.mOwners.hasProfileOwner(userId)) {
                return this.mOwners.getProfileOwnerComponent(userId);
            }
            return null;
        }
    }

    private int checkManagedUserProvisioningPreCondition(int callingUserId) {
        if (!hasFeatureManagedUsers()) {
            return 9;
        }
        if (!this.mInjector.userManagerIsSplitSystemUser()) {
            return 12;
        }
        if (callingUserId == 0) {
            return 10;
        }
        if (hasUserSetupCompleted(callingUserId)) {
            return 4;
        }
        return (this.mIsWatch && hasPaired(0)) ? 8 : 0;
    }

    private int checkManagedShareableDeviceProvisioningPreCondition(int callingUserId) {
        if (!this.mInjector.userManagerIsSplitSystemUser()) {
            return 12;
        }
        return checkDeviceOwnerProvisioningPreCondition(callingUserId);
    }

    private boolean hasFeatureManagedUsers() {
        try {
            return this.mIPackageManager.hasSystemFeature("android.software.managed_users", 0);
        } catch (RemoteException e) {
            return false;
        }
    }

    public String getWifiMacAddress(final ComponentName admin) {
        enforceDeviceOwnerOrProfileOwnerOnOrganizationOwnedDevice(admin);
        return (String) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$uy1p-xwvq26PU9sdLctDkYIEUWg
            public final Object getOrThrow() {
                return this.f$0.lambda$getWifiMacAddress$84$DevicePolicyManagerService(admin);
            }
        });
    }

    public /* synthetic */ String lambda$getWifiMacAddress$84$DevicePolicyManagerService(ComponentName admin) throws Exception {
        String[] macAddresses = this.mInjector.getWifiManager().getFactoryMacAddresses();
        if (macAddresses == null) {
            return null;
        }
        DevicePolicyEventLogger.createEvent(54).setAdmin(admin).write();
        if (macAddresses.length > 0) {
            return macAddresses[0];
        }
        return null;
    }

    private int getTargetSdk(String packageName, int userId) {
        try {
            ApplicationInfo ai = this.mIPackageManager.getApplicationInfo(packageName, 0, userId);
            if (ai == null) {
                return 0;
            }
            return ai.targetSdkVersion;
        } catch (RemoteException e) {
            return 0;
        }
    }

    public boolean isManagedProfile(ComponentName admin) {
        enforceProfileOrDeviceOwner(admin);
        return isManagedProfile(this.mInjector.userHandleGetCallingUserId());
    }

    public boolean isSystemOnlyUser(ComponentName admin) {
        enforceDeviceOwner(admin);
        int callingUserId = this.mInjector.userHandleGetCallingUserId();
        return UserManager.isSplitSystemUser() && callingUserId == 0;
    }

    public void reboot(final ComponentName admin) {
        Objects.requireNonNull(admin);
        enforceDeviceOwner(admin);
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$W9Oy5tNXrtuBYa37BvbpgLesbME
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$reboot$85$DevicePolicyManagerService(admin);
            }
        });
    }

    public /* synthetic */ void lambda$reboot$85$DevicePolicyManagerService(ComponentName admin) throws Exception {
        if (this.mTelephonyManager.getCallState() != 0) {
            throw new IllegalStateException("Cannot be called with ongoing call on the device");
        }
        DevicePolicyEventLogger.createEvent(34).setAdmin(admin).write();
        this.mInjector.powerManagerReboot("deviceowner");
    }

    public void setShortSupportMessage(ComponentName who, CharSequence message) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        CharSequence message2 = truncateIfLonger(message, DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE);
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForUidLocked(who, this.mInjector.binderGetCallingUid());
            if (!TextUtils.equals(admin.shortSupportMessage, message2)) {
                admin.shortSupportMessage = message2;
                saveSettingsLocked(userHandle);
            }
        }
        DevicePolicyEventLogger.createEvent(43).setAdmin(who).write();
    }

    public CharSequence getShortSupportMessage(ComponentName who) {
        CharSequence charSequence;
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForUidLocked(who, this.mInjector.binderGetCallingUid());
            charSequence = admin.shortSupportMessage;
        }
        return charSequence;
    }

    public void setLongSupportMessage(ComponentName who, CharSequence message) {
        if (!this.mHasFeature) {
            return;
        }
        CharSequence message2 = truncateIfLonger(message, MAX_LONG_SUPPORT_MESSAGE_LENGTH);
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForUidLocked(who, this.mInjector.binderGetCallingUid());
            if (!TextUtils.equals(admin.longSupportMessage, message2)) {
                admin.longSupportMessage = message2;
                saveSettingsLocked(userHandle);
            }
        }
        DevicePolicyEventLogger.createEvent(44).setAdmin(who).write();
    }

    public CharSequence getLongSupportMessage(ComponentName who) {
        CharSequence charSequence;
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForUidLocked(who, this.mInjector.binderGetCallingUid());
            charSequence = admin.longSupportMessage;
        }
        return charSequence;
    }

    public CharSequence getShortSupportMessageForUser(ComponentName who, int userHandle) {
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceSystemCaller("query support message for user");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle);
            if (admin == null) {
                return null;
            }
            return admin.shortSupportMessage;
        }
    }

    public CharSequence getLongSupportMessageForUser(ComponentName who, int userHandle) {
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceSystemCaller("query support message for user");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userHandle);
            if (admin == null) {
                return null;
            }
            return admin.longSupportMessage;
        }
    }

    public void setOrganizationColor(ComponentName who, int color) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        enforceManagedProfile(userHandle, "set organization color");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            admin.organizationColor = color;
            saveSettingsLocked(userHandle);
        }
        DevicePolicyEventLogger.createEvent(39).setAdmin(who).write();
    }

    public void setOrganizationColorForUser(int color, int userId) {
        if (!this.mHasFeature) {
            return;
        }
        enforceFullCrossUsersPermission(userId);
        enforceManageUsers();
        enforceManagedProfile(userId, "set organization color");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getProfileOwnerAdminLocked(userId);
            admin.organizationColor = color;
            saveSettingsLocked(userId);
        }
    }

    public int getOrganizationColor(ComponentName who) {
        int i;
        if (!this.mHasFeature) {
            return ActiveAdmin.DEF_ORGANIZATION_COLOR;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceManagedProfile(this.mInjector.userHandleGetCallingUserId(), "get organization color");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            i = admin.organizationColor;
        }
        return i;
    }

    public int getOrganizationColorForUser(int userHandle) {
        int i;
        if (!this.mHasFeature) {
            return ActiveAdmin.DEF_ORGANIZATION_COLOR;
        }
        enforceFullCrossUsersPermission(userHandle);
        enforceManagedProfile(userHandle, "get organization color");
        synchronized (getLockObject()) {
            ActiveAdmin profileOwner = getProfileOwnerAdminLocked(userHandle);
            if (profileOwner != null) {
                i = profileOwner.organizationColor;
            } else {
                i = ActiveAdmin.DEF_ORGANIZATION_COLOR;
            }
        }
        return i;
    }

    public void setOrganizationName(ComponentName who, CharSequence text) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        int userHandle = this.mInjector.userHandleGetCallingUserId();
        CharSequence text2 = truncateIfLonger(text, DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE);
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            if (!TextUtils.equals(admin.organizationName, text2)) {
                admin.organizationName = (text2 == null || text2.length() == 0) ? null : text2.toString();
                saveSettingsLocked(userHandle);
            }
        }
    }

    public CharSequence getOrganizationName(ComponentName who) {
        String str;
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceManagedProfile(this.mInjector.userHandleGetCallingUserId(), "get organization name");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            str = admin.organizationName;
        }
        return str;
    }

    public CharSequence getDeviceOwnerOrganizationName() {
        String str = null;
        if (!this.mHasFeature) {
            return null;
        }
        enforceDeviceOwnerOrManageUsers();
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwnerAdmin = getDeviceOwnerAdminLocked();
            if (deviceOwnerAdmin != null) {
                str = deviceOwnerAdmin.organizationName;
            }
        }
        return str;
    }

    public CharSequence getOrganizationNameForUser(int userHandle) {
        String str;
        if (!this.mHasFeature) {
            return null;
        }
        enforceFullCrossUsersPermission(userHandle);
        enforceManagedProfile(userHandle, "get organization name");
        synchronized (getLockObject()) {
            ActiveAdmin profileOwner = getProfileOwnerAdminLocked(userHandle);
            str = profileOwner != null ? profileOwner.organizationName : null;
        }
        return str;
    }

    public List<String> setMeteredDataDisabledPackages(ComponentName who, final List<String> packageNames) {
        List<String> list;
        Objects.requireNonNull(who);
        Objects.requireNonNull(packageNames);
        if (!this.mHasFeature) {
            return packageNames;
        }
        synchronized (getLockObject()) {
            final ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            final int callingUserId = this.mInjector.userHandleGetCallingUserId();
            list = (List) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$hGowsDgycqdZtYhKFJ6UEAaUPIQ
                public final Object getOrThrow() {
                    return this.f$0.lambda$setMeteredDataDisabledPackages$86$DevicePolicyManagerService(callingUserId, packageNames, admin);
                }
            });
        }
        return list;
    }

    public /* synthetic */ List lambda$setMeteredDataDisabledPackages$86$DevicePolicyManagerService(int callingUserId, List packageNames, ActiveAdmin admin) throws Exception {
        List<String> excludedPkgs = removeInvalidPkgsForMeteredDataRestriction(callingUserId, packageNames);
        admin.meteredDisabledPackages = packageNames;
        pushMeteredDisabledPackagesLocked(callingUserId);
        saveSettingsLocked(callingUserId);
        return excludedPkgs;
    }

    private List<String> removeInvalidPkgsForMeteredDataRestriction(int userId, List<String> pkgNames) {
        Set<String> activeAdmins = getActiveAdminPackagesLocked(userId);
        List<String> excludedPkgs = new ArrayList<>();
        for (int i = pkgNames.size() - 1; i >= 0; i--) {
            String pkgName = pkgNames.get(i);
            if (activeAdmins.contains(pkgName)) {
                excludedPkgs.add(pkgName);
            } else {
                try {
                    if (!this.mInjector.getIPackageManager().isPackageAvailable(pkgName, userId)) {
                        excludedPkgs.add(pkgName);
                    }
                } catch (RemoteException e) {
                }
            }
        }
        pkgNames.removeAll(excludedPkgs);
        return excludedPkgs;
    }

    public List<String> getMeteredDataDisabledPackages(ComponentName who) {
        List<String> arrayList;
        Objects.requireNonNull(who);
        if (!this.mHasFeature) {
            return new ArrayList();
        }
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            arrayList = admin.meteredDisabledPackages == null ? new ArrayList<>() : admin.meteredDisabledPackages;
        }
        return arrayList;
    }

    public boolean isMeteredDataDisabledPackageForUser(ComponentName who, String packageName, int userId) {
        Objects.requireNonNull(who);
        if (!this.mHasFeature) {
            return false;
        }
        enforceSystemCaller("query restricted pkgs for a specific user");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminUncheckedLocked(who, userId);
            if (admin == null || admin.meteredDisabledPackages == null) {
                return false;
            }
            return admin.meteredDisabledPackages.contains(packageName);
        }
    }

    private boolean hasMarkProfileOwnerOnOrganizationOwnedDevicePermission() {
        return this.mContext.checkCallingPermission("android.permission.MARK_DEVICE_ORGANIZATION_OWNED") == 0;
    }

    public void markProfileOwnerOnOrganizationOwnedDevice(ComponentName who, int userId) {
        Objects.requireNonNull(who);
        if (!this.mHasFeature) {
            return;
        }
        if (!isAdb() && !hasMarkProfileOwnerOnOrganizationOwnedDevicePermission()) {
            throw new SecurityException("Only the system can mark a profile owner of organization-owned device.");
        }
        if (isAdb()) {
            if (hasIncompatibleAccountsOrNonAdbNoLock(userId, who)) {
                throw new SecurityException("Can only be called from ADB if the device has no accounts.");
            }
        } else if (hasUserSetupCompleted(0)) {
            throw new IllegalStateException("Cannot mark profile owner as managing an organization-owned device after set-up");
        }
        synchronized (getLockObject()) {
            markProfileOwnerOnOrganizationOwnedDeviceUncheckedLocked(who, userId);
        }
    }

    private void markProfileOwnerOnOrganizationOwnedDeviceUncheckedLocked(ComponentName who, final int userId) {
        if (!isProfileOwner(who, userId)) {
            throw new IllegalArgumentException(String.format("Component %s is not a Profile Owner of user %d", who.flattenToString(), Integer.valueOf(userId)));
        }
        Slog.i(LOG_TAG, String.format("Marking %s as profile owner on organization-owned device for user %d", who.flattenToString(), Integer.valueOf(userId)));
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$fNcFHUyZ8am8m_L17XqT1P4UAl4
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$markProfileOwnerOnOrganizationOwnedDeviceUncheckedLocked$87$DevicePolicyManagerService(userId);
            }
        });
        this.mOwners.markProfileOwnerOfOrganizationOwnedDevice(userId);
    }

    public /* synthetic */ void lambda$markProfileOwnerOnOrganizationOwnedDeviceUncheckedLocked$87$DevicePolicyManagerService(int userId) throws Exception {
        UserHandle parentUser = this.mUserManager.getProfileParent(UserHandle.of(userId));
        if (!parentUser.isSystem()) {
            throw new IllegalStateException(String.format("Only the profile owner of a managed profile on the primary user can be granted access to device identifiers, not on user %d", Integer.valueOf(parentUser.getIdentifier())));
        }
        this.mUserManager.setUserRestriction("no_remove_managed_profile", true, parentUser);
        this.mUserManager.setUserRestriction("no_add_user", true, parentUser);
    }

    private void pushMeteredDisabledPackagesLocked(int userId) {
        this.mInjector.getNetworkPolicyManagerInternal().setMeteredRestrictedPackages(getMeteredDisabledPackagesLocked(userId), userId);
    }

    private Set<String> getMeteredDisabledPackagesLocked(int userId) {
        ActiveAdmin admin;
        ComponentName who = getOwnerComponent(userId);
        Set<String> restrictedPkgs = new ArraySet<>();
        if (who != null && (admin = getActiveAdminUncheckedLocked(who, userId)) != null && admin.meteredDisabledPackages != null) {
            restrictedPkgs.addAll(admin.meteredDisabledPackages);
        }
        return restrictedPkgs;
    }

    public void setAffiliationIds(ComponentName admin, List<String> ids) {
        if (!this.mHasFeature) {
            return;
        }
        if (ids == null) {
            throw new IllegalArgumentException("ids must not be null");
        }
        for (String id : ids) {
            Preconditions.checkArgument(!TextUtils.isEmpty(id), "ids must not have empty string");
            enforceMaxStringLength(id, "affiliation id");
        }
        Set<String> affiliationIds = new ArraySet<>(ids);
        int callingUserId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(admin, -1);
            lambda$getUserDataUnchecked$0$DevicePolicyManagerService(callingUserId).mAffiliationIds = affiliationIds;
            saveSettingsLocked(callingUserId);
            if (callingUserId != 0 && isDeviceOwner(admin, callingUserId)) {
                lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0).mAffiliationIds = affiliationIds;
                saveSettingsLocked(0);
            }
            maybePauseDeviceWideLoggingLocked();
            maybeResumeDeviceWideLoggingLocked();
            maybeClearLockTaskPolicyLocked();
        }
    }

    public List<String> getAffiliationIds(ComponentName admin) {
        ArrayList arrayList;
        if (!this.mHasFeature) {
            return Collections.emptyList();
        }
        Objects.requireNonNull(admin);
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(admin, -1);
            arrayList = new ArrayList(lambda$getUserDataUnchecked$0$DevicePolicyManagerService(this.mInjector.userHandleGetCallingUserId()).mAffiliationIds);
        }
        return arrayList;
    }

    public boolean isAffiliatedUser() {
        boolean zIsUserAffiliatedWithDeviceLocked;
        if (!this.mHasFeature) {
            return false;
        }
        synchronized (getLockObject()) {
            zIsUserAffiliatedWithDeviceLocked = isUserAffiliatedWithDeviceLocked(this.mInjector.userHandleGetCallingUserId());
        }
        return zIsUserAffiliatedWithDeviceLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUserAffiliatedWithDeviceLocked(int userId) {
        if (!this.mOwners.hasDeviceOwner()) {
            return false;
        }
        if (userId == this.mOwners.getDeviceOwnerUserId() || userId == 0) {
            return true;
        }
        ComponentName profileOwner = getProfileOwner(userId);
        if (profileOwner == null) {
            return false;
        }
        Set<String> userAffiliationIds = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mAffiliationIds;
        Set<String> deviceAffiliationIds = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0).mAffiliationIds;
        for (String id : userAffiliationIds) {
            if (deviceAffiliationIds.contains(id)) {
                return true;
            }
        }
        return false;
    }

    private boolean areAllUsersAffiliatedWithDeviceLocked() {
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$7ZxUYCbMxQm-r_Ar3BngHwnkazI
            public final Object getOrThrow() {
                return this.f$0.lambda$areAllUsersAffiliatedWithDeviceLocked$88$DevicePolicyManagerService();
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$areAllUsersAffiliatedWithDeviceLocked$88$DevicePolicyManagerService() throws Exception {
        List<UserInfo> userInfos = this.mUserManager.getUsers(true);
        for (int i = 0; i < userInfos.size(); i++) {
            int userId = userInfos.get(i).id;
            if (!isUserAffiliatedWithDeviceLocked(userId)) {
                Slog.d(LOG_TAG, "User id " + userId + " not affiliated.");
                return false;
            }
        }
        return true;
    }

    private boolean canStartSecurityLogging() {
        boolean z;
        synchronized (getLockObject()) {
            z = isOrganizationOwnedDeviceWithManagedProfile() || areAllUsersAffiliatedWithDeviceLocked();
        }
        return z;
    }

    private int getSecurityLoggingEnabledUser() {
        synchronized (getLockObject()) {
            if (this.mOwners.hasDeviceOwner()) {
                return -1;
            }
            return getOrganizationOwnedProfileUserId();
        }
    }

    public void setSecurityLoggingEnabled(ComponentName admin, boolean enabled) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(admin);
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(admin, -3);
            if (enabled == this.mInjector.securityLogGetLoggingEnabledProperty()) {
                return;
            }
            this.mInjector.securityLogSetLoggingEnabledProperty(enabled);
            if (enabled) {
                this.mSecurityLogMonitor.start(getSecurityLoggingEnabledUser());
                maybePauseDeviceWideLoggingLocked();
            } else {
                this.mSecurityLogMonitor.stop();
            }
            DevicePolicyEventLogger.createEvent(15).setAdmin(admin).setBoolean(enabled).write();
        }
    }

    public boolean isSecurityLoggingEnabled(ComponentName admin) {
        boolean zSecurityLogGetLoggingEnabledProperty;
        if (!this.mHasFeature) {
            return false;
        }
        synchronized (getLockObject()) {
            if (!isCallerWithSystemUid()) {
                Objects.requireNonNull(admin);
                getActiveAdminForCallerLocked(admin, -3);
            }
            zSecurityLogGetLoggingEnabledProperty = this.mInjector.securityLogGetLoggingEnabledProperty();
        }
        return zSecurityLogGetLoggingEnabledProperty;
    }

    private void recordSecurityLogRetrievalTime() {
        synchronized (getLockObject()) {
            long currentTime = System.currentTimeMillis();
            DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
            if (currentTime > policyData.mLastSecurityLogRetrievalTime) {
                policyData.mLastSecurityLogRetrievalTime = currentTime;
                saveSettingsLocked(0);
            }
        }
    }

    public ParceledListSlice<SecurityLog.SecurityEvent> retrievePreRebootSecurityLogs(ComponentName admin) {
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(admin);
        enforceDeviceOwnerOrProfileOwnerOnOrganizationOwnedDevice(admin);
        if (!isOrganizationOwnedDeviceWithManagedProfile()) {
            ensureAllUsersAffiliated();
        }
        DevicePolicyEventLogger.createEvent(17).setAdmin(admin).write();
        if (!this.mContext.getResources().getBoolean(R.bool.config_cecRcProfileTvFour_allowed) || !this.mInjector.securityLogGetLoggingEnabledProperty()) {
            return null;
        }
        recordSecurityLogRetrievalTime();
        ArrayList<SecurityLog.SecurityEvent> output = new ArrayList<>();
        try {
            SecurityLog.readPreviousEvents(output);
            int enabledUser = getSecurityLoggingEnabledUser();
            if (enabledUser != -1) {
                SecurityLog.redactEvents(output, enabledUser);
            }
            return new ParceledListSlice<>(output);
        } catch (IOException e) {
            Slog.w(LOG_TAG, "Fail to read previous events", e);
            return new ParceledListSlice<>(Collections.emptyList());
        }
    }

    public ParceledListSlice<SecurityLog.SecurityEvent> retrieveSecurityLogs(ComponentName admin) {
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(admin);
        enforceDeviceOwnerOrProfileOwnerOnOrganizationOwnedDevice(admin);
        if (!isOrganizationOwnedDeviceWithManagedProfile()) {
            ensureAllUsersAffiliated();
        }
        if (!this.mInjector.securityLogGetLoggingEnabledProperty()) {
            return null;
        }
        recordSecurityLogRetrievalTime();
        List<SecurityLog.SecurityEvent> logs = this.mSecurityLogMonitor.retrieveLogs();
        DevicePolicyEventLogger.createEvent(16).setAdmin(admin).write();
        if (logs != null) {
            return new ParceledListSlice<>(logs);
        }
        return null;
    }

    public long forceSecurityLogs() {
        enforceShell("forceSecurityLogs");
        if (!this.mInjector.securityLogGetLoggingEnabledProperty()) {
            throw new IllegalStateException("logging is not available");
        }
        return this.mSecurityLogMonitor.forceLogs();
    }

    private void enforceCanManageDeviceAdmin() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEVICE_ADMINS", null);
    }

    private void enforceCanManageProfileAndDeviceOwners() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS", null);
    }

    private void enforceCallerSystemUserHandle() {
        int callingUid = this.mInjector.binderGetCallingUid();
        int userId = UserHandle.getUserId(callingUid);
        if (userId != 0) {
            throw new SecurityException("Caller has to be in user 0");
        }
    }

    public boolean isUninstallInQueue(String packageName) {
        boolean zContains;
        enforceCanManageDeviceAdmin();
        int userId = this.mInjector.userHandleGetCallingUserId();
        Pair<String, Integer> packageUserPair = new Pair<>(packageName, Integer.valueOf(userId));
        synchronized (getLockObject()) {
            zContains = this.mPackagesToRemove.contains(packageUserPair);
        }
        return zContains;
    }

    public void uninstallPackageWithActiveAdmins(final String packageName) {
        enforceCanManageDeviceAdmin();
        Preconditions.checkArgument(!TextUtils.isEmpty(packageName));
        final int userId = this.mInjector.userHandleGetCallingUserId();
        enforceUserUnlocked(userId);
        ComponentName profileOwner = getProfileOwner(userId);
        if (profileOwner != null && packageName.equals(profileOwner.getPackageName())) {
            throw new IllegalArgumentException("Cannot uninstall a package with a profile owner");
        }
        ComponentName deviceOwner = getDeviceOwnerComponent(false);
        if (getDeviceOwnerUserId() == userId && deviceOwner != null && packageName.equals(deviceOwner.getPackageName())) {
            throw new IllegalArgumentException("Cannot uninstall a package with a device owner");
        }
        Pair<String, Integer> packageUserPair = new Pair<>(packageName, Integer.valueOf(userId));
        synchronized (getLockObject()) {
            this.mPackagesToRemove.add(packageUserPair);
        }
        List<ComponentName> allActiveAdmins = getActiveAdmins(userId);
        final List<ComponentName> packageActiveAdmins = new ArrayList<>();
        if (allActiveAdmins != null) {
            for (ComponentName activeAdmin : allActiveAdmins) {
                if (packageName.equals(activeAdmin.getPackageName())) {
                    packageActiveAdmins.add(activeAdmin);
                    removeActiveAdmin(activeAdmin, userId);
                }
            }
        }
        if (packageActiveAdmins.size() == 0) {
            startUninstallIntent(packageName, userId);
        } else {
            this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.devicepolicy.DevicePolicyManagerService.9
                @Override // java.lang.Runnable
                public void run() {
                    for (ComponentName activeAdmin2 : packageActiveAdmins) {
                        DevicePolicyManagerService.this.removeAdminArtifacts(activeAdmin2, userId);
                    }
                    DevicePolicyManagerService.this.startUninstallIntent(packageName, userId);
                }
            }, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
        }
    }

    public boolean isDeviceProvisioned() {
        boolean z;
        enforceManageUsers();
        synchronized (getLockObject()) {
            z = getUserDataUnchecked(0).mUserSetupComplete;
        }
        return z;
    }

    private boolean isCurrentUserDemo() {
        if (UserManager.isDeviceInDemoMode(this.mContext)) {
            final int userId = this.mInjector.userHandleGetCallingUserId();
            return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$5Wdacb_bv2NxK0bcror9bEmiLFs
                public final Object getOrThrow() {
                    return this.f$0.lambda$isCurrentUserDemo$89$DevicePolicyManagerService(userId);
                }
            })).booleanValue();
        }
        return false;
    }

    public /* synthetic */ Boolean lambda$isCurrentUserDemo$89$DevicePolicyManagerService(int userId) throws Exception {
        return Boolean.valueOf(this.mUserManager.getUserInfo(userId).isDemo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removePackageIfRequired(String packageName, int userId) {
        if (!packageHasActiveAdmins(packageName, userId)) {
            startUninstallIntent(packageName, userId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startUninstallIntent(String packageName, int userId) {
        Pair<String, Integer> packageUserPair = new Pair<>(packageName, Integer.valueOf(userId));
        synchronized (getLockObject()) {
            if (this.mPackagesToRemove.contains(packageUserPair)) {
                this.mPackagesToRemove.remove(packageUserPair);
                if (!isPackageInstalledForUser(packageName, userId)) {
                    return;
                }
                try {
                    this.mInjector.getIActivityManager().forceStopPackage(packageName, userId);
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "Failure talking to ActivityManager while force stopping package");
                }
                Uri packageURI = Uri.parse("package:" + packageName);
                Intent uninstallIntent = new Intent("android.intent.action.UNINSTALL_PACKAGE", packageURI);
                uninstallIntent.setFlags(AudioFormat.EVRC);
                this.mContext.startActivityAsUser(uninstallIntent, UserHandle.of(userId));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAdminArtifacts(ComponentName adminReceiver, int userHandle) {
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminUncheckedLocked(adminReceiver, userHandle);
            if (admin == null) {
                return;
            }
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            boolean doProxyCleanup = admin.info.usesPolicy(5);
            policy.mAdminList.remove(admin);
            policy.mAdminMap.remove(adminReceiver);
            validatePasswordOwnerLocked(policy);
            if (doProxyCleanup) {
                lambda$setGlobalProxy$38$DevicePolicyManagerService(policy);
            }
            pushActiveAdminPackagesLocked(userHandle);
            pushMeteredDisabledPackagesLocked(userHandle);
            saveSettingsLocked(userHandle);
            updateMaximumTimeToLockLocked(userHandle);
            policy.mRemovingAdmins.remove(adminReceiver);
            Slog.i(LOG_TAG, "Device admin " + adminReceiver + " removed from user " + userHandle);
            pushUserRestrictions(userHandle);
        }
    }

    public void setDeviceProvisioningConfigApplied() {
        enforceManageUsers();
        synchronized (getLockObject()) {
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
            policy.mDeviceProvisioningConfigApplied = true;
            saveSettingsLocked(0);
        }
    }

    public boolean isDeviceProvisioningConfigApplied() {
        boolean z;
        enforceManageUsers();
        synchronized (getLockObject()) {
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
            z = policy.mDeviceProvisioningConfigApplied;
        }
        return z;
    }

    public void forceUpdateUserSetupComplete() {
        enforceCanManageProfileAndDeviceOwners();
        enforceCallerSystemUserHandle();
        if (!this.mInjector.isBuildDebuggable()) {
            return;
        }
        boolean isUserCompleted = this.mInjector.settingsSecureGetIntForUser("user_setup_complete", 0, 0) != 0;
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
        policy.mUserSetupComplete = isUserCompleted;
        this.mStateCache.setDeviceProvisioned(isUserCompleted);
        synchronized (getLockObject()) {
            saveSettingsLocked(0);
        }
    }

    public void setBackupServiceEnabled(ComponentName admin, boolean enabled) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(admin);
        enforceProfileOrDeviceOwner(admin);
        int userId = this.mInjector.userHandleGetCallingUserId();
        toggleBackupServiceActive(userId, enabled);
    }

    public boolean isBackupServiceEnabled(ComponentName admin) {
        Objects.requireNonNull(admin);
        if (!this.mHasFeature) {
            return true;
        }
        enforceProfileOrDeviceOwner(admin);
        final int userId = this.mInjector.userHandleGetCallingUserId();
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$4bJRNG2emM4KG1KKc9GJC0c0-2k
            public final Object getOrThrow() {
                return this.f$0.lambda$isBackupServiceEnabled$90$DevicePolicyManagerService(userId);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isBackupServiceEnabled$90$DevicePolicyManagerService(int userId) throws Exception {
        Boolean boolValueOf;
        synchronized (getLockObject()) {
            try {
                try {
                    IBackupManager ibm = this.mInjector.getIBackupManager();
                    boolValueOf = Boolean.valueOf(ibm != null && ibm.isBackupServiceActive(userId));
                } catch (RemoteException e) {
                    throw new IllegalStateException("Failed requesting backup service state.", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return boolValueOf;
    }

    public boolean bindDeviceAdminServiceAsUser(ComponentName admin, IApplicationThread caller, IBinder activtiyToken, Intent serviceIntent, IServiceConnection connection, int flags, int targetUserId) throws Throwable {
        String targetPackage;
        long callingIdentity;
        if (!this.mHasFeature) {
            return false;
        }
        Objects.requireNonNull(admin);
        Objects.requireNonNull(caller);
        Objects.requireNonNull(serviceIntent);
        Preconditions.checkArgument((serviceIntent.getComponent() == null && serviceIntent.getPackage() == null) ? false : true, "Service intent must be explicit (with a package name or component): " + serviceIntent);
        Objects.requireNonNull(connection);
        Preconditions.checkArgument(this.mInjector.userHandleGetCallingUserId() != targetUserId, "target user id must be different from the calling user id");
        if (!getBindDeviceAdminTargetUsers(admin).contains(UserHandle.of(targetUserId))) {
            throw new SecurityException("Not allowed to bind to target user id");
        }
        synchronized (getLockObject()) {
            targetPackage = getOwnerPackageNameForUserLocked(targetUserId);
        }
        long callingIdentity2 = this.mInjector.binderClearCallingIdentity();
        try {
            Intent sanitizedIntent = createCrossUserServiceIntent(serviceIntent, targetPackage, targetUserId);
            if (sanitizedIntent == null) {
                this.mInjector.binderRestoreCallingIdentity(callingIdentity2);
                return false;
            }
            callingIdentity = callingIdentity2;
            try {
                boolean z = this.mInjector.getIActivityManager().bindService(caller, activtiyToken, serviceIntent, serviceIntent.resolveTypeIfNeeded(this.mContext.getContentResolver()), connection, flags, this.mContext.getOpPackageName(), targetUserId) != 0;
                this.mInjector.binderRestoreCallingIdentity(callingIdentity);
                return z;
            } catch (RemoteException e) {
            } catch (Throwable th) {
                th = th;
                this.mInjector.binderRestoreCallingIdentity(callingIdentity);
                throw th;
            }
        } catch (RemoteException e2) {
            callingIdentity = callingIdentity2;
        } catch (Throwable th2) {
            th = th2;
            callingIdentity = callingIdentity2;
        }
        this.mInjector.binderRestoreCallingIdentity(callingIdentity);
        return false;
    }

    public List<UserHandle> getBindDeviceAdminTargetUsers(final ComponentName admin) {
        List<UserHandle> list;
        if (!this.mHasFeature) {
            return Collections.emptyList();
        }
        Objects.requireNonNull(admin);
        synchronized (getLockObject()) {
            getActiveAdminForCallerLocked(admin, -1);
            final int callingUserId = this.mInjector.userHandleGetCallingUserId();
            list = (List) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$duKyZofDtAsiOus8UAelZTac7bY
                public final Object getOrThrow() {
                    return this.f$0.lambda$getBindDeviceAdminTargetUsers$91$DevicePolicyManagerService(admin, callingUserId);
                }
            });
        }
        return list;
    }

    public /* synthetic */ ArrayList lambda$getBindDeviceAdminTargetUsers$91$DevicePolicyManagerService(ComponentName admin, int callingUserId) throws Exception {
        ArrayList<UserHandle> targetUsers = new ArrayList<>();
        if (!isDeviceOwner(admin, callingUserId)) {
            if (canUserBindToDeviceOwnerLocked(callingUserId)) {
                targetUsers.add(UserHandle.of(this.mOwners.getDeviceOwnerUserId()));
            }
        } else {
            List<UserInfo> userInfos = this.mUserManager.getUsers(true);
            for (int i = 0; i < userInfos.size(); i++) {
                int userId = userInfos.get(i).id;
                if (userId != callingUserId && canUserBindToDeviceOwnerLocked(userId)) {
                    targetUsers.add(UserHandle.of(userId));
                }
            }
        }
        return targetUsers;
    }

    private boolean canUserBindToDeviceOwnerLocked(int userId) {
        if (this.mOwners.hasDeviceOwner() && userId != this.mOwners.getDeviceOwnerUserId() && this.mOwners.hasProfileOwner(userId) && TextUtils.equals(this.mOwners.getDeviceOwnerPackageName(), this.mOwners.getProfileOwnerPackage(userId))) {
            return isUserAffiliatedWithDeviceLocked(userId);
        }
        return false;
    }

    private boolean hasIncompatibleAccountsOrNonAdbNoLock(final int userId, final ComponentName owner) {
        if (!isAdb()) {
            return true;
        }
        wtfIfInLock();
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$XBKm7vqF5RNPYaUM5fnyZKNvusI
            public final Object getOrThrow() {
                return this.f$0.lambda$hasIncompatibleAccountsOrNonAdbNoLock$92$DevicePolicyManagerService(userId, owner);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$hasIncompatibleAccountsOrNonAdbNoLock$92$DevicePolicyManagerService(int userId, ComponentName owner) throws Exception {
        AccountManager am = AccountManager.get(this.mContext);
        Account[] accounts = am.getAccountsAsUser(userId);
        if (accounts.length == 0) {
            return false;
        }
        synchronized (getLockObject()) {
            if (owner != null) {
                if (isAdminTestOnlyLocked(owner, userId)) {
                    String[] feature_allow = {"android.account.DEVICE_OR_PROFILE_OWNER_ALLOWED"};
                    String[] feature_disallow = {"android.account.DEVICE_OR_PROFILE_OWNER_DISALLOWED"};
                    boolean compatible = true;
                    for (Account account : accounts) {
                        if (hasAccountFeatures(am, account, feature_disallow)) {
                            Log.e(LOG_TAG, account + " has " + feature_disallow[0]);
                            compatible = false;
                            break;
                        }
                        if (!hasAccountFeatures(am, account, feature_allow)) {
                            Log.e(LOG_TAG, account + " doesn't have " + feature_allow[0]);
                            compatible = false;
                            break;
                        }
                    }
                    if (compatible) {
                        Log.w(LOG_TAG, "All accounts are compatible");
                    } else {
                        Log.e(LOG_TAG, "Found incompatible accounts");
                    }
                    return Boolean.valueOf(!compatible);
                }
            }
            Log.w(LOG_TAG, "Non test-only owner can't be installed with existing accounts.");
            return true;
        }
    }

    private boolean hasAccountFeatures(AccountManager am, Account account, String[] features) {
        try {
            return am.hasFeatures(account, features, null, null).getResult().booleanValue();
        } catch (Exception e) {
            Log.w(LOG_TAG, "Failed to get account feature", e);
            return false;
        }
    }

    private boolean isAdb() {
        int callingUid = this.mInjector.binderGetCallingUid();
        return callingUid == 2000 || callingUid == 0;
    }

    public void setNetworkLoggingEnabled(ComponentName admin, String packageName, boolean enabled) {
        boolean isDelegate;
        if (!this.mHasFeature) {
            return;
        }
        synchronized (getLockObject()) {
            enforceCanManageScope(admin, packageName, -2, "delegation-network-logging");
            if (enabled == isNetworkLoggingEnabledInternalLocked()) {
                return;
            }
            ActiveAdmin deviceOwner = getDeviceOwnerAdminLocked();
            deviceOwner.isNetworkLoggingEnabled = enabled;
            int i = 0;
            if (!enabled) {
                deviceOwner.numNetworkLoggingNotifications = 0;
                deviceOwner.lastNetworkLoggingNotificationTimeMs = 0L;
            }
            saveSettingsLocked(this.mInjector.userHandleGetCallingUserId());
            setNetworkLoggingActiveInternal(enabled);
            if (admin != null) {
                isDelegate = false;
            } else {
                isDelegate = true;
            }
            DevicePolicyEventLogger devicePolicyEventLogger = DevicePolicyEventLogger.createEvent(119).setAdmin(packageName).setBoolean(isDelegate);
            if (enabled) {
                i = 1;
            }
            devicePolicyEventLogger.setInt(i).write();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNetworkLoggingActiveInternal(final boolean active) {
        synchronized (getLockObject()) {
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$z7mS8qC0cwK6XWcPoPyE1GjIlP8
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setNetworkLoggingActiveInternal$93$DevicePolicyManagerService(active);
                }
            });
        }
    }

    public /* synthetic */ void lambda$setNetworkLoggingActiveInternal$93$DevicePolicyManagerService(boolean active) throws Exception {
        if (active) {
            NetworkLogger networkLogger = new NetworkLogger(this, this.mInjector.getPackageManagerInternal());
            this.mNetworkLogger = networkLogger;
            if (!networkLogger.startNetworkLogging()) {
                this.mNetworkLogger = null;
                Slog.wtf(LOG_TAG, "Network logging could not be started due to the logging service not being available yet.");
            }
            maybePauseDeviceWideLoggingLocked();
            sendNetworkLoggingNotificationLocked();
            return;
        }
        NetworkLogger networkLogger2 = this.mNetworkLogger;
        if (networkLogger2 != null && !networkLogger2.stopNetworkLogging()) {
            Slog.wtf(LOG_TAG, "Network logging could not be stopped due to the logging service not being available yet.");
        }
        this.mNetworkLogger = null;
        this.mInjector.getNotificationManager().cancel(1002);
    }

    public long forceNetworkLogs() {
        enforceShell("forceNetworkLogs");
        synchronized (getLockObject()) {
            if (!isNetworkLoggingEnabledInternalLocked()) {
                throw new IllegalStateException("logging is not available");
            }
            if (this.mNetworkLogger != null) {
                return ((Long) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$O_zdQLt6cFgh5CRDFGNl95u52no
                    public final Object getOrThrow() {
                        return this.f$0.lambda$forceNetworkLogs$94$DevicePolicyManagerService();
                    }
                })).longValue();
            }
            return 0L;
        }
    }

    public /* synthetic */ Long lambda$forceNetworkLogs$94$DevicePolicyManagerService() throws Exception {
        return Long.valueOf(this.mNetworkLogger.forceBatchFinalization());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybePauseDeviceWideLoggingLocked() {
        if (!areAllUsersAffiliatedWithDeviceLocked()) {
            Slog.i(LOG_TAG, "There are unaffiliated users, network logging will be paused if enabled.");
            NetworkLogger networkLogger = this.mNetworkLogger;
            if (networkLogger != null) {
                networkLogger.pause();
            }
            if (!isOrganizationOwnedDeviceWithManagedProfile()) {
                Slog.i(LOG_TAG, "Not org-owned managed profile device, security logging will be paused if enabled.");
                this.mSecurityLogMonitor.pause();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeResumeDeviceWideLoggingLocked() {
        final boolean allUsersAffiliated = areAllUsersAffiliatedWithDeviceLocked();
        final boolean orgOwnedProfileDevice = isOrganizationOwnedDeviceWithManagedProfile();
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$Mf7VQfiwmwQUgE1Wr9r1MNAMPWI
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$maybeResumeDeviceWideLoggingLocked$95$DevicePolicyManagerService(allUsersAffiliated, orgOwnedProfileDevice);
            }
        });
    }

    public /* synthetic */ void lambda$maybeResumeDeviceWideLoggingLocked$95$DevicePolicyManagerService(boolean allUsersAffiliated, boolean orgOwnedProfileDevice) throws Exception {
        NetworkLogger networkLogger;
        if (allUsersAffiliated || orgOwnedProfileDevice) {
            this.mSecurityLogMonitor.resume();
        }
        if (allUsersAffiliated && (networkLogger = this.mNetworkLogger) != null) {
            networkLogger.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void discardDeviceWideLogsLocked() {
        this.mSecurityLogMonitor.discardLogs();
        NetworkLogger networkLogger = this.mNetworkLogger;
        if (networkLogger != null) {
            networkLogger.discardLogs();
        }
    }

    public boolean isNetworkLoggingEnabled(ComponentName admin, String packageName) {
        boolean zIsNetworkLoggingEnabledInternalLocked;
        if (!this.mHasFeature) {
            return false;
        }
        synchronized (getLockObject()) {
            enforceCanManageScopeOrCheckPermission(admin, packageName, -2, "delegation-network-logging", "android.permission.MANAGE_USERS");
            zIsNetworkLoggingEnabledInternalLocked = isNetworkLoggingEnabledInternalLocked();
        }
        return zIsNetworkLoggingEnabledInternalLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNetworkLoggingEnabledInternalLocked() {
        ActiveAdmin deviceOwner = getDeviceOwnerAdminLocked();
        return deviceOwner != null && deviceOwner.isNetworkLoggingEnabled;
    }

    public List<NetworkEvent> retrieveNetworkLogs(ComponentName admin, String packageName, long batchToken) {
        if (!this.mHasFeature) {
            return null;
        }
        enforceCanManageScope(admin, packageName, -2, "delegation-network-logging");
        ensureAllUsersAffiliated();
        synchronized (getLockObject()) {
            if (this.mNetworkLogger != null && isNetworkLoggingEnabledInternalLocked()) {
                boolean isDelegate = admin == null;
                DevicePolicyEventLogger.createEvent(120).setAdmin(packageName).setBoolean(isDelegate).write();
                long currentTime = System.currentTimeMillis();
                DevicePolicyData policyData = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0);
                if (currentTime > policyData.mLastNetworkLogsRetrievalTime) {
                    policyData.mLastNetworkLogsRetrievalTime = currentTime;
                    saveSettingsLocked(0);
                }
                return this.mNetworkLogger.retrieveLogs(batchToken);
            }
            return null;
        }
    }

    private void sendNetworkLoggingNotificationLocked() {
        ActiveAdmin deviceOwner = getDeviceOwnerAdminLocked();
        if (deviceOwner == null || !deviceOwner.isNetworkLoggingEnabled || deviceOwner.numNetworkLoggingNotifications >= 2) {
            return;
        }
        long now = System.currentTimeMillis();
        if (now - deviceOwner.lastNetworkLoggingNotificationTimeMs < MS_PER_DAY) {
            return;
        }
        deviceOwner.numNetworkLoggingNotifications++;
        if (deviceOwner.numNetworkLoggingNotifications >= 2) {
            deviceOwner.lastNetworkLoggingNotificationTimeMs = 0L;
        } else {
            deviceOwner.lastNetworkLoggingNotificationTimeMs = now;
        }
        PackageManagerInternal pm = this.mInjector.getPackageManagerInternal();
        Intent intent = new Intent("android.app.action.SHOW_DEVICE_MONITORING_DIALOG");
        intent.setPackage(pm.getSystemUiServiceComponent().getPackageName());
        PendingIntent pendingIntent = PendingIntent.getBroadcastAsUser(this.mContext, 0, intent, 0, UserHandle.CURRENT);
        Notification notification = new Notification.Builder(this.mContext, SystemNotificationChannels.DEVICE_ADMIN).setSmallIcon(R.drawable.ic_cab_done_holo_light).setContentTitle(this.mContext.getString(R.string.keyboard_shortcut_group_applications_calculator)).setContentText(this.mContext.getString(R.string.keyboard_shortcut_group_applications_browser)).setTicker(this.mContext.getString(R.string.keyboard_shortcut_group_applications_calculator)).setShowWhen(true).setContentIntent(pendingIntent).setStyle(new Notification.BigTextStyle().bigText(this.mContext.getString(R.string.keyboard_shortcut_group_applications_browser))).build();
        this.mInjector.getNotificationManager().notify(1002, notification);
        saveSettingsLocked(this.mOwners.getDeviceOwnerUserId());
    }

    private String getOwnerPackageNameForUserLocked(int userId) {
        if (this.mOwners.getDeviceOwnerUserId() == userId) {
            return this.mOwners.getDeviceOwnerPackageName();
        }
        return this.mOwners.getProfileOwnerPackage(userId);
    }

    private Intent createCrossUserServiceIntent(Intent rawIntent, String expectedPackageName, int targetUserId) throws RemoteException, SecurityException {
        ResolveInfo info = this.mIPackageManager.resolveService(rawIntent, rawIntent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 0, targetUserId);
        if (info == null || info.serviceInfo == null) {
            Log.e(LOG_TAG, "Fail to look up the service: " + rawIntent + " or user " + targetUserId + " is not running");
            return null;
        }
        if (!expectedPackageName.equals(info.serviceInfo.packageName)) {
            throw new SecurityException("Only allow to bind service in " + expectedPackageName);
        }
        if (info.serviceInfo.exported && !"android.permission.BIND_DEVICE_ADMIN".equals(info.serviceInfo.permission)) {
            throw new SecurityException("Service must be protected by BIND_DEVICE_ADMIN permission");
        }
        rawIntent.setComponent(info.serviceInfo.getComponentName());
        return rawIntent;
    }

    public long getLastSecurityLogRetrievalTime() {
        enforceDeviceOwnerOrManageUsers();
        return lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0).mLastSecurityLogRetrievalTime;
    }

    public long getLastBugReportRequestTime() {
        enforceDeviceOwnerOrManageUsers();
        return lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0).mLastBugReportRequestTime;
    }

    public long getLastNetworkLogRetrievalTime() {
        enforceDeviceOwnerOrManageUsers();
        return lambda$getUserDataUnchecked$0$DevicePolicyManagerService(0).mLastNetworkLogsRetrievalTime;
    }

    public boolean setResetPasswordToken(ComponentName admin, final byte[] token) {
        boolean zBooleanValue;
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return false;
        }
        if (token == null || token.length < 32) {
            throw new IllegalArgumentException("token must be at least 32-byte long");
        }
        synchronized (getLockObject()) {
            final int userHandle = this.mInjector.userHandleGetCallingUserId();
            getActiveAdminForCallerLocked(admin, -1);
            final DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            zBooleanValue = ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$m4zlX2b5iSfllhMxSVPjL_oHmOY
                public final Object getOrThrow() {
                    return this.f$0.lambda$setResetPasswordToken$96$DevicePolicyManagerService(policy, userHandle, token);
                }
            })).booleanValue();
        }
        return zBooleanValue;
    }

    public /* synthetic */ Boolean lambda$setResetPasswordToken$96$DevicePolicyManagerService(DevicePolicyData policy, int userHandle, byte[] token) throws Exception {
        if (policy.mPasswordTokenHandle != 0) {
            this.mLockPatternUtils.removeEscrowToken(policy.mPasswordTokenHandle, userHandle);
        }
        policy.mPasswordTokenHandle = this.mLockPatternUtils.addEscrowToken(token, userHandle, (LockPatternUtils.EscrowTokenStateChangeCallback) null);
        saveSettingsLocked(userHandle);
        return Boolean.valueOf(policy.mPasswordTokenHandle != 0);
    }

    public boolean clearResetPasswordToken(ComponentName admin) {
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return false;
        }
        synchronized (getLockObject()) {
            final int userHandle = this.mInjector.userHandleGetCallingUserId();
            getActiveAdminForCallerLocked(admin, -1);
            final DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            if (policy.mPasswordTokenHandle == 0) {
                return false;
            }
            return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$DtpdLIouso_66kHWIdwRXzWqQYM
                public final Object getOrThrow() {
                    return this.f$0.lambda$clearResetPasswordToken$97$DevicePolicyManagerService(policy, userHandle);
                }
            })).booleanValue();
        }
    }

    public /* synthetic */ Boolean lambda$clearResetPasswordToken$97$DevicePolicyManagerService(DevicePolicyData policy, int userHandle) throws Exception {
        boolean result = this.mLockPatternUtils.removeEscrowToken(policy.mPasswordTokenHandle, userHandle);
        policy.mPasswordTokenHandle = 0L;
        saveSettingsLocked(userHandle);
        return Boolean.valueOf(result);
    }

    public boolean isResetPasswordTokenActive(ComponentName admin) {
        boolean zIsResetPasswordTokenActiveForUserLocked;
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return false;
        }
        synchronized (getLockObject()) {
            int userHandle = this.mInjector.userHandleGetCallingUserId();
            getActiveAdminForCallerLocked(admin, -1);
            zIsResetPasswordTokenActiveForUserLocked = isResetPasswordTokenActiveForUserLocked(userHandle);
        }
        return zIsResetPasswordTokenActiveForUserLocked;
    }

    private boolean isResetPasswordTokenActiveForUserLocked(final int userHandle) {
        final DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        if (policy.mPasswordTokenHandle != 0) {
            return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$oomdP8p-5bssovKLhMubh6Z0jJg
                public final Object getOrThrow() {
                    return this.f$0.lambda$isResetPasswordTokenActiveForUserLocked$98$DevicePolicyManagerService(policy, userHandle);
                }
            })).booleanValue();
        }
        return false;
    }

    public /* synthetic */ Boolean lambda$isResetPasswordTokenActiveForUserLocked$98$DevicePolicyManagerService(DevicePolicyData policy, int userHandle) throws Exception {
        return Boolean.valueOf(this.mLockPatternUtils.isEscrowTokenActive(policy.mPasswordTokenHandle, userHandle));
    }

    public boolean resetPasswordWithToken(ComponentName admin, String passwordOrNull, byte[] token, int flags) {
        if (!this.mHasFeature || !this.mLockPatternUtils.hasSecureLockScreen()) {
            return false;
        }
        Objects.requireNonNull(token);
        synchronized (getLockObject()) {
            int userHandle = this.mInjector.userHandleGetCallingUserId();
            getActiveAdminForCallerLocked(admin, -1);
            DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
            if (policy.mPasswordTokenHandle != 0) {
                String password = passwordOrNull != null ? passwordOrNull : "";
                return resetPasswordInternal(password, policy.mPasswordTokenHandle, token, flags, this.mInjector.binderGetCallingUid());
            }
            Slog.w(LOG_TAG, "No saved token handle");
            return false;
        }
    }

    public boolean isCurrentInputMethodSetByOwner() {
        enforceProfileOwnerOrSystemUser();
        return lambda$getUserDataUnchecked$0$DevicePolicyManagerService(this.mInjector.userHandleGetCallingUserId()).mCurrentInputMethodSet;
    }

    public StringParceledListSlice getOwnerInstalledCaCerts(UserHandle user) {
        StringParceledListSlice stringParceledListSlice;
        int userId = user.getIdentifier();
        enforceProfileOwnerOrFullCrossUsersPermission(userId);
        synchronized (getLockObject()) {
            stringParceledListSlice = new StringParceledListSlice(new ArrayList(lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mOwnerInstalledCaCerts));
        }
        return stringParceledListSlice;
    }

    public void clearApplicationUserData(ComponentName admin, String packageName, IPackageDataObserver callback) {
        Objects.requireNonNull(admin, "ComponentName is null");
        Objects.requireNonNull(packageName, "packageName is null");
        Objects.requireNonNull(callback, "callback is null");
        enforceProfileOrDeviceOwner(admin);
        int userId = UserHandle.getCallingUserId();
        long ident = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                ActivityManager.getService().clearApplicationUserData(packageName, false, callback, userId);
            } catch (RemoteException e) {
            } catch (SecurityException se) {
                Slog.w(LOG_TAG, "Not allowed to clear application user data for package " + packageName, se);
                try {
                    callback.onRemoveCompleted(packageName, false);
                } catch (RemoteException e2) {
                }
            }
        } finally {
            this.mInjector.binderRestoreCallingIdentity(ident);
        }
    }

    public void setLogoutEnabled(ComponentName admin, boolean enabled) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(admin);
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwner = getActiveAdminForCallerLocked(admin, -2);
            if (deviceOwner.isLogoutEnabled == enabled) {
                return;
            }
            deviceOwner.isLogoutEnabled = enabled;
            saveSettingsLocked(this.mInjector.userHandleGetCallingUserId());
        }
    }

    public boolean isLogoutEnabled() {
        boolean z = false;
        if (!this.mHasFeature) {
            return false;
        }
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwner = getDeviceOwnerAdminLocked();
            if (deviceOwner != null && deviceOwner.isLogoutEnabled) {
                z = true;
            }
        }
        return z;
    }

    public List<String> getDisallowedSystemApps(ComponentName admin, int userId, String provisioningAction) throws RemoteException {
        enforceCanManageProfileAndDeviceOwners();
        return new ArrayList(this.mOverlayPackagesProvider.getNonRequiredApps(admin, userId, provisioningAction));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x00a6: MOVE (r2 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY] A[D('ownerType' java.lang.String)]), block:B:34:0x00a6 */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.android.server.devicepolicy.DevicePolicyManagerService$DevicePolicyData] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r19v0, types: [com.android.server.devicepolicy.DevicePolicyManagerService] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    public void transferOwnership(ComponentName admin, ComponentName target, PersistableBundle bundle) throws Throwable {
        PersistableBundle bundle2;
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(admin, "Admin cannot be null.");
        Objects.requireNonNull(target, "Target cannot be null.");
        if (bundle != null) {
            enforceMaxStringLength(bundle, "bundle");
        }
        enforceProfileOrDeviceOwner(admin);
        if (admin.equals(target)) {
            throw new IllegalArgumentException("Provided administrator and target are the same object.");
        }
        if (admin.getPackageName().equals(target.getPackageName())) {
            throw new IllegalArgumentException("Provided administrator and target have the same package name.");
        }
        int callingUserId = this.mInjector.userHandleGetCallingUserId();
        ?? Lambda$getUserDataUnchecked$0$DevicePolicyManagerService = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(callingUserId);
        DeviceAdminInfo incomingDeviceInfo = findAdmin(target, callingUserId, true);
        checkActiveAdminPrecondition(target, incomingDeviceInfo, Lambda$getUserDataUnchecked$0$DevicePolicyManagerService);
        if (!incomingDeviceInfo.supportsTransferOwnership()) {
            throw new IllegalArgumentException("Provided target does not support ownership transfer.");
        }
        long id = this.mInjector.binderClearCallingIdentity();
        String ownerType = null;
        try {
            synchronized (getLockObject()) {
                try {
                    if (bundle == null) {
                        try {
                            bundle2 = new PersistableBundle();
                        } catch (Throwable th) {
                            th = th;
                            Lambda$getUserDataUnchecked$0$DevicePolicyManagerService = bundle;
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                                this.mInjector.binderRestoreCallingIdentity(id);
                                throw th;
                            }
                        }
                    } else {
                        bundle2 = bundle;
                    }
                    try {
                        try {
                            if (isProfileOwner(admin, callingUserId)) {
                                PersistableBundle bundle3 = bundle2;
                                prepareTransfer(admin, target, bundle2, callingUserId, LOG_TAG_PROFILE_OWNER);
                                transferProfileOwnershipLocked(admin, target, callingUserId);
                                sendProfileOwnerCommand("android.app.action.TRANSFER_OWNERSHIP_COMPLETE", getTransferOwnershipAdminExtras(bundle3), callingUserId);
                                postTransfer("android.app.action.PROFILE_OWNER_CHANGED", callingUserId);
                                if (isUserAffiliatedWithDeviceLocked(callingUserId)) {
                                    notifyAffiliatedProfileTransferOwnershipComplete(callingUserId);
                                }
                                ownerType = LOG_TAG_PROFILE_OWNER;
                            } else {
                                PersistableBundle bundle4 = bundle2;
                                if (isDeviceOwner(admin, callingUserId)) {
                                    prepareTransfer(admin, target, bundle4, callingUserId, LOG_TAG_DEVICE_OWNER);
                                    transferDeviceOwnershipLocked(admin, target, callingUserId);
                                    sendDeviceOwnerCommand("android.app.action.TRANSFER_OWNERSHIP_COMPLETE", getTransferOwnershipAdminExtras(bundle4));
                                    postTransfer("android.app.action.DEVICE_OWNER_CHANGED", callingUserId);
                                    ownerType = LOG_TAG_DEVICE_OWNER;
                                }
                            }
                            this.mInjector.binderRestoreCallingIdentity(id);
                            DevicePolicyEventLogger.createEvent(58).setAdmin(admin).setStrings(new String[]{target.getPackageName(), ownerType}).write();
                        } catch (Throwable th3) {
                            th = th3;
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        Lambda$getUserDataUnchecked$0$DevicePolicyManagerService = bundle2;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    private void prepareTransfer(ComponentName admin, ComponentName target, PersistableBundle bundle, int callingUserId, String adminType) {
        saveTransferOwnershipBundleLocked(bundle, callingUserId);
        this.mTransferOwnershipMetadataManager.saveMetadataFile(new TransferOwnershipMetadataManager.Metadata(admin, target, callingUserId, adminType));
    }

    private void postTransfer(String broadcast, int callingUserId) {
        deleteTransferOwnershipMetadataFileLocked();
        sendOwnerChangedBroadcast(broadcast, callingUserId);
    }

    private void notifyAffiliatedProfileTransferOwnershipComplete(int callingUserId) {
        Bundle extras = new Bundle();
        extras.putParcelable("android.intent.extra.USER", UserHandle.of(callingUserId));
        sendDeviceOwnerCommand("android.app.action.AFFILIATED_PROFILE_TRANSFER_OWNERSHIP_COMPLETE", extras);
    }

    private void transferProfileOwnershipLocked(ComponentName admin, ComponentName target, int profileOwnerUserId) {
        transferActiveAdminUncheckedLocked(target, admin, profileOwnerUserId);
        this.mOwners.transferProfileOwner(target, profileOwnerUserId);
        Slog.i(LOG_TAG, "Profile owner set: " + target + " on user " + profileOwnerUserId);
        this.mOwners.writeProfileOwner(profileOwnerUserId);
        this.mDeviceAdminServiceController.startServiceForOwner(target.getPackageName(), profileOwnerUserId, "transfer-profile-owner");
    }

    private void transferDeviceOwnershipLocked(ComponentName admin, ComponentName target, int userId) {
        transferActiveAdminUncheckedLocked(target, admin, userId);
        this.mOwners.transferDeviceOwnership(target);
        Slog.i(LOG_TAG, "Device owner set: " + target + " on user " + userId);
        this.mOwners.writeDeviceOwner();
        this.mDeviceAdminServiceController.startServiceForOwner(target.getPackageName(), userId, "transfer-device-owner");
    }

    private Bundle getTransferOwnershipAdminExtras(PersistableBundle bundle) {
        Bundle extras = new Bundle();
        if (bundle != null) {
            extras.putParcelable("android.app.extra.TRANSFER_OWNERSHIP_ADMIN_EXTRAS_BUNDLE", bundle);
        }
        return extras;
    }

    public void setStartUserSessionMessage(ComponentName admin, CharSequence startUserSessionMessage) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(admin);
        String startUserSessionMessageString = startUserSessionMessage != null ? startUserSessionMessage.toString() : null;
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwner = getActiveAdminForCallerLocked(admin, -2);
            if (TextUtils.equals(deviceOwner.startUserSessionMessage, startUserSessionMessage)) {
                return;
            }
            deviceOwner.startUserSessionMessage = startUserSessionMessageString;
            saveSettingsLocked(this.mInjector.userHandleGetCallingUserId());
            this.mInjector.getActivityManagerInternal().setSwitchingFromSystemUserMessage(startUserSessionMessageString);
        }
    }

    public void setEndUserSessionMessage(ComponentName admin, CharSequence endUserSessionMessage) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(admin);
        String endUserSessionMessageString = endUserSessionMessage != null ? endUserSessionMessage.toString() : null;
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwner = getActiveAdminForCallerLocked(admin, -2);
            if (TextUtils.equals(deviceOwner.endUserSessionMessage, endUserSessionMessage)) {
                return;
            }
            deviceOwner.endUserSessionMessage = endUserSessionMessageString;
            saveSettingsLocked(this.mInjector.userHandleGetCallingUserId());
            this.mInjector.getActivityManagerInternal().setSwitchingToSystemUserMessage(endUserSessionMessageString);
        }
    }

    public String getStartUserSessionMessage(ComponentName admin) {
        String str;
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(admin);
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwner = getActiveAdminForCallerLocked(admin, -2);
            str = deviceOwner.startUserSessionMessage;
        }
        return str;
    }

    public String getEndUserSessionMessage(ComponentName admin) {
        String str;
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(admin);
        synchronized (getLockObject()) {
            ActiveAdmin deviceOwner = getActiveAdminForCallerLocked(admin, -2);
            str = deviceOwner.endUserSessionMessage;
        }
        return str;
    }

    private void deleteTransferOwnershipMetadataFileLocked() {
        this.mTransferOwnershipMetadataManager.deleteMetadataFile();
    }

    public PersistableBundle getTransferOwnershipBundle() {
        synchronized (getLockObject()) {
            int callingUserId = this.mInjector.userHandleGetCallingUserId();
            getActiveAdminForCallerLocked(null, -1);
            File bundleFile = new File(this.mInjector.environmentGetUserSystemDirectory(callingUserId), TRANSFER_OWNERSHIP_PARAMETERS_XML);
            if (!bundleFile.exists()) {
                return null;
            }
            try {
                FileInputStream stream = new FileInputStream(bundleFile);
                try {
                    XmlPullParser parser = Xml.newPullParser();
                    parser.setInput(stream, null);
                    parser.next();
                    PersistableBundle persistableBundleRestoreFromXml = PersistableBundle.restoreFromXml(parser);
                    stream.close();
                    return persistableBundleRestoreFromXml;
                } catch (Throwable th) {
                    try {
                        stream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException | IllegalArgumentException | XmlPullParserException e) {
                Slog.e(LOG_TAG, "Caught exception while trying to load the owner transfer parameters from file " + bundleFile, e);
                return null;
            }
        }
    }

    public int addOverrideApn(ComponentName who, final ApnSetting apnSetting) {
        if (!this.mHasFeature || !this.mHasTelephonyFeature) {
            return -1;
        }
        Objects.requireNonNull(who, "ComponentName is null in addOverrideApn");
        Objects.requireNonNull(apnSetting, "ApnSetting is null in addOverrideApn");
        enforceDeviceOwner(who);
        final TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService(TelephonyManager.class);
        if (tm != null) {
            return ((Integer) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$uU8Gq2BvTSdyDUXUtzoMMJE-Pqw
                public final Object getOrThrow() {
                    return this.f$0.lambda$addOverrideApn$99$DevicePolicyManagerService(tm, apnSetting);
                }
            })).intValue();
        }
        Log.w(LOG_TAG, "TelephonyManager is null when trying to add override apn");
        return -1;
    }

    public /* synthetic */ Integer lambda$addOverrideApn$99$DevicePolicyManagerService(TelephonyManager tm, ApnSetting apnSetting) throws Exception {
        return Integer.valueOf(tm.addDevicePolicyOverrideApn(this.mContext, apnSetting));
    }

    public boolean updateOverrideApn(ComponentName who, final int apnId, final ApnSetting apnSetting) {
        if (!this.mHasFeature || !this.mHasTelephonyFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null in updateOverrideApn");
        Objects.requireNonNull(apnSetting, "ApnSetting is null in updateOverrideApn");
        enforceDeviceOwner(who);
        if (apnId < 0) {
            return false;
        }
        final TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService(TelephonyManager.class);
        if (tm != null) {
            return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$lkJdNjv8RoM_GC5DkScEcJ0sc20
                public final Object getOrThrow() {
                    return this.f$0.lambda$updateOverrideApn$100$DevicePolicyManagerService(tm, apnId, apnSetting);
                }
            })).booleanValue();
        }
        Log.w(LOG_TAG, "TelephonyManager is null when trying to modify override apn");
        return false;
    }

    public /* synthetic */ Boolean lambda$updateOverrideApn$100$DevicePolicyManagerService(TelephonyManager tm, int apnId, ApnSetting apnSetting) throws Exception {
        return Boolean.valueOf(tm.modifyDevicePolicyOverrideApn(this.mContext, apnId, apnSetting));
    }

    public boolean removeOverrideApn(ComponentName who, int apnId) {
        if (!this.mHasFeature || !this.mHasTelephonyFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null in removeOverrideApn");
        enforceDeviceOwner(who);
        return removeOverrideApnUnchecked(apnId);
    }

    private boolean removeOverrideApnUnchecked(final int apnId) {
        if (apnId < 0) {
            return false;
        }
        int numDeleted = ((Integer) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$EBprrsQpAgFHVLQV-2aA6xY-yHY
            public final Object getOrThrow() {
                return this.f$0.lambda$removeOverrideApnUnchecked$101$DevicePolicyManagerService(apnId);
            }
        })).intValue();
        return numDeleted > 0;
    }

    public /* synthetic */ Integer lambda$removeOverrideApnUnchecked$101$DevicePolicyManagerService(int apnId) throws Exception {
        return Integer.valueOf(this.mContext.getContentResolver().delete(Uri.withAppendedPath(Telephony.Carriers.DPC_URI, Integer.toString(apnId)), null, null));
    }

    public List<ApnSetting> getOverrideApns(ComponentName who) {
        if (!this.mHasFeature || !this.mHasTelephonyFeature) {
            return Collections.emptyList();
        }
        Objects.requireNonNull(who, "ComponentName is null in getOverrideApns");
        enforceDeviceOwner(who);
        return getOverrideApnsUnchecked();
    }

    private List<ApnSetting> getOverrideApnsUnchecked() {
        final TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService(TelephonyManager.class);
        if (tm != null) {
            return (List) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$6YkMbEKRzdWEONK3plwvWzP0KDw
                public final Object getOrThrow() {
                    return this.f$0.lambda$getOverrideApnsUnchecked$102$DevicePolicyManagerService(tm);
                }
            });
        }
        Log.w(LOG_TAG, "TelephonyManager is null when trying to get override apns");
        return Collections.emptyList();
    }

    public /* synthetic */ List lambda$getOverrideApnsUnchecked$102$DevicePolicyManagerService(TelephonyManager tm) throws Exception {
        return tm.getDevicePolicyOverrideApns(this.mContext);
    }

    public void setOverrideApnsEnabled(ComponentName who, boolean enabled) {
        if (!this.mHasFeature || !this.mHasTelephonyFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null in setOverrideApnEnabled");
        enforceDeviceOwner(who);
        setOverrideApnsEnabledUnchecked(enabled);
    }

    private void setOverrideApnsEnabledUnchecked(boolean enabled) {
        final ContentValues value = new ContentValues();
        value.put("enforced", Boolean.valueOf(enabled));
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$V_nV0fKrUiSkAKima30a53aTrSo
            public final Object getOrThrow() {
                return this.f$0.lambda$setOverrideApnsEnabledUnchecked$103$DevicePolicyManagerService(value);
            }
        });
    }

    public /* synthetic */ Integer lambda$setOverrideApnsEnabledUnchecked$103$DevicePolicyManagerService(ContentValues value) throws Exception {
        return Integer.valueOf(this.mContext.getContentResolver().update(Telephony.Carriers.ENFORCE_MANAGED_URI, value, null, null));
    }

    public boolean isOverrideApnEnabled(ComponentName who) {
        if (!this.mHasFeature || !this.mHasTelephonyFeature) {
            return false;
        }
        Objects.requireNonNull(who, "ComponentName is null in isOverrideApnEnabled");
        enforceDeviceOwner(who);
        Cursor enforceCursor = (Cursor) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$tqDvm4LmSpV7XfrpgRiu2_Irh8U
            public final Object getOrThrow() {
                return this.f$0.lambda$isOverrideApnEnabled$104$DevicePolicyManagerService();
            }
        });
        if (enforceCursor == null) {
            return false;
        }
        try {
            try {
                if (enforceCursor.moveToFirst()) {
                    return enforceCursor.getInt(enforceCursor.getColumnIndex("enforced")) == 1;
                }
            } catch (IllegalArgumentException e) {
                Slog.e(LOG_TAG, "Cursor returned from ENFORCE_MANAGED_URI doesn't contain correct info.", e);
            }
            return false;
        } finally {
            enforceCursor.close();
        }
    }

    public /* synthetic */ Cursor lambda$isOverrideApnEnabled$104$DevicePolicyManagerService() throws Exception {
        return this.mContext.getContentResolver().query(Telephony.Carriers.ENFORCE_MANAGED_URI, null, null, null, null);
    }

    void saveTransferOwnershipBundleLocked(PersistableBundle bundle, int userId) {
        File parametersFile = new File(this.mInjector.environmentGetUserSystemDirectory(userId), TRANSFER_OWNERSHIP_PARAMETERS_XML);
        AtomicFile atomicFile = new AtomicFile(parametersFile);
        FileOutputStream stream = null;
        try {
            stream = atomicFile.startWrite();
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(stream, StandardCharsets.UTF_8.name());
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.startTag(null, TAG_TRANSFER_OWNERSHIP_BUNDLE);
            bundle.saveToXml(fastXmlSerializer);
            fastXmlSerializer.endTag(null, TAG_TRANSFER_OWNERSHIP_BUNDLE);
            fastXmlSerializer.endDocument();
            atomicFile.finishWrite(stream);
        } catch (IOException | XmlPullParserException e) {
            Slog.e(LOG_TAG, "Caught exception while trying to save the owner transfer parameters to file " + parametersFile, e);
            parametersFile.delete();
            atomicFile.failWrite(stream);
        }
    }

    void deleteTransferOwnershipBundleLocked(int userId) {
        File parametersFile = new File(this.mInjector.environmentGetUserSystemDirectory(userId), TRANSFER_OWNERSHIP_PARAMETERS_XML);
        parametersFile.delete();
    }

    private void maybeLogPasswordComplexitySet(ComponentName who, int userId, boolean parent, PasswordPolicy passwordPolicy) {
        if (SecurityLog.isLoggingEnabled()) {
            int affectedUserId = parent ? getProfileParentId(userId) : userId;
            SecurityLog.writeEvent(210017, new Object[]{who.getPackageName(), Integer.valueOf(userId), Integer.valueOf(affectedUserId), Integer.valueOf(passwordPolicy.length), Integer.valueOf(passwordPolicy.quality), Integer.valueOf(passwordPolicy.letters), Integer.valueOf(passwordPolicy.nonLetter), Integer.valueOf(passwordPolicy.numeric), Integer.valueOf(passwordPolicy.upperCase), Integer.valueOf(passwordPolicy.lowerCase), Integer.valueOf(passwordPolicy.symbols)});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getManagedProvisioningPackage(Context context) {
        return context.getResources().getString(R.string.config_isoImagePath);
    }

    private void putPrivateDnsSettings(final String mode, final String host) {
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$DFwvgfCl4eaNU8RNcc6PRBY9H98
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$putPrivateDnsSettings$105$DevicePolicyManagerService(mode, host);
            }
        });
    }

    public /* synthetic */ void lambda$putPrivateDnsSettings$105$DevicePolicyManagerService(String mode, String host) throws Exception {
        this.mInjector.settingsGlobalPutString("private_dns_mode", mode);
        this.mInjector.settingsGlobalPutString("private_dns_specifier", host);
    }

    public int setGlobalPrivateDns(ComponentName who, int mode, String privateDnsHost) {
        if (!this.mHasFeature) {
            return 2;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceDeviceOwner(who);
        if (mode == 2) {
            if (!TextUtils.isEmpty(privateDnsHost)) {
                throw new IllegalArgumentException("Host provided for opportunistic mode, but is not needed.");
            }
            putPrivateDnsSettings("opportunistic", null);
            return 0;
        }
        if (mode == 3) {
            if (TextUtils.isEmpty(privateDnsHost) || !NetworkUtils.isWeaklyValidatedHostname(privateDnsHost)) {
                throw new IllegalArgumentException(String.format("Provided hostname %s is not valid", privateDnsHost));
            }
            putPrivateDnsSettings("hostname", privateDnsHost);
            return 0;
        }
        throw new IllegalArgumentException(String.format("Provided mode, %d, is not a valid mode.", Integer.valueOf(mode)));
    }

    public int getGlobalPrivateDnsMode(ComponentName who) {
        if (!this.mHasFeature) {
            return 0;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceDeviceOwner(who);
        String currentMode = this.mInjector.settingsGlobalGetString("private_dns_mode");
        if (currentMode == null) {
            currentMode = "off";
        }
        byte b = -1;
        int iHashCode = currentMode.hashCode();
        if (iHashCode != -539229175) {
            if (iHashCode != -299803597) {
                if (iHashCode == 109935 && currentMode.equals("off")) {
                    b = 0;
                }
            } else if (currentMode.equals("hostname")) {
                b = 2;
            }
        } else if (currentMode.equals("opportunistic")) {
            b = 1;
        }
        if (b == 0) {
            return 1;
        }
        if (b != 1) {
            return b != 2 ? 0 : 3;
        }
        return 2;
    }

    public String getGlobalPrivateDnsHost(ComponentName who) {
        if (!this.mHasFeature) {
            return null;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        enforceDeviceOwner(who);
        return this.mInjector.settingsGlobalGetString("private_dns_specifier");
    }

    public void installUpdateFromFile(ComponentName admin, final ParcelFileDescriptor updateFileDescriptor, final StartInstallingUpdateCallback callback) {
        DevicePolicyEventLogger.createEvent(73).setAdmin(admin).setBoolean(isDeviceAB()).write();
        enforceDeviceOwnerOrProfileOwnerOnOrganizationOwnedDevice(admin);
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$8k44rfp3b-QKr6_HKoJSF-zx6JY
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$installUpdateFromFile$106$DevicePolicyManagerService(updateFileDescriptor, callback);
            }
        });
    }

    public /* synthetic */ void lambda$installUpdateFromFile$106$DevicePolicyManagerService(ParcelFileDescriptor updateFileDescriptor, StartInstallingUpdateCallback callback) throws Exception {
        UpdateInstaller updateInstaller;
        if (isDeviceAB()) {
            updateInstaller = new AbUpdateInstaller(this.mContext, updateFileDescriptor, callback, this.mInjector, this.mConstants);
        } else {
            updateInstaller = new NonAbUpdateInstaller(this.mContext, updateFileDescriptor, callback, this.mInjector, this.mConstants);
        }
        updateInstaller.startInstallUpdate();
    }

    private boolean isDeviceAB() {
        return "true".equalsIgnoreCase(SystemProperties.get(AB_DEVICE_KEY, ""));
    }

    public void setCrossProfileCalendarPackages(ComponentName who, List<String> packageNames) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            admin.mCrossProfileCalendarPackages = packageNames;
            saveSettingsLocked(this.mInjector.userHandleGetCallingUserId());
        }
        DevicePolicyEventLogger.createEvent(70).setAdmin(who).setStrings(packageNames == null ? null : (String[]) packageNames.toArray(new String[packageNames.size()])).write();
    }

    public List<String> getCrossProfileCalendarPackages(ComponentName who) {
        List<String> list;
        if (!this.mHasFeature) {
            return Collections.emptyList();
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            list = admin.mCrossProfileCalendarPackages;
        }
        return list;
    }

    public boolean isPackageAllowedToAccessCalendarForUser(String packageName, int userHandle) {
        if (!this.mHasFeature) {
            return false;
        }
        Preconditions.checkStringNotEmpty(packageName, "Package name is null or empty");
        enforceCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            if (this.mInjector.settingsSecureGetIntForUser("cross_profile_calendar_enabled", 0, userHandle) == 0) {
                return false;
            }
            ActiveAdmin admin = getProfileOwnerAdminLocked(userHandle);
            if (admin == null) {
                return false;
            }
            if (admin.mCrossProfileCalendarPackages == null) {
                return true;
            }
            return admin.mCrossProfileCalendarPackages.contains(packageName);
        }
    }

    public List<String> getCrossProfileCalendarPackagesForUser(int userHandle) {
        if (!this.mHasFeature) {
            return Collections.emptyList();
        }
        enforceCrossUsersPermission(userHandle);
        synchronized (getLockObject()) {
            ActiveAdmin admin = getProfileOwnerAdminLocked(userHandle);
            if (admin != null) {
                return admin.mCrossProfileCalendarPackages;
            }
            return Collections.emptyList();
        }
    }

    public void setCrossProfilePackages(ComponentName who, final List<String> packageNames) {
        if (!this.mHasFeature) {
            return;
        }
        Objects.requireNonNull(who, "ComponentName is null");
        Objects.requireNonNull(packageNames, "Package names is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            final List<String> previousCrossProfilePackages = admin.mCrossProfilePackages;
            if (packageNames.equals(previousCrossProfilePackages)) {
                return;
            }
            admin.mCrossProfilePackages = packageNames;
            saveSettingsLocked(this.mInjector.userHandleGetCallingUserId());
            logSetCrossProfilePackages(who, packageNames);
            final CrossProfileApps crossProfileApps = (CrossProfileApps) this.mContext.getSystemService(CrossProfileApps.class);
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$IS8O0RzTfwvDPQsR-1uKI_Jp8HA
                public final void runOrThrow() {
                    crossProfileApps.resetInteractAcrossProfilesAppOps(previousCrossProfilePackages, new HashSet(packageNames));
                }
            });
        }
    }

    private void logSetCrossProfilePackages(ComponentName who, List<String> packageNames) {
        DevicePolicyEventLogger.createEvent(CecMessageType.VENDOR_REMOTE_BUTTON_DOWN).setAdmin(who).setStrings((String[]) packageNames.toArray(new String[packageNames.size()])).write();
    }

    public List<String> getCrossProfilePackages(ComponentName who) {
        List<String> list;
        if (!this.mHasFeature) {
            return Collections.emptyList();
        }
        Objects.requireNonNull(who, "ComponentName is null");
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -1);
            list = admin.mCrossProfilePackages;
        }
        return list;
    }

    public List<String> getAllCrossProfilePackages() {
        List<String> packages;
        if (!this.mHasFeature) {
            return Collections.emptyList();
        }
        enforceAcrossUsersPermissions();
        synchronized (getLockObject()) {
            List<ActiveAdmin> admins = getProfileOwnerAdminsForCurrentProfileGroup();
            packages = getCrossProfilePackagesForAdmins(admins);
            packages.addAll(getDefaultCrossProfilePackages());
        }
        return packages;
    }

    private List<String> getCrossProfilePackagesForAdmins(List<ActiveAdmin> admins) {
        List<String> packages = new ArrayList<>();
        for (int i = 0; i < admins.size(); i++) {
            packages.addAll(admins.get(i).mCrossProfilePackages);
        }
        return packages;
    }

    public List<String> getDefaultCrossProfilePackages() {
        Set<String> crossProfilePackages = new HashSet<>();
        Collections.addAll(crossProfilePackages, this.mContext.getResources().getStringArray(R.array.config_longPressVibePattern));
        Collections.addAll(crossProfilePackages, this.mContext.getResources().getStringArray(R.array.config_roundedCornerRadiusAdjustmentArray));
        return new ArrayList(crossProfilePackages);
    }

    private List<ActiveAdmin> getProfileOwnerAdminsForCurrentProfileGroup() {
        List<ActiveAdmin> admins;
        ActiveAdmin admin;
        synchronized (getLockObject()) {
            admins = new ArrayList<>();
            int[] users = this.mUserManager.getProfileIdsWithDisabled(UserHandle.getCallingUserId());
            for (int i = 0; i < users.length; i++) {
                ComponentName componentName = getProfileOwner(users[i]);
                if (componentName != null && (admin = getActiveAdminUncheckedLocked(componentName, users[i])) != null) {
                    admins.add(admin);
                }
            }
        }
        return admins;
    }

    public boolean isManagedKiosk() {
        if (!this.mHasFeature) {
            return false;
        }
        enforceManageUsers();
        long id = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                boolean zIsManagedKioskInternal = isManagedKioskInternal();
                this.mInjector.binderRestoreCallingIdentity(id);
                return zIsManagedKioskInternal;
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            }
        } catch (Throwable th) {
            this.mInjector.binderRestoreCallingIdentity(id);
            throw th;
        }
    }

    private boolean isUnattendedManagedKioskUnchecked() {
        try {
            return isManagedKioskInternal() && getPowerManagerInternal().wasDeviceIdleFor(30000L);
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public boolean isUnattendedManagedKiosk() {
        if (!this.mHasFeature) {
            return false;
        }
        enforceManageUsers();
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$3iebbAGmCmko-U29nq3KyaBiCGg
            public final Object getOrThrow() {
                return this.f$0.lambda$isUnattendedManagedKiosk$108$DevicePolicyManagerService();
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isUnattendedManagedKiosk$108$DevicePolicyManagerService() throws Exception {
        return Boolean.valueOf(isUnattendedManagedKioskUnchecked());
    }

    private boolean isManagedKioskInternal() throws RemoteException {
        return (!this.mOwners.hasDeviceOwner() || this.mInjector.getIActivityManager().getLockTaskModeState() != 1 || isLockTaskFeatureEnabled(1) || deviceHasKeyguard() || inEphemeralUserSession()) ? false : true;
    }

    private boolean isLockTaskFeatureEnabled(int lockTaskFeature) throws RemoteException {
        int lockTaskFeatures = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(this.mInjector.getIActivityManager().getCurrentUser().id).mLockTaskFeatures;
        return (lockTaskFeatures & lockTaskFeature) == lockTaskFeature;
    }

    private boolean deviceHasKeyguard() {
        for (UserInfo userInfo : this.mUserManager.getUsers()) {
            if (this.mLockPatternUtils.isSecure(userInfo.id)) {
                return true;
            }
        }
        return false;
    }

    private boolean inEphemeralUserSession() {
        for (UserInfo userInfo : this.mUserManager.getUsers()) {
            if (this.mInjector.getUserManager().isUserEphemeral(userInfo.id)) {
                return true;
            }
        }
        return false;
    }

    private PowerManagerInternal getPowerManagerInternal() {
        return this.mInjector.getPowerManagerInternal();
    }

    public boolean startViewCalendarEventInManagedProfile(final String packageName, final long eventId, final long start, final long end, final boolean allDay, final int flags) {
        if (!this.mHasFeature) {
            return false;
        }
        Preconditions.checkStringNotEmpty(packageName, "Package name is empty");
        int callingUid = this.mInjector.binderGetCallingUid();
        final int callingUserId = this.mInjector.userHandleGetCallingUserId();
        if (!isCallingFromPackage(packageName, callingUid)) {
            throw new SecurityException("Input package name doesn't align with actual calling package.");
        }
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$6FCrGg8gucDDOjx2Kk5B8_3I9x4
            public final Object getOrThrow() {
                return this.f$0.lambda$startViewCalendarEventInManagedProfile$109$DevicePolicyManagerService(callingUserId, packageName, eventId, start, end, allDay, flags);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$startViewCalendarEventInManagedProfile$109$DevicePolicyManagerService(int callingUserId, String packageName, long eventId, long start, long end, boolean allDay, int flags) throws Exception {
        int workProfileUserId = getManagedUserId(callingUserId);
        if (workProfileUserId < 0) {
            return false;
        }
        if (!isPackageAllowedToAccessCalendarForUser(packageName, workProfileUserId)) {
            Log.d(LOG_TAG, String.format("Package %s is not allowed to access cross-profilecalendar APIs", packageName));
            return false;
        }
        Intent intent = new Intent("android.provider.calendar.action.VIEW_MANAGED_PROFILE_CALENDAR_EVENT");
        intent.setPackage(packageName);
        intent.putExtra(ATTR_ID, eventId);
        intent.putExtra("beginTime", start);
        intent.putExtra("endTime", end);
        intent.putExtra("allDay", allDay);
        intent.setFlags(flags);
        try {
            this.mContext.startActivityAsUser(intent, UserHandle.of(workProfileUserId));
            return true;
        } catch (ActivityNotFoundException e) {
            Log.e(LOG_TAG, "View event activity not found", e);
            return false;
        }
    }

    private boolean isCallingFromPackage(final String packageName, final int callingUid) {
        return ((Boolean) this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$e92BwuVVL4sbkyH3K0AyZhXsKW4
            public final Object getOrThrow() {
                return this.f$0.lambda$isCallingFromPackage$110$DevicePolicyManagerService(packageName, callingUid);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isCallingFromPackage$110$DevicePolicyManagerService(String packageName, int callingUid) throws Exception {
        try {
            int packageUid = this.mInjector.getPackageManager().getPackageUidAsUser(packageName, UserHandle.getUserId(callingUid));
            return Boolean.valueOf(packageUid == callingUid);
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(LOG_TAG, "Calling package not found", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DevicePolicyConstants loadConstants() {
        return DevicePolicyConstants.loadFromString(this.mInjector.settingsGlobalGetString("device_policy_constants"));
    }

    public void setUserControlDisabledPackages(ComponentName who, List<String> packages) {
        Preconditions.checkNotNull(who, "ComponentName is null");
        Preconditions.checkNotNull(packages, "packages is null");
        enforceDeviceOwner(who);
        synchronized (getLockObject()) {
            int userHandle = this.mInjector.userHandleGetCallingUserId();
            setUserControlDisabledPackagesLocked(userHandle, packages);
            DevicePolicyEventLogger.createEvent(CecMessageType.ROUTING_INFORMATION).setAdmin(who).setStrings((String[]) packages.toArray(new String[packages.size()])).write();
        }
    }

    private void setUserControlDisabledPackagesLocked(int userHandle, List<String> packages) {
        DevicePolicyData policy = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle);
        policy.mUserControlDisabledPackages = packages;
        saveSettingsLocked(userHandle);
        updateUserControlDisabledPackagesLocked(packages);
    }

    public List<String> getUserControlDisabledPackages(ComponentName who) {
        List<String> list;
        Preconditions.checkNotNull(who, "ComponentName is null");
        enforceDeviceOwner(who);
        int userHandle = this.mInjector.binderGetCallingUserHandle().getIdentifier();
        synchronized (getLockObject()) {
            List<String> packages = lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userHandle).mUserControlDisabledPackages;
            list = packages == null ? Collections.EMPTY_LIST : packages;
        }
        return list;
    }

    private void logIfVerbose(String message) {
    }

    public void setCommonCriteriaModeEnabled(ComponentName who, boolean enabled) {
        int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -3);
            admin.mCommonCriteriaMode = enabled;
            saveSettingsLocked(userId);
        }
        DevicePolicyEventLogger.createEvent(CecMessageType.GIVE_PHYSICAL_ADDRESS).setAdmin(who).setBoolean(enabled).write();
    }

    public boolean isCommonCriteriaModeEnabled(ComponentName who) {
        boolean z;
        boolean z2;
        if (who != null) {
            synchronized (getLockObject()) {
                z2 = getActiveAdminForCallerLocked(who, -3).mCommonCriteriaMode;
            }
            return z2;
        }
        synchronized (getLockObject()) {
            ActiveAdmin admin = getDeviceOwnerOrProfileOwnerOfOrganizationOwnedDeviceLocked(0);
            z = admin != null ? admin.mCommonCriteriaMode : false;
        }
        return z;
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    public int getPersonalAppsSuspendedReasons(ComponentName who) {
        int result;
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -3, false);
            enforceProfileOwnerOfOrganizationOwnedDevice(admin);
            long deadline = admin.mProfileOffDeadline;
            result = makeSuspensionReasons(admin.mSuspendPersonalApps, deadline != 0 && this.mInjector.systemCurrentTimeMillis() > deadline);
            Slog.d(LOG_TAG, String.format("getPersonalAppsSuspendedReasons user: %d; result: %d", Integer.valueOf(this.mInjector.userHandleGetCallingUserId()), Integer.valueOf(result)));
        }
        return result;
    }

    private int makeSuspensionReasons(boolean explicit, boolean timeout) {
        int result = 0;
        if (explicit) {
            result = 0 | 1;
        }
        if (timeout) {
            return result | 2;
        }
        return result;
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    public void setPersonalAppsSuspended(ComponentName who, boolean suspended) {
        final int callingUserId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -3, false);
            enforceProfileOwnerOfOrganizationOwnedDevice(admin);
            enforceHandlesCheckPolicyComplianceIntent(callingUserId, admin.info.getPackageName());
            boolean shouldSaveSettings = false;
            if (admin.mSuspendPersonalApps != suspended) {
                admin.mSuspendPersonalApps = suspended;
                shouldSaveSettings = true;
            }
            if (admin.mProfileOffDeadline != 0) {
                admin.mProfileOffDeadline = 0L;
                shouldSaveSettings = true;
            }
            if (shouldSaveSettings) {
                saveSettingsLocked(callingUserId);
            }
        }
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$yI7fWZhjc6UOyMCJ6Aq9rKsbaY0
            public final Object getOrThrow() {
                return this.f$0.lambda$setPersonalAppsSuspended$111$DevicePolicyManagerService(callingUserId);
            }
        });
        DevicePolicyEventLogger.createEvent(CecMessageType.DEVICE_VENDOR_ID).setAdmin(who).setBoolean(suspended).write();
    }

    public /* synthetic */ Integer lambda$setPersonalAppsSuspended$111$DevicePolicyManagerService(int callingUserId) throws Exception {
        return Integer.valueOf(updatePersonalAppsSuspension(callingUserId, this.mUserManager.isUserUnlocked(callingUserId)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void triggerPolicyComplianceCheck(int profileUserId) {
        Intent intent = new Intent("android.app.action.CHECK_POLICY_COMPLIANCE");
        synchronized (getLockObject()) {
            ActiveAdmin profileOwner = getProfileOwnerAdminLocked(profileUserId);
            if (profileOwner == null) {
                Slog.wtf(LOG_TAG, "Profile owner not found for compliance check");
            } else {
                intent.setPackage(profileOwner.info.getPackageName());
                this.mContext.startActivityAsUser(intent, UserHandle.of(profileUserId));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int updatePersonalAppsSuspension(int profileUserId, boolean unlocked) {
        boolean z;
        boolean suspendedExplicitly;
        boolean suspendedByTimeout;
        synchronized (getLockObject()) {
            ActiveAdmin profileOwner = getProfileOwnerAdminLocked(profileUserId);
            z = true;
            if (profileOwner != null) {
                int deadlineState = updateProfileOffDeadlineLocked(profileUserId, profileOwner, unlocked);
                suspendedExplicitly = profileOwner.mSuspendPersonalApps;
                suspendedByTimeout = deadlineState == 2;
                Slog.d(LOG_TAG, String.format("Personal apps suspended explicitly: %b, deadline state: %d", Boolean.valueOf(suspendedExplicitly), Integer.valueOf(deadlineState)));
                int notificationState = unlocked ? 0 : deadlineState;
                updateProfileOffDeadlineNotificationLocked(profileUserId, profileOwner, notificationState);
            } else {
                suspendedExplicitly = false;
                suspendedByTimeout = false;
            }
        }
        int parentUserId = getProfileParentId(profileUserId);
        if (!suspendedExplicitly && !suspendedByTimeout) {
            z = false;
        }
        suspendPersonalAppsInternal(parentUserId, z);
        return makeSuspensionReasons(suspendedExplicitly, suspendedByTimeout);
    }

    private int updateProfileOffDeadlineLocked(int profileUserId, ActiveAdmin profileOwner, boolean unlocked) {
        long alarmTime;
        int deadlineState;
        long now = this.mInjector.systemCurrentTimeMillis();
        if (profileOwner.mProfileOffDeadline != 0 && now > profileOwner.mProfileOffDeadline) {
            Slog.i(LOG_TAG, "Profile off deadline has been reached, unlocked: " + unlocked);
            if (profileOwner.mProfileOffDeadline != -1) {
                profileOwner.mProfileOffDeadline = -1L;
                saveSettingsLocked(profileUserId);
                return 2;
            }
            return 2;
        }
        boolean shouldSaveSettings = false;
        if (profileOwner.mSuspendPersonalApps) {
            if (profileOwner.mProfileOffDeadline != 0) {
                profileOwner.mProfileOffDeadline = 0L;
                shouldSaveSettings = true;
            }
        } else if (profileOwner.mProfileOffDeadline != 0 && (profileOwner.mProfileMaximumTimeOffMillis == 0 || unlocked)) {
            Slog.i(LOG_TAG, "Profile off deadline is reset to zero");
            profileOwner.mProfileOffDeadline = 0L;
            shouldSaveSettings = true;
        } else if (profileOwner.mProfileOffDeadline == 0 && profileOwner.mProfileMaximumTimeOffMillis != 0 && !unlocked) {
            Slog.i(LOG_TAG, "Profile off deadline is set.");
            profileOwner.mProfileOffDeadline = profileOwner.mProfileMaximumTimeOffMillis + now;
            shouldSaveSettings = true;
        }
        if (shouldSaveSettings) {
            saveSettingsLocked(profileUserId);
        }
        if (profileOwner.mProfileOffDeadline == 0) {
            alarmTime = 0;
            deadlineState = 0;
        } else {
            long alarmTime2 = profileOwner.mProfileOffDeadline;
            if (alarmTime2 - now < MANAGED_PROFILE_OFF_WARNING_PERIOD) {
                alarmTime = profileOwner.mProfileOffDeadline;
                deadlineState = 1;
            } else {
                long alarmTime3 = profileOwner.mProfileOffDeadline;
                alarmTime = alarmTime3 - MANAGED_PROFILE_OFF_WARNING_PERIOD;
                deadlineState = 0;
            }
        }
        AlarmManager am = this.mInjector.getAlarmManager();
        Intent intent = new Intent(ACTION_PROFILE_OFF_DEADLINE);
        intent.setPackage(this.mContext.getPackageName());
        PendingIntent pi = this.mInjector.pendingIntentGetBroadcast(this.mContext, REQUEST_PROFILE_OFF_DEADLINE, intent, 1207959552);
        if (alarmTime == 0) {
            Slog.i(LOG_TAG, "Profile off deadline alarm is removed.");
            am.cancel(pi);
        } else {
            Slog.i(LOG_TAG, "Profile off deadline alarm is set.");
            am.set(1, alarmTime, pi);
        }
        return deadlineState;
    }

    private void suspendPersonalAppsInternal(int userId, boolean suspended) {
        if (lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mAppsSuspended == suspended) {
            return;
        }
        Object[] objArr = new Object[2];
        objArr[0] = suspended ? "Suspending" : "Unsuspending";
        objArr[1] = Integer.valueOf(userId);
        Slog.i(LOG_TAG, String.format("%s personal apps for user %d", objArr));
        if (suspended) {
            suspendPersonalAppsInPackageManager(userId);
        } else {
            this.mInjector.getPackageManagerInternal().unsuspendForSuspendingPackage(PackageManagerService.PLATFORM_PACKAGE_NAME, userId);
        }
        synchronized (getLockObject()) {
            lambda$getUserDataUnchecked$0$DevicePolicyManagerService(userId).mAppsSuspended = suspended;
            saveSettingsLocked(userId);
        }
    }

    private void suspendPersonalAppsInPackageManager(final int userId) {
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$SVALtvykg4mNaYHFCKNhtNE_Y7M
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$suspendPersonalAppsInPackageManager$112$DevicePolicyManagerService(userId);
            }
        });
    }

    public /* synthetic */ void lambda$suspendPersonalAppsInPackageManager$112$DevicePolicyManagerService(int userId) throws Exception {
        try {
            String[] appsToSuspend = this.mInjector.getPersonalAppsForSuspension(userId);
            String[] failedApps = this.mIPackageManager.setPackagesSuspendedAsUser(appsToSuspend, true, (PersistableBundle) null, (PersistableBundle) null, (SuspendDialogInfo) null, PackageManagerService.PLATFORM_PACKAGE_NAME, userId);
            if (!ArrayUtils.isEmpty(failedApps)) {
                Slog.wtf(LOG_TAG, "Failed to suspend apps: " + String.join(",", failedApps));
            }
        } catch (RemoteException re) {
            Slog.e(LOG_TAG, "Failed talking to the package manager", re);
        }
    }

    private void updateProfileOffDeadlineNotificationLocked(int profileUserId, ActiveAdmin profileOwner, int notificationState) {
        String text;
        boolean ongoing;
        if (notificationState == 0) {
            this.mInjector.getNotificationManager().cancel(1003);
            return;
        }
        Intent intent = new Intent(ACTION_TURN_PROFILE_ON_NOTIFICATION);
        intent.setPackage(this.mContext.getPackageName());
        intent.putExtra("android.intent.extra.user_handle", profileUserId);
        PendingIntent pendingIntent = this.mInjector.pendingIntentGetBroadcast(this.mContext, 0, intent, AudioFormat.OPUS);
        String buttonText = this.mContext.getString(R.string.next_button_label);
        Notification.Action turnProfileOnButton = new Notification.Action.Builder((Icon) null, buttonText, pendingIntent).build();
        if (notificationState == 1) {
            long j = profileOwner.mProfileMaximumTimeOffMillis;
            long j2 = MS_PER_DAY;
            int maxDays = (int) ((j + (j2 / 2)) / j2);
            String date = DateUtils.formatDateTime(this.mContext, profileOwner.mProfileOffDeadline, 16);
            String time = DateUtils.formatDateTime(this.mContext, profileOwner.mProfileOffDeadline, 1);
            text = this.mContext.getString(R.string.noApplications, date, time, Integer.valueOf(maxDays));
            ongoing = false;
        } else {
            text = this.mContext.getString(R.string.no_file_chosen);
            ongoing = true;
        }
        int color = this.mContext.getColor(R.color.car_teal_50);
        Bundle extras = new Bundle();
        extras.putString("android.substName", this.mContext.getString(R.string.kg_login_too_many_attempts));
        Notification notification = new Notification.Builder(this.mContext, SystemNotificationChannels.DEVICE_ADMIN).setSmallIcon(R.drawable.ic_accessibility_hearing_aid).setOngoing(ongoing).setAutoCancel(false).setContentTitle(this.mContext.getString(R.string.no_matches)).setContentText(text).setStyle(new Notification.BigTextStyle().bigText(text)).setColor(color).addAction(turnProfileOnButton).addExtras(extras).build();
        this.mInjector.getNotificationManager().notify(1003, notification);
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    public void setManagedProfileMaximumTimeOff(ComponentName who, long timeoutMillis) {
        final int userId = this.mInjector.userHandleGetCallingUserId();
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -3, false);
            enforceProfileOwnerOfOrganizationOwnedDevice(admin);
            enforceHandlesCheckPolicyComplianceIntent(userId, admin.info.getPackageName());
            Preconditions.checkArgument(timeoutMillis >= 0, "Timeout must be non-negative.");
            if (timeoutMillis > 0 && timeoutMillis < MANAGED_PROFILE_MAXIMUM_TIME_OFF_THRESHOLD && !isAdminTestOnlyLocked(who, userId)) {
                timeoutMillis = MANAGED_PROFILE_MAXIMUM_TIME_OFF_THRESHOLD;
            }
            if (admin.mProfileMaximumTimeOffMillis == timeoutMillis) {
                return;
            }
            admin.mProfileMaximumTimeOffMillis = timeoutMillis;
            saveSettingsLocked(userId);
            this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$lJQaMixu0V73x9Toi1hM5t8fQiM
                public final Object getOrThrow() {
                    return this.f$0.lambda$setManagedProfileMaximumTimeOff$113$DevicePolicyManagerService(userId);
                }
            });
            DevicePolicyEventLogger.createEvent(136).setAdmin(who).setTimePeriod(timeoutMillis).write();
        }
    }

    public /* synthetic */ Integer lambda$setManagedProfileMaximumTimeOff$113$DevicePolicyManagerService(int userId) throws Exception {
        return Integer.valueOf(updatePersonalAppsSuspension(userId, this.mUserManager.isUserUnlocked()));
    }

    private void enforceHandlesCheckPolicyComplianceIntent(final int userId, final String packageName) {
        this.mInjector.binderWithCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.devicepolicy.-$$Lambda$DevicePolicyManagerService$uUwXXIH71Q0iKtcxAnMBDXNFgI0
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$enforceHandlesCheckPolicyComplianceIntent$114$DevicePolicyManagerService(packageName, userId);
            }
        });
    }

    public /* synthetic */ void lambda$enforceHandlesCheckPolicyComplianceIntent$114$DevicePolicyManagerService(String packageName, int userId) throws Exception {
        Intent intent = new Intent("android.app.action.CHECK_POLICY_COMPLIANCE");
        intent.setPackage(packageName);
        List<ResolveInfo> handlers = this.mInjector.getPackageManager().queryIntentActivitiesAsUser(intent, 0, userId);
        Preconditions.checkState(!handlers.isEmpty(), "Admin doesn't handle android.app.action.CHECK_POLICY_COMPLIANCE");
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    public long getManagedProfileMaximumTimeOff(ComponentName who) {
        long j;
        synchronized (getLockObject()) {
            ActiveAdmin admin = getActiveAdminForCallerLocked(who, -3, false);
            enforceProfileOwnerOfOrganizationOwnedDevice(admin);
            j = admin.mProfileMaximumTimeOffMillis;
        }
        return j;
    }

    @Override // com.android.server.devicepolicy.BaseIDevicePolicyManager
    public boolean canProfileOwnerResetPasswordWhenLocked(int userId) {
        enforceSystemCaller("call canProfileOwnerResetPasswordWhenLocked");
        synchronized (getLockObject()) {
            ActiveAdmin poAdmin = getProfileOwnerAdminLocked(userId);
            if (poAdmin == null || getEncryptionStatus() != 5 || !isResetPasswordTokenActiveForUserLocked(userId)) {
                return false;
            }
            try {
                ApplicationInfo poAppInfo = this.mIPackageManager.getApplicationInfo(poAdmin.info.getPackageName(), 0, userId);
                if (poAppInfo == null) {
                    Slog.wtf(LOG_TAG, "Cannot find AppInfo for profile owner");
                    return false;
                }
                if (!poAppInfo.isEncryptionAware()) {
                    return false;
                }
                Slog.d(LOG_TAG, "PO should be able to reset password from direct boot");
                return true;
            } catch (RemoteException e) {
                Slog.e(LOG_TAG, "Failed to query PO app info", e);
                return false;
            }
        }
    }

    private static CharSequence truncateIfLonger(CharSequence input, int maxLength) {
        if (input == null || input.length() <= maxLength) {
            return input;
        }
        return input.subSequence(0, maxLength);
    }

    private static void enforceMaxStringLength(String str, String argName) {
        Preconditions.checkArgument(str.length() <= MAX_POLICY_STRING_LENGTH, argName + " loo long");
    }

    private static void enforceMaxPackageNameLength(String pkg) {
        Preconditions.checkArgument(pkg.length() <= MAX_PACKAGE_NAME_LENGTH, "Package name too long");
    }

    private static void enforceMaxStringLength(PersistableBundle bundle, String argName) {
        Queue<PersistableBundle> queue = new ArrayDeque<>();
        queue.add(bundle);
        while (!queue.isEmpty()) {
            PersistableBundle current = queue.remove();
            for (String key : current.keySet()) {
                enforceMaxStringLength(key, "key in " + argName);
                Object value = current.get(key);
                if (value instanceof String) {
                    enforceMaxStringLength((String) value, "string value in " + argName);
                } else if (value instanceof String[]) {
                    for (String str : (String[]) value) {
                        enforceMaxStringLength(str, "string value in " + argName);
                    }
                } else if (value instanceof PersistableBundle) {
                    queue.add((PersistableBundle) value);
                }
            }
        }
    }
}
