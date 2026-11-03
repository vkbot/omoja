package com.mega.hicar;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.mega.hicar.model.AppInfo;
import com.mega.hicar.model.PhoneInfo;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IHiCarInfoInterface extends IInterface {

    public static class Default implements IHiCarInfoInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void connectPhone(String str) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public boolean controlHiCar(int i) throws RemoteException {
            return false;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public int deletePhone(String str) throws RemoteException {
            return 0;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public int disconnectPhone(String str) throws RemoteException {
            return 0;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public List<AppInfo> getAllAppInfoList() throws RemoteException {
            return null;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public String getConnectDeviceName() throws RemoteException {
            return null;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public String getConnectPhoneID() throws RemoteException {
            return null;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public int getConnectionType() throws RemoteException {
            return 0;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public String getHiCarCallInfo() throws RemoteException {
            return null;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public int getHiCarCallState() throws RemoteException {
            return 0;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public String getHiCarMediaData() throws RemoteException {
            return null;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public int getHiCarProjectionState() throws RemoteException {
            return 0;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public int getHiCarVRState() throws RemoteException {
            return 0;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public String getLastAppPackageName() throws RemoteException {
            return null;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public List<PhoneInfo> getPhoneList() throws RemoteException {
            return null;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public String getPinCode() throws RemoteException {
            return null;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public boolean isHiCarMediaPlaying() throws RemoteException {
            return false;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public boolean isSupportHiCarForBt(String str) throws RemoteException {
            return false;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public boolean isSupportMixLauncher() throws RemoteException {
            return false;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void nextMedia() throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void pauseMedia() throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void playMedia() throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void playOrPauseMedia() throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void previousMedia() throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void registerCallStateListener(IHiCarCallStateListener iHiCarCallStateListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void registerConnectStatusListener(IHiCarConnectStatusListener iHiCarConnectStatusListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void registerHiCarAppInfoChangeListener(IHiCarAppInfoChangeListener iHiCarAppInfoChangeListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void registerHiCarCallInfoListener(IHiCarCallInfoChangeListener iHiCarCallInfoChangeListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void registerHiCarProjectionChangeListener(IHiCarProjectionChangeListener iHiCarProjectionChangeListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void registerHiCarShowStartPageListener(IHiCarShowStartPageListener iHiCarShowStartPageListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void registerHiCarVRChangeListener(IHiCarVRChangeListener iHiCarVRChangeListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void registerMediaDataListener(IHiCarMediaDataListener iHiCarMediaDataListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void registerPinCodeChangeListener(IHiCarPinCodeChangeListener iHiCarPinCodeChangeListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public int sendAppInfo(String str, String str2) throws RemoteException {
            return 0;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public int sendLocalFile2HiCar(List<String> list, IHiCarTransmissionProgressListener iHiCarTransmissionProgressListener) throws RemoteException {
            return 0;
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void startHiCarApp(String str) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void unregisterCallStateListener(IHiCarCallStateListener iHiCarCallStateListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void unregisterConnectStatusListener(IHiCarConnectStatusListener iHiCarConnectStatusListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void unregisterHiCarAppInfoChangeListener(IHiCarAppInfoChangeListener iHiCarAppInfoChangeListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void unregisterHiCarCallInfoListener(IHiCarCallInfoChangeListener iHiCarCallInfoChangeListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void unregisterHiCarProjectionChangeListener(IHiCarProjectionChangeListener iHiCarProjectionChangeListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void unregisterHiCarShowStartPageListener(IHiCarShowStartPageListener iHiCarShowStartPageListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void unregisterHiCarVRChangeListener(IHiCarVRChangeListener iHiCarVRChangeListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void unregisterMediaDataListener(IHiCarMediaDataListener iHiCarMediaDataListener) throws RemoteException {
        }

        @Override // com.mega.hicar.IHiCarInfoInterface
        public void unregisterPinCodeChangeListener(IHiCarPinCodeChangeListener iHiCarPinCodeChangeListener) throws RemoteException {
        }
    }

    void connectPhone(String str) throws RemoteException;

    boolean controlHiCar(int i) throws RemoteException;

    int deletePhone(String str) throws RemoteException;

    int disconnectPhone(String str) throws RemoteException;

    List<AppInfo> getAllAppInfoList() throws RemoteException;

    String getConnectDeviceName() throws RemoteException;

    String getConnectPhoneID() throws RemoteException;

    int getConnectionType() throws RemoteException;

    String getHiCarCallInfo() throws RemoteException;

    int getHiCarCallState() throws RemoteException;

    String getHiCarMediaData() throws RemoteException;

    int getHiCarProjectionState() throws RemoteException;

    int getHiCarVRState() throws RemoteException;

    String getLastAppPackageName() throws RemoteException;

    List<PhoneInfo> getPhoneList() throws RemoteException;

    String getPinCode() throws RemoteException;

    boolean isHiCarMediaPlaying() throws RemoteException;

    boolean isSupportHiCarForBt(String str) throws RemoteException;

    boolean isSupportMixLauncher() throws RemoteException;

    void nextMedia() throws RemoteException;

    void pauseMedia() throws RemoteException;

    void playMedia() throws RemoteException;

    void playOrPauseMedia() throws RemoteException;

    void previousMedia() throws RemoteException;

    void registerCallStateListener(IHiCarCallStateListener iHiCarCallStateListener) throws RemoteException;

    void registerConnectStatusListener(IHiCarConnectStatusListener iHiCarConnectStatusListener) throws RemoteException;

    void registerHiCarAppInfoChangeListener(IHiCarAppInfoChangeListener iHiCarAppInfoChangeListener) throws RemoteException;

    void registerHiCarCallInfoListener(IHiCarCallInfoChangeListener iHiCarCallInfoChangeListener) throws RemoteException;

    void registerHiCarProjectionChangeListener(IHiCarProjectionChangeListener iHiCarProjectionChangeListener) throws RemoteException;

    void registerHiCarShowStartPageListener(IHiCarShowStartPageListener iHiCarShowStartPageListener) throws RemoteException;

    void registerHiCarVRChangeListener(IHiCarVRChangeListener iHiCarVRChangeListener) throws RemoteException;

    void registerMediaDataListener(IHiCarMediaDataListener iHiCarMediaDataListener) throws RemoteException;

    void registerPinCodeChangeListener(IHiCarPinCodeChangeListener iHiCarPinCodeChangeListener) throws RemoteException;

    int sendAppInfo(String str, String str2) throws RemoteException;

    int sendLocalFile2HiCar(List<String> list, IHiCarTransmissionProgressListener iHiCarTransmissionProgressListener) throws RemoteException;

    void startHiCarApp(String str) throws RemoteException;

    void unregisterCallStateListener(IHiCarCallStateListener iHiCarCallStateListener) throws RemoteException;

    void unregisterConnectStatusListener(IHiCarConnectStatusListener iHiCarConnectStatusListener) throws RemoteException;

    void unregisterHiCarAppInfoChangeListener(IHiCarAppInfoChangeListener iHiCarAppInfoChangeListener) throws RemoteException;

    void unregisterHiCarCallInfoListener(IHiCarCallInfoChangeListener iHiCarCallInfoChangeListener) throws RemoteException;

    void unregisterHiCarProjectionChangeListener(IHiCarProjectionChangeListener iHiCarProjectionChangeListener) throws RemoteException;

    void unregisterHiCarShowStartPageListener(IHiCarShowStartPageListener iHiCarShowStartPageListener) throws RemoteException;

    void unregisterHiCarVRChangeListener(IHiCarVRChangeListener iHiCarVRChangeListener) throws RemoteException;

    void unregisterMediaDataListener(IHiCarMediaDataListener iHiCarMediaDataListener) throws RemoteException;

    void unregisterPinCodeChangeListener(IHiCarPinCodeChangeListener iHiCarPinCodeChangeListener) throws RemoteException;

    public static abstract class Stub extends Binder implements IHiCarInfoInterface {
        private static final String DESCRIPTOR = "com.mega.hicar.IHiCarInfoInterface";
        static final int TRANSACTION_connectPhone = 3;
        static final int TRANSACTION_controlHiCar = 40;
        static final int TRANSACTION_deletePhone = 5;
        static final int TRANSACTION_disconnectPhone = 4;
        static final int TRANSACTION_getAllAppInfoList = 26;
        static final int TRANSACTION_getConnectDeviceName = 31;
        static final int TRANSACTION_getConnectPhoneID = 2;
        static final int TRANSACTION_getConnectionType = 6;
        static final int TRANSACTION_getHiCarCallInfo = 41;
        static final int TRANSACTION_getHiCarCallState = 22;
        static final int TRANSACTION_getHiCarMediaData = 42;
        static final int TRANSACTION_getHiCarProjectionState = 44;
        static final int TRANSACTION_getHiCarVRState = 43;
        static final int TRANSACTION_getLastAppPackageName = 27;
        static final int TRANSACTION_getPhoneList = 1;
        static final int TRANSACTION_getPinCode = 23;
        static final int TRANSACTION_isHiCarMediaPlaying = 30;
        static final int TRANSACTION_isSupportHiCarForBt = 29;
        static final int TRANSACTION_isSupportMixLauncher = 24;
        static final int TRANSACTION_nextMedia = 20;
        static final int TRANSACTION_pauseMedia = 33;
        static final int TRANSACTION_playMedia = 32;
        static final int TRANSACTION_playOrPauseMedia = 21;
        static final int TRANSACTION_previousMedia = 19;
        static final int TRANSACTION_registerCallStateListener = 9;
        static final int TRANSACTION_registerConnectStatusListener = 7;
        static final int TRANSACTION_registerHiCarAppInfoChangeListener = 15;
        static final int TRANSACTION_registerHiCarCallInfoListener = 34;
        static final int TRANSACTION_registerHiCarProjectionChangeListener = 38;
        static final int TRANSACTION_registerHiCarShowStartPageListener = 17;
        static final int TRANSACTION_registerHiCarVRChangeListener = 36;
        static final int TRANSACTION_registerMediaDataListener = 11;
        static final int TRANSACTION_registerPinCodeChangeListener = 13;
        static final int TRANSACTION_sendAppInfo = 25;
        static final int TRANSACTION_sendLocalFile2HiCar = 45;
        static final int TRANSACTION_startHiCarApp = 28;
        static final int TRANSACTION_unregisterCallStateListener = 10;
        static final int TRANSACTION_unregisterConnectStatusListener = 8;
        static final int TRANSACTION_unregisterHiCarAppInfoChangeListener = 16;
        static final int TRANSACTION_unregisterHiCarCallInfoListener = 35;
        static final int TRANSACTION_unregisterHiCarProjectionChangeListener = 39;
        static final int TRANSACTION_unregisterHiCarShowStartPageListener = 18;
        static final int TRANSACTION_unregisterHiCarVRChangeListener = 37;
        static final int TRANSACTION_unregisterMediaDataListener = 12;
        static final int TRANSACTION_unregisterPinCodeChangeListener = 14;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IHiCarInfoInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IHiCarInfoInterface)) {
                return (IHiCarInfoInterface) iInterfaceQueryLocalInterface;
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
                    List<PhoneInfo> phoneList = getPhoneList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(phoneList);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String connectPhoneID = getConnectPhoneID();
                    parcel2.writeNoException();
                    parcel2.writeString(connectPhoneID);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    connectPhone(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDisconnectPhone = disconnectPhone(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iDisconnectPhone);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDeletePhone = deletePhone(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iDeletePhone);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int connectionType = getConnectionType();
                    parcel2.writeNoException();
                    parcel2.writeInt(connectionType);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerConnectStatusListener(IHiCarConnectStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterConnectStatusListener(IHiCarConnectStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallStateListener(IHiCarCallStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallStateListener(IHiCarCallStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMediaDataListener(IHiCarMediaDataListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMediaDataListener(IHiCarMediaDataListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerPinCodeChangeListener(IHiCarPinCodeChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPinCodeChangeListener(IHiCarPinCodeChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerHiCarAppInfoChangeListener(IHiCarAppInfoChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterHiCarAppInfoChangeListener(IHiCarAppInfoChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerHiCarShowStartPageListener(IHiCarShowStartPageListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterHiCarShowStartPageListener(IHiCarShowStartPageListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    previousMedia();
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    nextMedia();
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    playOrPauseMedia();
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int hiCarCallState = getHiCarCallState();
                    parcel2.writeNoException();
                    parcel2.writeInt(hiCarCallState);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    String pinCode = getPinCode();
                    parcel2.writeNoException();
                    parcel2.writeString(pinCode);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSupportMixLauncher = isSupportMixLauncher();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSupportMixLauncher ? 1 : 0);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSendAppInfo = sendAppInfo(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iSendAppInfo);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<AppInfo> allAppInfoList = getAllAppInfoList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allAppInfoList);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    String lastAppPackageName = getLastAppPackageName();
                    parcel2.writeNoException();
                    parcel2.writeString(lastAppPackageName);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    startHiCarApp(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSupportHiCarForBt = isSupportHiCarForBt(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSupportHiCarForBt ? 1 : 0);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsHiCarMediaPlaying = isHiCarMediaPlaying();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsHiCarMediaPlaying ? 1 : 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    String connectDeviceName = getConnectDeviceName();
                    parcel2.writeNoException();
                    parcel2.writeString(connectDeviceName);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    playMedia();
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    pauseMedia();
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerHiCarCallInfoListener(IHiCarCallInfoChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterHiCarCallInfoListener(IHiCarCallInfoChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerHiCarVRChangeListener(IHiCarVRChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterHiCarVRChangeListener(IHiCarVRChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerHiCarProjectionChangeListener(IHiCarProjectionChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterHiCarProjectionChangeListener(IHiCarProjectionChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zControlHiCar = controlHiCar(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zControlHiCar ? 1 : 0);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    String hiCarCallInfo = getHiCarCallInfo();
                    parcel2.writeNoException();
                    parcel2.writeString(hiCarCallInfo);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    String hiCarMediaData = getHiCarMediaData();
                    parcel2.writeNoException();
                    parcel2.writeString(hiCarMediaData);
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    int hiCarVRState = getHiCarVRState();
                    parcel2.writeNoException();
                    parcel2.writeInt(hiCarVRState);
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    int hiCarProjectionState = getHiCarProjectionState();
                    parcel2.writeNoException();
                    parcel2.writeInt(hiCarProjectionState);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSendLocalFile2HiCar = sendLocalFile2HiCar(parcel.createStringArrayList(), IHiCarTransmissionProgressListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iSendLocalFile2HiCar);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IHiCarInfoInterface {
            public static IHiCarInfoInterface sDefaultImpl;
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

            @Override // com.mega.hicar.IHiCarInfoInterface
            public List<PhoneInfo> getPhoneList() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPhoneList();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(PhoneInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public String getConnectPhoneID() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getConnectPhoneID();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void connectPhone(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().connectPhone(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public int disconnectPhone(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().disconnectPhone(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public int deletePhone(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().deletePhone(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public int getConnectionType() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getConnectionType();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void registerConnectStatusListener(IHiCarConnectStatusListener iHiCarConnectStatusListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarConnectStatusListener != null ? iHiCarConnectStatusListener.asBinder() : null);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerConnectStatusListener(iHiCarConnectStatusListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void unregisterConnectStatusListener(IHiCarConnectStatusListener iHiCarConnectStatusListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarConnectStatusListener != null ? iHiCarConnectStatusListener.asBinder() : null);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterConnectStatusListener(iHiCarConnectStatusListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void registerCallStateListener(IHiCarCallStateListener iHiCarCallStateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarCallStateListener != null ? iHiCarCallStateListener.asBinder() : null);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCallStateListener(iHiCarCallStateListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void unregisterCallStateListener(IHiCarCallStateListener iHiCarCallStateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarCallStateListener != null ? iHiCarCallStateListener.asBinder() : null);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCallStateListener(iHiCarCallStateListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void registerMediaDataListener(IHiCarMediaDataListener iHiCarMediaDataListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarMediaDataListener != null ? iHiCarMediaDataListener.asBinder() : null);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerMediaDataListener(iHiCarMediaDataListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void unregisterMediaDataListener(IHiCarMediaDataListener iHiCarMediaDataListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarMediaDataListener != null ? iHiCarMediaDataListener.asBinder() : null);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterMediaDataListener(iHiCarMediaDataListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void registerPinCodeChangeListener(IHiCarPinCodeChangeListener iHiCarPinCodeChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarPinCodeChangeListener != null ? iHiCarPinCodeChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerPinCodeChangeListener(iHiCarPinCodeChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void unregisterPinCodeChangeListener(IHiCarPinCodeChangeListener iHiCarPinCodeChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarPinCodeChangeListener != null ? iHiCarPinCodeChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterPinCodeChangeListener(iHiCarPinCodeChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void registerHiCarAppInfoChangeListener(IHiCarAppInfoChangeListener iHiCarAppInfoChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarAppInfoChangeListener != null ? iHiCarAppInfoChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerHiCarAppInfoChangeListener(iHiCarAppInfoChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void unregisterHiCarAppInfoChangeListener(IHiCarAppInfoChangeListener iHiCarAppInfoChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarAppInfoChangeListener != null ? iHiCarAppInfoChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterHiCarAppInfoChangeListener(iHiCarAppInfoChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void registerHiCarShowStartPageListener(IHiCarShowStartPageListener iHiCarShowStartPageListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarShowStartPageListener != null ? iHiCarShowStartPageListener.asBinder() : null);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerHiCarShowStartPageListener(iHiCarShowStartPageListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void unregisterHiCarShowStartPageListener(IHiCarShowStartPageListener iHiCarShowStartPageListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarShowStartPageListener != null ? iHiCarShowStartPageListener.asBinder() : null);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterHiCarShowStartPageListener(iHiCarShowStartPageListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void previousMedia() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().previousMedia();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void nextMedia() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().nextMedia();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void playOrPauseMedia() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().playOrPauseMedia();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public int getHiCarCallState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getHiCarCallState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public String getPinCode() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPinCode();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public boolean isSupportMixLauncher() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isSupportMixLauncher();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public int sendAppInfo(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().sendAppInfo(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public List<AppInfo> getAllAppInfoList() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAllAppInfoList();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(AppInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public String getLastAppPackageName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLastAppPackageName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void startHiCarApp(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(28, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startHiCarApp(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public boolean isSupportHiCarForBt(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isSupportHiCarForBt(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public boolean isHiCarMediaPlaying() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isHiCarMediaPlaying();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public String getConnectDeviceName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getConnectDeviceName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void playMedia() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().playMedia();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void pauseMedia() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(33, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().pauseMedia();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void registerHiCarCallInfoListener(IHiCarCallInfoChangeListener iHiCarCallInfoChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarCallInfoChangeListener != null ? iHiCarCallInfoChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(34, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerHiCarCallInfoListener(iHiCarCallInfoChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void unregisterHiCarCallInfoListener(IHiCarCallInfoChangeListener iHiCarCallInfoChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarCallInfoChangeListener != null ? iHiCarCallInfoChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterHiCarCallInfoListener(iHiCarCallInfoChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void registerHiCarVRChangeListener(IHiCarVRChangeListener iHiCarVRChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarVRChangeListener != null ? iHiCarVRChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(36, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerHiCarVRChangeListener(iHiCarVRChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void unregisterHiCarVRChangeListener(IHiCarVRChangeListener iHiCarVRChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarVRChangeListener != null ? iHiCarVRChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(37, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterHiCarVRChangeListener(iHiCarVRChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void registerHiCarProjectionChangeListener(IHiCarProjectionChangeListener iHiCarProjectionChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarProjectionChangeListener != null ? iHiCarProjectionChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(38, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerHiCarProjectionChangeListener(iHiCarProjectionChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public void unregisterHiCarProjectionChangeListener(IHiCarProjectionChangeListener iHiCarProjectionChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHiCarProjectionChangeListener != null ? iHiCarProjectionChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(39, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterHiCarProjectionChangeListener(iHiCarProjectionChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public boolean controlHiCar(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(40, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().controlHiCar(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public String getHiCarCallInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(41, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getHiCarCallInfo();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public String getHiCarMediaData() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(42, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getHiCarMediaData();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public int getHiCarVRState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(43, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getHiCarVRState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public int getHiCarProjectionState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(44, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getHiCarProjectionState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.hicar.IHiCarInfoInterface
            public int sendLocalFile2HiCar(List<String> list, IHiCarTransmissionProgressListener iHiCarTransmissionProgressListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeStrongBinder(iHiCarTransmissionProgressListener != null ? iHiCarTransmissionProgressListener.asBinder() : null);
                    if (!this.mRemote.transact(45, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().sendLocalFile2HiCar(list, iHiCarTransmissionProgressListener);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IHiCarInfoInterface iHiCarInfoInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iHiCarInfoInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iHiCarInfoInterface;
            return true;
        }

        public static IHiCarInfoInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
