package com.android.server.timezonedetector;

import android.app.timezonedetector.ManualTimeZoneSuggestion;
import android.app.timezonedetector.TelephonyTimeZoneSuggestion;
import android.content.Context;
import android.util.LocalLog;
import android.util.Slog;
import com.android.internal.util.IndentingPrintWriter;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class TimeZoneDetectorStrategyImpl implements TimeZoneDetectorStrategy {
    private static final boolean DBG = false;
    private static final int KEEP_SUGGESTION_HISTORY_SIZE = 10;
    private static final String LOG_TAG = "TimeZoneDetectorStrategy";
    private static final int ORIGIN_MANUAL = 2;
    private static final int ORIGIN_TELEPHONY = 1;
    public static final int TELEPHONY_SCORE_HIGH = 3;
    public static final int TELEPHONY_SCORE_HIGHEST = 4;
    public static final int TELEPHONY_SCORE_LOW = 1;
    public static final int TELEPHONY_SCORE_MEDIUM = 2;
    public static final int TELEPHONY_SCORE_NONE = 0;
    public static final int TELEPHONY_SCORE_USAGE_THRESHOLD = 2;
    private final Callback mCallback;
    private final LocalLog mTimeZoneChangesLog = new LocalLog(30, false);
    private ArrayMapWithHistory<Integer, QualifiedTelephonyTimeZoneSuggestion> mSuggestionBySlotIndex = new ArrayMapWithHistory<>(10);

    public interface Callback {
        String getDeviceTimeZone();

        boolean isAutoTimeZoneDetectionEnabled();

        boolean isDeviceTimeZoneInitialized();

        void setDeviceTimeZone(String str);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Origin {
    }

    public static TimeZoneDetectorStrategyImpl create(Context context) {
        Callback timeZoneDetectionServiceHelper = new TimeZoneDetectorCallbackImpl(context);
        return new TimeZoneDetectorStrategyImpl(timeZoneDetectionServiceHelper);
    }

    public TimeZoneDetectorStrategyImpl(Callback callback) {
        Objects.requireNonNull(callback);
        this.mCallback = callback;
    }

    @Override // com.android.server.timezonedetector.TimeZoneDetectorStrategy
    public synchronized void suggestManualTimeZone(ManualTimeZoneSuggestion suggestion) {
        Objects.requireNonNull(suggestion);
        String timeZoneId = suggestion.getZoneId();
        String cause = "Manual time suggestion received: suggestion=" + suggestion;
        setDeviceTimeZoneIfRequired(2, timeZoneId, cause);
    }

    @Override // com.android.server.timezonedetector.TimeZoneDetectorStrategy
    public synchronized void suggestTelephonyTimeZone(TelephonyTimeZoneSuggestion suggestion) {
        Objects.requireNonNull(suggestion);
        int score = scoreTelephonySuggestion(suggestion);
        QualifiedTelephonyTimeZoneSuggestion scoredSuggestion = new QualifiedTelephonyTimeZoneSuggestion(suggestion, score);
        this.mSuggestionBySlotIndex.put(Integer.valueOf(suggestion.getSlotIndex()), scoredSuggestion);
        String reason = "New telephony time suggested. suggestion=" + suggestion;
        doAutoTimeZoneDetection(reason);
    }

    private static int scoreTelephonySuggestion(TelephonyTimeZoneSuggestion suggestion) {
        if (suggestion.getZoneId() == null) {
            return 0;
        }
        int score = suggestion.getMatchType();
        if (score == 5 || suggestion.getMatchType() == 4) {
            return 4;
        }
        if (suggestion.getQuality() == 1) {
            return 3;
        }
        int score2 = suggestion.getQuality();
        if (score2 == 2) {
            return 2;
        }
        int score3 = suggestion.getQuality();
        if (score3 == 3) {
            return 1;
        }
        throw new AssertionError();
    }

    private void doAutoTimeZoneDetection(String detectionReason) {
        QualifiedTelephonyTimeZoneSuggestion bestTelephonySuggestion;
        if (!this.mCallback.isAutoTimeZoneDetectionEnabled() || (bestTelephonySuggestion = findBestTelephonySuggestion()) == null) {
            return;
        }
        boolean suggestionGoodEnough = bestTelephonySuggestion.score >= 2;
        if (!suggestionGoodEnough) {
            return;
        }
        String newZoneId = bestTelephonySuggestion.suggestion.getZoneId();
        if (newZoneId == null) {
            Slog.w(LOG_TAG, "Empty zone suggestion scored higher than expected. This is an error: bestTelephonySuggestion=" + bestTelephonySuggestion + " detectionReason=" + detectionReason);
            return;
        }
        String zoneId = bestTelephonySuggestion.suggestion.getZoneId();
        String cause = "Found good suggestion., bestTelephonySuggestion=" + bestTelephonySuggestion + ", detectionReason=" + detectionReason;
        setDeviceTimeZoneIfRequired(1, zoneId, cause);
    }

    private void setDeviceTimeZoneIfRequired(int origin, String newZoneId, String cause) {
        Objects.requireNonNull(newZoneId);
        Objects.requireNonNull(cause);
        boolean isOriginAutomatic = isOriginAutomatic(origin);
        if (isOriginAutomatic) {
            if (!this.mCallback.isAutoTimeZoneDetectionEnabled()) {
                return;
            }
        } else if (this.mCallback.isAutoTimeZoneDetectionEnabled()) {
            return;
        }
        String currentZoneId = this.mCallback.getDeviceTimeZone();
        if (newZoneId.equals(currentZoneId)) {
            return;
        }
        this.mCallback.setDeviceTimeZone(newZoneId);
        String msg = "Set device time zone. origin=" + origin + ", currentZoneId=" + currentZoneId + ", newZoneId=" + newZoneId + ", cause=" + cause;
        this.mTimeZoneChangesLog.log(msg);
    }

    private static boolean isOriginAutomatic(int origin) {
        return origin != 2;
    }

    private QualifiedTelephonyTimeZoneSuggestion findBestTelephonySuggestion() {
        QualifiedTelephonyTimeZoneSuggestion bestSuggestion = null;
        for (int i = 0; i < this.mSuggestionBySlotIndex.size(); i++) {
            QualifiedTelephonyTimeZoneSuggestion candidateSuggestion = this.mSuggestionBySlotIndex.valueAt(i);
            if (candidateSuggestion != null) {
                if (bestSuggestion == null) {
                    bestSuggestion = candidateSuggestion;
                } else if (candidateSuggestion.score > bestSuggestion.score) {
                    bestSuggestion = candidateSuggestion;
                } else if (candidateSuggestion.score == bestSuggestion.score) {
                    int candidateSlotIndex = candidateSuggestion.suggestion.getSlotIndex();
                    int bestSlotIndex = bestSuggestion.suggestion.getSlotIndex();
                    if (candidateSlotIndex < bestSlotIndex) {
                        bestSuggestion = candidateSuggestion;
                    }
                }
            }
        }
        return bestSuggestion;
    }

    public synchronized QualifiedTelephonyTimeZoneSuggestion findBestTelephonySuggestionForTests() {
        return findBestTelephonySuggestion();
    }

    @Override // com.android.server.timezonedetector.TimeZoneDetectorStrategy
    public synchronized void handleAutoTimeZoneDetectionChanged() {
        if (this.mCallback.isAutoTimeZoneDetectionEnabled()) {
            doAutoTimeZoneDetection("Auto time zone detection setting enabled.");
        }
    }

    @Override // com.android.server.timezonedetector.TimeZoneDetectorStrategy
    public synchronized void dump(PrintWriter pw, String[] args) {
        IndentingPrintWriter ipw = new IndentingPrintWriter(pw, " ");
        ipw.println("TimeZoneDetectorStrategy:");
        ipw.increaseIndent();
        ipw.println("mCallback.isTimeZoneDetectionEnabled()=" + this.mCallback.isAutoTimeZoneDetectionEnabled());
        ipw.println("mCallback.isDeviceTimeZoneInitialized()=" + this.mCallback.isDeviceTimeZoneInitialized());
        ipw.println("mCallback.getDeviceTimeZone()=" + this.mCallback.getDeviceTimeZone());
        ipw.println("Time zone change log:");
        ipw.increaseIndent();
        this.mTimeZoneChangesLog.dump(ipw);
        ipw.decreaseIndent();
        ipw.println("Telephony suggestion history:");
        ipw.increaseIndent();
        this.mSuggestionBySlotIndex.dump(ipw);
        ipw.decreaseIndent();
        ipw.decreaseIndent();
        ipw.flush();
    }

    public synchronized QualifiedTelephonyTimeZoneSuggestion getLatestTelephonySuggestion(int slotIndex) {
        return this.mSuggestionBySlotIndex.get(Integer.valueOf(slotIndex));
    }

    public static class QualifiedTelephonyTimeZoneSuggestion {
        public final int score;
        public final TelephonyTimeZoneSuggestion suggestion;

        public QualifiedTelephonyTimeZoneSuggestion(TelephonyTimeZoneSuggestion suggestion, int score) {
            this.suggestion = suggestion;
            this.score = score;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            QualifiedTelephonyTimeZoneSuggestion that = (QualifiedTelephonyTimeZoneSuggestion) o;
            if (this.score == that.score && this.suggestion.equals(that.suggestion)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.score), this.suggestion);
        }

        public String toString() {
            return "QualifiedTelephonyTimeZoneSuggestion{suggestion=" + this.suggestion + ", score=" + this.score + '}';
        }
    }
}
