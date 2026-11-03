package com.mega.carlink;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.mega.carlink.model.MusicInfo;

/* JADX INFO: loaded from: classes2.dex */
public interface IMediaInfoListener extends IInterface {

    public static class Default implements IMediaInfoListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.carlink.IMediaInfoListener
        public void onMediaDataChange(MusicInfo musicInfo) throws RemoteException {
        }

        @Override // com.mega.carlink.IMediaInfoListener
        public void onMediaStateChange(int i) throws RemoteException {
        }
    }

    void onMediaDataChange(MusicInfo musicInfo) throws RemoteException;

    void onMediaStateChange(int i) throws RemoteException;

    public static abstract class Stub extends Binder implements IMediaInfoListener {
        private static final String DESCRIPTOR = "com.mega.carlink.IMediaInfoListener";
        static final int TRANSACTION_onMediaDataChange = 1;
        static final int TRANSACTION_onMediaStateChange = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMediaInfoListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IMediaInfoListener)) {
                return (IMediaInfoListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onMediaDataChange(parcel.readInt() != 0 ? MusicInfo.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                if (i == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onMediaStateChange(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }

        private static class Proxy implements IMediaInfoListener {
            public static IMediaInfoListener sDefaultImpl;
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

            @Override // com.mega.carlink.IMediaInfoListener
            public void onMediaDataChange(MusicInfo musicInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (musicInfo != null) {
                        parcelObtain.writeInt(1);
                        musicInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onMediaDataChange(musicInfo);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.IMediaInfoListener
            public void onMediaStateChange(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onMediaStateChange(i);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IMediaInfoListener iMediaInfoListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iMediaInfoListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iMediaInfoListener;
            return true;
        }

        public static IMediaInfoListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
