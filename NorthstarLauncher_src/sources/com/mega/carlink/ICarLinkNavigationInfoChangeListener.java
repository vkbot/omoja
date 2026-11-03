package com.mega.carlink;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.mega.carlink.model.NavigationInfo;

/* JADX INFO: loaded from: classes2.dex */
public interface ICarLinkNavigationInfoChangeListener extends IInterface {

    public static class Default implements ICarLinkNavigationInfoChangeListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkNavigationInfoChangeListener
        public void onNavigationInfoChange(String str, NavigationInfo navigationInfo) throws RemoteException {
        }
    }

    void onNavigationInfoChange(String str, NavigationInfo navigationInfo) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarLinkNavigationInfoChangeListener {
        private static final String DESCRIPTOR = "com.mega.carlink.ICarLinkNavigationInfoChangeListener";
        static final int TRANSACTION_onNavigationInfoChange = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarLinkNavigationInfoChangeListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarLinkNavigationInfoChangeListener)) {
                return (ICarLinkNavigationInfoChangeListener) iInterfaceQueryLocalInterface;
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
            onNavigationInfoChange(parcel.readString(), parcel.readInt() != 0 ? NavigationInfo.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements ICarLinkNavigationInfoChangeListener {
            public static ICarLinkNavigationInfoChangeListener sDefaultImpl;
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

            @Override // com.mega.carlink.ICarLinkNavigationInfoChangeListener
            public void onNavigationInfoChange(String str, NavigationInfo navigationInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (navigationInfo != null) {
                        parcelObtain.writeInt(1);
                        navigationInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNavigationInfoChange(str, navigationInfo);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarLinkNavigationInfoChangeListener iCarLinkNavigationInfoChangeListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iCarLinkNavigationInfoChangeListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarLinkNavigationInfoChangeListener;
            return true;
        }

        public static ICarLinkNavigationInfoChangeListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
