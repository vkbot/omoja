package com.mega.hicar;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import com.android.launcher3.statemanager.StatefulActivity;
import com.google.gson.Gson;
import com.mega.hicar.model.AppInfo;
import com.mega.hicar.model.PhoneInfo;
import com.mega.hicar.util.ThreadPoolUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.FutureTask;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class HiCarDeviceManager {
    public static final String ACTION_FILE_RECEIVE_SUCCESS = "action_file_receive_success";
    public static final String ACTION_PAUSE = "pause";
    public static final String ACTION_START = "start";
    private static final String CLS_NAME = "com.mega.hicar.service.DeviceService";
    public static final int CONNECT_TYPE_WIRED = 5;
    public static final int CONNECT_TYPE_WIRELESS = 4;
    private static final int EVENT_DEVICE_DISPLAY_SERVICE_PLAYING = 207;
    private static final int EVENT_DEVICE_SERVICE_PAUSE = 202;
    private static final int EVENT_DEVICE_SERVICE_RESUME = 203;
    private static final int EVENT_DEVICE_SERVICE_STOP = 205;
    public static final String FILE_SHARE_ACTION = "com.mega.hicar.service.HiCarService.shareFilesToPhone";
    public static final String FILE_SHARE_EXTRA = "file_path_list";
    public static final int HI_CAR_CALL_IDLE = 0;
    public static final int HI_CAR_CALL_INVALID = -1;
    public static final int HI_CAR_CALL_OFFHOOK = 2;
    public static final int HI_CAR_CALL_RINGING = 1;
    public static final int HI_CAR_CALL_WECHAT = 3;
    public static final int HI_CAR_CONNECTED = 101;
    public static final int HI_CAR_CONNECTING = 104;
    public static final int HI_CAR_DISCONNECTED = 102;
    public static final int HI_CAR_FAILED = 103;
    public static final int INVALIDATE_VALUE = -1;
    public static final String MEDIA = "MEDIA";
    public static final String MIX_LAUNCHER_ACTION = "com.mega.hicar.MIX_LAUNCHER";
    public static final String MIX_LAUNCHER_NAME = "mixLauncher";
    private static final int MSG_CALL_DATA_CHANGE = 1543;
    private static final int MSG_HICAR = 1536;
    private static final int MSG_PIN_CODE_CHANGE = 1541;
    private static final int MSG_PROJECTION_STATE_CHANGE = 1545;
    private static final int MSG_RETRY_BIND_HICAR_SERVICE = 1540;
    private static final int MSG_SHOW_PAGE_CHANGE = 1542;
    private static final int MSG_TRANSMISSION_PROGRESS_CHANGE = 1546;
    private static final int MSG_UPDATE_HICAR_CALL_STATE = 1538;
    private static final int MSG_UPDATE_HICAR_CONN_STATE = 1537;
    private static final int MSG_UPDATE_HICAR_MEDIA_DATA = 1539;
    private static final int MSG_VR_STATE_CHANGE = 1544;
    public static final String NAVIGATION = "NAVIGATION";
    private static final String PKG_NAME = "com.mega.hicar";
    private static final String TAG = "HiCarDeviceManager";
    public static final String TEL = "TEL";
    private static final int VOICE_STATE_IDLE = 0;
    private static final int VOICE_STATE_WAKEUP = 1;
    private Context mContext;
    private long mDelayTime;
    private Gson mGson;
    private final Handler mHandler;
    private final Handler.Callback mHandlerCallBack;
    private final HandlerThread mHandlerThread;
    private final IHiCarAppInfoChangeListener mHiCarAppInfoChangeListener;
    private final List<OnHiCarAppInfoListener> mHiCarAppInfoListeners;
    private final List<CallDataChangeListener> mHiCarCallDataChangeListeners;
    private final IHiCarCallInfoChangeListener mHiCarCallInfoChangeListener;
    private final IHiCarCallStateListener mHiCarCallStateListener;
    private final List<OnHiCarCallStateListener> mHiCarCallStateListeners;
    private final IHiCarConnectStatusListener mHiCarConnStatusListener;
    private final List<OnHiCarConnectionListener> mHiCarConnectionListeners;
    private IHiCarInfoInterface mHiCarInfoInterface;
    private final IHiCarMediaDataListener mHiCarMediaDataListener;
    private final List<OnHiCarMediaDataListener> mHiCarMediaDataListeners;
    private final IHiCarPinCodeChangeListener mHiCarPinCodeChangeListener;
    private final List<OnHiCarPinCodeListener> mHiCarPinCodeListeners;
    private final IHiCarProjectionChangeListener mHiCarProjectionChangeListener;
    private final List<ProjectionStateChangeListener> mHiCarProjectionStateChangeListeners;
    private final IHiCarShowStartPageListener mHiCarShowStartPageListener;
    private final List<OnHiCarShowStartPageListener> mHiCarShowStartPageListeners;
    private final IHiCarTransmissionProgressListener mHiCarTransmissionProgressListener;
    private final List<TransmissionProgressListener> mHiCarTransmissionProgressListeners;
    private final List<FusionUiDisplayChangeListener> mHiCarUiDisplayChangeListeners;
    private final IHiCarVRChangeListener mHiCarVRChangeListener;
    private final List<VRStateChangeListener> mHiCarVRStateChangeListeners;
    private int mRetryCount;
    private final ServiceConnection mServiceConnection;
    private final Handler mWorkHandler;
    private final Handler.Callback mWorkHandlerCallBack;

    public interface CallDataChangeListener {
        void onCallDataChange(String str);
    }

    public interface FusionUiDisplayChangeListener {
        void onUiDisplayChange(int i);
    }

    public interface OnHiCarAppInfoListener {
        void onAppInfoAdd(String str, List<AppInfo> list);

        void onAppInfoRemove(String str, List<AppInfo> list);

        void onAppInfoUpdate(String str, List<AppInfo> list);

        void onLoadAllAppInfo(String str, List<AppInfo> list);
    }

    public interface OnHiCarCallStateListener {
        void onCallStateChange(int i);
    }

    public interface OnHiCarConnectionListener {
        void onConnStateChanged(int i);
    }

    public interface OnHiCarMediaDataListener {
        void onMediaDataChange(String str);
    }

    public interface OnHiCarPinCodeListener {
        void onPinCodeChange(String str);
    }

    public interface OnHiCarShowStartPageListener {
        void onShowStartPage();
    }

    public interface ProjectionStateChangeListener {
        void onProjectionStateChange(int i);
    }

    public interface TransmissionProgressListener {
        void onTransmissionProgressChange(int i);
    }

    public interface VRStateChangeListener {
        void onVRStateChange(int i);
    }

    private int convertProjectionState(int i) {
        if (i == 203 || i == 207) {
            return 1;
        }
        if (i == 202) {
            return 2;
        }
        return i == 205 ? 3 : 0;
    }

    private int convertVRState(int i) {
        if (i == 0) {
            return 1;
        }
        return i == 1 ? 2 : 0;
    }

    private static final class InstanceHolder {
        static final HiCarDeviceManager INSTANCE = new HiCarDeviceManager();

        private InstanceHolder() {
        }
    }

    private HiCarDeviceManager() {
        this.mGson = new Gson();
        this.mHiCarConnectionListeners = new ArrayList();
        this.mHiCarCallStateListeners = new ArrayList();
        this.mHiCarMediaDataListeners = new CopyOnWriteArrayList();
        this.mHiCarPinCodeListeners = new CopyOnWriteArrayList();
        this.mHiCarAppInfoListeners = new CopyOnWriteArrayList();
        this.mHiCarShowStartPageListeners = new ArrayList();
        this.mHiCarUiDisplayChangeListeners = new CopyOnWriteArrayList();
        this.mHiCarCallDataChangeListeners = new CopyOnWriteArrayList();
        this.mHiCarVRStateChangeListeners = new CopyOnWriteArrayList();
        this.mHiCarProjectionStateChangeListeners = new CopyOnWriteArrayList();
        this.mHiCarTransmissionProgressListeners = new CopyOnWriteArrayList();
        this.mRetryCount = 0;
        this.mDelayTime = StatefulActivity.HOME_ICON_DELAY;
        this.mServiceConnection = new ServiceConnection() { // from class: com.mega.hicar.HiCarDeviceManager.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                MLog.d(HiCarDeviceManager.TAG, "onServiceConnected: " + componentName);
                HiCarDeviceManager.this.mRetryCount = 0;
                HiCarDeviceManager.this.mHiCarInfoInterface = IHiCarInfoInterface.Stub.asInterface(iBinder);
                try {
                    HiCarDeviceManager.this.mHiCarInfoInterface.registerConnectStatusListener(HiCarDeviceManager.this.mHiCarConnStatusListener);
                    HiCarDeviceManager.this.mHiCarInfoInterface.registerCallStateListener(HiCarDeviceManager.this.mHiCarCallStateListener);
                    HiCarDeviceManager.this.mHiCarInfoInterface.registerMediaDataListener(HiCarDeviceManager.this.mHiCarMediaDataListener);
                    HiCarDeviceManager.this.mHiCarInfoInterface.registerPinCodeChangeListener(HiCarDeviceManager.this.mHiCarPinCodeChangeListener);
                    HiCarDeviceManager.this.mHiCarInfoInterface.registerHiCarAppInfoChangeListener(HiCarDeviceManager.this.mHiCarAppInfoChangeListener);
                    HiCarDeviceManager.this.mHiCarInfoInterface.registerHiCarShowStartPageListener(HiCarDeviceManager.this.mHiCarShowStartPageListener);
                    HiCarDeviceManager.this.mHiCarInfoInterface.registerHiCarCallInfoListener(HiCarDeviceManager.this.mHiCarCallInfoChangeListener);
                    HiCarDeviceManager.this.mHiCarInfoInterface.registerHiCarVRChangeListener(HiCarDeviceManager.this.mHiCarVRChangeListener);
                    HiCarDeviceManager.this.mHiCarInfoInterface.registerHiCarProjectionChangeListener(HiCarDeviceManager.this.mHiCarProjectionChangeListener);
                    MLog.i(HiCarDeviceManager.TAG, "register hicar listener ...");
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                MLog.d(HiCarDeviceManager.TAG, "onServiceDisconnected: " + componentName);
                HiCarDeviceManager.this.notifyCallStateChanged(-1);
                HiCarDeviceManager.this.notifyConnStateChanged(102);
                HiCarDeviceManager.this.mHiCarInfoInterface = null;
                HiCarDeviceManager hiCarDeviceManager = HiCarDeviceManager.this;
                hiCarDeviceManager.init(hiCarDeviceManager.mContext);
            }
        };
        this.mHiCarConnStatusListener = new IHiCarConnectStatusListener.Stub() { // from class: com.mega.hicar.HiCarDeviceManager.2
            @Override // com.mega.hicar.IHiCarConnectStatusListener
            public void onConnectStatusChange(String str, int i) throws RemoteException {
                MLog.d(HiCarDeviceManager.TAG, "callback ==> hicar conn state changed: deviceId==" + str + " state=" + i);
                HiCarDeviceManager.this.mHandler.sendMessage(Message.obtain(null, HiCarDeviceManager.MSG_UPDATE_HICAR_CONN_STATE, i, 0));
            }
        };
        this.mHiCarCallStateListener = new IHiCarCallStateListener.Stub() { // from class: com.mega.hicar.HiCarDeviceManager.3
            @Override // com.mega.hicar.IHiCarCallStateListener
            public void onCallStateChange(int i) throws RemoteException {
                MLog.i(HiCarDeviceManager.TAG, "callback ==> hicar call state changed: " + i);
                HiCarDeviceManager.this.mHandler.sendMessage(Message.obtain(null, HiCarDeviceManager.MSG_UPDATE_HICAR_CALL_STATE, i, 0));
            }
        };
        this.mHiCarMediaDataListener = new IHiCarMediaDataListener.Stub() { // from class: com.mega.hicar.HiCarDeviceManager.4
            @Override // com.mega.hicar.IHiCarMediaDataListener
            public void onMediaDataChange(String str) throws RemoteException {
                MLog.d(HiCarDeviceManager.TAG, "callback ==> hicar media data changed");
                HiCarDeviceManager.this.mWorkHandler.sendMessage(Message.obtain(null, HiCarDeviceManager.MSG_UPDATE_HICAR_MEDIA_DATA, 0, 0, str));
            }
        };
        this.mHiCarPinCodeChangeListener = new IHiCarPinCodeChangeListener.Stub() { // from class: com.mega.hicar.HiCarDeviceManager.5
            @Override // com.mega.hicar.IHiCarPinCodeChangeListener
            public void onPinCodeChange(String str) throws RemoteException {
                MLog.d(HiCarDeviceManager.TAG, "callback ==> pinCode changed: " + str);
                HiCarDeviceManager.this.mHandler.sendMessage(Message.obtain(null, HiCarDeviceManager.MSG_PIN_CODE_CHANGE, str));
            }
        };
        this.mHiCarCallInfoChangeListener = new IHiCarCallInfoChangeListener.Stub() { // from class: com.mega.hicar.HiCarDeviceManager.6
            @Override // com.mega.hicar.IHiCarCallInfoChangeListener
            public void onCallInfoChange(String str) throws RemoteException {
                MLog.d(HiCarDeviceManager.TAG, "callback ==> CallInfo changed: " + str);
                HiCarDeviceManager.this.mWorkHandler.sendMessage(Message.obtain(null, HiCarDeviceManager.MSG_CALL_DATA_CHANGE, str));
            }
        };
        this.mHiCarVRChangeListener = new IHiCarVRChangeListener.Stub() { // from class: com.mega.hicar.HiCarDeviceManager.7
            @Override // com.mega.hicar.IHiCarVRChangeListener
            public void onHiCarVRChange(int i) throws RemoteException {
                MLog.d(HiCarDeviceManager.TAG, "callback ==> VR state changed: " + i);
                HiCarDeviceManager.this.mHandler.sendMessage(Message.obtain(null, HiCarDeviceManager.MSG_VR_STATE_CHANGE, i, 0));
            }
        };
        this.mHiCarProjectionChangeListener = new IHiCarProjectionChangeListener.Stub() { // from class: com.mega.hicar.HiCarDeviceManager.8
            @Override // com.mega.hicar.IHiCarProjectionChangeListener
            public void onHiCarProjectionChange(int i) throws RemoteException {
                MLog.d(HiCarDeviceManager.TAG, "callback ==> projection state changed: " + i);
                HiCarDeviceManager.this.mHandler.sendMessage(Message.obtain(null, HiCarDeviceManager.MSG_PROJECTION_STATE_CHANGE, i, 0));
            }
        };
        this.mHiCarTransmissionProgressListener = new IHiCarTransmissionProgressListener.Stub() { // from class: com.mega.hicar.HiCarDeviceManager.9
            @Override // com.mega.hicar.IHiCarTransmissionProgressListener
            public void onTransmissionProgressChange(int i) throws RemoteException {
                MLog.d(HiCarDeviceManager.TAG, "callback ==> TransmissionProgress progress: " + i);
                HiCarDeviceManager.this.mHandler.sendMessage(Message.obtain(null, HiCarDeviceManager.MSG_TRANSMISSION_PROGRESS_CHANGE, i, 0));
            }
        };
        this.mHiCarAppInfoChangeListener = new IHiCarAppInfoChangeListener.Stub() { // from class: com.mega.hicar.HiCarDeviceManager.10
            @Override // com.mega.hicar.IHiCarAppInfoChangeListener
            public void onLoadAllAppInfo(String str, List<AppInfo> list) throws RemoteException {
                MLog.i(HiCarDeviceManager.TAG, "onLoadAllAppInfo deviceId==" + str);
                Iterator it = HiCarDeviceManager.this.mHiCarAppInfoListeners.iterator();
                while (it.hasNext()) {
                    ((OnHiCarAppInfoListener) it.next()).onLoadAllAppInfo(str, list);
                }
            }

            @Override // com.mega.hicar.IHiCarAppInfoChangeListener
            public void onAppInfoAdd(String str, List<AppInfo> list) throws RemoteException {
                MLog.d(HiCarDeviceManager.TAG, "onAppInfoAdd deviceId==" + str + ", list==" + list);
                Iterator it = HiCarDeviceManager.this.mHiCarAppInfoListeners.iterator();
                while (it.hasNext()) {
                    ((OnHiCarAppInfoListener) it.next()).onAppInfoAdd(str, list);
                }
            }

            @Override // com.mega.hicar.IHiCarAppInfoChangeListener
            public void onAppInfoRemove(String str, List<AppInfo> list) throws RemoteException {
                MLog.d(HiCarDeviceManager.TAG, "onAppInfoRemove deviceId==" + str + ", list==" + list);
                Iterator it = HiCarDeviceManager.this.mHiCarAppInfoListeners.iterator();
                while (it.hasNext()) {
                    ((OnHiCarAppInfoListener) it.next()).onAppInfoRemove(str, list);
                }
            }

            @Override // com.mega.hicar.IHiCarAppInfoChangeListener
            public void onAppInfoUpdate(String str, List<AppInfo> list) throws RemoteException {
                MLog.d(HiCarDeviceManager.TAG, "onAppInfoUpdate deviceId==" + str + ", list==" + list);
                Iterator it = HiCarDeviceManager.this.mHiCarAppInfoListeners.iterator();
                while (it.hasNext()) {
                    ((OnHiCarAppInfoListener) it.next()).onAppInfoUpdate(str, list);
                }
            }
        };
        this.mHiCarShowStartPageListener = new IHiCarShowStartPageListener.Stub() { // from class: com.mega.hicar.HiCarDeviceManager.11
            @Override // com.mega.hicar.IHiCarShowStartPageListener
            public void onShowStartPage() throws RemoteException {
                MLog.i(HiCarDeviceManager.TAG, "callback ==> onShowStartPage changed");
                HiCarDeviceManager.this.mHandler.sendMessage(Message.obtain((Handler) null, HiCarDeviceManager.MSG_SHOW_PAGE_CHANGE));
            }
        };
        Handler.Callback callback = new Handler.Callback() { // from class: com.mega.hicar.HiCarDeviceManager$$ExternalSyntheticLambda1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f$0.m252lambda$new$0$commegahicarHiCarDeviceManager(message);
            }
        };
        this.mHandlerCallBack = callback;
        Handler.Callback callback2 = new Handler.Callback() { // from class: com.mega.hicar.HiCarDeviceManager$$ExternalSyntheticLambda2
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f$0.m253lambda$new$1$commegahicarHiCarDeviceManager(message);
            }
        };
        this.mWorkHandlerCallBack = callback2;
        this.mHandler = new Handler(Looper.getMainLooper(), callback);
        HandlerThread handlerThread = new HandlerThread("HiCarDeviceManager");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mWorkHandler = new Handler(handlerThread.getLooper(), callback2);
    }

    public static HiCarDeviceManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    public void init(Context context) {
        if (context == null) {
            MLog.i(TAG, "context is null");
            return;
        }
        this.mContext = context;
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.mega.hicar", CLS_NAME));
        this.mRetryCount++;
        boolean zBindService = context.bindService(intent, this.mServiceConnection, 1);
        if (!zBindService) {
            context.unbindService(this.mServiceConnection);
        }
        MLog.i(TAG, "bind: com.mega.hicar.service.DeviceService " + zBindService + "  context = " + context);
        if (!isBindSuccess() && this.mRetryCount < 10) {
            this.mHandler.sendEmptyMessageDelayed(MSG_RETRY_BIND_HICAR_SERVICE, this.mDelayTime);
        } else {
            this.mHandler.removeMessages(MSG_RETRY_BIND_HICAR_SERVICE);
        }
    }

    public void release(Context context) {
        if (isBindSuccess()) {
            try {
                this.mHiCarInfoInterface.unregisterCallStateListener(this.mHiCarCallStateListener);
                this.mHiCarInfoInterface.unregisterConnectStatusListener(this.mHiCarConnStatusListener);
                this.mHiCarInfoInterface.unregisterMediaDataListener(this.mHiCarMediaDataListener);
                this.mHiCarInfoInterface.unregisterPinCodeChangeListener(this.mHiCarPinCodeChangeListener);
                this.mHiCarInfoInterface.unregisterHiCarAppInfoChangeListener(this.mHiCarAppInfoChangeListener);
                this.mHiCarInfoInterface.unregisterHiCarShowStartPageListener(this.mHiCarShowStartPageListener);
                this.mHiCarInfoInterface.unregisterHiCarCallInfoListener(this.mHiCarCallInfoChangeListener);
                this.mHiCarInfoInterface.unregisterHiCarVRChangeListener(this.mHiCarVRChangeListener);
                this.mHiCarInfoInterface.unregisterHiCarProjectionChangeListener(this.mHiCarProjectionChangeListener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            context.unbindService(this.mServiceConnection);
        }
        this.mContext = null;
        synchronized (this.mHiCarCallStateListeners) {
            this.mHiCarCallStateListeners.clear();
        }
        synchronized (this.mHiCarConnectionListeners) {
            this.mHiCarConnectionListeners.clear();
        }
        synchronized (this.mHiCarMediaDataListener) {
            this.mHiCarMediaDataListeners.clear();
        }
        synchronized (this.mHiCarPinCodeChangeListener) {
            this.mHiCarPinCodeListeners.clear();
        }
        synchronized (this.mHiCarAppInfoChangeListener) {
            this.mHiCarAppInfoListeners.clear();
        }
        synchronized (this.mHiCarShowStartPageListener) {
            this.mHiCarShowStartPageListeners.clear();
        }
        synchronized (this.mHiCarUiDisplayChangeListeners) {
            this.mHiCarUiDisplayChangeListeners.clear();
        }
        synchronized (this.mHiCarCallDataChangeListeners) {
            this.mHiCarCallDataChangeListeners.clear();
        }
        synchronized (this.mHiCarVRStateChangeListeners) {
            this.mHiCarVRStateChangeListeners.clear();
        }
        synchronized (this.mHiCarProjectionStateChangeListeners) {
            this.mHiCarProjectionStateChangeListeners.clear();
        }
        synchronized (this.mHiCarTransmissionProgressListeners) {
            this.mHiCarTransmissionProgressListeners.clear();
        }
    }

    /* JADX INFO: renamed from: lambda$new$0$com-mega-hicar-HiCarDeviceManager, reason: not valid java name */
    /* synthetic */ boolean m252lambda$new$0$commegahicarHiCarDeviceManager(Message message) {
        if (message.what == MSG_UPDATE_HICAR_CONN_STATE) {
            notifyConnStateChanged(message.arg1);
            return true;
        }
        if (message.what == MSG_UPDATE_HICAR_CALL_STATE) {
            notifyCallStateChanged(message.arg1);
            return true;
        }
        if (message.what == MSG_RETRY_BIND_HICAR_SERVICE) {
            init(this.mContext);
            return true;
        }
        if (message.what == MSG_PIN_CODE_CHANGE) {
            notifyPinCodeChanged((String) message.obj);
            return true;
        }
        if (message.what == MSG_SHOW_PAGE_CHANGE) {
            notifyStartPageChanged();
            return true;
        }
        if (message.what == MSG_VR_STATE_CHANGE) {
            notifyVRStateChanged(message.arg1);
            return true;
        }
        if (message.what == MSG_PROJECTION_STATE_CHANGE) {
            notifyProjectionStateChanged(message.arg1);
            return true;
        }
        if (message.what != MSG_TRANSMISSION_PROGRESS_CHANGE) {
            return true;
        }
        notifyTransmissionProgressChanged(message.arg1);
        return true;
    }

    /* JADX INFO: renamed from: lambda$new$1$com-mega-hicar-HiCarDeviceManager, reason: not valid java name */
    /* synthetic */ boolean m253lambda$new$1$commegahicarHiCarDeviceManager(Message message) {
        if (message.what == MSG_UPDATE_HICAR_MEDIA_DATA) {
            notifyMediaDataChanged((String) message.obj);
            return true;
        }
        if (message.what != MSG_CALL_DATA_CHANGE) {
            return true;
        }
        notifyCallDataChanged((String) message.obj);
        return true;
    }

    public void registerHiCarConnectionListener(OnHiCarConnectionListener onHiCarConnectionListener) {
        if (onHiCarConnectionListener == null || this.mHiCarConnectionListeners.contains(onHiCarConnectionListener)) {
            return;
        }
        this.mHiCarConnectionListeners.add(onHiCarConnectionListener);
    }

    public void unregisterHiCarConnectionListener(OnHiCarConnectionListener onHiCarConnectionListener) {
        synchronized (this.mHiCarConnectionListeners) {
            this.mHiCarConnectionListeners.remove(onHiCarConnectionListener);
        }
    }

    public void registerHiCarCallStateListener(OnHiCarCallStateListener onHiCarCallStateListener) {
        synchronized (this.mHiCarCallStateListeners) {
            if (onHiCarCallStateListener != null) {
                if (!this.mHiCarCallStateListeners.contains(onHiCarCallStateListener)) {
                    this.mHiCarCallStateListeners.add(onHiCarCallStateListener);
                }
            }
        }
    }

    public void unregisterHiCarCallStateListener(OnHiCarCallStateListener onHiCarCallStateListener) {
        synchronized (this.mHiCarCallStateListeners) {
            this.mHiCarCallStateListeners.remove(onHiCarCallStateListener);
        }
    }

    public void registerHiCarMediaDataListener(OnHiCarMediaDataListener onHiCarMediaDataListener) {
        MLog.d(TAG, "registerHiCarMediaDataListener: listener==" + onHiCarMediaDataListener);
        synchronized (this.mHiCarMediaDataListeners) {
            if (onHiCarMediaDataListener != null) {
                if (!this.mHiCarMediaDataListeners.contains(onHiCarMediaDataListener)) {
                    this.mHiCarMediaDataListeners.add(onHiCarMediaDataListener);
                }
            }
        }
    }

    public void unregisterHiCarMediaDataListener(OnHiCarMediaDataListener onHiCarMediaDataListener) {
        MLog.d(TAG, "unregisterHiCarMediaDataListener: listener==" + onHiCarMediaDataListener);
        synchronized (this.mHiCarMediaDataListeners) {
            this.mHiCarMediaDataListeners.remove(onHiCarMediaDataListener);
        }
    }

    public void registerHiCarPinCodeListener(OnHiCarPinCodeListener onHiCarPinCodeListener) {
        synchronized (this.mHiCarPinCodeListeners) {
            if (onHiCarPinCodeListener != null) {
                if (!this.mHiCarPinCodeListeners.contains(onHiCarPinCodeListener)) {
                    this.mHiCarPinCodeListeners.add(onHiCarPinCodeListener);
                }
            }
        }
    }

    public void unregisterHiCarPinCodeListener(OnHiCarPinCodeListener onHiCarPinCodeListener) {
        synchronized (this.mHiCarPinCodeListeners) {
            this.mHiCarPinCodeListeners.remove(onHiCarPinCodeListener);
        }
    }

    public void registerHiCarShowStartPageListener(OnHiCarShowStartPageListener onHiCarShowStartPageListener) {
        synchronized (this.mHiCarShowStartPageListeners) {
            if (onHiCarShowStartPageListener != null) {
                if (!this.mHiCarShowStartPageListeners.contains(onHiCarShowStartPageListener)) {
                    this.mHiCarShowStartPageListeners.add(onHiCarShowStartPageListener);
                }
            }
        }
    }

    public void unregisterHiCarShowStartPageListener(OnHiCarShowStartPageListener onHiCarShowStartPageListener) {
        synchronized (this.mHiCarShowStartPageListeners) {
            this.mHiCarShowStartPageListeners.remove(onHiCarShowStartPageListener);
        }
    }

    public void registerHiCarAppInfoListener(OnHiCarAppInfoListener onHiCarAppInfoListener) {
        synchronized (this.mHiCarAppInfoListeners) {
            if (onHiCarAppInfoListener != null) {
                if (!this.mHiCarAppInfoListeners.contains(onHiCarAppInfoListener)) {
                    this.mHiCarAppInfoListeners.add(onHiCarAppInfoListener);
                }
            }
        }
    }

    public void unregisterHiCarAppInfoListener(OnHiCarAppInfoListener onHiCarAppInfoListener) {
        synchronized (this.mHiCarAppInfoListeners) {
            this.mHiCarAppInfoListeners.remove(onHiCarAppInfoListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyConnStateChanged(int i) {
        synchronized (this.mHiCarConnectionListeners) {
            Iterator<OnHiCarConnectionListener> it = this.mHiCarConnectionListeners.iterator();
            while (it.hasNext()) {
                it.next().onConnStateChanged(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCallStateChanged(int i) {
        synchronized (this.mHiCarCallStateListeners) {
            Iterator<OnHiCarCallStateListener> it = this.mHiCarCallStateListeners.iterator();
            while (it.hasNext()) {
                it.next().onCallStateChange(i);
            }
        }
    }

    private void notifyMediaDataChanged(String str) {
        MLog.d(TAG, "notifyMediaDataChanged: mHiCarMediaDataListeners==" + this.mHiCarMediaDataListeners);
        synchronized (this.mHiCarCallStateListeners) {
            Iterator<OnHiCarMediaDataListener> it = this.mHiCarMediaDataListeners.iterator();
            while (it.hasNext()) {
                it.next().onMediaDataChange(str);
            }
        }
    }

    private void notifyPinCodeChanged(String str) {
        synchronized (this.mHiCarPinCodeListeners) {
            Iterator<OnHiCarPinCodeListener> it = this.mHiCarPinCodeListeners.iterator();
            while (it.hasNext()) {
                it.next().onPinCodeChange(str);
            }
        }
    }

    private void notifyStartPageChanged() {
        synchronized (this.mHiCarShowStartPageListeners) {
            Iterator<OnHiCarShowStartPageListener> it = this.mHiCarShowStartPageListeners.iterator();
            while (it.hasNext()) {
                it.next().onShowStartPage();
            }
        }
    }

    private void notifyCallDataChanged(String str) {
        synchronized (this.mHiCarCallDataChangeListeners) {
            Iterator<CallDataChangeListener> it = this.mHiCarCallDataChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onCallDataChange(str);
            }
        }
    }

    private void notifyVRStateChanged(int i) {
        synchronized (this.mHiCarVRStateChangeListeners) {
            Iterator<VRStateChangeListener> it = this.mHiCarVRStateChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onVRStateChange(convertVRState(i));
            }
        }
    }

    private void notifyProjectionStateChanged(int i) {
        synchronized (this.mHiCarProjectionStateChangeListeners) {
            Iterator<ProjectionStateChangeListener> it = this.mHiCarProjectionStateChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onProjectionStateChange(convertProjectionState(i));
            }
        }
    }

    private void notifyTransmissionProgressChanged(int i) {
        synchronized (this.mHiCarTransmissionProgressListeners) {
            Iterator<TransmissionProgressListener> it = this.mHiCarTransmissionProgressListeners.iterator();
            while (it.hasNext()) {
                it.next().onTransmissionProgressChange(i);
            }
        }
    }

    public boolean isBindSuccess() {
        MLog.d(TAG, "isBindSuccess: mHiCarInfoInterface==" + this.mHiCarInfoInterface);
        return this.mHiCarInfoInterface != null;
    }

    public List<PhoneInfo> getPhoneList() {
        if (!isBindSuccess()) {
            return new ArrayList();
        }
        try {
            return this.mHiCarInfoInterface.getPhoneList();
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return new ArrayList();
        }
    }

    public boolean isHiCarConnected() {
        return !TextUtils.isEmpty(getConnectPhoneID());
    }

    public String getConnectPhoneID() {
        String str = TAG;
        MLog.d(str, "getConnectPhoneID()");
        if (!isBindSuccess()) {
            return "";
        }
        try {
            MLog.d(str, "getConnectPhoneID1: ");
            return this.mHiCarInfoInterface.getConnectPhoneID();
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return "";
        }
    }

    public int getHiCarCallState() {
        MLog.i(TAG, "getHiCarCallState()");
        if (!isBindSuccess()) {
            return -1;
        }
        try {
            return this.mHiCarInfoInterface.getHiCarCallState();
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return -1;
        }
    }

    public void connectPhone(String str) {
        if (isBindSuccess()) {
            try {
                this.mHiCarInfoInterface.connectPhone(str);
            } catch (RemoteException e) {
                MLog.e(TAG, e.getLocalizedMessage());
            }
        }
    }

    public int disconnectPhone(String str) {
        if (!isBindSuccess()) {
            return -1;
        }
        try {
            return this.mHiCarInfoInterface.disconnectPhone(str);
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return -1;
        }
    }

    public int deletePhone(String str) {
        if (!isBindSuccess()) {
            return -1;
        }
        try {
            return this.mHiCarInfoInterface.deletePhone(str);
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return -1;
        }
    }

    public int getConnectionType() {
        if (!isBindSuccess()) {
            return -1;
        }
        try {
            return this.mHiCarInfoInterface.getConnectionType();
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return -1;
        }
    }

    public void previousMedia() {
        if (isBindSuccess()) {
            try {
                this.mHiCarInfoInterface.previousMedia();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void nextMedia() {
        if (isBindSuccess()) {
            try {
                this.mHiCarInfoInterface.nextMedia();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void playOrPauseMedia() {
        if (isBindSuccess()) {
            try {
                this.mHiCarInfoInterface.playOrPauseMedia();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void playMedia() {
        if (isBindSuccess()) {
            try {
                this.mHiCarInfoInterface.playMedia();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void pauseMedia() {
        if (isBindSuccess()) {
            try {
                this.mHiCarInfoInterface.pauseMedia();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public String requestPinCode() {
        if (!isBindSuccess()) {
            return "-1";
        }
        ThreadPoolUtil.getPollInstance().execute(new FutureTask<>(new Callable() { // from class: com.mega.hicar.HiCarDeviceManager$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m254lambda$requestPinCode$2$commegahicarHiCarDeviceManager();
            }
        }));
        return "980412";
    }

    /* JADX INFO: renamed from: lambda$requestPinCode$2$com-mega-hicar-HiCarDeviceManager, reason: not valid java name */
    /* synthetic */ String m254lambda$requestPinCode$2$commegahicarHiCarDeviceManager() throws Exception {
        String pinCode = this.mHiCarInfoInterface.getPinCode();
        MLog.d(TAG, "requestPinCode() pinCode: " + pinCode);
        return pinCode;
    }

    public boolean isSupportMixLauncher() {
        if (!isBindSuccess()) {
            return false;
        }
        try {
            boolean zIsSupportMixLauncher = this.mHiCarInfoInterface.isSupportMixLauncher();
            MLog.d(TAG, "isSupportMixLauncher() isSupport: " + zIsSupportMixLauncher);
            return zIsSupportMixLauncher;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int sendAppInfo(String str, String str2) {
        if (!isBindSuccess()) {
            return -1;
        }
        try {
            MLog.d(TAG, "sendAppInfo() appInfoRes: " + this.mHiCarInfoInterface.sendAppInfo(str, str2));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public List<AppInfo> getAllAppInfoList() {
        if (!isBindSuccess()) {
            return null;
        }
        try {
            List<AppInfo> allAppInfoList = this.mHiCarInfoInterface.getAllAppInfoList();
            MLog.d(TAG, "getAllAppInfoList() appInfoList: " + allAppInfoList);
            return allAppInfoList;
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getLastAppPackageName() {
        if (!isBindSuccess()) {
            return "";
        }
        try {
            String lastAppPackageName = this.mHiCarInfoInterface.getLastAppPackageName();
            MLog.d(TAG, "getLastAppPackageName() appPackageName: " + lastAppPackageName);
            return lastAppPackageName;
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public void startHiCarApp(String str) {
        MLog.d(TAG, "startHiCarApp() keycode: " + str);
        if (isBindSuccess()) {
            try {
                this.mHiCarInfoInterface.startHiCarApp(str);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public boolean isSupportHiCarForBt(String str) {
        String str2 = TAG;
        MLog.d(str2, "isSupportHiCarForBt: btAddress==" + str);
        if (!isBindSuccess()) {
            return false;
        }
        try {
            boolean zIsSupportHiCarForBt = this.mHiCarInfoInterface.isSupportHiCarForBt(str);
            MLog.d(str2, "isSupportHiCarForBt() isSupport: " + zIsSupportHiCarForBt);
            return zIsSupportHiCarForBt;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isHiCarMediaPlaying() {
        String str = TAG;
        MLog.d(str, "isHiCarMediaPlaying()");
        if (!isBindSuccess()) {
            return false;
        }
        try {
            boolean zIsHiCarMediaPlaying = this.mHiCarInfoInterface.isHiCarMediaPlaying();
            MLog.d(str, "isHiCarMediaPlaying() isPlaying: " + zIsHiCarMediaPlaying);
            return zIsHiCarMediaPlaying;
        } catch (RemoteException e) {
            MLog.e(TAG, "isHiCarMediaPlaying error: ", e);
            return false;
        }
    }

    public String getConnectDeviceName() {
        String str = TAG;
        MLog.d(str, "getConnectDeviceName()");
        if (!isBindSuccess()) {
            return "";
        }
        try {
            String connectDeviceName = this.mHiCarInfoInterface.getConnectDeviceName();
            MLog.d(str, "getConnectDeviceName() deviceName: " + connectDeviceName);
            return connectDeviceName;
        } catch (RemoteException e) {
            MLog.e(TAG, "getConnectDeviceName error: ", e);
            return "";
        }
    }

    public String getHiCarCallInfo() {
        if (!isBindSuccess()) {
            return null;
        }
        try {
            String hiCarCallInfo = this.mHiCarInfoInterface.getHiCarCallInfo();
            MLog.d(TAG, "getHiCarCallInfo hiCarCallInfo==" + hiCarCallInfo);
            return hiCarCallInfo;
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return "";
        }
    }

    public int getHiCarVrState() {
        if (!isBindSuccess()) {
            return 0;
        }
        try {
            int hiCarVRState = this.mHiCarInfoInterface.getHiCarVRState();
            MLog.d(TAG, "getHiCarVrState vrState==" + hiCarVRState);
            return convertVRState(hiCarVRState);
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return 0;
        }
    }

    public int getHiCarProjectionState() {
        if (!isBindSuccess()) {
            return 0;
        }
        try {
            int hiCarProjectionState = this.mHiCarInfoInterface.getHiCarProjectionState();
            MLog.d(TAG, "getHiCarProjectionState projectionState==" + hiCarProjectionState);
            return convertProjectionState(hiCarProjectionState);
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return 0;
        }
    }

    public int sendLocalFile2HiCar(List<String> list, TransmissionProgressListener transmissionProgressListener) {
        String str = TAG;
        MLog.d(str, "sendLocalFile2HiCar filePathList==" + list);
        if (!isBindSuccess()) {
            return -2;
        }
        try {
            synchronized (this.mHiCarTransmissionProgressListeners) {
                if (transmissionProgressListener != null) {
                    if (!this.mHiCarTransmissionProgressListeners.contains(transmissionProgressListener)) {
                        this.mHiCarTransmissionProgressListeners.add(transmissionProgressListener);
                    }
                }
            }
            int iSendLocalFile2HiCar = this.mHiCarInfoInterface.sendLocalFile2HiCar(list, this.mHiCarTransmissionProgressListener);
            MLog.d(str, "sendLocalFile2HiCar res==" + iSendLocalFile2HiCar);
            return iSendLocalFile2HiCar;
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return -3;
        }
    }

    public boolean call() {
        return controlHiCar(2);
    }

    public boolean endCall() {
        return controlHiCar(3);
    }

    private boolean controlHiCar(int i) {
        String str = TAG;
        MLog.d(str, "controlHiCar()");
        if (!isBindSuccess()) {
            return false;
        }
        try {
            boolean zControlHiCar = this.mHiCarInfoInterface.controlHiCar(i);
            MLog.d(str, "controlHiCar() res: " + zControlHiCar);
            return zControlHiCar;
        } catch (RemoteException e) {
            MLog.e(TAG, e.getLocalizedMessage());
            return false;
        }
    }

    public void registerHiCarFusionUiDisplayCallback(FusionUiDisplayChangeListener fusionUiDisplayChangeListener) {
        synchronized (this.mHiCarUiDisplayChangeListeners) {
            if (fusionUiDisplayChangeListener != null) {
                if (!this.mHiCarUiDisplayChangeListeners.contains(fusionUiDisplayChangeListener)) {
                    this.mHiCarUiDisplayChangeListeners.add(fusionUiDisplayChangeListener);
                }
            }
        }
    }

    public void unregisterHiCarFusionUiDisplayCallback(FusionUiDisplayChangeListener fusionUiDisplayChangeListener) {
        synchronized (this.mHiCarUiDisplayChangeListeners) {
            this.mHiCarUiDisplayChangeListeners.remove(fusionUiDisplayChangeListener);
        }
    }

    public void registerHiCarCallDataCallback(CallDataChangeListener callDataChangeListener) {
        synchronized (this.mHiCarCallDataChangeListeners) {
            if (callDataChangeListener != null) {
                if (!this.mHiCarCallDataChangeListeners.contains(callDataChangeListener)) {
                    this.mHiCarCallDataChangeListeners.add(callDataChangeListener);
                }
            }
        }
    }

    public void unregisterHiCarCallDataCallback(CallDataChangeListener callDataChangeListener) {
        synchronized (this.mHiCarCallDataChangeListeners) {
            this.mHiCarCallDataChangeListeners.remove(callDataChangeListener);
        }
    }

    public void registerHiCarVRStateCallback(VRStateChangeListener vRStateChangeListener) {
        synchronized (this.mHiCarVRStateChangeListeners) {
            if (vRStateChangeListener != null) {
                if (!this.mHiCarVRStateChangeListeners.contains(vRStateChangeListener)) {
                    this.mHiCarVRStateChangeListeners.add(vRStateChangeListener);
                }
            }
        }
    }

    public void unregisterHiCarVRStateCallback(VRStateChangeListener vRStateChangeListener) {
        synchronized (this.mHiCarVRStateChangeListeners) {
            this.mHiCarVRStateChangeListeners.remove(vRStateChangeListener);
        }
    }

    public void registerHiCarProjectionStateCallback(ProjectionStateChangeListener projectionStateChangeListener) {
        synchronized (this.mHiCarProjectionStateChangeListeners) {
            if (projectionStateChangeListener != null) {
                if (!this.mHiCarProjectionStateChangeListeners.contains(projectionStateChangeListener)) {
                    this.mHiCarProjectionStateChangeListeners.add(projectionStateChangeListener);
                }
            }
        }
    }

    public void unregisterHiCarProjectionStateCallback(ProjectionStateChangeListener projectionStateChangeListener) {
        synchronized (this.mHiCarProjectionStateChangeListeners) {
            this.mHiCarProjectionStateChangeListeners.remove(projectionStateChangeListener);
        }
    }
}
