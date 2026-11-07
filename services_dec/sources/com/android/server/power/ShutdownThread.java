package com.android.server.power;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.IActivityManager;
import android.app.ProgressDialog;
import android.app.admin.SecurityLog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.os.FileUtils;
import android.os.Handler;
import android.os.PowerManager;
import android.os.RecoverySystem;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.telephony.TelephonyManager;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import android.util.TimingsTraceLog;
import com.android.server.LocalServices;
import com.android.server.RescueParty;
import com.android.server.job.controllers.JobStatus;
import com.android.server.notification.SnoozeHelper;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.Settings;
import com.android.server.statusbar.StatusBarManagerInternal;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public final class ShutdownThread extends Thread {
    private static final int ACTION_DONE_POLL_WAIT_MS = 500;
    private static final int ACTIVITY_MANAGER_STOP_PERCENT = 4;
    private static final int BROADCAST_STOP_PERCENT = 2;
    private static final int MAX_BROADCAST_TIME = 10000;
    private static final int MAX_RADIO_WAIT_TIME = 12000;
    private static final int MAX_SHUTDOWN_WAIT_TIME = 20000;
    private static final int MAX_UNCRYPT_WAIT_TIME = 900000;
    private static final String METRICS_FILE_BASENAME = "/data/system/shutdown-metrics";
    private static final int MOUNT_SERVICE_STOP_PERCENT = 20;
    private static final int PACKAGE_MANAGER_STOP_PERCENT = 6;
    private static final int RADIOS_STATE_POLL_SLEEP_MS = 100;
    private static final int RADIO_STOP_PERCENT = 18;
    public static final String REBOOT_SAFEMODE_PROPERTY = "persist.sys.safemode";
    public static final String RO_SAFEMODE_PROPERTY = "ro.sys.safemode";
    public static final String SHUTDOWN_ACTION_PROPERTY = "sys.shutdown.requested";
    private static final int SHUTDOWN_VIBRATE_MS = 0;
    private static final String TAG = "ShutdownThread";
    private static String mReason;
    private static boolean mReboot;
    private static boolean mRebootHasProgressBar;
    private static boolean mRebootSafeMode;
    private static AlertDialog sConfirmDialog;
    private boolean mActionDone;
    private final Object mActionDoneSync = new Object();
    private Context mContext;
    private PowerManager.WakeLock mCpuWakeLock;
    private Handler mHandler;
    private PowerManager mPowerManager;
    private ProgressDialog mProgressDialog;
    private PowerManager.WakeLock mScreenWakeLock;
    private static final Object sIsStartedGuard = new Object();
    private static boolean sIsStarted = false;
    private static final ShutdownThread sInstance = new ShutdownThread();
    private static final AudioAttributes VIBRATION_ATTRIBUTES = new AudioAttributes.Builder().setContentType(4).setUsage(13).build();
    private static final ArrayMap<String, Long> TRON_METRICS = new ArrayMap<>();
    private static String METRIC_SYSTEM_SERVER = "shutdown_system_server";
    private static String METRIC_SEND_BROADCAST = "shutdown_send_shutdown_broadcast";
    private static String METRIC_AM = "shutdown_activity_manager";
    private static String METRIC_PM = "shutdown_package_manager";
    private static String METRIC_RADIOS = "shutdown_radios";
    private static String METRIC_RADIO = "shutdown_radio";
    private static String METRIC_SHUTDOWN_TIME_START = "begin_shutdown";

    private ShutdownThread() {
    }

    public static void shutdown(Context context, String reason, boolean confirm) {
        mReboot = false;
        mRebootSafeMode = false;
        mReason = reason;
        shutdownInner(context, confirm);
    }

    private static void shutdownInner(final Context context, boolean confirm) {
        int resourceId;
        int i;
        context.assertRuntimeOverlayThemable();
        synchronized (sIsStartedGuard) {
            if (sIsStarted) {
                Log.d(TAG, "Request to shutdown already running, returning.");
                return;
            }
            int longPressBehavior = context.getResources().getInteger(R.integer.config_displayWhiteBalanceColorTemperatureFilterHorizon);
            if (mRebootSafeMode) {
                resourceId = R.string.number_picker_increment_scroll_action;
            } else if (longPressBehavior == 2) {
                resourceId = R.string.permdesc_readMediaAudio;
            } else {
                resourceId = R.string.permdesc_readInstallSessions;
            }
            Log.d(TAG, "Notifying thread to start shutdown longPressBehavior=" + longPressBehavior);
            if (confirm) {
                CloseDialogReceiver closer = new CloseDialogReceiver(context);
                AlertDialog alertDialog = sConfirmDialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                if (mRebootSafeMode) {
                    i = R.string.number_picker_increment_scroll_mode;
                } else {
                    i = R.string.notification_header_divider_symbol;
                }
                AlertDialog alertDialogCreate = builder.setTitle(i).setMessage(resourceId).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.android.server.power.ShutdownThread.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        ShutdownThread.beginShutdownSequence(context);
                    }
                }).setNegativeButton(R.string.no, (DialogInterface.OnClickListener) null).create();
                sConfirmDialog = alertDialogCreate;
                closer.dialog = alertDialogCreate;
                sConfirmDialog.setOnDismissListener(closer);
                sConfirmDialog.getWindow().setType(2009);
                sConfirmDialog.show();
                return;
            }
            beginShutdownSequence(context);
        }
    }

    private static class CloseDialogReceiver extends BroadcastReceiver implements DialogInterface.OnDismissListener {
        public Dialog dialog;
        private Context mContext;

        CloseDialogReceiver(Context context) {
            this.mContext = context;
            IntentFilter filter = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
            context.registerReceiver(this, filter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            this.dialog.cancel();
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface unused) {
            this.mContext.unregisterReceiver(this);
        }
    }

    public static void reboot(Context context, String reason, boolean confirm) {
        mReboot = true;
        mRebootSafeMode = false;
        mRebootHasProgressBar = false;
        mReason = reason;
        shutdownInner(context, confirm);
    }

    public static void rebootSafeMode(Context context, boolean confirm) {
        UserManager um = (UserManager) context.getSystemService("user");
        if (um.hasUserRestriction("no_safe_boot")) {
            return;
        }
        mReboot = true;
        mRebootSafeMode = true;
        mRebootHasProgressBar = false;
        mReason = null;
        shutdownInner(context, confirm);
    }

    private static ProgressDialog showShutdownDialog(Context context) {
        ProgressDialog pd = new ProgressDialog(context);
        String str = mReason;
        if (str != null && str.startsWith("recovery-update")) {
            mRebootHasProgressBar = RecoverySystem.UNCRYPT_PACKAGE_FILE.exists() && !RecoverySystem.BLOCK_MAP_FILE.exists();
            pd.setTitle(context.getText(R.string.PERSOSUBSTATE_RUIM_RUIM_PUK_IN_PROGRESS));
            if (mRebootHasProgressBar) {
                pd.setMax(100);
                pd.setProgress(0);
                pd.setIndeterminate(false);
                pd.setProgressNumberFormat(null);
                pd.setProgressStyle(1);
                pd.setMessage(context.getText(R.string.older));
            } else {
                if (showSysuiReboot()) {
                    return null;
                }
                pd.setIndeterminate(true);
                pd.setMessage(context.getText(R.string.PERSOSUBSTATE_SIM_NETWORK_SUBSET_ENTRY));
            }
        } else {
            String str2 = mReason;
            if (str2 != null && str2.equals("recovery")) {
                if (showSysuiReboot()) {
                    return null;
                }
                if (RescueParty.isAttemptingFactoryReset()) {
                    pd.setTitle(context.getText(R.string.notification_header_divider_symbol));
                    pd.setMessage(context.getText(R.string.PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_SUCCESS));
                    pd.setIndeterminate(true);
                } else {
                    pd.setTitle(context.getText(R.string.config_defaultRingtoneVibrationSound));
                    pd.setMessage(context.getText(R.string.CnipMmi));
                    pd.setIndeterminate(true);
                }
            } else {
                if (showSysuiReboot()) {
                    return null;
                }
                pd.setTitle(context.getText(R.string.notification_header_divider_symbol));
                pd.setMessage(context.getText(R.string.PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_SUCCESS));
                pd.setIndeterminate(true);
            }
        }
        pd.setCancelable(false);
        pd.getWindow().setType(2009);
        pd.show();
        return pd;
    }

    private static boolean showSysuiReboot() {
        Log.d(TAG, "Attempting to use SysUI shutdown UI");
        try {
            StatusBarManagerInternal service = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
            if (service.showShutdownUi(mReboot, mReason)) {
                Log.d(TAG, "SysUI handling shutdown UI");
                return true;
            }
        } catch (Exception e) {
        }
        Log.d(TAG, "SysUI is unavailable");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void beginShutdownSequence(Context context) {
        synchronized (sIsStartedGuard) {
            if (sIsStarted) {
                Log.d(TAG, "Shutdown sequence already running, returning.");
                return;
            }
            sIsStarted = true;
            sInstance.mProgressDialog = showShutdownDialog(context);
            ShutdownThread shutdownThread = sInstance;
            shutdownThread.mContext = context;
            shutdownThread.mPowerManager = (PowerManager) context.getSystemService("power");
            ShutdownThread shutdownThread2 = sInstance;
            shutdownThread2.mCpuWakeLock = null;
            try {
                shutdownThread2.mCpuWakeLock = shutdownThread2.mPowerManager.newWakeLock(1, "ShutdownThread-cpu");
                sInstance.mCpuWakeLock.setReferenceCounted(false);
                sInstance.mCpuWakeLock.acquire();
            } catch (SecurityException e) {
                Log.w(TAG, "No permission to acquire wake lock", e);
                sInstance.mCpuWakeLock = null;
            }
            ShutdownThread shutdownThread3 = sInstance;
            shutdownThread3.mScreenWakeLock = null;
            if (shutdownThread3.mPowerManager.isScreenOn()) {
                try {
                    sInstance.mScreenWakeLock = sInstance.mPowerManager.newWakeLock(26, "ShutdownThread-screen");
                    sInstance.mScreenWakeLock.setReferenceCounted(false);
                    sInstance.mScreenWakeLock.acquire();
                } catch (SecurityException e2) {
                    Log.w(TAG, "No permission to acquire wake lock", e2);
                    sInstance.mScreenWakeLock = null;
                }
            }
            if (SecurityLog.isLoggingEnabled()) {
                SecurityLog.writeEvent(210010, new Object[0]);
            }
            sInstance.mHandler = new Handler() { // from class: com.android.server.power.ShutdownThread.2
            };
            sInstance.start();
        }
    }

    void actionDone() {
        synchronized (this.mActionDoneSync) {
            this.mActionDone = true;
            this.mActionDoneSync.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        TimingsTraceLog shutdownTimingLog = newTimingsLog();
        shutdownTimingLog.traceBegin("SystemServerShutdown");
        metricShutdownStart();
        metricStarted(METRIC_SYSTEM_SERVER);
        BroadcastReceiver br = new BroadcastReceiver() { // from class: com.android.server.power.ShutdownThread.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                ShutdownThread.this.actionDone();
            }
        };
        StringBuilder sb = new StringBuilder();
        sb.append(mReboot ? SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION : "0");
        String str = mReason;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        String reason = sb.toString();
        SystemProperties.set(SHUTDOWN_ACTION_PROPERTY, reason);
        if (mRebootSafeMode) {
            SystemProperties.set(REBOOT_SAFEMODE_PROPERTY, SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
        }
        shutdownTimingLog.traceBegin("DumpPreRebootInfo");
        try {
            Slog.i(TAG, "Logging pre-reboot information...");
            PreRebootLogger.log(this.mContext);
        } catch (Exception e) {
            Slog.e(TAG, "Failed to log pre-reboot information", e);
        }
        shutdownTimingLog.traceEnd();
        metricStarted(METRIC_SEND_BROADCAST);
        shutdownTimingLog.traceBegin("SendShutdownBroadcast");
        Log.i(TAG, "Sending shutdown broadcast...");
        this.mActionDone = false;
        Intent intent = new Intent("android.intent.action.ACTION_SHUTDOWN");
        intent.addFlags(1342177280);
        this.mContext.sendOrderedBroadcastAsUser(intent, UserHandle.ALL, null, br, this.mHandler, 0, null, null);
        long endTime = SystemClock.elapsedRealtime() + JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
        synchronized (this.mActionDoneSync) {
            while (!this.mActionDone) {
                long delay = endTime - SystemClock.elapsedRealtime();
                if (delay <= 0) {
                    Log.w(TAG, "Shutdown broadcast timed out");
                    break;
                }
                if (mRebootHasProgressBar) {
                    int status = (int) ((((JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY - delay) * 1.0d) * 2.0d) / 10000.0d);
                    sInstance.setRebootProgress(status, null);
                }
                try {
                    this.mActionDoneSync.wait(Math.min(delay, 500L));
                } catch (InterruptedException e2) {
                }
            }
        }
        if (mRebootHasProgressBar) {
            sInstance.setRebootProgress(2, null);
        }
        shutdownTimingLog.traceEnd();
        metricEnded(METRIC_SEND_BROADCAST);
        Log.i(TAG, "Shutting down activity manager...");
        shutdownTimingLog.traceBegin("ShutdownActivityManager");
        metricStarted(METRIC_AM);
        IActivityManager am = IActivityManager.Stub.asInterface(ServiceManager.checkService("activity"));
        if (am != null) {
            try {
                am.shutdown(10000);
            } catch (RemoteException e3) {
            }
        }
        if (mRebootHasProgressBar) {
            sInstance.setRebootProgress(4, null);
        }
        shutdownTimingLog.traceEnd();
        metricEnded(METRIC_AM);
        Log.i(TAG, "Shutting down package manager...");
        shutdownTimingLog.traceBegin("ShutdownPackageManager");
        metricStarted(METRIC_PM);
        PackageManagerService pm = (PackageManagerService) ServiceManager.getService(Settings.ATTR_PACKAGE);
        if (pm != null) {
            pm.shutdown();
        }
        if (mRebootHasProgressBar) {
            sInstance.setRebootProgress(6, null);
        }
        shutdownTimingLog.traceEnd();
        metricEnded(METRIC_PM);
        shutdownTimingLog.traceBegin("ShutdownRadios");
        metricStarted(METRIC_RADIOS);
        shutdownRadios(MAX_RADIO_WAIT_TIME);
        if (mRebootHasProgressBar) {
            sInstance.setRebootProgress(18, null);
        }
        shutdownTimingLog.traceEnd();
        metricEnded(METRIC_RADIOS);
        if (mRebootHasProgressBar) {
            sInstance.setRebootProgress(20, null);
            uncrypt();
        }
        shutdownTimingLog.traceEnd();
        metricEnded(METRIC_SYSTEM_SERVER);
        saveMetrics(mReboot, mReason);
        rebootOrShutdown(this.mContext, mReboot, mReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TimingsTraceLog newTimingsLog() {
        return new TimingsTraceLog("ShutdownTiming", 524288L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void metricStarted(String metricKey) {
        synchronized (TRON_METRICS) {
            TRON_METRICS.put(metricKey, Long.valueOf(SystemClock.elapsedRealtime() * (-1)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void metricEnded(String metricKey) {
        synchronized (TRON_METRICS) {
            TRON_METRICS.put(metricKey, Long.valueOf(SystemClock.elapsedRealtime() + TRON_METRICS.get(metricKey).longValue()));
        }
    }

    private static void metricShutdownStart() {
        synchronized (TRON_METRICS) {
            TRON_METRICS.put(METRIC_SHUTDOWN_TIME_START, Long.valueOf(System.currentTimeMillis()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRebootProgress(final int progress, final CharSequence message) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.power.ShutdownThread.4
            @Override // java.lang.Runnable
            public void run() {
                if (ShutdownThread.this.mProgressDialog != null) {
                    ShutdownThread.this.mProgressDialog.setProgress(progress);
                    if (message != null) {
                        ShutdownThread.this.mProgressDialog.setMessage(message);
                    }
                }
            }
        });
    }

    private void shutdownRadios(final int timeout) {
        final long endTime = SystemClock.elapsedRealtime() + ((long) timeout);
        final boolean[] done = new boolean[1];
        Thread t = new Thread() { // from class: com.android.server.power.ShutdownThread.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                TimingsTraceLog shutdownTimingsTraceLog = ShutdownThread.newTimingsLog();
                TelephonyManager telephonyManager = (TelephonyManager) ShutdownThread.this.mContext.getSystemService(TelephonyManager.class);
                boolean radioOff = telephonyManager == null || !telephonyManager.isAnyRadioPoweredOn();
                if (!radioOff) {
                    Log.w(ShutdownThread.TAG, "Turning off cellular radios...");
                    ShutdownThread.metricStarted(ShutdownThread.METRIC_RADIO);
                    telephonyManager.shutdownAllRadios();
                }
                Log.i(ShutdownThread.TAG, "Waiting for Radio...");
                long delay = endTime - SystemClock.elapsedRealtime();
                while (delay > 0) {
                    if (ShutdownThread.mRebootHasProgressBar) {
                        int i = timeout;
                        int status = (int) ((((((long) i) - delay) * 1.0d) * 12.0d) / ((double) i));
                        ShutdownThread.sInstance.setRebootProgress(status + 6, null);
                    }
                    if (!radioOff && ((radioOff = !telephonyManager.isAnyRadioPoweredOn()))) {
                        Log.i(ShutdownThread.TAG, "Radio turned off.");
                        ShutdownThread.metricEnded(ShutdownThread.METRIC_RADIO);
                        shutdownTimingsTraceLog.logDuration("ShutdownRadio", ((Long) ShutdownThread.TRON_METRICS.get(ShutdownThread.METRIC_RADIO)).longValue());
                    }
                    if (radioOff) {
                        Log.i(ShutdownThread.TAG, "Radio shutdown complete.");
                        done[0] = true;
                        return;
                    } else {
                        SystemClock.sleep(100L);
                        delay = endTime - SystemClock.elapsedRealtime();
                    }
                }
            }
        };
        t.start();
        try {
            t.join(timeout);
        } catch (InterruptedException e) {
        }
        if (!done[0]) {
            Log.w(TAG, "Timed out waiting for Radio shutdown.");
        }
    }

    public static void rebootOrShutdown(Context context, boolean reboot, String reason) {
        if (reboot) {
            Log.i(TAG, "Rebooting, reason: " + reason);
            PowerManagerService.lowLevelReboot(reason);
            Log.e(TAG, "Reboot failed, will attempt shutdown instead");
            reason = null;
        }
        Log.i(TAG, "Performing low-level shutdown...");
        PowerManagerService.lowLevelShutdown(reason);
    }

    private static void saveMetrics(boolean reboot, String reason) {
        StringBuilder metricValue = new StringBuilder();
        metricValue.append("reboot:");
        metricValue.append(reboot ? "y" : "n");
        metricValue.append(",");
        metricValue.append("reason:");
        metricValue.append(reason);
        int metricsSize = TRON_METRICS.size();
        for (int i = 0; i < metricsSize; i++) {
            String name = TRON_METRICS.keyAt(i);
            long value = TRON_METRICS.valueAt(i).longValue();
            if (value < 0) {
                Log.e(TAG, "metricEnded wasn't called for " + name);
            } else {
                metricValue.append(',');
                metricValue.append(name);
                metricValue.append(':');
                metricValue.append(value);
            }
        }
        File tmp = new File("/data/system/shutdown-metrics.tmp");
        boolean saved = false;
        try {
            FileOutputStream fos = new FileOutputStream(tmp);
            try {
                fos.write(metricValue.toString().getBytes(StandardCharsets.UTF_8));
                saved = true;
                fos.close();
            } catch (Throwable th) {
                try {
                    fos.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            Log.e(TAG, "Cannot save shutdown metrics", e);
        }
        if (saved) {
            tmp.renameTo(new File("/data/system/shutdown-metrics.txt"));
        }
    }

    private void uncrypt() {
        Log.i(TAG, "Calling uncrypt and monitoring the progress...");
        final RecoverySystem.ProgressListener progressListener = new RecoverySystem.ProgressListener() { // from class: com.android.server.power.ShutdownThread.6
            @Override // android.os.RecoverySystem.ProgressListener
            public void onProgress(int status) {
                if (status < 0 || status >= 100) {
                    if (status == 100) {
                        CharSequence msg = ShutdownThread.this.mContext.getText(R.string.PERSOSUBSTATE_SIM_NETWORK_SUBSET_ENTRY);
                        ShutdownThread.sInstance.setRebootProgress(status, msg);
                        return;
                    }
                    return;
                }
                CharSequence msg2 = ShutdownThread.this.mContext.getText(R.string.old_app_action);
                ShutdownThread.sInstance.setRebootProgress(((int) ((((double) status) * 80.0d) / 100.0d)) + 20, msg2);
            }
        };
        final boolean[] done = {false};
        Thread t = new Thread() { // from class: com.android.server.power.ShutdownThread.7
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    String filename = FileUtils.readTextFile(RecoverySystem.UNCRYPT_PACKAGE_FILE, 0, null);
                    RecoverySystem.processPackage(ShutdownThread.this.mContext, new File(filename), progressListener);
                } catch (IOException e) {
                    Log.e(ShutdownThread.TAG, "Error uncrypting file", e);
                }
                done[0] = true;
            }
        };
        t.start();
        try {
            t.join(900000L);
        } catch (InterruptedException e) {
        }
        if (!done[0]) {
            Log.w(TAG, "Timed out waiting for uncrypt.");
            String timeoutMessage = String.format("uncrypt_time: %d\nuncrypt_error: %d\n", 900, 100);
            try {
                FileUtils.stringToFile(RecoverySystem.UNCRYPT_STATUS_FILE, timeoutMessage);
            } catch (IOException e2) {
                Log.e(TAG, "Failed to write timeout message to uncrypt status", e2);
            }
        }
    }
}
