package com.android.server.trust;

import android.R;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.service.trust.ITrustAgentService;
import android.service.trust.ITrustAgentServiceCallback;
import android.util.Log;
import android.util.Slog;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TrustAgentWrapper {
    private static final String DATA_DURATION = "duration";
    private static final String DATA_ESCROW_TOKEN = "escrow_token";
    private static final String DATA_HANDLE = "handle";
    private static final String DATA_MESSAGE = "message";
    private static final String DATA_USER_ID = "user_id";
    private static final boolean DEBUG = TrustManagerService.DEBUG;
    private static final String EXTRA_COMPONENT_NAME = "componentName";
    private static final int MSG_ADD_ESCROW_TOKEN = 7;
    private static final int MSG_ESCROW_TOKEN_STATE = 9;
    private static final int MSG_GRANT_TRUST = 1;
    private static final int MSG_MANAGING_TRUST = 6;
    private static final int MSG_REMOVE_ESCROW_TOKEN = 8;
    private static final int MSG_RESTART_TIMEOUT = 4;
    private static final int MSG_REVOKE_TRUST = 2;
    private static final int MSG_SET_TRUST_AGENT_FEATURES_COMPLETED = 5;
    private static final int MSG_SHOW_KEYGUARD_ERROR_MESSAGE = 11;
    private static final int MSG_TRUST_TIMEOUT = 3;
    private static final int MSG_UNLOCK_USER = 10;
    private static final String PERMISSION = "android.permission.PROVIDE_TRUST_AGENT";
    private static final long RESTART_TIMEOUT_MILLIS = 300000;
    private static final String TAG = "TrustAgentWrapper";
    private static final String TRUST_EXPIRED_ACTION = "android.server.trust.TRUST_EXPIRED_ACTION";
    private final Intent mAlarmIntent;
    private AlarmManager mAlarmManager;
    private PendingIntent mAlarmPendingIntent;
    private boolean mBound;
    private final Context mContext;
    private boolean mManagingTrust;
    private long mMaximumTimeToLock;
    private CharSequence mMessage;
    private final ComponentName mName;
    private long mScheduledRestartUptimeMillis;
    private IBinder mSetTrustAgentFeaturesToken;
    private ITrustAgentService mTrustAgentService;
    private boolean mTrustDisabledByDpm;
    private final TrustManagerService mTrustManagerService;
    private boolean mTrusted;
    private final int mUserId;
    private boolean mPendingSuccessfulUnlock = false;
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.trust.TrustAgentWrapper.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ComponentName component = (ComponentName) intent.getParcelableExtra(TrustAgentWrapper.EXTRA_COMPONENT_NAME);
            if (TrustAgentWrapper.TRUST_EXPIRED_ACTION.equals(intent.getAction()) && TrustAgentWrapper.this.mName.equals(component)) {
                TrustAgentWrapper.this.mHandler.removeMessages(3);
                TrustAgentWrapper.this.mHandler.sendEmptyMessage(3);
            }
        }
    };
    private final Handler mHandler = new Handler() { // from class: com.android.server.trust.TrustAgentWrapper.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long jMin;
            int i = 1;
            switch (message.what) {
                case 1:
                    if (TrustAgentWrapper.this.isConnected()) {
                        TrustAgentWrapper.this.mTrusted = true;
                        TrustAgentWrapper.this.mMessage = (CharSequence) message.obj;
                        int i2 = message.arg1;
                        long j = message.getData().getLong(TrustAgentWrapper.DATA_DURATION);
                        if (j > 0) {
                            if (TrustAgentWrapper.this.mMaximumTimeToLock != 0) {
                                jMin = Math.min(j, TrustAgentWrapper.this.mMaximumTimeToLock);
                                if (TrustAgentWrapper.DEBUG) {
                                    Slog.d(TrustAgentWrapper.TAG, "DPM lock timeout in effect. Timeout adjusted from " + j + " to " + jMin);
                                }
                            } else {
                                jMin = j;
                            }
                            long jElapsedRealtime = SystemClock.elapsedRealtime() + jMin;
                            TrustAgentWrapper trustAgentWrapper = TrustAgentWrapper.this;
                            trustAgentWrapper.mAlarmPendingIntent = PendingIntent.getBroadcast(trustAgentWrapper.mContext, 0, TrustAgentWrapper.this.mAlarmIntent, AudioFormat.EVRC);
                            TrustAgentWrapper.this.mAlarmManager.set(2, jElapsedRealtime, TrustAgentWrapper.this.mAlarmPendingIntent);
                        }
                        TrustAgentWrapper.this.mTrustManagerService.mArchive.logGrantTrust(TrustAgentWrapper.this.mUserId, TrustAgentWrapper.this.mName, TrustAgentWrapper.this.mMessage != null ? TrustAgentWrapper.this.mMessage.toString() : null, j, i2);
                        TrustAgentWrapper.this.mTrustManagerService.updateTrust(TrustAgentWrapper.this.mUserId, i2);
                        return;
                    }
                    Log.w(TrustAgentWrapper.TAG, "Agent is not connected, cannot grant trust: " + TrustAgentWrapper.this.mName.flattenToShortString());
                    return;
                case 2:
                    break;
                case 3:
                    if (TrustAgentWrapper.DEBUG) {
                        Slog.d(TrustAgentWrapper.TAG, "Trust timed out : " + TrustAgentWrapper.this.mName.flattenToShortString());
                    }
                    TrustAgentWrapper.this.mTrustManagerService.mArchive.logTrustTimeout(TrustAgentWrapper.this.mUserId, TrustAgentWrapper.this.mName);
                    TrustAgentWrapper.this.onTrustTimeout();
                    break;
                case 4:
                    Slog.w(TrustAgentWrapper.TAG, "Connection attempt to agent " + TrustAgentWrapper.this.mName.flattenToShortString() + " timed out, rebinding");
                    TrustAgentWrapper.this.destroy();
                    TrustAgentWrapper.this.mTrustManagerService.resetAgent(TrustAgentWrapper.this.mName, TrustAgentWrapper.this.mUserId);
                    return;
                case 5:
                    IBinder iBinder = (IBinder) message.obj;
                    char c = message.arg1 == 0 ? (char) 0 : (char) 1;
                    if (TrustAgentWrapper.this.mSetTrustAgentFeaturesToken == iBinder) {
                        TrustAgentWrapper.this.mSetTrustAgentFeaturesToken = null;
                        if (TrustAgentWrapper.this.mTrustDisabledByDpm && c != 0) {
                            if (TrustAgentWrapper.DEBUG) {
                                Slog.d(TrustAgentWrapper.TAG, "Re-enabling agent because it acknowledged enabled features: " + TrustAgentWrapper.this.mName.flattenToShortString());
                            }
                            TrustAgentWrapper.this.mTrustDisabledByDpm = false;
                            TrustAgentWrapper.this.mTrustManagerService.updateTrust(TrustAgentWrapper.this.mUserId, 0);
                            return;
                        }
                        return;
                    }
                    if (TrustAgentWrapper.DEBUG) {
                        Slog.w(TrustAgentWrapper.TAG, "Ignoring MSG_SET_TRUST_AGENT_FEATURES_COMPLETED with obsolete token: " + TrustAgentWrapper.this.mName.flattenToShortString());
                        return;
                    }
                    return;
                case 6:
                    TrustAgentWrapper.this.mManagingTrust = message.arg1 != 0;
                    if (!TrustAgentWrapper.this.mManagingTrust) {
                        TrustAgentWrapper.this.mTrusted = false;
                        TrustAgentWrapper.this.mMessage = null;
                    }
                    TrustAgentWrapper.this.mTrustManagerService.mArchive.logManagingTrust(TrustAgentWrapper.this.mUserId, TrustAgentWrapper.this.mName, TrustAgentWrapper.this.mManagingTrust);
                    TrustAgentWrapper.this.mTrustManagerService.updateTrust(TrustAgentWrapper.this.mUserId, 0);
                    return;
                case 7:
                    byte[] byteArray = message.getData().getByteArray(TrustAgentWrapper.DATA_ESCROW_TOKEN);
                    int i3 = message.getData().getInt(TrustAgentWrapper.DATA_USER_ID);
                    long jAddEscrowToken = TrustAgentWrapper.this.mTrustManagerService.addEscrowToken(byteArray, i3);
                    boolean z = false;
                    try {
                        if (TrustAgentWrapper.this.mTrustAgentService != null) {
                            TrustAgentWrapper.this.mTrustAgentService.onEscrowTokenAdded(byteArray, jAddEscrowToken, UserHandle.of(i3));
                            z = true;
                        }
                    } catch (RemoteException e) {
                        TrustAgentWrapper.this.onError(e);
                    }
                    if (!z) {
                        TrustAgentWrapper.this.mTrustManagerService.removeEscrowToken(jAddEscrowToken, i3);
                        return;
                    }
                    return;
                case 8:
                    long j2 = message.getData().getLong(TrustAgentWrapper.DATA_HANDLE);
                    boolean zRemoveEscrowToken = TrustAgentWrapper.this.mTrustManagerService.removeEscrowToken(j2, message.getData().getInt(TrustAgentWrapper.DATA_USER_ID));
                    try {
                        if (TrustAgentWrapper.this.mTrustAgentService != null) {
                            TrustAgentWrapper.this.mTrustAgentService.onEscrowTokenRemoved(j2, zRemoveEscrowToken);
                            return;
                        }
                        return;
                    } catch (RemoteException e2) {
                        TrustAgentWrapper.this.onError(e2);
                        return;
                    }
                case 9:
                    long j3 = message.getData().getLong(TrustAgentWrapper.DATA_HANDLE);
                    boolean zIsEscrowTokenActive = TrustAgentWrapper.this.mTrustManagerService.isEscrowTokenActive(j3, message.getData().getInt(TrustAgentWrapper.DATA_USER_ID));
                    try {
                        if (TrustAgentWrapper.this.mTrustAgentService != null) {
                            ITrustAgentService iTrustAgentService = TrustAgentWrapper.this.mTrustAgentService;
                            if (!zIsEscrowTokenActive) {
                                i = 0;
                            }
                            iTrustAgentService.onTokenStateReceived(j3, i);
                            return;
                        }
                        return;
                    } catch (RemoteException e3) {
                        TrustAgentWrapper.this.onError(e3);
                        return;
                    }
                case 10:
                    TrustAgentWrapper.this.mTrustManagerService.unlockUserWithToken(message.getData().getLong(TrustAgentWrapper.DATA_HANDLE), message.getData().getByteArray(TrustAgentWrapper.DATA_ESCROW_TOKEN), message.getData().getInt(TrustAgentWrapper.DATA_USER_ID));
                    return;
                case 11:
                    TrustAgentWrapper.this.mTrustManagerService.showKeyguardErrorMessage(message.getData().getCharSequence(TrustAgentWrapper.DATA_MESSAGE));
                    return;
                default:
                    return;
            }
            TrustAgentWrapper.this.mTrusted = false;
            TrustAgentWrapper.this.mMessage = null;
            TrustAgentWrapper.this.mHandler.removeMessages(3);
            if (message.what == 2) {
                TrustAgentWrapper.this.mTrustManagerService.mArchive.logRevokeTrust(TrustAgentWrapper.this.mUserId, TrustAgentWrapper.this.mName);
            }
            TrustAgentWrapper.this.mTrustManagerService.updateTrust(TrustAgentWrapper.this.mUserId, 0);
        }
    };
    private ITrustAgentServiceCallback mCallback = new ITrustAgentServiceCallback.Stub() { // from class: com.android.server.trust.TrustAgentWrapper.3
        public void grantTrust(CharSequence userMessage, long durationMs, int flags) {
            if (TrustAgentWrapper.DEBUG) {
                Slog.d(TrustAgentWrapper.TAG, "enableTrust(" + ((Object) userMessage) + ", durationMs = " + durationMs + ", flags = " + flags + ")");
            }
            Message msg = TrustAgentWrapper.this.mHandler.obtainMessage(1, flags, 0, userMessage);
            msg.getData().putLong(TrustAgentWrapper.DATA_DURATION, durationMs);
            msg.sendToTarget();
        }

        public void revokeTrust() {
            if (TrustAgentWrapper.DEBUG) {
                Slog.d(TrustAgentWrapper.TAG, "revokeTrust()");
            }
            TrustAgentWrapper.this.mHandler.sendEmptyMessage(2);
        }

        public void setManagingTrust(boolean z) {
            if (TrustAgentWrapper.DEBUG) {
                Slog.d(TrustAgentWrapper.TAG, "managingTrust()");
            }
            TrustAgentWrapper.this.mHandler.obtainMessage(6, z ? 1 : 0, 0).sendToTarget();
        }

        public void onConfigureCompleted(boolean z, IBinder iBinder) {
            if (TrustAgentWrapper.DEBUG) {
                Slog.d(TrustAgentWrapper.TAG, "onSetTrustAgentFeaturesEnabledCompleted(result=" + z);
            }
            TrustAgentWrapper.this.mHandler.obtainMessage(5, z ? 1 : 0, 0, iBinder).sendToTarget();
        }

        public void addEscrowToken(byte[] token, int userId) {
            if (!TrustAgentWrapper.this.mContext.getResources().getBoolean(R.bool.config_allowTheaterModeWakeFromMotionWhenNotDreaming)) {
                if (TrustAgentWrapper.DEBUG) {
                    Slog.d(TrustAgentWrapper.TAG, "adding escrow token for user " + userId);
                }
                Message msg = TrustAgentWrapper.this.mHandler.obtainMessage(7);
                msg.getData().putByteArray(TrustAgentWrapper.DATA_ESCROW_TOKEN, token);
                msg.getData().putInt(TrustAgentWrapper.DATA_USER_ID, userId);
                msg.sendToTarget();
                return;
            }
            throw new SecurityException("Escrow token API is not allowed.");
        }

        public void isEscrowTokenActive(long handle, int userId) {
            if (!TrustAgentWrapper.this.mContext.getResources().getBoolean(R.bool.config_allowTheaterModeWakeFromMotionWhenNotDreaming)) {
                if (TrustAgentWrapper.DEBUG) {
                    Slog.d(TrustAgentWrapper.TAG, "checking the state of escrow token on user " + userId);
                }
                Message msg = TrustAgentWrapper.this.mHandler.obtainMessage(9);
                msg.getData().putLong(TrustAgentWrapper.DATA_HANDLE, handle);
                msg.getData().putInt(TrustAgentWrapper.DATA_USER_ID, userId);
                msg.sendToTarget();
                return;
            }
            throw new SecurityException("Escrow token API is not allowed.");
        }

        public void removeEscrowToken(long handle, int userId) {
            if (!TrustAgentWrapper.this.mContext.getResources().getBoolean(R.bool.config_allowTheaterModeWakeFromMotionWhenNotDreaming)) {
                if (TrustAgentWrapper.DEBUG) {
                    Slog.d(TrustAgentWrapper.TAG, "removing escrow token on user " + userId);
                }
                Message msg = TrustAgentWrapper.this.mHandler.obtainMessage(8);
                msg.getData().putLong(TrustAgentWrapper.DATA_HANDLE, handle);
                msg.getData().putInt(TrustAgentWrapper.DATA_USER_ID, userId);
                msg.sendToTarget();
                return;
            }
            throw new SecurityException("Escrow token API is not allowed.");
        }

        public void unlockUserWithToken(long handle, byte[] token, int userId) {
            if (!TrustAgentWrapper.this.mContext.getResources().getBoolean(R.bool.config_allowTheaterModeWakeFromMotionWhenNotDreaming)) {
                if (TrustAgentWrapper.DEBUG) {
                    Slog.d(TrustAgentWrapper.TAG, "unlocking user " + userId);
                }
                Message msg = TrustAgentWrapper.this.mHandler.obtainMessage(10);
                msg.getData().putInt(TrustAgentWrapper.DATA_USER_ID, userId);
                msg.getData().putLong(TrustAgentWrapper.DATA_HANDLE, handle);
                msg.getData().putByteArray(TrustAgentWrapper.DATA_ESCROW_TOKEN, token);
                msg.sendToTarget();
                return;
            }
            throw new SecurityException("Escrow token API is not allowed.");
        }

        public void showKeyguardErrorMessage(CharSequence message) {
            if (TrustAgentWrapper.DEBUG) {
                Slog.d(TrustAgentWrapper.TAG, "Showing keyguard error message: " + ((Object) message));
            }
            Message msg = TrustAgentWrapper.this.mHandler.obtainMessage(11);
            msg.getData().putCharSequence(TrustAgentWrapper.DATA_MESSAGE, message);
            msg.sendToTarget();
        }
    };
    private final ServiceConnection mConnection = new ServiceConnection() { // from class: com.android.server.trust.TrustAgentWrapper.4
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            if (TrustAgentWrapper.DEBUG) {
                Slog.d(TrustAgentWrapper.TAG, "TrustAgent started : " + name.flattenToString());
            }
            TrustAgentWrapper.this.mHandler.removeMessages(4);
            TrustAgentWrapper.this.mTrustAgentService = ITrustAgentService.Stub.asInterface(service);
            TrustAgentWrapper.this.mTrustManagerService.mArchive.logAgentConnected(TrustAgentWrapper.this.mUserId, name);
            TrustAgentWrapper trustAgentWrapper = TrustAgentWrapper.this;
            trustAgentWrapper.setCallback(trustAgentWrapper.mCallback);
            TrustAgentWrapper.this.updateDevicePolicyFeatures();
            if (TrustAgentWrapper.this.mPendingSuccessfulUnlock) {
                TrustAgentWrapper.this.onUnlockAttempt(true);
                TrustAgentWrapper.this.mPendingSuccessfulUnlock = false;
            }
            if (TrustAgentWrapper.this.mTrustManagerService.isDeviceLockedInner(TrustAgentWrapper.this.mUserId)) {
                TrustAgentWrapper.this.onDeviceLocked();
            } else {
                TrustAgentWrapper.this.onDeviceUnlocked();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            if (TrustAgentWrapper.DEBUG) {
                Slog.d(TrustAgentWrapper.TAG, "TrustAgent disconnected : " + name.flattenToShortString());
            }
            TrustAgentWrapper.this.mTrustAgentService = null;
            TrustAgentWrapper.this.mManagingTrust = false;
            TrustAgentWrapper.this.mSetTrustAgentFeaturesToken = null;
            TrustAgentWrapper.this.mTrustManagerService.mArchive.logAgentDied(TrustAgentWrapper.this.mUserId, name);
            TrustAgentWrapper.this.mHandler.sendEmptyMessage(2);
            if (TrustAgentWrapper.this.mBound) {
                TrustAgentWrapper.this.scheduleRestart();
            }
        }
    };

    public TrustAgentWrapper(Context context, TrustManagerService trustManagerService, Intent intent, UserHandle user) {
        this.mContext = context;
        this.mTrustManagerService = trustManagerService;
        this.mAlarmManager = (AlarmManager) context.getSystemService("alarm");
        this.mUserId = user.getIdentifier();
        this.mName = intent.getComponent();
        Intent intentPutExtra = new Intent(TRUST_EXPIRED_ACTION).putExtra(EXTRA_COMPONENT_NAME, this.mName);
        this.mAlarmIntent = intentPutExtra;
        intentPutExtra.setData(Uri.parse(intentPutExtra.toUri(1)));
        this.mAlarmIntent.setPackage(context.getPackageName());
        IntentFilter alarmFilter = new IntentFilter(TRUST_EXPIRED_ACTION);
        alarmFilter.addDataScheme(this.mAlarmIntent.getScheme());
        String pathUri = this.mAlarmIntent.toUri(1);
        alarmFilter.addDataPath(pathUri, 0);
        scheduleRestart();
        boolean zBindServiceAsUser = context.bindServiceAsUser(intent, this.mConnection, AudioFormat.AAC_MAIN, user);
        this.mBound = zBindServiceAsUser;
        if (zBindServiceAsUser) {
            this.mContext.registerReceiver(this.mBroadcastReceiver, alarmFilter, PERMISSION, null);
            return;
        }
        Log.e(TAG, "Can't bind to TrustAgent " + this.mName.flattenToShortString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onError(Exception e) {
        Slog.w(TAG, "Exception ", e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTrustTimeout() {
        try {
            if (this.mTrustAgentService != null) {
                this.mTrustAgentService.onTrustTimeout();
            }
        } catch (RemoteException e) {
            onError(e);
        }
    }

    public void onUnlockAttempt(boolean successful) {
        try {
            if (this.mTrustAgentService != null) {
                this.mTrustAgentService.onUnlockAttempt(successful);
            } else {
                this.mPendingSuccessfulUnlock = successful;
            }
        } catch (RemoteException e) {
            onError(e);
        }
    }

    public void onUnlockLockout(int timeoutMs) {
        try {
            if (this.mTrustAgentService != null) {
                this.mTrustAgentService.onUnlockLockout(timeoutMs);
            }
        } catch (RemoteException e) {
            onError(e);
        }
    }

    public void onDeviceLocked() {
        try {
            if (this.mTrustAgentService != null) {
                this.mTrustAgentService.onDeviceLocked();
            }
        } catch (RemoteException e) {
            onError(e);
        }
    }

    public void onDeviceUnlocked() {
        try {
            if (this.mTrustAgentService != null) {
                this.mTrustAgentService.onDeviceUnlocked();
            }
        } catch (RemoteException e) {
            onError(e);
        }
    }

    public void onEscrowTokenActivated(long handle, int userId) {
        if (DEBUG) {
            Slog.d(TAG, "onEscrowTokenActivated: " + handle + " user: " + userId);
        }
        ITrustAgentService iTrustAgentService = this.mTrustAgentService;
        if (iTrustAgentService != null) {
            try {
                iTrustAgentService.onTokenStateReceived(handle, 1);
            } catch (RemoteException e) {
                onError(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCallback(ITrustAgentServiceCallback callback) {
        try {
            if (this.mTrustAgentService != null) {
                this.mTrustAgentService.setCallback(callback);
            }
        } catch (RemoteException e) {
            onError(e);
        }
    }

    boolean updateDevicePolicyFeatures() {
        boolean trustDisabled = false;
        if (DEBUG) {
            Slog.d(TAG, "updateDevicePolicyFeatures(" + this.mName + ")");
        }
        try {
            if (this.mTrustAgentService != null) {
                DevicePolicyManager dpm = (DevicePolicyManager) this.mContext.getSystemService("device_policy");
                if ((dpm.getKeyguardDisabledFeatures(null, this.mUserId) & 16) != 0) {
                    List<PersistableBundle> config = dpm.getTrustAgentConfiguration(null, this.mName, this.mUserId);
                    trustDisabled = true;
                    if (DEBUG) {
                        Slog.d(TAG, "Detected trust agents disabled. Config = " + config);
                    }
                    if (config != null && config.size() > 0) {
                        if (DEBUG) {
                            Slog.d(TAG, "TrustAgent " + this.mName.flattenToShortString() + " disabled until it acknowledges " + config);
                        }
                        Binder binder = new Binder();
                        this.mSetTrustAgentFeaturesToken = binder;
                        this.mTrustAgentService.onConfigure(config, binder);
                    }
                } else {
                    this.mTrustAgentService.onConfigure(Collections.EMPTY_LIST, (IBinder) null);
                }
                long maxTimeToLock = dpm.getMaximumTimeToLock(null, this.mUserId);
                if (maxTimeToLock != this.mMaximumTimeToLock) {
                    this.mMaximumTimeToLock = maxTimeToLock;
                    if (this.mAlarmPendingIntent != null) {
                        this.mAlarmManager.cancel(this.mAlarmPendingIntent);
                        this.mAlarmPendingIntent = null;
                        this.mHandler.sendEmptyMessage(3);
                    }
                }
            }
        } catch (RemoteException e) {
            onError(e);
        }
        if (this.mTrustDisabledByDpm != trustDisabled) {
            this.mTrustDisabledByDpm = trustDisabled;
            this.mTrustManagerService.updateTrust(this.mUserId, 0);
        }
        return trustDisabled;
    }

    public boolean isTrusted() {
        return this.mTrusted && this.mManagingTrust && !this.mTrustDisabledByDpm;
    }

    public boolean isManagingTrust() {
        return this.mManagingTrust && !this.mTrustDisabledByDpm;
    }

    public CharSequence getMessage() {
        return this.mMessage;
    }

    public void destroy() {
        this.mHandler.removeMessages(4);
        if (!this.mBound) {
            return;
        }
        if (DEBUG) {
            Slog.d(TAG, "TrustAgent unbound : " + this.mName.flattenToShortString());
        }
        this.mTrustManagerService.mArchive.logAgentStopped(this.mUserId, this.mName);
        this.mContext.unbindService(this.mConnection);
        this.mBound = false;
        this.mContext.unregisterReceiver(this.mBroadcastReceiver);
        this.mTrustAgentService = null;
        this.mSetTrustAgentFeaturesToken = null;
        this.mHandler.sendEmptyMessage(2);
    }

    public boolean isConnected() {
        return this.mTrustAgentService != null;
    }

    public boolean isBound() {
        return this.mBound;
    }

    public long getScheduledRestartUptimeMillis() {
        return this.mScheduledRestartUptimeMillis;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleRestart() {
        this.mHandler.removeMessages(4);
        long jUptimeMillis = SystemClock.uptimeMillis() + 300000;
        this.mScheduledRestartUptimeMillis = jUptimeMillis;
        this.mHandler.sendEmptyMessageAtTime(4, jUptimeMillis);
    }
}
