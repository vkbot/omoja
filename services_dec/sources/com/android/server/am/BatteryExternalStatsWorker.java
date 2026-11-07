package com.android.server.am;

import android.bluetooth.BluetoothActivityEnergyInfo;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.Process;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.SynchronousResultReceiver;
import android.os.SystemClock;
import android.os.ThreadLocalWorkSource;
import android.os.connectivity.WifiActivityEnergyInfo;
import android.telephony.ModemActivityInfo;
import android.telephony.TelephonyManager;
import android.util.IntArray;
import android.util.Slog;
import android.util.TimeUtils;
import com.android.internal.os.BatteryStatsImpl;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
class BatteryExternalStatsWorker implements BatteryStatsImpl.ExternalStatsSync {
    private static final boolean DEBUG = false;
    private static final long EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS = 2000;
    private static final long MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS = 750;
    private static final String TAG = "BatteryExternalStatsWorker";
    private Future<?> mBatteryLevelSync;
    private final Context mContext;
    private long mLastCollectionTimeStamp;
    private boolean mOnBattery;
    private boolean mOnBatteryScreenOff;
    private final BatteryStatsImpl mStats;
    private Future<?> mWakelockChangesUpdate;
    private final ScheduledExecutorService mExecutorService = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.android.server.am.-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return BatteryExternalStatsWorker.lambda$new$1(runnable);
        }
    });
    private int mUpdateFlags = 0;
    private Future<?> mCurrentFuture = null;
    private String mCurrentReason = null;
    private boolean mUseLatestStates = true;
    private final IntArray mUidsToRemove = new IntArray();
    private final Object mWorkerLock = new Object();
    private WifiManager mWifiManager = null;
    private TelephonyManager mTelephony = null;
    private WifiActivityEnergyInfo mLastInfo = new WifiActivityEnergyInfo(0, 0, 0, 0, 0, 0);
    private final Runnable mSyncTask = new Runnable() { // from class: com.android.server.am.BatteryExternalStatsWorker.1
        @Override // java.lang.Runnable
        public void run() {
            int updateFlags;
            String reason;
            int[] uidsToRemove;
            boolean onBattery;
            boolean onBatteryScreenOff;
            boolean useLatestStates;
            synchronized (BatteryExternalStatsWorker.this) {
                updateFlags = BatteryExternalStatsWorker.this.mUpdateFlags;
                reason = BatteryExternalStatsWorker.this.mCurrentReason;
                uidsToRemove = BatteryExternalStatsWorker.this.mUidsToRemove.size() > 0 ? BatteryExternalStatsWorker.this.mUidsToRemove.toArray() : EmptyArray.INT;
                onBattery = BatteryExternalStatsWorker.this.mOnBattery;
                onBatteryScreenOff = BatteryExternalStatsWorker.this.mOnBatteryScreenOff;
                useLatestStates = BatteryExternalStatsWorker.this.mUseLatestStates;
                BatteryExternalStatsWorker.this.mUpdateFlags = 0;
                BatteryExternalStatsWorker.this.mCurrentReason = null;
                BatteryExternalStatsWorker.this.mUidsToRemove.clear();
                BatteryExternalStatsWorker.this.mCurrentFuture = null;
                BatteryExternalStatsWorker.this.mUseLatestStates = true;
                if ((updateFlags & 31) != 0) {
                    BatteryExternalStatsWorker.this.cancelSyncDueToBatteryLevelChangeLocked();
                }
                if ((updateFlags & 1) != 0) {
                    BatteryExternalStatsWorker.this.cancelCpuSyncDueToWakelockChange();
                }
            }
            try {
                synchronized (BatteryExternalStatsWorker.this.mWorkerLock) {
                    BatteryExternalStatsWorker.this.updateExternalStatsLocked(reason, updateFlags, onBattery, onBatteryScreenOff, useLatestStates);
                }
                if ((updateFlags & 1) != 0) {
                    BatteryExternalStatsWorker.this.mStats.copyFromAllUidsCpuTimes();
                }
                synchronized (BatteryExternalStatsWorker.this.mStats) {
                    for (int uid : uidsToRemove) {
                        FrameworkStatsLog.write(43, -1, uid, 0);
                        BatteryExternalStatsWorker.this.mStats.removeIsolatedUidLocked(uid);
                    }
                    BatteryExternalStatsWorker.this.mStats.clearPendingRemovedUids();
                }
            } catch (Exception e) {
                Slog.wtf(BatteryExternalStatsWorker.TAG, "Error updating external stats: ", e);
            }
            synchronized (BatteryExternalStatsWorker.this) {
                BatteryExternalStatsWorker.this.mLastCollectionTimeStamp = SystemClock.elapsedRealtime();
            }
        }
    };
    private final Runnable mWriteTask = new Runnable() { // from class: com.android.server.am.BatteryExternalStatsWorker.2
        @Override // java.lang.Runnable
        public void run() {
            synchronized (BatteryExternalStatsWorker.this.mStats) {
                BatteryExternalStatsWorker.this.mStats.writeAsyncLocked();
            }
        }
    };

    static /* synthetic */ Thread lambda$new$1(final Runnable r) {
        Thread t = new Thread(new Runnable() { // from class: com.android.server.am.-$$Lambda$BatteryExternalStatsWorker$ddVY5lmqswnSjXppAxPTOHbuzzQ
            @Override // java.lang.Runnable
            public final void run() {
                BatteryExternalStatsWorker.lambda$new$0(r);
            }
        }, "batterystats-worker");
        t.setPriority(5);
        return t;
    }

    static /* synthetic */ void lambda$new$0(Runnable r) {
        ThreadLocalWorkSource.setUid(Process.myUid());
        r.run();
    }

    BatteryExternalStatsWorker(Context context, BatteryStatsImpl stats) {
        this.mContext = context;
        this.mStats = stats;
    }

    public synchronized Future<?> scheduleSync(String reason, int flags) {
        return scheduleSyncLocked(reason, flags);
    }

    public synchronized Future<?> scheduleCpuSyncDueToRemovedUid(int uid) {
        this.mUidsToRemove.add(uid);
        return scheduleSyncLocked("remove-uid", 1);
    }

    public synchronized Future<?> scheduleCpuSyncDueToSettingChange() {
        return scheduleSyncLocked("setting-change", 1);
    }

    public Future<?> scheduleReadProcStateCpuTimes(boolean onBattery, boolean onBatteryScreenOff, long delayMillis) {
        synchronized (this.mStats) {
            if (!this.mStats.trackPerProcStateCpuTimes()) {
                return null;
            }
            synchronized (this) {
                if (this.mExecutorService.isShutdown()) {
                    return null;
                }
                return this.mExecutorService.schedule((Runnable) PooledLambda.obtainRunnable(new TriConsumer() { // from class: com.android.server.am.-$$Lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((BatteryStatsImpl) obj).updateProcStateCpuTimes(((Boolean) obj2).booleanValue(), ((Boolean) obj3).booleanValue());
                    }
                }, this.mStats, Boolean.valueOf(onBattery), Boolean.valueOf(onBatteryScreenOff)).recycleOnUse(), delayMillis, TimeUnit.MILLISECONDS);
            }
        }
    }

    public Future<?> scheduleCopyFromAllUidsCpuTimes(boolean onBattery, boolean onBatteryScreenOff) {
        synchronized (this.mStats) {
            if (!this.mStats.trackPerProcStateCpuTimes()) {
                return null;
            }
            synchronized (this) {
                if (this.mExecutorService.isShutdown()) {
                    return null;
                }
                return this.mExecutorService.submit((Runnable) PooledLambda.obtainRunnable(new TriConsumer() { // from class: com.android.server.am.-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((BatteryStatsImpl) obj).copyFromAllUidsCpuTimes(((Boolean) obj2).booleanValue(), ((Boolean) obj3).booleanValue());
                    }
                }, this.mStats, Boolean.valueOf(onBattery), Boolean.valueOf(onBatteryScreenOff)).recycleOnUse());
            }
        }
    }

    public Future<?> scheduleCpuSyncDueToScreenStateChange(boolean onBattery, boolean onBatteryScreenOff) {
        Future<?> futureScheduleSyncLocked;
        synchronized (this) {
            if (this.mCurrentFuture == null || (this.mUpdateFlags & 1) == 0) {
                this.mOnBattery = onBattery;
                this.mOnBatteryScreenOff = onBatteryScreenOff;
                this.mUseLatestStates = false;
            }
            futureScheduleSyncLocked = scheduleSyncLocked("screen-state", 1);
        }
        return futureScheduleSyncLocked;
    }

    public Future<?> scheduleCpuSyncDueToWakelockChange(long delayMillis) {
        Future<?> futureScheduleDelayedSyncLocked;
        synchronized (this) {
            futureScheduleDelayedSyncLocked = scheduleDelayedSyncLocked(this.mWakelockChangesUpdate, new Runnable() { // from class: com.android.server.am.-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$scheduleCpuSyncDueToWakelockChange$3$BatteryExternalStatsWorker();
                }
            }, delayMillis);
            this.mWakelockChangesUpdate = futureScheduleDelayedSyncLocked;
        }
        return futureScheduleDelayedSyncLocked;
    }

    public /* synthetic */ void lambda$scheduleCpuSyncDueToWakelockChange$3$BatteryExternalStatsWorker() {
        scheduleSync("wakelock-change", 1);
        scheduleRunnable(new Runnable() { // from class: com.android.server.am.-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleCpuSyncDueToWakelockChange$2$BatteryExternalStatsWorker();
            }
        });
    }

    public /* synthetic */ void lambda$scheduleCpuSyncDueToWakelockChange$2$BatteryExternalStatsWorker() {
        this.mStats.postBatteryNeedsCpuUpdateMsg();
    }

    public void cancelCpuSyncDueToWakelockChange() {
        synchronized (this) {
            if (this.mWakelockChangesUpdate != null) {
                this.mWakelockChangesUpdate.cancel(false);
                this.mWakelockChangesUpdate = null;
            }
        }
    }

    public Future<?> scheduleSyncDueToBatteryLevelChange(long delayMillis) {
        Future<?> futureScheduleDelayedSyncLocked;
        synchronized (this) {
            futureScheduleDelayedSyncLocked = scheduleDelayedSyncLocked(this.mBatteryLevelSync, new Runnable() { // from class: com.android.server.am.-$$Lambda$BatteryExternalStatsWorker$xR3yCbbVfCo3oq_xPiH7j5l5uac
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$scheduleSyncDueToBatteryLevelChange$4$BatteryExternalStatsWorker();
                }
            }, delayMillis);
            this.mBatteryLevelSync = futureScheduleDelayedSyncLocked;
        }
        return futureScheduleDelayedSyncLocked;
    }

    public /* synthetic */ void lambda$scheduleSyncDueToBatteryLevelChange$4$BatteryExternalStatsWorker() {
        scheduleSync("battery-level", 31);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelSyncDueToBatteryLevelChangeLocked() {
        Future<?> future = this.mBatteryLevelSync;
        if (future != null) {
            future.cancel(false);
            this.mBatteryLevelSync = null;
        }
    }

    private Future<?> scheduleDelayedSyncLocked(Future<?> lastScheduledSync, Runnable syncRunnable, long delayMillis) {
        if (this.mExecutorService.isShutdown()) {
            return CompletableFuture.failedFuture(new IllegalStateException("worker shutdown"));
        }
        if (lastScheduledSync != null) {
            if (delayMillis == 0) {
                lastScheduledSync.cancel(false);
            } else {
                return lastScheduledSync;
            }
        }
        return this.mExecutorService.schedule(syncRunnable, delayMillis, TimeUnit.MILLISECONDS);
    }

    public synchronized Future<?> scheduleWrite() {
        if (this.mExecutorService.isShutdown()) {
            return CompletableFuture.failedFuture(new IllegalStateException("worker shutdown"));
        }
        scheduleSyncLocked("write", 31);
        return this.mExecutorService.submit(this.mWriteTask);
    }

    public synchronized void scheduleRunnable(Runnable runnable) {
        if (!this.mExecutorService.isShutdown()) {
            this.mExecutorService.submit(runnable);
        }
    }

    public void shutdown() {
        this.mExecutorService.shutdownNow();
    }

    private Future<?> scheduleSyncLocked(String reason, int flags) {
        if (this.mExecutorService.isShutdown()) {
            return CompletableFuture.failedFuture(new IllegalStateException("worker shutdown"));
        }
        if (this.mCurrentFuture == null) {
            this.mUpdateFlags = flags;
            this.mCurrentReason = reason;
            this.mCurrentFuture = this.mExecutorService.submit(this.mSyncTask);
        }
        this.mUpdateFlags |= flags;
        return this.mCurrentFuture;
    }

    long getLastCollectionTimeStamp() {
        long j;
        synchronized (this) {
            j = this.mLastCollectionTimeStamp;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateExternalStatsLocked(String reason, int updateFlags, boolean onBattery, boolean onBatteryScreenOff, boolean useLatestStates) throws Throwable {
        final SynchronousResultReceiver tempWifiReceiver;
        boolean onBattery2;
        boolean onBatteryScreenOff2;
        BluetoothAdapter adapter;
        ResultReceiver synchronousResultReceiver = null;
        ResultReceiver synchronousResultReceiver2 = null;
        boolean railUpdated = false;
        if ((updateFlags & 2) == 0) {
            tempWifiReceiver = null;
        } else {
            if (this.mWifiManager == null && ServiceManager.getService("wifi") != null) {
                this.mWifiManager = (WifiManager) this.mContext.getSystemService(WifiManager.class);
            }
            WifiManager wifiManager = this.mWifiManager;
            if (wifiManager != null && wifiManager.isEnhancedPowerReportingSupported()) {
                tempWifiReceiver = new SynchronousResultReceiver("wifi");
                this.mWifiManager.getWifiActivityEnergyInfoAsync(new Executor() { // from class: com.android.server.am.BatteryExternalStatsWorker.3
                    @Override // java.util.concurrent.Executor
                    public void execute(Runnable runnable) {
                        runnable.run();
                    }
                }, new WifiManager.OnWifiActivityEnergyInfoListener() { // from class: com.android.server.am.-$$Lambda$BatteryExternalStatsWorker$MJXTdtPzBwRCdTjCDCE77VXPHBk
                    public final void onWifiActivityEnergyInfo(WifiActivityEnergyInfo wifiActivityEnergyInfo) {
                        BatteryExternalStatsWorker.lambda$updateExternalStatsLocked$5(tempWifiReceiver, wifiActivityEnergyInfo);
                    }
                });
            } else {
                tempWifiReceiver = null;
            }
            synchronized (this.mStats) {
                this.mStats.updateRailStatsLocked();
            }
            railUpdated = true;
        }
        if ((updateFlags & 8) != 0 && (adapter = BluetoothAdapter.getDefaultAdapter()) != null) {
            synchronousResultReceiver = new SynchronousResultReceiver("bluetooth");
            adapter.requestControllerActivityEnergyInfo(synchronousResultReceiver);
        }
        if ((updateFlags & 4) != 0) {
            if (this.mTelephony == null) {
                this.mTelephony = (TelephonyManager) this.mContext.getSystemService(TelephonyManager.class);
            }
            if (this.mTelephony != null) {
                synchronousResultReceiver2 = new SynchronousResultReceiver("telephony");
                this.mTelephony.requestModemActivityInfo(synchronousResultReceiver2);
            }
            if (!railUpdated) {
                synchronized (this.mStats) {
                    this.mStats.updateRailStatsLocked();
                }
            }
        }
        WifiActivityEnergyInfo wifiInfo = (WifiActivityEnergyInfo) awaitControllerInfo(tempWifiReceiver);
        BluetoothActivityEnergyInfo bluetoothInfo = awaitControllerInfo(synchronousResultReceiver);
        ModemActivityInfo modemInfo = awaitControllerInfo(synchronousResultReceiver2);
        synchronized (this.mStats) {
            try {
                try {
                    this.mStats.addHistoryEventLocked(SystemClock.elapsedRealtime(), SystemClock.uptimeMillis(), 14, reason, 0);
                    if ((updateFlags & 1) != 0) {
                        if (!useLatestStates) {
                            onBattery2 = onBattery;
                            onBatteryScreenOff2 = onBatteryScreenOff;
                        } else {
                            onBattery2 = this.mStats.isOnBatteryLocked();
                            try {
                                onBatteryScreenOff2 = this.mStats.isOnBatteryScreenOffLocked();
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                        this.mStats.updateCpuTimeLocked(onBattery2, onBatteryScreenOff2);
                    }
                    if ((updateFlags & 31) != 0) {
                        this.mStats.updateKernelWakelocksLocked();
                        this.mStats.updateKernelMemoryBandwidthLocked();
                    }
                    if ((updateFlags & 16) != 0) {
                        this.mStats.updateRpmStatsLocked();
                    }
                    if (bluetoothInfo != null) {
                        if (bluetoothInfo.isValid()) {
                            this.mStats.updateBluetoothStateLocked(bluetoothInfo);
                        } else {
                            Slog.w(TAG, "bluetooth info is invalid: " + bluetoothInfo);
                        }
                    }
                    if (wifiInfo != null) {
                        if (wifiInfo.isValid()) {
                            this.mStats.updateWifiState(extractDeltaLocked(wifiInfo));
                        } else {
                            Slog.w(TAG, "wifi info is invalid: " + wifiInfo);
                        }
                    }
                    if (modemInfo != null) {
                        if (modemInfo.isValid()) {
                            this.mStats.updateMobileRadioState(modemInfo);
                            return;
                        }
                        Slog.w(TAG, "modem info is invalid: " + modemInfo);
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    static /* synthetic */ void lambda$updateExternalStatsLocked$5(SynchronousResultReceiver tempWifiReceiver, WifiActivityEnergyInfo info) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("controller_activity", info);
        tempWifiReceiver.send(0, bundle);
    }

    private static <T extends Parcelable> T awaitControllerInfo(SynchronousResultReceiver synchronousResultReceiver) {
        if (synchronousResultReceiver == null) {
            return null;
        }
        try {
            SynchronousResultReceiver.Result resultAwaitResult = synchronousResultReceiver.awaitResult(EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS);
            if (resultAwaitResult.bundle != null) {
                resultAwaitResult.bundle.setDefusable(true);
                T t = (T) resultAwaitResult.bundle.getParcelable("controller_activity");
                if (t != null) {
                    return t;
                }
            }
        } catch (TimeoutException e) {
            Slog.w(TAG, "timeout reading " + synchronousResultReceiver.getName() + " stats");
        }
        return null;
    }

    private WifiActivityEnergyInfo extractDeltaLocked(WifiActivityEnergyInfo latest) {
        long deltaControllerScanDurationMillis;
        long deltaControllerIdleDurationMillis;
        long maxExpectedIdleTimeMs;
        boolean wasReset;
        long deltaControllerEnergyUsedMicroJoules;
        long deltaControllerEnergyUsedMicroJoules2;
        long deltaControllerEnergyUsedMicroJoules3;
        long deltaControllerRxDurationMillis;
        long deltaControllerTxDurationMillis;
        long deltaControllerIdleDurationMillis2;
        long deltaControllerScanDurationMillis2;
        long maxExpectedIdleTimeMs2;
        long timePeriodMs = latest.getTimeSinceBootMillis() - this.mLastInfo.getTimeSinceBootMillis();
        long lastScanMs = this.mLastInfo.getControllerScanDurationMillis();
        long lastIdleMs = this.mLastInfo.getControllerIdleDurationMillis();
        long lastTxMs = this.mLastInfo.getControllerTxDurationMillis();
        long lastRxMs = this.mLastInfo.getControllerRxDurationMillis();
        long lastEnergy = this.mLastInfo.getControllerEnergyUsedMicroJoules();
        long deltaTimeSinceBootMillis = latest.getTimeSinceBootMillis();
        int deltaStackState = latest.getStackState();
        long txTimeMs = latest.getControllerTxDurationMillis() - lastTxMs;
        long rxTimeMs = latest.getControllerRxDurationMillis() - lastRxMs;
        long idleTimeMs = latest.getControllerIdleDurationMillis() - lastIdleMs;
        long scanTimeMs = latest.getControllerScanDurationMillis() - lastScanMs;
        if (txTimeMs < 0 || rxTimeMs < 0 || scanTimeMs < 0 || idleTimeMs < 0) {
            long totalOnTimeMs = latest.getControllerTxDurationMillis() + latest.getControllerRxDurationMillis() + latest.getControllerIdleDurationMillis();
            if (totalOnTimeMs <= timePeriodMs + MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS) {
                deltaControllerEnergyUsedMicroJoules3 = latest.getControllerEnergyUsedMicroJoules();
                deltaControllerRxDurationMillis = latest.getControllerRxDurationMillis();
                deltaControllerTxDurationMillis = latest.getControllerTxDurationMillis();
                deltaControllerIdleDurationMillis2 = latest.getControllerIdleDurationMillis();
                deltaControllerScanDurationMillis2 = latest.getControllerScanDurationMillis();
            } else {
                deltaControllerEnergyUsedMicroJoules3 = 0;
                deltaControllerRxDurationMillis = 0;
                deltaControllerTxDurationMillis = 0;
                deltaControllerIdleDurationMillis2 = 0;
                deltaControllerScanDurationMillis2 = 0;
            }
            wasReset = true;
            deltaControllerEnergyUsedMicroJoules2 = deltaControllerEnergyUsedMicroJoules3;
            maxExpectedIdleTimeMs = deltaControllerRxDurationMillis;
            deltaControllerEnergyUsedMicroJoules = deltaControllerTxDurationMillis;
            deltaControllerIdleDurationMillis = deltaControllerIdleDurationMillis2;
            deltaControllerScanDurationMillis = deltaControllerScanDurationMillis2;
        } else {
            long totalActiveTimeMs = txTimeMs + rxTimeMs;
            if (totalActiveTimeMs > timePeriodMs) {
                if (totalActiveTimeMs > timePeriodMs + MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Total Active time ");
                    TimeUtils.formatDuration(totalActiveTimeMs, sb);
                    sb.append(" is longer than sample period ");
                    TimeUtils.formatDuration(timePeriodMs, sb);
                    sb.append(".\n");
                    sb.append("Previous WiFi snapshot: ");
                    sb.append("idle=");
                    TimeUtils.formatDuration(lastIdleMs, sb);
                    sb.append(" rx=");
                    TimeUtils.formatDuration(lastRxMs, sb);
                    sb.append(" tx=");
                    TimeUtils.formatDuration(lastTxMs, sb);
                    sb.append(" e=");
                    sb.append(lastEnergy);
                    sb.append("\n");
                    sb.append("Current WiFi snapshot: ");
                    sb.append("idle=");
                    TimeUtils.formatDuration(latest.getControllerIdleDurationMillis(), sb);
                    sb.append(" rx=");
                    TimeUtils.formatDuration(latest.getControllerRxDurationMillis(), sb);
                    sb.append(" tx=");
                    TimeUtils.formatDuration(latest.getControllerTxDurationMillis(), sb);
                    sb.append(" e=");
                    sb.append(latest.getControllerEnergyUsedMicroJoules());
                    Slog.wtf(TAG, sb.toString());
                }
                maxExpectedIdleTimeMs2 = 0;
            } else {
                maxExpectedIdleTimeMs2 = timePeriodMs - totalActiveTimeMs;
            }
            long deltaControllerIdleDurationMillis3 = Math.min(maxExpectedIdleTimeMs2, Math.max(0L, idleTimeMs));
            long maxExpectedIdleTimeMs3 = latest.getControllerEnergyUsedMicroJoules() - lastEnergy;
            deltaControllerEnergyUsedMicroJoules2 = Math.max(0L, maxExpectedIdleTimeMs3);
            wasReset = false;
            deltaControllerIdleDurationMillis = deltaControllerIdleDurationMillis3;
            maxExpectedIdleTimeMs = rxTimeMs;
            deltaControllerScanDurationMillis = scanTimeMs;
            deltaControllerEnergyUsedMicroJoules = txTimeMs;
        }
        this.mLastInfo = latest;
        WifiActivityEnergyInfo delta = new WifiActivityEnergyInfo(deltaTimeSinceBootMillis, deltaStackState, deltaControllerEnergyUsedMicroJoules, maxExpectedIdleTimeMs, deltaControllerScanDurationMillis, deltaControllerIdleDurationMillis, deltaControllerEnergyUsedMicroJoules2);
        if (wasReset) {
            Slog.v(TAG, "WiFi energy data was reset, new WiFi energy data is " + delta);
        }
        return delta;
    }
}
