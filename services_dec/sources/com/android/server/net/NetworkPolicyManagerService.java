package com.android.server.net;

import android.R;
import android.app.ActivityManagerInternal;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.IActivityManager;
import android.app.IUidObserver;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.usage.UsageStatsManagerInternal;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.ConnectivityManager;
import android.net.IConnectivityManager;
import android.net.INetworkManagementEventObserver;
import android.net.INetworkPolicyListener;
import android.net.INetworkPolicyManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkIdentity;
import android.net.NetworkPolicy;
import android.net.NetworkPolicyManager;
import android.net.NetworkQuotaInfo;
import android.net.NetworkRequest;
import android.net.NetworkSpecifier;
import android.net.NetworkStack;
import android.net.NetworkState;
import android.net.NetworkStats;
import android.net.NetworkTemplate;
import android.net.TelephonyNetworkSpecifier;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.BestClock;
import android.os.Binder;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.HandlerThread;
import android.os.INetworkManagementService;
import android.os.Message;
import android.os.MessageQueue;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.PowerManagerInternal;
import android.os.PowerSaveState;
import android.os.PowerWhitelistManager;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.SubscriptionPlan;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.DataUnit;
import android.util.IntArray;
import android.util.Log;
import android.util.Pair;
import android.util.Range;
import android.util.RecurrenceRule;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.util.Xml;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.ConcurrentUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.StatLogger;
import com.android.internal.util.XmlUtils;
import com.android.server.EventLogTags;
import com.android.server.LocalServices;
import com.android.server.NetworkManagementService;
import com.android.server.ServiceThread;
import com.android.server.SystemConfig;
import com.android.server.job.controllers.JobStatus;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.Settings;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.usage.AppStandbyInternal;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.StandardCharsets;
import java.time.Clock;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class NetworkPolicyManagerService extends INetworkPolicyManager.Stub {
    private static final String ACTION_ALLOW_BACKGROUND = "com.android.server.net.action.ALLOW_BACKGROUND";
    private static final String ACTION_SNOOZE_RAPID = "com.android.server.net.action.SNOOZE_RAPID";
    private static final String ACTION_SNOOZE_WARNING = "com.android.server.net.action.SNOOZE_WARNING";
    private static final String ATTR_APP_ID = "appId";

    @Deprecated
    private static final String ATTR_CYCLE_DAY = "cycleDay";
    private static final String ATTR_CYCLE_END = "cycleEnd";
    private static final String ATTR_CYCLE_PERIOD = "cyclePeriod";
    private static final String ATTR_CYCLE_START = "cycleStart";

    @Deprecated
    private static final String ATTR_CYCLE_TIMEZONE = "cycleTimezone";
    private static final String ATTR_INFERRED = "inferred";
    private static final String ATTR_LAST_LIMIT_SNOOZE = "lastLimitSnooze";
    private static final String ATTR_LAST_SNOOZE = "lastSnooze";
    private static final String ATTR_LAST_WARNING_SNOOZE = "lastWarningSnooze";
    private static final String ATTR_LIMIT_BEHAVIOR = "limitBehavior";
    private static final String ATTR_LIMIT_BYTES = "limitBytes";
    private static final String ATTR_METERED = "metered";
    private static final String ATTR_NETWORK_ID = "networkId";
    private static final String ATTR_NETWORK_TEMPLATE = "networkTemplate";
    private static final String ATTR_NETWORK_TYPES = "networkTypes";
    private static final String ATTR_OWNER_PACKAGE = "ownerPackage";
    private static final String ATTR_POLICY = "policy";
    private static final String ATTR_RESTRICT_BACKGROUND = "restrictBackground";
    private static final String ATTR_SUBSCRIBER_ID = "subscriberId";
    private static final String ATTR_SUB_ID = "subId";
    private static final String ATTR_SUMMARY = "summary";
    private static final String ATTR_TITLE = "title";
    private static final String ATTR_UID = "uid";
    private static final String ATTR_USAGE_BYTES = "usageBytes";
    private static final String ATTR_USAGE_TIME = "usageTime";
    private static final String ATTR_VERSION = "version";
    private static final String ATTR_WARNING_BYTES = "warningBytes";
    private static final String ATTR_XML_UTILS_NAME = "name";
    private static final int CHAIN_TOGGLE_DISABLE = 2;
    private static final int CHAIN_TOGGLE_ENABLE = 1;
    private static final int CHAIN_TOGGLE_NONE = 0;
    private static final int MSG_ADVISE_PERSIST_THRESHOLD = 7;
    private static final int MSG_LIMIT_REACHED = 5;
    private static final int MSG_METERED_IFACES_CHANGED = 2;
    private static final int MSG_METERED_RESTRICTED_PACKAGES_CHANGED = 17;
    private static final int MSG_POLICIES_CHANGED = 13;
    private static final int MSG_REMOVE_INTERFACE_QUOTA = 11;
    private static final int MSG_RESET_FIREWALL_RULES_BY_UID = 15;
    private static final int MSG_RESTRICT_BACKGROUND_CHANGED = 6;
    private static final int MSG_RULES_CHANGED = 1;
    private static final int MSG_SET_NETWORK_TEMPLATE_ENABLED = 18;
    private static final int MSG_STATS_PROVIDER_LIMIT_REACHED = 20;
    private static final int MSG_SUBSCRIPTION_OVERRIDE = 16;
    private static final int MSG_SUBSCRIPTION_PLANS_CHANGED = 19;
    private static final int MSG_UPDATE_INTERFACE_QUOTA = 10;
    public static final int OPPORTUNISTIC_QUOTA_UNKNOWN = -1;
    private static final String PROP_SUB_PLAN_OWNER = "persist.sys.sub_plan_owner";
    private static final float QUOTA_FRAC_JOBS_DEFAULT = 0.5f;
    private static final float QUOTA_FRAC_MULTIPATH_DEFAULT = 0.5f;
    private static final float QUOTA_LIMITED_DEFAULT = 0.1f;
    static final String TAG = "NetworkPolicy";
    private static final String TAG_APP_POLICY = "app-policy";
    private static final String TAG_NETWORK_POLICY = "network-policy";
    private static final String TAG_POLICY_LIST = "policy-list";
    private static final String TAG_RESTRICT_BACKGROUND = "restrict-background";
    private static final String TAG_REVOKED_RESTRICT_BACKGROUND = "revoked-restrict-background";
    private static final String TAG_SUBSCRIPTION_PLAN = "subscription-plan";
    private static final String TAG_UID_POLICY = "uid-policy";
    private static final String TAG_WHITELIST = "whitelist";
    private static final String TAG_XML_UTILS_INT_ARRAY = "int-array";
    public static final int TYPE_LIMIT = 35;
    public static final int TYPE_LIMIT_SNOOZED = 36;
    public static final int TYPE_RAPID = 45;
    private static final int TYPE_RESTRICT_BACKGROUND = 1;
    private static final int TYPE_RESTRICT_POWER = 2;
    public static final int TYPE_WARNING = 34;
    private static final int UID_MSG_GONE = 101;
    private static final int UID_MSG_STATE_CHANGED = 100;
    private static final int VERSION_ADDED_CYCLE = 11;
    private static final int VERSION_ADDED_INFERRED = 7;
    private static final int VERSION_ADDED_METERED = 4;
    private static final int VERSION_ADDED_NETWORK_ID = 9;
    private static final int VERSION_ADDED_NETWORK_TYPES = 12;
    private static final int VERSION_ADDED_RESTRICT_BACKGROUND = 3;
    private static final int VERSION_ADDED_SNOOZE = 2;
    private static final int VERSION_ADDED_TIMEZONE = 6;
    private static final int VERSION_INIT = 1;
    private static final int VERSION_LATEST = 12;
    private static final int VERSION_SPLIT_SNOOZE = 5;
    private static final int VERSION_SWITCH_APP_ID = 8;
    private static final int VERSION_SWITCH_UID = 10;
    private static final long WAIT_FOR_ADMIN_DATA_TIMEOUT_MS = 10000;
    private final ArraySet<NotificationId> mActiveNotifs;
    private final IActivityManager mActivityManager;
    private ActivityManagerInternal mActivityManagerInternal;
    private final CountDownLatch mAdminDataAvailableLatch;
    private final INetworkManagementEventObserver mAlertObserver;
    private final BroadcastReceiver mAllowReceiver;
    private final SparseBooleanArray mAppIdleTempWhitelistAppIds;
    private final AppOpsManager mAppOps;
    private AppStandbyInternal mAppStandby;
    private final CarrierConfigManager mCarrierConfigManager;
    private BroadcastReceiver mCarrierConfigReceiver;
    private final Clock mClock;
    private IConnectivityManager mConnManager;
    private BroadcastReceiver mConnReceiver;
    private final Context mContext;
    private final SparseBooleanArray mDefaultRestrictBackgroundWhitelistUids;
    volatile boolean mDeviceIdleMode;
    final SparseBooleanArray mFirewallChainStates;
    final Handler mHandler;
    private final Handler.Callback mHandlerCallback;
    private final IPackageManager mIPm;
    private final SparseBooleanArray mInternetPermissionMap;
    private final RemoteCallbackList<INetworkPolicyListener> mListeners;
    private boolean mLoadedRestrictBackground;
    private final NetworkPolicyLogger mLogger;
    private List<String[]> mMergedSubscriberIds;
    private ArraySet<String> mMeteredIfaces;
    private final SparseArray<Set<Integer>> mMeteredRestrictedUids;
    private final SparseIntArray mNetIdToSubId;
    private final ConnectivityManager.NetworkCallback mNetworkCallback;
    private final INetworkManagementService mNetworkManager;
    private volatile boolean mNetworkManagerReady;
    private final SparseBooleanArray mNetworkMetered;
    final Object mNetworkPoliciesSecondLock;
    final ArrayMap<NetworkTemplate, NetworkPolicy> mNetworkPolicy;
    private final SparseBooleanArray mNetworkRoaming;
    private NetworkStatsManagerInternal mNetworkStats;
    private final ArraySet<NetworkTemplate> mOverLimitNotified;
    private final BroadcastReceiver mPackageReceiver;
    private final AtomicFile mPolicyFile;
    private PowerManagerInternal mPowerManagerInternal;
    private final SparseBooleanArray mPowerSaveTempWhitelistAppIds;
    private final SparseBooleanArray mPowerSaveWhitelistAppIds;
    private final SparseBooleanArray mPowerSaveWhitelistExceptIdleAppIds;
    private final BroadcastReceiver mPowerSaveWhitelistReceiver;
    private PowerWhitelistManager mPowerWhitelistManager;
    volatile boolean mRestrictBackground;
    private boolean mRestrictBackgroundBeforeBsm;
    volatile boolean mRestrictBackgroundChangedInBsm;
    private boolean mRestrictBackgroundLowPowerMode;
    private final SparseBooleanArray mRestrictBackgroundWhitelistRevokedUids;
    volatile boolean mRestrictPower;
    private final BroadcastReceiver mSnoozeReceiver;
    public final StatLogger mStatLogger;
    private final BroadcastReceiver mStatsReceiver;
    private final SparseArray<String> mSubIdToSubscriberId;
    final SparseLongArray mSubscriptionOpportunisticQuota;
    final SparseArray<SubscriptionPlan[]> mSubscriptionPlans;
    final SparseArray<String> mSubscriptionPlansOwner;
    private final boolean mSuppressDefaultPolicy;
    volatile boolean mSystemReady;
    final Handler mUidEventHandler;
    private final Handler.Callback mUidEventHandlerCallback;
    private final ServiceThread mUidEventThread;
    final SparseIntArray mUidFirewallDozableRules;
    final SparseIntArray mUidFirewallPowerSaveRules;
    final SparseIntArray mUidFirewallStandbyRules;
    private final IUidObserver mUidObserver;
    final SparseIntArray mUidPolicy;
    private final BroadcastReceiver mUidRemovedReceiver;
    final SparseIntArray mUidRules;
    final Object mUidRulesFirstLock;
    final SparseIntArray mUidState;
    private UsageStatsManagerInternal mUsageStats;
    private final UserManager mUserManager;
    private final BroadcastReceiver mUserReceiver;
    private final BroadcastReceiver mWifiReceiver;
    private static final boolean LOGD = NetworkPolicyLogger.LOGD;
    private static final boolean LOGV = NetworkPolicyLogger.LOGV;
    private static final long QUOTA_UNLIMITED_DEFAULT = DataUnit.MEBIBYTES.toBytes(20);

    @Retention(RetentionPolicy.SOURCE)
    public @interface ChainToggleType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RestrictType {
    }

    interface Stats {
        public static final int COUNT = 2;
        public static final int IS_UID_NETWORKING_BLOCKED = 1;
        public static final int UPDATE_NETWORK_ENABLED = 0;
    }

    public NetworkPolicyManagerService(Context context, IActivityManager activityManager, INetworkManagementService networkManagement) {
        this(context, activityManager, networkManagement, AppGlobals.getPackageManager(), getDefaultClock(), getDefaultSystemDir(), false);
    }

    private static File getDefaultSystemDir() {
        return new File(Environment.getDataDirectory(), "system");
    }

    private static Clock getDefaultClock() {
        return new BestClock(ZoneOffset.UTC, new Clock[]{SystemClock.currentNetworkTimeClock(), Clock.systemUTC()});
    }

    public NetworkPolicyManagerService(Context context, IActivityManager activityManager, INetworkManagementService networkManagement, IPackageManager pm, Clock clock, File systemDir, boolean suppressDefaultPolicy) {
        this.mUidRulesFirstLock = new Object();
        this.mNetworkPoliciesSecondLock = new Object();
        this.mAdminDataAvailableLatch = new CountDownLatch(1);
        this.mNetworkPolicy = new ArrayMap<>();
        this.mSubscriptionPlans = new SparseArray<>();
        this.mSubscriptionPlansOwner = new SparseArray<>();
        this.mSubscriptionOpportunisticQuota = new SparseLongArray();
        this.mUidPolicy = new SparseIntArray();
        this.mUidRules = new SparseIntArray();
        this.mUidFirewallStandbyRules = new SparseIntArray();
        this.mUidFirewallDozableRules = new SparseIntArray();
        this.mUidFirewallPowerSaveRules = new SparseIntArray();
        this.mFirewallChainStates = new SparseBooleanArray();
        this.mPowerSaveWhitelistExceptIdleAppIds = new SparseBooleanArray();
        this.mPowerSaveWhitelistAppIds = new SparseBooleanArray();
        this.mPowerSaveTempWhitelistAppIds = new SparseBooleanArray();
        this.mAppIdleTempWhitelistAppIds = new SparseBooleanArray();
        this.mDefaultRestrictBackgroundWhitelistUids = new SparseBooleanArray();
        this.mRestrictBackgroundWhitelistRevokedUids = new SparseBooleanArray();
        this.mMeteredIfaces = new ArraySet<>();
        this.mOverLimitNotified = new ArraySet<>();
        this.mActiveNotifs = new ArraySet<>();
        this.mUidState = new SparseIntArray();
        this.mNetworkMetered = new SparseBooleanArray();
        this.mNetworkRoaming = new SparseBooleanArray();
        this.mNetIdToSubId = new SparseIntArray();
        this.mSubIdToSubscriberId = new SparseArray<>();
        this.mMergedSubscriberIds = new ArrayList();
        this.mMeteredRestrictedUids = new SparseArray<>();
        this.mListeners = new RemoteCallbackList<>();
        this.mLogger = new NetworkPolicyLogger();
        this.mInternetPermissionMap = new SparseBooleanArray();
        this.mStatLogger = new StatLogger(new String[]{"updateNetworkEnabledNL()", "isUidNetworkingBlocked()"});
        this.mUidObserver = new IUidObserver.Stub() { // from class: com.android.server.net.NetworkPolicyManagerService.4
            public void onUidStateChanged(int uid, int procState, long procStateSeq, int capability) {
                NetworkPolicyManagerService.this.mUidEventHandler.obtainMessage(100, uid, procState, Long.valueOf(procStateSeq)).sendToTarget();
            }

            public void onUidGone(int uid, boolean disabled) {
                NetworkPolicyManagerService.this.mUidEventHandler.obtainMessage(101, uid, 0).sendToTarget();
            }

            public void onUidActive(int uid) {
            }

            public void onUidIdle(int uid, boolean disabled) {
            }

            public void onUidCachedChanged(int uid, boolean cached) {
            }
        };
        this.mPowerSaveWhitelistReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkPolicyManagerService.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                    NetworkPolicyManagerService.this.updatePowerSaveWhitelistUL();
                    NetworkPolicyManagerService.this.updateRulesForRestrictPowerUL();
                    NetworkPolicyManagerService.this.updateRulesForAppIdleUL();
                }
            }
        };
        this.mPackageReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkPolicyManagerService.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                int uid = intent.getIntExtra("android.intent.extra.UID", -1);
                if (uid != -1 && "android.intent.action.PACKAGE_ADDED".equals(action)) {
                    if (NetworkPolicyManagerService.LOGV) {
                        Slog.v(NetworkPolicyManagerService.TAG, "ACTION_PACKAGE_ADDED for uid=" + uid);
                    }
                    synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                        NetworkPolicyManagerService.this.mInternetPermissionMap.delete(uid);
                        NetworkPolicyManagerService.this.updateRestrictionRulesForUidUL(uid);
                    }
                }
            }
        };
        this.mUidRemovedReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkPolicyManagerService.7
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                int uid = intent.getIntExtra("android.intent.extra.UID", -1);
                if (uid == -1) {
                    return;
                }
                if (NetworkPolicyManagerService.LOGV) {
                    Slog.v(NetworkPolicyManagerService.TAG, "ACTION_UID_REMOVED for uid=" + uid);
                }
                synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                    NetworkPolicyManagerService.this.onUidDeletedUL(uid);
                    synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                        NetworkPolicyManagerService.this.writePolicyAL();
                    }
                }
            }
        };
        this.mUserReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkPolicyManagerService.8
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                byte b = -1;
                int userId = intent.getIntExtra("android.intent.extra.user_handle", -1);
                if (userId == -1) {
                    return;
                }
                int iHashCode = action.hashCode();
                if (iHashCode != -2061058799) {
                    if (iHashCode == 1121780209 && action.equals("android.intent.action.USER_ADDED")) {
                        b = 1;
                    }
                } else if (action.equals("android.intent.action.USER_REMOVED")) {
                    b = 0;
                }
                if (b == 0 || b == 1) {
                    synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                        NetworkPolicyManagerService.this.removeUserStateUL(userId, true, false);
                        NetworkPolicyManagerService.this.mMeteredRestrictedUids.remove(userId);
                        if (action == "android.intent.action.USER_ADDED") {
                            NetworkPolicyManagerService.this.addDefaultRestrictBackgroundWhitelistUidsUL(userId);
                        }
                        synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                            NetworkPolicyManagerService.this.updateRulesForGlobalChangeAL(true);
                        }
                    }
                }
            }
        };
        this.mStatsReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkPolicyManagerService.9
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                    NetworkPolicyManagerService.this.updateNetworkRulesNL();
                    NetworkPolicyManagerService.this.updateNetworkEnabledNL();
                    NetworkPolicyManagerService.this.updateNotificationsNL();
                }
            }
        };
        this.mAllowReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkPolicyManagerService.10
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                NetworkPolicyManagerService.this.setRestrictBackground(false);
            }
        };
        this.mSnoozeReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkPolicyManagerService.11
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                NetworkTemplate template = intent.getParcelableExtra("android.net.NETWORK_TEMPLATE");
                if (NetworkPolicyManagerService.ACTION_SNOOZE_WARNING.equals(intent.getAction())) {
                    NetworkPolicyManagerService.this.performSnooze(template, 34);
                } else if (NetworkPolicyManagerService.ACTION_SNOOZE_RAPID.equals(intent.getAction())) {
                    NetworkPolicyManagerService.this.performSnooze(template, 45);
                }
            }
        };
        this.mWifiReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkPolicyManagerService.12
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                    synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                        NetworkPolicyManagerService.this.upgradeWifiMeteredOverrideAL();
                    }
                }
                NetworkPolicyManagerService.this.mContext.unregisterReceiver(this);
            }
        };
        this.mNetworkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.android.server.net.NetworkPolicyManagerService.13
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                if (network == null || networkCapabilities == null) {
                    return;
                }
                synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                    boolean newRoaming = true;
                    boolean newMetered = !networkCapabilities.hasCapability(11);
                    boolean meteredChanged = NetworkPolicyManagerService.updateCapabilityChange(NetworkPolicyManagerService.this.mNetworkMetered, newMetered, network);
                    if (networkCapabilities.hasCapability(18)) {
                        newRoaming = false;
                    }
                    boolean roamingChanged = NetworkPolicyManagerService.updateCapabilityChange(NetworkPolicyManagerService.this.mNetworkRoaming, newRoaming, network);
                    if (meteredChanged || roamingChanged) {
                        NetworkPolicyManagerService.this.mLogger.meterednessChanged(network.netId, newMetered);
                        NetworkPolicyManagerService.this.updateNetworkRulesNL();
                    }
                }
            }
        };
        this.mAlertObserver = new BaseNetworkObserver() { // from class: com.android.server.net.NetworkPolicyManagerService.14
            public void limitReached(String limitName, String iface) {
                NetworkStack.checkNetworkStackPermission(NetworkPolicyManagerService.this.mContext);
                if (!NetworkManagementService.LIMIT_GLOBAL_ALERT.equals(limitName)) {
                    NetworkPolicyManagerService.this.mHandler.obtainMessage(5, iface).sendToTarget();
                }
            }
        };
        this.mConnReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkPolicyManagerService.15
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                NetworkPolicyManagerService.this.updateNetworksInternal();
            }
        };
        this.mCarrierConfigReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkPolicyManagerService.16
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (!intent.hasExtra("android.telephony.extra.SUBSCRIPTION_INDEX")) {
                    return;
                }
                int subId = intent.getIntExtra("android.telephony.extra.SUBSCRIPTION_INDEX", -1);
                NetworkPolicyManagerService.this.updateSubscriptions();
                synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                    synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                        String subscriberId = (String) NetworkPolicyManagerService.this.mSubIdToSubscriberId.get(subId, null);
                        if (subscriberId != null) {
                            NetworkPolicyManagerService.this.ensureActiveMobilePolicyAL(subId, subscriberId);
                            NetworkPolicyManagerService.this.maybeUpdateMobilePolicyCycleAL(subId, subscriberId);
                        } else {
                            Slog.wtf(NetworkPolicyManagerService.TAG, "Missing subscriberId for subId " + subId);
                        }
                        NetworkPolicyManagerService.this.handleNetworkPoliciesUpdateAL(true);
                    }
                }
            }
        };
        this.mHandlerCallback = new Handler.Callback() { // from class: com.android.server.net.NetworkPolicyManagerService.17
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message msg) {
                boolean enabled;
                switch (msg.what) {
                    case 1:
                        int uid = msg.arg1;
                        int uidRules = msg.arg2;
                        int length = NetworkPolicyManagerService.this.mListeners.beginBroadcast();
                        for (int i = 0; i < length; i++) {
                            INetworkPolicyListener listener = NetworkPolicyManagerService.this.mListeners.getBroadcastItem(i);
                            NetworkPolicyManagerService.this.dispatchUidRulesChanged(listener, uid, uidRules);
                        }
                        NetworkPolicyManagerService.this.mListeners.finishBroadcast();
                        return true;
                    case 2:
                        String[] meteredIfaces = (String[]) msg.obj;
                        int length2 = NetworkPolicyManagerService.this.mListeners.beginBroadcast();
                        for (int i2 = 0; i2 < length2; i2++) {
                            INetworkPolicyListener listener2 = NetworkPolicyManagerService.this.mListeners.getBroadcastItem(i2);
                            NetworkPolicyManagerService.this.dispatchMeteredIfacesChanged(listener2, meteredIfaces);
                        }
                        NetworkPolicyManagerService.this.mListeners.finishBroadcast();
                        return true;
                    case 3:
                    case 4:
                    case 8:
                    case 9:
                    case 12:
                    case 14:
                    default:
                        return false;
                    case 5:
                        String iface = (String) msg.obj;
                        synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                            if (!NetworkPolicyManagerService.this.mMeteredIfaces.contains(iface)) {
                                return true;
                            }
                            NetworkPolicyManagerService.this.mNetworkStats.forceUpdate();
                            synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                                NetworkPolicyManagerService.this.updateNetworkRulesNL();
                                NetworkPolicyManagerService.this.updateNetworkEnabledNL();
                                NetworkPolicyManagerService.this.updateNotificationsNL();
                                break;
                            }
                            return true;
                        }
                    case 6:
                        enabled = msg.arg1 != 0;
                        boolean restrictBackground = enabled;
                        int length3 = NetworkPolicyManagerService.this.mListeners.beginBroadcast();
                        for (int i3 = 0; i3 < length3; i3++) {
                            INetworkPolicyListener listener3 = NetworkPolicyManagerService.this.mListeners.getBroadcastItem(i3);
                            NetworkPolicyManagerService.this.dispatchRestrictBackgroundChanged(listener3, restrictBackground);
                        }
                        NetworkPolicyManagerService.this.mListeners.finishBroadcast();
                        Intent intent = new Intent("android.net.conn.RESTRICT_BACKGROUND_CHANGED");
                        intent.setFlags(1073741824);
                        NetworkPolicyManagerService.this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
                        return true;
                    case 7:
                        long lowestRule = ((Long) msg.obj).longValue();
                        long persistThreshold = lowestRule / 1000;
                        NetworkPolicyManagerService.this.mNetworkStats.advisePersistThreshold(persistThreshold);
                        return true;
                    case 10:
                        String iface2 = (String) msg.obj;
                        long quota = (((long) msg.arg1) << 32) | (((long) msg.arg2) & 4294967295L);
                        NetworkPolicyManagerService.this.removeInterfaceQuota(iface2);
                        NetworkPolicyManagerService.this.setInterfaceQuota(iface2, quota);
                        NetworkPolicyManagerService.this.mNetworkStats.setStatsProviderLimitAsync(iface2, quota);
                        return true;
                    case 11:
                        String iface3 = (String) msg.obj;
                        NetworkPolicyManagerService.this.removeInterfaceQuota(iface3);
                        NetworkPolicyManagerService.this.mNetworkStats.setStatsProviderLimitAsync(iface3, -1L);
                        return true;
                    case 13:
                        int uid2 = msg.arg1;
                        int policy = msg.arg2;
                        Boolean notifyApp = (Boolean) msg.obj;
                        int length4 = NetworkPolicyManagerService.this.mListeners.beginBroadcast();
                        for (int i4 = 0; i4 < length4; i4++) {
                            INetworkPolicyListener listener4 = NetworkPolicyManagerService.this.mListeners.getBroadcastItem(i4);
                            NetworkPolicyManagerService.this.dispatchUidPoliciesChanged(listener4, uid2, policy);
                        }
                        NetworkPolicyManagerService.this.mListeners.finishBroadcast();
                        if (notifyApp.booleanValue()) {
                            NetworkPolicyManagerService.this.broadcastRestrictBackgroundChanged(uid2, notifyApp);
                        }
                        return true;
                    case 15:
                        NetworkPolicyManagerService.this.resetUidFirewallRules(msg.arg1);
                        return true;
                    case 16:
                        int userId = msg.arg1;
                        int overrideValue = msg.arg2;
                        int subId = ((Integer) msg.obj).intValue();
                        int length5 = NetworkPolicyManagerService.this.mListeners.beginBroadcast();
                        for (int i5 = 0; i5 < length5; i5++) {
                            INetworkPolicyListener listener5 = NetworkPolicyManagerService.this.mListeners.getBroadcastItem(i5);
                            NetworkPolicyManagerService.this.dispatchSubscriptionOverride(listener5, subId, userId, overrideValue);
                        }
                        NetworkPolicyManagerService.this.mListeners.finishBroadcast();
                        return true;
                    case 17:
                        int userId2 = msg.arg1;
                        Set<String> packageNames = (Set) msg.obj;
                        NetworkPolicyManagerService.this.setMeteredRestrictedPackagesInternal(packageNames, userId2);
                        return true;
                    case 18:
                        NetworkTemplate template = (NetworkTemplate) msg.obj;
                        enabled = msg.arg1 != 0;
                        NetworkPolicyManagerService.this.setNetworkTemplateEnabledInner(template, enabled);
                        return true;
                    case 19:
                        SubscriptionPlan[] plans = (SubscriptionPlan[]) msg.obj;
                        int subId2 = msg.arg1;
                        int length6 = NetworkPolicyManagerService.this.mListeners.beginBroadcast();
                        for (int i6 = 0; i6 < length6; i6++) {
                            INetworkPolicyListener listener6 = NetworkPolicyManagerService.this.mListeners.getBroadcastItem(i6);
                            NetworkPolicyManagerService.this.dispatchSubscriptionPlansChanged(listener6, subId2, plans);
                        }
                        NetworkPolicyManagerService.this.mListeners.finishBroadcast();
                        return true;
                    case 20:
                        NetworkPolicyManagerService.this.mNetworkStats.forceUpdate();
                        synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                            NetworkPolicyManagerService.this.updateNetworkRulesNL();
                            NetworkPolicyManagerService.this.updateNetworkEnabledNL();
                            NetworkPolicyManagerService.this.updateNotificationsNL();
                            break;
                        }
                        return true;
                }
            }
        };
        this.mUidEventHandlerCallback = new Handler.Callback() { // from class: com.android.server.net.NetworkPolicyManagerService.18
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message msg) {
                int i = msg.what;
                if (i != 100) {
                    if (i == 101) {
                        int uid = msg.arg1;
                        NetworkPolicyManagerService.this.handleUidGone(uid);
                        return true;
                    }
                    return false;
                }
                int uid2 = msg.arg1;
                int procState = msg.arg2;
                long procStateSeq = ((Long) msg.obj).longValue();
                NetworkPolicyManagerService.this.handleUidChanged(uid2, procState, procStateSeq);
                return true;
            }
        };
        Objects.requireNonNull(context, "missing context");
        this.mContext = context;
        Objects.requireNonNull(activityManager, "missing activityManager");
        this.mActivityManager = activityManager;
        Objects.requireNonNull(networkManagement, "missing networkManagement");
        this.mNetworkManager = networkManagement;
        this.mPowerWhitelistManager = (PowerWhitelistManager) this.mContext.getSystemService(PowerWhitelistManager.class);
        Objects.requireNonNull(clock, "missing Clock");
        this.mClock = clock;
        this.mUserManager = (UserManager) this.mContext.getSystemService("user");
        this.mCarrierConfigManager = (CarrierConfigManager) this.mContext.getSystemService(CarrierConfigManager.class);
        this.mIPm = pm;
        HandlerThread thread = new HandlerThread(TAG);
        thread.start();
        this.mHandler = new Handler(thread.getLooper(), this.mHandlerCallback);
        ServiceThread serviceThread = new ServiceThread("NetworkPolicy.uid", -2, false);
        this.mUidEventThread = serviceThread;
        serviceThread.start();
        this.mUidEventHandler = new Handler(this.mUidEventThread.getLooper(), this.mUidEventHandlerCallback);
        this.mSuppressDefaultPolicy = suppressDefaultPolicy;
        this.mPolicyFile = new AtomicFile(new File(systemDir, "netpolicy.xml"), "net-policy");
        this.mAppOps = (AppOpsManager) context.getSystemService(AppOpsManager.class);
        LocalServices.addService(NetworkPolicyManagerInternal.class, new NetworkPolicyManagerInternalImpl());
    }

    public void bindConnectivityManager(IConnectivityManager connManager) {
        Objects.requireNonNull(connManager, "missing IConnectivityManager");
        this.mConnManager = connManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePowerSaveWhitelistUL() {
        int[] whitelist = this.mPowerWhitelistManager.getWhitelistedAppIds(false);
        this.mPowerSaveWhitelistExceptIdleAppIds.clear();
        for (int uid : whitelist) {
            this.mPowerSaveWhitelistExceptIdleAppIds.put(uid, true);
        }
        int[] whitelist2 = this.mPowerWhitelistManager.getWhitelistedAppIds(true);
        this.mPowerSaveWhitelistAppIds.clear();
        for (int uid2 : whitelist2) {
            this.mPowerSaveWhitelistAppIds.put(uid2, true);
        }
    }

    boolean addDefaultRestrictBackgroundWhitelistUidsUL() {
        List<UserInfo> users = this.mUserManager.getUsers();
        int numberUsers = users.size();
        boolean changed = false;
        for (int i = 0; i < numberUsers; i++) {
            UserInfo user = users.get(i);
            changed = addDefaultRestrictBackgroundWhitelistUidsUL(user.id) || changed;
        }
        return changed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean addDefaultRestrictBackgroundWhitelistUidsUL(int userId) {
        SystemConfig sysConfig = SystemConfig.getInstance();
        PackageManager pm = this.mContext.getPackageManager();
        ArraySet<String> allowDataUsage = sysConfig.getAllowInDataUsageSave();
        boolean changed = false;
        for (int i = 0; i < allowDataUsage.size(); i++) {
            String pkg = allowDataUsage.valueAt(i);
            if (LOGD) {
                Slog.d(TAG, "checking restricted background whitelisting for package " + pkg + " and user " + userId);
            }
            try {
                ApplicationInfo app = pm.getApplicationInfoAsUser(pkg, 1048576, userId);
                if (app.isPrivilegedApp()) {
                    int uid = UserHandle.getUid(userId, app.uid);
                    this.mDefaultRestrictBackgroundWhitelistUids.append(uid, true);
                    if (LOGD) {
                        Slog.d(TAG, "Adding uid " + uid + " (user " + userId + ") to default restricted background whitelist. Revoked status: " + this.mRestrictBackgroundWhitelistRevokedUids.get(uid));
                    }
                    if (!this.mRestrictBackgroundWhitelistRevokedUids.get(uid)) {
                        if (LOGD) {
                            Slog.d(TAG, "adding default package " + pkg + " (uid " + uid + " for user " + userId + ") to restrict background whitelist");
                        }
                        setUidPolicyUncheckedUL(uid, 4, false);
                        changed = true;
                    }
                } else {
                    Slog.e(TAG, "addDefaultRestrictBackgroundWhitelistUidsUL(): skipping non-privileged app  " + pkg);
                }
            } catch (PackageManager.NameNotFoundException e) {
                if (LOGD) {
                    Slog.d(TAG, "No ApplicationInfo for package " + pkg);
                }
            }
        }
        return changed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initService, reason: merged with bridge method [inline-methods] */
    public void lambda$networkScoreAndNetworkManagementServiceReady$0$NetworkPolicyManagerService(CountDownLatch initCompleteSignal) {
        Trace.traceBegin(2097152L, "systemReady");
        int oldPriority = Process.getThreadPriority(Process.myTid());
        try {
            Process.setThreadPriority(-2);
            if (isBandwidthControlEnabled()) {
                this.mUsageStats = (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
                this.mAppStandby = (AppStandbyInternal) LocalServices.getService(AppStandbyInternal.class);
                this.mNetworkStats = (NetworkStatsManagerInternal) LocalServices.getService(NetworkStatsManagerInternal.class);
                synchronized (this.mUidRulesFirstLock) {
                    synchronized (this.mNetworkPoliciesSecondLock) {
                        updatePowerSaveWhitelistUL();
                        PowerManagerInternal powerManagerInternal = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
                        this.mPowerManagerInternal = powerManagerInternal;
                        powerManagerInternal.registerLowPowerModeObserver(new PowerManagerInternal.LowPowerModeListener() { // from class: com.android.server.net.NetworkPolicyManagerService.1
                            public int getServiceType() {
                                return 6;
                            }

                            public void onLowPowerModeChanged(PowerSaveState result) {
                                boolean enabled = result.batterySaverEnabled;
                                if (NetworkPolicyManagerService.LOGD) {
                                    Slog.d(NetworkPolicyManagerService.TAG, "onLowPowerModeChanged(" + enabled + ")");
                                }
                                synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                                    if (NetworkPolicyManagerService.this.mRestrictPower != enabled) {
                                        NetworkPolicyManagerService.this.mRestrictPower = enabled;
                                        NetworkPolicyManagerService.this.updateRulesForRestrictPowerUL();
                                    }
                                }
                            }
                        });
                        this.mRestrictPower = this.mPowerManagerInternal.getLowPowerState(6).batterySaverEnabled;
                        this.mSystemReady = true;
                        waitForAdminData();
                        readPolicyAL();
                        this.mRestrictBackgroundBeforeBsm = this.mLoadedRestrictBackground;
                        boolean z = this.mPowerManagerInternal.getLowPowerState(10).batterySaverEnabled;
                        this.mRestrictBackgroundLowPowerMode = z;
                        if (z && !this.mLoadedRestrictBackground) {
                            this.mLoadedRestrictBackground = true;
                        }
                        this.mPowerManagerInternal.registerLowPowerModeObserver(new PowerManagerInternal.LowPowerModeListener() { // from class: com.android.server.net.NetworkPolicyManagerService.2
                            public int getServiceType() {
                                return 10;
                            }

                            public void onLowPowerModeChanged(PowerSaveState result) {
                                synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                                    NetworkPolicyManagerService.this.updateRestrictBackgroundByLowPowerModeUL(result);
                                }
                            }
                        });
                        if (addDefaultRestrictBackgroundWhitelistUidsUL()) {
                            writePolicyAL();
                        }
                        setRestrictBackgroundUL(this.mLoadedRestrictBackground, "init_service");
                        updateRulesForGlobalChangeAL(false);
                        updateNotificationsNL();
                    }
                }
                this.mActivityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
                try {
                    this.mActivityManager.registerUidObserver(this.mUidObserver, 3, 5, PackageManagerService.PLATFORM_PACKAGE_NAME);
                    this.mNetworkManager.registerObserver(this.mAlertObserver);
                } catch (RemoteException e) {
                }
                IntentFilter whitelistFilter = new IntentFilter("android.os.action.POWER_SAVE_WHITELIST_CHANGED");
                this.mContext.registerReceiver(this.mPowerSaveWhitelistReceiver, whitelistFilter, null, this.mHandler);
                IntentFilter connFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
                this.mContext.registerReceiver(this.mConnReceiver, connFilter, "android.permission.NETWORK_STACK", this.mHandler);
                IntentFilter packageFilter = new IntentFilter();
                packageFilter.addAction("android.intent.action.PACKAGE_ADDED");
                packageFilter.addDataScheme(Settings.ATTR_PACKAGE);
                this.mContext.registerReceiver(this.mPackageReceiver, packageFilter, null, this.mHandler);
                this.mContext.registerReceiver(this.mUidRemovedReceiver, new IntentFilter("android.intent.action.UID_REMOVED"), null, this.mHandler);
                IntentFilter userFilter = new IntentFilter();
                userFilter.addAction("android.intent.action.USER_ADDED");
                userFilter.addAction("android.intent.action.USER_REMOVED");
                this.mContext.registerReceiver(this.mUserReceiver, userFilter, null, this.mHandler);
                IntentFilter statsFilter = new IntentFilter(NetworkStatsService.ACTION_NETWORK_STATS_UPDATED);
                this.mContext.registerReceiver(this.mStatsReceiver, statsFilter, "android.permission.READ_NETWORK_USAGE_HISTORY", this.mHandler);
                IntentFilter allowFilter = new IntentFilter(ACTION_ALLOW_BACKGROUND);
                this.mContext.registerReceiver(this.mAllowReceiver, allowFilter, "android.permission.MANAGE_NETWORK_POLICY", this.mHandler);
                this.mContext.registerReceiver(this.mSnoozeReceiver, new IntentFilter(ACTION_SNOOZE_WARNING), "android.permission.MANAGE_NETWORK_POLICY", this.mHandler);
                this.mContext.registerReceiver(this.mSnoozeReceiver, new IntentFilter(ACTION_SNOOZE_RAPID), "android.permission.MANAGE_NETWORK_POLICY", this.mHandler);
                IntentFilter wifiFilter = new IntentFilter("android.net.wifi.CONFIGURED_NETWORKS_CHANGE");
                this.mContext.registerReceiver(this.mWifiReceiver, wifiFilter, null, this.mHandler);
                IntentFilter carrierConfigFilter = new IntentFilter("android.telephony.action.CARRIER_CONFIG_CHANGED");
                this.mContext.registerReceiver(this.mCarrierConfigReceiver, carrierConfigFilter, null, this.mHandler);
                ((ConnectivityManager) this.mContext.getSystemService(ConnectivityManager.class)).registerNetworkCallback(new NetworkRequest.Builder().build(), this.mNetworkCallback);
                this.mAppStandby.addListener(new NetPolicyAppIdleStateChangeListener());
                synchronized (this.mUidRulesFirstLock) {
                    updateRulesForAppIdleParoleUL();
                }
                ((SubscriptionManager) this.mContext.getSystemService(SubscriptionManager.class)).addOnSubscriptionsChangedListener(new HandlerExecutor(this.mHandler), new SubscriptionManager.OnSubscriptionsChangedListener() { // from class: com.android.server.net.NetworkPolicyManagerService.3
                    @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
                    public void onSubscriptionsChanged() {
                        NetworkPolicyManagerService.this.updateNetworksInternal();
                    }
                });
                initCompleteSignal.countDown();
                Process.setThreadPriority(oldPriority);
                Trace.traceEnd(2097152L);
                return;
            }
            Slog.w(TAG, "bandwidth controls disabled, unable to enforce policy");
            Process.setThreadPriority(oldPriority);
            Trace.traceEnd(2097152L);
        } catch (Throwable th) {
            Process.setThreadPriority(oldPriority);
            Trace.traceEnd(2097152L);
            throw th;
        }
    }

    public CountDownLatch networkScoreAndNetworkManagementServiceReady() {
        this.mNetworkManagerReady = true;
        final CountDownLatch initCompleteSignal = new CountDownLatch(1);
        this.mHandler.post(new Runnable() { // from class: com.android.server.net.-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$networkScoreAndNetworkManagementServiceReady$0$NetworkPolicyManagerService(initCompleteSignal);
            }
        });
        return initCompleteSignal;
    }

    public void systemReady(CountDownLatch initCompleteSignal) {
        try {
            if (!initCompleteSignal.await(30L, TimeUnit.SECONDS)) {
                throw new IllegalStateException("Service NetworkPolicy init timeout");
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Service NetworkPolicy init interrupted", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean updateCapabilityChange(SparseBooleanArray lastValues, boolean newValue, Network network) {
        boolean lastValue = lastValues.get(network.netId, false);
        boolean changed = lastValue != newValue || lastValues.indexOfKey(network.netId) < 0;
        if (changed) {
            lastValues.put(network.netId, newValue);
        }
        return changed;
    }

    void updateNotificationsNL() {
        boolean z;
        NetworkPolicyManagerService networkPolicyManagerService = this;
        if (LOGV) {
            Slog.v(TAG, "updateNotificationsNL()");
        }
        Trace.traceBegin(2097152L, "updateNotificationsNL");
        ArraySet<NotificationId> beforeNotifs = new ArraySet<>(networkPolicyManagerService.mActiveNotifs);
        networkPolicyManagerService.mActiveNotifs.clear();
        long now = networkPolicyManagerService.mClock.millis();
        boolean z2 = true;
        int i = networkPolicyManagerService.mNetworkPolicy.size() - 1;
        while (i >= 0) {
            NetworkPolicy policy = networkPolicyManagerService.mNetworkPolicy.valueAt(i);
            int subId = networkPolicyManagerService.findRelevantSubIdNL(policy.template);
            if (subId == -1) {
                z = z2;
            } else if (policy.hasCycle()) {
                Pair<ZonedDateTime, ZonedDateTime> cycle = (Pair) NetworkPolicyManager.cycleIterator(policy).next();
                long cycleStart = ((ZonedDateTime) cycle.first).toInstant().toEpochMilli();
                long cycleEnd = ((ZonedDateTime) cycle.second).toInstant().toEpochMilli();
                long totalBytes = getTotalBytes(policy.template, cycleStart, cycleEnd);
                PersistableBundle config = networkPolicyManagerService.mCarrierConfigManager.getConfigForSubId(subId);
                if (!CarrierConfigManager.isConfigForIdentifiedCarrier(config)) {
                    if (LOGV) {
                        Slog.v(TAG, "isConfigForIdentifiedCarrier returned false");
                        return;
                    }
                    return;
                }
                boolean notifyWarning = getBooleanDefeatingNullable(config, "data_warning_notification_bool", z2);
                boolean notifyLimit = getBooleanDefeatingNullable(config, "data_limit_notification_bool", z2);
                boolean notifyRapid = getBooleanDefeatingNullable(config, "data_rapid_notification_bool", z2);
                if (notifyWarning && policy.isOverWarning(totalBytes) && !policy.isOverLimit(totalBytes)) {
                    boolean snoozedThisCycle = policy.lastWarningSnooze >= cycleStart ? z2 : false;
                    if (!snoozedThisCycle) {
                        enqueueNotification(policy, 34, totalBytes, null);
                    }
                }
                if (notifyLimit) {
                    if (policy.isOverLimit(totalBytes)) {
                        boolean snoozedThisCycle2 = policy.lastLimitSnooze >= cycleStart ? z2 : false;
                        if (snoozedThisCycle2) {
                            enqueueNotification(policy, 36, totalBytes, null);
                        } else {
                            enqueueNotification(policy, 35, totalBytes, null);
                            networkPolicyManagerService.notifyOverLimitNL(policy.template);
                        }
                    } else {
                        networkPolicyManagerService.notifyUnderLimitNL(policy.template);
                    }
                }
                if (!notifyRapid || policy.limitBytes == -1) {
                    z = z2;
                } else {
                    long recentDuration = TimeUnit.DAYS.toMillis(4L);
                    long recentStart = now - recentDuration;
                    long recentBytes = getTotalBytes(policy.template, recentStart, now);
                    long cycleDuration = cycleEnd - cycleStart;
                    long projectedBytes = (recentBytes * cycleDuration) / recentDuration;
                    long alertBytes = (policy.limitBytes * 3) / 2;
                    if (LOGD) {
                        Slog.d(TAG, "Rapid usage considering recent " + recentBytes + " projected " + projectedBytes + " alert " + alertBytes);
                    }
                    long cycleDuration2 = policy.lastRapidSnooze;
                    boolean snoozedRecently = cycleDuration2 >= now - 86400000;
                    if (projectedBytes <= alertBytes || snoozedRecently) {
                        z = true;
                    } else {
                        z = true;
                        enqueueNotification(policy, 45, 0L, findRapidBlame(policy.template, recentStart, now));
                    }
                }
            } else {
                z = z2;
            }
            i--;
            beforeNotifs = beforeNotifs;
            z2 = z;
            networkPolicyManagerService = this;
        }
        ArraySet<NotificationId> beforeNotifs2 = beforeNotifs;
        for (int i2 = beforeNotifs2.size() - 1; i2 >= 0; i2--) {
            NotificationId notificationId = beforeNotifs2.valueAt(i2);
            if (!this.mActiveNotifs.contains(notificationId)) {
                cancelNotification(notificationId);
            }
        }
        Trace.traceEnd(2097152L);
    }

    private ApplicationInfo findRapidBlame(NetworkTemplate template, long start, long end) {
        String[] packageNames;
        NetworkStats stats = getNetworkUidBytes(template, start, end);
        int maxUid = 0;
        NetworkStats.Entry entry = null;
        long totalBytes = 0;
        long maxBytes = 0;
        for (int maxUid2 = 0; maxUid2 < stats.size(); maxUid2++) {
            entry = stats.getValues(maxUid2, entry);
            long bytes = entry.rxBytes + entry.txBytes;
            totalBytes += bytes;
            if (bytes > maxBytes) {
                maxBytes = bytes;
                maxUid = entry.uid;
            }
        }
        if (maxBytes > 0 && maxBytes > totalBytes / 2 && (packageNames = this.mContext.getPackageManager().getPackagesForUid(maxUid)) != null && packageNames.length == 1) {
            try {
                return this.mContext.getPackageManager().getApplicationInfo(packageNames[0], 4989440);
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findRelevantSubIdNL(NetworkTemplate template) {
        for (int i = 0; i < this.mSubIdToSubscriberId.size(); i++) {
            int subId = this.mSubIdToSubscriberId.keyAt(i);
            String subscriberId = this.mSubIdToSubscriberId.valueAt(i);
            NetworkIdentity probeIdent = new NetworkIdentity(0, 0, subscriberId, (String) null, false, true, true);
            if (template.matches(probeIdent)) {
                return subId;
            }
        }
        return -1;
    }

    private void notifyOverLimitNL(NetworkTemplate template) {
        if (!this.mOverLimitNotified.contains(template)) {
            Context context = this.mContext;
            context.startActivity(buildNetworkOverLimitIntent(context.getResources(), template));
            this.mOverLimitNotified.add(template);
        }
    }

    private void notifyUnderLimitNL(NetworkTemplate template) {
        this.mOverLimitNotified.remove(template);
    }

    private void enqueueNotification(NetworkPolicy policy, int type, long totalBytes, ApplicationInfo rapidBlame) {
        CharSequence title;
        CharSequence body;
        NotificationId notificationId = new NotificationId(policy, type);
        Notification.Builder builder = new Notification.Builder(this.mContext, SystemNotificationChannels.NETWORK_ALERTS);
        builder.setOnlyAlertOnce(true);
        builder.setWhen(0L);
        builder.setColor(this.mContext.getColor(R.color.system_notification_accent_color));
        Resources res = this.mContext.getResources();
        if (type != 45) {
            switch (type) {
                case 34:
                    title = res.getText(R.string.config_usbResolverActivity);
                    body = res.getString(R.string.config_usbPermissionActivity, Formatter.formatFileSize(this.mContext, totalBytes, 8));
                    builder.setSmallIcon(R.drawable.stat_notify_error);
                    Intent snoozeIntent = buildSnoozeWarningIntent(policy.template, this.mContext.getPackageName());
                    builder.setDeleteIntent(PendingIntent.getBroadcast(this.mContext, 0, snoozeIntent, AudioFormat.OPUS));
                    Intent viewIntent = buildViewDataUsageIntent(res, policy.template);
                    if (UserManager.isHeadlessSystemUserMode()) {
                        builder.setContentIntent(PendingIntent.getActivityAsUser(this.mContext, 0, viewIntent, AudioFormat.OPUS, null, UserHandle.CURRENT));
                    } else {
                        builder.setContentIntent(PendingIntent.getActivity(this.mContext, 0, viewIntent, AudioFormat.OPUS));
                    }
                    break;
                case 35:
                    int matchRule = policy.template.getMatchRule();
                    if (matchRule == 1) {
                        title = res.getText(R.string.config_systemUIServiceComponent);
                    } else if (matchRule == 4) {
                        title = res.getText(R.string.config_vendorColorModesRestoreHint);
                    } else {
                        return;
                    }
                    body = res.getText(R.string.config_systemGameService);
                    builder.setOngoing(true);
                    builder.setSmallIcon(R.drawable.pointer_wait_29);
                    Intent intent = buildNetworkOverLimitIntent(res, policy.template);
                    if (UserManager.isHeadlessSystemUserMode()) {
                        builder.setContentIntent(PendingIntent.getActivityAsUser(this.mContext, 0, intent, AudioFormat.OPUS, null, UserHandle.CURRENT));
                    } else {
                        builder.setContentIntent(PendingIntent.getActivity(this.mContext, 0, intent, AudioFormat.OPUS));
                    }
                    break;
                case 36:
                    int matchRule2 = policy.template.getMatchRule();
                    if (matchRule2 == 1) {
                        title = res.getText(R.string.config_systemTelevisionRemoteService);
                    } else if (matchRule2 == 4) {
                        title = res.getText(R.string.config_useragentprofile_url);
                    } else {
                        return;
                    }
                    long overBytes = totalBytes - policy.limitBytes;
                    body = res.getString(R.string.config_systemImageEditor, Formatter.formatFileSize(this.mContext, overBytes, 8));
                    builder.setOngoing(true);
                    builder.setSmallIcon(R.drawable.stat_notify_error);
                    builder.setChannelId(SystemNotificationChannels.NETWORK_STATUS);
                    Intent intent2 = buildViewDataUsageIntent(res, policy.template);
                    if (UserManager.isHeadlessSystemUserMode()) {
                        builder.setContentIntent(PendingIntent.getActivityAsUser(this.mContext, 0, intent2, AudioFormat.OPUS, null, UserHandle.CURRENT));
                    } else {
                        builder.setContentIntent(PendingIntent.getActivity(this.mContext, 0, intent2, AudioFormat.OPUS));
                    }
                    break;
                default:
                    return;
            }
        } else {
            title = res.getText(R.string.config_usbAccessoryUriActivity);
            if (rapidBlame != null) {
                body = res.getString(R.string.config_tcp_buffers, rapidBlame.loadLabel(this.mContext.getPackageManager()));
            } else {
                body = res.getString(R.string.config_tvRemoteServicePackage);
            }
            builder.setSmallIcon(R.drawable.stat_notify_error);
            Intent snoozeIntent2 = buildSnoozeRapidIntent(policy.template, this.mContext.getPackageName());
            builder.setDeleteIntent(PendingIntent.getBroadcast(this.mContext, 0, snoozeIntent2, AudioFormat.OPUS));
            Intent viewIntent2 = buildViewDataUsageIntent(res, policy.template);
            if (UserManager.isHeadlessSystemUserMode()) {
                builder.setContentIntent(PendingIntent.getActivityAsUser(this.mContext, 0, viewIntent2, AudioFormat.OPUS, null, UserHandle.CURRENT));
            } else {
                builder.setContentIntent(PendingIntent.getActivity(this.mContext, 0, viewIntent2, AudioFormat.OPUS));
            }
        }
        builder.setTicker(title);
        builder.setContentTitle(title);
        builder.setContentText(body);
        builder.setStyle(new Notification.BigTextStyle().bigText(body));
        ((NotificationManager) this.mContext.getSystemService(NotificationManager.class)).notifyAsUser(notificationId.getTag(), notificationId.getId(), builder.build(), UserHandle.ALL);
        this.mActiveNotifs.add(notificationId);
    }

    private void cancelNotification(NotificationId notificationId) {
        ((NotificationManager) this.mContext.getSystemService(NotificationManager.class)).cancel(notificationId.getTag(), notificationId.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNetworksInternal() {
        updateSubscriptions();
        synchronized (this.mUidRulesFirstLock) {
            synchronized (this.mNetworkPoliciesSecondLock) {
                ensureActiveMobilePolicyAL();
                normalizePoliciesNL();
                updateNetworkEnabledNL();
                updateNetworkRulesNL();
                updateNotificationsNL();
            }
        }
    }

    void updateNetworks() throws InterruptedException {
        updateNetworksInternal();
        final CountDownLatch latch = new CountDownLatch(1);
        this.mHandler.post(new Runnable() { // from class: com.android.server.net.-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54
            @Override // java.lang.Runnable
            public final void run() {
                latch.countDown();
            }
        });
        latch.await(5L, TimeUnit.SECONDS);
    }

    Handler getHandlerForTesting() {
        return this.mHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean maybeUpdateMobilePolicyCycleAL(int subId, String subscriberId) {
        if (LOGV) {
            Slog.v(TAG, "maybeUpdateMobilePolicyCycleAL()");
        }
        boolean policyUpdated = false;
        NetworkIdentity probeIdent = new NetworkIdentity(0, 0, subscriberId, (String) null, false, true, true);
        for (int i = this.mNetworkPolicy.size() - 1; i >= 0; i--) {
            NetworkTemplate template = this.mNetworkPolicy.keyAt(i);
            if (template.matches(probeIdent)) {
                NetworkPolicy policy = this.mNetworkPolicy.valueAt(i);
                policyUpdated |= updateDefaultMobilePolicyAL(subId, policy);
            }
        }
        return policyUpdated;
    }

    int getCycleDayFromCarrierConfig(PersistableBundle config, int fallbackCycleDay) {
        int cycleDay;
        if (config == null || (cycleDay = config.getInt("monthly_data_cycle_day_int")) == -1) {
            return fallbackCycleDay;
        }
        Calendar cal = Calendar.getInstance();
        if (cycleDay < cal.getMinimum(5) || cycleDay > cal.getMaximum(5)) {
            Slog.e(TAG, "Invalid date in CarrierConfigManager.KEY_MONTHLY_DATA_CYCLE_DAY_INT: " + cycleDay);
            return fallbackCycleDay;
        }
        return cycleDay;
    }

    long getWarningBytesFromCarrierConfig(PersistableBundle config, long fallbackWarningBytes) {
        if (config == null) {
            return fallbackWarningBytes;
        }
        long warningBytes = config.getLong("data_warning_threshold_bytes_long");
        if (warningBytes == -2) {
            return -1L;
        }
        if (warningBytes == -1) {
            return getPlatformDefaultWarningBytes();
        }
        if (warningBytes < 0) {
            Slog.e(TAG, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: " + warningBytes);
            return fallbackWarningBytes;
        }
        return warningBytes;
    }

    long getLimitBytesFromCarrierConfig(PersistableBundle config, long fallbackLimitBytes) {
        if (config == null) {
            return fallbackLimitBytes;
        }
        long limitBytes = config.getLong("data_limit_threshold_bytes_long");
        if (limitBytes == -2) {
            return -1L;
        }
        if (limitBytes == -1) {
            return getPlatformDefaultLimitBytes();
        }
        if (limitBytes < 0) {
            Slog.e(TAG, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: " + limitBytes);
            return fallbackLimitBytes;
        }
        return limitBytes;
    }

    void handleNetworkPoliciesUpdateAL(boolean shouldNormalizePolicies) throws IOException {
        if (shouldNormalizePolicies) {
            normalizePoliciesNL();
        }
        updateNetworkEnabledNL();
        updateNetworkRulesNL();
        updateNotificationsNL();
        writePolicyAL();
    }

    void updateNetworkEnabledNL() {
        if (LOGV) {
            Slog.v(TAG, "updateNetworkEnabledNL()");
        }
        Trace.traceBegin(2097152L, "updateNetworkEnabledNL");
        long startTime = this.mStatLogger.getTime();
        int i = this.mNetworkPolicy.size() - 1;
        while (true) {
            if (i >= 0) {
                NetworkPolicy policy = this.mNetworkPolicy.valueAt(i);
                if (policy.limitBytes == -1 || !policy.hasCycle()) {
                    setNetworkTemplateEnabled(policy.template, true);
                } else {
                    Pair<ZonedDateTime, ZonedDateTime> cycle = (Pair) NetworkPolicyManager.cycleIterator(policy).next();
                    long start = ((ZonedDateTime) cycle.first).toInstant().toEpochMilli();
                    long end = ((ZonedDateTime) cycle.second).toInstant().toEpochMilli();
                    long totalBytes = getTotalBytes(policy.template, start, end);
                    boolean overLimitWithoutSnooze = policy.isOverLimit(totalBytes) && policy.lastLimitSnooze < start;
                    boolean networkEnabled = overLimitWithoutSnooze ? false : true;
                    setNetworkTemplateEnabled(policy.template, networkEnabled);
                }
                i--;
            } else {
                this.mStatLogger.logDurationStat(0, startTime);
                Trace.traceEnd(2097152L);
                return;
            }
        }
    }

    private void setNetworkTemplateEnabled(NetworkTemplate networkTemplate, boolean z) {
        this.mHandler.obtainMessage(18, z ? 1 : 0, 0, networkTemplate).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNetworkTemplateEnabledInner(NetworkTemplate template, boolean enabled) {
        if (template.getMatchRule() == 1) {
            IntArray matchingSubIds = new IntArray();
            synchronized (this.mNetworkPoliciesSecondLock) {
                for (int i = 0; i < this.mSubIdToSubscriberId.size(); i++) {
                    int subId = this.mSubIdToSubscriberId.keyAt(i);
                    String subscriberId = this.mSubIdToSubscriberId.valueAt(i);
                    NetworkIdentity probeIdent = new NetworkIdentity(0, 0, subscriberId, (String) null, false, true, true);
                    if (template.matches(probeIdent)) {
                        matchingSubIds.add(subId);
                    }
                }
            }
            TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService(TelephonyManager.class);
            for (int i2 = 0; i2 < matchingSubIds.size(); i2++) {
                int subId2 = matchingSubIds.get(i2);
                tm.createForSubscriptionId(subId2).setPolicyDataEnabled(enabled);
            }
        }
    }

    private static void collectIfaces(ArraySet<String> ifaces, NetworkState state) {
        String baseIface = state.linkProperties.getInterfaceName();
        if (baseIface != null) {
            ifaces.add(baseIface);
        }
        for (LinkProperties stackedLink : state.linkProperties.getStackedLinks()) {
            String stackedIface = stackedLink.getInterfaceName();
            if (stackedIface != null) {
                ifaces.add(stackedIface);
            }
        }
    }

    void updateSubscriptions() {
        if (LOGV) {
            Slog.v(TAG, "updateSubscriptions()");
        }
        Trace.traceBegin(2097152L, "updateSubscriptions");
        TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService(TelephonyManager.class);
        SubscriptionManager sm = (SubscriptionManager) this.mContext.getSystemService(SubscriptionManager.class);
        List<SubscriptionInfo> subList = CollectionUtils.emptyIfNull(sm.getActiveSubscriptionInfoList());
        List<String[]> mergedSubscriberIdsList = new ArrayList<>();
        SparseArray<String> subIdToSubscriberId = new SparseArray<>(subList.size());
        for (SubscriptionInfo sub : subList) {
            TelephonyManager tmSub = tm.createForSubscriptionId(sub.getSubscriptionId());
            String subscriberId = tmSub.getSubscriberId();
            if (TextUtils.isEmpty(subscriberId)) {
                Slog.wtf(TAG, "Missing subscriberId for subId " + tmSub.getSubscriptionId());
            } else {
                subIdToSubscriberId.put(tmSub.getSubscriptionId(), subscriberId);
            }
            String[] mergedSubscriberId = ArrayUtils.defeatNullable(tmSub.getMergedImsisFromGroup());
            mergedSubscriberIdsList.add(mergedSubscriberId);
        }
        synchronized (this.mNetworkPoliciesSecondLock) {
            this.mSubIdToSubscriberId.clear();
            for (int i = 0; i < subIdToSubscriberId.size(); i++) {
                this.mSubIdToSubscriberId.put(subIdToSubscriberId.keyAt(i), subIdToSubscriberId.valueAt(i));
            }
            this.mMergedSubscriberIds = mergedSubscriberIdsList;
        }
        Trace.traceEnd(2097152L);
    }

    void updateNetworkRulesNL() {
        long j;
        int subId;
        long j2;
        long quotaBytes;
        int i;
        NetworkPolicy policy;
        long quotaBytes2;
        if (LOGV) {
            Slog.v(TAG, "updateNetworkRulesNL()");
        }
        Trace.traceBegin(2097152L, "updateNetworkRulesNL");
        try {
            NetworkState[] states = defeatNullable(this.mConnManager.getAllNetworkState());
            this.mNetIdToSubId.clear();
            ArrayMap<NetworkState, NetworkIdentity> identified = new ArrayMap<>();
            int length = states.length;
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                NetworkState state = states[i2];
                if (state.network != null) {
                    this.mNetIdToSubId.put(state.network.netId, parseSubId(state));
                }
                if (state.networkInfo != null && state.networkInfo.isConnected()) {
                    NetworkIdentity ident = NetworkIdentity.buildNetworkIdentity(this.mContext, state, true, 0);
                    identified.put(state, ident);
                }
                i2++;
            }
            ArraySet<String> newMeteredIfaces = new ArraySet<>();
            ArraySet<String> matchingIfaces = new ArraySet<>();
            long lowestRule = Long.MAX_VALUE;
            int i3 = this.mNetworkPolicy.size() - 1;
            while (i3 >= 0) {
                NetworkPolicy policy2 = this.mNetworkPolicy.valueAt(i3);
                matchingIfaces.clear();
                for (int j3 = identified.size() - 1; j3 >= 0; j3--) {
                    if (policy2.template.matches(identified.valueAt(j3))) {
                        collectIfaces(matchingIfaces, identified.keyAt(j3));
                    }
                }
                if (LOGD) {
                    Slog.d(TAG, "Applying " + policy2 + " to ifaces " + matchingIfaces);
                }
                boolean hasWarning = policy2.warningBytes != -1 ? true : z;
                boolean hasLimit = policy2.limitBytes != -1 ? true : z;
                if (hasLimit || policy2.metered) {
                    if (!hasLimit || !policy2.hasCycle()) {
                        i = i3;
                        policy = policy2;
                        quotaBytes2 = JobStatus.NO_LATEST_RUNTIME;
                    } else {
                        Pair<ZonedDateTime, ZonedDateTime> cycle = (Pair) NetworkPolicyManager.cycleIterator(policy2).next();
                        long start = ((ZonedDateTime) cycle.first).toInstant().toEpochMilli();
                        long end = ((ZonedDateTime) cycle.second).toInstant().toEpochMilli();
                        i = i3;
                        policy = policy2;
                        long totalBytes = getTotalBytes(policy2.template, start, end);
                        if (policy.lastLimitSnooze >= start) {
                            quotaBytes2 = JobStatus.NO_LATEST_RUNTIME;
                        } else {
                            long quotaBytes3 = policy.limitBytes;
                            quotaBytes2 = Math.max(1L, quotaBytes3 - totalBytes);
                        }
                    }
                    if (matchingIfaces.size() > 1) {
                        Slog.w(TAG, "shared quota unsupported; generating rule for each iface");
                    }
                    for (int j4 = matchingIfaces.size() - 1; j4 >= 0; j4--) {
                        String iface = matchingIfaces.valueAt(j4);
                        setInterfaceQuotaAsync(iface, quotaBytes2);
                        newMeteredIfaces.add(iface);
                    }
                } else {
                    i = i3;
                    policy = policy2;
                }
                if (hasWarning && policy.warningBytes < lowestRule) {
                    lowestRule = policy.warningBytes;
                }
                if (hasLimit && policy.limitBytes < lowestRule) {
                    lowestRule = policy.limitBytes;
                }
                i3 = i - 1;
                z = false;
            }
            int length2 = states.length;
            int i4 = 0;
            while (true) {
                j = JobStatus.NO_LATEST_RUNTIME;
                if (i4 >= length2) {
                    break;
                }
                NetworkState state2 = states[i4];
                if (state2.networkInfo != null && state2.networkInfo.isConnected() && !state2.networkCapabilities.hasCapability(11)) {
                    matchingIfaces.clear();
                    collectIfaces(matchingIfaces, state2);
                    for (int j5 = matchingIfaces.size() - 1; j5 >= 0; j5--) {
                        String iface2 = matchingIfaces.valueAt(j5);
                        if (!newMeteredIfaces.contains(iface2)) {
                            setInterfaceQuotaAsync(iface2, JobStatus.NO_LATEST_RUNTIME);
                            newMeteredIfaces.add(iface2);
                        }
                    }
                }
                i4++;
            }
            for (int i5 = this.mMeteredIfaces.size() - 1; i5 >= 0; i5--) {
                String iface3 = this.mMeteredIfaces.valueAt(i5);
                if (!newMeteredIfaces.contains(iface3)) {
                    removeInterfaceQuotaAsync(iface3);
                }
            }
            this.mMeteredIfaces = newMeteredIfaces;
            ContentResolver cr = this.mContext.getContentResolver();
            boolean quotaEnabled = android.provider.Settings.Global.getInt(cr, "netpolicy_quota_enabled", 1) != 0;
            long quotaUnlimited = android.provider.Settings.Global.getLong(cr, "netpolicy_quota_unlimited", QUOTA_UNLIMITED_DEFAULT);
            float quotaLimited = android.provider.Settings.Global.getFloat(cr, "netpolicy_quota_limited", QUOTA_LIMITED_DEFAULT);
            this.mSubscriptionOpportunisticQuota.clear();
            int length3 = states.length;
            int i6 = 0;
            while (i6 < length3) {
                NetworkState state3 = states[i6];
                if (!quotaEnabled) {
                    states = states;
                    length3 = length3;
                    i6 = i6;
                    j2 = j;
                    cr = cr;
                } else if (state3.network == null) {
                    states = states;
                    length3 = length3;
                    i6 = i6;
                    j2 = j;
                    cr = cr;
                } else {
                    int subId2 = getSubIdLocked(state3.network);
                    SubscriptionPlan plan = getPrimarySubscriptionPlanLocked(subId2);
                    if (plan == null) {
                        states = states;
                        length3 = length3;
                        i6 = i6;
                        j2 = j;
                        cr = cr;
                    } else {
                        long limitBytes = plan.getDataLimitBytes();
                        if (!state3.networkCapabilities.hasCapability(18)) {
                            quotaBytes = 0;
                            subId = subId2;
                            j2 = j;
                        } else if (limitBytes == -1) {
                            quotaBytes = -1;
                            subId = subId2;
                            j2 = j;
                        } else if (limitBytes == j) {
                            quotaBytes = quotaUnlimited;
                            subId = subId2;
                            j2 = j;
                        } else {
                            Range<ZonedDateTime> cycle2 = plan.cycleIterator().next();
                            long start2 = ((ZonedDateTime) cycle2.getLower()).toInstant().toEpochMilli();
                            long end2 = ((ZonedDateTime) cycle2.getUpper()).toInstant().toEpochMilli();
                            Instant now = this.mClock.instant();
                            long startOfDay = ZonedDateTime.ofInstant(now, ((ZonedDateTime) cycle2.getLower()).getZone()).truncatedTo(ChronoUnit.DAYS).toInstant().toEpochMilli();
                            NetworkTemplate networkTemplateBuildTemplateMobileAll = NetworkTemplate.buildTemplateMobileAll(state3.subscriberId);
                            subId = subId2;
                            j2 = JobStatus.NO_LATEST_RUNTIME;
                            long totalBytes2 = getTotalBytes(networkTemplateBuildTemplateMobileAll, start2, startOfDay);
                            long remainingBytes = limitBytes - totalBytes2;
                            long remainingDays = (((end2 - now.toEpochMilli()) - 1) / TimeUnit.DAYS.toMillis(1L)) + 1;
                            quotaBytes = Math.max(0L, (long) ((remainingBytes / remainingDays) * quotaLimited));
                        }
                        this.mSubscriptionOpportunisticQuota.put(subId, quotaBytes);
                    }
                }
                i6++;
                cr = cr;
                j = j2;
                length3 = length3;
                states = states;
            }
            ArraySet<String> arraySet = this.mMeteredIfaces;
            String[] meteredIfaces = (String[]) arraySet.toArray(new String[arraySet.size()]);
            this.mHandler.obtainMessage(2, meteredIfaces).sendToTarget();
            this.mHandler.obtainMessage(7, Long.valueOf(lowestRule)).sendToTarget();
            Trace.traceEnd(2097152L);
        } catch (RemoteException e) {
        }
    }

    private void ensureActiveMobilePolicyAL() throws Throwable {
        if (LOGV) {
            Slog.v(TAG, "ensureActiveMobilePolicyAL()");
        }
        if (this.mSuppressDefaultPolicy) {
            return;
        }
        for (int i = 0; i < this.mSubIdToSubscriberId.size(); i++) {
            int subId = this.mSubIdToSubscriberId.keyAt(i);
            String subscriberId = this.mSubIdToSubscriberId.valueAt(i);
            ensureActiveMobilePolicyAL(subId, subscriberId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ensureActiveMobilePolicyAL(int subId, String subscriberId) throws Throwable {
        NetworkIdentity probeIdent = new NetworkIdentity(0, 0, subscriberId, (String) null, false, true, true);
        for (int i = this.mNetworkPolicy.size() - 1; i >= 0; i--) {
            NetworkTemplate template = this.mNetworkPolicy.keyAt(i);
            if (template.matches(probeIdent)) {
                if (LOGD) {
                    Slog.d(TAG, "Found template " + template + " which matches subscriber " + NetworkIdentity.scrubSubscriberId(subscriberId));
                    return false;
                }
                return false;
            }
        }
        Slog.i(TAG, "No policy for subscriber " + NetworkIdentity.scrubSubscriberId(subscriberId) + "; generating default policy");
        NetworkPolicy policy = buildDefaultMobilePolicy(subId, subscriberId);
        addNetworkPolicyAL(policy);
        return true;
    }

    private long getPlatformDefaultWarningBytes() {
        int dataWarningConfig = this.mContext.getResources().getInteger(R.integer.config_dreamsBatteryLevelDrainCutoff);
        if (dataWarningConfig == -1) {
            return -1L;
        }
        return ((long) dataWarningConfig) * 1048576;
    }

    private long getPlatformDefaultLimitBytes() {
        return -1L;
    }

    NetworkPolicy buildDefaultMobilePolicy(int subId, String subscriberId) throws Throwable {
        NetworkTemplate template = NetworkTemplate.buildTemplateMobileAll(subscriberId);
        RecurrenceRule cycleRule = NetworkPolicy.buildRule(ZonedDateTime.now().getDayOfMonth(), ZoneId.systemDefault());
        NetworkPolicy policy = new NetworkPolicy(template, cycleRule, getPlatformDefaultWarningBytes(), getPlatformDefaultLimitBytes(), -1L, -1L, true, true);
        synchronized (this.mUidRulesFirstLock) {
            try {
                try {
                    synchronized (this.mNetworkPoliciesSecondLock) {
                        updateDefaultMobilePolicyAL(subId, policy);
                    }
                    return policy;
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

    private boolean updateDefaultMobilePolicyAL(int subId, NetworkPolicy policy) {
        int currentCycleDay;
        if (!policy.inferred) {
            if (LOGD) {
                Slog.d(TAG, "Ignoring user-defined policy " + policy);
            }
            return false;
        }
        NetworkPolicy original = new NetworkPolicy(policy.template, policy.cycleRule, policy.warningBytes, policy.limitBytes, policy.lastWarningSnooze, policy.lastLimitSnooze, policy.metered, policy.inferred);
        SubscriptionPlan[] plans = this.mSubscriptionPlans.get(subId);
        if (!ArrayUtils.isEmpty(plans)) {
            SubscriptionPlan plan = plans[0];
            policy.cycleRule = plan.getCycleRule();
            long planLimitBytes = plan.getDataLimitBytes();
            if (planLimitBytes == -1) {
                policy.warningBytes = getPlatformDefaultWarningBytes();
                policy.limitBytes = getPlatformDefaultLimitBytes();
            } else if (planLimitBytes == JobStatus.NO_LATEST_RUNTIME) {
                policy.warningBytes = -1L;
                policy.limitBytes = -1L;
            } else {
                policy.warningBytes = (9 * planLimitBytes) / 10;
                int dataLimitBehavior = plan.getDataLimitBehavior();
                if (dataLimitBehavior == 0 || dataLimitBehavior == 1) {
                    policy.limitBytes = planLimitBytes;
                } else {
                    policy.limitBytes = -1L;
                }
            }
        } else {
            PersistableBundle config = this.mCarrierConfigManager.getConfigForSubId(subId);
            if (policy.cycleRule.isMonthly()) {
                currentCycleDay = policy.cycleRule.start.getDayOfMonth();
            } else {
                currentCycleDay = -1;
            }
            int cycleDay = getCycleDayFromCarrierConfig(config, currentCycleDay);
            policy.cycleRule = NetworkPolicy.buildRule(cycleDay, ZoneId.systemDefault());
            policy.warningBytes = getWarningBytesFromCarrierConfig(config, policy.warningBytes);
            policy.limitBytes = getLimitBytesFromCarrierConfig(config, policy.limitBytes);
        }
        if (policy.equals(original)) {
            return false;
        }
        Slog.d(TAG, "Updated " + original + " to " + policy);
        return true;
    }

    private void readPolicyAL() throws Throwable {
        Throwable th;
        String str;
        Exception e;
        FileInputStream fis;
        Exception e2;
        String str2;
        SparseBooleanArray whitelistedRestrictBackground;
        RecurrenceRule cycleRule;
        String str3;
        long usageTime;
        String str4 = TAG_XML_UTILS_INT_ARRAY;
        boolean z = LOGV;
        String str5 = TAG;
        if (z) {
            Slog.v(TAG, "readPolicyAL()");
        }
        this.mNetworkPolicy.clear();
        this.mSubscriptionPlans.clear();
        this.mSubscriptionPlansOwner.clear();
        this.mUidPolicy.clear();
        FileInputStream fis2 = null;
        try {
            try {
                try {
                    fis2 = this.mPolicyFile.openRead();
                    try {
                        XmlPullParser in = Xml.newPullParser();
                        in.setInput(fis2, StandardCharsets.UTF_8.name());
                        SparseBooleanArray whitelistedRestrictBackground2 = new SparseBooleanArray();
                        int version = 1;
                        boolean insideWhitelist = false;
                        while (true) {
                            int type = in.next();
                            boolean z2 = true;
                            if (type == 1) {
                                break;
                            }
                            String tag = in.getName();
                            if (type != 2) {
                                str2 = str4;
                                fis = fis2;
                                whitelistedRestrictBackground = whitelistedRestrictBackground2;
                                insideWhitelist = insideWhitelist;
                                str = str5;
                                insideWhitelist = (type == 3 && TAG_WHITELIST.equals(tag)) ? false : insideWhitelist;
                            } else if (TAG_POLICY_LIST.equals(tag)) {
                                try {
                                    boolean z3 = this.mRestrictBackground;
                                    version = XmlUtils.readIntAttribute(in, ATTR_VERSION);
                                    if (version < 3 || !XmlUtils.readBooleanAttribute(in, ATTR_RESTRICT_BACKGROUND)) {
                                        z2 = false;
                                    }
                                    this.mLoadedRestrictBackground = z2;
                                    str2 = str4;
                                    fis = fis2;
                                    whitelistedRestrictBackground = whitelistedRestrictBackground2;
                                    str = str5;
                                } catch (Exception e3) {
                                    e = e3;
                                    str = str5;
                                    Log.wtf(str, "problem reading network policy", e);
                                    IoUtils.closeQuietly(fis2);
                                    return;
                                }
                            } else {
                                fis = fis2;
                                if (TAG_NETWORK_POLICY.equals(tag)) {
                                    try {
                                        try {
                                            int networkTemplate = XmlUtils.readIntAttribute(in, ATTR_NETWORK_TEMPLATE);
                                            String subscriberId = in.getAttributeValue(null, ATTR_SUBSCRIBER_ID);
                                            String networkId = version >= 9 ? in.getAttributeValue(null, ATTR_NETWORK_ID) : null;
                                            if (version >= 11) {
                                                String start = XmlUtils.readStringAttribute(in, ATTR_CYCLE_START);
                                                String end = XmlUtils.readStringAttribute(in, ATTR_CYCLE_END);
                                                String period = XmlUtils.readStringAttribute(in, ATTR_CYCLE_PERIOD);
                                                cycleRule = new RecurrenceRule(RecurrenceRule.convertZonedDateTime(start), RecurrenceRule.convertZonedDateTime(end), RecurrenceRule.convertPeriod(period));
                                            } else {
                                                int cycleDay = XmlUtils.readIntAttribute(in, ATTR_CYCLE_DAY);
                                                String cycleTimezone = version >= 6 ? in.getAttributeValue(null, ATTR_CYCLE_TIMEZONE) : "UTC";
                                                cycleRule = NetworkPolicy.buildRule(cycleDay, ZoneId.of(cycleTimezone));
                                            }
                                            long warningBytes = XmlUtils.readLongAttribute(in, ATTR_WARNING_BYTES);
                                            long limitBytes = XmlUtils.readLongAttribute(in, ATTR_LIMIT_BYTES);
                                            long lastLimitSnooze = version >= 5 ? XmlUtils.readLongAttribute(in, ATTR_LAST_LIMIT_SNOOZE) : version >= 2 ? XmlUtils.readLongAttribute(in, ATTR_LAST_SNOOZE) : -1L;
                                            boolean metered = version >= 4 ? XmlUtils.readBooleanAttribute(in, ATTR_METERED) : networkTemplate == 1;
                                            long lastWarningSnooze = version >= 5 ? XmlUtils.readLongAttribute(in, ATTR_LAST_WARNING_SNOOZE) : -1L;
                                            boolean inferred = version >= 7 ? XmlUtils.readBooleanAttribute(in, ATTR_INFERRED) : false;
                                            NetworkTemplate template = new NetworkTemplate(networkTemplate, subscriberId, networkId);
                                            if (template.isPersistable()) {
                                                this.mNetworkPolicy.put(template, new NetworkPolicy(template, cycleRule, warningBytes, limitBytes, lastWarningSnooze, lastLimitSnooze, metered, inferred));
                                            }
                                            str2 = str4;
                                            str = str5;
                                            whitelistedRestrictBackground = whitelistedRestrictBackground2;
                                        } catch (Exception e4) {
                                            e = e4;
                                            str = str5;
                                            fis2 = fis;
                                            Log.wtf(str, "problem reading network policy", e);
                                            IoUtils.closeQuietly(fis2);
                                            return;
                                        }
                                    } catch (FileNotFoundException e5) {
                                        fis2 = fis;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        fis2 = fis;
                                        IoUtils.closeQuietly(fis2);
                                        throw th;
                                    }
                                } else {
                                    SparseBooleanArray whitelistedRestrictBackground3 = whitelistedRestrictBackground2;
                                    insideWhitelist = insideWhitelist;
                                    try {
                                        if (TAG_SUBSCRIPTION_PLAN.equals(tag)) {
                                            String start2 = XmlUtils.readStringAttribute(in, ATTR_CYCLE_START);
                                            String end2 = XmlUtils.readStringAttribute(in, ATTR_CYCLE_END);
                                            String period2 = XmlUtils.readStringAttribute(in, ATTR_CYCLE_PERIOD);
                                            SubscriptionPlan.Builder builder = new SubscriptionPlan.Builder(RecurrenceRule.convertZonedDateTime(start2), RecurrenceRule.convertZonedDateTime(end2), RecurrenceRule.convertPeriod(period2));
                                            builder.setTitle(XmlUtils.readStringAttribute(in, ATTR_TITLE));
                                            builder.setSummary(XmlUtils.readStringAttribute(in, ATTR_SUMMARY));
                                            long limitBytes2 = XmlUtils.readLongAttribute(in, ATTR_LIMIT_BYTES, -1L);
                                            int limitBehavior = XmlUtils.readIntAttribute(in, ATTR_LIMIT_BEHAVIOR, -1);
                                            if (limitBytes2 != -1 && limitBehavior != -1) {
                                                builder.setDataLimit(limitBytes2, limitBehavior);
                                            }
                                            long usageBytes = XmlUtils.readLongAttribute(in, ATTR_USAGE_BYTES, -1L);
                                            long usageTime2 = XmlUtils.readLongAttribute(in, ATTR_USAGE_TIME, -1L);
                                            if (usageBytes != -1) {
                                                str3 = str5;
                                                usageTime = usageTime2;
                                                if (usageTime != -1) {
                                                    try {
                                                        builder.setDataUsage(usageBytes, usageTime);
                                                    } catch (Exception e6) {
                                                        e = e6;
                                                        str = str3;
                                                        fis2 = fis;
                                                        Log.wtf(str, "problem reading network policy", e);
                                                        IoUtils.closeQuietly(fis2);
                                                        return;
                                                    }
                                                }
                                            } else {
                                                str3 = str5;
                                                usageTime = usageTime2;
                                            }
                                            int subId = XmlUtils.readIntAttribute(in, ATTR_SUB_ID);
                                            String ownerPackage = XmlUtils.readStringAttribute(in, ATTR_OWNER_PACKAGE);
                                            if (version >= 12) {
                                                int depth = in.getDepth();
                                                while (XmlUtils.nextElementWithin(in, depth)) {
                                                    if (str4.equals(in.getName())) {
                                                        int depth2 = depth;
                                                        if (ATTR_NETWORK_TYPES.equals(XmlUtils.readStringAttribute(in, "name"))) {
                                                            int[] networkTypes = XmlUtils.readThisIntArrayXml(in, str4, (String[]) null);
                                                            builder.setNetworkTypes(networkTypes);
                                                            depth = depth2;
                                                        } else {
                                                            depth = depth2;
                                                        }
                                                    } else {
                                                        depth = depth;
                                                    }
                                                }
                                            }
                                            SubscriptionPlan plan = builder.build();
                                            str2 = str4;
                                            this.mSubscriptionPlans.put(subId, (SubscriptionPlan[]) ArrayUtils.appendElement(SubscriptionPlan.class, this.mSubscriptionPlans.get(subId), plan));
                                            this.mSubscriptionPlansOwner.put(subId, ownerPackage);
                                            str = str3;
                                            whitelistedRestrictBackground = whitelistedRestrictBackground3;
                                        } else {
                                            str2 = str4;
                                            String str6 = str5;
                                            try {
                                                if (TAG_UID_POLICY.equals(tag)) {
                                                    int uid = XmlUtils.readIntAttribute(in, "uid");
                                                    int policy = XmlUtils.readIntAttribute(in, ATTR_POLICY);
                                                    if (UserHandle.isApp(uid)) {
                                                        setUidPolicyUncheckedUL(uid, policy, false);
                                                        str = str6;
                                                    } else {
                                                        str = str6;
                                                        try {
                                                            Slog.w(str, "unable to apply policy to UID " + uid + "; ignoring");
                                                        } catch (Exception e7) {
                                                            e2 = e7;
                                                            e = e2;
                                                            fis2 = fis;
                                                            Log.wtf(str, "problem reading network policy", e);
                                                            IoUtils.closeQuietly(fis2);
                                                            return;
                                                        }
                                                    }
                                                    whitelistedRestrictBackground = whitelistedRestrictBackground3;
                                                } else {
                                                    str = str6;
                                                    if (TAG_APP_POLICY.equals(tag)) {
                                                        int appId = XmlUtils.readIntAttribute(in, ATTR_APP_ID);
                                                        int policy2 = XmlUtils.readIntAttribute(in, ATTR_POLICY);
                                                        int uid2 = UserHandle.getUid(0, appId);
                                                        if (UserHandle.isApp(uid2)) {
                                                            setUidPolicyUncheckedUL(uid2, policy2, false);
                                                        } else {
                                                            Slog.w(str, "unable to apply policy to UID " + uid2 + "; ignoring");
                                                        }
                                                        whitelistedRestrictBackground = whitelistedRestrictBackground3;
                                                    } else if (TAG_WHITELIST.equals(tag)) {
                                                        insideWhitelist = true;
                                                        whitelistedRestrictBackground = whitelistedRestrictBackground3;
                                                    } else if (TAG_RESTRICT_BACKGROUND.equals(tag) && insideWhitelist) {
                                                        whitelistedRestrictBackground = whitelistedRestrictBackground3;
                                                        whitelistedRestrictBackground.append(XmlUtils.readIntAttribute(in, "uid"), true);
                                                    } else {
                                                        whitelistedRestrictBackground = whitelistedRestrictBackground3;
                                                        if (TAG_REVOKED_RESTRICT_BACKGROUND.equals(tag) && insideWhitelist) {
                                                            this.mRestrictBackgroundWhitelistRevokedUids.put(XmlUtils.readIntAttribute(in, "uid"), true);
                                                        }
                                                    }
                                                }
                                            } catch (Exception e8) {
                                                e2 = e8;
                                                str = str6;
                                                e = e2;
                                                fis2 = fis;
                                                Log.wtf(str, "problem reading network policy", e);
                                                IoUtils.closeQuietly(fis2);
                                                return;
                                            }
                                        }
                                    } catch (Exception e9) {
                                        e2 = e9;
                                        str = str5;
                                    }
                                }
                            }
                            whitelistedRestrictBackground2 = whitelistedRestrictBackground;
                            str5 = str;
                            fis2 = fis;
                            str4 = str2;
                            upgradeDefaultBackgroundDataUL();
                            IoUtils.closeQuietly(fis2);
                            return;
                        }
                        fis = fis2;
                        SparseBooleanArray whitelistedRestrictBackground4 = whitelistedRestrictBackground2;
                        str = str5;
                        int size = whitelistedRestrictBackground4.size();
                        for (int i = 0; i < size; i++) {
                            int uid3 = whitelistedRestrictBackground4.keyAt(i);
                            int policy3 = this.mUidPolicy.get(uid3, 0);
                            if ((policy3 & 1) != 0) {
                                Slog.w(str, "ignoring restrict-background-whitelist for " + uid3 + " because its policy is " + NetworkPolicyManager.uidPoliciesToString(policy3));
                            } else if (UserHandle.isApp(uid3)) {
                                int newPolicy = policy3 | 4;
                                if (LOGV) {
                                    Log.v(str, "new policy for " + uid3 + ": " + NetworkPolicyManager.uidPoliciesToString(newPolicy));
                                }
                                setUidPolicyUncheckedUL(uid3, newPolicy, false);
                            } else {
                                Slog.w(str, "unable to update policy on UID " + uid3);
                            }
                        }
                        IoUtils.closeQuietly(fis);
                    } catch (FileNotFoundException e10) {
                    } catch (Exception e11) {
                        str = str5;
                        e = e11;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (FileNotFoundException e12) {
                }
            } catch (Exception e13) {
                str = TAG;
                e = e13;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private void upgradeDefaultBackgroundDataUL() {
        this.mLoadedRestrictBackground = android.provider.Settings.Global.getInt(this.mContext.getContentResolver(), "default_restrict_background_data", 0) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void upgradeWifiMeteredOverrideAL() throws IOException {
        int i;
        boolean modified = false;
        WifiManager wm = (WifiManager) this.mContext.getSystemService(WifiManager.class);
        List<WifiConfiguration> configs = wm.getConfiguredNetworks();
        int i2 = 0;
        while (i2 < this.mNetworkPolicy.size()) {
            NetworkPolicy policy = this.mNetworkPolicy.valueAt(i2);
            if (policy.template.getMatchRule() == 4 && !policy.inferred) {
                this.mNetworkPolicy.removeAt(i2);
                modified = true;
                String networkId = NetworkPolicyManager.resolveNetworkId(policy.template.getNetworkId());
                for (WifiConfiguration config : configs) {
                    if (Objects.equals(NetworkPolicyManager.resolveNetworkId(config), networkId)) {
                        Slog.d(TAG, "Found network " + networkId + "; upgrading metered hint");
                        if (policy.metered) {
                            i = 1;
                        } else {
                            i = 2;
                        }
                        config.meteredOverride = i;
                        wm.updateNetwork(config);
                    }
                }
            } else {
                i2++;
            }
        }
        if (modified) {
            writePolicyAL();
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x025c  */
    void writePolicyAL() throws IOException {
        FileOutputStream fos;
        String str = TAG_REVOKED_RESTRICT_BACKGROUND;
        String str2 = TAG_WHITELIST;
        if (LOGV) {
            Slog.v(TAG, "writePolicyAL()");
        }
        FileOutputStream fos2 = null;
        try {
            fos2 = this.mPolicyFile.startWrite();
            try {
                FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
                fastXmlSerializer.setOutput(fos2, StandardCharsets.UTF_8.name());
                fastXmlSerializer.startDocument(null, true);
                fastXmlSerializer.startTag(null, TAG_POLICY_LIST);
                XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_VERSION, 12);
                XmlUtils.writeBooleanAttribute(fastXmlSerializer, ATTR_RESTRICT_BACKGROUND, this.mRestrictBackground);
                int i = 0;
                while (i < this.mNetworkPolicy.size()) {
                    try {
                        NetworkPolicy policy = this.mNetworkPolicy.valueAt(i);
                        NetworkTemplate template = policy.template;
                        if (template.isPersistable()) {
                            fos = fos2;
                            try {
                                fastXmlSerializer.startTag(null, TAG_NETWORK_POLICY);
                                XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_NETWORK_TEMPLATE, template.getMatchRule());
                                String subscriberId = template.getSubscriberId();
                                if (subscriberId != null) {
                                    fastXmlSerializer.attribute(null, ATTR_SUBSCRIBER_ID, subscriberId);
                                }
                                String networkId = template.getNetworkId();
                                if (networkId != null) {
                                    fastXmlSerializer.attribute(null, ATTR_NETWORK_ID, networkId);
                                }
                                XmlUtils.writeStringAttribute(fastXmlSerializer, ATTR_CYCLE_START, RecurrenceRule.convertZonedDateTime(policy.cycleRule.start));
                                XmlUtils.writeStringAttribute(fastXmlSerializer, ATTR_CYCLE_END, RecurrenceRule.convertZonedDateTime(policy.cycleRule.end));
                                XmlUtils.writeStringAttribute(fastXmlSerializer, ATTR_CYCLE_PERIOD, RecurrenceRule.convertPeriod(policy.cycleRule.period));
                                XmlUtils.writeLongAttribute(fastXmlSerializer, ATTR_WARNING_BYTES, policy.warningBytes);
                                XmlUtils.writeLongAttribute(fastXmlSerializer, ATTR_LIMIT_BYTES, policy.limitBytes);
                                XmlUtils.writeLongAttribute(fastXmlSerializer, ATTR_LAST_WARNING_SNOOZE, policy.lastWarningSnooze);
                                XmlUtils.writeLongAttribute(fastXmlSerializer, ATTR_LAST_LIMIT_SNOOZE, policy.lastLimitSnooze);
                                XmlUtils.writeBooleanAttribute(fastXmlSerializer, ATTR_METERED, policy.metered);
                                XmlUtils.writeBooleanAttribute(fastXmlSerializer, ATTR_INFERRED, policy.inferred);
                                fastXmlSerializer.endTag(null, TAG_NETWORK_POLICY);
                            } catch (IOException e) {
                                fos2 = fos;
                                if (fos2 != null) {
                                    this.mPolicyFile.failWrite(fos2);
                                }
                            }
                        } else {
                            str2 = str2;
                            fos = fos2;
                        }
                        i++;
                        fos2 = fos;
                        str = str;
                        str2 = str2;
                    } catch (IOException e2) {
                        if (fos2 != null) {
                            this.mPolicyFile.failWrite(fos2);
                        }
                    }
                }
                String str3 = str;
                String str4 = str2;
                fos = fos2;
                for (int i2 = 0; i2 < this.mSubscriptionPlans.size(); i2++) {
                    try {
                        int subId = this.mSubscriptionPlans.keyAt(i2);
                        String ownerPackage = this.mSubscriptionPlansOwner.get(subId);
                        SubscriptionPlan[] plans = this.mSubscriptionPlans.valueAt(i2);
                        if (!ArrayUtils.isEmpty(plans)) {
                            int length = plans.length;
                            int i3 = 0;
                            while (i3 < length) {
                                SubscriptionPlan plan = plans[i3];
                                SubscriptionPlan[] plans2 = plans;
                                fastXmlSerializer.startTag(null, TAG_SUBSCRIPTION_PLAN);
                                XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_SUB_ID, subId);
                                XmlUtils.writeStringAttribute(fastXmlSerializer, ATTR_OWNER_PACKAGE, ownerPackage);
                                RecurrenceRule cycleRule = plan.getCycleRule();
                                XmlUtils.writeStringAttribute(fastXmlSerializer, ATTR_CYCLE_START, RecurrenceRule.convertZonedDateTime(cycleRule.start));
                                XmlUtils.writeStringAttribute(fastXmlSerializer, ATTR_CYCLE_END, RecurrenceRule.convertZonedDateTime(cycleRule.end));
                                XmlUtils.writeStringAttribute(fastXmlSerializer, ATTR_CYCLE_PERIOD, RecurrenceRule.convertPeriod(cycleRule.period));
                                int subId2 = subId;
                                XmlUtils.writeStringAttribute(fastXmlSerializer, ATTR_TITLE, plan.getTitle());
                                XmlUtils.writeStringAttribute(fastXmlSerializer, ATTR_SUMMARY, plan.getSummary());
                                int i4 = length;
                                XmlUtils.writeLongAttribute(fastXmlSerializer, ATTR_LIMIT_BYTES, plan.getDataLimitBytes());
                                XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_LIMIT_BEHAVIOR, plan.getDataLimitBehavior());
                                XmlUtils.writeLongAttribute(fastXmlSerializer, ATTR_USAGE_BYTES, plan.getDataUsageBytes());
                                XmlUtils.writeLongAttribute(fastXmlSerializer, ATTR_USAGE_TIME, plan.getDataUsageTime());
                                try {
                                    XmlUtils.writeIntArrayXml(plan.getNetworkTypes(), ATTR_NETWORK_TYPES, fastXmlSerializer);
                                } catch (XmlPullParserException e3) {
                                }
                                fastXmlSerializer.endTag(null, TAG_SUBSCRIPTION_PLAN);
                                i3++;
                                length = i4;
                                plans = plans2;
                                subId = subId2;
                            }
                        }
                    } catch (IOException e4) {
                        fos2 = fos;
                    }
                }
                for (int i5 = 0; i5 < this.mUidPolicy.size(); i5++) {
                    int uid = this.mUidPolicy.keyAt(i5);
                    int policy2 = this.mUidPolicy.valueAt(i5);
                    if (policy2 != 0) {
                        fastXmlSerializer.startTag(null, TAG_UID_POLICY);
                        XmlUtils.writeIntAttribute(fastXmlSerializer, "uid", uid);
                        XmlUtils.writeIntAttribute(fastXmlSerializer, ATTR_POLICY, policy2);
                        fastXmlSerializer.endTag(null, TAG_UID_POLICY);
                    }
                }
                fastXmlSerializer.endTag(null, TAG_POLICY_LIST);
                fastXmlSerializer.startTag(null, str4);
                int size = this.mRestrictBackgroundWhitelistRevokedUids.size();
                int i6 = 0;
                while (i6 < size) {
                    int uid2 = this.mRestrictBackgroundWhitelistRevokedUids.keyAt(i6);
                    String str5 = str3;
                    fastXmlSerializer.startTag(null, str5);
                    XmlUtils.writeIntAttribute(fastXmlSerializer, "uid", uid2);
                    fastXmlSerializer.endTag(null, str5);
                    i6++;
                    str3 = str5;
                }
                fastXmlSerializer.endTag(null, str4);
                fastXmlSerializer.endDocument();
                try {
                    this.mPolicyFile.finishWrite(fos);
                } catch (IOException e5) {
                    fos2 = fos;
                    if (fos2 != null) {
                        this.mPolicyFile.failWrite(fos2);
                    }
                }
            } catch (IOException e6) {
            }
        } catch (IOException e7) {
        }
    }

    public void setUidPolicy(int uid, int policy) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        if (!UserHandle.isApp(uid)) {
            throw new IllegalArgumentException("cannot apply policy to UID " + uid);
        }
        synchronized (this.mUidRulesFirstLock) {
            long token = Binder.clearCallingIdentity();
            try {
                int oldPolicy = this.mUidPolicy.get(uid, 0);
                if (oldPolicy != policy) {
                    setUidPolicyUncheckedUL(uid, oldPolicy, policy, true);
                    this.mLogger.uidPolicyChanged(uid, oldPolicy, policy);
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
    }

    public void addUidPolicy(int uid, int policy) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        if (!UserHandle.isApp(uid)) {
            throw new IllegalArgumentException("cannot apply policy to UID " + uid);
        }
        synchronized (this.mUidRulesFirstLock) {
            int oldPolicy = this.mUidPolicy.get(uid, 0);
            int policy2 = policy | oldPolicy;
            if (oldPolicy != policy2) {
                setUidPolicyUncheckedUL(uid, oldPolicy, policy2, true);
                this.mLogger.uidPolicyChanged(uid, oldPolicy, policy2);
            }
        }
    }

    public void removeUidPolicy(int uid, int policy) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        if (!UserHandle.isApp(uid)) {
            throw new IllegalArgumentException("cannot apply policy to UID " + uid);
        }
        synchronized (this.mUidRulesFirstLock) {
            int oldPolicy = this.mUidPolicy.get(uid, 0);
            int policy2 = oldPolicy & (~policy);
            if (oldPolicy != policy2) {
                setUidPolicyUncheckedUL(uid, oldPolicy, policy2, true);
                this.mLogger.uidPolicyChanged(uid, oldPolicy, policy2);
            }
        }
    }

    private void setUidPolicyUncheckedUL(int uid, int oldPolicy, int policy, boolean persist) {
        boolean wasBlacklisted;
        boolean isBlacklisted;
        boolean wasWhitelisted;
        boolean isWhitelisted;
        boolean wasBlocked;
        boolean isBlocked;
        boolean notifyApp = false;
        setUidPolicyUncheckedUL(uid, policy, false);
        if (!isUidValidForWhitelistRulesUL(uid)) {
            notifyApp = false;
        } else {
            if (oldPolicy != 1) {
                wasBlacklisted = false;
            } else {
                wasBlacklisted = true;
            }
            if (policy != 1) {
                isBlacklisted = false;
            } else {
                isBlacklisted = true;
            }
            if (oldPolicy != 4) {
                wasWhitelisted = false;
            } else {
                wasWhitelisted = true;
            }
            if (policy != 4) {
                isWhitelisted = false;
            } else {
                isWhitelisted = true;
            }
            if (!wasBlacklisted && (!this.mRestrictBackground || wasWhitelisted)) {
                wasBlocked = false;
            } else {
                wasBlocked = true;
            }
            if (!isBlacklisted && (!this.mRestrictBackground || isWhitelisted)) {
                isBlocked = false;
            } else {
                isBlocked = true;
            }
            if (wasWhitelisted && ((!isWhitelisted || isBlacklisted) && this.mDefaultRestrictBackgroundWhitelistUids.get(uid) && !this.mRestrictBackgroundWhitelistRevokedUids.get(uid))) {
                if (LOGD) {
                    Slog.d(TAG, "Adding uid " + uid + " to revoked restrict background whitelist");
                }
                this.mRestrictBackgroundWhitelistRevokedUids.append(uid, true);
            }
            if (wasBlocked != isBlocked) {
                notifyApp = true;
            }
        }
        this.mHandler.obtainMessage(13, uid, policy, Boolean.valueOf(notifyApp)).sendToTarget();
        if (persist) {
            synchronized (this.mNetworkPoliciesSecondLock) {
                writePolicyAL();
            }
        }
    }

    private void setUidPolicyUncheckedUL(int uid, int policy, boolean persist) {
        if (policy == 0) {
            this.mUidPolicy.delete(uid);
        } else {
            this.mUidPolicy.put(uid, policy);
        }
        updateRulesForDataUsageRestrictionsUL(uid);
        if (persist) {
            synchronized (this.mNetworkPoliciesSecondLock) {
                writePolicyAL();
            }
        }
    }

    public int getUidPolicy(int uid) {
        int i;
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        synchronized (this.mUidRulesFirstLock) {
            i = this.mUidPolicy.get(uid, 0);
        }
        return i;
    }

    public int[] getUidsWithPolicy(int policy) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        int[] uids = new int[0];
        synchronized (this.mUidRulesFirstLock) {
            for (int i = 0; i < this.mUidPolicy.size(); i++) {
                int uid = this.mUidPolicy.keyAt(i);
                int uidPolicy = this.mUidPolicy.valueAt(i);
                if ((policy == 0 && uidPolicy == 0) || (uidPolicy & policy) != 0) {
                    uids = ArrayUtils.appendInt(uids, uid);
                }
            }
        }
        return uids;
    }

    boolean removeUserStateUL(int userId, boolean writePolicy, boolean updateGlobalRules) {
        this.mLogger.removingUserState(userId);
        boolean changed = false;
        for (int i = this.mRestrictBackgroundWhitelistRevokedUids.size() - 1; i >= 0; i--) {
            if (UserHandle.getUserId(this.mRestrictBackgroundWhitelistRevokedUids.keyAt(i)) == userId) {
                this.mRestrictBackgroundWhitelistRevokedUids.removeAt(i);
                changed = true;
            }
        }
        int[] uids = new int[0];
        for (int i2 = 0; i2 < this.mUidPolicy.size(); i2++) {
            int uid = this.mUidPolicy.keyAt(i2);
            if (UserHandle.getUserId(uid) == userId) {
                uids = ArrayUtils.appendInt(uids, uid);
            }
        }
        int i3 = uids.length;
        if (i3 > 0) {
            for (int i4 : uids) {
                this.mUidPolicy.delete(i4);
            }
            changed = true;
        }
        synchronized (this.mNetworkPoliciesSecondLock) {
            if (updateGlobalRules) {
                try {
                    updateRulesForGlobalChangeAL(true);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (writePolicy && changed) {
                writePolicyAL();
            }
        }
        return changed;
    }

    private boolean checkAnyPermissionOf(String... permissions) {
        for (String permission : permissions) {
            if (this.mContext.checkCallingOrSelfPermission(permission) == 0) {
                return true;
            }
        }
        return false;
    }

    private void enforceAnyPermissionOf(String... permissions) {
        if (!checkAnyPermissionOf(permissions)) {
            throw new SecurityException("Requires one of the following permissions: " + String.join(", ", permissions) + ".");
        }
    }

    public void registerListener(INetworkPolicyListener listener) {
        enforceAnyPermissionOf("android.permission.CONNECTIVITY_INTERNAL", "android.permission.OBSERVE_NETWORK_POLICY");
        this.mListeners.register(listener);
    }

    public void unregisterListener(INetworkPolicyListener listener) {
        enforceAnyPermissionOf("android.permission.CONNECTIVITY_INTERNAL", "android.permission.OBSERVE_NETWORK_POLICY");
        this.mListeners.unregister(listener);
    }

    public void setNetworkPolicies(NetworkPolicy[] policies) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mUidRulesFirstLock) {
                synchronized (this.mNetworkPoliciesSecondLock) {
                    normalizePoliciesNL(policies);
                    handleNetworkPoliciesUpdateAL(false);
                }
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    void addNetworkPolicyAL(NetworkPolicy policy) {
        NetworkPolicy[] policies = getNetworkPolicies(this.mContext.getOpPackageName());
        setNetworkPolicies((NetworkPolicy[]) ArrayUtils.appendElement(NetworkPolicy.class, policies, policy));
    }

    public NetworkPolicy[] getNetworkPolicies(String callingPackage) {
        NetworkPolicy[] policies;
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        try {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", TAG);
        } catch (SecurityException e) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PHONE_STATE", TAG);
            if (this.mAppOps.noteOp(51, Binder.getCallingUid(), callingPackage) != 0) {
                return new NetworkPolicy[0];
            }
        }
        synchronized (this.mNetworkPoliciesSecondLock) {
            int size = this.mNetworkPolicy.size();
            policies = new NetworkPolicy[size];
            for (int i = 0; i < size; i++) {
                policies[i] = this.mNetworkPolicy.valueAt(i);
            }
        }
        return policies;
    }

    private void normalizePoliciesNL() {
        normalizePoliciesNL(getNetworkPolicies(this.mContext.getOpPackageName()));
    }

    private void normalizePoliciesNL(NetworkPolicy[] policies) {
        this.mNetworkPolicy.clear();
        for (NetworkPolicy policy : policies) {
            if (policy != null) {
                policy.template = NetworkTemplate.normalize(policy.template, this.mMergedSubscriberIds);
                NetworkPolicy existing = this.mNetworkPolicy.get(policy.template);
                if (existing == null || existing.compareTo(policy) > 0) {
                    if (existing != null) {
                        Slog.d(TAG, "Normalization replaced " + existing + " with " + policy);
                    }
                    this.mNetworkPolicy.put(policy.template, policy);
                }
            }
        }
    }

    public void snoozeLimit(NetworkTemplate template) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        long token = Binder.clearCallingIdentity();
        try {
            performSnooze(template, 35);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    void performSnooze(NetworkTemplate template, int type) {
        long currentTime = this.mClock.millis();
        synchronized (this.mUidRulesFirstLock) {
            synchronized (this.mNetworkPoliciesSecondLock) {
                NetworkPolicy policy = this.mNetworkPolicy.get(template);
                if (policy == null) {
                    throw new IllegalArgumentException("unable to find policy for " + template);
                }
                if (type == 34) {
                    policy.lastWarningSnooze = currentTime;
                } else if (type == 35) {
                    policy.lastLimitSnooze = currentTime;
                } else if (type == 45) {
                    policy.lastRapidSnooze = currentTime;
                } else {
                    throw new IllegalArgumentException("unexpected type");
                }
                handleNetworkPoliciesUpdateAL(true);
            }
        }
    }

    public void setRestrictBackground(boolean restrictBackground) {
        Trace.traceBegin(2097152L, "setRestrictBackground");
        try {
            this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
            int callingUid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (this.mUidRulesFirstLock) {
                    setRestrictBackgroundUL(restrictBackground, "uid:" + callingUid);
                }
                Binder.restoreCallingIdentity(token);
                Trace.traceEnd(2097152L);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        } catch (Throwable th2) {
            Trace.traceEnd(2097152L);
            throw th2;
        }
    }

    private void setRestrictBackgroundUL(boolean restrictBackground, String reason) {
        Trace.traceBegin(2097152L, "setRestrictBackgroundUL");
        try {
            if (restrictBackground == this.mRestrictBackground) {
                Slog.w(TAG, "setRestrictBackgroundUL: already " + restrictBackground);
                Trace.traceEnd(2097152L);
                return;
            }
            Slog.d(TAG, "setRestrictBackgroundUL(): " + restrictBackground + "; reason: " + reason);
            boolean oldRestrictBackground = this.mRestrictBackground;
            this.mRestrictBackground = restrictBackground;
            updateRulesForRestrictBackgroundUL();
            try {
                if (!this.mNetworkManager.setDataSaverModeEnabled(this.mRestrictBackground)) {
                    Slog.e(TAG, "Could not change Data Saver Mode on NMS to " + this.mRestrictBackground);
                    this.mRestrictBackground = oldRestrictBackground;
                    Trace.traceEnd(2097152L);
                    return;
                }
            } catch (RemoteException e) {
            }
            sendRestrictBackgroundChangedMsg();
            this.mLogger.restrictBackgroundChanged(oldRestrictBackground, this.mRestrictBackground);
            if (this.mRestrictBackgroundLowPowerMode) {
                this.mRestrictBackgroundChangedInBsm = true;
            }
            synchronized (this.mNetworkPoliciesSecondLock) {
                updateNotificationsNL();
                writePolicyAL();
            }
            Trace.traceEnd(2097152L);
        } catch (Throwable th) {
            Trace.traceEnd(2097152L);
            throw th;
        }
    }

    private void sendRestrictBackgroundChangedMsg() {
        this.mHandler.removeMessages(6);
        this.mHandler.obtainMessage(6, this.mRestrictBackground ? 1 : 0, 0).sendToTarget();
    }

    public int getRestrictBackgroundByCaller() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE", TAG);
        int uid = Binder.getCallingUid();
        synchronized (this.mUidRulesFirstLock) {
            long token = Binder.clearCallingIdentity();
            try {
                int policy = getUidPolicy(uid);
                Binder.restoreCallingIdentity(token);
                int i = 3;
                if (policy == 1) {
                    return 3;
                }
                if (!this.mRestrictBackground) {
                    return 1;
                }
                if ((this.mUidPolicy.get(uid) & 4) != 0) {
                    i = 2;
                }
                return i;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
    }

    public boolean getRestrictBackground() {
        boolean z;
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        synchronized (this.mUidRulesFirstLock) {
            z = this.mRestrictBackground;
        }
        return z;
    }

    public void setDeviceIdleMode(boolean enabled) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        Trace.traceBegin(2097152L, "setDeviceIdleMode");
        try {
            synchronized (this.mUidRulesFirstLock) {
                if (this.mDeviceIdleMode != enabled) {
                    this.mDeviceIdleMode = enabled;
                    this.mLogger.deviceIdleModeEnabled(enabled);
                    if (this.mSystemReady) {
                        updateRulesForRestrictPowerUL();
                    }
                    if (enabled) {
                        EventLogTags.writeDeviceIdleOnPhase("net");
                    } else {
                        EventLogTags.writeDeviceIdleOffPhase("net");
                    }
                    Trace.traceEnd(2097152L);
                    return;
                }
                Trace.traceEnd(2097152L);
            }
        } catch (Throwable th) {
            Trace.traceEnd(2097152L);
            throw th;
        }
    }

    public void setWifiMeteredOverride(String networkId, int meteredOverride) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        long token = Binder.clearCallingIdentity();
        try {
            WifiManager wm = (WifiManager) this.mContext.getSystemService(WifiManager.class);
            List<WifiConfiguration> configs = wm.getConfiguredNetworks();
            for (WifiConfiguration config : configs) {
                if (Objects.equals(NetworkPolicyManager.resolveNetworkId(config), networkId)) {
                    config.meteredOverride = meteredOverride;
                    wm.updateNetwork(config);
                }
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    @Deprecated
    public NetworkQuotaInfo getNetworkQuotaInfo(NetworkState state) {
        Log.w(TAG, "Shame on UID " + Binder.getCallingUid() + " for calling the hidden API getNetworkQuotaInfo(). Shame!");
        return new NetworkQuotaInfo();
    }

    private void enforceSubscriptionPlanAccess(int subId, int callingUid, String callingPackage) {
        this.mAppOps.checkPackage(callingUid, callingPackage);
        long token = Binder.clearCallingIdentity();
        try {
            PersistableBundle config = this.mCarrierConfigManager.getConfigForSubId(subId);
            TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService(TelephonyManager.class);
            Binder.restoreCallingIdentity(token);
            if (tm != null && tm.hasCarrierPrivileges(subId)) {
                return;
            }
            if (config != null) {
                String overridePackage = config.getString("config_plans_package_override_string", null);
                if (!TextUtils.isEmpty(overridePackage) && Objects.equals(overridePackage, callingPackage)) {
                    return;
                }
            }
            String defaultPackage = this.mCarrierConfigManager.getDefaultCarrierServicePackageName();
            if (!TextUtils.isEmpty(defaultPackage) && Objects.equals(defaultPackage, callingPackage)) {
                return;
            }
            String testPackage = SystemProperties.get("persist.sys.sub_plan_owner." + subId, (String) null);
            if (!TextUtils.isEmpty(testPackage) && Objects.equals(testPackage, callingPackage)) {
                return;
            }
            String legacyTestPackage = SystemProperties.get("fw.sub_plan_owner." + subId, (String) null);
            if (!TextUtils.isEmpty(legacyTestPackage) && Objects.equals(legacyTestPackage, callingPackage)) {
                return;
            }
            this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_SUBSCRIPTION_PLANS", TAG);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    private void enforceSubscriptionPlanValidity(SubscriptionPlan[] plans) {
        if (plans.length == 0) {
            Log.d(TAG, "Received empty plans list. Clearing existing SubscriptionPlans.");
            return;
        }
        int[] allNetworkTypes = TelephonyManager.getAllNetworkTypes();
        ArraySet<Integer> allNetworksSet = new ArraySet<>();
        addAll(allNetworksSet, allNetworkTypes);
        ArraySet<Integer> applicableNetworkTypes = new ArraySet<>();
        boolean hasGeneralPlan = false;
        for (SubscriptionPlan subscriptionPlan : plans) {
            int[] planNetworkTypes = subscriptionPlan.getNetworkTypes();
            ArraySet<Integer> planNetworksSet = new ArraySet<>();
            for (int j = 0; j < planNetworkTypes.length; j++) {
                if (allNetworksSet.contains(Integer.valueOf(planNetworkTypes[j]))) {
                    if (!planNetworksSet.add(Integer.valueOf(planNetworkTypes[j]))) {
                        throw new IllegalArgumentException("Subscription plan contains duplicate network types.");
                    }
                } else {
                    throw new IllegalArgumentException("Invalid network type: " + planNetworkTypes[j]);
                }
            }
            int j2 = planNetworkTypes.length;
            if (j2 == allNetworkTypes.length) {
                hasGeneralPlan = true;
            } else if (!addAll(applicableNetworkTypes, planNetworkTypes)) {
                throw new IllegalArgumentException("Multiple subscription plans defined for a single network type.");
            }
        }
        if (!hasGeneralPlan) {
            throw new IllegalArgumentException("No generic subscription plan that applies to all network types.");
        }
    }

    private static boolean addAll(ArraySet<Integer> set, int... elements) {
        boolean result = true;
        for (int i : elements) {
            result &= set.add(Integer.valueOf(i));
        }
        return result;
    }

    public SubscriptionPlan[] getSubscriptionPlans(int subId, String callingPackage) {
        enforceSubscriptionPlanAccess(subId, Binder.getCallingUid(), callingPackage);
        String fake = SystemProperties.get("fw.fake_plan");
        if (!TextUtils.isEmpty(fake)) {
            List<SubscriptionPlan> plans = new ArrayList<>();
            if ("month_hard".equals(fake)) {
                plans.add(SubscriptionPlan.Builder.createRecurringMonthly(ZonedDateTime.parse("2007-03-14T00:00:00.000Z")).setTitle("G-Mobile").setDataLimit(5368709120L, 1).setDataUsage(1073741824L, ZonedDateTime.now().minusHours(36L).toInstant().toEpochMilli()).build());
                plans.add(SubscriptionPlan.Builder.createRecurringMonthly(ZonedDateTime.parse("2017-03-14T00:00:00.000Z")).setTitle("G-Mobile Happy").setDataLimit(JobStatus.NO_LATEST_RUNTIME, 1).setDataUsage(5368709120L, ZonedDateTime.now().minusHours(36L).toInstant().toEpochMilli()).build());
                plans.add(SubscriptionPlan.Builder.createRecurringMonthly(ZonedDateTime.parse("2017-03-14T00:00:00.000Z")).setTitle("G-Mobile, Charged after limit").setDataLimit(5368709120L, 1).setDataUsage(5368709120L, ZonedDateTime.now().minusHours(36L).toInstant().toEpochMilli()).build());
            } else if ("month_soft".equals(fake)) {
                plans.add(SubscriptionPlan.Builder.createRecurringMonthly(ZonedDateTime.parse("2007-03-14T00:00:00.000Z")).setTitle("G-Mobile is the carriers name who this plan belongs to").setSummary("Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible").setDataLimit(5368709120L, 2).setDataUsage(1073741824L, ZonedDateTime.now().minusHours(1L).toInstant().toEpochMilli()).build());
                plans.add(SubscriptionPlan.Builder.createRecurringMonthly(ZonedDateTime.parse("2017-03-14T00:00:00.000Z")).setTitle("G-Mobile, Throttled after limit").setDataLimit(5368709120L, 2).setDataUsage(5368709120L, ZonedDateTime.now().minusHours(1L).toInstant().toEpochMilli()).build());
                plans.add(SubscriptionPlan.Builder.createRecurringMonthly(ZonedDateTime.parse("2017-03-14T00:00:00.000Z")).setTitle("G-Mobile, No data connection after limit").setDataLimit(5368709120L, 0).setDataUsage(5368709120L, ZonedDateTime.now().minusHours(1L).toInstant().toEpochMilli()).build());
            } else if ("month_over".equals(fake)) {
                plans.add(SubscriptionPlan.Builder.createRecurringMonthly(ZonedDateTime.parse("2007-03-14T00:00:00.000Z")).setTitle("G-Mobile is the carriers name who this plan belongs to").setDataLimit(5368709120L, 2).setDataUsage(6442450944L, ZonedDateTime.now().minusHours(1L).toInstant().toEpochMilli()).build());
                plans.add(SubscriptionPlan.Builder.createRecurringMonthly(ZonedDateTime.parse("2017-03-14T00:00:00.000Z")).setTitle("G-Mobile, Throttled after limit").setDataLimit(5368709120L, 2).setDataUsage(5368709120L, ZonedDateTime.now().minusHours(1L).toInstant().toEpochMilli()).build());
                plans.add(SubscriptionPlan.Builder.createRecurringMonthly(ZonedDateTime.parse("2017-03-14T00:00:00.000Z")).setTitle("G-Mobile, No data connection after limit").setDataLimit(5368709120L, 0).setDataUsage(5368709120L, ZonedDateTime.now().minusHours(1L).toInstant().toEpochMilli()).build());
            } else if ("month_none".equals(fake)) {
                plans.add(SubscriptionPlan.Builder.createRecurringMonthly(ZonedDateTime.parse("2007-03-14T00:00:00.000Z")).setTitle("G-Mobile").build());
            } else if ("prepaid".equals(fake)) {
                plans.add(SubscriptionPlan.Builder.createNonrecurring(ZonedDateTime.now().minusDays(20L), ZonedDateTime.now().plusDays(10L)).setTitle("G-Mobile").setDataLimit(536870912L, 0).setDataUsage(104857600L, ZonedDateTime.now().minusHours(3L).toInstant().toEpochMilli()).build());
            } else if ("prepaid_crazy".equals(fake)) {
                plans.add(SubscriptionPlan.Builder.createNonrecurring(ZonedDateTime.now().minusDays(20L), ZonedDateTime.now().plusDays(10L)).setTitle("G-Mobile Anytime").setDataLimit(536870912L, 0).setDataUsage(104857600L, ZonedDateTime.now().minusHours(3L).toInstant().toEpochMilli()).build());
                plans.add(SubscriptionPlan.Builder.createNonrecurring(ZonedDateTime.now().minusDays(10L), ZonedDateTime.now().plusDays(20L)).setTitle("G-Mobile Nickel Nights").setSummary("5¢/GB between 1-5AM").setDataLimit(5368709120L, 2).setDataUsage(15728640L, ZonedDateTime.now().minusHours(30L).toInstant().toEpochMilli()).build());
                plans.add(SubscriptionPlan.Builder.createNonrecurring(ZonedDateTime.now().minusDays(10L), ZonedDateTime.now().plusDays(20L)).setTitle("G-Mobile Bonus 3G").setSummary("Unlimited 3G data").setDataLimit(1073741824L, 2).setDataUsage(314572800L, ZonedDateTime.now().minusHours(1L).toInstant().toEpochMilli()).build());
            } else if ("unlimited".equals(fake)) {
                plans.add(SubscriptionPlan.Builder.createNonrecurring(ZonedDateTime.now().minusDays(20L), ZonedDateTime.now().plusDays(10L)).setTitle("G-Mobile Awesome").setDataLimit(JobStatus.NO_LATEST_RUNTIME, 2).setDataUsage(52428800L, ZonedDateTime.now().minusHours(3L).toInstant().toEpochMilli()).build());
            }
            return (SubscriptionPlan[]) plans.toArray(new SubscriptionPlan[plans.size()]);
        }
        synchronized (this.mNetworkPoliciesSecondLock) {
            String ownerPackage = this.mSubscriptionPlansOwner.get(subId);
            if (!Objects.equals(ownerPackage, callingPackage) && UserHandle.getCallingAppId() != 1000 && UserHandle.getCallingAppId() != 1001) {
                Log.w(TAG, "Not returning plans because caller " + callingPackage + " doesn't match owner " + ownerPackage);
                return null;
            }
            return this.mSubscriptionPlans.get(subId);
        }
    }

    public void setSubscriptionPlans(int subId, SubscriptionPlan[] plans, String callingPackage) {
        enforceSubscriptionPlanAccess(subId, Binder.getCallingUid(), callingPackage);
        enforceSubscriptionPlanValidity(plans);
        for (SubscriptionPlan plan : plans) {
            Objects.requireNonNull(plan);
        }
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mUidRulesFirstLock) {
                synchronized (this.mNetworkPoliciesSecondLock) {
                    this.mSubscriptionPlans.put(subId, plans);
                    this.mSubscriptionPlansOwner.put(subId, callingPackage);
                    String subscriberId = this.mSubIdToSubscriberId.get(subId, null);
                    if (subscriberId != null) {
                        ensureActiveMobilePolicyAL(subId, subscriberId);
                        maybeUpdateMobilePolicyCycleAL(subId, subscriberId);
                    } else {
                        Slog.wtf(TAG, "Missing subscriberId for subId " + subId);
                    }
                    handleNetworkPoliciesUpdateAL(true);
                }
            }
            Intent intent = new Intent("android.telephony.action.SUBSCRIPTION_PLANS_CHANGED");
            intent.addFlags(1073741824);
            intent.putExtra("android.telephony.extra.SUBSCRIPTION_INDEX", subId);
            this.mContext.sendBroadcast(intent, "android.permission.MANAGE_SUBSCRIPTION_PLANS");
            this.mHandler.sendMessage(this.mHandler.obtainMessage(19, subId, 0, plans));
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    void setSubscriptionPlansOwner(int subId, String packageName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.NETWORK_SETTINGS", TAG);
        SystemProperties.set("persist.sys.sub_plan_owner." + subId, packageName);
    }

    public String getSubscriptionPlansOwner(int subId) {
        String str;
        if (UserHandle.getCallingAppId() != 1000) {
            throw new SecurityException();
        }
        synchronized (this.mNetworkPoliciesSecondLock) {
            str = this.mSubscriptionPlansOwner.get(subId);
        }
        return str;
    }

    public void setSubscriptionOverride(int subId, int overrideMask, int overrideValue, long timeoutMillis, String callingPackage) {
        enforceSubscriptionPlanAccess(subId, Binder.getCallingUid(), callingPackage);
        synchronized (this.mNetworkPoliciesSecondLock) {
            SubscriptionPlan plan = getPrimarySubscriptionPlanLocked(subId);
            if (plan == null || plan.getDataLimitBehavior() == -1) {
                throw new IllegalStateException("Must provide valid SubscriptionPlan to enable overriding");
            }
        }
        boolean overrideEnabled = android.provider.Settings.Global.getInt(this.mContext.getContentResolver(), "netpolicy_override_enabled", 1) != 0;
        if (overrideEnabled || overrideValue == 0) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(16, overrideMask, overrideValue, Integer.valueOf(subId)));
            if (timeoutMillis > 0) {
                Handler handler2 = this.mHandler;
                handler2.sendMessageDelayed(handler2.obtainMessage(16, overrideMask, 0, Integer.valueOf(subId)), timeoutMillis);
            }
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, writer)) {
            IndentingPrintWriter fout = new IndentingPrintWriter(writer, "  ");
            ArraySet<String> argSet = new ArraySet<>(args.length);
            for (String arg : args) {
                argSet.add(arg);
            }
            synchronized (this.mUidRulesFirstLock) {
                synchronized (this.mNetworkPoliciesSecondLock) {
                    if (argSet.contains("--unsnooze")) {
                        for (int i = this.mNetworkPolicy.size() - 1; i >= 0; i--) {
                            this.mNetworkPolicy.valueAt(i).clearSnooze();
                        }
                        handleNetworkPoliciesUpdateAL(true);
                        fout.println("Cleared snooze timestamps");
                        return;
                    }
                    fout.print("System ready: ");
                    fout.println(this.mSystemReady);
                    fout.print("Restrict background: ");
                    fout.println(this.mRestrictBackground);
                    fout.print("Restrict power: ");
                    fout.println(this.mRestrictPower);
                    fout.print("Device idle: ");
                    fout.println(this.mDeviceIdleMode);
                    fout.print("Metered ifaces: ");
                    fout.println(this.mMeteredIfaces);
                    fout.println();
                    fout.print("mRestrictBackgroundLowPowerMode: " + this.mRestrictBackgroundLowPowerMode);
                    fout.print("mRestrictBackgroundBeforeBsm: " + this.mRestrictBackgroundBeforeBsm);
                    fout.print("mLoadedRestrictBackground: " + this.mLoadedRestrictBackground);
                    fout.print("mRestrictBackgroundChangedInBsm: " + this.mRestrictBackgroundChangedInBsm);
                    fout.println();
                    fout.println("Network policies:");
                    fout.increaseIndent();
                    for (int i2 = 0; i2 < this.mNetworkPolicy.size(); i2++) {
                        fout.println(this.mNetworkPolicy.valueAt(i2).toString());
                    }
                    fout.decreaseIndent();
                    fout.println();
                    fout.println("Subscription plans:");
                    fout.increaseIndent();
                    for (int i3 = 0; i3 < this.mSubscriptionPlans.size(); i3++) {
                        int subId = this.mSubscriptionPlans.keyAt(i3);
                        fout.println("Subscriber ID " + subId + ":");
                        fout.increaseIndent();
                        SubscriptionPlan[] plans = this.mSubscriptionPlans.valueAt(i3);
                        if (!ArrayUtils.isEmpty(plans)) {
                            for (SubscriptionPlan plan : plans) {
                                fout.println(plan);
                            }
                        }
                        fout.decreaseIndent();
                    }
                    fout.decreaseIndent();
                    fout.println();
                    fout.println("Active subscriptions:");
                    fout.increaseIndent();
                    for (int i4 = 0; i4 < this.mSubIdToSubscriberId.size(); i4++) {
                        int subId2 = this.mSubIdToSubscriberId.keyAt(i4);
                        String subscriberId = this.mSubIdToSubscriberId.valueAt(i4);
                        fout.println(subId2 + "=" + NetworkIdentity.scrubSubscriberId(subscriberId));
                    }
                    fout.decreaseIndent();
                    fout.println();
                    for (String[] mergedSubscribers : this.mMergedSubscriberIds) {
                        fout.println("Merged subscriptions: " + Arrays.toString(NetworkIdentity.scrubSubscriberId(mergedSubscribers)));
                    }
                    fout.println();
                    fout.println("Policy for UIDs:");
                    fout.increaseIndent();
                    int size = this.mUidPolicy.size();
                    for (int i5 = 0; i5 < size; i5++) {
                        int uid = this.mUidPolicy.keyAt(i5);
                        int policy = this.mUidPolicy.valueAt(i5);
                        fout.print("UID=");
                        fout.print(uid);
                        fout.print(" policy=");
                        fout.print(NetworkPolicyManager.uidPoliciesToString(policy));
                        fout.println();
                    }
                    fout.decreaseIndent();
                    int size2 = this.mPowerSaveWhitelistExceptIdleAppIds.size();
                    if (size2 > 0) {
                        fout.println("Power save whitelist (except idle) app ids:");
                        fout.increaseIndent();
                        for (int i6 = 0; i6 < size2; i6++) {
                            fout.print("UID=");
                            fout.print(this.mPowerSaveWhitelistExceptIdleAppIds.keyAt(i6));
                            fout.print(": ");
                            fout.print(this.mPowerSaveWhitelistExceptIdleAppIds.valueAt(i6));
                            fout.println();
                        }
                        fout.decreaseIndent();
                    }
                    int size3 = this.mPowerSaveWhitelistAppIds.size();
                    if (size3 > 0) {
                        fout.println("Power save whitelist app ids:");
                        fout.increaseIndent();
                        for (int i7 = 0; i7 < size3; i7++) {
                            fout.print("UID=");
                            fout.print(this.mPowerSaveWhitelistAppIds.keyAt(i7));
                            fout.print(": ");
                            fout.print(this.mPowerSaveWhitelistAppIds.valueAt(i7));
                            fout.println();
                        }
                        fout.decreaseIndent();
                    }
                    int size4 = this.mAppIdleTempWhitelistAppIds.size();
                    if (size4 > 0) {
                        fout.println("App idle whitelist app ids:");
                        fout.increaseIndent();
                        for (int i8 = 0; i8 < size4; i8++) {
                            fout.print("UID=");
                            fout.print(this.mAppIdleTempWhitelistAppIds.keyAt(i8));
                            fout.print(": ");
                            fout.print(this.mAppIdleTempWhitelistAppIds.valueAt(i8));
                            fout.println();
                        }
                        fout.decreaseIndent();
                    }
                    int size5 = this.mDefaultRestrictBackgroundWhitelistUids.size();
                    if (size5 > 0) {
                        fout.println("Default restrict background whitelist uids:");
                        fout.increaseIndent();
                        for (int i9 = 0; i9 < size5; i9++) {
                            fout.print("UID=");
                            fout.print(this.mDefaultRestrictBackgroundWhitelistUids.keyAt(i9));
                            fout.println();
                        }
                        fout.decreaseIndent();
                    }
                    int size6 = this.mRestrictBackgroundWhitelistRevokedUids.size();
                    if (size6 > 0) {
                        fout.println("Default restrict background whitelist uids revoked by users:");
                        fout.increaseIndent();
                        for (int i10 = 0; i10 < size6; i10++) {
                            fout.print("UID=");
                            fout.print(this.mRestrictBackgroundWhitelistRevokedUids.keyAt(i10));
                            fout.println();
                        }
                        fout.decreaseIndent();
                    }
                    SparseBooleanArray knownUids = new SparseBooleanArray();
                    collectKeys(this.mUidState, knownUids);
                    collectKeys(this.mUidRules, knownUids);
                    fout.println("Status for all known UIDs:");
                    fout.increaseIndent();
                    int size7 = knownUids.size();
                    for (int i11 = 0; i11 < size7; i11++) {
                        int uid2 = knownUids.keyAt(i11);
                        fout.print("UID=");
                        fout.print(uid2);
                        int state = this.mUidState.get(uid2, 19);
                        fout.print(" state=");
                        fout.print(state);
                        if (state <= 2) {
                            fout.print(" (fg)");
                        } else {
                            fout.print(state <= 5 ? " (fg svc)" : " (bg)");
                        }
                        int uidRules = this.mUidRules.get(uid2, 0);
                        fout.print(" rules=");
                        fout.print(NetworkPolicyManager.uidRulesToString(uidRules));
                        fout.println();
                    }
                    fout.decreaseIndent();
                    fout.println("Status for just UIDs with rules:");
                    fout.increaseIndent();
                    int size8 = this.mUidRules.size();
                    for (int i12 = 0; i12 < size8; i12++) {
                        int uid3 = this.mUidRules.keyAt(i12);
                        fout.print("UID=");
                        fout.print(uid3);
                        int uidRules2 = this.mUidRules.get(uid3, 0);
                        fout.print(" rules=");
                        fout.print(NetworkPolicyManager.uidRulesToString(uidRules2));
                        fout.println();
                    }
                    fout.decreaseIndent();
                    fout.println("Admin restricted uids for metered data:");
                    fout.increaseIndent();
                    int size9 = this.mMeteredRestrictedUids.size();
                    for (int i13 = 0; i13 < size9; i13++) {
                        fout.print("u" + this.mMeteredRestrictedUids.keyAt(i13) + ": ");
                        fout.println(this.mMeteredRestrictedUids.valueAt(i13));
                    }
                    fout.decreaseIndent();
                    fout.println();
                    this.mStatLogger.dump(fout);
                    this.mLogger.dumpLogs(fout);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new NetworkPolicyManagerShellCommand(this.mContext, this).exec(this, in, out, err, args, callback, resultReceiver);
    }

    void setDebugUid(int uid) {
        this.mLogger.setDebugUid(uid);
    }

    boolean isUidForeground(int uid) {
        boolean zIsUidStateForeground;
        synchronized (this.mUidRulesFirstLock) {
            zIsUidStateForeground = isUidStateForeground(this.mUidState.get(uid, 19));
        }
        return zIsUidStateForeground;
    }

    private boolean isUidForegroundOnRestrictBackgroundUL(int uid) {
        int procState = this.mUidState.get(uid, 19);
        return NetworkPolicyManager.isProcStateAllowedWhileOnRestrictBackground(procState);
    }

    private boolean isUidForegroundOnRestrictPowerUL(int uid) {
        int procState = this.mUidState.get(uid, 19);
        return NetworkPolicyManager.isProcStateAllowedWhileIdleOrPowerSaveMode(procState);
    }

    private boolean isUidStateForeground(int state) {
        return state <= 5;
    }

    private boolean updateUidStateUL(int uid, int uidState) {
        Trace.traceBegin(2097152L, "updateUidStateUL");
        try {
            int oldUidState = this.mUidState.get(uid, 19);
            if (oldUidState != uidState) {
                this.mUidState.put(uid, uidState);
                updateRestrictBackgroundRulesOnUidStatusChangedUL(uid, oldUidState, uidState);
                if (NetworkPolicyManager.isProcStateAllowedWhileIdleOrPowerSaveMode(oldUidState) != NetworkPolicyManager.isProcStateAllowedWhileIdleOrPowerSaveMode(uidState)) {
                    updateRuleForAppIdleUL(uid);
                    if (this.mDeviceIdleMode) {
                        updateRuleForDeviceIdleUL(uid);
                    }
                    if (this.mRestrictPower) {
                        updateRuleForRestrictPowerUL(uid);
                    }
                    updateRulesForPowerRestrictionsUL(uid);
                }
                return true;
            }
            return false;
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    private boolean removeUidStateUL(int uid) {
        int index = this.mUidState.indexOfKey(uid);
        if (index >= 0) {
            int oldUidState = this.mUidState.valueAt(index);
            this.mUidState.removeAt(index);
            if (oldUidState != 19) {
                updateRestrictBackgroundRulesOnUidStatusChangedUL(uid, oldUidState, 19);
                if (this.mDeviceIdleMode) {
                    updateRuleForDeviceIdleUL(uid);
                }
                if (this.mRestrictPower) {
                    updateRuleForRestrictPowerUL(uid);
                }
                updateRulesForPowerRestrictionsUL(uid);
                return true;
            }
            return false;
        }
        return false;
    }

    private void updateNetworkStats(int uid, boolean uidForeground) {
        if (Trace.isTagEnabled(2097152L)) {
            StringBuilder sb = new StringBuilder();
            sb.append("updateNetworkStats: ");
            sb.append(uid);
            sb.append(SliceClientPermissions.SliceAuthority.DELIMITER);
            sb.append(uidForeground ? "F" : "B");
            Trace.traceBegin(2097152L, sb.toString());
        }
        try {
            this.mNetworkStats.setUidForeground(uid, uidForeground);
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    private void updateRestrictBackgroundRulesOnUidStatusChangedUL(int uid, int oldUidState, int newUidState) {
        boolean oldForeground = NetworkPolicyManager.isProcStateAllowedWhileOnRestrictBackground(oldUidState);
        boolean newForeground = NetworkPolicyManager.isProcStateAllowedWhileOnRestrictBackground(newUidState);
        if (oldForeground != newForeground) {
            updateRulesForDataUsageRestrictionsUL(uid);
        }
    }

    void updateRulesForPowerSaveUL() {
        Trace.traceBegin(2097152L, "updateRulesForPowerSaveUL");
        try {
            updateRulesForWhitelistedPowerSaveUL(this.mRestrictPower, 3, this.mUidFirewallPowerSaveRules);
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    void updateRuleForRestrictPowerUL(int uid) {
        updateRulesForWhitelistedPowerSaveUL(uid, this.mRestrictPower, 3);
    }

    void updateRulesForDeviceIdleUL() {
        Trace.traceBegin(2097152L, "updateRulesForDeviceIdleUL");
        try {
            updateRulesForWhitelistedPowerSaveUL(this.mDeviceIdleMode, 1, this.mUidFirewallDozableRules);
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    void updateRuleForDeviceIdleUL(int uid) {
        updateRulesForWhitelistedPowerSaveUL(uid, this.mDeviceIdleMode, 1);
    }

    private void updateRulesForWhitelistedPowerSaveUL(boolean enabled, int chain, SparseIntArray rules) {
        if (enabled) {
            rules.clear();
            List<UserInfo> users = this.mUserManager.getUsers();
            for (int ui = users.size() - 1; ui >= 0; ui--) {
                UserInfo user = users.get(ui);
                updateRulesForWhitelistedAppIds(rules, this.mPowerSaveTempWhitelistAppIds, user.id);
                updateRulesForWhitelistedAppIds(rules, this.mPowerSaveWhitelistAppIds, user.id);
                if (chain == 3) {
                    updateRulesForWhitelistedAppIds(rules, this.mPowerSaveWhitelistExceptIdleAppIds, user.id);
                }
            }
            for (int i = this.mUidState.size() - 1; i >= 0; i--) {
                if (NetworkPolicyManager.isProcStateAllowedWhileIdleOrPowerSaveMode(this.mUidState.valueAt(i))) {
                    rules.put(this.mUidState.keyAt(i), 1);
                }
            }
            setUidFirewallRulesUL(chain, rules, 1);
            return;
        }
        setUidFirewallRulesUL(chain, null, 2);
    }

    private void updateRulesForWhitelistedAppIds(SparseIntArray uidRules, SparseBooleanArray whitelistedAppIds, int userId) {
        for (int i = whitelistedAppIds.size() - 1; i >= 0; i--) {
            if (whitelistedAppIds.valueAt(i)) {
                int appId = whitelistedAppIds.keyAt(i);
                int uid = UserHandle.getUid(userId, appId);
                uidRules.put(uid, 1);
            }
        }
    }

    private boolean isWhitelistedFromPowerSaveUL(int uid, boolean deviceIdleMode) {
        int appId = UserHandle.getAppId(uid);
        boolean isWhitelisted = this.mPowerSaveTempWhitelistAppIds.get(appId) || this.mPowerSaveWhitelistAppIds.get(appId);
        if (!deviceIdleMode) {
            return isWhitelisted || this.mPowerSaveWhitelistExceptIdleAppIds.get(appId);
        }
        return isWhitelisted;
    }

    private void updateRulesForWhitelistedPowerSaveUL(int uid, boolean enabled, int chain) {
        if (enabled) {
            boolean isWhitelisted = isWhitelistedFromPowerSaveUL(uid, chain == 1);
            if (isWhitelisted || isUidForegroundOnRestrictPowerUL(uid)) {
                setUidFirewallRule(chain, uid, 1);
            } else {
                setUidFirewallRule(chain, uid, 0);
            }
        }
    }

    void updateRulesForAppIdleUL() {
        Trace.traceBegin(2097152L, "updateRulesForAppIdleUL");
        try {
            SparseIntArray uidRules = this.mUidFirewallStandbyRules;
            uidRules.clear();
            List<UserInfo> users = this.mUserManager.getUsers();
            for (int ui = users.size() - 1; ui >= 0; ui--) {
                UserInfo user = users.get(ui);
                int[] idleUids = this.mUsageStats.getIdleUidsForUser(user.id);
                for (int uid : idleUids) {
                    if (!this.mPowerSaveTempWhitelistAppIds.get(UserHandle.getAppId(uid), false) && hasInternetPermissionUL(uid)) {
                        uidRules.put(uid, 2);
                    }
                }
            }
            setUidFirewallRulesUL(2, uidRules, 0);
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    void updateRuleForAppIdleUL(int uid) {
        if (isUidValidForBlacklistRulesUL(uid)) {
            if (Trace.isTagEnabled(2097152L)) {
                Trace.traceBegin(2097152L, "updateRuleForAppIdleUL: " + uid);
            }
            try {
                int appId = UserHandle.getAppId(uid);
                if (!this.mPowerSaveTempWhitelistAppIds.get(appId) && isUidIdle(uid) && !isUidForegroundOnRestrictPowerUL(uid)) {
                    setUidFirewallRule(2, uid, 2);
                    if (LOGD) {
                        Log.d(TAG, "updateRuleForAppIdleUL DENY " + uid);
                    }
                } else {
                    setUidFirewallRule(2, uid, 0);
                    if (LOGD) {
                        Log.d(TAG, "updateRuleForAppIdleUL " + uid + " to DEFAULT");
                    }
                }
            } finally {
                Trace.traceEnd(2097152L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRulesForAppIdleParoleUL() {
        boolean zIsInParole = this.mAppStandby.isInParole();
        boolean z = !zIsInParole;
        int size = this.mUidFirewallStandbyRules.size();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            int iKeyAt = this.mUidFirewallStandbyRules.keyAt(i);
            if (isUidValidForBlacklistRulesUL(iKeyAt)) {
                int i2 = this.mUidRules.get(iKeyAt);
                if (z) {
                    i2 &= 15;
                } else if ((i2 & 240) == 0) {
                }
                boolean z2 = !zIsInParole && isUidIdle(iKeyAt);
                if (!z2 || this.mPowerSaveTempWhitelistAppIds.get(UserHandle.getAppId(iKeyAt)) || isUidForegroundOnRestrictPowerUL(iKeyAt)) {
                    this.mUidFirewallStandbyRules.put(iKeyAt, 0);
                } else {
                    this.mUidFirewallStandbyRules.put(iKeyAt, 2);
                    sparseIntArray.put(iKeyAt, 2);
                }
                int iUpdateRulesForPowerRestrictionsUL = updateRulesForPowerRestrictionsUL(iKeyAt, i2, z2);
                if (iUpdateRulesForPowerRestrictionsUL == 0) {
                    this.mUidRules.delete(iKeyAt);
                } else {
                    this.mUidRules.put(iKeyAt, iUpdateRulesForPowerRestrictionsUL);
                }
            }
            i++;
        }
        setUidFirewallRulesUL(2, sparseIntArray, z ? 1 : 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRulesForGlobalChangeAL(boolean restrictedNetworksChanged) {
        if (Trace.isTagEnabled(2097152L)) {
            StringBuilder sb = new StringBuilder();
            sb.append("updateRulesForGlobalChangeAL: ");
            sb.append(restrictedNetworksChanged ? "R" : "-");
            Trace.traceBegin(2097152L, sb.toString());
        }
        try {
            updateRulesForAppIdleUL();
            updateRulesForRestrictPowerUL();
            updateRulesForRestrictBackgroundUL();
            if (restrictedNetworksChanged) {
                normalizePoliciesNL();
                updateNetworkRulesNL();
            }
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRulesForRestrictPowerUL() {
        Trace.traceBegin(2097152L, "updateRulesForRestrictPowerUL");
        try {
            updateRulesForDeviceIdleUL();
            updateRulesForPowerSaveUL();
            updateRulesForAllAppsUL(2);
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    private void updateRulesForRestrictBackgroundUL() {
        Trace.traceBegin(2097152L, "updateRulesForRestrictBackgroundUL");
        try {
            updateRulesForAllAppsUL(1);
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    private void updateRulesForAllAppsUL(int type) {
        if (Trace.isTagEnabled(2097152L)) {
            Trace.traceBegin(2097152L, "updateRulesForRestrictPowerUL-" + type);
        }
        try {
            PackageManager pm = this.mContext.getPackageManager();
            Trace.traceBegin(2097152L, "list-users");
            try {
                List<UserInfo> users = this.mUserManager.getUsers();
                Trace.traceEnd(2097152L);
                Trace.traceBegin(2097152L, "list-uids");
                try {
                    List<ApplicationInfo> apps = pm.getInstalledApplications(4981248);
                    Trace.traceEnd(2097152L);
                    int usersSize = users.size();
                    int appsSize = apps.size();
                    for (int i = 0; i < usersSize; i++) {
                        UserInfo user = users.get(i);
                        for (int j = 0; j < appsSize; j++) {
                            ApplicationInfo app = apps.get(j);
                            int uid = UserHandle.getUid(user.id, app.uid);
                            if (type == 1) {
                                updateRulesForDataUsageRestrictionsUL(uid);
                            } else if (type == 2) {
                                updateRulesForPowerRestrictionsUL(uid);
                            } else {
                                Slog.w(TAG, "Invalid type for updateRulesForAllApps: " + type);
                            }
                        }
                    }
                    long j2 = 2097152;
                } finally {
                    Trace.traceEnd(2097152L);
                }
            } catch (Throwable th) {
                Trace.traceEnd(2097152L);
                throw th;
            }
        } catch (Throwable th2) {
            Trace.traceEnd(2097152L);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRulesForTempWhitelistChangeUL(int appId) {
        List<UserInfo> users = this.mUserManager.getUsers();
        int numUsers = users.size();
        for (int i = 0; i < numUsers; i++) {
            UserInfo user = users.get(i);
            int uid = UserHandle.getUid(user.id, appId);
            updateRuleForAppIdleUL(uid);
            updateRuleForDeviceIdleUL(uid);
            updateRuleForRestrictPowerUL(uid);
            updateRulesForPowerRestrictionsUL(uid);
        }
    }

    private boolean isUidValidForBlacklistRulesUL(int uid) {
        if (uid == 1013 || uid == 1019 || isUidValidForWhitelistRulesUL(uid)) {
            return true;
        }
        return false;
    }

    private boolean isUidValidForWhitelistRulesUL(int uid) {
        return UserHandle.isApp(uid) && hasInternetPermissionUL(uid);
    }

    void setAppIdleWhitelist(int uid, boolean shouldWhitelist) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        synchronized (this.mUidRulesFirstLock) {
            if (this.mAppIdleTempWhitelistAppIds.get(uid) == shouldWhitelist) {
                return;
            }
            long token = Binder.clearCallingIdentity();
            try {
                this.mLogger.appIdleWlChanged(uid, shouldWhitelist);
                if (shouldWhitelist) {
                    this.mAppIdleTempWhitelistAppIds.put(uid, true);
                } else {
                    this.mAppIdleTempWhitelistAppIds.delete(uid);
                }
                updateRuleForAppIdleUL(uid);
                updateRulesForPowerRestrictionsUL(uid);
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
    }

    int[] getAppIdleWhitelist() {
        int[] uids;
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_NETWORK_POLICY", TAG);
        synchronized (this.mUidRulesFirstLock) {
            int len = this.mAppIdleTempWhitelistAppIds.size();
            uids = new int[len];
            for (int i = 0; i < len; i++) {
                uids[i] = this.mAppIdleTempWhitelistAppIds.keyAt(i);
            }
        }
        return uids;
    }

    boolean isUidIdle(int uid) {
        synchronized (this.mUidRulesFirstLock) {
            if (this.mAppIdleTempWhitelistAppIds.get(uid)) {
                return false;
            }
            String[] packages = this.mContext.getPackageManager().getPackagesForUid(uid);
            int userId = UserHandle.getUserId(uid);
            if (packages != null) {
                for (String packageName : packages) {
                    if (!this.mUsageStats.isAppIdle(packageName, uid, userId)) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        }
    }

    private boolean hasInternetPermissionUL(int uid) {
        try {
            if (this.mInternetPermissionMap.get(uid)) {
                return true;
            }
            boolean hasPermission = this.mIPm.checkUidPermission("android.permission.INTERNET", uid) == 0;
            this.mInternetPermissionMap.put(uid, hasPermission);
            return hasPermission;
        } catch (RemoteException e) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUidDeletedUL(int uid) {
        this.mUidRules.delete(uid);
        this.mUidPolicy.delete(uid);
        this.mUidFirewallStandbyRules.delete(uid);
        this.mUidFirewallDozableRules.delete(uid);
        this.mUidFirewallPowerSaveRules.delete(uid);
        this.mPowerSaveWhitelistExceptIdleAppIds.delete(uid);
        this.mPowerSaveWhitelistAppIds.delete(uid);
        this.mPowerSaveTempWhitelistAppIds.delete(uid);
        this.mAppIdleTempWhitelistAppIds.delete(uid);
        this.mHandler.obtainMessage(15, uid, 0).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRestrictionRulesForUidUL(int uid) {
        updateRuleForDeviceIdleUL(uid);
        updateRuleForAppIdleUL(uid);
        updateRuleForRestrictPowerUL(uid);
        updateRulesForPowerRestrictionsUL(uid);
        updateRulesForDataUsageRestrictionsUL(uid);
    }

    private void updateRulesForDataUsageRestrictionsUL(int uid) {
        if (Trace.isTagEnabled(2097152L)) {
            Trace.traceBegin(2097152L, "updateRulesForDataUsageRestrictionsUL: " + uid);
        }
        try {
            updateRulesForDataUsageRestrictionsULInner(uid);
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    private void updateRulesForDataUsageRestrictionsULInner(int uid) {
        if (!isUidValidForWhitelistRulesUL(uid)) {
            if (LOGD) {
                Slog.d(TAG, "no need to update restrict data rules for uid " + uid);
                return;
            }
            return;
        }
        int uidPolicy = this.mUidPolicy.get(uid, 0);
        int oldUidRules = this.mUidRules.get(uid, 0);
        boolean isForeground = isUidForegroundOnRestrictBackgroundUL(uid);
        boolean isRestrictedByAdmin = isRestrictedByAdminUL(uid);
        boolean isBlacklisted = (uidPolicy & 1) != 0;
        boolean isWhitelisted = (uidPolicy & 4) != 0;
        int oldRule = oldUidRules & 15;
        int newRule = 0;
        if (isRestrictedByAdmin) {
            newRule = 4;
        } else if (isForeground) {
            if (isBlacklisted || (this.mRestrictBackground && !isWhitelisted)) {
                newRule = 2;
            } else if (isWhitelisted) {
                newRule = 1;
            }
        } else if (isBlacklisted) {
            newRule = 4;
        } else if (this.mRestrictBackground && isWhitelisted) {
            newRule = 1;
        }
        int newUidRules = (oldUidRules & 240) | newRule;
        if (LOGV) {
            Log.v(TAG, "updateRuleForRestrictBackgroundUL(" + uid + "): isForeground=" + isForeground + ", isBlacklisted=" + isBlacklisted + ", isWhitelisted=" + isWhitelisted + ", isRestrictedByAdmin=" + isRestrictedByAdmin + ", oldRule=" + NetworkPolicyManager.uidRulesToString(oldRule) + ", newRule=" + NetworkPolicyManager.uidRulesToString(newRule) + ", newUidRules=" + NetworkPolicyManager.uidRulesToString(newUidRules) + ", oldUidRules=" + NetworkPolicyManager.uidRulesToString(oldUidRules));
        }
        if (newUidRules == 0) {
            this.mUidRules.delete(uid);
        } else {
            this.mUidRules.put(uid, newUidRules);
        }
        if (newRule != oldRule) {
            if (hasRule(newRule, 2)) {
                setMeteredNetworkWhitelist(uid, true);
                if (isBlacklisted) {
                    setMeteredNetworkBlacklist(uid, false);
                }
            } else if (hasRule(oldRule, 2)) {
                if (!isWhitelisted) {
                    setMeteredNetworkWhitelist(uid, false);
                }
                if (isBlacklisted || isRestrictedByAdmin) {
                    setMeteredNetworkBlacklist(uid, true);
                }
            } else if (hasRule(newRule, 4) || hasRule(oldRule, 4)) {
                setMeteredNetworkBlacklist(uid, isBlacklisted || isRestrictedByAdmin);
                if (hasRule(oldRule, 4) && isWhitelisted) {
                    setMeteredNetworkWhitelist(uid, isWhitelisted);
                }
            } else if (hasRule(newRule, 1) || hasRule(oldRule, 1)) {
                setMeteredNetworkWhitelist(uid, isWhitelisted);
            } else {
                Log.wtf(TAG, "Unexpected change of metered UID state for " + uid + ": foreground=" + isForeground + ", whitelisted=" + isWhitelisted + ", blacklisted=" + isBlacklisted + ", isRestrictedByAdmin=" + isRestrictedByAdmin + ", newRule=" + NetworkPolicyManager.uidRulesToString(newUidRules) + ", oldRule=" + NetworkPolicyManager.uidRulesToString(oldUidRules));
            }
            this.mHandler.obtainMessage(1, uid, newUidRules).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRulesForPowerRestrictionsUL(int uid) {
        int oldUidRules = this.mUidRules.get(uid, 0);
        int newUidRules = updateRulesForPowerRestrictionsUL(uid, oldUidRules, isUidIdle(uid));
        if (newUidRules == 0) {
            this.mUidRules.delete(uid);
        } else {
            this.mUidRules.put(uid, newUidRules);
        }
    }

    private int updateRulesForPowerRestrictionsUL(int uid, int oldUidRules, boolean isUidIdle) {
        if (Trace.isTagEnabled(2097152L)) {
            StringBuilder sb = new StringBuilder();
            sb.append("updateRulesForPowerRestrictionsUL: ");
            sb.append(uid);
            sb.append(SliceClientPermissions.SliceAuthority.DELIMITER);
            sb.append(oldUidRules);
            sb.append(SliceClientPermissions.SliceAuthority.DELIMITER);
            sb.append(isUidIdle ? "I" : "-");
            Trace.traceBegin(2097152L, sb.toString());
        }
        try {
            return updateRulesForPowerRestrictionsULInner(uid, oldUidRules, isUidIdle);
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    private int updateRulesForPowerRestrictionsULInner(int uid, int oldUidRules, boolean isUidIdle) {
        if (!isUidValidForBlacklistRulesUL(uid)) {
            if (LOGD) {
                Slog.d(TAG, "no need to update restrict power rules for uid " + uid);
            }
            return 0;
        }
        boolean restrictMode = isUidIdle || this.mRestrictPower || this.mDeviceIdleMode;
        boolean isForeground = isUidForegroundOnRestrictPowerUL(uid);
        boolean isWhitelisted = isWhitelistedFromPowerSaveUL(uid, this.mDeviceIdleMode);
        int oldRule = oldUidRules & 240;
        int newRule = 0;
        if (isForeground) {
            if (restrictMode) {
                newRule = 32;
            }
        } else if (restrictMode) {
            newRule = isWhitelisted ? 32 : 64;
        }
        int newUidRules = (oldUidRules & 15) | newRule;
        if (LOGV) {
            Log.v(TAG, "updateRulesForPowerRestrictionsUL(" + uid + "), isIdle: " + isUidIdle + ", mRestrictPower: " + this.mRestrictPower + ", mDeviceIdleMode: " + this.mDeviceIdleMode + ", isForeground=" + isForeground + ", isWhitelisted=" + isWhitelisted + ", oldRule=" + NetworkPolicyManager.uidRulesToString(oldRule) + ", newRule=" + NetworkPolicyManager.uidRulesToString(newRule) + ", newUidRules=" + NetworkPolicyManager.uidRulesToString(newUidRules) + ", oldUidRules=" + NetworkPolicyManager.uidRulesToString(oldUidRules));
        }
        if (newRule != oldRule) {
            if (newRule == 0 || hasRule(newRule, 32)) {
                if (LOGV) {
                    Log.v(TAG, "Allowing non-metered access for UID " + uid);
                }
            } else if (hasRule(newRule, 64)) {
                if (LOGV) {
                    Log.v(TAG, "Rejecting non-metered access for UID " + uid);
                }
            } else {
                Log.wtf(TAG, "Unexpected change of non-metered UID state for " + uid + ": foreground=" + isForeground + ", whitelisted=" + isWhitelisted + ", newRule=" + NetworkPolicyManager.uidRulesToString(newUidRules) + ", oldRule=" + NetworkPolicyManager.uidRulesToString(oldUidRules));
            }
            this.mHandler.obtainMessage(1, uid, newUidRules).sendToTarget();
        }
        return newUidRules;
    }

    private class NetPolicyAppIdleStateChangeListener extends AppStandbyInternal.AppIdleStateChangeListener {
        private NetPolicyAppIdleStateChangeListener() {
        }

        public void onAppIdleStateChanged(String packageName, int userId, boolean idle, int bucket, int reason) {
            try {
                int uid = NetworkPolicyManagerService.this.mContext.getPackageManager().getPackageUidAsUser(packageName, 8192, userId);
                synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                    try {
                        NetworkPolicyManagerService.this.mLogger.appIdleStateChanged(uid, idle);
                        NetworkPolicyManagerService.this.updateRuleForAppIdleUL(uid);
                        NetworkPolicyManagerService.this.updateRulesForPowerRestrictionsUL(uid);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }

        public void onParoleStateChanged(boolean isParoleOn) {
            synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                NetworkPolicyManagerService.this.mLogger.paroleStateChanged(isParoleOn);
                NetworkPolicyManagerService.this.updateRulesForAppIdleParoleUL();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchUidRulesChanged(INetworkPolicyListener listener, int uid, int uidRules) {
        if (listener != null) {
            try {
                listener.onUidRulesChanged(uid, uidRules);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchMeteredIfacesChanged(INetworkPolicyListener listener, String[] meteredIfaces) {
        if (listener != null) {
            try {
                listener.onMeteredIfacesChanged(meteredIfaces);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchRestrictBackgroundChanged(INetworkPolicyListener listener, boolean restrictBackground) {
        if (listener != null) {
            try {
                listener.onRestrictBackgroundChanged(restrictBackground);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchUidPoliciesChanged(INetworkPolicyListener listener, int uid, int uidPolicies) {
        if (listener != null) {
            try {
                listener.onUidPoliciesChanged(uid, uidPolicies);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchSubscriptionOverride(INetworkPolicyListener listener, int subId, int overrideMask, int overrideValue) {
        if (listener != null) {
            try {
                listener.onSubscriptionOverride(subId, overrideMask, overrideValue);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchSubscriptionPlansChanged(INetworkPolicyListener listener, int subId, SubscriptionPlan[] plans) {
        if (listener != null) {
            try {
                listener.onSubscriptionPlansChanged(subId, plans);
            } catch (RemoteException e) {
            }
        }
    }

    void handleUidChanged(int uid, int procState, long procStateSeq) {
        boolean updated;
        Trace.traceBegin(2097152L, "onUidStateChanged");
        try {
            synchronized (this.mUidRulesFirstLock) {
                this.mLogger.uidStateChanged(uid, procState, procStateSeq);
                updated = updateUidStateUL(uid, procState);
                this.mActivityManagerInternal.notifyNetworkPolicyRulesUpdated(uid, procStateSeq);
            }
            if (updated) {
                updateNetworkStats(uid, isUidStateForeground(procState));
            }
            Trace.traceEnd(2097152L);
        } catch (Throwable th) {
            Trace.traceEnd(2097152L);
            throw th;
        }
    }

    void handleUidGone(int uid) {
        boolean updated;
        Trace.traceBegin(2097152L, "onUidGone");
        try {
            synchronized (this.mUidRulesFirstLock) {
                updated = removeUidStateUL(uid);
            }
            if (updated) {
                updateNetworkStats(uid, false);
            }
            Trace.traceEnd(2097152L);
        } catch (Throwable th) {
            Trace.traceEnd(2097152L);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void broadcastRestrictBackgroundChanged(int uid, Boolean changed) {
        PackageManager pm = this.mContext.getPackageManager();
        String[] packages = pm.getPackagesForUid(uid);
        if (packages != null) {
            int userId = UserHandle.getUserId(uid);
            for (String packageName : packages) {
                Intent intent = new Intent("android.net.conn.RESTRICT_BACKGROUND_CHANGED");
                intent.setPackage(packageName);
                intent.setFlags(1073741824);
                this.mContext.sendBroadcastAsUser(intent, UserHandle.of(userId));
            }
        }
    }

    private void setInterfaceQuotaAsync(String iface, long quotaBytes) {
        this.mHandler.obtainMessage(10, (int) (quotaBytes >> 32), (int) ((-1) & quotaBytes), iface).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInterfaceQuota(String iface, long quotaBytes) {
        try {
            this.mNetworkManager.setInterfaceQuota(iface, quotaBytes);
        } catch (RemoteException e) {
        } catch (IllegalStateException e2) {
            Log.wtf(TAG, "problem setting interface quota", e2);
        }
    }

    private void removeInterfaceQuotaAsync(String iface) {
        this.mHandler.obtainMessage(11, iface).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeInterfaceQuota(String iface) {
        try {
            this.mNetworkManager.removeInterfaceQuota(iface);
        } catch (RemoteException e) {
        } catch (IllegalStateException e2) {
            Log.wtf(TAG, "problem removing interface quota", e2);
        }
    }

    private void setMeteredNetworkBlacklist(int uid, boolean enable) {
        if (LOGV) {
            Slog.v(TAG, "setMeteredNetworkBlacklist " + uid + ": " + enable);
        }
        try {
            this.mNetworkManager.setUidMeteredNetworkBlacklist(uid, enable);
        } catch (RemoteException e) {
        } catch (IllegalStateException e2) {
            Log.wtf(TAG, "problem setting blacklist (" + enable + ") rules for " + uid, e2);
        }
    }

    private void setMeteredNetworkWhitelist(int uid, boolean enable) {
        if (LOGV) {
            Slog.v(TAG, "setMeteredNetworkWhitelist " + uid + ": " + enable);
        }
        try {
            this.mNetworkManager.setUidMeteredNetworkWhitelist(uid, enable);
        } catch (RemoteException e) {
        } catch (IllegalStateException e2) {
            Log.wtf(TAG, "problem setting whitelist (" + enable + ") rules for " + uid, e2);
        }
    }

    private void setUidFirewallRulesUL(int chain, SparseIntArray uidRules, int toggle) {
        if (uidRules != null) {
            setUidFirewallRulesUL(chain, uidRules);
        }
        if (toggle != 0) {
            enableFirewallChainUL(chain, toggle == 1);
        }
    }

    private void setUidFirewallRulesUL(int chain, SparseIntArray uidRules) {
        try {
            int size = uidRules.size();
            int[] uids = new int[size];
            int[] rules = new int[size];
            for (int index = size - 1; index >= 0; index--) {
                uids[index] = uidRules.keyAt(index);
                rules[index] = uidRules.valueAt(index);
            }
            this.mNetworkManager.setFirewallUidRules(chain, uids, rules);
            this.mLogger.firewallRulesChanged(chain, uids, rules);
        } catch (RemoteException e) {
        } catch (IllegalStateException e2) {
            Log.wtf(TAG, "problem setting firewall uid rules", e2);
        }
    }

    private void setUidFirewallRule(int chain, int uid, int rule) {
        if (Trace.isTagEnabled(2097152L)) {
            Trace.traceBegin(2097152L, "setUidFirewallRule: " + chain + SliceClientPermissions.SliceAuthority.DELIMITER + uid + SliceClientPermissions.SliceAuthority.DELIMITER + rule);
        }
        try {
            if (chain == 1) {
                this.mUidFirewallDozableRules.put(uid, rule);
            } else if (chain == 2) {
                this.mUidFirewallStandbyRules.put(uid, rule);
            } else if (chain == 3) {
                this.mUidFirewallPowerSaveRules.put(uid, rule);
            }
            this.mNetworkManager.setFirewallUidRule(chain, uid, rule);
            this.mLogger.uidFirewallRuleChanged(chain, uid, rule);
        } catch (RemoteException e) {
        } catch (IllegalStateException e2) {
            Log.wtf(TAG, "problem setting firewall uid rules", e2);
        } finally {
            Trace.traceEnd(2097152L);
        }
    }

    private void enableFirewallChainUL(int chain, boolean enable) {
        if (this.mFirewallChainStates.indexOfKey(chain) >= 0 && this.mFirewallChainStates.get(chain) == enable) {
            return;
        }
        this.mFirewallChainStates.put(chain, enable);
        try {
            this.mNetworkManager.setFirewallChainEnabled(chain, enable);
            this.mLogger.firewallChainEnabled(chain, enable);
        } catch (RemoteException e) {
        } catch (IllegalStateException e2) {
            Log.wtf(TAG, "problem enable firewall chain", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetUidFirewallRules(int uid) {
        try {
            this.mNetworkManager.setFirewallUidRule(1, uid, 0);
            this.mNetworkManager.setFirewallUidRule(2, uid, 0);
            this.mNetworkManager.setFirewallUidRule(3, uid, 0);
            this.mNetworkManager.setUidMeteredNetworkWhitelist(uid, false);
            this.mNetworkManager.setUidMeteredNetworkBlacklist(uid, false);
        } catch (RemoteException e) {
        } catch (IllegalStateException e2) {
            Log.wtf(TAG, "problem resetting firewall uid rules for " + uid, e2);
        }
    }

    @Deprecated
    private long getTotalBytes(NetworkTemplate template, long start, long end) {
        return getNetworkTotalBytes(template, start, end);
    }

    private long getNetworkTotalBytes(NetworkTemplate template, long start, long end) {
        try {
            return this.mNetworkStats.getNetworkTotalBytes(template, start, end);
        } catch (RuntimeException e) {
            Slog.w(TAG, "Failed to read network stats: " + e);
            return 0L;
        }
    }

    private NetworkStats getNetworkUidBytes(NetworkTemplate template, long start, long end) {
        try {
            return this.mNetworkStats.getNetworkUidBytes(template, start, end);
        } catch (RuntimeException e) {
            Slog.w(TAG, "Failed to read network stats: " + e);
            return new NetworkStats(SystemClock.elapsedRealtime(), 0);
        }
    }

    private boolean isBandwidthControlEnabled() {
        long token = Binder.clearCallingIdentity();
        try {
            return this.mNetworkManager.isBandwidthControlEnabled();
        } catch (RemoteException e) {
            return false;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private static Intent buildAllowBackgroundDataIntent() {
        return new Intent(ACTION_ALLOW_BACKGROUND);
    }

    private static Intent buildSnoozeWarningIntent(NetworkTemplate template, String targetPackage) {
        Intent intent = new Intent(ACTION_SNOOZE_WARNING);
        intent.addFlags(AudioFormat.EVRC);
        intent.putExtra("android.net.NETWORK_TEMPLATE", (Parcelable) template);
        intent.setPackage(targetPackage);
        return intent;
    }

    private static Intent buildSnoozeRapidIntent(NetworkTemplate template, String targetPackage) {
        Intent intent = new Intent(ACTION_SNOOZE_RAPID);
        intent.addFlags(AudioFormat.EVRC);
        intent.putExtra("android.net.NETWORK_TEMPLATE", (Parcelable) template);
        intent.setPackage(targetPackage);
        return intent;
    }

    private static Intent buildNetworkOverLimitIntent(Resources res, NetworkTemplate template) {
        Intent intent = new Intent();
        intent.setComponent(ComponentName.unflattenFromString(res.getString(R.string.config_mobile_hotspot_provision_response)));
        intent.addFlags(AudioFormat.EVRC);
        intent.putExtra("android.net.NETWORK_TEMPLATE", (Parcelable) template);
        return intent;
    }

    private static Intent buildViewDataUsageIntent(Resources res, NetworkTemplate template) {
        Intent intent = new Intent();
        intent.setComponent(ComponentName.unflattenFromString(res.getString(R.string.config_defaultWearableSensingConsentComponent)));
        intent.addFlags(AudioFormat.EVRC);
        intent.putExtra("android.net.NETWORK_TEMPLATE", (Parcelable) template);
        return intent;
    }

    void addIdleHandler(MessageQueue.IdleHandler handler) {
        this.mHandler.getLooper().getQueue().addIdleHandler(handler);
    }

    void updateRestrictBackgroundByLowPowerModeUL(PowerSaveState result) {
        boolean shouldInvokeRestrictBackground;
        if (this.mRestrictBackgroundLowPowerMode == result.batterySaverEnabled) {
            return;
        }
        this.mRestrictBackgroundLowPowerMode = result.batterySaverEnabled;
        boolean restrictBackground = this.mRestrictBackgroundLowPowerMode;
        boolean localRestrictBgChangedInBsm = this.mRestrictBackgroundChangedInBsm;
        if (this.mRestrictBackgroundLowPowerMode) {
            shouldInvokeRestrictBackground = !this.mRestrictBackground;
            this.mRestrictBackgroundBeforeBsm = this.mRestrictBackground;
            localRestrictBgChangedInBsm = false;
        } else {
            boolean shouldInvokeRestrictBackground2 = this.mRestrictBackgroundChangedInBsm;
            shouldInvokeRestrictBackground = !shouldInvokeRestrictBackground2;
            restrictBackground = this.mRestrictBackgroundBeforeBsm;
        }
        if (shouldInvokeRestrictBackground) {
            setRestrictBackgroundUL(restrictBackground, "low_power");
        }
        this.mRestrictBackgroundChangedInBsm = localRestrictBgChangedInBsm;
    }

    private static void collectKeys(SparseIntArray source, SparseBooleanArray target) {
        int size = source.size();
        for (int i = 0; i < size; i++) {
            target.put(source.keyAt(i), true);
        }
    }

    public void factoryReset(String subscriber) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.NETWORK_SETTINGS", TAG);
        if (this.mUserManager.hasUserRestriction("no_network_reset")) {
            return;
        }
        NetworkPolicy[] policies = getNetworkPolicies(this.mContext.getOpPackageName());
        NetworkTemplate template = NetworkTemplate.buildTemplateMobileAll(subscriber);
        for (NetworkPolicy policy : policies) {
            if (policy.template.equals(template)) {
                policy.limitBytes = -1L;
                policy.inferred = false;
                policy.clearSnooze();
            }
        }
        setNetworkPolicies(policies);
        setRestrictBackground(false);
        if (!this.mUserManager.hasUserRestriction("no_control_apps")) {
            for (int uid : getUidsWithPolicy(1)) {
                setUidPolicy(uid, 0);
            }
        }
    }

    public boolean isUidNetworkingBlocked(int uid, boolean isNetworkMetered) {
        int uidRules;
        boolean isBackgroundRestricted;
        long startTime = this.mStatLogger.getTime();
        this.mContext.enforceCallingOrSelfPermission("android.permission.OBSERVE_NETWORK_POLICY", TAG);
        synchronized (this.mUidRulesFirstLock) {
            uidRules = this.mUidRules.get(uid, 0);
            isBackgroundRestricted = this.mRestrictBackground;
        }
        boolean ret = isUidNetworkingBlockedInternal(uid, uidRules, isNetworkMetered, isBackgroundRestricted, this.mLogger);
        this.mStatLogger.logDurationStat(1, startTime);
        return ret;
    }

    private static boolean isSystem(int uid) {
        return uid < 10000;
    }

    static boolean isUidNetworkingBlockedInternal(int uid, int uidRules, boolean isNetworkMetered, boolean isBackgroundRestricted, NetworkPolicyLogger logger) {
        int reason;
        boolean blocked;
        if (isSystem(uid)) {
            reason = 7;
        } else if (hasRule(uidRules, 64)) {
            reason = 0;
        } else if (!isNetworkMetered) {
            reason = 1;
        } else if (hasRule(uidRules, 4)) {
            reason = 2;
        } else if (hasRule(uidRules, 1)) {
            reason = 3;
        } else if (hasRule(uidRules, 2)) {
            reason = 4;
        } else if (isBackgroundRestricted) {
            reason = 5;
        } else {
            reason = 6;
        }
        switch (reason) {
            case 0:
            case 2:
            case 5:
                blocked = true;
                break;
            case 1:
            case 3:
            case 4:
            case 6:
            case 7:
                blocked = false;
                break;
            default:
                throw new IllegalArgumentException();
        }
        if (logger != null) {
            logger.networkBlocked(uid, reason);
        }
        return blocked;
    }

    private class NetworkPolicyManagerInternalImpl extends NetworkPolicyManagerInternal {
        private NetworkPolicyManagerInternalImpl() {
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public void resetUserState(int userId) {
            synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                boolean z = true;
                boolean changed = NetworkPolicyManagerService.this.removeUserStateUL(userId, false, true);
                if (!NetworkPolicyManagerService.this.addDefaultRestrictBackgroundWhitelistUidsUL(userId) && !changed) {
                    z = false;
                }
                boolean changed2 = z;
                if (changed2) {
                    synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                        NetworkPolicyManagerService.this.writePolicyAL();
                    }
                }
            }
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public boolean isUidRestrictedOnMeteredNetworks(int uid) {
            int uidRules;
            boolean isBackgroundRestricted;
            synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                uidRules = NetworkPolicyManagerService.this.mUidRules.get(uid, 32);
                isBackgroundRestricted = NetworkPolicyManagerService.this.mRestrictBackground;
            }
            return (!isBackgroundRestricted || NetworkPolicyManagerService.hasRule(uidRules, 1) || NetworkPolicyManagerService.hasRule(uidRules, 2)) ? false : true;
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public boolean isUidNetworkingBlocked(int uid, String ifname) {
            int uidRules;
            boolean isBackgroundRestricted;
            boolean isNetworkMetered;
            long startTime = NetworkPolicyManagerService.this.mStatLogger.getTime();
            synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                uidRules = NetworkPolicyManagerService.this.mUidRules.get(uid, 0);
                isBackgroundRestricted = NetworkPolicyManagerService.this.mRestrictBackground;
            }
            synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                isNetworkMetered = NetworkPolicyManagerService.this.mMeteredIfaces.contains(ifname);
            }
            boolean ret = NetworkPolicyManagerService.isUidNetworkingBlockedInternal(uid, uidRules, isNetworkMetered, isBackgroundRestricted, NetworkPolicyManagerService.this.mLogger);
            NetworkPolicyManagerService.this.mStatLogger.logDurationStat(1, startTime);
            return ret;
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public void onTempPowerSaveWhitelistChange(int appId, boolean added) {
            synchronized (NetworkPolicyManagerService.this.mUidRulesFirstLock) {
                if (NetworkPolicyManagerService.this.mSystemReady) {
                    NetworkPolicyManagerService.this.mLogger.tempPowerSaveWlChanged(appId, added);
                    if (added) {
                        NetworkPolicyManagerService.this.mPowerSaveTempWhitelistAppIds.put(appId, true);
                    } else {
                        NetworkPolicyManagerService.this.mPowerSaveTempWhitelistAppIds.delete(appId);
                    }
                    NetworkPolicyManagerService.this.updateRulesForTempWhitelistChangeUL(appId);
                }
            }
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public SubscriptionPlan getSubscriptionPlan(Network network) {
            SubscriptionPlan primarySubscriptionPlanLocked;
            synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                int subId = NetworkPolicyManagerService.this.getSubIdLocked(network);
                primarySubscriptionPlanLocked = NetworkPolicyManagerService.this.getPrimarySubscriptionPlanLocked(subId);
            }
            return primarySubscriptionPlanLocked;
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public SubscriptionPlan getSubscriptionPlan(NetworkTemplate template) {
            SubscriptionPlan primarySubscriptionPlanLocked;
            synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                int subId = NetworkPolicyManagerService.this.findRelevantSubIdNL(template);
                primarySubscriptionPlanLocked = NetworkPolicyManagerService.this.getPrimarySubscriptionPlanLocked(subId);
            }
            return primarySubscriptionPlanLocked;
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public long getSubscriptionOpportunisticQuota(Network network, int quotaType) {
            long quotaBytes;
            synchronized (NetworkPolicyManagerService.this.mNetworkPoliciesSecondLock) {
                quotaBytes = NetworkPolicyManagerService.this.mSubscriptionOpportunisticQuota.get(NetworkPolicyManagerService.this.getSubIdLocked(network), -1L);
            }
            if (quotaBytes == -1) {
                return -1L;
            }
            if (quotaType == 1) {
                return (long) (quotaBytes * android.provider.Settings.Global.getFloat(NetworkPolicyManagerService.this.mContext.getContentResolver(), "netpolicy_quota_frac_jobs", 0.5f));
            }
            if (quotaType == 2) {
                return (long) (quotaBytes * android.provider.Settings.Global.getFloat(NetworkPolicyManagerService.this.mContext.getContentResolver(), "netpolicy_quota_frac_multipath", 0.5f));
            }
            return -1L;
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public void onAdminDataAvailable() {
            NetworkPolicyManagerService.this.mAdminDataAvailableLatch.countDown();
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public void setAppIdleWhitelist(int uid, boolean shouldWhitelist) {
            NetworkPolicyManagerService.this.setAppIdleWhitelist(uid, shouldWhitelist);
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public void setMeteredRestrictedPackages(Set<String> packageNames, int userId) {
            NetworkPolicyManagerService.this.setMeteredRestrictedPackagesInternal(packageNames, userId);
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public void setMeteredRestrictedPackagesAsync(Set<String> packageNames, int userId) {
            NetworkPolicyManagerService.this.mHandler.obtainMessage(17, userId, 0, packageNames).sendToTarget();
        }

        @Override // com.android.server.net.NetworkPolicyManagerInternal
        public void onStatsProviderLimitReached(String tag) {
            Log.v(NetworkPolicyManagerService.TAG, "onStatsProviderLimitReached: " + tag);
            NetworkPolicyManagerService.this.mHandler.obtainMessage(20).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMeteredRestrictedPackagesInternal(Set<String> packageNames, int userId) {
        synchronized (this.mUidRulesFirstLock) {
            Set<Integer> newRestrictedUids = new ArraySet<>();
            for (String packageName : packageNames) {
                int uid = getUidForPackage(packageName, userId);
                if (uid >= 0) {
                    newRestrictedUids.add(Integer.valueOf(uid));
                }
            }
            Set<Integer> oldRestrictedUids = this.mMeteredRestrictedUids.get(userId);
            this.mMeteredRestrictedUids.put(userId, newRestrictedUids);
            handleRestrictedPackagesChangeUL(oldRestrictedUids, newRestrictedUids);
            this.mLogger.meteredRestrictedPkgsChanged(newRestrictedUids);
        }
    }

    private int getUidForPackage(String packageName, int userId) {
        try {
            return this.mContext.getPackageManager().getPackageUidAsUser(packageName, 4202496, userId);
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        }
    }

    private int parseSubId(NetworkState state) {
        if (state == null || state.networkCapabilities == null || !state.networkCapabilities.hasTransport(0)) {
            return -1;
        }
        NetworkSpecifier spec = state.networkCapabilities.getNetworkSpecifier();
        if (!(spec instanceof TelephonyNetworkSpecifier)) {
            return -1;
        }
        int subId = ((TelephonyNetworkSpecifier) spec).getSubscriptionId();
        return subId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSubIdLocked(Network network) {
        return this.mNetIdToSubId.get(network.netId, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SubscriptionPlan getPrimarySubscriptionPlanLocked(int subId) {
        SubscriptionPlan[] plans = this.mSubscriptionPlans.get(subId);
        if (!ArrayUtils.isEmpty(plans)) {
            for (SubscriptionPlan plan : plans) {
                if (plan.getCycleRule().isRecurring()) {
                    return plan;
                }
                Range<ZonedDateTime> cycle = plan.cycleIterator().next();
                if (cycle.contains(ZonedDateTime.now(this.mClock))) {
                    return plan;
                }
            }
            return null;
        }
        return null;
    }

    private void waitForAdminData() {
        if (this.mContext.getPackageManager().hasSystemFeature("android.software.device_admin")) {
            ConcurrentUtils.waitForCountDownNoInterrupt(this.mAdminDataAvailableLatch, 10000L, "Wait for admin data");
        }
    }

    private void handleRestrictedPackagesChangeUL(Set<Integer> oldRestrictedUids, Set<Integer> newRestrictedUids) {
        if (!this.mNetworkManagerReady) {
            return;
        }
        if (oldRestrictedUids == null) {
            Iterator<Integer> it = newRestrictedUids.iterator();
            while (it.hasNext()) {
                updateRulesForDataUsageRestrictionsUL(it.next().intValue());
            }
            return;
        }
        Iterator<Integer> it2 = oldRestrictedUids.iterator();
        while (it2.hasNext()) {
            int uid = it2.next().intValue();
            if (!newRestrictedUids.contains(Integer.valueOf(uid))) {
                updateRulesForDataUsageRestrictionsUL(uid);
            }
        }
        Iterator<Integer> it3 = newRestrictedUids.iterator();
        while (it3.hasNext()) {
            int uid2 = it3.next().intValue();
            if (!oldRestrictedUids.contains(Integer.valueOf(uid2))) {
                updateRulesForDataUsageRestrictionsUL(uid2);
            }
        }
    }

    private boolean isRestrictedByAdminUL(int uid) {
        Set<Integer> restrictedUids = this.mMeteredRestrictedUids.get(UserHandle.getUserId(uid));
        return restrictedUids != null && restrictedUids.contains(Integer.valueOf(uid));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasRule(int uidRules, int rule) {
        return (uidRules & rule) != 0;
    }

    private static NetworkState[] defeatNullable(NetworkState[] val) {
        return val != null ? val : new NetworkState[0];
    }

    private static boolean getBooleanDefeatingNullable(PersistableBundle bundle, String key, boolean defaultValue) {
        return bundle != null ? bundle.getBoolean(key, defaultValue) : defaultValue;
    }

    private class NotificationId {
        private final int mId;
        private final String mTag;

        NotificationId(NetworkPolicy policy, int type) {
            this.mTag = buildNotificationTag(policy, type);
            this.mId = type;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (!(o instanceof NotificationId)) {
                return false;
            }
            NotificationId that = (NotificationId) o;
            return Objects.equals(this.mTag, that.mTag);
        }

        public int hashCode() {
            return Objects.hash(this.mTag);
        }

        private String buildNotificationTag(NetworkPolicy policy, int type) {
            return "NetworkPolicy:" + policy.template.hashCode() + ":" + type;
        }

        public String getTag() {
            return this.mTag;
        }

        public int getId() {
            return this.mId;
        }
    }
}
