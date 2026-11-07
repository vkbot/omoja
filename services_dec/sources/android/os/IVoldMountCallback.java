package android.os;

import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public interface IVoldMountCallback extends IInterface {
    boolean onVolumeChecking(FileDescriptor fileDescriptor, String str, String str2) throws RemoteException;

    public static class Default implements IVoldMountCallback {
        @Override // android.os.IVoldMountCallback
        public boolean onVolumeChecking(FileDescriptor fuseFd, String path, String internalPath) throws RemoteException {
            return false;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IVoldMountCallback {
        private static final String DESCRIPTOR = "android.os.IVoldMountCallback";
        static final int TRANSACTION_onVolumeChecking = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVoldMountCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IVoldMountCallback)) {
                return (IVoldMountCallback) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zOnVolumeChecking = onVolumeChecking(parcel.readRawFileDescriptor(), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(zOnVolumeChecking ? 1 : 0);
            return true;
        }

        private static class Proxy implements IVoldMountCallback {
            public static IVoldMountCallback sDefaultImpl;
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

            @Override // android.os.IVoldMountCallback
            public boolean onVolumeChecking(FileDescriptor fuseFd, String path, String internalPath) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeRawFileDescriptor(fuseFd);
                    _data.writeString(path);
                    _data.writeString(internalPath);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onVolumeChecking(fuseFd, path, internalPath);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVoldMountCallback impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IVoldMountCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
