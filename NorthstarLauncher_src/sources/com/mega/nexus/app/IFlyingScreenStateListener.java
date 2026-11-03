package com.mega.nexus.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IFlyingScreenStateListener extends IInterface {

    public static class Default implements IFlyingScreenStateListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onEndFlyingScreen(int i, int i2, String str, int i3) throws RemoteException {
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onFlyingAppNotAllow(int i, int i2, String str) throws RemoteException {
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onFlyingFromExternalScreenForbidden(int i, int i2) throws RemoteException {
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onFlyingFromPrimaryScreenForbidden(int i, int i2) throws RemoteException {
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onFlyingFunctionForbidden(int i, int i2) throws RemoteException {
        }

        @Override // com.mega.nexus.app.IFlyingScreenStateListener
        public void onStartFlyingScreen(int i, int i2, String str, int i3) throws RemoteException {
        }
    }

    void onEndFlyingScreen(int i, int i2, String str, int i3) throws RemoteException;

    void onFlyingAppNotAllow(int i, int i2, String str) throws RemoteException;

    void onFlyingFromExternalScreenForbidden(int i, int i2) throws RemoteException;

    void onFlyingFromPrimaryScreenForbidden(int i, int i2) throws RemoteException;

    void onFlyingFunctionForbidden(int i, int i2) throws RemoteException;

    void onStartFlyingScreen(int i, int i2, String str, int i3) throws RemoteException;

    public static abstract class Stub extends Binder implements IFlyingScreenStateListener {
        private static final String DESCRIPTOR = "com.mega.nexus.app.IFlyingScreenStateListener";
        static final int TRANSACTION_onEndFlyingScreen = 2;
        static final int TRANSACTION_onFlyingAppNotAllow = 6;
        static final int TRANSACTION_onFlyingFromExternalScreenForbidden = 4;
        static final int TRANSACTION_onFlyingFromPrimaryScreenForbidden = 3;
        static final int TRANSACTION_onFlyingFunctionForbidden = 5;
        static final int TRANSACTION_onStartFlyingScreen = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IFlyingScreenStateListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IFlyingScreenStateListener)) {
                return (IFlyingScreenStateListener) iInterfaceQueryLocalInterface;
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
                    onStartFlyingScreen(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onEndFlyingScreen(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFlyingFromPrimaryScreenForbidden(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFlyingFromExternalScreenForbidden(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFlyingFunctionForbidden(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFlyingAppNotAllow(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IFlyingScreenStateListener {
            public static IFlyingScreenStateListener sDefaultImpl;
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

            @Override // com.mega.nexus.app.IFlyingScreenStateListener
            public void onStartFlyingScreen(int i, int i2, String str, int i3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onStartFlyingScreen(i, i2, str, i3);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.app.IFlyingScreenStateListener
            public void onEndFlyingScreen(int i, int i2, String str, int i3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onEndFlyingScreen(i, i2, str, i3);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.app.IFlyingScreenStateListener
            public void onFlyingFromPrimaryScreenForbidden(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onFlyingFromPrimaryScreenForbidden(i, i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.app.IFlyingScreenStateListener
            public void onFlyingFromExternalScreenForbidden(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onFlyingFromExternalScreenForbidden(i, i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.app.IFlyingScreenStateListener
            public void onFlyingFunctionForbidden(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onFlyingFunctionForbidden(i, i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.app.IFlyingScreenStateListener
            public void onFlyingAppNotAllow(int i, int i2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onFlyingAppNotAllow(i, i2, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IFlyingScreenStateListener iFlyingScreenStateListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iFlyingScreenStateListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iFlyingScreenStateListener;
            return true;
        }

        public static IFlyingScreenStateListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
