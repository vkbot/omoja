package com.android.server;

import android.content.Context;
import android.net.INetd;
import android.net.ITestNetworkManager;
import android.net.IpPrefix;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.NetworkAgent;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.RouteInfo;
import android.net.StringNetworkSpecifier;
import android.net.TestNetworkInterface;
import android.net.util.NetdService;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.INetworkManagementService;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.SparseArray;
import com.android.internal.util.FunctionalUtils;
import java.io.UncheckedIOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
class TestNetworkService extends ITestNetworkManager.Stub {
    private static final String PERMISSION_NAME = "android.permission.MANAGE_TEST_NETWORKS";
    private static final String TEST_NETWORK_TYPE = "TEST_NETWORK";
    private final Context mContext;
    private final Handler mHandler;
    private final HandlerThread mHandlerThread;
    private final INetworkManagementService mNMS;
    private final INetd mNetd;
    private final SparseArray<TestNetworkAgent> mTestNetworkTracker = new SparseArray<>();
    private static final String TAG = TestNetworkService.class.getSimpleName();
    private static final AtomicInteger sTestTunIndex = new AtomicInteger();

    private static native int jniCreateTunTap(boolean z, String str);

    protected TestNetworkService(Context context, INetworkManagementService netManager) {
        HandlerThread handlerThread = new HandlerThread("TestNetworkServiceThread");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper());
        Objects.requireNonNull(context, "missing Context");
        this.mContext = context;
        Objects.requireNonNull(netManager, "missing INetworkManagementService");
        this.mNMS = netManager;
        INetd netdService = NetdService.getInstance();
        Objects.requireNonNull(netdService, "could not get netd instance");
        this.mNetd = netdService;
    }

    private TestNetworkInterface createInterface(final boolean isTun, final LinkAddress[] linkAddrs) {
        enforceTestNetworkPermissions(this.mContext);
        Objects.requireNonNull(linkAddrs, "missing linkAddrs");
        String ifacePrefix = isTun ? "testtun" : "testtap";
        final String iface = ifacePrefix + sTestTunIndex.getAndIncrement();
        return (TestNetworkInterface) Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE
            public final Object getOrThrow() {
                return this.f$0.lambda$createInterface$0$TestNetworkService(isTun, iface, linkAddrs);
            }
        });
    }

    public /* synthetic */ TestNetworkInterface lambda$createInterface$0$TestNetworkService(boolean isTun, String iface, LinkAddress[] linkAddrs) throws Exception {
        try {
            ParcelFileDescriptor tunIntf = ParcelFileDescriptor.adoptFd(jniCreateTunTap(isTun, iface));
            for (LinkAddress addr : linkAddrs) {
                this.mNetd.interfaceAddAddress(iface, addr.getAddress().getHostAddress(), addr.getPrefixLength());
            }
            return new TestNetworkInterface(tunIntf, iface);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public TestNetworkInterface createTunInterface(LinkAddress[] linkAddrs) {
        return createInterface(true, linkAddrs);
    }

    public TestNetworkInterface createTapInterface() {
        return createInterface(false, new LinkAddress[0]);
    }

    public class TestNetworkAgent extends NetworkAgent implements IBinder.DeathRecipient {
        private static final int NETWORK_SCORE = 1;
        private IBinder mBinder;
        private final Object mBinderLock;
        private final LinkProperties mLp;
        private final NetworkCapabilities mNc;
        private final NetworkInfo mNi;
        private final int mUid;

        private TestNetworkAgent(Looper looper, Context context, NetworkInfo ni, NetworkCapabilities nc, LinkProperties lp, int uid, IBinder binder) throws RemoteException {
            super(looper, context, TestNetworkService.TEST_NETWORK_TYPE, ni, nc, lp, 1);
            Object obj = new Object();
            this.mBinderLock = obj;
            this.mUid = uid;
            this.mNi = ni;
            this.mNc = nc;
            this.mLp = lp;
            synchronized (obj) {
                this.mBinder = binder;
                try {
                    binder.linkToDeath(this, 0);
                } catch (RemoteException e) {
                    binderDied();
                    throw e;
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            teardown();
        }

        protected void unwanted() {
            teardown();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void teardown() {
            this.mNi.setDetailedState(NetworkInfo.DetailedState.DISCONNECTED, null, null);
            this.mNi.setIsAvailable(false);
            sendNetworkInfo(this.mNi);
            synchronized (this.mBinderLock) {
                if (this.mBinder == null) {
                    return;
                }
                this.mBinder.unlinkToDeath(this, 0);
                this.mBinder = null;
                synchronized (TestNetworkService.this.mTestNetworkTracker) {
                    TestNetworkService.this.mTestNetworkTracker.remove(getNetwork().netId);
                }
            }
        }
    }

    private TestNetworkAgent registerTestNetworkAgent(Looper looper, Context context, String iface, LinkProperties lp, boolean isMetered, int callingUid, int[] administratorUids, IBinder binder) throws SocketException, RemoteException {
        LinkProperties lp2;
        Objects.requireNonNull(looper, "missing Looper");
        Objects.requireNonNull(context, "missing Context");
        NetworkInfo ni = new NetworkInfo(18, 0, TEST_NETWORK_TYPE, "");
        ni.setDetailedState(NetworkInfo.DetailedState.CONNECTED, null, null);
        ni.setIsAvailable(true);
        NetworkCapabilities nc = new NetworkCapabilities();
        nc.clearAll();
        nc.addTransportType(7);
        nc.addCapability(21);
        nc.addCapability(13);
        nc.setNetworkSpecifier(new StringNetworkSpecifier(iface));
        nc.setAdministratorUids(administratorUids);
        if (!isMetered) {
            nc.addCapability(11);
        }
        if (lp == null) {
            lp2 = new LinkProperties();
        } else {
            lp2 = new LinkProperties(lp);
            lp2.setLinkAddresses(new ArrayList());
        }
        lp2.setInterfaceName(iface);
        NetworkInterface netIntf = NetworkInterface.getByName(iface);
        Objects.requireNonNull(netIntf, "No such network interface found: " + netIntf);
        Iterator<InterfaceAddress> it = netIntf.getInterfaceAddresses().iterator();
        boolean allowIPv4 = false;
        boolean allowIPv6 = false;
        while (allowIPv4) {
            InterfaceAddress intfAddr = it.next();
            lp2.addLinkAddress(new LinkAddress(intfAddr.getAddress(), intfAddr.getNetworkPrefixLength()));
            if (intfAddr.getAddress() instanceof Inet6Address) {
                allowIPv6 |= !intfAddr.getAddress().isLinkLocalAddress();
            } else if (intfAddr.getAddress() instanceof Inet4Address) {
                allowIPv4 = true;
            }
        }
        if (allowIPv4) {
            lp2.addRoute(new RouteInfo(new IpPrefix(Inet4Address.ANY, 0), null, iface));
        }
        if (allowIPv6) {
            lp2.addRoute(new RouteInfo(new IpPrefix(Inet6Address.ANY, 0), null, iface));
        }
        return new TestNetworkAgent(looper, context, ni, nc, lp2, callingUid, binder);
    }

    public void setupTestNetwork(final String iface, LinkProperties lp, boolean isMetered, int[] administratorUids, IBinder binder) {
        enforceTestNetworkPermissions(this.mContext);
        Objects.requireNonNull(iface, "missing Iface");
        Objects.requireNonNull(binder, "missing IBinder");
        if (!iface.startsWith(INetd.IPSEC_INTERFACE_PREFIX) && !iface.startsWith("testtun")) {
            throw new IllegalArgumentException("Cannot create network for non ipsec, non-testtun interface");
        }
        try {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.-$$Lambda$TestNetworkService$1hp-BCN-pFkUplS_GtzJEkxX10Y
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setupTestNetwork$1$TestNetworkService(iface);
                }
            });
            synchronized (this.mTestNetworkTracker) {
                TestNetworkAgent agent = registerTestNetworkAgent(this.mHandler.getLooper(), this.mContext, iface, lp, isMetered, Binder.getCallingUid(), administratorUids, binder);
                this.mTestNetworkTracker.put(agent.getNetwork().netId, agent);
            }
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        } catch (SocketException e2) {
            throw new UncheckedIOException(e2);
        }
    }

    public /* synthetic */ void lambda$setupTestNetwork$1$TestNetworkService(String iface) throws Exception {
        this.mNMS.setInterfaceUp(iface);
    }

    public void teardownTestNetwork(int netId) {
        TestNetworkAgent agent;
        enforceTestNetworkPermissions(this.mContext);
        synchronized (this.mTestNetworkTracker) {
            agent = this.mTestNetworkTracker.get(netId);
        }
        if (agent != null) {
            if (agent.mUid == Binder.getCallingUid()) {
                agent.teardown();
                return;
            }
            throw new SecurityException("Attempted to modify other user's test networks");
        }
    }

    public static void enforceTestNetworkPermissions(Context context) {
        context.enforceCallingOrSelfPermission(PERMISSION_NAME, "TestNetworkService");
    }
}
