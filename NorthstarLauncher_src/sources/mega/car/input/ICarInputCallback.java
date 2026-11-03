package mega.car.input;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface ICarInputCallback extends IInterface {

    public static class Default implements ICarInputCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // mega.car.input.ICarInputCallback
        public void onCustomInputEvent(CustomInputEvent customInputEvent) throws RemoteException {
        }

        @Override // mega.car.input.ICarInputCallback
        public void onCustomRotaryEvent(CustomRotaryEvent customRotaryEvent) throws RemoteException {
        }

        @Override // mega.car.input.ICarInputCallback
        public void onKeyEvent(KeyEvent keyEvent) throws RemoteException {
        }
    }

    void onCustomInputEvent(CustomInputEvent customInputEvent) throws RemoteException;

    void onCustomRotaryEvent(CustomRotaryEvent customRotaryEvent) throws RemoteException;

    void onKeyEvent(KeyEvent keyEvent) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarInputCallback {
        private static final String DESCRIPTOR = "mega.car.input.ICarInputCallback";
        static final int TRANSACTION_onCustomInputEvent = 3;
        static final int TRANSACTION_onCustomRotaryEvent = 4;
        static final int TRANSACTION_onKeyEvent = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarInputCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarInputCallback)) {
                return (ICarInputCallback) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onKeyEvent(parcel.readInt() != 0 ? (KeyEvent) KeyEvent.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onCustomInputEvent(parcel.readInt() != 0 ? CustomInputEvent.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                onCustomRotaryEvent(parcel.readInt() != 0 ? CustomRotaryEvent.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements ICarInputCallback {
            public static ICarInputCallback sDefaultImpl;
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

            @Override // mega.car.input.ICarInputCallback
            public void onKeyEvent(KeyEvent keyEvent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (keyEvent != null) {
                        parcelObtain.writeInt(1);
                        keyEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onKeyEvent(keyEvent);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.input.ICarInputCallback
            public void onCustomInputEvent(CustomInputEvent customInputEvent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (customInputEvent != null) {
                        parcelObtain.writeInt(1);
                        customInputEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onCustomInputEvent(customInputEvent);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.input.ICarInputCallback
            public void onCustomRotaryEvent(CustomRotaryEvent customRotaryEvent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (customRotaryEvent != null) {
                        parcelObtain.writeInt(1);
                        customRotaryEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onCustomRotaryEvent(customRotaryEvent);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarInputCallback iCarInputCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iCarInputCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarInputCallback;
            return true;
        }

        public static ICarInputCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
