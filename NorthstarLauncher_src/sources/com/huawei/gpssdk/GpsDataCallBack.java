package com.huawei.gpssdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface GpsDataCallBack extends IInterface {

    public static class Default implements GpsDataCallBack {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.huawei.gpssdk.GpsDataCallBack
        public void onReceiveCarDrivingStatus(String str) throws RemoteException {
        }

        @Override // com.huawei.gpssdk.GpsDataCallBack
        public void onReceiveCarGpsLocation(String str) throws RemoteException {
        }

        @Override // com.huawei.gpssdk.GpsDataCallBack
        public void onReceiveCarSensor(String str) throws RemoteException {
        }
    }

    void onReceiveCarDrivingStatus(String str) throws RemoteException;

    void onReceiveCarGpsLocation(String str) throws RemoteException;

    void onReceiveCarSensor(String str) throws RemoteException;

    public static abstract class Stub extends Binder implements GpsDataCallBack {
        private static final String DESCRIPTOR = "com.huawei.gpssdk.GpsDataCallBack";
        static final int TRANSACTION_onReceiveCarDrivingStatus = 2;
        static final int TRANSACTION_onReceiveCarGpsLocation = 1;
        static final int TRANSACTION_onReceiveCarSensor = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static GpsDataCallBack asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof GpsDataCallBack)) {
                return (GpsDataCallBack) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onReceiveCarGpsLocation(parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onReceiveCarDrivingStatus(parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i != 3) {
                if (i == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onReceiveCarSensor(parcel.readString());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements GpsDataCallBack {
            public static GpsDataCallBack sDefaultImpl;
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

            @Override // com.huawei.gpssdk.GpsDataCallBack
            public void onReceiveCarGpsLocation(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onReceiveCarGpsLocation(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.gpssdk.GpsDataCallBack
            public void onReceiveCarDrivingStatus(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onReceiveCarDrivingStatus(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.gpssdk.GpsDataCallBack
            public void onReceiveCarSensor(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onReceiveCarSensor(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(GpsDataCallBack gpsDataCallBack) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (gpsDataCallBack == null) {
                return false;
            }
            Proxy.sDefaultImpl = gpsDataCallBack;
            return true;
        }

        public static GpsDataCallBack getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
