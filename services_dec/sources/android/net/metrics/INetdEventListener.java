package android.net.metrics;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface INetdEventListener extends IInterface {
    public static final int DNS_REPORTED_IP_ADDRESSES_LIMIT = 10;
    public static final int EVENT_GETADDRINFO = 1;
    public static final int EVENT_GETHOSTBYADDR = 3;
    public static final int EVENT_GETHOSTBYNAME = 2;
    public static final int EVENT_RES_NSEND = 4;
    public static final String HASH = "8e27594d285ca7c567d87e8cf74766c27647e02b";
    public static final int REPORTING_LEVEL_FULL = 2;
    public static final int REPORTING_LEVEL_METRICS = 1;
    public static final int REPORTING_LEVEL_NONE = 0;
    public static final int VERSION = 1;

    String getInterfaceHash() throws RemoteException;

    int getInterfaceVersion() throws RemoteException;

    void onConnectEvent(int i, int i2, int i3, String str, int i4, int i5) throws RemoteException;

    void onDnsEvent(int i, int i2, int i3, int i4, String str, String[] strArr, int i5, int i6) throws RemoteException;

    void onNat64PrefixEvent(int i, boolean z, String str, int i2) throws RemoteException;

    void onPrivateDnsValidationEvent(int i, String str, String str2, boolean z) throws RemoteException;

    void onTcpSocketStatsEvent(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) throws RemoteException;

    void onWakeupEvent(String str, int i, int i2, int i3, byte[] bArr, String str2, String str3, int i4, int i5, long j) throws RemoteException;

    public static class Default implements INetdEventListener {
        @Override // android.net.metrics.INetdEventListener
        public void onDnsEvent(int netId, int eventType, int returnCode, int latencyMs, String hostname, String[] ipAddresses, int ipAddressesCount, int uid) throws RemoteException {
        }

        @Override // android.net.metrics.INetdEventListener
        public void onPrivateDnsValidationEvent(int netId, String ipAddress, String hostname, boolean validated) throws RemoteException {
        }

        @Override // android.net.metrics.INetdEventListener
        public void onConnectEvent(int netId, int error, int latencyMs, String ipAddr, int port, int uid) throws RemoteException {
        }

        @Override // android.net.metrics.INetdEventListener
        public void onWakeupEvent(String prefix, int uid, int ethertype, int ipNextHeader, byte[] dstHw, String srcIp, String dstIp, int srcPort, int dstPort, long timestampNs) throws RemoteException {
        }

        @Override // android.net.metrics.INetdEventListener
        public void onTcpSocketStatsEvent(int[] networkIds, int[] sentPackets, int[] lostPackets, int[] rttUs, int[] sentAckDiffMs) throws RemoteException {
        }

        @Override // android.net.metrics.INetdEventListener
        public void onNat64PrefixEvent(int netId, boolean added, String prefixString, int prefixLength) throws RemoteException {
        }

        @Override // android.net.metrics.INetdEventListener
        public int getInterfaceVersion() {
            return 0;
        }

        @Override // android.net.metrics.INetdEventListener
        public String getInterfaceHash() {
            return "";
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements INetdEventListener {
        private static final String DESCRIPTOR = "android$net$metrics$INetdEventListener".replace('$', '.');
        static final int TRANSACTION_getInterfaceHash = 16777214;
        static final int TRANSACTION_getInterfaceVersion = 16777215;
        static final int TRANSACTION_onConnectEvent = 3;
        static final int TRANSACTION_onDnsEvent = 1;
        static final int TRANSACTION_onNat64PrefixEvent = 6;
        static final int TRANSACTION_onPrivateDnsValidationEvent = 2;
        static final int TRANSACTION_onTcpSocketStatsEvent = 5;
        static final int TRANSACTION_onWakeupEvent = 4;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static INetdEventListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof INetdEventListener)) {
                return (INetdEventListener) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            boolean _arg1;
            String descriptor = DESCRIPTOR;
            if (code == 1598968902) {
                reply.writeString(descriptor);
                return true;
            }
            switch (code) {
                case 1:
                    data.enforceInterface(descriptor);
                    int _arg0 = data.readInt();
                    int _arg2 = data.readInt();
                    int _arg3 = data.readInt();
                    int _arg4 = data.readInt();
                    String _arg5 = data.readString();
                    String[] _arg6 = data.createStringArray();
                    int _arg7 = data.readInt();
                    int _arg8 = data.readInt();
                    onDnsEvent(_arg0, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7, _arg8);
                    return true;
                case 2:
                    data.enforceInterface(descriptor);
                    int _arg9 = data.readInt();
                    String _arg10 = data.readString();
                    String _arg11 = data.readString();
                    _arg1 = data.readInt() != 0;
                    onPrivateDnsValidationEvent(_arg9, _arg10, _arg11, _arg1);
                    return true;
                case 3:
                    data.enforceInterface(descriptor);
                    int _arg12 = data.readInt();
                    int _arg13 = data.readInt();
                    int _arg14 = data.readInt();
                    String _arg15 = data.readString();
                    int _arg16 = data.readInt();
                    int _arg17 = data.readInt();
                    onConnectEvent(_arg12, _arg13, _arg14, _arg15, _arg16, _arg17);
                    return true;
                case 4:
                    data.enforceInterface(descriptor);
                    String _arg18 = data.readString();
                    int _arg19 = data.readInt();
                    int _arg20 = data.readInt();
                    int _arg21 = data.readInt();
                    byte[] _arg22 = data.createByteArray();
                    String _arg23 = data.readString();
                    String _arg24 = data.readString();
                    int _arg25 = data.readInt();
                    int _arg26 = data.readInt();
                    long _arg27 = data.readLong();
                    onWakeupEvent(_arg18, _arg19, _arg20, _arg21, _arg22, _arg23, _arg24, _arg25, _arg26, _arg27);
                    return true;
                case 5:
                    data.enforceInterface(descriptor);
                    int[] _arg28 = data.createIntArray();
                    int[] _arg29 = data.createIntArray();
                    int[] _arg30 = data.createIntArray();
                    int[] _arg31 = data.createIntArray();
                    int[] _arg32 = data.createIntArray();
                    onTcpSocketStatsEvent(_arg28, _arg29, _arg30, _arg31, _arg32);
                    return true;
                case 6:
                    data.enforceInterface(descriptor);
                    int _arg33 = data.readInt();
                    _arg1 = data.readInt() != 0;
                    String _arg34 = data.readString();
                    int _arg35 = data.readInt();
                    onNat64PrefixEvent(_arg33, _arg1, _arg34, _arg35);
                    return true;
                default:
                    switch (code) {
                        case TRANSACTION_getInterfaceHash /* 16777214 */:
                            data.enforceInterface(descriptor);
                            reply.writeNoException();
                            reply.writeString(getInterfaceHash());
                            return true;
                        case 16777215:
                            data.enforceInterface(descriptor);
                            reply.writeNoException();
                            reply.writeInt(getInterfaceVersion());
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements INetdEventListener {
            public static INetdEventListener sDefaultImpl;
            private IBinder mRemote;
            private int mCachedVersion = -1;
            private String mCachedHash = "-1";

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.net.metrics.INetdEventListener
            public void onDnsEvent(int netId, int eventType, int returnCode, int latencyMs, String hostname, String[] ipAddresses, int ipAddressesCount, int uid) throws Throwable {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeInt(netId);
                        try {
                            _data.writeInt(eventType);
                            try {
                                _data.writeInt(returnCode);
                                try {
                                    _data.writeInt(latencyMs);
                                    try {
                                        _data.writeString(hostname);
                                        _data.writeStringArray(ipAddresses);
                                        _data.writeInt(ipAddressesCount);
                                        _data.writeInt(uid);
                                        boolean _status = this.mRemote.transact(1, _data, null, 1);
                                        if (!_status && Stub.getDefaultImpl() != null) {
                                            Stub.getDefaultImpl().onDnsEvent(netId, eventType, returnCode, latencyMs, hostname, ipAddresses, ipAddressesCount, uid);
                                            _data.recycle();
                                        } else {
                                            _data.recycle();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }

            @Override // android.net.metrics.INetdEventListener
            public void onPrivateDnsValidationEvent(int netId, String ipAddress, String hostname, boolean validated) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(netId);
                    _data.writeString(ipAddress);
                    _data.writeString(hostname);
                    _data.writeInt(validated ? 1 : 0);
                    boolean _status = this.mRemote.transact(2, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onPrivateDnsValidationEvent(netId, ipAddress, hostname, validated);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.metrics.INetdEventListener
            public void onConnectEvent(int netId, int error, int latencyMs, String ipAddr, int port, int uid) throws Throwable {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeInt(netId);
                        try {
                            _data.writeInt(error);
                            try {
                                _data.writeInt(latencyMs);
                                try {
                                    _data.writeString(ipAddr);
                                    try {
                                        _data.writeInt(port);
                                        try {
                                            _data.writeInt(uid);
                                            try {
                                                boolean _status = this.mRemote.transact(3, _data, null, 1);
                                                if (!_status && Stub.getDefaultImpl() != null) {
                                                    Stub.getDefaultImpl().onConnectEvent(netId, error, latencyMs, ipAddr, port, uid);
                                                    _data.recycle();
                                                } else {
                                                    _data.recycle();
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                _data.recycle();
                                                throw th;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th8) {
                    th = th8;
                }
            }

            @Override // android.net.metrics.INetdEventListener
            public void onWakeupEvent(String prefix, int uid, int ethertype, int ipNextHeader, byte[] dstHw, String srcIp, String dstIp, int srcPort, int dstPort, long timestampNs) throws Throwable {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(prefix);
                        try {
                            _data.writeInt(uid);
                            _data.writeInt(ethertype);
                            _data.writeInt(ipNextHeader);
                            _data.writeByteArray(dstHw);
                            _data.writeString(srcIp);
                            _data.writeString(dstIp);
                            _data.writeInt(srcPort);
                            _data.writeInt(dstPort);
                            _data.writeLong(timestampNs);
                            boolean _status = this.mRemote.transact(4, _data, null, 1);
                            if (!_status && Stub.getDefaultImpl() != null) {
                                Stub.getDefaultImpl().onWakeupEvent(prefix, uid, ethertype, ipNextHeader, dstHw, srcIp, dstIp, srcPort, dstPort, timestampNs);
                                _data.recycle();
                            } else {
                                _data.recycle();
                            }
                        } catch (Throwable th) {
                            th = th;
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }

            @Override // android.net.metrics.INetdEventListener
            public void onTcpSocketStatsEvent(int[] networkIds, int[] sentPackets, int[] lostPackets, int[] rttUs, int[] sentAckDiffMs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(networkIds);
                    _data.writeIntArray(sentPackets);
                    _data.writeIntArray(lostPackets);
                    _data.writeIntArray(rttUs);
                    _data.writeIntArray(sentAckDiffMs);
                    boolean _status = this.mRemote.transact(5, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onTcpSocketStatsEvent(networkIds, sentPackets, lostPackets, rttUs, sentAckDiffMs);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.metrics.INetdEventListener
            public void onNat64PrefixEvent(int netId, boolean added, String prefixString, int prefixLength) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(netId);
                    _data.writeInt(added ? 1 : 0);
                    _data.writeString(prefixString);
                    _data.writeInt(prefixLength);
                    boolean _status = this.mRemote.transact(6, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNat64PrefixEvent(netId, added, prefixString, prefixLength);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.metrics.INetdEventListener
            public int getInterfaceVersion() throws RemoteException {
                if (this.mCachedVersion == -1) {
                    Parcel data = Parcel.obtain();
                    Parcel reply = Parcel.obtain();
                    try {
                        data.writeInterfaceToken(Stub.DESCRIPTOR);
                        boolean _status = this.mRemote.transact(16777215, data, reply, 0);
                        if (!_status && Stub.getDefaultImpl() != null) {
                            return Stub.getDefaultImpl().getInterfaceVersion();
                        }
                        reply.readException();
                        this.mCachedVersion = reply.readInt();
                    } finally {
                        reply.recycle();
                        data.recycle();
                    }
                }
                return this.mCachedVersion;
            }

            @Override // android.net.metrics.INetdEventListener
            public synchronized String getInterfaceHash() throws RemoteException {
                if ("-1".equals(this.mCachedHash)) {
                    Parcel data = Parcel.obtain();
                    Parcel reply = Parcel.obtain();
                    try {
                        data.writeInterfaceToken(Stub.DESCRIPTOR);
                        boolean _status = this.mRemote.transact(Stub.TRANSACTION_getInterfaceHash, data, reply, 0);
                        if (!_status && Stub.getDefaultImpl() != null) {
                            String interfaceHash = Stub.getDefaultImpl().getInterfaceHash();
                            reply.recycle();
                            data.recycle();
                            return interfaceHash;
                        }
                        reply.readException();
                        this.mCachedHash = reply.readString();
                        reply.recycle();
                        data.recycle();
                    } catch (Throwable th) {
                        reply.recycle();
                        data.recycle();
                        throw th;
                    }
                }
                return this.mCachedHash;
            }
        }

        public static boolean setDefaultImpl(INetdEventListener impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static INetdEventListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
