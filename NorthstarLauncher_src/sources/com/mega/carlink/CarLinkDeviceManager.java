package com.mega.carlink;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.mega.carlink.base.IConnectInfoProvider;
import com.mega.carlink.model.AppInfo;
import com.mega.carlink.model.CallInfo;
import com.mega.carlink.model.MusicInfo;
import com.mega.carlink.model.NavigationInfo;
import com.mega.carlink.model.PhoneInfo;
import com.mega.launcherapi.WallpaperConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class CarLinkDeviceManager implements IConnectInfoProvider {
    public static final String ACTION_PAUSE = "pause";
    public static final String ACTION_START = "start";
    public static final String CARLINK_MIX_LAUNCHER_ACTION = "com.mega.carlink.MIX_LAUNCHER";
    public static final String CARLINK_MIX_LAUNCHER_NAME = "mixLauncher";
    public static final String CARLINK_SHOW = "carlink_show";
    public static final String CONNECTING_TO_ZERO = "connecting_to_zero";
    public static final String MEGA_INTENT_ACTION_MOBILE_CONNECT = "mega.intent.action.carlink";
    private static final int MSG_CONNECTING_PROGRESS_CHANGE = 1541;
    private static final int MSG_MOBILE = 1536;
    private static final int MSG_UPDATE_MOBILE_CALL_INFO = 1543;
    private static final int MSG_UPDATE_MOBILE_CALL_STATE = 1538;
    private static final int MSG_UPDATE_MOBILE_CONN_STATE = 1537;
    private static final int MSG_UPDATE_MOBILE_MEDIA_DATA = 1539;
    private static final int MSG_UPDATE_MOBILE_MEDIA_STATE = 1542;
    private static final int MSG_UPDATE_MOBILE_PIN_CODE_DATA = 1540;
    private static final String PACKAGE_NAME = "com.mega.carlink";
    public static final String SHOW_PIN_VIEW = "show_pin_view";
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    private static final String TAG = "CarLinkDeviceManager";
    private static volatile CarLinkDeviceManager sCarLinkDeviceManager;
    private OnCarlinkInitCallback mCarlinkInitCallback;
    private Context mContext;
    private CountDownLatch mCountDownLatch;
    private ExecutorService mExecutor;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private volatile ICarLinkInfoInterface mService;
    private Handler mWorkHandler;
    private volatile boolean mIsBinding = false;
    private final MyDeathRecipient mDeathRecipient = new MyDeathRecipient();
    private Gson mGson = new Gson();
    private final List<OnCarlinkInitCallback> mOnCarlinkInitListeners = new CopyOnWriteArrayList();
    private final List<OnConnectionChangeListener> mConnectionChangeListeners = new CopyOnWriteArrayList();
    private final List<OnMediaChangeListener> mMediaChangeListeners = new CopyOnWriteArrayList();
    private final List<OnCarLinkAppInfoListener> mCarLinkAppInfoListeners = new CopyOnWriteArrayList();
    private final List<OnCarLinkPinCodeChangeListener> mCarLinkPinCodeChangeListeners = new CopyOnWriteArrayList();
    private final List<OnCarLinkProgressChangeListener> mCarLinkProgressChangeListeners = new CopyOnWriteArrayList();
    private final List<FusionUiDisplayChangeListener> mCarLinkUiDisplayChangeListeners = new CopyOnWriteArrayList();
    private final List<OnCarLinkCallInfoChangeListener> mCarLinkCallInfoChangeListeners = new CopyOnWriteArrayList();
    private final List<OnCarLinkNavigationInfoChangeListener> mCarLinkNavigationInfoChangeListeners = new CopyOnWriteArrayList();
    private final List<OnCarLinkVRStateChangeListener> mCarLinkVRStateChangeListeners = new CopyOnWriteArrayList();
    private final List<OnCarLinkProjectionChangeListener> mCarLinkProjectionChangeListeners = new CopyOnWriteArrayList();
    private final ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.mega.carlink.CarLinkDeviceManager.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MLog.i(CarLinkDeviceManager.TAG, "onServiceConnected()");
            CarLinkDeviceManager.this.mService = ICarLinkInfoInterface.Stub.asInterface(iBinder);
            CarLinkDeviceManager.this.mIsBinding = false;
            if (CarLinkDeviceManager.this.mCountDownLatch != null) {
                CarLinkDeviceManager.this.mCountDownLatch.countDown();
            }
            Iterator it = CarLinkDeviceManager.this.mOnCarlinkInitListeners.iterator();
            while (it.hasNext()) {
                ((OnCarlinkInitCallback) it.next()).onInitSuccess();
            }
            try {
                CarLinkDeviceManager.this.mService.asBinder().linkToDeath(CarLinkDeviceManager.this.mDeathRecipient, 0);
                CarLinkDeviceManager.this.mService.registerConnectStatusListener(CarLinkDeviceManager.this.mConnStatusListener);
                CarLinkDeviceManager.this.mService.registerMediaDataListener(CarLinkDeviceManager.this.mMediaInfoListener);
                CarLinkDeviceManager.this.mService.registerCarLinkAppInfoChangeListener(CarLinkDeviceManager.this.mCarLinkAppInfoChangeListener);
                CarLinkDeviceManager.this.mService.registerPinCodeChangeListener(CarLinkDeviceManager.this.mCarLinkPinCodeChangeListener);
                CarLinkDeviceManager.this.mService.registerCarLinkConnectingProgressListener(CarLinkDeviceManager.this.mCarLinkConnectingProgressListener);
                CarLinkDeviceManager.this.mService.registerCarLinkCallInfoListener(CarLinkDeviceManager.this.mCarLinkCallInfoChangeListener);
                CarLinkDeviceManager.this.mService.registerCarLinkNavigationInfoListener(CarLinkDeviceManager.this.mCarLinkNavigationInfoChangeListener);
                CarLinkDeviceManager.this.mService.registerCarLinkVRChangeListener(CarLinkDeviceManager.this.mCarLinkVRChangeListener);
                MLog.i(CarLinkDeviceManager.TAG, "register connect listener ...");
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            MLog.i(CarLinkDeviceManager.TAG, "onServiceDisconnected()");
            CarLinkDeviceManager.this.mService = null;
            CarLinkDeviceManager.this.mCountDownLatch = null;
            CarLinkDeviceManager.this.mIsBinding = false;
            Iterator it = CarLinkDeviceManager.this.mOnCarlinkInitListeners.iterator();
            while (it.hasNext()) {
                ((OnCarlinkInitCallback) it.next()).onInitFailed();
            }
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
            MLog.i(CarLinkDeviceManager.TAG, "onBindingDied()");
            if (CarLinkDeviceManager.this.isBindSuccess()) {
                CarLinkDeviceManager.this.mContext.unbindService(CarLinkDeviceManager.this.mServiceConnection);
            }
            CarLinkDeviceManager.this.mCountDownLatch = new CountDownLatch(1);
            CarLinkDeviceManager.this.bindCarlinkService();
        }
    };
    private final IConnectStatusListener mConnStatusListener = new IConnectStatusListener.Stub() { // from class: com.mega.carlink.CarLinkDeviceManager.2
        @Override // com.mega.carlink.IConnectStatusListener
        public void onConnectStatusChange(String str, int i) throws RemoteException {
            MLog.i(CarLinkDeviceManager.TAG, "onConnectStatusChange ==> deviceId==" + str + ", state==" + i);
            Message messageObtain = Message.obtain();
            messageObtain.what = CarLinkDeviceManager.MSG_UPDATE_MOBILE_CONN_STATE;
            messageObtain.arg1 = 2;
            messageObtain.obj = str;
            messageObtain.arg2 = i;
            CarLinkDeviceManager.this.mHandler.sendMessage(messageObtain);
        }
    };
    private IMediaInfoListener mMediaInfoListener = new IMediaInfoListener.Stub() { // from class: com.mega.carlink.CarLinkDeviceManager.3
        @Override // com.mega.carlink.IMediaInfoListener
        public void onMediaDataChange(MusicInfo musicInfo) throws RemoteException {
            MLog.i(CarLinkDeviceManager.TAG, "onMediaDataChange ==> mediaInfo==" + musicInfo);
            Message messageObtain = Message.obtain();
            messageObtain.what = CarLinkDeviceManager.MSG_UPDATE_MOBILE_MEDIA_DATA;
            messageObtain.arg1 = 2;
            messageObtain.obj = musicInfo;
            CarLinkDeviceManager.this.mWorkHandler.sendMessage(messageObtain);
        }

        @Override // com.mega.carlink.IMediaInfoListener
        public void onMediaStateChange(int i) throws RemoteException {
            MLog.i(CarLinkDeviceManager.TAG, "onMediaStateChange ==> state==" + i);
            Message messageObtain = Message.obtain();
            messageObtain.what = CarLinkDeviceManager.MSG_UPDATE_MOBILE_MEDIA_STATE;
            messageObtain.arg1 = 2;
            messageObtain.obj = Integer.valueOf(i);
            CarLinkDeviceManager.this.mWorkHandler.sendMessage(messageObtain);
        }
    };
    private ICarLinkAppInfoChangeListener mCarLinkAppInfoChangeListener = new ICarLinkAppInfoChangeListener.Stub() { // from class: com.mega.carlink.CarLinkDeviceManager.4
        @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
        public void onLoadAllAppInfo(String str, List<AppInfo> list) throws RemoteException {
            MLog.i(CarLinkDeviceManager.TAG, "onLoadAllAppInfo deviceId==" + str);
            Iterator it = CarLinkDeviceManager.this.mCarLinkAppInfoListeners.iterator();
            while (it.hasNext()) {
                ((OnCarLinkAppInfoListener) it.next()).onLoadAllAppInfo(str, list);
            }
        }

        @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
        public void onAppInfoAdd(String str, List<AppInfo> list) throws RemoteException {
            MLog.d(CarLinkDeviceManager.TAG, "onAppInfoAdd deviceId==" + str + ", list==" + list);
            Iterator it = CarLinkDeviceManager.this.mCarLinkAppInfoListeners.iterator();
            while (it.hasNext()) {
                ((OnCarLinkAppInfoListener) it.next()).onAppInfoAdd(str, list);
            }
        }

        @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
        public void onAppInfoRemove(String str, List<AppInfo> list) throws RemoteException {
            MLog.d(CarLinkDeviceManager.TAG, "onAppInfoRemove deviceId==" + str + ", list==" + list);
            Iterator it = CarLinkDeviceManager.this.mCarLinkAppInfoListeners.iterator();
            while (it.hasNext()) {
                ((OnCarLinkAppInfoListener) it.next()).onAppInfoRemove(str, list);
            }
        }

        @Override // com.mega.carlink.ICarLinkAppInfoChangeListener
        public void onAppInfoUpdate(String str, List<AppInfo> list) throws RemoteException {
            MLog.d(CarLinkDeviceManager.TAG, "onAppInfoUpdate deviceId==" + str + ", list==" + list);
            Iterator it = CarLinkDeviceManager.this.mCarLinkAppInfoListeners.iterator();
            while (it.hasNext()) {
                ((OnCarLinkAppInfoListener) it.next()).onAppInfoUpdate(str, list);
            }
        }
    };
    private ICarLinkPinCodeChangeListener mCarLinkPinCodeChangeListener = new ICarLinkPinCodeChangeListener.Stub() { // from class: com.mega.carlink.CarLinkDeviceManager.5
        @Override // com.mega.carlink.ICarLinkPinCodeChangeListener
        public void onPinCodeChange(String str) throws RemoteException {
            MLog.i(CarLinkDeviceManager.TAG, "onPinCodeChange pinCode==" + str);
            Message messageObtain = Message.obtain();
            messageObtain.what = CarLinkDeviceManager.MSG_UPDATE_MOBILE_PIN_CODE_DATA;
            messageObtain.arg1 = 2;
            messageObtain.obj = str;
            CarLinkDeviceManager.this.mWorkHandler.sendMessage(messageObtain);
        }
    };
    private ICarLinkConnectingProgressListener mCarLinkConnectingProgressListener = new ICarLinkConnectingProgressListener.Stub() { // from class: com.mega.carlink.CarLinkDeviceManager.6
        @Override // com.mega.carlink.ICarLinkConnectingProgressListener
        public void onCarLinkConnectingProgressChange(String str, int i, String str2, String str3) throws RemoteException {
            MLog.i(CarLinkDeviceManager.TAG, "onCarLinkConnectingProgressChange deviceID==" + str + ", progress==" + i + ", deviceName==" + str2 + ", productName==" + str3);
            Message messageObtain = Message.obtain();
            messageObtain.what = CarLinkDeviceManager.MSG_CONNECTING_PROGRESS_CHANGE;
            Bundle bundle = new Bundle();
            bundle.putString(WallpaperConstant.WALLPAPER_COLUMN_ID, str);
            bundle.putString(WallpaperConstant.WALLPAPER_COLUMN_NAME, str2);
            bundle.putString("_productName", str3);
            bundle.putInt("_progress", i);
            messageObtain.setData(bundle);
            CarLinkDeviceManager.this.mWorkHandler.sendMessage(messageObtain);
        }
    };
    private final ICarLinkCallInfoChangeListener mCarLinkCallInfoChangeListener = new ICarLinkCallInfoChangeListener.Stub() { // from class: com.mega.carlink.CarLinkDeviceManager.7
        @Override // com.mega.carlink.ICarLinkCallInfoChangeListener
        public void onCallInfoChange(String str, CallInfo callInfo) throws RemoteException {
            MLog.i(CarLinkDeviceManager.TAG, "onCallInfoChange deviceId==" + str + ", callInfo==" + callInfo);
            Iterator it = CarLinkDeviceManager.this.mCarLinkCallInfoChangeListeners.iterator();
            while (it.hasNext()) {
                ((OnCarLinkCallInfoChangeListener) it.next()).onCallInfoChange(str, callInfo);
            }
        }
    };
    private final ICarLinkNavigationInfoChangeListener mCarLinkNavigationInfoChangeListener = new ICarLinkNavigationInfoChangeListener.Stub() { // from class: com.mega.carlink.CarLinkDeviceManager.8
        @Override // com.mega.carlink.ICarLinkNavigationInfoChangeListener
        public void onNavigationInfoChange(String str, NavigationInfo navigationInfo) throws RemoteException {
            MLog.i(CarLinkDeviceManager.TAG, "onNavigationInfoChange deviceId==" + str + ", navigationInfo==" + navigationInfo);
            Iterator it = CarLinkDeviceManager.this.mCarLinkNavigationInfoChangeListeners.iterator();
            while (it.hasNext()) {
                ((OnCarLinkNavigationInfoChangeListener) it.next()).onNavigationInfoChange(str, navigationInfo);
            }
        }
    };
    private final ICarLinkVRChangeListener mCarLinkVRChangeListener = new ICarLinkVRChangeListener.Stub() { // from class: com.mega.carlink.CarLinkDeviceManager.9
        @Override // com.mega.carlink.ICarLinkVRChangeListener
        public void onCarLinkVRChange(String str, int i) throws RemoteException {
            MLog.i(CarLinkDeviceManager.TAG, "onCarLinkVRChange deviceId==" + str + ", state==" + i);
            Iterator it = CarLinkDeviceManager.this.mCarLinkVRStateChangeListeners.iterator();
            while (it.hasNext()) {
                ((OnCarLinkVRStateChangeListener) it.next()).onVRStateChange(str, i);
            }
        }
    };
    private final ICarLinkProjectionChangeListener mCarlinkProjectionChangeListener = new ICarLinkProjectionChangeListener.Stub() { // from class: com.mega.carlink.CarLinkDeviceManager.10
        @Override // com.mega.carlink.ICarLinkProjectionChangeListener
        public void onCarLinkProjectionChange(String str, int i) throws RemoteException {
            MLog.i(CarLinkDeviceManager.TAG, "onCarLinkProjectionChange deviceId==" + str + ", projectionState==" + i);
            Iterator it = CarLinkDeviceManager.this.mCarLinkProjectionChangeListeners.iterator();
            while (it.hasNext()) {
                ((OnCarLinkProjectionChangeListener) it.next()).onProjectionStateChange(str, i);
            }
        }
    };
    private final Handler.Callback mHandlerCallBack = new Handler.Callback() { // from class: com.mega.carlink.CarLinkDeviceManager$$ExternalSyntheticLambda0
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return this.f$0.m237lambda$new$0$commegacarlinkCarLinkDeviceManager(message);
        }
    };
    private final Handler.Callback mWorkHandlerCallBack = new Handler.Callback() { // from class: com.mega.carlink.CarLinkDeviceManager$$ExternalSyntheticLambda1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return this.f$0.m238lambda$new$1$commegacarlinkCarLinkDeviceManager(message);
        }
    };

    public interface FusionUiDisplayChangeListener {
        void onUiDisplayChange(int i);
    }

    public interface OnCarLinkAppInfoListener {
        void onAppInfoAdd(String str, List<AppInfo> list);

        void onAppInfoRemove(String str, List<AppInfo> list);

        void onAppInfoUpdate(String str, List<AppInfo> list);

        void onLoadAllAppInfo(String str, List<AppInfo> list);
    }

    public interface OnCarLinkCallInfoChangeListener {
        void onCallInfoChange(String str, CallInfo callInfo);
    }

    public interface OnCarLinkNavigationInfoChangeListener {
        void onNavigationInfoChange(String str, NavigationInfo navigationInfo);
    }

    public interface OnCarLinkPinCodeChangeListener {
        void onPinCodeChange(int i, String str);
    }

    public interface OnCarLinkProgressChangeListener {
        void onProgressChange(int i, String str, int i2, String str2, String str3);
    }

    public interface OnCarLinkProjectionChangeListener {
        void onProjectionStateChange(String str, int i);
    }

    public interface OnCarLinkVRStateChangeListener {
        void onVRStateChange(String str, int i);
    }

    public interface OnCarlinkInitCallback {
        void onInitFailed();

        void onInitSuccess();
    }

    public interface OnConnectionChangeListener {
        void onConnStateChanged(int i, String str, int i2);
    }

    public interface OnMediaChangeListener {
        default void onMediaImageChanged(int i, String str) {
        }

        void onMediaInfoChanged(int i, MusicInfo musicInfo);

        default void onMediaStatusChanged(int i, int i2) {
        }
    }

    public int sendAppInfo(String str, String str2) {
        return -1;
    }

    private final class MyDeathRecipient implements IBinder.DeathRecipient {
        private MyDeathRecipient() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MLog.i(CarLinkDeviceManager.TAG, "binderDied");
            if (CarLinkDeviceManager.this.mService != null) {
                CarLinkDeviceManager.this.mService.asBinder().unlinkToDeath(CarLinkDeviceManager.this.mDeathRecipient, 0);
                CarLinkDeviceManager.this.mService = null;
            }
            CarLinkDeviceManager.this.reConnectService();
        }
    }

    private CarLinkDeviceManager() {
        initDeviceManager();
    }

    private CarLinkDeviceManager(Context context) {
        this.mContext = context.getApplicationContext();
        MLog.d(TAG, " context :  " + this.mContext);
        initDeviceManager();
    }

    private void initDeviceManager() {
        this.mHandler = new Handler(Looper.getMainLooper(), this.mHandlerCallBack);
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mWorkHandler = new Handler(this.mHandlerThread.getLooper(), this.mWorkHandlerCallBack);
        this.mExecutor = Executors.newCachedThreadPool();
    }

    @Deprecated
    public static CarLinkDeviceManager getInstance(Context context) {
        if (sCarLinkDeviceManager == null) {
            synchronized (CarLinkDeviceManager.class) {
                if (sCarLinkDeviceManager == null) {
                    sCarLinkDeviceManager = new CarLinkDeviceManager(context);
                }
            }
        }
        return sCarLinkDeviceManager;
    }

    public static CarLinkDeviceManager getInstance() {
        if (sCarLinkDeviceManager == null) {
            synchronized (CarLinkDeviceManager.class) {
                if (sCarLinkDeviceManager == null) {
                    sCarLinkDeviceManager = new CarLinkDeviceManager();
                }
            }
        }
        return sCarLinkDeviceManager;
    }

    @Deprecated
    public void init() {
        if (this.mService != null) {
            MLog.d(TAG, "service has inited");
        } else {
            this.mCountDownLatch = new CountDownLatch(1);
            bindCarlinkService();
        }
    }

    public void init(Context context, OnCarlinkInitCallback onCarlinkInitCallback) {
        MLog.d(TAG, "init() context: " + context);
        if (onCarlinkInitCallback == null) {
            MLog.e(TAG, "init() callback is null");
            return;
        }
        if (context == null) {
            MLog.e(TAG, "init() context is null");
            onCarlinkInitCallback.onInitFailed();
        }
        this.mContext = context;
        this.mOnCarlinkInitListeners.add(onCarlinkInitCallback);
        bindCarlinkService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean bindCarlinkService() {
        IBinder iBinderAsBinder;
        Intent intent = new Intent(MEGA_INTENT_ACTION_MOBILE_CONNECT);
        intent.setPackage("com.mega.carlink");
        if (this.mContext == null) {
            MLog.e(TAG, "bindCarlinkService() mContext is null");
            return false;
        }
        if (this.mIsBinding) {
            MLog.i(TAG, "bindCarlinkService() service is binding");
            return false;
        }
        if (this.mService != null && (iBinderAsBinder = this.mService.asBinder()) != null && iBinderAsBinder.isBinderAlive() && iBinderAsBinder.pingBinder()) {
            MLog.e(TAG, "bindCarlinkService() service already bind");
            return false;
        }
        this.mIsBinding = true;
        boolean zBindService = this.mContext.bindService(intent, this.mServiceConnection, 1);
        MLog.d(TAG, "bindCarlinkService() isBind: " + zBindService);
        if (!zBindService) {
            this.mIsBinding = false;
        }
        return zBindService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reConnectService() {
        this.mHandler.postDelayed(new Runnable() { // from class: com.mega.carlink.CarLinkDeviceManager$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.bindCarlinkService();
            }
        }, 3000L);
    }

    public boolean isBindSuccess() {
        IBinder iBinderAsBinder;
        MLog.d(TAG, "isBindSuccess: mService==" + this.mService);
        if (this.mService != null && (iBinderAsBinder = this.mService.asBinder()) != null && iBinderAsBinder.isBinderAlive() && iBinderAsBinder.pingBinder()) {
            return true;
        }
        MLog.d(TAG, "isBindSuccess: mService is not available, isBinding==" + this.mIsBinding);
        return false;
    }

    public void unBind() {
        MLog.d(TAG, "unBind()");
        if (isBindSuccess()) {
            try {
                this.mService.unregisterConnectStatusListener(this.mConnStatusListener);
                this.mService.unregisterMediaDataListener(this.mMediaInfoListener);
                this.mService.unregisterCarLinkAppInfoChangeListener(this.mCarLinkAppInfoChangeListener);
                this.mService.unregisterPinCodeChangeListener(this.mCarLinkPinCodeChangeListener);
                this.mService.unregisterCarLinkConnectingProgressListener(this.mCarLinkConnectingProgressListener);
                this.mService.unregisterCarLinkCallInfoListener(this.mCarLinkCallInfoChangeListener);
                this.mService.unregisterCarLinkNavigationInfoListener(this.mCarLinkNavigationInfoChangeListener);
                this.mService.unregisterCarLinkVRChangeListener(this.mCarLinkVRChangeListener);
            } catch (RemoteException e) {
                MLog.e(TAG, "unBind ", e);
            }
            if (this.mContext != null && this.mServiceConnection != null && this.mService != null) {
                try {
                    this.mContext.unbindService(this.mServiceConnection);
                    this.mContext = null;
                } catch (IllegalArgumentException e2) {
                    MLog.e(TAG, "Service was not registered", e2);
                    this.mContext = null;
                }
            }
        }
        synchronized (this.mConnectionChangeListeners) {
            this.mConnectionChangeListeners.clear();
        }
        synchronized (this.mMediaChangeListeners) {
            this.mMediaChangeListeners.clear();
        }
        synchronized (this.mCarLinkAppInfoListeners) {
            this.mCarLinkAppInfoListeners.clear();
        }
        synchronized (this.mCarLinkPinCodeChangeListeners) {
            this.mCarLinkPinCodeChangeListeners.clear();
        }
        synchronized (this.mOnCarlinkInitListeners) {
            this.mOnCarlinkInitListeners.clear();
        }
        synchronized (this.mCarLinkCallInfoChangeListeners) {
            this.mCarLinkCallInfoChangeListeners.clear();
        }
        synchronized (this.mCarLinkNavigationInfoChangeListeners) {
            this.mCarLinkNavigationInfoChangeListeners.clear();
        }
        synchronized (this.mCarLinkVRStateChangeListeners) {
            this.mCarLinkVRStateChangeListeners.clear();
        }
        synchronized (this.mCarLinkProjectionChangeListeners) {
            this.mCarLinkProjectionChangeListeners.clear();
        }
    }

    private synchronized void checkBindState() {
        if (this.mService == null) {
            init();
        }
    }

    /* JADX INFO: renamed from: lambda$new$0$com-mega-carlink-CarLinkDeviceManager, reason: not valid java name */
    /* synthetic */ boolean m237lambda$new$0$commegacarlinkCarLinkDeviceManager(Message message) {
        if (message.what != MSG_UPDATE_MOBILE_CONN_STATE) {
            return true;
        }
        notifyConnStateChanged(message.arg1, (String) message.obj, message.arg2);
        return true;
    }

    /* JADX INFO: renamed from: lambda$new$1$com-mega-carlink-CarLinkDeviceManager, reason: not valid java name */
    /* synthetic */ boolean m238lambda$new$1$commegacarlinkCarLinkDeviceManager(Message message) {
        if (message.what == MSG_UPDATE_MOBILE_MEDIA_DATA) {
            notifyMediaChanged(message.arg1, (MusicInfo) message.obj);
        }
        if (message.what == MSG_UPDATE_MOBILE_MEDIA_STATE) {
            notifyMediaStateChanged(message.arg1, ((Integer) message.obj).intValue());
        }
        if (message.what == MSG_UPDATE_MOBILE_PIN_CODE_DATA) {
            notifyPinCodeChanged(message.arg1, (String) message.obj);
        }
        if (message.what != MSG_CONNECTING_PROGRESS_CHANGE) {
            return true;
        }
        Bundle data = message.getData();
        notifyProgressChanged(2, data.getString(WallpaperConstant.WALLPAPER_COLUMN_ID), data.getInt("_progress"), data.getString(WallpaperConstant.WALLPAPER_COLUMN_NAME), data.getString("_productName"));
        return true;
    }

    private void notifyConnStateChanged(int i, String str, int i2) {
        synchronized (this.mConnectionChangeListeners) {
            Iterator<OnConnectionChangeListener> it = this.mConnectionChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onConnStateChanged(i, str, i2);
            }
        }
    }

    private void notifyMediaChanged(int i, MusicInfo musicInfo) {
        synchronized (this.mMediaChangeListeners) {
            MLog.d(TAG, "notifyMediaChanged : " + musicInfo);
            Iterator<OnMediaChangeListener> it = this.mMediaChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onMediaInfoChanged(i, musicInfo);
            }
        }
    }

    private void notifyMediaStateChanged(int i, int i2) {
        synchronized (this.mMediaChangeListeners) {
            MLog.d(TAG, "notifyMediaStateChanged : " + i2);
            Iterator<OnMediaChangeListener> it = this.mMediaChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onMediaStatusChanged(i, i2);
            }
        }
    }

    private void notifyPinCodeChanged(int i, String str) {
        MLog.d(TAG, "notifyPinCodeChanged: platform==" + i + ",pinCode==" + str);
        synchronized (this.mCarLinkPinCodeChangeListeners) {
            Iterator<OnCarLinkPinCodeChangeListener> it = this.mCarLinkPinCodeChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onPinCodeChange(i, str);
            }
        }
    }

    private void notifyProgressChanged(int i, String str, int i2, String str2, String str3) {
        MLog.d(TAG, "notifyProgressChanged: platform==" + i + ", deviceID==" + str + ", progress==" + i2 + ", deviceName==" + str2 + ", productName==" + str3);
        synchronized (this.mCarLinkProgressChangeListeners) {
            Iterator<OnCarLinkProgressChangeListener> it = this.mCarLinkProgressChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().onProgressChange(i, str, i2, str2, str3);
            }
        }
    }

    private boolean isMobileConnectConnected() {
        checkBindState();
        boolean z = false;
        if (this.mService == null) {
            MLog.d(TAG, "isMobileConnectedConnect mService is null");
            return false;
        }
        try {
            z = !TextUtils.isEmpty(this.mService.getConnectPhoneID());
            MLog.d(TAG, "isHiCarConnected : false, isCarLinkConnected : " + z);
            return z;
        } catch (RemoteException e) {
            MLog.e(TAG, "isMobileConnectConnected", e);
            return z;
        }
    }

    private boolean isHiCarConnected() {
        checkBindState();
        boolean z = false;
        if (this.mService == null) {
            MLog.d(TAG, "isMobileConnectedConnect mService is null");
            return false;
        }
        try {
            z = !TextUtils.isEmpty(this.mService.getConnectPhoneID());
            MLog.d(TAG, "isHiCarConnected : " + z);
            return z;
        } catch (RemoteException e) {
            MLog.e(TAG, "isMobileConnectConnected", e);
            return z;
        }
    }

    public boolean isCarLinkConnected() {
        checkBindState();
        boolean z = false;
        if (this.mService == null) {
            MLog.d(TAG, "isCarLinkConnected mService is null");
            return false;
        }
        try {
            z = !TextUtils.isEmpty(this.mService.getConnectPhoneID());
            MLog.d(TAG, "isCarLinkConnected : " + z);
            return z;
        } catch (RemoteException e) {
            MLog.e(TAG, "isCarLinkConnected", e);
            return z;
        }
    }

    @Override // com.mega.carlink.base.IConnectInfoProvider
    public List<PhoneInfo> getPhoneList(int i) {
        List<PhoneInfo> phoneList = null;
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.e(TAG, "getPhoneList mService is null .. ");
                return null;
            }
            phoneList = this.mService.getPhoneList();
            MLog.e(TAG, "getPhoneList result: " + phoneList);
            return phoneList;
        } catch (RemoteException e) {
            MLog.e(TAG, "getPhoneList", e);
        }
    }

    @Override // com.mega.carlink.base.IConnectInfoProvider
    public String getConnectPhoneID(int i) {
        checkBindState();
        if (this.mService == null) {
            MLog.d(TAG, "getConnectPhoneID mService is null");
            return "";
        }
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.e(TAG, "mService is null .. ");
                return "";
            }
            String connectPhoneID = this.mService.getConnectPhoneID();
            MLog.d(TAG, "phoneId: " + connectPhoneID);
            return connectPhoneID;
        } catch (RemoteException e) {
            MLog.e(TAG, "getConnectPhoneID", e);
            return "";
        }
    }

    @Override // com.mega.carlink.base.IConnectInfoProvider
    public void connectPhone(int i, String str) {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "connectPhone mService is null");
            } else {
                this.mService.connectPhone(str);
            }
        } catch (RemoteException e) {
            MLog.e(TAG, "connectPhone", e);
        }
    }

    @Override // com.mega.carlink.base.IConnectInfoProvider
    public int disconnectPhone(int i, String str) {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "disconnectPhone mService is null");
                return 1;
            }
            return this.mService.disconnectPhone(str);
        } catch (RemoteException e) {
            MLog.e(TAG, "disconnectPhone", e);
            return 1;
        }
    }

    @Override // com.mega.carlink.base.IConnectInfoProvider
    public int deletePhone(int i, String str) {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "deletePhone mService is null");
                return -1;
            }
            return this.mService.deletePhone(str);
        } catch (RemoteException e) {
            MLog.e(TAG, "deletePhone", e);
            return 1;
        }
    }

    @Override // com.mega.carlink.base.IConnectInfoProvider
    public int getConnectionType(int i) {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "getConnectionType mService is null");
                return -1;
            }
            int connectionType = this.mService.getConnectionType();
            MLog.d(TAG, "connectionType: " + connectionType);
            return connectionType;
        } catch (RemoteException e) {
            MLog.e(TAG, "getConnectionType", e);
            return -1;
        }
    }

    @Override // com.mega.carlink.base.IConnectInfoProvider
    public void setMediaPlayPause(int i) {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "connectPhone mService is null");
            } else {
                this.mService.playOrPauseMedia();
            }
        } catch (RemoteException e) {
            MLog.e(TAG, "setMediaPlayPause: ", e);
        }
    }

    @Override // com.mega.carlink.base.IConnectInfoProvider
    public void setMediaNext(int i) {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "connectPhone mService is null");
            } else {
                this.mService.nextMedia();
            }
        } catch (RemoteException e) {
            MLog.e(TAG, "setMediaNext: ", e);
        }
    }

    @Override // com.mega.carlink.base.IConnectInfoProvider
    public void setMediaPreview(int i) {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "connectPhone mService is null");
            } else {
                this.mService.previousMedia();
            }
        } catch (RemoteException e) {
            MLog.e(TAG, "setMediaPreview: ", e);
        }
    }

    public void playOrPauseMedia() {
        setMediaPlayPause(2);
    }

    public void nextMedia() {
        setMediaNext(2);
    }

    public void previousMedia() {
        setMediaPreview(2);
    }

    public void disconnectMobileConnect() {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "disconnectMobileConnect mService is null");
                return;
            }
            ExecutorService executorService = this.mExecutor;
            if (executorService != null) {
                executorService.submit(new Runnable() { // from class: com.mega.carlink.CarLinkDeviceManager.11
                    @Override // java.lang.Runnable
                    public void run() {
                        String connectPhoneID = CarLinkDeviceManager.this.getConnectPhoneID(2);
                        if (!TextUtils.isEmpty(connectPhoneID)) {
                            MLog.d(CarLinkDeviceManager.TAG, "disconnect CarLink .. ");
                            CarLinkDeviceManager.this.disconnectPhone(2, connectPhoneID);
                        }
                        String connectPhoneID2 = CarLinkDeviceManager.this.getConnectPhoneID(1);
                        if (!TextUtils.isEmpty(connectPhoneID)) {
                            MLog.d(CarLinkDeviceManager.TAG, "disconnect HiCar .. ");
                            CarLinkDeviceManager.this.disconnectPhone(1, connectPhoneID2);
                        }
                        MLog.d(CarLinkDeviceManager.TAG, "disconnect .. ");
                    }
                });
            }
        } catch (RuntimeException e) {
            MLog.e(TAG, "disconnect", e);
        }
    }

    public String requestCarLinkPinCode() {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "requestCarLinkPinCode mService is null");
                return "-2";
            }
            String pinCode = this.mService.getPinCode();
            MLog.d(TAG, "requestCarLinkPinCode() pinCode: " + pinCode);
            return pinCode;
        } catch (RemoteException e) {
            MLog.e(TAG, "requestCarLinkPinCode error: ", e);
            return "-1";
        }
    }

    public boolean isSupportMixLauncher() {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "isSupportMixLauncher mService is null");
                return false;
            }
            boolean zIsSupportMixLauncher = this.mService.isSupportMixLauncher();
            MLog.d(TAG, "isSupportMixLauncher() isSupport: " + zIsSupportMixLauncher);
            return zIsSupportMixLauncher;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean startCarLinkRemoteApp(String str, int i, int i2) {
        MLog.d(TAG, "startCarLinkRemoteApp: deviceId==" + str + ", appId==" + i + ", category==" + i2);
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "startCarLinkRemoteApp mService is null");
                return false;
            }
            boolean zStartCarLinkApp = this.mService.startCarLinkApp(str, i, i2);
            MLog.d(TAG, "startCarLinkRemoteApp: result==" + zStartCarLinkApp);
            return zStartCarLinkApp;
        } catch (RemoteException e) {
            MLog.e(TAG, "startCarLinkRemoteApp", e);
            return false;
        }
    }

    public boolean startCarLinkRemoteApp(String str, int i, boolean z) {
        MLog.d(TAG, "startCarLinkRemoteApp2: deviceId==" + str + ", appId==" + i + ", isUseDefaultOrientation==" + z);
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "startCarLinkRemoteApp2 mService is null");
                return false;
            }
            boolean zStartCarLinkAppForArgs = this.mService.startCarLinkAppForArgs(str, i, z);
            MLog.d(TAG, "startCarLinkRemoteApp2: result==" + zStartCarLinkAppForArgs);
            return zStartCarLinkAppForArgs;
        } catch (RemoteException e) {
            MLog.e(TAG, "startCarLinkRemoteApp2", e);
            return false;
        }
    }

    public List<AppInfo> getCarLinkAllAppInfoList() {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "getCarLinkAllAppInfoList mService is null");
                return new ArrayList();
            }
            List<AppInfo> allAppInfoList = this.mService.getAllAppInfoList();
            MLog.d(TAG, "getCarLinkAllAppInfoList() appInfoList: " + allAppInfoList);
            return allAppInfoList;
        } catch (RemoteException e) {
            e.printStackTrace();
            return new ArrayList();
        }
    }

    public String getLastAppPackageName() {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "getLastAppPackageName mService is null");
                return "";
            }
            String lastAppPackageName = this.mService.getLastAppPackageName();
            MLog.d(TAG, "getLastAppPackageName() appPackageName: " + lastAppPackageName);
            return lastAppPackageName;
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    private void registerConnectStatusListener(IConnectStatusListener iConnectStatusListener) {
        try {
            checkBindState();
            this.mService.registerConnectStatusListener(iConnectStatusListener);
        } catch (RemoteException e) {
            MLog.e(TAG, "registerConnectStatusListener", e);
        }
    }

    private void unregisterConnectStatusListener(IConnectStatusListener iConnectStatusListener) {
        try {
            checkBindState();
            this.mService.unregisterConnectStatusListener(iConnectStatusListener);
        } catch (RemoteException e) {
            MLog.e(TAG, "unregisterConnectStatusListener", e);
        }
    }

    public void registerCarLinkConnectionListener(OnConnectionChangeListener onConnectionChangeListener) {
        if (onConnectionChangeListener == null || this.mConnectionChangeListeners.contains(onConnectionChangeListener)) {
            return;
        }
        this.mConnectionChangeListeners.add(onConnectionChangeListener);
    }

    public void unregisterCarLinkConnectionListener(OnConnectionChangeListener onConnectionChangeListener) {
        synchronized (this.mConnectionChangeListeners) {
            this.mConnectionChangeListeners.remove(onConnectionChangeListener);
        }
    }

    public void registerMediaListener(OnMediaChangeListener onMediaChangeListener) {
        if (onMediaChangeListener == null || this.mMediaChangeListeners.contains(onMediaChangeListener)) {
            return;
        }
        this.mMediaChangeListeners.add(onMediaChangeListener);
    }

    public void unregisterMediaListener(OnMediaChangeListener onMediaChangeListener) {
        synchronized (this.mMediaChangeListeners) {
            this.mMediaChangeListeners.remove(onMediaChangeListener);
        }
    }

    public void registerCarLinkAppInfoListener(OnCarLinkAppInfoListener onCarLinkAppInfoListener) {
        synchronized (this.mCarLinkAppInfoListeners) {
            if (onCarLinkAppInfoListener != null) {
                if (!this.mCarLinkAppInfoListeners.contains(onCarLinkAppInfoListener)) {
                    this.mCarLinkAppInfoListeners.add(onCarLinkAppInfoListener);
                }
            }
        }
    }

    public void unregisterCarLinkAppInfoListener(OnCarLinkAppInfoListener onCarLinkAppInfoListener) {
        synchronized (this.mCarLinkAppInfoListeners) {
            this.mCarLinkAppInfoListeners.remove(onCarLinkAppInfoListener);
        }
    }

    public void registerCarLinkPinCodeChangeListener(OnCarLinkPinCodeChangeListener onCarLinkPinCodeChangeListener) {
        synchronized (this.mCarLinkPinCodeChangeListeners) {
            if (onCarLinkPinCodeChangeListener != null) {
                if (!this.mCarLinkPinCodeChangeListeners.contains(onCarLinkPinCodeChangeListener)) {
                    this.mCarLinkPinCodeChangeListeners.add(onCarLinkPinCodeChangeListener);
                }
            }
        }
    }

    public void unregisterCarLinkPinCodeChangeListener(OnCarLinkPinCodeChangeListener onCarLinkPinCodeChangeListener) {
        synchronized (this.mCarLinkPinCodeChangeListeners) {
            this.mCarLinkPinCodeChangeListeners.remove(onCarLinkPinCodeChangeListener);
        }
    }

    public void registerCarLinkConnectingProgressChangeListener(OnCarLinkProgressChangeListener onCarLinkProgressChangeListener) {
        synchronized (this.mCarLinkProgressChangeListeners) {
            if (onCarLinkProgressChangeListener != null) {
                if (!this.mCarLinkProgressChangeListeners.contains(onCarLinkProgressChangeListener)) {
                    this.mCarLinkProgressChangeListeners.add(onCarLinkProgressChangeListener);
                }
            }
        }
    }

    public void unregisterCarLinkConnectingProgressChangeListener(OnCarLinkProgressChangeListener onCarLinkProgressChangeListener) {
        synchronized (this.mCarLinkProgressChangeListeners) {
            this.mCarLinkProgressChangeListeners.remove(onCarLinkProgressChangeListener);
        }
    }

    public void startCarLinkApp() {
        try {
            checkBindState();
            MLog.d(TAG, "startCarLinkApp carLinkConnected==" + isCarLinkConnected());
            if (isCarLinkConnected()) {
                this.mService.startMainCarLinkApp("");
            }
        } catch (RemoteException e) {
            MLog.e(TAG, "startCarLinkApp", e);
        }
    }

    public String getCarLinkDeviceName() {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "getCarLinkDeviceName mService is null");
                return "-2";
            }
            String phoneName = this.mService.getPhoneName();
            MLog.d(TAG, "getCarLinkDeviceName() phoneName: " + phoneName);
            return phoneName;
        } catch (RemoteException e) {
            MLog.e(TAG, "getCarLinkDeviceName error: ", e);
            return "-1";
        }
    }

    public int getCarLinkConnectStatus() {
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "getCarLinkConnectStatus mService is null");
                return 0;
            }
            int connectStatus = this.mService.getConnectStatus();
            MLog.d(TAG, "getCarLinkConnectStatus() status: " + connectStatus);
            return connectStatus;
        } catch (RemoteException e) {
            MLog.e(TAG, "getCarLinkConnectStatus error: ", e);
            return 0;
        }
    }

    public boolean isConnectDeviceForBt(String str) {
        MLog.d(TAG, "isConnectDeviceForBt: btAddress==" + str);
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "isConnectDeviceForBt mService is null");
                return false;
            }
            boolean zIsConnectedDevice = this.mService.isConnectedDevice(str);
            MLog.d(TAG, "isConnectDeviceForBt() isConnect: " + zIsConnectedDevice);
            return zIsConnectedDevice;
        } catch (RemoteException e) {
            MLog.e(TAG, "isConnectDeviceForBt error: ", e);
            return false;
        }
    }

    public String getBtAddressForPhoneId(String str) {
        MLog.d(TAG, "getBtAddressForPhoneId: phoneId==" + str);
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "getBtAddressForPhoneId mService is null");
                return "";
            }
            String btAddressForPhoneId = this.mService.getBtAddressForPhoneId(str);
            MLog.d(TAG, "getBtAddressForPhoneId() address: " + btAddressForPhoneId);
            return btAddressForPhoneId;
        } catch (RemoteException e) {
            MLog.e(TAG, "getBtAddressForPhoneId error: ", e);
            return "";
        }
    }

    public boolean isDisconnectByUser() {
        MLog.d(TAG, "isDisconnectByUser()");
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "isDisconnectByUser mService is null");
                return false;
            }
            boolean zIsDisconnectByUser = this.mService.isDisconnectByUser();
            MLog.d(TAG, "isDisconnectByUser() isUser: " + zIsDisconnectByUser);
            return zIsDisconnectByUser;
        } catch (RemoteException e) {
            MLog.e(TAG, "isDisconnectByUser error: ", e);
            return false;
        }
    }

    public boolean isCarlinkMediaPlaying() {
        MLog.d(TAG, "isCarlinkMediaPlaying()");
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "isCarlinkMediaPlaying mService is null");
                return false;
            }
            boolean zIsCarlinkMediaPlaying = this.mService.isCarlinkMediaPlaying();
            MLog.d(TAG, "isCarlinkMediaPlaying() isPlaying: " + zIsCarlinkMediaPlaying);
            return zIsCarlinkMediaPlaying;
        } catch (RemoteException e) {
            MLog.e(TAG, "isCarlinkMediaPlaying error: ", e);
            return false;
        }
    }

    public void startCarlinkApp(int i) {
        MLog.d(TAG, "startCarlinkApp()");
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "startCarlinkApp mService is null");
            } else {
                this.mService.startCarlinkApp(i);
            }
        } catch (RemoteException e) {
            MLog.e(TAG, "startCarlinkApp error: ", e);
        }
    }

    public boolean startCarlinkMixLauncher() {
        return controlCarLink(0);
    }

    public boolean startHiCarMixLauncher() {
        return controlCarLink(1);
    }

    public boolean call() {
        return controlCarLink(2);
    }

    public boolean endCall() {
        return controlCarLink(3);
    }

    private boolean controlCarLink(int i) {
        MLog.d(TAG, "controlCarLink()");
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "controlCarLink mService is null");
                return false;
            }
            boolean zControlCarLink = this.mService.controlCarLink(i);
            MLog.d(TAG, "controlCarLink() res: " + zControlCarLink);
            return zControlCarLink;
        } catch (RemoteException e) {
            MLog.e(TAG, "controlCarLink error: ", e);
            return false;
        }
    }

    public CallInfo getCarLinkCallInfo() {
        MLog.d(TAG, "getCallInfo()");
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "getCallInfo mService is null");
                return null;
            }
            CallInfo carLinkCallInfo = this.mService.getCarLinkCallInfo();
            MLog.d(TAG, "getCallInfo carLinkCallInfo==" + carLinkCallInfo);
            return carLinkCallInfo;
        } catch (RemoteException e) {
            MLog.e(TAG, "getCallInfo error: ", e);
            return null;
        }
    }

    public NavigationInfo getCarLinkNavigationInfo() {
        MLog.d(TAG, "getCarLinkNavigationInfo()");
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "getCarLinkNavigationInfo mService is null");
                return null;
            }
            NavigationInfo carLinkNavigationInfo = this.mService.getCarLinkNavigationInfo();
            MLog.d(TAG, "getCarLinkNavigationInfo navigationInfo==" + carLinkNavigationInfo);
            return carLinkNavigationInfo;
        } catch (RemoteException e) {
            MLog.e(TAG, "getCarLinkNavigationInfo error: ", e);
            return null;
        }
    }

    public int getCarLinkVRState() {
        MLog.d(TAG, "getCarLinkVRState()");
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "getCarLinkVRState mService is null");
                return 0;
            }
            int carLinkVRState = this.mService.getCarLinkVRState();
            MLog.d(TAG, "getCarLinkVRState carLinkVRState==" + carLinkVRState);
            return carLinkVRState;
        } catch (RemoteException e) {
            MLog.e(TAG, "getCarLinkVRState error: ", e);
            return 0;
        }
    }

    public int getCarLinkProjectionState() {
        MLog.d(TAG, "getCarLinkProjectionState()");
        try {
            checkBindState();
            if (this.mService == null) {
                MLog.d(TAG, "getCarLinkProjectionState mService is null");
                return 0;
            }
            int carLinkProjectionState = this.mService.getCarLinkProjectionState();
            MLog.d(TAG, "getCarLinkProjectionState carLinkProjectionState==" + carLinkProjectionState);
            return carLinkProjectionState;
        } catch (RemoteException e) {
            MLog.e(TAG, "getCarLinkProjectionState error: ", e);
            return 0;
        }
    }

    public void registerCarlinkFusionUiDisplayCallback(FusionUiDisplayChangeListener fusionUiDisplayChangeListener) {
        synchronized (this.mCarLinkUiDisplayChangeListeners) {
            if (fusionUiDisplayChangeListener != null) {
                if (!this.mCarLinkUiDisplayChangeListeners.contains(fusionUiDisplayChangeListener)) {
                    this.mCarLinkUiDisplayChangeListeners.add(fusionUiDisplayChangeListener);
                }
            }
        }
    }

    public void unregisterCarlinkFusionUiDisplayCallback(FusionUiDisplayChangeListener fusionUiDisplayChangeListener) {
        synchronized (this.mCarLinkUiDisplayChangeListeners) {
            this.mCarLinkUiDisplayChangeListeners.remove(fusionUiDisplayChangeListener);
        }
    }

    public void registerCarlinkCallInfoCallback(OnCarLinkCallInfoChangeListener onCarLinkCallInfoChangeListener) {
        synchronized (this.mCarLinkCallInfoChangeListeners) {
            if (onCarLinkCallInfoChangeListener != null) {
                if (!this.mCarLinkCallInfoChangeListeners.contains(onCarLinkCallInfoChangeListener)) {
                    this.mCarLinkCallInfoChangeListeners.add(onCarLinkCallInfoChangeListener);
                }
            }
        }
    }

    public void unregisterCarlinkCallInfoCallback(OnCarLinkCallInfoChangeListener onCarLinkCallInfoChangeListener) {
        synchronized (this.mCarLinkCallInfoChangeListeners) {
            this.mCarLinkCallInfoChangeListeners.remove(onCarLinkCallInfoChangeListener);
        }
    }

    public void registerCarlinkNavigationInfoCallback(OnCarLinkNavigationInfoChangeListener onCarLinkNavigationInfoChangeListener) {
        synchronized (this.mCarLinkNavigationInfoChangeListeners) {
            if (onCarLinkNavigationInfoChangeListener != null) {
                if (!this.mCarLinkNavigationInfoChangeListeners.contains(onCarLinkNavigationInfoChangeListener)) {
                    this.mCarLinkNavigationInfoChangeListeners.add(onCarLinkNavigationInfoChangeListener);
                }
            }
        }
    }

    public void unregisterCarlinkNavigationInfoCallback(OnCarLinkNavigationInfoChangeListener onCarLinkNavigationInfoChangeListener) {
        synchronized (this.mCarLinkNavigationInfoChangeListeners) {
            this.mCarLinkNavigationInfoChangeListeners.remove(onCarLinkNavigationInfoChangeListener);
        }
    }

    public void registerCarlinkVRStateCallback(OnCarLinkVRStateChangeListener onCarLinkVRStateChangeListener) {
        synchronized (this.mCarLinkVRStateChangeListeners) {
            if (onCarLinkVRStateChangeListener != null) {
                if (!this.mCarLinkVRStateChangeListeners.contains(onCarLinkVRStateChangeListener)) {
                    this.mCarLinkVRStateChangeListeners.add(onCarLinkVRStateChangeListener);
                }
            }
        }
    }

    public void unregisterCarlinkVRStateCallback(OnCarLinkVRStateChangeListener onCarLinkVRStateChangeListener) {
        synchronized (this.mCarLinkVRStateChangeListeners) {
            this.mCarLinkVRStateChangeListeners.remove(onCarLinkVRStateChangeListener);
        }
    }

    public void registerCarlinkProjectionCallback(OnCarLinkProjectionChangeListener onCarLinkProjectionChangeListener) {
        synchronized (this.mCarLinkProjectionChangeListeners) {
            if (onCarLinkProjectionChangeListener != null) {
                if (!this.mCarLinkProjectionChangeListeners.contains(onCarLinkProjectionChangeListener)) {
                    this.mCarLinkProjectionChangeListeners.add(onCarLinkProjectionChangeListener);
                }
            }
        }
    }

    public void unregisterCarlinkProjectionCallback(OnCarLinkProjectionChangeListener onCarLinkProjectionChangeListener) {
        synchronized (this.mCarLinkProjectionChangeListeners) {
            this.mCarLinkProjectionChangeListeners.remove(onCarLinkProjectionChangeListener);
        }
    }
}
