package com.mega.sdk.linkmanager;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface ILinkMgrAIDL extends IInterface {
    public static final String DESCRIPTOR = "com.mega.sdk.linkmanager.ILinkMgrAIDL";

    public static class Default implements ILinkMgrAIDL {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrAIDL
        public void onCarPlayConnectStatusChanged(int i, int i2, String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrAIDL
        public void onCarPlayDeviceBatteryLeveChanged(String str, int i) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrAIDL
        public void onCarPlayDeviceDeleted(String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrAIDL
        public void onHiCarConnectStatusChange(int i, String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrAIDL
        public void onICCOACarLinkConnectStatusChange(int i, String str) throws RemoteException {
        }
    }

    void onCarPlayConnectStatusChanged(int i, int i2, String str) throws RemoteException;

    void onCarPlayDeviceBatteryLeveChanged(String str, int i) throws RemoteException;

    void onCarPlayDeviceDeleted(String str) throws RemoteException;

    void onHiCarConnectStatusChange(int i, String str) throws RemoteException;

    void onICCOACarLinkConnectStatusChange(int i, String str) throws RemoteException;

    public static abstract class Stub extends Binder implements ILinkMgrAIDL {
        static final int TRANSACTION_onCarPlayConnectStatusChanged = 1;
        static final int TRANSACTION_onCarPlayDeviceBatteryLeveChanged = 2;
        static final int TRANSACTION_onCarPlayDeviceDeleted = 3;
        static final int TRANSACTION_onHiCarConnectStatusChange = 4;
        static final int TRANSACTION_onICCOACarLinkConnectStatusChange = 5;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, ILinkMgrAIDL.DESCRIPTOR);
        }

        public static ILinkMgrAIDL asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ILinkMgrAIDL.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ILinkMgrAIDL)) {
                return (ILinkMgrAIDL) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(ILinkMgrAIDL.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(ILinkMgrAIDL.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onCarPlayConnectStatusChanged(parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
            } else if (i == 2) {
                onCarPlayDeviceBatteryLeveChanged(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
            } else if (i == 3) {
                onCarPlayDeviceDeleted(parcel.readString());
                parcel2.writeNoException();
            } else if (i == 4) {
                onHiCarConnectStatusChange(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
            } else if (i == 5) {
                onICCOACarLinkConnectStatusChange(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        private static class Proxy implements ILinkMgrAIDL {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ILinkMgrAIDL.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrAIDL
            public void onCarPlayConnectStatusChanged(int i, int i2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrAIDL.DESCRIPTOR);
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

            @Override // com.mega.sdk.linkmanager.ILinkMgrAIDL
            public void onCarPlayDeviceBatteryLeveChanged(String str, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrAIDL.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrAIDL
            public void onCarPlayDeviceDeleted(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrAIDL.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrAIDL
            public void onHiCarConnectStatusChange(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrAIDL.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrAIDL
            public void onICCOACarLinkConnectStatusChange(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrAIDL.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
