package com.mega.carlink;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface ICarLinkConnectingProgressListener extends IInterface {

    public static class Default implements ICarLinkConnectingProgressListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkConnectingProgressListener
        public void onCarLinkConnectingProgressChange(String str, int i, String str2, String str3) throws RemoteException {
        }
    }

    void onCarLinkConnectingProgressChange(String str, int i, String str2, String str3) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarLinkConnectingProgressListener {
        private static final String DESCRIPTOR = "com.mega.carlink.ICarLinkConnectingProgressListener";
        static final int TRANSACTION_onCarLinkConnectingProgressChange = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarLinkConnectingProgressListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarLinkConnectingProgressListener)) {
                return (ICarLinkConnectingProgressListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onCarLinkConnectingProgressChange(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements ICarLinkConnectingProgressListener {
            public static ICarLinkConnectingProgressListener sDefaultImpl;
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

            @Override // com.mega.carlink.ICarLinkConnectingProgressListener
            public void onCarLinkConnectingProgressChange(String str, int i, String str2, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onCarLinkConnectingProgressChange(str, i, str2, str3);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarLinkConnectingProgressListener iCarLinkConnectingProgressListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iCarLinkConnectingProgressListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarLinkConnectingProgressListener;
            return true;
        }

        public static ICarLinkConnectingProgressListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
