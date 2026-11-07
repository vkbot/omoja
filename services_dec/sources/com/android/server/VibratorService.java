package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.IUidObserver;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManagerInternal;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.hardware.input.InputManager;
import android.icu.text.DateFormat;
import android.media.AudioManager;
import android.os.Binder;
import android.os.ExternalVibration;
import android.os.Handler;
import android.os.IBinder;
import android.os.IExternalVibratorService;
import android.os.IVibratorService;
import android.os.IVibratorStateListener;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.PowerSaveState;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.Trace;
import android.os.VibrationAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.os.WorkSource;
import android.provider.Settings;
import android.util.DebugUtils;
import android.util.Slog;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import android.view.InputDevice;
import com.android.internal.app.IBatteryStats;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.job.controllers.JobStatus;
import com.android.server.notification.NotificationShellCmd;
import com.android.server.utils.PriorityDump;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX INFO: loaded from: classes.dex */
public class VibratorService extends IVibratorService.Stub implements InputManager.InputDeviceListener {
    private static final long ASYNC_TIMEOUT_MULTIPLIER = 2;
    private static final boolean DEBUG = false;
    private static final String EXTERNAL_VIBRATOR_SERVICE = "external_vibrator_service";
    private static final int SCALE_HIGH = 1;
    private static final float SCALE_HIGH_GAMMA = 0.5f;
    private static final int SCALE_LOW = -1;
    private static final float SCALE_LOW_GAMMA = 1.5f;
    private static final int SCALE_LOW_MAX_AMPLITUDE = 192;
    private static final int SCALE_MUTE = -100;
    private static final int SCALE_NONE = 0;
    private static final float SCALE_NONE_GAMMA = 1.0f;
    private static final int SCALE_VERY_HIGH = 2;
    private static final float SCALE_VERY_HIGH_GAMMA = 0.25f;
    private static final int SCALE_VERY_LOW = -2;
    private static final float SCALE_VERY_LOW_GAMMA = 2.0f;
    private static final int SCALE_VERY_LOW_MAX_AMPLITUDE = 168;
    private static final String TAG = "VibratorService";
    private final boolean mAllowPriorityVibrationsInLowPowerMode;
    private final AppOpsManager mAppOps;
    private final IBatteryStats mBatteryStatsService;
    private final long mCapabilities;
    private final Context mContext;
    private ExternalVibration mCurrentExternalVibration;
    private Vibration mCurrentVibration;
    private final int mDefaultVibrationAmplitude;
    private final SparseArray<VibrationEffect> mFallbackEffects;
    private int mHapticFeedbackIntensity;
    private InputManager mIm;
    private boolean mInputDeviceListenerRegistered;
    private boolean mIsVibrating;
    private boolean mLowPowerMode;
    private int mNotificationIntensity;
    private PowerManagerInternal mPowerManagerInternal;
    private final LinkedList<VibrationInfo> mPreviousAlarmVibrations;
    private final LinkedList<ExternalVibration> mPreviousExternalVibrations;
    private final LinkedList<VibrationInfo> mPreviousNotificationVibrations;
    private final LinkedList<VibrationInfo> mPreviousRingVibrations;
    private final LinkedList<VibrationInfo> mPreviousVibrations;
    private final int mPreviousVibrationsLimit;
    private int mRingIntensity;
    private final SparseArray<ScaleLevel> mScaleLevels;
    private SettingsObserver mSettingObserver;
    private final List<Integer> mSupportedEffects;
    private final boolean mSupportsAmplitudeControl;
    private final boolean mSupportsExternalControl;
    private final String mSystemUiPackage;
    private volatile VibrateThread mThread;
    private boolean mVibrateInputDevicesSetting;
    private Vibrator mVibrator;
    private boolean mVibratorUnderExternalControl;
    private final PowerManager.WakeLock mWakeLock;
    private static final long[] DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS = {0, 30, 100, 30};
    private static final VibrationAttributes DEFAULT_ATTRIBUTES = new VibrationAttributes.Builder().build();
    private final SparseArray<Integer> mProcStatesCache = new SparseArray<>();
    private final WorkSource mTmpWorkSource = new WorkSource();
    private final Handler mH = new Handler();
    private final Object mLock = new Object();
    private final ArrayList<Vibrator> mInputDeviceVibrators = new ArrayList<>();
    private int mCurVibUid = -1;
    private final RemoteCallbackList<IVibratorStateListener> mVibratorStateListeners = new RemoteCallbackList<>();
    private SparseArray<Vibration> mAlwaysOnEffects = new SparseArray<>();
    private final IUidObserver mUidObserver = new IUidObserver.Stub() { // from class: com.android.server.VibratorService.1
        public void onUidStateChanged(int uid, int procState, long procStateSeq, int capability) {
            VibratorService.this.mProcStatesCache.put(uid, Integer.valueOf(procState));
        }

        public void onUidGone(int uid, boolean disabled) {
            VibratorService.this.mProcStatesCache.delete(uid);
        }

        public void onUidActive(int uid) {
        }

        public void onUidIdle(int uid, boolean disabled) {
        }

        public void onUidCachedChanged(int uid, boolean cached) {
        }
    };
    private final Runnable mVibrationEndRunnable = new Runnable() { // from class: com.android.server.VibratorService.4
        @Override // java.lang.Runnable
        public void run() {
            VibratorService.this.onVibrationFinished();
        }
    };
    BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.android.server.VibratorService.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                synchronized (VibratorService.this.mLock) {
                    if (VibratorService.this.mCurrentVibration != null && (!VibratorService.this.mCurrentVibration.isHapticFeedback() || !VibratorService.this.mCurrentVibration.isFromSystem())) {
                        VibratorService.this.doCancelVibrateLocked();
                    }
                }
            }
        }
    };

    static native void vibratorAlwaysOnDisable(long j);

    static native void vibratorAlwaysOnEnable(long j, long j2, long j3);

    static native boolean vibratorExists();

    static native long vibratorGetCapabilities();

    static native int[] vibratorGetSupportedEffects();

    static native void vibratorInit();

    static native void vibratorOff();

    static native void vibratorOn(long j);

    static native void vibratorPerformComposedEffect(VibrationEffect.Composition.PrimitiveEffect[] primitiveEffectArr, Vibration vibration);

    static native long vibratorPerformEffect(long j, long j2, Vibration vibration, boolean z);

    static native void vibratorSetAmplitude(int i);

    static native void vibratorSetExternalControl(boolean z);

    static native boolean vibratorSupportsAmplitudeControl();

    static native boolean vibratorSupportsExternalControl();

    private class Vibration implements IBinder.DeathRecipient {
        public final VibrationAttributes attrs;
        public VibrationEffect effect;
        public final String opPkg;
        public VibrationEffect originalEffect;
        public final String reason;
        public final long startTime;
        public final long startTimeDebug;
        public final IBinder token;
        public final int uid;

        private Vibration(IBinder token, VibrationEffect effect, VibrationAttributes attrs, int uid, String opPkg, String reason) {
            this.token = token;
            this.effect = effect;
            this.startTime = SystemClock.elapsedRealtime();
            this.startTimeDebug = System.currentTimeMillis();
            this.attrs = attrs;
            this.uid = uid;
            this.opPkg = opPkg;
            this.reason = reason;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (VibratorService.this.mLock) {
                if (this == VibratorService.this.mCurrentVibration) {
                    VibratorService.this.doCancelVibrateLocked();
                }
            }
        }

        private void onComplete() {
            synchronized (VibratorService.this.mLock) {
                if (this == VibratorService.this.mCurrentVibration) {
                    VibratorService.this.doCancelVibrateLocked();
                }
            }
        }

        public boolean hasTimeoutLongerThan(long millis) {
            long duration = this.effect.getDuration();
            return duration >= 0 && duration > millis;
        }

        public boolean isHapticFeedback() {
            return VibratorService.isHapticFeedback(this.attrs.getUsage());
        }

        public boolean isNotification() {
            return VibratorService.isNotification(this.attrs.getUsage());
        }

        public boolean isRingtone() {
            return VibratorService.isRingtone(this.attrs.getUsage());
        }

        public boolean isAlarm() {
            return VibratorService.isAlarm(this.attrs.getUsage());
        }

        public boolean isFromSystem() {
            int i = this.uid;
            return i == 1000 || i == 0 || VibratorService.this.mSystemUiPackage.equals(this.opPkg);
        }

        public VibrationInfo toInfo() {
            return new VibrationInfo(this.startTimeDebug, this.effect, this.originalEffect, this.attrs, this.uid, this.opPkg, this.reason);
        }
    }

    private static class VibrationInfo {
        private final VibrationAttributes mAttrs;
        private final VibrationEffect mEffect;
        private final String mOpPkg;
        private final VibrationEffect mOriginalEffect;
        private final String mReason;
        private final long mStartTimeDebug;
        private final int mUid;

        VibrationInfo(long startTimeDebug, VibrationEffect effect, VibrationEffect originalEffect, VibrationAttributes attrs, int uid, String opPkg, String reason) {
            this.mStartTimeDebug = startTimeDebug;
            this.mEffect = effect;
            this.mOriginalEffect = originalEffect;
            this.mAttrs = attrs;
            this.mUid = uid;
            this.mOpPkg = opPkg;
            this.mReason = reason;
        }

        public String toString() {
            return "startTime: " + DateFormat.getDateTimeInstance().format(new Date(this.mStartTimeDebug)) + ", effect: " + this.mEffect + ", originalEffect: " + this.mOriginalEffect + ", attrs: " + this.mAttrs + ", uid: " + this.mUid + ", opPkg: " + this.mOpPkg + ", reason: " + this.mReason;
        }

        void dumpProto(ProtoOutputStream proto, long fieldId) {
            synchronized (this) {
                long token = proto.start(fieldId);
                proto.write(1112396529665L, this.mStartTimeDebug);
                proto.end(token);
            }
        }
    }

    private static final class ScaleLevel {
        public final float gamma;
        public final int maxAmplitude;

        public ScaleLevel(float gamma) {
            this(gamma, 255);
        }

        public ScaleLevel(float gamma, int maxAmplitude) {
            this.gamma = gamma;
            this.maxAmplitude = maxAmplitude;
        }

        public String toString() {
            return "ScaleLevel{gamma=" + this.gamma + ", maxAmplitude=" + this.maxAmplitude + "}";
        }
    }

    VibratorService(Context context) {
        vibratorInit();
        vibratorOff();
        this.mSupportsAmplitudeControl = vibratorSupportsAmplitudeControl();
        this.mSupportsExternalControl = vibratorSupportsExternalControl();
        this.mSupportedEffects = asList(vibratorGetSupportedEffects());
        this.mCapabilities = vibratorGetCapabilities();
        this.mContext = context;
        PowerManager pm = (PowerManager) context.getSystemService(PowerManager.class);
        PowerManager.WakeLock wakeLockNewWakeLock = pm.newWakeLock(1, "*vibrator*");
        this.mWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(true);
        this.mAppOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        this.mBatteryStatsService = IBatteryStats.Stub.asInterface(ServiceManager.getService("batterystats"));
        this.mSystemUiPackage = ((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).getSystemUiServiceComponent().getPackageName();
        this.mPreviousVibrationsLimit = this.mContext.getResources().getInteger(R.integer.config_jobSchedulerInactivityIdleThresholdOnStablePower);
        this.mDefaultVibrationAmplitude = this.mContext.getResources().getInteger(R.integer.config_defaultAlarmVibrationIntensity);
        this.mAllowPriorityVibrationsInLowPowerMode = this.mContext.getResources().getBoolean(R.bool.config_allowTheaterModeWakeFromPowerKey);
        this.mPreviousRingVibrations = new LinkedList<>();
        this.mPreviousNotificationVibrations = new LinkedList<>();
        this.mPreviousAlarmVibrations = new LinkedList<>();
        this.mPreviousVibrations = new LinkedList<>();
        this.mPreviousExternalVibrations = new LinkedList<>();
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SCREEN_OFF");
        context.registerReceiver(this.mIntentReceiver, filter);
        VibrationEffect clickEffect = createEffectFromResource(R.array.config_locationExtraPackageNames);
        VibrationEffect doubleClickEffect = VibrationEffect.createWaveform(DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS, -1);
        VibrationEffect heavyClickEffect = createEffectFromResource(R.array.config_displayWhiteBalanceHighLightAmbientBrightnessesStrong);
        VibrationEffect tickEffect = createEffectFromResource(R.array.config_callBarringMMI_for_ims);
        SparseArray<VibrationEffect> sparseArray = new SparseArray<>();
        this.mFallbackEffects = sparseArray;
        sparseArray.put(0, clickEffect);
        this.mFallbackEffects.put(1, doubleClickEffect);
        this.mFallbackEffects.put(2, tickEffect);
        this.mFallbackEffects.put(5, heavyClickEffect);
        this.mFallbackEffects.put(21, VibrationEffect.get(2, false));
        SparseArray<ScaleLevel> sparseArray2 = new SparseArray<>();
        this.mScaleLevels = sparseArray2;
        sparseArray2.put(-2, new ScaleLevel(SCALE_VERY_LOW_GAMMA, SCALE_VERY_LOW_MAX_AMPLITUDE));
        this.mScaleLevels.put(-1, new ScaleLevel(SCALE_LOW_GAMMA, 192));
        this.mScaleLevels.put(0, new ScaleLevel(1.0f));
        this.mScaleLevels.put(1, new ScaleLevel(0.5f));
        this.mScaleLevels.put(2, new ScaleLevel(SCALE_VERY_HIGH_GAMMA));
        ServiceManager.addService(EXTERNAL_VIBRATOR_SERVICE, new ExternalVibratorService());
    }

    private VibrationEffect createEffectFromResource(int resId) {
        long[] timings = getLongIntArray(this.mContext.getResources(), resId);
        return createEffectFromTimings(timings);
    }

    private static VibrationEffect createEffectFromTimings(long[] timings) {
        if (timings == null || timings.length == 0) {
            return null;
        }
        if (timings.length == 1) {
            return VibrationEffect.createOneShot(timings[0], -1);
        }
        return VibrationEffect.createWaveform(timings, -1);
    }

    public void systemReady() {
        Trace.traceBegin(8388608L, "VibratorService#systemReady");
        try {
            this.mIm = (InputManager) this.mContext.getSystemService(InputManager.class);
            this.mVibrator = (Vibrator) this.mContext.getSystemService(Vibrator.class);
            this.mSettingObserver = new SettingsObserver(this.mH);
            PowerManagerInternal powerManagerInternal = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
            this.mPowerManagerInternal = powerManagerInternal;
            powerManagerInternal.registerLowPowerModeObserver(new PowerManagerInternal.LowPowerModeListener() { // from class: com.android.server.VibratorService.2
                public int getServiceType() {
                    return 2;
                }

                public void onLowPowerModeChanged(PowerSaveState result) {
                    VibratorService.this.updateVibrators();
                }
            });
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("vibrate_input_devices"), true, this.mSettingObserver, -1);
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("haptic_feedback_intensity"), true, this.mSettingObserver, -1);
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("notification_vibration_intensity"), true, this.mSettingObserver, -1);
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("ring_vibration_intensity"), true, this.mSettingObserver, -1);
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("zen_mode"), true, this.mSettingObserver, -1);
            this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.VibratorService.3
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    VibratorService.this.updateVibrators();
                }
            }, new IntentFilter("android.intent.action.USER_SWITCHED"), null, this.mH);
            try {
                ActivityManager.getService().registerUidObserver(this.mUidObserver, 3, -1, (String) null);
            } catch (RemoteException e) {
            }
            updateVibrators();
        } finally {
            Trace.traceEnd(8388608L);
        }
    }

    private final class SettingsObserver extends ContentObserver {
        public SettingsObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean SelfChange) {
            VibratorService.this.updateVibrators();
        }
    }

    public boolean hasVibrator() {
        return doVibratorExists();
    }

    public boolean isVibrating() {
        boolean z;
        if (!hasPermission("android.permission.ACCESS_VIBRATOR_STATE")) {
            throw new SecurityException("Requires ACCESS_VIBRATOR_STATE permission");
        }
        synchronized (this.mLock) {
            z = this.mIsVibrating;
        }
        return z;
    }

    private void notifyStateListenerLocked(IVibratorStateListener listener) {
        try {
            listener.onVibrating(this.mIsVibrating);
        } catch (RemoteException | RuntimeException e) {
            Slog.e(TAG, "Vibrator callback failed to call", e);
        }
    }

    private void notifyStateListenersLocked() {
        int length = this.mVibratorStateListeners.beginBroadcast();
        for (int i = 0; i < length; i++) {
            try {
                IVibratorStateListener listener = (IVibratorStateListener) this.mVibratorStateListeners.getBroadcastItem(i);
                notifyStateListenerLocked(listener);
            } catch (Throwable th) {
                this.mVibratorStateListeners.finishBroadcast();
                throw th;
            }
        }
        this.mVibratorStateListeners.finishBroadcast();
    }

    public boolean registerVibratorStateListener(IVibratorStateListener listener) {
        if (!hasPermission("android.permission.ACCESS_VIBRATOR_STATE")) {
            throw new SecurityException("Requires ACCESS_VIBRATOR_STATE permission");
        }
        synchronized (this.mLock) {
            long token = Binder.clearCallingIdentity();
            try {
                if (this.mVibratorStateListeners.register(listener)) {
                    notifyStateListenerLocked(listener);
                    Binder.restoreCallingIdentity(token);
                    return true;
                }
                Binder.restoreCallingIdentity(token);
                return false;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
    }

    public boolean unregisterVibratorStateListener(IVibratorStateListener listener) {
        boolean zUnregister;
        if (!hasPermission("android.permission.ACCESS_VIBRATOR_STATE")) {
            throw new SecurityException("Requires ACCESS_VIBRATOR_STATE permission");
        }
        synchronized (this.mLock) {
            long token = Binder.clearCallingIdentity();
            try {
                zUnregister = this.mVibratorStateListeners.unregister(listener);
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
        return zUnregister;
    }

    public boolean hasAmplitudeControl() {
        boolean z;
        synchronized (this.mInputDeviceVibrators) {
            z = this.mSupportsAmplitudeControl && this.mInputDeviceVibrators.isEmpty();
        }
        return z;
    }

    public int[] areEffectsSupported(int[] effectIds) {
        int i;
        int[] supported = new int[effectIds.length];
        if (this.mSupportedEffects == null) {
            Arrays.fill(supported, 0);
        } else {
            for (int i2 = 0; i2 < effectIds.length; i2++) {
                if (this.mSupportedEffects.contains(Integer.valueOf(effectIds[i2]))) {
                    i = 1;
                } else {
                    i = 2;
                }
                supported[i2] = i;
            }
        }
        return supported;
    }

    public boolean[] arePrimitivesSupported(int[] primitiveIds) {
        boolean[] supported = new boolean[primitiveIds.length];
        if (hasCapability(32L)) {
            Arrays.fill(supported, true);
        }
        return supported;
    }

    private static List<Integer> asList(int... vals) {
        if (vals == null) {
            return null;
        }
        List<Integer> l = new ArrayList<>(vals.length);
        for (int val : vals) {
            l.add(Integer.valueOf(val));
        }
        return l;
    }

    public boolean setAlwaysOnEffect(int uid, String opPkg, int alwaysOnId, VibrationEffect effect, VibrationAttributes attrs) {
        if (!hasPermission("android.permission.VIBRATE_ALWAYS_ON")) {
            throw new SecurityException("Requires VIBRATE_ALWAYS_ON permission");
        }
        if (!hasCapability(64L)) {
            Slog.e(TAG, "Always-on effects not supported.");
            return false;
        }
        if (effect == null) {
            synchronized (this.mLock) {
                this.mAlwaysOnEffects.delete(alwaysOnId);
                vibratorAlwaysOnDisable(alwaysOnId);
            }
            return true;
        }
        if (!verifyVibrationEffect(effect)) {
            return false;
        }
        if (!(effect instanceof VibrationEffect.Prebaked)) {
            Slog.e(TAG, "Only prebaked effects supported for always-on.");
            return false;
        }
        VibrationAttributes attrs2 = fixupVibrationAttributes(attrs);
        synchronized (this.mLock) {
            Vibration vib = new Vibration(null, effect, attrs2, uid, opPkg, null);
            this.mAlwaysOnEffects.put(alwaysOnId, vib);
            updateAlwaysOnLocked(alwaysOnId, vib);
        }
        return true;
    }

    private void verifyIncomingUid(int uid) {
        if (uid == Binder.getCallingUid() || Binder.getCallingPid() == Process.myPid()) {
            return;
        }
        this.mContext.enforcePermission("android.permission.UPDATE_APP_OPS_STATS", Binder.getCallingPid(), Binder.getCallingUid(), null);
    }

    private static boolean verifyVibrationEffect(VibrationEffect effect) {
        if (effect == null) {
            Slog.wtf(TAG, "effect must not be null");
            return false;
        }
        try {
            effect.validate();
            return true;
        } catch (Exception e) {
            Slog.wtf(TAG, "Encountered issue when verifying VibrationEffect.", e);
            return false;
        }
    }

    private VibrationAttributes fixupVibrationAttributes(VibrationAttributes attrs) {
        if (attrs == null) {
            attrs = DEFAULT_ATTRIBUTES;
        }
        if (shouldBypassDnd(attrs) && !hasPermission("android.permission.WRITE_SECURE_SETTINGS") && !hasPermission("android.permission.MODIFY_PHONE_STATE") && !hasPermission("android.permission.MODIFY_AUDIO_ROUTING")) {
            int flags = attrs.getFlags() & (-2);
            return new VibrationAttributes.Builder(attrs).replaceFlags(flags).build();
        }
        return attrs;
    }

    private static long[] getLongIntArray(Resources r, int resid) {
        int[] ar = r.getIntArray(resid);
        if (ar == null) {
            return null;
        }
        long[] out = new long[ar.length];
        for (int i = 0; i < ar.length; i++) {
            out[i] = ar[i];
        }
        return out;
    }

    public void vibrate(int uid, String opPkg, VibrationEffect effect, VibrationAttributes attrs, String reason, IBinder token) throws Throwable {
        Object obj;
        Trace.traceBegin(8388608L, "vibrate, reason = " + reason);
        try {
            try {
                if (!hasPermission("android.permission.VIBRATE")) {
                    throw new SecurityException("Requires VIBRATE permission");
                }
                if (token == null) {
                    Slog.e(TAG, "token must not be null");
                    Trace.traceEnd(8388608L);
                    return;
                }
                verifyIncomingUid(uid);
                if (!verifyVibrationEffect(effect)) {
                    Trace.traceEnd(8388608L);
                    return;
                }
                VibrationAttributes attrs2 = fixupVibrationAttributes(attrs);
                try {
                    Object obj2 = this.mLock;
                    try {
                        synchronized (obj2) {
                            try {
                                if ((effect instanceof VibrationEffect.OneShot) && this.mCurrentVibration != null && (this.mCurrentVibration.effect instanceof VibrationEffect.OneShot)) {
                                    VibrationEffect.OneShot newOneShot = (VibrationEffect.OneShot) effect;
                                    VibrationEffect.OneShot currentOneShot = this.mCurrentVibration.effect;
                                    if (this.mCurrentVibration.hasTimeoutLongerThan(newOneShot.getDuration()) && newOneShot.getAmplitude() == currentOneShot.getAmplitude()) {
                                        Trace.traceEnd(8388608L);
                                        return;
                                    }
                                }
                                if (this.mCurrentExternalVibration != null) {
                                    Trace.traceEnd(8388608L);
                                    return;
                                }
                                if (!isRepeatingVibration(effect) && this.mCurrentVibration != null && isRepeatingVibration(this.mCurrentVibration.effect)) {
                                    Trace.traceEnd(8388608L);
                                    return;
                                }
                                obj = obj2;
                                Vibration vib = new Vibration(token, effect, attrs2, uid, opPkg, reason);
                                if (this.mProcStatesCache.get(uid, 6).intValue() > 6 && !vib.isNotification() && !vib.isRingtone() && !vib.isAlarm()) {
                                    Slog.e(TAG, "Ignoring incoming vibration as process with uid= " + uid + " is background, attrs= " + vib.attrs);
                                    Trace.traceEnd(8388608L);
                                    return;
                                }
                                linkVibration(vib);
                                long ident = Binder.clearCallingIdentity();
                                try {
                                    doCancelVibrateLocked();
                                    startVibrationLocked(vib);
                                    addToPreviousVibrationsLocked(vib);
                                    Binder.restoreCallingIdentity(ident);
                                    Trace.traceEnd(8388608L);
                                    return;
                                } catch (Throwable th) {
                                    Binder.restoreCallingIdentity(ident);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                obj = obj2;
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    Trace.traceEnd(8388608L);
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    private boolean hasPermission(String permission) {
        return this.mContext.checkCallingOrSelfPermission(permission) == 0;
    }

    private static boolean isRepeatingVibration(VibrationEffect effect) {
        return effect.getDuration() == JobStatus.NO_LATEST_RUNTIME;
    }

    private void addToPreviousVibrationsLocked(Vibration vib) {
        LinkedList<VibrationInfo> previousVibrations;
        if (vib.isRingtone()) {
            previousVibrations = this.mPreviousRingVibrations;
        } else if (vib.isNotification()) {
            previousVibrations = this.mPreviousNotificationVibrations;
        } else if (vib.isAlarm()) {
            previousVibrations = this.mPreviousAlarmVibrations;
        } else {
            previousVibrations = this.mPreviousVibrations;
        }
        if (previousVibrations.size() > this.mPreviousVibrationsLimit) {
            previousVibrations.removeFirst();
        }
        previousVibrations.addLast(vib.toInfo());
    }

    public void cancelVibrate(IBinder token) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.VIBRATE", "cancelVibrate");
        synchronized (this.mLock) {
            if (this.mCurrentVibration != null && this.mCurrentVibration.token == token) {
                long ident = Binder.clearCallingIdentity();
                try {
                    doCancelVibrateLocked();
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doCancelVibrateLocked() {
        Trace.asyncTraceEnd(8388608L, "vibration", 0);
        Trace.traceBegin(8388608L, "doCancelVibrateLocked");
        try {
            this.mH.removeCallbacks(this.mVibrationEndRunnable);
            if (this.mThread != null) {
                this.mThread.cancel();
                this.mThread = null;
            }
            if (this.mCurrentExternalVibration != null) {
                this.mCurrentExternalVibration.mute();
                this.mCurrentExternalVibration = null;
                setVibratorUnderExternalControl(false);
            }
            doVibratorOff();
            reportFinishVibrationLocked();
        } finally {
            Trace.traceEnd(8388608L);
        }
    }

    public void onVibrationFinished() {
        synchronized (this.mLock) {
            doCancelVibrateLocked();
        }
    }

    private void startVibrationLocked(Vibration vib) {
        Trace.traceBegin(8388608L, "startVibrationLocked");
        try {
            int intensity = getCurrentIntensityLocked(vib);
            if (!shouldVibrate(vib, intensity)) {
                return;
            }
            applyVibrationIntensityScalingLocked(vib, intensity);
            startVibrationInnerLocked(vib);
        } finally {
            Trace.traceEnd(8388608L);
        }
    }

    private void startVibrationInnerLocked(Vibration vib) {
        Trace.traceBegin(8388608L, "startVibrationInnerLocked");
        try {
            this.mCurrentVibration = vib;
            if (vib.effect instanceof VibrationEffect.OneShot) {
                Trace.asyncTraceBegin(8388608L, "vibration", 0);
                VibrationEffect.OneShot oneShot = vib.effect;
                doVibratorOn(oneShot.getDuration(), oneShot.getAmplitude(), vib.uid, vib.attrs);
                this.mH.postDelayed(this.mVibrationEndRunnable, oneShot.getDuration());
            } else if (vib.effect instanceof VibrationEffect.Waveform) {
                Trace.asyncTraceBegin(8388608L, "vibration", 0);
                VibrationEffect.Waveform waveform = vib.effect;
                this.mThread = new VibrateThread(waveform, vib.uid, vib.attrs);
                this.mThread.start();
            } else if (vib.effect instanceof VibrationEffect.Prebaked) {
                Trace.asyncTraceBegin(8388608L, "vibration", 0);
                long timeout = doVibratorPrebakedEffectLocked(vib);
                if (timeout > 0) {
                    this.mH.postDelayed(this.mVibrationEndRunnable, timeout);
                }
            } else if (vib.effect instanceof VibrationEffect.Composed) {
                Trace.asyncTraceBegin(8388608L, "vibration", 0);
                doVibratorComposedEffectLocked(vib);
                this.mH.postDelayed(this.mVibrationEndRunnable, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
            } else {
                Slog.e(TAG, "Unknown vibration type, ignoring");
            }
        } finally {
            Trace.traceEnd(8388608L);
        }
    }

    private boolean isAllowedToVibrateLocked(Vibration vib) {
        int usage;
        return !this.mLowPowerMode || (usage = vib.attrs.getUsage()) == 33 || usage == 17 || usage == 65;
    }

    private int getCurrentIntensityLocked(Vibration vib) {
        if (vib.isRingtone()) {
            return this.mRingIntensity;
        }
        if (vib.isNotification()) {
            return this.mNotificationIntensity;
        }
        if (vib.isHapticFeedback()) {
            return this.mHapticFeedbackIntensity;
        }
        if (vib.isAlarm()) {
            return 3;
        }
        return 2;
    }

    private void applyVibrationIntensityScalingLocked(Vibration vib, int intensity) {
        int defaultIntensity;
        if (vib.effect instanceof VibrationEffect.Prebaked) {
            VibrationEffect.Prebaked prebaked = vib.effect;
            prebaked.setEffectStrength(intensityToEffectStrength(intensity));
            return;
        }
        if (vib.isRingtone()) {
            defaultIntensity = this.mVibrator.getDefaultRingVibrationIntensity();
        } else if (vib.isNotification()) {
            defaultIntensity = this.mVibrator.getDefaultNotificationVibrationIntensity();
        } else if (vib.isHapticFeedback()) {
            defaultIntensity = this.mVibrator.getDefaultHapticFeedbackIntensity();
        } else if (vib.isAlarm()) {
            defaultIntensity = 3;
        } else {
            return;
        }
        ScaleLevel scale = this.mScaleLevels.get(intensity - defaultIntensity);
        if (scale == null) {
            Slog.e(TAG, "No configured scaling level! (current=" + intensity + ", default= " + defaultIntensity + ")");
            return;
        }
        VibrationEffect.OneShot oneShotScale = null;
        if (vib.effect instanceof VibrationEffect.OneShot) {
            VibrationEffect.OneShot oneShot = vib.effect;
            oneShotScale = oneShot.resolve(this.mDefaultVibrationAmplitude).scale(scale.gamma, scale.maxAmplitude);
        } else if (vib.effect instanceof VibrationEffect.Waveform) {
            VibrationEffect.Waveform waveform = vib.effect;
            oneShotScale = waveform.resolve(this.mDefaultVibrationAmplitude).scale(scale.gamma, scale.maxAmplitude);
        } else if (!(vib.effect instanceof VibrationEffect.Composed)) {
            Slog.w(TAG, "Unable to apply intensity scaling, unknown VibrationEffect type");
        } else {
            VibrationEffect.Composed composed = vib.effect;
            oneShotScale = composed.scale(scale.gamma, scale.maxAmplitude);
        }
        if (oneShotScale != null) {
            vib.originalEffect = vib.effect;
            vib.effect = oneShotScale;
        }
    }

    private boolean shouldVibrateForRingtone() {
        AudioManager audioManager = (AudioManager) this.mContext.getSystemService(AudioManager.class);
        int ringerMode = audioManager.getRingerModeInternal();
        if (Settings.System.getInt(this.mContext.getContentResolver(), "vibrate_when_ringing", 0) != 0) {
            return ringerMode != 0;
        }
        if (Settings.Global.getInt(this.mContext.getContentResolver(), "apply_ramping_ringer", 0) != 0) {
            return ringerMode != 0;
        }
        return ringerMode == 1;
    }

    private static boolean shouldBypassDnd(VibrationAttributes attrs) {
        return attrs.isFlagSet(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getAppOpMode(int uid, String packageName, VibrationAttributes attrs) {
        int mode = this.mAppOps.checkAudioOpNoThrow(3, attrs.getAudioAttributes().getUsage(), uid, packageName);
        if (mode == 0) {
            mode = this.mAppOps.startOpNoThrow(3, uid, packageName);
        }
        if (mode == 1 && shouldBypassDnd(attrs)) {
            Slog.d(TAG, "Bypassing DND for vibrate from uid " + uid);
            return 0;
        }
        return mode;
    }

    private boolean shouldVibrate(Vibration vib, int intensity) {
        if (!isAllowedToVibrateLocked(vib) || intensity == 0) {
            return false;
        }
        if (vib.isRingtone() && !shouldVibrateForRingtone()) {
            return false;
        }
        int mode = getAppOpMode(vib.uid, vib.opPkg, vib.attrs);
        if (mode != 0) {
            if (mode == 2) {
                Slog.w(TAG, "Would be an error: vibrate from uid " + vib.uid);
            }
            return false;
        }
        return true;
    }

    private void reportFinishVibrationLocked() {
        Trace.traceBegin(8388608L, "reportFinishVibrationLocked");
        try {
            if (this.mCurrentVibration != null) {
                this.mAppOps.finishOp(3, this.mCurrentVibration.uid, this.mCurrentVibration.opPkg);
                unlinkVibration(this.mCurrentVibration);
                this.mCurrentVibration = null;
            }
        } finally {
            Trace.traceEnd(8388608L);
        }
    }

    private void linkVibration(Vibration vib) {
        if (vib.effect instanceof VibrationEffect.Waveform) {
            try {
                vib.token.linkToDeath(vib, 0);
            } catch (RemoteException e) {
            }
        }
    }

    private void unlinkVibration(Vibration vib) {
        if (vib.effect instanceof VibrationEffect.Waveform) {
            vib.token.unlinkToDeath(vib, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVibrators() {
        synchronized (this.mLock) {
            boolean devicesUpdated = updateInputDeviceVibratorsLocked();
            boolean lowPowerModeUpdated = updateLowPowerModeLocked();
            updateVibrationIntensityLocked();
            if (devicesUpdated || lowPowerModeUpdated) {
                doCancelVibrateLocked();
            }
            updateAlwaysOnLocked();
        }
    }

    private boolean updateInputDeviceVibratorsLocked() {
        boolean changed = false;
        boolean vibrateInputDevices = false;
        try {
            vibrateInputDevices = Settings.System.getIntForUser(this.mContext.getContentResolver(), "vibrate_input_devices", -2) > 0;
        } catch (Settings.SettingNotFoundException e) {
        }
        if (vibrateInputDevices != this.mVibrateInputDevicesSetting) {
            changed = true;
            this.mVibrateInputDevicesSetting = vibrateInputDevices;
        }
        if (this.mVibrateInputDevicesSetting) {
            if (!this.mInputDeviceListenerRegistered) {
                this.mInputDeviceListenerRegistered = true;
                this.mIm.registerInputDeviceListener(this, this.mH);
            }
        } else if (this.mInputDeviceListenerRegistered) {
            this.mInputDeviceListenerRegistered = false;
            this.mIm.unregisterInputDeviceListener(this);
        }
        this.mInputDeviceVibrators.clear();
        if (this.mVibrateInputDevicesSetting) {
            int[] ids = this.mIm.getInputDeviceIds();
            for (int i : ids) {
                InputDevice device = this.mIm.getInputDevice(i);
                Vibrator vibrator = device.getVibrator();
                if (vibrator.hasVibrator()) {
                    this.mInputDeviceVibrators.add(vibrator);
                }
            }
            return true;
        }
        return changed;
    }

    private boolean updateLowPowerModeLocked() {
        boolean lowPowerMode = this.mPowerManagerInternal.getLowPowerState(2).batterySaverEnabled;
        if (lowPowerMode != this.mLowPowerMode) {
            this.mLowPowerMode = lowPowerMode;
            return true;
        }
        return false;
    }

    private void updateVibrationIntensityLocked() {
        this.mHapticFeedbackIntensity = Settings.System.getIntForUser(this.mContext.getContentResolver(), "haptic_feedback_intensity", this.mVibrator.getDefaultHapticFeedbackIntensity(), -2);
        this.mNotificationIntensity = Settings.System.getIntForUser(this.mContext.getContentResolver(), "notification_vibration_intensity", this.mVibrator.getDefaultNotificationVibrationIntensity(), -2);
        this.mRingIntensity = Settings.System.getIntForUser(this.mContext.getContentResolver(), "ring_vibration_intensity", this.mVibrator.getDefaultRingVibrationIntensity(), -2);
    }

    private void updateAlwaysOnLocked(int id, Vibration vib) {
        int intensity = getCurrentIntensityLocked(vib);
        if (!shouldVibrate(vib, intensity)) {
            vibratorAlwaysOnDisable(id);
            return;
        }
        VibrationEffect.Prebaked prebaked = vib.effect;
        int strength = intensityToEffectStrength(intensity);
        vibratorAlwaysOnEnable(id, prebaked.getId(), strength);
    }

    private void updateAlwaysOnLocked() {
        for (int i = 0; i < this.mAlwaysOnEffects.size(); i++) {
            int id = this.mAlwaysOnEffects.keyAt(i);
            Vibration vib = this.mAlwaysOnEffects.valueAt(i);
            updateAlwaysOnLocked(id, vib);
        }
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceAdded(int deviceId) {
        updateVibrators();
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceChanged(int deviceId) {
        updateVibrators();
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceRemoved(int deviceId) {
        updateVibrators();
    }

    private boolean doVibratorExists() {
        return vibratorExists();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:10:0x001c  */
    /* JADX WARN: Code duplicated, block: B:12:0x001f A[Catch: all -> 0x003e, LOOP:0: B:11:0x001d->B:12:0x001f, LOOP_END, TryCatch #1 {, blocks: (B:7:0x000e, B:8:0x0011, B:12:0x001f, B:15:0x0038, B:14:0x0032), top: B:25:0x000e, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x0032 A[Catch: all -> 0x003e, TryCatch #1 {, blocks: (B:7:0x000e, B:8:0x0011, B:12:0x001f, B:15:0x0038, B:14:0x0032), top: B:25:0x000e, outer: #0 }] */
    public void doVibratorOn(long millis, int amplitude, int uid, VibrationAttributes attrs) {
        int vibratorCount;
        int i;
        Trace.traceBegin(8388608L, "doVibratorOn");
        try {
            synchronized (this.mInputDeviceVibrators) {
                if (amplitude == -1) {
                    amplitude = this.mDefaultVibrationAmplitude;
                    noteVibratorOnLocked(uid, millis);
                    vibratorCount = this.mInputDeviceVibrators.size();
                    if (vibratorCount != 0) {
                        for (i = 0; i < vibratorCount; i++) {
                            this.mInputDeviceVibrators.get(i).vibrate(millis, attrs.getAudioAttributes());
                        }
                    } else {
                        vibratorOn(millis);
                        doVibratorSetAmplitude(amplitude);
                    }
                } else {
                    noteVibratorOnLocked(uid, millis);
                    vibratorCount = this.mInputDeviceVibrators.size();
                    if (vibratorCount != 0) {
                        while (i < vibratorCount) {
                            this.mInputDeviceVibrators.get(i).vibrate(millis, attrs.getAudioAttributes());
                        }
                    } else {
                        vibratorOn(millis);
                        doVibratorSetAmplitude(amplitude);
                    }
                }
                throw th;
            }
            Trace.traceEnd(8388608L);
        } catch (Throwable th) {
            Trace.traceEnd(8388608L);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doVibratorSetAmplitude(int amplitude) {
        if (this.mSupportsAmplitudeControl) {
            vibratorSetAmplitude(amplitude);
        }
    }

    private void doVibratorOff() {
        Trace.traceBegin(8388608L, "doVibratorOff");
        try {
            synchronized (this.mInputDeviceVibrators) {
                noteVibratorOffLocked();
                int vibratorCount = this.mInputDeviceVibrators.size();
                if (vibratorCount != 0) {
                    for (int i = 0; i < vibratorCount; i++) {
                        this.mInputDeviceVibrators.get(i).cancel();
                    }
                } else {
                    vibratorOff();
                }
            }
            Trace.traceEnd(8388608L);
        } catch (Throwable th) {
            Trace.traceEnd(8388608L);
            throw th;
        }
    }

    private long doVibratorPrebakedEffectLocked(Vibration vib) {
        boolean usingInputDeviceVibrators;
        Trace.traceBegin(8388608L, "doVibratorPrebakedEffectLocked");
        try {
            VibrationEffect.Prebaked prebaked = vib.effect;
            synchronized (this.mInputDeviceVibrators) {
                usingInputDeviceVibrators = !this.mInputDeviceVibrators.isEmpty();
            }
            if (!usingInputDeviceVibrators) {
                long duration = vibratorPerformEffect(prebaked.getId(), prebaked.getEffectStrength(), vib, hasCapability(2L));
                long timeout = duration;
                if (hasCapability(2L)) {
                    timeout *= 2;
                }
                if (timeout > 0) {
                    noteVibratorOnLocked(vib.uid, duration);
                    Trace.traceEnd(8388608L);
                    return timeout;
                }
            }
            if (!prebaked.shouldFallback()) {
                Trace.traceEnd(8388608L);
                return 0L;
            }
            VibrationEffect effect = getFallbackEffect(prebaked.getId());
            if (effect == null) {
                Slog.w(TAG, "Failed to play prebaked effect, no fallback");
                Trace.traceEnd(8388608L);
                return 0L;
            }
            Vibration fallbackVib = new Vibration(vib.token, effect, vib.attrs, vib.uid, vib.opPkg, vib.reason + " (fallback)");
            int intensity = getCurrentIntensityLocked(fallbackVib);
            linkVibration(fallbackVib);
            applyVibrationIntensityScalingLocked(fallbackVib, intensity);
            startVibrationInnerLocked(fallbackVib);
            Trace.traceEnd(8388608L);
            return 0L;
        } catch (Throwable th) {
            Trace.traceEnd(8388608L);
            throw th;
        }
    }

    private void doVibratorComposedEffectLocked(Vibration vib) {
        boolean usingInputDeviceVibrators;
        Trace.traceBegin(8388608L, "doVibratorComposedEffectLocked");
        try {
            VibrationEffect.Composed composed = vib.effect;
            synchronized (this.mInputDeviceVibrators) {
                usingInputDeviceVibrators = !this.mInputDeviceVibrators.isEmpty();
            }
            if (usingInputDeviceVibrators) {
                Trace.traceEnd(8388608L);
                return;
            }
            if (!hasCapability(32L)) {
                Trace.traceEnd(8388608L);
                return;
            }
            VibrationEffect.Composition.PrimitiveEffect[] primitiveEffects = (VibrationEffect.Composition.PrimitiveEffect[]) composed.getPrimitiveEffects().toArray(new VibrationEffect.Composition.PrimitiveEffect[0]);
            vibratorPerformComposedEffect(primitiveEffects, vib);
            noteVibratorOnLocked(vib.uid, primitiveEffects.length * 10);
            Trace.traceEnd(8388608L);
        } catch (Throwable th) {
            Trace.traceEnd(8388608L);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCapability(long capability) {
        return (this.mCapabilities & capability) == capability;
    }

    private VibrationEffect getFallbackEffect(int effectId) {
        return this.mFallbackEffects.get(effectId);
    }

    private static int intensityToEffectStrength(int intensity) {
        if (intensity == 1) {
            return 0;
        }
        if (intensity == 2) {
            return 1;
        }
        if (intensity == 3) {
            return 2;
        }
        Slog.w(TAG, "Got unexpected vibration intensity: " + intensity);
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNotification(int usageHint) {
        return usageHint == 49;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isRingtone(int usageHint) {
        return usageHint == 33;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isHapticFeedback(int usageHint) {
        return usageHint == 18;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isAlarm(int usageHint) {
        return usageHint == 17;
    }

    private void noteVibratorOnLocked(int uid, long millis) {
        try {
            this.mBatteryStatsService.noteVibratorOn(uid, millis);
            FrameworkStatsLog.write_non_chained(84, uid, (String) null, 1, millis);
            this.mCurVibUid = uid;
            if (!this.mIsVibrating) {
                this.mIsVibrating = true;
                notifyStateListenersLocked();
            }
        } catch (RemoteException e) {
        }
    }

    private void noteVibratorOffLocked() {
        int i = this.mCurVibUid;
        if (i >= 0) {
            try {
                this.mBatteryStatsService.noteVibratorOff(i);
                FrameworkStatsLog.write_non_chained(84, this.mCurVibUid, (String) null, 0, 0);
            } catch (RemoteException e) {
            }
            this.mCurVibUid = -1;
        }
        if (this.mIsVibrating) {
            this.mIsVibrating = false;
            notifyStateListenersLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVibratorUnderExternalControl(boolean externalControl) {
        this.mVibratorUnderExternalControl = externalControl;
        vibratorSetExternalControl(externalControl);
    }

    private void dumpInternal(PrintWriter pw) {
        pw.println("Vibrator Service:");
        synchronized (this.mLock) {
            pw.print("  mCurrentVibration=");
            if (this.mCurrentVibration != null) {
                pw.println(this.mCurrentVibration.toInfo().toString());
            } else {
                pw.println("null");
            }
            pw.print("  mCurrentExternalVibration=" + this.mCurrentExternalVibration);
            pw.println("  mVibratorUnderExternalControl=" + this.mVibratorUnderExternalControl);
            pw.println("  mIsVibrating=" + this.mIsVibrating);
            pw.println("  mVibratorStateListeners Count=" + this.mVibratorStateListeners.getRegisteredCallbackCount());
            pw.println("  mLowPowerMode=" + this.mLowPowerMode);
            pw.println("  mHapticFeedbackIntensity=" + this.mHapticFeedbackIntensity);
            pw.println("  mNotificationIntensity=" + this.mNotificationIntensity);
            pw.println("  mRingIntensity=" + this.mRingIntensity);
            pw.println("  mSupportedEffects=" + this.mSupportedEffects);
            pw.println();
            pw.println("  Previous ring vibrations:");
            for (VibrationInfo info : this.mPreviousRingVibrations) {
                pw.print("    ");
                pw.println(info.toString());
            }
            pw.println("  Previous notification vibrations:");
            for (VibrationInfo info2 : this.mPreviousNotificationVibrations) {
                pw.println("    " + info2);
            }
            pw.println("  Previous alarm vibrations:");
            for (VibrationInfo info3 : this.mPreviousAlarmVibrations) {
                pw.println("    " + info3);
            }
            pw.println("  Previous vibrations:");
            for (VibrationInfo info4 : this.mPreviousVibrations) {
                pw.println("    " + info4);
            }
            pw.println("  Previous external vibrations:");
            for (ExternalVibration vib : this.mPreviousExternalVibrations) {
                pw.println("    " + vib);
            }
        }
    }

    private void dumpProto(FileDescriptor fd) {
        ProtoOutputStream proto = new ProtoOutputStream(fd);
        synchronized (this.mLock) {
            if (this.mCurrentVibration != null) {
                this.mCurrentVibration.toInfo().dumpProto(proto, 1146756268033L);
            }
            proto.write(1133871366146L, this.mIsVibrating);
            proto.write(1133871366148L, this.mVibratorUnderExternalControl);
            proto.write(1133871366149L, this.mLowPowerMode);
            proto.write(1120986464262L, this.mHapticFeedbackIntensity);
            proto.write(1120986464263L, this.mNotificationIntensity);
            proto.write(1120986464264L, this.mRingIntensity);
            for (VibrationInfo info : this.mPreviousRingVibrations) {
                info.dumpProto(proto, 2246267895817L);
            }
            for (VibrationInfo info2 : this.mPreviousNotificationVibrations) {
                info2.dumpProto(proto, 2246267895818L);
            }
            for (VibrationInfo info3 : this.mPreviousAlarmVibrations) {
                info3.dumpProto(proto, 2246267895819L);
            }
            for (VibrationInfo info4 : this.mPreviousVibrations) {
                info4.dumpProto(proto, 2246267895820L);
            }
        }
        proto.flush();
    }

    private class VibrateThread extends Thread {
        private final VibrationAttributes mAttrs;
        private boolean mForceStop;
        private final int mUid;
        private final VibrationEffect.Waveform mWaveform;

        VibrateThread(VibrationEffect.Waveform waveform, int uid, VibrationAttributes attrs) {
            this.mWaveform = waveform;
            this.mUid = uid;
            this.mAttrs = attrs;
            VibratorService.this.mTmpWorkSource.set(uid);
            VibratorService.this.mWakeLock.setWorkSource(VibratorService.this.mTmpWorkSource);
        }

        private long delayLocked(long duration) {
            Trace.traceBegin(8388608L, "delayLocked");
            long durationRemaining = duration;
            if (duration > 0) {
                try {
                    long bedtime = SystemClock.uptimeMillis() + duration;
                    do {
                        try {
                            wait(durationRemaining);
                        } catch (InterruptedException e) {
                        }
                        if (this.mForceStop) {
                            break;
                        }
                        durationRemaining = bedtime - SystemClock.uptimeMillis();
                    } while (durationRemaining > 0);
                    return duration - durationRemaining;
                } finally {
                    Trace.traceEnd(8388608L);
                }
            }
            Trace.traceEnd(8388608L);
            return 0L;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-8);
            VibratorService.this.mWakeLock.acquire();
            try {
                boolean finished = playWaveform();
                if (finished) {
                    VibratorService.this.onVibrationFinished();
                }
            } finally {
                VibratorService.this.mWakeLock.release();
            }
        }

        public boolean playWaveform() {
            boolean z;
            Trace.traceBegin(8388608L, "playWaveform");
            try {
                synchronized (this) {
                    long[] timings = this.mWaveform.getTimings();
                    int[] amplitudes = this.mWaveform.getAmplitudes();
                    int len = timings.length;
                    int repeat = this.mWaveform.getRepeatIndex();
                    int index = 0;
                    long onDuration = 0;
                    while (!this.mForceStop) {
                        if (index < len) {
                            int amplitude = amplitudes[index];
                            int index2 = index + 1;
                            long duration = timings[index];
                            if (duration <= 0) {
                                index = index2;
                            } else {
                                if (amplitude != 0) {
                                    if (onDuration > 0) {
                                        VibratorService.this.doVibratorSetAmplitude(amplitude);
                                    } else {
                                        long onDuration2 = getTotalOnDuration(timings, amplitudes, index2 - 1, repeat);
                                        VibratorService.this.doVibratorOn(onDuration2, amplitude, this.mUid, this.mAttrs);
                                        onDuration = onDuration2;
                                    }
                                }
                                long waitTime = delayLocked(duration);
                                if (amplitude != 0) {
                                    onDuration -= waitTime;
                                }
                                index = index2;
                            }
                        } else {
                            if (repeat < 0) {
                                break;
                            }
                            index = repeat;
                        }
                    }
                    z = !this.mForceStop;
                }
                Trace.traceEnd(8388608L);
                return z;
            } catch (Throwable th) {
                Trace.traceEnd(8388608L);
                throw th;
            }
        }

        public void cancel() {
            synchronized (this) {
                VibratorService.this.mThread.mForceStop = true;
                VibratorService.this.mThread.notify();
            }
        }

        private long getTotalOnDuration(long[] timings, int[] amplitudes, int startIndex, int repeatIndex) {
            int i = startIndex;
            long timing = 0;
            while (amplitudes[i] != 0) {
                int i2 = i + 1;
                timing += timings[i];
                if (i2 < timings.length) {
                    i = i2;
                } else {
                    if (repeatIndex < 0) {
                        break;
                    }
                    i = repeatIndex;
                    repeatIndex = -1;
                }
                if (i == startIndex) {
                    return 1000L;
                }
            }
            return timing;
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            long ident = Binder.clearCallingIdentity();
            boolean isDumpProto = false;
            for (String arg : args) {
                if (arg.equals(PriorityDump.PROTO_ARG)) {
                    isDumpProto = true;
                }
            }
            try {
                if (isDumpProto) {
                    dumpProto(fd);
                } else {
                    dumpInternal(pw);
                }
                Binder.restoreCallingIdentity(ident);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new VibratorShellCommand(this).exec(this, in, out, err, args, callback, resultReceiver);
    }

    final class ExternalVibratorService extends IExternalVibratorService.Stub {
        ExternalVibrationDeathRecipient mCurrentExternalDeathRecipient;

        ExternalVibratorService() {
        }

        public int onExternalVibrationStart(ExternalVibration vib) {
            int defaultIntensity;
            int currentIntensity;
            int scaleLevel;
            if (!VibratorService.this.mSupportsExternalControl) {
                return VibratorService.SCALE_MUTE;
            }
            if (ActivityManager.checkComponentPermission("android.permission.VIBRATE", vib.getUid(), -1, true) == 0) {
                int mode = VibratorService.this.getAppOpMode(vib.getUid(), vib.getPackage(), vib.getVibrationAttributes());
                if (mode == 0) {
                    synchronized (VibratorService.this.mLock) {
                        if (!vib.equals(VibratorService.this.mCurrentExternalVibration)) {
                            if (VibratorService.this.mCurrentExternalVibration == null) {
                                VibratorService.this.doCancelVibrateLocked();
                                VibratorService.this.setVibratorUnderExternalControl(true);
                            }
                            VibratorService.this.mCurrentExternalVibration = vib;
                            this.mCurrentExternalDeathRecipient = new ExternalVibrationDeathRecipient();
                            VibratorService.this.mCurrentExternalVibration.linkToDeath(this.mCurrentExternalDeathRecipient);
                            if (VibratorService.this.mPreviousExternalVibrations.size() > VibratorService.this.mPreviousVibrationsLimit) {
                                VibratorService.this.mPreviousExternalVibrations.removeFirst();
                            }
                            VibratorService.this.mPreviousExternalVibrations.addLast(vib);
                        }
                        int usage = vib.getVibrationAttributes().getUsage();
                        if (VibratorService.isRingtone(usage)) {
                            defaultIntensity = VibratorService.this.mVibrator.getDefaultRingVibrationIntensity();
                            currentIntensity = VibratorService.this.mRingIntensity;
                        } else if (VibratorService.isNotification(usage)) {
                            defaultIntensity = VibratorService.this.mVibrator.getDefaultNotificationVibrationIntensity();
                            currentIntensity = VibratorService.this.mNotificationIntensity;
                        } else if (VibratorService.isHapticFeedback(usage)) {
                            defaultIntensity = VibratorService.this.mVibrator.getDefaultHapticFeedbackIntensity();
                            currentIntensity = VibratorService.this.mHapticFeedbackIntensity;
                        } else if (VibratorService.isAlarm(usage)) {
                            defaultIntensity = 3;
                            currentIntensity = 3;
                        } else {
                            defaultIntensity = 0;
                            currentIntensity = 0;
                        }
                        scaleLevel = currentIntensity - defaultIntensity;
                    }
                    if (scaleLevel >= -2 && scaleLevel <= 2) {
                        return scaleLevel;
                    }
                    Slog.w(VibratorService.TAG, "Error in scaling calculations, ended up with invalid scale level " + scaleLevel + " for vibration " + vib);
                    return 0;
                }
                if (mode == 2) {
                    Slog.w(VibratorService.TAG, "Would be an error: external vibrate from uid " + vib.getUid());
                }
                return VibratorService.SCALE_MUTE;
            }
            Slog.w(VibratorService.TAG, "pkg=" + vib.getPackage() + ", uid=" + vib.getUid() + " tried to play externally controlled vibration without VIBRATE permission, ignoring.");
            return VibratorService.SCALE_MUTE;
        }

        public void onExternalVibrationStop(ExternalVibration vib) {
            synchronized (VibratorService.this.mLock) {
                if (vib.equals(VibratorService.this.mCurrentExternalVibration)) {
                    VibratorService.this.mCurrentExternalVibration.unlinkToDeath(this.mCurrentExternalDeathRecipient);
                    this.mCurrentExternalDeathRecipient = null;
                    VibratorService.this.mCurrentExternalVibration = null;
                    VibratorService.this.setVibratorUnderExternalControl(false);
                }
            }
        }

        private class ExternalVibrationDeathRecipient implements IBinder.DeathRecipient {
            private ExternalVibrationDeathRecipient() {
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                synchronized (VibratorService.this.mLock) {
                    ExternalVibratorService.this.onExternalVibrationStop(VibratorService.this.mCurrentExternalVibration);
                }
            }
        }
    }

    private final class VibratorShellCommand extends ShellCommand {
        private final IBinder mToken;

        private final class CommonOptions {
            public boolean force;

            private CommonOptions() {
                this.force = false;
            }

            public void check(String opt) {
                if (((opt.hashCode() == 1497 && opt.equals("-f")) ? (byte) 0 : (byte) -1) == 0) {
                    this.force = true;
                }
            }
        }

        private VibratorShellCommand(IBinder token) {
            this.mToken = token;
        }

        public int onCommand(String cmd) {
            if ("vibrate".equals(cmd)) {
                return runVibrate();
            }
            if ("waveform".equals(cmd)) {
                return runWaveform();
            }
            if ("prebaked".equals(cmd)) {
                return runPrebaked();
            }
            if ("capabilities".equals(cmd)) {
                return runCapabilities();
            }
            if ("cancel".equals(cmd)) {
                VibratorService.this.cancelVibrate(this.mToken);
                return 0;
            }
            return handleDefaultCommands(cmd);
        }

        private boolean checkDoNotDisturb(CommonOptions opts) {
            try {
                int zenMode = Settings.Global.getInt(VibratorService.this.mContext.getContentResolver(), "zen_mode");
                if (zenMode != 0 && !opts.force) {
                    PrintWriter pw = getOutPrintWriter();
                    try {
                        pw.print("Ignoring because device is on DND mode ");
                        pw.println(DebugUtils.flagsToString(Settings.Global.class, "ZEN_MODE_", zenMode));
                        if (pw != null) {
                            pw.close();
                        }
                        return true;
                    } catch (Throwable th) {
                        if (pw != null) {
                            try {
                                pw.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                }
                return false;
            } catch (Settings.SettingNotFoundException e) {
                return false;
            }
        }

        private int runVibrate() {
            Trace.traceBegin(8388608L, "runVibrate");
            try {
                CommonOptions commonOptions = new CommonOptions();
                while (true) {
                    String opt = getNextOption();
                    if (opt == null) {
                        break;
                    }
                    commonOptions.check(opt);
                }
                if (checkDoNotDisturb(commonOptions)) {
                    return 0;
                }
                long duration = Long.parseLong(getNextArgRequired());
                String description = getNextArg();
                if (description == null) {
                    description = NotificationShellCmd.CHANNEL_NAME;
                }
                VibrationEffect effect = VibrationEffect.createOneShot(duration, -1);
                VibrationAttributes attrs = createVibrationAttributes(commonOptions);
                VibratorService.this.vibrate(Binder.getCallingUid(), description, effect, attrs, "Shell Command", this.mToken);
                return 0;
            } finally {
                Trace.traceEnd(8388608L);
            }
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0030  */
        private int runWaveform() {
            VibrationEffect effect;
            Trace.traceBegin(8388608L, "runWaveform");
            try {
                String description = NotificationShellCmd.CHANNEL_NAME;
                int repeat = -1;
                ArrayList<Integer> amplitudesList = null;
                CommonOptions commonOptions = new CommonOptions();
                while (true) {
                    String opt = getNextOption();
                    byte b = 0;
                    if (opt == null) {
                        break;
                    }
                    int iHashCode = opt.hashCode();
                    if (iHashCode != 1492) {
                        if (iHashCode != 1495) {
                            b = (iHashCode == 1509 && opt.equals("-r")) ? (byte) 1 : (byte) -1;
                        } else if (opt.equals("-d")) {
                        }
                    } else if (opt.equals("-a")) {
                        b = 2;
                    }
                    if (b == 0) {
                        description = getNextArgRequired();
                    } else if (b == 1) {
                        repeat = Integer.parseInt(getNextArgRequired());
                    } else if (b == 2) {
                        if (amplitudesList == null) {
                            amplitudesList = new ArrayList<>();
                        }
                    } else {
                        commonOptions.check(opt);
                    }
                }
                if (checkDoNotDisturb(commonOptions)) {
                    return 0;
                }
                ArrayList<Long> timingsList = new ArrayList<>();
                while (true) {
                    String arg = getNextArg();
                    if (arg == null) {
                        break;
                    }
                    if (amplitudesList != null && amplitudesList.size() < timingsList.size()) {
                        amplitudesList.add(Integer.valueOf(Integer.parseInt(arg)));
                    } else {
                        timingsList.add(Long.valueOf(Long.parseLong(arg)));
                    }
                }
                long[] timings = timingsList.stream().mapToLong(new ToLongFunction() { // from class: com.android.server.-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM
                    @Override // java.util.function.ToLongFunction
                    public final long applyAsLong(Object obj) {
                        return ((Long) obj).longValue();
                    }
                }).toArray();
                if (amplitudesList == null) {
                    effect = VibrationEffect.createWaveform(timings, repeat);
                } else {
                    int[] amplitudes = amplitudesList.stream().mapToInt(new ToIntFunction() { // from class: com.android.server.-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw
                        @Override // java.util.function.ToIntFunction
                        public final int applyAsInt(Object obj) {
                            return ((Integer) obj).intValue();
                        }
                    }).toArray();
                    effect = VibrationEffect.createWaveform(timings, amplitudes, repeat);
                }
                VibrationAttributes attrs = createVibrationAttributes(commonOptions);
                VibratorService.this.vibrate(Binder.getCallingUid(), description, effect, attrs, "Shell Command", this.mToken);
                return 0;
            } finally {
                Trace.traceEnd(8388608L);
            }
        }

        private int runPrebaked() {
            String description;
            Trace.traceBegin(8388608L, "runPrebaked");
            try {
                CommonOptions commonOptions = new CommonOptions();
                boolean shouldFallback = false;
                while (true) {
                    String opt = getNextOption();
                    if (opt == null) {
                        break;
                    }
                    if ("-b".equals(opt)) {
                        shouldFallback = true;
                    } else {
                        commonOptions.check(opt);
                    }
                }
                if (checkDoNotDisturb(commonOptions)) {
                    return 0;
                }
                int id = Integer.parseInt(getNextArgRequired());
                String description2 = getNextArg();
                if (description2 != null) {
                    description = description2;
                } else {
                    description = NotificationShellCmd.CHANNEL_NAME;
                }
                VibrationEffect effect = VibrationEffect.get(id, shouldFallback);
                VibrationAttributes attrs = createVibrationAttributes(commonOptions);
                VibratorService.this.vibrate(Binder.getCallingUid(), description, effect, attrs, "Shell Command", this.mToken);
                return 0;
            } finally {
                Trace.traceEnd(8388608L);
            }
        }

        private int runCapabilities() {
            Trace.traceBegin(8388608L, "runCapabilities");
            try {
                PrintWriter pw = getOutPrintWriter();
                try {
                    pw.println("Vibrator capabilities:");
                    if (VibratorService.this.hasCapability(64L)) {
                        pw.println("  Always on effects");
                    }
                    if (VibratorService.this.hasCapability(32L)) {
                        pw.println("  Compose effects");
                    }
                    if (VibratorService.this.mSupportsAmplitudeControl || VibratorService.this.hasCapability(4L)) {
                        pw.println("  Amplitude control");
                    }
                    if (VibratorService.this.mSupportsExternalControl || VibratorService.this.hasCapability(8L)) {
                        pw.println("  External control");
                    }
                    if (VibratorService.this.hasCapability(16L)) {
                        pw.println("  External amplitude control");
                    }
                    pw.println("");
                    if (pw != null) {
                        pw.close();
                    }
                    Trace.traceEnd(8388608L);
                    return 0;
                } catch (Throwable th) {
                    if (pw != null) {
                        try {
                            pw.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                Trace.traceEnd(8388608L);
                throw th3;
            }
        }

        private VibrationAttributes createVibrationAttributes(CommonOptions commonOptions) {
            int flags;
            if (commonOptions.force) {
                flags = 1;
            } else {
                flags = 0;
            }
            return new VibrationAttributes.Builder().setUsage(18).replaceFlags(flags).build();
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            try {
                pw.println("Vibrator commands:");
                pw.println("  help");
                pw.println("    Prints this help text.");
                pw.println("");
                pw.println("  vibrate duration [description]");
                pw.println("    Vibrates for duration milliseconds; ignored when device is on ");
                pw.println("    DND (Do Not Disturb) mode; touch feedback strength user setting ");
                pw.println("    will be used to scale amplitude.");
                pw.println("  waveform [-d description] [-r index] [-a] duration [amplitude] ...");
                pw.println("    Vibrates for durations and amplitudes in list; ignored when ");
                pw.println("    device is on DND (Do Not Disturb) mode; touch feedback strength ");
                pw.println("    user setting will be used to scale amplitude.");
                pw.println("    If -r is provided, the waveform loops back to the specified");
                pw.println("    index (e.g. 0 loops from the beginning)");
                pw.println("    If -a is provided, the command accepts duration-amplitude pairs;");
                pw.println("    otherwise, it accepts durations only and alternates off/on");
                pw.println("    Duration is in milliseconds; amplitude is a scale of 1-255.");
                pw.println("  prebaked [-b] effect-id [description]");
                pw.println("    Vibrates with prebaked effect; ignored when device is on DND ");
                pw.println("    (Do Not Disturb) mode; touch feedback strength user setting ");
                pw.println("    will be used to scale amplitude.");
                pw.println("    If -b is provided, the prebaked fallback effect will be played if");
                pw.println("    the device doesn't support the given effect-id.");
                pw.println("  capabilities");
                pw.println("    Prints capabilities of this device.");
                pw.println("  cancel");
                pw.println("    Cancels any active vibration");
                pw.println("Common Options:");
                pw.println("  -f - Force. Ignore Do Not Disturb setting.");
                pw.println("");
                if (pw != null) {
                    pw.close();
                }
            } catch (Throwable th) {
                if (pw != null) {
                    try {
                        pw.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }
}
