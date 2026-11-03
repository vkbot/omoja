package mega.car.hardware.property;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import mega.car.hardware.CarPropertyConfig;
import mega.car.hardware.CarPropertyValue;

/* JADX INFO: loaded from: classes2.dex */
public interface ICarProperty extends IInterface {

    public static class Default implements ICarProperty {
        @Override // mega.car.hardware.property.ICarProperty
        public void addBlacklist(String str, int[] iArr) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // mega.car.hardware.property.ICarProperty
        public CarPropertyValue getProperty(int i, int i2) throws RemoteException {
            return null;
        }

        @Override // mega.car.hardware.property.ICarProperty
        public List<CarPropertyConfig> getPropertyConfigs(int[] iArr) throws RemoteException {
            return null;
        }

        @Override // mega.car.hardware.property.ICarProperty
        public List<CarPropertyConfig> getPropertyList() throws RemoteException {
            return null;
        }

        @Override // mega.car.hardware.property.ICarProperty
        public void injectEvent(String str, List<CarPropertyEvent> list) throws RemoteException {
        }

        @Override // mega.car.hardware.property.ICarProperty
        public void injectPropertyChange(CarPropertyEvent carPropertyEvent) throws RemoteException {
        }

        @Override // mega.car.hardware.property.ICarProperty
        public void injectPropertySetError(int i, int i2) throws RemoteException {
        }

        @Override // mega.car.hardware.property.ICarProperty
        public void registerListener(ICarPropertyEventListener iCarPropertyEventListener, int[] iArr, float[] fArr) throws RemoteException {
        }

        @Override // mega.car.hardware.property.ICarProperty
        public void removeBlacklist(String str, int[] iArr) throws RemoteException {
        }

        @Override // mega.car.hardware.property.ICarProperty
        public void setDebug(boolean z) throws RemoteException {
        }

        @Override // mega.car.hardware.property.ICarProperty
        public void setProperty(CarPropertyValue carPropertyValue) throws RemoteException {
        }

        @Override // mega.car.hardware.property.ICarProperty
        public void unregisterCallback(int i, ICarPropertyEventListener iCarPropertyEventListener) throws RemoteException {
        }

        @Override // mega.car.hardware.property.ICarProperty
        public void unregisterListener(ICarPropertyEventListener iCarPropertyEventListener) throws RemoteException {
        }
    }

    void addBlacklist(String str, int[] iArr) throws RemoteException;

    CarPropertyValue getProperty(int i, int i2) throws RemoteException;

    List<CarPropertyConfig> getPropertyConfigs(int[] iArr) throws RemoteException;

    List<CarPropertyConfig> getPropertyList() throws RemoteException;

    void injectEvent(String str, List<CarPropertyEvent> list) throws RemoteException;

    void injectPropertyChange(CarPropertyEvent carPropertyEvent) throws RemoteException;

    void injectPropertySetError(int i, int i2) throws RemoteException;

    void registerListener(ICarPropertyEventListener iCarPropertyEventListener, int[] iArr, float[] fArr) throws RemoteException;

    void removeBlacklist(String str, int[] iArr) throws RemoteException;

    void setDebug(boolean z) throws RemoteException;

    void setProperty(CarPropertyValue carPropertyValue) throws RemoteException;

    void unregisterCallback(int i, ICarPropertyEventListener iCarPropertyEventListener) throws RemoteException;

    void unregisterListener(ICarPropertyEventListener iCarPropertyEventListener) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarProperty {
        private static final String DESCRIPTOR = "mega.car.hardware.property.ICarProperty";
        static final int TRANSACTION_addBlacklist = 103;
        static final int TRANSACTION_getProperty = 4;
        static final int TRANSACTION_getPropertyConfigs = 105;
        static final int TRANSACTION_getPropertyList = 3;
        static final int TRANSACTION_injectEvent = 102;
        static final int TRANSACTION_injectPropertyChange = 8;
        static final int TRANSACTION_injectPropertySetError = 7;
        static final int TRANSACTION_registerListener = 1;
        static final int TRANSACTION_removeBlacklist = 104;
        static final int TRANSACTION_setDebug = 9;
        static final int TRANSACTION_setProperty = 5;
        static final int TRANSACTION_unregisterCallback = 6;
        static final int TRANSACTION_unregisterListener = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarProperty asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarProperty)) {
                return (ICarProperty) iInterfaceQueryLocalInterface;
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
                    registerListener(ICarPropertyEventListener.Stub.asInterface(parcel.readStrongBinder()), parcel.createIntArray(), parcel.createFloatArray());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterListener(ICarPropertyEventListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<CarPropertyConfig> propertyList = getPropertyList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(propertyList);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    CarPropertyValue property = getProperty(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (property != null) {
                        parcel2.writeInt(1);
                        property.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    setProperty(parcel.readInt() != 0 ? CarPropertyValue.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallback(parcel.readInt(), ICarPropertyEventListener.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    injectPropertySetError(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    injectPropertyChange(parcel.readInt() != 0 ? CarPropertyEvent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDebug(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                default:
                    switch (i) {
                        case 102:
                            parcel.enforceInterface(DESCRIPTOR);
                            injectEvent(parcel.readString(), parcel.createTypedArrayList(CarPropertyEvent.CREATOR));
                            parcel2.writeNoException();
                            return true;
                        case 103:
                            parcel.enforceInterface(DESCRIPTOR);
                            addBlacklist(parcel.readString(), parcel.createIntArray());
                            parcel2.writeNoException();
                            return true;
                        case 104:
                            parcel.enforceInterface(DESCRIPTOR);
                            removeBlacklist(parcel.readString(), parcel.createIntArray());
                            parcel2.writeNoException();
                            return true;
                        case 105:
                            parcel.enforceInterface(DESCRIPTOR);
                            List<CarPropertyConfig> propertyConfigs = getPropertyConfigs(parcel.createIntArray());
                            parcel2.writeNoException();
                            parcel2.writeTypedList(propertyConfigs);
                            return true;
                        default:
                            return super.onTransact(i, parcel, parcel2, i2);
                    }
            }
        }

        private static class Proxy implements ICarProperty {
            public static ICarProperty sDefaultImpl;
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

            @Override // mega.car.hardware.property.ICarProperty
            public void registerListener(ICarPropertyEventListener iCarPropertyEventListener, int[] iArr, float[] fArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPropertyEventListener != null ? iCarPropertyEventListener.asBinder() : null);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeFloatArray(fArr);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerListener(iCarPropertyEventListener, iArr, fArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public void unregisterListener(ICarPropertyEventListener iCarPropertyEventListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarPropertyEventListener != null ? iCarPropertyEventListener.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterListener(iCarPropertyEventListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public List<CarPropertyConfig> getPropertyList() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPropertyList();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(CarPropertyConfig.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public CarPropertyValue getProperty(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getProperty(i, i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? CarPropertyValue.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public void setProperty(CarPropertyValue carPropertyValue) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (carPropertyValue != null) {
                        parcelObtain.writeInt(1);
                        carPropertyValue.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setProperty(carPropertyValue);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public void unregisterCallback(int i, ICarPropertyEventListener iCarPropertyEventListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeStrongBinder(iCarPropertyEventListener != null ? iCarPropertyEventListener.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().unregisterCallback(i, iCarPropertyEventListener);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public void injectPropertySetError(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().injectPropertySetError(i, i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public void injectPropertyChange(CarPropertyEvent carPropertyEvent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (carPropertyEvent != null) {
                        parcelObtain.writeInt(1);
                        carPropertyEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().injectPropertyChange(carPropertyEvent);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public void setDebug(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setDebug(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public void injectEvent(String str, List<CarPropertyEvent> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedList(list);
                    if (!this.mRemote.transact(102, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().injectEvent(str, list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public void addBlacklist(String str, int[] iArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeIntArray(iArr);
                    if (!this.mRemote.transact(103, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addBlacklist(str, iArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public void removeBlacklist(String str, int[] iArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeIntArray(iArr);
                    if (!this.mRemote.transact(104, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().removeBlacklist(str, iArr);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // mega.car.hardware.property.ICarProperty
            public List<CarPropertyConfig> getPropertyConfigs(int[] iArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeIntArray(iArr);
                    if (!this.mRemote.transact(105, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPropertyConfigs(iArr);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(CarPropertyConfig.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarProperty iCarProperty) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iCarProperty == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarProperty;
            return true;
        }

        public static ICarProperty getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
