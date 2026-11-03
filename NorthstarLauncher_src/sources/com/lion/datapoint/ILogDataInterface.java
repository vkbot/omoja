package com.lion.datapoint;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface ILogDataInterface extends IInterface {

    public static class Default implements ILogDataInterface {
        @Override // com.lion.datapoint.ILogDataInterface
        public void accOffNotify() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.lion.datapoint.ILogDataInterface
        public void judgeAllowUpLoad(int i) throws RemoteException {
        }

        @Override // com.lion.datapoint.ILogDataInterface
        public void registerCallback(int i, ILogDataCallBack iLogDataCallBack) throws RemoteException {
        }

        @Override // com.lion.datapoint.ILogDataInterface
        public void trackJsonJsonObjectValue(String str, int i) throws RemoteException {
        }

        @Override // com.lion.datapoint.ILogDataInterface
        public void trackJsonJsonValue(String str, String str2, int i) throws RemoteException {
        }

        @Override // com.lion.datapoint.ILogDataInterface
        public void trackJsonValue(String str, int i) throws RemoteException {
        }

        @Override // com.lion.datapoint.ILogDataInterface
        public void unregisterCallback(int i) throws RemoteException {
        }
    }

    void accOffNotify() throws RemoteException;

    void judgeAllowUpLoad(int i) throws RemoteException;

    void registerCallback(int i, ILogDataCallBack iLogDataCallBack) throws RemoteException;

    void trackJsonJsonObjectValue(String str, int i) throws RemoteException;

    void trackJsonJsonValue(String str, String str2, int i) throws RemoteException;

    void trackJsonValue(String str, int i) throws RemoteException;

    void unregisterCallback(int i) throws RemoteException;

    public static abstract class Stub extends Binder implements ILogDataInterface {
        private static final String DESCRIPTOR = "com.lion.datapoint.ILogDataInterface";
        static final int TRANSACTION_accOffNotify = 4;
        static final int TRANSACTION_judgeAllowUpLoad = 1;
        static final int TRANSACTION_registerCallback = 2;
        static final int TRANSACTION_trackJsonJsonObjectValue = 5;
        static final int TRANSACTION_trackJsonJsonValue = 7;
        static final int TRANSACTION_trackJsonValue = 6;
        static final int TRANSACTION_unregisterCallback = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ILogDataInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ILogDataInterface)) {
                return (ILogDataInterface) iInterfaceQueryLocalInterface;
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
                    judgeAllowUpLoad(parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallback(parcel.readInt(), ILogDataCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallback(parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    accOffNotify();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    trackJsonJsonObjectValue(parcel.readString(), parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    trackJsonValue(parcel.readString(), parcel.readInt());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    trackJsonJsonValue(parcel.readString(), parcel.readString(), parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements ILogDataInterface {
            public static ILogDataInterface sDefaultImpl;
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

            @Override // com.lion.datapoint.ILogDataInterface
            public void judgeAllowUpLoad(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().judgeAllowUpLoad(i);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.lion.datapoint.ILogDataInterface
            public void registerCallback(int i, ILogDataCallBack iLogDataCallBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeStrongBinder(iLogDataCallBack != null ? iLogDataCallBack.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().registerCallback(i, iLogDataCallBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.lion.datapoint.ILogDataInterface
            public void unregisterCallback(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().unregisterCallback(i);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.lion.datapoint.ILogDataInterface
            public void accOffNotify() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().accOffNotify();
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.lion.datapoint.ILogDataInterface
            public void trackJsonJsonObjectValue(String str, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().trackJsonJsonObjectValue(str, i);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.lion.datapoint.ILogDataInterface
            public void trackJsonValue(String str, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().trackJsonValue(str, i);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.lion.datapoint.ILogDataInterface
            public void trackJsonJsonValue(String str, String str2, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().trackJsonJsonValue(str, str2, i);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ILogDataInterface iLogDataInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iLogDataInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iLogDataInterface;
            return true;
        }

        public static ILogDataInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
