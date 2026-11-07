package com.android.server;

import android.app.AppOpsManager;
import android.content.Context;
import android.net.IIpSecService;
import android.net.INetd;
import android.net.IpSecAlgorithm;
import android.net.IpSecConfig;
import android.net.IpSecSpiResponse;
import android.net.IpSecTransformResponse;
import android.net.IpSecTunnelInterfaceResponse;
import android.net.IpSecUdpEncapResponse;
import android.net.LinkAddress;
import android.net.Network;
import android.net.NetworkUtils;
import android.net.TrafficStats;
import android.net.util.NetdService;
import android.os.Binder;
import android.os.IBinder;
import android.os.INetworkManagementService;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.Preconditions;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class IpSecService extends IIpSecService.Stub {
    static final int FREE_PORT_MIN = 1024;
    private static final InetAddress INADDR_ANY;
    static final int MAX_PORT_BIND_ATTEMPTS = 10;
    private static final int NETD_FETCH_TIMEOUT_MS = 5000;
    private static final String NETD_SERVICE_NAME = "netd";
    static final int PORT_MAX = 65535;
    private static final String TUNNEL_OP = "android:manage_ipsec_tunnels";
    public static final int TUN_INTF_NETID_RANGE = 1024;
    static final int TUN_INTF_NETID_START = 64512;
    private final Context mContext;
    private final INetworkManagementService mNetworkManager;
    private int mNextResourceId;
    private int mNextTunnelNetIdIndex;
    private final IpSecServiceConfiguration mSrvConfig;
    private final SparseBooleanArray mTunnelNetIds;
    final UidFdTagger mUidFdTagger;
    final UserResourceTracker mUserResourceTracker;
    private static final String TAG = "IpSecService";
    private static final boolean DBG = Log.isLoggable(TAG, 3);
    private static final int[] ADDRESS_FAMILIES = {OsConstants.AF_INET, OsConstants.AF_INET6};

    public interface IResource {
        void freeUnderlyingResources() throws RemoteException;

        void invalidate() throws RemoteException;
    }

    interface IpSecServiceConfiguration {
        public static final IpSecServiceConfiguration GETSRVINSTANCE = new IpSecServiceConfiguration() { // from class: com.android.server.IpSecService.IpSecServiceConfiguration.1
            @Override // com.android.server.IpSecService.IpSecServiceConfiguration
            public INetd getNetdInstance() throws RemoteException {
                INetd netd = NetdService.getInstance();
                if (netd == null) {
                    throw new RemoteException("Failed to Get Netd Instance");
                }
                return netd;
            }
        };

        INetd getNetdInstance() throws RemoteException;
    }

    public interface UidFdTagger {
        void tag(FileDescriptor fileDescriptor, int i) throws IOException;
    }

    static {
        try {
            INADDR_ANY = InetAddress.getByAddress(new byte[]{0, 0, 0, 0});
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        }
    }

    public class RefcountedResource<T extends IResource> implements IBinder.DeathRecipient {
        IBinder mBinder;
        private final List<RefcountedResource> mChildren;
        int mRefCount = 1;
        private final T mResource;

        RefcountedResource(T resource, IBinder binder, RefcountedResource... children) {
            synchronized (IpSecService.this) {
                this.mResource = resource;
                this.mChildren = new ArrayList(children.length);
                this.mBinder = binder;
                for (RefcountedResource child : children) {
                    this.mChildren.add(child);
                    child.mRefCount++;
                }
                try {
                    this.mBinder.linkToDeath(this, 0);
                } catch (RemoteException e) {
                    binderDied();
                    e.rethrowFromSystemServer();
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (IpSecService.this) {
                try {
                    userRelease();
                } catch (Exception e) {
                    Log.e(IpSecService.TAG, "Failed to release resource: " + e);
                }
            }
        }

        public T getResource() {
            return this.mResource;
        }

        public void userRelease() throws RemoteException {
            IBinder iBinder = this.mBinder;
            if (iBinder == null) {
                return;
            }
            iBinder.unlinkToDeath(this, 0);
            this.mBinder = null;
            this.mResource.invalidate();
            releaseReference();
        }

        public void releaseReference() throws RemoteException {
            int i = this.mRefCount - 1;
            this.mRefCount = i;
            if (i > 0) {
                return;
            }
            if (i < 0) {
                throw new IllegalStateException("Invalid operation - resource has already been released.");
            }
            this.mResource.freeUnderlyingResources();
            for (RefcountedResource<? extends IResource> child : this.mChildren) {
                child.releaseReference();
            }
            this.mRefCount--;
        }

        public String toString() {
            return "{mResource=" + this.mResource + ", mRefCount=" + this.mRefCount + ", mChildren=" + this.mChildren + "}";
        }
    }

    static class ResourceTracker {
        int mCurrent = 0;
        private final int mMax;

        ResourceTracker(int max) {
            this.mMax = max;
        }

        boolean isAvailable() {
            return this.mCurrent < this.mMax;
        }

        void take() {
            if (!isAvailable()) {
                Log.wtf(IpSecService.TAG, "Too many resources allocated!");
            }
            this.mCurrent++;
        }

        void give() {
            if (this.mCurrent <= 0) {
                Log.wtf(IpSecService.TAG, "We've released this resource too many times");
            }
            this.mCurrent--;
        }

        public String toString() {
            return "{mCurrent=" + this.mCurrent + ", mMax=" + this.mMax + "}";
        }
    }

    static final class UserRecord {
        public static final int MAX_NUM_ENCAP_SOCKETS = 16;
        public static final int MAX_NUM_SPIS = 64;
        public static final int MAX_NUM_TRANSFORMS = 64;
        public static final int MAX_NUM_TUNNEL_INTERFACES = 8;
        final RefcountedResourceArray<SpiRecord> mSpiRecords = new RefcountedResourceArray<>(SpiRecord.class.getSimpleName());
        final RefcountedResourceArray<TransformRecord> mTransformRecords = new RefcountedResourceArray<>(TransformRecord.class.getSimpleName());
        final RefcountedResourceArray<EncapSocketRecord> mEncapSocketRecords = new RefcountedResourceArray<>(EncapSocketRecord.class.getSimpleName());
        final RefcountedResourceArray<TunnelInterfaceRecord> mTunnelInterfaceRecords = new RefcountedResourceArray<>(TunnelInterfaceRecord.class.getSimpleName());
        final ResourceTracker mSpiQuotaTracker = new ResourceTracker(64);
        final ResourceTracker mTransformQuotaTracker = new ResourceTracker(64);
        final ResourceTracker mSocketQuotaTracker = new ResourceTracker(16);
        final ResourceTracker mTunnelQuotaTracker = new ResourceTracker(8);

        UserRecord() {
        }

        void removeSpiRecord(int resourceId) {
            this.mSpiRecords.remove(resourceId);
        }

        void removeTransformRecord(int resourceId) {
            this.mTransformRecords.remove(resourceId);
        }

        void removeTunnelInterfaceRecord(int resourceId) {
            this.mTunnelInterfaceRecords.remove(resourceId);
        }

        void removeEncapSocketRecord(int resourceId) {
            this.mEncapSocketRecords.remove(resourceId);
        }

        public String toString() {
            return "{mSpiQuotaTracker=" + this.mSpiQuotaTracker + ", mTransformQuotaTracker=" + this.mTransformQuotaTracker + ", mSocketQuotaTracker=" + this.mSocketQuotaTracker + ", mTunnelQuotaTracker=" + this.mTunnelQuotaTracker + ", mSpiRecords=" + this.mSpiRecords + ", mTransformRecords=" + this.mTransformRecords + ", mEncapSocketRecords=" + this.mEncapSocketRecords + ", mTunnelInterfaceRecords=" + this.mTunnelInterfaceRecords + "}";
        }
    }

    static final class UserResourceTracker {
        private final SparseArray<UserRecord> mUserRecords = new SparseArray<>();

        UserResourceTracker() {
        }

        public UserRecord getUserRecord(int uid) {
            checkCallerUid(uid);
            UserRecord r = this.mUserRecords.get(uid);
            if (r == null) {
                UserRecord r2 = new UserRecord();
                this.mUserRecords.put(uid, r2);
                return r2;
            }
            return r;
        }

        private void checkCallerUid(int uid) {
            if (uid != Binder.getCallingUid() && 1000 != Binder.getCallingUid()) {
                throw new SecurityException("Attempted access of unowned resources");
            }
        }

        public String toString() {
            return this.mUserRecords.toString();
        }
    }

    private abstract class OwnedResourceRecord implements IResource {
        protected final int mResourceId;
        final int pid;
        final int uid;

        @Override // com.android.server.IpSecService.IResource
        public abstract void freeUnderlyingResources() throws RemoteException;

        protected abstract ResourceTracker getResourceTracker();

        @Override // com.android.server.IpSecService.IResource
        public abstract void invalidate() throws RemoteException;

        OwnedResourceRecord(int resourceId) {
            if (resourceId == -1) {
                throw new IllegalArgumentException("Resource ID must not be INVALID_RESOURCE_ID");
            }
            this.mResourceId = resourceId;
            this.pid = Binder.getCallingPid();
            this.uid = Binder.getCallingUid();
            getResourceTracker().take();
        }

        protected UserRecord getUserRecord() {
            return IpSecService.this.mUserResourceTracker.getUserRecord(this.uid);
        }

        public String toString() {
            return "{mResourceId=" + this.mResourceId + ", pid=" + this.pid + ", uid=" + this.uid + "}";
        }
    }

    static class RefcountedResourceArray<T extends IResource> {
        SparseArray<RefcountedResource<T>> mArray = new SparseArray<>();
        private final String mTypeName;

        public RefcountedResourceArray(String typeName) {
            this.mTypeName = typeName;
        }

        T getResourceOrThrow(int i) {
            return (T) getRefcountedResourceOrThrow(i).getResource();
        }

        RefcountedResource<T> getRefcountedResourceOrThrow(int key) {
            RefcountedResource<T> resource = this.mArray.get(key);
            if (resource == null) {
                throw new IllegalArgumentException(String.format("No such %s found for given id: %d", this.mTypeName, Integer.valueOf(key)));
            }
            return resource;
        }

        void put(int key, RefcountedResource<T> obj) {
            Objects.requireNonNull(obj, "Null resources cannot be added");
            this.mArray.put(key, obj);
        }

        void remove(int key) {
            this.mArray.remove(key);
        }

        public String toString() {
            return this.mArray.toString();
        }
    }

    private final class TransformRecord extends OwnedResourceRecord {
        private final IpSecConfig mConfig;
        private final EncapSocketRecord mSocket;
        private final SpiRecord mSpi;

        TransformRecord(int resourceId, IpSecConfig config, SpiRecord spi, EncapSocketRecord socket) {
            super(resourceId);
            this.mConfig = config;
            this.mSpi = spi;
            this.mSocket = socket;
            spi.setOwnedByTransform();
        }

        public IpSecConfig getConfig() {
            return this.mConfig;
        }

        public SpiRecord getSpiRecord() {
            return this.mSpi;
        }

        public EncapSocketRecord getSocketRecord() {
            return this.mSocket;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord, com.android.server.IpSecService.IResource
        public void freeUnderlyingResources() {
            int spi = this.mSpi.getSpi();
            try {
                IpSecService.this.mSrvConfig.getNetdInstance().ipSecDeleteSecurityAssociation(this.uid, this.mConfig.getSourceAddress(), this.mConfig.getDestinationAddress(), spi, this.mConfig.getMarkValue(), this.mConfig.getMarkMask(), this.mConfig.getXfrmInterfaceId());
            } catch (RemoteException | ServiceSpecificException e) {
                Log.e(IpSecService.TAG, "Failed to delete SA with ID: " + this.mResourceId, e);
            }
            getResourceTracker().give();
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord, com.android.server.IpSecService.IResource
        public void invalidate() throws RemoteException {
            getUserRecord().removeTransformRecord(this.mResourceId);
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord
        protected ResourceTracker getResourceTracker() {
            return getUserRecord().mTransformQuotaTracker;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord
        public String toString() {
            return "{super=" + super.toString() + ", mSocket=" + this.mSocket + ", mSpi.mResourceId=" + this.mSpi.mResourceId + ", mConfig=" + this.mConfig + "}";
        }
    }

    private final class SpiRecord extends OwnedResourceRecord {
        private final String mDestinationAddress;
        private boolean mOwnedByTransform;
        private final String mSourceAddress;
        private int mSpi;

        SpiRecord(int resourceId, String sourceAddress, String destinationAddress, int spi) {
            super(resourceId);
            this.mOwnedByTransform = false;
            this.mSourceAddress = sourceAddress;
            this.mDestinationAddress = destinationAddress;
            this.mSpi = spi;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord, com.android.server.IpSecService.IResource
        public void freeUnderlyingResources() {
            try {
                if (!this.mOwnedByTransform) {
                    IpSecService.this.mSrvConfig.getNetdInstance().ipSecDeleteSecurityAssociation(this.uid, this.mSourceAddress, this.mDestinationAddress, this.mSpi, 0, 0, 0);
                }
            } catch (ServiceSpecificException | RemoteException e) {
                Log.e(IpSecService.TAG, "Failed to delete SPI reservation with ID: " + this.mResourceId, e);
            }
            this.mSpi = 0;
            getResourceTracker().give();
        }

        public int getSpi() {
            return this.mSpi;
        }

        public String getDestinationAddress() {
            return this.mDestinationAddress;
        }

        public void setOwnedByTransform() {
            if (this.mOwnedByTransform) {
                throw new IllegalStateException("Cannot own an SPI twice!");
            }
            this.mOwnedByTransform = true;
        }

        public boolean getOwnedByTransform() {
            return this.mOwnedByTransform;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord, com.android.server.IpSecService.IResource
        public void invalidate() throws RemoteException {
            getUserRecord().removeSpiRecord(this.mResourceId);
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord
        protected ResourceTracker getResourceTracker() {
            return getUserRecord().mSpiQuotaTracker;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord
        public String toString() {
            return "{super=" + super.toString() + ", mSpi=" + this.mSpi + ", mSourceAddress=" + this.mSourceAddress + ", mDestinationAddress=" + this.mDestinationAddress + ", mOwnedByTransform=" + this.mOwnedByTransform + "}";
        }
    }

    int reserveNetId() {
        synchronized (this.mTunnelNetIds) {
            for (int i = 0; i < 1024; i++) {
                int index = this.mNextTunnelNetIdIndex;
                int netId = TUN_INTF_NETID_START + index;
                int i2 = this.mNextTunnelNetIdIndex + 1;
                this.mNextTunnelNetIdIndex = i2;
                if (i2 >= 1024) {
                    this.mNextTunnelNetIdIndex = 0;
                }
                if (!this.mTunnelNetIds.get(netId)) {
                    this.mTunnelNetIds.put(netId, true);
                    return netId;
                }
            }
            throw new IllegalStateException("No free netIds to allocate");
        }
    }

    void releaseNetId(int netId) {
        synchronized (this.mTunnelNetIds) {
            this.mTunnelNetIds.delete(netId);
        }
    }

    private final class TunnelInterfaceRecord extends OwnedResourceRecord {
        private final int mIfId;
        private final int mIkey;
        private final String mInterfaceName;
        private final String mLocalAddress;
        private final int mOkey;
        private final String mRemoteAddress;
        private final Network mUnderlyingNetwork;

        TunnelInterfaceRecord(int resourceId, String interfaceName, Network underlyingNetwork, String localAddr, String remoteAddr, int ikey, int okey, int intfId) {
            super(resourceId);
            this.mInterfaceName = interfaceName;
            this.mUnderlyingNetwork = underlyingNetwork;
            this.mLocalAddress = localAddr;
            this.mRemoteAddress = remoteAddr;
            this.mIkey = ikey;
            this.mOkey = okey;
            this.mIfId = intfId;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord, com.android.server.IpSecService.IResource
        public void freeUnderlyingResources() {
            try {
                INetd netd = IpSecService.this.mSrvConfig.getNetdInstance();
                netd.ipSecRemoveTunnelInterface(this.mInterfaceName);
                for (int selAddrFamily : IpSecService.ADDRESS_FAMILIES) {
                    netd.ipSecDeleteSecurityPolicy(this.uid, selAddrFamily, 1, this.mOkey, -1, this.mIfId);
                    netd.ipSecDeleteSecurityPolicy(this.uid, selAddrFamily, 0, this.mIkey, -1, this.mIfId);
                }
            } catch (ServiceSpecificException | RemoteException e) {
                Log.e(IpSecService.TAG, "Failed to delete VTI with interface name: " + this.mInterfaceName + " and id: " + this.mResourceId, e);
            }
            getResourceTracker().give();
            IpSecService.this.releaseNetId(this.mIkey);
            IpSecService.this.releaseNetId(this.mOkey);
        }

        public String getInterfaceName() {
            return this.mInterfaceName;
        }

        public Network getUnderlyingNetwork() {
            return this.mUnderlyingNetwork;
        }

        public String getLocalAddress() {
            return this.mLocalAddress;
        }

        public String getRemoteAddress() {
            return this.mRemoteAddress;
        }

        public int getIkey() {
            return this.mIkey;
        }

        public int getOkey() {
            return this.mOkey;
        }

        public int getIfId() {
            return this.mIfId;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord
        protected ResourceTracker getResourceTracker() {
            return getUserRecord().mTunnelQuotaTracker;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord, com.android.server.IpSecService.IResource
        public void invalidate() {
            getUserRecord().removeTunnelInterfaceRecord(this.mResourceId);
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord
        public String toString() {
            return "{super=" + super.toString() + ", mInterfaceName=" + this.mInterfaceName + ", mUnderlyingNetwork=" + this.mUnderlyingNetwork + ", mLocalAddress=" + this.mLocalAddress + ", mRemoteAddress=" + this.mRemoteAddress + ", mIkey=" + this.mIkey + ", mOkey=" + this.mOkey + "}";
        }
    }

    private final class EncapSocketRecord extends OwnedResourceRecord {
        private final int mPort;
        private FileDescriptor mSocket;

        EncapSocketRecord(int resourceId, FileDescriptor socket, int port) {
            super(resourceId);
            this.mSocket = socket;
            this.mPort = port;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord, com.android.server.IpSecService.IResource
        public void freeUnderlyingResources() {
            Log.d(IpSecService.TAG, "Closing port " + this.mPort);
            IoUtils.closeQuietly(this.mSocket);
            this.mSocket = null;
            getResourceTracker().give();
        }

        public int getPort() {
            return this.mPort;
        }

        public FileDescriptor getFileDescriptor() {
            return this.mSocket;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord
        protected ResourceTracker getResourceTracker() {
            return getUserRecord().mSocketQuotaTracker;
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord, com.android.server.IpSecService.IResource
        public void invalidate() {
            getUserRecord().removeEncapSocketRecord(this.mResourceId);
        }

        @Override // com.android.server.IpSecService.OwnedResourceRecord
        public String toString() {
            return "{super=" + super.toString() + ", mSocket=" + this.mSocket + ", mPort=" + this.mPort + "}";
        }
    }

    private IpSecService(Context context, INetworkManagementService networkManager) {
        this(context, networkManager, IpSecServiceConfiguration.GETSRVINSTANCE);
    }

    static IpSecService create(Context context, INetworkManagementService networkManager) throws InterruptedException {
        IpSecService service = new IpSecService(context, networkManager);
        service.connectNativeNetdService();
        return service;
    }

    private AppOpsManager getAppOpsManager() {
        AppOpsManager appOps = (AppOpsManager) this.mContext.getSystemService("appops");
        if (appOps == null) {
            throw new RuntimeException("System Server couldn't get AppOps");
        }
        return appOps;
    }

    public IpSecService(Context context, INetworkManagementService networkManager, IpSecServiceConfiguration config) {
        this(context, networkManager, config, new UidFdTagger() { // from class: com.android.server.-$$Lambda$IpSecService$AnqunmSwm_yQvDDEPg-gokhVs5M
            @Override // com.android.server.IpSecService.UidFdTagger
            public final void tag(FileDescriptor fileDescriptor, int i) throws IOException {
                IpSecService.lambda$new$0(fileDescriptor, i);
            }
        });
    }

    static /* synthetic */ void lambda$new$0(FileDescriptor fd, int uid) throws IOException {
        try {
            TrafficStats.setThreadStatsUid(uid);
            TrafficStats.tagFileDescriptor(fd);
        } finally {
            TrafficStats.clearThreadStatsUid();
        }
    }

    public IpSecService(Context context, INetworkManagementService networkManager, IpSecServiceConfiguration config, UidFdTagger uidFdTagger) {
        this.mNextResourceId = 1;
        this.mUserResourceTracker = new UserResourceTracker();
        this.mTunnelNetIds = new SparseBooleanArray();
        this.mNextTunnelNetIdIndex = 0;
        this.mContext = context;
        Objects.requireNonNull(networkManager);
        this.mNetworkManager = networkManager;
        this.mSrvConfig = config;
        this.mUidFdTagger = uidFdTagger;
    }

    public void systemReady() {
        if (isNetdAlive()) {
            Slog.d(TAG, "IpSecService is ready");
        } else {
            Slog.wtf(TAG, "IpSecService not ready: failed to connect to NetD Native Service!");
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.server.IpSecService$1] */
    private void connectNativeNetdService() {
        new Thread() { // from class: com.android.server.IpSecService.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (IpSecService.this) {
                    NetdService.get(5000L);
                }
            }
        }.start();
    }

    synchronized boolean isNetdAlive() {
        try {
            try {
                INetd netd = this.mSrvConfig.getNetdInstance();
                if (netd == null) {
                    return false;
                }
                return netd.isAlive();
            } catch (RemoteException e) {
                return false;
            }
        } catch (RemoteException e2) {
        }
    }

    private static void checkInetAddress(String inetAddress) {
        if (TextUtils.isEmpty(inetAddress)) {
            throw new IllegalArgumentException("Unspecified address");
        }
        InetAddress checkAddr = NetworkUtils.numericToInetAddress(inetAddress);
        if (checkAddr.isAnyLocalAddress()) {
            throw new IllegalArgumentException("Inappropriate wildcard address: " + inetAddress);
        }
    }

    private static void checkDirection(int direction) {
        if (direction == 0 || direction == 1) {
            return;
        }
        throw new IllegalArgumentException("Invalid Direction: " + direction);
    }

    public synchronized IpSecSpiResponse allocateSecurityParameterIndex(String destinationAddress, int requestedSpi, IBinder binder) throws RemoteException {
        checkInetAddress(destinationAddress);
        if (requestedSpi > 0 && requestedSpi < 256) {
            throw new IllegalArgumentException("ESP SPI must not be in the range of 0-255.");
        }
        Objects.requireNonNull(binder, "Null Binder passed to allocateSecurityParameterIndex");
        int callingUid = Binder.getCallingUid();
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(callingUid);
        int resourceId = this.mNextResourceId;
        this.mNextResourceId = resourceId + 1;
        int spi = 0;
        try {
            if (!userRecord.mSpiQuotaTracker.isAvailable()) {
                return new IpSecSpiResponse(1, -1, 0);
            }
            try {
                int spi2 = this.mSrvConfig.getNetdInstance().ipSecAllocateSpi(callingUid, "", destinationAddress, requestedSpi);
                try {
                    Log.d(TAG, "Allocated SPI " + spi2);
                    userRecord.mSpiRecords.put(resourceId, new RefcountedResource<>(new SpiRecord(resourceId, "", destinationAddress, spi2), binder, new RefcountedResource[0]));
                    return new IpSecSpiResponse(0, resourceId, spi2);
                } catch (RemoteException e) {
                    e = e;
                    throw e.rethrowFromSystemServer();
                } catch (ServiceSpecificException e2) {
                    e = e2;
                    spi = spi2;
                    if (e.errorCode == OsConstants.ENOENT) {
                        return new IpSecSpiResponse(2, -1, spi);
                    }
                    throw e;
                }
            } catch (ServiceSpecificException e3) {
                e = e3;
            } catch (RemoteException e4) {
                e = e4;
            }
        } catch (ServiceSpecificException e5) {
            e = e5;
        } catch (RemoteException e6) {
            e = e6;
        }
    }

    private void releaseResource(RefcountedResourceArray resArray, int resourceId) throws RemoteException {
        resArray.getRefcountedResourceOrThrow(resourceId).userRelease();
    }

    public synchronized void releaseSecurityParameterIndex(int resourceId) throws RemoteException {
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(Binder.getCallingUid());
        releaseResource(userRecord.mSpiRecords, resourceId);
    }

    private int bindToRandomPort(FileDescriptor sockFd) throws IOException {
        for (int i = 10; i > 0; i--) {
            try {
                FileDescriptor probeSocket = Os.socket(OsConstants.AF_INET, OsConstants.SOCK_DGRAM, OsConstants.IPPROTO_UDP);
                Os.bind(probeSocket, INADDR_ANY, 0);
                int port = ((InetSocketAddress) Os.getsockname(probeSocket)).getPort();
                Os.close(probeSocket);
                Log.v(TAG, "Binding to port " + port);
                Os.bind(sockFd, INADDR_ANY, port);
                return port;
            } catch (ErrnoException e) {
                if (e.errno != OsConstants.EADDRINUSE) {
                    throw e.rethrowAsIOException();
                }
            }
        }
        throw new IOException("Failed 10 attempts to bind to a port");
    }

    public synchronized IpSecUdpEncapResponse openUdpEncapsulationSocket(int port, IBinder binder) throws RemoteException {
        if (port != 0 && (port < 1024 || port > PORT_MAX)) {
            throw new IllegalArgumentException("Specified port number must be a valid non-reserved UDP port");
        }
        Objects.requireNonNull(binder, "Null Binder passed to openUdpEncapsulationSocket");
        int callingUid = Binder.getCallingUid();
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(callingUid);
        int resourceId = this.mNextResourceId;
        this.mNextResourceId = resourceId + 1;
        try {
            if (!userRecord.mSocketQuotaTracker.isAvailable()) {
                return new IpSecUdpEncapResponse(1);
            }
            FileDescriptor sockFd = Os.socket(OsConstants.AF_INET, OsConstants.SOCK_DGRAM, OsConstants.IPPROTO_UDP);
            this.mUidFdTagger.tag(sockFd, callingUid);
            Os.setsockoptInt(sockFd, OsConstants.IPPROTO_UDP, OsConstants.UDP_ENCAP, OsConstants.UDP_ENCAP_ESPINUDP);
            this.mSrvConfig.getNetdInstance().ipSecSetEncapSocketOwner(new ParcelFileDescriptor(sockFd), callingUid);
            if (port != 0) {
                Log.v(TAG, "Binding to port " + port);
                Os.bind(sockFd, INADDR_ANY, port);
            } else {
                port = bindToRandomPort(sockFd);
            }
            userRecord.mEncapSocketRecords.put(resourceId, new RefcountedResource<>(new EncapSocketRecord(resourceId, sockFd, port), binder, new RefcountedResource[0]));
            return new IpSecUdpEncapResponse(0, resourceId, port, sockFd);
        } catch (ErrnoException | IOException e) {
            IoUtils.closeQuietly((FileDescriptor) null);
            return new IpSecUdpEncapResponse(1);
        }
    }

    public synchronized void closeUdpEncapsulationSocket(int resourceId) throws RemoteException {
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(Binder.getCallingUid());
        releaseResource(userRecord.mEncapSocketRecords, resourceId);
    }

    public synchronized IpSecTunnelInterfaceResponse createTunnelInterface(String localAddr, String remoteAddr, Network underlyingNetwork, IBinder binder, String callingPackage) {
        int okey;
        int ikey;
        int okey2;
        int ikey2;
        enforceTunnelFeatureAndPermissions(callingPackage);
        Objects.requireNonNull(binder, "Null Binder passed to createTunnelInterface");
        Objects.requireNonNull(underlyingNetwork, "No underlying network was specified");
        checkInetAddress(localAddr);
        checkInetAddress(remoteAddr);
        int callerUid = Binder.getCallingUid();
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(callerUid);
        if (!userRecord.mTunnelQuotaTracker.isAvailable()) {
            return new IpSecTunnelInterfaceResponse(1);
        }
        int i = this.mNextResourceId;
        this.mNextResourceId = i + 1;
        int resourceId = i;
        int ikey3 = reserveNetId();
        int okey3 = reserveNetId();
        final String intfName = String.format("%s%d", INetd.IPSEC_INTERFACE_PREFIX, Integer.valueOf(resourceId));
        try {
            try {
                try {
                    INetd netd = this.mSrvConfig.getNetdInstance();
                    netd.ipSecAddTunnelInterface(intfName, localAddr, remoteAddr, ikey3, okey3, resourceId);
                    try {
                        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.-$$Lambda$IpSecService$fEohV8w-aKy2H7Pc5nplFrk1PZs
                            public final void runOrThrow() throws Exception {
                                this.f$0.lambda$createTunnelInterface$1$IpSecService(intfName);
                            }
                        });
                        int[] iArr = ADDRESS_FAMILIES;
                        int length = iArr.length;
                        int i2 = 0;
                        while (i2 < length) {
                            try {
                                int selAddrFamily = iArr[i2];
                                int i3 = i2;
                                int i4 = length;
                                String intfName2 = intfName;
                                okey = okey3;
                                ikey = ikey3;
                                int resourceId2 = resourceId;
                                UserRecord userRecord2 = userRecord;
                                try {
                                    netd.ipSecAddSecurityPolicy(callerUid, selAddrFamily, 1, localAddr, remoteAddr, 0, okey, -1, resourceId2);
                                    int callerUid2 = callerUid;
                                    try {
                                        netd.ipSecAddSecurityPolicy(callerUid2, selAddrFamily, 0, remoteAddr, localAddr, 0, ikey, -1, resourceId2);
                                        i2 = i3 + 1;
                                        userRecord = userRecord2;
                                        length = i4;
                                        intfName = intfName2;
                                        okey3 = okey;
                                        ikey3 = ikey;
                                        resourceId = resourceId2;
                                        callerUid = callerUid2;
                                    } catch (RemoteException e) {
                                        e = e;
                                        okey2 = okey;
                                        ikey2 = ikey;
                                        releaseNetId(ikey2);
                                        releaseNetId(okey2);
                                        throw e.rethrowFromSystemServer();
                                    } catch (Throwable th) {
                                        t = th;
                                        releaseNetId(ikey);
                                        releaseNetId(okey);
                                        throw t;
                                    }
                                } catch (RemoteException e2) {
                                    e = e2;
                                    okey2 = okey;
                                    ikey2 = ikey;
                                } catch (Throwable th2) {
                                    t = th2;
                                }
                            } catch (RemoteException e3) {
                                e = e3;
                                okey2 = okey3;
                                ikey2 = ikey3;
                            } catch (Throwable th3) {
                                t = th3;
                                okey = okey3;
                                ikey = ikey3;
                            }
                        }
                        String intfName3 = intfName;
                        okey = okey3;
                        ikey = ikey3;
                        int resourceId3 = resourceId;
                        try {
                            try {
                                try {
                                    userRecord.mTunnelInterfaceRecords.put(resourceId3, new RefcountedResource<>(new TunnelInterfaceRecord(resourceId3, intfName3, underlyingNetwork, localAddr, remoteAddr, ikey, okey, resourceId3), binder, new RefcountedResource[0]));
                                    try {
                                        return new IpSecTunnelInterfaceResponse(0, resourceId3, intfName3);
                                    } catch (RemoteException e4) {
                                        e = e4;
                                        okey2 = okey;
                                        ikey2 = ikey;
                                        releaseNetId(ikey2);
                                        releaseNetId(okey2);
                                        throw e.rethrowFromSystemServer();
                                    } catch (Throwable th4) {
                                        t = th4;
                                        releaseNetId(ikey);
                                        releaseNetId(okey);
                                        throw t;
                                    }
                                } catch (RemoteException e5) {
                                    e = e5;
                                    okey2 = okey;
                                    ikey2 = ikey;
                                    releaseNetId(ikey2);
                                    releaseNetId(okey2);
                                    throw e.rethrowFromSystemServer();
                                } catch (Throwable th5) {
                                    t = th5;
                                }
                            } catch (RemoteException e6) {
                                e = e6;
                                okey2 = okey;
                                ikey2 = ikey;
                            } catch (Throwable th6) {
                                t = th6;
                            }
                        } catch (RemoteException e7) {
                            e = e7;
                            okey2 = okey;
                            ikey2 = ikey;
                        } catch (Throwable th7) {
                            t = th7;
                        }
                    } catch (RemoteException e8) {
                        e = e8;
                        okey = okey3;
                        ikey = ikey3;
                    }
                } catch (RemoteException e9) {
                    e = e9;
                    okey2 = okey3;
                    ikey2 = ikey3;
                }
            } catch (RemoteException e10) {
                e = e10;
                okey2 = okey3;
                ikey2 = ikey3;
            }
        } catch (Throwable th8) {
            t = th8;
            okey = okey3;
            ikey = ikey3;
        }
    }

    public /* synthetic */ void lambda$createTunnelInterface$1$IpSecService(String intfName) throws Exception {
        this.mNetworkManager.setInterfaceUp(intfName);
    }

    public synchronized void addAddressToTunnelInterface(int tunnelResourceId, LinkAddress localAddr, String callingPackage) {
        enforceTunnelFeatureAndPermissions(callingPackage);
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(Binder.getCallingUid());
        TunnelInterfaceRecord tunnelInterfaceInfo = (TunnelInterfaceRecord) userRecord.mTunnelInterfaceRecords.getResourceOrThrow(tunnelResourceId);
        try {
            this.mSrvConfig.getNetdInstance().interfaceAddAddress(tunnelInterfaceInfo.mInterfaceName, localAddr.getAddress().getHostAddress(), localAddr.getPrefixLength());
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public synchronized void removeAddressFromTunnelInterface(int tunnelResourceId, LinkAddress localAddr, String callingPackage) {
        enforceTunnelFeatureAndPermissions(callingPackage);
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(Binder.getCallingUid());
        TunnelInterfaceRecord tunnelInterfaceInfo = (TunnelInterfaceRecord) userRecord.mTunnelInterfaceRecords.getResourceOrThrow(tunnelResourceId);
        try {
            this.mSrvConfig.getNetdInstance().interfaceDelAddress(tunnelInterfaceInfo.mInterfaceName, localAddr.getAddress().getHostAddress(), localAddr.getPrefixLength());
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public synchronized void deleteTunnelInterface(int resourceId, String callingPackage) throws RemoteException {
        enforceTunnelFeatureAndPermissions(callingPackage);
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(Binder.getCallingUid());
        releaseResource(userRecord.mTunnelInterfaceRecords, resourceId);
    }

    void validateAlgorithms(IpSecConfig config) throws IllegalArgumentException {
        IpSecAlgorithm auth = config.getAuthentication();
        IpSecAlgorithm crypt = config.getEncryption();
        IpSecAlgorithm aead = config.getAuthenticatedEncryption();
        boolean z = false;
        Preconditions.checkArgument((aead == null && crypt == null && auth == null) ? false : true, "No Encryption or Authentication algorithms specified");
        Preconditions.checkArgument(auth == null || auth.isAuthentication(), "Unsupported algorithm for Authentication");
        Preconditions.checkArgument(crypt == null || crypt.isEncryption(), "Unsupported algorithm for Encryption");
        Preconditions.checkArgument(aead == null || aead.isAead(), "Unsupported algorithm for Authenticated Encryption");
        if (aead == null || (auth == null && crypt == null)) {
            z = true;
        }
        Preconditions.checkArgument(z, "Authenticated Encryption is mutually exclusive with other Authentication or Encryption algorithms");
    }

    private int getFamily(String inetAddress) {
        int family = OsConstants.AF_UNSPEC;
        InetAddress checkAddress = NetworkUtils.numericToInetAddress(inetAddress);
        if (checkAddress instanceof Inet4Address) {
            int family2 = OsConstants.AF_INET;
            return family2;
        }
        if (checkAddress instanceof Inet6Address) {
            int family3 = OsConstants.AF_INET6;
            return family3;
        }
        return family;
    }

    private void checkIpSecConfig(IpSecConfig config) {
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(Binder.getCallingUid());
        int encapType = config.getEncapType();
        if (encapType != 0) {
            if (encapType == 1 || encapType == 2) {
                userRecord.mEncapSocketRecords.getResourceOrThrow(config.getEncapSocketResourceId());
                int port = config.getEncapRemotePort();
                if (port <= 0 || port > PORT_MAX) {
                    throw new IllegalArgumentException("Invalid remote UDP port: " + port);
                }
            } else {
                throw new IllegalArgumentException("Invalid Encap Type: " + config.getEncapType());
            }
        }
        validateAlgorithms(config);
        SpiRecord s = (SpiRecord) userRecord.mSpiRecords.getResourceOrThrow(config.getSpiResourceId());
        if (s.getOwnedByTransform()) {
            throw new IllegalStateException("SPI already in use; cannot be used in new Transforms");
        }
        if (TextUtils.isEmpty(config.getDestinationAddress())) {
            config.setDestinationAddress(s.getDestinationAddress());
        }
        if (!config.getDestinationAddress().equals(s.getDestinationAddress())) {
            throw new IllegalArgumentException("Mismatched remote addresseses.");
        }
        checkInetAddress(config.getDestinationAddress());
        checkInetAddress(config.getSourceAddress());
        String sourceAddress = config.getSourceAddress();
        String destinationAddress = config.getDestinationAddress();
        int sourceFamily = getFamily(sourceAddress);
        int destinationFamily = getFamily(destinationAddress);
        if (sourceFamily != destinationFamily) {
            throw new IllegalArgumentException("Source address (" + sourceAddress + ") and destination address (" + destinationAddress + ") have different address families.");
        }
        if (config.getEncapType() != 0 && sourceFamily != OsConstants.AF_INET) {
            throw new IllegalArgumentException("UDP Encapsulation is not supported for this address family");
        }
        int mode = config.getMode();
        if (mode != 0 && mode != 1) {
            throw new IllegalArgumentException("Invalid IpSecTransform.mode: " + config.getMode());
        }
        config.setMarkValue(0);
        config.setMarkMask(0);
    }

    private void enforceTunnelFeatureAndPermissions(String callingPackage) {
        if (!this.mContext.getPackageManager().hasSystemFeature("android.software.ipsec_tunnels")) {
            throw new UnsupportedOperationException("IPsec Tunnel Mode requires PackageManager.FEATURE_IPSEC_TUNNELS");
        }
        Objects.requireNonNull(callingPackage, "Null calling package cannot create IpSec tunnels");
        if (getAppOpsManager().noteOpNoThrow(TUNNEL_OP, Binder.getCallingUid(), callingPackage) == 0) {
            return;
        }
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_IPSEC_TUNNELS", TAG);
    }

    private void createOrUpdateTransform(IpSecConfig c, int resourceId, SpiRecord spiRecord, EncapSocketRecord socketRecord) throws RemoteException {
        int encapLocalPort;
        int encapRemotePort;
        String cryptName;
        int encapType = c.getEncapType();
        if (encapType == 0) {
            encapLocalPort = 0;
            encapRemotePort = 0;
        } else {
            int encapLocalPort2 = socketRecord.getPort();
            int encapRemotePort2 = c.getEncapRemotePort();
            encapLocalPort = encapLocalPort2;
            encapRemotePort = encapRemotePort2;
        }
        IpSecAlgorithm auth = c.getAuthentication();
        IpSecAlgorithm crypt = c.getEncryption();
        IpSecAlgorithm authCrypt = c.getAuthenticatedEncryption();
        if (crypt == null) {
            cryptName = authCrypt == null ? "ecb(cipher_null)" : "";
        } else {
            String cryptName2 = crypt.getName();
            cryptName = cryptName2;
        }
        this.mSrvConfig.getNetdInstance().ipSecAddSecurityAssociation(Binder.getCallingUid(), c.getMode(), c.getSourceAddress(), c.getDestinationAddress(), c.getNetwork() != null ? c.getNetwork().netId : 0, spiRecord.getSpi(), c.getMarkValue(), c.getMarkMask(), auth != null ? auth.getName() : "", auth != null ? auth.getKey() : new byte[0], auth != null ? auth.getTruncationLengthBits() : 0, cryptName, crypt != null ? crypt.getKey() : new byte[0], crypt != null ? crypt.getTruncationLengthBits() : 0, authCrypt != null ? authCrypt.getName() : "", authCrypt != null ? authCrypt.getKey() : new byte[0], authCrypt != null ? authCrypt.getTruncationLengthBits() : 0, encapType, encapLocalPort, encapRemotePort, c.getXfrmInterfaceId());
    }

    public synchronized IpSecTransformResponse createTransform(IpSecConfig c, IBinder binder, String callingPackage) throws RemoteException {
        EncapSocketRecord socketRecord;
        Objects.requireNonNull(c);
        if (c.getMode() == 1) {
            enforceTunnelFeatureAndPermissions(callingPackage);
        }
        checkIpSecConfig(c);
        Objects.requireNonNull(binder, "Null Binder passed to createTransform");
        int resourceId = this.mNextResourceId;
        this.mNextResourceId = resourceId + 1;
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(Binder.getCallingUid());
        List<RefcountedResource> dependencies = new ArrayList<>();
        if (!userRecord.mTransformQuotaTracker.isAvailable()) {
            return new IpSecTransformResponse(1);
        }
        if (c.getEncapType() == 0) {
            socketRecord = null;
        } else {
            RefcountedResource refcountedResourceOrThrow = userRecord.mEncapSocketRecords.getRefcountedResourceOrThrow(c.getEncapSocketResourceId());
            dependencies.add(refcountedResourceOrThrow);
            EncapSocketRecord socketRecord2 = (EncapSocketRecord) refcountedResourceOrThrow.getResource();
            socketRecord = socketRecord2;
        }
        RefcountedResource refcountedResourceOrThrow2 = userRecord.mSpiRecords.getRefcountedResourceOrThrow(c.getSpiResourceId());
        dependencies.add(refcountedResourceOrThrow2);
        SpiRecord spiRecord = (SpiRecord) refcountedResourceOrThrow2.getResource();
        createOrUpdateTransform(c, resourceId, spiRecord, socketRecord);
        userRecord.mTransformRecords.put(resourceId, new RefcountedResource<>(new TransformRecord(resourceId, c, spiRecord, socketRecord), binder, (RefcountedResource[]) dependencies.toArray(new RefcountedResource[dependencies.size()])));
        return new IpSecTransformResponse(0, resourceId);
    }

    public synchronized void deleteTransform(int resourceId) throws RemoteException {
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(Binder.getCallingUid());
        releaseResource(userRecord.mTransformRecords, resourceId);
    }

    public synchronized void applyTransportModeTransform(ParcelFileDescriptor socket, int direction, int resourceId) throws RemoteException {
        int callingUid = Binder.getCallingUid();
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(callingUid);
        checkDirection(direction);
        TransformRecord info = (TransformRecord) userRecord.mTransformRecords.getResourceOrThrow(resourceId);
        if (info.pid != getCallingPid() || info.uid != callingUid) {
            throw new SecurityException("Only the owner of an IpSec Transform may apply it!");
        }
        IpSecConfig c = info.getConfig();
        Preconditions.checkArgument(c.getMode() == 0, "Transform mode was not Transport mode; cannot be applied to a socket");
        this.mSrvConfig.getNetdInstance().ipSecApplyTransportModeTransform(socket, callingUid, direction, c.getSourceAddress(), c.getDestinationAddress(), info.getSpiRecord().getSpi());
    }

    public synchronized void removeTransportModeTransforms(ParcelFileDescriptor socket) throws RemoteException {
        this.mSrvConfig.getNetdInstance().ipSecRemoveTransportModeTransform(socket);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public synchronized void applyTunnelModeTransform(int tunnelResourceId, int direction, int transformResourceId, String callingPackage) throws RemoteException {
        EncapSocketRecord socketRecord;
        int mark;
        int[] iArr;
        int length;
        enforceTunnelFeatureAndPermissions(callingPackage);
        checkDirection(direction);
        int callingUid = Binder.getCallingUid();
        UserRecord userRecord = this.mUserResourceTracker.getUserRecord(callingUid);
        TransformRecord transformInfo = (TransformRecord) userRecord.mTransformRecords.getResourceOrThrow(transformResourceId);
        TunnelInterfaceRecord tunnelInterfaceInfo = (TunnelInterfaceRecord) userRecord.mTunnelInterfaceRecords.getResourceOrThrow(tunnelResourceId);
        IpSecConfig c = transformInfo.getConfig();
        int i = 0;
        Preconditions.checkArgument(c.getMode() == 1, "Transform mode was not Tunnel mode; cannot be applied to a tunnel interface");
        if (c.getEncapType() == 0) {
            socketRecord = null;
        } else {
            EncapSocketRecord socketRecord2 = (EncapSocketRecord) userRecord.mEncapSocketRecords.getResourceOrThrow(c.getEncapSocketResourceId());
            socketRecord = socketRecord2;
        }
        SpiRecord spiRecord = transformInfo.getSpiRecord();
        if (direction == 1) {
            mark = tunnelInterfaceInfo.getOkey();
        } else {
            mark = tunnelInterfaceInfo.getIkey();
        }
        int spi = 0;
        try {
            c.setXfrmInterfaceId(tunnelInterfaceInfo.getIfId());
            if (direction == 1) {
                try {
                    c.setNetwork(tunnelInterfaceInfo.getUnderlyingNetwork());
                    spi = spiRecord.getSpi();
                    iArr = ADDRESS_FAMILIES;
                    length = iArr.length;
                    while (i < length) {
                        try {
                            int selAddrFamily = iArr[i];
                            int i2 = i;
                            int i3 = length;
                            int[] iArr2 = iArr;
                            SpiRecord spiRecord2 = spiRecord;
                            EncapSocketRecord socketRecord3 = socketRecord;
                            IpSecConfig c2 = c;
                            UserRecord userRecord2 = userRecord;
                            try {
                                this.mSrvConfig.getNetdInstance().ipSecUpdateSecurityPolicy(callingUid, selAddrFamily, direction, transformInfo.getConfig().getSourceAddress(), transformInfo.getConfig().getDestinationAddress(), spi, mark, -1, c.getXfrmInterfaceId());
                                i = i2 + 1;
                                c = c2;
                                userRecord = userRecord2;
                                length = i3;
                                iArr = iArr2;
                                spiRecord = spiRecord2;
                                socketRecord = socketRecord3;
                            } catch (ServiceSpecificException e) {
                                e = e;
                            }
                        } catch (ServiceSpecificException e2) {
                            e = e2;
                        }
                    }
                    try {
                        createOrUpdateTransform(c, transformResourceId, spiRecord, socketRecord);
                    } catch (ServiceSpecificException e3) {
                        e = e3;
                    }
                } catch (ServiceSpecificException e4) {
                    e = e4;
                }
            } else {
                iArr = ADDRESS_FAMILIES;
                length = iArr.length;
                while (i < length) {
                    int selAddrFamily2 = iArr[i];
                    int i4 = i;
                    int i5 = length;
                    int[] iArr3 = iArr;
                    SpiRecord spiRecord3 = spiRecord;
                    EncapSocketRecord socketRecord4 = socketRecord;
                    IpSecConfig c3 = c;
                    UserRecord userRecord3 = userRecord;
                    this.mSrvConfig.getNetdInstance().ipSecUpdateSecurityPolicy(callingUid, selAddrFamily2, direction, transformInfo.getConfig().getSourceAddress(), transformInfo.getConfig().getDestinationAddress(), spi, mark, -1, c.getXfrmInterfaceId());
                    i = i4 + 1;
                    c = c3;
                    userRecord = userRecord3;
                    length = i5;
                    iArr = iArr3;
                    spiRecord = spiRecord3;
                    socketRecord = socketRecord4;
                }
                createOrUpdateTransform(c, transformResourceId, spiRecord, socketRecord);
            }
        } catch (ServiceSpecificException e5) {
            e = e5;
        }
        if (e.errorCode == OsConstants.EINVAL) {
            throw new IllegalArgumentException(e.toString());
        }
        throw e;
    }

    protected synchronized void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.DUMP", TAG);
        pw.println("IpSecService dump:");
        StringBuilder sb = new StringBuilder();
        sb.append("NetdNativeService Connection: ");
        sb.append(isNetdAlive() ? "alive" : "dead");
        pw.println(sb.toString());
        pw.println();
        pw.println("mUserResourceTracker:");
        pw.println(this.mUserResourceTracker);
    }
}
