package com.android.server.timedetector;

import android.app.timedetector.GnssTimeSuggestion;
import android.app.timedetector.ManualTimeSuggestion;
import android.app.timedetector.NetworkTimeSuggestion;
import android.app.timedetector.TelephonyTimeSuggestion;
import android.os.TimestampedValue;
import android.util.LocalLog;
import android.util.Slog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.timezonedetector.ArrayMapWithHistory;
import com.android.server.timezonedetector.ReferenceWithHistory;
import com.android.server.usage.AppStandbyController;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public final class TimeDetectorStrategyImpl implements TimeDetectorStrategy {
    private static final boolean DBG = false;
    private static final int KEEP_SUGGESTION_HISTORY_SIZE = 10;
    private static final String LOG_TAG = "SimpleTimeDetectorStrategy";
    static final long MAX_UTC_TIME_AGE_MILLIS = 86400000;
    private static final int ORIGIN_MANUAL = 2;
    private static final int ORIGIN_NETWORK = 3;
    private static final int ORIGIN_TELEPHONY = 1;
    private static final long SYSTEM_CLOCK_PARANOIA_THRESHOLD_MILLIS = 2000;
    private static final int TELEPHONY_BUCKET_COUNT = 24;
    static final int TELEPHONY_BUCKET_SIZE_MILLIS = 3600000;
    private static final int TELEPHONY_INVALID_SCORE = -1;
    private TimeDetectorStrategy.Callback mCallback;
    private TimestampedValue<Long> mLastAutoSystemClockTimeSet;
    int ORIGIN_GNSS = 4;
    private final LocalLog mTimeChangesLog = new LocalLog(30, false);
    private final ArrayMapWithHistory<Integer, TelephonyTimeSuggestion> mSuggestionBySlotIndex = new ArrayMapWithHistory<>(10);
    private final ReferenceWithHistory<NetworkTimeSuggestion> mLastNetworkSuggestion = new ReferenceWithHistory<>(10);
    private final ReferenceWithHistory<GnssTimeSuggestion> mLastGnssSuggestion = new ReferenceWithHistory<>(10);

    @Retention(RetentionPolicy.SOURCE)
    public @interface Origin {
    }

    @Override // com.android.server.timedetector.TimeDetectorStrategy
    public void initialize(TimeDetectorStrategy.Callback callback) {
        this.mCallback = callback;
    }

    @Override // com.android.server.timedetector.TimeDetectorStrategy
    public synchronized void suggestManualTime(ManualTimeSuggestion suggestion) {
        TimestampedValue<Long> newUtcTime = suggestion.getUtcTime();
        if (validateSuggestionTime(newUtcTime, suggestion)) {
            String cause = "Manual time suggestion received: suggestion=" + suggestion;
            setSystemClockIfRequired(2, newUtcTime, cause);
        }
    }

    @Override // com.android.server.timedetector.TimeDetectorStrategy
    public synchronized void suggestNetworkTime(NetworkTimeSuggestion timeSuggestion) {
        if (validateSuggestionTime(timeSuggestion.getUtcTime(), timeSuggestion)) {
            NetworkTimeSuggestion lastNetworkSuggestion = this.mLastNetworkSuggestion.get();
            if (lastNetworkSuggestion == null || !lastNetworkSuggestion.equals(timeSuggestion)) {
                this.mLastNetworkSuggestion.set(timeSuggestion);
            }
            String reason = "New network time suggested. timeSuggestion=" + timeSuggestion;
            doAutoTimeDetection(reason);
        }
    }

    @Override // com.android.server.timedetector.TimeDetectorStrategy
    public synchronized void suggestTelephonyTime(TelephonyTimeSuggestion timeSuggestion) {
        if (timeSuggestion.getUtcTime() == null) {
            return;
        }
        if (validateAndStoreTelephonySuggestion(timeSuggestion)) {
            String reason = "New telephony time suggested. timeSuggestion=" + timeSuggestion;
            doAutoTimeDetection(reason);
        }
    }

    @Override // com.android.server.timedetector.TimeDetectorStrategy
    public synchronized void suggestGnssTime(GnssTimeSuggestion timeSuggestion) {
        if (validateSuggestionTime(timeSuggestion.getUnixEpochTime(), timeSuggestion)) {
            GnssTimeSuggestion lastGnssSuggestion = this.mLastGnssSuggestion.get();
            if (lastGnssSuggestion == null || !lastGnssSuggestion.equals(timeSuggestion)) {
                this.mLastGnssSuggestion.set(timeSuggestion);
            }
            String reason = "GNSS time suggestion received: suggestion=" + timeSuggestion;
            doAutoTimeDetection(reason);
        }
    }

    @Override // com.android.server.timedetector.TimeDetectorStrategy
    public synchronized void handleAutoTimeDetectionChanged() {
        boolean enabled = this.mCallback.isAutoTimeDetectionEnabled();
        if (enabled) {
            doAutoTimeDetection("Auto time zone detection setting enabled.");
        } else {
            this.mLastAutoSystemClockTimeSet = null;
        }
    }

    @Override // com.android.server.timedetector.TimeDetectorStrategy
    public synchronized void dump(PrintWriter pw, String[] args) {
        IndentingPrintWriter ipw = new IndentingPrintWriter(pw, " ");
        ipw.println("TimeDetectorStrategy:");
        ipw.increaseIndent();
        ipw.println("mLastAutoSystemClockTimeSet=" + this.mLastAutoSystemClockTimeSet);
        ipw.println("mCallback.isAutoTimeDetectionEnabled()=" + this.mCallback.isAutoTimeDetectionEnabled());
        ipw.println("mCallback.elapsedRealtimeMillis()=" + this.mCallback.elapsedRealtimeMillis());
        ipw.println("mCallback.systemClockMillis()=" + this.mCallback.systemClockMillis());
        ipw.println("mCallback.systemClockUpdateThresholdMillis()=" + this.mCallback.systemClockUpdateThresholdMillis());
        ipw.println("Time change log:");
        ipw.increaseIndent();
        this.mTimeChangesLog.dump(ipw);
        ipw.decreaseIndent();
        ipw.println("Telephony suggestion history:");
        ipw.increaseIndent();
        this.mSuggestionBySlotIndex.dump(ipw);
        ipw.decreaseIndent();
        ipw.println("Network suggestion history:");
        ipw.increaseIndent();
        this.mLastNetworkSuggestion.dump(ipw);
        ipw.decreaseIndent();
        ipw.println("Gnss suggestion history:");
        ipw.increaseIndent();
        this.mLastGnssSuggestion.dump(ipw);
        ipw.decreaseIndent();
        ipw.decreaseIndent();
        ipw.flush();
    }

    private boolean validateAndStoreTelephonySuggestion(TelephonyTimeSuggestion suggestion) {
        TimestampedValue<Long> newUtcTime = suggestion.getUtcTime();
        if (!validateSuggestionTime(newUtcTime, suggestion)) {
            return false;
        }
        int slotIndex = suggestion.getSlotIndex();
        TelephonyTimeSuggestion previousSuggestion = this.mSuggestionBySlotIndex.get(Integer.valueOf(slotIndex));
        if (previousSuggestion != null) {
            if (previousSuggestion.getUtcTime() == null || previousSuggestion.getUtcTime().getValue() == null) {
                Slog.w(LOG_TAG, "Previous suggestion is null or has a null time. previousSuggestion=" + previousSuggestion + ", suggestion=" + suggestion);
                return false;
            }
            long referenceTimeDifference = TimestampedValue.referenceTimeDifference(newUtcTime, previousSuggestion.getUtcTime());
            if (referenceTimeDifference < 0) {
                Slog.w(LOG_TAG, "Out of order telephony suggestion received. referenceTimeDifference=" + referenceTimeDifference + " previousSuggestion=" + previousSuggestion + " suggestion=" + suggestion);
                return false;
            }
        }
        this.mSuggestionBySlotIndex.put(Integer.valueOf(slotIndex), suggestion);
        return true;
    }

    private boolean validateSuggestionTime(TimestampedValue<Long> newUtcTime, Object suggestion) {
        if (newUtcTime.getValue() == null) {
            Slog.w(LOG_TAG, "Suggested time value is null. suggestion=" + suggestion);
            return false;
        }
        long elapsedRealtimeMillis = this.mCallback.elapsedRealtimeMillis();
        if (elapsedRealtimeMillis < newUtcTime.getReferenceTimeMillis()) {
            Slog.w(LOG_TAG, "New reference time is in the future? Ignoring. elapsedRealtimeMillis=" + elapsedRealtimeMillis + ", suggestion=" + suggestion);
            return false;
        }
        return true;
    }

    private void doAutoTimeDetection(String detectionReason) {
        if (!this.mCallback.isAutoTimeDetectionEnabled()) {
            Slog.w(LOG_TAG, "Auto Time Detection disabled");
            return;
        }
        NetworkTimeSuggestion networkSuggestion = findLatestValidNetworkSuggestion();
        if (networkSuggestion != null) {
            TimestampedValue<Long> newUtcTime = networkSuggestion.getUtcTime();
            String cause = "Found good network suggestion., networkSuggestion=" + networkSuggestion + ", detectionReason=" + detectionReason;
            setSystemClockIfRequired(3, newUtcTime, cause);
            return;
        }
        GnssTimeSuggestion gnssTimeSuggestion = findLatestValidGnssSuggestion();
        if (gnssTimeSuggestion != null) {
            TimestampedValue<Long> newUtcTime2 = gnssTimeSuggestion.getUnixEpochTime();
            String cause2 = "Found good gnss suggestion., gnssTimeSuggestion=" + gnssTimeSuggestion + ", detectionReason=" + detectionReason;
            setSystemClockIfRequired(this.ORIGIN_GNSS, newUtcTime2, cause2);
            return;
        }
        TelephonyTimeSuggestion bestTelephonySuggestion = findBestTelephonySuggestion();
        if (bestTelephonySuggestion != null) {
            TimestampedValue<Long> newUtcTime3 = bestTelephonySuggestion.getUtcTime();
            String cause3 = "Found good telephony suggestion., bestTelephonySuggestion=" + bestTelephonySuggestion + ", detectionReason=" + detectionReason;
            setSystemClockIfRequired(1, newUtcTime3, cause3);
        }
    }

    private TelephonyTimeSuggestion findBestTelephonySuggestion() {
        long elapsedRealtimeMillis = this.mCallback.elapsedRealtimeMillis();
        TelephonyTimeSuggestion bestSuggestion = null;
        int bestScore = -1;
        for (int i = 0; i < this.mSuggestionBySlotIndex.size(); i++) {
            Integer slotIndex = this.mSuggestionBySlotIndex.keyAt(i);
            TelephonyTimeSuggestion candidateSuggestion = this.mSuggestionBySlotIndex.valueAt(i);
            if (candidateSuggestion == null) {
                Slog.w(LOG_TAG, "Latest suggestion unexpectedly null for slotIndex. slotIndex=" + slotIndex);
            } else if (candidateSuggestion.getUtcTime() == null) {
                Slog.w(LOG_TAG, "Latest suggestion unexpectedly empty.  candidateSuggestion=" + candidateSuggestion);
            } else {
                int candidateScore = scoreTelephonySuggestion(elapsedRealtimeMillis, candidateSuggestion);
                if (candidateScore != -1) {
                    if (bestSuggestion == null || bestScore < candidateScore) {
                        bestSuggestion = candidateSuggestion;
                        bestScore = candidateScore;
                    } else if (bestScore == candidateScore) {
                        int candidateSlotIndex = candidateSuggestion.getSlotIndex();
                        int bestSlotIndex = bestSuggestion.getSlotIndex();
                        if (candidateSlotIndex < bestSlotIndex) {
                            bestSuggestion = candidateSuggestion;
                        }
                    }
                }
            }
        }
        return bestSuggestion;
    }

    private static int scoreTelephonySuggestion(long elapsedRealtimeMillis, TelephonyTimeSuggestion timeSuggestion) {
        TimestampedValue<Long> utcTime = timeSuggestion.getUtcTime();
        if (!validateSuggestionUtcTime(elapsedRealtimeMillis, utcTime)) {
            Slog.w(LOG_TAG, "Existing suggestion found to be invalid  elapsedRealtimeMillis=" + elapsedRealtimeMillis + ", timeSuggestion=" + timeSuggestion);
            return -1;
        }
        long ageMillis = elapsedRealtimeMillis - utcTime.getReferenceTimeMillis();
        int bucketIndex = (int) (ageMillis / AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT);
        if (bucketIndex >= 24) {
            return -1;
        }
        return 24 - bucketIndex;
    }

    private NetworkTimeSuggestion findLatestValidNetworkSuggestion() {
        NetworkTimeSuggestion networkSuggestion = this.mLastNetworkSuggestion.get();
        if (networkSuggestion == null) {
            return null;
        }
        TimestampedValue<Long> utcTime = networkSuggestion.getUtcTime();
        long elapsedRealTimeMillis = this.mCallback.elapsedRealtimeMillis();
        if (!validateSuggestionUtcTime(elapsedRealTimeMillis, utcTime)) {
            return null;
        }
        return networkSuggestion;
    }

    private GnssTimeSuggestion findLatestValidGnssSuggestion() {
        GnssTimeSuggestion gnssTimeSuggestion = this.mLastGnssSuggestion.get();
        if (gnssTimeSuggestion == null) {
            return null;
        }
        TimestampedValue<Long> utcTime = gnssTimeSuggestion.getUnixEpochTime();
        long elapsedRealTimeMillis = this.mCallback.elapsedRealtimeMillis();
        if (!validateSuggestionUtcTime(elapsedRealTimeMillis, utcTime)) {
            return null;
        }
        return gnssTimeSuggestion;
    }

    private void setSystemClockIfRequired(int origin, TimestampedValue<Long> time, String cause) {
        boolean isOriginAutomatic = isOriginAutomatic(origin);
        if (isOriginAutomatic) {
            if (!this.mCallback.isAutoTimeDetectionEnabled()) {
                return;
            }
        } else if (this.mCallback.isAutoTimeDetectionEnabled()) {
            return;
        }
        this.mCallback.acquireWakeLock();
        try {
            setSystemClockUnderWakeLock(origin, time, cause);
        } finally {
            this.mCallback.releaseWakeLock();
        }
    }

    private static boolean isOriginAutomatic(int origin) {
        return origin != 2;
    }

    private void setSystemClockUnderWakeLock(int origin, TimestampedValue<Long> newTime, Object cause) {
        TimestampedValue<Long> timestampedValue;
        long elapsedRealtimeMillis = this.mCallback.elapsedRealtimeMillis();
        boolean isOriginAutomatic = isOriginAutomatic(origin);
        long actualSystemClockMillis = this.mCallback.systemClockMillis();
        if (isOriginAutomatic && (timestampedValue = this.mLastAutoSystemClockTimeSet) != null) {
            long expectedTimeMillis = TimeDetectorStrategy.getTimeAt(timestampedValue, elapsedRealtimeMillis);
            long absSystemClockDifference = Math.abs(expectedTimeMillis - actualSystemClockMillis);
            if (absSystemClockDifference > SYSTEM_CLOCK_PARANOIA_THRESHOLD_MILLIS) {
                Slog.w(LOG_TAG, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. elapsedRealtimeMillis=" + elapsedRealtimeMillis + " expectedTimeMillis=" + expectedTimeMillis + " actualTimeMillis=" + actualSystemClockMillis + " cause=" + cause);
            }
        }
        long newSystemClockMillis = TimeDetectorStrategy.getTimeAt(newTime, elapsedRealtimeMillis);
        long absTimeDifference = Math.abs(newSystemClockMillis - actualSystemClockMillis);
        long systemClockUpdateThreshold = this.mCallback.systemClockUpdateThresholdMillis();
        if (absTimeDifference < systemClockUpdateThreshold) {
            return;
        }
        this.mCallback.setSystemClock(newSystemClockMillis);
        String logMsg = "Set system clock using time=" + newTime + " cause=" + cause + " elapsedRealtimeMillis=" + elapsedRealtimeMillis + " newSystemClockMillis=" + newSystemClockMillis;
        this.mTimeChangesLog.log(logMsg);
        if (!isOriginAutomatic(origin)) {
            this.mLastAutoSystemClockTimeSet = null;
        } else {
            this.mLastAutoSystemClockTimeSet = newTime;
        }
    }

    public synchronized TelephonyTimeSuggestion findBestTelephonySuggestionForTests() {
        return findBestTelephonySuggestion();
    }

    public NetworkTimeSuggestion findLatestValidNetworkSuggestionForTests() {
        return findLatestValidNetworkSuggestion();
    }

    public synchronized TelephonyTimeSuggestion getLatestTelephonySuggestion(int slotIndex) {
        return this.mSuggestionBySlotIndex.get(Integer.valueOf(slotIndex));
    }

    public NetworkTimeSuggestion getLatestNetworkSuggestion() {
        return this.mLastNetworkSuggestion.get();
    }

    private static boolean validateSuggestionUtcTime(long elapsedRealtimeMillis, TimestampedValue<Long> utcTime) {
        long referenceTimeMillis = utcTime.getReferenceTimeMillis();
        if (referenceTimeMillis > elapsedRealtimeMillis) {
            return false;
        }
        long ageMillis = elapsedRealtimeMillis - referenceTimeMillis;
        return ageMillis <= 86400000;
    }
}
