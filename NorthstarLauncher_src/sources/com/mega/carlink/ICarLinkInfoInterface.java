package com.mega.carlink;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.mega.carlink.model.AppInfo;
import com.mega.carlink.model.CallInfo;
import com.mega.carlink.model.NavigationInfo;
import com.mega.carlink.model.PhoneInfo;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface ICarLinkInfoInterface extends IInterface {

    public static class Default implements ICarLinkInfoInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void connectPhone(String str) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public boolean controlCarLink(int i) throws RemoteException {
            return false;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public int deletePhone(String str) throws RemoteException {
            return 0;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public int disconnectPhone(String str) throws RemoteException {
            return 0;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public List<AppInfo> getAllAppInfoList() throws RemoteException {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public String getBtAddressForPhoneId(String str) throws RemoteException {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public CallInfo getCarLinkCallInfo() throws RemoteException {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public int getCarLinkCallState() throws RemoteException {
            return 0;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public NavigationInfo getCarLinkNavigationInfo() throws RemoteException {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public int getCarLinkProjectionState() throws RemoteException {
            return 0;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public int getCarLinkVRState() throws RemoteException {
            return 0;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public String getConnectPhoneID() throws RemoteException {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public int getConnectStatus() throws RemoteException {
            return 0;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public int getConnectionType() throws RemoteException {
            return 0;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public String getLastAppPackageName() throws RemoteException {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public List<PhoneInfo> getPhoneList() throws RemoteException {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public String getPhoneName() throws RemoteException {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public String getPinCode() throws RemoteException {
            return null;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public boolean isCarlinkMediaPlaying() throws RemoteException {
            return false;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public boolean isConnectedDevice(String str) throws RemoteException {
            return false;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public boolean isDisconnectByUser() throws RemoteException {
            return false;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public boolean isSupportMixLauncher() throws RemoteException {
            return false;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void nextMedia() throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void playOrPauseMedia() throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void previousMedia() throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerCallStateListener(ICarLinkCallStateListener iCarLinkCallStateListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerCarLinkAppInfoChangeListener(ICarLinkAppInfoChangeListener iCarLinkAppInfoChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerCarLinkCallInfoListener(ICarLinkCallInfoChangeListener iCarLinkCallInfoChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerCarLinkConnectingProgressListener(ICarLinkConnectingProgressListener iCarLinkConnectingProgressListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerCarLinkNavigationInfoListener(ICarLinkNavigationInfoChangeListener iCarLinkNavigationInfoChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerCarLinkProjectionChangeListener(ICarLinkProjectionChangeListener iCarLinkProjectionChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerCarLinkShowStartPageListener(ICarLinkShowStartPageListener iCarLinkShowStartPageListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerCarLinkVRChangeListener(ICarLinkVRChangeListener iCarLinkVRChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerConnectStatusListener(IConnectStatusListener iConnectStatusListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerMediaDataListener(IMediaInfoListener iMediaInfoListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void registerPinCodeChangeListener(ICarLinkPinCodeChangeListener iCarLinkPinCodeChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public boolean startCarLinkApp(String str, int i, int i2) throws RemoteException {
            return false;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public boolean startCarLinkAppForArgs(String str, int i, boolean z) throws RemoteException {
            return false;
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void startCarlinkApp(int i) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void startMainCarLinkApp(String str) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterCallStateListener(ICarLinkCallStateListener iCarLinkCallStateListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterCarLinkAppInfoChangeListener(ICarLinkAppInfoChangeListener iCarLinkAppInfoChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterCarLinkCallInfoListener(ICarLinkCallInfoChangeListener iCarLinkCallInfoChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterCarLinkConnectingProgressListener(ICarLinkConnectingProgressListener iCarLinkConnectingProgressListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterCarLinkNavigationInfoListener(ICarLinkNavigationInfoChangeListener iCarLinkNavigationInfoChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterCarLinkProjectionChangeListener(ICarLinkProjectionChangeListener iCarLinkProjectionChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterCarLinkShowStartPageListener(ICarLinkShowStartPageListener iCarLinkShowStartPageListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterCarLinkVRChangeListener(ICarLinkVRChangeListener iCarLinkVRChangeListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterConnectStatusListener(IConnectStatusListener iConnectStatusListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterMediaDataListener(IMediaInfoListener iMediaInfoListener) throws RemoteException {
        }

        @Override // com.mega.carlink.ICarLinkInfoInterface
        public void unregisterPinCodeChangeListener(ICarLinkPinCodeChangeListener iCarLinkPinCodeChangeListener) throws RemoteException {
        }
    }

    void connectPhone(String str) throws RemoteException;

    boolean controlCarLink(int i) throws RemoteException;

    int deletePhone(String str) throws RemoteException;

    int disconnectPhone(String str) throws RemoteException;

    List<AppInfo> getAllAppInfoList() throws RemoteException;

    String getBtAddressForPhoneId(String str) throws RemoteException;

    CallInfo getCarLinkCallInfo() throws RemoteException;

    int getCarLinkCallState() throws RemoteException;

    NavigationInfo getCarLinkNavigationInfo() throws RemoteException;

    int getCarLinkProjectionState() throws RemoteException;

    int getCarLinkVRState() throws RemoteException;

    String getConnectPhoneID() throws RemoteException;

    int getConnectStatus() throws RemoteException;

    int getConnectionType() throws RemoteException;

    String getLastAppPackageName() throws RemoteException;

    List<PhoneInfo> getPhoneList() throws RemoteException;

    String getPhoneName() throws RemoteException;

    String getPinCode() throws RemoteException;

    boolean isCarlinkMediaPlaying() throws RemoteException;

    boolean isConnectedDevice(String str) throws RemoteException;

    boolean isDisconnectByUser() throws RemoteException;

    boolean isSupportMixLauncher() throws RemoteException;

    void nextMedia() throws RemoteException;

    void playOrPauseMedia() throws RemoteException;

    void previousMedia() throws RemoteException;

    void registerCallStateListener(ICarLinkCallStateListener iCarLinkCallStateListener) throws RemoteException;

    void registerCarLinkAppInfoChangeListener(ICarLinkAppInfoChangeListener iCarLinkAppInfoChangeListener) throws RemoteException;

    void registerCarLinkCallInfoListener(ICarLinkCallInfoChangeListener iCarLinkCallInfoChangeListener) throws RemoteException;

    void registerCarLinkConnectingProgressListener(ICarLinkConnectingProgressListener iCarLinkConnectingProgressListener) throws RemoteException;

    void registerCarLinkNavigationInfoListener(ICarLinkNavigationInfoChangeListener iCarLinkNavigationInfoChangeListener) throws RemoteException;

    void registerCarLinkProjectionChangeListener(ICarLinkProjectionChangeListener iCarLinkProjectionChangeListener) throws RemoteException;

    void registerCarLinkShowStartPageListener(ICarLinkShowStartPageListener iCarLinkShowStartPageListener) throws RemoteException;

    void registerCarLinkVRChangeListener(ICarLinkVRChangeListener iCarLinkVRChangeListener) throws RemoteException;

    void registerConnectStatusListener(IConnectStatusListener iConnectStatusListener) throws RemoteException;

    void registerMediaDataListener(IMediaInfoListener iMediaInfoListener) throws RemoteException;

    void registerPinCodeChangeListener(ICarLinkPinCodeChangeListener iCarLinkPinCodeChangeListener) throws RemoteException;

    boolean startCarLinkApp(String str, int i, int i2) throws RemoteException;

    boolean startCarLinkAppForArgs(String str, int i, boolean z) throws RemoteException;

    void startCarlinkApp(int i) throws RemoteException;

    void startMainCarLinkApp(String str) throws RemoteException;

    void unregisterCallStateListener(ICarLinkCallStateListener iCarLinkCallStateListener) throws RemoteException;

    void unregisterCarLinkAppInfoChangeListener(ICarLinkAppInfoChangeListener iCarLinkAppInfoChangeListener) throws RemoteException;

    void unregisterCarLinkCallInfoListener(ICarLinkCallInfoChangeListener iCarLinkCallInfoChangeListener) throws RemoteException;

    void unregisterCarLinkConnectingProgressListener(ICarLinkConnectingProgressListener iCarLinkConnectingProgressListener) throws RemoteException;

    void unregisterCarLinkNavigationInfoListener(ICarLinkNavigationInfoChangeListener iCarLinkNavigationInfoChangeListener) throws RemoteException;

    void unregisterCarLinkProjectionChangeListener(ICarLinkProjectionChangeListener iCarLinkProjectionChangeListener) throws RemoteException;

    void unregisterCarLinkShowStartPageListener(ICarLinkShowStartPageListener iCarLinkShowStartPageListener) throws RemoteException;

    void unregisterCarLinkVRChangeListener(ICarLinkVRChangeListener iCarLinkVRChangeListener) throws RemoteException;

    void unregisterConnectStatusListener(IConnectStatusListener iConnectStatusListener) throws RemoteException;

    void unregisterMediaDataListener(IMediaInfoListener iMediaInfoListener) throws RemoteException;

    void unregisterPinCodeChangeListener(ICarLinkPinCodeChangeListener iCarLinkPinCodeChangeListener) throws RemoteException;

    public static abstract class Stub extends Binder implements ICarLinkInfoInterface {
        private static final String DESCRIPTOR = "com.mega.carlink.ICarLinkInfoInterface";
        static final int TRANSACTION_connectPhone = 3;
        static final int TRANSACTION_controlCarLink = 47;
        static final int TRANSACTION_deletePhone = 5;
        static final int TRANSACTION_disconnectPhone = 4;
        static final int TRANSACTION_getAllAppInfoList = 27;
        static final int TRANSACTION_getBtAddressForPhoneId = 33;
        static final int TRANSACTION_getCarLinkCallInfo = 48;
        static final int TRANSACTION_getCarLinkCallState = 22;
        static final int TRANSACTION_getCarLinkNavigationInfo = 49;
        static final int TRANSACTION_getCarLinkProjectionState = 51;
        static final int TRANSACTION_getCarLinkVRState = 50;
        static final int TRANSACTION_getConnectPhoneID = 2;
        static final int TRANSACTION_getConnectStatus = 31;
        static final int TRANSACTION_getConnectionType = 6;
        static final int TRANSACTION_getLastAppPackageName = 28;
        static final int TRANSACTION_getPhoneList = 1;
        static final int TRANSACTION_getPhoneName = 30;
        static final int TRANSACTION_getPinCode = 23;
        static final int TRANSACTION_isCarlinkMediaPlaying = 37;
        static final int TRANSACTION_isConnectedDevice = 32;
        static final int TRANSACTION_isDisconnectByUser = 34;
        static final int TRANSACTION_isSupportMixLauncher = 24;
        static final int TRANSACTION_nextMedia = 20;
        static final int TRANSACTION_playOrPauseMedia = 21;
        static final int TRANSACTION_previousMedia = 19;
        static final int TRANSACTION_registerCallStateListener = 9;
        static final int TRANSACTION_registerCarLinkAppInfoChangeListener = 15;
        static final int TRANSACTION_registerCarLinkCallInfoListener = 39;
        static final int TRANSACTION_registerCarLinkConnectingProgressListener = 35;
        static final int TRANSACTION_registerCarLinkNavigationInfoListener = 41;
        static final int TRANSACTION_registerCarLinkProjectionChangeListener = 45;
        static final int TRANSACTION_registerCarLinkShowStartPageListener = 17;
        static final int TRANSACTION_registerCarLinkVRChangeListener = 43;
        static final int TRANSACTION_registerConnectStatusListener = 7;
        static final int TRANSACTION_registerMediaDataListener = 11;
        static final int TRANSACTION_registerPinCodeChangeListener = 13;
        static final int TRANSACTION_startCarLinkApp = 25;
        static final int TRANSACTION_startCarLinkAppForArgs = 26;
        static final int TRANSACTION_startCarlinkApp = 38;
        static final int TRANSACTION_startMainCarLinkApp = 29;
        static final int TRANSACTION_unregisterCallStateListener = 10;
        static final int TRANSACTION_unregisterCarLinkAppInfoChangeListener = 16;
        static final int TRANSACTION_unregisterCarLinkCallInfoListener = 40;
        static final int TRANSACTION_unregisterCarLinkConnectingProgressListener = 36;
        static final int TRANSACTION_unregisterCarLinkNavigationInfoListener = 42;
        static final int TRANSACTION_unregisterCarLinkProjectionChangeListener = 46;
        static final int TRANSACTION_unregisterCarLinkShowStartPageListener = 18;
        static final int TRANSACTION_unregisterCarLinkVRChangeListener = 44;
        static final int TRANSACTION_unregisterConnectStatusListener = 8;
        static final int TRANSACTION_unregisterMediaDataListener = 12;
        static final int TRANSACTION_unregisterPinCodeChangeListener = 14;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarLinkInfoInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarLinkInfoInterface)) {
                return (ICarLinkInfoInterface) iInterfaceQueryLocalInterface;
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
                    registerConnectStatusListener(IConnectStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterConnectStatusListener(IConnectStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallStateListener(ICarLinkCallStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallStateListener(ICarLinkCallStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMediaDataListener(IMediaInfoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMediaDataListener(IMediaInfoListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerPinCodeChangeListener(ICarLinkPinCodeChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPinCodeChangeListener(ICarLinkPinCodeChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarLinkAppInfoChangeListener(ICarLinkAppInfoChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarLinkAppInfoChangeListener(ICarLinkAppInfoChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarLinkShowStartPageListener(ICarLinkShowStartPageListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarLinkShowStartPageListener(ICarLinkShowStartPageListener.Stub.asInterface(parcel.readStrongBinder()));
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
                    int carLinkCallState = getCarLinkCallState();
                    parcel2.writeNoException();
                    parcel2.writeInt(carLinkCallState);
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
                    boolean zStartCarLinkApp = startCarLinkApp(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartCarLinkApp ? 1 : 0);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStartCarLinkAppForArgs = startCarLinkAppForArgs(parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartCarLinkAppForArgs ? 1 : 0);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<AppInfo> allAppInfoList = getAllAppInfoList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allAppInfoList);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    String lastAppPackageName = getLastAppPackageName();
                    parcel2.writeNoException();
                    parcel2.writeString(lastAppPackageName);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    startMainCarLinkApp(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    String phoneName = getPhoneName();
                    parcel2.writeNoException();
                    parcel2.writeString(phoneName);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    int connectStatus = getConnectStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(connectStatus);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsConnectedDevice = isConnectedDevice(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsConnectedDevice ? 1 : 0);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    String btAddressForPhoneId = getBtAddressForPhoneId(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(btAddressForPhoneId);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsDisconnectByUser = isDisconnectByUser();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsDisconnectByUser ? 1 : 0);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarLinkConnectingProgressListener(ICarLinkConnectingProgressListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarLinkConnectingProgressListener(ICarLinkConnectingProgressListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsCarlinkMediaPlaying = isCarlinkMediaPlaying();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsCarlinkMediaPlaying ? 1 : 0);
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    startCarlinkApp(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarLinkCallInfoListener(ICarLinkCallInfoChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarLinkCallInfoListener(ICarLinkCallInfoChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarLinkNavigationInfoListener(ICarLinkNavigationInfoChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarLinkNavigationInfoListener(ICarLinkNavigationInfoChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarLinkVRChangeListener(ICarLinkVRChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarLinkVRChangeListener(ICarLinkVRChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarLinkProjectionChangeListener(ICarLinkProjectionChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarLinkProjectionChangeListener(ICarLinkProjectionChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zControlCarLink = controlCarLink(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zControlCarLink ? 1 : 0);
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    CallInfo carLinkCallInfo = getCarLinkCallInfo();
                    parcel2.writeNoException();
                    if (carLinkCallInfo != null) {
                        parcel2.writeInt(1);
                        carLinkCallInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    NavigationInfo carLinkNavigationInfo = getCarLinkNavigationInfo();
                    parcel2.writeNoException();
                    if (carLinkNavigationInfo != null) {
                        parcel2.writeInt(1);
                        carLinkNavigationInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    int carLinkVRState = getCarLinkVRState();
                    parcel2.writeNoException();
                    parcel2.writeInt(carLinkVRState);
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    int carLinkProjectionState = getCarLinkProjectionState();
                    parcel2.writeNoException();
                    parcel2.writeInt(carLinkProjectionState);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements ICarLinkInfoInterface {
            public static ICarLinkInfoInterface sDefaultImpl;
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerConnectStatusListener(IConnectStatusListener iConnectStatusListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iConnectStatusListener != null ? iConnectStatusListener.asBinder() : null);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerConnectStatusListener(iConnectStatusListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterConnectStatusListener(IConnectStatusListener iConnectStatusListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iConnectStatusListener != null ? iConnectStatusListener.asBinder() : null);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterConnectStatusListener(iConnectStatusListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerCallStateListener(ICarLinkCallStateListener iCarLinkCallStateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkCallStateListener != null ? iCarLinkCallStateListener.asBinder() : null);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCallStateListener(iCarLinkCallStateListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterCallStateListener(ICarLinkCallStateListener iCarLinkCallStateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkCallStateListener != null ? iCarLinkCallStateListener.asBinder() : null);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCallStateListener(iCarLinkCallStateListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerMediaDataListener(IMediaInfoListener iMediaInfoListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMediaInfoListener != null ? iMediaInfoListener.asBinder() : null);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerMediaDataListener(iMediaInfoListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterMediaDataListener(IMediaInfoListener iMediaInfoListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMediaInfoListener != null ? iMediaInfoListener.asBinder() : null);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterMediaDataListener(iMediaInfoListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerPinCodeChangeListener(ICarLinkPinCodeChangeListener iCarLinkPinCodeChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkPinCodeChangeListener != null ? iCarLinkPinCodeChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerPinCodeChangeListener(iCarLinkPinCodeChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterPinCodeChangeListener(ICarLinkPinCodeChangeListener iCarLinkPinCodeChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkPinCodeChangeListener != null ? iCarLinkPinCodeChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterPinCodeChangeListener(iCarLinkPinCodeChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerCarLinkAppInfoChangeListener(ICarLinkAppInfoChangeListener iCarLinkAppInfoChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkAppInfoChangeListener != null ? iCarLinkAppInfoChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCarLinkAppInfoChangeListener(iCarLinkAppInfoChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterCarLinkAppInfoChangeListener(ICarLinkAppInfoChangeListener iCarLinkAppInfoChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkAppInfoChangeListener != null ? iCarLinkAppInfoChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCarLinkAppInfoChangeListener(iCarLinkAppInfoChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerCarLinkShowStartPageListener(ICarLinkShowStartPageListener iCarLinkShowStartPageListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkShowStartPageListener != null ? iCarLinkShowStartPageListener.asBinder() : null);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCarLinkShowStartPageListener(iCarLinkShowStartPageListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterCarLinkShowStartPageListener(ICarLinkShowStartPageListener iCarLinkShowStartPageListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkShowStartPageListener != null ? iCarLinkShowStartPageListener.asBinder() : null);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCarLinkShowStartPageListener(iCarLinkShowStartPageListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public int getCarLinkCallState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarLinkCallState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
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

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public boolean startCarLinkApp(String str, int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().startCarLinkApp(str, i, i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public boolean startCarLinkAppForArgs(String str, int i, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().startCarLinkAppForArgs(str, i, z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public List<AppInfo> getAllAppInfoList() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAllAppInfoList();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(AppInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public String getLastAppPackageName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(28, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLastAppPackageName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void startMainCarLinkApp(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startMainCarLinkApp(str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public String getPhoneName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPhoneName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public int getConnectStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getConnectStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public boolean isConnectedDevice(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isConnectedDevice(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public String getBtAddressForPhoneId(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(33, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBtAddressForPhoneId(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public boolean isDisconnectByUser() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(34, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isDisconnectByUser();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerCarLinkConnectingProgressListener(ICarLinkConnectingProgressListener iCarLinkConnectingProgressListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkConnectingProgressListener != null ? iCarLinkConnectingProgressListener.asBinder() : null);
                    if (!this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCarLinkConnectingProgressListener(iCarLinkConnectingProgressListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterCarLinkConnectingProgressListener(ICarLinkConnectingProgressListener iCarLinkConnectingProgressListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkConnectingProgressListener != null ? iCarLinkConnectingProgressListener.asBinder() : null);
                    if (!this.mRemote.transact(36, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCarLinkConnectingProgressListener(iCarLinkConnectingProgressListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public boolean isCarlinkMediaPlaying() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(37, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isCarlinkMediaPlaying();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void startCarlinkApp(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(38, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startCarlinkApp(i);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerCarLinkCallInfoListener(ICarLinkCallInfoChangeListener iCarLinkCallInfoChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkCallInfoChangeListener != null ? iCarLinkCallInfoChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(39, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCarLinkCallInfoListener(iCarLinkCallInfoChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterCarLinkCallInfoListener(ICarLinkCallInfoChangeListener iCarLinkCallInfoChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkCallInfoChangeListener != null ? iCarLinkCallInfoChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(40, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCarLinkCallInfoListener(iCarLinkCallInfoChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerCarLinkNavigationInfoListener(ICarLinkNavigationInfoChangeListener iCarLinkNavigationInfoChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkNavigationInfoChangeListener != null ? iCarLinkNavigationInfoChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(41, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCarLinkNavigationInfoListener(iCarLinkNavigationInfoChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterCarLinkNavigationInfoListener(ICarLinkNavigationInfoChangeListener iCarLinkNavigationInfoChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkNavigationInfoChangeListener != null ? iCarLinkNavigationInfoChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(42, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCarLinkNavigationInfoListener(iCarLinkNavigationInfoChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerCarLinkVRChangeListener(ICarLinkVRChangeListener iCarLinkVRChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkVRChangeListener != null ? iCarLinkVRChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(43, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCarLinkVRChangeListener(iCarLinkVRChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterCarLinkVRChangeListener(ICarLinkVRChangeListener iCarLinkVRChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkVRChangeListener != null ? iCarLinkVRChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(44, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCarLinkVRChangeListener(iCarLinkVRChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void registerCarLinkProjectionChangeListener(ICarLinkProjectionChangeListener iCarLinkProjectionChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkProjectionChangeListener != null ? iCarLinkProjectionChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(45, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCarLinkProjectionChangeListener(iCarLinkProjectionChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public void unregisterCarLinkProjectionChangeListener(ICarLinkProjectionChangeListener iCarLinkProjectionChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarLinkProjectionChangeListener != null ? iCarLinkProjectionChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(46, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCarLinkProjectionChangeListener(iCarLinkProjectionChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public boolean controlCarLink(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(47, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().controlCarLink(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public CallInfo getCarLinkCallInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(48, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarLinkCallInfo();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? CallInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public NavigationInfo getCarLinkNavigationInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(49, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarLinkNavigationInfo();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NavigationInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public int getCarLinkVRState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(50, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarLinkVRState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.carlink.ICarLinkInfoInterface
            public int getCarLinkProjectionState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(51, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarLinkProjectionState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICarLinkInfoInterface iCarLinkInfoInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iCarLinkInfoInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCarLinkInfoInterface;
            return true;
        }

        public static ICarLinkInfoInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
