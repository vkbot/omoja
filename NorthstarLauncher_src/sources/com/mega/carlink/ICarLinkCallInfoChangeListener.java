package com.mega.carlink;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.mega.carlink.model.CallInfo;

/* JADX INFO: loaded from: classes2.dex */
public interface ICarLinkCallInfoChangeListener extends IInterface {

    public static class Default implements ICarLinkCallInfoChangeListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkCallInfoChangeListener
        public void onCallInfoChange(String str, CallInfo callInfo) throws RemoteException {
        }
    }

    void onCallInfoChange(String str, CallInfo callInfo) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarLinkCallInfoChangeListener {
        private static final String DESCRIPTOR = "com.mega.carlink.ICarLinkCallInfoChangeListener";
        static final int TRANSACTION_onCallInfoChange = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarLinkCallInfoChangeListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarLinkCallInfoChangeListener)) {
                return (ICarLinkCallInfoChangeListener) iInterfaceQueryLocalInterface;
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
            onCallInfoChange(parcel.readString(), parcel.readInt() != 0 ? CallInfo.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements ICarLinkCallInfoChangeListener {
            public static ICarLinkCallInfoChangeListener sDefaultImpl;
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

            @Override // com.mega.carlink.ICarLinkCallInfoChangeListener
            public void onCallInfoChange(String str, CallInfo callInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (callInfo != null) {
                        parcelObtain.writeInt(1);
                        callInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onCallInfoChange(str, callInfo);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarLinkCallInfoChangeListener iCarLinkCallInfoChangeListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iCarLinkCallInfoChangeListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarLinkCallInfoChangeListener;
            return true;
        }

        public static ICarLinkCallInfoChangeListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
