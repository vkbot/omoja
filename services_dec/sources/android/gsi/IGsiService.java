package android.gsi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IGsiService extends IInterface {
    public static final int INSTALL_ERROR_FILE_SYSTEM_CLUTTERED = 3;
    public static final int INSTALL_ERROR_GENERIC = 1;
    public static final int INSTALL_ERROR_NO_SPACE = 2;
    public static final int INSTALL_OK = 0;
    public static final int STATUS_COMPLETE = 2;
    public static final int STATUS_NO_OPERATION = 0;
    public static final int STATUS_WORKING = 1;

    boolean cancelGsiInstall() throws RemoteException;

    int closeInstall() throws RemoteException;

    boolean commitGsiChunkFromAshmem(long j) throws RemoteException;

    boolean commitGsiChunkFromStream(ParcelFileDescriptor parcelFileDescriptor, long j) throws RemoteException;

    int createPartition(String str, long j, boolean z) throws RemoteException;

    boolean disableGsi() throws RemoteException;

    String dumpDeviceMapperDevices() throws RemoteException;

    int enableGsi(boolean z, String str) throws RemoteException;

    void enableGsiAsync(boolean z, String str, IGsiServiceCallback iGsiServiceCallback) throws RemoteException;

    String getActiveDsuSlot() throws RemoteException;

    int getAvbPublicKey(AvbPublicKey avbPublicKey) throws RemoteException;

    GsiProgress getInstallProgress() throws RemoteException;

    List<String> getInstalledDsuSlots() throws RemoteException;

    String getInstalledGsiImageDir() throws RemoteException;

    boolean isGsiEnabled() throws RemoteException;

    boolean isGsiInstallInProgress() throws RemoteException;

    boolean isGsiInstalled() throws RemoteException;

    boolean isGsiRunning() throws RemoteException;

    IImageService openImageService(String str) throws RemoteException;

    int openInstall(String str) throws RemoteException;

    boolean removeGsi() throws RemoteException;

    void removeGsiAsync(IGsiServiceCallback iGsiServiceCallback) throws RemoteException;

    boolean setGsiAshmem(ParcelFileDescriptor parcelFileDescriptor, long j) throws RemoteException;

    int zeroPartition(String str) throws RemoteException;

    public static class Default implements IGsiService {
        @Override // android.gsi.IGsiService
        public boolean commitGsiChunkFromStream(ParcelFileDescriptor stream, long bytes) throws RemoteException {
            return false;
        }

        @Override // android.gsi.IGsiService
        public GsiProgress getInstallProgress() throws RemoteException {
            return null;
        }

        @Override // android.gsi.IGsiService
        public boolean setGsiAshmem(ParcelFileDescriptor stream, long size) throws RemoteException {
            return false;
        }

        @Override // android.gsi.IGsiService
        public boolean commitGsiChunkFromAshmem(long bytes) throws RemoteException {
            return false;
        }

        @Override // android.gsi.IGsiService
        public int enableGsi(boolean oneShot, String dsuSlot) throws RemoteException {
            return 0;
        }

        @Override // android.gsi.IGsiService
        public void enableGsiAsync(boolean oneShot, String dsuSlot, IGsiServiceCallback result) throws RemoteException {
        }

        @Override // android.gsi.IGsiService
        public boolean isGsiEnabled() throws RemoteException {
            return false;
        }

        @Override // android.gsi.IGsiService
        public boolean cancelGsiInstall() throws RemoteException {
            return false;
        }

        @Override // android.gsi.IGsiService
        public boolean isGsiInstallInProgress() throws RemoteException {
            return false;
        }

        @Override // android.gsi.IGsiService
        public boolean removeGsi() throws RemoteException {
            return false;
        }

        @Override // android.gsi.IGsiService
        public void removeGsiAsync(IGsiServiceCallback result) throws RemoteException {
        }

        @Override // android.gsi.IGsiService
        public boolean disableGsi() throws RemoteException {
            return false;
        }

        @Override // android.gsi.IGsiService
        public boolean isGsiInstalled() throws RemoteException {
            return false;
        }

        @Override // android.gsi.IGsiService
        public boolean isGsiRunning() throws RemoteException {
            return false;
        }

        @Override // android.gsi.IGsiService
        public String getActiveDsuSlot() throws RemoteException {
            return null;
        }

        @Override // android.gsi.IGsiService
        public String getInstalledGsiImageDir() throws RemoteException {
            return null;
        }

        @Override // android.gsi.IGsiService
        public List<String> getInstalledDsuSlots() throws RemoteException {
            return null;
        }

        @Override // android.gsi.IGsiService
        public int openInstall(String installDir) throws RemoteException {
            return 0;
        }

        @Override // android.gsi.IGsiService
        public int closeInstall() throws RemoteException {
            return 0;
        }

        @Override // android.gsi.IGsiService
        public int createPartition(String name, long size, boolean readOnly) throws RemoteException {
            return 0;
        }

        @Override // android.gsi.IGsiService
        public int zeroPartition(String name) throws RemoteException {
            return 0;
        }

        @Override // android.gsi.IGsiService
        public IImageService openImageService(String prefix) throws RemoteException {
            return null;
        }

        @Override // android.gsi.IGsiService
        public String dumpDeviceMapperDevices() throws RemoteException {
            return null;
        }

        @Override // android.gsi.IGsiService
        public int getAvbPublicKey(AvbPublicKey dst) throws RemoteException {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IGsiService {
        private static final String DESCRIPTOR = "android.gsi.IGsiService";
        static final int TRANSACTION_cancelGsiInstall = 8;
        static final int TRANSACTION_closeInstall = 19;
        static final int TRANSACTION_commitGsiChunkFromAshmem = 4;
        static final int TRANSACTION_commitGsiChunkFromStream = 1;
        static final int TRANSACTION_createPartition = 20;
        static final int TRANSACTION_disableGsi = 12;
        static final int TRANSACTION_dumpDeviceMapperDevices = 23;
        static final int TRANSACTION_enableGsi = 5;
        static final int TRANSACTION_enableGsiAsync = 6;
        static final int TRANSACTION_getActiveDsuSlot = 15;
        static final int TRANSACTION_getAvbPublicKey = 24;
        static final int TRANSACTION_getInstallProgress = 2;
        static final int TRANSACTION_getInstalledDsuSlots = 17;
        static final int TRANSACTION_getInstalledGsiImageDir = 16;
        static final int TRANSACTION_isGsiEnabled = 7;
        static final int TRANSACTION_isGsiInstallInProgress = 9;
        static final int TRANSACTION_isGsiInstalled = 13;
        static final int TRANSACTION_isGsiRunning = 14;
        static final int TRANSACTION_openImageService = 22;
        static final int TRANSACTION_openInstall = 18;
        static final int TRANSACTION_removeGsi = 10;
        static final int TRANSACTION_removeGsiAsync = 11;
        static final int TRANSACTION_setGsiAshmem = 3;
        static final int TRANSACTION_zeroPartition = 21;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IGsiService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IGsiService)) {
                return (IGsiService) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            ParcelFileDescriptor parcelFileDescriptor;
            ParcelFileDescriptor parcelFileDescriptor2;
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        parcelFileDescriptor = (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcel);
                    } else {
                        parcelFileDescriptor = null;
                    }
                    boolean zCommitGsiChunkFromStream = commitGsiChunkFromStream(parcelFileDescriptor, parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zCommitGsiChunkFromStream ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    GsiProgress installProgress = getInstallProgress();
                    parcel2.writeNoException();
                    if (installProgress != null) {
                        parcel2.writeInt(1);
                        installProgress.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        parcelFileDescriptor2 = (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcel);
                    } else {
                        parcelFileDescriptor2 = null;
                    }
                    boolean gsiAshmem = setGsiAshmem(parcelFileDescriptor2, parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(gsiAshmem ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCommitGsiChunkFromAshmem = commitGsiChunkFromAshmem(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zCommitGsiChunkFromAshmem ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iEnableGsi = enableGsi(parcel.readInt() != 0, parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iEnableGsi);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableGsiAsync(parcel.readInt() != 0, parcel.readString(), IGsiServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsGsiEnabled = isGsiEnabled();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsGsiEnabled ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCancelGsiInstall = cancelGsiInstall();
                    parcel2.writeNoException();
                    parcel2.writeInt(zCancelGsiInstall ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsGsiInstallInProgress = isGsiInstallInProgress();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsGsiInstallInProgress ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemoveGsi = removeGsi();
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemoveGsi ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeGsiAsync(IGsiServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDisableGsi = disableGsi();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDisableGsi ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsGsiInstalled = isGsiInstalled();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsGsiInstalled ? 1 : 0);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsGsiRunning = isGsiRunning();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsGsiRunning ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    String activeDsuSlot = getActiveDsuSlot();
                    parcel2.writeNoException();
                    parcel2.writeString(activeDsuSlot);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    String installedGsiImageDir = getInstalledGsiImageDir();
                    parcel2.writeNoException();
                    parcel2.writeString(installedGsiImageDir);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> installedDsuSlots = getInstalledDsuSlots();
                    parcel2.writeNoException();
                    parcel2.writeStringList(installedDsuSlots);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iOpenInstall = openInstall(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iOpenInstall);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCloseInstall = closeInstall();
                    parcel2.writeNoException();
                    parcel2.writeInt(iCloseInstall);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCreatePartition = createPartition(parcel.readString(), parcel.readLong(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCreatePartition);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iZeroPartition = zeroPartition(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iZeroPartition);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    IImageService iImageServiceOpenImageService = openImageService(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iImageServiceOpenImageService != null ? iImageServiceOpenImageService.asBinder() : null);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strDumpDeviceMapperDevices = dumpDeviceMapperDevices();
                    parcel2.writeNoException();
                    parcel2.writeString(strDumpDeviceMapperDevices);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    AvbPublicKey avbPublicKey = new AvbPublicKey();
                    int avbPublicKey2 = getAvbPublicKey(avbPublicKey);
                    parcel2.writeNoException();
                    parcel2.writeInt(avbPublicKey2);
                    parcel2.writeInt(1);
                    avbPublicKey.writeToParcel(parcel2, 1);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IGsiService {
            public static IGsiService sDefaultImpl;
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

            @Override // android.gsi.IGsiService
            public boolean commitGsiChunkFromStream(ParcelFileDescriptor stream, long bytes) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (stream != null) {
                        _data.writeInt(1);
                        stream.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeLong(bytes);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().commitGsiChunkFromStream(stream, bytes);
                    }
                    _reply.readException();
                    boolean _result = _reply.readInt() != 0;
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public GsiProgress getInstallProgress() throws RemoteException {
                GsiProgress _result;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(2, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getInstallProgress();
                    }
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = GsiProgress.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public boolean setGsiAshmem(ParcelFileDescriptor stream, long size) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (stream != null) {
                        _data.writeInt(1);
                        stream.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeLong(size);
                    boolean _status = this.mRemote.transact(3, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setGsiAshmem(stream, size);
                    }
                    _reply.readException();
                    boolean _result = _reply.readInt() != 0;
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public boolean commitGsiChunkFromAshmem(long bytes) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeLong(bytes);
                    boolean _status = this.mRemote.transact(4, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().commitGsiChunkFromAshmem(bytes);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public int enableGsi(boolean oneShot, String dsuSlot) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(oneShot ? 1 : 0);
                    _data.writeString(dsuSlot);
                    boolean _status = this.mRemote.transact(5, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().enableGsi(oneShot, dsuSlot);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public void enableGsiAsync(boolean oneShot, String dsuSlot, IGsiServiceCallback result) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(oneShot ? 1 : 0);
                    _data.writeString(dsuSlot);
                    _data.writeStrongBinder(result != null ? result.asBinder() : null);
                    boolean _status = this.mRemote.transact(6, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().enableGsiAsync(oneShot, dsuSlot, result);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public boolean isGsiEnabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(7, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isGsiEnabled();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public boolean cancelGsiInstall() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(8, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().cancelGsiInstall();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public boolean isGsiInstallInProgress() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(9, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isGsiInstallInProgress();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public boolean removeGsi() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(10, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().removeGsi();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public void removeGsiAsync(IGsiServiceCallback result) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(result != null ? result.asBinder() : null);
                    boolean _status = this.mRemote.transact(11, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().removeGsiAsync(result);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public boolean disableGsi() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(12, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().disableGsi();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public boolean isGsiInstalled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(13, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isGsiInstalled();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public boolean isGsiRunning() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(14, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isGsiRunning();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public String getActiveDsuSlot() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(15, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getActiveDsuSlot();
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public String getInstalledGsiImageDir() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(16, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getInstalledGsiImageDir();
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public List<String> getInstalledDsuSlots() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(17, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getInstalledDsuSlots();
                    }
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public int openInstall(String installDir) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(installDir);
                    boolean _status = this.mRemote.transact(18, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().openInstall(installDir);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public int closeInstall() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(19, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().closeInstall();
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public int createPartition(String name, long size, boolean readOnly) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeLong(size);
                    _data.writeInt(readOnly ? 1 : 0);
                    boolean _status = this.mRemote.transact(20, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createPartition(name, size, readOnly);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public int zeroPartition(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    boolean _status = this.mRemote.transact(21, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().zeroPartition(name);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public IImageService openImageService(String prefix) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(prefix);
                    boolean _status = this.mRemote.transact(22, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().openImageService(prefix);
                    }
                    _reply.readException();
                    IImageService _result = IImageService.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public String dumpDeviceMapperDevices() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(23, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().dumpDeviceMapperDevices();
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IGsiService
            public int getAvbPublicKey(AvbPublicKey dst) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(24, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAvbPublicKey(dst);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    if (_reply.readInt() != 0) {
                        dst.readFromParcel(_reply);
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IGsiService impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IGsiService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
