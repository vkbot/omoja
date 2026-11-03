package com.huawei.gpssdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IGpsLinkManager extends IInterface {

    public static class Default implements IGpsLinkManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.huawei.gpssdk.IGpsLinkManager
        public CarDataReportFreq getCarDataReportFreq() throws RemoteException {
            return null;
        }

        @Override // com.huawei.gpssdk.IGpsLinkManager
        public boolean isSupportCarGpsAbility() throws RemoteException {
            return false;
        }

        @Override // com.huawei.gpssdk.IGpsLinkManager
        public boolean isSupportCarGpsDrivingStatusAbility() throws RemoteException {
            return false;
        }

        @Override // com.huawei.gpssdk.IGpsLinkManager
        public boolean isSupportCarGpsSensorAbility() throws RemoteException {
            return false;
        }

        @Override // com.huawei.gpssdk.IGpsLinkManager
        public boolean registerCarDataListener(GpsDataCallBack gpsDataCallBack) throws RemoteException {
            return false;
        }

        @Override // com.huawei.gpssdk.IGpsLinkManager
        public boolean unRegisterCarDataListener(GpsDataCallBack gpsDataCallBack) throws RemoteException {
            return false;
        }
    }

    CarDataReportFreq getCarDataReportFreq() throws RemoteException;

    boolean isSupportCarGpsAbility() throws RemoteException;

    boolean isSupportCarGpsDrivingStatusAbility() throws RemoteException;

    boolean isSupportCarGpsSensorAbility() throws RemoteException;

    boolean registerCarDataListener(GpsDataCallBack gpsDataCallBack) throws RemoteException;

    boolean unRegisterCarDataListener(GpsDataCallBack gpsDataCallBack) throws RemoteException;

    public static abstract class Stub extends Binder implements IGpsLinkManager {
        private static final String DESCRIPTOR = "com.huawei.gpssdk.IGpsLinkManager";
        static final int TRANSACTION_getCarDataReportFreq = 4;
        static final int TRANSACTION_isSupportCarGpsAbility = 1;
        static final int TRANSACTION_isSupportCarGpsDrivingStatusAbility = 2;
        static final int TRANSACTION_isSupportCarGpsSensorAbility = 3;
        static final int TRANSACTION_registerCarDataListener = 5;
        static final int TRANSACTION_unRegisterCarDataListener = 6;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IGpsLinkManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IGpsLinkManager)) {
                return (IGpsLinkManager) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
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
                    boolean zIsSupportCarGpsAbility = isSupportCarGpsAbility();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSupportCarGpsAbility ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSupportCarGpsDrivingStatusAbility = isSupportCarGpsDrivingStatusAbility();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSupportCarGpsDrivingStatusAbility ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSupportCarGpsSensorAbility = isSupportCarGpsSensorAbility();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSupportCarGpsSensorAbility ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    CarDataReportFreq carDataReportFreq = getCarDataReportFreq();
                    parcel2.writeNoException();
                    if (carDataReportFreq != null) {
                        parcel2.writeInt(1);
                        carDataReportFreq.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterCarDataListener = registerCarDataListener(GpsDataCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterCarDataListener ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUnRegisterCarDataListener = unRegisterCarDataListener(GpsDataCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zUnRegisterCarDataListener ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IGpsLinkManager {
            public static IGpsLinkManager sDefaultImpl;
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

            @Override // com.huawei.gpssdk.IGpsLinkManager
            public boolean isSupportCarGpsAbility() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isSupportCarGpsAbility();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.gpssdk.IGpsLinkManager
            public boolean isSupportCarGpsDrivingStatusAbility() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isSupportCarGpsDrivingStatusAbility();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.gpssdk.IGpsLinkManager
            public boolean isSupportCarGpsSensorAbility() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isSupportCarGpsSensorAbility();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.gpssdk.IGpsLinkManager
            public CarDataReportFreq getCarDataReportFreq() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarDataReportFreq();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? CarDataReportFreq.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.gpssdk.IGpsLinkManager
            public boolean registerCarDataListener(GpsDataCallBack gpsDataCallBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(gpsDataCallBack != null ? gpsDataCallBack.asBinder() : null);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().registerCarDataListener(gpsDataCallBack);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.gpssdk.IGpsLinkManager
            public boolean unRegisterCarDataListener(GpsDataCallBack gpsDataCallBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(gpsDataCallBack != null ? gpsDataCallBack.asBinder() : null);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().unRegisterCarDataListener(gpsDataCallBack);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IGpsLinkManager iGpsLinkManager) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iGpsLinkManager == null) {
                return false;
            }
            Proxy.sDefaultImpl = iGpsLinkManager;
            return true;
        }

        public static IGpsLinkManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
