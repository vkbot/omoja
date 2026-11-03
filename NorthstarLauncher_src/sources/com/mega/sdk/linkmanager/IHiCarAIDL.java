package com.mega.sdk.linkmanager;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IHiCarAIDL extends IInterface {
    public static final String DESCRIPTOR = "com.mega.sdk.linkmanager.IHiCarAIDL";

    public static class Default implements IHiCarAIDL {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.IHiCarAIDL
        public void onHiCarConnectStatusChange(int i, String str) throws RemoteException {
        }
    }

    void onHiCarConnectStatusChange(int i, String str) throws RemoteException;

    public static abstract class Stub extends Binder implements IHiCarAIDL {
        static final int TRANSACTION_onHiCarConnectStatusChange = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IHiCarAIDL.DESCRIPTOR);
        }

        public static IHiCarAIDL asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IHiCarAIDL.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IHiCarAIDL)) {
                return (IHiCarAIDL) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IHiCarAIDL.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IHiCarAIDL.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onHiCarConnectStatusChange(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements IHiCarAIDL {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IHiCarAIDL.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.mega.sdk.linkmanager.IHiCarAIDL
            public void onHiCarConnectStatusChange(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IHiCarAIDL.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
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
