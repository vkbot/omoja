package mega.car.input;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface ICarInput extends IInterface {

    public static class Default implements ICarInput {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // mega.car.input.ICarInput
        public void customEventDownReport(int i, boolean z) throws RemoteException {
        }

        @Override // mega.car.input.ICarInput
        public void customRotaryEventInterceptReport(int i, boolean z) throws RemoteException {
        }

        @Override // mega.car.input.ICarInput
        public void forceCustomEventDownReport(int i, boolean z) throws RemoteException {
        }

        @Override // mega.car.input.ICarInput
        public void releaseInputEventCapture(ICarInputCallback iCarInputCallback) throws RemoteException {
        }

        @Override // mega.car.input.ICarInput
        public void releaseInputEventCapture2(ICarInputCallback iCarInputCallback) throws RemoteException {
        }

        @Override // mega.car.input.ICarInput
        public void requestInputEventCapture(ICarInputCallback iCarInputCallback, int i) throws RemoteException {
        }

        @Override // mega.car.input.ICarInput
        public void requestInputEventCaptureWithLevel(ICarInputCallback iCarInputCallback, int i, int i2) throws RemoteException {
        }
    }

    void customEventDownReport(int i, boolean z) throws RemoteException;

    void customRotaryEventInterceptReport(int i, boolean z) throws RemoteException;

    void forceCustomEventDownReport(int i, boolean z) throws RemoteException;

    void releaseInputEventCapture(ICarInputCallback iCarInputCallback) throws RemoteException;

    void releaseInputEventCapture2(ICarInputCallback iCarInputCallback) throws RemoteException;

    void requestInputEventCapture(ICarInputCallback iCarInputCallback, int i) throws RemoteException;

    void requestInputEventCaptureWithLevel(ICarInputCallback iCarInputCallback, int i, int i2) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarInput {
        private static final String DESCRIPTOR = "mega.car.input.ICarInput";
        static final int TRANSACTION_customEventDownReport = 4;
        static final int TRANSACTION_customRotaryEventInterceptReport = 7;
        static final int TRANSACTION_forceCustomEventDownReport = 6;
        static final int TRANSACTION_releaseInputEventCapture = 3;
        static final int TRANSACTION_releaseInputEventCapture2 = 8;
        static final int TRANSACTION_requestInputEventCapture = 2;
        static final int TRANSACTION_requestInputEventCaptureWithLevel = 5;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarInput asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarInput)) {
                return (ICarInput) iInterfaceQueryLocalInterface;
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
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestInputEventCapture(ICarInputCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    releaseInputEventCapture(ICarInputCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    customEventDownReport(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestInputEventCaptureWithLevel(ICarInputCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    forceCustomEventDownReport(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    customRotaryEventInterceptReport(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    releaseInputEventCapture2(ICarInputCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements ICarInput {
            public static ICarInput sDefaultImpl;
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

            @Override // mega.car.input.ICarInput
            public void requestInputEventCapture(ICarInputCallback iCarInputCallback, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarInputCallback != null ? iCarInputCallback.asBinder() : null);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestInputEventCapture(iCarInputCallback, i);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.input.ICarInput
            public void releaseInputEventCapture(ICarInputCallback iCarInputCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarInputCallback != null ? iCarInputCallback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().releaseInputEventCapture(iCarInputCallback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.input.ICarInput
            public void customEventDownReport(int i, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().customEventDownReport(i, z);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.input.ICarInput
            public void requestInputEventCaptureWithLevel(ICarInputCallback iCarInputCallback, int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarInputCallback != null ? iCarInputCallback.asBinder() : null);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestInputEventCaptureWithLevel(iCarInputCallback, i, i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.input.ICarInput
            public void forceCustomEventDownReport(int i, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().forceCustomEventDownReport(i, z);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.input.ICarInput
            public void customRotaryEventInterceptReport(int i, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().customRotaryEventInterceptReport(i, z);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.input.ICarInput
            public void releaseInputEventCapture2(ICarInputCallback iCarInputCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarInputCallback != null ? iCarInputCallback.asBinder() : null);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().releaseInputEventCapture2(iCarInputCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarInput iCarInput) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iCarInput == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarInput;
            return true;
        }

        public static ICarInput getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
