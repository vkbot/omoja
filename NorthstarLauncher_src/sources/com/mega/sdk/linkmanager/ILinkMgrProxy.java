package com.mega.sdk.linkmanager;

import android.bluetooth.BluetoothDevice;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface ILinkMgrProxy extends IInterface {
    public static final String DESCRIPTOR = "com.mega.sdk.linkmanager.ILinkMgrProxy";

    public static class Default implements ILinkMgrProxy {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void connectCarPlay(int i, String str, boolean z) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void connectWiredAA(String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void connectWiredCarPlay(String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void connectWirelessAA(String str, int i) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void connectWirelessCarPlay(String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void connectedWirelessCarLink(String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void connectedWirelessHiCar(String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void deleteAndroidAutoDevice(String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public int deleteCarLinkDevice(String str) throws RemoteException {
            return 0;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void deleteCarPlayDevice(String str) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public int deleteHiCarDevice(String str) throws RemoteException {
            return 0;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void disconnectAndroidAuto() throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void disconnectCarLink() throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void disconnectCarPlay() throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void disconnectHiCar() throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public int getAndroidAutoConnectionState() throws RemoteException {
            return 0;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public int getAndroidAutoConnectionType() throws RemoteException {
            return 0;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public int getCarLinkConnectionStatus() throws RemoteException {
            return 0;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public int getCarPlayConnectionStatus() throws RemoteException {
            return 0;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public int getCarPlayDeviceBatteryLeve(String str) throws RemoteException {
            return 0;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getConnectedAADevice() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getConnectedCarLinkDevice() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getConnectedCarPlayDeviceInfo() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getConnectedHiCarDevice() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public int getConnectionType(int i) throws RemoteException {
            return 0;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getCurrentCarPlay() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public int getHiCarConnectionStatus() throws RemoteException {
            return 0;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getHistoryAndroidAutoDevices() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getHistoryCarLinkDevices() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getHistoryCarPlayDevices() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getHistoryHiCarDevices() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getWiredAndroidAutoDevice() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String getWiredCarPlayDevice() throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public boolean isAndroidAutoUIProjected() throws RemoteException {
            return false;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public boolean isCarLinkConnected() throws RemoteException {
            return false;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public boolean isCarPlayConnected() throws RemoteException {
            return false;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public boolean isHiCarConnected() throws RemoteException {
            return false;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public boolean isSupportWirelessAndroidAuto(String str) throws RemoteException {
            return false;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public boolean isSupportWirelessCarPlay(BluetoothDevice bluetoothDevice) throws RemoteException {
            return false;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public String queryDeviceConnectHistory(String str) throws RemoteException {
            return null;
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void registerAndroidAutoConnectionStateListener(IAndroidAutoAIDL iAndroidAutoAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void registerCarPlayLinkListener(ICarPlayAIDL iCarPlayAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void registerHiCarLinkListener(IHiCarAIDL iHiCarAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void registerICCOACarLinkListener(IICCOACarLinkAIDL iICCOACarLinkAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void registerUsbDeviceListener(IUsbDeviceAIDL iUsbDeviceAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void registerVideoFocusListener(IVideoFocusAIDL iVideoFocusAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void respondToCarPlayConnectionByIphone(int i, BluetoothDevice bluetoothDevice) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void startAndroidAutoUI() throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void startCarPlayUI() throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void unregisterAndroidAutoConnectionStateListener(IAndroidAutoAIDL iAndroidAutoAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void unregisterCarPlayLinkListener(ICarPlayAIDL iCarPlayAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void unregisterHiCarLinkListener(IHiCarAIDL iHiCarAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void unregisterICCOACarLinkListener(IICCOACarLinkAIDL iICCOACarLinkAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void unregisterUsbDeviceListener(IUsbDeviceAIDL iUsbDeviceAIDL) throws RemoteException {
        }

        @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
        public void unregisterVideoFocusListener(IVideoFocusAIDL iVideoFocusAIDL) throws RemoteException {
        }
    }

    void connectCarPlay(int i, String str, boolean z) throws RemoteException;

    void connectWiredAA(String str) throws RemoteException;

    void connectWiredCarPlay(String str) throws RemoteException;

    void connectWirelessAA(String str, int i) throws RemoteException;

    void connectWirelessCarPlay(String str) throws RemoteException;

    void connectedWirelessCarLink(String str) throws RemoteException;

    void connectedWirelessHiCar(String str) throws RemoteException;

    void deleteAndroidAutoDevice(String str) throws RemoteException;

    int deleteCarLinkDevice(String str) throws RemoteException;

    void deleteCarPlayDevice(String str) throws RemoteException;

    int deleteHiCarDevice(String str) throws RemoteException;

    void disconnectAndroidAuto() throws RemoteException;

    void disconnectCarLink() throws RemoteException;

    void disconnectCarPlay() throws RemoteException;

    void disconnectHiCar() throws RemoteException;

    int getAndroidAutoConnectionState() throws RemoteException;

    int getAndroidAutoConnectionType() throws RemoteException;

    int getCarLinkConnectionStatus() throws RemoteException;

    int getCarPlayConnectionStatus() throws RemoteException;

    int getCarPlayDeviceBatteryLeve(String str) throws RemoteException;

    String getConnectedAADevice() throws RemoteException;

    String getConnectedCarLinkDevice() throws RemoteException;

    String getConnectedCarPlayDeviceInfo() throws RemoteException;

    String getConnectedHiCarDevice() throws RemoteException;

    int getConnectionType(int i) throws RemoteException;

    String getCurrentCarPlay() throws RemoteException;

    int getHiCarConnectionStatus() throws RemoteException;

    String getHistoryAndroidAutoDevices() throws RemoteException;

    String getHistoryCarLinkDevices() throws RemoteException;

    String getHistoryCarPlayDevices() throws RemoteException;

    String getHistoryHiCarDevices() throws RemoteException;

    String getWiredAndroidAutoDevice() throws RemoteException;

    String getWiredCarPlayDevice() throws RemoteException;

    boolean isAndroidAutoUIProjected() throws RemoteException;

    boolean isCarLinkConnected() throws RemoteException;

    boolean isCarPlayConnected() throws RemoteException;

    boolean isHiCarConnected() throws RemoteException;

    boolean isSupportWirelessAndroidAuto(String str) throws RemoteException;

    boolean isSupportWirelessCarPlay(BluetoothDevice bluetoothDevice) throws RemoteException;

    String queryDeviceConnectHistory(String str) throws RemoteException;

    void registerAndroidAutoConnectionStateListener(IAndroidAutoAIDL iAndroidAutoAIDL) throws RemoteException;

    void registerCarPlayLinkListener(ICarPlayAIDL iCarPlayAIDL) throws RemoteException;

    void registerHiCarLinkListener(IHiCarAIDL iHiCarAIDL) throws RemoteException;

    void registerICCOACarLinkListener(IICCOACarLinkAIDL iICCOACarLinkAIDL) throws RemoteException;

    void registerUsbDeviceListener(IUsbDeviceAIDL iUsbDeviceAIDL) throws RemoteException;

    void registerVideoFocusListener(IVideoFocusAIDL iVideoFocusAIDL) throws RemoteException;

    void respondToCarPlayConnectionByIphone(int i, BluetoothDevice bluetoothDevice) throws RemoteException;

    void startAndroidAutoUI() throws RemoteException;

    void startCarPlayUI() throws RemoteException;

    void unregisterAndroidAutoConnectionStateListener(IAndroidAutoAIDL iAndroidAutoAIDL) throws RemoteException;

    void unregisterCarPlayLinkListener(ICarPlayAIDL iCarPlayAIDL) throws RemoteException;

    void unregisterHiCarLinkListener(IHiCarAIDL iHiCarAIDL) throws RemoteException;

    void unregisterICCOACarLinkListener(IICCOACarLinkAIDL iICCOACarLinkAIDL) throws RemoteException;

    void unregisterUsbDeviceListener(IUsbDeviceAIDL iUsbDeviceAIDL) throws RemoteException;

    void unregisterVideoFocusListener(IVideoFocusAIDL iVideoFocusAIDL) throws RemoteException;

    public static abstract class Stub extends Binder implements ILinkMgrProxy {
        static final int TRANSACTION_connectCarPlay = 53;
        static final int TRANSACTION_connectWiredAA = 40;
        static final int TRANSACTION_connectWiredCarPlay = 16;
        static final int TRANSACTION_connectWirelessAA = 39;
        static final int TRANSACTION_connectWirelessCarPlay = 7;
        static final int TRANSACTION_connectedWirelessCarLink = 32;
        static final int TRANSACTION_connectedWirelessHiCar = 23;
        static final int TRANSACTION_deleteAndroidAutoDevice = 47;
        static final int TRANSACTION_deleteCarLinkDevice = 34;
        static final int TRANSACTION_deleteCarPlayDevice = 12;
        static final int TRANSACTION_deleteHiCarDevice = 25;
        static final int TRANSACTION_disconnectAndroidAuto = 41;
        static final int TRANSACTION_disconnectCarLink = 33;
        static final int TRANSACTION_disconnectCarPlay = 8;
        static final int TRANSACTION_disconnectHiCar = 24;
        static final int TRANSACTION_getAndroidAutoConnectionState = 44;
        static final int TRANSACTION_getAndroidAutoConnectionType = 45;
        static final int TRANSACTION_getCarLinkConnectionStatus = 35;
        static final int TRANSACTION_getCarPlayConnectionStatus = 3;
        static final int TRANSACTION_getCarPlayDeviceBatteryLeve = 10;
        static final int TRANSACTION_getConnectedAADevice = 43;
        static final int TRANSACTION_getConnectedCarLinkDevice = 30;
        static final int TRANSACTION_getConnectedCarPlayDeviceInfo = 4;
        static final int TRANSACTION_getConnectedHiCarDevice = 21;
        static final int TRANSACTION_getConnectionType = 36;
        static final int TRANSACTION_getCurrentCarPlay = 55;
        static final int TRANSACTION_getHiCarConnectionStatus = 26;
        static final int TRANSACTION_getHistoryAndroidAutoDevices = 37;
        static final int TRANSACTION_getHistoryCarLinkDevices = 29;
        static final int TRANSACTION_getHistoryCarPlayDevices = 11;
        static final int TRANSACTION_getHistoryHiCarDevices = 20;
        static final int TRANSACTION_getWiredAndroidAutoDevice = 46;
        static final int TRANSACTION_getWiredCarPlayDevice = 15;
        static final int TRANSACTION_isAndroidAutoUIProjected = 50;
        static final int TRANSACTION_isCarLinkConnected = 31;
        static final int TRANSACTION_isCarPlayConnected = 5;
        static final int TRANSACTION_isHiCarConnected = 22;
        static final int TRANSACTION_isSupportWirelessAndroidAuto = 38;
        static final int TRANSACTION_isSupportWirelessCarPlay = 6;
        static final int TRANSACTION_queryDeviceConnectHistory = 54;
        static final int TRANSACTION_registerAndroidAutoConnectionStateListener = 48;
        static final int TRANSACTION_registerCarPlayLinkListener = 1;
        static final int TRANSACTION_registerHiCarLinkListener = 18;
        static final int TRANSACTION_registerICCOACarLinkListener = 27;
        static final int TRANSACTION_registerUsbDeviceListener = 13;
        static final int TRANSACTION_registerVideoFocusListener = 51;
        static final int TRANSACTION_respondToCarPlayConnectionByIphone = 17;
        static final int TRANSACTION_startAndroidAutoUI = 42;
        static final int TRANSACTION_startCarPlayUI = 9;
        static final int TRANSACTION_unregisterAndroidAutoConnectionStateListener = 49;
        static final int TRANSACTION_unregisterCarPlayLinkListener = 2;
        static final int TRANSACTION_unregisterHiCarLinkListener = 19;
        static final int TRANSACTION_unregisterICCOACarLinkListener = 28;
        static final int TRANSACTION_unregisterUsbDeviceListener = 14;
        static final int TRANSACTION_unregisterVideoFocusListener = 52;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, ILinkMgrProxy.DESCRIPTOR);
        }

        public static ILinkMgrProxy asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ILinkMgrProxy.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ILinkMgrProxy)) {
                return (ILinkMgrProxy) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(ILinkMgrProxy.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(ILinkMgrProxy.DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    registerCarPlayLinkListener(ICarPlayAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    unregisterCarPlayLinkListener(ICarPlayAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    int carPlayConnectionStatus = getCarPlayConnectionStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(carPlayConnectionStatus);
                    return true;
                case 4:
                    String connectedCarPlayDeviceInfo = getConnectedCarPlayDeviceInfo();
                    parcel2.writeNoException();
                    parcel2.writeString(connectedCarPlayDeviceInfo);
                    return true;
                case 5:
                    boolean zIsCarPlayConnected = isCarPlayConnected();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsCarPlayConnected ? 1 : 0);
                    return true;
                case 6:
                    boolean zIsSupportWirelessCarPlay = isSupportWirelessCarPlay((BluetoothDevice) _Parcel.readTypedObject(parcel, BluetoothDevice.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSupportWirelessCarPlay ? 1 : 0);
                    return true;
                case 7:
                    connectWirelessCarPlay(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    disconnectCarPlay();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    startCarPlayUI();
                    parcel2.writeNoException();
                    return true;
                case 10:
                    int carPlayDeviceBatteryLeve = getCarPlayDeviceBatteryLeve(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(carPlayDeviceBatteryLeve);
                    return true;
                case 11:
                    String historyCarPlayDevices = getHistoryCarPlayDevices();
                    parcel2.writeNoException();
                    parcel2.writeString(historyCarPlayDevices);
                    return true;
                case 12:
                    deleteCarPlayDevice(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    registerUsbDeviceListener(IUsbDeviceAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    unregisterUsbDeviceListener(IUsbDeviceAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    String wiredCarPlayDevice = getWiredCarPlayDevice();
                    parcel2.writeNoException();
                    parcel2.writeString(wiredCarPlayDevice);
                    return true;
                case 16:
                    connectWiredCarPlay(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    respondToCarPlayConnectionByIphone(parcel.readInt(), (BluetoothDevice) _Parcel.readTypedObject(parcel, BluetoothDevice.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    registerHiCarLinkListener(IHiCarAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    unregisterHiCarLinkListener(IHiCarAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    String historyHiCarDevices = getHistoryHiCarDevices();
                    parcel2.writeNoException();
                    parcel2.writeString(historyHiCarDevices);
                    return true;
                case 21:
                    String connectedHiCarDevice = getConnectedHiCarDevice();
                    parcel2.writeNoException();
                    parcel2.writeString(connectedHiCarDevice);
                    return true;
                case 22:
                    boolean zIsHiCarConnected = isHiCarConnected();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsHiCarConnected ? 1 : 0);
                    return true;
                case 23:
                    connectedWirelessHiCar(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    disconnectHiCar();
                    parcel2.writeNoException();
                    return true;
                case 25:
                    int iDeleteHiCarDevice = deleteHiCarDevice(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iDeleteHiCarDevice);
                    return true;
                case 26:
                    int hiCarConnectionStatus = getHiCarConnectionStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(hiCarConnectionStatus);
                    return true;
                case 27:
                    registerICCOACarLinkListener(IICCOACarLinkAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 28:
                    unregisterICCOACarLinkListener(IICCOACarLinkAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 29:
                    String historyCarLinkDevices = getHistoryCarLinkDevices();
                    parcel2.writeNoException();
                    parcel2.writeString(historyCarLinkDevices);
                    return true;
                case 30:
                    String connectedCarLinkDevice = getConnectedCarLinkDevice();
                    parcel2.writeNoException();
                    parcel2.writeString(connectedCarLinkDevice);
                    return true;
                case 31:
                    boolean zIsCarLinkConnected = isCarLinkConnected();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsCarLinkConnected ? 1 : 0);
                    return true;
                case 32:
                    connectedWirelessCarLink(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 33:
                    disconnectCarLink();
                    parcel2.writeNoException();
                    return true;
                case 34:
                    int iDeleteCarLinkDevice = deleteCarLinkDevice(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iDeleteCarLinkDevice);
                    return true;
                case 35:
                    int carLinkConnectionStatus = getCarLinkConnectionStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(carLinkConnectionStatus);
                    return true;
                case 36:
                    int connectionType = getConnectionType(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(connectionType);
                    return true;
                case 37:
                    String historyAndroidAutoDevices = getHistoryAndroidAutoDevices();
                    parcel2.writeNoException();
                    parcel2.writeString(historyAndroidAutoDevices);
                    return true;
                case 38:
                    boolean zIsSupportWirelessAndroidAuto = isSupportWirelessAndroidAuto(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSupportWirelessAndroidAuto ? 1 : 0);
                    return true;
                case 39:
                    connectWirelessAA(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    connectWiredAA(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    disconnectAndroidAuto();
                    parcel2.writeNoException();
                    return true;
                case 42:
                    startAndroidAutoUI();
                    parcel2.writeNoException();
                    return true;
                case 43:
                    String connectedAADevice = getConnectedAADevice();
                    parcel2.writeNoException();
                    parcel2.writeString(connectedAADevice);
                    return true;
                case 44:
                    int androidAutoConnectionState = getAndroidAutoConnectionState();
                    parcel2.writeNoException();
                    parcel2.writeInt(androidAutoConnectionState);
                    return true;
                case 45:
                    int androidAutoConnectionType = getAndroidAutoConnectionType();
                    parcel2.writeNoException();
                    parcel2.writeInt(androidAutoConnectionType);
                    return true;
                case 46:
                    String wiredAndroidAutoDevice = getWiredAndroidAutoDevice();
                    parcel2.writeNoException();
                    parcel2.writeString(wiredAndroidAutoDevice);
                    return true;
                case 47:
                    deleteAndroidAutoDevice(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 48:
                    registerAndroidAutoConnectionStateListener(IAndroidAutoAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 49:
                    unregisterAndroidAutoConnectionStateListener(IAndroidAutoAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 50:
                    boolean zIsAndroidAutoUIProjected = isAndroidAutoUIProjected();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAndroidAutoUIProjected ? 1 : 0);
                    return true;
                case 51:
                    registerVideoFocusListener(IVideoFocusAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 52:
                    unregisterVideoFocusListener(IVideoFocusAIDL.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 53:
                    connectCarPlay(parcel.readInt(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 54:
                    String strQueryDeviceConnectHistory = queryDeviceConnectHistory(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strQueryDeviceConnectHistory);
                    return true;
                case 55:
                    String currentCarPlay = getCurrentCarPlay();
                    parcel2.writeNoException();
                    parcel2.writeString(currentCarPlay);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements ILinkMgrProxy {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ILinkMgrProxy.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void registerCarPlayLinkListener(ICarPlayAIDL iCarPlayAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iCarPlayAIDL);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void unregisterCarPlayLinkListener(ICarPlayAIDL iCarPlayAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iCarPlayAIDL);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public int getCarPlayConnectionStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getConnectedCarPlayDeviceInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public boolean isCarPlayConnected() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public boolean isSupportWirelessCarPlay(BluetoothDevice bluetoothDevice) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, bluetoothDevice, 0);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void connectWirelessCarPlay(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void disconnectCarPlay() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void startCarPlayUI() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public int getCarPlayDeviceBatteryLeve(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getHistoryCarPlayDevices() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void deleteCarPlayDevice(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void registerUsbDeviceListener(IUsbDeviceAIDL iUsbDeviceAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iUsbDeviceAIDL);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void unregisterUsbDeviceListener(IUsbDeviceAIDL iUsbDeviceAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iUsbDeviceAIDL);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getWiredCarPlayDevice() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void connectWiredCarPlay(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void respondToCarPlayConnectionByIphone(int i, BluetoothDevice bluetoothDevice) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    _Parcel.writeTypedObject(parcelObtain, bluetoothDevice, 0);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void registerHiCarLinkListener(IHiCarAIDL iHiCarAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iHiCarAIDL);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void unregisterHiCarLinkListener(IHiCarAIDL iHiCarAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iHiCarAIDL);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getHistoryHiCarDevices() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getConnectedHiCarDevice() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public boolean isHiCarConnected() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void connectedWirelessHiCar(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void disconnectHiCar() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public int deleteHiCarDevice(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public int getHiCarConnectionStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void registerICCOACarLinkListener(IICCOACarLinkAIDL iICCOACarLinkAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iICCOACarLinkAIDL);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void unregisterICCOACarLinkListener(IICCOACarLinkAIDL iICCOACarLinkAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iICCOACarLinkAIDL);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getHistoryCarLinkDevices() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getConnectedCarLinkDevice() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public boolean isCarLinkConnected() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void connectedWirelessCarLink(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void disconnectCarLink() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public int deleteCarLinkDevice(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public int getCarLinkConnectionStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public int getConnectionType(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getHistoryAndroidAutoDevices() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public boolean isSupportWirelessAndroidAuto(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void connectWirelessAA(String str, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void connectWiredAA(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void disconnectAndroidAuto() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void startAndroidAutoUI() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getConnectedAADevice() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public int getAndroidAutoConnectionState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public int getAndroidAutoConnectionType() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getWiredAndroidAutoDevice() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void deleteAndroidAutoDevice(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void registerAndroidAutoConnectionStateListener(IAndroidAutoAIDL iAndroidAutoAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iAndroidAutoAIDL);
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void unregisterAndroidAutoConnectionStateListener(IAndroidAutoAIDL iAndroidAutoAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iAndroidAutoAIDL);
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public boolean isAndroidAutoUIProjected() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void registerVideoFocusListener(IVideoFocusAIDL iVideoFocusAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iVideoFocusAIDL);
                    this.mRemote.transact(51, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void unregisterVideoFocusListener(IVideoFocusAIDL iVideoFocusAIDL) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iVideoFocusAIDL);
                    this.mRemote.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public void connectCarPlay(int i, String str, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(53, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String queryDeviceConnectHistory(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.sdk.linkmanager.ILinkMgrProxy
            public String getCurrentCarPlay() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ILinkMgrProxy.DESCRIPTOR);
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t, int i) {
            if (t != null) {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
            } else {
                parcel.writeInt(0);
            }
        }
    }
}
