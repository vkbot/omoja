package android.os;

/* JADX INFO: loaded from: classes.dex */
public interface IVoldListener extends IInterface {
    void onDiskCreated(String str, int i) throws RemoteException;

    void onDiskDestroyed(String str) throws RemoteException;

    void onDiskMetadataChanged(String str, long j, String str2, String str3) throws RemoteException;

    void onDiskScanned(String str) throws RemoteException;

    void onVolumeCreated(String str, int i, String str2, String str3, int i2) throws RemoteException;

    void onVolumeDestroyed(String str) throws RemoteException;

    void onVolumeInternalPathChanged(String str, String str2) throws RemoteException;

    void onVolumeMetadataChanged(String str, String str2, String str3, String str4) throws RemoteException;

    void onVolumePathChanged(String str, String str2) throws RemoteException;

    void onVolumeStateChanged(String str, int i) throws RemoteException;

    public static class Default implements IVoldListener {
        @Override // android.os.IVoldListener
        public void onDiskCreated(String diskId, int flags) throws RemoteException {
        }

        @Override // android.os.IVoldListener
        public void onDiskScanned(String diskId) throws RemoteException {
        }

        @Override // android.os.IVoldListener
        public void onDiskMetadataChanged(String diskId, long sizeBytes, String label, String sysPath) throws RemoteException {
        }

        @Override // android.os.IVoldListener
        public void onDiskDestroyed(String diskId) throws RemoteException {
        }

        @Override // android.os.IVoldListener
        public void onVolumeCreated(String volId, int type, String diskId, String partGuid, int userId) throws RemoteException {
        }

        @Override // android.os.IVoldListener
        public void onVolumeStateChanged(String volId, int state) throws RemoteException {
        }

        @Override // android.os.IVoldListener
        public void onVolumeMetadataChanged(String volId, String fsType, String fsUuid, String fsLabel) throws RemoteException {
        }

        @Override // android.os.IVoldListener
        public void onVolumePathChanged(String volId, String path) throws RemoteException {
        }

        @Override // android.os.IVoldListener
        public void onVolumeInternalPathChanged(String volId, String internalPath) throws RemoteException {
        }

        @Override // android.os.IVoldListener
        public void onVolumeDestroyed(String volId) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IVoldListener {
        private static final String DESCRIPTOR = "android.os.IVoldListener";
        static final int TRANSACTION_onDiskCreated = 1;
        static final int TRANSACTION_onDiskDestroyed = 4;
        static final int TRANSACTION_onDiskMetadataChanged = 3;
        static final int TRANSACTION_onDiskScanned = 2;
        static final int TRANSACTION_onVolumeCreated = 5;
        static final int TRANSACTION_onVolumeDestroyed = 10;
        static final int TRANSACTION_onVolumeInternalPathChanged = 9;
        static final int TRANSACTION_onVolumeMetadataChanged = 7;
        static final int TRANSACTION_onVolumePathChanged = 8;
        static final int TRANSACTION_onVolumeStateChanged = 6;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVoldListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IVoldListener)) {
                return (IVoldListener) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg0 = data.readString();
                    int _arg1 = data.readInt();
                    onDiskCreated(_arg0, _arg1);
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg2 = data.readString();
                    onDiskScanned(_arg2);
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg3 = data.readString();
                    long _arg4 = data.readLong();
                    String _arg5 = data.readString();
                    String _arg6 = data.readString();
                    onDiskMetadataChanged(_arg3, _arg4, _arg5, _arg6);
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg7 = data.readString();
                    onDiskDestroyed(_arg7);
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg8 = data.readString();
                    int _arg9 = data.readInt();
                    String _arg10 = data.readString();
                    String _arg11 = data.readString();
                    int _arg12 = data.readInt();
                    onVolumeCreated(_arg8, _arg9, _arg10, _arg11, _arg12);
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg13 = data.readString();
                    int _arg14 = data.readInt();
                    onVolumeStateChanged(_arg13, _arg14);
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg15 = data.readString();
                    String _arg16 = data.readString();
                    String _arg17 = data.readString();
                    String _arg18 = data.readString();
                    onVolumeMetadataChanged(_arg15, _arg16, _arg17, _arg18);
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg19 = data.readString();
                    String _arg20 = data.readString();
                    onVolumePathChanged(_arg19, _arg20);
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg21 = data.readString();
                    String _arg22 = data.readString();
                    onVolumeInternalPathChanged(_arg21, _arg22);
                    return true;
                case 10:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg23 = data.readString();
                    onVolumeDestroyed(_arg23);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements IVoldListener {
            public static IVoldListener sDefaultImpl;
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

            @Override // android.os.IVoldListener
            public void onDiskCreated(String diskId, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(diskId);
                    _data.writeInt(flags);
                    boolean _status = this.mRemote.transact(1, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDiskCreated(diskId, flags);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.os.IVoldListener
            public void onDiskScanned(String diskId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(diskId);
                    boolean _status = this.mRemote.transact(2, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDiskScanned(diskId);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.os.IVoldListener
            public void onDiskMetadataChanged(String diskId, long sizeBytes, String label, String sysPath) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(diskId);
                    _data.writeLong(sizeBytes);
                    _data.writeString(label);
                    _data.writeString(sysPath);
                    boolean _status = this.mRemote.transact(3, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDiskMetadataChanged(diskId, sizeBytes, label, sysPath);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.os.IVoldListener
            public void onDiskDestroyed(String diskId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(diskId);
                    boolean _status = this.mRemote.transact(4, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDiskDestroyed(diskId);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.os.IVoldListener
            public void onVolumeCreated(String volId, int type, String diskId, String partGuid, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeInt(type);
                    _data.writeString(diskId);
                    _data.writeString(partGuid);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(5, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onVolumeCreated(volId, type, diskId, partGuid, userId);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.os.IVoldListener
            public void onVolumeStateChanged(String volId, int state) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeInt(state);
                    boolean _status = this.mRemote.transact(6, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onVolumeStateChanged(volId, state);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.os.IVoldListener
            public void onVolumeMetadataChanged(String volId, String fsType, String fsUuid, String fsLabel) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeString(fsType);
                    _data.writeString(fsUuid);
                    _data.writeString(fsLabel);
                    boolean _status = this.mRemote.transact(7, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onVolumeMetadataChanged(volId, fsType, fsUuid, fsLabel);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.os.IVoldListener
            public void onVolumePathChanged(String volId, String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeString(path);
                    boolean _status = this.mRemote.transact(8, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onVolumePathChanged(volId, path);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.os.IVoldListener
            public void onVolumeInternalPathChanged(String volId, String internalPath) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeString(internalPath);
                    boolean _status = this.mRemote.transact(9, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onVolumeInternalPathChanged(volId, internalPath);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.os.IVoldListener
            public void onVolumeDestroyed(String volId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    boolean _status = this.mRemote.transact(10, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onVolumeDestroyed(volId);
                    }
                } finally {
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVoldListener impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IVoldListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
