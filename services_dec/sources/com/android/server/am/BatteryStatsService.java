package com.android.server.am;

import android.R;
import android.bluetooth.BluetoothActivityEnergyInfo;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.BatteryStats;
import android.os.BatteryStatsInternal;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFormatException;
import android.os.PowerManagerInternal;
import android.os.PowerSaveState;
import android.os.Process;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.os.WorkSource;
import android.os.connectivity.CellularBatteryStats;
import android.os.connectivity.GpsBatteryStats;
import android.os.connectivity.WifiActivityEnergyInfo;
import android.os.connectivity.WifiBatteryStats;
import android.os.health.HealthStatsParceler;
import android.os.health.HealthStatsWriter;
import android.os.health.UidHealthStats;
import android.provider.Settings;
import android.telephony.ModemActivityInfo;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.util.AtomicFile;
import android.util.Slog;
import com.android.internal.app.IBatteryStats;
import com.android.internal.os.BatteryStatsHelper;
import com.android.internal.os.BatteryStatsImpl;
import com.android.internal.os.PowerProfile;
import com.android.internal.os.RailStats;
import com.android.internal.os.RpmStats;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.ParseUtils;
import com.android.server.LocalServices;
import com.android.server.UiModeManagerService;
import com.android.server.utils.PriorityDump;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public final class BatteryStatsService extends IBatteryStats.Stub implements PowerManagerInternal.LowPowerModeListener, BatteryStatsImpl.PlatformIdleStateCallback, BatteryStatsImpl.RailEnergyDataCallback {
    static final boolean DBG = false;
    private static final int MAX_LOW_POWER_STATS_SIZE = 4096;
    static final String TAG = "BatteryStatsService";
    private static IBatteryStats sService;
    private final Context mContext;
    final BatteryStatsImpl mStats;
    private final BatteryExternalStatsWorker mWorker;
    private CharsetDecoder mDecoderStat = StandardCharsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE).replaceWith("?");
    private ByteBuffer mUtf8BufferStat = ByteBuffer.allocateDirect(4096);
    private CharBuffer mUtf16BufferStat = CharBuffer.allocate(4096);
    private final BatteryStatsImpl.UserInfoProvider mUserManagerUserInfoProvider = new BatteryStatsImpl.UserInfoProvider() { // from class: com.android.server.am.BatteryStatsService.1
        private UserManagerInternal umi;

        public int[] getUserIds() {
            if (this.umi == null) {
                this.umi = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
            }
            UserManagerInternal userManagerInternal = this.umi;
            if (userManagerInternal != null) {
                return userManagerInternal.getUserIds();
            }
            return null;
        }
    };

    private native void getLowPowerStats(RpmStats rpmStats);

    private native int getPlatformLowPowerStats(ByteBuffer byteBuffer);

    private native void getRailEnergyPowerStats(RailStats railStats);

    private native int getSubsystemLowPowerStats(ByteBuffer byteBuffer);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nativeWaitWakeup(ByteBuffer byteBuffer);

    public void fillLowPowerStats(RpmStats rpmStats) {
        getLowPowerStats(rpmStats);
    }

    public void fillRailDataStats(RailStats railStats) {
        getRailEnergyPowerStats(railStats);
    }

    public String getPlatformLowPowerStats() {
        this.mUtf8BufferStat.clear();
        this.mUtf16BufferStat.clear();
        this.mDecoderStat.reset();
        int bytesWritten = getPlatformLowPowerStats(this.mUtf8BufferStat);
        if (bytesWritten < 0) {
            return null;
        }
        if (bytesWritten == 0) {
            return "Empty";
        }
        this.mUtf8BufferStat.limit(bytesWritten);
        this.mDecoderStat.decode(this.mUtf8BufferStat, this.mUtf16BufferStat, true);
        this.mUtf16BufferStat.flip();
        return this.mUtf16BufferStat.toString();
    }

    public String getSubsystemLowPowerStats() {
        this.mUtf8BufferStat.clear();
        this.mUtf16BufferStat.clear();
        this.mDecoderStat.reset();
        int bytesWritten = getSubsystemLowPowerStats(this.mUtf8BufferStat);
        if (bytesWritten < 0) {
            return null;
        }
        if (bytesWritten == 0) {
            return "Empty";
        }
        this.mUtf8BufferStat.limit(bytesWritten);
        this.mDecoderStat.decode(this.mUtf8BufferStat, this.mUtf16BufferStat, true);
        this.mUtf16BufferStat.flip();
        return this.mUtf16BufferStat.toString();
    }

    BatteryStatsService(Context context, File systemDir, Handler handler) {
        this.mContext = context;
        BatteryStatsImpl batteryStatsImpl = new BatteryStatsImpl(systemDir, handler, this, this, this.mUserManagerUserInfoProvider);
        this.mStats = batteryStatsImpl;
        BatteryExternalStatsWorker batteryExternalStatsWorker = new BatteryExternalStatsWorker(context, batteryStatsImpl);
        this.mWorker = batteryExternalStatsWorker;
        this.mStats.setExternalStatsSyncLocked(batteryExternalStatsWorker);
        this.mStats.setRadioScanningTimeoutLocked(((long) this.mContext.getResources().getInteger(R.integer.config_jobSchedulerUserGracePeriod)) * 1000);
        this.mStats.setPowerProfileLocked(new PowerProfile(context));
    }

    public void publish() {
        LocalServices.addService(BatteryStatsInternal.class, new LocalService());
        ServiceManager.addService("batterystats", asBinder());
    }

    public void systemServicesReady() {
        this.mStats.systemServicesReady(this.mContext);
    }

    private final class LocalService extends BatteryStatsInternal {
        private LocalService() {
        }

        @Override // android.os.BatteryStatsInternal
        public String[] getWifiIfaces() {
            return (String[]) BatteryStatsService.this.mStats.getWifiIfaces().clone();
        }

        @Override // android.os.BatteryStatsInternal
        public String[] getMobileIfaces() {
            return (String[]) BatteryStatsService.this.mStats.getMobileIfaces().clone();
        }

        @Override // android.os.BatteryStatsInternal
        public void noteJobsDeferred(int uid, int numDeferred, long sinceLast) {
            BatteryStatsService.this.noteJobsDeferred(uid, numDeferred, sinceLast);
        }
    }

    private static void awaitUninterruptibly(Future<?> future) {
        while (true) {
            try {
                future.get();
                return;
            } catch (InterruptedException e) {
            } catch (ExecutionException e2) {
                return;
            }
        }
    }

    private void syncStats(String reason, int flags) {
        awaitUninterruptibly(this.mWorker.scheduleSync(reason, flags));
    }

    public void initPowerManagement() {
        PowerManagerInternal powerMgr = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
        powerMgr.registerLowPowerModeObserver(this);
        synchronized (this.mStats) {
            this.mStats.notePowerSaveModeLocked(powerMgr.getLowPowerState(9).batterySaverEnabled);
        }
        new WakeupReasonThread().start();
    }

    public void shutdown() {
        Slog.w("BatteryStats", "Writing battery stats before shutdown...");
        syncStats("shutdown", 31);
        synchronized (this.mStats) {
            this.mStats.shutdownLocked();
        }
        this.mWorker.shutdown();
    }

    public static IBatteryStats getService() {
        IBatteryStats iBatteryStats = sService;
        if (iBatteryStats != null) {
            return iBatteryStats;
        }
        IBinder b = ServiceManager.getService("batterystats");
        IBatteryStats iBatteryStatsAsInterface = asInterface(b);
        sService = iBatteryStatsAsInterface;
        return iBatteryStatsAsInterface;
    }

    public int getServiceType() {
        return 9;
    }

    public void onLowPowerModeChanged(PowerSaveState result) {
        synchronized (this.mStats) {
            this.mStats.notePowerSaveModeLocked(result.batterySaverEnabled);
        }
    }

    public BatteryStatsImpl getActiveStatistics() {
        return this.mStats;
    }

    public void scheduleWriteToDisk() {
        this.mWorker.scheduleWrite();
    }

    void removeUid(int uid) {
        synchronized (this.mStats) {
            this.mStats.removeUidStatsLocked(uid);
        }
    }

    void onCleanupUser(int userId) {
        synchronized (this.mStats) {
            this.mStats.onCleanupUserLocked(userId);
        }
    }

    void onUserRemoved(int userId) {
        synchronized (this.mStats) {
            this.mStats.onUserRemovedLocked(userId);
        }
    }

    void addIsolatedUid(int isolatedUid, int appUid) {
        synchronized (this.mStats) {
            this.mStats.addIsolatedUidLocked(isolatedUid, appUid);
        }
    }

    void removeIsolatedUid(int isolatedUid, int appUid) {
        synchronized (this.mStats) {
            this.mStats.scheduleRemoveIsolatedUidLocked(isolatedUid, appUid);
        }
    }

    void noteProcessStart(String name, int uid) {
        synchronized (this.mStats) {
            this.mStats.noteProcessStartLocked(name, uid);
            FrameworkStatsLog.write(28, uid, name, 1);
        }
    }

    void noteProcessCrash(String name, int uid) {
        synchronized (this.mStats) {
            this.mStats.noteProcessCrashLocked(name, uid);
            FrameworkStatsLog.write(28, uid, name, 2);
        }
    }

    void noteProcessAnr(String name, int uid) {
        synchronized (this.mStats) {
            this.mStats.noteProcessAnrLocked(name, uid);
        }
    }

    void noteProcessFinish(String name, int uid) {
        synchronized (this.mStats) {
            this.mStats.noteProcessFinishLocked(name, uid);
            FrameworkStatsLog.write(28, uid, name, 0);
        }
    }

    void noteUidProcessState(int uid, int state) {
        synchronized (this.mStats) {
            this.mStats.noteUidProcessStateLocked(uid, state);
        }
    }

    public byte[] getStatistics() {
        this.mContext.enforceCallingPermission("android.permission.BATTERY_STATS", null);
        Parcel out = Parcel.obtain();
        syncStats("get-stats", 31);
        synchronized (this.mStats) {
            this.mStats.writeToParcel(out, 0);
        }
        byte[] data = out.marshall();
        out.recycle();
        return data;
    }

    public ParcelFileDescriptor getStatisticsStream() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BATTERY_STATS", null);
        Parcel out = Parcel.obtain();
        syncStats("get-stats", 31);
        synchronized (this.mStats) {
            this.mStats.writeToParcel(out, 0);
        }
        byte[] data = out.marshall();
        out.recycle();
        try {
            return ParcelFileDescriptor.fromData(data, "battery-stats");
        } catch (IOException e) {
            Slog.w(TAG, "Unable to create shared memory", e);
            return null;
        }
    }

    public boolean isCharging() {
        boolean zIsCharging;
        synchronized (this.mStats) {
            zIsCharging = this.mStats.isCharging();
        }
        return zIsCharging;
    }

    public long computeBatteryTimeRemaining() {
        long j;
        synchronized (this.mStats) {
            long time = this.mStats.computeBatteryTimeRemaining(SystemClock.elapsedRealtime());
            j = time >= 0 ? time / 1000 : time;
        }
        return j;
    }

    public long computeChargeTimeRemaining() {
        long j;
        synchronized (this.mStats) {
            long time = this.mStats.computeChargeTimeRemaining(SystemClock.elapsedRealtime());
            j = time >= 0 ? time / 1000 : time;
        }
        return j;
    }

    public void noteEvent(int code, String name, int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteEventLocked(code, name, uid);
        }
    }

    public void noteSyncStart(String name, int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteSyncStartLocked(name, uid);
            FrameworkStatsLog.write_non_chained(7, uid, (String) null, name, 1);
        }
    }

    public void noteSyncFinish(String name, int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteSyncFinishLocked(name, uid);
            FrameworkStatsLog.write_non_chained(7, uid, (String) null, name, 0);
        }
    }

    public void noteJobStart(String name, int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteJobStartLocked(name, uid);
        }
    }

    public void noteJobFinish(String name, int uid, int stopReason) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteJobFinishLocked(name, uid, stopReason);
        }
    }

    void noteJobsDeferred(int uid, int numDeferred, long sinceLast) {
        synchronized (this.mStats) {
            this.mStats.noteJobsDeferredLocked(uid, numDeferred, sinceLast);
        }
    }

    public void noteWakupAlarm(String name, int uid, WorkSource workSource, String tag) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWakupAlarmLocked(name, uid, workSource, tag);
        }
    }

    public void noteAlarmStart(String name, WorkSource workSource, int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteAlarmStartLocked(name, workSource, uid);
        }
    }

    public void noteAlarmFinish(String name, WorkSource workSource, int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteAlarmFinishLocked(name, workSource, uid);
        }
    }

    public void noteStartWakelock(int uid, int pid, String name, String historyName, int type, boolean unimportantForLogging) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteStartWakeLocked(uid, pid, (WorkSource.WorkChain) null, name, historyName, type, unimportantForLogging, SystemClock.elapsedRealtime(), SystemClock.uptimeMillis());
        }
    }

    public void noteStopWakelock(int uid, int pid, String name, String historyName, int type) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteStopWakeLocked(uid, pid, (WorkSource.WorkChain) null, name, historyName, type, SystemClock.elapsedRealtime(), SystemClock.uptimeMillis());
        }
    }

    public void noteStartWakelockFromSource(WorkSource ws, int pid, String name, String historyName, int type, boolean unimportantForLogging) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteStartWakeFromSourceLocked(ws, pid, name, historyName, type, unimportantForLogging);
        }
    }

    public void noteChangeWakelockFromSource(WorkSource ws, int pid, String name, String historyName, int type, WorkSource newWs, int newPid, String newName, String newHistoryName, int newType, boolean newUnimportantForLogging) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteChangeWakelockFromSourceLocked(ws, pid, name, historyName, type, newWs, newPid, newName, newHistoryName, newType, newUnimportantForLogging);
        }
    }

    public void noteStopWakelockFromSource(WorkSource ws, int pid, String name, String historyName, int type) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteStopWakeFromSourceLocked(ws, pid, name, historyName, type);
        }
    }

    public void noteLongPartialWakelockStart(String name, String historyName, int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteLongPartialWakelockStart(name, historyName, uid);
        }
    }

    public void noteLongPartialWakelockStartFromSource(String name, String historyName, WorkSource workSource) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteLongPartialWakelockStartFromSource(name, historyName, workSource);
        }
    }

    public void noteLongPartialWakelockFinish(String name, String historyName, int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteLongPartialWakelockFinish(name, historyName, uid);
        }
    }

    public void noteLongPartialWakelockFinishFromSource(String name, String historyName, WorkSource workSource) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteLongPartialWakelockFinishFromSource(name, historyName, workSource);
        }
    }

    public void noteStartSensor(int uid, int sensor) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteStartSensorLocked(uid, sensor);
            FrameworkStatsLog.write_non_chained(5, uid, (String) null, sensor, 1);
        }
    }

    public void noteStopSensor(int uid, int sensor) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteStopSensorLocked(uid, sensor);
            FrameworkStatsLog.write_non_chained(5, uid, (String) null, sensor, 0);
        }
    }

    public void noteVibratorOn(int uid, long durationMillis) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteVibratorOnLocked(uid, durationMillis);
        }
    }

    public void noteVibratorOff(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteVibratorOffLocked(uid);
        }
    }

    public void noteGpsChanged(WorkSource oldWs, WorkSource newWs) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteGpsChangedLocked(oldWs, newWs);
        }
    }

    public void noteGpsSignalQuality(int signalLevel) {
        synchronized (this.mStats) {
            this.mStats.noteGpsSignalQualityLocked(signalLevel);
        }
    }

    public void noteScreenState(int state) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            FrameworkStatsLog.write(29, state);
            this.mStats.noteScreenStateLocked(state);
        }
    }

    public void noteScreenBrightness(int brightness) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            FrameworkStatsLog.write(9, brightness);
            this.mStats.noteScreenBrightnessLocked(brightness);
        }
    }

    public void noteUserActivity(int uid, int event) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteUserActivityLocked(uid, event);
        }
    }

    public void noteWakeUp(String reason, int reasonUid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWakeUpLocked(reason, reasonUid);
        }
    }

    public void noteInteractive(boolean interactive) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteInteractiveLocked(interactive);
        }
    }

    public void noteConnectivityChanged(int type, String extra) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteConnectivityChangedLocked(type, extra);
        }
    }

    public void noteMobileRadioPowerState(int powerState, long timestampNs, int uid) {
        boolean update;
        enforceCallingPermission();
        synchronized (this.mStats) {
            update = this.mStats.noteMobileRadioPowerStateLocked(powerState, timestampNs, uid);
        }
        if (update) {
            this.mWorker.scheduleSync("modem-data", 4);
        }
    }

    public void notePhoneOn() {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.notePhoneOnLocked();
        }
    }

    public void notePhoneOff() {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.notePhoneOffLocked();
        }
    }

    public void notePhoneSignalStrength(SignalStrength signalStrength) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.notePhoneSignalStrengthLocked(signalStrength);
        }
    }

    public void notePhoneDataConnectionState(int dataType, boolean hasData, int serviceType) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.notePhoneDataConnectionStateLocked(dataType, hasData, serviceType);
        }
    }

    public void notePhoneState(int state) {
        enforceCallingPermission();
        int simState = ((TelephonyManager) this.mContext.getSystemService(TelephonyManager.class)).getSimState();
        synchronized (this.mStats) {
            this.mStats.notePhoneStateLocked(state, simState);
        }
    }

    public void noteWifiOn() {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiOnLocked();
        }
        FrameworkStatsLog.write(113, 1);
    }

    public void noteWifiOff() {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiOffLocked();
        }
        FrameworkStatsLog.write(113, 0);
    }

    public void noteStartAudio(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteAudioOnLocked(uid);
            FrameworkStatsLog.write_non_chained(23, uid, (String) null, 1);
        }
    }

    public void noteStopAudio(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteAudioOffLocked(uid);
            FrameworkStatsLog.write_non_chained(23, uid, (String) null, 0);
        }
    }

    public void noteStartVideo(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteVideoOnLocked(uid);
            FrameworkStatsLog.write_non_chained(24, uid, (String) null, 1);
        }
    }

    public void noteStopVideo(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteVideoOffLocked(uid);
            FrameworkStatsLog.write_non_chained(24, uid, (String) null, 0);
        }
    }

    public void noteResetAudio() {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteResetAudioLocked();
            FrameworkStatsLog.write_non_chained(23, -1, (String) null, 2);
        }
    }

    public void noteResetVideo() {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteResetVideoLocked();
            FrameworkStatsLog.write_non_chained(24, -1, (String) null, 2);
        }
    }

    public void noteFlashlightOn(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteFlashlightOnLocked(uid);
            FrameworkStatsLog.write_non_chained(26, uid, (String) null, 1);
        }
    }

    public void noteFlashlightOff(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteFlashlightOffLocked(uid);
            FrameworkStatsLog.write_non_chained(26, uid, (String) null, 0);
        }
    }

    public void noteStartCamera(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteCameraOnLocked(uid);
            FrameworkStatsLog.write_non_chained(25, uid, (String) null, 1);
        }
    }

    public void noteStopCamera(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteCameraOffLocked(uid);
            FrameworkStatsLog.write_non_chained(25, uid, (String) null, 0);
        }
    }

    public void noteResetCamera() {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteResetCameraLocked();
            FrameworkStatsLog.write_non_chained(25, -1, (String) null, 2);
        }
    }

    public void noteResetFlashlight() {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteResetFlashlightLocked();
            FrameworkStatsLog.write_non_chained(26, -1, (String) null, 2);
        }
    }

    public void noteWifiRadioPowerState(int powerState, long tsNanos, int uid) {
        String type;
        enforceCallingPermission();
        synchronized (this.mStats) {
            if (this.mStats.isOnBattery()) {
                if (powerState == 3 || powerState == 2) {
                    type = "active";
                } else {
                    type = "inactive";
                }
                this.mWorker.scheduleSync("wifi-data: " + type, 2);
            }
            this.mStats.noteWifiRadioPowerState(powerState, tsNanos, uid);
        }
    }

    public void noteWifiRunning(WorkSource ws) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiRunningLocked(ws);
        }
        FrameworkStatsLog.write(114, ws, 1);
    }

    public void noteWifiRunningChanged(WorkSource oldWs, WorkSource newWs) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiRunningChangedLocked(oldWs, newWs);
        }
        FrameworkStatsLog.write(114, newWs, 1);
        FrameworkStatsLog.write(114, oldWs, 0);
    }

    public void noteWifiStopped(WorkSource ws) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiStoppedLocked(ws);
        }
        FrameworkStatsLog.write(114, ws, 0);
    }

    public void noteWifiState(int wifiState, String accessPoint) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiStateLocked(wifiState, accessPoint);
        }
    }

    public void noteWifiSupplicantStateChanged(int supplState, boolean failedAuth) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiSupplicantStateChangedLocked(supplState, failedAuth);
        }
    }

    public void noteWifiRssiChanged(int newRssi) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiRssiChangedLocked(newRssi);
        }
    }

    public void noteFullWifiLockAcquired(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteFullWifiLockAcquiredLocked(uid);
        }
    }

    public void noteFullWifiLockReleased(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteFullWifiLockReleasedLocked(uid);
        }
    }

    public void noteWifiScanStarted(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiScanStartedLocked(uid);
        }
    }

    public void noteWifiScanStopped(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiScanStoppedLocked(uid);
        }
    }

    public void noteWifiMulticastEnabled(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiMulticastEnabledLocked(uid);
        }
    }

    public void noteWifiMulticastDisabled(int uid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiMulticastDisabledLocked(uid);
        }
    }

    public void noteFullWifiLockAcquiredFromSource(WorkSource ws) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteFullWifiLockAcquiredFromSourceLocked(ws);
        }
    }

    public void noteFullWifiLockReleasedFromSource(WorkSource ws) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteFullWifiLockReleasedFromSourceLocked(ws);
        }
    }

    public void noteWifiScanStartedFromSource(WorkSource ws) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiScanStartedFromSourceLocked(ws);
        }
    }

    public void noteWifiScanStoppedFromSource(WorkSource ws) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiScanStoppedFromSourceLocked(ws);
        }
    }

    public void noteWifiBatchedScanStartedFromSource(WorkSource ws, int csph) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiBatchedScanStartedFromSourceLocked(ws, csph);
        }
    }

    public void noteWifiBatchedScanStoppedFromSource(WorkSource ws) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteWifiBatchedScanStoppedFromSourceLocked(ws);
        }
    }

    public void noteNetworkInterfaceType(String iface, int networkType) {
        enforceCallingPermission();
        this.mStats.noteNetworkInterfaceType(iface, networkType);
    }

    public void noteNetworkStatsEnabled() {
        enforceCallingPermission();
        this.mWorker.scheduleSync("network-stats-enabled", 6);
    }

    public void noteDeviceIdleMode(int mode, String activeReason, int activeUid) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteDeviceIdleModeLocked(mode, activeReason, activeUid);
        }
    }

    public void notePackageInstalled(String pkgName, long versionCode) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.notePackageInstalledLocked(pkgName, versionCode);
        }
    }

    public void notePackageUninstalled(String pkgName) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.notePackageUninstalledLocked(pkgName);
        }
    }

    public void noteBleScanStarted(WorkSource ws, boolean isUnoptimized) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteBluetoothScanStartedFromSourceLocked(ws, isUnoptimized);
        }
    }

    public void noteBleScanStopped(WorkSource ws, boolean isUnoptimized) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteBluetoothScanStoppedFromSourceLocked(ws, isUnoptimized);
        }
    }

    public void noteResetBleScan() {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteResetBluetoothScanLocked();
        }
    }

    public void noteBleScanResults(WorkSource ws, int numNewResults) {
        enforceCallingPermission();
        synchronized (this.mStats) {
            this.mStats.noteBluetoothScanResultsFromSourceLocked(ws, numNewResults);
        }
    }

    public void noteWifiControllerActivity(WifiActivityEnergyInfo info) {
        enforceCallingPermission();
        if (info == null || !info.isValid()) {
            Slog.e(TAG, "invalid wifi data given: " + info);
            return;
        }
        this.mStats.updateWifiState(info);
    }

    public void noteBluetoothControllerActivity(BluetoothActivityEnergyInfo info) {
        enforceCallingPermission();
        if (info == null || !info.isValid()) {
            Slog.e(TAG, "invalid bluetooth data given: " + info);
            return;
        }
        synchronized (this.mStats) {
            this.mStats.updateBluetoothStateLocked(info);
        }
    }

    public void noteModemControllerActivity(ModemActivityInfo info) {
        enforceCallingPermission();
        if (info == null || !info.isValid()) {
            Slog.e(TAG, "invalid modem data given: " + info);
            return;
        }
        this.mStats.updateMobileRadioState(info);
    }

    public boolean isOnBattery() {
        return this.mStats.isOnBattery();
    }

    public void setBatteryState(final int status, final int health, final int plugType, final int level, final int temp, final int volt, final int chargeUAh, final int chargeFullUAh, final long chargeTimeToFullSeconds) {
        enforceCallingPermission();
        this.mWorker.scheduleRunnable(new Runnable() { // from class: com.android.server.am.-$$Lambda$BatteryStatsService$Pej9zCsmgLSgNXX-S6WY0nw2EvI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setBatteryState$1$BatteryStatsService(plugType, status, health, level, temp, volt, chargeUAh, chargeFullUAh, chargeTimeToFullSeconds);
            }
        });
    }

    public /* synthetic */ void lambda$setBatteryState$1$BatteryStatsService(final int plugType, final int status, final int health, final int level, final int temp, final int volt, final int chargeUAh, final int chargeFullUAh, final long chargeTimeToFullSeconds) {
        synchronized (this.mStats) {
            boolean onBattery = BatteryStatsImpl.isOnBattery(plugType, status);
            if (this.mStats.isOnBattery() == onBattery) {
                this.mStats.setBatteryStateLocked(status, health, plugType, level, temp, volt, chargeUAh, chargeFullUAh, chargeTimeToFullSeconds);
            } else {
                this.mWorker.scheduleSync("battery-state", 31);
                this.mWorker.scheduleRunnable(new Runnable() { // from class: com.android.server.am.-$$Lambda$BatteryStatsService$TD8vKX9utneO-PRBBmoRe5zlDH8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setBatteryState$0$BatteryStatsService(status, health, plugType, level, temp, volt, chargeUAh, chargeFullUAh, chargeTimeToFullSeconds);
                    }
                });
            }
        }
    }

    public /* synthetic */ void lambda$setBatteryState$0$BatteryStatsService(int status, int health, int plugType, int level, int temp, int volt, int chargeUAh, int chargeFullUAh, long chargeTimeToFullSeconds) {
        synchronized (this.mStats) {
            this.mStats.setBatteryStateLocked(status, health, plugType, level, temp, volt, chargeUAh, chargeFullUAh, chargeTimeToFullSeconds);
        }
    }

    public long getAwakeTimeBattery() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BATTERY_STATS", null);
        return this.mStats.getAwakeTimeBattery();
    }

    public long getAwakeTimePlugged() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.BATTERY_STATS", null);
        return this.mStats.getAwakeTimePlugged();
    }

    public void enforceCallingPermission() {
        if (Binder.getCallingPid() == Process.myPid()) {
            return;
        }
        this.mContext.enforcePermission("android.permission.UPDATE_DEVICE_STATS", Binder.getCallingPid(), Binder.getCallingUid(), null);
    }

    final class WakeupReasonThread extends Thread {
        private static final int MAX_REASON_SIZE = 512;
        private CharsetDecoder mDecoder;
        private CharBuffer mUtf16Buffer;
        private ByteBuffer mUtf8Buffer;

        WakeupReasonThread() {
            super("BatteryStats_wakeupReason");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-2);
            this.mDecoder = StandardCharsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE).replaceWith("?");
            this.mUtf8Buffer = ByteBuffer.allocateDirect(512);
            this.mUtf16Buffer = CharBuffer.allocate(512);
            while (true) {
                try {
                    String reason = waitWakeup();
                    if (reason != null) {
                        synchronized (BatteryStatsService.this.mStats) {
                            try {
                                BatteryStatsService.this.mStats.noteWakeupReasonLocked(reason);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    } else {
                        return;
                    }
                } catch (RuntimeException e) {
                    Slog.e(BatteryStatsService.TAG, "Failure reading wakeup reasons", e);
                    return;
                }
            }
        }

        private String waitWakeup() {
            this.mUtf8Buffer.clear();
            this.mUtf16Buffer.clear();
            this.mDecoder.reset();
            int bytesWritten = BatteryStatsService.nativeWaitWakeup(this.mUtf8Buffer);
            if (bytesWritten < 0) {
                return null;
            }
            if (bytesWritten == 0) {
                return UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
            }
            this.mUtf8Buffer.limit(bytesWritten);
            this.mDecoder.decode(this.mUtf8Buffer, this.mUtf16Buffer, true);
            this.mUtf16Buffer.flip();
            return this.mUtf16Buffer.toString();
        }
    }

    private void dumpHelp(PrintWriter pw) {
        pw.println("Battery stats (batterystats) dump options:");
        pw.println("  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]");
        pw.println("  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]");
        pw.println("  --checkin: generate output for a checkin report; will write (and clear) the");
        pw.println("             last old completed stats when they had been reset.");
        pw.println("  -c: write the current stats in checkin format.");
        pw.println("  --proto: write the current aggregate stats (without history) in proto format.");
        pw.println("  --history: show only history data.");
        pw.println("  --history-start <num>: show only history data starting at given time offset.");
        pw.println("  --history-create-events <num>: create <num> of battery history events.");
        pw.println("  --charged: only output data since last charged.");
        pw.println("  --daily: only output full daily data.");
        pw.println("  --reset: reset the stats, clearing all current data.");
        pw.println("  --write: force write current collected stats to disk.");
        pw.println("  --new-daily: immediately create and write new daily stats record.");
        pw.println("  --read-daily: read-load last written daily stats.");
        pw.println("  --settings: dump the settings key/values related to batterystats");
        pw.println("  --cpu: dump cpu stats for debugging purpose");
        pw.println("  <package.name>: optional name of package to filter output by.");
        pw.println("  -h: print this help text.");
        pw.println("Battery stats (batterystats) commands:");
        pw.println("  enable|disable <option>");
        pw.println("    Enable or disable a running option.  Option state is not saved across boots.");
        pw.println("    Options are:");
        pw.println("      full-history: include additional detailed events in battery history:");
        pw.println("          wake_lock_in, alarms and proc events");
        pw.println("      no-auto-reset: don't automatically reset stats when unplugged");
        pw.println("      pretend-screen-off: pretend the screen is off, even if screen state changes");
    }

    private void dumpSettings(PrintWriter pw) {
        synchronized (this.mStats) {
            this.mStats.dumpConstantsLocked(pw);
        }
    }

    private void dumpCpuStats(PrintWriter pw) {
        synchronized (this.mStats) {
            this.mStats.dumpCpuStatsLocked(pw);
        }
    }

    private int doEnableOrDisable(PrintWriter pw, int i, String[] args, boolean enable) {
        int i2 = i + 1;
        if (i2 >= args.length) {
            StringBuilder sb = new StringBuilder();
            sb.append("Missing option argument for ");
            sb.append(enable ? "--enable" : "--disable");
            pw.println(sb.toString());
            dumpHelp(pw);
            return -1;
        }
        if ("full-wake-history".equals(args[i2]) || "full-history".equals(args[i2])) {
            synchronized (this.mStats) {
                this.mStats.setRecordAllHistoryLocked(enable);
            }
        } else if ("no-auto-reset".equals(args[i2])) {
            synchronized (this.mStats) {
                this.mStats.setNoAutoReset(enable);
            }
        } else if ("pretend-screen-off".equals(args[i2])) {
            synchronized (this.mStats) {
                this.mStats.setPretendScreenOff(enable);
            }
        } else {
            pw.println("Unknown enable/disable option: " + args[i2]);
            dumpHelp(pw);
            return -1;
        }
        return i2;
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) throws Throwable {
        boolean useCheckinFormat;
        boolean toProto;
        boolean noOutput;
        boolean writeData;
        long historyStart;
        int reqUid;
        int flags;
        int reqUid2;
        int flags2;
        BatteryStatsImpl batteryStatsImpl;
        AtomicFile atomicFile;
        if (!DumpUtils.checkDumpAndUsageStatsPermission(this.mContext, TAG, pw)) {
            return;
        }
        int reqUid3 = -1;
        if (args != null) {
            flags = 0;
            boolean useCheckinFormat2 = false;
            boolean isRealCheckin = false;
            int i = 0;
            boolean writeData2 = false;
            boolean writeData3 = false;
            int i2 = 0;
            historyStart = -1;
            while (i2 < flags) {
                String arg = args[i2];
                if ("--checkin".equals(arg)) {
                    useCheckinFormat2 = true;
                    i = 1;
                } else if ("--history".equals(arg)) {
                    flags |= 8;
                } else if ("--history-start".equals(arg)) {
                    flags |= 8;
                    i2++;
                    if (i2 >= args.length) {
                        pw.println("Missing time argument for --history-since");
                        dumpHelp(pw);
                        return;
                    } else {
                        historyStart = ParseUtils.parseLong(args[i2], 0L);
                        writeData3 = true;
                    }
                } else if ("--history-create-events".equals(arg)) {
                    int i3 = i2 + 1;
                    if (i3 >= args.length) {
                        pw.println("Missing events argument for --history-create-events");
                        dumpHelp(pw);
                        return;
                    }
                    boolean useCheckinFormat3 = useCheckinFormat2;
                    boolean toProto2 = isRealCheckin;
                    long events = ParseUtils.parseLong(args[i3], 0L);
                    synchronized (this.mStats) {
                        this.mStats.createFakeHistoryEvents(events);
                        pw.println("Battery history create events started.");
                        writeData2 = true;
                    }
                    i2 = i3;
                    isRealCheckin = toProto2;
                    useCheckinFormat2 = useCheckinFormat3;
                } else {
                    boolean useCheckinFormat4 = useCheckinFormat2;
                    boolean toProto3 = isRealCheckin;
                    if ("-c".equals(arg)) {
                        useCheckinFormat2 = true;
                        flags |= 16;
                        isRealCheckin = toProto3;
                    } else if (PriorityDump.PROTO_ARG.equals(arg)) {
                        isRealCheckin = true;
                        useCheckinFormat2 = useCheckinFormat4;
                    } else if ("--charged".equals(arg)) {
                        flags |= 2;
                        isRealCheckin = toProto3;
                        useCheckinFormat2 = useCheckinFormat4;
                    } else if ("--daily".equals(arg)) {
                        flags |= 4;
                        isRealCheckin = toProto3;
                        useCheckinFormat2 = useCheckinFormat4;
                    } else if ("--reset".equals(arg)) {
                        synchronized (this.mStats) {
                            this.mStats.resetAllStatsCmdLocked();
                            pw.println("Battery stats reset.");
                            writeData2 = true;
                        }
                        this.mWorker.scheduleSync("dump", 31);
                        isRealCheckin = toProto3;
                        useCheckinFormat2 = useCheckinFormat4;
                    } else if ("--write".equals(arg)) {
                        syncStats("dump", 31);
                        synchronized (this.mStats) {
                            this.mStats.writeSyncLocked();
                            pw.println("Battery stats written.");
                            writeData2 = true;
                        }
                        isRealCheckin = toProto3;
                        useCheckinFormat2 = useCheckinFormat4;
                    } else if ("--new-daily".equals(arg)) {
                        synchronized (this.mStats) {
                            this.mStats.recordDailyStatsLocked();
                            pw.println("New daily stats written.");
                            writeData2 = true;
                        }
                        isRealCheckin = toProto3;
                        useCheckinFormat2 = useCheckinFormat4;
                    } else if ("--read-daily".equals(arg)) {
                        synchronized (this.mStats) {
                            this.mStats.readDailyStatsLocked();
                            pw.println("Last daily stats read.");
                            writeData2 = true;
                        }
                        isRealCheckin = toProto3;
                        useCheckinFormat2 = useCheckinFormat4;
                    } else {
                        if ("--enable".equals(arg) || "enable".equals(arg)) {
                            int i4 = doEnableOrDisable(pw, i2, args, true);
                            if (i4 < 0) {
                                return;
                            }
                            pw.println("Enabled: " + args[i4]);
                            return;
                        }
                        if ("--disable".equals(arg) || "disable".equals(arg)) {
                            int i5 = doEnableOrDisable(pw, i2, args, false);
                            if (i5 < 0) {
                                return;
                            }
                            pw.println("Disabled: " + args[i5]);
                            return;
                        }
                        if ("-h".equals(arg)) {
                            dumpHelp(pw);
                            return;
                        }
                        if ("--settings".equals(arg)) {
                            dumpSettings(pw);
                            return;
                        }
                        if ("--cpu".equals(arg)) {
                            dumpCpuStats(pw);
                            return;
                        }
                        if ("-a".equals(arg)) {
                            flags |= 32;
                            isRealCheckin = toProto3;
                            useCheckinFormat2 = useCheckinFormat4;
                        } else {
                            if (arg.length() > 0 && arg.charAt(0) == '-') {
                                pw.println("Unknown option: " + arg);
                                dumpHelp(pw);
                                return;
                            }
                            try {
                                reqUid3 = this.mContext.getPackageManager().getPackageUidAsUser(arg, UserHandle.getCallingUserId());
                                isRealCheckin = toProto3;
                                useCheckinFormat2 = useCheckinFormat4;
                            } catch (PackageManager.NameNotFoundException e) {
                                pw.println("Unknown package: " + arg);
                                dumpHelp(pw);
                                return;
                            }
                        }
                    }
                }
                i2++;
            }
            useCheckinFormat = useCheckinFormat2;
            toProto = isRealCheckin;
            noOutput = writeData2;
            writeData = writeData3;
            reqUid = reqUid3;
            reqUid2 = i;
        } else {
            useCheckinFormat = false;
            toProto = false;
            noOutput = false;
            writeData = false;
            historyStart = -1;
            reqUid = -1;
            flags = 0;
            reqUid2 = 0;
        }
        if (noOutput) {
            return;
        }
        long ident = Binder.clearCallingIdentity();
        try {
            if (BatteryStatsHelper.checkWifiOnly(this.mContext)) {
                flags |= 64;
            }
            syncStats("dump", 31);
            Binder.restoreCallingIdentity(ident);
            if (reqUid >= 0 && (flags & 10) == 0) {
                flags2 = (flags | 2) & (-17);
            } else {
                flags2 = flags;
            }
            if (toProto) {
                List<ApplicationInfo> apps = this.mContext.getPackageManager().getInstalledApplications(4325376);
                if (reqUid2 != 0) {
                    synchronized (this.mStats.mCheckinFile) {
                        if (this.mStats.mCheckinFile.exists()) {
                            try {
                                byte[] raw = this.mStats.mCheckinFile.readFully();
                                if (raw != null) {
                                    Parcel in = Parcel.obtain();
                                    in.unmarshall(raw, 0, raw.length);
                                    in.setDataPosition(0);
                                    BatteryStatsImpl checkinStats = new BatteryStatsImpl((File) null, this.mStats.mHandler, (BatteryStatsImpl.PlatformIdleStateCallback) null, (BatteryStatsImpl.RailEnergyDataCallback) null, this.mUserManagerUserInfoProvider);
                                    checkinStats.readSummaryFromParcel(in);
                                    in.recycle();
                                    checkinStats.dumpProtoLocked(this.mContext, fd, apps, flags2, historyStart);
                                    this.mStats.mCheckinFile.delete();
                                    return;
                                }
                            } catch (ParcelFormatException | IOException e2) {
                                Slog.w(TAG, "Failure reading checkin file " + this.mStats.mCheckinFile.getBaseFile(), e2);
                            }
                        }
                    }
                }
                synchronized (this.mStats) {
                    this.mStats.dumpProtoLocked(this.mContext, fd, apps, flags2, historyStart);
                    if (writeData) {
                        this.mStats.writeAsyncLocked();
                    }
                }
                return;
            }
            if (useCheckinFormat) {
                List<ApplicationInfo> apps2 = this.mContext.getPackageManager().getInstalledApplications(4325376);
                if (reqUid2 != 0) {
                    AtomicFile atomicFile2 = this.mStats.mCheckinFile;
                    synchronized (atomicFile2) {
                        try {
                            try {
                                if (!this.mStats.mCheckinFile.exists()) {
                                    atomicFile = atomicFile2;
                                } else {
                                    try {
                                        byte[] raw2 = this.mStats.mCheckinFile.readFully();
                                        if (raw2 == null) {
                                            atomicFile = atomicFile2;
                                        } else {
                                            Parcel in2 = Parcel.obtain();
                                            in2.unmarshall(raw2, 0, raw2.length);
                                            in2.setDataPosition(0);
                                            BatteryStatsImpl checkinStats2 = new BatteryStatsImpl((File) null, this.mStats.mHandler, (BatteryStatsImpl.PlatformIdleStateCallback) null, (BatteryStatsImpl.RailEnergyDataCallback) null, this.mUserManagerUserInfoProvider);
                                            checkinStats2.readSummaryFromParcel(in2);
                                            in2.recycle();
                                            batteryStatsImpl = checkinStats2;
                                            atomicFile = atomicFile2;
                                            try {
                                                checkinStats2.dumpCheckinLocked(this.mContext, pw, apps2, flags2, historyStart);
                                                this.mStats.mCheckinFile.delete();
                                                return;
                                            } catch (ParcelFormatException | IOException e3) {
                                                e = e3;
                                            }
                                        }
                                    } catch (ParcelFormatException | IOException e4) {
                                        e = e4;
                                        atomicFile = atomicFile2;
                                    }
                                    Slog.w(TAG, "Failure reading checkin file " + this.mStats.mCheckinFile.getBaseFile(), e);
                                }
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    throw th;
                }
                BatteryStatsImpl batteryStatsImpl2 = this.mStats;
                synchronized (batteryStatsImpl2) {
                    try {
                        try {
                            this.mStats.dumpCheckinLocked(this.mContext, pw, apps2, flags2, historyStart);
                            if (writeData) {
                                this.mStats.writeAsyncLocked();
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            batteryStatsImpl = batteryStatsImpl2;
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
                return;
            }
            synchronized (this.mStats) {
                try {
                    try {
                        this.mStats.dumpLocked(this.mContext, pw, flags2, reqUid, historyStart);
                        if (writeData) {
                            this.mStats.writeAsyncLocked();
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }
        } catch (Throwable th7) {
            Binder.restoreCallingIdentity(ident);
            throw th7;
        }
    }

    public CellularBatteryStats getCellularBatteryStats() {
        CellularBatteryStats cellularBatteryStats;
        synchronized (this.mStats) {
            cellularBatteryStats = this.mStats.getCellularBatteryStats();
        }
        return cellularBatteryStats;
    }

    public WifiBatteryStats getWifiBatteryStats() {
        WifiBatteryStats wifiBatteryStats;
        synchronized (this.mStats) {
            wifiBatteryStats = this.mStats.getWifiBatteryStats();
        }
        return wifiBatteryStats;
    }

    public GpsBatteryStats getGpsBatteryStats() {
        GpsBatteryStats gpsBatteryStats;
        synchronized (this.mStats) {
            gpsBatteryStats = this.mStats.getGpsBatteryStats();
        }
        return gpsBatteryStats;
    }

    public HealthStatsParceler takeUidSnapshot(int requestUid) {
        HealthStatsParceler healthStatsForUidLocked;
        if (requestUid != Binder.getCallingUid()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.BATTERY_STATS", null);
        }
        long ident = Binder.clearCallingIdentity();
        try {
            try {
                if (shouldCollectExternalStats()) {
                    syncStats("get-health-stats-for-uids", 31);
                }
                synchronized (this.mStats) {
                    healthStatsForUidLocked = getHealthStatsForUidLocked(requestUid);
                }
                Binder.restoreCallingIdentity(ident);
                return healthStatsForUidLocked;
            } catch (Exception ex) {
                Slog.w(TAG, "Crashed while writing for takeUidSnapshot(" + requestUid + ")", ex);
                throw ex;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public HealthStatsParceler[] takeUidSnapshots(int[] requestUids) {
        HealthStatsParceler[] results;
        if (!onlyCaller(requestUids)) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.BATTERY_STATS", null);
        }
        long ident = Binder.clearCallingIdentity();
        try {
            try {
                if (shouldCollectExternalStats()) {
                    syncStats("get-health-stats-for-uids", 31);
                }
                synchronized (this.mStats) {
                    int N = requestUids.length;
                    results = new HealthStatsParceler[N];
                    for (int i = 0; i < N; i++) {
                        results[i] = getHealthStatsForUidLocked(requestUids[i]);
                    }
                }
                Binder.restoreCallingIdentity(ident);
                return results;
            } catch (Exception ex) {
                throw ex;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    private boolean shouldCollectExternalStats() {
        return SystemClock.elapsedRealtime() - this.mWorker.getLastCollectionTimeStamp() > this.mStats.getExternalStatsCollectionRateLimitMs();
    }

    private static boolean onlyCaller(int[] requestUids) {
        int caller = Binder.getCallingUid();
        for (int i : requestUids) {
            if (i != caller) {
                return false;
            }
        }
        return true;
    }

    HealthStatsParceler getHealthStatsForUidLocked(int requestUid) {
        HealthStatsBatteryStatsWriter writer = new HealthStatsBatteryStatsWriter();
        HealthStatsWriter uidWriter = new HealthStatsWriter(UidHealthStats.CONSTANTS);
        BatteryStats.Uid uid = (BatteryStats.Uid) this.mStats.getUidStats().get(requestUid);
        if (uid != null) {
            writer.writeUid(uidWriter, this.mStats, uid);
        }
        return new HealthStatsParceler(uidWriter);
    }

    public boolean setChargingStateUpdateDelayMillis(int delayMillis) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.POWER_SAVER", null);
        long ident = Binder.clearCallingIdentity();
        try {
            ContentResolver contentResolver = this.mContext.getContentResolver();
            return Settings.Global.putLong(contentResolver, "battery_charging_state_update_delay", delayMillis);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }
}
