package com.mega.hicar;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IHiCarPinCodeChangeListener extends IInterface {

    public static class Default implements IHiCarPinCodeChangeListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.hicar.IHiCarPinCodeChangeListener
        public void onPinCodeChange(String str) throws RemoteException {
        }
    }

    void onPinCodeChange(String str) throws RemoteException;

    public static abstract class Stub extends Binder implements IHiCarPinCodeChangeListener {
        private static final String DESCRIPTOR = "com.mega.hicar.IHiCarPinCodeChangeListener";
        static final int TRANSACTION_onPinCodeChange = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IHiCarPinCodeChangeListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IHiCarPinCodeChangeListener)) {
                return (IHiCarPinCodeChangeListener) iInterfaceQueryLocalInterface;
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
            onPinCodeChange(parcel.readString());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IHiCarPinCodeChangeListener {
            public static IHiCarPinCodeChangeListener sDefaultImpl;
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

            @Override // com.mega.hicar.IHiCarPinCodeChangeListener
            public void onPinCodeChange(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onPinCodeChange(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IHiCarPinCodeChangeListener iHiCarPinCodeChangeListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iHiCarPinCodeChangeListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iHiCarPinCodeChangeListener;
            return true;
        }

        public static IHiCarPinCodeChangeListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
