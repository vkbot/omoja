package com.lion.appversion;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.lion.appversion.listener.ServiceConnectListener;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AppVersionManager {
    public static final int STATUS_CANCEL = 2;
    public static final int STATUS_DOWNLOAD = 0;
    public static final int STATUS_ERROR = -1;
    public static final int STATUS_SUCCESS = 1;
    private static final String TAG = "AppVersionManager";
    private static volatile AppVersionManager instance;
    private IAppVersionServiceInterface iAppVersionServiceInterface;
    private Context mContext;
    private ServiceConnectListener mServiceConnectListener;
    private final List<IAppUpdateCallBack> callBacks = new ArrayList();
    private final ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.lion.appversion.AppVersionManager.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(AppVersionManager.TAG, "onServiceConnected");
            try {
                iBinder.linkToDeath(AppVersionManager.this.mDeathRecipient, 0);
            } catch (RemoteException unused) {
                Log.d(AppVersionManager.TAG, "linkToDeath");
            }
            AppVersionManager.this.iAppVersionServiceInterface = IAppVersionServiceInterface.Stub.asInterface(iBinder);
            if (AppVersionManager.this.iAppVersionServiceInterface == null) {
                Log.e(AppVersionManager.TAG, "onServiceConnected: mBinderPoolInterface = null");
                if (AppVersionManager.this.mServiceConnectListener != null) {
                    AppVersionManager.this.mServiceConnectListener.onRemoteConnectStatus(false);
                    return;
                }
                return;
            }
            Log.e(AppVersionManager.TAG, "onServiceConnected: iAppVersionServiceInterface = true");
            if (AppVersionManager.this.mServiceConnectListener != null) {
                Log.e(AppVersionManager.TAG, "onServiceConnected: mServiceConnectListener = true");
                AppVersionManager.this.mServiceConnectListener.onRemoteConnectStatus(true);
                if (!AppVersionManager.this.callBacks.isEmpty()) {
                    for (int i = 0; i < AppVersionManager.this.callBacks.size(); i++) {
                        try {
                            AppVersionManager.this.iAppVersionServiceInterface.unregisterCallBack((IAppUpdateCallBack) AppVersionManager.this.callBacks.get(i));
                            AppVersionManager.this.iAppVersionServiceInterface.registCallBack((IAppUpdateCallBack) AppVersionManager.this.callBacks.get(i));
                        } catch (RemoteException unused2) {
                            Log.e(AppVersionManager.TAG, "onServiceConnected: registCallBack = null");
                        }
                    }
                }
            }
            try {
                if (AppVersionManager.this.iAppVersionServiceInterface != null) {
                    AppVersionManager.this.iAppVersionServiceInterface.asBinder().linkToDeath(AppVersionManager.this.mDeathRecipient, 0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(AppVersionManager.TAG, "onServiceDisconnected");
        }
    };
    private final IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.lion.appversion.AppVersionManager.2
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.e(AppVersionManager.TAG, "binderDied: ");
            if (AppVersionManager.this.iAppVersionServiceInterface != null) {
                AppVersionManager.this.iAppVersionServiceInterface.asBinder().unlinkToDeath(AppVersionManager.this.mDeathRecipient, 0);
                AppVersionManager.this.iAppVersionServiceInterface = null;
            }
            AppVersionManager.this.connectService();
        }
    };

    public static AppVersionManager getInstance() {
        if (instance == null) {
            synchronized (AppVersionManager.class) {
                if (instance == null) {
                    instance = new AppVersionManager();
                }
            }
        }
        return instance;
    }

    public void init(Context context, ServiceConnectListener serviceConnectListener) {
        this.mContext = context;
        this.mServiceConnectListener = serviceConnectListener;
        connectService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void connectService() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.lion.appstore", "com.lion.appstore.service.VersionService"));
        intent.setAction("com.lion.appstore.service.VersionService.bind");
        this.mContext.bindService(intent, this.mServiceConnection, 1);
    }

    public void disconnectInfoService() {
        Log.d(TAG, "disconnectInfoService");
        if (!this.callBacks.isEmpty()) {
            for (int i = 0; i < this.callBacks.size(); i++) {
                try {
                    this.iAppVersionServiceInterface.unregisterCallBack(this.callBacks.get(i));
                } catch (RemoteException unused) {
                    Log.e(TAG, "onServiceConnected: registCallBack = null");
                }
            }
            this.callBacks.clear();
        }
        IAppVersionServiceInterface iAppVersionServiceInterface = this.iAppVersionServiceInterface;
        if (iAppVersionServiceInterface != null) {
            iAppVersionServiceInterface.asBinder().unlinkToDeath(this.mDeathRecipient, 0);
            this.iAppVersionServiceInterface = null;
        }
        ServiceConnectListener serviceConnectListener = this.mServiceConnectListener;
        if (serviceConnectListener != null) {
            serviceConnectListener.onRemoteConnectStatus(false);
            this.mServiceConnectListener = null;
        }
        this.mContext.unbindService(this.mServiceConnection);
    }

    public boolean isNeedUpdte(String str, String str2) {
        try {
            IAppVersionServiceInterface iAppVersionServiceInterface = this.iAppVersionServiceInterface;
            if (iAppVersionServiceInterface != null) {
                return iAppVersionServiceInterface.isNeedUpdate(str, str2);
            }
            Log.d("isUpdate", "isNeedUpdte:false");
            return false;
        } catch (RemoteException e) {
            Log.d("isUpdate", "isNeedUpdte:" + e.getMessage());
            return false;
        }
    }

    public void getAppInfo(IAppUpdateCallBack iAppUpdateCallBack) {
        try {
            if (!this.callBacks.contains(iAppUpdateCallBack)) {
                this.callBacks.add(iAppUpdateCallBack);
            }
            IAppVersionServiceInterface iAppVersionServiceInterface = this.iAppVersionServiceInterface;
            if (iAppVersionServiceInterface != null) {
                iAppVersionServiceInterface.registCallBack(iAppUpdateCallBack);
            }
        } catch (RemoteException e) {
            Log.d("getAppInfo", "getAppInfo:" + e.getMessage());
        }
    }

    public void postAppInfo(AppInfo appInfo) {
        Log.d("postAppInfo", appInfo.getProgress() + "/" + appInfo.getStatus());
        try {
            IAppVersionServiceInterface iAppVersionServiceInterface = this.iAppVersionServiceInterface;
            if (iAppVersionServiceInterface != null) {
                iAppVersionServiceInterface.postBackAppinfo(appInfo);
            }
        } catch (RemoteException e) {
            Log.d("getAppInfo", "getAppInfo:" + e.getMessage());
        }
    }
}
