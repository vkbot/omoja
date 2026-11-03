package com.mega.sdk.linkmanager;

import android.bluetooth.BluetoothDevice;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface ICarPlayAIDL extends IInterface {
    public static final String DESCRIPTOR = "com.mega.sdk.linkmanager.ICarPlayAIDL";

    public static class Default implements ICarPlayAIDL {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
        public void onCarPlayConnectStatusChanged(int i, int i2, String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
        public void onCarPlayDeviceBatteryLeveChanged(String str, int i) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
        public void onCarPlayDeviceDeleted(String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
        public void onCarPlayRequestFromIPhone(BluetoothDevice bluetoothDevice) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
        public void onReceiveUICommand(int i, String str) throws RemoteException {
        }
    }

    void onCarPlayConnectStatusChanged(int i, int i2, String str) throws RemoteException;

    void onCarPlayDeviceBatteryLeveChanged(String str, int i) throws RemoteException;

    void onCarPlayDeviceDeleted(String str) throws RemoteException;

    void onCarPlayRequestFromIPhone(BluetoothDevice bluetoothDevice) throws RemoteException;

    void onReceiveUICommand(int i, String str) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarPlayAIDL {
        static final int TRANSACTION_onCarPlayConnectStatusChanged = 1;
        static final int TRANSACTION_onCarPlayDeviceBatteryLeveChanged = 2;
        static final int TRANSACTION_onCarPlayDeviceDeleted = 3;
        static final int TRANSACTION_onCarPlayRequestFromIPhone = 4;
        static final int TRANSACTION_onReceiveUICommand = 5;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, ICarPlayAIDL.DESCRIPTOR);
        }

        public static ICarPlayAIDL asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ICarPlayAIDL.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarPlayAIDL)) {
                return (ICarPlayAIDL) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(ICarPlayAIDL.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(ICarPlayAIDL.DESCRIPTOR);
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
                onCarPlayRequestFromIPhone((BluetoothDevice) _Parcel.readTypedObject(parcel, BluetoothDevice.CREATOR));
                parcel2.writeNoException();
            } else if (i == 5) {
                onReceiveUICommand(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        private static class Proxy implements ICarPlayAIDL {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ICarPlayAIDL.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
            public void onCarPlayConnectStatusChanged(int i, int i2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ICarPlayAIDL.DESCRIPTOR);
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

            @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
            public void onCarPlayDeviceBatteryLeveChanged(String str, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ICarPlayAIDL.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
            public void onCarPlayDeviceDeleted(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ICarPlayAIDL.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
            public void onCarPlayRequestFromIPhone(BluetoothDevice bluetoothDevice) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ICarPlayAIDL.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, bluetoothDevice, 0);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
            public void onReceiveUICommand(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ICarPlayAIDL.DESCRIPTOR);
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

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t, int i) {
            if (t != null) {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
            } else {
                parcel.writeInt(0);
            }
        }
    }
}
