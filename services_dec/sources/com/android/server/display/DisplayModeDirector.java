package com.android.server.display;

import android.R;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.view.Display;
import android.view.DisplayInfo;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.display.utils.AmbientFilter;
import com.android.server.display.utils.AmbientFilterFactory;
import com.android.server.utils.DeviceConfigInterface;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class DisplayModeDirector {
    private static final float FLOAT_TOLERANCE = 0.01f;
    private static final int GLOBAL_ID = -1;
    private static final int MSG_DEFAULT_PEAK_REFRESH_RATE_CHANGED = 3;
    private static final int MSG_HIGH_BRIGHTNESS_THRESHOLDS_CHANGED = 6;
    private static final int MSG_LOW_BRIGHTNESS_THRESHOLDS_CHANGED = 2;
    private static final int MSG_REFRESH_RATE_IN_HIGH_ZONE_CHANGED = 5;
    private static final int MSG_REFRESH_RATE_IN_LOW_ZONE_CHANGED = 4;
    private static final int MSG_REFRESH_RATE_RANGE_CHANGED = 1;
    private static final String TAG = "DisplayModeDirector";
    private final AppRequestObserver mAppRequestObserver;
    private BrightnessObserver mBrightnessObserver;
    private final Context mContext;
    private SparseArray<Display.Mode> mDefaultModeByDisplay;
    private DesiredDisplayModeSpecsListener mDesiredDisplayModeSpecsListener;
    private final DeviceConfigInterface mDeviceConfig;
    private final DeviceConfigDisplaySettings mDeviceConfigDisplaySettings;
    private final DisplayObserver mDisplayObserver;
    private final DisplayModeDirectorHandler mHandler;
    private final Injector mInjector;
    private final Object mLock;
    private boolean mLoggingEnabled;
    private final SettingsObserver mSettingsObserver;
    private SparseArray<Display.Mode[]> mSupportedModesByDisplay;
    private SparseArray<SparseArray<Vote>> mVotesByDisplay;

    public interface DesiredDisplayModeSpecsListener {
        void onDesiredDisplayModeSpecsChanged();
    }

    interface Injector {
        public static final Uri DISPLAY_BRIGHTNESS_URI = Settings.System.getUriFor("screen_brightness");
        public static final Uri PEAK_REFRESH_RATE_URI = Settings.System.getUriFor("peak_refresh_rate");

        DeviceConfigInterface getDeviceConfig();

        void registerBrightnessObserver(ContentResolver contentResolver, ContentObserver contentObserver);

        void registerPeakRefreshRateObserver(ContentResolver contentResolver, ContentObserver contentObserver);

        void unregisterBrightnessObserver(ContentResolver contentResolver, ContentObserver contentObserver);
    }

    public DisplayModeDirector(Context context, Handler handler) {
        this(context, handler, new RealInjector());
    }

    public DisplayModeDirector(Context context, Handler handler, Injector injector) {
        this.mLock = new Object();
        this.mContext = context;
        this.mHandler = new DisplayModeDirectorHandler(handler.getLooper());
        this.mInjector = injector;
        this.mVotesByDisplay = new SparseArray<>();
        this.mSupportedModesByDisplay = new SparseArray<>();
        this.mDefaultModeByDisplay = new SparseArray<>();
        this.mAppRequestObserver = new AppRequestObserver();
        this.mSettingsObserver = new SettingsObserver(context, handler);
        this.mDisplayObserver = new DisplayObserver(context, handler);
        this.mBrightnessObserver = new BrightnessObserver(context, handler);
        this.mDeviceConfigDisplaySettings = new DeviceConfigDisplaySettings();
        this.mDeviceConfig = injector.getDeviceConfig();
    }

    public void start(SensorManager sensorManager) {
        this.mSettingsObserver.observe();
        this.mDisplayObserver.observe();
        this.mSettingsObserver.observe();
        this.mBrightnessObserver.observe(sensorManager);
        synchronized (this.mLock) {
            notifyDesiredDisplayModeSpecsChangedLocked();
        }
    }

    public void setLoggingEnabled(boolean loggingEnabled) {
        if (this.mLoggingEnabled == loggingEnabled) {
            return;
        }
        this.mLoggingEnabled = loggingEnabled;
        this.mBrightnessObserver.setLoggingEnabled(loggingEnabled);
    }

    private SparseArray<Vote> getVotesLocked(int displayId) {
        SparseArray<Vote> votes;
        SparseArray<Vote> displayVotes = this.mVotesByDisplay.get(displayId);
        if (displayVotes != null) {
            votes = displayVotes.clone();
        } else {
            votes = new SparseArray<>();
        }
        SparseArray<Vote> globalVotes = this.mVotesByDisplay.get(-1);
        if (globalVotes != null) {
            for (int i = 0; i < globalVotes.size(); i++) {
                int priority = globalVotes.keyAt(i);
                if (votes.indexOfKey(priority) < 0) {
                    votes.put(priority, globalVotes.valueAt(i));
                }
            }
        }
        return votes;
    }

    private static final class VoteSummary {
        public int height;
        public float maxRefreshRate;
        public float minRefreshRate;
        public int width;

        VoteSummary() {
            reset();
        }

        public void reset() {
            this.minRefreshRate = 0.0f;
            this.maxRefreshRate = Float.POSITIVE_INFINITY;
            this.width = -1;
            this.height = -1;
        }
    }

    private void summarizeVotes(SparseArray<Vote> votes, int lowestConsideredPriority, VoteSummary summary) {
        summary.reset();
        for (int priority = 6; priority >= lowestConsideredPriority; priority--) {
            Vote vote = votes.get(priority);
            if (vote != null) {
                summary.minRefreshRate = Math.max(summary.minRefreshRate, vote.refreshRateRange.min);
                summary.maxRefreshRate = Math.min(summary.maxRefreshRate, vote.refreshRateRange.max);
                if (summary.height == -1 && summary.width == -1 && vote.height > 0 && vote.width > 0) {
                    summary.width = vote.width;
                    summary.height = vote.height;
                }
            }
        }
    }

    public DesiredDisplayModeSpecs getDesiredDisplayModeSpecs(int displayId) {
        synchronized (this.mLock) {
            SparseArray<Vote> votes = getVotesLocked(displayId);
            Display.Mode[] modes = this.mSupportedModesByDisplay.get(displayId);
            Display.Mode defaultMode = this.mDefaultModeByDisplay.get(displayId);
            if (modes != null && defaultMode != null) {
                int[] availableModes = {defaultMode.getModeId()};
                VoteSummary primarySummary = new VoteSummary();
                for (int lowestConsideredPriority = 0; lowestConsideredPriority <= 6; lowestConsideredPriority++) {
                    summarizeVotes(votes, lowestConsideredPriority, primarySummary);
                    if (primarySummary.height == -1 || primarySummary.width == -1) {
                        primarySummary.width = defaultMode.getPhysicalWidth();
                        primarySummary.height = defaultMode.getPhysicalHeight();
                    }
                    availableModes = filterModes(modes, primarySummary);
                    if (availableModes.length > 0) {
                        if (!this.mLoggingEnabled) {
                            break;
                        }
                        Slog.w(TAG, "Found available modes=" + Arrays.toString(availableModes) + " with lowest priority considered " + Vote.priorityToString(lowestConsideredPriority) + " and constraints: width=" + primarySummary.width + ", height=" + primarySummary.height + ", minRefreshRate=" + primarySummary.minRefreshRate + ", maxRefreshRate=" + primarySummary.maxRefreshRate);
                        break;
                    }
                    if (this.mLoggingEnabled) {
                        Slog.w(TAG, "Couldn't find available modes with lowest priority set to " + Vote.priorityToString(lowestConsideredPriority) + " and with the following constraints: width=" + primarySummary.width + ", height=" + primarySummary.height + ", minRefreshRate=" + primarySummary.minRefreshRate + ", maxRefreshRate=" + primarySummary.maxRefreshRate);
                    }
                }
                VoteSummary appRequestSummary = new VoteSummary();
                summarizeVotes(votes, 3, appRequestSummary);
                appRequestSummary.minRefreshRate = Math.min(appRequestSummary.minRefreshRate, primarySummary.minRefreshRate);
                appRequestSummary.maxRefreshRate = Math.max(appRequestSummary.maxRefreshRate, primarySummary.maxRefreshRate);
                if (this.mLoggingEnabled) {
                    Slog.i(TAG, String.format("App request range: [%.0f %.0f]", Float.valueOf(appRequestSummary.minRefreshRate), Float.valueOf(appRequestSummary.maxRefreshRate)));
                }
                int baseModeId = defaultMode.getModeId();
                if (availableModes.length > 0) {
                    baseModeId = availableModes[0];
                }
                return new DesiredDisplayModeSpecs(baseModeId, new RefreshRateRange(primarySummary.minRefreshRate, primarySummary.maxRefreshRate), new RefreshRateRange(appRequestSummary.minRefreshRate, appRequestSummary.maxRefreshRate));
            }
            Slog.e(TAG, "Asked about unknown display, returning empty display mode specs!(id=" + displayId + ")");
            return new DesiredDisplayModeSpecs();
        }
    }

    private int[] filterModes(Display.Mode[] supportedModes, VoteSummary summary) {
        ArrayList<Display.Mode> availableModes = new ArrayList<>();
        for (Display.Mode mode : supportedModes) {
            if (mode.getPhysicalWidth() != summary.width || mode.getPhysicalHeight() != summary.height) {
                if (this.mLoggingEnabled) {
                    Slog.w(TAG, "Discarding mode " + mode.getModeId() + ", wrong size: desiredWidth=" + summary.width + ": desiredHeight=" + summary.height + ": actualWidth=" + mode.getPhysicalWidth() + ": actualHeight=" + mode.getPhysicalHeight());
                }
            } else {
                float refreshRate = mode.getRefreshRate();
                if (refreshRate < summary.minRefreshRate - 0.01f || refreshRate > summary.maxRefreshRate + 0.01f) {
                    if (this.mLoggingEnabled) {
                        Slog.w(TAG, "Discarding mode " + mode.getModeId() + ", outside refresh rate bounds: minRefreshRate=" + summary.minRefreshRate + ", maxRefreshRate=" + summary.maxRefreshRate + ", modeRefreshRate=" + refreshRate);
                    }
                } else {
                    availableModes.add(mode);
                }
            }
        }
        int size = availableModes.size();
        int[] availableModeIds = new int[size];
        for (int i = 0; i < size; i++) {
            availableModeIds[i] = availableModes.get(i).getModeId();
        }
        return availableModeIds;
    }

    public AppRequestObserver getAppRequestObserver() {
        return this.mAppRequestObserver;
    }

    public void setDesiredDisplayModeSpecsListener(DesiredDisplayModeSpecsListener desiredDisplayModeSpecsListener) {
        synchronized (this.mLock) {
            this.mDesiredDisplayModeSpecsListener = desiredDisplayModeSpecsListener;
        }
    }

    Vote getVote(int displayId, int priority) {
        Vote vote;
        synchronized (this.mLock) {
            SparseArray<Vote> votes = getVotesLocked(displayId);
            vote = votes.get(priority);
        }
        return vote;
    }

    public void dump(PrintWriter pw) {
        pw.println(TAG);
        synchronized (this.mLock) {
            pw.println("  mSupportedModesByDisplay:");
            for (int i = 0; i < this.mSupportedModesByDisplay.size(); i++) {
                int id = this.mSupportedModesByDisplay.keyAt(i);
                Display.Mode[] modes = this.mSupportedModesByDisplay.valueAt(i);
                pw.println("    " + id + " -> " + Arrays.toString(modes));
            }
            pw.println("  mDefaultModeByDisplay:");
            for (int i2 = 0; i2 < this.mDefaultModeByDisplay.size(); i2++) {
                int id2 = this.mDefaultModeByDisplay.keyAt(i2);
                Display.Mode mode = this.mDefaultModeByDisplay.valueAt(i2);
                pw.println("    " + id2 + " -> " + mode);
            }
            pw.println("  mVotesByDisplay:");
            for (int i3 = 0; i3 < this.mVotesByDisplay.size(); i3++) {
                pw.println("    " + this.mVotesByDisplay.keyAt(i3) + ":");
                SparseArray<Vote> votes = this.mVotesByDisplay.valueAt(i3);
                for (int p = 6; p >= 0; p--) {
                    Vote vote = votes.get(p);
                    if (vote != null) {
                        pw.println("      " + Vote.priorityToString(p) + " -> " + vote);
                    }
                }
            }
            this.mSettingsObserver.dumpLocked(pw);
            this.mAppRequestObserver.dumpLocked(pw);
            this.mBrightnessObserver.dumpLocked(pw);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVoteLocked(int priority, Vote vote) {
        updateVoteLocked(-1, priority, vote);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVoteLocked(int displayId, int priority, Vote vote) {
        if (this.mLoggingEnabled) {
            Slog.i(TAG, "updateVoteLocked(displayId=" + displayId + ", priority=" + Vote.priorityToString(priority) + ", vote=" + vote + ")");
        }
        if (priority < 0 || priority > 6) {
            Slog.w(TAG, "Received a vote with an invalid priority, ignoring: priority=" + Vote.priorityToString(priority) + ", vote=" + vote, new Throwable());
            return;
        }
        SparseArray<Vote> votes = getOrCreateVotesByDisplay(displayId);
        votes.get(priority);
        if (vote != null) {
            votes.put(priority, vote);
        } else {
            votes.remove(priority);
        }
        if (votes.size() == 0) {
            if (this.mLoggingEnabled) {
                Slog.i(TAG, "No votes left for display " + displayId + ", removing.");
            }
            this.mVotesByDisplay.remove(displayId);
        }
        notifyDesiredDisplayModeSpecsChangedLocked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDesiredDisplayModeSpecsChangedLocked() {
        if (this.mDesiredDisplayModeSpecsListener != null && !this.mHandler.hasMessages(1)) {
            Message msg = this.mHandler.obtainMessage(1, this.mDesiredDisplayModeSpecsListener);
            msg.sendToTarget();
        }
    }

    private SparseArray<Vote> getOrCreateVotesByDisplay(int displayId) {
        this.mVotesByDisplay.indexOfKey(displayId);
        if (this.mVotesByDisplay.indexOfKey(displayId) >= 0) {
            return this.mVotesByDisplay.get(displayId);
        }
        SparseArray<Vote> votes = new SparseArray<>();
        this.mVotesByDisplay.put(displayId, votes);
        return votes;
    }

    void injectSupportedModesByDisplay(SparseArray<Display.Mode[]> supportedModesByDisplay) {
        this.mSupportedModesByDisplay = supportedModesByDisplay;
    }

    void injectDefaultModeByDisplay(SparseArray<Display.Mode> defaultModeByDisplay) {
        this.mDefaultModeByDisplay = defaultModeByDisplay;
    }

    void injectVotesByDisplay(SparseArray<SparseArray<Vote>> votesByDisplay) {
        this.mVotesByDisplay = votesByDisplay;
    }

    void injectBrightnessObserver(BrightnessObserver brightnessObserver) {
        this.mBrightnessObserver = brightnessObserver;
    }

    BrightnessObserver getBrightnessObserver() {
        return this.mBrightnessObserver;
    }

    SettingsObserver getSettingsObserver() {
        return this.mSettingsObserver;
    }

    DesiredDisplayModeSpecs getDesiredDisplayModeSpecsWithInjectedFpsSettings(float minRefreshRate, float peakRefreshRate, float defaultRefreshRate) {
        DesiredDisplayModeSpecs desiredDisplayModeSpecs;
        synchronized (this.mLock) {
            this.mSettingsObserver.updateRefreshRateSettingLocked(minRefreshRate, peakRefreshRate, defaultRefreshRate);
            desiredDisplayModeSpecs = getDesiredDisplayModeSpecs(0);
        }
        return desiredDisplayModeSpecs;
    }

    private final class DisplayModeDirectorHandler extends Handler {
        DisplayModeDirectorHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    DesiredDisplayModeSpecsListener desiredDisplayModeSpecsListener = (DesiredDisplayModeSpecsListener) msg.obj;
                    desiredDisplayModeSpecsListener.onDesiredDisplayModeSpecsChanged();
                    break;
                case 2:
                    Pair<int[], int[]> thresholds = (Pair) msg.obj;
                    DisplayModeDirector.this.mBrightnessObserver.onDeviceConfigLowBrightnessThresholdsChanged((int[]) thresholds.first, (int[]) thresholds.second);
                    break;
                case 3:
                    Float defaultPeakRefreshRate = (Float) msg.obj;
                    DisplayModeDirector.this.mSettingsObserver.onDeviceConfigDefaultPeakRefreshRateChanged(defaultPeakRefreshRate);
                    break;
                case 4:
                    int refreshRateInZone = msg.arg1;
                    DisplayModeDirector.this.mBrightnessObserver.onDeviceConfigRefreshRateInLowZoneChanged(refreshRateInZone);
                    break;
                case 5:
                    int refreshRateInZone2 = msg.arg1;
                    DisplayModeDirector.this.mBrightnessObserver.onDeviceConfigRefreshRateInHighZoneChanged(refreshRateInZone2);
                    break;
                case 6:
                    Pair<int[], int[]> thresholds2 = (Pair) msg.obj;
                    DisplayModeDirector.this.mBrightnessObserver.onDeviceConfigHighBrightnessThresholdsChanged((int[]) thresholds2.first, (int[]) thresholds2.second);
                    break;
            }
        }
    }

    public static final class RefreshRateRange {
        public float max;
        public float min;

        public RefreshRateRange() {
        }

        public RefreshRateRange(float min, float max) {
            if (min < 0.0f || max < 0.0f || min > 0.01f + max) {
                Slog.e(DisplayModeDirector.TAG, "Wrong values for min and max when initializing RefreshRateRange : " + min + " " + max);
                this.max = 0.0f;
                this.min = 0.0f;
                return;
            }
            if (min > max) {
                min = max;
                max = min;
            }
            this.min = min;
            this.max = max;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof RefreshRateRange)) {
                return false;
            }
            RefreshRateRange refreshRateRange = (RefreshRateRange) other;
            return this.min == refreshRateRange.min && this.max == refreshRateRange.max;
        }

        public int hashCode() {
            return Objects.hash(Float.valueOf(this.min), Float.valueOf(this.max));
        }

        public String toString() {
            return "(" + this.min + " " + this.max + ")";
        }
    }

    public static final class DesiredDisplayModeSpecs {
        public final RefreshRateRange appRequestRefreshRateRange;
        public int baseModeId;
        public final RefreshRateRange primaryRefreshRateRange;

        public DesiredDisplayModeSpecs() {
            this.primaryRefreshRateRange = new RefreshRateRange();
            this.appRequestRefreshRateRange = new RefreshRateRange();
        }

        public DesiredDisplayModeSpecs(int baseModeId, RefreshRateRange primaryRefreshRateRange, RefreshRateRange appRequestRefreshRateRange) {
            this.baseModeId = baseModeId;
            this.primaryRefreshRateRange = primaryRefreshRateRange;
            this.appRequestRefreshRateRange = appRequestRefreshRateRange;
        }

        public String toString() {
            return String.format("baseModeId=%d primaryRefreshRateRange=[%.0f %.0f] appRequestRefreshRateRange=[%.0f %.0f]", Integer.valueOf(this.baseModeId), Float.valueOf(this.primaryRefreshRateRange.min), Float.valueOf(this.primaryRefreshRateRange.max), Float.valueOf(this.appRequestRefreshRateRange.min), Float.valueOf(this.appRequestRefreshRateRange.max));
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof DesiredDisplayModeSpecs)) {
                return false;
            }
            DesiredDisplayModeSpecs desiredDisplayModeSpecs = (DesiredDisplayModeSpecs) other;
            return this.baseModeId == desiredDisplayModeSpecs.baseModeId && this.primaryRefreshRateRange.equals(desiredDisplayModeSpecs.primaryRefreshRateRange) && this.appRequestRefreshRateRange.equals(desiredDisplayModeSpecs.appRequestRefreshRateRange);
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.baseModeId), this.primaryRefreshRateRange, this.appRequestRefreshRateRange);
        }

        public void copyFrom(DesiredDisplayModeSpecs other) {
            this.baseModeId = other.baseModeId;
            this.primaryRefreshRateRange.min = other.primaryRefreshRateRange.min;
            this.primaryRefreshRateRange.max = other.primaryRefreshRateRange.max;
            this.appRequestRefreshRateRange.min = other.appRequestRefreshRateRange.min;
            this.appRequestRefreshRateRange.max = other.appRequestRefreshRateRange.max;
        }
    }

    static final class Vote {
        public static final int APP_REQUEST_REFRESH_RATE_RANGE_PRIORITY_CUTOFF = 3;
        public static final int INVALID_SIZE = -1;
        public static final int MAX_PRIORITY = 6;
        public static final int MIN_PRIORITY = 0;
        public static final int PRIORITY_APP_REQUEST_REFRESH_RATE = 3;
        public static final int PRIORITY_APP_REQUEST_SIZE = 4;
        public static final int PRIORITY_DEFAULT_REFRESH_RATE = 0;
        public static final int PRIORITY_FLICKER = 1;
        public static final int PRIORITY_LOW_POWER_MODE = 6;
        public static final int PRIORITY_USER_SETTING_MIN_REFRESH_RATE = 2;
        public static final int PRIORITY_USER_SETTING_PEAK_REFRESH_RATE = 5;
        public final int height;
        public final RefreshRateRange refreshRateRange;
        public final int width;

        public static Vote forRefreshRates(float minRefreshRate, float maxRefreshRate) {
            return new Vote(-1, -1, minRefreshRate, maxRefreshRate);
        }

        public static Vote forSize(int width, int height) {
            return new Vote(width, height, 0.0f, Float.POSITIVE_INFINITY);
        }

        private Vote(int width, int height, float minRefreshRate, float maxRefreshRate) {
            this.width = width;
            this.height = height;
            this.refreshRateRange = new RefreshRateRange(minRefreshRate, maxRefreshRate);
        }

        public static String priorityToString(int priority) {
            switch (priority) {
                case 0:
                    return "PRIORITY_DEFAULT_REFRESH_RATE";
                case 1:
                    return "PRIORITY_FLICKER";
                case 2:
                    return "PRIORITY_USER_SETTING_MIN_REFRESH_RATE";
                case 3:
                    return "PRIORITY_APP_REQUEST_REFRESH_RATE";
                case 4:
                    return "PRIORITY_APP_REQUEST_SIZE";
                case 5:
                    return "PRIORITY_USER_SETTING_PEAK_REFRESH_RATE";
                case 6:
                    return "PRIORITY_LOW_POWER_MODE";
                default:
                    return Integer.toString(priority);
            }
        }

        public String toString() {
            return "Vote{width=" + this.width + ", height=" + this.height + ", minRefreshRate=" + this.refreshRateRange.min + ", maxRefreshRate=" + this.refreshRateRange.max + "}";
        }
    }

    final class SettingsObserver extends ContentObserver {
        private final Context mContext;
        private float mDefaultPeakRefreshRate;
        private float mDefaultRefreshRate;
        private final Uri mLowPowerModeSetting;
        private final Uri mMinRefreshRateSetting;
        private final Uri mPeakRefreshRateSetting;

        SettingsObserver(Context context, Handler handler) {
            super(handler);
            this.mPeakRefreshRateSetting = Settings.System.getUriFor("peak_refresh_rate");
            this.mMinRefreshRateSetting = Settings.System.getUriFor("min_refresh_rate");
            this.mLowPowerModeSetting = Settings.Global.getUriFor("low_power");
            this.mContext = context;
            this.mDefaultPeakRefreshRate = context.getResources().getInteger(R.integer.config_datause_polling_period_sec);
            this.mDefaultRefreshRate = context.getResources().getInteger(R.integer.config_datause_threshold_bytes);
        }

        public void observe() {
            ContentResolver cr = this.mContext.getContentResolver();
            DisplayModeDirector.this.mInjector.registerPeakRefreshRateObserver(cr, this);
            cr.registerContentObserver(this.mMinRefreshRateSetting, false, this, 0);
            cr.registerContentObserver(this.mLowPowerModeSetting, false, this, 0);
            Float deviceConfigDefaultPeakRefresh = DisplayModeDirector.this.mDeviceConfigDisplaySettings.getDefaultPeakRefreshRate();
            if (deviceConfigDefaultPeakRefresh != null) {
                this.mDefaultPeakRefreshRate = deviceConfigDefaultPeakRefresh.floatValue();
            }
            synchronized (DisplayModeDirector.this.mLock) {
                updateRefreshRateSettingLocked();
                updateLowPowerModeSettingLocked();
            }
        }

        public void setDefaultRefreshRate(float refreshRate) {
            synchronized (DisplayModeDirector.this.mLock) {
                this.mDefaultRefreshRate = refreshRate;
                updateRefreshRateSettingLocked();
            }
        }

        public void onDeviceConfigDefaultPeakRefreshRateChanged(Float defaultPeakRefreshRate) {
            if (defaultPeakRefreshRate == null) {
                defaultPeakRefreshRate = Float.valueOf(this.mContext.getResources().getInteger(R.integer.config_datause_polling_period_sec));
            }
            if (this.mDefaultPeakRefreshRate != defaultPeakRefreshRate.floatValue()) {
                synchronized (DisplayModeDirector.this.mLock) {
                    this.mDefaultPeakRefreshRate = defaultPeakRefreshRate.floatValue();
                    updateRefreshRateSettingLocked();
                }
            }
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            synchronized (DisplayModeDirector.this.mLock) {
                if (this.mPeakRefreshRateSetting.equals(uri) || this.mMinRefreshRateSetting.equals(uri)) {
                    updateRefreshRateSettingLocked();
                } else if (this.mLowPowerModeSetting.equals(uri)) {
                    updateLowPowerModeSettingLocked();
                }
            }
        }

        private void updateLowPowerModeSettingLocked() {
            Vote vote;
            boolean inLowPowerMode = Settings.Global.getInt(this.mContext.getContentResolver(), "low_power", 0) != 0;
            if (inLowPowerMode) {
                vote = Vote.forRefreshRates(0.0f, 60.0f);
            } else {
                vote = null;
            }
            DisplayModeDirector.this.updateVoteLocked(6, vote);
            DisplayModeDirector.this.mBrightnessObserver.onLowPowerModeEnabledLocked(inLowPowerMode);
        }

        private void updateRefreshRateSettingLocked() {
            float minRefreshRate = Settings.System.getFloat(this.mContext.getContentResolver(), "min_refresh_rate", 0.0f);
            float peakRefreshRate = Settings.System.getFloat(this.mContext.getContentResolver(), "peak_refresh_rate", this.mDefaultPeakRefreshRate);
            updateRefreshRateSettingLocked(minRefreshRate, peakRefreshRate, this.mDefaultRefreshRate);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateRefreshRateSettingLocked(float minRefreshRate, float peakRefreshRate, float defaultRefreshRate) {
            Vote peakVote;
            float maxRefreshRate;
            if (peakRefreshRate != 0.0f) {
                peakVote = Vote.forRefreshRates(0.0f, Math.max(minRefreshRate, peakRefreshRate));
            } else {
                peakVote = null;
            }
            DisplayModeDirector.this.updateVoteLocked(5, peakVote);
            DisplayModeDirector.this.updateVoteLocked(2, Vote.forRefreshRates(minRefreshRate, Float.POSITIVE_INFINITY));
            Vote defaultVote = defaultRefreshRate != 0.0f ? Vote.forRefreshRates(0.0f, defaultRefreshRate) : null;
            DisplayModeDirector.this.updateVoteLocked(0, defaultVote);
            if (peakRefreshRate == 0.0f && defaultRefreshRate == 0.0f) {
                Slog.e(DisplayModeDirector.TAG, "Default and peak refresh rates are both 0. One of them should be set to a valid value.");
                maxRefreshRate = minRefreshRate;
            } else if (peakRefreshRate == 0.0f) {
                maxRefreshRate = defaultRefreshRate;
            } else if (defaultRefreshRate == 0.0f) {
                maxRefreshRate = peakRefreshRate;
            } else {
                maxRefreshRate = Math.min(defaultRefreshRate, peakRefreshRate);
            }
            DisplayModeDirector.this.mBrightnessObserver.onRefreshRateSettingChangedLocked(minRefreshRate, maxRefreshRate);
        }

        public void dumpLocked(PrintWriter pw) {
            pw.println("  SettingsObserver");
            pw.println("    mDefaultRefreshRate: " + this.mDefaultRefreshRate);
            pw.println("    mDefaultPeakRefreshRate: " + this.mDefaultPeakRefreshRate);
        }
    }

    final class AppRequestObserver {
        private SparseArray<Display.Mode> mAppRequestedModeByDisplay = new SparseArray<>();

        AppRequestObserver() {
        }

        public void setAppRequestedMode(int displayId, int modeId) {
            synchronized (DisplayModeDirector.this.mLock) {
                setAppRequestedModeLocked(displayId, modeId);
            }
        }

        private void setAppRequestedModeLocked(int displayId, int modeId) {
            Vote refreshRateVote;
            Vote sizeVote;
            Display.Mode requestedMode = findModeByIdLocked(displayId, modeId);
            if (Objects.equals(requestedMode, this.mAppRequestedModeByDisplay.get(displayId))) {
                return;
            }
            if (requestedMode != null) {
                this.mAppRequestedModeByDisplay.put(displayId, requestedMode);
                float refreshRate = requestedMode.getRefreshRate();
                refreshRateVote = Vote.forRefreshRates(refreshRate, refreshRate);
                sizeVote = Vote.forSize(requestedMode.getPhysicalWidth(), requestedMode.getPhysicalHeight());
            } else {
                this.mAppRequestedModeByDisplay.remove(displayId);
                refreshRateVote = null;
                sizeVote = null;
            }
            DisplayModeDirector.this.updateVoteLocked(displayId, 3, refreshRateVote);
            DisplayModeDirector.this.updateVoteLocked(displayId, 4, sizeVote);
        }

        private Display.Mode findModeByIdLocked(int displayId, int modeId) {
            Display.Mode[] modes = (Display.Mode[]) DisplayModeDirector.this.mSupportedModesByDisplay.get(displayId);
            if (modes == null) {
                return null;
            }
            for (Display.Mode mode : modes) {
                if (mode.getModeId() == modeId) {
                    return mode;
                }
            }
            return null;
        }

        public void dumpLocked(PrintWriter pw) {
            pw.println("  AppRequestObserver");
            pw.println("    mAppRequestedModeByDisplay:");
            for (int i = 0; i < this.mAppRequestedModeByDisplay.size(); i++) {
                int id = this.mAppRequestedModeByDisplay.keyAt(i);
                Display.Mode mode = this.mAppRequestedModeByDisplay.valueAt(i);
                pw.println("    " + id + " -> " + mode);
            }
        }
    }

    private final class DisplayObserver implements DisplayManager.DisplayListener {
        private final Context mContext;
        private final Handler mHandler;

        DisplayObserver(Context context, Handler handler) {
            this.mContext = context;
            this.mHandler = handler;
        }

        public void observe() {
            DisplayManager dm = (DisplayManager) this.mContext.getSystemService(DisplayManager.class);
            dm.registerDisplayListener(this, this.mHandler);
            SparseArray<Display.Mode[]> modes = new SparseArray<>();
            SparseArray<Display.Mode> defaultModes = new SparseArray<>();
            DisplayInfo info = new DisplayInfo();
            Display[] displays = dm.getDisplays();
            for (Display d : displays) {
                int displayId = d.getDisplayId();
                d.getDisplayInfo(info);
                modes.put(displayId, info.supportedModes);
                defaultModes.put(displayId, info.getDefaultMode());
            }
            synchronized (DisplayModeDirector.this.mLock) {
                int size = modes.size();
                for (int i = 0; i < size; i++) {
                    DisplayModeDirector.this.mSupportedModesByDisplay.put(modes.keyAt(i), modes.valueAt(i));
                    DisplayModeDirector.this.mDefaultModeByDisplay.put(defaultModes.keyAt(i), defaultModes.valueAt(i));
                }
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int displayId) {
            updateDisplayModes(displayId);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int displayId) {
            synchronized (DisplayModeDirector.this.mLock) {
                DisplayModeDirector.this.mSupportedModesByDisplay.remove(displayId);
                DisplayModeDirector.this.mDefaultModeByDisplay.remove(displayId);
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int displayId) {
            updateDisplayModes(displayId);
            DisplayModeDirector.this.mBrightnessObserver.onDisplayChanged(displayId);
        }

        private void updateDisplayModes(int displayId) {
            Display d = ((DisplayManager) this.mContext.getSystemService(DisplayManager.class)).getDisplay(displayId);
            if (d == null) {
                return;
            }
            DisplayInfo info = new DisplayInfo();
            d.getDisplayInfo(info);
            boolean changed = false;
            synchronized (DisplayModeDirector.this.mLock) {
                if (!Arrays.equals((Object[]) DisplayModeDirector.this.mSupportedModesByDisplay.get(displayId), info.supportedModes)) {
                    DisplayModeDirector.this.mSupportedModesByDisplay.put(displayId, info.supportedModes);
                    changed = true;
                }
                if (!Objects.equals(DisplayModeDirector.this.mDefaultModeByDisplay.get(displayId), info.getDefaultMode())) {
                    changed = true;
                    DisplayModeDirector.this.mDefaultModeByDisplay.put(displayId, info.getDefaultMode());
                }
                if (changed) {
                    DisplayModeDirector.this.notifyDesiredDisplayModeSpecsChangedLocked();
                }
            }
        }
    }

    public class BrightnessObserver extends ContentObserver {
        private static final int LIGHT_SENSOR_RATE_MS = 250;
        private AmbientFilter mAmbientFilter;
        private float mAmbientLux;
        private int mBrightness;
        private final Context mContext;
        private int mDefaultDisplayState;
        private int[] mHighAmbientBrightnessThresholds;
        private int[] mHighDisplayBrightnessThresholds;
        private Sensor mLightSensor;
        private LightSensorEventListener mLightSensorListener;
        private boolean mLoggingEnabled;
        private int[] mLowAmbientBrightnessThresholds;
        private int[] mLowDisplayBrightnessThresholds;
        private boolean mLowPowerModeEnabled;
        private boolean mRefreshRateChangeable;
        private int mRefreshRateInHighZone;
        private int mRefreshRateInLowZone;
        private SensorManager mSensorManager;
        private boolean mShouldObserveAmbientHighChange;
        private boolean mShouldObserveAmbientLowChange;
        private boolean mShouldObserveDisplayHighChange;
        private boolean mShouldObserveDisplayLowChange;

        BrightnessObserver(Context context, Handler handler) {
            super(handler);
            this.mLightSensorListener = new LightSensorEventListener();
            this.mAmbientLux = -1.0f;
            this.mBrightness = -1;
            this.mDefaultDisplayState = 0;
            this.mRefreshRateChangeable = false;
            this.mLowPowerModeEnabled = false;
            this.mContext = context;
            this.mLowDisplayBrightnessThresholds = context.getResources().getIntArray(R.array.config_bg_current_drain_high_threshold_to_restricted_bucket);
            int[] intArray = context.getResources().getIntArray(R.array.config_autoBrightnessLevelsIdle);
            this.mLowAmbientBrightnessThresholds = intArray;
            if (this.mLowDisplayBrightnessThresholds.length != intArray.length) {
                throw new RuntimeException("display low brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds=" + Arrays.toString(this.mLowDisplayBrightnessThresholds) + ", ambientBrightnessThresholds=" + Arrays.toString(this.mLowAmbientBrightnessThresholds));
            }
            this.mHighDisplayBrightnessThresholds = context.getResources().getIntArray(R.array.config_displayWhiteBalanceDecreaseThresholds);
            int[] intArray2 = context.getResources().getIntArray(R.array.config_displayWhiteBalanceBaseThresholds);
            this.mHighAmbientBrightnessThresholds = intArray2;
            if (this.mHighDisplayBrightnessThresholds.length != intArray2.length) {
                throw new RuntimeException("display high brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds=" + Arrays.toString(this.mHighDisplayBrightnessThresholds) + ", ambientBrightnessThresholds=" + Arrays.toString(this.mHighAmbientBrightnessThresholds));
            }
            this.mRefreshRateInHighZone = context.getResources().getInteger(R.integer.config_defaultVibrationAmplitude);
        }

        int getRefreshRateInLowZone() {
            return this.mRefreshRateInLowZone;
        }

        int[] getLowDisplayBrightnessThresholds() {
            return this.mLowDisplayBrightnessThresholds;
        }

        int[] getLowAmbientBrightnessThresholds() {
            return this.mLowAmbientBrightnessThresholds;
        }

        public void registerLightSensor(SensorManager sensorManager, Sensor lightSensor) {
            this.mSensorManager = sensorManager;
            this.mLightSensor = lightSensor;
            sensorManager.registerListener(this.mLightSensorListener, lightSensor, 250000, DisplayModeDirector.this.mHandler);
        }

        public void observe(SensorManager sensorManager) {
            this.mSensorManager = sensorManager;
            ContentResolver cr = this.mContext.getContentResolver();
            this.mBrightness = Settings.System.getIntForUser(cr, "screen_brightness", -1, cr.getUserId());
            int[] lowDisplayBrightnessThresholds = DisplayModeDirector.this.mDeviceConfigDisplaySettings.getLowDisplayBrightnessThresholds();
            int[] lowAmbientBrightnessThresholds = DisplayModeDirector.this.mDeviceConfigDisplaySettings.getLowAmbientBrightnessThresholds();
            if (lowDisplayBrightnessThresholds != null && lowAmbientBrightnessThresholds != null && lowDisplayBrightnessThresholds.length == lowAmbientBrightnessThresholds.length) {
                this.mLowDisplayBrightnessThresholds = lowDisplayBrightnessThresholds;
                this.mLowAmbientBrightnessThresholds = lowAmbientBrightnessThresholds;
            }
            int[] highDisplayBrightnessThresholds = DisplayModeDirector.this.mDeviceConfigDisplaySettings.getHighDisplayBrightnessThresholds();
            int[] highAmbientBrightnessThresholds = DisplayModeDirector.this.mDeviceConfigDisplaySettings.getHighAmbientBrightnessThresholds();
            if (highDisplayBrightnessThresholds != null && highAmbientBrightnessThresholds != null && highDisplayBrightnessThresholds.length == highAmbientBrightnessThresholds.length) {
                this.mHighDisplayBrightnessThresholds = highDisplayBrightnessThresholds;
                this.mHighAmbientBrightnessThresholds = highAmbientBrightnessThresholds;
            }
            this.mRefreshRateInLowZone = DisplayModeDirector.this.mDeviceConfigDisplaySettings.getRefreshRateInLowZone();
            this.mRefreshRateInHighZone = DisplayModeDirector.this.mDeviceConfigDisplaySettings.getRefreshRateInHighZone();
            restartObserver();
            DisplayModeDirector.this.mDeviceConfigDisplaySettings.startListening();
        }

        public void setLoggingEnabled(boolean loggingEnabled) {
            if (this.mLoggingEnabled == loggingEnabled) {
                return;
            }
            this.mLoggingEnabled = loggingEnabled;
            this.mLightSensorListener.setLoggingEnabled(loggingEnabled);
        }

        public void onRefreshRateSettingChangedLocked(float min, float max) {
            boolean changeable = max - min > 1.0f && max > 60.0f;
            if (this.mRefreshRateChangeable != changeable) {
                this.mRefreshRateChangeable = changeable;
                updateSensorStatus();
                if (!changeable) {
                    DisplayModeDirector.this.updateVoteLocked(1, null);
                }
            }
        }

        public void onLowPowerModeEnabledLocked(boolean b) {
            if (this.mLowPowerModeEnabled != b) {
                this.mLowPowerModeEnabled = b;
                updateSensorStatus();
            }
        }

        public void onDeviceConfigLowBrightnessThresholdsChanged(int[] displayThresholds, int[] ambientThresholds) {
            if (displayThresholds != null && ambientThresholds != null && displayThresholds.length == ambientThresholds.length) {
                this.mLowDisplayBrightnessThresholds = displayThresholds;
                this.mLowAmbientBrightnessThresholds = ambientThresholds;
            } else {
                this.mLowDisplayBrightnessThresholds = this.mContext.getResources().getIntArray(R.array.config_bg_current_drain_high_threshold_to_restricted_bucket);
                this.mLowAmbientBrightnessThresholds = this.mContext.getResources().getIntArray(R.array.config_autoBrightnessLevelsIdle);
            }
            restartObserver();
        }

        public void onDeviceConfigRefreshRateInLowZoneChanged(int refreshRate) {
            if (refreshRate != this.mRefreshRateInLowZone) {
                this.mRefreshRateInLowZone = refreshRate;
                restartObserver();
            }
        }

        public void onDeviceConfigHighBrightnessThresholdsChanged(int[] displayThresholds, int[] ambientThresholds) {
            if (displayThresholds != null && ambientThresholds != null && displayThresholds.length == ambientThresholds.length) {
                this.mHighDisplayBrightnessThresholds = displayThresholds;
                this.mHighAmbientBrightnessThresholds = ambientThresholds;
            } else {
                this.mHighDisplayBrightnessThresholds = this.mContext.getResources().getIntArray(R.array.config_displayWhiteBalanceDecreaseThresholds);
                this.mHighAmbientBrightnessThresholds = this.mContext.getResources().getIntArray(R.array.config_displayWhiteBalanceBaseThresholds);
            }
            restartObserver();
        }

        public void onDeviceConfigRefreshRateInHighZoneChanged(int refreshRate) {
            if (refreshRate != this.mRefreshRateInHighZone) {
                this.mRefreshRateInHighZone = refreshRate;
                restartObserver();
            }
        }

        public void dumpLocked(PrintWriter pw) {
            pw.println("  BrightnessObserver");
            pw.println("    mAmbientLux: " + this.mAmbientLux);
            pw.println("    mBrightness: " + this.mBrightness);
            pw.println("    mDefaultDisplayState: " + this.mDefaultDisplayState);
            pw.println("    mLowPowerModeEnabled: " + this.mLowPowerModeEnabled);
            pw.println("    mRefreshRateChangeable: " + this.mRefreshRateChangeable);
            pw.println("    mShouldObserveDisplayLowChange: " + this.mShouldObserveDisplayLowChange);
            pw.println("    mShouldObserveAmbientLowChange: " + this.mShouldObserveAmbientLowChange);
            pw.println("    mRefreshRateInLowZone: " + this.mRefreshRateInLowZone);
            for (int d : this.mLowDisplayBrightnessThresholds) {
                pw.println("    mDisplayLowBrightnessThreshold: " + d);
            }
            for (int d2 : this.mLowAmbientBrightnessThresholds) {
                pw.println("    mAmbientLowBrightnessThreshold: " + d2);
            }
            pw.println("    mShouldObserveDisplayHighChange: " + this.mShouldObserveDisplayHighChange);
            pw.println("    mShouldObserveAmbientHighChange: " + this.mShouldObserveAmbientHighChange);
            pw.println("    mRefreshRateInHighZone: " + this.mRefreshRateInHighZone);
            int[] iArr = this.mHighDisplayBrightnessThresholds;
            int length = iArr.length;
            for (int i = 0; i < length; i++) {
                int d3 = iArr[i];
                pw.println("    mDisplayHighBrightnessThresholds: " + d3);
            }
            for (int d4 : this.mHighAmbientBrightnessThresholds) {
                pw.println("    mAmbientHighBrightnessThresholds: " + d4);
            }
            this.mLightSensorListener.dumpLocked(pw);
            if (this.mAmbientFilter != null) {
                PrintWriter indentingPrintWriter = new IndentingPrintWriter(pw, "  ");
                indentingPrintWriter.setIndent("    ");
                this.mAmbientFilter.dump(indentingPrintWriter);
            }
        }

        public void onDisplayChanged(int displayId) {
            if (displayId == 0) {
                updateDefaultDisplayState();
            }
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            synchronized (DisplayModeDirector.this.mLock) {
                ContentResolver cr = this.mContext.getContentResolver();
                int brightness = Settings.System.getIntForUser(cr, "screen_brightness", -1, cr.getUserId());
                if (brightness != this.mBrightness) {
                    this.mBrightness = brightness;
                    onBrightnessChangedLocked();
                }
            }
        }

        private void restartObserver() {
            ContentResolver cr = this.mContext.getContentResolver();
            if (this.mRefreshRateInLowZone > 0) {
                this.mShouldObserveDisplayLowChange = hasValidThreshold(this.mLowDisplayBrightnessThresholds);
                this.mShouldObserveAmbientLowChange = hasValidThreshold(this.mLowAmbientBrightnessThresholds);
            } else {
                this.mShouldObserveDisplayLowChange = false;
                this.mShouldObserveAmbientLowChange = false;
            }
            if (this.mRefreshRateInHighZone > 0) {
                this.mShouldObserveDisplayHighChange = hasValidThreshold(this.mHighDisplayBrightnessThresholds);
                this.mShouldObserveAmbientHighChange = hasValidThreshold(this.mHighAmbientBrightnessThresholds);
            } else {
                this.mShouldObserveDisplayHighChange = false;
                this.mShouldObserveAmbientHighChange = false;
            }
            if (this.mShouldObserveDisplayLowChange || this.mShouldObserveDisplayHighChange) {
                DisplayModeDirector.this.mInjector.unregisterBrightnessObserver(cr, this);
                DisplayModeDirector.this.mInjector.registerBrightnessObserver(cr, this);
            } else {
                DisplayModeDirector.this.mInjector.unregisterBrightnessObserver(cr, this);
            }
            if (this.mShouldObserveAmbientLowChange || this.mShouldObserveAmbientHighChange) {
                Resources resources = this.mContext.getResources();
                String lightSensorType = resources.getString(R.string.config_factoryResetPackage);
                Sensor lightSensor = null;
                if (!TextUtils.isEmpty(lightSensorType)) {
                    List<Sensor> sensors = this.mSensorManager.getSensorList(-1);
                    for (int i = 0; i < sensors.size(); i++) {
                        Sensor sensor = sensors.get(i);
                        if (lightSensorType.equals(sensor.getStringType())) {
                            lightSensor = sensor;
                            break;
                        }
                    }
                }
                if (lightSensor == null) {
                    lightSensor = this.mSensorManager.getDefaultSensor(5);
                }
                if (lightSensor != null) {
                    Resources res = this.mContext.getResources();
                    this.mAmbientFilter = AmbientFilterFactory.createBrightnessFilter(DisplayModeDirector.TAG, res);
                    this.mLightSensor = lightSensor;
                }
            } else {
                this.mAmbientFilter = null;
                this.mLightSensor = null;
            }
            if (this.mRefreshRateChangeable) {
                updateSensorStatus();
                synchronized (DisplayModeDirector.this.mLock) {
                    onBrightnessChangedLocked();
                }
            }
        }

        private boolean hasValidThreshold(int[] a) {
            for (int d : a) {
                if (d >= 0) {
                    return true;
                }
            }
            return false;
        }

        private boolean isInsideLowZone(int brightness, float lux) {
            int i = 0;
            while (true) {
                int[] iArr = this.mLowDisplayBrightnessThresholds;
                if (i < iArr.length) {
                    int disp = iArr[i];
                    int ambi = this.mLowAmbientBrightnessThresholds[i];
                    if (disp >= 0 && ambi >= 0) {
                        if (brightness <= disp && lux <= ambi) {
                            return true;
                        }
                    } else if (disp >= 0) {
                        if (brightness <= disp) {
                            return true;
                        }
                    } else if (ambi >= 0 && lux <= ambi) {
                        return true;
                    }
                    i++;
                } else {
                    return false;
                }
            }
        }

        private boolean isInsideHighZone(int brightness, float lux) {
            int i = 0;
            while (true) {
                int[] iArr = this.mHighDisplayBrightnessThresholds;
                if (i < iArr.length) {
                    int disp = iArr[i];
                    int ambi = this.mHighAmbientBrightnessThresholds[i];
                    if (disp >= 0 && ambi >= 0) {
                        if (brightness >= disp && lux >= ambi) {
                            return true;
                        }
                    } else if (disp >= 0) {
                        if (brightness >= disp) {
                            return true;
                        }
                    } else if (ambi >= 0 && lux >= ambi) {
                        return true;
                    }
                    i++;
                } else {
                    return false;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onBrightnessChangedLocked() {
            Vote vote = null;
            if (this.mBrightness < 0) {
                return;
            }
            boolean insideHighZone = false;
            boolean insideLowZone = hasValidLowZone() && isInsideLowZone(this.mBrightness, this.mAmbientLux);
            if (insideLowZone) {
                int i = this.mRefreshRateInLowZone;
                vote = Vote.forRefreshRates(i, i);
            }
            if (hasValidHighZone() && isInsideHighZone(this.mBrightness, this.mAmbientLux)) {
                insideHighZone = true;
            }
            if (insideHighZone) {
                int i2 = this.mRefreshRateInHighZone;
                vote = Vote.forRefreshRates(i2, i2);
            }
            if (this.mLoggingEnabled) {
                Slog.d(DisplayModeDirector.TAG, "Display brightness " + this.mBrightness + ", ambient lux " + this.mAmbientLux + ", Vote " + vote);
            }
            DisplayModeDirector.this.updateVoteLocked(1, vote);
        }

        private boolean hasValidLowZone() {
            return this.mRefreshRateInLowZone > 0 && (this.mShouldObserveDisplayLowChange || this.mShouldObserveAmbientLowChange);
        }

        private boolean hasValidHighZone() {
            return this.mRefreshRateInHighZone > 0 && (this.mShouldObserveDisplayHighChange || this.mShouldObserveAmbientHighChange);
        }

        private void updateDefaultDisplayState() {
            Display display = ((DisplayManager) this.mContext.getSystemService(DisplayManager.class)).getDisplay(0);
            if (display == null) {
                return;
            }
            setDefaultDisplayState(display.getState());
        }

        public void setDefaultDisplayState(int state) {
            if (this.mLoggingEnabled) {
                Slog.d(DisplayModeDirector.TAG, "setDefaultDisplayState: mDefaultDisplayState = " + this.mDefaultDisplayState + ", state = " + state);
            }
            if (this.mDefaultDisplayState != state) {
                this.mDefaultDisplayState = state;
                updateSensorStatus();
            }
        }

        private void updateSensorStatus() {
            if (this.mSensorManager == null || this.mLightSensorListener == null) {
                return;
            }
            if (this.mLoggingEnabled) {
                Slog.d(DisplayModeDirector.TAG, "updateSensorStatus: mShouldObserveAmbientLowChange = " + this.mShouldObserveAmbientLowChange + ", mShouldObserveAmbientHighChange = " + this.mShouldObserveAmbientHighChange);
                Slog.d(DisplayModeDirector.TAG, "updateSensorStatus: mLowPowerModeEnabled = " + this.mLowPowerModeEnabled + ", mRefreshRateChangeable = " + this.mRefreshRateChangeable);
            }
            if ((this.mShouldObserveAmbientLowChange || this.mShouldObserveAmbientHighChange) && isDeviceActive() && !this.mLowPowerModeEnabled && this.mRefreshRateChangeable) {
                this.mSensorManager.registerListener(this.mLightSensorListener, this.mLightSensor, 250000, DisplayModeDirector.this.mHandler);
                if (this.mLoggingEnabled) {
                    Slog.d(DisplayModeDirector.TAG, "updateSensorStatus: registerListener");
                    return;
                }
                return;
            }
            this.mLightSensorListener.removeCallbacks();
            this.mSensorManager.unregisterListener(this.mLightSensorListener);
            if (this.mLoggingEnabled) {
                Slog.d(DisplayModeDirector.TAG, "updateSensorStatus: unregisterListener");
            }
        }

        private boolean isDeviceActive() {
            return this.mDefaultDisplayState == 2;
        }

        private final class LightSensorEventListener implements SensorEventListener {
            private static final int INJECT_EVENTS_INTERVAL_MS = 250;
            private Runnable mInjectSensorEventRunnable;
            private float mLastSensorData;
            private boolean mLoggingEnabled;
            private long mTimestamp;

            private LightSensorEventListener() {
                this.mInjectSensorEventRunnable = new Runnable() { // from class: com.android.server.display.DisplayModeDirector.BrightnessObserver.LightSensorEventListener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        long now = SystemClock.uptimeMillis();
                        LightSensorEventListener.this.processSensorData(now);
                        LightSensorEventListener lightSensorEventListener = LightSensorEventListener.this;
                        if (!lightSensorEventListener.isDifferentZone(lightSensorEventListener.mLastSensorData, BrightnessObserver.this.mAmbientLux, BrightnessObserver.this.mLowAmbientBrightnessThresholds)) {
                            LightSensorEventListener lightSensorEventListener2 = LightSensorEventListener.this;
                            if (!lightSensorEventListener2.isDifferentZone(lightSensorEventListener2.mLastSensorData, BrightnessObserver.this.mAmbientLux, BrightnessObserver.this.mHighAmbientBrightnessThresholds)) {
                                return;
                            }
                        }
                        DisplayModeDirector.this.mHandler.postDelayed(LightSensorEventListener.this.mInjectSensorEventRunnable, 250L);
                    }
                };
            }

            public void dumpLocked(PrintWriter pw) {
                pw.println("    mLastSensorData: " + this.mLastSensorData);
                pw.println("    mTimestamp: " + formatTimestamp(this.mTimestamp));
            }

            public void setLoggingEnabled(boolean loggingEnabled) {
                if (this.mLoggingEnabled == loggingEnabled) {
                    return;
                }
                this.mLoggingEnabled = loggingEnabled;
            }

            @Override // android.hardware.SensorEventListener
            public void onSensorChanged(SensorEvent event) {
                this.mLastSensorData = event.values[0];
                if (this.mLoggingEnabled) {
                    Slog.d(DisplayModeDirector.TAG, "On sensor changed: " + this.mLastSensorData);
                }
                boolean lowZoneChanged = isDifferentZone(this.mLastSensorData, BrightnessObserver.this.mAmbientLux, BrightnessObserver.this.mLowAmbientBrightnessThresholds);
                boolean highZoneChanged = isDifferentZone(this.mLastSensorData, BrightnessObserver.this.mAmbientLux, BrightnessObserver.this.mHighAmbientBrightnessThresholds);
                if (((lowZoneChanged && this.mLastSensorData < BrightnessObserver.this.mAmbientLux) || (highZoneChanged && this.mLastSensorData > BrightnessObserver.this.mAmbientLux)) && BrightnessObserver.this.mAmbientFilter != null) {
                    BrightnessObserver.this.mAmbientFilter.clear();
                }
                long now = SystemClock.uptimeMillis();
                this.mTimestamp = System.currentTimeMillis();
                if (BrightnessObserver.this.mAmbientFilter != null) {
                    BrightnessObserver.this.mAmbientFilter.addValue(now, this.mLastSensorData);
                }
                DisplayModeDirector.this.mHandler.removeCallbacks(this.mInjectSensorEventRunnable);
                processSensorData(now);
                if ((lowZoneChanged && this.mLastSensorData > BrightnessObserver.this.mAmbientLux) || (highZoneChanged && this.mLastSensorData < BrightnessObserver.this.mAmbientLux)) {
                    DisplayModeDirector.this.mHandler.postDelayed(this.mInjectSensorEventRunnable, 250L);
                }
            }

            @Override // android.hardware.SensorEventListener
            public void onAccuracyChanged(Sensor sensor, int accuracy) {
            }

            public void removeCallbacks() {
                DisplayModeDirector.this.mHandler.removeCallbacks(this.mInjectSensorEventRunnable);
            }

            private String formatTimestamp(long time) {
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
                return dateFormat.format(new Date(time));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void processSensorData(long now) {
                if (BrightnessObserver.this.mAmbientFilter != null) {
                    BrightnessObserver brightnessObserver = BrightnessObserver.this;
                    brightnessObserver.mAmbientLux = brightnessObserver.mAmbientFilter.getEstimate(now);
                } else {
                    BrightnessObserver.this.mAmbientLux = this.mLastSensorData;
                }
                synchronized (DisplayModeDirector.this.mLock) {
                    BrightnessObserver.this.onBrightnessChangedLocked();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean isDifferentZone(float lux1, float lux2, int[] luxThresholds) {
                for (float boundary : luxThresholds) {
                    if (lux1 <= boundary && lux2 > boundary) {
                        return true;
                    }
                    if (lux1 > boundary && lux2 <= boundary) {
                        return true;
                    }
                }
                return false;
            }
        }
    }

    private class DeviceConfigDisplaySettings implements DeviceConfig.OnPropertiesChangedListener {
        public DeviceConfigDisplaySettings() {
        }

        public void startListening() {
            DisplayModeDirector.this.mDeviceConfig.addOnPropertiesChangedListener("display_manager", BackgroundThread.getExecutor(), this);
        }

        public int[] getLowDisplayBrightnessThresholds() {
            return getIntArrayProperty("peak_refresh_rate_brightness_thresholds");
        }

        public int[] getLowAmbientBrightnessThresholds() {
            return getIntArrayProperty("peak_refresh_rate_ambient_thresholds");
        }

        public int getRefreshRateInLowZone() {
            int defaultRefreshRateInZone = DisplayModeDirector.this.mContext.getResources().getInteger(R.integer.config_datause_throttle_kbitsps);
            int refreshRate = DisplayModeDirector.this.mDeviceConfig.getInt("display_manager", "refresh_rate_in_zone", defaultRefreshRateInZone);
            return refreshRate;
        }

        public int[] getHighDisplayBrightnessThresholds() {
            return getIntArrayProperty("fixed_refresh_rate_high_display_brightness_thresholds");
        }

        public int[] getHighAmbientBrightnessThresholds() {
            return getIntArrayProperty("fixed_refresh_rate_high_ambient_brightness_thresholds");
        }

        public int getRefreshRateInHighZone() {
            int defaultRefreshRateInZone = DisplayModeDirector.this.mContext.getResources().getInteger(R.integer.config_defaultVibrationAmplitude);
            int refreshRate = DisplayModeDirector.this.mDeviceConfig.getInt("display_manager", "refresh_rate_in_high_zone", defaultRefreshRateInZone);
            return refreshRate;
        }

        public Float getDefaultPeakRefreshRate() {
            float defaultPeakRefreshRate = DisplayModeDirector.this.mDeviceConfig.getFloat("display_manager", "peak_refresh_rate_default", -1.0f);
            if (defaultPeakRefreshRate == -1.0f) {
                return null;
            }
            return Float.valueOf(defaultPeakRefreshRate);
        }

        public void onPropertiesChanged(DeviceConfig.Properties properties) {
            Float defaultPeakRefreshRate = getDefaultPeakRefreshRate();
            DisplayModeDirector.this.mHandler.obtainMessage(3, defaultPeakRefreshRate).sendToTarget();
            int[] lowDisplayBrightnessThresholds = getLowDisplayBrightnessThresholds();
            int[] lowAmbientBrightnessThresholds = getLowAmbientBrightnessThresholds();
            int refreshRateInLowZone = getRefreshRateInLowZone();
            DisplayModeDirector.this.mHandler.obtainMessage(2, new Pair(lowDisplayBrightnessThresholds, lowAmbientBrightnessThresholds)).sendToTarget();
            DisplayModeDirector.this.mHandler.obtainMessage(4, refreshRateInLowZone, 0).sendToTarget();
            int[] highDisplayBrightnessThresholds = getHighDisplayBrightnessThresholds();
            int[] highAmbientBrightnessThresholds = getHighAmbientBrightnessThresholds();
            int refreshRateInHighZone = getRefreshRateInHighZone();
            DisplayModeDirector.this.mHandler.obtainMessage(6, new Pair(highDisplayBrightnessThresholds, highAmbientBrightnessThresholds)).sendToTarget();
            DisplayModeDirector.this.mHandler.obtainMessage(5, refreshRateInHighZone, 0).sendToTarget();
        }

        private int[] getIntArrayProperty(String prop) {
            String strArray = DisplayModeDirector.this.mDeviceConfig.getString("display_manager", prop, null);
            if (strArray != null) {
                return parseIntArray(strArray);
            }
            return null;
        }

        private int[] parseIntArray(String strArray) {
            String[] items = strArray.split(",");
            int[] array = new int[items.length];
            for (int i = 0; i < array.length; i++) {
                try {
                    array[i] = Integer.parseInt(items[i]);
                } catch (NumberFormatException e) {
                    Slog.e(DisplayModeDirector.TAG, "Incorrect format for array: '" + strArray + "'", e);
                    return null;
                }
            }
            return array;
        }
    }

    static class RealInjector implements Injector {
        RealInjector() {
        }

        @Override // com.android.server.display.DisplayModeDirector.Injector
        public DeviceConfigInterface getDeviceConfig() {
            return DeviceConfigInterface.REAL;
        }

        @Override // com.android.server.display.DisplayModeDirector.Injector
        public void registerBrightnessObserver(ContentResolver cr, ContentObserver observer) {
            cr.registerContentObserver(DISPLAY_BRIGHTNESS_URI, false, observer, 0);
        }

        @Override // com.android.server.display.DisplayModeDirector.Injector
        public void unregisterBrightnessObserver(ContentResolver cr, ContentObserver observer) {
            cr.unregisterContentObserver(observer);
        }

        @Override // com.android.server.display.DisplayModeDirector.Injector
        public void registerPeakRefreshRateObserver(ContentResolver cr, ContentObserver observer) {
            cr.registerContentObserver(PEAK_REFRESH_RATE_URI, false, observer, 0);
        }
    }
}
