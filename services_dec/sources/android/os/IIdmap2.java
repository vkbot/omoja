package android.os;

/* JADX INFO: loaded from: classes.dex */
public interface IIdmap2 extends IInterface {
    String createIdmap(String str, String str2, int i, boolean z, int i2) throws RemoteException;

    String getIdmapPath(String str, int i) throws RemoteException;

    boolean removeIdmap(String str, int i) throws RemoteException;

    boolean verifyIdmap(String str, String str2, int i, boolean z, int i2) throws RemoteException;

    public static class Default implements IIdmap2 {
        @Override // android.os.IIdmap2
        public String getIdmapPath(String overlayApkPath, int userId) throws RemoteException {
            return null;
        }

        @Override // android.os.IIdmap2
        public boolean removeIdmap(String overlayApkPath, int userId) throws RemoteException {
            return false;
        }

        @Override // android.os.IIdmap2
        public boolean verifyIdmap(String targetApkPath, String overlayApkPath, int fulfilledPolicies, boolean enforceOverlayable, int userId) throws RemoteException {
            return false;
        }

        @Override // android.os.IIdmap2
        public String createIdmap(String targetApkPath, String overlayApkPath, int fulfilledPolicies, boolean enforceOverlayable, int userId) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IIdmap2 {
        private static final String DESCRIPTOR = "android.os.IIdmap2";
        static final int TRANSACTION_createIdmap = 4;
        static final int TRANSACTION_getIdmapPath = 1;
        static final int TRANSACTION_removeIdmap = 2;
        static final int TRANSACTION_verifyIdmap = 3;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIdmap2 asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IIdmap2)) {
                return (IIdmap2) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                String idmapPath = getIdmapPath(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeString(idmapPath);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zRemoveIdmap = removeIdmap(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(zRemoveIdmap ? 1 : 0);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zVerifyIdmap = verifyIdmap(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(zVerifyIdmap ? 1 : 0);
                return true;
            }
            if (i != 4) {
                if (i == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            String strCreateIdmap = createIdmap(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeString(strCreateIdmap);
            return true;
        }

        private static class Proxy implements IIdmap2 {
            public static IIdmap2 sDefaultImpl;
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

            @Override // android.os.IIdmap2
            public String getIdmapPath(String overlayApkPath, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(overlayApkPath);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getIdmapPath(overlayApkPath, userId);
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IIdmap2
            public boolean removeIdmap(String overlayApkPath, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(overlayApkPath);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(2, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().removeIdmap(overlayApkPath, userId);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IIdmap2
            public boolean verifyIdmap(String targetApkPath, String overlayApkPath, int fulfilledPolicies, boolean enforceOverlayable, int userId) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(targetApkPath);
                        try {
                            _data.writeString(overlayApkPath);
                            try {
                                _data.writeInt(fulfilledPolicies);
                                _data.writeInt(enforceOverlayable ? 1 : 0);
                                try {
                                    _data.writeInt(userId);
                                    try {
                                        boolean _status = this.mRemote.transact(3, _data, _reply, 0);
                                        if (!_status && Stub.getDefaultImpl() != null) {
                                            boolean zVerifyIdmap = Stub.getDefaultImpl().verifyIdmap(targetApkPath, overlayApkPath, fulfilledPolicies, enforceOverlayable, userId);
                                            _reply.recycle();
                                            _data.recycle();
                                            return zVerifyIdmap;
                                        }
                                        _reply.readException();
                                        boolean _result = _reply.readInt() != 0;
                                        _reply.recycle();
                                        _data.recycle();
                                        return _result;
                                    } catch (Throwable th) {
                                        th = th;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }

            @Override // android.os.IIdmap2
            public String createIdmap(String targetApkPath, String overlayApkPath, int fulfilledPolicies, boolean enforceOverlayable, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(targetApkPath);
                    _data.writeString(overlayApkPath);
                    _data.writeInt(fulfilledPolicies);
                    _data.writeInt(enforceOverlayable ? 1 : 0);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(4, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createIdmap(targetApkPath, overlayApkPath, fulfilledPolicies, enforceOverlayable, userId);
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

        public static boolean setDefaultImpl(IIdmap2 impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IIdmap2 getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
