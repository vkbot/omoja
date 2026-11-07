package com.android.server.power.batterysaver;

import android.R;
import android.app.ActivityManagerInternal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManagerInternal;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.BatterySaverPolicyConfig;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Slog;
import com.android.internal.util.ArrayUtils;
import com.android.server.EventLogTags;
import com.android.server.LocalServices;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public class BatterySaverController implements BatterySaverPolicy.BatterySaverPolicyListener {
    static final boolean DEBUG = false;
    public static final int REASON_ADAPTIVE_DYNAMIC_POWER_SAVINGS_CHANGED = 11;
    public static final int REASON_DYNAMIC_POWER_SAVINGS_AUTOMATIC_OFF = 10;
    public static final int REASON_DYNAMIC_POWER_SAVINGS_AUTOMATIC_ON = 9;
    public static final int REASON_INTERACTIVE_CHANGED = 5;
    public static final int REASON_MANUAL_OFF = 3;
    public static final int REASON_MANUAL_ON = 2;
    public static final int REASON_PERCENTAGE_AUTOMATIC_OFF = 1;
    public static final int REASON_PERCENTAGE_AUTOMATIC_ON = 0;
    public static final int REASON_PLUGGED_IN = 7;
    public static final int REASON_POLICY_CHANGED = 6;
    public static final int REASON_SETTING_CHANGED = 8;
    public static final int REASON_STICKY_RESTORE = 4;
    public static final int REASON_TIMEOUT = 12;
    static final String TAG = "BatterySaverController";
    private boolean mAdaptiveEnabledRaw;
    private boolean mAdaptivePreviouslyEnabled;
    private final BatterySaverPolicy mBatterySaverPolicy;
    private final BatterySavingStats mBatterySavingStats;
    private final Context mContext;
    private final FileUpdater mFileUpdater;
    private boolean mFullEnabledRaw;
    private boolean mFullPreviouslyEnabled;
    private final MyHandler mHandler;
    private boolean mIsInteractive;
    private boolean mIsPluggedIn;
    private final Object mLock;
    private final Plugin[] mPlugins;
    private PowerManager mPowerManager;
    private Optional<String> mPowerSaveModeChangedListenerPackage;
    private final ArrayList<PowerManagerInternal.LowPowerModeListener> mListeners = new ArrayList<>();
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.android.server.power.batterysaver.BatterySaverController.1
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:20:0x0043  */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            byte b;
            boolean z = true;
            switch (intent.getAction()) {
                case "android.intent.action.SCREEN_OFF":
                    b = 1;
                    break;
                case "android.intent.action.BATTERY_CHANGED":
                    b = 2;
                    break;
                case "android.intent.action.SCREEN_ON":
                    b = 0;
                    break;
                case "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED":
                    b = 4;
                    break;
                case "android.os.action.DEVICE_IDLE_MODE_CHANGED":
                    b = 3;
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0 || b == 1) {
                if (!BatterySaverController.this.isPolicyEnabled()) {
                    BatterySaverController.this.updateBatterySavingStats();
                    return;
                } else {
                    BatterySaverController.this.mHandler.postStateChanged(false, 5);
                    return;
                }
            }
            if (b == 2) {
                synchronized (BatterySaverController.this.mLock) {
                    BatterySaverController batterySaverController = BatterySaverController.this;
                    if (intent.getIntExtra("plugged", 0) == 0) {
                        z = false;
                    }
                    batterySaverController.mIsPluggedIn = z;
                }
            } else if (b != 3 && b != 4) {
                return;
            }
            BatterySaverController.this.updateBatterySavingStats();
        }
    };

    public interface Plugin {
        void onBatterySaverChanged(BatterySaverController batterySaverController);

        void onSystemReady(BatterySaverController batterySaverController);
    }

    static String reasonToString(int reason) {
        switch (reason) {
            case 0:
                return "Percentage Auto ON";
            case 1:
                return "Percentage Auto OFF";
            case 2:
                return "Manual ON";
            case 3:
                return "Manual OFF";
            case 4:
                return "Sticky restore";
            case 5:
                return "Interactivity changed";
            case 6:
                return "Policy changed";
            case 7:
                return "Plugged in";
            case 8:
                return "Setting changed";
            case 9:
                return "Dynamic Warning Auto ON";
            case 10:
                return "Dynamic Warning Auto OFF";
            case 11:
                return "Adaptive Power Savings changed";
            case 12:
                return "timeout";
            default:
                return "Unknown reason: " + reason;
        }
    }

    public BatterySaverController(Object lock, Context context, Looper looper, BatterySaverPolicy policy, BatterySavingStats batterySavingStats) {
        this.mLock = lock;
        this.mContext = context;
        this.mHandler = new MyHandler(looper);
        this.mBatterySaverPolicy = policy;
        policy.addListener(this);
        this.mFileUpdater = new FileUpdater(context);
        this.mBatterySavingStats = batterySavingStats;
        this.mPlugins = new Plugin[]{new BatterySaverLocationPlugin(this.mContext)};
        PowerManager.invalidatePowerSaveModeCaches();
    }

    public void addListener(PowerManagerInternal.LowPowerModeListener listener) {
        synchronized (this.mLock) {
            this.mListeners.add(listener);
        }
    }

    public void systemReady() {
        IntentFilter filter = new IntentFilter("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
        filter.addAction("android.intent.action.BATTERY_CHANGED");
        filter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        filter.addAction("android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED");
        this.mContext.registerReceiver(this.mReceiver, filter);
        this.mFileUpdater.systemReady(((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).isRuntimeRestarted());
        this.mHandler.postSystemReady();
    }

    private PowerManager getPowerManager() {
        if (this.mPowerManager == null) {
            PowerManager powerManager = (PowerManager) this.mContext.getSystemService(PowerManager.class);
            Objects.requireNonNull(powerManager);
            this.mPowerManager = powerManager;
        }
        return this.mPowerManager;
    }

    @Override // com.android.server.power.batterysaver.BatterySaverPolicy.BatterySaverPolicyListener
    public void onBatterySaverPolicyChanged(BatterySaverPolicy policy) {
        if (!isPolicyEnabled()) {
            return;
        }
        this.mHandler.postStateChanged(true, 6);
    }

    private class MyHandler extends Handler {
        private static final int ARG_DONT_SEND_BROADCAST = 0;
        private static final int ARG_SEND_BROADCAST = 1;
        private static final int MSG_STATE_CHANGED = 1;
        private static final int MSG_SYSTEM_READY = 2;

        public MyHandler(Looper looper) {
            super(looper);
        }

        void postStateChanged(boolean sendBroadcast, int reason) {
            obtainMessage(1, sendBroadcast ? 1 : 0, reason).sendToTarget();
        }

        public void postSystemReady() {
            obtainMessage(2, 0, 0).sendToTarget();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                BatterySaverController.this.handleBatterySaverStateChanged(message.arg1 == 1, message.arg2);
                return;
            }
            if (i == 2) {
                for (Plugin plugin : BatterySaverController.this.mPlugins) {
                    plugin.onSystemReady(BatterySaverController.this);
                }
            }
        }
    }

    public void enableBatterySaver(boolean enable, int reason) {
        synchronized (this.mLock) {
            if (getFullEnabledLocked() == enable) {
                return;
            }
            setFullEnabledLocked(enable);
            if (updatePolicyLevelLocked()) {
                this.mHandler.postStateChanged(true, reason);
            }
        }
    }

    private boolean updatePolicyLevelLocked() {
        if (getFullEnabledLocked()) {
            return this.mBatterySaverPolicy.setPolicyLevel(2);
        }
        if (getAdaptiveEnabledLocked()) {
            return this.mBatterySaverPolicy.setPolicyLevel(1);
        }
        return this.mBatterySaverPolicy.setPolicyLevel(0);
    }

    public boolean isEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = getFullEnabledLocked() || (getAdaptiveEnabledLocked() && this.mBatterySaverPolicy.shouldAdvertiseIsEnabled());
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPolicyEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = getFullEnabledLocked() || getAdaptiveEnabledLocked();
        }
        return z;
    }

    boolean isFullEnabled() {
        boolean fullEnabledLocked;
        synchronized (this.mLock) {
            fullEnabledLocked = getFullEnabledLocked();
        }
        return fullEnabledLocked;
    }

    boolean isAdaptiveEnabled() {
        boolean adaptiveEnabledLocked;
        synchronized (this.mLock) {
            adaptiveEnabledLocked = getAdaptiveEnabledLocked();
        }
        return adaptiveEnabledLocked;
    }

    boolean setAdaptivePolicyLocked(String settings, String deviceSpecificSettings, int reason) {
        return setAdaptivePolicyLocked(BatterySaverPolicy.Policy.fromSettings(settings, deviceSpecificSettings), reason);
    }

    boolean setAdaptivePolicyLocked(BatterySaverPolicyConfig config, int reason) {
        return setAdaptivePolicyLocked(BatterySaverPolicy.Policy.fromConfig(config), reason);
    }

    boolean setAdaptivePolicyLocked(BatterySaverPolicy.Policy policy, int reason) {
        if (this.mBatterySaverPolicy.setAdaptivePolicyLocked(policy)) {
            this.mHandler.postStateChanged(true, reason);
            return true;
        }
        return false;
    }

    boolean resetAdaptivePolicyLocked(int reason) {
        if (this.mBatterySaverPolicy.resetAdaptivePolicyLocked()) {
            this.mHandler.postStateChanged(true, reason);
            return true;
        }
        return false;
    }

    boolean setAdaptivePolicyEnabledLocked(boolean enabled, int reason) {
        if (getAdaptiveEnabledLocked() == enabled) {
            return false;
        }
        setAdaptiveEnabledLocked(enabled);
        if (!updatePolicyLevelLocked()) {
            return false;
        }
        this.mHandler.postStateChanged(true, reason);
        return true;
    }

    public boolean isInteractive() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mIsInteractive;
        }
        return z;
    }

    public BatterySaverPolicy getBatterySaverPolicy() {
        return this.mBatterySaverPolicy;
    }

    public boolean isLaunchBoostDisabled() {
        return isPolicyEnabled() && this.mBatterySaverPolicy.isLaunchBoostDisabled();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void handleBatterySaverStateChanged(boolean z, int i) {
        int i2;
        PowerManagerInternal.LowPowerModeListener[] lowPowerModeListenerArr;
        ArrayMap<String, String> fileValues;
        boolean zIsInteractive = getPowerManager().isInteractive();
        synchronized (this.mLock) {
            Object[] objArr = getFullEnabledLocked() || getAdaptiveEnabledLocked();
            EventLogTags.writeBatterySaverMode(this.mFullPreviouslyEnabled ? 1 : 0, this.mAdaptivePreviouslyEnabled ? 1 : 0, getFullEnabledLocked() ? 1 : 0, getAdaptiveEnabledLocked() ? 1 : 0, zIsInteractive ? 1 : 0, objArr != false ? this.mBatterySaverPolicy.toEventLogString() : "", i);
            this.mFullPreviouslyEnabled = getFullEnabledLocked();
            this.mAdaptivePreviouslyEnabled = getAdaptiveEnabledLocked();
            lowPowerModeListenerArr = (PowerManagerInternal.LowPowerModeListener[]) this.mListeners.toArray(new PowerManagerInternal.LowPowerModeListener[0]);
            this.mIsInteractive = zIsInteractive;
            if (objArr != false) {
                fileValues = this.mBatterySaverPolicy.getFileValues(zIsInteractive);
            } else {
                fileValues = null;
            }
        }
        PowerManagerInternal powerManagerInternal = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
        if (powerManagerInternal != null) {
            powerManagerInternal.powerHint(5, isEnabled() ? 1 : 0);
        }
        updateBatterySavingStats();
        if (ArrayUtils.isEmpty(fileValues)) {
            this.mFileUpdater.restoreDefault();
        } else {
            this.mFileUpdater.writeFiles(fileValues);
        }
        for (Plugin plugin : this.mPlugins) {
            plugin.onBatterySaverChanged(this);
        }
        if (z) {
            this.mContext.sendBroadcastAsUser(new Intent("android.os.action.POWER_SAVE_MODE_CHANGING").putExtra("mode", isEnabled()).addFlags(1073741824), UserHandle.ALL);
            Intent intent = new Intent("android.os.action.POWER_SAVE_MODE_CHANGED");
            intent.addFlags(1073741824);
            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
            if (getPowerSaveModeChangedListenerPackage().isPresent()) {
                this.mContext.sendBroadcastAsUser(new Intent("android.os.action.POWER_SAVE_MODE_CHANGED").setPackage(getPowerSaveModeChangedListenerPackage().get()).addFlags(AudioFormat.EVRCB), UserHandle.ALL);
            }
            Intent intent2 = new Intent("android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL");
            intent2.addFlags(1073741824);
            this.mContext.sendBroadcastAsUser(intent2, UserHandle.ALL, "android.permission.DEVICE_POWER");
            for (PowerManagerInternal.LowPowerModeListener lowPowerModeListener : lowPowerModeListenerArr) {
                lowPowerModeListener.onLowPowerModeChanged(this.mBatterySaverPolicy.getBatterySaverPolicy(lowPowerModeListener.getServiceType()));
            }
        }
    }

    private Optional<String> getPowerSaveModeChangedListenerPackage() {
        Optional<String> optionalEmpty;
        if (this.mPowerSaveModeChangedListenerPackage == null) {
            String configPowerSaveModeChangedListenerPackage = this.mContext.getString(R.string.config_onDeviceIntelligenceModelUnloadedBroadcastKey);
            if (((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).isSystemPackage(configPowerSaveModeChangedListenerPackage)) {
                optionalEmpty = Optional.of(configPowerSaveModeChangedListenerPackage);
            } else {
                optionalEmpty = Optional.empty();
            }
            this.mPowerSaveModeChangedListenerPackage = optionalEmpty;
        }
        return this.mPowerSaveModeChangedListenerPackage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBatterySavingStats() {
        int dozeMode;
        PowerManager pm = getPowerManager();
        if (pm == null) {
            Slog.wtf(TAG, "PowerManager not initialized");
            return;
        }
        boolean isInteractive = pm.isInteractive();
        int i = 2;
        int i2 = 1;
        if (pm.isDeviceIdleMode()) {
            dozeMode = 2;
        } else {
            dozeMode = pm.isLightDeviceIdleMode() ? 1 : 0;
        }
        synchronized (this.mLock) {
            if (this.mIsPluggedIn) {
                this.mBatterySavingStats.startCharging();
                return;
            }
            BatterySavingStats batterySavingStats = this.mBatterySavingStats;
            if (getFullEnabledLocked()) {
                i = 1;
            } else if (!getAdaptiveEnabledLocked()) {
                i = 0;
            }
            if (!isInteractive) {
                i2 = 0;
            }
            batterySavingStats.transitionState(i, i2, dozeMode);
        }
    }

    private void setFullEnabledLocked(boolean value) {
        if (this.mFullEnabledRaw == value) {
            return;
        }
        PowerManager.invalidatePowerSaveModeCaches();
        this.mFullEnabledRaw = value;
    }

    private boolean getFullEnabledLocked() {
        return this.mFullEnabledRaw;
    }

    private void setAdaptiveEnabledLocked(boolean value) {
        if (this.mAdaptiveEnabledRaw == value) {
            return;
        }
        PowerManager.invalidatePowerSaveModeCaches();
        this.mAdaptiveEnabledRaw = value;
    }

    private boolean getAdaptiveEnabledLocked() {
        return this.mAdaptiveEnabledRaw;
    }
}
