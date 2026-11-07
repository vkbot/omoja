package com.android.server;

import android.R;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.timedetector.NetworkTimeSuggestion;
import android.app.timedetector.TimeDetector;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.TimestampedValue;
import android.provider.Settings;
import android.util.Log;
import android.util.NtpTrustedTime;
import android.util.TimeUtils;
import com.android.internal.util.DumpUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class NetworkTimeUpdateService extends Binder {
    private static final String ACTION_POLL = "com.android.server.NetworkTimeUpdateService.action.POLL";
    private static final boolean DBG = false;
    private static final int EVENT_AUTO_TIME_ENABLED = 1;
    private static final int EVENT_NETWORK_CHANGED = 3;
    private static final int EVENT_POLL_NETWORK_TIME = 2;
    private static final int NETWORK_CHANGE_EVENT_DELAY_MS = 1000;
    private static final int NETWORK_CHANGE_EVENT_RETRY_TIME = 60000;
    private static final int POLL_REQUEST = 0;
    private static final String TAG = "NetworkTimeUpdateService";
    private final AlarmManager mAlarmManager;
    private AutoTimeSettingObserver mAutoTimeSettingObserver;
    private final ConnectivityManager mCM;
    private final Context mContext;
    private Handler mHandler;
    private NetworkTimeUpdateCallback mNetworkTimeUpdateCallback;
    private final PendingIntent mPendingPollIntent;
    private final long mPollingIntervalMs;
    private final long mPollingIntervalShorterMs;
    private final NtpTrustedTime mTime;
    private final TimeDetector mTimeDetector;
    private boolean mTimeSyncExist;
    private Thread mTimeSyncThread;
    private int mTryAgainCounter;
    private final int mTryAgainTimesMax;
    private final PowerManager.WakeLock mWakeLock;
    private Network mDefaultNetwork = null;
    private BroadcastReceiver mConnectivityReceiver = new BroadcastReceiver() { // from class: com.android.server.NetworkTimeUpdateService.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                if (NetworkTimeUpdateService.this.isNetSystemUsable(context)) {
                    Message message = NetworkTimeUpdateService.this.mHandler.obtainMessage(3);
                    NetworkTimeUpdateService.this.mHandler.sendMessageDelayed(message, 1000L);
                    if (NetworkTimeUpdateService.this.mTimeSyncThread == null && NetworkTimeUpdateService.this.mTimeSyncExist) {
                        NetworkTimeUpdateService.this.mTimeSyncThread = new Thread() { // from class: com.android.server.NetworkTimeUpdateService.2.1
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                while (true) {
                                    try {
                                        Thread.sleep(60000L);
                                        if (NetworkTimeUpdateService.this.mTimeSyncExist) {
                                            Message message2 = NetworkTimeUpdateService.this.mHandler.obtainMessage(3);
                                            NetworkTimeUpdateService.this.mHandler.sendMessageDelayed(message2, 1000L);
                                        } else {
                                            return;
                                        }
                                    } catch (InterruptedException e) {
                                        e.printStackTrace();
                                    }
                                }
                            }
                        };
                        NetworkTimeUpdateService.this.mTimeSyncThread.start();
                    }
                }
            }
        }
    };
    private BroadcastReceiver mWifiReceiver = new BroadcastReceiver() { // from class: com.android.server.NetworkTimeUpdateService.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.net.wifi.STATE_CHANGE".equals(action)) {
                NetworkInfo info = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                if (info.getDetailedState() == NetworkInfo.DetailedState.CONNECTED) {
                    Log.d(NetworkTimeUpdateService.TAG, "WifiManager.NETWORK_STATE_CHANGED_ACTION CONNECTED");
                    Message message = NetworkTimeUpdateService.this.mHandler.obtainMessage(3);
                    NetworkTimeUpdateService.this.mHandler.sendMessageDelayed(message, 1000L);
                } else if (info.getDetailedState() == NetworkInfo.DetailedState.DISCONNECTED) {
                    Log.d(NetworkTimeUpdateService.TAG, "WifiManager.NETWORK_STATE_CHANGED_ACTION DISCONNECTED");
                }
            }
        }
    };

    public NetworkTimeUpdateService(Context context) {
        this.mContext = context;
        this.mTime = NtpTrustedTime.getInstance(context);
        this.mAlarmManager = (AlarmManager) this.mContext.getSystemService(AlarmManager.class);
        this.mTimeDetector = (TimeDetector) this.mContext.getSystemService(TimeDetector.class);
        this.mCM = (ConnectivityManager) this.mContext.getSystemService(ConnectivityManager.class);
        Intent pollIntent = new Intent(ACTION_POLL, (Uri) null);
        this.mPendingPollIntent = PendingIntent.getBroadcast(this.mContext, 0, pollIntent, 0);
        this.mPollingIntervalMs = this.mContext.getResources().getInteger(R.integer.config_flipToScreenOffMaxLatencyMicros);
        this.mPollingIntervalShorterMs = this.mContext.getResources().getInteger(R.integer.config_globalActionsKeyTimeout);
        this.mTryAgainTimesMax = this.mContext.getResources().getInteger(R.integer.config_hotwordDetectedResultMaxBundleSize);
        this.mWakeLock = ((PowerManager) context.getSystemService(PowerManager.class)).newWakeLock(1, TAG);
        this.mTimeSyncThread = null;
        this.mTimeSyncExist = true;
    }

    public void systemRunning() {
        registerForAlarms();
        registerForConnectivityIntents();
        registerForWifiIntents();
        HandlerThread thread = new HandlerThread(TAG);
        thread.start();
        this.mHandler = new MyHandler(thread.getLooper());
        NetworkTimeUpdateCallback networkTimeUpdateCallback = new NetworkTimeUpdateCallback();
        this.mNetworkTimeUpdateCallback = networkTimeUpdateCallback;
        this.mCM.registerDefaultNetworkCallback(networkTimeUpdateCallback, this.mHandler);
        AutoTimeSettingObserver autoTimeSettingObserver = new AutoTimeSettingObserver(this.mContext, this.mHandler, 1);
        this.mAutoTimeSettingObserver = autoTimeSettingObserver;
        autoTimeSettingObserver.observe();
    }

    private void registerForAlarms() {
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.NetworkTimeUpdateService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                NetworkTimeUpdateService.this.mHandler.obtainMessage(2).sendToTarget();
            }
        }, new IntentFilter(ACTION_POLL));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNetSystemUsable(Context context) {
        Network activeNetwork = this.mCM.getActiveNetwork();
        boolean isNetUsable = false;
        NetworkCapabilities networkCapabilities = this.mCM.getNetworkCapabilities(activeNetwork);
        if (networkCapabilities != null) {
            isNetUsable = networkCapabilities.hasCapability(16);
        }
        Log.d(TAG, "isNetSystemUsable: " + isNetUsable);
        return isNetUsable;
    }

    private void registerForConnectivityIntents() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.mContext.registerReceiver(this.mConnectivityReceiver, intentFilter);
    }

    private void registerForWifiIntents() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        this.mContext.registerReceiver(this.mWifiReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPollNetworkTime(int event) {
        if (this.mDefaultNetwork == null) {
            return;
        }
        onPollNetworkTimeUnderWakeLock(event);
    }

    private void onPollNetworkTimeUnderWakeLock(int event) {
        NtpTrustedTime.TimeResult cachedNtpResult = this.mTime.getCachedTimeResult();
        if (cachedNtpResult == null || cachedNtpResult.getAgeMillis() >= this.mPollingIntervalMs) {
            Log.d(TAG, "Stale NTP fix; forcing refresh");
            this.mTime.forceRefresh();
            cachedNtpResult = this.mTime.getCachedTimeResult();
        }
        if (cachedNtpResult == null) {
            Log.d(TAG, "onPollNetworkTimeUnderWakeLock");
        } else {
            Log.d(TAG, "onPollNetworkTimeUnderWakeLock ageMillis: " + cachedNtpResult.getAgeMillis());
        }
        if (cachedNtpResult != null) {
            long ageMillis = cachedNtpResult.getAgeMillis();
            long j = this.mPollingIntervalMs;
            if (ageMillis < j) {
                resetAlarm(j);
                TimestampedValue<Long> timeSignal = new TimestampedValue<>(cachedNtpResult.getElapsedRealtimeMillis(), Long.valueOf(cachedNtpResult.getTimeMillis()));
                NetworkTimeSuggestion timeSuggestion = new NetworkTimeSuggestion(timeSignal);
                timeSuggestion.addDebugInfo(new String[]{"Origin: NetworkTimeUpdateService. event=" + event});
                this.mTimeDetector.suggestNetworkTime(timeSuggestion);
                this.mTimeSyncExist = false;
                return;
            }
        }
        int i = this.mTryAgainCounter + 1;
        this.mTryAgainCounter = i;
        int i2 = this.mTryAgainTimesMax;
        if (i2 < 0 || i <= i2) {
            resetAlarm(this.mPollingIntervalShorterMs);
        } else {
            this.mTryAgainCounter = 0;
            resetAlarm(this.mPollingIntervalMs);
        }
    }

    private void resetAlarm(long interval) {
        this.mAlarmManager.cancel(this.mPendingPollIntent);
        long now = SystemClock.elapsedRealtime();
        long next = now + interval;
        this.mAlarmManager.set(3, next, this.mPendingPollIntent);
    }

    private class MyHandler extends Handler {
        MyHandler(Looper l) {
            super(l);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1 || i == 2 || i == 3) {
                NetworkTimeUpdateService.this.onPollNetworkTime(msg.what);
            }
        }
    }

    private class NetworkTimeUpdateCallback extends ConnectivityManager.NetworkCallback {
        private NetworkTimeUpdateCallback() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            Log.d(NetworkTimeUpdateService.TAG, String.format("New default network %s; checking time.", network));
            NetworkTimeUpdateService.this.mDefaultNetwork = network;
            NetworkTimeUpdateService.this.onPollNetworkTime(3);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            if (network.equals(NetworkTimeUpdateService.this.mDefaultNetwork)) {
                NetworkTimeUpdateService.this.mDefaultNetwork = null;
            }
        }
    }

    private static class AutoTimeSettingObserver extends ContentObserver {
        private final Context mContext;
        private final Handler mHandler;
        private final int mMsg;

        AutoTimeSettingObserver(Context context, Handler handler, int msg) {
            super(handler);
            this.mContext = context;
            this.mHandler = handler;
            this.mMsg = msg;
        }

        void observe() {
            ContentResolver resolver = this.mContext.getContentResolver();
            resolver.registerContentObserver(Settings.Global.getUriFor("auto_time"), false, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            if (isAutomaticTimeEnabled()) {
                this.mHandler.obtainMessage(this.mMsg).sendToTarget();
            }
        }

        private boolean isAutomaticTimeEnabled() {
            ContentResolver resolver = this.mContext.getContentResolver();
            return Settings.Global.getInt(resolver, "auto_time", 0) != 0;
        }
    }

    @Override // android.os.Binder
    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            pw.print("PollingIntervalMs: ");
            TimeUtils.formatDuration(this.mPollingIntervalMs, pw);
            pw.print("\nPollingIntervalShorterMs: ");
            TimeUtils.formatDuration(this.mPollingIntervalShorterMs, pw);
            pw.println("\nTryAgainTimesMax: " + this.mTryAgainTimesMax);
            pw.println("\nTryAgainCounter: " + this.mTryAgainCounter);
            NtpTrustedTime.TimeResult ntpResult = this.mTime.getCachedTimeResult();
            pw.println("NTP cache result: " + ntpResult);
            if (ntpResult != null) {
                pw.println("NTP result age: " + ntpResult.getAgeMillis());
            }
            pw.println();
        }
    }
}
