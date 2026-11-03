package com.mega.carlink;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.mega.carlink.model.AppInfo;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface ICarLinkAppInfoChangeListener extends IInterface {

    public static class Default implements ICarLinkAppInfoChangeListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
        public void onAppInfoAdd(String str, List<AppInfo> list) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
        public void onAppInfoRemove(String str, List<AppInfo> list) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
        public void onAppInfoUpdate(String str, List<AppInfo> list) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
        public void onLoadAllAppInfo(String str, List<AppInfo> list) throws RemoteException {
        }
    }

    void onAppInfoAdd(String str, List<AppInfo> list) throws RemoteException;

    void onAppInfoRemove(String str, List<AppInfo> list) throws RemoteException;

    void onAppInfoUpdate(String str, List<AppInfo> list) throws RemoteException;

    void onLoadAllAppInfo(String str, List<AppInfo> list) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarLinkAppInfoChangeListener {
        private static final String DESCRIPTOR = "com.mega.carlink.ICarLinkAppInfoChangeListener";
        static final int TRANSACTION_onAppInfoAdd = 2;
        static final int TRANSACTION_onAppInfoRemove = 3;
        static final int TRANSACTION_onAppInfoUpdate = 4;
        static final int TRANSACTION_onLoadAllAppInfo = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarLinkAppInfoChangeListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarLinkAppInfoChangeListener)) {
                return (ICarLinkAppInfoChangeListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onLoadAllAppInfo(parcel.readString(), parcel.createTypedArrayList(AppInfo.CREATOR));
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onAppInfoAdd(parcel.readString(), parcel.createTypedArrayList(AppInfo.CREATOR));
                parcel2.writeNoException();
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onAppInfoRemove(parcel.readString(), parcel.createTypedArrayList(AppInfo.CREATOR));
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
            onAppInfoUpdate(parcel.readString(), parcel.createTypedArrayList(AppInfo.CREATOR));
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements ICarLinkAppInfoChangeListener {
            public static ICarLinkAppInfoChangeListener sDefaultImpl;
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

            @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
            public void onLoadAllAppInfo(String str, List<AppInfo> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedList(list);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onLoadAllAppInfo(str, list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
            public void onAppInfoAdd(String str, List<AppInfo> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedList(list);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAppInfoAdd(str, list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
            public void onAppInfoRemove(String str, List<AppInfo> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedList(list);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAppInfoRemove(str, list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
            public void onAppInfoUpdate(String str, List<AppInfo> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedList(list);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAppInfoUpdate(str, list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarLinkAppInfoChangeListener iCarLinkAppInfoChangeListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iCarLinkAppInfoChangeListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarLinkAppInfoChangeListener;
            return true;
        }

        public static ICarLinkAppInfoChangeListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
