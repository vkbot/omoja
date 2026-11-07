package android.gsi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IImageService extends IInterface {
    public static final int CREATE_IMAGE_DEFAULT = 0;
    public static final int CREATE_IMAGE_READONLY = 1;
    public static final int CREATE_IMAGE_ZERO_FILL = 2;
    public static final int IMAGE_ERROR = 1;
    public static final int IMAGE_OK = 0;

    boolean backingImageExists(String str) throws RemoteException;

    void createBackingImage(String str, long j, int i, IProgressCallback iProgressCallback) throws RemoteException;

    void deleteBackingImage(String str) throws RemoteException;

    List<String> getAllBackingImages() throws RemoteException;

    int getAvbPublicKey(String str, AvbPublicKey avbPublicKey) throws RemoteException;

    String getMappedImageDevice(String str) throws RemoteException;

    boolean isImageMapped(String str) throws RemoteException;

    void mapImageDevice(String str, int i, MappedImage mappedImage) throws RemoteException;

    void removeAllImages() throws RemoteException;

    void removeDisabledImages() throws RemoteException;

    void unmapImageDevice(String str) throws RemoteException;

    void zeroFillNewImage(String str, long j) throws RemoteException;

    public static class Default implements IImageService {
        @Override // android.gsi.IImageService
        public void createBackingImage(String name, long size, int flags, IProgressCallback on_progress) throws RemoteException {
        }

        @Override // android.gsi.IImageService
        public void deleteBackingImage(String name) throws RemoteException {
        }

        @Override // android.gsi.IImageService
        public void mapImageDevice(String name, int timeout_ms, MappedImage mapping) throws RemoteException {
        }

        @Override // android.gsi.IImageService
        public void unmapImageDevice(String name) throws RemoteException {
        }

        @Override // android.gsi.IImageService
        public boolean backingImageExists(String name) throws RemoteException {
            return false;
        }

        @Override // android.gsi.IImageService
        public boolean isImageMapped(String name) throws RemoteException {
            return false;
        }

        @Override // android.gsi.IImageService
        public int getAvbPublicKey(String name, AvbPublicKey dst) throws RemoteException {
            return 0;
        }

        @Override // android.gsi.IImageService
        public List<String> getAllBackingImages() throws RemoteException {
            return null;
        }

        @Override // android.gsi.IImageService
        public void zeroFillNewImage(String name, long bytes) throws RemoteException {
        }

        @Override // android.gsi.IImageService
        public void removeAllImages() throws RemoteException {
        }

        @Override // android.gsi.IImageService
        public void removeDisabledImages() throws RemoteException {
        }

        @Override // android.gsi.IImageService
        public String getMappedImageDevice(String name) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IImageService {
        private static final String DESCRIPTOR = "android.gsi.IImageService";
        static final int TRANSACTION_backingImageExists = 5;
        static final int TRANSACTION_createBackingImage = 1;
        static final int TRANSACTION_deleteBackingImage = 2;
        static final int TRANSACTION_getAllBackingImages = 8;
        static final int TRANSACTION_getAvbPublicKey = 7;
        static final int TRANSACTION_getMappedImageDevice = 12;
        static final int TRANSACTION_isImageMapped = 6;
        static final int TRANSACTION_mapImageDevice = 3;
        static final int TRANSACTION_removeAllImages = 10;
        static final int TRANSACTION_removeDisabledImages = 11;
        static final int TRANSACTION_unmapImageDevice = 4;
        static final int TRANSACTION_zeroFillNewImage = 9;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IImageService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IImageService)) {
                return (IImageService) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    createBackingImage(parcel.readString(), parcel.readLong(), parcel.readInt(), IProgressCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteBackingImage(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String string = parcel.readString();
                    int i3 = parcel.readInt();
                    MappedImage mappedImage = new MappedImage();
                    mapImageDevice(string, i3, mappedImage);
                    parcel2.writeNoException();
                    parcel2.writeInt(1);
                    mappedImage.writeToParcel(parcel2, 1);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    unmapImageDevice(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zBackingImageExists = backingImageExists(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zBackingImageExists ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsImageMapped = isImageMapped(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsImageMapped ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    String string2 = parcel.readString();
                    AvbPublicKey avbPublicKey = new AvbPublicKey();
                    int avbPublicKey2 = getAvbPublicKey(string2, avbPublicKey);
                    parcel2.writeNoException();
                    parcel2.writeInt(avbPublicKey2);
                    parcel2.writeInt(1);
                    avbPublicKey.writeToParcel(parcel2, 1);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> allBackingImages = getAllBackingImages();
                    parcel2.writeNoException();
                    parcel2.writeStringList(allBackingImages);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    zeroFillNewImage(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeAllImages();
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeDisabledImages();
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    String mappedImageDevice = getMappedImageDevice(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(mappedImageDevice);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IImageService {
            public static IImageService sDefaultImpl;
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

            @Override // android.gsi.IImageService
            public void createBackingImage(String name, long size, int flags, IProgressCallback on_progress) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeLong(size);
                    _data.writeInt(flags);
                    _data.writeStrongBinder(on_progress != null ? on_progress.asBinder() : null);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().createBackingImage(name, size, flags, on_progress);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IImageService
            public void deleteBackingImage(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    boolean _status = this.mRemote.transact(2, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().deleteBackingImage(name);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IImageService
            public void mapImageDevice(String name, int timeout_ms, MappedImage mapping) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeInt(timeout_ms);
                    boolean _status = this.mRemote.transact(3, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().mapImageDevice(name, timeout_ms, mapping);
                        return;
                    }
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        mapping.readFromParcel(_reply);
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IImageService
            public void unmapImageDevice(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    boolean _status = this.mRemote.transact(4, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unmapImageDevice(name);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IImageService
            public boolean backingImageExists(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    boolean _status = this.mRemote.transact(5, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().backingImageExists(name);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IImageService
            public boolean isImageMapped(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    boolean _status = this.mRemote.transact(6, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isImageMapped(name);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IImageService
            public int getAvbPublicKey(String name, AvbPublicKey dst) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    boolean _status = this.mRemote.transact(7, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAvbPublicKey(name, dst);
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

            @Override // android.gsi.IImageService
            public List<String> getAllBackingImages() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(8, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAllBackingImages();
                    }
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IImageService
            public void zeroFillNewImage(String name, long bytes) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeLong(bytes);
                    boolean _status = this.mRemote.transact(9, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().zeroFillNewImage(name, bytes);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IImageService
            public void removeAllImages() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(10, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().removeAllImages();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IImageService
            public void removeDisabledImages() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(11, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().removeDisabledImages();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.gsi.IImageService
            public String getMappedImageDevice(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    boolean _status = this.mRemote.transact(12, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMappedImageDevice(name);
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IImageService impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IImageService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
