package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.IBluetooth;
import android.bluetooth.IBluetoothCallback;
import android.bluetooth.IBluetoothGatt;
import android.bluetooth.IBluetoothHeadset;
import android.bluetooth.IBluetoothManager;
import android.bluetooth.IBluetoothManagerCallback;
import android.bluetooth.IBluetoothProfileServiceConnection;
import android.bluetooth.IBluetoothStateChangeCallback;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.UserManagerInternal;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.ArrayMap;
import android.util.FeatureFlagUtils;
import android.util.Log;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.pm.UserRestrictionsUtils;
import com.android.server.usage.AppStandbyController;
import com.android.server.utils.PriorityDump;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
class BluetoothManagerService extends IBluetoothManager.Stub {
    private static final int ACTIVE_LOG_MAX_SIZE = 20;
    private static final int ADD_PROXY_DELAY_MS = 100;
    private static final String BLUETOOTH_ADMIN_PERM = "android.permission.BLUETOOTH_ADMIN";
    private static final int BLUETOOTH_OFF = 0;
    static final int BLUETOOTH_ON_AIRPLANE = 2;
    private static final int BLUETOOTH_ON_BLUETOOTH = 1;
    private static final int BLUETOOTH_ON_CAR_POWER = 3;
    private static final String BLUETOOTH_PERM = "android.permission.BLUETOOTH";
    private static final String BLUETOOTH_PRIVILEGED = "android.permission.BLUETOOTH_PRIVILEGED";
    private static final int CRASH_LOG_MAX_SIZE = 100;
    private static final boolean DBG = true;
    private static final int ENABLE_DISABLE_DELAY_MS = 300;
    private static final int ERROR_RESTART_TIME_MS = 3000;
    private static final String IS_BLE_SUPPORTED_PROPERTY = "persist.vendor.bt.is_ble_supported";
    private static final int MAX_BIND_RETRIES = 10;
    private static final int MAX_ERROR_RESTART_RETRIES = 6;
    private static final int MAX_WAIT_FOR_ENABLE_DISABLE_RETRIES = 10;
    private static final int MESSAGE_ADD_PROXY_DELAYED = 400;
    private static final int MESSAGE_BIND_PROFILE_SERVICE = 401;
    private static final int MESSAGE_BLUETOOTH_SERVICE_CONNECTED = 40;
    private static final int MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED = 41;
    private static final int MESSAGE_BLUETOOTH_STATE_CHANGE = 60;
    private static final int MESSAGE_DISABLE = 2;
    private static final int MESSAGE_ENABLE = 1;
    private static final int MESSAGE_GET_NAME_AND_ADDRESS = 200;
    private static final int MESSAGE_HANDLE_DISABLE_DELAYED = 4;
    private static final int MESSAGE_HANDLE_ENABLE_DELAYED = 3;
    private static final int MESSAGE_REGISTER_STATE_CHANGE_CALLBACK = 30;
    private static final int MESSAGE_RESTART_BLUETOOTH_SERVICE = 42;
    private static final int MESSAGE_RESTORE_USER_SETTING = 500;
    private static final int MESSAGE_TIMEOUT_BIND = 100;
    private static final int MESSAGE_TIMEOUT_UNBIND = 101;
    private static final int MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK = 31;
    private static final int MESSAGE_USER_SWITCHED = 300;
    private static final int MESSAGE_USER_UNLOCKED = 301;
    private static final int RESTORE_SETTING_TO_OFF = 0;
    private static final int RESTORE_SETTING_TO_ON = 1;
    private static final String SECURE_SETTINGS_BLUETOOTH_ADDRESS = "bluetooth_address";
    private static final String SECURE_SETTINGS_BLUETOOTH_ADDR_VALID = "bluetooth_addr_valid";
    private static final String SECURE_SETTINGS_BLUETOOTH_NAME = "bluetooth_name";
    private static final int SERVICE_IBLUETOOTH = 1;
    private static final int SERVICE_IBLUETOOTHGATT = 2;
    private static final int SERVICE_RESTART_TIME_MS = 400;
    private static final String TAG = "BluetoothManagerService";
    private static final int TIMEOUT_BIND_MS = 3000;
    private static final int USER_SWITCHED_TIME_MS = 200;
    private String mAddress;
    private AppOpsManager mAppOps;
    private int mBindRetryTimes;
    private BluetoothAirplaneModeListener mBluetoothAirplaneModeListener;
    private final RemoteCallbackList<IBluetoothManagerCallback> mCallbacks;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    private String mDefaultName;
    private boolean mEnableExternal;
    private int mErrorRecoveryRetryCounter;
    private boolean mIsHearingAidProfileSupported;
    private long mLastEnabledTime;
    private String mName;
    private boolean mQuietEnableExternal;
    private int mState;
    private final RemoteCallbackList<IBluetoothStateChangeCallback> mStateChangeCallbacks;
    private final int mSystemUiUid;
    private int mWaitForDisableRetry;
    private int mWaitForEnableRetry;
    private final boolean mWirelessConsentRequired;
    private final ReentrantReadWriteLock mBluetoothLock = new ReentrantReadWriteLock();
    private boolean mQuietEnable = false;
    private final LinkedList<ActiveLog> mActiveLogs = new LinkedList<>();
    private final LinkedList<Long> mCrashTimestamps = new LinkedList<>();
    private Map<IBinder, ClientDeathRecipient> mBleApps = new ConcurrentHashMap();
    private final Map<Integer, ProfileServiceConnections> mProfileServices = new HashMap();
    private final IBluetoothCallback mBluetoothCallback = new IBluetoothCallback.Stub() { // from class: com.android.server.BluetoothManagerService.1
        public void onBluetoothStateChange(int prevState, int newState) throws RemoteException {
            Message msg = BluetoothManagerService.this.mHandler.obtainMessage(60, prevState, newState);
            BluetoothManagerService.this.mHandler.sendMessage(msg);
        }
    };
    private final UserManagerInternal.UserRestrictionsListener mUserRestrictionsListener = new UserManagerInternal.UserRestrictionsListener() { // from class: com.android.server.BluetoothManagerService.2
        @Override // android.os.UserManagerInternal.UserRestrictionsListener
        public void onUserRestrictionsChanged(int userId, Bundle newRestrictions, Bundle prevRestrictions) {
            if (UserRestrictionsUtils.restrictionsChanged(prevRestrictions, newRestrictions, "no_bluetooth_sharing")) {
                BluetoothManagerService.this.updateOppLauncherComponentState(userId, newRestrictions.getBoolean("no_bluetooth_sharing"));
            }
            if (userId == 0 && UserRestrictionsUtils.restrictionsChanged(prevRestrictions, newRestrictions, "no_bluetooth")) {
                if (userId != 0 || !newRestrictions.getBoolean("no_bluetooth")) {
                    BluetoothManagerService.this.updateOppLauncherComponentState(userId, newRestrictions.getBoolean("no_bluetooth_sharing"));
                    return;
                }
                BluetoothManagerService.this.updateOppLauncherComponentState(userId, true);
                BluetoothManagerService bluetoothManagerService = BluetoothManagerService.this;
                bluetoothManagerService.sendDisableMsg(3, bluetoothManagerService.mContext.getPackageName());
            }
        }
    };
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.android.server.BluetoothManagerService.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.bluetooth.adapter.action.LOCAL_NAME_CHANGED".equals(action)) {
                String newName = intent.getStringExtra("android.bluetooth.adapter.extra.LOCAL_NAME");
                Slog.d(BluetoothManagerService.TAG, "Bluetooth Adapter name changed to " + newName);
                if (newName != null) {
                    BluetoothManagerService.this.storeNameAndAddress(newName, null);
                    return;
                }
                return;
            }
            if ("android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED".equals(action)) {
                String newAddress = intent.getStringExtra("android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS");
                if (newAddress != null) {
                    Slog.d(BluetoothManagerService.TAG, "Bluetooth Adapter address changed to " + newAddress);
                    BluetoothManagerService.this.storeNameAndAddress(null, newAddress);
                    return;
                }
                Slog.e(BluetoothManagerService.TAG, "No Bluetooth Adapter address parameter found");
                return;
            }
            if ("android.os.action.SETTING_RESTORED".equals(action)) {
                String name = intent.getStringExtra("setting_name");
                if ("bluetooth_on".equals(name)) {
                    String prevValue = intent.getStringExtra("previous_value");
                    String newValue = intent.getStringExtra("new_value");
                    Slog.d(BluetoothManagerService.TAG, "ACTION_SETTING_RESTORED with BLUETOOTH_ON, prevValue=" + prevValue + ", newValue=" + newValue);
                    if (newValue != null && prevValue != null && !prevValue.equals(newValue)) {
                        Message msg = BluetoothManagerService.this.mHandler.obtainMessage(500, newValue.equals("0") ? 0 : 1, 0);
                        BluetoothManagerService.this.mHandler.sendMessage(msg);
                    }
                }
            }
        }
    };
    private BluetoothServiceConnection mConnection = new BluetoothServiceConnection();
    private final BluetoothHandler mHandler = new BluetoothHandler(IoThread.get().getLooper());
    private int mCrashes = 0;
    private IBluetooth mBluetooth = null;
    private IBinder mBluetoothBinder = null;
    private IBluetoothGatt mBluetoothGatt = null;
    private boolean mBinding = false;
    private boolean mUnbinding = false;
    private boolean mEnable = false;
    private boolean mIsBleSupported = SystemProperties.getBoolean(IS_BLE_SUPPORTED_PROPERTY, true);

    static /* synthetic */ int access$2508(BluetoothManagerService x0) {
        int i = x0.mWaitForEnableRetry;
        x0.mWaitForEnableRetry = i + 1;
        return i;
    }

    static /* synthetic */ int access$2608(BluetoothManagerService x0) {
        int i = x0.mWaitForDisableRetry;
        x0.mWaitForDisableRetry = i + 1;
        return i;
    }

    static /* synthetic */ int access$3608(BluetoothManagerService x0) {
        int i = x0.mBindRetryTimes;
        x0.mBindRetryTimes = i + 1;
        return i;
    }

    static /* synthetic */ int access$4708(BluetoothManagerService x0) {
        int i = x0.mErrorRecoveryRetryCounter;
        x0.mErrorRecoveryRetryCounter = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CharSequence timeToLog(long timestamp) {
        return DateFormat.format("MM-dd HH:mm:ss", timestamp);
    }

    private class ActiveLog {
        private boolean mEnable;
        private String mPackageName;
        private int mReason;
        private long mTimestamp;

        ActiveLog(int reason, String packageName, boolean enable, long timestamp) {
            this.mReason = reason;
            this.mPackageName = packageName;
            this.mEnable = enable;
            this.mTimestamp = timestamp;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append((Object) BluetoothManagerService.timeToLog(this.mTimestamp));
            sb.append(this.mEnable ? "  Enabled " : " Disabled ");
            sb.append(" due to ");
            sb.append(BluetoothManagerService.getEnableDisableReasonString(this.mReason));
            sb.append(" by ");
            sb.append(this.mPackageName);
            return sb.toString();
        }

        void dump(ProtoOutputStream proto) {
            proto.write(1112396529665L, this.mTimestamp);
            proto.write(1133871366146L, this.mEnable);
            proto.write(1138166333443L, this.mPackageName);
            proto.write(1159641169924L, this.mReason);
        }
    }

    public boolean onFactoryReset() {
        this.mContext.enforceCallingOrSelfPermission(BLUETOOTH_PRIVILEGED, "Need BLUETOOTH_PRIVILEGED permission");
        int state = getState();
        if ((state == 14 || state == 11 || state == 13) && !waitForState(Set.of(15, 12))) {
            return false;
        }
        clearBleApps();
        int state2 = getState();
        try {
            try {
                this.mBluetoothLock.readLock().lock();
                if (this.mBluetooth == null) {
                    return false;
                }
                if (state2 == 15) {
                    addActiveLog(10, this.mContext.getPackageName(), false);
                    this.mBluetooth.onBrEdrDown();
                    return true;
                }
                if (state2 == 12) {
                    addActiveLog(10, this.mContext.getPackageName(), false);
                    this.mBluetooth.disable();
                    return true;
                }
                return false;
            } catch (RemoteException e) {
                Slog.e(TAG, "Unable to shutdown Bluetooth", e);
            }
        } finally {
            this.mBluetoothLock.readLock().unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0062 A[Catch: all -> 0x00ee, TRY_LEAVE, TryCatch #4 {, blocks: (B:3:0x0001, B:5:0x0008, B:7:0x000e, B:8:0x0012, B:14:0x002c, B:16:0x0062, B:22:0x0089, B:23:0x008f, B:38:0x00cc, B:34:0x00b3, B:30:0x00a4, B:31:0x00ae, B:29:0x009d, B:35:0x00bd, B:37:0x00c1, B:47:0x00e3, B:48:0x00ed, B:44:0x00d8, B:45:0x00e1, B:19:0x0069, B:21:0x0076, B:28:0x0096, B:10:0x0018, B:12:0x0025, B:43:0x00d1), top: B:58:0x0001, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0076 A[Catch: all -> 0x0093, RemoteException -> 0x0095, TRY_LEAVE, TryCatch #2 {RemoteException -> 0x0095, blocks: (B:19:0x0069, B:21:0x0076), top: B:55:0x0069, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00af  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b3 A[Catch: all -> 0x00ee, TryCatch #4 {, blocks: (B:3:0x0001, B:5:0x0008, B:7:0x000e, B:8:0x0012, B:14:0x002c, B:16:0x0062, B:22:0x0089, B:23:0x008f, B:38:0x00cc, B:34:0x00b3, B:30:0x00a4, B:31:0x00ae, B:29:0x009d, B:35:0x00bd, B:37:0x00c1, B:47:0x00e3, B:48:0x00ed, B:44:0x00d8, B:45:0x00e1, B:19:0x0069, B:21:0x0076, B:28:0x0096, B:10:0x0018, B:12:0x0025, B:43:0x00d1), top: B:58:0x0001, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00bd A[Catch: all -> 0x00ee, TryCatch #4 {, blocks: (B:3:0x0001, B:5:0x0008, B:7:0x000e, B:8:0x0012, B:14:0x002c, B:16:0x0062, B:22:0x0089, B:23:0x008f, B:38:0x00cc, B:34:0x00b3, B:30:0x00a4, B:31:0x00ae, B:29:0x009d, B:35:0x00bd, B:37:0x00c1, B:47:0x00e3, B:48:0x00ed, B:44:0x00d8, B:45:0x00e1, B:19:0x0069, B:21:0x0076, B:28:0x0096, B:10:0x0018, B:12:0x0025, B:43:0x00d1), top: B:58:0x0001, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00c1 A[Catch: all -> 0x00ee, TryCatch #4 {, blocks: (B:3:0x0001, B:5:0x0008, B:7:0x000e, B:8:0x0012, B:14:0x002c, B:16:0x0062, B:22:0x0089, B:23:0x008f, B:38:0x00cc, B:34:0x00b3, B:30:0x00a4, B:31:0x00ae, B:29:0x009d, B:35:0x00bd, B:37:0x00c1, B:47:0x00e3, B:48:0x00ed, B:44:0x00d8, B:45:0x00e1, B:19:0x0069, B:21:0x0076, B:28:0x0096, B:10:0x0018, B:12:0x0025, B:43:0x00d1), top: B:58:0x0001, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public void onAirplaneModeChanged() {
        ReentrantReadWriteLock.ReadLock lock;
        synchronized (this) {
            if (isBluetoothPersistedStateOn()) {
                if (isAirplaneModeOn()) {
                    persistBluetoothSetting(2);
                } else {
                    persistBluetoothSetting(1);
                }
            }
            int st = 10;
            try {
                try {
                    this.mBluetoothLock.readLock().lock();
                    if (this.mBluetooth != null) {
                        st = this.mBluetooth.getState();
                        this.mBluetoothLock.readLock().unlock();
                        Slog.d(TAG, "Airplane Mode change - current state:  " + BluetoothAdapter.nameForState(st) + ", isAirplaneModeOn()=" + isAirplaneModeOn());
                        if (isAirplaneModeOn()) {
                            clearBleApps();
                            try {
                                if (st == 15) {
                                    try {
                                        this.mBluetoothLock.readLock().lock();
                                        if (this.mBluetooth != null) {
                                            addActiveLog(2, this.mContext.getPackageName(), false);
                                            this.mBluetooth.onBrEdrDown();
                                            this.mEnable = false;
                                            this.mEnableExternal = false;
                                        }
                                        lock = this.mBluetoothLock.readLock();
                                    } catch (RemoteException e) {
                                        Slog.e(TAG, "Unable to call onBrEdrDown", e);
                                        lock = this.mBluetoothLock.readLock();
                                    }
                                    lock.unlock();
                                } else if (st == 12) {
                                    sendDisableMsg(2, this.mContext.getPackageName());
                                }
                            } catch (Throwable th) {
                                this.mBluetoothLock.readLock().unlock();
                                throw th;
                            }
                        } else if (this.mEnableExternal) {
                            sendEnableMsg(this.mQuietEnableExternal, 2, this.mContext.getPackageName());
                        }
                    } else {
                        this.mBluetoothLock.readLock().unlock();
                        Slog.d(TAG, "Airplane Mode change - current state:  " + BluetoothAdapter.nameForState(st) + ", isAirplaneModeOn()=" + isAirplaneModeOn());
                        if (isAirplaneModeOn()) {
                            clearBleApps();
                            if (st == 15) {
                                this.mBluetoothLock.readLock().lock();
                                if (this.mBluetooth != null) {
                                    addActiveLog(2, this.mContext.getPackageName(), false);
                                    this.mBluetooth.onBrEdrDown();
                                    this.mEnable = false;
                                    this.mEnableExternal = false;
                                }
                                lock = this.mBluetoothLock.readLock();
                                lock.unlock();
                            } else if (st == 12) {
                                sendDisableMsg(2, this.mContext.getPackageName());
                            }
                        } else if (this.mEnableExternal) {
                            sendEnableMsg(this.mQuietEnableExternal, 2, this.mContext.getPackageName());
                        }
                    }
                } catch (RemoteException e2) {
                    Slog.e(TAG, "Unable to call getState", e2);
                    this.mBluetoothLock.readLock().unlock();
                    return;
                }
            } catch (Throwable th2) {
                this.mBluetoothLock.readLock().unlock();
                throw th2;
            }
            throw th;
        }
    }

    BluetoothManagerService(Context context) {
        this.mBindRetryTimes = 0;
        this.mContext = context;
        this.mWirelessConsentRequired = context.getResources().getBoolean(R.bool.config_defaultAdasGnssLocationEnabled);
        this.mBindRetryTimes = 0;
        Slog.d(TAG, "mIsBleSupported is " + this.mIsBleSupported);
        this.mState = 10;
        this.mQuietEnableExternal = false;
        this.mEnableExternal = false;
        this.mAddress = null;
        this.mName = null;
        this.mDefaultName = null;
        this.mErrorRecoveryRetryCounter = 0;
        this.mContentResolver = context.getContentResolver();
        registerForBleScanModeChange();
        this.mCallbacks = new RemoteCallbackList<>();
        this.mStateChangeCallbacks = new RemoteCallbackList<>();
        this.mIsHearingAidProfileSupported = context.getResources().getBoolean(R.bool.config_cecQuerySadDtsEnabled_default);
        String value = SystemProperties.get("persist.sys.fflag.override.settings_bluetooth_hearing_aid");
        if (!TextUtils.isEmpty(value)) {
            boolean isHearingAidEnabled = Boolean.parseBoolean(value);
            Log.v(TAG, "set feature flag HEARING_AID_SETTINGS to " + isHearingAidEnabled);
            FeatureFlagUtils.setEnabled(context, "settings_bluetooth_hearing_aid", isHearingAidEnabled);
            if (isHearingAidEnabled && !this.mIsHearingAidProfileSupported) {
                this.mIsHearingAidProfileSupported = true;
            }
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.bluetooth.adapter.action.LOCAL_NAME_CHANGED");
        filter.addAction("android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED");
        filter.addAction("android.os.action.SETTING_RESTORED");
        filter.setPriority(1000);
        this.mContext.registerReceiver(this.mReceiver, filter);
        loadStoredNameAndAddress();
        if (isBluetoothPersistedStateOn()) {
            Slog.d(TAG, "Startup: Bluetooth persisted state is ON.");
            this.mEnableExternal = true;
        }
        String airplaneModeRadios = Settings.Global.getString(this.mContentResolver, "airplane_mode_radios");
        if (airplaneModeRadios == null || airplaneModeRadios.contains("bluetooth")) {
            this.mBluetoothAirplaneModeListener = new BluetoothAirplaneModeListener(this, IoThread.get().getLooper(), context);
        }
        int systemUiUid = -1;
        boolean noHome = this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadMp3Enabled_default);
        if (!noHome) {
            PackageManagerInternal pm = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            systemUiUid = pm.getPackageUid(pm.getSystemUiServiceComponent().getPackageName(), 1048576, 0);
        }
        if (systemUiUid >= 0) {
            Slog.d(TAG, "Detected SystemUiUid: " + Integer.toString(systemUiUid));
        } else {
            Slog.w(TAG, "Unable to resolve SystemUI's UID.");
        }
        this.mSystemUiUid = systemUiUid;
    }

    private boolean isAirplaneModeOn() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) == 1;
    }

    private boolean supportBluetoothPersistedState() {
        return this.mContext.getResources().getBoolean(R.bool.config_cecRcProfileSourceTopMenuHandled_default);
    }

    private boolean isBluetoothPersistedStateOn() {
        if (!supportBluetoothPersistedState()) {
            return false;
        }
        int state = Settings.Global.getInt(this.mContentResolver, "bluetooth_on", -1);
        Slog.d(TAG, "Bluetooth persisted state: " + state);
        return state != 0;
    }

    private boolean isBluetoothPersistedStateOnAirplane() {
        if (!supportBluetoothPersistedState()) {
            return false;
        }
        int state = Settings.Global.getInt(this.mContentResolver, "bluetooth_on", -1);
        Slog.d(TAG, "Bluetooth persisted state: " + state);
        return state == 2;
    }

    private boolean isBluetoothPersistedStateOnBluetooth() {
        return supportBluetoothPersistedState() && Settings.Global.getInt(this.mContentResolver, "bluetooth_on", 1) == 1;
    }

    private boolean isBluetoothPersistedStateOnCarPower() {
        return supportBluetoothPersistedState() && Settings.Global.getInt(this.mContentResolver, "bluetooth_on", 3) == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void persistBluetoothSetting(int value) {
        Slog.d(TAG, "Persisting Bluetooth Setting: " + value);
        if (value == 1 && isBluetoothPersistedStateOnCarPower()) {
            Slog.d(TAG, "Ignore for Car Bluetooth");
            return;
        }
        long callingIdentity = Binder.clearCallingIdentity();
        Settings.Global.putInt(this.mContext.getContentResolver(), "bluetooth_on", value);
        Binder.restoreCallingIdentity(callingIdentity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNameAndAddressSet() {
        String str = this.mName;
        return str != null && this.mAddress != null && str.length() > 0 && this.mAddress.length() > 0;
    }

    private void loadStoredNameAndAddress() {
        Slog.d(TAG, "Loading stored name and address");
        if (this.mContext.getResources().getBoolean(R.bool.config_batterySaver_full_deferFullBackup) && Settings.Secure.getInt(this.mContentResolver, SECURE_SETTINGS_BLUETOOTH_ADDR_VALID, 0) == 0) {
            Slog.d(TAG, "invalid bluetooth name and address stored");
            return;
        }
        this.mName = Settings.Secure.getString(this.mContentResolver, SECURE_SETTINGS_BLUETOOTH_NAME);
        this.mAddress = Settings.Secure.getString(this.mContentResolver, SECURE_SETTINGS_BLUETOOTH_ADDRESS);
        Slog.d(TAG, "Stored bluetooth Name=" + this.mName + ",Address=" + this.mAddress);
        String str = this.mName;
        if (str == null || str.isEmpty()) {
            this.mDefaultName = this.mContext.getResources().getString(R.string.console_running_notification_title);
            Slog.d(TAG, "load default bluetooth Name =" + this.mDefaultName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void storeNameAndAddress(String name, String address) {
        if (name != null) {
            Settings.Secure.putString(this.mContentResolver, SECURE_SETTINGS_BLUETOOTH_NAME, name);
            this.mName = name;
            Slog.d(TAG, "Stored Bluetooth name: " + Settings.Secure.getString(this.mContentResolver, SECURE_SETTINGS_BLUETOOTH_NAME));
        }
        if (address != null) {
            Settings.Secure.putString(this.mContentResolver, SECURE_SETTINGS_BLUETOOTH_ADDRESS, address);
            this.mAddress = address;
            Slog.d(TAG, "Stored Bluetoothaddress: " + Settings.Secure.getString(this.mContentResolver, SECURE_SETTINGS_BLUETOOTH_ADDRESS));
        }
        if (name != null && address != null) {
            Settings.Secure.putInt(this.mContentResolver, SECURE_SETTINGS_BLUETOOTH_ADDR_VALID, 1);
        }
    }

    public IBluetooth registerAdapter(IBluetoothManagerCallback callback) {
        if (callback == null) {
            Slog.w(TAG, "Callback is null in registerAdapter");
            return null;
        }
        synchronized (this.mCallbacks) {
            this.mCallbacks.register(callback);
        }
        return this.mBluetooth;
    }

    public void unregisterAdapter(IBluetoothManagerCallback callback) {
        if (callback == null) {
            Slog.w(TAG, "Callback is null in unregisterAdapter");
            return;
        }
        this.mContext.enforceCallingOrSelfPermission(BLUETOOTH_PERM, "Need BLUETOOTH permission");
        synchronized (this.mCallbacks) {
            this.mCallbacks.unregister(callback);
        }
    }

    public void registerStateChangeCallback(IBluetoothStateChangeCallback callback) {
        this.mContext.enforceCallingOrSelfPermission(BLUETOOTH_PERM, "Need BLUETOOTH permission");
        if (callback == null) {
            Slog.w(TAG, "registerStateChangeCallback: Callback is null!");
            return;
        }
        Message msg = this.mHandler.obtainMessage(30);
        msg.obj = callback;
        this.mHandler.sendMessage(msg);
    }

    public void unregisterStateChangeCallback(IBluetoothStateChangeCallback callback) {
        this.mContext.enforceCallingOrSelfPermission(BLUETOOTH_PERM, "Need BLUETOOTH permission");
        if (callback == null) {
            Slog.w(TAG, "unregisterStateChangeCallback: Callback is null!");
            return;
        }
        Message msg = this.mHandler.obtainMessage(31);
        msg.obj = callback;
        this.mHandler.sendMessage(msg);
    }

    public boolean isEnabled() {
        return getState() == 12;
    }

    public int getState() {
        if (Binder.getCallingUid() != 1000 && !checkIfCallerIsForegroundUser()) {
            Slog.w(TAG, "getState(): report OFF for non-active and non system user");
            return 10;
        }
        try {
            try {
                this.mBluetoothLock.readLock().lock();
                if (this.mBluetooth != null) {
                    return this.mBluetooth.getState();
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "getState()", e);
            }
            return 10;
        } finally {
            this.mBluetoothLock.readLock().unlock();
        }
    }

    class ClientDeathRecipient implements IBinder.DeathRecipient {
        private String mPackageName;

        ClientDeathRecipient(String packageName) {
            this.mPackageName = packageName;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Slog.d(BluetoothManagerService.TAG, "Binder is dead - unregister " + this.mPackageName);
            for (Map.Entry<IBinder, ClientDeathRecipient> entry : BluetoothManagerService.this.mBleApps.entrySet()) {
                IBinder token = entry.getKey();
                ClientDeathRecipient deathRec = entry.getValue();
                if (deathRec.equals(this)) {
                    BluetoothManagerService.this.updateBleAppCount(token, false, this.mPackageName);
                    return;
                }
            }
        }

        public String getPackageName() {
            return this.mPackageName;
        }
    }

    public boolean isBleScanAlwaysAvailable() {
        if (isAirplaneModeOn() && !this.mEnable) {
            return false;
        }
        try {
            return Settings.Global.getInt(this.mContentResolver, "ble_scan_always_enabled") != 0;
        } catch (Settings.SettingNotFoundException e) {
            return false;
        }
    }

    public boolean isHearingAidProfileSupported() {
        return this.mIsHearingAidProfileSupported;
    }

    public List<String> getSystemConfigEnabledProfilesForPackage(String packageName) {
        ArrayMap<String, Boolean> componentEnabledStates;
        if (Binder.getCallingUid() != 1002) {
            Slog.w(TAG, "getSystemConfigEnabledProfilesForPackage(): not allowed for non-bluetooth");
            return null;
        }
        SystemConfig systemConfig = SystemConfig.getInstance();
        if (systemConfig == null || (componentEnabledStates = systemConfig.getComponentsEnabledStates(packageName)) == null) {
            return null;
        }
        ArrayList enabledProfiles = new ArrayList();
        for (Map.Entry<String, Boolean> entry : componentEnabledStates.entrySet()) {
            if (entry.getValue().booleanValue()) {
                enabledProfiles.add(entry.getKey());
            }
        }
        return enabledProfiles;
    }

    private void registerForBleScanModeChange() {
        ContentObserver contentObserver = new ContentObserver(null) { // from class: com.android.server.BluetoothManagerService.4
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                if (!BluetoothManagerService.this.isBleScanAlwaysAvailable()) {
                    BluetoothManagerService.this.disableBleScanMode();
                    BluetoothManagerService.this.clearBleApps();
                    try {
                        try {
                            BluetoothManagerService.this.mBluetoothLock.readLock().lock();
                            if (BluetoothManagerService.this.mBluetooth != null) {
                                BluetoothManagerService.this.addActiveLog(1, BluetoothManagerService.this.mContext.getPackageName(), false);
                                BluetoothManagerService.this.mBluetooth.onBrEdrDown();
                            }
                        } catch (RemoteException e) {
                            Slog.e(BluetoothManagerService.TAG, "error when disabling bluetooth", e);
                        }
                    } finally {
                        BluetoothManagerService.this.mBluetoothLock.readLock().unlock();
                    }
                }
            }
        };
        this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("ble_scan_always_enabled"), false, contentObserver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disableBleScanMode() {
        try {
            try {
                this.mBluetoothLock.writeLock().lock();
                if (this.mBluetooth != null && this.mBluetooth.getState() != 12) {
                    Slog.d(TAG, "Reseting the mEnable flag for clean disable");
                    this.mEnable = false;
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "getState()", e);
            }
        } finally {
            this.mBluetoothLock.writeLock().unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int updateBleAppCount(IBinder token, boolean enable, String packageName) {
        ClientDeathRecipient r = this.mBleApps.get(token);
        if (r == null && enable) {
            ClientDeathRecipient deathRec = new ClientDeathRecipient(packageName);
            try {
                token.linkToDeath(deathRec, 0);
                this.mBleApps.put(token, deathRec);
                Slog.d(TAG, "Registered for death of " + packageName);
            } catch (RemoteException e) {
                throw new IllegalArgumentException("BLE app (" + packageName + ") already dead!");
            }
        } else if (!enable && r != null) {
            token.unlinkToDeath(r, 0);
            this.mBleApps.remove(token);
            Slog.d(TAG, "Unregistered for death of " + packageName);
        }
        int appCount = this.mBleApps.size();
        Slog.d(TAG, appCount + " registered Ble Apps");
        return appCount;
    }

    private boolean checkBluetoothPermissions(String packageName, boolean requireForeground) {
        if (isBluetoothDisallowed()) {
            Slog.d(TAG, "checkBluetoothPermissions: bluetooth disallowed");
            return false;
        }
        int callingUid = Binder.getCallingUid();
        boolean isCallerSystem = UserHandle.getAppId(callingUid) == 1000;
        if (!isCallerSystem) {
            checkPackage(callingUid, packageName);
            if (requireForeground && !checkIfCallerIsForegroundUser()) {
                Slog.w(TAG, "Not allowed for non-active and non system user");
                return false;
            }
            this.mContext.enforceCallingOrSelfPermission(BLUETOOTH_ADMIN_PERM, "Need BLUETOOTH ADMIN permission");
        }
        return true;
    }

    public boolean enableBle(String packageName, IBinder token) throws RemoteException {
        if (!checkBluetoothPermissions(packageName, false)) {
            Slog.d(TAG, "enableBle(): bluetooth disallowed");
            return false;
        }
        Slog.d(TAG, "enableBle(" + packageName + "):  mBluetooth =" + this.mBluetooth + " mBinding = " + this.mBinding + " mState = " + BluetoothAdapter.nameForState(this.mState));
        updateBleAppCount(token, true, packageName);
        int i = this.mState;
        if (i == 12 || i == 15 || i == 11 || i == 13) {
            Log.d(TAG, "enableBLE(): Bluetooth already enabled");
            return true;
        }
        synchronized (this.mReceiver) {
            sendEnableMsg(false, 1, packageName);
        }
        return true;
    }

    public boolean disableBle(String packageName, IBinder token) throws RemoteException {
        if (!checkBluetoothPermissions(packageName, false)) {
            Slog.d(TAG, "disableBLE(): bluetooth disallowed");
            return false;
        }
        Slog.d(TAG, "disableBle(" + packageName + "):  mBluetooth =" + this.mBluetooth + " mBinding = " + this.mBinding + " mState = " + BluetoothAdapter.nameForState(this.mState));
        if (this.mState == 10) {
            Slog.d(TAG, "disableBLE(): Already disabled");
            return false;
        }
        updateBleAppCount(token, false, packageName);
        if (this.mState == 15 && !isBleAppPresent()) {
            if (this.mEnable) {
                disableBleScanMode();
            }
            if (!this.mEnableExternal) {
                addActiveLog(1, packageName, false);
                sendBrEdrDownCallback();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBleApps() {
        this.mBleApps.clear();
    }

    public boolean isBleAppPresent() {
        Slog.d(TAG, "isBleAppPresent() count: " + this.mBleApps.size());
        return this.mBleApps.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void continueFromBleOnState() {
        Slog.d(TAG, "continueFromBleOnState()");
        try {
            try {
                this.mBluetoothLock.readLock().lock();
                if (this.mBluetooth == null) {
                    Slog.e(TAG, "onBluetoothServiceUp: mBluetooth is null!");
                    return;
                }
                if (!this.mEnableExternal && !isBleAppPresent()) {
                    Slog.i(TAG, "Bluetooth was disabled while enabling BLE, disable BLE now");
                    this.mEnable = false;
                    this.mBluetooth.onBrEdrDown();
                } else {
                    if (isBluetoothPersistedStateOnBluetooth() || isBluetoothPersistedStateOnCarPower() || !isBleAppPresent()) {
                        this.mBluetooth.onLeServiceUp();
                        persistBluetoothSetting(1);
                    }
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "Unable to call onServiceUp", e);
            }
        } finally {
            this.mBluetoothLock.readLock().unlock();
        }
    }

    private void sendBrEdrDownCallback() {
        Slog.d(TAG, "Calling sendBrEdrDownCallback callbacks");
        if (this.mBluetooth == null) {
            Slog.w(TAG, "Bluetooth handle is null");
            return;
        }
        try {
            if (isBleAppPresent()) {
                try {
                    this.mBluetoothGatt.unregAll();
                    return;
                } catch (RemoteException e) {
                    Slog.e(TAG, "Unable to disconnect all apps.", e);
                    return;
                }
            }
            try {
                this.mBluetoothLock.readLock().lock();
                if (this.mBluetooth != null) {
                    this.mBluetooth.onBrEdrDown();
                }
            } catch (RemoteException e2) {
                Slog.e(TAG, "Call to onBrEdrDown() failed.", e2);
            }
        } finally {
            this.mBluetoothLock.readLock().unlock();
        }
    }

    public boolean enableNoAutoConnect(String packageName) {
        if (!checkBluetoothPermissions(packageName, false)) {
            Slog.d(TAG, "enableNoAutoConnect(): not enabling - bluetooth disallowed");
            return false;
        }
        Slog.d(TAG, "enableNoAutoConnect():  mBluetooth =" + this.mBluetooth + " mBinding = " + this.mBinding);
        int callingAppId = UserHandle.getAppId(Binder.getCallingUid());
        if (callingAppId != 1027) {
            throw new SecurityException("no permission to enable Bluetooth quietly");
        }
        synchronized (this.mReceiver) {
            this.mQuietEnableExternal = true;
            this.mEnableExternal = true;
            sendEnableMsg(true, 1, packageName);
        }
        return true;
    }

    public boolean enable(String packageName) throws RemoteException {
        if (!checkBluetoothPermissions(packageName, true)) {
            Slog.d(TAG, "enable(): not enabling - bluetooth disallowed");
            return false;
        }
        int callingUid = Binder.getCallingUid();
        boolean callerSystem = UserHandle.getAppId(callingUid) == 1000;
        if (!callerSystem && !isEnabled() && this.mWirelessConsentRequired && startConsentUiIfNeeded(packageName, callingUid, "android.bluetooth.adapter.action.REQUEST_ENABLE")) {
            return false;
        }
        Slog.d(TAG, "enable(" + packageName + "):  mBluetooth =" + this.mBluetooth + " mBinding = " + this.mBinding + " mState = " + BluetoothAdapter.nameForState(this.mState));
        synchronized (this.mReceiver) {
            this.mQuietEnableExternal = false;
            this.mEnableExternal = true;
            sendEnableMsg(false, 1, packageName);
        }
        Slog.d(TAG, "enable returning");
        return true;
    }

    public boolean disable(String packageName, boolean persist) throws RemoteException {
        if (!checkBluetoothPermissions(packageName, true)) {
            Slog.d(TAG, "disable(): not disabling - bluetooth disallowed");
            return false;
        }
        int callingUid = Binder.getCallingUid();
        boolean callerSystem = UserHandle.getAppId(callingUid) == 1000;
        if (!callerSystem && isEnabled() && this.mWirelessConsentRequired && startConsentUiIfNeeded(packageName, callingUid, "android.bluetooth.adapter.action.REQUEST_DISABLE")) {
            return false;
        }
        Slog.d(TAG, "disable(" + packageName + "): mBluetooth = " + this.mBluetooth + " mBinding = " + this.mBinding);
        synchronized (this.mReceiver) {
            if (!isBluetoothPersistedStateOnAirplane()) {
                if (persist) {
                    persistBluetoothSetting(0);
                }
                this.mEnableExternal = false;
            }
            sendDisableMsg(1, packageName);
        }
        return true;
    }

    private boolean startConsentUiIfNeeded(String packageName, int callingUid, String intentAction) throws RemoteException {
        if (checkBluetoothPermissionWhenWirelessConsentRequired()) {
            return false;
        }
        try {
            ApplicationInfo applicationInfo = this.mContext.getPackageManager().getApplicationInfoAsUser(packageName, AudioFormat.EVRC, UserHandle.getUserId(callingUid));
            if (applicationInfo.uid != callingUid) {
                throw new SecurityException("Package " + packageName + " not in uid " + callingUid);
            }
            Intent intent = new Intent(intentAction);
            intent.putExtra("android.intent.extra.PACKAGE_NAME", packageName);
            intent.setFlags(276824064);
            try {
                this.mContext.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException e) {
                Slog.e(TAG, "Intent to handle action " + intentAction + " missing");
                return false;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RemoteException(e2.getMessage());
        }
    }

    private void checkPackage(int uid, String packageName) {
        AppOpsManager appOpsManager = this.mAppOps;
        if (appOpsManager == null) {
            Slog.w(TAG, "checkPackage(): called before system boot up, uid " + uid + ", packageName " + packageName);
            throw new IllegalStateException("System has not boot yet");
        }
        if (packageName == null) {
            Slog.w(TAG, "checkPackage(): called with null packageName from " + uid);
            return;
        }
        try {
            appOpsManager.checkPackage(uid, packageName);
        } catch (SecurityException e) {
            Slog.w(TAG, "checkPackage(): " + packageName + " does not belong to uid " + uid);
            throw new SecurityException(e.getMessage());
        }
    }

    private boolean checkBluetoothPermissionWhenWirelessConsentRequired() {
        int result = this.mContext.checkCallingPermission("android.permission.MANAGE_BLUETOOTH_WHEN_WIRELESS_CONSENT_REQUIRED");
        return result == 0;
    }

    public void unbindAndFinish() {
        Slog.d(TAG, "unbindAndFinish(): " + this.mBluetooth + " mBinding = " + this.mBinding + " mUnbinding = " + this.mUnbinding);
        try {
            this.mBluetoothLock.writeLock().lock();
            if (!this.mUnbinding) {
                this.mUnbinding = true;
                this.mHandler.removeMessages(60);
                this.mHandler.removeMessages(MESSAGE_BIND_PROFILE_SERVICE);
                if (this.mBluetooth != null) {
                    try {
                        this.mBluetooth.unregisterCallback(this.mBluetoothCallback);
                    } catch (RemoteException re) {
                        Slog.e(TAG, "Unable to unregister BluetoothCallback", re);
                    }
                    this.mBluetoothBinder = null;
                    this.mBluetooth = null;
                    this.mContext.unbindService(this.mConnection);
                    this.mUnbinding = false;
                    this.mBinding = false;
                } else {
                    this.mUnbinding = false;
                }
                this.mBluetoothGatt = null;
                this.mBluetoothLock.writeLock().unlock();
                return;
            }
            this.mBluetoothLock.writeLock().unlock();
        } catch (Throwable th) {
            this.mBluetoothLock.writeLock().unlock();
            throw th;
        }
    }

    public IBluetoothGatt getBluetoothGatt() {
        return this.mBluetoothGatt;
    }

    public boolean bindBluetoothProfileService(int bluetoothProfile, IBluetoothProfileServiceConnection proxy) {
        if (this.mState != 12) {
            Slog.d(TAG, "Trying to bind to profile: " + bluetoothProfile + ", while Bluetooth was disabled");
            return false;
        }
        synchronized (this.mProfileServices) {
            if (this.mProfileServices.get(new Integer(bluetoothProfile)) == null) {
                Slog.d(TAG, "Creating new ProfileServiceConnections object for profile: " + bluetoothProfile);
                if (bluetoothProfile != 1) {
                    return false;
                }
                Intent intent = new Intent(IBluetoothHeadset.class.getName());
                ProfileServiceConnections psc = new ProfileServiceConnections(intent);
                if (!psc.bindService()) {
                    return false;
                }
                this.mProfileServices.put(new Integer(bluetoothProfile), psc);
            }
            Message addProxyMsg = this.mHandler.obtainMessage(400);
            addProxyMsg.arg1 = bluetoothProfile;
            addProxyMsg.obj = proxy;
            this.mHandler.sendMessageDelayed(addProxyMsg, 100L);
            return true;
        }
    }

    public void unbindBluetoothProfileService(int bluetoothProfile, IBluetoothProfileServiceConnection proxy) {
        synchronized (this.mProfileServices) {
            Integer profile = new Integer(bluetoothProfile);
            ProfileServiceConnections psc = this.mProfileServices.get(profile);
            if (psc == null) {
                return;
            }
            psc.removeProxy(proxy);
            if (psc.isEmpty()) {
                try {
                    this.mContext.unbindService(psc);
                } catch (IllegalArgumentException e) {
                    Slog.e(TAG, "Unable to unbind service with intent: " + psc.mIntent, e);
                }
                this.mProfileServices.remove(profile);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unbindAllBluetoothProfileServices() {
        synchronized (this.mProfileServices) {
            for (Integer i : this.mProfileServices.keySet()) {
                ProfileServiceConnections psc = this.mProfileServices.get(i);
                try {
                    this.mContext.unbindService(psc);
                } catch (IllegalArgumentException e) {
                    Slog.e(TAG, "Unable to unbind service with intent: " + psc.mIntent, e);
                }
                psc.removeAllProxies();
            }
            this.mProfileServices.clear();
        }
    }

    public void handleOnBootPhase() {
        Slog.d(TAG, "Bluetooth boot completed");
        this.mAppOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        UserManagerInternal userManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        userManagerInternal.addUserRestrictionsListener(this.mUserRestrictionsListener);
        boolean isBluetoothDisallowed = isBluetoothDisallowed();
        if (isBluetoothDisallowed) {
            return;
        }
        boolean isSafeMode = this.mContext.getPackageManager().isSafeMode();
        if (this.mEnableExternal && isBluetoothPersistedStateOnBluetooth() && !isSafeMode) {
            Slog.d(TAG, "Auto-enabling Bluetooth.");
            sendEnableMsg(this.mQuietEnableExternal, 6, this.mContext.getPackageName());
        } else if (!isNameAndAddressSet()) {
            Slog.d(TAG, "Getting adapter name and address");
            Message getMsg = this.mHandler.obtainMessage(DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE);
            this.mHandler.sendMessage(getMsg);
        }
        BluetoothAirplaneModeListener bluetoothAirplaneModeListener = this.mBluetoothAirplaneModeListener;
        if (bluetoothAirplaneModeListener != null) {
            bluetoothAirplaneModeListener.start(new BluetoothAirplaneModeListener.AirplaneModeHelper(this.mContext));
        }
    }

    public void handleOnSwitchUser(int userHandle) {
        Slog.d(TAG, "User " + userHandle + " switched");
        this.mHandler.obtainMessage(DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR, userHandle, 0).sendToTarget();
    }

    public void handleOnUnlockUser(int userHandle) {
        Slog.d(TAG, "User " + userHandle + " unlocked");
        this.mHandler.obtainMessage(MESSAGE_USER_UNLOCKED, userHandle, 0).sendToTarget();
    }

    private final class ProfileServiceConnections implements ServiceConnection, IBinder.DeathRecipient {
        Intent mIntent;
        final RemoteCallbackList<IBluetoothProfileServiceConnection> mProxies = new RemoteCallbackList<>();
        boolean mInvokingProxyCallbacks = false;
        IBinder mService = null;
        ComponentName mClassName = null;

        ProfileServiceConnections(Intent intent) {
            this.mIntent = intent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean bindService() {
            try {
                try {
                    BluetoothManagerService.this.mBluetoothLock.readLock().lock();
                    int state = BluetoothManagerService.this.mBluetooth != null ? BluetoothManagerService.this.mBluetooth.getState() : 10;
                    BluetoothManagerService.this.mBluetoothLock.readLock().unlock();
                    if (state != 12) {
                        Slog.d(BluetoothManagerService.TAG, "Unable to bindService while Bluetooth is disabled");
                        return false;
                    }
                    Intent intent = this.mIntent;
                    if (intent != null && this.mService == null && BluetoothManagerService.this.doBind(intent, this, 0, UserHandle.CURRENT_OR_SELF)) {
                        Message msg = BluetoothManagerService.this.mHandler.obtainMessage(BluetoothManagerService.MESSAGE_BIND_PROFILE_SERVICE);
                        msg.obj = this;
                        BluetoothManagerService.this.mHandler.sendMessageDelayed(msg, BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS);
                        return true;
                    }
                    Slog.w(BluetoothManagerService.TAG, "Unable to bind with intent: " + this.mIntent);
                    return false;
                } catch (RemoteException e) {
                    Slog.e(BluetoothManagerService.TAG, "Unable to call getState", e);
                    BluetoothManagerService.this.mBluetoothLock.readLock().unlock();
                    return false;
                }
            } catch (Throwable th) {
                BluetoothManagerService.this.mBluetoothLock.readLock().unlock();
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addProxy(IBluetoothProfileServiceConnection proxy) {
            this.mProxies.register(proxy);
            IBinder iBinder = this.mService;
            if (iBinder == null) {
                if (!BluetoothManagerService.this.mHandler.hasMessages(BluetoothManagerService.MESSAGE_BIND_PROFILE_SERVICE, this)) {
                    Message msg = BluetoothManagerService.this.mHandler.obtainMessage(BluetoothManagerService.MESSAGE_BIND_PROFILE_SERVICE);
                    msg.obj = this;
                    BluetoothManagerService.this.mHandler.sendMessage(msg);
                    return;
                }
                return;
            }
            try {
                proxy.onServiceConnected(this.mClassName, iBinder);
            } catch (RemoteException e) {
                Slog.e(BluetoothManagerService.TAG, "Unable to connect to proxy", e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeProxy(IBluetoothProfileServiceConnection proxy) {
            if (proxy == null) {
                Slog.w(BluetoothManagerService.TAG, "Trying to remove a null proxy");
            } else if (this.mProxies.unregister(proxy)) {
                try {
                    proxy.onServiceDisconnected(this.mClassName);
                } catch (RemoteException e) {
                    Slog.e(BluetoothManagerService.TAG, "Unable to disconnect proxy", e);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAllProxies() {
            onServiceDisconnected(this.mClassName);
            this.mProxies.kill();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isEmpty() {
            return this.mProxies.getRegisteredCallbackCount() == 0;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName className, IBinder service) {
            BluetoothManagerService.this.mHandler.removeMessages(BluetoothManagerService.MESSAGE_BIND_PROFILE_SERVICE, this);
            this.mService = service;
            this.mClassName = className;
            try {
                service.linkToDeath(this, 0);
            } catch (RemoteException e) {
                Slog.e(BluetoothManagerService.TAG, "Unable to linkToDeath", e);
            }
            if (this.mInvokingProxyCallbacks) {
                Slog.e(BluetoothManagerService.TAG, "Proxy callbacks already in progress.");
                return;
            }
            this.mInvokingProxyCallbacks = true;
            int n = this.mProxies.beginBroadcast();
            for (int i = 0; i < n; i++) {
                try {
                    try {
                        this.mProxies.getBroadcastItem(i).onServiceConnected(className, service);
                    } catch (RemoteException e2) {
                        Slog.e(BluetoothManagerService.TAG, "Unable to connect to proxy", e2);
                    }
                } catch (Throwable th) {
                    this.mProxies.finishBroadcast();
                    this.mInvokingProxyCallbacks = false;
                    throw th;
                }
            }
            this.mProxies.finishBroadcast();
            this.mInvokingProxyCallbacks = false;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName className) {
            IBinder iBinder = this.mService;
            if (iBinder == null) {
                return;
            }
            try {
                iBinder.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
                Log.e(BluetoothManagerService.TAG, "error unlinking to death", e);
            }
            this.mService = null;
            this.mClassName = null;
            if (this.mInvokingProxyCallbacks) {
                Slog.e(BluetoothManagerService.TAG, "Proxy callbacks already in progress.");
                return;
            }
            this.mInvokingProxyCallbacks = true;
            int n = this.mProxies.beginBroadcast();
            for (int i = 0; i < n; i++) {
                try {
                    try {
                        this.mProxies.getBroadcastItem(i).onServiceDisconnected(className);
                    } catch (RemoteException e2) {
                        Slog.e(BluetoothManagerService.TAG, "Unable to disconnect from proxy", e2);
                    }
                } catch (Throwable th) {
                    this.mProxies.finishBroadcast();
                    this.mInvokingProxyCallbacks = false;
                    throw th;
                }
            }
            this.mProxies.finishBroadcast();
            this.mInvokingProxyCallbacks = false;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Slog.w(BluetoothManagerService.TAG, "Profile service for profile: " + this.mClassName + " died.");
            onServiceDisconnected(this.mClassName);
            Message msg = BluetoothManagerService.this.mHandler.obtainMessage(BluetoothManagerService.MESSAGE_BIND_PROFILE_SERVICE);
            msg.obj = this;
            BluetoothManagerService.this.mHandler.sendMessageDelayed(msg, BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS);
        }
    }

    private void sendBluetoothStateCallback(boolean isUp) {
        try {
            int n = this.mStateChangeCallbacks.beginBroadcast();
            Slog.d(TAG, "Broadcasting onBluetoothStateChange(" + isUp + ") to " + n + " receivers.");
            for (int i = 0; i < n; i++) {
                try {
                    this.mStateChangeCallbacks.getBroadcastItem(i).onBluetoothStateChange(isUp);
                } catch (RemoteException e) {
                    Slog.e(TAG, "Unable to call onBluetoothStateChange() on callback #" + i, e);
                }
            }
            this.mStateChangeCallbacks.finishBroadcast();
        } catch (Throwable th) {
            this.mStateChangeCallbacks.finishBroadcast();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBluetoothServiceUpCallback() {
        synchronized (this.mCallbacks) {
            try {
                int n = this.mCallbacks.beginBroadcast();
                Slog.d(TAG, "Broadcasting onBluetoothServiceUp() to " + n + " receivers.");
                for (int i = 0; i < n; i++) {
                    try {
                        this.mCallbacks.getBroadcastItem(i).onBluetoothServiceUp(this.mBluetooth);
                    } catch (RemoteException e) {
                        Slog.e(TAG, "Unable to call onBluetoothServiceUp() on callback #" + i, e);
                    }
                }
                this.mCallbacks.finishBroadcast();
            } catch (Throwable th) {
                this.mCallbacks.finishBroadcast();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBluetoothServiceDownCallback() {
        synchronized (this.mCallbacks) {
            try {
                try {
                    int n = this.mCallbacks.beginBroadcast();
                    Slog.d(TAG, "Broadcasting onBluetoothServiceDown() to " + n + " receivers.");
                    for (int i = 0; i < n; i++) {
                        try {
                            this.mCallbacks.getBroadcastItem(i).onBluetoothServiceDown();
                        } catch (RemoteException e) {
                            Slog.e(TAG, "Unable to call onBluetoothServiceDown() on callback #" + i, e);
                        }
                    }
                    this.mCallbacks.finishBroadcast();
                } catch (Throwable th) {
                    this.mCallbacks.finishBroadcast();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String getAddress() {
        this.mContext.enforceCallingOrSelfPermission(BLUETOOTH_PERM, "Need BLUETOOTH permission");
        if (Binder.getCallingUid() != 1000 && !checkIfCallerIsForegroundUser()) {
            Slog.w(TAG, "getAddress(): not allowed for non-active and non system user");
            return null;
        }
        if (this.mContext.checkCallingOrSelfPermission("android.permission.LOCAL_MAC_ADDRESS") != 0) {
            return "02:00:00:00:00:00";
        }
        try {
            try {
                this.mBluetoothLock.readLock().lock();
                if (this.mBluetooth != null) {
                    return this.mBluetooth.getAddress();
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "getAddress(): Unable to retrieve address remotely. Returning cached address", e);
            }
            return this.mAddress;
        } finally {
            this.mBluetoothLock.readLock().unlock();
        }
    }

    public String getName() {
        this.mContext.enforceCallingOrSelfPermission(BLUETOOTH_PERM, "Need BLUETOOTH permission");
        if (Binder.getCallingUid() != 1000 && !checkIfCallerIsForegroundUser()) {
            Slog.w(TAG, "getName(): not allowed for non-active and non system user");
            return null;
        }
        try {
            try {
                this.mBluetoothLock.readLock().lock();
                if (this.mBluetooth != null && isEnabled()) {
                    return this.mBluetooth.getName();
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "getName(): Unable to retrieve name remotely. Returning cached name", e);
            }
            return this.mName;
        } finally {
            this.mBluetoothLock.readLock().unlock();
        }
    }

    private class BluetoothServiceConnection implements ServiceConnection {
        private BluetoothServiceConnection() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder service) {
            String name = componentName.getClassName();
            Slog.d(BluetoothManagerService.TAG, "BluetoothServiceConnection: " + name);
            Message msg = BluetoothManagerService.this.mHandler.obtainMessage(40);
            if (name.equals("com.android.bluetooth.btservice.AdapterService")) {
                msg.arg1 = 1;
            } else if (name.equals("com.android.bluetooth.gatt.GattService")) {
                msg.arg1 = 2;
            } else {
                Slog.e(BluetoothManagerService.TAG, "Unknown service connected: " + name);
                return;
            }
            msg.obj = service;
            BluetoothManagerService.this.mHandler.sendMessage(msg);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            String name = componentName.getClassName();
            Slog.d(BluetoothManagerService.TAG, "BluetoothServiceConnection, disconnected: " + name);
            Message msg = BluetoothManagerService.this.mHandler.obtainMessage(41);
            if (name.equals("com.android.bluetooth.btservice.AdapterService")) {
                msg.arg1 = 1;
            } else if (name.equals("com.android.bluetooth.gatt.GattService")) {
                msg.arg1 = 2;
            } else {
                Slog.e(BluetoothManagerService.TAG, "Unknown service disconnected: " + name);
                return;
            }
            BluetoothManagerService.this.mHandler.sendMessage(msg);
        }
    }

    private class BluetoothHandler extends Handler {
        boolean mGetNameAddressOnly;

        BluetoothHandler(Looper looper) {
            super(looper);
            this.mGetNameAddressOnly = false;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                int quietEnable = msg.arg1;
                if (BluetoothManagerService.this.mHandler.hasMessages(4) || BluetoothManagerService.this.mHandler.hasMessages(3)) {
                    BluetoothManagerService.this.mHandler.sendMessageDelayed(BluetoothManagerService.this.mHandler.obtainMessage(1, quietEnable, 0), 300L);
                    return;
                }
                Slog.d(BluetoothManagerService.TAG, "MESSAGE_ENABLE(" + quietEnable + "): mBluetooth = " + BluetoothManagerService.this.mBluetooth);
                BluetoothManagerService.this.mHandler.removeMessages(42);
                BluetoothManagerService.this.mEnable = true;
                try {
                    try {
                        BluetoothManagerService.this.mBluetoothLock.readLock().lock();
                        if (BluetoothManagerService.this.mBluetooth != null) {
                            int state = BluetoothManagerService.this.mBluetooth.getState();
                            if (state == 15) {
                                Slog.w(BluetoothManagerService.TAG, "BT Enable in BLE_ON State, going to ON");
                                BluetoothManagerService.this.mBluetooth.onLeServiceUp();
                                BluetoothManagerService.this.persistBluetoothSetting(1);
                                BluetoothManagerService.this.mBluetoothLock.readLock().unlock();
                                return;
                            }
                        }
                    } catch (RemoteException e) {
                        Slog.e(BluetoothManagerService.TAG, "", e);
                    }
                    BluetoothManagerService.this.mBluetoothLock.readLock().unlock();
                    BluetoothManagerService.this.mQuietEnable = quietEnable == 1;
                    if (BluetoothManagerService.this.mBluetooth == null) {
                        BluetoothManagerService bluetoothManagerService = BluetoothManagerService.this;
                        bluetoothManagerService.handleEnable(bluetoothManagerService.mQuietEnable);
                        return;
                    } else {
                        BluetoothManagerService.this.mWaitForEnableRetry = 0;
                        Message enableDelayedMsg = BluetoothManagerService.this.mHandler.obtainMessage(3);
                        BluetoothManagerService.this.mHandler.sendMessageDelayed(enableDelayedMsg, 300L);
                        return;
                    }
                } catch (Throwable th) {
                    BluetoothManagerService.this.mBluetoothLock.readLock().unlock();
                    throw th;
                }
            }
            if (i == 2) {
                if (BluetoothManagerService.this.mHandler.hasMessages(4) || BluetoothManagerService.this.mBinding || BluetoothManagerService.this.mHandler.hasMessages(3)) {
                    BluetoothManagerService.this.mHandler.sendMessageDelayed(BluetoothManagerService.this.mHandler.obtainMessage(2), 300L);
                    return;
                }
                Slog.d(BluetoothManagerService.TAG, "MESSAGE_DISABLE: mBluetooth = " + BluetoothManagerService.this.mBluetooth + ", mBinding = " + BluetoothManagerService.this.mBinding);
                BluetoothManagerService.this.mHandler.removeMessages(42);
                if (!BluetoothManagerService.this.mEnable || BluetoothManagerService.this.mBluetooth == null) {
                    BluetoothManagerService.this.mEnable = false;
                    BluetoothManagerService.this.handleDisable();
                    return;
                } else {
                    BluetoothManagerService.this.mWaitForDisableRetry = 0;
                    Message disableDelayedMsg = BluetoothManagerService.this.mHandler.obtainMessage(4, 0, 0);
                    BluetoothManagerService.this.mHandler.sendMessageDelayed(disableDelayedMsg, 300L);
                    return;
                }
            }
            if (i == 3) {
                if (BluetoothManagerService.this.mState != 10) {
                    if (BluetoothManagerService.this.mWaitForEnableRetry < 10) {
                        BluetoothManagerService.access$2508(BluetoothManagerService.this);
                        Message enableDelayedMsg2 = BluetoothManagerService.this.mHandler.obtainMessage(3);
                        BluetoothManagerService.this.mHandler.sendMessageDelayed(enableDelayedMsg2, 300L);
                        return;
                    }
                    Slog.e(BluetoothManagerService.TAG, "Wait for STATE_OFF timeout");
                }
                BluetoothManagerService.this.mWaitForEnableRetry = 0;
                Message restartMsg = BluetoothManagerService.this.mHandler.obtainMessage(42);
                BluetoothManagerService.this.mHandler.sendMessageDelayed(restartMsg, BluetoothManagerService.this.getServiceRestartMs());
                Slog.d(BluetoothManagerService.TAG, "Handle enable is finished");
                return;
            }
            if (i == 4) {
                boolean disabling = msg.arg1 == 1;
                Slog.d(BluetoothManagerService.TAG, "MESSAGE_HANDLE_DISABLE_DELAYED: disabling:" + disabling);
                if (disabling) {
                    if (BluetoothManagerService.this.mState == 12) {
                        if (BluetoothManagerService.this.mWaitForDisableRetry < 10) {
                            BluetoothManagerService.access$2608(BluetoothManagerService.this);
                            Message disableDelayedMsg2 = BluetoothManagerService.this.mHandler.obtainMessage(4, 1, 0);
                            BluetoothManagerService.this.mHandler.sendMessageDelayed(disableDelayedMsg2, 300L);
                            return;
                        }
                        Slog.e(BluetoothManagerService.TAG, "Wait for exiting STATE_ON timeout");
                    }
                    Slog.d(BluetoothManagerService.TAG, "Handle disable is finished");
                    return;
                }
                if (BluetoothManagerService.this.mState != 12) {
                    if (BluetoothManagerService.this.mWaitForDisableRetry < 10) {
                        BluetoothManagerService.access$2608(BluetoothManagerService.this);
                        Message disableDelayedMsg3 = BluetoothManagerService.this.mHandler.obtainMessage(4, 0, 0);
                        BluetoothManagerService.this.mHandler.sendMessageDelayed(disableDelayedMsg3, 300L);
                        return;
                    }
                    Slog.e(BluetoothManagerService.TAG, "Wait for STATE_ON timeout");
                }
                BluetoothManagerService.this.mWaitForDisableRetry = 0;
                BluetoothManagerService.this.mEnable = false;
                BluetoothManagerService.this.handleDisable();
                Message disableDelayedMsg4 = BluetoothManagerService.this.mHandler.obtainMessage(4, 1, 0);
                BluetoothManagerService.this.mHandler.sendMessageDelayed(disableDelayedMsg4, 300L);
                return;
            }
            if (i == 30) {
                IBluetoothStateChangeCallback callback = (IBluetoothStateChangeCallback) msg.obj;
                BluetoothManagerService.this.mStateChangeCallbacks.register(callback);
                return;
            }
            if (i == 31) {
                IBluetoothStateChangeCallback callback2 = (IBluetoothStateChangeCallback) msg.obj;
                BluetoothManagerService.this.mStateChangeCallbacks.unregister(callback2);
                return;
            }
            if (i == 60) {
                int prevState = msg.arg1;
                int newState = msg.arg2;
                Slog.d(BluetoothManagerService.TAG, "MESSAGE_BLUETOOTH_STATE_CHANGE: " + BluetoothAdapter.nameForState(prevState) + " > " + BluetoothAdapter.nameForState(newState));
                BluetoothManagerService.this.mState = newState;
                BluetoothManagerService.this.bluetoothStateChangeHandler(prevState, newState);
                if (prevState == 14 && newState == 10 && BluetoothManagerService.this.mBluetooth != null && BluetoothManagerService.this.mEnable) {
                    BluetoothManagerService.this.recoverBluetoothServiceFromError(false);
                }
                if (prevState == 11 && newState == 15 && BluetoothManagerService.this.mBluetooth != null && BluetoothManagerService.this.mEnable) {
                    BluetoothManagerService.this.recoverBluetoothServiceFromError(true);
                }
                if (prevState == 16 && newState == 10 && BluetoothManagerService.this.mEnable) {
                    Slog.d(BluetoothManagerService.TAG, "Entering STATE_OFF but mEnabled is true; restarting.");
                    BluetoothManagerService.this.waitForState(Set.of(10));
                    Message restartMsg2 = BluetoothManagerService.this.mHandler.obtainMessage(42);
                    BluetoothManagerService.this.mHandler.sendMessageDelayed(restartMsg2, BluetoothManagerService.this.getServiceRestartMs());
                }
                if ((newState == 12 || newState == 15) && BluetoothManagerService.this.mErrorRecoveryRetryCounter != 0) {
                    Slog.w(BluetoothManagerService.TAG, "bluetooth is recovered from error");
                    BluetoothManagerService.this.mErrorRecoveryRetryCounter = 0;
                    return;
                }
                return;
            }
            if (i == 200) {
                Slog.d(BluetoothManagerService.TAG, "MESSAGE_GET_NAME_AND_ADDRESS");
                try {
                    BluetoothManagerService.this.mBluetoothLock.writeLock().lock();
                    if (BluetoothManagerService.this.mBluetooth == null && !BluetoothManagerService.this.mBinding) {
                        Slog.d(BluetoothManagerService.TAG, "Binding to service to get name and address");
                        this.mGetNameAddressOnly = true;
                        Message timeoutMsg = BluetoothManagerService.this.mHandler.obtainMessage(100);
                        BluetoothManagerService.this.mHandler.sendMessageDelayed(timeoutMsg, BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS);
                        Intent i2 = new Intent(IBluetooth.class.getName());
                        if (BluetoothManagerService.this.doBind(i2, BluetoothManagerService.this.mConnection, 65, UserHandle.CURRENT)) {
                            BluetoothManagerService.this.mBinding = true;
                        } else {
                            BluetoothManagerService.this.mHandler.removeMessages(100);
                        }
                    } else if (BluetoothManagerService.this.mBluetooth != null) {
                        try {
                            BluetoothManagerService.this.storeNameAndAddress(BluetoothManagerService.this.mBluetooth.getName(), BluetoothManagerService.this.mBluetooth.getAddress());
                        } catch (RemoteException re) {
                            Slog.e(BluetoothManagerService.TAG, "Unable to grab names", re);
                        }
                        if (this.mGetNameAddressOnly && !BluetoothManagerService.this.mEnable) {
                            BluetoothManagerService.this.unbindAndFinish();
                        }
                        this.mGetNameAddressOnly = false;
                    }
                    BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                    return;
                } catch (Throwable th2) {
                    BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                    throw th2;
                }
            }
            if (i == 500) {
                if (msg.arg1 == 0 && BluetoothManagerService.this.mEnable) {
                    Slog.d(BluetoothManagerService.TAG, "Restore Bluetooth state to disabled");
                    BluetoothManagerService.this.persistBluetoothSetting(0);
                    BluetoothManagerService.this.mEnableExternal = false;
                    BluetoothManagerService bluetoothManagerService2 = BluetoothManagerService.this;
                    bluetoothManagerService2.sendDisableMsg(9, bluetoothManagerService2.mContext.getPackageName());
                    return;
                }
                if (msg.arg1 != 1 || BluetoothManagerService.this.mEnable) {
                    return;
                }
                Slog.d(BluetoothManagerService.TAG, "Restore Bluetooth state to enabled");
                BluetoothManagerService.this.mQuietEnableExternal = false;
                BluetoothManagerService.this.mEnableExternal = true;
                BluetoothManagerService bluetoothManagerService3 = BluetoothManagerService.this;
                bluetoothManagerService3.sendEnableMsg(false, 9, bluetoothManagerService3.mContext.getPackageName());
                return;
            }
            if (i == 100) {
                Slog.e(BluetoothManagerService.TAG, "MESSAGE_TIMEOUT_BIND");
                BluetoothManagerService.this.mBluetoothLock.writeLock().lock();
                boolean isBinding = BluetoothManagerService.this.mBinding;
                BluetoothManagerService.this.mBinding = false;
                BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                if (!isBinding || !BluetoothManagerService.this.mEnable || BluetoothManagerService.this.mBindRetryTimes >= 10) {
                    BluetoothManagerService.this.mBindRetryTimes = 0;
                    return;
                }
                BluetoothManagerService bluetoothManagerService4 = BluetoothManagerService.this;
                bluetoothManagerService4.handleEnable(bluetoothManagerService4.mQuietEnable);
                BluetoothManagerService.access$3608(BluetoothManagerService.this);
                return;
            }
            if (i == 101) {
                Slog.e(BluetoothManagerService.TAG, "MESSAGE_TIMEOUT_UNBIND");
                BluetoothManagerService.this.mBluetoothLock.writeLock().lock();
                BluetoothManagerService.this.mUnbinding = false;
                BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                return;
            }
            if (i == 300) {
                Slog.d(BluetoothManagerService.TAG, "MESSAGE_USER_SWITCHED");
                BluetoothManagerService.this.mHandler.removeMessages(DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR);
                if (BluetoothManagerService.this.mBluetooth != null) {
                    try {
                        if (BluetoothManagerService.this.isEnabled()) {
                            try {
                                BluetoothManagerService.this.mBluetoothLock.readLock().lock();
                                if (BluetoothManagerService.this.mBluetooth != null) {
                                    BluetoothManagerService.this.mBluetooth.unregisterCallback(BluetoothManagerService.this.mBluetoothCallback);
                                }
                            } catch (RemoteException re2) {
                                Slog.e(BluetoothManagerService.TAG, "Unable to unregister", re2);
                            }
                            BluetoothManagerService.this.mBluetoothLock.readLock().unlock();
                            if (BluetoothManagerService.this.mState == 13) {
                                BluetoothManagerService bluetoothManagerService5 = BluetoothManagerService.this;
                                bluetoothManagerService5.bluetoothStateChangeHandler(bluetoothManagerService5.mState, 10);
                                BluetoothManagerService.this.mState = 10;
                            }
                            if (BluetoothManagerService.this.mState == 10) {
                                BluetoothManagerService bluetoothManagerService6 = BluetoothManagerService.this;
                                bluetoothManagerService6.bluetoothStateChangeHandler(bluetoothManagerService6.mState, 11);
                                BluetoothManagerService.this.mState = 11;
                            }
                            BluetoothManagerService.this.waitForState(Set.of(12));
                            if (BluetoothManagerService.this.mState == 11) {
                                BluetoothManagerService bluetoothManagerService7 = BluetoothManagerService.this;
                                bluetoothManagerService7.bluetoothStateChangeHandler(bluetoothManagerService7.mState, 12);
                            }
                            BluetoothManagerService.this.unbindAllBluetoothProfileServices();
                            BluetoothManagerService bluetoothManagerService8 = BluetoothManagerService.this;
                            bluetoothManagerService8.addActiveLog(8, bluetoothManagerService8.mContext.getPackageName(), false);
                            BluetoothManagerService.this.handleDisable();
                            BluetoothManagerService.this.bluetoothStateChangeHandler(12, 13);
                            boolean didDisableTimeout = !BluetoothManagerService.this.waitForState(Set.of(10));
                            BluetoothManagerService.this.bluetoothStateChangeHandler(13, 10);
                            BluetoothManagerService.this.sendBluetoothServiceDownCallback();
                            try {
                                BluetoothManagerService.this.mBluetoothLock.writeLock().lock();
                                if (BluetoothManagerService.this.mBluetooth != null) {
                                    BluetoothManagerService.this.mBluetooth = null;
                                    BluetoothManagerService.this.mContext.unbindService(BluetoothManagerService.this.mConnection);
                                }
                                BluetoothManagerService.this.mBluetoothGatt = null;
                                BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                                if (didDisableTimeout) {
                                    SystemClock.sleep(BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS);
                                } else {
                                    SystemClock.sleep(100L);
                                }
                                BluetoothManagerService.this.mHandler.removeMessages(60);
                                BluetoothManagerService.this.mState = 10;
                                BluetoothManagerService bluetoothManagerService9 = BluetoothManagerService.this;
                                bluetoothManagerService9.addActiveLog(8, bluetoothManagerService9.mContext.getPackageName(), true);
                                BluetoothManagerService.this.mEnable = true;
                                BluetoothManagerService bluetoothManagerService10 = BluetoothManagerService.this;
                                bluetoothManagerService10.handleEnable(bluetoothManagerService10.mQuietEnable);
                                return;
                            } catch (Throwable th3) {
                                BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        BluetoothManagerService.this.mBluetoothLock.readLock().unlock();
                        throw th4;
                    }
                }
                if (BluetoothManagerService.this.mBinding || BluetoothManagerService.this.mBluetooth != null) {
                    Message userMsg = BluetoothManagerService.this.mHandler.obtainMessage(DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR);
                    userMsg.arg2 = msg.arg2 + 1;
                    BluetoothManagerService.this.mHandler.sendMessageDelayed(userMsg, 200L);
                    Slog.d(BluetoothManagerService.TAG, "Retry MESSAGE_USER_SWITCHED " + userMsg.arg2);
                    return;
                }
                return;
            }
            if (i == BluetoothManagerService.MESSAGE_USER_UNLOCKED) {
                Slog.d(BluetoothManagerService.TAG, "MESSAGE_USER_UNLOCKED");
                BluetoothManagerService.this.mHandler.removeMessages(DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR);
                if (BluetoothManagerService.this.mEnable && !BluetoothManagerService.this.mBinding && BluetoothManagerService.this.mBluetooth == null) {
                    Slog.d(BluetoothManagerService.TAG, "Enabled but not bound; retrying after unlock");
                    BluetoothManagerService bluetoothManagerService11 = BluetoothManagerService.this;
                    bluetoothManagerService11.handleEnable(bluetoothManagerService11.mQuietEnable);
                    return;
                }
                return;
            }
            if (i == 400) {
                ProfileServiceConnections psc = (ProfileServiceConnections) BluetoothManagerService.this.mProfileServices.get(Integer.valueOf(msg.arg1));
                if (psc == null) {
                    return;
                }
                IBluetoothProfileServiceConnection proxy = (IBluetoothProfileServiceConnection) msg.obj;
                psc.addProxy(proxy);
                return;
            }
            if (i == BluetoothManagerService.MESSAGE_BIND_PROFILE_SERVICE) {
                ProfileServiceConnections psc2 = (ProfileServiceConnections) msg.obj;
                removeMessages(BluetoothManagerService.MESSAGE_BIND_PROFILE_SERVICE, msg.obj);
                if (psc2 == null) {
                    return;
                }
                psc2.bindService();
                return;
            }
            switch (i) {
                case 40:
                    Slog.d(BluetoothManagerService.TAG, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: " + msg.arg1);
                    BluetoothManagerService.this.mBindRetryTimes = 0;
                    IBinder service = (IBinder) msg.obj;
                    try {
                        BluetoothManagerService.this.mBluetoothLock.writeLock().lock();
                        if (msg.arg1 == 2) {
                            BluetoothManagerService.this.mBluetoothGatt = IBluetoothGatt.Stub.asInterface(Binder.allowBlocking(service));
                            BluetoothManagerService.this.continueFromBleOnState();
                            BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                            return;
                        }
                        if (!BluetoothManagerService.this.mIsBleSupported) {
                            Slog.d(BluetoothManagerService.TAG, "Persisting Bluetooth Setting ON");
                            BluetoothManagerService.this.persistBluetoothSetting(1);
                        }
                        BluetoothManagerService.this.mHandler.removeMessages(100);
                        BluetoothManagerService.this.mBinding = false;
                        BluetoothManagerService.this.mBluetoothBinder = service;
                        BluetoothManagerService.this.mBluetooth = IBluetooth.Stub.asInterface(Binder.allowBlocking(service));
                        if (!BluetoothManagerService.this.isNameAndAddressSet()) {
                            Message getMsg = BluetoothManagerService.this.mHandler.obtainMessage(DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE);
                            BluetoothManagerService.this.mHandler.sendMessage(getMsg);
                            if (this.mGetNameAddressOnly) {
                                BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                                return;
                            }
                        }
                        try {
                            BluetoothManagerService.this.mBluetooth.registerCallback(BluetoothManagerService.this.mBluetoothCallback);
                            break;
                        } catch (RemoteException re3) {
                            Slog.e(BluetoothManagerService.TAG, "Unable to register BluetoothCallback", re3);
                        }
                        BluetoothManagerService.this.sendBluetoothServiceUpCallback();
                        try {
                            if (!BluetoothManagerService.this.mBluetooth.enable(BluetoothManagerService.this.mQuietEnable)) {
                                Slog.e(BluetoothManagerService.TAG, "IBluetooth.enable() returned false");
                            }
                            break;
                        } catch (RemoteException e2) {
                            Slog.e(BluetoothManagerService.TAG, "Unable to call enable()", e2);
                        }
                        BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                        if (BluetoothManagerService.this.mEnable) {
                            return;
                        }
                        BluetoothManagerService.this.waitForState(Set.of(12));
                        BluetoothManagerService.this.handleDisable();
                        BluetoothManagerService.this.waitForState(Set.of(10, 11, 13, 14, 15, 16));
                        return;
                    } catch (Throwable th5) {
                        BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                        throw th5;
                    }
                case 41:
                    Slog.e(BluetoothManagerService.TAG, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED(" + msg.arg1 + ")");
                    try {
                        BluetoothManagerService.this.mBluetoothLock.writeLock().lock();
                        if (msg.arg1 == 1) {
                            if (BluetoothManagerService.this.mBluetooth == null) {
                                BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                            } else {
                                BluetoothManagerService.this.mBluetooth = null;
                                BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                                BluetoothManagerService.this.addCrashLog();
                                BluetoothManagerService bluetoothManagerService12 = BluetoothManagerService.this;
                                bluetoothManagerService12.addActiveLog(7, bluetoothManagerService12.mContext.getPackageName(), false);
                                if (BluetoothManagerService.this.mEnable) {
                                    BluetoothManagerService.this.mEnable = false;
                                    Message restartMsg3 = BluetoothManagerService.this.mHandler.obtainMessage(42);
                                    BluetoothManagerService.this.mHandler.sendMessageDelayed(restartMsg3, BluetoothManagerService.this.getServiceRestartMs());
                                }
                                BluetoothManagerService.this.sendBluetoothServiceDownCallback();
                                if (BluetoothManagerService.this.mState == 11 || BluetoothManagerService.this.mState == 12) {
                                    BluetoothManagerService.this.bluetoothStateChangeHandler(12, 13);
                                    BluetoothManagerService.this.mState = 13;
                                }
                                if (BluetoothManagerService.this.mState == 13) {
                                    BluetoothManagerService.this.bluetoothStateChangeHandler(13, 10);
                                }
                                BluetoothManagerService.this.mHandler.removeMessages(60);
                                BluetoothManagerService.this.mState = 10;
                            }
                        } else if (msg.arg1 == 2) {
                            BluetoothManagerService.this.mBluetoothGatt = null;
                            BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                        } else {
                            Slog.e(BluetoothManagerService.TAG, "Unknown argument for service disconnect!");
                            BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                        }
                        return;
                    } catch (Throwable th6) {
                        BluetoothManagerService.this.mBluetoothLock.writeLock().unlock();
                        throw th6;
                    }
                case 42:
                    BluetoothManagerService.access$4708(BluetoothManagerService.this);
                    Slog.d(BluetoothManagerService.TAG, "MESSAGE_RESTART_BLUETOOTH_SERVICE: retry count=" + BluetoothManagerService.this.mErrorRecoveryRetryCounter);
                    if (BluetoothManagerService.this.mErrorRecoveryRetryCounter >= 6) {
                        Slog.e(BluetoothManagerService.TAG, "Reach maximum retry to restart Bluetooth!");
                        return;
                    }
                    BluetoothManagerService.this.mEnable = true;
                    BluetoothManagerService bluetoothManagerService13 = BluetoothManagerService.this;
                    bluetoothManagerService13.addActiveLog(4, bluetoothManagerService13.mContext.getPackageName(), true);
                    BluetoothManagerService bluetoothManagerService14 = BluetoothManagerService.this;
                    bluetoothManagerService14.handleEnable(bluetoothManagerService14.mQuietEnable);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEnable(boolean quietMode) {
        this.mQuietEnable = quietMode;
        try {
            this.mBluetoothLock.writeLock().lock();
            if (this.mBluetooth == null && !this.mBinding) {
                Slog.d(TAG, "binding Bluetooth service");
                Message timeoutMsg = this.mHandler.obtainMessage(100);
                this.mHandler.sendMessageDelayed(timeoutMsg, BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS);
                Intent i = new Intent(IBluetooth.class.getName());
                if (!doBind(i, this.mConnection, 65, UserHandle.CURRENT)) {
                    this.mHandler.removeMessages(100);
                } else {
                    this.mBinding = true;
                }
            } else if (this.mBluetooth != null) {
                try {
                    if (!this.mBluetooth.enable(this.mQuietEnable)) {
                        Slog.e(TAG, "IBluetooth.enable() returned false");
                    }
                } catch (RemoteException e) {
                    Slog.e(TAG, "Unable to call enable()", e);
                }
            }
        } finally {
            this.mBluetoothLock.writeLock().unlock();
        }
    }

    boolean doBind(Intent intent, ServiceConnection conn, int flags, UserHandle user) {
        ComponentName comp = intent.resolveSystemService(this.mContext.getPackageManager(), 0);
        intent.setComponent(comp);
        if (comp == null || !this.mContext.bindServiceAsUser(intent, conn, flags, user)) {
            Slog.e(TAG, "Fail to bind to: " + intent);
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDisable() {
        try {
            try {
                this.mBluetoothLock.readLock().lock();
                if (this.mBluetooth != null) {
                    Slog.d(TAG, "Sending off request.");
                    if (!this.mBluetooth.disable()) {
                        Slog.e(TAG, "IBluetooth.disable() returned false");
                    }
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "Unable to call disable()", e);
            }
        } finally {
            this.mBluetoothLock.readLock().unlock();
        }
    }

    private boolean checkIfCallerIsForegroundUser() {
        int callingUser = UserHandle.getCallingUserId();
        int callingUid = Binder.getCallingUid();
        long callingIdentity = Binder.clearCallingIdentity();
        UserManager um = (UserManager) this.mContext.getSystemService("user");
        UserInfo ui = um.getProfileParent(callingUser);
        int parentUser = ui != null ? ui.id : -10000;
        int callingAppId = UserHandle.getAppId(callingUid);
        try {
            int foregroundUser = ActivityManager.getCurrentUser();
            boolean valid = callingUser == foregroundUser || parentUser == foregroundUser || callingAppId == 1027 || callingAppId == this.mSystemUiUid;
            if (!valid) {
                Slog.d(TAG, "checkIfCallerIsForegroundUser: valid=" + valid + " callingUser=" + callingUser + " parentUser=" + parentUser + " foregroundUser=" + foregroundUser);
            }
            return valid;
        } finally {
            Binder.restoreCallingIdentity(callingIdentity);
        }
    }

    private void sendBleStateChanged(int prevState, int newState) {
        if (!this.mIsBleSupported) {
            return;
        }
        Slog.d(TAG, "Sending BLE State Change: " + BluetoothAdapter.nameForState(prevState) + " > " + BluetoothAdapter.nameForState(newState));
        Intent intent = new Intent("android.bluetooth.adapter.action.BLE_STATE_CHANGED");
        intent.putExtra("android.bluetooth.adapter.extra.PREVIOUS_STATE", prevState);
        intent.putExtra("android.bluetooth.adapter.extra.STATE", newState);
        intent.addFlags(67108864);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, BLUETOOTH_PERM);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bluetoothStateChangeHandler(int prevState, int newState) {
        boolean isUp;
        boolean isStandardBroadcast = true;
        if (prevState == newState) {
            return;
        }
        if (newState == 15 || newState == 10) {
            isUp = prevState == 13 && newState == 15;
            if (newState == 10) {
                Slog.d(TAG, "Bluetooth is complete send Service Down");
                sendBluetoothServiceDownCallback();
                unbindAndFinish();
                sendBleStateChanged(prevState, newState);
                if (this.mIsBleSupported) {
                    isStandardBroadcast = false;
                }
            } else if (!isUp) {
                Slog.d(TAG, "Bluetooth is in LE only mode");
                if (this.mBluetoothGatt != null || !this.mContext.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
                    continueFromBleOnState();
                } else {
                    Slog.d(TAG, "Binding Bluetooth GATT service");
                    Intent i = new Intent(IBluetoothGatt.class.getName());
                    doBind(i, this.mConnection, 65, UserHandle.CURRENT);
                }
                sendBleStateChanged(prevState, newState);
                isStandardBroadcast = false;
            } else if (isUp) {
                Slog.d(TAG, "Intermediate off, back to LE only mode");
                sendBleStateChanged(prevState, newState);
                sendBluetoothStateCallback(false);
                newState = 10;
                sendBrEdrDownCallback();
            }
        } else if (newState == 12) {
            isUp = newState == 12;
            if (isUp) {
                setDefaultName();
            }
            sendBluetoothStateCallback(isUp);
            sendBleStateChanged(prevState, newState);
            isStandardBroadcast = true;
        } else if (newState == 14 || newState == 16) {
            sendBleStateChanged(prevState, newState);
            isStandardBroadcast = false;
        } else if (newState == 11 || newState == 13) {
            sendBleStateChanged(prevState, newState);
        }
        if (isStandardBroadcast) {
            if (prevState == 15) {
                prevState = 10;
            }
            Intent intent = new Intent("android.bluetooth.adapter.action.STATE_CHANGED");
            intent.putExtra("android.bluetooth.adapter.extra.PREVIOUS_STATE", prevState);
            intent.putExtra("android.bluetooth.adapter.extra.STATE", newState);
            intent.addFlags(67108864);
            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, BLUETOOTH_PERM);
            Slog.d(TAG, "Sending BT State Change: " + BluetoothAdapter.nameForState(prevState) + " > " + BluetoothAdapter.nameForState(newState));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean waitForState(Set<Integer> states) {
        for (int i = 0; i < 10; i++) {
            try {
                try {
                    this.mBluetoothLock.readLock().lock();
                    if (this.mBluetooth == null) {
                        this.mBluetoothLock.readLock().unlock();
                        break;
                    }
                    if (states.contains(Integer.valueOf(this.mBluetooth.getState()))) {
                        this.mBluetoothLock.readLock().unlock();
                        return true;
                    }
                    this.mBluetoothLock.readLock().unlock();
                    SystemClock.sleep(300L);
                } catch (RemoteException e) {
                    Slog.e(TAG, "getState()", e);
                    this.mBluetoothLock.readLock().unlock();
                }
            } catch (Throwable th) {
                this.mBluetoothLock.readLock().unlock();
                throw th;
            }
        }
        Slog.e(TAG, "waitForState " + states + " time out");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendDisableMsg(int reason, String packageName) {
        BluetoothHandler bluetoothHandler = this.mHandler;
        bluetoothHandler.sendMessage(bluetoothHandler.obtainMessage(2));
        addActiveLog(reason, packageName, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEnableMsg(boolean z, int i, String str) {
        BluetoothHandler bluetoothHandler = this.mHandler;
        bluetoothHandler.sendMessage(bluetoothHandler.obtainMessage(1, z ? 1 : 0, 0));
        addActiveLog(i, str, true);
        this.mLastEnabledTime = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addActiveLog(int reason, String packageName, boolean enable) {
        synchronized (this.mActiveLogs) {
            if (this.mActiveLogs.size() > 20) {
                this.mActiveLogs.remove();
            }
            this.mActiveLogs.add(new ActiveLog(reason, packageName, enable, System.currentTimeMillis()));
        }
        int state = enable ? 1 : 2;
        FrameworkStatsLog.write_non_chained(67, Binder.getCallingUid(), (String) null, state, reason, packageName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addCrashLog() {
        synchronized (this.mCrashTimestamps) {
            if (this.mCrashTimestamps.size() == 100) {
                this.mCrashTimestamps.removeFirst();
            }
            this.mCrashTimestamps.add(Long.valueOf(System.currentTimeMillis()));
            this.mCrashes++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recoverBluetoothServiceFromError(boolean clearBle) {
        Slog.e(TAG, "recoverBluetoothServiceFromError");
        try {
            try {
                this.mBluetoothLock.readLock().lock();
                if (this.mBluetooth != null) {
                    this.mBluetooth.unregisterCallback(this.mBluetoothCallback);
                }
            } catch (RemoteException re) {
                Slog.e(TAG, "Unable to unregister", re);
            }
            this.mBluetoothLock.readLock().unlock();
            SystemClock.sleep(500L);
            addActiveLog(5, this.mContext.getPackageName(), false);
            handleDisable();
            waitForState(Set.of(10));
            sendBluetoothServiceDownCallback();
            try {
                this.mBluetoothLock.writeLock().lock();
                if (this.mBluetooth != null) {
                    this.mBluetooth = null;
                    this.mContext.unbindService(this.mConnection);
                }
                this.mBluetoothGatt = null;
                this.mBluetoothLock.writeLock().unlock();
                this.mHandler.removeMessages(60);
                this.mState = 10;
                if (clearBle) {
                    clearBleApps();
                }
                this.mEnable = false;
                Message restartMsg = this.mHandler.obtainMessage(42);
                this.mHandler.sendMessageDelayed(restartMsg, BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS);
            } catch (Throwable th) {
                this.mBluetoothLock.writeLock().unlock();
                throw th;
            }
        } catch (Throwable th2) {
            this.mBluetoothLock.readLock().unlock();
            throw th2;
        }
    }

    private boolean isBluetoothDisallowed() {
        long callingIdentity = Binder.clearCallingIdentity();
        try {
            return ((UserManager) this.mContext.getSystemService(UserManager.class)).hasUserRestriction("no_bluetooth", UserHandle.SYSTEM);
        } finally {
            Binder.restoreCallingIdentity(callingIdentity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOppLauncherComponentState(int userId, boolean bluetoothSharingDisallowed) {
        ComponentName oppLauncherComponent = new ComponentName("com.android.bluetooth", "com.android.bluetooth.opp.BluetoothOppLauncherActivity");
        int newState = bluetoothSharingDisallowed ? 2 : 0;
        try {
            IPackageManager imp = AppGlobals.getPackageManager();
            imp.setComponentEnabledSetting(oppLauncherComponent, newState, 1, userId);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getServiceRestartMs() {
        return (this.mErrorRecoveryRetryCounter + 1) * 400;
    }

    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        String[] args2;
        if (!DumpUtils.checkDumpPermission(this.mContext, TAG, writer)) {
            return;
        }
        if (args.length > 0 && args[0].startsWith(PriorityDump.PROTO_ARG)) {
            dumpProto(fd);
            return;
        }
        String errorMsg = null;
        writer.println("Bluetooth Status");
        writer.println("  enabled: " + isEnabled());
        writer.println("  state: " + BluetoothAdapter.nameForState(this.mState));
        writer.println("  address: " + this.mAddress);
        writer.println("  name: " + this.mName);
        if (this.mEnable) {
            long onDuration = SystemClock.elapsedRealtime() - this.mLastEnabledTime;
            String onDurationString = String.format(Locale.US, "%02d:%02d:%02d.%03d", Integer.valueOf((int) (onDuration / AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT)), Integer.valueOf((int) ((onDuration / 60000) % 60)), Integer.valueOf((int) ((onDuration / 1000) % 60)), Integer.valueOf((int) (onDuration % 1000)));
            writer.println("  time since enabled: " + onDurationString);
        }
        if (this.mActiveLogs.size() == 0) {
            writer.println("\nBluetooth never enabled!");
        } else {
            writer.println("\nEnable log:");
            for (ActiveLog log : this.mActiveLogs) {
                writer.println("  " + log);
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nBluetooth crashed ");
        sb.append(this.mCrashes);
        sb.append(" time");
        sb.append(this.mCrashes == 1 ? "" : "s");
        writer.println(sb.toString());
        if (this.mCrashes == 100) {
            writer.println("(last 100)");
        }
        for (Long time : this.mCrashTimestamps) {
            writer.println("  " + ((Object) timeToLog(time.longValue())));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n");
        sb2.append(this.mBleApps.size());
        sb2.append(" BLE app");
        sb2.append(this.mBleApps.size() == 1 ? "" : "s");
        sb2.append(" registered");
        writer.println(sb2.toString());
        for (ClientDeathRecipient app : this.mBleApps.values()) {
            writer.println("  " + app.getPackageName());
        }
        writer.println("\nBluetoothManagerService:");
        writer.println("  mEnable:" + this.mEnable);
        writer.println("  mQuietEnable:" + this.mQuietEnable);
        writer.println("  mEnableExternal:" + this.mEnableExternal);
        writer.println("  mQuietEnableExternal:" + this.mQuietEnableExternal);
        writer.println("");
        writer.flush();
        if (args.length != 0) {
            args2 = args;
        } else {
            args2 = new String[]{"--print"};
        }
        IBinder iBinder = this.mBluetoothBinder;
        if (iBinder == null) {
            errorMsg = "Bluetooth Service not connected";
        } else {
            try {
                iBinder.dump(fd, args2);
            } catch (RemoteException e) {
                errorMsg = "RemoteException while dumping Bluetooth Service";
            }
        }
        if (errorMsg != null) {
            writer.println(errorMsg);
        }
    }

    private void dumpProto(FileDescriptor fd) {
        ProtoOutputStream proto = new ProtoOutputStream(fd);
        proto.write(1133871366145L, isEnabled());
        proto.write(1120986464258L, this.mState);
        proto.write(1138166333443L, BluetoothAdapter.nameForState(this.mState));
        proto.write(1138166333444L, this.mAddress);
        proto.write(1138166333445L, this.mName);
        if (this.mEnable) {
            proto.write(1112396529670L, this.mLastEnabledTime);
        }
        proto.write(1112396529671L, SystemClock.elapsedRealtime());
        for (ActiveLog log : this.mActiveLogs) {
            long token = proto.start(2246267895816L);
            log.dump(proto);
            proto.end(token);
        }
        proto.write(1120986464265L, this.mCrashes);
        proto.write(1133871366154L, this.mCrashes == 100);
        for (Long time : this.mCrashTimestamps) {
            proto.write(2211908157451L, time.longValue());
        }
        proto.write(1120986464268L, this.mBleApps.size());
        for (ClientDeathRecipient app : this.mBleApps.values()) {
            proto.write(2237677961229L, app.getPackageName());
        }
        proto.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getEnableDisableReasonString(int reason) {
        switch (reason) {
            case 1:
                return "APPLICATION_REQUEST";
            case 2:
                return "AIRPLANE_MODE";
            case 3:
                return "DISALLOWED";
            case 4:
                return "RESTARTED";
            case 5:
                return "START_ERROR";
            case 6:
                return "SYSTEM_BOOT";
            case 7:
                return "CRASH";
            case 8:
                return "USER_SWITCH";
            case 9:
                return "RESTORE_USER_SETTING";
            case 10:
                return "FACTORY_RESET";
            default:
                return "UNKNOWN[" + reason + "]";
        }
    }

    private void setDefaultName() {
        String str = this.mDefaultName;
        if (str != null && !str.isEmpty()) {
            try {
                try {
                    this.mBluetoothLock.writeLock().lock();
                    if (this.mBluetooth != null) {
                        this.mBluetooth.setName(this.mDefaultName);
                        Slog.d(TAG, "set Default Bluetooth name: " + this.mDefaultName);
                        this.mDefaultName = null;
                    }
                } catch (RemoteException e) {
                    Slog.e(TAG, "setName()", e);
                }
            } finally {
                this.mBluetoothLock.writeLock().unlock();
            }
        }
    }
}
