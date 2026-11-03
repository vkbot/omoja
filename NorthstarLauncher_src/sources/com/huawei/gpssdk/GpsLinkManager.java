package com.huawei.gpssdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class GpsLinkManager {
    private static final String INTENT_ACTION = "com.mega.hicar.service.GPS_SERVICE";
    private static final String PACKAGE_NAME = "com.mega.hicar";
    private static final String TAG = "GpsLinkManager";
    private ServiceConnectCallback mConnectCallback;
    private Context mContext;
    private IGpsLinkManager mServiceObj = null;

    public GpsLinkManager() {
        Log.d(TAG, "GpsLinkManager()");
    }

    private static class Holder {
        private static final GpsLinkManager INSTANCE = new GpsLinkManager();

        private Holder() {
        }
    }

    public static synchronized GpsLinkManager getInstance() {
        return Holder.INSTANCE;
    }

    public void connectGpsService(Context context, ServiceConnectCallback serviceConnectCallback) {
        Log.d(TAG, "connectGpsService() init start.....");
        this.mConnectCallback = serviceConnectCallback;
        this.mContext = context;
        getServiceConnection();
    }

    protected boolean getServiceConnection() {
        Log.d(TAG, "getServiceConnection() start.....");
        connectService();
        return true;
    }

    protected final void connectService() {
        Log.d(TAG, "connectService() start.....");
        Intent intent = new Intent();
        intent.setPackage("com.mega.hicar");
        intent.setAction(INTENT_ACTION);
        if (this.mContext != null) {
            Log.d(TAG, "connectService bindService start");
            this.mContext.bindService(intent, new ServiceConnection() { // from class: com.huawei.gpssdk.GpsLinkManager.1
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    Log.d(GpsLinkManager.TAG, "connectGPSService onServiceConnected");
                    GpsLinkManager.this.mServiceObj = IGpsLinkManager.Stub.asInterface(iBinder);
                    GpsLinkManager.this.mConnectCallback.onServiceConnected();
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                    Log.d(GpsLinkManager.TAG, "connectGPSService onServiceDisconnected");
                    GpsLinkManager.this.mServiceObj = null;
                    GpsLinkManager.this.mConnectCallback.onServiceDisconnected();
                }
            }, 1);
        } else {
            Log.e(TAG, "connectService: mContext is null");
        }
    }

    protected boolean isConnected() {
        if (this.mServiceObj != null) {
            return true;
        }
        Log.e(TAG, "GpsService serviceObj is null");
        return false;
    }

    public boolean isSupportCarGpsAbility() {
        Log.d(TAG, "isSupportCarGpsAbility()");
        if (isConnected()) {
            try {
                return this.mServiceObj.isSupportCarGpsAbility();
            } catch (RemoteException e) {
                Log.d(TAG, "isSupportCarGpsAbility remoteException: " + e.getLocalizedMessage());
                e.printStackTrace();
                return false;
            }
        }
        Log.e(TAG, "isSupportCarGpsAbility: not connected service");
        return false;
    }

    public boolean isSupportCarGpsDrivingStatusAbility() {
        Log.d(TAG, "isSupportCarGpsDrivingStatusAbility()");
        if (isConnected()) {
            try {
                return this.mServiceObj.isSupportCarGpsDrivingStatusAbility();
            } catch (RemoteException e) {
                Log.d(TAG, "isSupportCarGpsDrivingStatusAbility remoteException: " + e.getLocalizedMessage());
                e.printStackTrace();
                return false;
            }
        }
        Log.e(TAG, "isSupportCarGpsDrivingStatusAbility: not connected service");
        return false;
    }

    public boolean isSupportCarGpsSensorAbility() {
        Log.d(TAG, "isSupportCarGpsSensorAbility()");
        if (isConnected()) {
            try {
                return this.mServiceObj.isSupportCarGpsSensorAbility();
            } catch (RemoteException e) {
                Log.e(TAG, "isSupportCarGpsSensorAbility RemoteException");
                e.printStackTrace();
                return false;
            }
        }
        Log.e(TAG, "isSupportCarGpsSensorAbility: not connected service");
        return false;
    }

    public boolean registerCarDataListener(GpsDataCallBack gpsDataCallBack) {
        Log.d(TAG, "registerCarDataListener() carDataCallBack: " + gpsDataCallBack);
        if (isConnected()) {
            try {
                return this.mServiceObj.registerCarDataListener(gpsDataCallBack);
            } catch (RemoteException e) {
                Log.d(TAG, "registerCarDataListener remoteException: " + e.getLocalizedMessage());
                e.printStackTrace();
                return false;
            }
        }
        Log.e(TAG, "registerCarDataListener: not connected service");
        return false;
    }

    public boolean unRegisterCarDataListener(GpsDataCallBack gpsDataCallBack) {
        Log.d(TAG, "unRegisterCarDataListener() carDataCallBack: " + gpsDataCallBack);
        if (isConnected()) {
            try {
                return this.mServiceObj.unRegisterCarDataListener(gpsDataCallBack);
            } catch (RemoteException e) {
                Log.d(TAG, "unRegisterCarDataListener remoteException: " + e.getLocalizedMessage());
                e.printStackTrace();
                return false;
            }
        }
        Log.e(TAG, "unRegisterCarDataListener: not connected service");
        return false;
    }

    public CarDataReportFreq getCarDataReportFreq() {
        Log.d(TAG, "getCarDataReportFreq()");
        if (isConnected()) {
            try {
                return this.mServiceObj.getCarDataReportFreq();
            } catch (RemoteException e) {
                Log.e(TAG, "getCarDataReportFreq RemoteException");
                e.printStackTrace();
                return null;
            }
        }
        Log.e(TAG, "getCarDataReportFreq: not connected service");
        return null;
    }
}
