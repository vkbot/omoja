package com.mega.sdk.linkmanager;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IAndroidAutoAIDL extends IInterface {
    public static final String DESCRIPTOR = "com.mega.sdk.linkmanager.IAndroidAutoAIDL";

    public static class Default implements IAndroidAutoAIDL {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.IAndroidAutoAIDL
        public void onAndroidAutoConnectStatusChanged(int i, int i2, String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.IAndroidAutoAIDL
        public void onAndroidAutoDeviceDeleted(String str) throws RemoteException {
        }
    }

    void onAndroidAutoConnectStatusChanged(int i, int i2, String str) throws RemoteException;

    void onAndroidAutoDeviceDeleted(String str) throws RemoteException;

    public static abstract class Stub extends Binder implements IAndroidAutoAIDL {
        static final int TRANSACTION_onAndroidAutoConnectStatusChanged = 1;
        static final int TRANSACTION_onAndroidAutoDeviceDeleted = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IAndroidAutoAIDL.DESCRIPTOR);
        }

        public static IAndroidAutoAIDL asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IAndroidAutoAIDL.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAndroidAutoAIDL)) {
                return (IAndroidAutoAIDL) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IAndroidAutoAIDL.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IAndroidAutoAIDL.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onAndroidAutoConnectStatusChanged(parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
            } else if (i == 2) {
                onAndroidAutoDeviceDeleted(parcel.readString());
                parcel2.writeNoException();
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        private static class Proxy implements IAndroidAutoAIDL {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IAndroidAutoAIDL.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.mega.sdk.linkmanager.IAndroidAutoAIDL
            public void onAndroidAutoConnectStatusChanged(int i, int i2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAndroidAutoAIDL.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.IAndroidAutoAIDL
            public void onAndroidAutoDeviceDeleted(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAndroidAutoAIDL.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
