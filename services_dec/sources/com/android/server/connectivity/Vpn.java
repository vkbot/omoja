package com.android.server.connectivity;

import android.R;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.ConnectivityManager;
import android.net.DnsResolver;
import android.net.INetd;
import android.net.INetworkManagementEventObserver;
import android.net.Ikev2VpnProfile;
import android.net.IpPrefix;
import android.net.IpSecManager;
import android.net.IpSecTransform;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.net.Network;
import android.net.NetworkAgent;
import android.net.NetworkAgentConfig;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.RouteInfo;
import android.net.UidRange;
import android.net.ipsec.ike.ChildSessionCallback;
import android.net.ipsec.ike.ChildSessionConfiguration;
import android.net.ipsec.ike.ChildSessionParams;
import android.net.ipsec.ike.IkeSession;
import android.net.ipsec.ike.IkeSessionCallback;
import android.net.ipsec.ike.IkeSessionParams;
import android.net.ipsec.ike.exceptions.IkeProtocolException;
import android.os.Binder;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.FileUtils;
import android.os.IBinder;
import android.os.INetworkManagementService;
import android.os.Looper;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemService;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.security.KeyStore;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.net.LegacyVpnInfo;
import com.android.internal.net.VpnConfig;
import com.android.internal.net.VpnInfo;
import com.android.internal.net.VpnProfile;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.Preconditions;
import com.android.server.DeviceIdleInternal;
import com.android.server.LocalServices;
import com.android.server.net.BaseNetworkObserver;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class Vpn {
    private static final boolean LOGD = true;
    private static final int MAX_ROUTES_TO_EVALUATE = 150;
    static final int MAX_VPN_PROFILE_SIZE_BYTES = 131072;
    private static final long MOST_IPV4_ADDRESSES_COUNT = 3650722201L;
    private static final BigInteger MOST_IPV6_ADDRESSES_COUNT;
    private static final String NETWORKTYPE = "VPN";
    private static final String TAG = "Vpn";
    private static final long VPN_LAUNCH_IDLE_WHITELIST_DURATION_MS = 60000;
    protected boolean mAlwaysOn;
    private final Set<UidRange> mBlockedUidsAsToldToNetd;
    protected VpnConfig mConfig;
    private Connection mConnection;
    private final Context mContext;
    final Dependencies mDeps;
    private volatile boolean mEnableTeardown;
    private final Ikev2SessionCreator mIkev2SessionCreator;
    protected String mInterface;
    private boolean mIsPackageTargetingAtLeastQ;
    protected boolean mLockdown;
    private List<String> mLockdownWhitelist;
    private final Looper mLooper;
    private final INetworkManagementService mNetd;
    protected NetworkAgent mNetworkAgent;
    protected final NetworkCapabilities mNetworkCapabilities;
    private final NetworkInfo mNetworkInfo;
    private INetworkManagementEventObserver mObserver;
    private int mOwnerUID;
    protected String mPackage;
    private PendingIntent mStatusIntent;
    private final SystemServices mSystemServices;
    private final int mUserHandle;
    protected VpnRunner mVpnRunner;

    interface IkeV2VpnRunnerCallback {
        void onChildOpened(Network network, ChildSessionConfiguration childSessionConfiguration);

        void onChildTransformCreated(Network network, IpSecTransform ipSecTransform, int i);

        void onDefaultNetworkChanged(Network network);

        void onSessionLost(Network network, Exception exc);
    }

    interface RetryScheduler {
        void checkInterruptAndDelay(boolean z) throws InterruptedException;
    }

    private native boolean jniAddAddress(String str, String str2, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public native int jniCheck(String str);

    private native int jniCreate(int i);

    private native boolean jniDelAddress(String str, String str2, int i);

    private native String jniGetName(int i);

    private native void jniReset(String str);

    private native int jniSetAddresses(String str, String str2);

    static {
        BigInteger twoPower128 = BigInteger.ONE.shiftLeft(128);
        MOST_IPV6_ADDRESSES_COUNT = twoPower128.multiply(BigInteger.valueOf(85L)).divide(BigInteger.valueOf(100L));
    }

    static class Dependencies {
        Dependencies() {
        }

        public void startService(String serviceName) {
            SystemService.start(serviceName);
        }

        public void stopService(String serviceName) {
            SystemService.stop(serviceName);
        }

        public boolean isServiceRunning(String serviceName) {
            return SystemService.isRunning(serviceName);
        }

        public boolean isServiceStopped(String serviceName) {
            return SystemService.isStopped(serviceName);
        }

        public File getStateFile() {
            return new File("/data/misc/vpn/state");
        }

        public void sendArgumentsToDaemon(String daemon, LocalSocket socket, String[] arguments, RetryScheduler retryScheduler) throws InterruptedException, IOException {
            LocalSocketAddress address = new LocalSocketAddress(daemon, LocalSocketAddress.Namespace.RESERVED);
            while (true) {
                try {
                    socket.connect(address);
                    break;
                } catch (Exception e) {
                    retryScheduler.checkInterruptAndDelay(true);
                }
            }
            socket.setSoTimeout(500);
            OutputStream out = socket.getOutputStream();
            for (String argument : arguments) {
                byte[] bytes = argument.getBytes(StandardCharsets.UTF_8);
                if (bytes.length >= 65535) {
                    throw new IllegalArgumentException("Argument is too large");
                }
                out.write(bytes.length >> 8);
                out.write(bytes.length);
                out.write(bytes);
                retryScheduler.checkInterruptAndDelay(false);
            }
            out.write(255);
            out.write(255);
            InputStream in = socket.getInputStream();
            while (in.read() != -1) {
                retryScheduler.checkInterruptAndDelay(true);
            }
        }

        public InetAddress resolve(final String endpoint) throws ExecutionException, InterruptedException {
            try {
                return InetAddress.parseNumericAddress(endpoint);
            } catch (IllegalArgumentException e) {
                CancellationSignal cancellationSignal = new CancellationSignal();
                try {
                    DnsResolver resolver = DnsResolver.getInstance();
                    final CompletableFuture<InetAddress> result = new CompletableFuture<>();
                    DnsResolver.Callback<List<InetAddress>> cb = new DnsResolver.Callback<List<InetAddress>>() { // from class: com.android.server.connectivity.Vpn.Dependencies.1
                        @Override // android.net.DnsResolver.Callback
                        public void onAnswer(List<InetAddress> answer, int rcode) {
                            if (answer.size() > 0) {
                                result.complete(answer.get(0));
                            } else {
                                result.completeExceptionally(new UnknownHostException(endpoint));
                            }
                        }

                        @Override // android.net.DnsResolver.Callback
                        public void onError(DnsResolver.DnsException error) {
                            Log.e(Vpn.TAG, "Async dns resolver error : " + error);
                            result.completeExceptionally(new UnknownHostException(endpoint));
                        }
                    };
                    resolver.query(null, endpoint, 0, new Executor() { // from class: com.android.server.connectivity.-$$Lambda$Vpn$Dependencies$ewg0c6tcaz0ZNkSmMqupof9jo1M
                        @Override // java.util.concurrent.Executor
                        public final void execute(Runnable runnable) {
                            runnable.run();
                        }
                    }, cancellationSignal, cb);
                    return result.get();
                } catch (InterruptedException e2) {
                    Log.e(Vpn.TAG, "Legacy VPN was interrupted while resolving the endpoint", e2);
                    cancellationSignal.cancel();
                    throw e2;
                } catch (ExecutionException e3) {
                    Log.e(Vpn.TAG, "Cannot resolve VPN endpoint : " + endpoint + ".", e3);
                    throw e3;
                }
            }
        }

        public boolean checkInterfacePresent(Vpn vpn, String iface) {
            return vpn.jniCheck(iface) == 0;
        }
    }

    public Vpn(Looper looper, Context context, INetworkManagementService netService, int userHandle, KeyStore keyStore) {
        this(looper, context, new Dependencies(), netService, userHandle, keyStore, new SystemServices(context), new Ikev2SessionCreator());
    }

    protected Vpn(Looper looper, Context context, Dependencies deps, INetworkManagementService netService, int userHandle, KeyStore keyStore, SystemServices systemServices, Ikev2SessionCreator ikev2SessionCreator) {
        this.mEnableTeardown = true;
        this.mAlwaysOn = false;
        this.mLockdown = false;
        this.mLockdownWhitelist = Collections.emptyList();
        this.mBlockedUidsAsToldToNetd = new ArraySet();
        this.mObserver = new BaseNetworkObserver() { // from class: com.android.server.connectivity.Vpn.2
            public void interfaceStatusChanged(String interfaze, boolean up) {
                synchronized (Vpn.this) {
                    if (!up) {
                        if (Vpn.this.mVpnRunner != null && (Vpn.this.mVpnRunner instanceof LegacyVpnRunner)) {
                            ((LegacyVpnRunner) Vpn.this.mVpnRunner).exitIfOuterInterfaceIs(interfaze);
                        }
                    }
                }
            }

            public void interfaceRemoved(String interfaze) {
                synchronized (Vpn.this) {
                    if (interfaze.equals(Vpn.this.mInterface) && Vpn.this.jniCheck(interfaze) == 0) {
                        if (Vpn.this.mConnection != null) {
                            Vpn.this.mContext.unbindService(Vpn.this.mConnection);
                            Vpn.this.cleanupVpnStateLocked();
                        } else if (Vpn.this.mVpnRunner != null) {
                            Vpn.this.mVpnRunner.exit();
                        }
                    }
                }
            }
        };
        this.mContext = context;
        this.mDeps = deps;
        this.mNetd = netService;
        this.mUserHandle = userHandle;
        this.mLooper = looper;
        this.mSystemServices = systemServices;
        this.mIkev2SessionCreator = ikev2SessionCreator;
        this.mPackage = "[Legacy VPN]";
        this.mOwnerUID = getAppUid("[Legacy VPN]", userHandle);
        this.mIsPackageTargetingAtLeastQ = doesPackageTargetAtLeastQ(this.mPackage);
        try {
            netService.registerObserver(this.mObserver);
        } catch (RemoteException e) {
            Log.wtf(TAG, "Problem registering observer", e);
        }
        this.mNetworkInfo = new NetworkInfo(17, 0, NETWORKTYPE, "");
        NetworkCapabilities networkCapabilities = new NetworkCapabilities();
        this.mNetworkCapabilities = networkCapabilities;
        networkCapabilities.addTransportType(4);
        this.mNetworkCapabilities.removeCapability(15);
        updateCapabilities(null);
        loadAlwaysOnPackage(keyStore);
    }

    public void setEnableTeardown(boolean enableTeardown) {
        this.mEnableTeardown = enableTeardown;
    }

    protected void updateState(NetworkInfo.DetailedState detailedState, String reason) {
        Log.d(TAG, "setting state=" + detailedState + ", reason=" + reason);
        this.mNetworkInfo.setDetailedState(detailedState, reason, null);
        NetworkAgent networkAgent = this.mNetworkAgent;
        if (networkAgent != null) {
            networkAgent.sendNetworkInfo(this.mNetworkInfo);
        }
        updateAlwaysOnNotification(detailedState);
    }

    public synchronized NetworkCapabilities updateCapabilities(Network defaultNetwork) {
        if (this.mConfig == null) {
            return null;
        }
        Network[] underlyingNetworks = this.mConfig.underlyingNetworks;
        boolean isAlwaysMetered = false;
        if (underlyingNetworks == null && defaultNetwork != null) {
            underlyingNetworks = new Network[]{defaultNetwork};
        }
        if (this.mIsPackageTargetingAtLeastQ && this.mConfig.isMetered) {
            isAlwaysMetered = true;
        }
        applyUnderlyingCapabilities((ConnectivityManager) this.mContext.getSystemService(ConnectivityManager.class), underlyingNetworks, this.mNetworkCapabilities, isAlwaysMetered);
        return new NetworkCapabilities(this.mNetworkCapabilities);
    }

    public static void applyUnderlyingCapabilities(ConnectivityManager cm, Network[] underlyingNetworks, NetworkCapabilities caps, boolean isAlwaysMetered) {
        boolean z;
        boolean z2;
        Network[] networkArr = underlyingNetworks;
        boolean z3 = true;
        int[] transportTypes = {4};
        int downKbps = 0;
        int upKbps = 0;
        boolean metered = isAlwaysMetered;
        boolean roaming = false;
        boolean congested = false;
        boolean suspended = true;
        boolean hadUnderlyingNetworks = false;
        if (networkArr != null) {
            int length = networkArr.length;
            int i = 0;
            while (i < length) {
                Network underlying = networkArr[i];
                NetworkCapabilities underlyingCaps = cm.getNetworkCapabilities(underlying);
                if (underlyingCaps == null) {
                    z2 = true;
                } else {
                    hadUnderlyingNetworks = true;
                    int[] transportTypes2 = underlyingCaps.getTransportTypes();
                    int length2 = transportTypes2.length;
                    int i2 = 0;
                    while (i2 < length2) {
                        int i3 = length2;
                        int underlyingType = transportTypes2[i2];
                        transportTypes = ArrayUtils.appendInt(transportTypes, underlyingType);
                        i2++;
                        length2 = i3;
                    }
                    downKbps = NetworkCapabilities.minBandwidth(downKbps, underlyingCaps.getLinkDownstreamBandwidthKbps());
                    upKbps = NetworkCapabilities.minBandwidth(upKbps, underlyingCaps.getLinkUpstreamBandwidthKbps());
                    z2 = true;
                    metered |= !underlyingCaps.hasCapability(11);
                    roaming |= !underlyingCaps.hasCapability(18);
                    congested |= !underlyingCaps.hasCapability(20);
                    suspended &= !underlyingCaps.hasCapability(21);
                }
                i++;
                z3 = z2;
                length = length;
                networkArr = underlyingNetworks;
            }
            z = z3;
        } else {
            z = true;
        }
        if (!hadUnderlyingNetworks) {
            metered = true;
            roaming = false;
            congested = false;
            suspended = false;
        }
        caps.setTransportTypes(transportTypes);
        caps.setLinkDownstreamBandwidthKbps(downKbps);
        caps.setLinkUpstreamBandwidthKbps(upKbps);
        caps.setCapability(11, !metered ? z : false);
        caps.setCapability(18, !roaming);
        caps.setCapability(20, !congested);
        caps.setCapability(21, !suspended);
    }

    public synchronized void setLockdown(boolean lockdown) {
        enforceControlPermissionOrInternalCaller();
        setVpnForcedLocked(lockdown);
        this.mLockdown = lockdown;
        if (this.mAlwaysOn) {
            saveAlwaysOnPackage();
        }
    }

    public synchronized boolean getLockdown() {
        return this.mLockdown;
    }

    public synchronized boolean getAlwaysOn() {
        return this.mAlwaysOn;
    }

    public boolean isAlwaysOnPackageSupported(String packageName, KeyStore keyStore) {
        enforceSettingsPermission();
        if (packageName == null) {
            return false;
        }
        long oldId = Binder.clearCallingIdentity();
        try {
            if (getVpnProfilePrivileged(packageName, keyStore) != null) {
                Binder.restoreCallingIdentity(oldId);
                return true;
            }
            Binder.restoreCallingIdentity(oldId);
            PackageManager pm = this.mContext.getPackageManager();
            ApplicationInfo appInfo = null;
            try {
                appInfo = pm.getApplicationInfoAsUser(packageName, 0, this.mUserHandle);
            } catch (PackageManager.NameNotFoundException e) {
                Log.w(TAG, "Can't find \"" + packageName + "\" when checking always-on support");
            }
            if (appInfo == null || appInfo.targetSdkVersion < 24) {
                return false;
            }
            Intent intent = new Intent("android.net.VpnService");
            intent.setPackage(packageName);
            List<ResolveInfo> services = pm.queryIntentServicesAsUser(intent, 128, this.mUserHandle);
            if (services == null || services.size() == 0) {
                return false;
            }
            for (ResolveInfo rInfo : services) {
                Bundle metaData = rInfo.serviceInfo.metaData;
                if (metaData != null && !metaData.getBoolean("android.net.VpnService.SUPPORTS_ALWAYS_ON", true)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(oldId);
            throw th;
        }
    }

    public synchronized boolean setAlwaysOnPackage(String packageName, boolean lockdown, List<String> lockdownWhitelist, KeyStore keyStore) {
        enforceControlPermissionOrInternalCaller();
        if (setAlwaysOnPackageInternal(packageName, lockdown, lockdownWhitelist, keyStore)) {
            saveAlwaysOnPackage();
            return true;
        }
        return false;
    }

    private boolean setAlwaysOnPackageInternal(String packageName, boolean lockdown, List<String> lockdownWhitelist, KeyStore keyStore) {
        List<String> listEmptyList;
        boolean z = false;
        if ("[Legacy VPN]".equals(packageName)) {
            Log.w(TAG, "Not setting legacy VPN \"" + packageName + "\" as always-on.");
            return false;
        }
        if (lockdownWhitelist != null) {
            for (String pkg : lockdownWhitelist) {
                if (pkg.contains(",")) {
                    Log.w(TAG, "Not setting always-on vpn, invalid whitelisted package: " + pkg);
                    return false;
                }
            }
        }
        if (packageName != null) {
            long oldId = Binder.clearCallingIdentity();
            try {
                VpnProfile profile = getVpnProfilePrivileged(packageName, keyStore);
                Binder.restoreCallingIdentity(oldId);
                int grantType = profile == null ? 1 : 2;
                if (!setPackageAuthorization(packageName, grantType)) {
                    return false;
                }
                this.mAlwaysOn = true;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(oldId);
                throw th;
            }
        } else {
            packageName = "[Legacy VPN]";
            this.mAlwaysOn = false;
        }
        if (this.mAlwaysOn && lockdown) {
            z = true;
        }
        this.mLockdown = z;
        if (z && lockdownWhitelist != null) {
            listEmptyList = Collections.unmodifiableList(new ArrayList(lockdownWhitelist));
        } else {
            listEmptyList = Collections.emptyList();
        }
        this.mLockdownWhitelist = listEmptyList;
        if (isCurrentPreparedPackage(packageName)) {
            updateAlwaysOnNotification(this.mNetworkInfo.getDetailedState());
            setVpnForcedLocked(this.mLockdown);
        } else {
            prepareInternal(packageName);
        }
        return true;
    }

    private static boolean isNullOrLegacyVpn(String packageName) {
        return packageName == null || "[Legacy VPN]".equals(packageName);
    }

    public synchronized String getAlwaysOnPackage() {
        enforceControlPermissionOrInternalCaller();
        return this.mAlwaysOn ? this.mPackage : null;
    }

    public synchronized List<String> getLockdownWhitelist() {
        return this.mLockdown ? this.mLockdownWhitelist : null;
    }

    private void saveAlwaysOnPackage() {
        long token = Binder.clearCallingIdentity();
        try {
            this.mSystemServices.settingsSecurePutStringForUser("always_on_vpn_app", getAlwaysOnPackage(), this.mUserHandle);
            this.mSystemServices.settingsSecurePutIntForUser("always_on_vpn_lockdown", (this.mAlwaysOn && this.mLockdown) ? 1 : 0, this.mUserHandle);
            this.mSystemServices.settingsSecurePutStringForUser("always_on_vpn_lockdown_whitelist", String.join(",", this.mLockdownWhitelist), this.mUserHandle);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private void loadAlwaysOnPackage(KeyStore keyStore) {
        long token = Binder.clearCallingIdentity();
        try {
            String alwaysOnPackage = this.mSystemServices.settingsSecureGetStringForUser("always_on_vpn_app", this.mUserHandle);
            boolean alwaysOnLockdown = this.mSystemServices.settingsSecureGetIntForUser("always_on_vpn_lockdown", 0, this.mUserHandle) != 0;
            String whitelistString = this.mSystemServices.settingsSecureGetStringForUser("always_on_vpn_lockdown_whitelist", this.mUserHandle);
            List<String> whitelistedPackages = TextUtils.isEmpty(whitelistString) ? Collections.emptyList() : Arrays.asList(whitelistString.split(","));
            setAlwaysOnPackageInternal(alwaysOnPackage, alwaysOnLockdown, whitelistedPackages, keyStore);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public boolean startAlwaysOnVpn(KeyStore keyStore) {
        synchronized (this) {
            String alwaysOnPackage = getAlwaysOnPackage();
            if (alwaysOnPackage == null) {
                return true;
            }
            if (!isAlwaysOnPackageSupported(alwaysOnPackage, keyStore)) {
                setAlwaysOnPackage(null, false, null, keyStore);
                return false;
            }
            if (getNetworkInfo().isConnected()) {
                return true;
            }
            long oldId = Binder.clearCallingIdentity();
            try {
                VpnProfile profile = getVpnProfilePrivileged(alwaysOnPackage, keyStore);
                if (profile != null) {
                    startVpnProfilePrivileged(profile, alwaysOnPackage, null);
                    return true;
                }
                DeviceIdleInternal idleController = (DeviceIdleInternal) LocalServices.getService(DeviceIdleInternal.class);
                idleController.addPowerSaveTempWhitelistApp(Process.myUid(), alwaysOnPackage, 60000L, this.mUserHandle, false, "vpn");
                Intent serviceIntent = new Intent("android.net.VpnService");
                serviceIntent.setPackage(alwaysOnPackage);
                try {
                    return this.mContext.startServiceAsUser(serviceIntent, UserHandle.of(this.mUserHandle)) != null;
                } catch (RuntimeException e) {
                    Log.e(TAG, "VpnService " + serviceIntent + " failed to start", e);
                    return false;
                }
            } catch (Exception e2) {
                Log.e(TAG, "Error starting always-on VPN", e2);
                return false;
            } finally {
                Binder.restoreCallingIdentity(oldId);
            }
        }
    }

    public synchronized boolean prepare(String oldPackage, String newPackage, int vpnType) {
        if (oldPackage != null) {
            if (this.mAlwaysOn && !isCurrentPreparedPackage(oldPackage)) {
                return false;
            }
            if (!isCurrentPreparedPackage(oldPackage)) {
                if (oldPackage.equals("[Legacy VPN]") || !isVpnPreConsented(this.mContext, oldPackage, vpnType)) {
                    return false;
                }
                prepareInternal(oldPackage);
                return true;
            }
            if (!oldPackage.equals("[Legacy VPN]") && !isVpnPreConsented(this.mContext, oldPackage, vpnType)) {
                prepareInternal("[Legacy VPN]");
                return false;
            }
        }
        if (newPackage != null && (newPackage.equals("[Legacy VPN]") || !isCurrentPreparedPackage(newPackage))) {
            enforceControlPermission();
            if (this.mAlwaysOn && !isCurrentPreparedPackage(newPackage)) {
                return false;
            }
            prepareInternal(newPackage);
            return true;
        }
        return true;
    }

    private boolean isCurrentPreparedPackage(String packageName) {
        return getAppUid(packageName, this.mUserHandle) == this.mOwnerUID && this.mPackage.equals(packageName);
    }

    private void prepareInternal(String newPackage) {
        long token = Binder.clearCallingIdentity();
        try {
            if (this.mInterface != null) {
                this.mStatusIntent = null;
                agentDisconnect();
                jniReset(this.mInterface);
                this.mInterface = null;
                this.mNetworkCapabilities.setUids(null);
            }
            if (this.mConnection != null) {
                try {
                    this.mConnection.mService.transact(AudioFormat.SUB_MASK, Parcel.obtain(), null, 1);
                } catch (Exception e) {
                }
                this.mContext.unbindService(this.mConnection);
                cleanupVpnStateLocked();
            } else if (this.mVpnRunner != null) {
                this.mVpnRunner.exit();
            }
            try {
                this.mNetd.denyProtect(this.mOwnerUID);
            } catch (Exception e2) {
                Log.wtf(TAG, "Failed to disallow UID " + this.mOwnerUID + " to call protect() " + e2);
            }
            Log.i(TAG, "Switched from " + this.mPackage + " to " + newPackage);
            this.mPackage = newPackage;
            this.mOwnerUID = getAppUid(newPackage, this.mUserHandle);
            this.mIsPackageTargetingAtLeastQ = doesPackageTargetAtLeastQ(newPackage);
            try {
                this.mNetd.allowProtect(this.mOwnerUID);
            } catch (Exception e3) {
                Log.wtf(TAG, "Failed to allow UID " + this.mOwnerUID + " to call protect() " + e3);
            }
            this.mConfig = null;
            updateState(NetworkInfo.DetailedState.IDLE, "prepare");
            setVpnForcedLocked(this.mLockdown);
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public boolean setPackageAuthorization(String packageName, int vpnType) {
        int[] toChange;
        enforceControlPermissionOrInternalCaller();
        int uid = getAppUid(packageName, this.mUserHandle);
        if (uid == -1 || "[Legacy VPN]".equals(packageName)) {
            return false;
        }
        long token = Binder.clearCallingIdentity();
        try {
            if (vpnType == -1) {
                toChange = new int[]{47, 94};
            } else if (vpnType == 1) {
                toChange = new int[]{47};
            } else {
                if (vpnType != 2) {
                    Log.wtf(TAG, "Unrecognized VPN type while granting authorization");
                    Binder.restoreCallingIdentity(token);
                    return false;
                }
                toChange = new int[]{94};
            }
            AppOpsManager appOpMgr = (AppOpsManager) this.mContext.getSystemService("appops");
            for (int appOp : toChange) {
                appOpMgr.setMode(appOp, uid, packageName, vpnType == -1 ? 1 : 0);
            }
            Binder.restoreCallingIdentity(token);
            return true;
        } catch (Exception e) {
            Log.wtf(TAG, "Failed to set app ops for package " + packageName + ", uid " + uid, e);
            return false;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private static boolean isVpnPreConsented(Context context, String packageName, int vpnType) {
        if (vpnType == 1) {
            return isVpnServicePreConsented(context, packageName);
        }
        if (vpnType == 2) {
            return isVpnProfilePreConsented(context, packageName);
        }
        return false;
    }

    private static boolean doesPackageHaveAppop(Context context, String packageName, int appop) {
        AppOpsManager appOps = (AppOpsManager) context.getSystemService("appops");
        return appOps.noteOpNoThrow(appop, Binder.getCallingUid(), packageName) == 0;
    }

    private static boolean isVpnServicePreConsented(Context context, String packageName) {
        return doesPackageHaveAppop(context, packageName, 47);
    }

    private static boolean isVpnProfilePreConsented(Context context, String packageName) {
        return doesPackageHaveAppop(context, packageName, 94) || isVpnServicePreConsented(context, packageName);
    }

    private int getAppUid(final String app, final int userHandle) {
        if ("[Legacy VPN]".equals(app)) {
            return Process.myUid();
        }
        final PackageManager pm = this.mContext.getPackageManager();
        return ((Integer) Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.connectivity.-$$Lambda$Vpn$01GHnWeBsEVRYvEsZRkJXx1CEVs
            public final Object getOrThrow() {
                return Vpn.lambda$getAppUid$0(pm, app, userHandle);
            }
        })).intValue();
    }

    static /* synthetic */ Integer lambda$getAppUid$0(PackageManager pm, String app, int userHandle) throws Exception {
        try {
            return Integer.valueOf(pm.getPackageUidAsUser(app, userHandle));
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        }
    }

    private boolean doesPackageTargetAtLeastQ(String packageName) {
        if ("[Legacy VPN]".equals(packageName)) {
            return true;
        }
        PackageManager pm = this.mContext.getPackageManager();
        try {
            ApplicationInfo appInfo = pm.getApplicationInfoAsUser(packageName, 0, this.mUserHandle);
            return appInfo.targetSdkVersion >= 29;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(TAG, "Can't find \"" + packageName + "\"");
            return false;
        }
    }

    public NetworkInfo getNetworkInfo() {
        return this.mNetworkInfo;
    }

    public int getNetId() {
        Network network;
        NetworkAgent agent = this.mNetworkAgent;
        if (agent == null || (network = agent.getNetwork()) == null) {
            return 0;
        }
        return network.netId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinkProperties makeLinkProperties() {
        boolean allowIPv4 = this.mConfig.allowIPv4;
        boolean allowIPv6 = this.mConfig.allowIPv6;
        LinkProperties lp = new LinkProperties();
        lp.setInterfaceName(this.mInterface);
        if (this.mConfig.addresses != null) {
            for (LinkAddress address : this.mConfig.addresses) {
                lp.addLinkAddress(address);
                allowIPv4 |= address.getAddress() instanceof Inet4Address;
                allowIPv6 |= address.getAddress() instanceof Inet6Address;
            }
        }
        if (this.mConfig.routes != null) {
            for (RouteInfo route : this.mConfig.routes) {
                lp.addRoute(route);
                InetAddress address2 = route.getDestination().getAddress();
                allowIPv4 |= address2 instanceof Inet4Address;
                allowIPv6 |= address2 instanceof Inet6Address;
            }
        }
        if (this.mConfig.dnsServers != null) {
            for (String dnsServer : this.mConfig.dnsServers) {
                InetAddress address3 = InetAddress.parseNumericAddress(dnsServer);
                lp.addDnsServer(address3);
                allowIPv4 |= address3 instanceof Inet4Address;
                allowIPv6 |= address3 instanceof Inet6Address;
            }
        }
        lp.setHttpProxy(this.mConfig.proxyInfo);
        if (!allowIPv4) {
            lp.addRoute(new RouteInfo(new IpPrefix(Inet4Address.ANY, 0), 7));
        }
        if (!allowIPv6) {
            lp.addRoute(new RouteInfo(new IpPrefix(Inet6Address.ANY, 0), 7));
        }
        StringBuilder buffer = new StringBuilder();
        if (this.mConfig.searchDomains != null) {
            for (String domain : this.mConfig.searchDomains) {
                buffer.append(domain);
                buffer.append(' ');
            }
        }
        lp.setDomains(buffer.toString().trim());
        if (this.mConfig.mtu > 0) {
            lp.setMtu(this.mConfig.mtu);
        }
        return lp;
    }

    private boolean updateLinkPropertiesInPlaceIfPossible(NetworkAgent agent, VpnConfig oldConfig) {
        if (oldConfig.allowBypass != this.mConfig.allowBypass) {
            Log.i(TAG, "Handover not possible due to changes to allowBypass");
            return false;
        }
        if (!Objects.equals(oldConfig.allowedApplications, this.mConfig.allowedApplications) || !Objects.equals(oldConfig.disallowedApplications, this.mConfig.disallowedApplications)) {
            Log.i(TAG, "Handover not possible due to changes to whitelisted/blacklisted apps");
            return false;
        }
        agent.sendLinkProperties(makeLinkProperties());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void agentConnect() {
        LinkProperties lp = makeLinkProperties();
        this.mNetworkCapabilities.addCapability(12);
        this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.CONNECTING, null, null);
        NetworkAgentConfig networkAgentConfig = new NetworkAgentConfig();
        networkAgentConfig.allowBypass = this.mConfig.allowBypass && !this.mLockdown;
        this.mNetworkCapabilities.setOwnerUid(this.mOwnerUID);
        this.mNetworkCapabilities.setAdministratorUids(new int[]{this.mOwnerUID});
        this.mNetworkCapabilities.setUids(createUserAndRestrictedProfilesRanges(this.mUserHandle, this.mConfig.allowedApplications, this.mConfig.disallowedApplications));
        long token = Binder.clearCallingIdentity();
        try {
            this.mNetworkAgent = new NetworkAgent(this.mLooper, this.mContext, NETWORKTYPE, this.mNetworkInfo, this.mNetworkCapabilities, lp, 101, networkAgentConfig, -2) { // from class: com.android.server.connectivity.Vpn.1
                public void unwanted() {
                }
            };
            Binder.restoreCallingIdentity(token);
            this.mNetworkInfo.setIsAvailable(true);
            updateState(NetworkInfo.DetailedState.CONNECTED, "agentConnect");
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    private boolean canHaveRestrictedProfile(int userId) {
        long token = Binder.clearCallingIdentity();
        try {
            return UserManager.get(this.mContext).canHaveRestrictedProfile(userId);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private void agentDisconnect(NetworkAgent networkAgent) {
        if (networkAgent != null) {
            NetworkInfo networkInfo = new NetworkInfo(this.mNetworkInfo);
            networkInfo.setIsAvailable(false);
            networkInfo.setDetailedState(NetworkInfo.DetailedState.DISCONNECTED, null, null);
            networkAgent.sendNetworkInfo(networkInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void agentDisconnect() {
        if (this.mNetworkInfo.isConnected()) {
            this.mNetworkInfo.setIsAvailable(false);
            updateState(NetworkInfo.DetailedState.DISCONNECTED, "agentDisconnect");
            this.mNetworkAgent = null;
        }
    }

    public synchronized ParcelFileDescriptor establish(VpnConfig config) {
        if (Binder.getCallingUid() != this.mOwnerUID) {
            return null;
        }
        if (!isVpnServicePreConsented(this.mContext, this.mPackage)) {
            return null;
        }
        try {
            Intent intent = new Intent("android.net.VpnService");
            intent.setClassName(this.mPackage, config.user);
            long token = Binder.clearCallingIdentity();
            try {
                enforceNotRestrictedUser();
                ResolveInfo info = AppGlobals.getPackageManager().resolveService(intent, (String) null, 0, this.mUserHandle);
                try {
                    if (info == null) {
                        throw new SecurityException("Cannot find " + config.user);
                    }
                    if (!"android.permission.BIND_VPN_SERVICE".equals(info.serviceInfo.permission)) {
                        throw new SecurityException(config.user + " does not require android.permission.BIND_VPN_SERVICE");
                    }
                    Binder.restoreCallingIdentity(token);
                    VpnConfig oldConfig = this.mConfig;
                    String oldInterface = this.mInterface;
                    Connection oldConnection = this.mConnection;
                    NetworkAgent oldNetworkAgent = this.mNetworkAgent;
                    Set<UidRange> oldUsers = this.mNetworkCapabilities.getUids();
                    ParcelFileDescriptor tun = ParcelFileDescriptor.adoptFd(jniCreate(config.mtu));
                    try {
                        String interfaze = jniGetName(tun.getFd());
                        StringBuilder builder = new StringBuilder();
                        for (LinkAddress address : config.addresses) {
                            try {
                                builder.append(" ");
                                builder.append(address);
                            } catch (RuntimeException e) {
                                e = e;
                            }
                        }
                        try {
                            if (jniSetAddresses(interfaze, builder.toString()) < 1) {
                                throw new IllegalArgumentException("At least one address must be specified");
                            }
                            Connection connection = new Connection();
                            if (!this.mContext.bindServiceAsUser(intent, connection, AudioFormat.AAC_MAIN, new UserHandle(this.mUserHandle))) {
                                throw new IllegalStateException("Cannot bind " + config.user);
                            }
                            this.mConnection = connection;
                            this.mInterface = interfaze;
                            config.user = this.mPackage;
                            config.interfaze = this.mInterface;
                            config.startTime = SystemClock.elapsedRealtime();
                            this.mConfig = config;
                            if (oldConfig == null || !updateLinkPropertiesInPlaceIfPossible(this.mNetworkAgent, oldConfig)) {
                                this.mNetworkAgent = null;
                                updateState(NetworkInfo.DetailedState.CONNECTING, "establish");
                                agentConnect();
                                agentDisconnect(oldNetworkAgent);
                            }
                            if (oldConnection != null) {
                                this.mContext.unbindService(oldConnection);
                            }
                            if (oldInterface != null && !oldInterface.equals(interfaze)) {
                                jniReset(oldInterface);
                            }
                            try {
                                IoUtils.setBlocking(tun.getFileDescriptor(), config.blocking);
                                Log.i(TAG, "Established by " + config.user + " on " + this.mInterface);
                                return tun;
                            } catch (IOException e2) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("Cannot set tunnel's fd as blocking=");
                                sb.append(config.blocking);
                                throw new IllegalStateException(sb.toString(), e2);
                            }
                        } catch (RuntimeException e3) {
                            e = e3;
                        }
                    } catch (RuntimeException e4) {
                        e = e4;
                    }
                    IoUtils.closeQuietly(tun);
                    if (oldNetworkAgent != this.mNetworkAgent) {
                        agentDisconnect();
                    }
                    this.mConfig = oldConfig;
                    this.mConnection = oldConnection;
                    this.mNetworkCapabilities.setUids(oldUsers);
                    this.mNetworkAgent = oldNetworkAgent;
                    this.mInterface = oldInterface;
                    throw e;
                } catch (RemoteException e5) {
                }
            } catch (RemoteException e6) {
            } catch (Throwable th) {
                e = th;
                Binder.restoreCallingIdentity(token);
                throw e;
            }
            throw new SecurityException("Cannot find " + config.user);
        } catch (Throwable th2) {
            e = th2;
        }
    }

    private boolean isRunningLocked() {
        return (this.mNetworkAgent == null || this.mInterface == null) ? false : true;
    }

    protected boolean isCallerEstablishedOwnerLocked() {
        return isRunningLocked() && Binder.getCallingUid() == this.mOwnerUID;
    }

    private SortedSet<Integer> getAppsUids(List<String> packageNames, int userHandle) {
        SortedSet<Integer> uids = new TreeSet<>();
        for (String app : packageNames) {
            int uid = getAppUid(app, userHandle);
            if (uid != -1) {
                uids.add(Integer.valueOf(uid));
            }
        }
        return uids;
    }

    Set<UidRange> createUserAndRestrictedProfilesRanges(int userHandle, List<String> allowedApplications, List<String> disallowedApplications) {
        Set<UidRange> ranges = new ArraySet<>();
        addUserToRanges(ranges, userHandle, allowedApplications, disallowedApplications);
        if (canHaveRestrictedProfile(userHandle)) {
            long token = Binder.clearCallingIdentity();
            try {
                List<UserInfo> users = UserManager.get(this.mContext).getUsers(true);
                Binder.restoreCallingIdentity(token);
                for (UserInfo user : users) {
                    if (user.isRestricted() && user.restrictedProfileParentId == userHandle) {
                        addUserToRanges(ranges, user.id, allowedApplications, disallowedApplications);
                    }
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
        return ranges;
    }

    void addUserToRanges(Set<UidRange> ranges, int userHandle, List<String> allowedApplications, List<String> disallowedApplications) {
        if (allowedApplications != null) {
            int start = -1;
            int stop = -1;
            Iterator<Integer> it = getAppsUids(allowedApplications, userHandle).iterator();
            while (it.hasNext()) {
                int uid = it.next().intValue();
                if (start == -1) {
                    start = uid;
                } else if (uid != stop + 1) {
                    ranges.add(new UidRange(start, stop));
                    start = uid;
                }
                stop = uid;
            }
            if (start != -1) {
                ranges.add(new UidRange(start, stop));
                return;
            }
            return;
        }
        if (disallowedApplications != null) {
            UidRange userRange = UidRange.createForUser(userHandle);
            int start2 = userRange.start;
            Iterator<Integer> it2 = getAppsUids(disallowedApplications, userHandle).iterator();
            while (it2.hasNext()) {
                int uid2 = it2.next().intValue();
                if (uid2 == start2) {
                    start2++;
                } else {
                    ranges.add(new UidRange(start2, uid2 - 1));
                    start2 = uid2 + 1;
                }
            }
            if (start2 <= userRange.stop) {
                ranges.add(new UidRange(start2, userRange.stop));
                return;
            }
            return;
        }
        ranges.add(UidRange.createForUser(userHandle));
    }

    private static List<UidRange> uidRangesForUser(int userHandle, Set<UidRange> existingRanges) {
        UidRange userRange = UidRange.createForUser(userHandle);
        List<UidRange> ranges = new ArrayList<>();
        for (UidRange range : existingRanges) {
            if (userRange.containsRange(range)) {
                ranges.add(range);
            }
        }
        return ranges;
    }

    public void onUserAdded(int userHandle) {
        UserInfo user = UserManager.get(this.mContext).getUserInfo(userHandle);
        if (user.isRestricted() && user.restrictedProfileParentId == this.mUserHandle) {
            synchronized (this) {
                Set existingRanges = this.mNetworkCapabilities.getUids();
                if (existingRanges != null) {
                    try {
                        addUserToRanges(existingRanges, userHandle, this.mConfig.allowedApplications, this.mConfig.disallowedApplications);
                        this.mNetworkCapabilities.setUids(existingRanges);
                    } catch (Exception e) {
                        Log.wtf(TAG, "Failed to add restricted user to owner", e);
                    }
                    setVpnForcedLocked(this.mLockdown);
                } else {
                    setVpnForcedLocked(this.mLockdown);
                }
                throw th;
            }
        }
    }

    public void onUserRemoved(int userHandle) {
        UserInfo user = UserManager.get(this.mContext).getUserInfo(userHandle);
        if (user.isRestricted() && user.restrictedProfileParentId == this.mUserHandle) {
            synchronized (this) {
                Set<UidRange> existingRanges = this.mNetworkCapabilities.getUids();
                if (existingRanges != null) {
                    try {
                        List<UidRange> removedRanges = uidRangesForUser(userHandle, existingRanges);
                        existingRanges.removeAll(removedRanges);
                        this.mNetworkCapabilities.setUids(existingRanges);
                    } catch (Exception e) {
                        Log.wtf(TAG, "Failed to remove restricted user to owner", e);
                    }
                    setVpnForcedLocked(this.mLockdown);
                } else {
                    setVpnForcedLocked(this.mLockdown);
                }
                throw th;
            }
        }
    }

    public synchronized void onUserStopped() {
        setVpnForcedLocked(false);
        this.mAlwaysOn = false;
        agentDisconnect();
    }

    private void setVpnForcedLocked(boolean enforce) {
        List<String> exemptedPackages;
        Set<UidRange> rangesToTellNetdToAdd;
        if (isNullOrLegacyVpn(this.mPackage)) {
            exemptedPackages = null;
        } else {
            exemptedPackages = new ArrayList<>(this.mLockdownWhitelist);
            exemptedPackages.add(this.mPackage);
        }
        Set<UidRange> rangesToTellNetdToRemove = new ArraySet<>(this.mBlockedUidsAsToldToNetd);
        if (enforce) {
            Set<UidRange> rangesThatShouldBeBlocked = createUserAndRestrictedProfilesRanges(this.mUserHandle, null, exemptedPackages);
            for (UidRange range : rangesThatShouldBeBlocked) {
                if (range.start == 0) {
                    rangesThatShouldBeBlocked.remove(range);
                    if (range.stop != 0) {
                        rangesThatShouldBeBlocked.add(new UidRange(1, range.stop));
                    }
                }
            }
            rangesToTellNetdToRemove.removeAll(rangesThatShouldBeBlocked);
            rangesToTellNetdToAdd = rangesThatShouldBeBlocked;
            rangesToTellNetdToAdd.removeAll(this.mBlockedUidsAsToldToNetd);
        } else {
            rangesToTellNetdToAdd = Collections.emptySet();
        }
        setAllowOnlyVpnForUids(false, rangesToTellNetdToRemove);
        setAllowOnlyVpnForUids(true, rangesToTellNetdToAdd);
    }

    private boolean setAllowOnlyVpnForUids(boolean enforce, Collection<UidRange> ranges) {
        if (ranges.size() == 0) {
            return true;
        }
        UidRange[] rangesArray = (UidRange[]) ranges.toArray(new UidRange[ranges.size()]);
        try {
            this.mNetd.setAllowOnlyVpnForUids(enforce, rangesArray);
            if (enforce) {
                this.mBlockedUidsAsToldToNetd.addAll(ranges);
            } else {
                this.mBlockedUidsAsToldToNetd.removeAll(ranges);
            }
            return true;
        } catch (RemoteException | RuntimeException e) {
            Log.e(TAG, "Updating blocked=" + enforce + " for UIDs " + Arrays.toString(ranges.toArray()) + " failed", e);
            return false;
        }
    }

    public VpnConfig getVpnConfig() {
        enforceControlPermission();
        return this.mConfig;
    }

    @Deprecated
    public synchronized void interfaceStatusChanged(String iface, boolean up) {
        try {
            try {
                this.mObserver.interfaceStatusChanged(iface, up);
            } catch (RemoteException e) {
            }
        } catch (RemoteException e2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupVpnStateLocked() {
        this.mStatusIntent = null;
        this.mNetworkCapabilities.setUids(null);
        this.mConfig = null;
        this.mInterface = null;
        this.mVpnRunner = null;
        this.mConnection = null;
        agentDisconnect();
    }

    private void enforceControlPermission() {
        this.mContext.enforceCallingPermission("android.permission.CONTROL_VPN", "Unauthorized Caller");
    }

    private void enforceControlPermissionOrInternalCaller() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CONTROL_VPN", "Unauthorized Caller");
    }

    private void enforceSettingsPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.NETWORK_SETTINGS", "Unauthorized Caller");
    }

    private class Connection implements ServiceConnection {
        private IBinder mService;

        private Connection() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            this.mService = service;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            this.mService = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareStatusIntent() {
        long token = Binder.clearCallingIdentity();
        try {
            this.mStatusIntent = VpnConfig.getIntentForStatusPanel(this.mContext);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public synchronized boolean addAddress(String address, int prefixLength) {
        if (!isCallerEstablishedOwnerLocked()) {
            return false;
        }
        boolean success = jniAddAddress(this.mInterface, address, prefixLength);
        this.mNetworkAgent.sendLinkProperties(makeLinkProperties());
        return success;
    }

    public synchronized boolean removeAddress(String address, int prefixLength) {
        if (!isCallerEstablishedOwnerLocked()) {
            return false;
        }
        boolean success = jniDelAddress(this.mInterface, address, prefixLength);
        this.mNetworkAgent.sendLinkProperties(makeLinkProperties());
        return success;
    }

    public synchronized boolean setUnderlyingNetworks(Network[] networks) {
        if (!isCallerEstablishedOwnerLocked()) {
            return false;
        }
        if (networks == null) {
            this.mConfig.underlyingNetworks = null;
        } else {
            this.mConfig.underlyingNetworks = new Network[networks.length];
            for (int i = 0; i < networks.length; i++) {
                if (networks[i] == null) {
                    this.mConfig.underlyingNetworks[i] = null;
                } else {
                    this.mConfig.underlyingNetworks[i] = new Network(networks[i].netId);
                }
            }
        }
        return true;
    }

    public synchronized Network[] getUnderlyingNetworks() {
        if (!isRunningLocked()) {
            return null;
        }
        return this.mConfig.underlyingNetworks;
    }

    public synchronized VpnInfo getVpnInfo() {
        if (!isRunningLocked()) {
            return null;
        }
        VpnInfo info = new VpnInfo();
        info.ownerUid = this.mOwnerUID;
        info.vpnIface = this.mInterface;
        return info;
    }

    public synchronized boolean appliesToUid(int uid) {
        if (!isRunningLocked()) {
            return false;
        }
        return this.mNetworkCapabilities.appliesToUid(uid);
    }

    public synchronized int getActiveAppVpnType() {
        if ("[Legacy VPN]".equals(this.mPackage)) {
            return -1;
        }
        if (this.mVpnRunner != null && (this.mVpnRunner instanceof IkeV2VpnRunner)) {
            return 2;
        }
        return 1;
    }

    public synchronized boolean isBlockingUid(int uid) {
        if (this.mNetworkInfo.isConnected()) {
            return !appliesToUid(uid);
        }
        return UidRange.containsUid(this.mBlockedUidsAsToldToNetd, uid);
    }

    private void updateAlwaysOnNotification(NetworkInfo.DetailedState networkState) {
        boolean visible = this.mAlwaysOn && networkState != NetworkInfo.DetailedState.CONNECTED;
        UserHandle user = UserHandle.of(this.mUserHandle);
        long token = Binder.clearCallingIdentity();
        try {
            NotificationManager notificationManager = NotificationManager.from(this.mContext);
            if (!visible) {
                notificationManager.cancelAsUser(TAG, 17, user);
                return;
            }
            Intent intent = new Intent();
            intent.setComponent(ComponentName.unflattenFromString(this.mContext.getString(R.string.config_defaultTranslationService)));
            intent.putExtra("lockdown", this.mLockdown);
            intent.addFlags(AudioFormat.EVRC);
            PendingIntent configIntent = this.mSystemServices.pendingIntentGetActivityAsUser(intent, AudioFormat.DTS_HD, user);
            Notification.Builder builder = new Notification.Builder(this.mContext, SystemNotificationChannels.VPN).setSmallIcon(R.drawable.rate_star_med_half_holo_light).setContentTitle(this.mContext.getString(R.string.permlab_disableKeyguard)).setContentText(this.mContext.getString(R.string.permlab_createNetworkSockets)).setContentIntent(configIntent).setCategory("sys").setVisibility(1).setOngoing(true).setColor(this.mContext.getColor(R.color.system_notification_accent_color));
            notificationManager.notifyAsUser(TAG, 17, builder.build(), user);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public static class SystemServices {
        private final Context mContext;

        public SystemServices(Context context) {
            this.mContext = context;
        }

        public PendingIntent pendingIntentGetActivityAsUser(Intent intent, int flags, UserHandle user) {
            return PendingIntent.getActivityAsUser(this.mContext, 0, intent, flags, null, user);
        }

        public void settingsSecurePutStringForUser(String key, String value, int userId) {
            Settings.Secure.putStringForUser(this.mContext.getContentResolver(), key, value, userId);
        }

        public void settingsSecurePutIntForUser(String key, int value, int userId) {
            Settings.Secure.putIntForUser(this.mContext.getContentResolver(), key, value, userId);
        }

        public String settingsSecureGetStringForUser(String key, int userId) {
            return Settings.Secure.getStringForUser(this.mContext.getContentResolver(), key, userId);
        }

        public int settingsSecureGetIntForUser(String key, int def, int userId) {
            return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), key, def, userId);
        }

        public boolean isCallerSystem() {
            return Binder.getCallingUid() == 1000;
        }
    }

    private static RouteInfo findIPv4DefaultRoute(LinkProperties prop) {
        for (RouteInfo route : prop.getAllRoutes()) {
            if (route.isDefaultRoute() && (route.getGateway() instanceof Inet4Address)) {
                return route;
            }
        }
        throw new IllegalStateException("Unable to find IPv4 default gateway");
    }

    private void enforceNotRestrictedUser() {
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.connectivity.-$$Lambda$Vpn$S2EK4wFrspvxxxzu8J3SwhT7oVM
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$enforceNotRestrictedUser$1$Vpn();
            }
        });
    }

    public /* synthetic */ void lambda$enforceNotRestrictedUser$1$Vpn() throws Exception {
        UserManager mgr = UserManager.get(this.mContext);
        UserInfo user = mgr.getUserInfo(this.mUserHandle);
        if (user.isRestricted()) {
            throw new SecurityException("Restricted users cannot configure VPNs");
        }
    }

    public void startLegacyVpn(VpnProfile profile, KeyStore keyStore, LinkProperties egress) {
        enforceControlPermission();
        long token = Binder.clearCallingIdentity();
        try {
            startLegacyVpnPrivileged(profile, keyStore, egress);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:45:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:47:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:49:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:50:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:52:0x026c  */
    /* JADX WARN: Code duplicated, block: B:54:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:55:0x02da  */
    /* JADX WARN: Code duplicated, block: B:58:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:59:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:62:0x031b  */
    /* JADX WARN: Code duplicated, block: B:65:0x0331  */
    public void startLegacyVpnPrivileged(VpnProfile profile, KeyStore keyStore, LinkProperties egress) {
        String[] mtpd;
        int i;
        String str;
        boolean z;
        VpnConfig config;
        char c;
        UserManager mgr = UserManager.get(this.mContext);
        UserInfo user = mgr.getUserInfo(this.mUserHandle);
        if (user.isRestricted() || mgr.hasUserRestriction("no_config_vpn", new UserHandle(this.mUserHandle))) {
            throw new SecurityException("Restricted users cannot establish VPNs");
        }
        RouteInfo ipv4DefaultRoute = findIPv4DefaultRoute(egress);
        String gateway = ipv4DefaultRoute.getGateway().getHostAddress();
        String iface = ipv4DefaultRoute.getInterface();
        String privateKey = "";
        String userCert = "";
        String caCert = "";
        String serverCert = "";
        if (!profile.ipsecUserCert.isEmpty()) {
            privateKey = "USRPKEY_" + profile.ipsecUserCert;
            byte[] value = keyStore.get("USRCERT_" + profile.ipsecUserCert);
            userCert = value == null ? null : new String(value, StandardCharsets.UTF_8);
        }
        if (!profile.ipsecCaCert.isEmpty()) {
            byte[] value2 = keyStore.get("CACERT_" + profile.ipsecCaCert);
            caCert = value2 == null ? null : new String(value2, StandardCharsets.UTF_8);
        }
        if (!profile.ipsecServerCert.isEmpty()) {
            byte[] value3 = keyStore.get("USRCERT_" + profile.ipsecServerCert);
            serverCert = value3 == null ? null : new String(value3, StandardCharsets.UTF_8);
        }
        if (userCert == null || caCert == null || serverCert == null) {
            throw new IllegalStateException("Cannot load credentials");
        }
        String[] racoon = null;
        switch (profile.type) {
            case 1:
                racoon = new String[]{iface, profile.server, "udppsk", profile.ipsecIdentifier, profile.ipsecSecret, "1701"};
                mtpd = null;
                i = profile.type;
                if (i != 0) {
                    String[] strArr = new String[20];
                    strArr[0] = iface;
                    strArr[1] = "pptp";
                    strArr[2] = profile.server;
                    strArr[3] = "1723";
                    strArr[4] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr[5] = profile.username;
                    strArr[6] = "password";
                    strArr[7] = profile.password;
                    strArr[8] = "linkname";
                    strArr[9] = "vpn";
                    strArr[10] = "refuse-eap";
                    strArr[11] = "nodefaultroute";
                    strArr[12] = "usepeerdns";
                    strArr[13] = "idle";
                    strArr[14] = "1800";
                    strArr[15] = "mtu";
                    strArr[16] = "1400";
                    strArr[17] = "mru";
                    strArr[18] = "1400";
                    if (profile.mppe) {
                        str = "+mppe";
                    } else {
                        str = "nomppe";
                    }
                    strArr[19] = str;
                    mtpd = strArr;
                    if (profile.mppe) {
                        z = true;
                    } else {
                        z = true;
                        mtpd = (String[]) Arrays.copyOf(mtpd, mtpd.length + 1);
                        mtpd[mtpd.length - 1] = "-pap";
                    }
                } else {
                    if (i != 1) {
                        c = 2;
                        if (i != 2) {
                            z = true;
                        }
                    } else {
                        c = 2;
                    }
                    String[] strArr2 = new String[20];
                    strArr2[0] = iface;
                    strArr2[1] = "l2tp";
                    strArr2[c] = profile.server;
                    strArr2[3] = "1701";
                    strArr2[4] = profile.l2tpSecret;
                    strArr2[5] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr2[6] = profile.username;
                    strArr2[7] = "password";
                    strArr2[8] = profile.password;
                    strArr2[9] = "linkname";
                    strArr2[10] = "vpn";
                    strArr2[11] = "refuse-eap";
                    strArr2[12] = "nodefaultroute";
                    strArr2[13] = "usepeerdns";
                    strArr2[14] = "idle";
                    strArr2[15] = "1800";
                    strArr2[16] = "mtu";
                    strArr2[17] = "1400";
                    strArr2[18] = "mru";
                    strArr2[19] = "1400";
                    mtpd = strArr2;
                    z = true;
                }
                config = new VpnConfig();
                config.legacy = z;
                config.user = profile.key;
                config.interfaze = iface;
                config.session = profile.name;
                config.isMetered = false;
                config.proxyInfo = profile.proxy;
                config.addLegacyRoutes(profile.routes);
                if (!profile.dnsServers.isEmpty()) {
                    config.dnsServers = Arrays.asList(profile.dnsServers.split(" +"));
                }
                if (!profile.searchDomains.isEmpty()) {
                    config.searchDomains = Arrays.asList(profile.searchDomains.split(" +"));
                }
                startLegacyVpn(config, racoon, mtpd, profile);
                return;
            case 2:
                racoon = new String[]{iface, profile.server, "udprsa", privateKey, userCert, caCert, serverCert, "1701"};
                mtpd = null;
                i = profile.type;
                if (i != 0) {
                    String[] strArr3 = new String[20];
                    strArr3[0] = iface;
                    strArr3[1] = "pptp";
                    strArr3[2] = profile.server;
                    strArr3[3] = "1723";
                    strArr3[4] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr3[5] = profile.username;
                    strArr3[6] = "password";
                    strArr3[7] = profile.password;
                    strArr3[8] = "linkname";
                    strArr3[9] = "vpn";
                    strArr3[10] = "refuse-eap";
                    strArr3[11] = "nodefaultroute";
                    strArr3[12] = "usepeerdns";
                    strArr3[13] = "idle";
                    strArr3[14] = "1800";
                    strArr3[15] = "mtu";
                    strArr3[16] = "1400";
                    strArr3[17] = "mru";
                    strArr3[18] = "1400";
                    if (profile.mppe) {
                        str = "+mppe";
                    } else {
                        str = "nomppe";
                    }
                    strArr3[19] = str;
                    mtpd = strArr3;
                    if (profile.mppe) {
                        z = true;
                    } else {
                        z = true;
                        mtpd = (String[]) Arrays.copyOf(mtpd, mtpd.length + 1);
                        mtpd[mtpd.length - 1] = "-pap";
                    }
                } else {
                    if (i != 1) {
                        c = 2;
                        if (i != 2) {
                            z = true;
                        }
                    } else {
                        c = 2;
                    }
                    String[] strArr4 = new String[20];
                    strArr4[0] = iface;
                    strArr4[1] = "l2tp";
                    strArr4[c] = profile.server;
                    strArr4[3] = "1701";
                    strArr4[4] = profile.l2tpSecret;
                    strArr4[5] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr4[6] = profile.username;
                    strArr4[7] = "password";
                    strArr4[8] = profile.password;
                    strArr4[9] = "linkname";
                    strArr4[10] = "vpn";
                    strArr4[11] = "refuse-eap";
                    strArr4[12] = "nodefaultroute";
                    strArr4[13] = "usepeerdns";
                    strArr4[14] = "idle";
                    strArr4[15] = "1800";
                    strArr4[16] = "mtu";
                    strArr4[17] = "1400";
                    strArr4[18] = "mru";
                    strArr4[19] = "1400";
                    mtpd = strArr4;
                    z = true;
                }
                config = new VpnConfig();
                config.legacy = z;
                config.user = profile.key;
                config.interfaze = iface;
                config.session = profile.name;
                config.isMetered = false;
                config.proxyInfo = profile.proxy;
                config.addLegacyRoutes(profile.routes);
                if (!profile.dnsServers.isEmpty()) {
                    config.dnsServers = Arrays.asList(profile.dnsServers.split(" +"));
                }
                if (!profile.searchDomains.isEmpty()) {
                    config.searchDomains = Arrays.asList(profile.searchDomains.split(" +"));
                }
                startLegacyVpn(config, racoon, mtpd, profile);
                return;
            case 3:
                racoon = new String[]{iface, profile.server, "xauthpsk", profile.ipsecIdentifier, profile.ipsecSecret, profile.username, profile.password, "", gateway};
                mtpd = null;
                i = profile.type;
                if (i != 0) {
                    String[] strArr5 = new String[20];
                    strArr5[0] = iface;
                    strArr5[1] = "pptp";
                    strArr5[2] = profile.server;
                    strArr5[3] = "1723";
                    strArr5[4] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr5[5] = profile.username;
                    strArr5[6] = "password";
                    strArr5[7] = profile.password;
                    strArr5[8] = "linkname";
                    strArr5[9] = "vpn";
                    strArr5[10] = "refuse-eap";
                    strArr5[11] = "nodefaultroute";
                    strArr5[12] = "usepeerdns";
                    strArr5[13] = "idle";
                    strArr5[14] = "1800";
                    strArr5[15] = "mtu";
                    strArr5[16] = "1400";
                    strArr5[17] = "mru";
                    strArr5[18] = "1400";
                    if (profile.mppe) {
                        str = "+mppe";
                    } else {
                        str = "nomppe";
                    }
                    strArr5[19] = str;
                    mtpd = strArr5;
                    if (profile.mppe) {
                        z = true;
                    } else {
                        z = true;
                        mtpd = (String[]) Arrays.copyOf(mtpd, mtpd.length + 1);
                        mtpd[mtpd.length - 1] = "-pap";
                    }
                } else {
                    if (i != 1) {
                        c = 2;
                        if (i != 2) {
                            z = true;
                        }
                    } else {
                        c = 2;
                    }
                    String[] strArr6 = new String[20];
                    strArr6[0] = iface;
                    strArr6[1] = "l2tp";
                    strArr6[c] = profile.server;
                    strArr6[3] = "1701";
                    strArr6[4] = profile.l2tpSecret;
                    strArr6[5] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr6[6] = profile.username;
                    strArr6[7] = "password";
                    strArr6[8] = profile.password;
                    strArr6[9] = "linkname";
                    strArr6[10] = "vpn";
                    strArr6[11] = "refuse-eap";
                    strArr6[12] = "nodefaultroute";
                    strArr6[13] = "usepeerdns";
                    strArr6[14] = "idle";
                    strArr6[15] = "1800";
                    strArr6[16] = "mtu";
                    strArr6[17] = "1400";
                    strArr6[18] = "mru";
                    strArr6[19] = "1400";
                    mtpd = strArr6;
                    z = true;
                }
                config = new VpnConfig();
                config.legacy = z;
                config.user = profile.key;
                config.interfaze = iface;
                config.session = profile.name;
                config.isMetered = false;
                config.proxyInfo = profile.proxy;
                config.addLegacyRoutes(profile.routes);
                if (!profile.dnsServers.isEmpty()) {
                    config.dnsServers = Arrays.asList(profile.dnsServers.split(" +"));
                }
                if (!profile.searchDomains.isEmpty()) {
                    config.searchDomains = Arrays.asList(profile.searchDomains.split(" +"));
                }
                startLegacyVpn(config, racoon, mtpd, profile);
                return;
            case 4:
                racoon = new String[]{iface, profile.server, "xauthrsa", privateKey, userCert, caCert, serverCert, profile.username, profile.password, "", gateway};
                mtpd = null;
                i = profile.type;
                if (i != 0) {
                    String[] strArr7 = new String[20];
                    strArr7[0] = iface;
                    strArr7[1] = "pptp";
                    strArr7[2] = profile.server;
                    strArr7[3] = "1723";
                    strArr7[4] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr7[5] = profile.username;
                    strArr7[6] = "password";
                    strArr7[7] = profile.password;
                    strArr7[8] = "linkname";
                    strArr7[9] = "vpn";
                    strArr7[10] = "refuse-eap";
                    strArr7[11] = "nodefaultroute";
                    strArr7[12] = "usepeerdns";
                    strArr7[13] = "idle";
                    strArr7[14] = "1800";
                    strArr7[15] = "mtu";
                    strArr7[16] = "1400";
                    strArr7[17] = "mru";
                    strArr7[18] = "1400";
                    if (profile.mppe) {
                        str = "+mppe";
                    } else {
                        str = "nomppe";
                    }
                    strArr7[19] = str;
                    mtpd = strArr7;
                    if (profile.mppe) {
                        z = true;
                    } else {
                        z = true;
                        mtpd = (String[]) Arrays.copyOf(mtpd, mtpd.length + 1);
                        mtpd[mtpd.length - 1] = "-pap";
                    }
                } else {
                    if (i != 1) {
                        c = 2;
                        if (i != 2) {
                            z = true;
                        }
                    } else {
                        c = 2;
                    }
                    String[] strArr8 = new String[20];
                    strArr8[0] = iface;
                    strArr8[1] = "l2tp";
                    strArr8[c] = profile.server;
                    strArr8[3] = "1701";
                    strArr8[4] = profile.l2tpSecret;
                    strArr8[5] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr8[6] = profile.username;
                    strArr8[7] = "password";
                    strArr8[8] = profile.password;
                    strArr8[9] = "linkname";
                    strArr8[10] = "vpn";
                    strArr8[11] = "refuse-eap";
                    strArr8[12] = "nodefaultroute";
                    strArr8[13] = "usepeerdns";
                    strArr8[14] = "idle";
                    strArr8[15] = "1800";
                    strArr8[16] = "mtu";
                    strArr8[17] = "1400";
                    strArr8[18] = "mru";
                    strArr8[19] = "1400";
                    mtpd = strArr8;
                    z = true;
                }
                config = new VpnConfig();
                config.legacy = z;
                config.user = profile.key;
                config.interfaze = iface;
                config.session = profile.name;
                config.isMetered = false;
                config.proxyInfo = profile.proxy;
                config.addLegacyRoutes(profile.routes);
                if (!profile.dnsServers.isEmpty()) {
                    config.dnsServers = Arrays.asList(profile.dnsServers.split(" +"));
                }
                if (!profile.searchDomains.isEmpty()) {
                    config.searchDomains = Arrays.asList(profile.searchDomains.split(" +"));
                }
                startLegacyVpn(config, racoon, mtpd, profile);
                return;
            case 5:
                racoon = new String[]{iface, profile.server, "hybridrsa", caCert, serverCert, profile.username, profile.password, "", gateway};
                mtpd = null;
                i = profile.type;
                if (i != 0) {
                    String[] strArr9 = new String[20];
                    strArr9[0] = iface;
                    strArr9[1] = "pptp";
                    strArr9[2] = profile.server;
                    strArr9[3] = "1723";
                    strArr9[4] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr9[5] = profile.username;
                    strArr9[6] = "password";
                    strArr9[7] = profile.password;
                    strArr9[8] = "linkname";
                    strArr9[9] = "vpn";
                    strArr9[10] = "refuse-eap";
                    strArr9[11] = "nodefaultroute";
                    strArr9[12] = "usepeerdns";
                    strArr9[13] = "idle";
                    strArr9[14] = "1800";
                    strArr9[15] = "mtu";
                    strArr9[16] = "1400";
                    strArr9[17] = "mru";
                    strArr9[18] = "1400";
                    if (profile.mppe) {
                        str = "+mppe";
                    } else {
                        str = "nomppe";
                    }
                    strArr9[19] = str;
                    mtpd = strArr9;
                    if (profile.mppe) {
                        z = true;
                    } else {
                        z = true;
                        mtpd = (String[]) Arrays.copyOf(mtpd, mtpd.length + 1);
                        mtpd[mtpd.length - 1] = "-pap";
                    }
                } else {
                    if (i != 1) {
                        c = 2;
                        if (i != 2) {
                            z = true;
                        }
                    } else {
                        c = 2;
                    }
                    String[] strArr10 = new String[20];
                    strArr10[0] = iface;
                    strArr10[1] = "l2tp";
                    strArr10[c] = profile.server;
                    strArr10[3] = "1701";
                    strArr10[4] = profile.l2tpSecret;
                    strArr10[5] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr10[6] = profile.username;
                    strArr10[7] = "password";
                    strArr10[8] = profile.password;
                    strArr10[9] = "linkname";
                    strArr10[10] = "vpn";
                    strArr10[11] = "refuse-eap";
                    strArr10[12] = "nodefaultroute";
                    strArr10[13] = "usepeerdns";
                    strArr10[14] = "idle";
                    strArr10[15] = "1800";
                    strArr10[16] = "mtu";
                    strArr10[17] = "1400";
                    strArr10[18] = "mru";
                    strArr10[19] = "1400";
                    mtpd = strArr10;
                    z = true;
                }
                config = new VpnConfig();
                config.legacy = z;
                config.user = profile.key;
                config.interfaze = iface;
                config.session = profile.name;
                config.isMetered = false;
                config.proxyInfo = profile.proxy;
                config.addLegacyRoutes(profile.routes);
                if (!profile.dnsServers.isEmpty()) {
                    config.dnsServers = Arrays.asList(profile.dnsServers.split(" +"));
                }
                if (!profile.searchDomains.isEmpty()) {
                    config.searchDomains = Arrays.asList(profile.searchDomains.split(" +"));
                }
                startLegacyVpn(config, racoon, mtpd, profile);
                return;
            case 6:
                profile.ipsecCaCert = caCert;
                profile.setAllowedAlgorithms(Ikev2VpnProfile.DEFAULT_ALGORITHMS);
                startVpnProfilePrivileged(profile, "[Legacy VPN]", keyStore);
                return;
            case 7:
                profile.ipsecSecret = Ikev2VpnProfile.encodeForIpsecSecret(profile.ipsecSecret.getBytes());
                profile.setAllowedAlgorithms(Ikev2VpnProfile.DEFAULT_ALGORITHMS);
                startVpnProfilePrivileged(profile, "[Legacy VPN]", keyStore);
                return;
            case 8:
                profile.ipsecSecret = "KEYSTORE_ALIAS:" + privateKey;
                profile.ipsecUserCert = userCert;
                profile.ipsecCaCert = caCert;
                profile.setAllowedAlgorithms(Ikev2VpnProfile.DEFAULT_ALGORITHMS);
                startVpnProfilePrivileged(profile, "[Legacy VPN]", keyStore);
                return;
            default:
                mtpd = null;
                i = profile.type;
                if (i != 0) {
                    String[] strArr11 = new String[20];
                    strArr11[0] = iface;
                    strArr11[1] = "pptp";
                    strArr11[2] = profile.server;
                    strArr11[3] = "1723";
                    strArr11[4] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr11[5] = profile.username;
                    strArr11[6] = "password";
                    strArr11[7] = profile.password;
                    strArr11[8] = "linkname";
                    strArr11[9] = "vpn";
                    strArr11[10] = "refuse-eap";
                    strArr11[11] = "nodefaultroute";
                    strArr11[12] = "usepeerdns";
                    strArr11[13] = "idle";
                    strArr11[14] = "1800";
                    strArr11[15] = "mtu";
                    strArr11[16] = "1400";
                    strArr11[17] = "mru";
                    strArr11[18] = "1400";
                    if (profile.mppe) {
                        str = "+mppe";
                    } else {
                        str = "nomppe";
                    }
                    strArr11[19] = str;
                    mtpd = strArr11;
                    if (profile.mppe) {
                        z = true;
                    } else {
                        z = true;
                        mtpd = (String[]) Arrays.copyOf(mtpd, mtpd.length + 1);
                        mtpd[mtpd.length - 1] = "-pap";
                    }
                } else {
                    if (i != 1) {
                        c = 2;
                        if (i != 2) {
                            z = true;
                        }
                    } else {
                        c = 2;
                    }
                    String[] strArr12 = new String[20];
                    strArr12[0] = iface;
                    strArr12[1] = "l2tp";
                    strArr12[c] = profile.server;
                    strArr12[3] = "1701";
                    strArr12[4] = profile.l2tpSecret;
                    strArr12[5] = com.android.server.pm.Settings.ATTR_NAME;
                    strArr12[6] = profile.username;
                    strArr12[7] = "password";
                    strArr12[8] = profile.password;
                    strArr12[9] = "linkname";
                    strArr12[10] = "vpn";
                    strArr12[11] = "refuse-eap";
                    strArr12[12] = "nodefaultroute";
                    strArr12[13] = "usepeerdns";
                    strArr12[14] = "idle";
                    strArr12[15] = "1800";
                    strArr12[16] = "mtu";
                    strArr12[17] = "1400";
                    strArr12[18] = "mru";
                    strArr12[19] = "1400";
                    mtpd = strArr12;
                    z = true;
                }
                config = new VpnConfig();
                config.legacy = z;
                config.user = profile.key;
                config.interfaze = iface;
                config.session = profile.name;
                config.isMetered = false;
                config.proxyInfo = profile.proxy;
                config.addLegacyRoutes(profile.routes);
                if (!profile.dnsServers.isEmpty()) {
                    config.dnsServers = Arrays.asList(profile.dnsServers.split(" +"));
                }
                if (!profile.searchDomains.isEmpty()) {
                    config.searchDomains = Arrays.asList(profile.searchDomains.split(" +"));
                }
                startLegacyVpn(config, racoon, mtpd, profile);
                return;
        }
    }

    private synchronized void startLegacyVpn(VpnConfig config, String[] racoon, String[] mtpd, VpnProfile profile) {
        stopVpnRunnerPrivileged();
        prepareInternal("[Legacy VPN]");
        updateState(NetworkInfo.DetailedState.CONNECTING, "startLegacyVpn");
        LegacyVpnRunner legacyVpnRunner = new LegacyVpnRunner(config, racoon, mtpd, profile);
        this.mVpnRunner = legacyVpnRunner;
        legacyVpnRunner.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSettingsVpnLocked() {
        return this.mVpnRunner != null && "[Legacy VPN]".equals(this.mPackage);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x001f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void stopVpnRunnerPrivileged() {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = r3.isSettingsVpnLocked()     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto L9
            monitor-exit(r3)
            return
        L9:
            com.android.server.connectivity.Vpn$VpnRunner r0 = r3.mVpnRunner     // Catch: java.lang.Throwable -> L23
            boolean r0 = r0 instanceof com.android.server.connectivity.Vpn.LegacyVpnRunner     // Catch: java.lang.Throwable -> L23
            com.android.server.connectivity.Vpn$VpnRunner r1 = r3.mVpnRunner     // Catch: java.lang.Throwable -> L23
            r1.exit()     // Catch: java.lang.Throwable -> L23
            r1 = 0
            r3.mVpnRunner = r1     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto L21
            java.lang.String r1 = "LegacyVpnRunner"
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L23
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1c
            goto L21
        L1c:
            r2 = move-exception
        L1d:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            throw r2     // Catch: java.lang.Throwable -> L23
        L1f:
            r2 = move-exception
            goto L1d
        L21:
            monitor-exit(r3)
            return
        L23:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.connectivity.Vpn.stopVpnRunnerPrivileged():void");
    }

    public synchronized LegacyVpnInfo getLegacyVpnInfo() {
        enforceControlPermission();
        return getLegacyVpnInfoPrivileged();
    }

    private synchronized LegacyVpnInfo getLegacyVpnInfoPrivileged() {
        if (!isSettingsVpnLocked()) {
            return null;
        }
        LegacyVpnInfo info = new LegacyVpnInfo();
        info.key = this.mConfig.user;
        info.state = LegacyVpnInfo.stateFromNetworkInfo(this.mNetworkInfo);
        if (this.mNetworkInfo.isConnected()) {
            info.intent = this.mStatusIntent;
        }
        return info;
    }

    public synchronized VpnConfig getLegacyVpnConfig() {
        if (isSettingsVpnLocked()) {
            return this.mConfig;
        }
        return null;
    }

    abstract class VpnRunner extends Thread {
        protected abstract void exitVpnRunner();

        @Override // java.lang.Thread, java.lang.Runnable
        public abstract void run();

        protected VpnRunner(String name) {
            super(name);
        }

        protected final void exit() {
            synchronized (Vpn.this) {
                exitVpnRunner();
                Vpn.this.cleanupVpnStateLocked();
            }
        }
    }

    class IkeV2VpnRunner extends VpnRunner implements IkeV2VpnRunnerCallback {
        private static final String TAG = "IkeV2VpnRunner";
        private Network mActiveNetwork;
        private final ExecutorService mExecutor;
        private final IpSecManager mIpSecManager;
        private boolean mIsRunning;
        private final ConnectivityManager.NetworkCallback mNetworkCallback;
        private final Ikev2VpnProfile mProfile;
        private IkeSession mSession;
        private IpSecManager.IpSecTunnelInterface mTunnelIface;

        IkeV2VpnRunner(Ikev2VpnProfile profile) {
            super(TAG);
            this.mExecutor = Executors.newSingleThreadExecutor();
            this.mIsRunning = true;
            this.mProfile = profile;
            this.mIpSecManager = (IpSecManager) Vpn.this.mContext.getSystemService(INetd.IPSEC_INTERFACE_PREFIX);
            this.mNetworkCallback = new VpnIkev2Utils.Ikev2VpnNetworkCallback(TAG, this);
        }

        @Override // com.android.server.connectivity.Vpn.VpnRunner, java.lang.Thread, java.lang.Runnable
        public void run() {
            NetworkRequest req;
            ConnectivityManager cm = ConnectivityManager.from(Vpn.this.mContext);
            if (this.mProfile.isRestrictedToTestNetworks()) {
                req = new NetworkRequest.Builder().clearCapabilities().addTransportType(7).build();
            } else {
                req = cm.getDefaultRequest();
            }
            cm.requestNetwork(req, this.mNetworkCallback);
        }

        private boolean isActiveNetwork(Network network) {
            return Objects.equals(this.mActiveNetwork, network) && this.mIsRunning;
        }

        @Override // com.android.server.connectivity.Vpn.IkeV2VpnRunnerCallback
        public void onChildOpened(Network network, ChildSessionConfiguration childConfig) {
            if (!isActiveNetwork(network)) {
                Log.d(TAG, "onOpened called for obsolete network " + network);
                return;
            }
            try {
                String interfaceName = this.mTunnelIface.getInterfaceName();
                int maxMtu = this.mProfile.getMaxMtu();
                List<LinkAddress> internalAddresses = childConfig.getInternalAddresses();
                ArrayList arrayList = new ArrayList();
                Collection<RouteInfo> newRoutes = VpnIkev2Utils.getRoutesFromTrafficSelectors(childConfig.getOutboundTrafficSelectors());
                for (LinkAddress address : internalAddresses) {
                    this.mTunnelIface.addAddress(address.getAddress(), address.getPrefixLength());
                }
                for (InetAddress addr : childConfig.getInternalDnsServers()) {
                    arrayList.add(addr.getHostAddress());
                }
                synchronized (Vpn.this) {
                    Vpn.this.mInterface = interfaceName;
                    Vpn.this.mConfig.mtu = maxMtu;
                    Vpn.this.mConfig.interfaze = Vpn.this.mInterface;
                    Vpn.this.mConfig.addresses.clear();
                    Vpn.this.mConfig.addresses.addAll(internalAddresses);
                    Vpn.this.mConfig.routes.clear();
                    Vpn.this.mConfig.routes.addAll(newRoutes);
                    if (Vpn.this.mConfig.dnsServers == null) {
                        Vpn.this.mConfig.dnsServers = new ArrayList();
                    }
                    Vpn.this.mConfig.dnsServers.clear();
                    Vpn.this.mConfig.dnsServers.addAll(arrayList);
                    NetworkAgent networkAgent = Vpn.this.mNetworkAgent;
                    if (networkAgent == null) {
                        if (Vpn.this.isSettingsVpnLocked()) {
                            Vpn.this.prepareStatusIntent();
                        }
                        Vpn.this.agentConnect();
                    } else {
                        LinkProperties lp = Vpn.this.makeLinkProperties();
                        networkAgent.sendLinkProperties(lp);
                    }
                }
            } catch (Exception e) {
                Log.d(TAG, "Error in ChildOpened for network " + network, e);
                onSessionLost(network, e);
            }
        }

        @Override // com.android.server.connectivity.Vpn.IkeV2VpnRunnerCallback
        public void onChildTransformCreated(Network network, IpSecTransform transform, int direction) {
            if (!isActiveNetwork(network)) {
                Log.d(TAG, "ChildTransformCreated for obsolete network " + network);
                return;
            }
            try {
                this.mIpSecManager.applyTunnelModeTransform(this.mTunnelIface, direction, transform);
            } catch (IOException e) {
                Log.d(TAG, "Transform application failed for network " + network, e);
                onSessionLost(network, e);
            }
        }

        @Override // com.android.server.connectivity.Vpn.IkeV2VpnRunnerCallback
        public void onDefaultNetworkChanged(final Network network) {
            Log.d(TAG, "Starting IKEv2/IPsec session on new network: " + network);
            this.mExecutor.execute(new Runnable() { // from class: com.android.server.connectivity.-$$Lambda$Vpn$IkeV2VpnRunner$Vw9WuTNdMyzPRFxG1a3IH2Qv9vc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDefaultNetworkChanged$0$Vpn$IkeV2VpnRunner(network);
                }
            });
        }

        public /* synthetic */ void lambda$onDefaultNetworkChanged$0$Vpn$IkeV2VpnRunner(Network network) {
            try {
                if (!this.mIsRunning) {
                    Log.d(TAG, "onDefaultNetworkChanged after exit");
                    return;
                }
                Vpn.this.mInterface = null;
                resetIkeState();
                this.mActiveNetwork = network;
                IkeSessionParams ikeSessionParams = VpnIkev2Utils.buildIkeSessionParams(Vpn.this.mContext, this.mProfile, network);
                ChildSessionParams childSessionParams = VpnIkev2Utils.buildChildSessionParams(this.mProfile.getAllowedAlgorithms());
                InetAddress address = InetAddress.getLocalHost();
                this.mTunnelIface = this.mIpSecManager.createIpSecTunnelInterface(address, address, network);
                Vpn.this.mNetd.setInterfaceUp(this.mTunnelIface.getInterfaceName());
                this.mSession = Vpn.this.mIkev2SessionCreator.createIkeSession(Vpn.this.mContext, ikeSessionParams, childSessionParams, this.mExecutor, new VpnIkev2Utils.IkeSessionCallbackImpl(TAG, this, network), new VpnIkev2Utils.ChildSessionCallbackImpl(TAG, this, network));
                Log.d(TAG, "Ike Session started for network " + network);
            } catch (Exception e) {
                Log.i(TAG, "Setup failed for network " + network + ". Aborting", e);
                onSessionLost(network, e);
            }
        }

        private void markFailedAndDisconnect(Exception exception) {
            synchronized (Vpn.this) {
                Vpn.this.updateState(NetworkInfo.DetailedState.FAILED, exception.getMessage());
            }
            lambda$exitVpnRunner$1$Vpn$IkeV2VpnRunner();
        }

        @Override // com.android.server.connectivity.Vpn.IkeV2VpnRunnerCallback
        public void onSessionLost(Network network, Exception exception) {
            if (!isActiveNetwork(network)) {
                Log.d(TAG, "onSessionLost() called for obsolete network " + network);
                return;
            }
            if (exception instanceof IkeProtocolException) {
                IkeProtocolException ikeException = (IkeProtocolException) exception;
                int errorType = ikeException.getErrorType();
                if (errorType == 14 || errorType == 17 || errorType == 24 || errorType == 34 || errorType == 37 || errorType == 38) {
                    markFailedAndDisconnect(exception);
                    return;
                }
            } else if (exception instanceof IllegalArgumentException) {
                markFailedAndDisconnect(exception);
                return;
            }
            this.mActiveNetwork = null;
            Log.d(TAG, "Resetting state for network: " + network);
            synchronized (Vpn.this) {
                Vpn.this.mInterface = null;
                Vpn.this.mConfig.interfaze = null;
                if (Vpn.this.mConfig != null && Vpn.this.mConfig.routes != null) {
                    List<RouteInfo> oldRoutes = new ArrayList<>(Vpn.this.mConfig.routes);
                    Vpn.this.mConfig.routes.clear();
                    for (RouteInfo route : oldRoutes) {
                        Vpn.this.mConfig.routes.add(new RouteInfo(route.getDestination(), 7));
                    }
                    if (Vpn.this.mNetworkAgent != null) {
                        Vpn.this.mNetworkAgent.sendLinkProperties(Vpn.this.makeLinkProperties());
                    }
                }
            }
            resetIkeState();
        }

        private void resetIkeState() {
            IpSecManager.IpSecTunnelInterface ipSecTunnelInterface = this.mTunnelIface;
            if (ipSecTunnelInterface != null) {
                ipSecTunnelInterface.close();
                this.mTunnelIface = null;
            }
            IkeSession ikeSession = this.mSession;
            if (ikeSession != null) {
                ikeSession.kill();
                this.mSession = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: disconnectVpnRunner, reason: merged with bridge method [inline-methods] */
        public void lambda$exitVpnRunner$1$Vpn$IkeV2VpnRunner() {
            this.mActiveNetwork = null;
            this.mIsRunning = false;
            resetIkeState();
            ConnectivityManager cm = ConnectivityManager.from(Vpn.this.mContext);
            cm.unregisterNetworkCallback(this.mNetworkCallback);
            this.mExecutor.shutdown();
        }

        @Override // com.android.server.connectivity.Vpn.VpnRunner
        public void exitVpnRunner() {
            try {
                this.mExecutor.execute(new Runnable() { // from class: com.android.server.connectivity.-$$Lambda$Vpn$IkeV2VpnRunner$0RmJtG6Gdg0ZcfLScxY7rW57WDc
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$exitVpnRunner$1$Vpn$IkeV2VpnRunner();
                    }
                });
            } catch (RejectedExecutionException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class LegacyVpnRunner extends VpnRunner {
        private static final String TAG = "LegacyVpnRunner";
        private final String[][] mArguments;
        private long mBringupStartTime;
        private final BroadcastReceiver mBroadcastReceiver;
        private final String[] mDaemons;
        private final AtomicInteger mOuterConnection;
        private final String mOuterInterface;
        private final VpnProfile mProfile;
        private final LocalSocket[] mSockets;

        LegacyVpnRunner(VpnConfig config, String[] racoon, String[] mtpd, VpnProfile profile) {
            NetworkInfo networkInfo;
            super(TAG);
            this.mOuterConnection = new AtomicInteger(-1);
            this.mBringupStartTime = -1L;
            this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.connectivity.Vpn.LegacyVpnRunner.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    NetworkInfo info;
                    if (Vpn.this.mEnableTeardown && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && intent.getIntExtra("networkType", -1) == LegacyVpnRunner.this.mOuterConnection.get() && (info = (NetworkInfo) intent.getExtra("networkInfo")) != null && !info.isConnectedOrConnecting()) {
                        try {
                            Vpn.this.mObserver.interfaceStatusChanged(LegacyVpnRunner.this.mOuterInterface, false);
                        } catch (RemoteException e) {
                        }
                    }
                }
            };
            Vpn.this.mConfig = config;
            String[] strArr = {"racoon", "mtpd"};
            this.mDaemons = strArr;
            this.mArguments = new String[][]{racoon, mtpd};
            this.mSockets = new LocalSocket[strArr.length];
            String str = Vpn.this.mConfig.interfaze;
            this.mOuterInterface = str;
            this.mProfile = profile;
            if (!TextUtils.isEmpty(str)) {
                ConnectivityManager cm = ConnectivityManager.from(Vpn.this.mContext);
                for (Network network : cm.getAllNetworks()) {
                    LinkProperties lp = cm.getLinkProperties(network);
                    if (lp != null && lp.getAllInterfaceNames().contains(this.mOuterInterface) && (networkInfo = cm.getNetworkInfo(network)) != null) {
                        this.mOuterConnection.set(networkInfo.getType());
                    }
                }
            }
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            Vpn.this.mContext.registerReceiver(this.mBroadcastReceiver, filter);
        }

        public void exitIfOuterInterfaceIs(String interfaze) {
            if (interfaze.equals(this.mOuterInterface)) {
                Log.i(TAG, "Legacy VPN is going down with " + interfaze);
                exitVpnRunner();
            }
        }

        @Override // com.android.server.connectivity.Vpn.VpnRunner
        public void exitVpnRunner() {
            interrupt();
            Vpn.this.agentDisconnect();
            try {
                Vpn.this.mContext.unregisterReceiver(this.mBroadcastReceiver);
            } catch (IllegalArgumentException e) {
            }
        }

        @Override // com.android.server.connectivity.Vpn.VpnRunner, java.lang.Thread, java.lang.Runnable
        public void run() {
            Log.v(TAG, "Waiting");
            synchronized (TAG) {
                try {
                    Log.v(TAG, "Executing");
                    int i = 0;
                    try {
                        bringup();
                        waitForDaemonsToStop();
                        interrupted();
                    } catch (InterruptedException e) {
                    } finally {
                        for (LocalSocket socket : this.mSockets) {
                            IoUtils.closeQuietly(socket);
                        }
                        try {
                            Thread.sleep(50L);
                        } catch (InterruptedException e2) {
                        }
                        String[] strArr = this.mDaemons;
                        int length = strArr.length;
                        while (i < length) {
                            String daemon = strArr[i];
                            Vpn.this.mDeps.stopService(daemon);
                            i++;
                        }
                    }
                    Vpn.this.agentDisconnect();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkInterruptAndDelay(boolean sleepLonger) throws InterruptedException {
            long now = SystemClock.elapsedRealtime();
            if (now - this.mBringupStartTime <= 60000) {
                Thread.sleep(sleepLonger ? 200L : 1L);
            } else {
                Vpn.this.updateState(NetworkInfo.DetailedState.FAILED, "checkpoint");
                throw new IllegalStateException("VPN bringup took too long");
            }
        }

        private void checkAndFixupArguments(InetAddress endpointAddress) {
            String endpointAddressString = endpointAddress.getHostAddress();
            if (!"racoon".equals(this.mDaemons[0]) || !"mtpd".equals(this.mDaemons[1])) {
                throw new IllegalStateException("Unexpected daemons order");
            }
            if (this.mArguments[0] != null) {
                if (!this.mProfile.server.equals(this.mArguments[0][1])) {
                    throw new IllegalStateException("Invalid server argument for racoon");
                }
                this.mArguments[0][1] = endpointAddressString;
            }
            if (this.mArguments[1] != null) {
                if (!this.mProfile.server.equals(this.mArguments[1][2])) {
                    throw new IllegalStateException("Invalid server argument for mtpd");
                }
                this.mArguments[1][2] = endpointAddressString;
            }
        }

        private void bringup() {
            try {
                InetAddress endpointAddress = Vpn.this.mDeps.resolve(this.mProfile.server);
                checkAndFixupArguments(endpointAddress);
                this.mBringupStartTime = SystemClock.elapsedRealtime();
                for (String daemon : this.mDaemons) {
                    while (!Vpn.this.mDeps.isServiceStopped(daemon)) {
                        checkInterruptAndDelay(true);
                    }
                }
                File state = Vpn.this.mDeps.getStateFile();
                state.delete();
                if (state.exists()) {
                    throw new IllegalStateException("Cannot delete the state");
                }
                new File("/data/misc/vpn/abort").delete();
                boolean restart = false;
                for (String[] strArr : this.mArguments) {
                    restart = restart || strArr != null;
                }
                if (!restart) {
                    Vpn.this.agentDisconnect();
                    return;
                }
                Vpn.this.updateState(NetworkInfo.DetailedState.CONNECTING, "execute");
                for (int i = 0; i < this.mDaemons.length; i++) {
                    String[] arguments = this.mArguments[i];
                    if (arguments != null) {
                        String daemon2 = this.mDaemons[i];
                        Vpn.this.mDeps.startService(daemon2);
                        while (!Vpn.this.mDeps.isServiceRunning(daemon2)) {
                            checkInterruptAndDelay(true);
                        }
                        this.mSockets[i] = new LocalSocket();
                        Vpn.this.mDeps.sendArgumentsToDaemon(daemon2, this.mSockets[i], arguments, new RetryScheduler() { // from class: com.android.server.connectivity.-$$Lambda$Vpn$LegacyVpnRunner$RDmiUygSRHckO31VrvWTCZDPx-c
                            @Override // com.android.server.connectivity.Vpn.RetryScheduler
                            public final void checkInterruptAndDelay(boolean z) throws InterruptedException {
                                this.f$0.checkInterruptAndDelay(z);
                            }
                        });
                    }
                }
                while (!state.exists()) {
                    for (int i2 = 0; i2 < this.mDaemons.length; i2++) {
                        String daemon3 = this.mDaemons[i2];
                        if (this.mArguments[i2] != null && !Vpn.this.mDeps.isServiceRunning(daemon3)) {
                            throw new IllegalStateException(daemon3 + " is dead");
                        }
                    }
                    checkInterruptAndDelay(true);
                }
                String[] parameters = FileUtils.readTextFile(state, 0, null).split("\n", -1);
                if (parameters.length != 7) {
                    throw new IllegalStateException("Cannot parse the state: '" + String.join("', '", parameters) + "'");
                }
                Vpn.this.mConfig.interfaze = parameters[0].trim();
                Vpn.this.mConfig.addLegacyAddresses(parameters[1]);
                if (Vpn.this.mConfig.routes == null || Vpn.this.mConfig.routes.isEmpty()) {
                    Vpn.this.mConfig.addLegacyRoutes(parameters[2]);
                }
                if (Vpn.this.mConfig.dnsServers == null || Vpn.this.mConfig.dnsServers.size() == 0) {
                    String dnsServers = parameters[3].trim();
                    if (!dnsServers.isEmpty()) {
                        Vpn.this.mConfig.dnsServers = Arrays.asList(dnsServers.split(" "));
                    }
                }
                if (Vpn.this.mConfig.searchDomains == null || Vpn.this.mConfig.searchDomains.size() == 0) {
                    String searchDomains = parameters[4].trim();
                    if (!searchDomains.isEmpty()) {
                        Vpn.this.mConfig.searchDomains = Arrays.asList(searchDomains.split(" "));
                    }
                }
                if (endpointAddress instanceof Inet4Address) {
                    Vpn.this.mConfig.routes.add(new RouteInfo(new IpPrefix(endpointAddress, 32), 9));
                } else if (endpointAddress instanceof Inet6Address) {
                    Vpn.this.mConfig.routes.add(new RouteInfo(new IpPrefix(endpointAddress, 128), 9));
                } else {
                    Log.e(TAG, "Unknown IP address family for VPN endpoint: " + endpointAddress);
                }
                synchronized (Vpn.this) {
                    Vpn.this.mConfig.startTime = SystemClock.elapsedRealtime();
                    checkInterruptAndDelay(false);
                    if (Vpn.this.mDeps.checkInterfacePresent(Vpn.this, Vpn.this.mConfig.interfaze)) {
                        throw new IllegalStateException(Vpn.this.mConfig.interfaze + " is gone");
                    }
                    Vpn.this.mInterface = Vpn.this.mConfig.interfaze;
                    Vpn.this.prepareStatusIntent();
                    Vpn.this.agentConnect();
                    Log.i(TAG, "Connected!");
                }
            } catch (Exception e) {
                Log.i(TAG, "Aborting", e);
                Vpn.this.updateState(NetworkInfo.DetailedState.FAILED, e.getMessage());
                exitVpnRunner();
            }
        }

        private void waitForDaemonsToStop() throws InterruptedException {
            if (!Vpn.this.mNetworkInfo.isConnected()) {
                return;
            }
            while (true) {
                Thread.sleep(2000L);
                for (int i = 0; i < this.mDaemons.length; i++) {
                    if (this.mArguments[i] != null && Vpn.this.mDeps.isServiceStopped(this.mDaemons[i])) {
                        return;
                    }
                }
            }
        }
    }

    private void verifyCallingUidAndPackage(String packageName) {
        if (getAppUid(packageName, this.mUserHandle) != Binder.getCallingUid()) {
            throw new SecurityException("Mismatched package and UID");
        }
    }

    String getProfileNameForPackage(String packageName) {
        return "PLATFORM_VPN_" + this.mUserHandle + "_" + packageName;
    }

    void validateRequiredFeatures(VpnProfile profile) {
        int i = profile.type;
        if ((i == 6 || i == 7 || i == 8) && !this.mContext.getPackageManager().hasSystemFeature("android.software.ipsec_tunnels")) {
            throw new UnsupportedOperationException("Ikev2VpnProfile(s) requires PackageManager.FEATURE_IPSEC_TUNNELS");
        }
    }

    public synchronized boolean provisionVpnProfile(final String packageName, VpnProfile profile, final KeyStore keyStore) {
        Preconditions.checkNotNull(packageName, "No package name provided");
        Preconditions.checkNotNull(profile, "No profile provided");
        Preconditions.checkNotNull(keyStore, "KeyStore missing");
        verifyCallingUidAndPackage(packageName);
        enforceNotRestrictedUser();
        validateRequiredFeatures(profile);
        if (profile.isRestrictedToTestNetworks) {
            this.mContext.enforceCallingPermission("android.permission.MANAGE_TEST_NETWORKS", "Test-mode profiles require the MANAGE_TEST_NETWORKS permission");
        }
        final byte[] encodedProfile = profile.encode();
        if (encodedProfile.length > 131072) {
            throw new IllegalArgumentException("Profile too big");
        }
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.connectivity.-$$Lambda$Vpn$gVOF2PzN3Pb1yKv_hHDqOpguPwU
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$provisionVpnProfile$2$Vpn(keyStore, packageName, encodedProfile);
            }
        });
        return isVpnProfilePreConsented(this.mContext, packageName);
    }

    public /* synthetic */ void lambda$provisionVpnProfile$2$Vpn(KeyStore keyStore, String packageName, byte[] encodedProfile) throws Exception {
        keyStore.put(getProfileNameForPackage(packageName), encodedProfile, 1000, 0);
    }

    private boolean isCurrentIkev2VpnLocked(String packageName) {
        return isCurrentPreparedPackage(packageName) && (this.mVpnRunner instanceof IkeV2VpnRunner);
    }

    public synchronized void deleteVpnProfile(final String packageName, final KeyStore keyStore) {
        Preconditions.checkNotNull(packageName, "No package name provided");
        Preconditions.checkNotNull(keyStore, "KeyStore missing");
        verifyCallingUidAndPackage(packageName);
        enforceNotRestrictedUser();
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.connectivity.-$$Lambda$Vpn$_G7X6rI27GCNguw0gXWud8Ktkqg
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$deleteVpnProfile$3$Vpn(packageName, keyStore);
            }
        });
    }

    public /* synthetic */ void lambda$deleteVpnProfile$3$Vpn(String packageName, KeyStore keyStore) throws Exception {
        if (isCurrentIkev2VpnLocked(packageName)) {
            if (this.mAlwaysOn) {
                setAlwaysOnPackage(null, false, null, keyStore);
            } else {
                prepareInternal("[Legacy VPN]");
            }
        }
        keyStore.delete(getProfileNameForPackage(packageName), 1000);
    }

    VpnProfile getVpnProfilePrivileged(String packageName, KeyStore keyStore) {
        if (!this.mSystemServices.isCallerSystem()) {
            Log.wtf(TAG, "getVpnProfilePrivileged called as non-System UID ");
            return null;
        }
        byte[] encoded = keyStore.get(getProfileNameForPackage(packageName));
        if (encoded == null) {
            return null;
        }
        return VpnProfile.decode("", encoded);
    }

    public synchronized void startVpnProfile(final String packageName, final KeyStore keyStore) {
        Preconditions.checkNotNull(packageName, "No package name provided");
        Preconditions.checkNotNull(keyStore, "KeyStore missing");
        enforceNotRestrictedUser();
        if (!prepare(packageName, null, 2)) {
            throw new SecurityException("User consent not granted for package " + packageName);
        }
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.connectivity.-$$Lambda$Vpn$XZx2CQhtfrsWdTzM6-2aSP_XhYw
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$startVpnProfile$4$Vpn(packageName, keyStore);
            }
        });
    }

    public /* synthetic */ void lambda$startVpnProfile$4$Vpn(String packageName, KeyStore keyStore) throws Exception {
        VpnProfile profile = getVpnProfilePrivileged(packageName, keyStore);
        if (profile == null) {
            throw new IllegalArgumentException("No profile found for " + packageName);
        }
        startVpnProfilePrivileged(profile, packageName, null);
    }

    private synchronized void startVpnProfilePrivileged(VpnProfile profile, String packageName, KeyStore keyStore) {
        prepareInternal(packageName);
        updateState(NetworkInfo.DetailedState.CONNECTING, "startPlatformVpn");
        try {
            this.mConfig = new VpnConfig();
            if ("[Legacy VPN]".equals(packageName)) {
                this.mConfig.legacy = true;
                this.mConfig.session = profile.name;
                this.mConfig.user = profile.key;
                this.mConfig.isMetered = true;
            } else {
                this.mConfig.user = packageName;
                this.mConfig.isMetered = profile.isMetered;
            }
            this.mConfig.startTime = SystemClock.elapsedRealtime();
            this.mConfig.proxyInfo = profile.proxy;
            int i = profile.type;
            if (i == 6 || i == 7 || i == 8) {
                IkeV2VpnRunner ikeV2VpnRunner = new IkeV2VpnRunner(Ikev2VpnProfile.fromVpnProfile(profile, keyStore));
                this.mVpnRunner = ikeV2VpnRunner;
                ikeV2VpnRunner.start();
            } else {
                updateState(NetworkInfo.DetailedState.FAILED, "Invalid platform VPN type");
                Log.d(TAG, "Unknown VPN profile type: " + profile.type);
            }
        } catch (IOException | GeneralSecurityException e) {
            this.mConfig = null;
            updateState(NetworkInfo.DetailedState.FAILED, "VPN startup failed");
            throw new IllegalArgumentException("VPN startup failed", e);
        }
    }

    public synchronized void stopVpnProfile(String packageName) {
        Preconditions.checkNotNull(packageName, "No package name provided");
        enforceNotRestrictedUser();
        if (isCurrentIkev2VpnLocked(packageName)) {
            prepareInternal("[Legacy VPN]");
        }
    }

    public static class Ikev2SessionCreator {
        public IkeSession createIkeSession(Context context, IkeSessionParams ikeSessionParams, ChildSessionParams firstChildSessionParams, Executor userCbExecutor, IkeSessionCallback ikeSessionCallback, ChildSessionCallback firstChildSessionCallback) {
            return new IkeSession(context, ikeSessionParams, firstChildSessionParams, userCbExecutor, ikeSessionCallback, firstChildSessionCallback);
        }
    }
}
