package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.health.V1_0.HealthInfo;
import android.hardware.health.V2_0.IHealth;
import android.hardware.health.V2_0.Result;
import android.hardware.health.V2_1.IHealthInfoCallback;
import android.hidl.manager.V1_0.IServiceManager;
import android.hidl.manager.V1_0.IServiceNotification;
import android.metrics.LogMaker;
import android.os.BatteryManagerInternal;
import android.os.BatteryProperty;
import android.os.Binder;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.FileUtils;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBatteryPropertiesRegistrar;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UEventObserver;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.EventLog;
import android.util.MutableInt;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.app.IBatteryStats;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.DumpUtils;
import com.android.server.am.BatteryStatsService;
import com.android.server.lights.LightsManager;
import com.android.server.lights.LogicalLight;
import com.android.server.notification.SnoozeHelper;
import com.android.server.storage.DeviceStorageMonitorService;
import com.android.server.utils.PriorityDump;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class BatteryService extends SystemService {
    private static final long BATTERY_LEVEL_CHANGE_THROTTLE_MS = 60000;
    private static final int BATTERY_PLUGGED_NONE = 0;
    private static final int BATTERY_SCALE = 100;
    private static final boolean DEBUG = false;
    private static final String DUMPSYS_DATA_PATH = "/data/system/";
    private static final long HEALTH_HAL_WAIT_MS = 1000;
    private static final int MAX_BATTERY_LEVELS_QUEUE_SIZE = 100;
    static final int OPTION_FORCE_UPDATE = 1;
    private ActivityManagerInternal mActivityManagerInternal;
    private boolean mBatteryLevelCritical;
    private boolean mBatteryLevelLow;
    private ArrayDeque<Bundle> mBatteryLevelsEventQueue;
    private BatteryPropertiesRegistrar mBatteryPropertiesRegistrar;
    private final IBatteryStats mBatteryStats;
    BinderService mBinderService;
    private int mChargeStartLevel;
    private long mChargeStartTime;
    private final Context mContext;
    private int mCriticalBatteryLevel;
    private int mDischargeStartLevel;
    private long mDischargeStartTime;
    private final Handler mHandler;
    private HealthHalCallback mHealthHalCallback;
    private HealthInfo mHealthInfo;
    private android.hardware.health.V2_1.HealthInfo mHealthInfo2p1;
    private HealthServiceWrapper mHealthServiceWrapper;
    private int mInvalidCharger;
    private int mLastBatteryHealth;
    private int mLastBatteryLevel;
    private long mLastBatteryLevelChangedSentMs;
    private boolean mLastBatteryLevelCritical;
    private boolean mLastBatteryPresent;
    private int mLastBatteryStatus;
    private int mLastBatteryTemperature;
    private int mLastBatteryVoltage;
    private int mLastChargeCounter;
    private final HealthInfo mLastHealthInfo;
    private int mLastInvalidCharger;
    private int mLastMaxChargingCurrent;
    private int mLastMaxChargingVoltage;
    private int mLastPlugType;
    private Led mLed;
    private final Object mLock;
    private int mLowBatteryCloseWarningLevel;
    private int mLowBatteryWarningLevel;
    private MetricsLogger mMetricsLogger;
    private int mPlugType;
    private boolean mSentLowBatteryBroadcast;
    private int mSequence;
    private int mShutdownBatteryTemperature;
    private boolean mUpdatesStopped;
    private static final String TAG = BatteryService.class.getSimpleName();
    private static final String[] DUMPSYS_ARGS = {"--checkin", "--unplugged"};

    public BatteryService(Context context) {
        super(context);
        this.mLock = new Object();
        this.mLastHealthInfo = new HealthInfo();
        this.mSequence = 1;
        this.mLastPlugType = -1;
        this.mSentLowBatteryBroadcast = false;
        this.mContext = context;
        this.mHandler = new Handler(true);
        this.mLed = new Led(context, (LightsManager) getLocalService(LightsManager.class));
        this.mBatteryStats = BatteryStatsService.getService();
        this.mActivityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        this.mCriticalBatteryLevel = this.mContext.getResources().getInteger(R.integer.bugreport_state_unknown);
        int integer = this.mContext.getResources().getInteger(R.integer.auto_data_switch_performance_stability_time_threshold_millis);
        this.mLowBatteryWarningLevel = integer;
        this.mLowBatteryCloseWarningLevel = integer + this.mContext.getResources().getInteger(R.integer.auto_data_switch_score_tolerance);
        this.mShutdownBatteryTemperature = this.mContext.getResources().getInteger(R.integer.config_lowBatteryCloseWarningBump);
        this.mBatteryLevelsEventQueue = new ArrayDeque<>();
        this.mMetricsLogger = new MetricsLogger();
        if (new File("/sys/devices/virtual/switch/invalid_charger/state").exists()) {
            UEventObserver invalidChargerObserver = new UEventObserver() { // from class: com.android.server.BatteryService.1
                public void onUEvent(UEventObserver.UEvent uEvent) {
                    boolean zEquals = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(uEvent.get("SWITCH_STATE"));
                    synchronized (BatteryService.this.mLock) {
                        if (BatteryService.this.mInvalidCharger != zEquals) {
                            BatteryService.this.mInvalidCharger = zEquals ? 1 : 0;
                        }
                    }
                }
            };
            invalidChargerObserver.startObserving("DEVPATH=/devices/virtual/switch/invalid_charger");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.IBinder, com.android.server.BatteryService$BatteryPropertiesRegistrar] */
    @Override // com.android.server.SystemService
    public void onStart() {
        registerHealthCallback();
        BinderService binderService = new BinderService();
        this.mBinderService = binderService;
        publishBinderService("battery", binderService);
        ?? batteryPropertiesRegistrar = new BatteryPropertiesRegistrar();
        this.mBatteryPropertiesRegistrar = batteryPropertiesRegistrar;
        publishBinderService("batteryproperties", batteryPropertiesRegistrar);
        publishLocalService(BatteryManagerInternal.class, new LocalService());
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 550) {
            synchronized (this.mLock) {
                ContentObserver obs = new ContentObserver(this.mHandler) { // from class: com.android.server.BatteryService.2
                    @Override // android.database.ContentObserver
                    public void onChange(boolean selfChange) {
                        synchronized (BatteryService.this.mLock) {
                            BatteryService.this.updateBatteryWarningLevelLocked();
                        }
                    }
                };
                ContentResolver resolver = this.mContext.getContentResolver();
                resolver.registerContentObserver(Settings.Global.getUriFor("low_power_trigger_level"), false, obs, -1);
                updateBatteryWarningLevelLocked();
            }
        }
    }

    private void registerHealthCallback() {
        traceBegin("HealthInitWrapper");
        this.mHealthServiceWrapper = new HealthServiceWrapper();
        HealthHalCallback healthHalCallback = new HealthHalCallback();
        this.mHealthHalCallback = healthHalCallback;
        try {
            try {
                this.mHealthServiceWrapper.init(healthHalCallback, new HealthServiceWrapper.IServiceManagerSupplier() { // from class: com.android.server.BatteryService.3
                }, new HealthServiceWrapper.IHealthSupplier() { // from class: com.android.server.BatteryService.4
                });
                traceEnd();
                traceBegin("HealthInitWaitUpdate");
                long beforeWait = SystemClock.uptimeMillis();
                synchronized (this.mLock) {
                    while (this.mHealthInfo == null) {
                        Slog.i(TAG, "health: Waited " + (SystemClock.uptimeMillis() - beforeWait) + "ms for callbacks. Waiting another 1000 ms...");
                        try {
                            this.mLock.wait(1000L);
                        } catch (InterruptedException e) {
                            Slog.i(TAG, "health: InterruptedException when waiting for update.  Continuing...");
                        }
                    }
                }
                Slog.i(TAG, "health: Waited " + (SystemClock.uptimeMillis() - beforeWait) + "ms and received the update.");
                traceEnd();
            } catch (Throwable th) {
                traceEnd();
                throw th;
            }
        } catch (RemoteException ex) {
            Slog.e(TAG, "health: cannot register callback. (RemoteException)");
            throw ex.rethrowFromSystemServer();
        } catch (NoSuchElementException ex2) {
            Slog.e(TAG, "health: cannot register callback. (no supported health HAL service)");
            throw ex2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBatteryWarningLevelLocked() {
        ContentResolver resolver = this.mContext.getContentResolver();
        int defWarnLevel = this.mContext.getResources().getInteger(R.integer.auto_data_switch_performance_stability_time_threshold_millis);
        int i = Settings.Global.getInt(resolver, "low_power_trigger_level", defWarnLevel);
        this.mLowBatteryWarningLevel = i;
        if (i == 0) {
            this.mLowBatteryWarningLevel = defWarnLevel;
        }
        int i2 = this.mLowBatteryWarningLevel;
        int i3 = this.mCriticalBatteryLevel;
        if (i2 < i3) {
            this.mLowBatteryWarningLevel = i3;
        }
        this.mLowBatteryCloseWarningLevel = this.mLowBatteryWarningLevel + this.mContext.getResources().getInteger(R.integer.auto_data_switch_score_tolerance);
        processValuesLocked(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPoweredLocked(int plugTypeSet) {
        if (this.mHealthInfo.batteryStatus == 1) {
            return true;
        }
        if ((plugTypeSet & 1) != 0 && this.mHealthInfo.chargerAcOnline) {
            return true;
        }
        if ((plugTypeSet & 2) == 0 || !this.mHealthInfo.chargerUsbOnline) {
            return (plugTypeSet & 4) != 0 && this.mHealthInfo.chargerWirelessOnline;
        }
        return true;
    }

    private boolean shouldSendBatteryLowLocked() {
        boolean plugged = this.mPlugType != 0;
        boolean oldPlugged = this.mLastPlugType != 0;
        if (plugged || this.mHealthInfo.batteryStatus == 1) {
            return false;
        }
        int i = this.mHealthInfo.batteryLevel;
        int i2 = this.mLowBatteryWarningLevel;
        if (i <= i2) {
            return oldPlugged || this.mLastBatteryLevel > i2;
        }
        return false;
    }

    private boolean shouldShutdownLocked() {
        if (this.mHealthInfo2p1.batteryCapacityLevel != -1) {
            return this.mHealthInfo2p1.batteryCapacityLevel == 1;
        }
        return this.mHealthInfo.batteryLevel <= 0 && this.mHealthInfo.batteryPresent && this.mHealthInfo.batteryStatus != 2;
    }

    private void shutdownIfNoPowerLocked() {
        if (shouldShutdownLocked()) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.5
                @Override // java.lang.Runnable
                public void run() {
                    if (BatteryService.this.mActivityManagerInternal.isSystemReady()) {
                        Intent intent = new Intent("com.android.internal.intent.action.REQUEST_SHUTDOWN");
                        intent.putExtra("android.intent.extra.KEY_CONFIRM", false);
                        intent.putExtra("android.intent.extra.REASON", "battery");
                        intent.setFlags(AudioFormat.EVRC);
                        BatteryService.this.mContext.startActivityAsUser(intent, UserHandle.CURRENT);
                    }
                }
            });
        }
    }

    private void shutdownIfOverTempLocked() {
        if (this.mHealthInfo.batteryTemperature > this.mShutdownBatteryTemperature) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.6
                @Override // java.lang.Runnable
                public void run() {
                    if (BatteryService.this.mActivityManagerInternal.isSystemReady()) {
                        Intent intent = new Intent("com.android.internal.intent.action.REQUEST_SHUTDOWN");
                        intent.putExtra("android.intent.extra.KEY_CONFIRM", false);
                        intent.putExtra("android.intent.extra.REASON", "thermal,battery");
                        intent.setFlags(AudioFormat.EVRC);
                        BatteryService.this.mContext.startActivityAsUser(intent, UserHandle.CURRENT);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update(android.hardware.health.V2_1.HealthInfo info) {
        traceBegin("HealthInfoUpdate");
        Trace.traceCounter(131072L, "BatteryChargeCounter", info.legacy.legacy.batteryChargeCounter);
        Trace.traceCounter(131072L, "BatteryCurrent", info.legacy.legacy.batteryCurrent);
        synchronized (this.mLock) {
            if (!this.mUpdatesStopped) {
                this.mHealthInfo = info.legacy.legacy;
                this.mHealthInfo2p1 = info;
                processValuesLocked(false);
                this.mLock.notifyAll();
            } else {
                copy(this.mLastHealthInfo, info.legacy.legacy);
            }
        }
        traceEnd();
    }

    private static void copy(HealthInfo dst, HealthInfo src) {
        dst.chargerAcOnline = src.chargerAcOnline;
        dst.chargerUsbOnline = src.chargerUsbOnline;
        dst.chargerWirelessOnline = src.chargerWirelessOnline;
        dst.maxChargingCurrent = src.maxChargingCurrent;
        dst.maxChargingVoltage = src.maxChargingVoltage;
        dst.batteryStatus = src.batteryStatus;
        dst.batteryHealth = src.batteryHealth;
        dst.batteryPresent = src.batteryPresent;
        dst.batteryLevel = src.batteryLevel;
        dst.batteryVoltage = src.batteryVoltage;
        dst.batteryTemperature = src.batteryTemperature;
        dst.batteryCurrent = src.batteryCurrent;
        dst.batteryCycleCount = src.batteryCycleCount;
        dst.batteryFullCharge = src.batteryFullCharge;
        dst.batteryChargeCounter = src.batteryChargeCounter;
        dst.batteryTechnology = src.batteryTechnology;
    }

    private void processValuesLocked(boolean z) {
        boolean z2 = false;
        long jElapsedRealtime = 0;
        this.mBatteryLevelCritical = this.mHealthInfo.batteryStatus != 1 && this.mHealthInfo.batteryLevel <= this.mCriticalBatteryLevel;
        if (this.mHealthInfo.chargerAcOnline) {
            this.mPlugType = 1;
        } else if (this.mHealthInfo.chargerUsbOnline) {
            this.mPlugType = 2;
        } else if (this.mHealthInfo.chargerWirelessOnline) {
            this.mPlugType = 4;
        } else {
            this.mPlugType = 0;
        }
        try {
            this.mBatteryStats.setBatteryState(this.mHealthInfo.batteryStatus, this.mHealthInfo.batteryHealth, this.mPlugType, this.mHealthInfo.batteryLevel, this.mHealthInfo.batteryTemperature, this.mHealthInfo.batteryVoltage, this.mHealthInfo.batteryChargeCounter, this.mHealthInfo.batteryFullCharge, this.mHealthInfo2p1.batteryChargeTimeToFullNowSeconds);
        } catch (RemoteException e) {
        }
        shutdownIfNoPowerLocked();
        shutdownIfOverTempLocked();
        if (z || this.mHealthInfo.batteryStatus != this.mLastBatteryStatus || this.mHealthInfo.batteryHealth != this.mLastBatteryHealth || this.mHealthInfo.batteryPresent != this.mLastBatteryPresent || this.mHealthInfo.batteryLevel != this.mLastBatteryLevel || this.mPlugType != this.mLastPlugType || this.mHealthInfo.batteryVoltage != this.mLastBatteryVoltage || this.mHealthInfo.batteryTemperature != this.mLastBatteryTemperature || this.mHealthInfo.maxChargingCurrent != this.mLastMaxChargingCurrent || this.mHealthInfo.maxChargingVoltage != this.mLastMaxChargingVoltage || this.mHealthInfo.batteryChargeCounter != this.mLastChargeCounter || this.mInvalidCharger != this.mLastInvalidCharger) {
            int i = this.mPlugType;
            int i2 = this.mLastPlugType;
            if (i != i2) {
                if (i2 == 0) {
                    this.mChargeStartLevel = this.mHealthInfo.batteryLevel;
                    this.mChargeStartTime = SystemClock.elapsedRealtime();
                    LogMaker logMaker = new LogMaker(1417);
                    logMaker.setType(4);
                    logMaker.addTaggedData(1421, Integer.valueOf(this.mPlugType));
                    logMaker.addTaggedData(1418, Integer.valueOf(this.mHealthInfo.batteryLevel));
                    this.mMetricsLogger.write(logMaker);
                    if (this.mDischargeStartTime != 0 && this.mDischargeStartLevel != this.mHealthInfo.batteryLevel) {
                        jElapsedRealtime = SystemClock.elapsedRealtime() - this.mDischargeStartTime;
                        z2 = true;
                        EventLog.writeEvent(EventLogTags.BATTERY_DISCHARGE, Long.valueOf(jElapsedRealtime), Integer.valueOf(this.mDischargeStartLevel), Integer.valueOf(this.mHealthInfo.batteryLevel));
                        this.mDischargeStartTime = 0L;
                    }
                } else if (i == 0) {
                    this.mDischargeStartTime = SystemClock.elapsedRealtime();
                    this.mDischargeStartLevel = this.mHealthInfo.batteryLevel;
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j = this.mChargeStartTime;
                    long j2 = jElapsedRealtime2 - j;
                    if (j != 0 && j2 != 0) {
                        LogMaker logMaker2 = new LogMaker(1417);
                        logMaker2.setType(5);
                        logMaker2.addTaggedData(1421, Integer.valueOf(this.mLastPlugType));
                        logMaker2.addTaggedData(1420, Long.valueOf(j2));
                        logMaker2.addTaggedData(1418, Integer.valueOf(this.mChargeStartLevel));
                        logMaker2.addTaggedData(1419, Integer.valueOf(this.mHealthInfo.batteryLevel));
                        this.mMetricsLogger.write(logMaker2);
                    }
                    this.mChargeStartTime = 0L;
                }
            }
            if (this.mHealthInfo.batteryStatus != this.mLastBatteryStatus || this.mHealthInfo.batteryHealth != this.mLastBatteryHealth || this.mHealthInfo.batteryPresent != this.mLastBatteryPresent || this.mPlugType != this.mLastPlugType) {
                EventLog.writeEvent(EventLogTags.BATTERY_STATUS, Integer.valueOf(this.mHealthInfo.batteryStatus), Integer.valueOf(this.mHealthInfo.batteryHealth), Integer.valueOf(this.mHealthInfo.batteryPresent ? 1 : 0), Integer.valueOf(this.mPlugType), this.mHealthInfo.batteryTechnology);
            }
            if (this.mHealthInfo.batteryLevel != this.mLastBatteryLevel) {
                EventLog.writeEvent(EventLogTags.BATTERY_LEVEL, Integer.valueOf(this.mHealthInfo.batteryLevel), Integer.valueOf(this.mHealthInfo.batteryVoltage), Integer.valueOf(this.mHealthInfo.batteryTemperature));
            }
            if (this.mBatteryLevelCritical && !this.mLastBatteryLevelCritical && this.mPlugType == 0) {
                z2 = true;
                jElapsedRealtime = SystemClock.elapsedRealtime() - this.mDischargeStartTime;
            }
            if (!this.mBatteryLevelLow) {
                if (this.mPlugType == 0 && this.mHealthInfo.batteryStatus != 1 && this.mHealthInfo.batteryLevel <= this.mLowBatteryWarningLevel) {
                    this.mBatteryLevelLow = true;
                }
            } else if (this.mPlugType != 0 || this.mHealthInfo.batteryLevel >= this.mLowBatteryCloseWarningLevel) {
                this.mBatteryLevelLow = false;
            } else if (z && this.mHealthInfo.batteryLevel >= this.mLowBatteryWarningLevel) {
                this.mBatteryLevelLow = false;
            }
            this.mSequence++;
            if (this.mPlugType != 0 && this.mLastPlugType == 0) {
                final Intent intent = new Intent("android.intent.action.ACTION_POWER_CONNECTED");
                intent.setFlags(67108864);
                intent.putExtra(DeviceStorageMonitorService.EXTRA_SEQUENCE, this.mSequence);
                this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.7
                    @Override // java.lang.Runnable
                    public void run() {
                        BatteryService.this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
                    }
                });
            } else if (this.mPlugType == 0 && this.mLastPlugType != 0) {
                final Intent intent2 = new Intent("android.intent.action.ACTION_POWER_DISCONNECTED");
                intent2.setFlags(67108864);
                intent2.putExtra(DeviceStorageMonitorService.EXTRA_SEQUENCE, this.mSequence);
                this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.8
                    @Override // java.lang.Runnable
                    public void run() {
                        BatteryService.this.mContext.sendBroadcastAsUser(intent2, UserHandle.ALL);
                    }
                });
            }
            if (shouldSendBatteryLowLocked()) {
                this.mSentLowBatteryBroadcast = true;
                final Intent intent3 = new Intent("android.intent.action.BATTERY_LOW");
                intent3.setFlags(67108864);
                intent3.putExtra(DeviceStorageMonitorService.EXTRA_SEQUENCE, this.mSequence);
                this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.9
                    @Override // java.lang.Runnable
                    public void run() {
                        BatteryService.this.mContext.sendBroadcastAsUser(intent3, UserHandle.ALL);
                    }
                });
            } else if (this.mSentLowBatteryBroadcast && this.mHealthInfo.batteryLevel >= this.mLowBatteryCloseWarningLevel) {
                this.mSentLowBatteryBroadcast = false;
                final Intent intent4 = new Intent("android.intent.action.BATTERY_OKAY");
                intent4.setFlags(67108864);
                intent4.putExtra(DeviceStorageMonitorService.EXTRA_SEQUENCE, this.mSequence);
                this.mHandler.post(new Runnable() { // from class: com.android.server.BatteryService.10
                    @Override // java.lang.Runnable
                    public void run() {
                        BatteryService.this.mContext.sendBroadcastAsUser(intent4, UserHandle.ALL);
                    }
                });
            }
            sendBatteryChangedIntentLocked();
            if (this.mLastBatteryLevel != this.mHealthInfo.batteryLevel || this.mLastPlugType != this.mPlugType) {
                sendBatteryLevelChangedIntentLocked();
            }
            this.mLed.updateLightsLocked();
            if (z2 && jElapsedRealtime != 0) {
                logOutlierLocked(jElapsedRealtime);
            }
            this.mLastBatteryStatus = this.mHealthInfo.batteryStatus;
            this.mLastBatteryHealth = this.mHealthInfo.batteryHealth;
            this.mLastBatteryPresent = this.mHealthInfo.batteryPresent;
            this.mLastBatteryLevel = this.mHealthInfo.batteryLevel;
            this.mLastPlugType = this.mPlugType;
            this.mLastBatteryVoltage = this.mHealthInfo.batteryVoltage;
            this.mLastBatteryTemperature = this.mHealthInfo.batteryTemperature;
            this.mLastMaxChargingCurrent = this.mHealthInfo.maxChargingCurrent;
            this.mLastMaxChargingVoltage = this.mHealthInfo.maxChargingVoltage;
            this.mLastChargeCounter = this.mHealthInfo.batteryChargeCounter;
            this.mLastBatteryLevelCritical = this.mBatteryLevelCritical;
            this.mLastInvalidCharger = this.mInvalidCharger;
        }
    }

    private void sendBatteryChangedIntentLocked() {
        final Intent intent = new Intent("android.intent.action.BATTERY_CHANGED");
        intent.addFlags(1610612736);
        int icon = getIconLocked(this.mHealthInfo.batteryLevel);
        intent.putExtra(DeviceStorageMonitorService.EXTRA_SEQUENCE, this.mSequence);
        intent.putExtra("status", this.mHealthInfo.batteryStatus);
        intent.putExtra("health", this.mHealthInfo.batteryHealth);
        intent.putExtra("present", this.mHealthInfo.batteryPresent);
        intent.putExtra("level", this.mHealthInfo.batteryLevel);
        intent.putExtra("battery_low", this.mSentLowBatteryBroadcast);
        intent.putExtra("scale", 100);
        intent.putExtra("icon-small", icon);
        intent.putExtra("plugged", this.mPlugType);
        intent.putExtra("voltage", this.mHealthInfo.batteryVoltage);
        intent.putExtra("temperature", this.mHealthInfo.batteryTemperature);
        intent.putExtra("technology", this.mHealthInfo.batteryTechnology);
        intent.putExtra("invalid_charger", this.mInvalidCharger);
        intent.putExtra("max_charging_current", this.mHealthInfo.maxChargingCurrent);
        intent.putExtra("max_charging_voltage", this.mHealthInfo.maxChargingVoltage);
        intent.putExtra("charge_counter", this.mHealthInfo.batteryChargeCounter);
        this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManager.broadcastStickyIntent(intent, -1);
            }
        });
    }

    private void sendBatteryLevelChangedIntentLocked() {
        Bundle event = new Bundle();
        long now = SystemClock.elapsedRealtime();
        event.putInt(DeviceStorageMonitorService.EXTRA_SEQUENCE, this.mSequence);
        event.putInt("status", this.mHealthInfo.batteryStatus);
        event.putInt("health", this.mHealthInfo.batteryHealth);
        event.putBoolean("present", this.mHealthInfo.batteryPresent);
        event.putInt("level", this.mHealthInfo.batteryLevel);
        event.putBoolean("battery_low", this.mSentLowBatteryBroadcast);
        event.putInt("scale", 100);
        event.putInt("plugged", this.mPlugType);
        event.putInt("voltage", this.mHealthInfo.batteryVoltage);
        event.putInt("temperature", this.mHealthInfo.batteryTemperature);
        event.putInt("charge_counter", this.mHealthInfo.batteryChargeCounter);
        event.putLong("android.os.extra.EVENT_TIMESTAMP", now);
        boolean queueWasEmpty = this.mBatteryLevelsEventQueue.isEmpty();
        this.mBatteryLevelsEventQueue.add(event);
        if (this.mBatteryLevelsEventQueue.size() > 100) {
            this.mBatteryLevelsEventQueue.removeFirst();
        }
        if (queueWasEmpty) {
            long j = this.mLastBatteryLevelChangedSentMs;
            long delay = now - j > 60000 ? 0L : (j + 60000) - now;
            this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.sendEnqueuedBatteryLevelChangedEvents();
                }
            }, delay);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEnqueuedBatteryLevelChangedEvents() {
        ArrayList<Bundle> events;
        synchronized (this.mLock) {
            events = new ArrayList<>(this.mBatteryLevelsEventQueue);
            this.mBatteryLevelsEventQueue.clear();
        }
        Intent intent = new Intent("android.intent.action.BATTERY_LEVEL_CHANGED");
        intent.addFlags(16777216);
        intent.putParcelableArrayListExtra("android.os.extra.EVENTS", events);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.BATTERY_STATS");
        this.mLastBatteryLevelChangedSentMs = SystemClock.elapsedRealtime();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.String] */
    private void logBatteryStatsLocked() {
        DropBoxManager dropBoxManager;
        StringBuilder sb;
        String strDelete = "failed to close dumpsys output stream";
        String string = "failed to delete temporary dumpsys file: ";
        IBinder service = ServiceManager.getService("batterystats");
        if (service == null || (dropBoxManager = (DropBoxManager) this.mContext.getSystemService("dropbox")) == null || !dropBoxManager.isTagEnabled("BATTERY_DISCHARGE_INFO")) {
            return;
        }
        File file = null;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                file = new File("/data/system/batterystats.dump");
                fileOutputStream = new FileOutputStream(file);
                service.dump(fileOutputStream.getFD(), DUMPSYS_ARGS);
                FileUtils.sync(fileOutputStream);
                dropBoxManager.addFile("BATTERY_DISCHARGE_INFO", file, 2);
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                    Slog.e(TAG, "failed to close dumpsys output stream");
                }
                strDelete = file.delete();
                if (strDelete == 0) {
                    String str = TAG;
                    sb = new StringBuilder();
                    strDelete = str;
                    sb.append("failed to delete temporary dumpsys file: ");
                    sb.append(file.getAbsolutePath());
                    string = sb.toString();
                    Slog.e((String) strDelete, string);
                }
            } catch (RemoteException e2) {
                Slog.e(TAG, "failed to dump battery service", e2);
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                        Slog.e(TAG, "failed to close dumpsys output stream");
                    }
                }
                if (file != null && (strDelete = file.delete()) == 0) {
                    String str2 = TAG;
                    sb = new StringBuilder();
                    strDelete = str2;
                }
            } catch (IOException e4) {
                Slog.e(TAG, "failed to write dumpsys file", e4);
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e5) {
                        Slog.e(TAG, "failed to close dumpsys output stream");
                    }
                }
                if (file != null && (strDelete = file.delete()) == 0) {
                    String str3 = TAG;
                    sb = new StringBuilder();
                    strDelete = str3;
                }
            }
        } catch (Throwable th) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e6) {
                    Slog.e(TAG, strDelete);
                }
            }
            if (file == null || file.delete()) {
                throw th;
            }
            Slog.e(TAG, string + file.getAbsolutePath());
            throw th;
        }
    }

    private void logOutlierLocked(long duration) {
        ContentResolver cr = this.mContext.getContentResolver();
        String dischargeThresholdString = Settings.Global.getString(cr, "battery_discharge_threshold");
        String durationThresholdString = Settings.Global.getString(cr, "battery_discharge_duration_threshold");
        if (dischargeThresholdString != null && durationThresholdString != null) {
            try {
                long durationThreshold = Long.parseLong(durationThresholdString);
                int dischargeThreshold = Integer.parseInt(dischargeThresholdString);
                if (duration <= durationThreshold && this.mDischargeStartLevel - this.mHealthInfo.batteryLevel >= dischargeThreshold) {
                    logBatteryStatsLocked();
                }
            } catch (NumberFormatException e) {
                Slog.e(TAG, "Invalid DischargeThresholds GService string: " + durationThresholdString + " or " + dischargeThresholdString);
            }
        }
    }

    private int getIconLocked(int level) {
        if (this.mHealthInfo.batteryStatus == 2) {
            return R.drawable.pointer_wait_50;
        }
        if (this.mHealthInfo.batteryStatus == 3) {
            return R.drawable.pointer_wait_38;
        }
        if (this.mHealthInfo.batteryStatus == 4 || this.mHealthInfo.batteryStatus == 5) {
            return (!isPoweredLocked(7) || this.mHealthInfo.batteryLevel < 100) ? R.drawable.pointer_wait_38 : R.drawable.pointer_wait_50;
        }
        return R.drawable.pointer_wait_63;
    }

    class Shell extends ShellCommand {
        Shell() {
        }

        public int onCommand(String cmd) {
            return BatteryService.this.onShellCommand(this, cmd);
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            BatteryService.dumpHelp(pw);
        }
    }

    static void dumpHelp(PrintWriter pw) {
        pw.println("Battery service (battery) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("  set [-f] [ac|usb|wireless|status|level|temp|present|invalid] <value>");
        pw.println("    Force a battery property value, freezing battery state.");
        pw.println("    -f: force a battery change broadcast be sent, prints new sequence.");
        pw.println("  unplug [-f]");
        pw.println("    Force battery unplugged, freezing battery state.");
        pw.println("    -f: force a battery change broadcast be sent, prints new sequence.");
        pw.println("  reset [-f]");
        pw.println("    Unfreeze battery state, returning to current hardware values.");
        pw.println("    -f: force a battery change broadcast be sent, prints new sequence.");
    }

    int parseOptions(Shell shell) {
        int opts = 0;
        while (true) {
            String opt = shell.getNextOption();
            if (opt != null) {
                if ("-f".equals(opt)) {
                    opts |= 1;
                }
            } else {
                return opts;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b3  */
    int onShellCommand(Shell shell, String cmd) {
        byte b;
        if (cmd == null) {
            return shell.handleDefaultCommands(cmd);
        }
        PrintWriter pw = shell.getOutPrintWriter();
        int iHashCode = cmd.hashCode();
        if (iHashCode != -840325209) {
            if (iHashCode != 113762) {
                if (iHashCode == 108404047 && cmd.equals("reset")) {
                    b = 2;
                } else {
                    b = -1;
                }
            } else if (cmd.equals("set")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (cmd.equals("unplug")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            int opts = parseOptions(shell);
            getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            if (!this.mUpdatesStopped) {
                copy(this.mLastHealthInfo, this.mHealthInfo);
            }
            this.mHealthInfo.chargerAcOnline = false;
            this.mHealthInfo.chargerUsbOnline = false;
            this.mHealthInfo.chargerWirelessOnline = false;
            long ident = Binder.clearCallingIdentity();
            try {
                this.mUpdatesStopped = true;
                processValuesFromShellLocked(pw, opts);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        } else if (b == 1) {
            int opts2 = parseOptions(shell);
            getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            String key = shell.getNextArg();
            if (key == null) {
                pw.println("No property specified");
                return -1;
            }
            String value = shell.getNextArg();
            if (value == null) {
                pw.println("No value specified");
                return -1;
            }
            try {
                if (!this.mUpdatesStopped) {
                    copy(this.mLastHealthInfo, this.mHealthInfo);
                }
                boolean update = true;
                switch (key) {
                    case "present":
                        this.mHealthInfo.batteryPresent = Integer.parseInt(value) != 0;
                        break;
                    case "ac":
                        this.mHealthInfo.chargerAcOnline = Integer.parseInt(value) != 0;
                        break;
                    case "usb":
                        this.mHealthInfo.chargerUsbOnline = Integer.parseInt(value) != 0;
                        break;
                    case "wireless":
                        this.mHealthInfo.chargerWirelessOnline = Integer.parseInt(value) != 0;
                        break;
                    case "status":
                        this.mHealthInfo.batteryStatus = Integer.parseInt(value);
                        break;
                    case "level":
                        this.mHealthInfo.batteryLevel = Integer.parseInt(value);
                        break;
                    case "counter":
                        this.mHealthInfo.batteryChargeCounter = Integer.parseInt(value);
                        break;
                    case "temp":
                        this.mHealthInfo.batteryTemperature = Integer.parseInt(value);
                        break;
                    case "invalid":
                        this.mInvalidCharger = Integer.parseInt(value);
                        break;
                    default:
                        pw.println("Unknown set option: " + key);
                        update = false;
                        break;
                }
                if (update) {
                    long ident2 = Binder.clearCallingIdentity();
                    try {
                        this.mUpdatesStopped = true;
                        processValuesFromShellLocked(pw, opts2);
                    } finally {
                        Binder.restoreCallingIdentity(ident2);
                    }
                }
            } catch (NumberFormatException e) {
                pw.println("Bad value: " + value);
                return -1;
            }
        } else if (b == 2) {
            int opts3 = parseOptions(shell);
            getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            long ident3 = Binder.clearCallingIdentity();
            try {
                if (this.mUpdatesStopped) {
                    this.mUpdatesStopped = false;
                    copy(this.mHealthInfo, this.mLastHealthInfo);
                    processValuesFromShellLocked(pw, opts3);
                }
            } finally {
                Binder.restoreCallingIdentity(ident3);
            }
        } else {
            return shell.handleDefaultCommands(cmd);
        }
        return 0;
    }

    private void processValuesFromShellLocked(PrintWriter pw, int opts) {
        processValuesLocked((opts & 1) != 0);
        if ((opts & 1) != 0) {
            pw.println(this.mSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:11:0x002b A[Catch: all -> 0x0178, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x0008, B:10:0x0014, B:15:0x0176, B:11:0x002b, B:13:0x0034, B:14:0x0039), top: B:20:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x0034 A[Catch: all -> 0x0178, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x0008, B:10:0x0014, B:15:0x0176, B:11:0x002b, B:13:0x0034, B:14:0x0039), top: B:20:0x0005 }] */
    public void dumpInternal(FileDescriptor fd, PrintWriter pw, String[] args) {
        synchronized (this.mLock) {
            if (args == null) {
                pw.println("Current Battery Service state:");
                if (this.mUpdatesStopped) {
                    pw.println("  (UPDATES STOPPED -- use 'reset' to restart)");
                }
                pw.println("  AC powered: " + this.mHealthInfo.chargerAcOnline);
                pw.println("  USB powered: " + this.mHealthInfo.chargerUsbOnline);
                pw.println("  Wireless powered: " + this.mHealthInfo.chargerWirelessOnline);
                pw.println("  Max charging current: " + this.mHealthInfo.maxChargingCurrent);
                pw.println("  Max charging voltage: " + this.mHealthInfo.maxChargingVoltage);
                pw.println("  Charge counter: " + this.mHealthInfo.batteryChargeCounter);
                pw.println("  status: " + this.mHealthInfo.batteryStatus);
                pw.println("  health: " + this.mHealthInfo.batteryHealth);
                pw.println("  present: " + this.mHealthInfo.batteryPresent);
                pw.println("  level: " + this.mHealthInfo.batteryLevel);
                pw.println("  scale: 100");
                pw.println("  voltage: " + this.mHealthInfo.batteryVoltage);
                pw.println("  temperature: " + this.mHealthInfo.batteryTemperature);
                pw.println("  technology: " + this.mHealthInfo.batteryTechnology);
            } else if (args.length == 0 || "-a".equals(args[0])) {
                pw.println("Current Battery Service state:");
                if (this.mUpdatesStopped) {
                    pw.println("  (UPDATES STOPPED -- use 'reset' to restart)");
                }
                pw.println("  AC powered: " + this.mHealthInfo.chargerAcOnline);
                pw.println("  USB powered: " + this.mHealthInfo.chargerUsbOnline);
                pw.println("  Wireless powered: " + this.mHealthInfo.chargerWirelessOnline);
                pw.println("  Max charging current: " + this.mHealthInfo.maxChargingCurrent);
                pw.println("  Max charging voltage: " + this.mHealthInfo.maxChargingVoltage);
                pw.println("  Charge counter: " + this.mHealthInfo.batteryChargeCounter);
                pw.println("  status: " + this.mHealthInfo.batteryStatus);
                pw.println("  health: " + this.mHealthInfo.batteryHealth);
                pw.println("  present: " + this.mHealthInfo.batteryPresent);
                pw.println("  level: " + this.mHealthInfo.batteryLevel);
                pw.println("  scale: 100");
                pw.println("  voltage: " + this.mHealthInfo.batteryVoltage);
                pw.println("  temperature: " + this.mHealthInfo.batteryTemperature);
                pw.println("  technology: " + this.mHealthInfo.batteryTechnology);
            } else {
                Shell shell = new Shell();
                shell.exec(this.mBinderService, null, fd, null, args, null, new ResultReceiver(null));
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpProto(FileDescriptor fd) {
        ProtoOutputStream proto = new ProtoOutputStream(fd);
        synchronized (this.mLock) {
            proto.write(1133871366145L, this.mUpdatesStopped);
            int batteryPluggedValue = 0;
            if (this.mHealthInfo.chargerAcOnline) {
                batteryPluggedValue = 1;
            } else if (this.mHealthInfo.chargerUsbOnline) {
                batteryPluggedValue = 2;
            } else if (this.mHealthInfo.chargerWirelessOnline) {
                batteryPluggedValue = 4;
            }
            proto.write(1159641169922L, batteryPluggedValue);
            proto.write(1120986464259L, this.mHealthInfo.maxChargingCurrent);
            proto.write(1120986464260L, this.mHealthInfo.maxChargingVoltage);
            proto.write(1120986464261L, this.mHealthInfo.batteryChargeCounter);
            proto.write(1159641169926L, this.mHealthInfo.batteryStatus);
            proto.write(1159641169927L, this.mHealthInfo.batteryHealth);
            proto.write(1133871366152L, this.mHealthInfo.batteryPresent);
            proto.write(1120986464265L, this.mHealthInfo.batteryLevel);
            proto.write(1120986464266L, 100);
            proto.write(1120986464267L, this.mHealthInfo.batteryVoltage);
            proto.write(1120986464268L, this.mHealthInfo.batteryTemperature);
            proto.write(1138166333453L, this.mHealthInfo.batteryTechnology);
        }
        proto.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void traceBegin(String name) {
        Trace.traceBegin(524288L, name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void traceEnd() {
        Trace.traceEnd(524288L);
    }

    private final class Led {
        private final int mBatteryFullARGB;
        private final int mBatteryLedOff;
        private final int mBatteryLedOn;
        private final LogicalLight mBatteryLight;
        private final int mBatteryLowARGB;
        private final int mBatteryMediumARGB;

        public Led(Context context, LightsManager lights) {
            this.mBatteryLight = lights.getLight(3);
            this.mBatteryLowARGB = context.getResources().getInteger(R.integer.config_fingerprintMaxTemplatesPerUser);
            this.mBatteryMediumARGB = context.getResources().getInteger(R.integer.config_fixedRefreshRateInHighZone);
            this.mBatteryFullARGB = context.getResources().getInteger(R.integer.config_extraFreeKbytesAbsolute);
            this.mBatteryLedOn = context.getResources().getInteger(R.integer.config_faceMaxTemplatesPerUser);
            this.mBatteryLedOff = context.getResources().getInteger(R.integer.config_extraFreeKbytesAdjust);
        }

        public void updateLightsLocked() {
            if (this.mBatteryLight != null) {
                int level = BatteryService.this.mHealthInfo.batteryLevel;
                int status = BatteryService.this.mHealthInfo.batteryStatus;
                if (level < BatteryService.this.mLowBatteryWarningLevel) {
                    if (status == 2) {
                        this.mBatteryLight.setColor(this.mBatteryLowARGB);
                        return;
                    } else {
                        this.mBatteryLight.setFlashing(this.mBatteryLowARGB, 1, this.mBatteryLedOn, this.mBatteryLedOff);
                        return;
                    }
                }
                if (status == 2 || status == 5) {
                    if (status == 5 || level >= 90) {
                        this.mBatteryLight.setColor(this.mBatteryFullARGB);
                        return;
                    } else {
                        this.mBatteryLight.setColor(this.mBatteryMediumARGB);
                        return;
                    }
                }
                this.mBatteryLight.turnOff();
            }
        }
    }

    private final class HealthHalCallback extends IHealthInfoCallback.Stub implements HealthServiceWrapper.Callback {
        private HealthHalCallback() {
        }

        @Override // android.hardware.health.V2_0.IHealthInfoCallback
        public void healthInfoChanged(android.hardware.health.V2_0.HealthInfo props) {
            android.hardware.health.V2_1.HealthInfo propsLatest = new android.hardware.health.V2_1.HealthInfo();
            propsLatest.legacy = props;
            propsLatest.batteryCapacityLevel = -1;
            propsLatest.batteryChargeTimeToFullNowSeconds = -1L;
            BatteryService.this.update(propsLatest);
        }

        @Override // android.hardware.health.V2_1.IHealthInfoCallback
        public void healthInfoChanged_2_1(android.hardware.health.V2_1.HealthInfo props) {
            BatteryService.this.update(props);
        }

        @Override // com.android.server.BatteryService.HealthServiceWrapper.Callback
        public void onRegistration(IHealth oldService, IHealth newService, String instance) {
            if (newService == null) {
                return;
            }
            BatteryService.traceBegin("HealthUnregisterCallback");
            if (oldService != null) {
                try {
                    try {
                        int r = oldService.unregisterCallback(this);
                        if (r != 0) {
                            Slog.w(BatteryService.TAG, "health: cannot unregister previous callback: " + Result.toString(r));
                        }
                    } catch (RemoteException ex) {
                        Slog.w(BatteryService.TAG, "health: cannot unregister previous callback (transaction error): " + ex.getMessage());
                    }
                } catch (Throwable th) {
                    BatteryService.traceEnd();
                    throw th;
                }
            }
            BatteryService.traceEnd();
            BatteryService.traceBegin("HealthRegisterCallback");
            try {
                try {
                    int r2 = newService.registerCallback(this);
                    if (r2 == 0) {
                        newService.update();
                        return;
                    }
                    Slog.w(BatteryService.TAG, "health: cannot register callback: " + Result.toString(r2));
                } catch (RemoteException ex2) {
                    Slog.e(BatteryService.TAG, "health: cannot register callback (transaction error): " + ex2.getMessage());
                }
            } finally {
                BatteryService.traceEnd();
            }
        }
    }

    private final class BinderService extends Binder {
        private BinderService() {
        }

        @Override // android.os.Binder
        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(BatteryService.this.mContext, BatteryService.TAG, pw)) {
                if (args.length <= 0 || !PriorityDump.PROTO_ARG.equals(args[0])) {
                    BatteryService.this.dumpInternal(fd, pw, args);
                } else {
                    BatteryService.this.dumpProto(fd);
                }
            }
        }

        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
            BatteryService.this.new Shell().exec(this, in, out, err, args, callback, resultReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class BatteryPropertiesRegistrar extends IBatteryPropertiesRegistrar.Stub {
        private BatteryPropertiesRegistrar() {
        }

        public int getProperty(int id, final BatteryProperty prop) throws RemoteException {
            BatteryService.traceBegin("HealthGetProperty");
            try {
                IHealth service = BatteryService.this.mHealthServiceWrapper.getLastService();
                if (service == null) {
                    throw new RemoteException("no health service");
                }
                final MutableInt outResult = new MutableInt(1);
                switch (id) {
                    case 1:
                        service.getChargeCounter(new IHealth.getChargeCounterCallback() { // from class: com.android.server.-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w
                            @Override // android.hardware.health.V2_0.IHealth.getChargeCounterCallback
                            public final void onValues(int i, int i2) {
                                BatteryService.BatteryPropertiesRegistrar.lambda$getProperty$0(outResult, prop, i, i2);
                            }
                        });
                        break;
                    case 2:
                        service.getCurrentNow(new IHealth.getCurrentNowCallback() { // from class: com.android.server.-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8
                            @Override // android.hardware.health.V2_0.IHealth.getCurrentNowCallback
                            public final void onValues(int i, int i2) {
                                BatteryService.BatteryPropertiesRegistrar.lambda$getProperty$1(outResult, prop, i, i2);
                            }
                        });
                        break;
                    case 3:
                        service.getCurrentAverage(new IHealth.getCurrentAverageCallback() { // from class: com.android.server.-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI
                            @Override // android.hardware.health.V2_0.IHealth.getCurrentAverageCallback
                            public final void onValues(int i, int i2) {
                                BatteryService.BatteryPropertiesRegistrar.lambda$getProperty$2(outResult, prop, i, i2);
                            }
                        });
                        break;
                    case 4:
                        service.getCapacity(new IHealth.getCapacityCallback() { // from class: com.android.server.-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww
                            @Override // android.hardware.health.V2_0.IHealth.getCapacityCallback
                            public final void onValues(int i, int i2) {
                                BatteryService.BatteryPropertiesRegistrar.lambda$getProperty$3(outResult, prop, i, i2);
                            }
                        });
                        break;
                    case 5:
                        service.getEnergyCounter(new IHealth.getEnergyCounterCallback() { // from class: com.android.server.-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY
                            @Override // android.hardware.health.V2_0.IHealth.getEnergyCounterCallback
                            public final void onValues(int i, long j) {
                                BatteryService.BatteryPropertiesRegistrar.lambda$getProperty$5(outResult, prop, i, j);
                            }
                        });
                        break;
                    case 6:
                        service.getChargeStatus(new IHealth.getChargeStatusCallback() { // from class: com.android.server.-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw
                            @Override // android.hardware.health.V2_0.IHealth.getChargeStatusCallback
                            public final void onValues(int i, int i2) {
                                BatteryService.BatteryPropertiesRegistrar.lambda$getProperty$4(outResult, prop, i, i2);
                            }
                        });
                        break;
                }
                int i = outResult.value;
                BatteryService.traceEnd();
                return i;
            } catch (Throwable th) {
                BatteryService.traceEnd();
                throw th;
            }
        }

        static /* synthetic */ void lambda$getProperty$0(MutableInt outResult, BatteryProperty prop, int result, int value) {
            outResult.value = result;
            if (result == 0) {
                prop.setLong(value);
            }
        }

        static /* synthetic */ void lambda$getProperty$1(MutableInt outResult, BatteryProperty prop, int result, int value) {
            outResult.value = result;
            if (result == 0) {
                prop.setLong(value);
            }
        }

        static /* synthetic */ void lambda$getProperty$2(MutableInt outResult, BatteryProperty prop, int result, int value) {
            outResult.value = result;
            if (result == 0) {
                prop.setLong(value);
            }
        }

        static /* synthetic */ void lambda$getProperty$3(MutableInt outResult, BatteryProperty prop, int result, int value) {
            outResult.value = result;
            if (result == 0) {
                prop.setLong(value);
            }
        }

        static /* synthetic */ void lambda$getProperty$4(MutableInt outResult, BatteryProperty prop, int result, int value) {
            outResult.value = result;
            if (result == 0) {
                prop.setLong(value);
            }
        }

        static /* synthetic */ void lambda$getProperty$5(MutableInt outResult, BatteryProperty prop, int result, long value) {
            outResult.value = result;
            if (result == 0) {
                prop.setLong(value);
            }
        }

        public void scheduleUpdate() throws RemoteException {
            BatteryService.this.mHealthServiceWrapper.getHandlerThread().getThreadHandler().post(new Runnable() { // from class: com.android.server.-$$Lambda$BatteryService$BatteryPropertiesRegistrar$muNPoFqxU6pF6un7sF70iW4-Fus
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$scheduleUpdate$6$BatteryService$BatteryPropertiesRegistrar();
                }
            });
        }

        public /* synthetic */ void lambda$scheduleUpdate$6$BatteryService$BatteryPropertiesRegistrar() {
            BatteryService.traceBegin("HealthScheduleUpdate");
            try {
                try {
                    IHealth service = BatteryService.this.mHealthServiceWrapper.getLastService();
                    if (service == null) {
                        Slog.e(BatteryService.TAG, "no health service");
                    } else {
                        service.update();
                    }
                } catch (RemoteException ex) {
                    Slog.e(BatteryService.TAG, "Cannot call update on health HAL", ex);
                }
            } finally {
                BatteryService.traceEnd();
            }
        }
    }

    private final class LocalService extends BatteryManagerInternal {
        private LocalService() {
        }

        public boolean isPowered(int plugTypeSet) {
            boolean zIsPoweredLocked;
            synchronized (BatteryService.this.mLock) {
                zIsPoweredLocked = BatteryService.this.isPoweredLocked(plugTypeSet);
            }
            return zIsPoweredLocked;
        }

        public int getPlugType() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mPlugType;
            }
            return i;
        }

        public int getBatteryLevel() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mHealthInfo.batteryLevel;
            }
            return i;
        }

        public int getBatteryChargeCounter() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mHealthInfo.batteryChargeCounter;
            }
            return i;
        }

        public int getBatteryFullCharge() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mHealthInfo.batteryFullCharge;
            }
            return i;
        }

        public boolean getBatteryLevelLow() {
            boolean z;
            synchronized (BatteryService.this.mLock) {
                z = BatteryService.this.mBatteryLevelLow;
            }
            return z;
        }

        public int getInvalidCharger() {
            int i;
            synchronized (BatteryService.this.mLock) {
                i = BatteryService.this.mInvalidCharger;
            }
            return i;
        }
    }

    public static final class HealthServiceWrapper {
        private static final String TAG = "HealthServiceWrapper";
        private Callback mCallback;
        private IHealthSupplier mHealthSupplier;
        private String mInstanceName;
        public static final String INSTANCE_VENDOR = "default";
        public static final String INSTANCE_HEALTHD = "backup";
        private static final List<String> sAllInstances = Arrays.asList(INSTANCE_VENDOR, INSTANCE_HEALTHD);
        private final IServiceNotification mNotification = new Notification();
        private final HandlerThread mHandlerThread = new HandlerThread("HealthServiceHwbinder");
        private final AtomicReference<IHealth> mLastService = new AtomicReference<>();

        interface Callback {
            void onRegistration(IHealth iHealth, IHealth iHealth2, String str);
        }

        public IHealth getLastService() {
            return this.mLastService.get();
        }

        public void init() throws RemoteException, NoSuchElementException {
            init(null, new IServiceManagerSupplier() { // from class: com.android.server.BatteryService.HealthServiceWrapper.1
            }, new IHealthSupplier() { // from class: com.android.server.BatteryService.HealthServiceWrapper.2
            });
        }

        void init(Callback callback, IServiceManagerSupplier managerSupplier, IHealthSupplier healthSupplier) throws RemoteException, NoSuchElementException, NullPointerException {
            if (managerSupplier == null || healthSupplier == null) {
                throw null;
            }
            this.mHealthSupplier = healthSupplier;
            IHealth newService = null;
            for (String name : sAllInstances) {
                BatteryService.traceBegin("HealthInitGetService_" + name);
                try {
                    newService = healthSupplier.get(name);
                } catch (NoSuchElementException e) {
                } finally {
                    BatteryService.traceEnd();
                }
                if (newService != null) {
                    this.mInstanceName = name;
                    this.mLastService.set(newService);
                    break;
                }
            }
            String str = this.mInstanceName;
            if (str == null || newService == null) {
                throw new NoSuchElementException(String.format("No IHealth service instance among %s is available. Perhaps no permission?", sAllInstances.toString()));
            }
            if (callback != null) {
                this.mCallback = callback;
                callback.onRegistration(null, newService, str);
            }
            BatteryService.traceBegin("HealthInitRegisterNotification");
            this.mHandlerThread.start();
            try {
                managerSupplier.get().registerForNotifications(IHealth.kInterfaceName, this.mInstanceName, this.mNotification);
                BatteryService.traceEnd();
                Slog.i(TAG, "health: HealthServiceWrapper listening to instance " + this.mInstanceName);
            } catch (Throwable th) {
                BatteryService.traceEnd();
                throw th;
            }
        }

        HandlerThread getHandlerThread() {
            return this.mHandlerThread;
        }

        interface IServiceManagerSupplier {
            default IServiceManager get() throws RemoteException, NoSuchElementException {
                return IServiceManager.getService();
            }
        }

        interface IHealthSupplier {
            default IHealth get(String name) throws RemoteException, NoSuchElementException {
                return IHealth.getService(name, true);
            }
        }

        private class Notification extends IServiceNotification.Stub {
            private Notification() {
            }

            @Override // android.hidl.manager.V1_0.IServiceNotification
            public final void onRegistration(String interfaceName, String instanceName, boolean preexisting) {
                if (IHealth.kInterfaceName.equals(interfaceName) && HealthServiceWrapper.this.mInstanceName.equals(instanceName)) {
                    HealthServiceWrapper.this.mHandlerThread.getThreadHandler().post(new Runnable() { // from class: com.android.server.BatteryService.HealthServiceWrapper.Notification.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                IHealth newService = HealthServiceWrapper.this.mHealthSupplier.get(HealthServiceWrapper.this.mInstanceName);
                                IHealth oldService = (IHealth) HealthServiceWrapper.this.mLastService.getAndSet(newService);
                                if (Objects.equals(newService, oldService)) {
                                    return;
                                }
                                Slog.i(HealthServiceWrapper.TAG, "health: new instance registered " + HealthServiceWrapper.this.mInstanceName);
                                if (HealthServiceWrapper.this.mCallback == null) {
                                    return;
                                }
                                HealthServiceWrapper.this.mCallback.onRegistration(oldService, newService, HealthServiceWrapper.this.mInstanceName);
                            } catch (RemoteException | NoSuchElementException ex) {
                                Slog.e(HealthServiceWrapper.TAG, "health: Cannot get instance '" + HealthServiceWrapper.this.mInstanceName + "': " + ex.getMessage() + ". Perhaps no permission?");
                            }
                        }
                    });
                }
            }
        }
    }
}
