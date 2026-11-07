package com.android.server;

import android.R;
import android.app.AppOpsManager;
import android.app.BroadcastOptions;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.CaptivePortal;
import android.net.CaptivePortalData;
import android.net.ConnectionInfo;
import android.net.ConnectivityDiagnosticsManager;
import android.net.ConnectivityManager;
import android.net.DataStallReportParcelable;
import android.net.ICaptivePortal;
import android.net.IConnectivityDiagnosticsCallback;
import android.net.IConnectivityManager;
import android.net.IDnsResolver;
import android.net.IIpConnectivityMetrics;
import android.net.INetd;
import android.net.INetdEventCallback;
import android.net.INetworkManagementEventObserver;
import android.net.INetworkMonitor;
import android.net.INetworkMonitorCallbacks;
import android.net.INetworkPolicyListener;
import android.net.INetworkPolicyManager;
import android.net.INetworkStatsService;
import android.net.ISocketKeepaliveCallback;
import android.net.ITestNetworkManager;
import android.net.InetAddresses;
import android.net.IpMemoryStore;
import android.net.IpPrefix;
import android.net.LinkProperties;
import android.net.MatchAllNetworkSpecifier;
import android.net.Network;
import android.net.NetworkAgent;
import android.net.NetworkAgentConfig;
import android.net.NetworkCapabilities;
import android.net.NetworkConfig;
import android.net.NetworkInfo;
import android.net.NetworkMonitorManager;
import android.net.NetworkPolicyManager;
import android.net.NetworkQuotaInfo;
import android.net.NetworkRequest;
import android.net.NetworkSpecifier;
import android.net.NetworkStack;
import android.net.NetworkStackClient;
import android.net.NetworkState;
import android.net.NetworkTestResultParcelable;
import android.net.NetworkUtils;
import android.net.NetworkWatchlistManager;
import android.net.PrivateDnsConfigParcel;
import android.net.ProxyInfo;
import android.net.RouteInfo;
import android.net.RouteInfoParcel;
import android.net.TetheringManager;
import android.net.UidRange;
import android.net.Uri;
import android.net.metrics.IpConnectivityLog;
import android.net.metrics.NetworkEvent;
import android.net.netlink.InetDiagMessage;
import android.net.shared.NetworkMonitorUtils;
import android.net.shared.PrivateDnsConfig;
import android.net.util.LinkPropertiesUtils;
import android.net.util.MultinetworkPolicyTracker;
import android.net.util.NetdService;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.INetworkManagementService;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.security.KeyStore;
import android.system.OsConstants;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.LocalLog;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import com.android.internal.app.IBatteryStats;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.net.LegacyVpnInfo;
import com.android.internal.net.VpnConfig;
import com.android.internal.net.VpnInfo;
import com.android.internal.net.VpnProfile;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.AsyncChannel;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.LocationPermissionChecker;
import com.android.internal.util.MessageUtils;
import com.android.internal.util.XmlUtils;
import com.android.server.am.BatteryStatsService;
import com.android.server.connectivity.AutodestructReference;
import com.android.server.connectivity.DataConnectionStats;
import com.android.server.connectivity.DnsManager;
import com.android.server.connectivity.IpConnectivityMetrics;
import com.android.server.connectivity.KeepaliveTracker;
import com.android.server.connectivity.LingerMonitor;
import com.android.server.connectivity.MockableSystemProperties;
import com.android.server.connectivity.MultipathPolicyTracker;
import com.android.server.connectivity.NetworkAgentInfo;
import com.android.server.connectivity.NetworkDiagnostics;
import com.android.server.connectivity.NetworkNotificationManager;
import com.android.server.connectivity.NetworkRanker;
import com.android.server.connectivity.PermissionMonitor;
import com.android.server.connectivity.ProxyTracker;
import com.android.server.connectivity.Vpn;
import com.android.server.net.BaseNetdEventCallback;
import com.android.server.net.BaseNetworkObserver;
import com.android.server.net.LockdownVpnTracker;
import com.android.server.net.NetworkPolicyManagerInternal;
import com.android.server.notification.SnoozeHelper;
import com.android.server.policy.PhoneWindowManager;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.utils.PriorityDump;
import com.android.server.wm.ActivityTaskManagerService;
import com.google.android.collect.Lists;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.StringJoiner;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ConnectivityService extends IConnectivityManager.Stub implements PendingIntent.OnFinished {
    private static final String ATTR_MCC = "mcc";
    private static final String ATTR_MNC = "mnc";
    private static final boolean DBG = true;
    private static final boolean DDBG;
    private static final String DEFAULT_CAPTIVE_PORTAL_HTTP_URL = "http://connectivitycheck.gstatic.com/generate_204";
    private static final int DEFAULT_LINGER_DELAY_MS = 30000;
    protected static final String DEFAULT_TCP_BUFFER_SIZES = "4096,87380,110208,4096,16384,110208";
    private static final String DIAG_ARG = "--diag";
    private static final int EVENT_APPLY_GLOBAL_HTTP_PROXY = 9;
    private static final int EVENT_CAPPORT_DATA_CHANGED = 46;
    private static final int EVENT_CLEAR_NET_TRANSITION_WAKELOCK = 8;
    private static final int EVENT_CONFIGURE_ALWAYS_ON_NETWORKS = 30;
    private static final int EVENT_DATA_SAVER_CHANGED = 40;
    private static final int EVENT_EXPIRE_NET_TRANSITION_WAKELOCK = 24;
    private static final int EVENT_NETWORK_TESTED = 41;
    private static final int EVENT_PRIVATE_DNS_CONFIG_RESOLVED = 42;
    private static final int EVENT_PRIVATE_DNS_SETTINGS_CHANGED = 37;
    private static final int EVENT_PRIVATE_DNS_VALIDATION_UPDATE = 38;
    public static final int EVENT_PROBE_STATUS_CHANGED = 45;
    private static final int EVENT_PROMPT_UNVALIDATED = 29;
    private static final int EVENT_PROVISIONING_NOTIFICATION = 43;
    private static final int EVENT_PROXY_HAS_CHANGED = 16;
    private static final int EVENT_REGISTER_NETWORK_AGENT = 18;
    private static final int EVENT_REGISTER_NETWORK_LISTENER = 21;
    private static final int EVENT_REGISTER_NETWORK_LISTENER_WITH_INTENT = 31;
    private static final int EVENT_REGISTER_NETWORK_PROVIDER = 17;
    private static final int EVENT_REGISTER_NETWORK_REQUEST = 19;
    private static final int EVENT_REGISTER_NETWORK_REQUEST_WITH_INTENT = 26;
    private static final int EVENT_RELEASE_NETWORK_REQUEST = 22;
    private static final int EVENT_RELEASE_NETWORK_REQUEST_WITH_INTENT = 27;
    private static final int EVENT_REVALIDATE_NETWORK = 36;
    private static final int EVENT_SET_ACCEPT_PARTIAL_CONNECTIVITY = 44;
    private static final int EVENT_SET_ACCEPT_UNVALIDATED = 28;
    private static final int EVENT_SET_AVOID_UNVALIDATED = 35;
    private static final int EVENT_SYSTEM_READY = 25;
    private static final int EVENT_TIMEOUT_NETWORK_REQUEST = 20;
    private static final int EVENT_UID_RULES_CHANGED = 39;
    private static final int EVENT_UNREGISTER_NETWORK_PROVIDER = 23;
    private static final String LINGER_DELAY_PROPERTY = "persist.netmon.linger";
    private static final boolean LOGD_BLOCKED_NETWORKINFO = true;
    private static final int MAX_NETWORK_INFO_LOGS = 40;
    private static final int MAX_NETWORK_REQUESTS_PER_UID = 100;
    private static final int MAX_NETWORK_REQUEST_LOGS = 20;
    private static final int MAX_WAKELOCK_LOGS = 20;
    private static final String NETWORK_ARG = "networks";
    private static final String NETWORK_RESTORE_DELAY_PROP_NAME = "android.telephony.apn-restore";
    private static final int PROMPT_UNVALIDATED_DELAY_MS = 8000;
    private static final int PROVISIONING_NOTIFICATION_HIDE = 0;
    private static final int PROVISIONING_NOTIFICATION_SHOW = 1;
    private static final String PROVISIONING_URL_PATH = "/data/misc/radio/provisioning_urls.xml";
    private static final String REQUEST_ARG = "requests";
    private static final int RESTORE_DEFAULT_NETWORK_DELAY = 60000;
    public static final String SHORT_ARG = "--short";
    private static final String TAG;
    private static final String TAG_PROVISIONING_URL = "provisioningUrl";
    private static final String TAG_PROVISIONING_URLS = "provisioningUrls";
    private static final boolean VDBG;
    private static final SparseArray<String> sMagicDecoderRing;
    private final AppOpsManager mAppOpsManager;
    private final SparseArray<Integer> mBandwidthRequests;
    private final HashSet<Integer> mBlockedAppUids;
    final Map<IBinder, ConnectivityDiagnosticsCallbackInfo> mConnectivityDiagnosticsCallbacks;
    final ConnectivityDiagnosticsHandler mConnectivityDiagnosticsHandler;
    private final Context mContext;
    private String mCurrentTcpBufferSizes;
    private INetworkManagementEventObserver mDataActivityObserver;
    private int mDefaultInetConditionPublished;
    private final NetworkRequest mDefaultMobileDataRequest;
    private volatile NetworkAgentInfo mDefaultNetworkNai;
    private final NetworkRequest mDefaultRequest;
    private final NetworkRequest mDefaultWifiRequest;
    private final Dependencies mDeps;
    private final DnsManager mDnsManager;
    protected IDnsResolver mDnsResolver;
    private final InternalHandler mHandler;
    protected final HandlerThread mHandlerThread;
    private Intent mInitialBroadcast;
    private BroadcastReceiver mIntentReceiver;
    private KeepaliveTracker mKeepaliveTracker;
    private KeyStore mKeyStore;
    private long mLastWakeLockAcquireTimestamp;
    private final LegacyTypeTracker mLegacyTypeTracker;
    protected int mLingerDelayMs;
    private LingerMonitor mLingerMonitor;
    private final LocationPermissionChecker mLocationPermissionChecker;
    private boolean mLockdownEnabled;
    private LockdownVpnTracker mLockdownTracker;
    private long mMaxWakelockDurationMs;
    private final IpConnectivityLog mMetricsLog;
    final MultinetworkPolicyTracker mMultinetworkPolicyTracker;
    final MultipathPolicyTracker mMultipathPolicyTracker;
    private INetworkManagementService mNMS;
    private NetworkConfig[] mNetConfigs;
    private final NetIdManager mNetIdManager;
    private PowerManager.WakeLock mNetTransitionWakeLock;
    private int mNetTransitionWakeLockTimeout;
    protected INetd mNetd;
    protected final INetdEventCallback mNetdEventCallback;
    private final HashMap<Messenger, NetworkAgentInfo> mNetworkAgentInfos;
    private final SparseArray<NetworkAgentInfo> mNetworkForNetId;
    private final LocalLog mNetworkInfoBlockingLogs;
    private final HashMap<Messenger, NetworkProviderInfo> mNetworkProviderInfos;
    private final NetworkRanker mNetworkRanker;
    private final LocalLog mNetworkRequestInfoLogs;
    private final HashMap<NetworkRequest, NetworkRequestInfo> mNetworkRequests;
    private int mNetworksDefined;
    private final AtomicInteger mNextNetworkProviderId;
    private int mNextNetworkRequestId;
    private NetworkNotificationManager mNotifier;
    private final PowerManager.WakeLock mPendingIntentWakeLock;
    protected final PermissionMonitor mPermissionMonitor;
    private final INetworkPolicyListener mPolicyListener;
    private INetworkPolicyManager mPolicyManager;
    private NetworkPolicyManagerInternal mPolicyManagerInternal;
    private final PriorityDump.PriorityDumper mPriorityDumper;
    private List mProtectedNetworks;
    private final File mProvisioningUrlFile;
    protected final ProxyTracker mProxyTracker;
    private final int mReleasePendingIntentDelayMs;
    private boolean mRestrictBackground;
    private final SettingsObserver mSettingsObserver;
    private INetworkStatsService mStatsService;
    private MockableSystemProperties mSystemProperties;
    private boolean mSystemReady;
    private TestNetworkService mTNS;
    private final Object mTNSLock;
    private final TelephonyManager mTelephonyManager;
    private int mTotalWakelockAcquisitions;
    private long mTotalWakelockDurationMs;
    private int mTotalWakelockReleases;
    private final NetworkStateTrackerHandler mTrackerHandler;
    private SparseIntArray mUidRules;
    private final SparseIntArray mUidToNetworkRequestCount;
    private UserManager mUserManager;
    private BroadcastReceiver mUserPresentReceiver;
    protected final SparseArray<Vpn> mVpns;
    private final LocalLog mWakelockLogs;
    private Set<String> mWolSupportedInterfaces;

    private enum ReapUnvalidatedNetworks {
        REAP,
        DONT_REAP
    }

    private enum UnneededFor {
        LINGER,
        TEARDOWN
    }

    static {
        String simpleName = ConnectivityService.class.getSimpleName();
        TAG = simpleName;
        DDBG = Log.isLoggable(simpleName, 3);
        VDBG = Log.isLoggable(TAG, 2);
        sMagicDecoderRing = MessageUtils.findMessageNames(new Class[]{AsyncChannel.class, ConnectivityService.class, NetworkAgent.class, NetworkAgentInfo.class});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String eventName(int what) {
        return sMagicDecoderRing.get(what, Integer.toString(what));
    }

    private static IDnsResolver getDnsResolver() {
        return IDnsResolver.Stub.asInterface(ServiceManager.getService("dnsresolver"));
    }

    static class LegacyTypeTracker {
        private static final boolean DBG = true;
        private static final boolean VDBG = false;
        private final ConnectivityService mService;
        private final ArrayList<NetworkAgentInfo>[] mTypeLists = new ArrayList[19];

        LegacyTypeTracker(ConnectivityService service) {
            this.mService = service;
        }

        public void addSupportedType(int type) {
            ArrayList<NetworkAgentInfo>[] arrayListArr = this.mTypeLists;
            if (arrayListArr[type] != null) {
                throw new IllegalStateException("legacy list for type " + type + "already initialized");
            }
            arrayListArr[type] = new ArrayList<>();
        }

        public boolean isTypeSupported(int type) {
            return ConnectivityManager.isNetworkTypeValid(type) && this.mTypeLists[type] != null;
        }

        public NetworkAgentInfo getNetworkForType(int type) {
            synchronized (this.mTypeLists) {
                if (isTypeSupported(type) && !this.mTypeLists[type].isEmpty()) {
                    return this.mTypeLists[type].get(0);
                }
                return null;
            }
        }

        private void maybeLogBroadcast(NetworkAgentInfo nai, NetworkInfo.DetailedState state, int type, boolean isDefaultNetwork) {
            ConnectivityService.log("Sending " + state + " broadcast for type " + type + " " + nai.toShortString() + " isDefaultNetwork=" + isDefaultNetwork);
        }

        public void add(int type, NetworkAgentInfo nai) {
            if (!isTypeSupported(type)) {
                return;
            }
            ArrayList<NetworkAgentInfo> list = this.mTypeLists[type];
            if (list.contains(nai)) {
                return;
            }
            synchronized (this.mTypeLists) {
                list.add(nai);
            }
            boolean isDefaultNetwork = this.mService.isDefaultNetwork(nai);
            if (list.size() == 1 || isDefaultNetwork) {
                maybeLogBroadcast(nai, NetworkInfo.DetailedState.CONNECTED, type, isDefaultNetwork);
                this.mService.sendLegacyNetworkBroadcast(nai, NetworkInfo.DetailedState.CONNECTED, type);
            }
        }

        public void remove(int type, NetworkAgentInfo nai, boolean wasDefault) {
            ArrayList<NetworkAgentInfo> list = this.mTypeLists[type];
            if (list == null || list.isEmpty()) {
                return;
            }
            boolean wasFirstNetwork = list.get(0).equals(nai);
            synchronized (this.mTypeLists) {
                if (list.remove(nai)) {
                    if (wasFirstNetwork || wasDefault) {
                        maybeLogBroadcast(nai, NetworkInfo.DetailedState.DISCONNECTED, type, wasDefault);
                        this.mService.sendLegacyNetworkBroadcast(nai, NetworkInfo.DetailedState.DISCONNECTED, type);
                    }
                    if (!list.isEmpty() && wasFirstNetwork) {
                        ConnectivityService.log("Other network available for type " + type + ", sending connected broadcast");
                        NetworkAgentInfo replacement = list.get(0);
                        maybeLogBroadcast(replacement, NetworkInfo.DetailedState.CONNECTED, type, this.mService.isDefaultNetwork(replacement));
                        this.mService.sendLegacyNetworkBroadcast(replacement, NetworkInfo.DetailedState.CONNECTED, type);
                    }
                }
            }
        }

        public void remove(NetworkAgentInfo nai, boolean wasDefault) {
            for (int type = 0; type < this.mTypeLists.length; type++) {
                remove(type, nai, wasDefault);
            }
        }

        public void update(NetworkAgentInfo nai) {
            boolean isDefault = this.mService.isDefaultNetwork(nai);
            NetworkInfo.DetailedState state = nai.networkInfo.getDetailedState();
            int type = 0;
            while (true) {
                ArrayList<NetworkAgentInfo>[] arrayListArr = this.mTypeLists;
                if (type < arrayListArr.length) {
                    ArrayList<NetworkAgentInfo> list = arrayListArr[type];
                    boolean contains = list != null && list.contains(nai);
                    boolean isFirst = contains && nai == list.get(0);
                    if (isFirst || (contains && isDefault)) {
                        maybeLogBroadcast(nai, state, type, isDefault);
                        this.mService.sendLegacyNetworkBroadcast(nai, state, type);
                    }
                    type++;
                } else {
                    return;
                }
            }
        }

        public void dump(IndentingPrintWriter pw) {
            pw.println("mLegacyTypeTracker:");
            pw.increaseIndent();
            pw.print("Supported types:");
            int type = 0;
            while (true) {
                ArrayList<NetworkAgentInfo>[] arrayListArr = this.mTypeLists;
                if (type >= arrayListArr.length) {
                    break;
                }
                if (arrayListArr[type] != null) {
                    pw.print(" " + type);
                }
                type++;
            }
            pw.println();
            pw.println("Current state:");
            pw.increaseIndent();
            synchronized (this.mTypeLists) {
                for (int type2 = 0; type2 < this.mTypeLists.length; type2++) {
                    if (this.mTypeLists[type2] != null && !this.mTypeLists[type2].isEmpty()) {
                        for (NetworkAgentInfo nai : this.mTypeLists[type2]) {
                            pw.println(type2 + " " + nai.toShortString());
                        }
                    }
                }
            }
            pw.decreaseIndent();
            pw.decreaseIndent();
            pw.println();
        }
    }

    public static class Dependencies {
        public MockableSystemProperties getSystemProperties() {
            return new MockableSystemProperties();
        }

        public HandlerThread makeHandlerThread() {
            return new HandlerThread("ConnectivityServiceThread");
        }

        public NetworkStackClient getNetworkStack() {
            return NetworkStackClient.getInstance();
        }

        public ProxyTracker makeProxyTracker(Context context, Handler connServiceHandler) {
            return new ProxyTracker(context, connServiceHandler, 16);
        }

        public NetIdManager makeNetIdManager() {
            return new NetIdManager();
        }

        public boolean queryUserAccess(int uid, int netId) {
            return NetworkUtils.queryUserAccess(uid, netId);
        }

        public MultinetworkPolicyTracker makeMultinetworkPolicyTracker(Context c, Handler h, Runnable r) {
            return new MultinetworkPolicyTracker(c, h, r);
        }

        public boolean hasService(String name) {
            return ServiceManager.checkService(name) != null;
        }

        public IpConnectivityMetrics.Logger getMetricsLogger() {
            IpConnectivityMetrics.Logger logger = (IpConnectivityMetrics.Logger) LocalServices.getService(IpConnectivityMetrics.Logger.class);
            Objects.requireNonNull(logger, "no IpConnectivityMetrics service");
            return logger;
        }

        public IIpConnectivityMetrics getIpConnectivityMetrics() {
            return IIpConnectivityMetrics.Stub.asInterface(ServiceManager.getService("connmetrics"));
        }

        public IBatteryStats getBatteryStatsService() {
            return BatteryStatsService.getService();
        }
    }

    public ConnectivityService(Context context, INetworkManagementService netManager, INetworkStatsService statsService, INetworkPolicyManager policyManager) {
        this(context, netManager, statsService, policyManager, getDnsResolver(), new IpConnectivityLog(), NetdService.getInstance(), new Dependencies());
    }

    protected ConnectivityService(Context context, INetworkManagementService netManager, INetworkStatsService statsService, INetworkPolicyManager policyManager, IDnsResolver dnsresolver, IpConnectivityLog logger, INetd netd, Dependencies deps) {
        this.mVpns = new SparseArray<>();
        this.mUidRules = new SparseIntArray();
        this.mDefaultInetConditionPublished = 0;
        this.mTNSLock = new Object();
        this.mNextNetworkRequestId = 1;
        this.mNextNetworkProviderId = new AtomicInteger(1);
        this.mNetworkRequestInfoLogs = new LocalLog(20);
        this.mNetworkInfoBlockingLogs = new LocalLog(40);
        this.mWakelockLogs = new LocalLog(20);
        this.mTotalWakelockAcquisitions = 0;
        this.mTotalWakelockReleases = 0;
        this.mTotalWakelockDurationMs = 0L;
        this.mMaxWakelockDurationMs = 0L;
        this.mLastWakeLockAcquireTimestamp = 0L;
        this.mBandwidthRequests = new SparseArray<>(10);
        this.mConnectivityDiagnosticsCallbacks = new HashMap();
        this.mLegacyTypeTracker = new LegacyTypeTracker(this);
        this.mPriorityDumper = new PriorityDump.PriorityDumper() { // from class: com.android.server.ConnectivityService.1
            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpHigh(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) {
                ConnectivityService.this.doDump(fd, pw, new String[]{ConnectivityService.DIAG_ARG}, asProto);
                ConnectivityService.this.doDump(fd, pw, new String[]{ConnectivityService.SHORT_ARG}, asProto);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpNormal(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) {
                ConnectivityService.this.doDump(fd, pw, args, asProto);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dump(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) {
                ConnectivityService.this.doDump(fd, pw, args, asProto);
            }
        };
        this.mDataActivityObserver = new BaseNetworkObserver() { // from class: com.android.server.ConnectivityService.2
            public void interfaceClassDataActivityChanged(String label, boolean active, long tsNanos) {
                int deviceType = Integer.parseInt(label);
                ConnectivityService.this.sendDataActivityBroadcast(deviceType, active, tsNanos);
            }
        };
        this.mNetdEventCallback = new AnonymousClass3();
        this.mPolicyListener = new NetworkPolicyManager.Listener() { // from class: com.android.server.ConnectivityService.4
            public void onUidRulesChanged(int uid, int uidRules) {
                ConnectivityService.this.mHandler.sendMessage(ConnectivityService.this.mHandler.obtainMessage(39, uid, uidRules));
            }

            public void onRestrictBackgroundChanged(boolean z) {
                ConnectivityService.log("onRestrictBackgroundChanged(restrictBackground=" + z + ")");
                ConnectivityService.this.mHandler.sendMessage(ConnectivityService.this.mHandler.obtainMessage(40, z ? 1 : 0, 0));
            }
        };
        this.mProvisioningUrlFile = new File(PROVISIONING_URL_PATH);
        this.mIntentReceiver = new BroadcastReceiver() { // from class: com.android.server.ConnectivityService.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ConnectivityService.this.ensureRunningOnConnectivityServiceThread();
                String action = intent.getAction();
                int userId = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                int uid = intent.getIntExtra("android.intent.extra.UID", -1);
                Uri packageData = intent.getData();
                String packageName = packageData != null ? packageData.getSchemeSpecificPart() : null;
                if (userId == -10000) {
                    return;
                }
                if ("android.intent.action.USER_STARTED".equals(action)) {
                    ConnectivityService.this.onUserStart(userId);
                    return;
                }
                if ("android.intent.action.USER_STOPPED".equals(action)) {
                    ConnectivityService.this.onUserStop(userId);
                    return;
                }
                if ("android.intent.action.USER_ADDED".equals(action)) {
                    ConnectivityService.this.onUserAdded(userId);
                    return;
                }
                if ("android.intent.action.USER_REMOVED".equals(action)) {
                    ConnectivityService.this.onUserRemoved(userId);
                    return;
                }
                if ("android.intent.action.USER_UNLOCKED".equals(action)) {
                    ConnectivityService.this.onUserUnlocked(userId);
                    return;
                }
                if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                    ConnectivityService.this.onPackageAdded(packageName, uid);
                    return;
                }
                if ("android.intent.action.PACKAGE_REPLACED".equals(action)) {
                    ConnectivityService.this.onPackageReplaced(packageName, uid);
                } else if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                    boolean isReplacing = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                    ConnectivityService.this.onPackageRemoved(packageName, uid, isReplacing);
                }
            }
        };
        this.mUserPresentReceiver = new BroadcastReceiver() { // from class: com.android.server.ConnectivityService.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ConnectivityService.this.updateLockdownVpn();
                ConnectivityService.this.mContext.unregisterReceiver(this);
            }
        };
        this.mNetworkProviderInfos = new HashMap<>();
        this.mNetworkRequests = new HashMap<>();
        this.mUidToNetworkRequestCount = new SparseIntArray();
        this.mNetworkForNetId = new SparseArray<>();
        this.mNetworkAgentInfos = new HashMap<>();
        this.mBlockedAppUids = new HashSet<>();
        this.mDefaultNetworkNai = null;
        log("ConnectivityService starting up");
        Objects.requireNonNull(deps, "missing Dependencies");
        Dependencies dependencies = deps;
        this.mDeps = dependencies;
        this.mSystemProperties = dependencies.getSystemProperties();
        this.mNetIdManager = this.mDeps.makeNetIdManager();
        Objects.requireNonNull(context, "missing Context");
        this.mContext = context;
        this.mMetricsLog = logger;
        this.mDefaultRequest = createDefaultInternetRequestForTransport(-1, NetworkRequest.Type.REQUEST);
        this.mNetworkRanker = new NetworkRanker();
        NetworkRequestInfo defaultNRI = new NetworkRequestInfo(null, this.mDefaultRequest, new Binder());
        this.mNetworkRequests.put(this.mDefaultRequest, defaultNRI);
        this.mNetworkRequestInfoLogs.log("REGISTER " + defaultNRI);
        this.mDefaultMobileDataRequest = createDefaultInternetRequestForTransport(0, NetworkRequest.Type.BACKGROUND_REQUEST);
        this.mDefaultWifiRequest = createDefaultInternetRequestForTransport(1, NetworkRequest.Type.BACKGROUND_REQUEST);
        HandlerThread handlerThreadMakeHandlerThread = this.mDeps.makeHandlerThread();
        this.mHandlerThread = handlerThreadMakeHandlerThread;
        handlerThreadMakeHandlerThread.start();
        this.mHandler = new InternalHandler(this.mHandlerThread.getLooper());
        this.mTrackerHandler = new NetworkStateTrackerHandler(this.mHandlerThread.getLooper());
        this.mConnectivityDiagnosticsHandler = new ConnectivityDiagnosticsHandler(this.mHandlerThread.getLooper());
        this.mReleasePendingIntentDelayMs = Settings.Secure.getInt(context.getContentResolver(), "connectivity_release_pending_intent_delay_ms", ActivityTaskManagerService.KEY_DISPATCHING_TIMEOUT_MS);
        this.mLingerDelayMs = this.mSystemProperties.getInt(LINGER_DELAY_PROPERTY, DEFAULT_LINGER_DELAY_MS);
        Objects.requireNonNull(netManager, "missing INetworkManagementService");
        this.mNMS = netManager;
        Objects.requireNonNull(statsService, "missing INetworkStatsService");
        this.mStatsService = statsService;
        Objects.requireNonNull(policyManager, "missing INetworkPolicyManager");
        this.mPolicyManager = policyManager;
        NetworkPolicyManagerInternal networkPolicyManagerInternal = (NetworkPolicyManagerInternal) LocalServices.getService(NetworkPolicyManagerInternal.class);
        Objects.requireNonNull(networkPolicyManagerInternal, "missing NetworkPolicyManagerInternal");
        this.mPolicyManagerInternal = networkPolicyManagerInternal;
        Objects.requireNonNull(dnsresolver, "missing IDnsResolver");
        this.mDnsResolver = dnsresolver;
        this.mProxyTracker = this.mDeps.makeProxyTracker(this.mContext, this.mHandler);
        this.mNetd = netd;
        this.mKeyStore = KeyStore.getInstance();
        this.mTelephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        this.mAppOpsManager = (AppOpsManager) this.mContext.getSystemService("appops");
        this.mLocationPermissionChecker = new LocationPermissionChecker(this.mContext);
        try {
            this.mPolicyManager.registerListener(this.mPolicyListener);
        } catch (RemoteException e) {
            loge("unable to register INetworkPolicyListener" + e);
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        this.mNetTransitionWakeLock = powerManager.newWakeLock(1, TAG);
        this.mNetTransitionWakeLockTimeout = this.mContext.getResources().getInteger(R.integer.config_dreamsBatteryLevelMinimumWhenNotPowered);
        this.mPendingIntentWakeLock = powerManager.newWakeLock(1, TAG);
        this.mNetConfigs = new NetworkConfig[19];
        boolean wifiOnly = this.mSystemProperties.getBoolean("ro.radio.noril", false);
        log("wifiOnly=" + wifiOnly);
        String[] naStrings = context.getResources().getStringArray(R.array.config_notificationFallbackVibePattern);
        for (String naString : naStrings) {
            try {
                NetworkConfig n = new NetworkConfig(naString);
                if (VDBG) {
                    log("naString=" + naString + " config=" + n);
                }
                if (n.type > 18) {
                    loge("Error in networkAttributes - ignoring attempt to define type " + n.type);
                } else if (wifiOnly && ConnectivityManager.isNetworkTypeMobile(n.type)) {
                    log("networkAttributes - ignoring mobile as this dev is wifiOnly " + n.type);
                } else if (this.mNetConfigs[n.type] != null) {
                    loge("Error in networkAttributes - ignoring attempt to redefine type " + n.type);
                } else {
                    this.mLegacyTypeTracker.addSupportedType(n.type);
                    this.mNetConfigs[n.type] = n;
                    this.mNetworksDefined++;
                }
            } catch (Exception e2) {
            }
        }
        if (this.mNetConfigs[17] == null) {
            this.mLegacyTypeTracker.addSupportedType(17);
            this.mNetworksDefined++;
        }
        if (this.mNetConfigs[9] == null && this.mDeps.hasService("ethernet")) {
            this.mLegacyTypeTracker.addSupportedType(9);
            this.mNetworksDefined++;
        }
        if (VDBG) {
            log("mNetworksDefined=" + this.mNetworksDefined);
        }
        this.mProtectedNetworks = new ArrayList();
        int[] protectedNetworks = context.getResources().getIntArray(R.array.config_face_acquire_enroll_ignorelist);
        for (int p : protectedNetworks) {
            if (this.mNetConfigs[p] == null || this.mProtectedNetworks.contains(Integer.valueOf(p))) {
                loge("Ignoring protectedNetwork " + p);
            } else {
                this.mProtectedNetworks.add(Integer.valueOf(p));
            }
        }
        this.mWolSupportedInterfaces = new ArraySet(this.mContext.getResources().getStringArray(R.array.config_loggable_dream_prefixes));
        this.mUserManager = (UserManager) context.getSystemService("user");
        this.mPermissionMonitor = new PermissionMonitor(this.mContext, this.mNetd);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_STARTED");
        intentFilter.addAction("android.intent.action.USER_STOPPED");
        intentFilter.addAction("android.intent.action.USER_ADDED");
        intentFilter.addAction("android.intent.action.USER_REMOVED");
        intentFilter.addAction("android.intent.action.USER_UNLOCKED");
        this.mContext.registerReceiverAsUser(this.mIntentReceiver, UserHandle.ALL, intentFilter, null, this.mHandler);
        this.mContext.registerReceiverAsUser(this.mUserPresentReceiver, UserHandle.SYSTEM, new IntentFilter("android.intent.action.USER_PRESENT"), null, null);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter2.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter2.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter2.addDataScheme(com.android.server.pm.Settings.ATTR_PACKAGE);
        this.mContext.registerReceiverAsUser(this.mIntentReceiver, UserHandle.ALL, intentFilter2, null, this.mHandler);
        try {
            this.mNMS.registerObserver(this.mDataActivityObserver);
        } catch (RemoteException e3) {
            loge("Error registering observer :" + e3);
        }
        this.mSettingsObserver = new SettingsObserver(this.mContext, this.mHandler);
        registerSettingsCallbacks();
        DataConnectionStats dataConnectionStats = new DataConnectionStats(this.mContext, this.mHandler);
        dataConnectionStats.startMonitoring();
        this.mKeepaliveTracker = new KeepaliveTracker(this.mContext, this.mHandler);
        Context context2 = this.mContext;
        this.mNotifier = new NetworkNotificationManager(context2, this.mTelephonyManager, (NotificationManager) context2.getSystemService(NotificationManager.class));
        int dailyLimit = Settings.Global.getInt(this.mContext.getContentResolver(), "network_switch_notification_daily_limit", 3);
        long rateLimit = Settings.Global.getLong(this.mContext.getContentResolver(), "network_switch_notification_rate_limit_millis", 60000L);
        this.mLingerMonitor = new LingerMonitor(this.mContext, this.mNotifier, dailyLimit, rateLimit);
        MultinetworkPolicyTracker multinetworkPolicyTrackerMakeMultinetworkPolicyTracker = this.mDeps.makeMultinetworkPolicyTracker(this.mContext, this.mHandler, new Runnable() { // from class: com.android.server.-$$Lambda$ConnectivityService$SFqiR4Pfksb1C7csMC3uNxCllR8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0$ConnectivityService();
            }
        });
        this.mMultinetworkPolicyTracker = multinetworkPolicyTrackerMakeMultinetworkPolicyTracker;
        multinetworkPolicyTrackerMakeMultinetworkPolicyTracker.start();
        this.mMultipathPolicyTracker = new MultipathPolicyTracker(this.mContext, this.mHandler);
        this.mDnsManager = new DnsManager(this.mContext, this.mDnsResolver, this.mSystemProperties);
        registerPrivateDnsSettingsCallbacks();
    }

    private static NetworkCapabilities createDefaultNetworkCapabilitiesForUid(int uid) {
        NetworkCapabilities netCap = new NetworkCapabilities();
        netCap.addCapability(12);
        netCap.removeCapability(15);
        netCap.setSingleUid(uid);
        return netCap;
    }

    private NetworkRequest createDefaultInternetRequestForTransport(int transportType, NetworkRequest.Type type) {
        NetworkCapabilities netCap = new NetworkCapabilities();
        netCap.addCapability(12);
        netCap.setRequestorUidAndPackageName(Process.myUid(), this.mContext.getPackageName());
        if (transportType > -1) {
            netCap.addTransportType(transportType);
        }
        return new NetworkRequest(netCap, -1, nextNetworkRequestId(), type);
    }

    void updateAlwaysOnNetworks() {
        this.mHandler.sendEmptyMessage(30);
    }

    void updatePrivateDnsSettings() {
        this.mHandler.sendEmptyMessage(37);
    }

    private void handleAlwaysOnNetworkRequest(NetworkRequest networkRequest, String settingName, boolean defaultValue) {
        boolean enable = toBool(Settings.Global.getInt(this.mContext.getContentResolver(), settingName, encodeBool(defaultValue)));
        boolean isEnabled = this.mNetworkRequests.get(networkRequest) != null;
        if (enable == isEnabled) {
            return;
        }
        if (enable) {
            handleRegisterNetworkRequest(new NetworkRequestInfo(null, networkRequest, new Binder()));
        } else {
            handleReleaseNetworkRequest(networkRequest, 1000, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleConfigureAlwaysOnNetworks() {
        handleAlwaysOnNetworkRequest(this.mDefaultMobileDataRequest, "mobile_data_always_on", true);
        handleAlwaysOnNetworkRequest(this.mDefaultWifiRequest, "wifi_always_requested", false);
    }

    private void registerSettingsCallbacks() {
        this.mSettingsObserver.observe(Settings.Global.getUriFor("http_proxy"), 9);
        this.mSettingsObserver.observe(Settings.Global.getUriFor("mobile_data_always_on"), 30);
        this.mSettingsObserver.observe(Settings.Global.getUriFor("wifi_always_requested"), 30);
    }

    private void registerPrivateDnsSettingsCallbacks() {
        for (Uri uri : DnsManager.getPrivateDnsSettingsUris()) {
            this.mSettingsObserver.observe(uri, 37);
        }
    }

    private synchronized int nextNetworkRequestId() {
        int i;
        i = this.mNextNetworkRequestId;
        this.mNextNetworkRequestId = i + 1;
        return i;
    }

    private NetworkState getFilteredNetworkState(int networkType, int uid) {
        NetworkState state;
        if (this.mLegacyTypeTracker.isTypeSupported(networkType)) {
            NetworkAgentInfo nai = this.mLegacyTypeTracker.getNetworkForType(networkType);
            if (nai != null) {
                state = nai.getNetworkState();
                state.networkInfo.setType(networkType);
            } else {
                NetworkInfo info = new NetworkInfo(networkType, 0, ConnectivityManager.getNetworkTypeName(networkType), "");
                info.setDetailedState(NetworkInfo.DetailedState.DISCONNECTED, null, null);
                info.setIsAvailable(true);
                NetworkCapabilities capabilities = new NetworkCapabilities();
                capabilities.setCapability(18, true ^ info.isRoaming());
                state = new NetworkState(info, new LinkProperties(), capabilities, (Network) null, (String) null, (String) null);
            }
            filterNetworkStateForUid(state, uid, false);
            return state;
        }
        return NetworkState.EMPTY;
    }

    protected NetworkAgentInfo getNetworkAgentInfoForNetwork(Network network) {
        if (network == null) {
            return null;
        }
        return getNetworkAgentInfoForNetId(network.netId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetworkAgentInfo getNetworkAgentInfoForNetId(int netId) {
        NetworkAgentInfo networkAgentInfo;
        synchronized (this.mNetworkForNetId) {
            networkAgentInfo = this.mNetworkForNetId.get(netId);
        }
        return networkAgentInfo;
    }

    private Network[] getVpnUnderlyingNetworks(int uid) {
        synchronized (this.mVpns) {
            if (!this.mLockdownEnabled) {
                int user = UserHandle.getUserId(uid);
                Vpn vpn = this.mVpns.get(user);
                if (vpn != null && vpn.appliesToUid(uid)) {
                    return vpn.getUnderlyingNetworks();
                }
            }
            return null;
        }
    }

    private NetworkState getUnfilteredActiveNetworkState(int uid) {
        NetworkAgentInfo nai = getDefaultNetwork();
        Network[] networks = getVpnUnderlyingNetworks(uid);
        if (networks != null) {
            if (networks.length > 0) {
                nai = getNetworkAgentInfoForNetwork(networks[0]);
            } else {
                nai = null;
            }
        }
        if (nai != null) {
            return nai.getNetworkState();
        }
        return NetworkState.EMPTY;
    }

    private boolean isNetworkWithLinkPropertiesBlocked(LinkProperties lp, int uid, boolean ignoreBlocked) {
        if (ignoreBlocked) {
            return false;
        }
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(UserHandle.getUserId(uid));
            if (vpn != null && vpn.getLockdown() && vpn.isBlockingUid(uid)) {
                return true;
            }
            String iface = lp == null ? "" : lp.getInterfaceName();
            return this.mPolicyManagerInternal.isUidNetworkingBlocked(uid, iface);
        }
    }

    private void maybeLogBlockedNetworkInfo(NetworkInfo ni, int uid) {
        boolean blocked;
        if (ni == null) {
            return;
        }
        synchronized (this.mBlockedAppUids) {
            if (ni.getDetailedState() == NetworkInfo.DetailedState.BLOCKED && this.mBlockedAppUids.add(Integer.valueOf(uid))) {
                blocked = true;
            } else {
                boolean blocked2 = ni.isConnected();
                if (!blocked2 || !this.mBlockedAppUids.remove(Integer.valueOf(uid))) {
                    return;
                } else {
                    blocked = false;
                }
            }
            String action = blocked ? "BLOCKED" : "UNBLOCKED";
            log(String.format("Returning %s NetworkInfo to uid=%d", action, Integer.valueOf(uid)));
            this.mNetworkInfoBlockingLogs.log(action + " " + uid);
        }
    }

    private void maybeLogBlockedStatusChanged(NetworkRequestInfo nri, Network net, boolean blocked) {
        if (nri == null || net == null) {
            return;
        }
        String action = blocked ? "BLOCKED" : "UNBLOCKED";
        this.mNetworkInfoBlockingLogs.log(String.format("%s %d(%d) on netId %d", action, Integer.valueOf(nri.mUid), Integer.valueOf(nri.request.requestId), Integer.valueOf(net.netId)));
    }

    private void filterNetworkStateForUid(NetworkState state, int uid, boolean ignoreBlocked) {
        if (state == null || state.networkInfo == null || state.linkProperties == null) {
            return;
        }
        if (isNetworkWithLinkPropertiesBlocked(state.linkProperties, uid, ignoreBlocked)) {
            state.networkInfo.setDetailedState(NetworkInfo.DetailedState.BLOCKED, null, null);
        }
        synchronized (this.mVpns) {
            if (this.mLockdownTracker != null) {
                this.mLockdownTracker.augmentNetworkInfo(state.networkInfo);
            }
        }
    }

    public NetworkInfo getActiveNetworkInfo() {
        enforceAccessPermission();
        int uid = Binder.getCallingUid();
        NetworkState state = getUnfilteredActiveNetworkState(uid);
        filterNetworkStateForUid(state, uid, false);
        maybeLogBlockedNetworkInfo(state.networkInfo, uid);
        return state.networkInfo;
    }

    public Network getActiveNetwork() {
        enforceAccessPermission();
        return getActiveNetworkForUidInternal(Binder.getCallingUid(), false);
    }

    public Network getActiveNetworkForUid(int uid, boolean ignoreBlocked) {
        NetworkStack.checkNetworkStackPermission(this.mContext);
        return getActiveNetworkForUidInternal(uid, ignoreBlocked);
    }

    private Network getActiveNetworkForUidInternal(int uid, boolean ignoreBlocked) {
        NetworkAgentInfo nai;
        int user = UserHandle.getUserId(uid);
        int vpnNetId = 0;
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(user);
            if (vpn != null && vpn.appliesToUid(uid)) {
                vpnNetId = vpn.getNetId();
            }
        }
        if (vpnNetId != 0 && (nai = getNetworkAgentInfoForNetId(vpnNetId)) != null) {
            NetworkCapabilities requiredCaps = createDefaultNetworkCapabilitiesForUid(uid);
            if (requiredCaps.satisfiedByNetworkCapabilities(nai.networkCapabilities)) {
                return nai.network;
            }
        }
        NetworkAgentInfo nai2 = getDefaultNetwork();
        if (nai2 != null && isNetworkWithLinkPropertiesBlocked(nai2.linkProperties, uid, ignoreBlocked)) {
            nai2 = null;
        }
        if (nai2 != null) {
            return nai2.network;
        }
        return null;
    }

    public NetworkInfo getActiveNetworkInfoUnfiltered() {
        enforceAccessPermission();
        int uid = Binder.getCallingUid();
        NetworkState state = getUnfilteredActiveNetworkState(uid);
        return state.networkInfo;
    }

    public NetworkInfo getActiveNetworkInfoForUid(int uid, boolean ignoreBlocked) {
        NetworkStack.checkNetworkStackPermission(this.mContext);
        NetworkState state = getUnfilteredActiveNetworkState(uid);
        filterNetworkStateForUid(state, uid, ignoreBlocked);
        return state.networkInfo;
    }

    public NetworkInfo getNetworkInfo(int networkType) {
        enforceAccessPermission();
        int uid = Binder.getCallingUid();
        if (getVpnUnderlyingNetworks(uid) != null) {
            NetworkState state = getUnfilteredActiveNetworkState(uid);
            if (state.networkInfo != null && state.networkInfo.getType() == networkType) {
                filterNetworkStateForUid(state, uid, false);
                return state.networkInfo;
            }
        }
        return getFilteredNetworkState(networkType, uid).networkInfo;
    }

    public NetworkInfo getNetworkInfoForUid(Network network, int uid, boolean ignoreBlocked) {
        enforceAccessPermission();
        NetworkAgentInfo nai = getNetworkAgentInfoForNetwork(network);
        if (nai != null) {
            NetworkState state = nai.getNetworkState();
            filterNetworkStateForUid(state, uid, ignoreBlocked);
            return state.networkInfo;
        }
        return null;
    }

    public NetworkInfo[] getAllNetworkInfo() {
        enforceAccessPermission();
        ArrayList<NetworkInfo> result = Lists.newArrayList();
        for (int networkType = 0; networkType <= 18; networkType++) {
            NetworkInfo info = getNetworkInfo(networkType);
            if (info != null) {
                result.add(info);
            }
        }
        int networkType2 = result.size();
        return (NetworkInfo[]) result.toArray(new NetworkInfo[networkType2]);
    }

    public Network getNetworkForType(int networkType) {
        enforceAccessPermission();
        int uid = Binder.getCallingUid();
        NetworkState state = getFilteredNetworkState(networkType, uid);
        if (!isNetworkWithLinkPropertiesBlocked(state.linkProperties, uid, false)) {
            return state.network;
        }
        return null;
    }

    public Network[] getAllNetworks() {
        Network[] result;
        enforceAccessPermission();
        synchronized (this.mNetworkForNetId) {
            result = new Network[this.mNetworkForNetId.size()];
            for (int i = 0; i < this.mNetworkForNetId.size(); i++) {
                result[i] = this.mNetworkForNetId.valueAt(i).network;
            }
        }
        return result;
    }

    public NetworkCapabilities[] getDefaultNetworkCapabilitiesForUser(int userId, String callingPackageName) {
        Vpn vpn;
        Network[] networks;
        enforceAccessPermission();
        HashMap<Network, NetworkCapabilities> result = new HashMap<>();
        NetworkAgentInfo nai = getDefaultNetwork();
        NetworkCapabilities nc = getNetworkCapabilitiesInternal(nai);
        if (nc != null) {
            result.put(nai.network, maybeSanitizeLocationInfoForCaller(nc, Binder.getCallingUid(), callingPackageName));
        }
        synchronized (this.mVpns) {
            if (!this.mLockdownEnabled && (vpn = this.mVpns.get(userId)) != null && (networks = vpn.getUnderlyingNetworks()) != null) {
                for (Network network : networks) {
                    NetworkCapabilities nc2 = getNetworkCapabilitiesInternal(network);
                    if (nc2 != null) {
                        result.put(network, maybeSanitizeLocationInfoForCaller(nc2, Binder.getCallingUid(), callingPackageName));
                    }
                }
            }
        }
        NetworkCapabilities[] out = new NetworkCapabilities[result.size()];
        return (NetworkCapabilities[]) result.values().toArray(out);
    }

    public boolean isNetworkSupported(int networkType) {
        enforceAccessPermission();
        return this.mLegacyTypeTracker.isTypeSupported(networkType);
    }

    public LinkProperties getActiveLinkProperties() {
        enforceAccessPermission();
        int uid = Binder.getCallingUid();
        NetworkState state = getUnfilteredActiveNetworkState(uid);
        if (state.linkProperties == null) {
            return null;
        }
        return linkPropertiesRestrictedForCallerPermissions(state.linkProperties, Binder.getCallingPid(), uid);
    }

    public LinkProperties getLinkPropertiesForType(int networkType) {
        enforceAccessPermission();
        NetworkAgentInfo nai = this.mLegacyTypeTracker.getNetworkForType(networkType);
        LinkProperties lp = getLinkProperties(nai);
        if (lp == null) {
            return null;
        }
        return linkPropertiesRestrictedForCallerPermissions(lp, Binder.getCallingPid(), Binder.getCallingUid());
    }

    public LinkProperties getLinkProperties(Network network) {
        enforceAccessPermission();
        LinkProperties lp = getLinkProperties(getNetworkAgentInfoForNetwork(network));
        if (lp == null) {
            return null;
        }
        return linkPropertiesRestrictedForCallerPermissions(lp, Binder.getCallingPid(), Binder.getCallingUid());
    }

    private LinkProperties getLinkProperties(NetworkAgentInfo nai) {
        LinkProperties linkProperties;
        if (nai == null) {
            return null;
        }
        synchronized (nai) {
            linkProperties = nai.linkProperties;
        }
        return linkProperties;
    }

    private NetworkCapabilities getNetworkCapabilitiesInternal(Network network) {
        return getNetworkCapabilitiesInternal(getNetworkAgentInfoForNetwork(network));
    }

    private NetworkCapabilities getNetworkCapabilitiesInternal(NetworkAgentInfo nai) {
        if (nai == null) {
            return null;
        }
        synchronized (nai) {
            if (nai.networkCapabilities == null) {
                return null;
            }
            return networkCapabilitiesRestrictedForCallerPermissions(nai.networkCapabilities, Binder.getCallingPid(), Binder.getCallingUid());
        }
    }

    public NetworkCapabilities getNetworkCapabilities(Network network, String callingPackageName) {
        this.mAppOpsManager.checkPackage(Binder.getCallingUid(), callingPackageName);
        enforceAccessPermission();
        return maybeSanitizeLocationInfoForCaller(getNetworkCapabilitiesInternal(network), Binder.getCallingUid(), callingPackageName);
    }

    NetworkCapabilities networkCapabilitiesRestrictedForCallerPermissions(NetworkCapabilities nc, int callerPid, int callerUid) {
        NetworkCapabilities newNc = new NetworkCapabilities(nc);
        if (!checkSettingsPermission(callerPid, callerUid)) {
            newNc.setUids(null);
            newNc.setSSID(null);
        }
        if (newNc.getNetworkSpecifier() != null) {
            newNc.setNetworkSpecifier(newNc.getNetworkSpecifier().redact());
        }
        newNc.setAdministratorUids(new int[0]);
        return newNc;
    }

    NetworkCapabilities maybeSanitizeLocationInfoForCaller(NetworkCapabilities nc, final int callerUid, final String callerPkgName) {
        if (nc == null) {
            return null;
        }
        final NetworkCapabilities newNc = new NetworkCapabilities(nc);
        if (callerUid != newNc.getOwnerUid()) {
            newNc.setOwnerUid(-1);
            return newNc;
        }
        if (nc.hasTransport(4)) {
            return newNc;
        }
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$maybeSanitizeLocationInfoForCaller$1$ConnectivityService(callerPkgName, callerUid, newNc);
            }
        });
        return newNc;
    }

    public /* synthetic */ void lambda$maybeSanitizeLocationInfoForCaller$1$ConnectivityService(String callerPkgName, int callerUid, NetworkCapabilities newNc) throws Exception {
        if (!this.mLocationPermissionChecker.checkLocationPermission(callerPkgName, (String) null, callerUid, (String) null)) {
            newNc.setOwnerUid(-1);
        }
    }

    private LinkProperties linkPropertiesRestrictedForCallerPermissions(LinkProperties lp, int callerPid, int callerUid) {
        if (lp == null) {
            return new LinkProperties();
        }
        boolean needsSanitization = (lp.getCaptivePortalApiUrl() == null && lp.getCaptivePortalData() == null) ? false : true;
        if (!needsSanitization) {
            return new LinkProperties(lp);
        }
        if (checkSettingsPermission(callerPid, callerUid)) {
            return new LinkProperties(lp, true);
        }
        LinkProperties newLp = new LinkProperties(lp);
        newLp.setCaptivePortalApiUrl(null);
        newLp.setCaptivePortalData(null);
        return newLp;
    }

    private void restrictRequestUidsForCallerAndSetRequestorInfo(NetworkCapabilities nc, int callerUid, String callerPackageName) {
        if (!checkSettingsPermission()) {
            nc.setSingleUid(callerUid);
        }
        nc.setRequestorUidAndPackageName(callerUid, callerPackageName);
        nc.setAdministratorUids(new int[0]);
        nc.setOwnerUid(-1);
    }

    private void restrictBackgroundRequestForCaller(NetworkCapabilities nc) {
        if (!this.mPermissionMonitor.hasUseBackgroundNetworksPermission(Binder.getCallingUid())) {
            nc.addCapability(19);
        }
    }

    public NetworkState[] getAllNetworkState() {
        NetworkStack.checkNetworkStackPermission(this.mContext);
        ArrayList<NetworkState> result = Lists.newArrayList();
        for (Network network : getAllNetworks()) {
            NetworkAgentInfo nai = getNetworkAgentInfoForNetwork(network);
            if (nai != null) {
                result.add(nai.getNetworkState());
            }
        }
        return (NetworkState[]) result.toArray(new NetworkState[result.size()]);
    }

    @Deprecated
    public NetworkQuotaInfo getActiveNetworkQuotaInfo() {
        Log.w(TAG, "Shame on UID " + Binder.getCallingUid() + " for calling the hidden API getNetworkQuotaInfo(). Shame!");
        return new NetworkQuotaInfo();
    }

    public boolean isActiveNetworkMetered() {
        enforceAccessPermission();
        NetworkCapabilities caps = getNetworkCapabilitiesInternal(getActiveNetwork());
        if (caps != null) {
            return true ^ caps.hasCapability(11);
        }
        return true;
    }

    private boolean disallowedBecauseSystemCaller() {
        if (!isSystem(Binder.getCallingUid()) || SystemProperties.getInt("ro.product.first_api_level", 0) <= EVENT_SET_ACCEPT_UNVALIDATED) {
            return false;
        }
        log("This method exists only for app backwards compatibility and must not be called by system services.");
        return true;
    }

    public boolean requestRouteToHostAddress(int networkType, byte[] hostAddress) {
        NetworkInfo.DetailedState netState;
        LinkProperties lp;
        int netId;
        if (disallowedBecauseSystemCaller()) {
            return false;
        }
        enforceChangePermission();
        if (this.mProtectedNetworks.contains(Integer.valueOf(networkType))) {
            enforceConnectivityRestrictedNetworksPermission();
        }
        try {
            InetAddress addr = InetAddress.getByAddress(hostAddress);
            if (!ConnectivityManager.isNetworkTypeValid(networkType)) {
                log("requestRouteToHostAddress on invalid network: " + networkType);
                return false;
            }
            NetworkAgentInfo nai = this.mLegacyTypeTracker.getNetworkForType(networkType);
            if (nai == null) {
                if (!this.mLegacyTypeTracker.isTypeSupported(networkType)) {
                    log("requestRouteToHostAddress on unsupported network: " + networkType);
                } else {
                    log("requestRouteToHostAddress on down network: " + networkType);
                }
                return false;
            }
            synchronized (nai) {
                netState = nai.networkInfo.getDetailedState();
            }
            if (netState != NetworkInfo.DetailedState.CONNECTED && netState != NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK) {
                if (VDBG) {
                    log("requestRouteToHostAddress on down network (" + networkType + ") - dropped netState=" + netState);
                }
                return false;
            }
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (nai) {
                    lp = nai.linkProperties;
                    netId = nai.network.netId;
                }
                boolean ok = addLegacyRouteToHost(lp, addr, netId, uid);
                log("requestRouteToHostAddress ok=" + ok);
                Binder.restoreCallingIdentity(token);
                return ok;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        } catch (UnknownHostException e) {
            log("requestRouteToHostAddress got " + e.toString());
            return false;
        }
    }

    private boolean addLegacyRouteToHost(LinkProperties lp, InetAddress addr, int netId, int uid) {
        RouteInfo bestRoute;
        RouteInfo bestRoute2 = RouteInfo.selectBestRoute(lp.getAllRoutes(), addr);
        if (bestRoute2 == null) {
            bestRoute = RouteInfo.makeHostRoute(addr, lp.getInterfaceName());
        } else {
            String iface = bestRoute2.getInterface();
            if (bestRoute2.getGateway().equals(addr)) {
                bestRoute = RouteInfo.makeHostRoute(addr, iface);
            } else {
                bestRoute = RouteInfo.makeHostRoute(addr, bestRoute2.getGateway(), iface);
            }
        }
        log("Adding legacy route " + bestRoute + " for UID/PID " + uid + SliceClientPermissions.SliceAuthority.DELIMITER + Binder.getCallingPid());
        try {
            this.mNMS.addLegacyRouteForNetId(netId, bestRoute, uid);
            return true;
        } catch (Exception e) {
            loge("Exception trying to add a route: " + e);
            return false;
        }
    }

    /* JADX INFO: renamed from: com.android.server.ConnectivityService$3, reason: invalid class name */
    class AnonymousClass3 extends BaseNetdEventCallback {
        AnonymousClass3() {
        }

        public void onPrivateDnsValidationEvent(int netId, String ipAddress, String hostname, boolean validated) {
            try {
                ConnectivityService.this.mHandler.sendMessage(ConnectivityService.this.mHandler.obtainMessage(38, new DnsManager.PrivateDnsValidationUpdate(netId, InetAddress.parseNumericAddress(ipAddress), hostname, validated)));
            } catch (IllegalArgumentException e) {
                ConnectivityService.loge("Error parsing ip address in validation event");
            }
        }

        public void onDnsEvent(int netId, int eventType, int returnCode, String hostname, String[] ipAddresses, int ipAddressesCount, long timestamp, int uid) {
            NetworkAgentInfo nai = ConnectivityService.this.getNetworkAgentInfoForNetId(netId);
            if (nai != null && nai.satisfies(ConnectivityService.this.mDefaultRequest)) {
                nai.networkMonitor().notifyDnsResponse(returnCode);
            }
        }

        public /* synthetic */ void lambda$onNat64PrefixEvent$0$ConnectivityService$3(int netId, boolean added, String prefixString, int prefixLength) {
            ConnectivityService.this.handleNat64PrefixEvent(netId, added, prefixString, prefixLength);
        }

        public void onNat64PrefixEvent(final int netId, final boolean added, final String prefixString, final int prefixLength) {
            ConnectivityService.this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$ConnectivityService$3$_itgrpHpWu3QvA9Wb0gtsEYJWZY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNat64PrefixEvent$0$ConnectivityService$3(netId, added, prefixString, prefixLength);
                }
            });
        }
    }

    private void registerNetdEventCallback() {
        IIpConnectivityMetrics ipConnectivityMetrics = this.mDeps.getIpConnectivityMetrics();
        if (ipConnectivityMetrics == null) {
            Slog.wtf(TAG, "Missing IIpConnectivityMetrics");
            return;
        }
        try {
            ipConnectivityMetrics.addNetdEventCallback(0, this.mNetdEventCallback);
        } catch (Exception e) {
            loge("Error registering netd callback: " + e);
        }
    }

    void handleUidRulesChanged(int uid, int newRules) {
        int oldRules = this.mUidRules.get(uid, 0);
        if (oldRules == newRules) {
            return;
        }
        maybeNotifyNetworkBlockedForNewUidRules(uid, newRules);
        if (newRules == 0) {
            this.mUidRules.delete(uid);
        } else {
            this.mUidRules.put(uid, newRules);
        }
    }

    void handleRestrictBackgroundChanged(boolean restrictBackground) {
        if (this.mRestrictBackground == restrictBackground) {
            return;
        }
        for (NetworkAgentInfo nai : this.mNetworkAgentInfos.values()) {
            boolean curMetered = nai.networkCapabilities.isMetered();
            maybeNotifyNetworkBlocked(nai, curMetered, curMetered, this.mRestrictBackground, restrictBackground);
        }
        this.mRestrictBackground = restrictBackground;
    }

    private boolean isUidNetworkingWithVpnBlocked(int uid, int uidRules, boolean isNetworkMetered, boolean isBackgroundRestricted) {
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(UserHandle.getUserId(uid));
            if (vpn != null && vpn.getLockdown() && vpn.isBlockingUid(uid)) {
                return true;
            }
            return NetworkPolicyManagerInternal.isUidNetworkingBlocked(uid, uidRules, isNetworkMetered, isBackgroundRestricted);
        }
    }

    private void enforceCrossUserPermission(int userId) {
        if (userId == UserHandle.getCallingUserId()) {
            return;
        }
        this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "ConnectivityService");
    }

    private boolean checkAnyPermissionOf(String... permissions) {
        for (String permission : permissions) {
            if (this.mContext.checkCallingOrSelfPermission(permission) == 0) {
                return true;
            }
        }
        return false;
    }

    private boolean checkAnyPermissionOf(int pid, int uid, String... permissions) {
        for (String permission : permissions) {
            if (this.mContext.checkPermission(permission, pid, uid) == 0) {
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

    private void enforceInternetPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.INTERNET", "ConnectivityService");
    }

    private void enforceAccessPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE", "ConnectivityService");
    }

    private void enforceChangePermission() {
        ConnectivityManager.enforceChangePermission(this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceSettingsPermission() {
        enforceAnyPermissionOf("android.permission.NETWORK_SETTINGS", "android.permission.MAINLINE_NETWORK_STACK");
    }

    private void enforceNetworkFactoryPermission() {
        enforceAnyPermissionOf("android.permission.NETWORK_FACTORY", "android.permission.MAINLINE_NETWORK_STACK");
    }

    private void enforceNetworkFactoryOrSettingsPermission() {
        enforceAnyPermissionOf("android.permission.NETWORK_SETTINGS", "android.permission.NETWORK_FACTORY", "android.permission.MAINLINE_NETWORK_STACK");
    }

    private void enforceNetworkFactoryOrTestNetworksPermission() {
        enforceAnyPermissionOf("android.permission.MANAGE_TEST_NETWORKS", "android.permission.NETWORK_FACTORY", "android.permission.MAINLINE_NETWORK_STACK");
    }

    private boolean checkSettingsPermission() {
        return checkAnyPermissionOf("android.permission.NETWORK_SETTINGS", "android.permission.MAINLINE_NETWORK_STACK");
    }

    private boolean checkSettingsPermission(int pid, int uid) {
        return this.mContext.checkPermission("android.permission.NETWORK_SETTINGS", pid, uid) == 0 || this.mContext.checkPermission("android.permission.MAINLINE_NETWORK_STACK", pid, uid) == 0;
    }

    private void enforceControlAlwaysOnVpnPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CONTROL_ALWAYS_ON_VPN", "ConnectivityService");
    }

    private void enforceNetworkStackOrSettingsPermission() {
        enforceAnyPermissionOf("android.permission.NETWORK_SETTINGS", "android.permission.NETWORK_STACK", "android.permission.MAINLINE_NETWORK_STACK");
    }

    private void enforceNetworkStackSettingsOrSetup() {
        enforceAnyPermissionOf("android.permission.NETWORK_SETTINGS", "android.permission.NETWORK_SETUP_WIZARD", "android.permission.NETWORK_STACK", "android.permission.MAINLINE_NETWORK_STACK");
    }

    private void enforceAirplaneModePermission() {
        enforceAnyPermissionOf("android.permission.NETWORK_AIRPLANE_MODE", "android.permission.NETWORK_SETTINGS", "android.permission.NETWORK_SETUP_WIZARD", "android.permission.NETWORK_STACK", "android.permission.MAINLINE_NETWORK_STACK");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkNetworkStackPermission() {
        return checkAnyPermissionOf("android.permission.NETWORK_STACK", "android.permission.MAINLINE_NETWORK_STACK");
    }

    private boolean checkNetworkStackPermission(int pid, int uid) {
        return checkAnyPermissionOf(pid, uid, "android.permission.NETWORK_STACK", "android.permission.MAINLINE_NETWORK_STACK");
    }

    private boolean checkNetworkSignalStrengthWakeupPermission(int pid, int uid) {
        return checkAnyPermissionOf(pid, uid, "android.permission.NETWORK_SIGNAL_STRENGTH_WAKEUP", "android.permission.MAINLINE_NETWORK_STACK", "android.permission.NETWORK_SETTINGS");
    }

    private void enforceConnectivityRestrictedNetworksPermission() {
        try {
            this.mContext.enforceCallingOrSelfPermission("android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS", "ConnectivityService");
        } catch (SecurityException e) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.CONNECTIVITY_INTERNAL", "ConnectivityService");
        }
    }

    private void enforceKeepalivePermission() {
        this.mContext.enforceCallingOrSelfPermission(KeepaliveTracker.PERMISSION, "ConnectivityService");
    }

    public void sendConnectedBroadcast(NetworkInfo info) {
        NetworkStack.checkNetworkStackPermission(this.mContext);
        sendGeneralBroadcast(info, "android.net.conn.CONNECTIVITY_CHANGE");
    }

    private void sendInetConditionBroadcast(NetworkInfo info) {
        sendGeneralBroadcast(info, "android.net.conn.INET_CONDITION_ACTION");
    }

    private Intent makeGeneralIntent(NetworkInfo info, String bcastType) {
        synchronized (this.mVpns) {
            if (this.mLockdownTracker != null) {
                info = new NetworkInfo(info);
                this.mLockdownTracker.augmentNetworkInfo(info);
            }
        }
        Intent intent = new Intent(bcastType);
        intent.putExtra("networkInfo", new NetworkInfo(info));
        intent.putExtra("networkType", info.getType());
        if (info.isFailover()) {
            intent.putExtra("isFailover", true);
            info.setFailover(false);
        }
        if (info.getReason() != null) {
            intent.putExtra(PhoneWindowManager.SYSTEM_DIALOG_REASON_KEY, info.getReason());
        }
        if (info.getExtraInfo() != null) {
            intent.putExtra("extraInfo", info.getExtraInfo());
        }
        intent.putExtra("inetCondition", this.mDefaultInetConditionPublished);
        return intent;
    }

    private void sendGeneralBroadcast(NetworkInfo info, String bcastType) {
        sendStickyBroadcast(makeGeneralIntent(info, bcastType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendDataActivityBroadcast(int deviceType, boolean active, long tsNanos) {
        Intent intent = new Intent("android.net.conn.DATA_ACTIVITY_CHANGE");
        intent.putExtra("deviceType", deviceType);
        intent.putExtra("isActive", active);
        intent.putExtra("tsNanos", tsNanos);
        long ident = Binder.clearCallingIdentity();
        try {
            this.mContext.sendOrderedBroadcastAsUser(intent, UserHandle.ALL, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE", null, null, 0, null, null);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private void sendStickyBroadcast(Intent intent) {
        synchronized (this) {
            if (!this.mSystemReady && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                this.mInitialBroadcast = new Intent(intent);
            }
            intent.addFlags(67108864);
            if (VDBG) {
                log("sendStickyBroadcast: action=" + intent.getAction());
            }
            Bundle options = null;
            long ident = Binder.clearCallingIdentity();
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                NetworkInfo ni = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                BroadcastOptions opts = BroadcastOptions.makeBasic();
                opts.setMaxManifestReceiverApiLevel(23);
                options = opts.toBundle();
                IBatteryStats bs = this.mDeps.getBatteryStatsService();
                try {
                    bs.noteConnectivityChanged(intent.getIntExtra("networkType", -1), ni.getState().toString());
                } catch (RemoteException e) {
                }
                intent.addFlags(2097152);
            }
            try {
                this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL, options);
                Binder.restoreCallingIdentity(ident);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }
    }

    public void systemReady() {
        this.mPermissionMonitor.startMonitoring();
        this.mProxyTracker.loadGlobalProxy();
        registerNetdEventCallback();
        synchronized (this) {
            this.mSystemReady = true;
            if (this.mInitialBroadcast != null) {
                this.mContext.sendStickyBroadcastAsUser(this.mInitialBroadcast, UserHandle.ALL);
                this.mInitialBroadcast = null;
            }
        }
        updateLockdownVpn();
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(30));
        InternalHandler internalHandler2 = this.mHandler;
        internalHandler2.sendMessage(internalHandler2.obtainMessage(25));
    }

    private void setupDataActivityTracking(NetworkAgentInfo networkAgent) {
        int timeout;
        int type;
        String iface = networkAgent.linkProperties.getInterfaceName();
        if (networkAgent.networkCapabilities.hasTransport(0)) {
            timeout = Settings.Global.getInt(this.mContext.getContentResolver(), "data_activity_timeout_mobile", 10);
            type = 0;
        } else if (networkAgent.networkCapabilities.hasTransport(1)) {
            timeout = Settings.Global.getInt(this.mContext.getContentResolver(), "data_activity_timeout_wifi", 15);
            type = 1;
        } else {
            return;
        }
        if (timeout > 0 && iface != null) {
            try {
                this.mNMS.addIdleTimer(iface, timeout, type);
            } catch (Exception e) {
                loge("Exception in setupDataActivityTracking " + e);
            }
        }
    }

    private void removeDataActivityTracking(NetworkAgentInfo networkAgent) {
        String iface = networkAgent.linkProperties.getInterfaceName();
        NetworkCapabilities caps = networkAgent.networkCapabilities;
        if (iface != null) {
            if (caps.hasTransport(0) || caps.hasTransport(1)) {
                try {
                    this.mNMS.removeIdleTimer(iface);
                } catch (Exception e) {
                    loge("Exception in removeDataActivityTracking " + e);
                }
            }
        }
    }

    private void updateDataActivityTracking(NetworkAgentInfo newNetwork, NetworkAgentInfo oldNetwork) {
        if (newNetwork != null) {
            setupDataActivityTracking(newNetwork);
        }
        if (oldNetwork != null) {
            removeDataActivityTracking(oldNetwork);
        }
    }

    private void updateMtu(LinkProperties newLp, LinkProperties oldLp) {
        String iface = newLp.getInterfaceName();
        int mtu = newLp.getMtu();
        if (oldLp == null && mtu == 0) {
            return;
        }
        if (oldLp != null && newLp.isIdenticalMtu(oldLp)) {
            if (VDBG) {
                log("identical MTU - not setting");
                return;
            }
            return;
        }
        if (!LinkProperties.isValidMtu(mtu, newLp.hasGlobalIpv6Address())) {
            if (mtu != 0) {
                loge("Unexpected mtu value: " + mtu + ", " + iface);
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(iface)) {
            loge("Setting MTU size with null iface.");
            return;
        }
        try {
            if (VDBG || DDBG) {
                log("Setting MTU size: " + iface + ", " + mtu);
            }
            this.mNMS.setMtu(iface, mtu);
        } catch (Exception e) {
            Slog.e(TAG, "exception in setMtu()" + e);
        }
    }

    private void updateTcpBufferSizes(String tcpBufferSizes) {
        String[] values = tcpBufferSizes != null ? tcpBufferSizes.split(",") : null;
        if (values == null || values.length != 6) {
            log("Invalid tcpBufferSizes string: " + tcpBufferSizes + ", using defaults");
            tcpBufferSizes = DEFAULT_TCP_BUFFER_SIZES;
            values = DEFAULT_TCP_BUFFER_SIZES.split(",");
        }
        if (tcpBufferSizes.equals(this.mCurrentTcpBufferSizes)) {
            return;
        }
        try {
            if (VDBG || DDBG) {
                Slog.d(TAG, "Setting tx/rx TCP buffers to " + tcpBufferSizes);
            }
            String rmemValues = String.join(" ", values[0], values[1], values[2]);
            String wmemValues = String.join(" ", values[3], values[4], values[5]);
            this.mNetd.setTcpRWmemorySize(rmemValues, wmemValues);
            this.mCurrentTcpBufferSizes = tcpBufferSizes;
        } catch (RemoteException | ServiceSpecificException e) {
            loge("Can't set TCP buffer sizes:" + e);
        }
        Integer rwndValue = Integer.valueOf(Settings.Global.getInt(this.mContext.getContentResolver(), "tcp_default_init_rwnd", this.mSystemProperties.getInt("net.tcp.default_init_rwnd", 0)));
        if (rwndValue.intValue() != 0) {
            this.mSystemProperties.set("sys.sysctl.tcp_def_init_rwnd", rwndValue.toString());
        }
    }

    public int getRestoreDefaultNetworkDelay(int networkType) {
        String restoreDefaultNetworkDelayStr = this.mSystemProperties.get(NETWORK_RESTORE_DELAY_PROP_NAME);
        if (restoreDefaultNetworkDelayStr != null && restoreDefaultNetworkDelayStr.length() != 0) {
            try {
                return Integer.parseInt(restoreDefaultNetworkDelayStr);
            } catch (NumberFormatException e) {
            }
        }
        if (networkType > 18) {
            return RESTORE_DEFAULT_NETWORK_DELAY;
        }
        NetworkConfig[] networkConfigArr = this.mNetConfigs;
        if (networkConfigArr[networkType] == null) {
            return RESTORE_DEFAULT_NETWORK_DELAY;
        }
        int ret = networkConfigArr[networkType].restoreTime;
        return ret;
    }

    private void dumpNetworkDiagnostics(IndentingPrintWriter pw) {
        List<NetworkDiagnostics> netDiags = new ArrayList<>();
        for (NetworkAgentInfo nai : networksSortedById()) {
            PrivateDnsConfig privateDnsCfg = this.mDnsManager.getPrivateDnsConfig(nai.network);
            netDiags.add(new NetworkDiagnostics(nai.network, new LinkProperties(nai.linkProperties), privateDnsCfg, 5000L));
        }
        for (NetworkDiagnostics netDiag : netDiags) {
            pw.println();
            netDiag.waitForMeasurements();
            netDiag.dump(pw);
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        PriorityDump.dump(this.mPriorityDumper, fd, writer, args);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDump(FileDescriptor fd, PrintWriter writer, String[] args, boolean asProto) {
        IndentingPrintWriter pw = new IndentingPrintWriter(writer, "  ");
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw) && !asProto) {
            if (ArrayUtils.contains(args, DIAG_ARG)) {
                dumpNetworkDiagnostics(pw);
                return;
            }
            if (ArrayUtils.contains(args, NETWORK_ARG)) {
                dumpNetworks(pw);
                return;
            }
            if (ArrayUtils.contains(args, REQUEST_ARG)) {
                dumpNetworkRequests(pw);
                return;
            }
            pw.print("NetworkProviders for:");
            for (NetworkProviderInfo npi : this.mNetworkProviderInfos.values()) {
                pw.print(" " + npi.name);
            }
            pw.println();
            pw.println();
            NetworkAgentInfo defaultNai = getDefaultNetwork();
            pw.print("Active default network: ");
            if (defaultNai == null) {
                pw.println("none");
            } else {
                pw.println(defaultNai.network.netId);
            }
            pw.println();
            pw.println("Current Networks:");
            pw.increaseIndent();
            dumpNetworks(pw);
            pw.decreaseIndent();
            pw.println();
            pw.print("Restrict background: ");
            pw.println(this.mRestrictBackground);
            pw.println();
            pw.println("Status for known UIDs:");
            pw.increaseIndent();
            int size = this.mUidRules.size();
            for (int i = 0; i < size; i++) {
                try {
                    int uid = this.mUidRules.keyAt(i);
                    int uidRules = this.mUidRules.get(uid, 0);
                    pw.println("UID=" + uid + " rules=" + NetworkPolicyManager.uidRulesToString(uidRules));
                } catch (ArrayIndexOutOfBoundsException e) {
                    pw.println("  ArrayIndexOutOfBoundsException");
                } catch (ConcurrentModificationException e2) {
                    pw.println("  ConcurrentModificationException");
                }
            }
            pw.println();
            pw.decreaseIndent();
            pw.println("Network Requests:");
            pw.increaseIndent();
            dumpNetworkRequests(pw);
            pw.decreaseIndent();
            pw.println();
            this.mLegacyTypeTracker.dump(pw);
            pw.println();
            this.mKeepaliveTracker.dump(pw);
            pw.println();
            dumpAvoidBadWifiSettings(pw);
            pw.println();
            this.mMultipathPolicyTracker.dump(pw);
            if (!ArrayUtils.contains(args, SHORT_ARG)) {
                pw.println();
                pw.println("mNetworkRequestInfoLogs (most recent first):");
                pw.increaseIndent();
                this.mNetworkRequestInfoLogs.reverseDump(fd, pw, args);
                pw.decreaseIndent();
                pw.println();
                pw.println("mNetworkInfoBlockingLogs (most recent first):");
                pw.increaseIndent();
                this.mNetworkInfoBlockingLogs.reverseDump(fd, pw, args);
                pw.decreaseIndent();
                pw.println();
                pw.println("NetTransition WakeLock activity (most recent first):");
                pw.increaseIndent();
                pw.println("total acquisitions: " + this.mTotalWakelockAcquisitions);
                pw.println("total releases: " + this.mTotalWakelockReleases);
                pw.println("cumulative duration: " + (this.mTotalWakelockDurationMs / 1000) + "s");
                pw.println("longest duration: " + (this.mMaxWakelockDurationMs / 1000) + "s");
                if (this.mTotalWakelockAcquisitions > this.mTotalWakelockReleases) {
                    long duration = SystemClock.elapsedRealtime() - this.mLastWakeLockAcquireTimestamp;
                    pw.println("currently holding WakeLock for: " + (duration / 1000) + "s");
                }
                this.mWakelockLogs.reverseDump(fd, pw, args);
                pw.println();
                pw.println("bandwidth update requests (by uid):");
                pw.increaseIndent();
                synchronized (this.mBandwidthRequests) {
                    for (int i2 = 0; i2 < this.mBandwidthRequests.size(); i2++) {
                        pw.println("[" + this.mBandwidthRequests.keyAt(i2) + "]: " + this.mBandwidthRequests.valueAt(i2));
                    }
                }
                pw.decreaseIndent();
                pw.decreaseIndent();
            }
            pw.println();
            pw.println("NetworkStackClient logs:");
            pw.increaseIndent();
            NetworkStackClient.getInstance().dump(pw);
            pw.decreaseIndent();
            pw.println();
            pw.println("Permission Monitor:");
            pw.increaseIndent();
            this.mPermissionMonitor.dump(pw);
            pw.decreaseIndent();
        }
    }

    private void dumpNetworks(IndentingPrintWriter pw) {
        for (NetworkAgentInfo nai : networksSortedById()) {
            pw.println(nai.toString());
            pw.increaseIndent();
            pw.println(String.format("Requests: REQUEST:%d LISTEN:%d BACKGROUND_REQUEST:%d total:%d", Integer.valueOf(nai.numForegroundNetworkRequests()), Integer.valueOf(nai.numNetworkRequests() - nai.numRequestNetworkRequests()), Integer.valueOf(nai.numBackgroundNetworkRequests()), Integer.valueOf(nai.numNetworkRequests())));
            pw.increaseIndent();
            for (int i = 0; i < nai.numNetworkRequests(); i++) {
                pw.println(nai.requestAt(i).toString());
            }
            pw.decreaseIndent();
            pw.println("Lingered:");
            pw.increaseIndent();
            nai.dumpLingerTimers(pw);
            pw.decreaseIndent();
            pw.decreaseIndent();
        }
    }

    private void dumpNetworkRequests(IndentingPrintWriter pw) {
        for (NetworkRequestInfo nri : requestsSortedById()) {
            pw.println(nri.toString());
        }
    }

    private NetworkAgentInfo[] networksSortedById() {
        NetworkAgentInfo[] networks = (NetworkAgentInfo[]) this.mNetworkAgentInfos.values().toArray(new NetworkAgentInfo[0]);
        Arrays.sort(networks, Comparator.comparingInt(new ToIntFunction() { // from class: com.android.server.-$$Lambda$ConnectivityService$H7LYLEpmjJnE6rkiTAMKiNF7tsA
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((NetworkAgentInfo) obj).network.netId;
            }
        }));
        return networks;
    }

    private NetworkRequestInfo[] requestsSortedById() {
        NetworkRequestInfo[] requests = (NetworkRequestInfo[]) this.mNetworkRequests.values().toArray(new NetworkRequestInfo[0]);
        Arrays.sort(requests, Comparator.comparingInt(new ToIntFunction() { // from class: com.android.server.-$$Lambda$ConnectivityService$GX97FVWNZr22L2SZWTK3UYHOOe0
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((ConnectivityService.NetworkRequestInfo) obj).request.requestId;
            }
        }));
        return requests;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLiveNetworkAgent(NetworkAgentInfo nai, int what) {
        if (nai.network == null) {
            return false;
        }
        NetworkAgentInfo officialNai = getNetworkAgentInfoForNetwork(nai.network);
        if (officialNai != null && officialNai.equals(nai)) {
            return true;
        }
        if (officialNai != null || VDBG) {
            loge(eventName(what) + " - isLiveNetworkAgent found mismatched netId: " + officialNai + " - " + nai);
        }
        return false;
    }

    private class NetworkStateTrackerHandler extends Handler {
        public NetworkStateTrackerHandler(Looper looper) {
            super(looper);
        }

        private boolean maybeHandleAsyncChannelMessage(Message msg) {
            switch (msg.what) {
                case 69632:
                    ConnectivityService.this.handleAsyncChannelHalfConnect(msg);
                    return true;
                case 69633:
                case 69634:
                default:
                    return false;
                case 69635:
                    NetworkAgentInfo nai = (NetworkAgentInfo) ConnectivityService.this.mNetworkAgentInfos.get(msg.replyTo);
                    if (nai != null) {
                        nai.asyncChannel.disconnect();
                        return true;
                    }
                    return true;
                case 69636:
                    ConnectivityService.this.handleAsyncChannelDisconnected(msg);
                    return true;
            }
        }

        private void maybeHandleNetworkAgentMessage(Message msg) {
            NetworkAgentInfo nai = (NetworkAgentInfo) ConnectivityService.this.mNetworkAgentInfos.get(msg.replyTo);
            boolean z = false;
            if (nai == null) {
                if (ConnectivityService.VDBG) {
                    ConnectivityService.log(String.format("%s from unknown NetworkAgent", ConnectivityService.eventName(msg.what)));
                }
                return;
            }
            int i = msg.what;
            if (i == 528392) {
                if (nai.everConnected) {
                    ConnectivityService.loge("ERROR: cannot call explicitlySelected on already-connected network");
                }
                nai.networkAgentConfig.explicitlySelected = ConnectivityService.toBool(msg.arg1);
                NetworkAgentConfig networkAgentConfig = nai.networkAgentConfig;
                if (ConnectivityService.toBool(msg.arg1) && ConnectivityService.toBool(msg.arg2)) {
                    z = true;
                }
                networkAgentConfig.acceptUnvalidated = z;
                nai.networkAgentConfig.acceptPartialConnectivity = ConnectivityService.toBool(msg.arg2);
                return;
            }
            if (i == 528397) {
                ConnectivityService.this.mKeepaliveTracker.handleEventSocketKeepalive(nai, msg);
                return;
            }
            switch (i) {
                case 528385:
                    NetworkInfo info = (NetworkInfo) msg.obj;
                    ConnectivityService.this.updateNetworkInfo(nai, info);
                    break;
                case 528386:
                    NetworkCapabilities networkCapabilities = (NetworkCapabilities) msg.obj;
                    if (networkCapabilities.hasConnectivityManagedCapability()) {
                        Slog.wtf(ConnectivityService.TAG, "BUG: " + nai + " has CS-managed capability.");
                    }
                    if (networkCapabilities.hasTransport(7)) {
                        networkCapabilities = new NetworkCapabilities(networkCapabilities);
                        networkCapabilities.restrictCapabilitesForTestNetwork(nai.creatorUid);
                    }
                    ConnectivityService.this.updateCapabilities(nai.getCurrentScore(), nai, networkCapabilities);
                    break;
                case 528387:
                    LinkProperties newLp = (LinkProperties) msg.obj;
                    ConnectivityService.this.processLinkPropertiesFromAgent(nai, newLp);
                    ConnectivityService.this.handleUpdateLinkProperties(nai, newLp);
                    break;
                case 528388:
                    ConnectivityService.this.updateNetworkScore(nai, msg.arg1);
                    break;
            }
        }

        /* JADX WARN: Code duplicated, block: B:43:0x00ee  */
        /* JADX WARN: Code duplicated, block: B:44:0x0105 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:45:0x0107  */
        /* JADX WARN: Code duplicated, block: B:46:0x010d  */
        /* JADX WARN: Code duplicated, block: B:48:0x0113  */
        private boolean maybeHandleNetworkMonitorMessage(Message msg) {
            switch (msg.what) {
                case 41:
                    NetworkTestedResults results = (NetworkTestedResults) msg.obj;
                    NetworkAgentInfo nai = ConnectivityService.this.getNetworkAgentInfoForNetId(results.mNetId);
                    if (nai != null) {
                        handleNetworkTested(nai, results.mTestResult, results.mRedirectUrl == null ? "" : results.mRedirectUrl);
                    }
                    return true;
                case 42:
                    NetworkAgentInfo nai2 = ConnectivityService.this.getNetworkAgentInfoForNetId(msg.arg2);
                    if (nai2 != null) {
                        ConnectivityService.this.updatePrivateDns(nai2, (PrivateDnsConfig) msg.obj);
                    }
                    return true;
                case 43:
                    int netId = msg.arg2;
                    boolean visible = ConnectivityService.toBool(msg.arg1);
                    NetworkAgentInfo nai3 = ConnectivityService.this.getNetworkAgentInfoForNetId(netId);
                    if (nai3 != null && visible != nai3.lastCaptivePortalDetected) {
                        int oldScore = nai3.getCurrentScore();
                        nai3.lastCaptivePortalDetected = visible;
                        nai3.everCaptivePortalDetected |= visible;
                        if (!nai3.lastCaptivePortalDetected || 2 != getCaptivePortalMode()) {
                            ConnectivityService.this.updateCapabilities(oldScore, nai3, nai3.networkCapabilities);
                            if (!visible) {
                                ConnectivityService.this.mNotifier.clearNotification(netId, NetworkNotificationManager.NotificationType.SIGN_IN);
                                ConnectivityService.this.mNotifier.clearNotification(netId, NetworkNotificationManager.NotificationType.NETWORK_SWITCH);
                            } else if (nai3 == null) {
                                ConnectivityService.loge("EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor");
                            } else if (!nai3.networkAgentConfig.provisioningNotificationDisabled) {
                                ConnectivityService.this.mNotifier.showNotification(netId, NetworkNotificationManager.NotificationType.SIGN_IN, nai3, null, (PendingIntent) msg.obj, nai3.networkAgentConfig.explicitlySelected);
                            }
                        } else {
                            ConnectivityService.log("Avoiding captive portal network: " + nai3.toShortString());
                            nai3.asyncChannel.sendMessage(528399);
                            ConnectivityService.this.teardownUnneededNetwork(nai3);
                        }
                    } else if (!visible) {
                        ConnectivityService.this.mNotifier.clearNotification(netId, NetworkNotificationManager.NotificationType.SIGN_IN);
                        ConnectivityService.this.mNotifier.clearNotification(netId, NetworkNotificationManager.NotificationType.NETWORK_SWITCH);
                    } else if (nai3 == null) {
                        ConnectivityService.loge("EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor");
                    } else if (!nai3.networkAgentConfig.provisioningNotificationDisabled) {
                        ConnectivityService.this.mNotifier.showNotification(netId, NetworkNotificationManager.NotificationType.SIGN_IN, nai3, null, (PendingIntent) msg.obj, nai3.networkAgentConfig.explicitlySelected);
                    }
                    return true;
                case 44:
                default:
                    return false;
                case 45:
                    NetworkAgentInfo nai4 = ConnectivityService.this.getNetworkAgentInfoForNetId(((Integer) msg.obj).intValue());
                    if (nai4 != null) {
                        boolean probePrivateDnsCompleted = (msg.arg1 & 64) != 0;
                        boolean privateDnsBroken = (msg.arg2 & 64) == 0;
                        if (probePrivateDnsCompleted) {
                            if (nai4.networkCapabilities.isPrivateDnsBroken() != privateDnsBroken) {
                                nai4.networkCapabilities.setPrivateDnsBroken(privateDnsBroken);
                                int oldScore2 = nai4.getCurrentScore();
                                ConnectivityService.this.updateCapabilities(oldScore2, nai4, nai4.networkCapabilities);
                            }
                            if (privateDnsBroken && !nai4.networkAgentConfig.hasShownBroken) {
                                ConnectivityService.this.showNetworkNotification(nai4, NetworkNotificationManager.NotificationType.PRIVATE_DNS_BROKEN);
                            }
                            nai4.networkAgentConfig.hasShownBroken = privateDnsBroken;
                        } else if (nai4.networkCapabilities.isPrivateDnsBroken()) {
                            nai4.networkCapabilities.setPrivateDnsBroken(false);
                            int oldScore3 = nai4.getCurrentScore();
                            ConnectivityService.this.updateCapabilities(oldScore3, nai4, nai4.networkCapabilities);
                            nai4.networkAgentConfig.hasShownBroken = false;
                        }
                    }
                    return true;
                case 46:
                    NetworkAgentInfo nai5 = ConnectivityService.this.getNetworkAgentInfoForNetId(msg.arg2);
                    if (nai5 != null) {
                        ConnectivityService.this.handleCaptivePortalDataUpdate(nai5, (CaptivePortalData) msg.obj);
                    }
                    return true;
            }
        }

        private void handleNetworkTested(NetworkAgentInfo nai, int testResult, String redirectUrl) {
            String logMsg;
            boolean wasPartial = nai.partialConnectivity;
            nai.partialConnectivity = (testResult & 2) != 0;
            boolean partialConnectivityChanged = wasPartial != nai.partialConnectivity;
            boolean valid = (testResult & 1) != 0;
            boolean wasValidated = nai.lastValidated;
            boolean wasDefault = ConnectivityService.this.isDefaultNetwork(nai);
            if (!TextUtils.isEmpty(redirectUrl)) {
                logMsg = " with redirect to " + redirectUrl;
            } else {
                logMsg = "";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(nai.toShortString());
            sb.append(" validation ");
            sb.append(valid ? "passed" : "failed");
            sb.append(logMsg);
            ConnectivityService.log(sb.toString());
            if (valid != nai.lastValidated) {
                if (wasDefault) {
                    ConnectivityService.this.mDeps.getMetricsLogger().defaultNetworkMetrics().logDefaultNetworkValidity(SystemClock.elapsedRealtime(), valid);
                }
                int oldScore = nai.getCurrentScore();
                nai.lastValidated = valid;
                nai.everValidated |= valid;
                ConnectivityService.this.updateCapabilities(oldScore, nai, nai.networkCapabilities);
                if (oldScore != nai.getCurrentScore()) {
                    ConnectivityService.this.sendUpdatedScoreToFactories(nai);
                }
                if (valid) {
                    ConnectivityService.this.handleFreshlyValidatedNetwork(nai);
                    ConnectivityService.this.mNotifier.clearNotification(nai.network.netId, NetworkNotificationManager.NotificationType.NO_INTERNET);
                    ConnectivityService.this.mNotifier.clearNotification(nai.network.netId, NetworkNotificationManager.NotificationType.LOST_INTERNET);
                    ConnectivityService.this.mNotifier.clearNotification(nai.network.netId, NetworkNotificationManager.NotificationType.PARTIAL_CONNECTIVITY);
                    ConnectivityService.this.mNotifier.clearNotification(nai.network.netId, NetworkNotificationManager.NotificationType.PRIVATE_DNS_BROKEN);
                    nai.networkAgentConfig.hasShownBroken = false;
                }
                ConnectivityService.this.mLegacyTypeTracker.update(nai);
            } else if (partialConnectivityChanged) {
                ConnectivityService.this.updateCapabilities(nai.getCurrentScore(), nai, nai.networkCapabilities);
            }
            ConnectivityService.this.updateInetCondition(nai);
            Bundle redirectUrlBundle = new Bundle();
            redirectUrlBundle.putString(NetworkAgent.REDIRECT_URL_KEY, redirectUrl);
            nai.asyncChannel.sendMessage(528391, valid ? 1 : 2, 0, redirectUrlBundle);
            if (!wasPartial && nai.partialConnectivity) {
                ConnectivityService.this.mHandler.removeMessages(29, nai.network);
                ConnectivityService.this.handlePromptUnvalidated(nai.network);
            }
            if (wasValidated && !nai.lastValidated) {
                ConnectivityService.this.handleNetworkUnvalidated(nai);
            }
        }

        private int getCaptivePortalMode() {
            return Settings.Global.getInt(ConnectivityService.this.mContext.getContentResolver(), "captive_portal_mode", 1);
        }

        private boolean maybeHandleNetworkAgentInfoMessage(Message msg) {
            if (msg.what != 1001) {
                return false;
            }
            NetworkAgentInfo nai = (NetworkAgentInfo) msg.obj;
            if (nai != null && ConnectivityService.this.isLiveNetworkAgent(nai, msg.what)) {
                ConnectivityService.this.handleLingerComplete(nai);
                return true;
            }
            return true;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (!maybeHandleAsyncChannelMessage(msg) && !maybeHandleNetworkMonitorMessage(msg) && !maybeHandleNetworkAgentInfoMessage(msg)) {
                maybeHandleNetworkAgentMessage(msg);
            }
        }
    }

    private class NetworkMonitorCallbacks extends INetworkMonitorCallbacks.Stub {
        private final AutodestructReference<NetworkAgentInfo> mNai;
        private final int mNetId;

        private NetworkMonitorCallbacks(NetworkAgentInfo nai) {
            this.mNetId = nai.network.netId;
            this.mNai = new AutodestructReference<>(nai);
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void onNetworkMonitorCreated(INetworkMonitor networkMonitor) {
            ConnectivityService.this.mHandler.sendMessage(ConnectivityService.this.mHandler.obtainMessage(18, new Pair(this.mNai.getAndDestroy(), networkMonitor)));
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyNetworkTested(int testResult, String redirectUrl) {
            Slog.wtf(ConnectivityService.TAG, "Deprecated notifyNetworkTested called: no action taken");
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyNetworkTestedWithExtras(NetworkTestResultParcelable p) {
            Message msg = ConnectivityService.this.mTrackerHandler.obtainMessage(41, new NetworkTestedResults(this.mNetId, p.result, p.timestampMillis, p.redirectUrl));
            ConnectivityService.this.mTrackerHandler.sendMessage(msg);
            NetworkAgentInfo nai = ConnectivityService.this.getNetworkAgentInfoForNetId(this.mNetId);
            if (nai == null) {
                return;
            }
            Message m = ConnectivityService.this.mConnectivityDiagnosticsHandler.obtainMessage(41, new ConnectivityReportEvent(p.timestampMillis, nai));
            PersistableBundle extras = new PersistableBundle();
            extras.putInt("networkValidationResult", p.result);
            extras.putInt("networkProbesSucceeded", p.probesSucceeded);
            extras.putInt("networkProbesAttempted", p.probesAttempted);
            m.setData(new Bundle(extras));
            ConnectivityService.this.mConnectivityDiagnosticsHandler.sendMessage(m);
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyPrivateDnsConfigResolved(PrivateDnsConfigParcel config) {
            ConnectivityService.this.mTrackerHandler.sendMessage(ConnectivityService.this.mTrackerHandler.obtainMessage(42, 0, this.mNetId, PrivateDnsConfig.fromParcel(config)));
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyProbeStatusChanged(int probesCompleted, int probesSucceeded) {
            ConnectivityService.this.mTrackerHandler.sendMessage(ConnectivityService.this.mTrackerHandler.obtainMessage(45, probesCompleted, probesSucceeded, new Integer(this.mNetId)));
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyCaptivePortalDataChanged(CaptivePortalData data) {
            ConnectivityService.this.mTrackerHandler.sendMessage(ConnectivityService.this.mTrackerHandler.obtainMessage(46, 0, this.mNetId, data));
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void showProvisioningNotification(String action, String packageName) {
            Intent intent = new Intent(action);
            intent.setPackage(packageName);
            long token = Binder.clearCallingIdentity();
            try {
                PendingIntent pendingIntent = PendingIntent.getBroadcast(ConnectivityService.this.mContext, 0, intent, 67108864);
                Binder.restoreCallingIdentity(token);
                ConnectivityService.this.mTrackerHandler.sendMessage(ConnectivityService.this.mTrackerHandler.obtainMessage(43, 1, this.mNetId, pendingIntent));
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void hideProvisioningNotification() {
            ConnectivityService.this.mTrackerHandler.sendMessage(ConnectivityService.this.mTrackerHandler.obtainMessage(43, 0, this.mNetId));
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyDataStallSuspected(DataStallReportParcelable p) {
            ConnectivityService.this.notifyDataStallSuspected(p, this.mNetId);
        }

        @Override // android.net.INetworkMonitorCallbacks
        public int getInterfaceVersion() {
            return 7;
        }

        @Override // android.net.INetworkMonitorCallbacks
        public String getInterfaceHash() {
            return "02cd6fd07d5c04eca0c35a350f7b0be576242883";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDataStallSuspected(DataStallReportParcelable p, int netId) {
        log("Data stall detected with methods: " + p.detectionMethod);
        PersistableBundle extras = new PersistableBundle();
        int detectionMethod = 0;
        if (hasDataStallDetectionMethod(p, 1)) {
            extras.putInt("dnsConsecutiveTimeouts", p.dnsConsecutiveTimeouts);
            detectionMethod = 0 | 1;
        }
        if (hasDataStallDetectionMethod(p, 2)) {
            extras.putInt("tcpPacketFailRate", p.tcpPacketFailRate);
            extras.putInt("tcpMetricsCollectionPeriodMillis", p.tcpMetricsCollectionPeriodMillis);
            detectionMethod |= 2;
        }
        Message msg = this.mConnectivityDiagnosticsHandler.obtainMessage(4, detectionMethod, netId, Long.valueOf(p.timestampMillis));
        msg.setData(new Bundle(extras));
        this.mConnectivityDiagnosticsHandler.sendMessage(msg);
    }

    private boolean hasDataStallDetectionMethod(DataStallReportParcelable p, int detectionMethod) {
        return (p.detectionMethod & detectionMethod) != 0;
    }

    private boolean networkRequiresPrivateDnsValidation(NetworkAgentInfo nai) {
        return NetworkMonitorUtils.isPrivateDnsValidationRequired(nai.networkCapabilities);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFreshlyValidatedNetwork(NetworkAgentInfo nai) {
        if (nai == null) {
            return;
        }
        PrivateDnsConfig cfg = this.mDnsManager.getPrivateDnsConfig();
        if (cfg.useTls && TextUtils.isEmpty(cfg.hostname)) {
            updateDnses(nai.linkProperties, null, nai.network.netId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePrivateDnsSettingsChanged() {
        PrivateDnsConfig cfg = this.mDnsManager.getPrivateDnsConfig();
        for (NetworkAgentInfo nai : this.mNetworkAgentInfos.values()) {
            handlePerNetworkPrivateDnsConfig(nai, cfg);
            if (networkRequiresPrivateDnsValidation(nai)) {
                handleUpdateLinkProperties(nai, new LinkProperties(nai.linkProperties));
            }
        }
    }

    private void handlePerNetworkPrivateDnsConfig(NetworkAgentInfo nai, PrivateDnsConfig cfg) {
        if (networkRequiresPrivateDnsValidation(nai)) {
            nai.networkMonitor().notifyPrivateDnsChanged(cfg.toParcel());
            updatePrivateDns(nai, cfg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePrivateDns(NetworkAgentInfo nai, PrivateDnsConfig newCfg) {
        this.mDnsManager.updatePrivateDns(nai.network, newCfg);
        updateDnses(nai.linkProperties, null, nai.network.netId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePrivateDnsValidationUpdate(DnsManager.PrivateDnsValidationUpdate update) {
        NetworkAgentInfo nai = getNetworkAgentInfoForNetId(update.netId);
        if (nai == null) {
            return;
        }
        this.mDnsManager.updatePrivateDnsValidation(update);
        handleUpdateLinkProperties(nai, new LinkProperties(nai.linkProperties));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNat64PrefixEvent(int netId, boolean added, String prefixString, int prefixLength) {
        NetworkAgentInfo nai = this.mNetworkForNetId.get(netId);
        if (nai == null) {
            return;
        }
        Object[] objArr = new Object[4];
        objArr[0] = added ? "added" : "removed";
        objArr[1] = Integer.valueOf(netId);
        objArr[2] = prefixString;
        objArr[3] = Integer.valueOf(prefixLength);
        log(String.format("NAT64 prefix %s on netId %d: %s/%d", objArr));
        IpPrefix prefix = null;
        if (added) {
            try {
                prefix = new IpPrefix(InetAddresses.parseNumericAddress(prefixString), prefixLength);
            } catch (IllegalArgumentException e) {
                loge("Invalid NAT64 prefix " + prefixString + SliceClientPermissions.SliceAuthority.DELIMITER + prefixLength);
                return;
            }
        }
        nai.clatd.setNat64PrefixFromDns(prefix);
        handleUpdateLinkProperties(nai, new LinkProperties(nai.linkProperties));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCaptivePortalDataUpdate(NetworkAgentInfo nai, CaptivePortalData data) {
        nai.captivePortalData = data;
        handleUpdateLinkProperties(nai, new LinkProperties(nai.linkProperties));
    }

    private boolean updateLingerState(NetworkAgentInfo nai, long now) {
        nai.updateLingerTimer();
        if (nai.isLingering() && nai.numForegroundNetworkRequests() > 0) {
            log("Unlingering " + nai.toShortString());
            nai.unlinger();
            logNetworkEvent(nai, 6);
            return false;
        }
        if (unneeded(nai, UnneededFor.LINGER) && nai.getLingerExpiry() > 0) {
            int lingerTime = (int) (nai.getLingerExpiry() - now);
            log("Lingering " + nai.toShortString() + " for " + lingerTime + "ms");
            nai.linger();
            logNetworkEvent(nai, 5);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAsyncChannelHalfConnect(Message msg) {
        ensureRunningOnConnectivityServiceThread();
        if (this.mNetworkProviderInfos.containsKey(msg.replyTo)) {
            if (msg.arg1 == 0) {
                if (VDBG) {
                    log("NetworkFactory connected");
                }
                NetworkProviderInfo npi = this.mNetworkProviderInfos.get(msg.replyTo);
                npi.completeConnection();
                sendAllRequestsToProvider(npi);
                return;
            }
            loge("Error connecting NetworkFactory");
            this.mNetworkProviderInfos.remove(msg.obj);
            return;
        }
        if (this.mNetworkAgentInfos.containsKey(msg.replyTo)) {
            if (msg.arg1 == 0) {
                if (VDBG) {
                    log("NetworkAgent connected");
                }
                this.mNetworkAgentInfos.get(msg.replyTo).asyncChannel.sendMessage(69633);
                return;
            }
            loge("Error connecting NetworkAgent");
            NetworkAgentInfo nai = this.mNetworkAgentInfos.remove(msg.replyTo);
            if (nai != null) {
                boolean wasDefault = isDefaultNetwork(nai);
                synchronized (this.mNetworkForNetId) {
                    this.mNetworkForNetId.remove(nai.network.netId);
                }
                this.mNetIdManager.releaseNetId(nai.network.netId);
                this.mLegacyTypeTracker.remove(nai, wasDefault);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAsyncChannelDisconnected(Message msg) {
        NetworkAgentInfo nai = this.mNetworkAgentInfos.get(msg.replyTo);
        if (nai != null) {
            disconnectAndDestroyNetwork(nai);
            return;
        }
        NetworkProviderInfo npi = this.mNetworkProviderInfos.remove(msg.replyTo);
        if (npi != null) {
            log("unregisterNetworkFactory for " + npi.name);
        }
    }

    private void disconnectAndDestroyNetwork(NetworkAgentInfo nai) {
        ensureRunningOnConnectivityServiceThread();
        log(nai.toShortString() + " disconnected, was satisfying " + nai.numNetworkRequests());
        this.mNotifier.clearNotification(nai.network.netId);
        if (nai.networkInfo.isConnected()) {
            nai.networkInfo.setDetailedState(NetworkInfo.DetailedState.DISCONNECTED, null, null);
        }
        boolean wasDefault = isDefaultNetwork(nai);
        if (wasDefault) {
            this.mDefaultInetConditionPublished = 0;
            long now = SystemClock.elapsedRealtime();
            this.mDeps.getMetricsLogger().defaultNetworkMetrics().logDefaultNetworkEvent(now, null, nai);
        }
        notifyIfacesChangedForNetworkStats();
        notifyNetworkCallbacks(nai, 524292);
        this.mKeepaliveTracker.handleStopAllKeepalives(nai, -20);
        for (String iface : nai.linkProperties.getAllInterfaceNames()) {
            wakeupModifyInterface(iface, nai.networkCapabilities, false);
        }
        nai.networkMonitor().notifyNetworkDisconnected();
        this.mNetworkAgentInfos.remove(nai.messenger);
        nai.clatd.update();
        synchronized (this.mNetworkForNetId) {
            this.mNetworkForNetId.remove(nai.network.netId);
        }
        for (int i = 0; i < nai.numNetworkRequests(); i++) {
            NetworkRequest request = nai.requestAt(i);
            NetworkRequestInfo nri = this.mNetworkRequests.get(request);
            NetworkAgentInfo currentNetwork = nri.mSatisfier;
            if (currentNetwork != null && currentNetwork.network.netId == nai.network.netId) {
                nri.mSatisfier = null;
                sendUpdatedScoreToFactories(request, null);
            }
        }
        nai.clearLingerState();
        if (nai.isSatisfyingRequest(this.mDefaultRequest.requestId)) {
            this.mDefaultNetworkNai = null;
            updateDataActivityTracking(null, nai);
            notifyLockdownVpn(nai);
            ensureNetworkTransitionWakelock(nai.toShortString());
        }
        this.mLegacyTypeTracker.remove(nai, wasDefault);
        if (!nai.networkCapabilities.hasTransport(4)) {
            updateAllVpnsCapabilities();
        }
        rematchAllNetworksAndRequests();
        this.mLingerMonitor.noteDisconnect(nai);
        if (nai.created) {
            destroyNativeNetwork(nai);
            this.mDnsManager.removeNetwork(nai.network);
        }
        this.mNetIdManager.releaseNetId(nai.network.netId);
    }

    private boolean createNativeNetwork(NetworkAgentInfo networkAgent) {
        try {
            if (networkAgent.isVPN()) {
                this.mNetd.networkCreateVpn(networkAgent.network.netId, networkAgent.networkAgentConfig == null || !networkAgent.networkAgentConfig.allowBypass);
            } else {
                this.mNetd.networkCreatePhysical(networkAgent.network.netId, getNetworkPermission(networkAgent.networkCapabilities));
            }
            this.mDnsResolver.createNetworkCache(networkAgent.network.netId);
            this.mDnsManager.updateTransportsForNetwork(networkAgent.network.netId, networkAgent.networkCapabilities.getTransportTypes());
            return true;
        } catch (RemoteException | ServiceSpecificException e) {
            loge("Error creating network " + networkAgent.network.netId + ": " + e.getMessage());
            return false;
        }
    }

    private void destroyNativeNetwork(NetworkAgentInfo networkAgent) {
        try {
            this.mNetd.networkDestroy(networkAgent.network.netId);
            this.mDnsResolver.destroyNetworkCache(networkAgent.network.netId);
        } catch (RemoteException | ServiceSpecificException e) {
            loge("Exception destroying network: " + e);
        }
    }

    private NetworkRequestInfo findExistingNetworkRequestInfo(PendingIntent pendingIntent) {
        Intent intent = pendingIntent.getIntent();
        for (Map.Entry<NetworkRequest, NetworkRequestInfo> entry : this.mNetworkRequests.entrySet()) {
            PendingIntent existingPendingIntent = entry.getValue().mPendingIntent;
            if (existingPendingIntent != null && existingPendingIntent.getIntent().filterEquals(intent)) {
                return entry.getValue();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRegisterNetworkRequestWithIntent(Message msg) {
        NetworkRequestInfo nri = (NetworkRequestInfo) msg.obj;
        NetworkRequestInfo existingRequest = findExistingNetworkRequestInfo(nri.mPendingIntent);
        if (existingRequest != null) {
            log("Replacing " + existingRequest.request + " with " + nri.request + " because their intents matched.");
            handleReleaseNetworkRequest(existingRequest.request, getCallingUid(), false);
        }
        handleRegisterNetworkRequest(nri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRegisterNetworkRequest(NetworkRequestInfo nri) {
        ensureRunningOnConnectivityServiceThread();
        this.mNetworkRequests.put(nri.request, nri);
        this.mNetworkRequestInfoLogs.log("REGISTER " + nri);
        if (nri.request.isListen()) {
            for (NetworkAgentInfo network : this.mNetworkAgentInfos.values()) {
                if (nri.request.networkCapabilities.hasSignalStrength() && network.satisfiesImmutableCapabilitiesOf(nri.request)) {
                    updateSignalStrengthThresholds(network, "REGISTER", nri.request);
                }
            }
        }
        rematchAllNetworksAndRequests();
        if (nri.request.isRequest() && nri.mSatisfier == null) {
            sendUpdatedScoreToFactories(nri.request, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReleaseNetworkRequestWithIntent(PendingIntent pendingIntent, int callingUid) {
        NetworkRequestInfo nri = findExistingNetworkRequestInfo(pendingIntent);
        if (nri != null) {
            handleReleaseNetworkRequest(nri.request, callingUid, false);
        }
    }

    private boolean unneeded(NetworkAgentInfo nai, UnneededFor reason) {
        int numRequests;
        ensureRunningOnConnectivityServiceThread();
        int i = AnonymousClass7.$SwitchMap$com$android$server$ConnectivityService$UnneededFor[reason.ordinal()];
        if (i == 1) {
            numRequests = nai.numRequestNetworkRequests();
        } else if (i == 2) {
            numRequests = nai.numForegroundNetworkRequests();
        } else {
            Slog.wtf(TAG, "Invalid reason. Cannot happen.");
            return true;
        }
        if (!nai.everConnected || nai.isVPN() || nai.isLingering() || numRequests > 0 || nai.networkInfo.getType() == 9) {
            return false;
        }
        for (NetworkRequestInfo nri : this.mNetworkRequests.values()) {
            if (reason != UnneededFor.LINGER || !nri.request.isBackgroundRequest()) {
                if (nri.request.isRequest() && nai.satisfies(nri.request) && (nai.isSatisfyingRequest(nri.request.requestId) || nri.mSatisfier.getCurrentScore() <= nai.getCurrentScoreAsValidated())) {
                    return false;
                }
            }
        }
        return true;
    }

    private NetworkRequestInfo getNriForAppRequest(NetworkRequest request, int callingUid, String requestedOperation) {
        NetworkRequestInfo nri = this.mNetworkRequests.get(request);
        if (nri != null && 1000 != callingUid && 1073 != callingUid && nri.mUid != callingUid) {
            log(String.format("UID %d attempted to %s for unowned request %s", Integer.valueOf(callingUid), requestedOperation, nri));
            return null;
        }
        return nri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTimedOutNetworkRequest(NetworkRequestInfo nri) {
        ensureRunningOnConnectivityServiceThread();
        if (this.mNetworkRequests.get(nri.request) == null || nri.mSatisfier != null) {
            return;
        }
        if (VDBG || nri.request.isRequest()) {
            log("releasing " + nri.request + " (timeout)");
        }
        handleRemoveNetworkRequest(nri);
        callCallbackForRequest(nri, null, 524293, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReleaseNetworkRequest(NetworkRequest request, int callingUid, boolean callOnUnavailable) {
        NetworkRequestInfo nri = getNriForAppRequest(request, callingUid, "release NetworkRequest");
        if (nri == null) {
            return;
        }
        if (VDBG || nri.request.isRequest()) {
            log("releasing " + nri.request + " (release request)");
        }
        handleRemoveNetworkRequest(nri);
        if (callOnUnavailable) {
            callCallbackForRequest(nri, null, 524293, 0);
        }
    }

    private void handleRemoveNetworkRequest(NetworkRequestInfo nri) {
        ensureRunningOnConnectivityServiceThread();
        nri.unlinkDeathRecipient();
        this.mNetworkRequests.remove(nri.request);
        decrementNetworkRequestPerUidCount(nri);
        this.mNetworkRequestInfoLogs.log("RELEASE " + nri);
        if (nri.request.isRequest()) {
            boolean wasKept = false;
            NetworkAgentInfo nai = nri.mSatisfier;
            if (nai != null) {
                boolean wasBackgroundNetwork = nai.isBackgroundNetwork();
                nai.removeRequest(nri.request.requestId);
                if (VDBG || DDBG) {
                    log(" Removing from current network " + nai.toShortString() + ", leaving " + nai.numNetworkRequests() + " requests.");
                }
                long now = SystemClock.elapsedRealtime();
                if (updateLingerState(nai, now)) {
                    notifyNetworkLosing(nai, now);
                }
                if (unneeded(nai, UnneededFor.TEARDOWN)) {
                    log("no live requests for " + nai.toShortString() + "; disconnecting");
                    teardownUnneededNetwork(nai);
                } else {
                    wasKept = true;
                }
                nri.mSatisfier = null;
                if (!wasBackgroundNetwork && nai.isBackgroundNetwork()) {
                    updateCapabilities(nai.getCurrentScore(), nai, nai.networkCapabilities);
                }
            }
            if (nri.request.legacyType != -1 && nai != null) {
                boolean doRemove = true;
                if (wasKept) {
                    for (int i = 0; i < nai.numNetworkRequests(); i++) {
                        NetworkRequest otherRequest = nai.requestAt(i);
                        if (otherRequest.legacyType == nri.request.legacyType && otherRequest.isRequest()) {
                            log(" still have other legacy request - leaving");
                            doRemove = false;
                        }
                    }
                }
                if (doRemove) {
                    this.mLegacyTypeTracker.remove(nri.request.legacyType, nai, false);
                }
            }
            for (NetworkProviderInfo npi : this.mNetworkProviderInfos.values()) {
                npi.cancelRequest(nri.request);
            }
            return;
        }
        for (NetworkAgentInfo nai2 : this.mNetworkAgentInfos.values()) {
            nai2.removeRequest(nri.request.requestId);
            if (nri.request.networkCapabilities.hasSignalStrength() && nai2.satisfiesImmutableCapabilitiesOf(nri.request)) {
                updateSignalStrengthThresholds(nai2, "RELEASE", nri.request);
            }
        }
    }

    private void decrementNetworkRequestPerUidCount(NetworkRequestInfo nri) {
        synchronized (this.mUidToNetworkRequestCount) {
            int requests = this.mUidToNetworkRequestCount.get(nri.mUid, 0);
            if (requests < 1) {
                Slog.wtf(TAG, "BUG: too small request count " + requests + " for UID " + nri.mUid);
            } else if (requests == 1) {
                this.mUidToNetworkRequestCount.removeAt(this.mUidToNetworkRequestCount.indexOfKey(nri.mUid));
            } else {
                this.mUidToNetworkRequestCount.put(nri.mUid, requests - 1);
            }
        }
    }

    public void setAcceptUnvalidated(Network network, boolean accept, boolean always) {
        enforceNetworkStackSettingsOrSetup();
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(EVENT_SET_ACCEPT_UNVALIDATED, encodeBool(accept), encodeBool(always), network));
    }

    public void setAcceptPartialConnectivity(Network network, boolean accept, boolean always) {
        enforceNetworkStackSettingsOrSetup();
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(44, encodeBool(accept), encodeBool(always), network));
    }

    public void setAvoidUnvalidated(Network network) {
        enforceNetworkStackSettingsOrSetup();
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(35, network));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetAcceptUnvalidated(Network network, boolean accept, boolean always) {
        log("handleSetAcceptUnvalidated network=" + network + " accept=" + accept + " always=" + always);
        NetworkAgentInfo nai = getNetworkAgentInfoForNetwork(network);
        if (nai == null || nai.everValidated) {
            return;
        }
        if (!nai.networkAgentConfig.explicitlySelected) {
            Slog.wtf(TAG, "BUG: setAcceptUnvalidated non non-explicitly selected network");
        }
        if (accept != nai.networkAgentConfig.acceptUnvalidated) {
            nai.networkAgentConfig.acceptUnvalidated = accept;
            nai.networkAgentConfig.acceptPartialConnectivity = accept;
            rematchAllNetworksAndRequests();
            sendUpdatedScoreToFactories(nai);
        }
        if (always) {
            nai.asyncChannel.sendMessage(528393, encodeBool(accept));
        }
        if (!accept) {
            nai.asyncChannel.sendMessage(528399);
            teardownUnneededNetwork(nai);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetAcceptPartialConnectivity(Network network, boolean accept, boolean always) {
        log("handleSetAcceptPartialConnectivity network=" + network + " accept=" + accept + " always=" + always);
        NetworkAgentInfo nai = getNetworkAgentInfoForNetwork(network);
        if (nai == null || nai.lastValidated) {
            return;
        }
        if (accept != nai.networkAgentConfig.acceptPartialConnectivity) {
            nai.networkAgentConfig.acceptPartialConnectivity = accept;
        }
        if (always) {
            nai.asyncChannel.sendMessage(528393, encodeBool(accept));
        }
        if (!accept) {
            nai.asyncChannel.sendMessage(528399);
            teardownUnneededNetwork(nai);
        } else {
            nai.networkMonitor().setAcceptPartialConnectivity();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetAvoidUnvalidated(Network network) {
        NetworkAgentInfo nai = getNetworkAgentInfoForNetwork(network);
        if (nai != null && !nai.lastValidated && !nai.avoidUnvalidated) {
            nai.avoidUnvalidated = true;
            rematchAllNetworksAndRequests();
            sendUpdatedScoreToFactories(nai);
        }
    }

    private void scheduleUnvalidatedPrompt(NetworkAgentInfo nai) {
        if (VDBG) {
            log("scheduleUnvalidatedPrompt " + nai.network);
        }
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessageDelayed(internalHandler.obtainMessage(29, nai.network), 8000L);
    }

    public void startCaptivePortalApp(final Network network) {
        enforceNetworkStackOrSettingsPermission();
        this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$ConnectivityService$nuaE_gOVb4npt3obpt7AoWH3OBo
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startCaptivePortalApp$4$ConnectivityService(network);
            }
        });
    }

    public /* synthetic */ void lambda$startCaptivePortalApp$4$ConnectivityService(Network network) {
        NetworkAgentInfo nai = getNetworkAgentInfoForNetwork(network);
        if (nai != null && nai.networkCapabilities.hasCapability(17)) {
            nai.networkMonitor().launchCaptivePortalApp();
        }
    }

    public void startCaptivePortalAppInternal(Network network, Bundle appExtras) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MAINLINE_NETWORK_STACK", "ConnectivityService");
        final Intent appIntent = new Intent("android.net.conn.CAPTIVE_PORTAL");
        appIntent.putExtras(appExtras);
        appIntent.putExtra("android.net.extra.CAPTIVE_PORTAL", new CaptivePortal(new CaptivePortalImpl(network).asBinder()));
        appIntent.setFlags(272629760);
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.-$$Lambda$ConnectivityService$fBQzRY85gy75jpL8zm68U3BxgdA
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$startCaptivePortalAppInternal$5$ConnectivityService(appIntent);
            }
        });
    }

    public /* synthetic */ void lambda$startCaptivePortalAppInternal$5$ConnectivityService(Intent appIntent) throws Exception {
        this.mContext.startActivityAsUser(appIntent, UserHandle.CURRENT);
    }

    private class CaptivePortalImpl extends ICaptivePortal.Stub {
        private final Network mNetwork;

        private CaptivePortalImpl(Network network) {
            this.mNetwork = network;
        }

        public void appResponse(int response) {
            if (response == 2) {
                ConnectivityService.this.enforceSettingsPermission();
            }
            NetworkMonitorManager nm = getNetworkMonitorManager(this.mNetwork);
            if (nm == null) {
                return;
            }
            nm.notifyCaptivePortalAppFinished(response);
        }

        public void appRequest(int request) {
            NetworkMonitorManager nm = getNetworkMonitorManager(this.mNetwork);
            if (nm != null && request == 100) {
                ConnectivityService.this.checkNetworkStackPermission();
                nm.forceReevaluation(Binder.getCallingUid());
            }
        }

        private NetworkMonitorManager getNetworkMonitorManager(Network network) {
            NetworkAgentInfo nai = ConnectivityService.this.getNetworkAgentInfoForNetwork(network);
            if (nai == null) {
                return null;
            }
            return nai.networkMonitor();
        }

        public void logEvent(int eventId, String packageName) {
            ConnectivityService.this.enforceSettingsPermission();
            new MetricsLogger().action(eventId, packageName);
        }
    }

    public boolean avoidBadWifi() {
        return this.mMultinetworkPolicyTracker.getAvoidBadWifi();
    }

    public boolean shouldAvoidBadWifi() {
        if (!checkNetworkStackPermission()) {
            throw new SecurityException("avoidBadWifi requires NETWORK_STACK permission");
        }
        return avoidBadWifi();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: rematchForAvoidBadWifiUpdate, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0$ConnectivityService() {
        rematchAllNetworksAndRequests();
        for (NetworkAgentInfo nai : this.mNetworkAgentInfos.values()) {
            if (nai.networkCapabilities.hasTransport(1)) {
                sendUpdatedScoreToFactories(nai);
            }
        }
    }

    private void dumpAvoidBadWifiSettings(IndentingPrintWriter pw) {
        String description;
        boolean configRestrict = this.mMultinetworkPolicyTracker.configRestrictsAvoidBadWifi();
        if (!configRestrict) {
            pw.println("Bad Wi-Fi avoidance: unrestricted");
            return;
        }
        pw.println("Bad Wi-Fi avoidance: " + avoidBadWifi());
        pw.increaseIndent();
        pw.println("Config restrict:   " + configRestrict);
        String value = this.mMultinetworkPolicyTracker.getAvoidBadWifiSetting();
        if ("0".equals(value)) {
            description = "get stuck";
        } else if (value == null) {
            description = "prompt";
        } else if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(value)) {
            description = "avoid";
        } else {
            description = value + " (?)";
        }
        pw.println("User setting:      " + description);
        pw.println("Network overrides:");
        pw.increaseIndent();
        for (NetworkAgentInfo nai : networksSortedById()) {
            if (nai.avoidUnvalidated) {
                pw.println(nai.toShortString());
            }
        }
        pw.decreaseIndent();
        pw.decreaseIndent();
    }

    private static String getSettingsPackageName(PackageManager pm) {
        Intent settingsIntent = new Intent("android.settings.SETTINGS");
        ComponentName settingsComponent = settingsIntent.resolveActivity(pm);
        return settingsComponent != null ? settingsComponent.getPackageName() : "com.android.settings";
    }

    /* JADX INFO: renamed from: com.android.server.ConnectivityService$7, reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] $SwitchMap$com$android$server$ConnectivityService$UnneededFor;
        static final /* synthetic */ int[] $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType;

        static {
            int[] iArr = new int[NetworkNotificationManager.NotificationType.values().length];
            $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType = iArr;
            try {
                iArr[NetworkNotificationManager.NotificationType.NO_INTERNET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType[NetworkNotificationManager.NotificationType.PRIVATE_DNS_BROKEN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType[NetworkNotificationManager.NotificationType.LOST_INTERNET.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType[NetworkNotificationManager.NotificationType.PARTIAL_CONNECTIVITY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[UnneededFor.values().length];
            $SwitchMap$com$android$server$ConnectivityService$UnneededFor = iArr2;
            try {
                iArr2[UnneededFor.TEARDOWN.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$android$server$ConnectivityService$UnneededFor[UnneededFor.LINGER.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNetworkNotification(NetworkAgentInfo nai, NetworkNotificationManager.NotificationType type) {
        String action;
        boolean highPriority;
        int i = AnonymousClass7.$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType[type.ordinal()];
        if (i == 1) {
            action = "android.net.conn.PROMPT_UNVALIDATED";
            highPriority = true;
        } else if (i == 2) {
            action = "android.settings.WIRELESS_SETTINGS";
            highPriority = true;
        } else if (i == 3) {
            action = "android.net.conn.PROMPT_LOST_VALIDATION";
            highPriority = true;
        } else if (i == 4) {
            action = "android.net.conn.PROMPT_PARTIAL_CONNECTIVITY";
            boolean highPriority2 = nai.networkAgentConfig.explicitlySelected;
            highPriority = highPriority2;
        } else {
            Slog.wtf(TAG, "Unknown notification type " + type);
            return;
        }
        Intent intent = new Intent(action);
        if (type != NetworkNotificationManager.NotificationType.PRIVATE_DNS_BROKEN) {
            intent.setData(Uri.fromParts("netId", Integer.toString(nai.network.netId), null));
            intent.addFlags(AudioFormat.EVRC);
            String settingsPkgName = getSettingsPackageName(this.mContext.getPackageManager());
            intent.setClassName(settingsPkgName, settingsPkgName + ".wifi.WifiNoInternetDialog");
        }
        PendingIntent pendingIntent = PendingIntent.getActivityAsUser(this.mContext, 0, intent, AudioFormat.AAC_ADIF, null, UserHandle.CURRENT);
        this.mNotifier.showNotification(nai.network.netId, type, nai, null, pendingIntent, highPriority);
    }

    private boolean shouldPromptUnvalidated(NetworkAgentInfo nai) {
        if (nai.everValidated || nai.everCaptivePortalDetected) {
            return false;
        }
        if (!nai.partialConnectivity || nai.networkAgentConfig.acceptPartialConnectivity) {
            return nai.networkAgentConfig.explicitlySelected && !nai.networkAgentConfig.acceptUnvalidated;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePromptUnvalidated(Network network) {
        if (VDBG || DDBG) {
            log("handlePromptUnvalidated " + network);
        }
        NetworkAgentInfo nai = getNetworkAgentInfoForNetwork(network);
        if (nai == null || !shouldPromptUnvalidated(nai)) {
            return;
        }
        nai.asyncChannel.sendMessage(528399);
        if (nai.partialConnectivity) {
            showNetworkNotification(nai, NetworkNotificationManager.NotificationType.PARTIAL_CONNECTIVITY);
        } else {
            showNetworkNotification(nai, NetworkNotificationManager.NotificationType.NO_INTERNET);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNetworkUnvalidated(NetworkAgentInfo nai) {
        NetworkCapabilities nc = nai.networkCapabilities;
        log("handleNetworkUnvalidated " + nai.toShortString() + " cap=" + nc);
        if (nc.hasTransport(1) && this.mMultinetworkPolicyTracker.shouldNotifyWifiUnvalidated()) {
            showNetworkNotification(nai, NetworkNotificationManager.NotificationType.LOST_INTERNET);
        }
    }

    public int getMultipathPreference(Network network) {
        enforceAccessPermission();
        NetworkAgentInfo nai = getNetworkAgentInfoForNetwork(network);
        if (nai != null && nai.networkCapabilities.hasCapability(11)) {
            return 7;
        }
        Integer networkPreference = this.mMultipathPolicyTracker.getMultipathPreference(network);
        if (networkPreference != null) {
            return networkPreference.intValue();
        }
        return this.mMultinetworkPolicyTracker.getMeteredMultipathPreference();
    }

    public NetworkRequest getDefaultRequest() {
        return this.mDefaultRequest;
    }

    private class InternalHandler extends Handler {
        public InternalHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i != 8) {
                if (i == 9) {
                    ConnectivityService.this.mProxyTracker.loadDeprecatedGlobalHttpProxy();
                    return;
                }
                if (i != 44) {
                    switch (i) {
                        case 16:
                            ConnectivityService.this.handleApplyDefaultProxy((ProxyInfo) msg.obj);
                            break;
                        case 17:
                            ConnectivityService.this.handleRegisterNetworkProvider((NetworkProviderInfo) msg.obj);
                            break;
                        case 18:
                            Pair<NetworkAgentInfo, INetworkMonitor> arg = (Pair) msg.obj;
                            ConnectivityService.this.handleRegisterNetworkAgent((NetworkAgentInfo) arg.first, (INetworkMonitor) arg.second);
                            break;
                        case 19:
                        case 21:
                            ConnectivityService.this.handleRegisterNetworkRequest((NetworkRequestInfo) msg.obj);
                            break;
                        case 20:
                            NetworkRequestInfo nri = (NetworkRequestInfo) msg.obj;
                            ConnectivityService.this.handleTimedOutNetworkRequest(nri);
                            break;
                        case 22:
                            ConnectivityService.this.handleReleaseNetworkRequest((NetworkRequest) msg.obj, msg.arg1, false);
                            break;
                        case 23:
                            ConnectivityService.this.handleUnregisterNetworkProvider((Messenger) msg.obj);
                            break;
                        case 24:
                            break;
                        case 25:
                            ConnectivityService.this.mMultipathPolicyTracker.start();
                            break;
                        case 26:
                        case 31:
                            ConnectivityService.this.handleRegisterNetworkRequestWithIntent(msg);
                            break;
                        case 27:
                            ConnectivityService.this.handleReleaseNetworkRequestWithIntent((PendingIntent) msg.obj, msg.arg1);
                            break;
                        case ConnectivityService.EVENT_SET_ACCEPT_UNVALIDATED /* 28 */:
                            Network network = (Network) msg.obj;
                            ConnectivityService.this.handleSetAcceptUnvalidated(network, ConnectivityService.toBool(msg.arg1), ConnectivityService.toBool(msg.arg2));
                            break;
                        case 29:
                            ConnectivityService.this.handlePromptUnvalidated((Network) msg.obj);
                            break;
                        case 30:
                            ConnectivityService.this.handleConfigureAlwaysOnNetworks();
                            break;
                        default:
                            switch (i) {
                                case 35:
                                    ConnectivityService.this.handleSetAvoidUnvalidated((Network) msg.obj);
                                    break;
                                case 36:
                                    ConnectivityService.this.handleReportNetworkConnectivity((Network) msg.obj, msg.arg1, ConnectivityService.toBool(msg.arg2));
                                    break;
                                case 37:
                                    ConnectivityService.this.handlePrivateDnsSettingsChanged();
                                    break;
                                case 38:
                                    ConnectivityService.this.handlePrivateDnsValidationUpdate((DnsManager.PrivateDnsValidationUpdate) msg.obj);
                                    break;
                                case 39:
                                    ConnectivityService.this.handleUidRulesChanged(msg.arg1, msg.arg2);
                                    break;
                                case 40:
                                    ConnectivityService.this.handleRestrictBackgroundChanged(ConnectivityService.toBool(msg.arg1));
                                    break;
                                default:
                                    switch (i) {
                                        case 528395:
                                            ConnectivityService.this.mKeepaliveTracker.handleStartKeepalive(msg);
                                            break;
                                        case 528396:
                                            NetworkAgentInfo nai = ConnectivityService.this.getNetworkAgentInfoForNetwork((Network) msg.obj);
                                            int slot = msg.arg1;
                                            int reason = msg.arg2;
                                            ConnectivityService.this.mKeepaliveTracker.handleStopKeepalive(nai, slot, reason);
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                }
                Network network2 = (Network) msg.obj;
                ConnectivityService.this.handleSetAcceptPartialConnectivity(network2, ConnectivityService.toBool(msg.arg1), ConnectivityService.toBool(msg.arg2));
                return;
            }
            ConnectivityService.this.handleReleaseNetworkTransitionWakelock(msg.what);
        }
    }

    @Deprecated
    public int getLastTetherError(String iface) {
        TetheringManager tm = (TetheringManager) this.mContext.getSystemService("tethering");
        return tm.getLastTetherError(iface);
    }

    @Deprecated
    public String[] getTetherableIfaces() {
        TetheringManager tm = (TetheringManager) this.mContext.getSystemService("tethering");
        return tm.getTetherableIfaces();
    }

    @Deprecated
    public String[] getTetheredIfaces() {
        TetheringManager tm = (TetheringManager) this.mContext.getSystemService("tethering");
        return tm.getTetheredIfaces();
    }

    @Deprecated
    public String[] getTetheringErroredIfaces() {
        TetheringManager tm = (TetheringManager) this.mContext.getSystemService("tethering");
        return tm.getTetheringErroredIfaces();
    }

    @Deprecated
    public String[] getTetherableUsbRegexs() {
        TetheringManager tm = (TetheringManager) this.mContext.getSystemService("tethering");
        return tm.getTetherableUsbRegexs();
    }

    @Deprecated
    public String[] getTetherableWifiRegexs() {
        TetheringManager tm = (TetheringManager) this.mContext.getSystemService("tethering");
        return tm.getTetherableWifiRegexs();
    }

    private void ensureNetworkTransitionWakelock(String forWhom) {
        synchronized (this) {
            if (this.mNetTransitionWakeLock.isHeld()) {
                return;
            }
            this.mNetTransitionWakeLock.acquire();
            this.mLastWakeLockAcquireTimestamp = SystemClock.elapsedRealtime();
            this.mTotalWakelockAcquisitions++;
            this.mWakelockLogs.log("ACQUIRE for " + forWhom);
            Message msg = this.mHandler.obtainMessage(24);
            this.mHandler.sendMessageDelayed(msg, (long) this.mNetTransitionWakeLockTimeout);
        }
    }

    private void scheduleReleaseNetworkTransitionWakelock() {
        synchronized (this) {
            if (this.mNetTransitionWakeLock.isHeld()) {
                this.mHandler.removeMessages(24);
                Message msg = this.mHandler.obtainMessage(8);
                this.mHandler.sendMessageDelayed(msg, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReleaseNetworkTransitionWakelock(int eventId) {
        String event = eventName(eventId);
        synchronized (this) {
            if (!this.mNetTransitionWakeLock.isHeld()) {
                this.mWakelockLogs.log(String.format("RELEASE: already released (%s)", event));
                Slog.w(TAG, "expected Net Transition WakeLock to be held");
                return;
            }
            this.mNetTransitionWakeLock.release();
            long lockDuration = SystemClock.elapsedRealtime() - this.mLastWakeLockAcquireTimestamp;
            this.mTotalWakelockDurationMs += lockDuration;
            this.mMaxWakelockDurationMs = Math.max(this.mMaxWakelockDurationMs, lockDuration);
            this.mTotalWakelockReleases++;
            this.mWakelockLogs.log(String.format("RELEASE (%s)", event));
        }
    }

    public void reportInetCondition(int networkType, int percentage) {
        NetworkAgentInfo nai = this.mLegacyTypeTracker.getNetworkForType(networkType);
        if (nai == null) {
            return;
        }
        reportNetworkConnectivity(nai.network, percentage > 50);
    }

    public void reportNetworkConnectivity(Network network, boolean hasConnectivity) {
        NetworkAgentInfo nai;
        enforceAccessPermission();
        enforceInternetPermission();
        int uid = Binder.getCallingUid();
        int connectivityInfo = encodeBool(hasConnectivity);
        if (network == null) {
            nai = getDefaultNetwork();
        } else {
            nai = getNetworkAgentInfoForNetwork(network);
        }
        if (nai != null) {
            ConnectivityDiagnosticsHandler connectivityDiagnosticsHandler = this.mConnectivityDiagnosticsHandler;
            connectivityDiagnosticsHandler.sendMessage(connectivityDiagnosticsHandler.obtainMessage(5, connectivityInfo, 0, nai));
        }
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(36, uid, connectivityInfo, network));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReportNetworkConnectivity(Network network, int uid, boolean hasConnectivity) {
        NetworkAgentInfo nai;
        if (network == null) {
            nai = getDefaultNetwork();
        } else {
            nai = getNetworkAgentInfoForNetwork(network);
        }
        if (nai == null || nai.networkInfo.getState() == NetworkInfo.State.DISCONNECTING || nai.networkInfo.getState() == NetworkInfo.State.DISCONNECTED || hasConnectivity == nai.lastValidated) {
            return;
        }
        int netid = nai.network.netId;
        log("reportNetworkConnectivity(" + netid + ", " + hasConnectivity + ") by " + uid);
        if (!nai.everConnected) {
            return;
        }
        LinkProperties lp = getLinkProperties(nai);
        if (isNetworkWithLinkPropertiesBlocked(lp, uid, false)) {
            return;
        }
        nai.networkMonitor().forceReevaluation(uid);
    }

    public ProxyInfo getProxyForNetwork(Network network) {
        ProxyInfo globalProxy = this.mProxyTracker.getGlobalProxy();
        if (globalProxy != null) {
            return globalProxy;
        }
        if (network == null) {
            Network activeNetwork = getActiveNetworkForUidInternal(Binder.getCallingUid(), true);
            if (activeNetwork == null) {
                return null;
            }
            return getLinkPropertiesProxyInfo(activeNetwork);
        }
        if (!this.mDeps.queryUserAccess(Binder.getCallingUid(), network.netId)) {
            return null;
        }
        return getLinkPropertiesProxyInfo(network);
    }

    private ProxyInfo getLinkPropertiesProxyInfo(Network network) {
        ProxyInfo proxyInfo;
        NetworkAgentInfo nai = getNetworkAgentInfoForNetwork(network);
        if (nai == null) {
            return null;
        }
        synchronized (nai) {
            ProxyInfo linkHttpProxy = nai.linkProperties.getHttpProxy();
            proxyInfo = linkHttpProxy != null ? new ProxyInfo(linkHttpProxy) : null;
        }
        return proxyInfo;
    }

    public void setGlobalProxy(ProxyInfo proxyProperties) {
        NetworkStack.checkNetworkStackPermission(this.mContext);
        this.mProxyTracker.setGlobalProxy(proxyProperties);
    }

    public ProxyInfo getGlobalProxy() {
        return this.mProxyTracker.getGlobalProxy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleApplyDefaultProxy(ProxyInfo proxy) {
        if (proxy != null && TextUtils.isEmpty(proxy.getHost()) && Uri.EMPTY.equals(proxy.getPacFileUrl())) {
            proxy = null;
        }
        this.mProxyTracker.setDefaultProxy(proxy);
    }

    private void updateProxy(LinkProperties newLp, LinkProperties oldLp) {
        ProxyInfo newProxyInfo = newLp == null ? null : newLp.getHttpProxy();
        ProxyInfo oldProxyInfo = oldLp != null ? oldLp.getHttpProxy() : null;
        if (!ProxyTracker.proxyInfoEqual(newProxyInfo, oldProxyInfo)) {
            this.mProxyTracker.sendProxyBroadcast();
        }
    }

    private static class SettingsObserver extends ContentObserver {
        private final Context mContext;
        private final Handler mHandler;
        private final HashMap<Uri, Integer> mUriEventMap;

        SettingsObserver(Context context, Handler handler) {
            super(null);
            this.mUriEventMap = new HashMap<>();
            this.mContext = context;
            this.mHandler = handler;
        }

        void observe(Uri uri, int what) {
            this.mUriEventMap.put(uri, Integer.valueOf(what));
            ContentResolver resolver = this.mContext.getContentResolver();
            resolver.registerContentObserver(uri, false, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            Slog.wtf(ConnectivityService.TAG, "Should never be reached.");
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            Integer what = this.mUriEventMap.get(uri);
            if (what != null) {
                this.mHandler.obtainMessage(what.intValue()).sendToTarget();
                return;
            }
            ConnectivityService.loge("No matching event to send for URI=" + uri);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void log(String s) {
        Slog.d(TAG, s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loge(String s) {
        Slog.e(TAG, s);
    }

    private static void loge(String s, Throwable t) {
        Slog.e(TAG, s, t);
    }

    public boolean prepareVpn(String oldPackage, String newPackage, int userId) {
        enforceCrossUserPermission(userId);
        synchronized (this.mVpns) {
            throwIfLockdownEnabled();
            Vpn vpn = this.mVpns.get(userId);
            if (vpn != null) {
                return vpn.prepare(oldPackage, newPackage, 1);
            }
            return false;
        }
    }

    public void setVpnPackageAuthorization(String packageName, int userId, int vpnType) {
        enforceCrossUserPermission(userId);
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(userId);
            if (vpn != null) {
                vpn.setPackageAuthorization(packageName, vpnType);
            }
        }
    }

    public ParcelFileDescriptor establishVpn(VpnConfig config) {
        ParcelFileDescriptor parcelFileDescriptorEstablish;
        int user = UserHandle.getUserId(Binder.getCallingUid());
        synchronized (this.mVpns) {
            throwIfLockdownEnabled();
            parcelFileDescriptorEstablish = this.mVpns.get(user).establish(config);
        }
        return parcelFileDescriptorEstablish;
    }

    public boolean provisionVpnProfile(VpnProfile profile, String packageName) {
        boolean zProvisionVpnProfile;
        int user = UserHandle.getUserId(Binder.getCallingUid());
        synchronized (this.mVpns) {
            zProvisionVpnProfile = this.mVpns.get(user).provisionVpnProfile(packageName, profile, this.mKeyStore);
        }
        return zProvisionVpnProfile;
    }

    public void deleteVpnProfile(String packageName) {
        int user = UserHandle.getUserId(Binder.getCallingUid());
        synchronized (this.mVpns) {
            this.mVpns.get(user).deleteVpnProfile(packageName, this.mKeyStore);
        }
    }

    private int getAppUid(String app, int userId) {
        PackageManager pm = this.mContext.getPackageManager();
        long token = Binder.clearCallingIdentity();
        try {
            return pm.getPackageUidAsUser(app, userId);
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private void verifyCallingUidAndPackage(String packageName, int callingUid) {
        int userId = UserHandle.getUserId(callingUid);
        if (getAppUid(packageName, userId) != callingUid) {
            throw new SecurityException(packageName + " does not belong to uid " + callingUid);
        }
    }

    public void startVpnProfile(String packageName) {
        int callingUid = Binder.getCallingUid();
        verifyCallingUidAndPackage(packageName, callingUid);
        int user = UserHandle.getUserId(callingUid);
        synchronized (this.mVpns) {
            throwIfLockdownEnabled();
            this.mVpns.get(user).startVpnProfile(packageName, this.mKeyStore);
        }
    }

    public void stopVpnProfile(String packageName) {
        int callingUid = Binder.getCallingUid();
        verifyCallingUidAndPackage(packageName, callingUid);
        int user = UserHandle.getUserId(callingUid);
        synchronized (this.mVpns) {
            this.mVpns.get(user).stopVpnProfile(packageName);
        }
    }

    public void startLegacyVpn(VpnProfile profile) {
        int user = UserHandle.getUserId(Binder.getCallingUid());
        LinkProperties egress = getActiveLinkProperties();
        if (egress == null) {
            throw new IllegalStateException("Missing active network connection");
        }
        synchronized (this.mVpns) {
            throwIfLockdownEnabled();
            this.mVpns.get(user).startLegacyVpn(profile, this.mKeyStore, egress);
        }
    }

    public LegacyVpnInfo getLegacyVpnInfo(int userId) {
        LegacyVpnInfo legacyVpnInfo;
        enforceCrossUserPermission(userId);
        synchronized (this.mVpns) {
            legacyVpnInfo = this.mVpns.get(userId).getLegacyVpnInfo();
        }
        return legacyVpnInfo;
    }

    private VpnInfo[] getAllVpnInfo() {
        ensureRunningOnConnectivityServiceThread();
        synchronized (this.mVpns) {
            if (this.mLockdownEnabled) {
                return new VpnInfo[0];
            }
            List<VpnInfo> infoList = new ArrayList<>();
            for (int i = 0; i < this.mVpns.size(); i++) {
                VpnInfo info = createVpnInfo(this.mVpns.valueAt(i));
                if (info != null) {
                    infoList.add(info);
                }
            }
            int i2 = infoList.size();
            return (VpnInfo[]) infoList.toArray(new VpnInfo[i2]);
        }
    }

    private VpnInfo createVpnInfo(Vpn vpn) {
        NetworkAgentInfo defaultNai;
        VpnInfo info = vpn.getVpnInfo();
        if (info == null) {
            return null;
        }
        Network[] underlyingNetworks = vpn.getUnderlyingNetworks();
        if (underlyingNetworks == null && (defaultNai = getDefaultNetwork()) != null) {
            underlyingNetworks = new Network[]{defaultNai.network};
        }
        if (underlyingNetworks != null && underlyingNetworks.length > 0) {
            List<String> interfaces = new ArrayList<>();
            for (Network network : underlyingNetworks) {
                LinkProperties lp = getLinkProperties(network);
                if (lp != null) {
                    for (String iface : lp.getAllInterfaceNames()) {
                        if (!TextUtils.isEmpty(iface)) {
                            interfaces.add(iface);
                        }
                    }
                }
            }
            if (!interfaces.isEmpty()) {
                info.underlyingIfaces = (String[]) interfaces.toArray(new String[interfaces.size()]);
            }
        }
        if (info.underlyingIfaces == null) {
            return null;
        }
        return info;
    }

    public VpnConfig getVpnConfig(int userId) {
        enforceCrossUserPermission(userId);
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(userId);
            if (vpn != null) {
                return vpn.getVpnConfig();
            }
            return null;
        }
    }

    private void updateAllVpnsCapabilities() {
        Network defaultNetwork = getNetwork(getDefaultNetwork());
        synchronized (this.mVpns) {
            for (int i = 0; i < this.mVpns.size(); i++) {
                Vpn vpn = this.mVpns.valueAt(i);
                NetworkCapabilities nc = vpn.updateCapabilities(defaultNetwork);
                updateVpnCapabilities(vpn, nc);
            }
        }
    }

    private void updateVpnCapabilities(Vpn vpn, NetworkCapabilities nc) {
        ensureRunningOnConnectivityServiceThread();
        NetworkAgentInfo vpnNai = getNetworkAgentInfoForNetId(vpn.getNetId());
        if (vpnNai == null || nc == null) {
            return;
        }
        updateCapabilities(vpnNai.getCurrentScore(), vpnNai, nc);
    }

    public boolean updateLockdownVpn() {
        if (Binder.getCallingUid() != 1000) {
            Slog.w(TAG, "Lockdown VPN only available to AID_SYSTEM");
            return false;
        }
        synchronized (this.mVpns) {
            boolean zIsEnabled = LockdownVpnTracker.isEnabled();
            this.mLockdownEnabled = zIsEnabled;
            if (zIsEnabled) {
                byte[] profileTag = this.mKeyStore.get("LOCKDOWN_VPN");
                if (profileTag == null) {
                    Slog.e(TAG, "Lockdown VPN configured but cannot be read from keystore");
                    return false;
                }
                String profileName = new String(profileTag);
                VpnProfile profile = VpnProfile.decode(profileName, this.mKeyStore.get("VPN_" + profileName));
                if (profile == null) {
                    Slog.e(TAG, "Lockdown VPN configured invalid profile " + profileName);
                    setLockdownTracker(null);
                    return true;
                }
                int user = UserHandle.getUserId(Binder.getCallingUid());
                Vpn vpn = this.mVpns.get(user);
                if (vpn == null) {
                    Slog.w(TAG, "VPN for user " + user + " not ready yet. Skipping lockdown");
                    return false;
                }
                setLockdownTracker(new LockdownVpnTracker(this.mContext, this, this.mHandler, vpn, profile));
            } else {
                setLockdownTracker(null);
            }
            return true;
        }
    }

    private void setLockdownTracker(LockdownVpnTracker tracker) {
        LockdownVpnTracker existing = this.mLockdownTracker;
        this.mLockdownTracker = null;
        if (existing != null) {
            existing.shutdown();
        }
        if (tracker != null) {
            this.mLockdownTracker = tracker;
            tracker.init();
        }
    }

    private void throwIfLockdownEnabled() {
        if (this.mLockdownEnabled) {
            throw new IllegalStateException("Unavailable in lockdown mode");
        }
    }

    private boolean startAlwaysOnVpn(int userId) {
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(userId);
            if (vpn == null) {
                Slog.wtf(TAG, "User " + userId + " has no Vpn configuration");
                return false;
            }
            return vpn.startAlwaysOnVpn(this.mKeyStore);
        }
    }

    public boolean isAlwaysOnVpnPackageSupported(int userId, String packageName) {
        enforceSettingsPermission();
        enforceCrossUserPermission(userId);
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(userId);
            if (vpn == null) {
                Slog.w(TAG, "User " + userId + " has no Vpn configuration");
                return false;
            }
            return vpn.isAlwaysOnPackageSupported(packageName, this.mKeyStore);
        }
    }

    public boolean setAlwaysOnVpnPackage(int userId, String packageName, boolean lockdown, List<String> lockdownWhitelist) {
        enforceControlAlwaysOnVpnPermission();
        enforceCrossUserPermission(userId);
        synchronized (this.mVpns) {
            if (LockdownVpnTracker.isEnabled()) {
                return false;
            }
            Vpn vpn = this.mVpns.get(userId);
            if (vpn == null) {
                Slog.w(TAG, "User " + userId + " has no Vpn configuration");
                return false;
            }
            if (!vpn.setAlwaysOnPackage(packageName, lockdown, lockdownWhitelist, this.mKeyStore)) {
                return false;
            }
            if (!startAlwaysOnVpn(userId)) {
                vpn.setAlwaysOnPackage(null, false, null, this.mKeyStore);
                return false;
            }
            return true;
        }
    }

    public String getAlwaysOnVpnPackage(int userId) {
        enforceControlAlwaysOnVpnPermission();
        enforceCrossUserPermission(userId);
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(userId);
            if (vpn == null) {
                Slog.w(TAG, "User " + userId + " has no Vpn configuration");
                return null;
            }
            return vpn.getAlwaysOnPackage();
        }
    }

    public boolean isVpnLockdownEnabled(int userId) {
        enforceControlAlwaysOnVpnPermission();
        enforceCrossUserPermission(userId);
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(userId);
            if (vpn == null) {
                Slog.w(TAG, "User " + userId + " has no Vpn configuration");
                return false;
            }
            return vpn.getLockdown();
        }
    }

    public List<String> getVpnLockdownWhitelist(int userId) {
        enforceControlAlwaysOnVpnPermission();
        enforceCrossUserPermission(userId);
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(userId);
            if (vpn == null) {
                Slog.w(TAG, "User " + userId + " has no Vpn configuration");
                return null;
            }
            return vpn.getLockdownWhitelist();
        }
    }

    public int checkMobileProvisioning(int suggestedTimeOutMs) {
        return -1;
    }

    private String getProvisioningUrlBaseFromFile() {
        String mcc;
        String mnc;
        Configuration config = this.mContext.getResources().getConfiguration();
        try {
            FileReader fileReader = new FileReader(this.mProvisioningUrlFile);
            try {
                XmlPullParser parser = Xml.newPullParser();
                parser.setInput(fileReader);
                XmlUtils.beginDocument(parser, TAG_PROVISIONING_URLS);
                while (true) {
                    XmlUtils.nextElement(parser);
                    String element = parser.getName();
                    if (element != null) {
                        if (element.equals(TAG_PROVISIONING_URL) && (mcc = parser.getAttributeValue(null, ATTR_MCC)) != null) {
                            try {
                                if (Integer.parseInt(mcc) == config.mcc && (mnc = parser.getAttributeValue(null, ATTR_MNC)) != null && Integer.parseInt(mnc) == config.mnc) {
                                    parser.next();
                                    if (parser.getEventType() == 4) {
                                        String text = parser.getText();
                                        fileReader.close();
                                        return text;
                                    }
                                    continue;
                                }
                            } catch (NumberFormatException e) {
                                loge("NumberFormatException in getProvisioningUrlBaseFromFile: " + e);
                            }
                        }
                    } else {
                        fileReader.close();
                        return null;
                    }
                    loge("Carrier Provisioning Urls file not found");
                    return null;
                }
            } catch (Throwable th) {
                try {
                    fileReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (FileNotFoundException e2) {
            loge("Carrier Provisioning Urls file not found");
        } catch (IOException e3) {
            loge("I/O exception reading Carrier Provisioning Urls file: " + e3);
        } catch (XmlPullParserException e4) {
            loge("Xml parser exception reading Carrier Provisioning Urls file: " + e4);
        }
    }

    public String getMobileProvisioningUrl() {
        enforceSettingsPermission();
        String url = getProvisioningUrlBaseFromFile();
        if (TextUtils.isEmpty(url)) {
            url = this.mContext.getResources().getString(R.string.key_warning_state);
            log("getMobileProvisioningUrl: mobile_provisioining_url from resource =" + url);
        } else {
            log("getMobileProvisioningUrl: mobile_provisioning_url from File =" + url);
        }
        if (!TextUtils.isEmpty(url)) {
            String phoneNumber = this.mTelephonyManager.getLine1Number();
            if (TextUtils.isEmpty(phoneNumber)) {
                phoneNumber = "0000000000";
            }
            return String.format(url, this.mTelephonyManager.getSimSerialNumber(), this.mTelephonyManager.getDeviceId(), phoneNumber);
        }
        return url;
    }

    public void setProvisioningNotificationVisible(boolean visible, int networkType, String action) {
        enforceSettingsPermission();
        if (!ConnectivityManager.isNetworkTypeValid(networkType)) {
            return;
        }
        long ident = Binder.clearCallingIdentity();
        int id = networkType + 1 + 64512;
        try {
            this.mNotifier.setProvNotificationVisible(visible, id, action);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public void setAirplaneMode(boolean enable) {
        enforceAirplaneModePermission();
        long ident = Binder.clearCallingIdentity();
        try {
            ContentResolver cr = this.mContext.getContentResolver();
            Settings.Global.putInt(cr, "airplane_mode_on", encodeBool(enable));
            Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
            intent.putExtra("state", enable);
            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserStart(int userId) {
        synchronized (this.mVpns) {
            Vpn userVpn = this.mVpns.get(userId);
            if (userVpn != null) {
                loge("Starting user already has a VPN");
                return;
            }
            Vpn userVpn2 = new Vpn(this.mHandler.getLooper(), this.mContext, this.mNMS, userId, this.mKeyStore);
            this.mVpns.put(userId, userVpn2);
            if (this.mUserManager.getUserInfo(userId).isPrimary() && LockdownVpnTracker.isEnabled()) {
                updateLockdownVpn();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserStop(int userId) {
        synchronized (this.mVpns) {
            Vpn userVpn = this.mVpns.get(userId);
            if (userVpn == null) {
                loge("Stopped user has no VPN");
            } else {
                userVpn.onUserStopped();
                this.mVpns.delete(userId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserAdded(int userId) {
        this.mPermissionMonitor.onUserAdded(userId);
        Network defaultNetwork = getNetwork(getDefaultNetwork());
        synchronized (this.mVpns) {
            int vpnsSize = this.mVpns.size();
            for (int i = 0; i < vpnsSize; i++) {
                Vpn vpn = this.mVpns.valueAt(i);
                vpn.onUserAdded(userId);
                NetworkCapabilities nc = vpn.updateCapabilities(defaultNetwork);
                updateVpnCapabilities(vpn, nc);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserRemoved(int userId) {
        this.mPermissionMonitor.onUserRemoved(userId);
        Network defaultNetwork = getNetwork(getDefaultNetwork());
        synchronized (this.mVpns) {
            int vpnsSize = this.mVpns.size();
            for (int i = 0; i < vpnsSize; i++) {
                Vpn vpn = this.mVpns.valueAt(i);
                vpn.onUserRemoved(userId);
                NetworkCapabilities nc = vpn.updateCapabilities(defaultNetwork);
                updateVpnCapabilities(vpn, nc);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPackageAdded(String packageName, int uid) {
        if (TextUtils.isEmpty(packageName) || uid < 0) {
            Slog.wtf(TAG, "Invalid package in onPackageAdded: " + packageName + " | " + uid);
            return;
        }
        this.mPermissionMonitor.onPackageAdded(packageName, uid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPackageReplaced(String packageName, int uid) {
        if (TextUtils.isEmpty(packageName) || uid < 0) {
            Slog.wtf(TAG, "Invalid package in onPackageReplaced: " + packageName + " | " + uid);
            return;
        }
        int userId = UserHandle.getUserId(uid);
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(userId);
            if (vpn == null) {
                return;
            }
            if (TextUtils.equals(vpn.getAlwaysOnPackage(), packageName)) {
                Slog.d(TAG, "Restarting always-on VPN package " + packageName + " for user " + userId);
                vpn.startAlwaysOnVpn(this.mKeyStore);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPackageRemoved(String packageName, int uid, boolean isReplacing) {
        if (TextUtils.isEmpty(packageName) || uid < 0) {
            Slog.wtf(TAG, "Invalid package in onPackageRemoved: " + packageName + " | " + uid);
            return;
        }
        this.mPermissionMonitor.onPackageRemoved(uid);
        int userId = UserHandle.getUserId(uid);
        synchronized (this.mVpns) {
            Vpn vpn = this.mVpns.get(userId);
            if (vpn == null) {
                return;
            }
            if (TextUtils.equals(vpn.getAlwaysOnPackage(), packageName) && !isReplacing) {
                Slog.d(TAG, "Removing always-on VPN package " + packageName + " for user " + userId);
                vpn.setAlwaysOnPackage(null, false, null, this.mKeyStore);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserUnlocked(int userId) {
        synchronized (this.mVpns) {
            if (this.mUserManager.getUserInfo(userId).isPrimary() && LockdownVpnTracker.isEnabled()) {
                updateLockdownVpn();
            } else {
                startAlwaysOnVpn(userId);
            }
        }
    }

    private static class NetworkProviderInfo {
        private final AsyncChannel mAsyncChannel;
        private final IBinder.DeathRecipient mDeathRecipient;
        public final Messenger messenger;
        public final String name;
        public final int providerId;

        NetworkProviderInfo(String name, Messenger messenger, AsyncChannel asyncChannel, int providerId, IBinder.DeathRecipient deathRecipient) {
            this.name = name;
            this.messenger = messenger;
            this.providerId = providerId;
            this.mAsyncChannel = asyncChannel;
            this.mDeathRecipient = deathRecipient;
            if ((asyncChannel == null) == (this.mDeathRecipient == null)) {
                throw new AssertionError("Must pass exactly one of asyncChannel or deathRecipient");
            }
        }

        boolean isLegacyNetworkFactory() {
            return this.mAsyncChannel != null;
        }

        void sendMessageToNetworkProvider(int what, int arg1, int arg2, Object obj) {
            try {
                this.messenger.send(Message.obtain(null, what, arg1, arg2, obj));
            } catch (RemoteException e) {
            }
        }

        void requestNetwork(NetworkRequest request, int score, int servingProviderId) {
            if (isLegacyNetworkFactory()) {
                this.mAsyncChannel.sendMessage(1, score, servingProviderId, request);
            } else {
                sendMessageToNetworkProvider(1, score, servingProviderId, request);
            }
        }

        void cancelRequest(NetworkRequest request) {
            if (isLegacyNetworkFactory()) {
                this.mAsyncChannel.sendMessage(2, request);
            } else {
                sendMessageToNetworkProvider(2, 0, 0, request);
            }
        }

        void connect(Context context, Handler handler) {
            if (isLegacyNetworkFactory()) {
                this.mAsyncChannel.connect(context, handler, this.messenger);
                return;
            }
            try {
                this.messenger.getBinder().linkToDeath(this.mDeathRecipient, 0);
            } catch (RemoteException e) {
                this.mDeathRecipient.binderDied();
            }
        }

        void completeConnection() {
            if (isLegacyNetworkFactory()) {
                this.mAsyncChannel.sendMessage(69633);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensureNetworkRequestHasType(NetworkRequest request) {
        if (request.type == NetworkRequest.Type.NONE) {
            throw new IllegalArgumentException("All NetworkRequests in ConnectivityService must have a type");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class NetworkRequestInfo implements IBinder.DeathRecipient {
        private final IBinder mBinder;
        final PendingIntent mPendingIntent;
        boolean mPendingIntentSent;
        final int mPid;
        NetworkAgentInfo mSatisfier;
        final int mUid;
        final Messenger messenger;
        final NetworkRequest request;

        NetworkRequestInfo(NetworkRequest r, PendingIntent pi) {
            this.request = r;
            ConnectivityService.this.ensureNetworkRequestHasType(r);
            this.mPendingIntent = pi;
            this.messenger = null;
            this.mBinder = null;
            this.mPid = Binder.getCallingPid();
            this.mUid = Binder.getCallingUid();
            enforceRequestCountLimit();
        }

        NetworkRequestInfo(Messenger m, NetworkRequest r, IBinder binder) {
            this.messenger = m;
            this.request = r;
            ConnectivityService.this.ensureNetworkRequestHasType(r);
            this.mBinder = binder;
            this.mPid = Binder.getCallingPid();
            this.mUid = Binder.getCallingUid();
            this.mPendingIntent = null;
            enforceRequestCountLimit();
            try {
                this.mBinder.linkToDeath(this, 0);
            } catch (RemoteException e) {
                binderDied();
            }
        }

        NetworkRequestInfo(ConnectivityService connectivityService, NetworkRequest r) {
            this(r, null);
        }

        private void enforceRequestCountLimit() {
            synchronized (ConnectivityService.this.mUidToNetworkRequestCount) {
                int networkRequests = ConnectivityService.this.mUidToNetworkRequestCount.get(this.mUid, 0) + 1;
                if (networkRequests < 100) {
                    ConnectivityService.this.mUidToNetworkRequestCount.put(this.mUid, networkRequests);
                } else {
                    throw new ServiceSpecificException(1);
                }
            }
        }

        void unlinkDeathRecipient() {
            IBinder iBinder = this.mBinder;
            if (iBinder != null) {
                iBinder.unlinkToDeath(this, 0);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ConnectivityService.log("ConnectivityService NetworkRequestInfo binderDied(" + this.request + ", " + this.mBinder + ")");
            ConnectivityService.this.releaseNetworkRequest(this.request);
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("uid/pid:");
            sb.append(this.mUid);
            sb.append(SliceClientPermissions.SliceAuthority.DELIMITER);
            sb.append(this.mPid);
            sb.append(" ");
            sb.append(this.request);
            if (this.mPendingIntent == null) {
                str = "";
            } else {
                str = " to trigger " + this.mPendingIntent;
            }
            sb.append(str);
            return sb.toString();
        }
    }

    private void ensureRequestableCapabilities(NetworkCapabilities networkCapabilities) {
        String badCapability = networkCapabilities.describeFirstNonRequestableCapability();
        if (badCapability != null) {
            throw new IllegalArgumentException("Cannot request network with " + badCapability);
        }
    }

    private void ensureSufficientPermissionsForRequest(NetworkCapabilities nc, int callerPid, int callerUid, String callerPackageName) {
        if (nc.getSsid() != null && !checkSettingsPermission(callerPid, callerUid)) {
            throw new SecurityException("Insufficient permissions to request a specific SSID");
        }
        if (nc.hasSignalStrength() && !checkNetworkSignalStrengthWakeupPermission(callerPid, callerUid)) {
            throw new SecurityException("Insufficient permissions to request a specific signal strength");
        }
        this.mAppOpsManager.checkPackage(callerUid, callerPackageName);
    }

    private ArrayList<Integer> getSignalStrengthThresholds(NetworkAgentInfo nai) {
        SortedSet<Integer> thresholds = new TreeSet<>();
        synchronized (nai) {
            for (NetworkRequestInfo nri : this.mNetworkRequests.values()) {
                if (nri.request.networkCapabilities.hasSignalStrength() && nai.satisfiesImmutableCapabilitiesOf(nri.request)) {
                    thresholds.add(Integer.valueOf(nri.request.networkCapabilities.getSignalStrength()));
                }
            }
        }
        return new ArrayList<>(thresholds);
    }

    private void updateSignalStrengthThresholds(NetworkAgentInfo nai, String reason, NetworkRequest request) {
        String detail;
        ArrayList<Integer> thresholdsArray = getSignalStrengthThresholds(nai);
        Bundle thresholds = new Bundle();
        thresholds.putIntegerArrayList("thresholds", thresholdsArray);
        if (VDBG || !"CONNECT".equals(reason)) {
            if (request != null && request.networkCapabilities.hasSignalStrength()) {
                detail = reason + " " + request.networkCapabilities.getSignalStrength();
            } else {
                detail = reason;
            }
            log(String.format("updateSignalStrengthThresholds: %s, sending %s to %s", detail, Arrays.toString(thresholdsArray.toArray()), nai.toShortString()));
        }
        nai.asyncChannel.sendMessage(528398, 0, 0, thresholds);
    }

    private void ensureValidNetworkSpecifier(NetworkCapabilities nc) {
        NetworkSpecifier ns;
        if (nc == null || (ns = nc.getNetworkSpecifier()) == null) {
            return;
        }
        MatchAllNetworkSpecifier.checkNotMatchAllNetworkSpecifier(ns);
    }

    private void ensureValid(NetworkCapabilities nc) {
        ensureValidNetworkSpecifier(nc);
        if (nc.isPrivateDnsBroken()) {
            throw new IllegalArgumentException("Can't request broken private DNS");
        }
    }

    private boolean checkUnsupportedStartingFrom(int version, String callingPackageName) {
        PackageManager pm = this.mContext.getPackageManager();
        int userId = UserHandle.getCallingUserId();
        try {
            int callingVersion = pm.getApplicationInfoAsUser(callingPackageName, 0, userId).targetSdkVersion;
            if (callingVersion < version) {
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }

    public NetworkRequest requestNetwork(NetworkCapabilities networkCapabilities, Messenger messenger, int timeoutMs, IBinder binder, int legacyType, String callingPackageName) {
        NetworkRequest.Type type;
        NetworkCapabilities networkCapabilities2;
        if (legacyType != -1 && !checkNetworkStackPermission() && checkUnsupportedStartingFrom(23, callingPackageName)) {
            throw new SecurityException("Insufficient permissions to specify legacy type");
        }
        int callingUid = Binder.getCallingUid();
        if (networkCapabilities == null) {
            type = NetworkRequest.Type.TRACK_DEFAULT;
        } else {
            type = NetworkRequest.Type.REQUEST;
        }
        if (type == NetworkRequest.Type.TRACK_DEFAULT) {
            networkCapabilities2 = createDefaultNetworkCapabilitiesForUid(callingUid);
            enforceAccessPermission();
        } else {
            networkCapabilities2 = new NetworkCapabilities(networkCapabilities);
            enforceNetworkRequestPermissions(networkCapabilities2);
            enforceMeteredApnPolicy(networkCapabilities2);
        }
        ensureRequestableCapabilities(networkCapabilities2);
        ensureSufficientPermissionsForRequest(networkCapabilities2, Binder.getCallingPid(), callingUid, callingPackageName);
        restrictRequestUidsForCallerAndSetRequestorInfo(networkCapabilities2, callingUid, callingPackageName);
        if (timeoutMs < 0) {
            throw new IllegalArgumentException("Bad timeout specified");
        }
        ensureValid(networkCapabilities2);
        NetworkRequest networkRequest = new NetworkRequest(networkCapabilities2, legacyType, nextNetworkRequestId(), type);
        NetworkRequestInfo nri = new NetworkRequestInfo(messenger, networkRequest, binder);
        log("requestNetwork for " + nri);
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(19, nri));
        if (timeoutMs > 0) {
            InternalHandler internalHandler2 = this.mHandler;
            internalHandler2.sendMessageDelayed(internalHandler2.obtainMessage(20, nri), timeoutMs);
        }
        return networkRequest;
    }

    private void enforceNetworkRequestPermissions(NetworkCapabilities networkCapabilities) {
        if (!networkCapabilities.hasCapability(13)) {
            enforceConnectivityRestrictedNetworksPermission();
        } else {
            enforceChangePermission();
        }
    }

    public boolean requestBandwidthUpdate(Network network) {
        NetworkAgentInfo nai;
        enforceAccessPermission();
        if (network == null) {
            return false;
        }
        synchronized (this.mNetworkForNetId) {
            nai = this.mNetworkForNetId.get(network.netId);
        }
        if (nai == null) {
            return false;
        }
        nai.asyncChannel.sendMessage(528394);
        synchronized (this.mBandwidthRequests) {
            int uid = Binder.getCallingUid();
            Integer uidReqs = this.mBandwidthRequests.get(uid);
            if (uidReqs == null) {
                uidReqs = 0;
            }
            this.mBandwidthRequests.put(uid, Integer.valueOf(uidReqs.intValue() + 1));
        }
        return true;
    }

    private boolean isSystem(int uid) {
        return uid < 10000;
    }

    private void enforceMeteredApnPolicy(NetworkCapabilities networkCapabilities) {
        int uid = Binder.getCallingUid();
        if (!isSystem(uid) && !networkCapabilities.hasCapability(11) && this.mPolicyManagerInternal.isUidRestrictedOnMeteredNetworks(uid)) {
            networkCapabilities.addCapability(11);
        }
    }

    public NetworkRequest pendingRequestForNetwork(NetworkCapabilities networkCapabilities, PendingIntent operation, String callingPackageName) {
        Objects.requireNonNull(operation, "PendingIntent cannot be null.");
        int callingUid = Binder.getCallingUid();
        NetworkCapabilities networkCapabilities2 = new NetworkCapabilities(networkCapabilities);
        enforceNetworkRequestPermissions(networkCapabilities2);
        enforceMeteredApnPolicy(networkCapabilities2);
        ensureRequestableCapabilities(networkCapabilities2);
        ensureSufficientPermissionsForRequest(networkCapabilities2, Binder.getCallingPid(), callingUid, callingPackageName);
        ensureValidNetworkSpecifier(networkCapabilities2);
        restrictRequestUidsForCallerAndSetRequestorInfo(networkCapabilities2, callingUid, callingPackageName);
        NetworkRequest networkRequest = new NetworkRequest(networkCapabilities2, -1, nextNetworkRequestId(), NetworkRequest.Type.REQUEST);
        NetworkRequestInfo nri = new NetworkRequestInfo(networkRequest, operation);
        log("pendingRequest for " + nri);
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(26, nri));
        return networkRequest;
    }

    private void releasePendingNetworkRequestWithDelay(PendingIntent operation) {
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessageDelayed(internalHandler.obtainMessage(27, getCallingUid(), 0, operation), this.mReleasePendingIntentDelayMs);
    }

    public void releasePendingNetworkRequest(PendingIntent operation) {
        Objects.requireNonNull(operation, "PendingIntent cannot be null.");
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(27, getCallingUid(), 0, operation));
    }

    private boolean hasWifiNetworkListenPermission(NetworkCapabilities nc) {
        if (nc == null) {
            return false;
        }
        int[] transportTypes = nc.getTransportTypes();
        if (transportTypes.length != 1 || transportTypes[0] != 1) {
            return false;
        }
        try {
            this.mContext.enforceCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE", "ConnectivityService");
            return true;
        } catch (SecurityException e) {
            return false;
        }
    }

    public NetworkRequest listenForNetwork(NetworkCapabilities networkCapabilities, Messenger messenger, IBinder binder, String callingPackageName) {
        int callingUid = Binder.getCallingUid();
        if (!hasWifiNetworkListenPermission(networkCapabilities)) {
            enforceAccessPermission();
        }
        NetworkCapabilities nc = new NetworkCapabilities(networkCapabilities);
        ensureSufficientPermissionsForRequest(networkCapabilities, Binder.getCallingPid(), callingUid, callingPackageName);
        restrictRequestUidsForCallerAndSetRequestorInfo(nc, callingUid, callingPackageName);
        restrictBackgroundRequestForCaller(nc);
        ensureValid(nc);
        NetworkRequest networkRequest = new NetworkRequest(nc, -1, nextNetworkRequestId(), NetworkRequest.Type.LISTEN);
        NetworkRequestInfo nri = new NetworkRequestInfo(messenger, networkRequest, binder);
        if (VDBG) {
            log("listenForNetwork for " + nri);
        }
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(21, nri));
        return networkRequest;
    }

    public void pendingListenForNetwork(NetworkCapabilities networkCapabilities, PendingIntent operation, String callingPackageName) {
        Objects.requireNonNull(operation, "PendingIntent cannot be null.");
        int callingUid = Binder.getCallingUid();
        if (!hasWifiNetworkListenPermission(networkCapabilities)) {
            enforceAccessPermission();
        }
        ensureValid(networkCapabilities);
        ensureSufficientPermissionsForRequest(networkCapabilities, Binder.getCallingPid(), callingUid, callingPackageName);
        NetworkCapabilities nc = new NetworkCapabilities(networkCapabilities);
        restrictRequestUidsForCallerAndSetRequestorInfo(nc, callingUid, callingPackageName);
        NetworkRequest networkRequest = new NetworkRequest(nc, -1, nextNetworkRequestId(), NetworkRequest.Type.LISTEN);
        NetworkRequestInfo nri = new NetworkRequestInfo(networkRequest, operation);
        if (VDBG) {
            log("pendingListenForNetwork for " + nri);
        }
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(21, nri));
    }

    public final int nextNetworkProviderId() {
        return this.mNextNetworkProviderId.getAndIncrement();
    }

    public void releaseNetworkRequest(NetworkRequest networkRequest) {
        ensureNetworkRequestHasType(networkRequest);
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(22, getCallingUid(), 0, networkRequest));
    }

    public int registerNetworkFactory(Messenger messenger, String name) {
        enforceNetworkFactoryPermission();
        NetworkProviderInfo npi = new NetworkProviderInfo(name, messenger, new AsyncChannel(), nextNetworkProviderId(), null);
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(17, npi));
        return npi.providerId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRegisterNetworkProvider(NetworkProviderInfo npi) {
        if (this.mNetworkProviderInfos.containsKey(npi.messenger)) {
            Slog.e(TAG, "Attempt to register existing NetworkProviderInfo " + this.mNetworkProviderInfos.get(npi.messenger).name);
            return;
        }
        log("Got NetworkProvider Messenger for " + npi.name);
        this.mNetworkProviderInfos.put(npi.messenger, npi);
        npi.connect(this.mContext, this.mTrackerHandler);
        if (!npi.isLegacyNetworkFactory()) {
            sendAllRequestsToProvider(npi);
        }
    }

    public int registerNetworkProvider(final Messenger messenger, String name) {
        enforceNetworkFactoryOrSettingsPermission();
        NetworkProviderInfo npi = new NetworkProviderInfo(name, messenger, null, nextNetworkProviderId(), new IBinder.DeathRecipient() { // from class: com.android.server.-$$Lambda$ConnectivityService$4mdI2BrJnxGXPEiesjVbm4BY2so
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                this.f$0.lambda$registerNetworkProvider$6$ConnectivityService(messenger);
            }
        });
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(17, npi));
        return npi.providerId;
    }

    /* JADX INFO: renamed from: unregisterNetworkProvider, reason: merged with bridge method [inline-methods] */
    public void lambda$registerNetworkProvider$6$ConnectivityService(Messenger messenger) {
        enforceNetworkFactoryOrSettingsPermission();
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(23, messenger));
    }

    public void unregisterNetworkFactory(Messenger messenger) {
        lambda$registerNetworkProvider$6$ConnectivityService(messenger);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUnregisterNetworkProvider(Messenger messenger) {
        NetworkProviderInfo npi = this.mNetworkProviderInfos.remove(messenger);
        if (npi == null) {
            loge("Failed to find Messenger in unregisterNetworkProvider");
            return;
        }
        log("unregisterNetworkProvider for " + npi.name);
    }

    public void declareNetworkRequestUnfulfillable(final NetworkRequest request) {
        if (request.hasTransport(7)) {
            enforceNetworkFactoryOrTestNetworksPermission();
        } else {
            enforceNetworkFactoryPermission();
        }
        this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$ConnectivityService$SS5YUaesQHufWj1T0I5sKoDFFWY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$declareNetworkRequestUnfulfillable$7$ConnectivityService(request);
            }
        });
    }

    public /* synthetic */ void lambda$declareNetworkRequestUnfulfillable$7$ConnectivityService(NetworkRequest request) {
        handleReleaseNetworkRequest(request, Binder.getCallingUid(), true);
    }

    private NetworkAgentInfo getDefaultNetwork() {
        return this.mDefaultNetworkNai;
    }

    private Network getNetwork(NetworkAgentInfo nai) {
        if (nai != null) {
            return nai.network;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensureRunningOnConnectivityServiceThread() {
        if (this.mHandler.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Not running on ConnectivityService thread: " + Thread.currentThread().getName());
        }
    }

    protected boolean isDefaultNetwork(NetworkAgentInfo nai) {
        return nai == getDefaultNetwork();
    }

    private boolean isDefaultRequest(NetworkRequestInfo nri) {
        return nri.request.requestId == this.mDefaultRequest.requestId;
    }

    public Network registerNetworkAgent(Messenger messenger, NetworkInfo networkInfo, LinkProperties linkProperties, NetworkCapabilities networkCapabilities, int currentScore, NetworkAgentConfig networkAgentConfig) {
        return registerNetworkAgent(messenger, networkInfo, linkProperties, networkCapabilities, currentScore, networkAgentConfig, -1);
    }

    public Network registerNetworkAgent(Messenger messenger, NetworkInfo networkInfo, LinkProperties linkProperties, NetworkCapabilities networkCapabilities, int currentScore, NetworkAgentConfig networkAgentConfig, int providerId) {
        NetworkCapabilities networkCapabilities2;
        if (networkCapabilities.hasTransport(7)) {
            enforceAnyPermissionOf("android.permission.MANAGE_TEST_NETWORKS");
            NetworkCapabilities networkCapabilities3 = new NetworkCapabilities(networkCapabilities);
            networkCapabilities3.restrictCapabilitesForTestNetwork(Binder.getCallingUid());
            networkCapabilities2 = networkCapabilities3;
        } else {
            enforceNetworkFactoryPermission();
            networkCapabilities2 = networkCapabilities;
        }
        LinkProperties lp = new LinkProperties(linkProperties);
        NetworkCapabilities nc = new NetworkCapabilities(networkCapabilities2);
        NetworkAgentInfo nai = new NetworkAgentInfo(messenger, new AsyncChannel(), new Network(this.mNetIdManager.reserveNetId()), new NetworkInfo(networkInfo), lp, nc, currentScore, this.mContext, this.mTrackerHandler, new NetworkAgentConfig(networkAgentConfig), this, this.mNetd, this.mDnsResolver, this.mNMS, providerId, Binder.getCallingUid());
        nai.getAndSetNetworkCapabilities(mixInCapabilities(nai, nc));
        processLinkPropertiesFromAgent(nai, nai.linkProperties);
        String extraInfo = networkInfo.getExtraInfo();
        String name = TextUtils.isEmpty(extraInfo) ? nai.networkCapabilities.getSsid() : extraInfo;
        log("registerNetworkAgent " + nai);
        long token = Binder.clearCallingIdentity();
        try {
            this.mDeps.getNetworkStack().makeNetworkMonitor(nai.network, name, new NetworkMonitorCallbacks(nai));
            return nai.network;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRegisterNetworkAgent(NetworkAgentInfo nai, INetworkMonitor networkMonitor) {
        nai.onNetworkMonitorCreated(networkMonitor);
        if (VDBG) {
            log("Got NetworkAgent Messenger");
        }
        this.mNetworkAgentInfos.put(nai.messenger, nai);
        synchronized (this.mNetworkForNetId) {
            this.mNetworkForNetId.put(nai.network.netId, nai);
        }
        try {
            networkMonitor.start();
        } catch (RemoteException e) {
            e.rethrowAsRuntimeException();
        }
        nai.asyncChannel.connect(this.mContext, this.mTrackerHandler, nai.messenger);
        NetworkInfo networkInfo = nai.networkInfo;
        updateNetworkInfo(nai, networkInfo);
        updateUids(nai, null, nai.networkCapabilities);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processLinkPropertiesFromAgent(NetworkAgentInfo nai, LinkProperties lp) {
        lp.ensureDirectlyConnectedRoutes();
        nai.clatd.setNat64PrefixFromRa(lp.getNat64Prefix());
    }

    private void updateLinkProperties(NetworkAgentInfo networkAgent, LinkProperties newLp, LinkProperties oldLp) {
        int netId = networkAgent.network.netId;
        networkAgent.clatd.fixupLinkProperties(oldLp, newLp);
        updateInterfaces(newLp, oldLp, netId, networkAgent.networkCapabilities, networkAgent.networkInfo.getType());
        updateVpnFiltering(newLp, oldLp, networkAgent);
        updateMtu(newLp, oldLp);
        if (isDefaultNetwork(networkAgent)) {
            updateTcpBufferSizes(newLp.getTcpBufferSizes());
        }
        updateRoutes(newLp, oldLp, netId);
        updateDnses(newLp, oldLp, netId);
        this.mDnsManager.updatePrivateDnsStatus(netId, newLp);
        if (isDefaultNetwork(networkAgent)) {
            handleApplyDefaultProxy(newLp.getHttpProxy());
        } else {
            updateProxy(newLp, oldLp);
        }
        updateWakeOnLan(newLp);
        newLp.setCaptivePortalData(networkAgent.captivePortalData);
        if (!Objects.equals(newLp, oldLp)) {
            synchronized (networkAgent) {
                networkAgent.linkProperties = newLp;
            }
            networkAgent.clatd.update();
            notifyIfacesChangedForNetworkStats();
            networkAgent.networkMonitor().notifyLinkPropertiesChanged(new LinkProperties(newLp, true));
            if (networkAgent.everConnected) {
                notifyNetworkCallbacks(networkAgent, 524295);
            }
        }
        this.mKeepaliveTracker.handleCheckKeepalivesStillValid(networkAgent);
    }

    private void wakeupModifyInterface(String iface, NetworkCapabilities caps, boolean add) {
        if (!caps.hasTransport(1)) {
            return;
        }
        int mark = this.mContext.getResources().getInteger(R.integer.config_dreamsBatteryLevelMinimumWhenPowered);
        int mask = this.mContext.getResources().getInteger(R.integer.config_dropboxLowPriorityBroadcastRateLimitPeriod);
        if (mark == 0 || mask == 0) {
            return;
        }
        String prefix = "iface:" + iface;
        try {
            if (add) {
                this.mNetd.wakeupAddInterface(iface, prefix, mark, mask);
            } else {
                this.mNetd.wakeupDelInterface(iface, prefix, mark, mask);
            }
        } catch (Exception e) {
            loge("Exception modifying wakeup packet monitoring: " + e);
        }
    }

    private void updateInterfaces(LinkProperties newLp, LinkProperties oldLp, int netId, NetworkCapabilities caps, int legacyType) {
        LinkPropertiesUtils.CompareResult<String> interfaceDiff = new LinkPropertiesUtils.CompareResult<>(oldLp != null ? oldLp.getAllInterfaceNames() : null, newLp != null ? newLp.getAllInterfaceNames() : null);
        if (!interfaceDiff.added.isEmpty()) {
            IBatteryStats bs = this.mDeps.getBatteryStatsService();
            for (String iface : interfaceDiff.added) {
                try {
                    log("Adding iface " + iface + " to network " + netId);
                    this.mNMS.addInterfaceToNetwork(iface, netId);
                    wakeupModifyInterface(iface, caps, true);
                    bs.noteNetworkInterfaceType(iface, legacyType);
                } catch (Exception e) {
                    loge("Exception adding interface: " + e);
                }
            }
        }
        for (String iface2 : interfaceDiff.removed) {
            try {
                log("Removing iface " + iface2 + " from network " + netId);
                wakeupModifyInterface(iface2, caps, false);
                this.mNMS.removeInterfaceFromNetwork(iface2, netId);
            } catch (Exception e2) {
                loge("Exception removing interface: " + e2);
            }
        }
    }

    private RouteInfoParcel convertRouteInfo(RouteInfo route) {
        String nextHop;
        int type = route.getType();
        if (type != 1) {
            if (type == 7) {
                nextHop = INetd.NEXTHOP_UNREACHABLE;
            } else if (type == 9) {
                nextHop = INetd.NEXTHOP_THROW;
            } else {
                nextHop = "";
            }
        } else if (route.hasGateway()) {
            nextHop = route.getGateway().getHostAddress();
        } else {
            nextHop = "";
        }
        RouteInfoParcel rip = new RouteInfoParcel();
        rip.ifName = route.getInterface();
        rip.destination = route.getDestination().toString();
        rip.nextHop = nextHop;
        rip.mtu = route.getMtu();
        return rip;
    }

    private boolean updateRoutes(LinkProperties newLp, LinkProperties oldLp, int netId) {
        LinkPropertiesUtils.CompareOrUpdateResult<RouteInfo.RouteKey, RouteInfo> routeDiff = new LinkPropertiesUtils.CompareOrUpdateResult<>(oldLp != null ? oldLp.getAllRoutes() : null, newLp != null ? newLp.getAllRoutes() : null, new Function() { // from class: com.android.server.-$$Lambda$ConnectivityService$XT2zS9HW9HrYR9HM0MhxU58wtIo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((RouteInfo) obj).getRouteKey();
            }
        });
        for (RouteInfo route : routeDiff.added) {
            if (!route.hasGateway()) {
                if (VDBG || DDBG) {
                    log("Adding Route [" + route + "] to network " + netId);
                }
                try {
                    this.mNetd.networkAddRouteParcel(netId, convertRouteInfo(route));
                } catch (Exception e) {
                    if ((route.getDestination().getAddress() instanceof Inet4Address) || VDBG) {
                        loge("Exception in networkAddRouteParcel for non-gateway: " + e);
                    }
                }
            }
        }
        for (RouteInfo route2 : routeDiff.added) {
            if (route2.hasGateway()) {
                if (VDBG || DDBG) {
                    log("Adding Route [" + route2 + "] to network " + netId);
                }
                try {
                    this.mNetd.networkAddRouteParcel(netId, convertRouteInfo(route2));
                } catch (Exception e2) {
                    if ((route2.getGateway() instanceof Inet4Address) || VDBG) {
                        loge("Exception in networkAddRouteParcel for gateway: " + e2);
                    }
                }
            }
        }
        for (RouteInfo route3 : routeDiff.removed) {
            if (VDBG || DDBG) {
                log("Removing Route [" + route3 + "] from network " + netId);
            }
            try {
                this.mNetd.networkRemoveRouteParcel(netId, convertRouteInfo(route3));
            } catch (Exception e3) {
                loge("Exception in networkRemoveRouteParcel: " + e3);
            }
        }
        for (RouteInfo route4 : routeDiff.updated) {
            if (VDBG || DDBG) {
                log("Updating Route [" + route4 + "] from network " + netId);
            }
            try {
                this.mNetd.networkUpdateRouteParcel(netId, convertRouteInfo(route4));
            } catch (Exception e4) {
                loge("Exception in networkUpdateRouteParcel: " + e4);
            }
        }
        return (routeDiff.added.isEmpty() && routeDiff.removed.isEmpty() && routeDiff.updated.isEmpty()) ? false : true;
    }

    private void updateDnses(LinkProperties newLp, LinkProperties oldLp, int netId) {
        if (oldLp != null && newLp.isIdenticalDnses(oldLp)) {
            return;
        }
        NetworkAgentInfo defaultNai = getDefaultNetwork();
        boolean isDefaultNetwork = defaultNai != null && defaultNai.network.netId == netId;
        Collection<InetAddress> dnses = newLp.getDnsServers();
        log("Setting DNS servers for network " + netId + " to " + dnses);
        try {
            this.mDnsManager.noteDnsServersForNetwork(netId, newLp);
            if (isDefaultNetwork) {
                this.mDnsManager.setDefaultDnsSystemProperties(newLp.getDnsServers());
            }
            this.mDnsManager.flushVmDnsCache();
        } catch (Exception e) {
            loge("Exception in setDnsConfigurationForNetwork: " + e);
        }
    }

    private void updateVpnFiltering(LinkProperties newLp, LinkProperties oldLp, NetworkAgentInfo nai) {
        String oldIface = oldLp != null ? oldLp.getInterfaceName() : null;
        String newIface = newLp != null ? newLp.getInterfaceName() : null;
        boolean wasFiltering = requiresVpnIsolation(nai, nai.networkCapabilities, oldLp);
        boolean needsFiltering = requiresVpnIsolation(nai, nai.networkCapabilities, newLp);
        if (!wasFiltering && !needsFiltering) {
            return;
        }
        if (Objects.equals(oldIface, newIface) && wasFiltering == needsFiltering) {
            return;
        }
        Set<UidRange> ranges = nai.networkCapabilities.getUids();
        int vpnAppUid = nai.networkCapabilities.getOwnerUid();
        if (wasFiltering) {
            this.mPermissionMonitor.onVpnUidRangesRemoved(oldIface, ranges, vpnAppUid);
        }
        if (needsFiltering) {
            this.mPermissionMonitor.onVpnUidRangesAdded(newIface, ranges, vpnAppUid);
        }
    }

    private void updateWakeOnLan(LinkProperties lp) {
        lp.setWakeOnLanSupported(this.mWolSupportedInterfaces.contains(lp.getInterfaceName()));
    }

    private int getNetworkPermission(NetworkCapabilities nc) {
        if (!nc.hasCapability(13)) {
            return 2;
        }
        if (!nc.hasCapability(19)) {
            return 1;
        }
        return 0;
    }

    private void updateNetworkPermissions(NetworkAgentInfo nai, NetworkCapabilities newNc) {
        int oldPermission = getNetworkPermission(nai.networkCapabilities);
        int newPermission = getNetworkPermission(newNc);
        if (oldPermission != newPermission && nai.created && !nai.isVPN()) {
            try {
                this.mNMS.setNetworkPermission(nai.network.netId, newPermission);
            } catch (RemoteException e) {
                loge("Exception in setNetworkPermission: " + e);
            }
        }
    }

    private NetworkCapabilities mixInCapabilities(NetworkAgentInfo nai, NetworkCapabilities nc) {
        if (nai.everConnected && !nai.isVPN() && !nai.networkCapabilities.satisfiedByImmutableNetworkCapabilities(nc)) {
            String diff = nai.networkCapabilities.describeImmutableDifferences(nc);
            if (!TextUtils.isEmpty(diff)) {
                Slog.wtf(TAG, "BUG: " + nai + " lost immutable capabilities:" + diff);
            }
        }
        NetworkCapabilities newNc = new NetworkCapabilities(nc);
        if (nai.lastValidated) {
            newNc.addCapability(16);
        } else {
            newNc.removeCapability(16);
        }
        if (nai.lastCaptivePortalDetected) {
            newNc.addCapability(17);
        } else {
            newNc.removeCapability(17);
        }
        if (nai.isBackgroundNetwork()) {
            newNc.removeCapability(19);
        } else {
            newNc.addCapability(19);
        }
        if (nai.partialConnectivity) {
            newNc.addCapability(24);
        } else {
            newNc.removeCapability(24);
        }
        newNc.setPrivateDnsBroken(nai.networkCapabilities.isPrivateDnsBroken());
        if (!newNc.hasTransport(0)) {
            newNc.addCapability(21);
            newNc.addCapability(18);
        }
        return newNc;
    }

    private void updateNetworkInfoForRoamingAndSuspended(NetworkAgentInfo nai, NetworkCapabilities prevNc, NetworkCapabilities newNc) {
        boolean prevSuspended = !prevNc.hasCapability(21);
        boolean suspended = !newNc.hasCapability(21);
        boolean prevRoaming = !prevNc.hasCapability(18);
        boolean roaming = !newNc.hasCapability(18);
        if (prevSuspended != suspended) {
            notifyNetworkCallbacks(nai, suspended ? 524297 : 524298);
        }
        if (prevSuspended != suspended || prevRoaming != roaming) {
            updateNetworkInfo(nai, nai.networkInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCapabilities(int oldScore, NetworkAgentInfo nai, NetworkCapabilities nc) {
        NetworkCapabilities newNc = mixInCapabilities(nai, nc);
        if (Objects.equals(nai.networkCapabilities, newNc)) {
            return;
        }
        updateNetworkPermissions(nai, newNc);
        NetworkCapabilities prevNc = nai.getAndSetNetworkCapabilities(newNc);
        updateUids(nai, prevNc, newNc);
        if (nai.getCurrentScore() == oldScore && newNc.equalRequestableCapabilities(prevNc)) {
            processListenRequests(nai);
        } else {
            rematchAllNetworksAndRequests();
            notifyNetworkCallbacks(nai, 524294);
        }
        updateNetworkInfoForRoamingAndSuspended(nai, prevNc, newNc);
        if (prevNc != null) {
            boolean oldMetered = prevNc.isMetered();
            boolean newMetered = newNc.isMetered();
            boolean meteredChanged = oldMetered != newMetered;
            if (meteredChanged) {
                boolean z = this.mRestrictBackground;
                maybeNotifyNetworkBlocked(nai, oldMetered, newMetered, z, z);
            }
            boolean roamingChanged = prevNc.hasCapability(18) != newNc.hasCapability(18);
            if (meteredChanged || roamingChanged) {
                notifyIfacesChangedForNetworkStats();
            }
        }
        if (!newNc.hasTransport(4)) {
            updateAllVpnsCapabilities();
        }
        if (!newNc.equalsTransportTypes(prevNc)) {
            this.mDnsManager.updateTransportsForNetwork(nai.network.netId, newNc.getTransportTypes());
        }
    }

    private boolean requiresVpnIsolation(NetworkAgentInfo nai, NetworkCapabilities nc, LinkProperties lp) {
        if (nc == null || lp == null || !nai.isVPN() || nai.networkAgentConfig.allowBypass || nc.getOwnerUid() == 1000 || lp.getInterfaceName() == null) {
            return false;
        }
        if (lp.hasIPv4DefaultRoute() || lp.hasIpv4UnreachableDefaultRoute()) {
            return lp.hasIPv6DefaultRoute() || lp.hasIpv6UnreachableDefaultRoute();
        }
        return false;
    }

    private void updateUids(NetworkAgentInfo nai, NetworkCapabilities prevNc, NetworkCapabilities newNc) {
        Set<UidRange> prevRanges = prevNc == null ? null : prevNc.getUids();
        Set<UidRange> newRanges = newNc != null ? newNc.getUids() : null;
        if (prevRanges == null) {
            prevRanges = new ArraySet();
        }
        if (newRanges == null) {
            newRanges = new ArraySet();
        }
        Set<UidRange> prevRangesCopy = new ArraySet<>(prevRanges);
        prevRanges.removeAll(newRanges);
        newRanges.removeAll(prevRangesCopy);
        try {
            if (!newRanges.isEmpty()) {
                UidRange[] addedRangesArray = new UidRange[newRanges.size()];
                newRanges.toArray(addedRangesArray);
                this.mNMS.addVpnUidRanges(nai.network.netId, addedRangesArray);
            }
            if (!prevRanges.isEmpty()) {
                UidRange[] removedRangesArray = new UidRange[prevRanges.size()];
                prevRanges.toArray(removedRangesArray);
                this.mNMS.removeVpnUidRanges(nai.network.netId, removedRangesArray);
            }
            boolean wasFiltering = requiresVpnIsolation(nai, prevNc, nai.linkProperties);
            boolean shouldFilter = requiresVpnIsolation(nai, newNc, nai.linkProperties);
            String iface = nai.linkProperties.getInterfaceName();
            if (wasFiltering && !prevRanges.isEmpty()) {
                this.mPermissionMonitor.onVpnUidRangesRemoved(iface, prevRanges, prevNc.getOwnerUid());
            }
            if (shouldFilter && !newRanges.isEmpty()) {
                this.mPermissionMonitor.onVpnUidRangesAdded(iface, newRanges, newNc.getOwnerUid());
            }
        } catch (Exception e) {
            loge("Exception in updateUids: ", e);
        }
    }

    public void handleUpdateLinkProperties(NetworkAgentInfo nai, LinkProperties newLp) {
        ensureRunningOnConnectivityServiceThread();
        if (getNetworkAgentInfoForNetId(nai.network.netId) != nai) {
            return;
        }
        if (VDBG || DDBG) {
            log("Update of LinkProperties for " + nai.toShortString() + "; created=" + nai.created + "; everConnected=" + nai.everConnected);
        }
        updateLinkProperties(nai, newLp, new LinkProperties(nai.linkProperties));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendUpdatedScoreToFactories(NetworkAgentInfo nai) {
        for (int i = 0; i < nai.numNetworkRequests(); i++) {
            NetworkRequest nr = nai.requestAt(i);
            if (!nr.isListen()) {
                sendUpdatedScoreToFactories(nr, nai);
            }
        }
    }

    private void sendUpdatedScoreToFactories(NetworkRequest networkRequest, NetworkAgentInfo nai) {
        int score;
        int serial;
        if (nai != null) {
            score = nai.getCurrentScore();
            serial = nai.factorySerialNumber;
        } else {
            score = 0;
            serial = 0;
        }
        if (VDBG || DDBG) {
            log("sending new Min Network Score(" + score + "): " + networkRequest.toString());
        }
        for (NetworkProviderInfo npi : this.mNetworkProviderInfos.values()) {
            npi.requestNetwork(networkRequest, score, serial);
        }
    }

    private void sendAllRequestsToProvider(NetworkProviderInfo npi) {
        int score;
        int serial;
        ensureRunningOnConnectivityServiceThread();
        for (NetworkRequestInfo nri : this.mNetworkRequests.values()) {
            if (!nri.request.isListen()) {
                NetworkAgentInfo nai = nri.mSatisfier;
                if (nai != null) {
                    score = nai.getCurrentScore();
                    serial = nai.factorySerialNumber;
                } else {
                    score = 0;
                    serial = -1;
                }
                npi.requestNetwork(nri.request, score, serial);
            }
        }
    }

    private void sendPendingIntentForRequest(NetworkRequestInfo nri, NetworkAgentInfo networkAgent, int notificationType) {
        if (notificationType == 524290 && !nri.mPendingIntentSent) {
            Intent intent = new Intent();
            intent.putExtra("android.net.extra.NETWORK", networkAgent.network);
            intent.putExtra("android.net.extra.NETWORK_REQUEST", nri.request);
            nri.mPendingIntentSent = true;
            sendIntent(nri.mPendingIntent, intent);
        }
    }

    private void sendIntent(PendingIntent pendingIntent, Intent intent) {
        this.mPendingIntentWakeLock.acquire();
        try {
            log("Sending " + pendingIntent);
            pendingIntent.send(this.mContext, 0, intent, this, null);
        } catch (PendingIntent.CanceledException e) {
            log(pendingIntent + " was not sent, it had been canceled.");
            this.mPendingIntentWakeLock.release();
            releasePendingNetworkRequest(pendingIntent);
        }
    }

    @Override // android.app.PendingIntent.OnFinished
    public void onSendFinished(PendingIntent pendingIntent, Intent intent, int resultCode, String resultData, Bundle resultExtras) {
        log("Finished sending " + pendingIntent);
        this.mPendingIntentWakeLock.release();
        releasePendingNetworkRequestWithDelay(pendingIntent);
    }

    private void callCallbackForRequest(NetworkRequestInfo nri, NetworkAgentInfo networkAgent, int notificationType, int arg1) {
        if (nri.messenger == null) {
            return;
        }
        Bundle bundle = new Bundle();
        putParcelable(bundle, new NetworkRequest(nri.request));
        Message msg = Message.obtain();
        if (notificationType != 524293) {
            putParcelable(bundle, networkAgent.network);
        }
        switch (notificationType) {
            case 524290:
                NetworkCapabilities nc = networkCapabilitiesRestrictedForCallerPermissions(networkAgent.networkCapabilities, nri.mPid, nri.mUid);
                putParcelable(bundle, maybeSanitizeLocationInfoForCaller(nc, nri.mUid, nri.request.getRequestorPackageName()));
                putParcelable(bundle, linkPropertiesRestrictedForCallerPermissions(networkAgent.linkProperties, nri.mPid, nri.mUid));
                msg.arg1 = arg1;
                break;
            case 524291:
                msg.arg1 = arg1;
                break;
            case 524294:
                NetworkCapabilities netCap = networkCapabilitiesRestrictedForCallerPermissions(networkAgent.networkCapabilities, nri.mPid, nri.mUid);
                putParcelable(bundle, maybeSanitizeLocationInfoForCaller(netCap, nri.mUid, nri.request.getRequestorPackageName()));
                break;
            case 524295:
                putParcelable(bundle, linkPropertiesRestrictedForCallerPermissions(networkAgent.linkProperties, nri.mPid, nri.mUid));
                break;
            case 524299:
                maybeLogBlockedStatusChanged(nri, networkAgent.network, arg1 != 0);
                msg.arg1 = arg1;
                break;
        }
        msg.what = notificationType;
        msg.setData(bundle);
        try {
            if (VDBG) {
                String notification = ConnectivityManager.getCallbackName(notificationType);
                log("sending notification " + notification + " for " + nri.request);
            }
            nri.messenger.send(msg);
        } catch (RemoteException e) {
            loge("RemoteException caught trying to send a callback msg for " + nri.request);
        }
    }

    private static <T extends Parcelable> void putParcelable(Bundle bundle, T t) {
        bundle.putParcelable(t.getClass().getSimpleName(), t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void teardownUnneededNetwork(NetworkAgentInfo nai) {
        if (nai.numRequestNetworkRequests() != 0) {
            for (int i = 0; i < nai.numNetworkRequests(); i++) {
                NetworkRequest nr = nai.requestAt(i);
                if (!nr.isListen()) {
                    loge("Dead network still had at least " + nr);
                    break;
                }
            }
        }
        nai.asyncChannel.disconnect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLingerComplete(NetworkAgentInfo oldNetwork) {
        if (oldNetwork == null) {
            loge("Unknown NetworkAgentInfo in handleLingerComplete");
            return;
        }
        log("handleLingerComplete for " + oldNetwork.toShortString());
        oldNetwork.clearLingerState();
        if (unneeded(oldNetwork, UnneededFor.TEARDOWN)) {
            teardownUnneededNetwork(oldNetwork);
        } else {
            updateCapabilities(oldNetwork.getCurrentScore(), oldNetwork, oldNetwork.networkCapabilities);
        }
    }

    private void makeDefault(NetworkAgentInfo newNetwork) {
        ProxyInfo httpProxy;
        log("Switching to new default network: " + newNetwork);
        this.mDefaultNetworkNai = newNetwork;
        try {
            if (newNetwork != null) {
                this.mNMS.setDefaultNetId(newNetwork.network.netId);
            } else {
                this.mNMS.clearDefaultNetId();
            }
        } catch (Exception e) {
            loge("Exception setting default network :" + e);
        }
        notifyLockdownVpn(newNetwork);
        String tcpBufferSizes = null;
        if (newNetwork == null) {
            httpProxy = null;
        } else {
            httpProxy = newNetwork.linkProperties.getHttpProxy();
        }
        handleApplyDefaultProxy(httpProxy);
        if (newNetwork != null) {
            tcpBufferSizes = newNetwork.linkProperties.getTcpBufferSizes();
        }
        updateTcpBufferSizes(tcpBufferSizes);
        this.mDnsManager.setDefaultDnsSystemProperties(newNetwork != null ? newNetwork.linkProperties.getDnsServers() : Collections.EMPTY_LIST);
        notifyIfacesChangedForNetworkStats();
        updateAllVpnsCapabilities();
    }

    private void processListenRequests(NetworkAgentInfo nai) {
        processNewlyLostListenRequests(nai);
        notifyNetworkCallbacks(nai, 524294);
        processNewlySatisfiedListenRequests(nai);
    }

    private void processNewlyLostListenRequests(NetworkAgentInfo nai) {
        for (NetworkRequestInfo nri : this.mNetworkRequests.values()) {
            NetworkRequest nr = nri.request;
            if (nr.isListen() && nai.isSatisfyingRequest(nr.requestId) && !nai.satisfies(nr)) {
                nai.removeRequest(nri.request.requestId);
                callCallbackForRequest(nri, nai, 524292, 0);
            }
        }
    }

    private void processNewlySatisfiedListenRequests(NetworkAgentInfo nai) {
        for (NetworkRequestInfo nri : this.mNetworkRequests.values()) {
            NetworkRequest nr = nri.request;
            if (nr.isListen() && nai.satisfies(nr) && !nai.isSatisfyingRequest(nr.requestId)) {
                nai.addRequest(nr);
                notifyNetworkAvailable(nai, nri);
            }
        }
    }

    private static class NetworkReassignment {
        private final ArrayList<RequestReassignment> mReassignments;

        private NetworkReassignment() {
            this.mReassignments = new ArrayList<>();
        }

        static class RequestReassignment {
            public final NetworkAgentInfo mNewNetwork;
            public final NetworkAgentInfo mOldNetwork;
            public final NetworkRequestInfo mRequest;

            RequestReassignment(NetworkRequestInfo request, NetworkAgentInfo oldNetwork, NetworkAgentInfo newNetwork) {
                this.mRequest = request;
                this.mOldNetwork = oldNetwork;
                this.mNewNetwork = newNetwork;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append(this.mRequest.request.requestId);
                sb.append(" : ");
                NetworkAgentInfo networkAgentInfo = this.mOldNetwork;
                sb.append(networkAgentInfo != null ? Integer.valueOf(networkAgentInfo.network.netId) : "null");
                sb.append(" → ");
                NetworkAgentInfo networkAgentInfo2 = this.mNewNetwork;
                sb.append(networkAgentInfo2 != null ? Integer.valueOf(networkAgentInfo2.network.netId) : "null");
                return sb.toString();
            }
        }

        Iterable<RequestReassignment> getRequestReassignments() {
            return this.mReassignments;
        }

        void addRequestReassignment(RequestReassignment reassignment) {
            if (!Build.IS_USER) {
                for (RequestReassignment existing : this.mReassignments) {
                    if (existing.mRequest.equals(reassignment.mRequest)) {
                        throw new IllegalStateException("Trying to reassign [" + reassignment + "] but already have [" + existing + "]");
                    }
                }
            }
            this.mReassignments.add(reassignment);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RequestReassignment getReassignment(NetworkRequestInfo nri) {
            for (RequestReassignment event : getRequestReassignments()) {
                if (nri == event.mRequest) {
                    return event;
                }
            }
            return null;
        }

        public String toString() {
            StringJoiner sj = new StringJoiner(", ", "NetReassign [", "]");
            if (this.mReassignments.isEmpty()) {
                return sj.add("no changes").toString();
            }
            for (RequestReassignment rr : getRequestReassignments()) {
                sj.add(rr.toString());
            }
            return sj.toString();
        }

        public String debugString() {
            StringBuilder sb = new StringBuilder();
            sb.append("NetworkReassignment :");
            if (this.mReassignments.isEmpty()) {
                sb.append(" no changes");
                return sb.toString();
            }
            for (RequestReassignment rr : getRequestReassignments()) {
                sb.append("\n  ");
                sb.append(rr);
            }
            sb.append("\n");
            return sb.toString();
        }
    }

    private void updateSatisfiersForRematchRequest(NetworkRequestInfo nri, NetworkAgentInfo previousSatisfier, NetworkAgentInfo newSatisfier, long now) {
        if (newSatisfier != null) {
            if (VDBG) {
                log("rematch for " + newSatisfier.toShortString());
            }
            if (previousSatisfier != null) {
                if (VDBG || DDBG) {
                    log("   accepting network in place of " + previousSatisfier.toShortString());
                }
                previousSatisfier.removeRequest(nri.request.requestId);
                previousSatisfier.lingerRequest(nri.request, now, this.mLingerDelayMs);
            } else if (VDBG || DDBG) {
                log("   accepting network in place of null");
            }
            newSatisfier.unlingerRequest(nri.request);
            if (!newSatisfier.addRequest(nri.request)) {
                Slog.wtf(TAG, "BUG: " + newSatisfier.toShortString() + " already has " + nri.request);
            }
        } else {
            log("Network " + previousSatisfier.toShortString() + " stopped satisfying request " + nri.request.requestId);
            previousSatisfier.removeRequest(nri.request.requestId);
        }
        nri.mSatisfier = newSatisfier;
    }

    private NetworkReassignment computeNetworkReassignment() {
        NetworkAgentInfo bestNetwork;
        ensureRunningOnConnectivityServiceThread();
        NetworkReassignment changes = new NetworkReassignment();
        ArrayList<NetworkAgentInfo> nais = new ArrayList<>();
        for (NetworkAgentInfo nai : this.mNetworkAgentInfos.values()) {
            if (nai.everConnected) {
                nais.add(nai);
            }
        }
        for (NetworkRequestInfo nri : this.mNetworkRequests.values()) {
            if (!nri.request.isListen() && (bestNetwork = this.mNetworkRanker.getBestNetwork(nri.request, nais)) != nri.mSatisfier) {
                changes.addRequestReassignment(new NetworkReassignment.RequestReassignment(nri, nri.mSatisfier, bestNetwork));
            }
        }
        return changes;
    }

    private void rematchAllNetworksAndRequests() {
        long now = SystemClock.elapsedRealtime();
        NetworkReassignment changes = computeNetworkReassignment();
        if (VDBG || DDBG) {
            log(changes.debugString());
        } else {
            log(changes.toString());
        }
        applyNetworkReassignment(changes, now);
    }

    private void applyNetworkReassignment(NetworkReassignment changes, long now) {
        Collection<NetworkAgentInfo> nais = this.mNetworkAgentInfos.values();
        ArraySet<NetworkAgentInfo> oldBgNetworks = new ArraySet<>();
        for (NetworkAgentInfo nai : nais) {
            if (nai.isBackgroundNetwork()) {
                oldBgNetworks.add(nai);
            }
        }
        for (NetworkReassignment.RequestReassignment event : changes.getRequestReassignments()) {
            updateSatisfiersForRematchRequest(event.mRequest, event.mOldNetwork, event.mNewNetwork, now);
        }
        NetworkAgentInfo oldDefaultNetwork = getDefaultNetwork();
        NetworkRequestInfo defaultRequestInfo = this.mNetworkRequests.get(this.mDefaultRequest);
        NetworkReassignment.RequestReassignment reassignment = changes.getReassignment(defaultRequestInfo);
        NetworkAgentInfo newDefaultNetwork = reassignment != null ? reassignment.mNewNetwork : oldDefaultNetwork;
        if (oldDefaultNetwork != newDefaultNetwork) {
            if (oldDefaultNetwork != null) {
                this.mLingerMonitor.noteLingerDefaultNetwork(oldDefaultNetwork, newDefaultNetwork);
            }
            updateDataActivityTracking(newDefaultNetwork, oldDefaultNetwork);
            makeDefault(newDefaultNetwork);
            this.mDeps.getMetricsLogger().defaultNetworkMetrics().logDefaultNetworkEvent(now, newDefaultNetwork, oldDefaultNetwork);
            scheduleReleaseNetworkTransitionWakelock();
        }
        for (NetworkReassignment.RequestReassignment event2 : changes.getRequestReassignments()) {
            sendUpdatedScoreToFactories(event2.mRequest.request, event2.mNewNetwork);
            if (event2.mNewNetwork != null) {
                notifyNetworkAvailable(event2.mNewNetwork, event2.mRequest);
            } else {
                callCallbackForRequest(event2.mRequest, event2.mOldNetwork, 524292, 0);
            }
        }
        ArrayList<NetworkAgentInfo> lingeredNetworks = new ArrayList<>();
        for (NetworkAgentInfo nai2 : nais) {
            if (updateLingerState(nai2, now)) {
                lingeredNetworks.add(nai2);
            }
        }
        for (NetworkAgentInfo nai3 : nais) {
            if (nai3.everConnected) {
                boolean oldBackground = oldBgNetworks.contains(nai3);
                processNewlyLostListenRequests(nai3);
                if (oldBackground != nai3.isBackgroundNetwork()) {
                    applyBackgroundChangeForRematch(nai3);
                }
                processNewlySatisfiedListenRequests(nai3);
            }
        }
        Iterator<NetworkAgentInfo> it = lingeredNetworks.iterator();
        while (it.hasNext()) {
            notifyNetworkLosing(it.next(), now);
        }
        updateLegacyTypeTrackerAndVpnLockdownForRematch(oldDefaultNetwork, newDefaultNetwork, nais);
        for (NetworkAgentInfo nai4 : this.mNetworkAgentInfos.values()) {
            if (unneeded(nai4, UnneededFor.TEARDOWN)) {
                if (nai4.getLingerExpiry() > 0) {
                    if (updateLingerState(nai4, now)) {
                        notifyNetworkLosing(nai4, now);
                    }
                } else {
                    log("Reaping " + nai4.toShortString());
                    teardownUnneededNetwork(nai4);
                }
            }
        }
    }

    private void applyBackgroundChangeForRematch(NetworkAgentInfo nai) {
        NetworkCapabilities newNc = mixInCapabilities(nai, nai.networkCapabilities);
        if (Objects.equals(nai.networkCapabilities, newNc)) {
            return;
        }
        updateNetworkPermissions(nai, newNc);
        nai.getAndSetNetworkCapabilities(newNc);
        notifyNetworkCallbacks(nai, 524294);
    }

    private void updateLegacyTypeTrackerAndVpnLockdownForRematch(NetworkAgentInfo oldDefaultNetwork, NetworkAgentInfo newDefaultNetwork, Collection<NetworkAgentInfo> nais) {
        if (oldDefaultNetwork != newDefaultNetwork) {
            if (oldDefaultNetwork != null) {
                this.mLegacyTypeTracker.remove(oldDefaultNetwork.networkInfo.getType(), oldDefaultNetwork, true);
            }
            if (newDefaultNetwork != null) {
                this.mDefaultInetConditionPublished = newDefaultNetwork.lastValidated ? 100 : 0;
                this.mLegacyTypeTracker.add(newDefaultNetwork.networkInfo.getType(), newDefaultNetwork);
                notifyLockdownVpn(newDefaultNetwork);
            }
        }
        for (NetworkAgentInfo nai : nais) {
            if (nai.everConnected) {
                addNetworkToLegacyTypeTracker(nai);
            }
        }
    }

    private void addNetworkToLegacyTypeTracker(NetworkAgentInfo nai) {
        for (int i = 0; i < nai.numNetworkRequests(); i++) {
            NetworkRequest nr = nai.requestAt(i);
            if (nr.legacyType != -1 && nr.isRequest()) {
                this.mLegacyTypeTracker.add(nr.legacyType, nai);
            }
        }
        if (nai.isVPN()) {
            this.mLegacyTypeTracker.add(17, nai);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInetCondition(NetworkAgentInfo nai) {
        if (nai.everValidated && isDefaultNetwork(nai)) {
            int newInetCondition = nai.lastValidated ? 100 : 0;
            if (newInetCondition == this.mDefaultInetConditionPublished) {
                return;
            }
            this.mDefaultInetConditionPublished = newInetCondition;
            sendInetConditionBroadcast(nai.networkInfo);
        }
    }

    private void notifyLockdownVpn(NetworkAgentInfo nai) {
        synchronized (this.mVpns) {
            if (this.mLockdownTracker != null) {
                if (nai != null && nai.isVPN()) {
                    this.mLockdownTracker.onVpnStateChanged(nai.networkInfo);
                } else {
                    this.mLockdownTracker.onNetworkInfoChanged();
                }
            }
        }
    }

    private NetworkInfo mixInInfo(NetworkAgentInfo nai, NetworkInfo info) {
        NetworkInfo.DetailedState detailedState;
        NetworkInfo newInfo = new NetworkInfo(info);
        boolean suspended = !nai.networkCapabilities.hasCapability(21);
        if (suspended && info.getDetailedState() == NetworkInfo.DetailedState.CONNECTED) {
            newInfo.setDetailedState(NetworkInfo.DetailedState.SUSPENDED, info.getReason(), info.getExtraInfo());
        } else if (!suspended && info.getDetailedState() == NetworkInfo.DetailedState.SUSPENDED) {
            if (nai.everConnected) {
                detailedState = NetworkInfo.DetailedState.CONNECTED;
            } else {
                detailedState = NetworkInfo.DetailedState.CONNECTING;
            }
            newInfo.setDetailedState(detailedState, info.getReason(), info.getExtraInfo());
        }
        newInfo.setRoaming(!nai.networkCapabilities.hasCapability(18));
        return newInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNetworkInfo(NetworkAgentInfo networkAgent, NetworkInfo info) {
        NetworkInfo oldInfo;
        NetworkInfo newInfo = mixInInfo(networkAgent, info);
        NetworkInfo.State state = newInfo.getState();
        synchronized (networkAgent) {
            oldInfo = networkAgent.networkInfo;
            networkAgent.networkInfo = newInfo;
        }
        notifyLockdownVpn(networkAgent);
        log(networkAgent.toShortString() + " EVENT_NETWORK_INFO_CHANGED, going from " + oldInfo.getState() + " to " + state);
        if (!networkAgent.created && (state == NetworkInfo.State.CONNECTED || (state == NetworkInfo.State.CONNECTING && networkAgent.isVPN()))) {
            networkAgent.networkCapabilities.addCapability(19);
            if (!createNativeNetwork(networkAgent)) {
                return;
            }
            if (networkAgent.isVPN()) {
                updateAllVpnsCapabilities();
            }
            networkAgent.created = true;
        }
        if (!networkAgent.everConnected && state == NetworkInfo.State.CONNECTED) {
            networkAgent.everConnected = true;
            if (networkAgent.linkProperties == null) {
                Slog.wtf(TAG, networkAgent.toShortString() + " connected with null LinkProperties");
            }
            networkAgent.getAndSetNetworkCapabilities(networkAgent.networkCapabilities);
            handlePerNetworkPrivateDnsConfig(networkAgent, this.mDnsManager.getPrivateDnsConfig());
            updateLinkProperties(networkAgent, new LinkProperties(networkAgent.linkProperties), null);
            if (networkAgent.networkAgentConfig.acceptPartialConnectivity) {
                networkAgent.networkMonitor().setAcceptPartialConnectivity();
            }
            networkAgent.networkMonitor().notifyNetworkConnected(new LinkProperties(networkAgent.linkProperties, true), networkAgent.networkCapabilities);
            scheduleUnvalidatedPrompt(networkAgent);
            updateSignalStrengthThresholds(networkAgent, "CONNECT", null);
            if (networkAgent.isVPN()) {
                updateAllVpnsCapabilities();
            }
            rematchAllNetworksAndRequests();
            notifyNetworkCallbacks(networkAgent, 524289);
            return;
        }
        if (state == NetworkInfo.State.DISCONNECTED) {
            networkAgent.asyncChannel.disconnect();
            if (networkAgent.isVPN()) {
                updateUids(networkAgent, networkAgent.networkCapabilities, null);
            }
            disconnectAndDestroyNetwork(networkAgent);
            if (networkAgent.isVPN()) {
                this.mProxyTracker.sendProxyBroadcast();
                return;
            }
            return;
        }
        if (networkAgent.created) {
            if (oldInfo.getState() == NetworkInfo.State.SUSPENDED || state == NetworkInfo.State.SUSPENDED) {
                this.mLegacyTypeTracker.update(networkAgent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNetworkScore(NetworkAgentInfo nai, int score) {
        if (VDBG || DDBG) {
            log("updateNetworkScore for " + nai.toShortString() + " to " + score);
        }
        nai.setScore(score);
        rematchAllNetworksAndRequests();
        sendUpdatedScoreToFactories(nai);
    }

    protected void notifyNetworkAvailable(NetworkAgentInfo networkAgentInfo, NetworkRequestInfo networkRequestInfo) {
        this.mHandler.removeMessages(20, networkRequestInfo);
        if (networkRequestInfo.mPendingIntent != null) {
            sendPendingIntentForRequest(networkRequestInfo, networkAgentInfo, 524290);
        } else {
            callCallbackForRequest(networkRequestInfo, networkAgentInfo, 524290, isUidNetworkingWithVpnBlocked(networkRequestInfo.mUid, this.mUidRules.get(networkRequestInfo.mUid), networkAgentInfo.networkCapabilities.isMetered(), this.mRestrictBackground) ? 1 : 0);
        }
    }

    private void notifyNetworkLosing(NetworkAgentInfo nai, long now) {
        int lingerTime = (int) (nai.getLingerExpiry() - now);
        notifyNetworkCallbacks(nai, 524291, lingerTime);
    }

    private void maybeNotifyNetworkBlocked(NetworkAgentInfo nai, boolean oldMetered, boolean newMetered, boolean oldRestrictBackground, boolean newRestrictBackground) {
        boolean oldBlocked;
        boolean newBlocked;
        for (int i = 0; i < nai.numNetworkRequests(); i++) {
            NetworkRequest nr = nai.requestAt(i);
            NetworkRequestInfo nri = this.mNetworkRequests.get(nr);
            int uidRules = this.mUidRules.get(nri.mUid);
            synchronized (this.mVpns) {
                oldBlocked = isUidNetworkingWithVpnBlocked(nri.mUid, uidRules, oldMetered, oldRestrictBackground);
                newBlocked = isUidNetworkingWithVpnBlocked(nri.mUid, uidRules, newMetered, newRestrictBackground);
            }
            if (oldBlocked != newBlocked) {
                callCallbackForRequest(nri, nai, 524299, encodeBool(newBlocked));
            }
        }
    }

    private void maybeNotifyNetworkBlockedForNewUidRules(int uid, int newRules) {
        boolean oldBlocked;
        boolean newBlocked;
        for (NetworkAgentInfo nai : this.mNetworkAgentInfos.values()) {
            boolean metered = nai.networkCapabilities.isMetered();
            synchronized (this.mVpns) {
                oldBlocked = isUidNetworkingWithVpnBlocked(uid, this.mUidRules.get(uid), metered, this.mRestrictBackground);
                newBlocked = isUidNetworkingWithVpnBlocked(uid, newRules, metered, this.mRestrictBackground);
            }
            if (oldBlocked != newBlocked) {
                int arg = encodeBool(newBlocked);
                for (int i = 0; i < nai.numNetworkRequests(); i++) {
                    NetworkRequest nr = nai.requestAt(i);
                    NetworkRequestInfo nri = this.mNetworkRequests.get(nr);
                    if (nri != null && nri.mUid == uid) {
                        callCallbackForRequest(nri, nai, 524299, arg);
                    }
                }
            }
        }
    }

    protected void sendLegacyNetworkBroadcast(NetworkAgentInfo nai, NetworkInfo.DetailedState state, int type) {
        NetworkInfo info = new NetworkInfo(nai.networkInfo);
        info.setType(type);
        if (state != NetworkInfo.DetailedState.DISCONNECTED) {
            info.setDetailedState(state, null, info.getExtraInfo());
            sendConnectedBroadcast(info);
            return;
        }
        info.setDetailedState(state, info.getReason(), info.getExtraInfo());
        Intent intent = new Intent("android.net.conn.CONNECTIVITY_CHANGE");
        intent.putExtra("networkInfo", info);
        intent.putExtra("networkType", info.getType());
        if (info.isFailover()) {
            intent.putExtra("isFailover", true);
            nai.networkInfo.setFailover(false);
        }
        if (info.getReason() != null) {
            intent.putExtra(PhoneWindowManager.SYSTEM_DIALOG_REASON_KEY, info.getReason());
        }
        if (info.getExtraInfo() != null) {
            intent.putExtra("extraInfo", info.getExtraInfo());
        }
        NetworkAgentInfo newDefaultAgent = null;
        if (nai.isSatisfyingRequest(this.mDefaultRequest.requestId)) {
            newDefaultAgent = getDefaultNetwork();
            if (newDefaultAgent != null) {
                intent.putExtra("otherNetwork", newDefaultAgent.networkInfo);
            } else {
                intent.putExtra("noConnectivity", true);
            }
        }
        intent.putExtra("inetCondition", this.mDefaultInetConditionPublished);
        sendStickyBroadcast(intent);
        if (newDefaultAgent != null) {
            sendConnectedBroadcast(newDefaultAgent.networkInfo);
        }
    }

    protected void notifyNetworkCallbacks(NetworkAgentInfo networkAgent, int notifyType, int arg1) {
        if (VDBG || DDBG) {
            String notification = ConnectivityManager.getCallbackName(notifyType);
            log("notifyType " + notification + " for " + networkAgent.toShortString());
        }
        for (int i = 0; i < networkAgent.numNetworkRequests(); i++) {
            NetworkRequest nr = networkAgent.requestAt(i);
            NetworkRequestInfo nri = this.mNetworkRequests.get(nr);
            if (VDBG) {
                log(" sending notification for " + nr);
            }
            if (nri.mPendingIntent == null) {
                callCallbackForRequest(nri, networkAgent, notifyType, arg1);
            } else {
                sendPendingIntentForRequest(nri, networkAgent, notifyType);
            }
        }
    }

    protected void notifyNetworkCallbacks(NetworkAgentInfo networkAgent, int notifyType) {
        notifyNetworkCallbacks(networkAgent, notifyType, 0);
    }

    private Network[] getDefaultNetworks() {
        ensureRunningOnConnectivityServiceThread();
        ArrayList<Network> defaultNetworks = new ArrayList<>();
        NetworkAgentInfo defaultNetwork = getDefaultNetwork();
        for (NetworkAgentInfo nai : this.mNetworkAgentInfos.values()) {
            if (nai.everConnected && (nai == defaultNetwork || nai.isVPN())) {
                defaultNetworks.add(nai.network);
            }
        }
        return (Network[]) defaultNetworks.toArray(new Network[0]);
    }

    private void notifyIfacesChangedForNetworkStats() {
        ensureRunningOnConnectivityServiceThread();
        String activeIface = null;
        LinkProperties activeLinkProperties = getActiveLinkProperties();
        if (activeLinkProperties != null) {
            activeIface = activeLinkProperties.getInterfaceName();
        }
        VpnInfo[] vpnInfos = getAllVpnInfo();
        try {
            this.mStatsService.forceUpdateIfaces(getDefaultNetworks(), getAllNetworkState(), activeIface, vpnInfos);
        } catch (Exception e) {
        }
    }

    public boolean addVpnAddress(String address, int prefixLength) {
        boolean zAddAddress;
        int user = UserHandle.getUserId(Binder.getCallingUid());
        synchronized (this.mVpns) {
            throwIfLockdownEnabled();
            zAddAddress = this.mVpns.get(user).addAddress(address, prefixLength);
        }
        return zAddAddress;
    }

    public boolean removeVpnAddress(String address, int prefixLength) {
        boolean zRemoveAddress;
        int user = UserHandle.getUserId(Binder.getCallingUid());
        synchronized (this.mVpns) {
            throwIfLockdownEnabled();
            zRemoveAddress = this.mVpns.get(user).removeAddress(address, prefixLength);
        }
        return zRemoveAddress;
    }

    public boolean setUnderlyingNetworksForVpn(Network[] networks) {
        boolean success;
        int user = UserHandle.getUserId(Binder.getCallingUid());
        synchronized (this.mVpns) {
            throwIfLockdownEnabled();
            success = this.mVpns.get(user).setUnderlyingNetworks(networks);
        }
        if (success) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$ConnectivityService$6bEB7WFnOunsH4qwhZ_F6bf0Lb8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setUnderlyingNetworksForVpn$9$ConnectivityService();
                }
            });
        }
        return success;
    }

    public /* synthetic */ void lambda$setUnderlyingNetworksForVpn$9$ConnectivityService() {
        updateAllVpnsCapabilities();
        notifyIfacesChangedForNetworkStats();
    }

    public String getCaptivePortalServerUrl() {
        enforceNetworkStackOrSettingsPermission();
        String settingUrl = this.mContext.getResources().getString(R.string.config_mms_user_agent_profile_url);
        if (!TextUtils.isEmpty(settingUrl)) {
            return settingUrl;
        }
        String settingUrl2 = Settings.Global.getString(this.mContext.getContentResolver(), "captive_portal_http_url");
        if (!TextUtils.isEmpty(settingUrl2)) {
            return settingUrl2;
        }
        return DEFAULT_CAPTIVE_PORTAL_HTTP_URL;
    }

    public void startNattKeepalive(Network network, int intervalSeconds, ISocketKeepaliveCallback cb, String srcAddr, int srcPort, String dstAddr) {
        enforceKeepalivePermission();
        this.mKeepaliveTracker.startNattKeepalive(getNetworkAgentInfoForNetwork(network), (FileDescriptor) null, intervalSeconds, cb, srcAddr, srcPort, dstAddr, 4500);
    }

    public void startNattKeepaliveWithFd(Network network, FileDescriptor fd, int resourceId, int intervalSeconds, ISocketKeepaliveCallback cb, String srcAddr, String dstAddr) {
        try {
            this.mKeepaliveTracker.startNattKeepalive(getNetworkAgentInfoForNetwork(network), fd, resourceId, intervalSeconds, cb, srcAddr, dstAddr, 4500);
        } finally {
            if (fd != null && Binder.getCallingPid() != Process.myPid()) {
                IoUtils.closeQuietly(fd);
            }
        }
    }

    public void startTcpKeepalive(Network network, FileDescriptor fd, int intervalSeconds, ISocketKeepaliveCallback cb) {
        try {
            enforceKeepalivePermission();
            this.mKeepaliveTracker.startTcpKeepalive(getNetworkAgentInfoForNetwork(network), fd, intervalSeconds, cb);
        } finally {
            if (fd != null && Binder.getCallingPid() != Process.myPid()) {
                IoUtils.closeQuietly(fd);
            }
        }
    }

    public void stopKeepalive(Network network, int slot) {
        InternalHandler internalHandler = this.mHandler;
        internalHandler.sendMessage(internalHandler.obtainMessage(528396, slot, 0, network));
    }

    public void factoryReset() {
        enforceSettingsPermission();
        if (this.mUserManager.hasUserRestriction("no_network_reset")) {
            return;
        }
        int userId = UserHandle.getCallingUserId();
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.-$$Lambda$ConnectivityService$zKYeCXPns6N-1Autc-TtgY0oBKw
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$factoryReset$10$ConnectivityService();
            }
        });
        setAirplaneMode(false);
        if (!this.mUserManager.hasUserRestriction("no_config_vpn")) {
            synchronized (this.mVpns) {
                String alwaysOnPackage = getAlwaysOnVpnPackage(userId);
                if (alwaysOnPackage != null) {
                    setAlwaysOnVpnPackage(userId, null, false, null);
                    setVpnPackageAuthorization(alwaysOnPackage, userId, -1);
                }
                if (this.mLockdownEnabled && userId == 0) {
                    long ident = Binder.clearCallingIdentity();
                    try {
                        this.mKeyStore.delete("LOCKDOWN_VPN");
                        this.mLockdownEnabled = false;
                        setLockdownTracker(null);
                        Binder.restoreCallingIdentity(ident);
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                }
                VpnConfig vpnConfig = getVpnConfig(userId);
                if (vpnConfig != null) {
                    if (!vpnConfig.legacy) {
                        setVpnPackageAuthorization(vpnConfig.user, userId, -1);
                        prepareVpn(null, "[Legacy VPN]", userId);
                    } else {
                        prepareVpn("[Legacy VPN]", "[Legacy VPN]", userId);
                    }
                }
            }
        }
        if (!this.mUserManager.hasUserRestriction("disallow_config_private_dns")) {
            Settings.Global.putString(this.mContext.getContentResolver(), "private_dns_mode", "opportunistic");
        }
        Settings.Global.putString(this.mContext.getContentResolver(), "network_avoid_bad_wifi", null);
    }

    public /* synthetic */ void lambda$factoryReset$10$ConnectivityService() throws Exception {
        IpMemoryStore ipMemoryStore = IpMemoryStore.getMemoryStore(this.mContext);
        ipMemoryStore.factoryReset();
    }

    public byte[] getNetworkWatchlistConfigHash() {
        NetworkWatchlistManager nwm = (NetworkWatchlistManager) this.mContext.getSystemService(NetworkWatchlistManager.class);
        if (nwm == null) {
            loge("Unable to get NetworkWatchlistManager");
            return null;
        }
        return nwm.getWatchlistConfigHash();
    }

    private void logNetworkEvent(NetworkAgentInfo nai, int evtype) {
        int[] transports = nai.networkCapabilities.getTransportTypes();
        this.mMetricsLog.log(nai.network.netId, transports, new NetworkEvent(evtype));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean toBool(int encodedBoolean) {
        return encodedBoolean != 0;
    }

    private static int encodeBool(boolean z) {
        return z ? 1 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new ShellCmd().exec(this, in, out, err, args, callback, resultReceiver);
    }

    private class ShellCmd extends ShellCommand {
        private ShellCmd() {
        }

        public int onCommand(String cmd) {
            if (cmd == null) {
                return handleDefaultCommands(cmd);
            }
            PrintWriter pw = getOutPrintWriter();
            try {
                if (((cmd.hashCode() == 144736062 && cmd.equals("airplane-mode")) ? (byte) 0 : (byte) -1) == 0) {
                    String action = getNextArg();
                    if ("enable".equals(action)) {
                        ConnectivityService.this.setAirplaneMode(true);
                        return 0;
                    }
                    if ("disable".equals(action)) {
                        ConnectivityService.this.setAirplaneMode(false);
                        return 0;
                    }
                    if (action == null) {
                        ContentResolver cr = ConnectivityService.this.mContext.getContentResolver();
                        int enabled = Settings.Global.getInt(cr, "airplane_mode_on");
                        pw.println(enabled == 0 ? "disabled" : "enabled");
                        return 0;
                    }
                    onHelp();
                    return -1;
                }
                return handleDefaultCommands(cmd);
            } catch (Exception e) {
                pw.println(e);
                return -1;
            }
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            pw.println("Connectivity service commands:");
            pw.println("  help");
            pw.println("    Print this help text.");
            pw.println("  airplane-mode [enable|disable]");
            pw.println("    Turn airplane mode on or off.");
            pw.println("  airplane-mode");
            pw.println("    Get airplane mode.");
        }
    }

    private Vpn getVpnIfOwner() {
        return getVpnIfOwner(Binder.getCallingUid());
    }

    private Vpn getVpnIfOwner(int uid) {
        VpnInfo info;
        int user = UserHandle.getUserId(uid);
        Vpn vpn = this.mVpns.get(user);
        if (vpn == null || (info = vpn.getVpnInfo()) == null || info.ownerUid != uid) {
            return null;
        }
        return vpn;
    }

    private Vpn enforceActiveVpnOrNetworkStackPermission() {
        if (checkNetworkStackPermission()) {
            return null;
        }
        synchronized (this.mVpns) {
            Vpn vpn = getVpnIfOwner();
            if (vpn != null) {
                return vpn;
            }
            throw new SecurityException("App must either be an active VPN or have the NETWORK_STACK permission");
        }
    }

    public int getConnectionOwnerUid(ConnectionInfo connectionInfo) {
        Vpn vpn = enforceActiveVpnOrNetworkStackPermission();
        if (vpn != null && vpn.getActiveAppVpnType() != 1) {
            throw new SecurityException("getConnectionOwnerUid() not allowed for non-VpnService VPNs");
        }
        if (connectionInfo.protocol != OsConstants.IPPROTO_TCP && connectionInfo.protocol != OsConstants.IPPROTO_UDP) {
            throw new IllegalArgumentException("Unsupported protocol " + connectionInfo.protocol);
        }
        int uid = InetDiagMessage.getConnectionOwnerUid(connectionInfo.protocol, connectionInfo.local, connectionInfo.remote);
        if (vpn != null && !vpn.appliesToUid(uid)) {
            return -1;
        }
        return uid;
    }

    public boolean isCallerCurrentAlwaysOnVpnApp() {
        boolean z;
        synchronized (this.mVpns) {
            Vpn vpn = getVpnIfOwner();
            z = vpn != null && vpn.getAlwaysOn();
        }
        return z;
    }

    public boolean isCallerCurrentAlwaysOnVpnLockdownApp() {
        boolean z;
        synchronized (this.mVpns) {
            Vpn vpn = getVpnIfOwner();
            z = vpn != null && vpn.getLockdown();
        }
        return z;
    }

    public IBinder startOrGetTestNetworkService() {
        ITestNetworkManager.Stub stub;
        synchronized (this.mTNSLock) {
            TestNetworkService.enforceTestNetworkPermissions(this.mContext);
            if (this.mTNS == null) {
                this.mTNS = new TestNetworkService(this.mContext, this.mNMS);
            }
            stub = this.mTNS;
        }
        return stub;
    }

    class ConnectivityDiagnosticsHandler extends Handler {
        private static final int EVENT_DATA_STALL_SUSPECTED = 4;
        private static final int EVENT_NETWORK_CONNECTIVITY_REPORTED = 5;
        private static final int EVENT_NETWORK_TESTED = 41;
        private static final int EVENT_REGISTER_CONNECTIVITY_DIAGNOSTICS_CALLBACK = 1;
        private static final int EVENT_UNREGISTER_CONNECTIVITY_DIAGNOSTICS_CALLBACK = 2;
        private final String mTag;

        private ConnectivityDiagnosticsHandler(Looper looper) {
            super(looper);
            this.mTag = ConnectivityDiagnosticsHandler.class.getSimpleName();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                ConnectivityService.this.handleRegisterConnectivityDiagnosticsCallback((ConnectivityDiagnosticsCallbackInfo) msg.obj);
                return;
            }
            if (i == 2) {
                ConnectivityService.this.handleUnregisterConnectivityDiagnosticsCallback((IConnectivityDiagnosticsCallback) msg.obj, msg.arg1);
                return;
            }
            if (i == 4) {
                NetworkAgentInfo nai = ConnectivityService.this.getNetworkAgentInfoForNetId(msg.arg2);
                if (nai != null) {
                    PersistableBundle extras = new PersistableBundle(msg.getData());
                    ConnectivityService.this.handleDataStallSuspected(nai, ((Long) msg.obj).longValue(), msg.arg1, extras);
                    return;
                }
                return;
            }
            if (i == 5) {
                ConnectivityService.this.handleNetworkConnectivityReported((NetworkAgentInfo) msg.obj, ConnectivityService.toBool(msg.arg1));
                return;
            }
            if (i == 41) {
                ConnectivityReportEvent reportEvent = (ConnectivityReportEvent) msg.obj;
                PersistableBundle extras2 = new PersistableBundle(msg.getData());
                ConnectivityService.this.handleNetworkTestedWithExtras(reportEvent, extras2);
            } else {
                Log.e(this.mTag, "Unrecognized event in ConnectivityDiagnostics: " + msg.what);
            }
        }
    }

    class ConnectivityDiagnosticsCallbackInfo implements IBinder.DeathRecipient {
        private final String mCallingPackageName;
        private final IConnectivityDiagnosticsCallback mCb;
        private final NetworkRequestInfo mRequestInfo;

        ConnectivityDiagnosticsCallbackInfo(IConnectivityDiagnosticsCallback cb, NetworkRequestInfo nri, String callingPackageName) {
            this.mCb = cb;
            this.mRequestInfo = nri;
            this.mCallingPackageName = callingPackageName;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ConnectivityService.log("ConnectivityDiagnosticsCallback IBinder died.");
            ConnectivityService.this.unregisterConnectivityDiagnosticsCallback(this.mCb);
        }
    }

    private static class NetworkTestedResults {
        private final int mNetId;
        private final String mRedirectUrl;
        private final int mTestResult;
        private final long mTimestampMillis;

        private NetworkTestedResults(int netId, int testResult, long timestampMillis, String redirectUrl) {
            this.mNetId = netId;
            this.mTestResult = testResult;
            this.mTimestampMillis = timestampMillis;
            this.mRedirectUrl = redirectUrl;
        }
    }

    private static class ConnectivityReportEvent {
        private final NetworkAgentInfo mNai;
        private final long mTimestampMillis;

        private ConnectivityReportEvent(long timestampMillis, NetworkAgentInfo nai) {
            this.mTimestampMillis = timestampMillis;
            this.mNai = nai;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRegisterConnectivityDiagnosticsCallback(ConnectivityDiagnosticsCallbackInfo cbInfo) {
        ensureRunningOnConnectivityServiceThread();
        IConnectivityDiagnosticsCallback cb = cbInfo.mCb;
        IBinder iCb = cb.asBinder();
        NetworkRequestInfo nri = cbInfo.mRequestInfo;
        if (this.mConnectivityDiagnosticsCallbacks.containsKey(iCb)) {
            if (VDBG) {
                log("Diagnostics callback is already registered");
            }
            decrementNetworkRequestPerUidCount(nri);
            return;
        }
        this.mConnectivityDiagnosticsCallbacks.put(iCb, cbInfo);
        try {
            iCb.linkToDeath(cbInfo, 0);
            List<NetworkAgentInfo> matchingNetworks = new ArrayList<>();
            synchronized (this.mNetworkForNetId) {
                for (int i = 0; i < this.mNetworkForNetId.size(); i++) {
                    NetworkAgentInfo nai = this.mNetworkForNetId.valueAt(i);
                    if (nai.satisfies(nri.request)) {
                        matchingNetworks.add(nai);
                    }
                }
            }
            for (NetworkAgentInfo nai2 : matchingNetworks) {
                ConnectivityDiagnosticsManager.ConnectivityReport report = nai2.getConnectivityReport();
                if (report != null && checkConnectivityDiagnosticsPermissions(nri.mPid, nri.mUid, nai2, cbInfo.mCallingPackageName)) {
                    try {
                        cb.onConnectivityReportAvailable(report);
                    } catch (RemoteException e) {
                    }
                }
            }
        } catch (RemoteException e2) {
            cbInfo.binderDied();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUnregisterConnectivityDiagnosticsCallback(IConnectivityDiagnosticsCallback cb, int uid) {
        ensureRunningOnConnectivityServiceThread();
        IBinder iCb = cb.asBinder();
        ConnectivityDiagnosticsCallbackInfo cbInfo = this.mConnectivityDiagnosticsCallbacks.remove(iCb);
        if (cbInfo != null) {
            NetworkRequestInfo nri = cbInfo.mRequestInfo;
            if (uid != nri.mUid && uid != 1000) {
                loge("Uid(" + uid + ") not registrant's (" + nri.mUid + ") or System's");
                return;
            }
            decrementNetworkRequestPerUidCount(nri);
            iCb.unlinkToDeath(cbInfo, 0);
            return;
        }
        if (VDBG) {
            log("Removing diagnostics callback that is not currently registered");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNetworkTestedWithExtras(ConnectivityReportEvent reportEvent, PersistableBundle extras) {
        NetworkAgentInfo nai = reportEvent.mNai;
        NetworkCapabilities networkCapabilities = getNetworkCapabilitiesWithoutUids(nai.networkCapabilities);
        ConnectivityDiagnosticsManager.ConnectivityReport report = new ConnectivityDiagnosticsManager.ConnectivityReport(reportEvent.mNai.network, reportEvent.mTimestampMillis, nai.linkProperties, networkCapabilities, extras);
        nai.setConnectivityReport(report);
        List<IConnectivityDiagnosticsCallback> results = getMatchingPermissionedCallbacks(nai);
        for (IConnectivityDiagnosticsCallback cb : results) {
            try {
                cb.onConnectivityReportAvailable(report);
            } catch (RemoteException ex) {
                loge("Error invoking onConnectivityReport", ex);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDataStallSuspected(NetworkAgentInfo nai, long timestampMillis, int detectionMethod, PersistableBundle extras) {
        NetworkCapabilities networkCapabilities = getNetworkCapabilitiesWithoutUids(nai.networkCapabilities);
        ConnectivityDiagnosticsManager.DataStallReport report = new ConnectivityDiagnosticsManager.DataStallReport(nai.network, timestampMillis, detectionMethod, nai.linkProperties, networkCapabilities, extras);
        List<IConnectivityDiagnosticsCallback> results = getMatchingPermissionedCallbacks(nai);
        for (IConnectivityDiagnosticsCallback cb : results) {
            try {
                cb.onDataStallSuspected(report);
            } catch (RemoteException ex) {
                loge("Error invoking onDataStallSuspected", ex);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNetworkConnectivityReported(NetworkAgentInfo nai, boolean connectivity) {
        List<IConnectivityDiagnosticsCallback> results = getMatchingPermissionedCallbacks(nai);
        for (IConnectivityDiagnosticsCallback cb : results) {
            try {
                cb.onNetworkConnectivityReported(nai.network, connectivity);
            } catch (RemoteException ex) {
                loge("Error invoking onNetworkConnectivityReported", ex);
            }
        }
    }

    private NetworkCapabilities getNetworkCapabilitiesWithoutUids(NetworkCapabilities nc) {
        NetworkCapabilities sanitized = new NetworkCapabilities(nc);
        sanitized.setUids(null);
        sanitized.setAdministratorUids(new int[0]);
        sanitized.setOwnerUid(-1);
        return sanitized;
    }

    private List<IConnectivityDiagnosticsCallback> getMatchingPermissionedCallbacks(NetworkAgentInfo nai) {
        List<IConnectivityDiagnosticsCallback> results = new ArrayList<>();
        for (Map.Entry<IBinder, ConnectivityDiagnosticsCallbackInfo> entry : this.mConnectivityDiagnosticsCallbacks.entrySet()) {
            ConnectivityDiagnosticsCallbackInfo cbInfo = entry.getValue();
            NetworkRequestInfo nri = cbInfo.mRequestInfo;
            if (nai.satisfies(nri.request) && checkConnectivityDiagnosticsPermissions(nri.mPid, nri.mUid, nai, cbInfo.mCallingPackageName)) {
                results.add(entry.getValue().mCb);
            }
        }
        return results;
    }

    boolean checkConnectivityDiagnosticsPermissions(int callbackPid, int callbackUid, NetworkAgentInfo nai, String callbackPackageName) {
        Network[] underlyingNetworks;
        if (checkNetworkStackPermission(callbackPid, callbackUid)) {
            return true;
        }
        try {
            Network[] underlyingNetworks2 = null;
            if (!this.mLocationPermissionChecker.checkLocationPermission(callbackPackageName, (String) null, callbackUid, (String) null)) {
                return false;
            }
            synchronized (this.mVpns) {
                Vpn vpn = getVpnIfOwner(callbackUid);
                if (vpn != null) {
                    underlyingNetworks2 = vpn.getUnderlyingNetworks();
                }
                underlyingNetworks = underlyingNetworks2;
            }
            if (underlyingNetworks != null && Arrays.asList(underlyingNetworks).contains(nai.network)) {
                return true;
            }
            int[] administratorUids = nai.networkCapabilities.getAdministratorUids();
            return ArrayUtils.contains(administratorUids, callbackUid);
        } catch (SecurityException e) {
            return false;
        }
    }

    public void registerConnectivityDiagnosticsCallback(IConnectivityDiagnosticsCallback callback, NetworkRequest request, String callingPackageName) {
        if (request.legacyType != -1) {
            throw new IllegalArgumentException("ConnectivityManager.TYPE_* are deprecated. Please use NetworkCapabilities instead.");
        }
        int callingUid = Binder.getCallingUid();
        this.mAppOpsManager.checkPackage(callingUid, callingPackageName);
        NetworkCapabilities nc = new NetworkCapabilities(request.networkCapabilities);
        restrictRequestUidsForCallerAndSetRequestorInfo(nc, callingUid, callingPackageName);
        NetworkRequest requestWithId = new NetworkRequest(nc, -1, nextNetworkRequestId(), NetworkRequest.Type.LISTEN);
        NetworkRequestInfo nri = new NetworkRequestInfo(this, requestWithId);
        ConnectivityDiagnosticsCallbackInfo cbInfo = new ConnectivityDiagnosticsCallbackInfo(callback, nri, callingPackageName);
        ConnectivityDiagnosticsHandler connectivityDiagnosticsHandler = this.mConnectivityDiagnosticsHandler;
        connectivityDiagnosticsHandler.sendMessage(connectivityDiagnosticsHandler.obtainMessage(1, cbInfo));
    }

    public void unregisterConnectivityDiagnosticsCallback(IConnectivityDiagnosticsCallback callback) {
        ConnectivityDiagnosticsHandler connectivityDiagnosticsHandler = this.mConnectivityDiagnosticsHandler;
        connectivityDiagnosticsHandler.sendMessage(connectivityDiagnosticsHandler.obtainMessage(2, Binder.getCallingUid(), 0, callback));
    }

    public void simulateDataStall(int detectionMethod, long timestampMillis, Network network, PersistableBundle extras) {
        enforceAnyPermissionOf("android.permission.MANAGE_TEST_NETWORKS", "android.permission.NETWORK_STACK");
        NetworkCapabilities nc = getNetworkCapabilitiesInternal(network);
        if (!nc.hasTransport(7)) {
            throw new SecurityException("Data Stall simluation is only possible for test networks");
        }
        NetworkAgentInfo nai = getNetworkAgentInfoForNetwork(network);
        if (nai == null || nai.creatorUid != Binder.getCallingUid()) {
            throw new SecurityException("Data Stall simulation is only possible for network creators");
        }
        DataStallReportParcelable p = new DataStallReportParcelable();
        p.timestampMillis = timestampMillis;
        p.detectionMethod = detectionMethod;
        if (hasDataStallDetectionMethod(p, 1)) {
            p.dnsConsecutiveTimeouts = extras.getInt("dnsConsecutiveTimeouts");
        }
        if (hasDataStallDetectionMethod(p, 2)) {
            p.tcpPacketFailRate = extras.getInt("tcpPacketFailRate");
            p.tcpMetricsCollectionPeriodMillis = extras.getInt("tcpMetricsCollectionPeriodMillis");
        }
        notifyDataStallSuspected(p, network.netId);
    }
}
