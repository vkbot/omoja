package com.mega.sdk.linkmanager;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IVideoFocusAIDL extends IInterface {
    public static final String DESCRIPTOR = "com.mega.sdk.linkmanager.IVideoFocusAIDL";

    public static class Default implements IVideoFocusAIDL {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.IVideoFocusAIDL
        public void onVideoFocusStatusChange(int i) throws RemoteException {
        }
    }

    void onVideoFocusStatusChange(int i) throws RemoteException;

    public static abstract class Stub extends Binder implements IVideoFocusAIDL {
        static final int TRANSACTION_onVideoFocusStatusChange = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IVideoFocusAIDL.DESCRIPTOR);
        }

        public static IVideoFocusAIDL asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IVideoFocusAIDL.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IVideoFocusAIDL)) {
                return (IVideoFocusAIDL) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IVideoFocusAIDL.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IVideoFocusAIDL.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onVideoFocusStatusChange(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements IVideoFocusAIDL {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IVideoFocusAIDL.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.mega.sdk.linkmanager.IVideoFocusAIDL
            public void onVideoFocusStatusChange(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IVideoFocusAIDL.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
