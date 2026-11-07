package com.android.server.connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.telephony.NetworkRegistrationInfo;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.internal.app.IBatteryStats;
import com.android.server.am.BatteryStatsService;
import com.android.server.policy.PhoneWindowManager;

/* JADX INFO: loaded from: classes.dex */
public class DataConnectionStats extends BroadcastReceiver {
    private static final boolean DEBUG = false;
    private static final String TAG = "DataConnectionStats";
    private final Context mContext;
    private final Handler mListenerHandler;
    private final PhoneStateListener mPhoneStateListener;
    private ServiceState mServiceState;
    private SignalStrength mSignalStrength;
    private int mSimState = 5;
    private int mDataState = 0;
    private int mNrState = 0;
    private final IBatteryStats mBatteryStats = BatteryStatsService.getService();

    public DataConnectionStats(Context context, Handler listenerHandler) {
        this.mContext = context;
        this.mListenerHandler = listenerHandler;
        this.mPhoneStateListener = new PhoneStateListenerImpl(listenerHandler.getLooper());
    }

    public void startMonitoring() {
        TelephonyManager phone = (TelephonyManager) this.mContext.getSystemService("phone");
        phone.listen(this.mPhoneStateListener, 449);
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SIM_STATE_CHANGED");
        filter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        filter.addAction("android.net.conn.INET_CONDITION_ACTION");
        this.mContext.registerReceiver(this, filter, null, this.mListenerHandler);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action.equals("android.intent.action.SIM_STATE_CHANGED")) {
            updateSimState(intent);
            notePhoneDataConnectionState();
        } else if (action.equals("android.net.conn.CONNECTIVITY_CHANGE") || action.equals("android.net.conn.INET_CONDITION_ACTION")) {
            notePhoneDataConnectionState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notePhoneDataConnectionState() {
        if (this.mServiceState == null) {
            return;
        }
        int i = this.mSimState;
        boolean simReadyOrUnknown = i == 5 || i == 0;
        boolean visible = (simReadyOrUnknown || isCdma()) && hasService() && this.mDataState == 2;
        NetworkRegistrationInfo regInfo = this.mServiceState.getNetworkRegistrationInfo(2, 1);
        int networkType = regInfo != null ? regInfo.getAccessNetworkTechnology() : 0;
        if (this.mNrState == 3) {
            networkType = 20;
        }
        try {
            this.mBatteryStats.notePhoneDataConnectionState(networkType, visible, this.mServiceState.getState());
        } catch (RemoteException e) {
            Log.w(TAG, "Error noting data connection state", e);
        }
    }

    private final void updateSimState(Intent intent) {
        String stateExtra = intent.getStringExtra("ss");
        if ("ABSENT".equals(stateExtra)) {
            this.mSimState = 1;
            return;
        }
        if ("READY".equals(stateExtra)) {
            this.mSimState = 5;
            return;
        }
        if ("LOCKED".equals(stateExtra)) {
            String lockedReason = intent.getStringExtra(PhoneWindowManager.SYSTEM_DIALOG_REASON_KEY);
            if ("PIN".equals(lockedReason)) {
                this.mSimState = 2;
                return;
            } else if ("PUK".equals(lockedReason)) {
                this.mSimState = 3;
                return;
            } else {
                this.mSimState = 4;
                return;
            }
        }
        this.mSimState = 0;
    }

    private boolean isCdma() {
        SignalStrength signalStrength = this.mSignalStrength;
        return (signalStrength == null || signalStrength.isGsm()) ? false : true;
    }

    private boolean hasService() {
        ServiceState serviceState = this.mServiceState;
        return (serviceState == null || serviceState.getState() == 1 || this.mServiceState.getState() == 3) ? false : true;
    }

    private class PhoneStateListenerImpl extends PhoneStateListener {
        PhoneStateListenerImpl(Looper looper) {
            super(looper);
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            DataConnectionStats.this.mSignalStrength = signalStrength;
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(ServiceState state) {
            DataConnectionStats.this.mServiceState = state;
            DataConnectionStats.this.mNrState = state.getNrState();
            DataConnectionStats.this.notePhoneDataConnectionState();
        }

        @Override // android.telephony.PhoneStateListener
        public void onDataConnectionStateChanged(int state, int networkType) {
            DataConnectionStats.this.mDataState = state;
            DataConnectionStats.this.notePhoneDataConnectionState();
        }

        @Override // android.telephony.PhoneStateListener
        public void onDataActivity(int direction) {
            DataConnectionStats.this.notePhoneDataConnectionState();
        }
    }
}
