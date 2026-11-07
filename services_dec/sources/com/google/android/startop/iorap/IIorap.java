package com.google.android.startop.iorap;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IIorap extends IInterface {
    void onAppIntentEvent(RequestId requestId, AppIntentEvent appIntentEvent) throws RemoteException;

    void onAppLaunchEvent(RequestId requestId, AppLaunchEvent appLaunchEvent) throws RemoteException;

    void onDexOptEvent(RequestId requestId, DexOptEvent dexOptEvent) throws RemoteException;

    void onJobScheduledEvent(RequestId requestId, JobScheduledEvent jobScheduledEvent) throws RemoteException;

    void onPackageEvent(RequestId requestId, PackageEvent packageEvent) throws RemoteException;

    void onSystemServiceEvent(RequestId requestId, SystemServiceEvent systemServiceEvent) throws RemoteException;

    void onSystemServiceUserEvent(RequestId requestId, SystemServiceUserEvent systemServiceUserEvent) throws RemoteException;

    void setTaskListener(ITaskListener iTaskListener) throws RemoteException;

    public static class Default implements IIorap {
        @Override // com.google.android.startop.iorap.IIorap
        public void setTaskListener(ITaskListener listener) throws RemoteException {
        }

        @Override // com.google.android.startop.iorap.IIorap
        public void onAppLaunchEvent(RequestId request, AppLaunchEvent event) throws RemoteException {
        }

        @Override // com.google.android.startop.iorap.IIorap
        public void onDexOptEvent(RequestId request, DexOptEvent event) throws RemoteException {
        }

        @Override // com.google.android.startop.iorap.IIorap
        public void onJobScheduledEvent(RequestId request, JobScheduledEvent event) throws RemoteException {
        }

        @Override // com.google.android.startop.iorap.IIorap
        public void onPackageEvent(RequestId request, PackageEvent event) throws RemoteException {
        }

        @Override // com.google.android.startop.iorap.IIorap
        public void onAppIntentEvent(RequestId request, AppIntentEvent event) throws RemoteException {
        }

        @Override // com.google.android.startop.iorap.IIorap
        public void onSystemServiceEvent(RequestId request, SystemServiceEvent event) throws RemoteException {
        }

        @Override // com.google.android.startop.iorap.IIorap
        public void onSystemServiceUserEvent(RequestId request, SystemServiceUserEvent event) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IIorap {
        private static final String DESCRIPTOR = "com.google.android.startop.iorap.IIorap";
        static final int TRANSACTION_onAppIntentEvent = 6;
        static final int TRANSACTION_onAppLaunchEvent = 2;
        static final int TRANSACTION_onDexOptEvent = 3;
        static final int TRANSACTION_onJobScheduledEvent = 4;
        static final int TRANSACTION_onPackageEvent = 5;
        static final int TRANSACTION_onSystemServiceEvent = 7;
        static final int TRANSACTION_onSystemServiceUserEvent = 8;
        static final int TRANSACTION_setTaskListener = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIorap asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IIorap)) {
                return (IIorap) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            RequestId _arg0;
            AppLaunchEvent _arg1;
            RequestId _arg2;
            DexOptEvent _arg3;
            RequestId _arg4;
            JobScheduledEvent _arg5;
            RequestId _arg6;
            PackageEvent _arg7;
            RequestId _arg8;
            AppIntentEvent _arg9;
            RequestId _arg10;
            SystemServiceEvent _arg11;
            RequestId _arg12;
            SystemServiceUserEvent _arg13;
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    ITaskListener _arg14 = ITaskListener.Stub.asInterface(data.readStrongBinder());
                    setTaskListener(_arg14);
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    if (data.readInt() != 0) {
                        _arg0 = RequestId.CREATOR.createFromParcel(data);
                    } else {
                        _arg0 = null;
                    }
                    if (data.readInt() != 0) {
                        _arg1 = AppLaunchEvent.CREATOR.createFromParcel(data);
                    } else {
                        _arg1 = null;
                    }
                    onAppLaunchEvent(_arg0, _arg1);
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    if (data.readInt() != 0) {
                        _arg2 = RequestId.CREATOR.createFromParcel(data);
                    } else {
                        _arg2 = null;
                    }
                    if (data.readInt() != 0) {
                        _arg3 = DexOptEvent.CREATOR.createFromParcel(data);
                    } else {
                        _arg3 = null;
                    }
                    onDexOptEvent(_arg2, _arg3);
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    if (data.readInt() != 0) {
                        _arg4 = RequestId.CREATOR.createFromParcel(data);
                    } else {
                        _arg4 = null;
                    }
                    if (data.readInt() != 0) {
                        _arg5 = JobScheduledEvent.CREATOR.createFromParcel(data);
                    } else {
                        _arg5 = null;
                    }
                    onJobScheduledEvent(_arg4, _arg5);
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    if (data.readInt() != 0) {
                        _arg6 = RequestId.CREATOR.createFromParcel(data);
                    } else {
                        _arg6 = null;
                    }
                    if (data.readInt() != 0) {
                        _arg7 = PackageEvent.CREATOR.createFromParcel(data);
                    } else {
                        _arg7 = null;
                    }
                    onPackageEvent(_arg6, _arg7);
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    if (data.readInt() != 0) {
                        _arg8 = RequestId.CREATOR.createFromParcel(data);
                    } else {
                        _arg8 = null;
                    }
                    if (data.readInt() != 0) {
                        _arg9 = AppIntentEvent.CREATOR.createFromParcel(data);
                    } else {
                        _arg9 = null;
                    }
                    onAppIntentEvent(_arg8, _arg9);
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    if (data.readInt() != 0) {
                        _arg10 = RequestId.CREATOR.createFromParcel(data);
                    } else {
                        _arg10 = null;
                    }
                    if (data.readInt() != 0) {
                        _arg11 = SystemServiceEvent.CREATOR.createFromParcel(data);
                    } else {
                        _arg11 = null;
                    }
                    onSystemServiceEvent(_arg10, _arg11);
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    if (data.readInt() != 0) {
                        _arg12 = RequestId.CREATOR.createFromParcel(data);
                    } else {
                        _arg12 = null;
                    }
                    if (data.readInt() != 0) {
                        _arg13 = SystemServiceUserEvent.CREATOR.createFromParcel(data);
                    } else {
                        _arg13 = null;
                    }
                    onSystemServiceUserEvent(_arg12, _arg13);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements IIorap {
            public static IIorap sDefaultImpl;
            private IBinder mRemote;

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

            @Override // com.google.android.startop.iorap.IIorap
            public void setTaskListener(ITaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    boolean _status = this.mRemote.transact(1, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setTaskListener(listener);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.google.android.startop.iorap.IIorap
            public void onAppLaunchEvent(RequestId request, AppLaunchEvent event) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (request != null) {
                        _data.writeInt(1);
                        request.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    if (event != null) {
                        _data.writeInt(1);
                        event.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(2, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAppLaunchEvent(request, event);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.google.android.startop.iorap.IIorap
            public void onDexOptEvent(RequestId request, DexOptEvent event) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (request != null) {
                        _data.writeInt(1);
                        request.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    if (event != null) {
                        _data.writeInt(1);
                        event.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(3, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDexOptEvent(request, event);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.google.android.startop.iorap.IIorap
            public void onJobScheduledEvent(RequestId request, JobScheduledEvent event) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (request != null) {
                        _data.writeInt(1);
                        request.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    if (event != null) {
                        _data.writeInt(1);
                        event.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(4, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onJobScheduledEvent(request, event);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.google.android.startop.iorap.IIorap
            public void onPackageEvent(RequestId request, PackageEvent event) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (request != null) {
                        _data.writeInt(1);
                        request.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    if (event != null) {
                        _data.writeInt(1);
                        event.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(5, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onPackageEvent(request, event);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.google.android.startop.iorap.IIorap
            public void onAppIntentEvent(RequestId request, AppIntentEvent event) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (request != null) {
                        _data.writeInt(1);
                        request.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    if (event != null) {
                        _data.writeInt(1);
                        event.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(6, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAppIntentEvent(request, event);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.google.android.startop.iorap.IIorap
            public void onSystemServiceEvent(RequestId request, SystemServiceEvent event) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (request != null) {
                        _data.writeInt(1);
                        request.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    if (event != null) {
                        _data.writeInt(1);
                        event.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(7, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSystemServiceEvent(request, event);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.google.android.startop.iorap.IIorap
            public void onSystemServiceUserEvent(RequestId request, SystemServiceUserEvent event) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (request != null) {
                        _data.writeInt(1);
                        request.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    if (event != null) {
                        _data.writeInt(1);
                        event.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    boolean _status = this.mRemote.transact(8, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSystemServiceUserEvent(request, event);
                    }
                } finally {
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IIorap impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IIorap getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
