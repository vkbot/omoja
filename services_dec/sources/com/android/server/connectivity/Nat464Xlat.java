package com.android.server.connectivity;

import android.net.IDnsResolver;
import android.net.INetd;
import android.net.InetAddresses;
import android.net.InterfaceConfiguration;
import android.net.IpPrefix;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.NetworkInfo;
import android.net.RouteInfo;
import android.os.INetworkManagementService;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.util.Slog;
import com.android.internal.util.ArrayUtils;
import com.android.server.net.BaseNetworkObserver;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Nat464Xlat extends BaseNetworkObserver {
    private static final String CLAT_PREFIX = "v4-";
    private String mBaseIface;
    private final IDnsResolver mDnsResolver;
    private Inet6Address mIPv6Address;
    private String mIface;
    private final INetworkManagementService mNMService;
    private IpPrefix mNat64PrefixFromDns;
    private IpPrefix mNat64PrefixFromRa;
    private IpPrefix mNat64PrefixInUse;
    private final INetd mNetd;
    private final NetworkAgentInfo mNetwork;
    private boolean mPrefixDiscoveryRunning;
    private State mState = State.IDLE;
    private static final String TAG = Nat464Xlat.class.getSimpleName();
    private static final int[] NETWORK_TYPES = {0, 1, 9};
    private static final NetworkInfo.State[] NETWORK_STATES = {NetworkInfo.State.CONNECTED, NetworkInfo.State.SUSPENDED};

    private enum State {
        IDLE,
        DISCOVERING,
        STARTING,
        RUNNING
    }

    public Nat464Xlat(NetworkAgentInfo nai, INetd netd, IDnsResolver dnsResolver, INetworkManagementService nmService) {
        this.mDnsResolver = dnsResolver;
        this.mNetd = netd;
        this.mNMService = nmService;
        this.mNetwork = nai;
    }

    protected static boolean requiresClat(NetworkAgentInfo nai) {
        boolean supported = ArrayUtils.contains(NETWORK_TYPES, nai.networkInfo.getType());
        boolean connected = ArrayUtils.contains(NETWORK_STATES, nai.networkInfo.getState());
        LinkProperties lp = nai.linkProperties;
        boolean isIpv6OnlyNetwork = (lp == null || !lp.hasGlobalIpv6Address() || lp.hasIpv4Address()) ? false : true;
        boolean skip464xlat = nai.netAgentConfig() != null && nai.netAgentConfig().skip464xlat;
        return supported && connected && isIpv6OnlyNetwork && !skip464xlat;
    }

    protected static boolean shouldStartClat(NetworkAgentInfo nai) {
        LinkProperties lp = nai.linkProperties;
        return (!requiresClat(nai) || lp == null || lp.getNat64Prefix() == null) ? false : true;
    }

    public boolean isStarted() {
        return this.mState == State.STARTING || this.mState == State.RUNNING;
    }

    public boolean isStarting() {
        return this.mState == State.STARTING;
    }

    public boolean isRunning() {
        return this.mState == State.RUNNING;
    }

    private void enterStartingState(String baseIface) throws RemoteException {
        try {
            this.mNMService.registerObserver(this);
            IpPrefix ipPrefixSelectNat64Prefix = selectNat64Prefix();
            this.mNat64PrefixInUse = ipPrefixSelectNat64Prefix;
            String addrStr = null;
            try {
                addrStr = this.mNetd.clatdStart(baseIface, ipPrefixSelectNat64Prefix.toString());
            } catch (RemoteException | ServiceSpecificException e) {
                Slog.e(TAG, "Error starting clatd on " + baseIface + ": " + e);
            }
            this.mIface = CLAT_PREFIX + baseIface;
            this.mBaseIface = baseIface;
            this.mState = State.STARTING;
            try {
                this.mIPv6Address = (Inet6Address) InetAddresses.parseNumericAddress(addrStr);
            } catch (ClassCastException | IllegalArgumentException | NullPointerException e2) {
                Slog.e(TAG, "Invalid IPv6 address " + addrStr);
            }
            if (this.mPrefixDiscoveryRunning && !isPrefixDiscoveryNeeded()) {
                stopPrefixDiscovery();
            }
            if (!this.mPrefixDiscoveryRunning) {
                setPrefix64(this.mNat64PrefixInUse);
            }
        } catch (RemoteException e3) {
            Slog.e(TAG, "Can't register iface observer for clat on " + this.mNetwork.toShortString());
        }
    }

    private void enterRunningState() {
        this.mState = State.RUNNING;
    }

    private void leaveStartedState() {
        try {
            this.mNMService.unregisterObserver(this);
        } catch (RemoteException | IllegalStateException e) {
            Slog.e(TAG, "Error unregistering clatd observer on " + this.mBaseIface + ": " + e);
        }
        this.mNat64PrefixInUse = null;
        this.mIface = null;
        this.mBaseIface = null;
        if (!this.mPrefixDiscoveryRunning) {
            setPrefix64(null);
        }
        if (isPrefixDiscoveryNeeded()) {
            if (!this.mPrefixDiscoveryRunning) {
                startPrefixDiscovery();
            }
            this.mState = State.DISCOVERING;
        } else {
            stopPrefixDiscovery();
            this.mState = State.IDLE;
        }
    }

    protected void start() throws RemoteException {
        if (isStarted()) {
            Slog.e(TAG, "startClat: already started");
            return;
        }
        if (this.mNetwork.linkProperties == null) {
            Slog.e(TAG, "startClat: Can't start clat with null LinkProperties");
            return;
        }
        String baseIface = this.mNetwork.linkProperties.getInterfaceName();
        if (baseIface == null) {
            Slog.e(TAG, "startClat: Can't start clat on null interface");
            return;
        }
        Slog.i(TAG, "Starting clatd on " + baseIface);
        enterStartingState(baseIface);
    }

    protected void stop() {
        if (!isStarted()) {
            Slog.e(TAG, "stopClat: already stopped");
            return;
        }
        Slog.i(TAG, "Stopping clatd on " + this.mBaseIface);
        try {
            this.mNetd.clatdStop(this.mBaseIface);
        } catch (RemoteException | ServiceSpecificException e) {
            Slog.e(TAG, "Error stopping clatd on " + this.mBaseIface + ": " + e);
        }
        String iface = this.mIface;
        boolean wasRunning = isRunning();
        leaveStartedState();
        if (wasRunning) {
            LinkProperties lp = new LinkProperties(this.mNetwork.linkProperties);
            lp.removeStackedLink(iface);
            this.mNetwork.connService().handleUpdateLinkProperties(this.mNetwork, lp);
        }
    }

    private void startPrefixDiscovery() {
        try {
            this.mDnsResolver.startPrefix64Discovery(getNetId());
        } catch (RemoteException | ServiceSpecificException e) {
            Slog.e(TAG, "Error starting prefix discovery on netId " + getNetId() + ": " + e);
        }
        this.mPrefixDiscoveryRunning = true;
    }

    private void stopPrefixDiscovery() {
        try {
            this.mDnsResolver.stopPrefix64Discovery(getNetId());
        } catch (RemoteException | ServiceSpecificException e) {
            Slog.e(TAG, "Error stopping prefix discovery on netId " + getNetId() + ": " + e);
        }
        this.mPrefixDiscoveryRunning = false;
    }

    private boolean isPrefixDiscoveryNeeded() {
        return requiresClat(this.mNetwork) && this.mNat64PrefixFromRa == null;
    }

    private void setPrefix64(IpPrefix prefix) {
        String prefixString = prefix != null ? prefix.toString() : "";
        try {
            this.mDnsResolver.setPrefix64(getNetId(), prefixString);
        } catch (RemoteException | ServiceSpecificException e) {
            Slog.e(TAG, "Error setting NAT64 prefix on netId " + getNetId() + " to " + prefix + ": " + e);
        }
    }

    private void maybeHandleNat64PrefixChange() {
        IpPrefix newPrefix = selectNat64Prefix();
        if (!Objects.equals(this.mNat64PrefixInUse, newPrefix)) {
            Slog.d(TAG, "NAT64 prefix changed from " + this.mNat64PrefixInUse + " to " + newPrefix);
            stop();
            update();
        }
    }

    /* JADX INFO: renamed from: com.android.server.connectivity.Nat464Xlat$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$server$connectivity$Nat464Xlat$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$android$server$connectivity$Nat464Xlat$State = iArr;
            try {
                iArr[State.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$Nat464Xlat$State[State.DISCOVERING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$Nat464Xlat$State[State.STARTING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$android$server$connectivity$Nat464Xlat$State[State.RUNNING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public void update() {
        int i = AnonymousClass1.$SwitchMap$com$android$server$connectivity$Nat464Xlat$State[this.mState.ordinal()];
        if (i == 1) {
            if (isPrefixDiscoveryNeeded()) {
                startPrefixDiscovery();
                this.mState = State.DISCOVERING;
                return;
            } else {
                if (requiresClat(this.mNetwork)) {
                    start();
                    return;
                }
                return;
            }
        }
        if (i != 2) {
            if (i == 3 || i == 4) {
                if (!shouldStartClat(this.mNetwork)) {
                    stop();
                    return;
                } else {
                    maybeHandleNat64PrefixChange();
                    return;
                }
            }
            return;
        }
        if (shouldStartClat(this.mNetwork)) {
            start();
        } else if (!requiresClat(this.mNetwork)) {
            stopPrefixDiscovery();
            this.mState = State.IDLE;
        }
    }

    private IpPrefix selectNat64Prefix() {
        IpPrefix ipPrefix = this.mNat64PrefixFromRa;
        return ipPrefix != null ? ipPrefix : this.mNat64PrefixFromDns;
    }

    public void setNat64PrefixFromRa(IpPrefix prefix) {
        this.mNat64PrefixFromRa = prefix;
    }

    public void setNat64PrefixFromDns(IpPrefix prefix) {
        this.mNat64PrefixFromDns = prefix;
    }

    public void fixupLinkProperties(LinkProperties oldLp, LinkProperties lp) {
        lp.setNat64Prefix(selectNat64Prefix());
        if (!isRunning() || lp.getAllInterfaceNames().contains(this.mIface)) {
            return;
        }
        Slog.d(TAG, "clatd running, updating NAI for " + this.mIface);
        for (LinkProperties stacked : oldLp.getStackedLinks()) {
            if (Objects.equals(this.mIface, stacked.getInterfaceName())) {
                lp.addStackedLink(stacked);
                return;
            }
        }
    }

    private LinkProperties makeLinkProperties(LinkAddress clatAddress) {
        LinkProperties stacked = new LinkProperties();
        stacked.setInterfaceName(this.mIface);
        RouteInfo ipv4Default = new RouteInfo(new LinkAddress(Inet4Address.ANY, 0), clatAddress.getAddress(), this.mIface);
        stacked.addRoute(ipv4Default);
        stacked.addLinkAddress(clatAddress);
        return stacked;
    }

    private LinkAddress getLinkAddress(String iface) {
        try {
            InterfaceConfiguration config = this.mNMService.getInterfaceConfig(iface);
            return config.getLinkAddress();
        } catch (RemoteException | IllegalStateException e) {
            Slog.e(TAG, "Error getting link properties: " + e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handleInterfaceLinkStateChanged, reason: merged with bridge method [inline-methods] */
    public void lambda$interfaceLinkStateChanged$0$Nat464Xlat(String iface, boolean up) {
        if (!isStarting() || !up || !Objects.equals(this.mIface, iface)) {
            return;
        }
        LinkAddress clatAddress = getLinkAddress(iface);
        if (clatAddress == null) {
            Slog.e(TAG, "clatAddress was null for stacked iface " + iface);
            return;
        }
        String str = TAG;
        String str2 = this.mIface;
        Slog.i(str, String.format("interface %s is up, adding stacked link %s on top of %s", str2, str2, this.mBaseIface));
        enterRunningState();
        LinkProperties lp = new LinkProperties(this.mNetwork.linkProperties);
        lp.addStackedLink(makeLinkProperties(clatAddress));
        this.mNetwork.connService().handleUpdateLinkProperties(this.mNetwork, lp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handleInterfaceRemoved, reason: merged with bridge method [inline-methods] */
    public void lambda$interfaceRemoved$1$Nat464Xlat(String iface) {
        if (!Objects.equals(this.mIface, iface) || !isRunning()) {
            return;
        }
        Slog.i(TAG, "interface " + iface + " removed");
        stop();
    }

    public void interfaceLinkStateChanged(final String iface, final boolean up) {
        this.mNetwork.handler().post(new Runnable() { // from class: com.android.server.connectivity.-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$interfaceLinkStateChanged$0$Nat464Xlat(iface, up);
            }
        });
    }

    public void interfaceRemoved(final String iface) {
        this.mNetwork.handler().post(new Runnable() { // from class: com.android.server.connectivity.-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$interfaceRemoved$1$Nat464Xlat(iface);
            }
        });
    }

    public String toString() {
        return "mBaseIface: " + this.mBaseIface + ", mIface: " + this.mIface + ", mState: " + this.mState;
    }

    protected int getNetId() {
        return this.mNetwork.network.netId;
    }
}
