package android.net;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface INetworkMonitorCallbacks extends IInterface {
    public static final String HASH = "02cd6fd07d5c04eca0c35a350f7b0be576242883";
    public static final int VERSION = 7;

    String getInterfaceHash() throws RemoteException;

    int getInterfaceVersion() throws RemoteException;

    void hideProvisioningNotification() throws RemoteException;

    void notifyCaptivePortalDataChanged(CaptivePortalData captivePortalData) throws RemoteException;

    void notifyDataStallSuspected(DataStallReportParcelable dataStallReportParcelable) throws RemoteException;

    void notifyNetworkTested(int i, String str) throws RemoteException;

    void notifyNetworkTestedWithExtras(NetworkTestResultParcelable networkTestResultParcelable) throws RemoteException;

    void notifyPrivateDnsConfigResolved(PrivateDnsConfigParcel privateDnsConfigParcel) throws RemoteException;

    void notifyProbeStatusChanged(int i, int i2) throws RemoteException;

    void onNetworkMonitorCreated(INetworkMonitor iNetworkMonitor) throws RemoteException;

    void showProvisioningNotification(String str, String str2) throws RemoteException;

    public static class Default implements INetworkMonitorCallbacks {
        @Override // android.net.INetworkMonitorCallbacks
        public void onNetworkMonitorCreated(INetworkMonitor networkMonitor) throws RemoteException {
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyNetworkTested(int testResult, String redirectUrl) throws RemoteException {
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyPrivateDnsConfigResolved(PrivateDnsConfigParcel config) throws RemoteException {
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void showProvisioningNotification(String action, String packageName) throws RemoteException {
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void hideProvisioningNotification() throws RemoteException {
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyProbeStatusChanged(int probesCompleted, int probesSucceeded) throws RemoteException {
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyNetworkTestedWithExtras(NetworkTestResultParcelable result) throws RemoteException {
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyDataStallSuspected(DataStallReportParcelable report) throws RemoteException {
        }

        @Override // android.net.INetworkMonitorCallbacks
        public void notifyCaptivePortalDataChanged(CaptivePortalData data) throws RemoteException {
        }

        @Override // android.net.INetworkMonitorCallbacks
        public int getInterfaceVersion() {
            return 0;
        }

        @Override // android.net.INetworkMonitorCallbacks
        public String getInterfaceHash() {
            return "";
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements INetworkMonitorCallbacks {
        private static final String DESCRIPTOR = "android$net$INetworkMonitorCallbacks".replace('$', '.');
        static final int TRANSACTION_getInterfaceHash = 16777214;
        static final int TRANSACTION_getInterfaceVersion = 16777215;
        static final int TRANSACTION_hideProvisioningNotification = 5;
        static final int TRANSACTION_notifyCaptivePortalDataChanged = 9;
        static final int TRANSACTION_notifyDataStallSuspected = 8;
        static final int TRANSACTION_notifyNetworkTested = 2;
        static final int TRANSACTION_notifyNetworkTestedWithExtras = 7;
        static final int TRANSACTION_notifyPrivateDnsConfigResolved = 3;
        static final int TRANSACTION_notifyProbeStatusChanged = 6;
        static final int TRANSACTION_onNetworkMonitorCreated = 1;
        static final int TRANSACTION_showProvisioningNotification = 4;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static INetworkMonitorCallbacks asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof INetworkMonitorCallbacks)) {
                return (INetworkMonitorCallbacks) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            PrivateDnsConfigParcel _arg0;
            NetworkTestResultParcelable _arg1;
            DataStallReportParcelable _arg2;
            CaptivePortalData _arg3;
            String descriptor = DESCRIPTOR;
            if (code == 1598968902) {
                reply.writeString(descriptor);
                return true;
            }
            switch (code) {
                case 1:
                    data.enforceInterface(descriptor);
                    INetworkMonitor _arg4 = INetworkMonitor.Stub.asInterface(data.readStrongBinder());
                    onNetworkMonitorCreated(_arg4);
                    return true;
                case 2:
                    data.enforceInterface(descriptor);
                    int _arg5 = data.readInt();
                    String _arg6 = data.readString();
                    notifyNetworkTested(_arg5, _arg6);
                    return true;
                case 3:
                    data.enforceInterface(descriptor);
                    if (data.readInt() != 0) {
                        _arg0 = PrivateDnsConfigParcel.CREATOR.createFromParcel(data);
                    } else {
                        _arg0 = null;
                    }
                    notifyPrivateDnsConfigResolved(_arg0);
                    return true;
                case 4:
                    data.enforceInterface(descriptor);
                    String _arg7 = data.readString();
                    String _arg8 = data.readString();
                    showProvisioningNotification(_arg7, _arg8);
                    return true;
                case 5:
                    data.enforceInterface(descriptor);
                    hideProvisioningNotification();
                    return true;
                case 6:
                    data.enforceInterface(descriptor);
                    int _arg9 = data.readInt();
                    int _arg10 = data.readInt();
                    notifyProbeStatusChanged(_arg9, _arg10);
                    return true;
                case 7:
                    data.enforceInterface(descriptor);
                    if (data.readInt() != 0) {
                        _arg1 = NetworkTestResultParcelable.CREATOR.createFromParcel(data);
                    } else {
                        _arg1 = null;
                    }
                    notifyNetworkTestedWithExtras(_arg1);
                    return true;
                case 8:
                    data.enforceInterface(descriptor);
                    if (data.readInt() != 0) {
                        _arg2 = DataStallReportParcelable.CREATOR.createFromParcel(data);
                    } else {
                        _arg2 = null;
                    }
                    notifyDataStallSuspected(_arg2);
                    return true;
                case 9:
                    data.enforceInterface(descriptor);
                    if (data.readInt() != 0) {
                        _arg3 = (CaptivePortalData) CaptivePortalData.CREATOR.createFromParcel(data);
                    } else {
                        _arg3 = null;
                    }
                    notifyCaptivePortalDataChanged(_arg3);
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

        private static class Proxy implements INetworkMonitorCallbacks {
            public static INetworkMonitorCallbacks sDefaultImpl;
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

            @Override // android.net.INetworkMonitorCallbacks
            public void onNetworkMonitorCreated(INetworkMonitor networkMonitor) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(networkMonitor != null ? networkMonitor.asBinder() : null);
                    boolean _status = this.mRemote.transact(1, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNetworkMonitorCreated(networkMonitor);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.INetworkMonitorCallbacks
            public void notifyNetworkTested(int testResult, String redirectUrl) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(testResult);
                    _data.writeString(redirectUrl);
                    boolean _status = this.mRemote.transact(2, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyNetworkTested(testResult, redirectUrl);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.INetworkMonitorCallbacks
            public void notifyPrivateDnsConfigResolved(PrivateDnsConfigParcel config) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (config != null) {
                        _data.writeInt(1);
                        config.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(3, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyPrivateDnsConfigResolved(config);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.INetworkMonitorCallbacks
            public void showProvisioningNotification(String action, String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(action);
                    _data.writeString(packageName);
                    boolean _status = this.mRemote.transact(4, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().showProvisioningNotification(action, packageName);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.INetworkMonitorCallbacks
            public void hideProvisioningNotification() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(5, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().hideProvisioningNotification();
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.INetworkMonitorCallbacks
            public void notifyProbeStatusChanged(int probesCompleted, int probesSucceeded) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(probesCompleted);
                    _data.writeInt(probesSucceeded);
                    boolean _status = this.mRemote.transact(6, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyProbeStatusChanged(probesCompleted, probesSucceeded);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.INetworkMonitorCallbacks
            public void notifyNetworkTestedWithExtras(NetworkTestResultParcelable result) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (result != null) {
                        _data.writeInt(1);
                        result.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(7, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyNetworkTestedWithExtras(result);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.INetworkMonitorCallbacks
            public void notifyDataStallSuspected(DataStallReportParcelable report) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (report != null) {
                        _data.writeInt(1);
                        report.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(8, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyDataStallSuspected(report);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.INetworkMonitorCallbacks
            public void notifyCaptivePortalDataChanged(CaptivePortalData data) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (data != null) {
                        _data.writeInt(1);
                        data.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(9, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().notifyCaptivePortalDataChanged(data);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.INetworkMonitorCallbacks
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

            @Override // android.net.INetworkMonitorCallbacks
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

        public static boolean setDefaultImpl(INetworkMonitorCallbacks impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static INetworkMonitorCallbacks getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
