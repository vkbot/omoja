package com.mega.sdk.linkmanager;

import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class MegaLinkManager {
    private static final String TAG = "MegaLinkManager";
    private static volatile MegaLinkManager mInstance;
    private IAndroidAutoAIDL mAndroidAutoAIDL;
    private ICarPlayAIDL mCarPlayLinkAIDL;
    private Context mContext;
    private HandlerThread mHandlerThread;
    private IHiCarAIDL mHiCarAIDL;
    private IICCOACarLinkAIDL mICCOACarLinkAIDL;
    private ILinkMgrProxy mInterface;
    private IUsbDeviceAIDL mUsbDeviceAIDL;
    private IVideoFocusAIDL mVideoFocusAIDL;
    private Handler mWorkHandler;
    private volatile boolean isBinding = false;
    private List<ILinkMgrSrvConnListener> mSrvConnListeners = new CopyOnWriteArrayList();
    private List<ICarPlayLinkCallback> mCarPlayLinkCallbacks = new CopyOnWriteArrayList();
    private List<IMDUsbDeviceCallback> mMDUsbDeviceCallbacks = new CopyOnWriteArrayList();
    private List<IHiCarLinkCallback> mHiCarLinkCallback = new CopyOnWriteArrayList();
    private List<IICCOACarLinkCallback> mICCOACarLinkCallback = new CopyOnWriteArrayList();
    private List<IAndroidAutoLinkCallback> mAndroidAutoCallback = new CopyOnWriteArrayList();
    private List<IVideoFocusCallback> mVideoFocusCallback = new CopyOnWriteArrayList();
    private boolean mInit = false;
    private final String HT_NAME = "HT_NAME_LINK_MANAGER_CALLBACK";
    private final int MSG_CONNECT_STATE_CHANGE = 1;
    private final int MSG_DEVICE_BATTERY_LEVEL_CHANGE = 2;
    private final int MSG_DEVICE_DELETED = 3;
    private final int MSG_REQUEST_FROM_IPHONE = 4;
    private final int MSG_RECEIVE_UI_COMMAND = 5;
    private final int MSG_USB_DEVICE_ATTACHED = 6;
    private final int MSG_USB_DEVICE_DETACHED = 7;
    private final int MSG_AA_CONNECT_STATE_CHANGE = 8;
    private final int MSG_AA_DEVICE_DELETED = 9;
    private final int MSG_VIDEO_FOCUS_STATE_CHANGE = 16;
    private final int MSG_HICAR_CONNECT_STATE_CHANGE = 17;
    private final int MSG_CARLINK_CONNECT_STATE_CHANGE = 18;
    private ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.mega.sdk.linkmanager.MegaLinkManager.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.i(MegaLinkManager.TAG, "onServiceConnected");
            MegaLinkManager.this.mInterface = ILinkMgrProxy.Stub.asInterface(iBinder);
            MegaLinkManager.this.isBinding = false;
            MegaLinkManager.this.notifyDMSvrConnChanged(true);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.i(MegaLinkManager.TAG, "onServiceDisconnected");
            MegaLinkManager.this.isBinding = false;
            if (MegaLinkManager.this.mCarPlayLinkCallbacks != null && MegaLinkManager.this.mCarPlayLinkCallbacks.size() > 0) {
                MegaLinkManager.this.mCarPlayLinkCallbacks.clear();
            }
            if (MegaLinkManager.this.mMDUsbDeviceCallbacks != null && MegaLinkManager.this.mMDUsbDeviceCallbacks.size() > 0) {
                MegaLinkManager.this.mMDUsbDeviceCallbacks.clear();
            }
            MegaLinkManager.this.notifyDMSvrConnChanged(false);
        }
    };

    private MegaLinkManager() {
    }

    public static MegaLinkManager getInstance() {
        if (mInstance == null) {
            synchronized (MegaLinkManager.class) {
                if (mInstance == null) {
                    mInstance = new MegaLinkManager();
                }
            }
        }
        return mInstance;
    }

    public synchronized void init(Context context) {
        Log.i(TAG, "init in v2025.0522");
        if (this.mInit) {
            return;
        }
        HandlerThread handlerThread = new HandlerThread("HT_NAME_LINK_MANAGER_CALLBACK");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mWorkHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.mega.sdk.linkmanager.MegaLinkManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                try {
                    MegaLinkManager.this.dealLinkManagerCallback(message);
                } catch (Exception e) {
                    Log.e(MegaLinkManager.TAG, "call dealLinkManagerCallback() Exception ### ", e);
                }
            }
        };
        this.mContext = context;
        bindService();
        this.mInit = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dealLinkManagerCallback(Message message) {
        Log.i(TAG, "dealLinkManagerCallback msg: " + message.what);
        int i = message.what;
        switch (i) {
            case 1:
                Iterator<ICarPlayLinkCallback> it = this.mCarPlayLinkCallbacks.iterator();
                while (it.hasNext()) {
                    it.next().onCarPlayConnectStatusChanged(message.arg1, message.arg2, (String) message.obj);
                }
                break;
            case 2:
                Iterator<ICarPlayLinkCallback> it2 = this.mCarPlayLinkCallbacks.iterator();
                while (it2.hasNext()) {
                    it2.next().onCarPlayDeviceBatteryLeveChanged((String) message.obj, message.arg1);
                }
                break;
            case 3:
                Iterator<ICarPlayLinkCallback> it3 = this.mCarPlayLinkCallbacks.iterator();
                while (it3.hasNext()) {
                    it3.next().onCarPlayDeviceDeleted((String) message.obj);
                }
                break;
            case 4:
                Iterator<ICarPlayLinkCallback> it4 = this.mCarPlayLinkCallbacks.iterator();
                while (it4.hasNext()) {
                    it4.next().onCarPlayRequestFromIPhone((BluetoothDevice) message.obj);
                }
                break;
            case 5:
                Iterator<ICarPlayLinkCallback> it5 = this.mCarPlayLinkCallbacks.iterator();
                while (it5.hasNext()) {
                    it5.next().onReceiveUICommand(message.arg1, (String) message.obj);
                }
                break;
            case 6:
                for (IMDUsbDeviceCallback iMDUsbDeviceCallback : this.mMDUsbDeviceCallbacks) {
                    String str = (String) message.obj;
                    int i2 = message.arg1;
                    boolean z = true;
                    if (message.arg2 != 1) {
                        z = false;
                    }
                    iMDUsbDeviceCallback.onUsbDeviceAttached(str, i2, z);
                }
                break;
            case 7:
                Iterator<IMDUsbDeviceCallback> it6 = this.mMDUsbDeviceCallbacks.iterator();
                while (it6.hasNext()) {
                    it6.next().onUsbDeviceDetached((String) message.obj);
                }
                break;
            case 8:
                Iterator<IAndroidAutoLinkCallback> it7 = this.mAndroidAutoCallback.iterator();
                while (it7.hasNext()) {
                    it7.next().onAndroidAutoConnectStatusChanged(message.arg1, message.arg2, (String) message.obj);
                }
                break;
            case 9:
                Iterator<IAndroidAutoLinkCallback> it8 = this.mAndroidAutoCallback.iterator();
                while (it8.hasNext()) {
                    it8.next().onAndroidAutoDeviceDeleted((String) message.obj);
                }
                break;
            default:
                switch (i) {
                    case 16:
                        Iterator<IVideoFocusCallback> it9 = this.mVideoFocusCallback.iterator();
                        while (it9.hasNext()) {
                            it9.next().onVideoFocusStatusChange(message.arg1);
                        }
                        break;
                    case 17:
                        Iterator<IHiCarLinkCallback> it10 = this.mHiCarLinkCallback.iterator();
                        while (it10.hasNext()) {
                            it10.next().onHiCarConnectStatusChanged(message.arg1, (String) message.obj);
                        }
                        break;
                    case 18:
                        Iterator<IICCOACarLinkCallback> it11 = this.mICCOACarLinkCallback.iterator();
                        while (it11.hasNext()) {
                            it11.next().onICCOACarLinkConnectStatusChanged(message.arg1, (String) message.obj);
                        }
                        break;
                }
                break;
        }
    }

    public synchronized void unInit() {
        String str = TAG;
        Log.i(str, "unInit in");
        if (this.mInit) {
            HandlerThread handlerThread = this.mHandlerThread;
            if (handlerThread != null) {
                handlerThread.quit();
                this.mHandlerThread = null;
            }
            Handler handler = this.mWorkHandler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                this.mWorkHandler = null;
            }
            if (this.mContext != null && this.mServiceConnection != null && this.mInterface != null) {
                Log.i(str, "unbind link manager service");
                this.mContext.unbindService(this.mServiceConnection);
            }
            this.mInit = false;
        }
    }

    private void bindService() {
        IBinder iBinderAsBinder;
        if (this.mContext == null) {
            Log.e(TAG, "Context is null, pls init MegaLinkManager first !");
            return;
        }
        if (this.isBinding) {
            Log.i(TAG, "link manager service binding, return");
            return;
        }
        ILinkMgrProxy iLinkMgrProxy = this.mInterface;
        if (iLinkMgrProxy != null && (iBinderAsBinder = iLinkMgrProxy.asBinder()) != null && iBinderAsBinder.isBinderAlive() && iBinderAsBinder.pingBinder()) {
            Log.i(TAG, "link manager service already bind");
            return;
        }
        String str = TAG;
        Log.i(str, "bind link manager service...");
        this.isBinding = true;
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(LinkMgrConstant.LM_PACKAGE_NAME, LinkMgrConstant.LM_SERVICE_CLASS));
        try {
            boolean zBindService = this.mContext.bindService(intent, this.mServiceConnection, 1);
            Log.i(str, "bind result: " + zBindService);
            if (zBindService) {
                return;
            }
            this.isBinding = false;
        } catch (Exception e) {
            Log.e(TAG, "bind service error. " + e.getMessage());
            this.isBinding = false;
        }
    }

    public boolean isAvailable() {
        IBinder iBinderAsBinder;
        ILinkMgrProxy iLinkMgrProxy = this.mInterface;
        if (iLinkMgrProxy != null && (iBinderAsBinder = iLinkMgrProxy.asBinder()) != null && iBinderAsBinder.isBinderAlive() && iBinderAsBinder.pingBinder()) {
            return true;
        }
        Log.i(TAG, "link manager service is not available, isBinding: " + this.isBinding);
        bindService();
        return false;
    }

    public void registerSrvConnChangeListener(ILinkMgrSrvConnListener iLinkMgrSrvConnListener) {
        IBinder iBinderAsBinder;
        Log.i(TAG, "registerSrvConnChangeListener --- listener: " + iLinkMgrSrvConnListener);
        if (iLinkMgrSrvConnListener == null || this.mSrvConnListeners.contains(iLinkMgrSrvConnListener)) {
            return;
        }
        this.mSrvConnListeners.add(iLinkMgrSrvConnListener);
        ILinkMgrProxy iLinkMgrProxy = this.mInterface;
        if (iLinkMgrProxy == null || (iBinderAsBinder = iLinkMgrProxy.asBinder()) == null || !iBinderAsBinder.isBinderAlive() || !iBinderAsBinder.pingBinder()) {
            return;
        }
        iLinkMgrSrvConnListener.onLinkMgrSrvConnChange(true);
    }

    public void unregisterSrvConnChangeListener(ILinkMgrSrvConnListener iLinkMgrSrvConnListener) {
        Log.i(TAG, "unregisterDMConnChangeListener --- listener: " + iLinkMgrSrvConnListener);
        if (iLinkMgrSrvConnListener == null || !this.mSrvConnListeners.contains(iLinkMgrSrvConnListener)) {
            return;
        }
        this.mSrvConnListeners.remove(iLinkMgrSrvConnListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDMSvrConnChanged(boolean z) {
        Log.i(TAG, "notifyDMSvrConnChanged --- isConn:" + z);
        for (int i = 0; i < this.mSrvConnListeners.size(); i++) {
            this.mSrvConnListeners.get(i).onLinkMgrSrvConnChange(z);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x007b A[Catch: RemoteException -> 0x0079, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0079, blocks: (B:5:0x0023, B:7:0x002b, B:9:0x0039, B:10:0x0062, B:13:0x007b), top: B:19:0x0023 }] */
    public void registerCarPlayLinkMgrListener(ICarPlayLinkCallback iCarPlayLinkCallback) {
        printClientName();
        String str = TAG;
        Log.i(str, "registerCarPlayLinkMgrListener --- callback: " + iCarPlayLinkCallback);
        if (this.mInterface == null) {
            Log.e(str, "registerCarPlayLinkMgrListener --- mDeviceMgrProxy == null");
            return;
        }
        if (iCarPlayLinkCallback != null) {
            try {
                if (!this.mCarPlayLinkCallbacks.contains(iCarPlayLinkCallback)) {
                    this.mCarPlayLinkCallbacks.add(iCarPlayLinkCallback);
                    if (this.mCarPlayLinkCallbacks.size() == 1) {
                        this.mCarPlayLinkAIDL = new ICarPlayAIDL.Stub() { // from class: com.mega.sdk.linkmanager.MegaLinkManager.3
                            @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
                            public void onCarPlayConnectStatusChanged(int i, int i2, String str2) throws RemoteException {
                                if (MegaLinkManager.this.mWorkHandler != null) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 1;
                                    messageObtain.arg1 = i;
                                    messageObtain.arg2 = i2;
                                    messageObtain.obj = str2;
                                    MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                                }
                            }

                            @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
                            public void onCarPlayDeviceBatteryLeveChanged(String str2, int i) throws RemoteException {
                                if (MegaLinkManager.this.mWorkHandler != null) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 2;
                                    messageObtain.arg1 = i;
                                    messageObtain.obj = str2;
                                    MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                                }
                            }

                            @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
                            public void onCarPlayDeviceDeleted(String str2) throws RemoteException {
                                if (MegaLinkManager.this.mWorkHandler != null) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 3;
                                    messageObtain.obj = str2;
                                    MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                                }
                            }

                            @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
                            public void onCarPlayRequestFromIPhone(BluetoothDevice bluetoothDevice) throws RemoteException {
                                if (MegaLinkManager.this.mWorkHandler != null) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 4;
                                    messageObtain.obj = bluetoothDevice;
                                    MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                                }
                            }

                            @Override // com.mega.sdk.linkmanager.ICarPlayAIDL
                            public void onReceiveUICommand(int i, String str2) throws RemoteException {
                                if (MegaLinkManager.this.mWorkHandler != null) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 5;
                                    messageObtain.arg1 = i;
                                    messageObtain.obj = str2;
                                    MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                                }
                            }
                        };
                        Log.i(str, "registerCarPlayLinkListener: " + this.mContext.getClass().getName());
                        this.mInterface.registerCarPlayLinkListener(this.mCarPlayLinkAIDL);
                    } else {
                        Log.w(str, "mCarPlayLinkCallbacks.size: " + this.mCarPlayLinkCallbacks.size());
                    }
                } else {
                    Log.w(str, "mCarPlayLinkCallbacks contains callback: " + iCarPlayLinkCallback);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "registerCarPlayLinkMgrListener --- RemoteException");
            }
        } else {
            Log.w(str, "mCarPlayLinkCallbacks contains callback: " + iCarPlayLinkCallback);
        }
    }

    public void unRegisterCarPlayLinkMgrListener(ICarPlayLinkCallback iCarPlayLinkCallback) {
        ICarPlayAIDL iCarPlayAIDL;
        String str = TAG;
        Log.i(str, "unRegisterCarPlayLinkMgrListener --- callback: " + iCarPlayLinkCallback);
        if (this.mInterface == null) {
            Log.e(str, "unRegisterCarPlayLinkMgrListener --- mInterface == null");
            return;
        }
        if (iCarPlayLinkCallback != null) {
            try {
                if (this.mCarPlayLinkCallbacks.contains(iCarPlayLinkCallback)) {
                    this.mCarPlayLinkCallbacks.remove(iCarPlayLinkCallback);
                    if (this.mCarPlayLinkCallbacks.size() != 0 || (iCarPlayAIDL = this.mCarPlayLinkAIDL) == null) {
                        return;
                    }
                    this.mInterface.unregisterCarPlayLinkListener(iCarPlayAIDL);
                    this.mCarPlayLinkAIDL = null;
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "unRegisterCarPlayLinkMgrListener --- RemoteException");
            }
        }
    }

    public void registerMDUsbDeviceListener(IMDUsbDeviceCallback iMDUsbDeviceCallback) {
        printClientName();
        String str = TAG;
        Log.i(str, "registerMDUsbDeviceListener --- callback: " + iMDUsbDeviceCallback);
        if (this.mInterface != null) {
            if (iMDUsbDeviceCallback != null && !this.mMDUsbDeviceCallbacks.contains(iMDUsbDeviceCallback)) {
                this.mMDUsbDeviceCallbacks.add(iMDUsbDeviceCallback);
                if (this.mMDUsbDeviceCallbacks.size() == 1) {
                    this.mUsbDeviceAIDL = new IUsbDeviceAIDL.Stub() { // from class: com.mega.sdk.linkmanager.MegaLinkManager.4
                        @Override // com.mega.sdk.linkmanager.IUsbDeviceAIDL
                        public void onUsbDeviceAttached(String str2, int i, boolean z) throws RemoteException {
                            if (MegaLinkManager.this.mWorkHandler != null) {
                                Message messageObtain = Message.obtain();
                                messageObtain.what = 6;
                                messageObtain.arg1 = i;
                                messageObtain.arg2 = z ? 1 : 0;
                                messageObtain.obj = str2;
                                MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                            }
                        }

                        @Override // com.mega.sdk.linkmanager.IUsbDeviceAIDL
                        public void onUsbDeviceDetached(String str2) throws RemoteException {
                            if (MegaLinkManager.this.mWorkHandler != null) {
                                Message messageObtain = Message.obtain();
                                messageObtain.what = 7;
                                messageObtain.obj = str2;
                                MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                            }
                        }
                    };
                    try {
                        Log.i(str, "registerMDUsbDeviceListener: " + this.mContext.getClass().getName());
                        this.mInterface.registerUsbDeviceListener(this.mUsbDeviceAIDL);
                        return;
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        Log.e(TAG, "registerMDUsbDeviceListener --- RemoteException");
                        return;
                    }
                }
                Log.w(str, "mMDUsbDeviceCallbacks.size: " + this.mMDUsbDeviceCallbacks.size());
                return;
            }
            Log.w(str, "mMDUsbDeviceCallbacks contains callback: " + iMDUsbDeviceCallback);
            return;
        }
        Log.e(str, "registerMDUsbDeviceListener --- mDeviceMgrProxy == null");
    }

    public void unRegisterUsbDeviceListener(IMDUsbDeviceCallback iMDUsbDeviceCallback) {
        IUsbDeviceAIDL iUsbDeviceAIDL;
        String str = TAG;
        Log.i(str, "unRegisterUsbDeviceListener --- callback: " + iMDUsbDeviceCallback);
        if (this.mInterface == null) {
            Log.e(str, "unRegisterCarPlayUsbDeviceListener --- mInterface == null");
            return;
        }
        if (iMDUsbDeviceCallback != null) {
            try {
                if (this.mMDUsbDeviceCallbacks.contains(iMDUsbDeviceCallback)) {
                    this.mMDUsbDeviceCallbacks.remove(iMDUsbDeviceCallback);
                    if (this.mMDUsbDeviceCallbacks.size() != 0 || (iUsbDeviceAIDL = this.mUsbDeviceAIDL) == null) {
                        return;
                    }
                    this.mInterface.unregisterUsbDeviceListener(iUsbDeviceAIDL);
                    this.mUsbDeviceAIDL = null;
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "unRegisterCarPlayLinkMgrListener --- RemoteException");
            }
        }
    }

    public int getCarPlayConnectionStatus() {
        String str = TAG;
        Log.i(str, "getCarPlayConnectionStatus in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getCarPlayConnectionStatus~~mInterface is null");
                return 0;
            }
            return this.mInterface.getCarPlayConnectionStatus();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return 0;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }

    public String getConnectedCarPlayDeviceInfo() {
        String str = TAG;
        Log.i(str, "getConnectedCarPlayDeviceInfo in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getConnectedCarPlayDeviceInfo~~mInterface is null");
                return null;
            }
            return this.mInterface.getConnectedCarPlayDeviceInfo();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public boolean isCarPlayConnected() {
        String str = TAG;
        Log.i(str, "isCarPlayConnected in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "isCarPlayConnected~~mInterface is null");
                return false;
            }
            return this.mInterface.isCarPlayConnected();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return false;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public boolean isSupportWirelessCarPlay(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            Log.e(TAG, "isSupportWirelessCarPlay in. device is null");
            return false;
        }
        String str = TAG;
        Log.i(str, "isSupportWirelessCarPlay in. btAddress: " + bluetoothDevice.getAddress());
        try {
            if (!isAvailable()) {
                Log.e(str, "isSupportWirelessCarPlay~~mInterface is null");
                return false;
            }
            return this.mInterface.isSupportWirelessCarPlay(bluetoothDevice);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return false;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public void connectWirelessCarPlay(String str) {
        String str2 = TAG;
        Log.i(str2, "connectWirelessCarPlay in. btAddress: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "connectWirelessCarPlay~~mInterface is null");
            } else {
                this.mInterface.connectWirelessCarPlay(str);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void disconnectCarPlay() {
        String str = TAG;
        Log.i(str, "disconnectCarPlay in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "disconnectCarPlay~~mInterface is null");
            } else {
                this.mInterface.disconnectCarPlay();
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void startCarPlayUI() {
        String str = TAG;
        Log.i(str, "startCarPlayUI in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "startCarPlayUI~~mInterface is null");
            } else {
                this.mInterface.startCarPlayUI();
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public int getCarPlayDeviceBatteryLeve(String str) {
        String str2 = TAG;
        Log.i(str2, "getCarPlayDeviceBatteryLeve in. btAddress: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "getCarPlayDeviceBatteryLeve~~mInterface is null");
                return 0;
            }
            return this.mInterface.getCarPlayDeviceBatteryLeve(str);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return 0;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }

    public String getHistoryCarPlayDevices() {
        String str = TAG;
        Log.i(str, "getHistoryCarPlayDevices in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getHistoryCarPlayDevices~~mInterface is null");
                return null;
            }
            return this.mInterface.getHistoryCarPlayDevices();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public void deleteCarPlayDevice(String str) {
        String str2 = TAG;
        Log.i(str2, "deleteCarPlayDevice in. btAddres: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "deleteCarPlayDevice~~mInterface is null");
            } else {
                this.mInterface.deleteCarPlayDevice(str);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public String getWiredCarPlayDevice() {
        String str = TAG;
        Log.i(str, "getWiredCarPlayDevice in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getWiredCarPlayDevice~~mInterface is null");
                return null;
            }
            return this.mInterface.getWiredCarPlayDevice();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public void connectWiredCarPlay(String str) {
        String str2 = TAG;
        Log.i(str2, "connectWiredCarPlay in. serialNumber: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "connectWiredCarPlay~~mInterface is null");
            } else {
                this.mInterface.connectWiredCarPlay(str);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public String getHistoryHiCarDevices() {
        String str = TAG;
        Log.i(str, "getHistoryHiCarDevices in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getHistoryHiCarDevices~~mInterface is null");
                return null;
            }
            return this.mInterface.getHistoryHiCarDevices();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public String getConnectedHiCarDevice() {
        String str = TAG;
        Log.i(str, "getConnectedHiCarDevice in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getConnectedHiCarDevice~~mInterface is null");
                return null;
            }
            return this.mInterface.getConnectedHiCarDevice();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public boolean isHiCarConnected() {
        String str = TAG;
        Log.i(str, "isHiCarConnected in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "isHiCarConnected~~mInterface is null");
                return false;
            }
            return this.mInterface.isHiCarConnected();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return false;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public void connectedWirelessHiCar(String str) {
        String str2 = TAG;
        Log.i(str2, "connectedWirelessHiCar in. btAddress: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "connectedWirelessHiCar~~mInterface is null");
            } else {
                this.mInterface.connectedWirelessHiCar(str);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void respondToCarPlayConnectionByIphone(int i, BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            Log.e(TAG, "input device is null");
            return;
        }
        String str = TAG;
        Log.i(str, "respondToCarPlayConnectionByIphone in. respond: " + i + " device: " + bluetoothDevice.getAddress());
        try {
            if (!isAvailable()) {
                Log.e(str, "respondToCarPlayConnectionByIphone~~mInterface is null");
            } else {
                this.mInterface.respondToCarPlayConnectionByIphone(i, bluetoothDevice);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void disconnectHiCar() {
        String str = TAG;
        Log.i(str, "disconnectHiCar in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "disconnectHiCar~~mInterface is null");
            } else {
                this.mInterface.disconnectHiCar();
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public int deleteHiCarDevice(String str) {
        String str2 = TAG;
        Log.i(str2, "deleteHiCarDevice in. deviceID: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "deleteHiCarDevice~~mInterface is null");
                return -1;
            }
            return this.mInterface.deleteHiCarDevice(str);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return -1;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return -1;
        }
    }

    public int getHiCarConnectionStatus() {
        String str = TAG;
        Log.i(str, "getHiCarConnectionStatus in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getHiCarConnectionStatus~~mInterface is null");
                return 0;
            }
            return this.mInterface.getHiCarConnectionStatus();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return 0;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x007b A[Catch: RemoteException -> 0x0079, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0079, blocks: (B:5:0x0023, B:7:0x002b, B:9:0x0039, B:10:0x0062, B:13:0x007b), top: B:19:0x0023 }] */
    public void registerHiCarLinkListener(IHiCarLinkCallback iHiCarLinkCallback) {
        printClientName();
        String str = TAG;
        Log.i(str, "registerHiCarLinkListener --- callback: " + iHiCarLinkCallback);
        if (this.mInterface == null) {
            Log.e(str, "registerHiCarLinkListener --- mDeviceMgrProxy == null");
            return;
        }
        if (iHiCarLinkCallback != null) {
            try {
                if (!this.mHiCarLinkCallback.contains(iHiCarLinkCallback)) {
                    this.mHiCarLinkCallback.add(iHiCarLinkCallback);
                    if (this.mHiCarLinkCallback.size() == 1) {
                        this.mHiCarAIDL = new IHiCarAIDL.Stub() { // from class: com.mega.sdk.linkmanager.MegaLinkManager.5
                            @Override // com.mega.sdk.linkmanager.IHiCarAIDL
                            public void onHiCarConnectStatusChange(int i, String str2) throws RemoteException {
                                if (MegaLinkManager.this.mWorkHandler != null) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 17;
                                    messageObtain.arg1 = i;
                                    messageObtain.obj = str2;
                                    MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                                }
                            }
                        };
                        Log.i(str, "registerHiCarLinkListener: " + this.mContext.getClass().getName());
                        this.mInterface.registerHiCarLinkListener(this.mHiCarAIDL);
                    } else {
                        Log.w(str, "mHiCarLinkCallback.size: " + this.mHiCarLinkCallback.size());
                    }
                } else {
                    Log.w(str, "mHiCarLinkCallback contains callback: " + iHiCarLinkCallback);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "registerHiCarLinkListener --- RemoteException");
            }
        } else {
            Log.w(str, "mHiCarLinkCallback contains callback: " + iHiCarLinkCallback);
        }
    }

    public void unregisterHiCarLinkListener(IHiCarLinkCallback iHiCarLinkCallback) {
        IHiCarAIDL iHiCarAIDL;
        String str = TAG;
        Log.i(str, "unregisterHiCarLinkListener --- callback: " + iHiCarLinkCallback);
        if (this.mInterface == null) {
            Log.e(str, "unregisterHiCarLinkListener --- mInterface == null");
            return;
        }
        if (iHiCarLinkCallback != null) {
            try {
                if (this.mHiCarLinkCallback.contains(iHiCarLinkCallback)) {
                    this.mHiCarLinkCallback.remove(iHiCarLinkCallback);
                    if (this.mHiCarLinkCallback.size() != 0 || (iHiCarAIDL = this.mHiCarAIDL) == null) {
                        return;
                    }
                    this.mInterface.unregisterHiCarLinkListener(iHiCarAIDL);
                    this.mHiCarAIDL = null;
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "unregisterHiCarLinkListener --- RemoteException");
            }
        }
    }

    public String getHistoryCarLinkDevices() {
        String str = TAG;
        Log.i(str, "getHistoryCarLinkDevices in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getHistoryCarLinkDevices~~mInterface is null");
                return null;
            }
            return this.mInterface.getHistoryCarLinkDevices();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public String getConnectedCarLinkDevice() {
        String str = TAG;
        Log.i(str, "getConnectedCarLinkDevice in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getConnectedCarLinkDevice~~mInterface is null");
                return null;
            }
            return this.mInterface.getConnectedCarLinkDevice();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public boolean isCarLinkConnected() {
        String str = TAG;
        Log.i(str, "isCarLinkConnected in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "isCarLinkConnected~~mInterface is null");
                return false;
            }
            return this.mInterface.isCarLinkConnected();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return false;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public void connectedWirelessCarLink(String str) {
        String str2 = TAG;
        Log.i(str2, "connectedWirelessCarLink in. btAddress: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "connectedWirelessCarLink~~mInterface is null");
            } else {
                this.mInterface.connectedWirelessCarLink(str);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void disconnectCarLink() {
        String str = TAG;
        Log.i(str, "disconnectCarLink in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "disconnectCarLink~~mInterface is null");
            } else {
                this.mInterface.disconnectCarLink();
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public int deleteCarLinkDevice(String str) {
        String str2 = TAG;
        Log.i(str2, "deleteCarLinkDevice in. deviceID: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "deleteCarLinkDevice~~mInterface is null");
                return -1;
            }
            return this.mInterface.deleteCarLinkDevice(str);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return -1;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return -1;
        }
    }

    public int getCarLinkConnectionStatus() {
        String str = TAG;
        Log.i(str, "getCarLinkConnectionStatus in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getCarLinkConnectionStatus~~mInterface is null");
                return 0;
            }
            return this.mInterface.getCarLinkConnectionStatus();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return 0;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x007b A[Catch: RemoteException -> 0x0079, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0079, blocks: (B:5:0x0023, B:7:0x002b, B:9:0x0039, B:10:0x0062, B:13:0x007b), top: B:19:0x0023 }] */
    public void registerICCOACarLinkListener(IICCOACarLinkCallback iICCOACarLinkCallback) {
        printClientName();
        String str = TAG;
        Log.i(str, "registerICCOACarLinkListener --- callback: " + iICCOACarLinkCallback);
        if (this.mInterface == null) {
            Log.e(str, "registerICCOACarLinkListener --- mDeviceMgrProxy == null");
            return;
        }
        if (iICCOACarLinkCallback != null) {
            try {
                if (!this.mICCOACarLinkCallback.contains(iICCOACarLinkCallback)) {
                    this.mICCOACarLinkCallback.add(iICCOACarLinkCallback);
                    if (this.mICCOACarLinkCallback.size() == 1) {
                        this.mICCOACarLinkAIDL = new IICCOACarLinkAIDL.Stub() { // from class: com.mega.sdk.linkmanager.MegaLinkManager.6
                            @Override // com.mega.sdk.linkmanager.IICCOACarLinkAIDL
                            public void onCarLinkConnectStatusChange(int i, String str2) throws RemoteException {
                                if (MegaLinkManager.this.mWorkHandler != null) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 18;
                                    messageObtain.arg1 = i;
                                    messageObtain.obj = str2;
                                    MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                                }
                            }
                        };
                        Log.i(str, "registerICCOACarLinkListener: " + this.mContext.getClass().getName());
                        this.mInterface.registerICCOACarLinkListener(this.mICCOACarLinkAIDL);
                    } else {
                        Log.w(str, "registerICCOACarLinkListener.size: " + this.mICCOACarLinkCallback.size());
                    }
                } else {
                    Log.w(str, "registerICCOACarLinkListener contains callback: " + iICCOACarLinkCallback);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "registerICCOACarLinkListener --- RemoteException");
            }
        } else {
            Log.w(str, "registerICCOACarLinkListener contains callback: " + iICCOACarLinkCallback);
        }
    }

    public void unregisterICCOACarLinkListener(IICCOACarLinkCallback iICCOACarLinkCallback) {
        IICCOACarLinkAIDL iICCOACarLinkAIDL;
        String str = TAG;
        Log.i(str, "unregisterICCOACarLinkListener --- callback: " + iICCOACarLinkCallback);
        if (this.mInterface == null) {
            Log.e(str, "unregisterICCOACarLinkListener --- mInterface == null");
            return;
        }
        if (iICCOACarLinkCallback != null) {
            try {
                if (this.mICCOACarLinkCallback.contains(iICCOACarLinkCallback)) {
                    this.mICCOACarLinkCallback.remove(iICCOACarLinkCallback);
                    if (this.mICCOACarLinkCallback.size() != 0 || (iICCOACarLinkAIDL = this.mICCOACarLinkAIDL) == null) {
                        return;
                    }
                    this.mInterface.unregisterICCOACarLinkListener(iICCOACarLinkAIDL);
                    this.mICCOACarLinkAIDL = null;
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "unregisterICCOACarLinkListener --- RemoteException");
            }
        }
    }

    public int getConnectionType(int i) {
        String str = TAG;
        Log.i(str, "getConnectionType in. platform: " + i);
        try {
            if (!isAvailable()) {
                Log.e(str, "getConnectionType~~mInterface is null");
                return 0;
            }
            return this.mInterface.getConnectionType(i);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return 0;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }

    private void printClientName() {
        if (this.mContext != null) {
            Log.i(TAG, this.mContext.getPackageName() + " call in");
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x007b A[Catch: RemoteException -> 0x0079, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0079, blocks: (B:5:0x0023, B:7:0x002b, B:9:0x0039, B:10:0x0062, B:13:0x007b), top: B:19:0x0023 }] */
    public void registerAndroidAutoConnectionStateListener(IAndroidAutoLinkCallback iAndroidAutoLinkCallback) {
        printClientName();
        String str = TAG;
        Log.i(str, "registerAndroidAutoConnectionStateListener --- callback: " + iAndroidAutoLinkCallback);
        if (this.mInterface == null) {
            Log.e(str, "registerAndroidAutoConnectionStateListener --- mDeviceMgrProxy == null");
            return;
        }
        if (iAndroidAutoLinkCallback != null) {
            try {
                if (!this.mAndroidAutoCallback.contains(iAndroidAutoLinkCallback)) {
                    this.mAndroidAutoCallback.add(iAndroidAutoLinkCallback);
                    if (this.mAndroidAutoCallback.size() == 1) {
                        this.mAndroidAutoAIDL = new IAndroidAutoAIDL.Stub() { // from class: com.mega.sdk.linkmanager.MegaLinkManager.7
                            @Override // com.mega.sdk.linkmanager.IAndroidAutoAIDL
                            public void onAndroidAutoConnectStatusChanged(int i, int i2, String str2) throws RemoteException {
                                if (MegaLinkManager.this.mWorkHandler != null) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 8;
                                    messageObtain.arg1 = i;
                                    messageObtain.arg2 = i2;
                                    messageObtain.obj = str2;
                                    MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                                }
                            }

                            @Override // com.mega.sdk.linkmanager.IAndroidAutoAIDL
                            public void onAndroidAutoDeviceDeleted(String str2) throws RemoteException {
                                if (MegaLinkManager.this.mWorkHandler != null) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 9;
                                    messageObtain.obj = str2;
                                    MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                                }
                            }
                        };
                        Log.i(str, "registerAndroidAutoConnectionStateListener: " + this.mContext.getClass().getName());
                        this.mInterface.registerAndroidAutoConnectionStateListener(this.mAndroidAutoAIDL);
                    } else {
                        Log.w(str, "registerAndroidAutoConnectionStateListener.size: " + this.mAndroidAutoCallback.size());
                    }
                } else {
                    Log.w(str, "registerAndroidAutoConnectionStateListener contains callback: " + iAndroidAutoLinkCallback);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "registerAndroidAutoConnectionStateListener --- RemoteException");
            }
        } else {
            Log.w(str, "registerAndroidAutoConnectionStateListener contains callback: " + iAndroidAutoLinkCallback);
        }
    }

    public void unregisterAndroidAutoListener(IAndroidAutoLinkCallback iAndroidAutoLinkCallback) {
        IAndroidAutoAIDL iAndroidAutoAIDL;
        String str = TAG;
        Log.i(str, "unregisterAndroidAutoListener --- callback: " + iAndroidAutoLinkCallback);
        if (this.mInterface == null) {
            Log.e(str, "unregisterAndroidAutoListener --- mInterface == null");
            return;
        }
        if (iAndroidAutoLinkCallback != null) {
            try {
                if (this.mAndroidAutoCallback.contains(iAndroidAutoLinkCallback)) {
                    this.mAndroidAutoCallback.remove(iAndroidAutoLinkCallback);
                    if (this.mAndroidAutoCallback.size() != 0 || (iAndroidAutoAIDL = this.mAndroidAutoAIDL) == null) {
                        return;
                    }
                    this.mInterface.unregisterAndroidAutoConnectionStateListener(iAndroidAutoAIDL);
                    this.mAndroidAutoAIDL = null;
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "unregisterAndroidAutoListener --- RemoteException");
            }
        }
    }

    public String getHistoryAndroidAutoDevices() {
        String str = TAG;
        Log.i(str, "getHistoryAndroidAutoDevices in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getHistoryAndroidAutoDevices~~mInterface is null");
                return null;
            }
            return this.mInterface.getHistoryAndroidAutoDevices();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public boolean isSupportWirelessAndroidAuto(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e(TAG, "isSupportWirelessAndroidAuto in. device is null");
            return false;
        }
        String str2 = TAG;
        Log.i(str2, "isSupportWirelessAndroidAuto in. btAddress: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "isSupportWirelessAndroidAuto~~mInterface is null");
                return false;
            }
            return this.mInterface.isSupportWirelessAndroidAuto(str);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return false;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public void connectWirelessAndroidAuto(String str, int i) {
        String str2 = TAG;
        Log.i(str2, "connectWirelessAndroidAuto in. btAddress: " + str + " reason: " + i);
        try {
            if (!isAvailable()) {
                Log.e(str2, "connectWirelessAndroidAuto~~mInterface is null");
            } else {
                this.mInterface.connectWirelessAA(str, i);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void connectWiredAndroidAuto(String str) {
        String str2 = TAG;
        Log.i(str2, "connectWiredAndroidAuto in. serialNumber: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "connectWiredAndroidAuto~~mInterface is null");
            } else {
                this.mInterface.connectWiredAA(str);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void disconnectAndroidAuto() {
        String str = TAG;
        Log.i(str, "disconnectAndroidAuto in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "disconnectAndroidAuto~~mInterface is null");
            } else {
                this.mInterface.disconnectAndroidAuto();
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public void startAndroidAutoUI() {
        String str = TAG;
        Log.i(str, "startAndroidAutoUI in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "startAndroidAutoUI~~mInterface is null");
            } else {
                this.mInterface.startAndroidAutoUI();
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public String getConnectedAndroidAutoDevice() {
        String str = TAG;
        Log.i(str, "getConnectedAndroidAutoDevice in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getConnectedAndroidAutoDevice~~mInterface is null");
                return null;
            }
            return this.mInterface.getConnectedAADevice();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public int getAndroidAutoConnectionStatus() {
        String str = TAG;
        Log.i(str, "getAndroidAutoConnectionStatus in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getAndroidAutoConnectionStatus~~mInterface is null");
                return 0;
            }
            return this.mInterface.getAndroidAutoConnectionState();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return 0;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }

    public int getAndroidAutoConnectionType() {
        String str = TAG;
        Log.i(str, "getAndroidAutoConnectionType in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getAndroidAutoConnectionType~~mInterface is null");
                return 0;
            }
            return this.mInterface.getAndroidAutoConnectionType();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return 0;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }

    public String getWiredAndroidAutoDevice() {
        String str = TAG;
        Log.i(str, "getWiredAndroidAutoDevice in. ");
        try {
            if (!isAvailable()) {
                Log.e(str, "getWiredAndroidAutoDevice~~mInterface is null");
                return null;
            }
            return this.mInterface.getWiredAndroidAutoDevice();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public void deleteAndroidAutoDevice(String str) {
        String str2 = TAG;
        Log.i(str2, "deleteAndroidAutoDevice in. btAddres: " + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "deleteAndroidAutoDevice~~mInterface is null");
            } else {
                this.mInterface.deleteAndroidAutoDevice(str);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x007b A[Catch: RemoteException -> 0x0079, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0079, blocks: (B:5:0x0023, B:7:0x002b, B:9:0x0039, B:10:0x0062, B:13:0x007b), top: B:19:0x0023 }] */
    public void registerVideoFocusStateListener(IVideoFocusCallback iVideoFocusCallback) {
        printClientName();
        String str = TAG;
        Log.i(str, "registerVideoFocusStateListener --- callback: " + iVideoFocusCallback);
        if (this.mInterface == null) {
            Log.e(str, "registerVideoFocusStateListener --- mDeviceMgrProxy == null");
            return;
        }
        if (iVideoFocusCallback != null) {
            try {
                if (!this.mVideoFocusCallback.contains(iVideoFocusCallback)) {
                    this.mVideoFocusCallback.add(iVideoFocusCallback);
                    if (this.mVideoFocusCallback.size() == 1) {
                        this.mVideoFocusAIDL = new IVideoFocusAIDL.Stub() { // from class: com.mega.sdk.linkmanager.MegaLinkManager.8
                            @Override // com.mega.sdk.linkmanager.IVideoFocusAIDL
                            public void onVideoFocusStatusChange(int i) throws RemoteException {
                                if (MegaLinkManager.this.mWorkHandler != null) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 16;
                                    messageObtain.arg1 = i;
                                    MegaLinkManager.this.mWorkHandler.sendMessage(messageObtain);
                                }
                            }
                        };
                        Log.i(str, "registerVideoFocusStateListener: " + this.mContext.getClass().getName());
                        this.mInterface.registerVideoFocusListener(this.mVideoFocusAIDL);
                    } else {
                        Log.w(str, "registerVideoFocusStateListener.size: " + this.mAndroidAutoCallback.size());
                    }
                } else {
                    Log.w(str, "registerVideoFocusStateListener contains callback: " + iVideoFocusCallback);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "registerVideoFocusStateListener --- RemoteException");
            }
        } else {
            Log.w(str, "registerVideoFocusStateListener contains callback: " + iVideoFocusCallback);
        }
    }

    public void unregisterVideoFocusListener(IVideoFocusCallback iVideoFocusCallback) {
        IVideoFocusAIDL iVideoFocusAIDL;
        String str = TAG;
        Log.i(str, "unregisterVideoFocusListener --- callback: " + iVideoFocusCallback);
        if (this.mInterface == null) {
            Log.e(str, "unregisterVideoFocusListener --- mInterface == null");
            return;
        }
        if (iVideoFocusCallback != null) {
            try {
                if (this.mVideoFocusCallback.contains(iVideoFocusCallback)) {
                    this.mVideoFocusCallback.remove(iVideoFocusCallback);
                    if (this.mVideoFocusCallback.size() != 0 || (iVideoFocusAIDL = this.mVideoFocusAIDL) == null) {
                        return;
                    }
                    this.mInterface.unregisterVideoFocusListener(iVideoFocusAIDL);
                    this.mVideoFocusAIDL = null;
                }
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.e(TAG, "unregisterVideoFocusListener --- RemoteException");
            }
        }
    }

    public boolean isAndroidAutoUIProjected() {
        String str = TAG;
        Log.i(str, "isAndroidAutoUIProjected in.");
        try {
            if (!isAvailable()) {
                Log.e(str, "isAndroidAutoUIProjected~~mInterface is null");
                return false;
            }
            return this.mInterface.isAndroidAutoUIProjected();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return false;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public void connectCarPlay(int i, String str, boolean z) {
        String str2 = TAG;
        Log.i(str2, "connectCarPlay in. connectType:" + i + ",device:" + str + ",firstConnect:" + z);
        try {
            if (!isAvailable()) {
                Log.e(str2, "connectCarPlay~~mInterface is null");
            } else {
                this.mInterface.connectCarPlay(i, str, z);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public String queryDeviceConnectHistory(String str) {
        String str2 = TAG;
        Log.i(str2, "queryDeviceConnectHistory in. deviceCode:" + str);
        try {
            if (!isAvailable()) {
                Log.e(str2, "queryDeviceConnectHistory~~mInterface is null");
                return null;
            }
            return this.mInterface.queryDeviceConnectHistory(str);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }

    public String getCurrentCarPlay() {
        String str = TAG;
        Log.i(str, "getCurrentCarPlay in");
        try {
            if (!isAvailable()) {
                Log.e(str, "getCurrentCarPlay~~mInterface is null");
                return null;
            }
            return this.mInterface.getCurrentCarPlay();
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return null;
        }
    }
}
