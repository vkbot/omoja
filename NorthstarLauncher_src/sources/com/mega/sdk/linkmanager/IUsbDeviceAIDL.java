package com.mega.sdk.linkmanager;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IUsbDeviceAIDL extends IInterface {
    public static final String DESCRIPTOR = "com.mega.sdk.linkmanager.IUsbDeviceAIDL";

    public static class Default implements IUsbDeviceAIDL {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.IUsbDeviceAIDL
        public void onUsbDeviceAttached(String str, int i, boolean z) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.IUsbDeviceAIDL
        public void onUsbDeviceDetached(String str) throws RemoteException {
        }
    }

    void onUsbDeviceAttached(String str, int i, boolean z) throws RemoteException;

    void onUsbDeviceDetached(String str) throws RemoteException;

    public static abstract class Stub extends Binder implements IUsbDeviceAIDL {
        static final int TRANSACTION_onUsbDeviceAttached = 1;
        static final int TRANSACTION_onUsbDeviceDetached = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IUsbDeviceAIDL.DESCRIPTOR);
        }

        public static IUsbDeviceAIDL asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IUsbDeviceAIDL.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IUsbDeviceAIDL)) {
                return (IUsbDeviceAIDL) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IUsbDeviceAIDL.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IUsbDeviceAIDL.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onUsbDeviceAttached(parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                parcel2.writeNoException();
            } else if (i == 2) {
                onUsbDeviceDetached(parcel.readString());
                parcel2.writeNoException();
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        private static class Proxy implements IUsbDeviceAIDL {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IUsbDeviceAIDL.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.mega.sdk.linkmanager.IUsbDeviceAIDL
            public void onUsbDeviceAttached(String str, int i, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IUsbDeviceAIDL.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.IUsbDeviceAIDL
            public void onUsbDeviceDetached(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IUsbDeviceAIDL.DESCRIPTOR);
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
