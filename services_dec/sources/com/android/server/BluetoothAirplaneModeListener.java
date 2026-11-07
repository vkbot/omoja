package com.android.server;

import android.R;
import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothHearingAid;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.util.Log;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
class BluetoothAirplaneModeListener {
    static final int MAX_TOAST_COUNT = 10;
    private static final int MSG_AIRPLANE_MODE_CHANGED = 0;
    private static final String TAG = "BluetoothAirplaneModeListener";
    static final String TOAST_COUNT = "bluetooth_airplane_toast_count";
    private AirplaneModeHelper mAirplaneHelper;
    private final BluetoothManagerService mBluetoothManager;
    private final BluetoothAirplaneModeHandler mHandler;
    int mToastCount = 0;
    private final ContentObserver mAirplaneModeObserver = new ContentObserver(null) { // from class: com.android.server.BluetoothAirplaneModeListener.1
        @Override // android.database.ContentObserver
        public void onChange(boolean unused) {
            Message msg = BluetoothAirplaneModeListener.this.mHandler.obtainMessage(0);
            BluetoothAirplaneModeListener.this.mHandler.sendMessage(msg);
        }
    };

    BluetoothAirplaneModeListener(BluetoothManagerService service, Looper looper, Context context) {
        this.mBluetoothManager = service;
        this.mHandler = new BluetoothAirplaneModeHandler(looper);
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("airplane_mode_on"), true, this.mAirplaneModeObserver);
    }

    private class BluetoothAirplaneModeHandler extends Handler {
        BluetoothAirplaneModeHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 0) {
                BluetoothAirplaneModeListener.this.handleAirplaneModeChange();
                return;
            }
            Log.e(BluetoothAirplaneModeListener.TAG, "Invalid message: " + msg.what);
        }
    }

    void start(AirplaneModeHelper helper) {
        Log.i(TAG, "start");
        this.mAirplaneHelper = helper;
        this.mToastCount = helper.getSettingsInt(TOAST_COUNT);
    }

    boolean shouldPopToast() {
        int i = this.mToastCount;
        if (i >= 10) {
            return false;
        }
        int i2 = i + 1;
        this.mToastCount = i2;
        this.mAirplaneHelper.setSettingsInt(TOAST_COUNT, i2);
        return true;
    }

    void handleAirplaneModeChange() {
        if (shouldSkipAirplaneModeChange()) {
            Log.i(TAG, "Ignore airplane mode change");
            this.mAirplaneHelper.setSettingsInt("bluetooth_on", 2);
            if (shouldPopToast()) {
                this.mAirplaneHelper.showToastMessage();
                return;
            }
            return;
        }
        AirplaneModeHelper airplaneModeHelper = this.mAirplaneHelper;
        if (airplaneModeHelper != null) {
            airplaneModeHelper.onAirplaneModeChanged(this.mBluetoothManager);
        }
    }

    boolean shouldSkipAirplaneModeChange() {
        AirplaneModeHelper airplaneModeHelper = this.mAirplaneHelper;
        return airplaneModeHelper != null && airplaneModeHelper.isBluetoothOn() && this.mAirplaneHelper.isAirplaneModeOn() && this.mAirplaneHelper.isA2dpOrHearingAidConnected();
    }

    public static class AirplaneModeHelper {
        private volatile BluetoothA2dp mA2dp;
        private final BluetoothAdapter mAdapter;
        private final Context mContext;
        private volatile BluetoothHearingAid mHearingAid;
        private final BluetoothProfile.ServiceListener mProfileServiceListener = new BluetoothProfile.ServiceListener() { // from class: com.android.server.BluetoothAirplaneModeListener.AirplaneModeHelper.1
            @Override // android.bluetooth.BluetoothProfile.ServiceListener
            public void onServiceConnected(int profile, BluetoothProfile proxy) {
                if (profile == 2) {
                    AirplaneModeHelper.this.mA2dp = (BluetoothA2dp) proxy;
                } else if (profile == 21) {
                    AirplaneModeHelper.this.mHearingAid = (BluetoothHearingAid) proxy;
                }
            }

            @Override // android.bluetooth.BluetoothProfile.ServiceListener
            public void onServiceDisconnected(int profile) {
                if (profile == 2) {
                    AirplaneModeHelper.this.mA2dp = null;
                } else if (profile == 21) {
                    AirplaneModeHelper.this.mHearingAid = null;
                }
            }
        };

        AirplaneModeHelper(Context context) {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            this.mAdapter = defaultAdapter;
            this.mContext = context;
            defaultAdapter.getProfileProxy(context, this.mProfileServiceListener, 2);
            this.mAdapter.getProfileProxy(this.mContext, this.mProfileServiceListener, 21);
        }

        public boolean isA2dpOrHearingAidConnected() {
            return isA2dpConnected() || isHearingAidConnected();
        }

        public boolean isBluetoothOn() {
            BluetoothAdapter adapter = this.mAdapter;
            return adapter != null && adapter.getLeState() == 12;
        }

        public boolean isAirplaneModeOn() {
            return Settings.Global.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) == 1;
        }

        public void onAirplaneModeChanged(BluetoothManagerService managerService) {
            managerService.onAirplaneModeChanged();
        }

        public int getSettingsInt(String name) {
            return Settings.Global.getInt(this.mContext.getContentResolver(), name, 0);
        }

        public void setSettingsInt(String name, int value) {
            Settings.Global.putInt(this.mContext.getContentResolver(), name, value);
        }

        public void showToastMessage() {
            Resources r = this.mContext.getResources();
            CharSequence text = r.getString(R.string.config_appsNotReportingCrashes, 0);
            Toast.makeText(this.mContext, text, 1).show();
        }

        private boolean isA2dpConnected() {
            BluetoothA2dp a2dp = this.mA2dp;
            return a2dp != null && a2dp.getConnectedDevices().size() > 0;
        }

        private boolean isHearingAidConnected() {
            BluetoothHearingAid hearingAid = this.mHearingAid;
            return hearingAid != null && hearingAid.getConnectedDevices().size() > 0;
        }
    }
}
