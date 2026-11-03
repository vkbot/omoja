package com.lion.appversion;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IAppVersionServiceInterface extends IInterface {

    public static class Default implements IAppVersionServiceInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.lion.appversion.IAppVersionServiceInterface
        public boolean isNeedUpdate(String str, String str2) throws RemoteException {
            return false;
        }

        @Override // com.lion.appversion.IAppVersionServiceInterface
        public void postBackAppinfo(AppInfo appInfo) throws RemoteException {
        }

        @Override // com.lion.appversion.IAppVersionServiceInterface
        public void registCallBack(IAppUpdateCallBack iAppUpdateCallBack) throws RemoteException {
        }

        @Override // com.lion.appversion.IAppVersionServiceInterface
        public void unregisterCallBack(IAppUpdateCallBack iAppUpdateCallBack) throws RemoteException {
        }
    }

    boolean isNeedUpdate(String str, String str2) throws RemoteException;

    void postBackAppinfo(AppInfo appInfo) throws RemoteException;

    void registCallBack(IAppUpdateCallBack iAppUpdateCallBack) throws RemoteException;

    void unregisterCallBack(IAppUpdateCallBack iAppUpdateCallBack) throws RemoteException;

    public static abstract class Stub extends Binder implements IAppVersionServiceInterface {
        private static final String DESCRIPTOR = "com.lion.appversion.IAppVersionServiceInterface";
        static final int TRANSACTION_isNeedUpdate = 1;
        static final int TRANSACTION_postBackAppinfo = 2;
        static final int TRANSACTION_registCallBack = 3;
        static final int TRANSACTION_unregisterCallBack = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAppVersionServiceInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAppVersionServiceInterface)) {
                return (IAppVersionServiceInterface) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zIsNeedUpdate = isNeedUpdate(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zIsNeedUpdate ? 1 : 0);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                postBackAppinfo(parcel.readInt() != 0 ? AppInfo.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                registCallBack(IAppUpdateCallBack.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
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
            unregisterCallBack(IAppUpdateCallBack.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IAppVersionServiceInterface {
            public static IAppVersionServiceInterface sDefaultImpl;
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.lion.appversion.IAppVersionServiceInterface
            public boolean isNeedUpdate(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isNeedUpdate(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.lion.appversion.IAppVersionServiceInterface
            public void postBackAppinfo(AppInfo appInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (appInfo != null) {
                        parcelObtain.writeInt(1);
                        appInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().postBackAppinfo(appInfo);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.lion.appversion.IAppVersionServiceInterface
            public void registCallBack(IAppUpdateCallBack iAppUpdateCallBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAppUpdateCallBack != null ? iAppUpdateCallBack.asBinder() : null);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registCallBack(iAppUpdateCallBack);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.lion.appversion.IAppVersionServiceInterface
            public void unregisterCallBack(IAppUpdateCallBack iAppUpdateCallBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAppUpdateCallBack != null ? iAppUpdateCallBack.asBinder() : null);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCallBack(iAppUpdateCallBack);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IAppVersionServiceInterface iAppVersionServiceInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iAppVersionServiceInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iAppVersionServiceInterface;
            return true;
        }

        public static IAppVersionServiceInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
