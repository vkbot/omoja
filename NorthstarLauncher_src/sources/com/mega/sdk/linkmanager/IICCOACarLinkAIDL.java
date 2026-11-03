package com.mega.sdk.linkmanager;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IICCOACarLinkAIDL extends IInterface {
    public static final String DESCRIPTOR = "com.mega.sdk.linkmanager.IICCOACarLinkAIDL";

    public static class Default implements IICCOACarLinkAIDL {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.IICCOACarLinkAIDL
        public void onCarLinkConnectStatusChange(int i, String str) throws RemoteException {
        }
    }

    void onCarLinkConnectStatusChange(int i, String str) throws RemoteException;

    public static abstract class Stub extends Binder implements IICCOACarLinkAIDL {
        static final int TRANSACTION_onCarLinkConnectStatusChange = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IICCOACarLinkAIDL.DESCRIPTOR);
        }

        public static IICCOACarLinkAIDL asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IICCOACarLinkAIDL.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IICCOACarLinkAIDL)) {
                return (IICCOACarLinkAIDL) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IICCOACarLinkAIDL.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IICCOACarLinkAIDL.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onCarLinkConnectStatusChange(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements IICCOACarLinkAIDL {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IICCOACarLinkAIDL.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.mega.sdk.linkmanager.IICCOACarLinkAIDL
            public void onCarLinkConnectStatusChange(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IICCOACarLinkAIDL.DESCRIPTOR);
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
