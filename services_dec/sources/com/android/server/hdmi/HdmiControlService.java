package com.android.server.hdmi;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.hardware.hdmi.HdmiDeviceInfo;
import android.hardware.hdmi.HdmiHotplugEvent;
import android.hardware.hdmi.HdmiPortInfo;
import android.hardware.hdmi.IHdmiCecVolumeControlFeatureListener;
import android.hardware.hdmi.IHdmiControlCallback;
import android.hardware.hdmi.IHdmiControlService;
import android.hardware.hdmi.IHdmiControlStatusChangeListener;
import android.hardware.hdmi.IHdmiDeviceEventListener;
import android.hardware.hdmi.IHdmiHotplugEventListener;
import android.hardware.hdmi.IHdmiInputChangeListener;
import android.hardware.hdmi.IHdmiMhlVendorCommandListener;
import android.hardware.hdmi.IHdmiRecordListener;
import android.hardware.hdmi.IHdmiSystemAudioModeChangeListener;
import android.hardware.hdmi.IHdmiVendorCommandListener;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.media.AudioManager;
import android.media.tv.TvInputManager;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.sysprop.HdmiProperties;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.SystemService;
import com.android.server.notification.SnoozeHelper;
import com.android.server.power.ShutdownThread;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public class HdmiControlService extends SystemService {
    static final int INITIATED_BY_BOOT_UP = 1;
    static final int INITIATED_BY_ENABLE_CEC = 0;
    static final int INITIATED_BY_HOTPLUG = 4;
    static final int INITIATED_BY_SCREEN_ON = 2;
    static final int INITIATED_BY_WAKE_UP_MESSAGE = 3;
    static final String PERMISSION = "android.permission.HDMI_CEC";
    static final int STANDBY_SCREEN_OFF = 0;
    static final int STANDBY_SHUTDOWN = 1;
    private static final String TAG = "HdmiControlService";

    @HdmiAnnotations.ServiceThreadOnly
    private int mActivePortId;
    protected final HdmiCecLocalDevice.ActiveSource mActiveSource;
    private boolean mAddressAllocated;
    private HdmiCecController mCecController;
    private final CecMessageBuffer mCecMessageBuffer;
    private final ArrayList<DeviceEventListenerRecord> mDeviceEventListenerRecords;
    private IHdmiControlCallback mDisplayStatusCallback;
    private final Handler mHandler;
    private boolean mHdmiCecVolumeControlEnabled;
    private final RemoteCallbackList<IHdmiCecVolumeControlFeatureListener> mHdmiCecVolumeControlFeatureListenerRecords;
    private final HdmiControlBroadcastReceiver mHdmiControlBroadcastReceiver;
    private boolean mHdmiControlEnabled;
    private final ArrayList<HdmiControlStatusChangeListenerRecord> mHdmiControlStatusChangeListenerRecords;
    private final ArrayList<HotplugEventListenerRecord> mHotplugEventListenerRecords;
    private InputChangeListenerRecord mInputChangeListenerRecord;
    private Looper mIoLooper;
    private final HandlerThread mIoThread;

    @HdmiAnnotations.ServiceThreadOnly
    private int mLastInputMhl;
    private final List<Integer> mLocalDevices;
    private final Object mLock;

    @HdmiAnnotations.ServiceThreadOnly
    private String mMenuLanguage;
    private HdmiCecMessageValidator mMessageValidator;
    private HdmiMhlControllerStub mMhlController;
    private List<HdmiDeviceInfo> mMhlDevices;
    private boolean mMhlInputChangeEnabled;
    private final ArrayList<HdmiMhlVendorCommandListenerRecord> mMhlVendorCommandListenerRecords;
    private IHdmiControlCallback mOtpCallbackPendingAddressAllocation;
    private int mPhysicalAddress;
    private UnmodifiableSparseArray<HdmiDeviceInfo> mPortDeviceMap;
    private UnmodifiableSparseIntArray mPortIdMap;
    private List<HdmiPortInfo> mPortInfo;
    private UnmodifiableSparseArray<HdmiPortInfo> mPortInfoMap;
    private PowerManager mPowerManager;

    @HdmiAnnotations.ServiceThreadOnly
    private int mPowerStatus;
    private boolean mProhibitMode;
    private HdmiRecordListenerRecord mRecordListenerRecord;
    private final SelectRequestBuffer mSelectRequestBuffer;
    private final SettingsObserver mSettingsObserver;

    @HdmiAnnotations.ServiceThreadOnly
    private boolean mStandbyMessageReceived;
    private boolean mSystemAudioActivated;
    private final ArrayList<SystemAudioModeChangeListenerRecord> mSystemAudioModeChangeListenerRecords;
    private TvInputManager mTvInputManager;
    private final ArrayList<VendorCommandListenerRecord> mVendorCommandListenerRecords;

    @HdmiAnnotations.ServiceThreadOnly
    private boolean mWakeUpMessageReceived;
    private static final Locale HONG_KONG = new Locale("zh", "HK");
    private static final Locale MACAU = new Locale("zh", "MO");
    private static final Map<String, String> sTerminologyToBibliographicMap = createsTerminologyToBibliographicMap();
    private static final boolean isHdmiCecNeverClaimPlaybackLogicAddr = SystemProperties.getBoolean("ro.hdmi.property_hdmi_cec_never_claim_playback_logical_address", false);

    interface DevicePollingCallback {
        void onPollingFinished(List<Integer> list);
    }

    interface SendMessageCallback {
        void onSendCompleted(int i);
    }

    private static Map<String, String> createsTerminologyToBibliographicMap() {
        Map<String, String> temp = new HashMap<>();
        temp.put("sqi", "alb");
        temp.put("hye", "arm");
        temp.put("eus", "baq");
        temp.put("mya", "bur");
        temp.put("ces", "cze");
        temp.put("nld", "dut");
        temp.put("kat", "geo");
        temp.put("deu", "ger");
        temp.put("ell", "gre");
        temp.put("fra", "fre");
        temp.put("isl", "ice");
        temp.put("mkd", "mac");
        temp.put("mri", "mao");
        temp.put("msa", "may");
        temp.put("fas", "per");
        temp.put("ron", "rum");
        temp.put("slk", "slo");
        temp.put("bod", "tib");
        temp.put("cym", "wel");
        return Collections.unmodifiableMap(temp);
    }

    static String localeToMenuLanguage(Locale locale) {
        if (locale.equals(Locale.TAIWAN) || locale.equals(HONG_KONG) || locale.equals(MACAU)) {
            return "chi";
        }
        String language = locale.getISO3Language();
        if (sTerminologyToBibliographicMap.containsKey(language)) {
            return sTerminologyToBibliographicMap.get(language);
        }
        return language;
    }

    private class HdmiControlBroadcastReceiver extends BroadcastReceiver {
        private HdmiControlBroadcastReceiver() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:17:0x004a  */
        @Override // android.content.BroadcastReceiver
        @HdmiAnnotations.ServiceThreadOnly
        public void onReceive(Context context, Intent intent) {
            byte b;
            HdmiControlService.this.assertRunOnServiceThread();
            boolean isReboot = SystemProperties.get(ShutdownThread.SHUTDOWN_ACTION_PROPERTY).contains(SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
            switch (intent.getAction()) {
                case "android.intent.action.SCREEN_OFF":
                    b = 0;
                    break;
                case "android.intent.action.SCREEN_ON":
                    b = 1;
                    break;
                case "android.intent.action.CONFIGURATION_CHANGED":
                    b = 2;
                    break;
                case "android.intent.action.ACTION_SHUTDOWN":
                    b = 3;
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0) {
                if (HdmiControlService.this.isPowerOnOrTransient() && !isReboot) {
                    HdmiControlService.this.onStandby(0);
                    return;
                }
                return;
            }
            if (b == 1) {
                if (HdmiControlService.this.isPowerStandbyOrTransient()) {
                    HdmiControlService.this.onWakeUp();
                }
            } else {
                if (b == 2) {
                    String language = HdmiControlService.localeToMenuLanguage(Locale.getDefault());
                    if (!HdmiControlService.this.mMenuLanguage.equals(language)) {
                        HdmiControlService.this.onLanguageChanged(language);
                        return;
                    }
                    return;
                }
                if (b == 3 && HdmiControlService.this.isPowerOnOrTransient() && !isReboot) {
                    HdmiControlService.this.onStandby(1);
                }
            }
        }
    }

    private final class CecMessageBuffer {
        private List<HdmiCecMessage> mBuffer;

        private CecMessageBuffer() {
            this.mBuffer = new ArrayList();
        }

        public boolean bufferMessage(HdmiCecMessage message) {
            int opcode = message.getOpcode();
            if (opcode == 4 || opcode == 13) {
                bufferImageOrTextViewOn(message);
                return true;
            }
            if (opcode == 112) {
                bufferSystemAudioModeRequest(message);
                return true;
            }
            if (opcode == 130) {
                bufferActiveSource(message);
                return true;
            }
            return false;
        }

        public void processMessages() {
            for (final HdmiCecMessage message : this.mBuffer) {
                HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.CecMessageBuffer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        HdmiControlService.this.handleCecCommand(message);
                    }
                });
            }
            this.mBuffer.clear();
        }

        private void bufferActiveSource(HdmiCecMessage message) {
            if (!replaceMessageIfBuffered(message, CecMessageType.ACTIVE_SOURCE)) {
                this.mBuffer.add(message);
            }
        }

        private void bufferImageOrTextViewOn(HdmiCecMessage message) {
            if (!replaceMessageIfBuffered(message, 4) && !replaceMessageIfBuffered(message, 13)) {
                this.mBuffer.add(message);
            }
        }

        private void bufferSystemAudioModeRequest(HdmiCecMessage message) {
            if (!replaceMessageIfBuffered(message, 112)) {
                this.mBuffer.add(message);
            }
        }

        private boolean replaceMessageIfBuffered(HdmiCecMessage message, int opcode) {
            for (int i = 0; i < this.mBuffer.size(); i++) {
                HdmiCecMessage bufferedMessage = this.mBuffer.get(i);
                if (bufferedMessage.getOpcode() == opcode) {
                    this.mBuffer.set(i, message);
                    return true;
                }
            }
            return false;
        }
    }

    public HdmiControlService(Context context) {
        super(context);
        this.mActiveSource = new HdmiCecLocalDevice.ActiveSource();
        this.mSystemAudioActivated = false;
        this.mIoThread = new HandlerThread("Hdmi Control Io Thread");
        this.mLock = new Object();
        this.mHdmiControlStatusChangeListenerRecords = new ArrayList<>();
        this.mHdmiCecVolumeControlFeatureListenerRecords = new RemoteCallbackList<>();
        this.mHotplugEventListenerRecords = new ArrayList<>();
        this.mDeviceEventListenerRecords = new ArrayList<>();
        this.mVendorCommandListenerRecords = new ArrayList<>();
        this.mSystemAudioModeChangeListenerRecords = new ArrayList<>();
        this.mHandler = new Handler();
        this.mHdmiControlBroadcastReceiver = new HdmiControlBroadcastReceiver();
        this.mDisplayStatusCallback = null;
        this.mOtpCallbackPendingAddressAllocation = null;
        this.mPortInfo = null;
        this.mPowerStatus = 1;
        this.mMenuLanguage = localeToMenuLanguage(Locale.getDefault());
        this.mStandbyMessageReceived = false;
        this.mWakeUpMessageReceived = false;
        this.mActivePortId = -1;
        this.mMhlVendorCommandListenerRecords = new ArrayList<>();
        this.mPhysicalAddress = 65535;
        this.mLastInputMhl = -1;
        this.mAddressAllocated = false;
        this.mCecMessageBuffer = new CecMessageBuffer();
        this.mSelectRequestBuffer = new SelectRequestBuffer();
        List<Integer> deviceTypes = HdmiProperties.device_type();
        if (deviceTypes.contains(null)) {
            Slog.w(TAG, "Error parsing ro.hdmi.device.type: " + SystemProperties.get("ro.hdmi.device_type"));
            deviceTypes = (List) deviceTypes.stream().filter(new Predicate() { // from class: com.android.server.hdmi.-$$Lambda$K4ZzFqYFNam5YM38fkNzD7tIaNU
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return Objects.nonNull((Integer) obj);
                }
            }).collect(Collectors.toList());
        }
        this.mLocalDevices = deviceTypes;
        this.mSettingsObserver = new SettingsObserver(this.mHandler);
    }

    protected static List<Integer> getIntList(String string) {
        ArrayList<Integer> list = new ArrayList<>();
        TextUtils.SimpleStringSplitter splitter = new TextUtils.SimpleStringSplitter(',');
        splitter.setString(string);
        for (String item : splitter) {
            try {
                list.add(Integer.valueOf(Integer.parseInt(item)));
            } catch (NumberFormatException e) {
                Slog.w(TAG, "Can't parseInt: " + item);
            }
        }
        return Collections.unmodifiableList(list);
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        if (this.mIoLooper == null) {
            this.mIoThread.start();
            this.mIoLooper = this.mIoThread.getLooper();
        }
        this.mPowerStatus = getInitialPowerStatus();
        this.mProhibitMode = false;
        this.mHdmiControlEnabled = readBooleanSetting("hdmi_control_enabled", true);
        this.mHdmiCecVolumeControlEnabled = readBooleanSetting("hdmi_control_volume_control_enabled", true);
        this.mMhlInputChangeEnabled = readBooleanSetting("mhl_input_switching_enabled", true);
        if (this.mCecController == null) {
            this.mCecController = HdmiCecController.create(this);
        }
        HdmiCecController hdmiCecController = this.mCecController;
        if (hdmiCecController != null) {
            if (!this.mHdmiControlEnabled) {
                hdmiCecController.setOption(2, false);
            } else {
                initializeCec(1);
            }
            if (this.mMhlController == null) {
                this.mMhlController = HdmiMhlControllerStub.create(this);
            }
            if (!this.mMhlController.isReady()) {
                Slog.i(TAG, "Device does not support MHL-control.");
            }
            this.mMhlDevices = Collections.emptyList();
            initPortInfo();
            if (this.mMessageValidator == null) {
                this.mMessageValidator = new HdmiCecMessageValidator(this);
            }
            publishBinderService("hdmi_control", new BinderService());
            if (this.mCecController != null) {
                IntentFilter filter = new IntentFilter();
                filter.addAction("android.intent.action.SCREEN_OFF");
                filter.addAction("android.intent.action.SCREEN_ON");
                filter.addAction("android.intent.action.ACTION_SHUTDOWN");
                filter.addAction("android.intent.action.CONFIGURATION_CHANGED");
                getContext().registerReceiver(this.mHdmiControlBroadcastReceiver, filter);
                registerContentObserver();
            }
            this.mMhlController.setOption(HdmiCecKeycode.CEC_KEYCODE_SELECT_MEDIA_FUNCTION, 1);
            return;
        }
        Slog.i(TAG, "Device does not support HDMI-CEC.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bootCompleted() {
        if (this.mPowerManager.isInteractive() && isPowerStandbyOrTransient()) {
            onWakeUp();
        }
    }

    int getInitialPowerStatus() {
        return 3;
    }

    void setCecController(HdmiCecController cecController) {
        this.mCecController = cecController;
    }

    void setHdmiMhlController(HdmiMhlControllerStub hdmiMhlController) {
        this.mMhlController = hdmiMhlController;
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 500) {
            this.mTvInputManager = (TvInputManager) getContext().getSystemService("tv_input");
            this.mPowerManager = (PowerManager) getContext().getSystemService(PowerManager.class);
        } else if (phase == 1000) {
            runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.-$$Lambda$HdmiControlService$UDUaoEvDyy4HpU7CYvj9q-5NX80
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.bootCompleted();
                }
            });
        }
    }

    TvInputManager getTvInputManager() {
        return this.mTvInputManager;
    }

    void registerTvInputCallback(TvInputManager.TvInputCallback callback) {
        TvInputManager tvInputManager = this.mTvInputManager;
        if (tvInputManager == null) {
            return;
        }
        tvInputManager.registerCallback(callback, this.mHandler);
    }

    void unregisterTvInputCallback(TvInputManager.TvInputCallback callback) {
        TvInputManager tvInputManager = this.mTvInputManager;
        if (tvInputManager == null) {
            return;
        }
        tvInputManager.unregisterCallback(callback);
    }

    PowerManager getPowerManager() {
        return this.mPowerManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onInitializeCecComplete(int initiatedBy) {
        updatePowerStatusOnInitializeCecComplete();
        this.mWakeUpMessageReceived = false;
        if (isTvDeviceEnabled()) {
            this.mCecController.setOption(1, tv().getAutoWakeup());
        }
        int reason = -1;
        if (initiatedBy == 0) {
            reason = 1;
        } else if (initiatedBy == 1) {
            reason = 0;
        } else if (initiatedBy == 2 || initiatedBy == 3) {
            reason = 2;
        }
        if (reason != -1) {
            invokeVendorCommandListenersOnControlStateChanged(true, reason);
            announceHdmiControlStatusChange(true);
        }
    }

    private void updatePowerStatusOnInitializeCecComplete() {
        int i = this.mPowerStatus;
        if (i == 2) {
            this.mPowerStatus = 0;
        } else if (i == 3) {
            this.mPowerStatus = 1;
        }
    }

    private void registerContentObserver() {
        ContentResolver resolver = getContext().getContentResolver();
        String[] settings = {"hdmi_control_enabled", "hdmi_control_volume_control_enabled", "hdmi_control_auto_wakeup_enabled", "hdmi_control_auto_device_off_enabled", "hdmi_system_audio_control_enabled", "mhl_input_switching_enabled", "mhl_power_charge_enabled", "hdmi_cec_switch_enabled", "device_name"};
        for (String s : settings) {
            resolver.registerContentObserver(Settings.Global.getUriFor(s), false, this.mSettingsObserver, -1);
        }
    }

    private class SettingsObserver extends ContentObserver {
        public SettingsObserver(Handler handler) {
            super(handler);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:32:0x0070  */
        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            String option = uri.getLastPathSegment();
            boolean enabled = HdmiControlService.this.readBooleanSetting(option, true);
            switch (option) {
                case "hdmi_control_enabled":
                    HdmiControlService.this.setControlEnabled(enabled);
                    break;
                case "hdmi_control_volume_control_enabled":
                    HdmiControlService.this.setHdmiCecVolumeControlEnabled(enabled);
                    break;
                case "hdmi_control_auto_wakeup_enabled":
                    if (HdmiControlService.this.isTvDeviceEnabled()) {
                        HdmiControlService.this.tv().setAutoWakeup(enabled);
                    }
                    HdmiControlService.this.setCecOption(1, enabled);
                    break;
                case "hdmi_control_auto_device_off_enabled":
                    Iterator it = HdmiControlService.this.mLocalDevices.iterator();
                    while (it.hasNext()) {
                        int type = ((Integer) it.next()).intValue();
                        HdmiCecLocalDevice localDevice = HdmiControlService.this.mCecController.getLocalDevice(type);
                        if (localDevice != null) {
                            localDevice.setAutoDeviceOff(enabled);
                        }
                    }
                    break;
                case "hdmi_system_audio_control_enabled":
                    if (HdmiControlService.this.isTvDeviceEnabled()) {
                        HdmiControlService.this.tv().setSystemAudioControlFeatureEnabled(enabled);
                    }
                    if (HdmiControlService.this.isAudioSystemDevice()) {
                        if (HdmiControlService.this.audioSystem() == null) {
                            Slog.e(HdmiControlService.TAG, "Audio System device has not registered yet. Can't turn system audio mode on.");
                        } else {
                            HdmiControlService.this.audioSystem().onSystemAduioControlFeatureSupportChanged(enabled);
                        }
                        break;
                    }
                    break;
                case "hdmi_cec_switch_enabled":
                    if (HdmiControlService.this.isAudioSystemDevice()) {
                        if (HdmiControlService.this.audioSystem() == null) {
                            Slog.w(HdmiControlService.TAG, "Switch device has not registered yet. Can't turn routing on.");
                        } else {
                            HdmiControlService.this.audioSystem().setRoutingControlFeatureEnables(enabled);
                        }
                        break;
                    }
                    break;
                case "mhl_input_switching_enabled":
                    HdmiControlService.this.setMhlInputChangeEnabled(enabled);
                    break;
                case "mhl_power_charge_enabled":
                    HdmiControlService.this.mMhlController.setOption(HdmiCecKeycode.CEC_KEYCODE_RESTORE_VOLUME_FUNCTION, HdmiControlService.toInt(enabled));
                    break;
                case "device_name":
                    String deviceName = HdmiControlService.this.readStringSetting(option, Build.MODEL);
                    HdmiControlService.this.setDisplayName(deviceName);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int toInt(boolean z) {
        return z ? 1 : 0;
    }

    boolean readBooleanSetting(String key, boolean defVal) {
        ContentResolver cr = getContext().getContentResolver();
        return Settings.Global.getInt(cr, key, toInt(defVal)) == 1;
    }

    void writeBooleanSetting(String key, boolean value) {
        ContentResolver cr = getContext().getContentResolver();
        Settings.Global.putInt(cr, key, toInt(value));
    }

    void writeStringSystemProperty(String key, String value) {
        SystemProperties.set(key, value);
    }

    boolean readBooleanSystemProperty(String key, boolean defVal) {
        return SystemProperties.getBoolean(key, defVal);
    }

    String readStringSetting(String key, String defVal) {
        ContentResolver cr = getContext().getContentResolver();
        String content = Settings.Global.getString(cr, key);
        if (TextUtils.isEmpty(content)) {
            return defVal;
        }
        return content;
    }

    private void initializeCec(int initiatedBy) {
        this.mAddressAllocated = false;
        this.mCecController.setOption(3, true);
        this.mCecController.setLanguage(this.mMenuLanguage);
        initializeLocalDevices(initiatedBy);
    }

    @HdmiAnnotations.ServiceThreadOnly
    private void initializeLocalDevices(int initiatedBy) {
        assertRunOnServiceThread();
        ArrayList<HdmiCecLocalDevice> localDevices = new ArrayList<>();
        Iterator<Integer> it = this.mLocalDevices.iterator();
        while (it.hasNext()) {
            int type = it.next().intValue();
            if (type != 4 || !isHdmiCecNeverClaimPlaybackLogicAddr) {
                HdmiCecLocalDevice localDevice = this.mCecController.getLocalDevice(type);
                if (localDevice == null) {
                    localDevice = HdmiCecLocalDevice.create(this, type);
                }
                localDevice.init();
                localDevices.add(localDevice);
            }
        }
        clearLocalDevices();
        allocateLogicalAddress(localDevices, initiatedBy);
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected void allocateLogicalAddress(final ArrayList<HdmiCecLocalDevice> allocatingDevices, final int initiatedBy) {
        assertRunOnServiceThread();
        this.mCecController.clearLogicalAddress();
        final ArrayList<HdmiCecLocalDevice> allocatedDevices = new ArrayList<>();
        final int[] finished = new int[1];
        this.mAddressAllocated = allocatingDevices.isEmpty();
        this.mSelectRequestBuffer.clear();
        for (final HdmiCecLocalDevice localDevice : allocatingDevices) {
            this.mCecController.allocateLogicalAddress(localDevice.getType(), localDevice.getPreferredAddress(), new HdmiCecController.AllocateAddressCallback() { // from class: com.android.server.hdmi.HdmiControlService.1
                @Override // com.android.server.hdmi.HdmiCecController.AllocateAddressCallback
                public void onAllocated(int deviceType, int logicalAddress) {
                    if (logicalAddress != 15) {
                        HdmiDeviceInfo deviceInfo = HdmiControlService.this.createDeviceInfo(logicalAddress, deviceType, 0);
                        localDevice.setDeviceInfo(deviceInfo);
                        HdmiControlService.this.mCecController.addLocalDevice(deviceType, localDevice);
                        HdmiControlService.this.mCecController.addLogicalAddress(logicalAddress);
                        allocatedDevices.add(localDevice);
                    } else {
                        Slog.e(HdmiControlService.TAG, "Failed to allocate address:[device_type:" + deviceType + "]");
                    }
                    int size = allocatingDevices.size();
                    int[] iArr = finished;
                    int i = iArr[0] + 1;
                    iArr[0] = i;
                    if (size == i) {
                        HdmiControlService.this.mAddressAllocated = true;
                        int i2 = initiatedBy;
                        if (i2 != 4) {
                            HdmiControlService.this.onInitializeCecComplete(i2);
                        }
                        HdmiControlService.this.notifyAddressAllocated(allocatedDevices, initiatedBy);
                        if (HdmiControlService.this.mDisplayStatusCallback != null) {
                            HdmiControlService hdmiControlService = HdmiControlService.this;
                            hdmiControlService.queryDisplayStatus(hdmiControlService.mDisplayStatusCallback);
                            HdmiControlService.this.mDisplayStatusCallback = null;
                        }
                        if (HdmiControlService.this.mOtpCallbackPendingAddressAllocation != null) {
                            HdmiControlService hdmiControlService2 = HdmiControlService.this;
                            hdmiControlService2.oneTouchPlay(hdmiControlService2.mOtpCallbackPendingAddressAllocation);
                            HdmiControlService.this.mOtpCallbackPendingAddressAllocation = null;
                        }
                        HdmiControlService.this.mCecMessageBuffer.processMessages();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void notifyAddressAllocated(ArrayList<HdmiCecLocalDevice> devices, int initiatedBy) {
        assertRunOnServiceThread();
        for (HdmiCecLocalDevice device : devices) {
            int address = device.getDeviceInfo().getLogicalAddress();
            device.handleAddressAllocated(address, initiatedBy);
        }
        if (isTvDeviceEnabled()) {
            tv().setSelectRequestBuffer(this.mSelectRequestBuffer);
        }
    }

    boolean isAddressAllocated() {
        return this.mAddressAllocated;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected void initPortInfo() {
        assertRunOnServiceThread();
        HdmiPortInfo[] cecPortInfo = null;
        synchronized (this.mLock) {
            this.mPhysicalAddress = getPhysicalAddress();
        }
        HdmiCecController hdmiCecController = this.mCecController;
        if (hdmiCecController != null) {
            cecPortInfo = hdmiCecController.getPortInfos();
        }
        if (cecPortInfo == null) {
            return;
        }
        SparseArray<HdmiPortInfo> portInfoMap = new SparseArray<>();
        SparseIntArray portIdMap = new SparseIntArray();
        SparseArray<HdmiDeviceInfo> portDeviceMap = new SparseArray<>();
        for (HdmiPortInfo info : cecPortInfo) {
            portIdMap.put(info.getAddress(), info.getId());
            portInfoMap.put(info.getId(), info);
            portDeviceMap.put(info.getId(), new HdmiDeviceInfo(info.getAddress(), info.getId()));
        }
        this.mPortIdMap = new UnmodifiableSparseIntArray(portIdMap);
        this.mPortInfoMap = new UnmodifiableSparseArray<>(portInfoMap);
        this.mPortDeviceMap = new UnmodifiableSparseArray<>(portDeviceMap);
        HdmiMhlControllerStub hdmiMhlControllerStub = this.mMhlController;
        if (hdmiMhlControllerStub == null) {
            return;
        }
        HdmiPortInfo[] mhlPortInfo = hdmiMhlControllerStub.getPortInfos();
        ArraySet<Integer> mhlSupportedPorts = new ArraySet<>(mhlPortInfo.length);
        for (HdmiPortInfo info2 : mhlPortInfo) {
            if (info2.isMhlSupported()) {
                mhlSupportedPorts.add(Integer.valueOf(info2.getId()));
            }
        }
        if (mhlSupportedPorts.isEmpty()) {
            setPortInfo(Collections.unmodifiableList(Arrays.asList(cecPortInfo)));
            return;
        }
        ArrayList<HdmiPortInfo> result = new ArrayList<>(cecPortInfo.length);
        for (HdmiPortInfo info3 : cecPortInfo) {
            if (mhlSupportedPorts.contains(Integer.valueOf(info3.getId()))) {
                result.add(new HdmiPortInfo(info3.getId(), info3.getType(), info3.getAddress(), info3.isCecSupported(), true, info3.isArcSupported()));
            } else {
                result.add(info3);
            }
        }
        setPortInfo(Collections.unmodifiableList(result));
    }

    List<HdmiPortInfo> getPortInfo() {
        List<HdmiPortInfo> list;
        synchronized (this.mLock) {
            list = this.mPortInfo;
        }
        return list;
    }

    void setPortInfo(List<HdmiPortInfo> portInfo) {
        synchronized (this.mLock) {
            this.mPortInfo = portInfo;
        }
    }

    HdmiPortInfo getPortInfo(int portId) {
        return this.mPortInfoMap.get(portId, null);
    }

    int portIdToPath(int portId) {
        HdmiPortInfo portInfo = getPortInfo(portId);
        if (portInfo == null) {
            Slog.e(TAG, "Cannot find the port info: " + portId);
            return 65535;
        }
        return portInfo.getAddress();
    }

    int pathToPortId(int path) {
        int physicalAddress;
        int mask = 61440;
        int finalMask = 61440;
        synchronized (this.mLock) {
            physicalAddress = this.mPhysicalAddress;
        }
        int maskedAddress = physicalAddress;
        while (maskedAddress != 0) {
            maskedAddress = physicalAddress & mask;
            finalMask |= mask;
            mask >>= 4;
        }
        int portAddress = path & finalMask;
        return this.mPortIdMap.get(portAddress, -1);
    }

    boolean isValidPortId(int portId) {
        return getPortInfo(portId) != null;
    }

    Looper getIoLooper() {
        return this.mIoLooper;
    }

    void setIoLooper(Looper ioLooper) {
        this.mIoLooper = ioLooper;
    }

    void setMessageValidator(HdmiCecMessageValidator messageValidator) {
        this.mMessageValidator = messageValidator;
    }

    Looper getServiceLooper() {
        return this.mHandler.getLooper();
    }

    int getPhysicalAddress() {
        return this.mCecController.getPhysicalAddress();
    }

    int getVendorId() {
        return this.mCecController.getVendorId();
    }

    @HdmiAnnotations.ServiceThreadOnly
    HdmiDeviceInfo getDeviceInfo(int logicalAddress) {
        assertRunOnServiceThread();
        if (tv() == null) {
            return null;
        }
        return tv().getCecDeviceInfo(logicalAddress);
    }

    @HdmiAnnotations.ServiceThreadOnly
    HdmiDeviceInfo getDeviceInfoByPort(int port) {
        assertRunOnServiceThread();
        HdmiMhlLocalDeviceStub info = this.mMhlController.getLocalDevice(port);
        if (info != null) {
            return info.getInfo();
        }
        return null;
    }

    int getCecVersion() {
        return this.mCecController.getVersion();
    }

    boolean isConnectedToArcPort(int physicalAddress) {
        int portId = pathToPortId(physicalAddress);
        if (portId != -1) {
            return this.mPortInfoMap.get(portId).isArcSupported();
        }
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    boolean isConnected(int portId) {
        assertRunOnServiceThread();
        return this.mCecController.isConnected(portId);
    }

    void runOnServiceThread(Runnable runnable) {
        this.mHandler.post(runnable);
    }

    void runOnServiceThreadAtFrontOfQueue(Runnable runnable) {
        this.mHandler.postAtFrontOfQueue(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void assertRunOnServiceThread() {
        if (Looper.myLooper() != this.mHandler.getLooper()) {
            throw new IllegalStateException("Should run on service thread.");
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    void sendCecCommand(HdmiCecMessage command, SendMessageCallback callback) {
        assertRunOnServiceThread();
        if (this.mMessageValidator.isValid(command) == 0) {
            this.mCecController.sendCommand(command, callback);
            return;
        }
        HdmiLogger.error("Invalid message type:" + command, new Object[0]);
        if (callback != null) {
            callback.onSendCompleted(3);
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    void sendCecCommand(HdmiCecMessage command) {
        assertRunOnServiceThread();
        sendCecCommand(command, null);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void maySendFeatureAbortCommand(HdmiCecMessage command, int reason) {
        assertRunOnServiceThread();
        this.mCecController.maySendFeatureAbortCommand(command, reason);
    }

    @HdmiAnnotations.ServiceThreadOnly
    boolean handleCecCommand(HdmiCecMessage message) {
        assertRunOnServiceThread();
        int errorCode = this.mMessageValidator.isValid(message);
        if (errorCode != 0) {
            if (errorCode == 3) {
                maySendFeatureAbortCommand(message, 3);
            }
            return true;
        }
        if (dispatchMessageToLocalDevice(message)) {
            return true;
        }
        if (this.mAddressAllocated) {
            return false;
        }
        return this.mCecMessageBuffer.bufferMessage(message);
    }

    void enableAudioReturnChannel(int portId, boolean enabled) {
        this.mCecController.enableAudioReturnChannel(portId, enabled);
    }

    @HdmiAnnotations.ServiceThreadOnly
    private boolean dispatchMessageToLocalDevice(HdmiCecMessage message) {
        assertRunOnServiceThread();
        for (HdmiCecLocalDevice device : this.mCecController.getLocalDeviceList()) {
            if (device.dispatchMessage(message) && message.getDestination() != 15) {
                return true;
            }
        }
        if (message.getDestination() != 15) {
            HdmiLogger.warning("Unhandled cec command:" + message, new Object[0]);
        }
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void onHotplug(int portId, boolean connected) {
        assertRunOnServiceThread();
        if (connected && !isTvDevice() && getPortInfo(portId).getType() == 1) {
            if (isSwitchDevice()) {
                initPortInfo();
                HdmiLogger.debug("initPortInfo for switch device when onHotplug from tx.", new Object[0]);
            }
            ArrayList<HdmiCecLocalDevice> localDevices = new ArrayList<>();
            Iterator<Integer> it = this.mLocalDevices.iterator();
            while (it.hasNext()) {
                int type = it.next().intValue();
                if (type != 4 || !isHdmiCecNeverClaimPlaybackLogicAddr) {
                    HdmiCecLocalDevice localDevice = this.mCecController.getLocalDevice(type);
                    if (localDevice == null) {
                        localDevice = HdmiCecLocalDevice.create(this, type);
                        localDevice.init();
                    }
                    localDevices.add(localDevice);
                }
            }
            allocateLogicalAddress(localDevices, 4);
        }
        for (HdmiCecLocalDevice device : this.mCecController.getLocalDeviceList()) {
            device.onHotplug(portId, connected);
        }
        announceHotplugEvent(portId, connected);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void pollDevices(DevicePollingCallback callback, int sourceAddress, int pickStrategy, int retryCount) {
        assertRunOnServiceThread();
        this.mCecController.pollDevices(callback, sourceAddress, checkPollStrategy(pickStrategy), retryCount);
    }

    private int checkPollStrategy(int pickStrategy) {
        int strategy = pickStrategy & 3;
        if (strategy == 0) {
            throw new IllegalArgumentException("Invalid poll strategy:" + pickStrategy);
        }
        int iterationStrategy = 196608 & pickStrategy;
        if (iterationStrategy == 0) {
            throw new IllegalArgumentException("Invalid iteration strategy:" + pickStrategy);
        }
        return strategy | iterationStrategy;
    }

    List<HdmiCecLocalDevice> getAllLocalDevices() {
        assertRunOnServiceThread();
        return this.mCecController.getLocalDeviceList();
    }

    protected void checkLogicalAddressConflictAndReallocate(int logicalAddress) {
        for (HdmiCecLocalDevice device : getAllLocalDevices()) {
            if (device.getDeviceInfo().getLogicalAddress() == logicalAddress) {
                HdmiLogger.debug("allocate logical address for " + device.getDeviceInfo(), new Object[0]);
                ArrayList<HdmiCecLocalDevice> localDevices = new ArrayList<>();
                localDevices.add(device);
                allocateLogicalAddress(localDevices, 4);
                return;
            }
        }
    }

    Object getServiceLock() {
        return this.mLock;
    }

    void setAudioStatus(boolean mute, int volume) {
        if (!isTvDeviceEnabled() || !tv().isSystemAudioActivated() || !isHdmiCecVolumeControlEnabled()) {
            return;
        }
        AudioManager audioManager = getAudioManager();
        boolean muted = audioManager.isStreamMute(3);
        if (mute) {
            if (!muted) {
                audioManager.setStreamMute(3, true);
                return;
            }
            return;
        }
        if (muted) {
            audioManager.setStreamMute(3, false);
        }
        if (volume >= 0 && volume <= 100) {
            Slog.i(TAG, "volume: " + volume);
            int flag = 1 | 256;
            audioManager.setStreamVolume(3, volume, flag);
        }
    }

    void announceSystemAudioModeChange(boolean enabled) {
        synchronized (this.mLock) {
            for (SystemAudioModeChangeListenerRecord record : this.mSystemAudioModeChangeListenerRecords) {
                invokeSystemAudioModeChangeLocked(record.mListener, enabled);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HdmiDeviceInfo createDeviceInfo(int logicalAddress, int deviceType, int powerStatus) {
        String displayName = readStringSetting("device_name", Build.MODEL);
        return new HdmiDeviceInfo(logicalAddress, getPhysicalAddress(), pathToPortId(getPhysicalAddress()), deviceType, getVendorId(), displayName, powerStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayName(String newDisplayName) {
        for (HdmiCecLocalDevice device : getAllLocalDevices()) {
            HdmiDeviceInfo deviceInfo = device.getDeviceInfo();
            if (!deviceInfo.getDisplayName().equals(newDisplayName)) {
                device.setDeviceInfo(new HdmiDeviceInfo(deviceInfo.getLogicalAddress(), deviceInfo.getPhysicalAddress(), deviceInfo.getPortId(), deviceInfo.getDeviceType(), deviceInfo.getVendorId(), newDisplayName, deviceInfo.getDevicePowerStatus()));
                sendCecCommand(HdmiCecMessageBuilder.buildSetOsdNameCommand(device.mAddress, 0, newDisplayName));
            }
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    void handleMhlHotplugEvent(int portId, boolean connected) {
        assertRunOnServiceThread();
        if (connected) {
            HdmiMhlLocalDeviceStub newDevice = new HdmiMhlLocalDeviceStub(this, portId);
            HdmiMhlLocalDeviceStub oldDevice = this.mMhlController.addLocalDevice(newDevice);
            if (oldDevice != null) {
                oldDevice.onDeviceRemoved();
                Slog.i(TAG, "Old device of port " + portId + " is removed");
            }
            invokeDeviceEventListeners(newDevice.getInfo(), 1);
            updateSafeMhlInput();
        } else {
            HdmiMhlLocalDeviceStub device = this.mMhlController.removeLocalDevice(portId);
            if (device != null) {
                device.onDeviceRemoved();
                invokeDeviceEventListeners(device.getInfo(), 2);
                updateSafeMhlInput();
            } else {
                Slog.w(TAG, "No device to remove:[portId=" + portId);
            }
        }
        announceHotplugEvent(portId, connected);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void handleMhlBusModeChanged(int portId, int busmode) {
        assertRunOnServiceThread();
        HdmiMhlLocalDeviceStub device = this.mMhlController.getLocalDevice(portId);
        if (device != null) {
            device.setBusMode(busmode);
            return;
        }
        Slog.w(TAG, "No mhl device exists for bus mode change[portId:" + portId + ", busmode:" + busmode + "]");
    }

    @HdmiAnnotations.ServiceThreadOnly
    void handleMhlBusOvercurrent(int portId, boolean on) {
        assertRunOnServiceThread();
        HdmiMhlLocalDeviceStub device = this.mMhlController.getLocalDevice(portId);
        if (device != null) {
            device.onBusOvercurrentDetected(on);
            return;
        }
        Slog.w(TAG, "No mhl device exists for bus overcurrent event[portId:" + portId + "]");
    }

    @HdmiAnnotations.ServiceThreadOnly
    void handleMhlDeviceStatusChanged(int portId, int adopterId, int deviceId) {
        assertRunOnServiceThread();
        HdmiMhlLocalDeviceStub device = this.mMhlController.getLocalDevice(portId);
        if (device != null) {
            device.setDeviceStatusChange(adopterId, deviceId);
            return;
        }
        Slog.w(TAG, "No mhl device exists for device status event[portId:" + portId + ", adopterId:" + adopterId + ", deviceId:" + deviceId + "]");
    }

    @HdmiAnnotations.ServiceThreadOnly
    private void updateSafeMhlInput() {
        assertRunOnServiceThread();
        List<HdmiDeviceInfo> inputs = Collections.emptyList();
        SparseArray<HdmiMhlLocalDeviceStub> devices = this.mMhlController.getAllLocalDevices();
        for (int i = 0; i < devices.size(); i++) {
            HdmiMhlLocalDeviceStub device = devices.valueAt(i);
            HdmiDeviceInfo info = device.getInfo();
            if (info != null) {
                if (inputs.isEmpty()) {
                    inputs = new ArrayList();
                }
                inputs.add(device.getInfo());
            }
        }
        synchronized (this.mLock) {
            this.mMhlDevices = inputs;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<HdmiDeviceInfo> getMhlDevicesLocked() {
        return this.mMhlDevices;
    }

    private class HdmiMhlVendorCommandListenerRecord implements IBinder.DeathRecipient {
        private final IHdmiMhlVendorCommandListener mListener;

        public HdmiMhlVendorCommandListenerRecord(IHdmiMhlVendorCommandListener listener) {
            this.mListener = listener;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            HdmiControlService.this.mMhlVendorCommandListenerRecords.remove(this);
        }
    }

    private final class HdmiControlStatusChangeListenerRecord implements IBinder.DeathRecipient {
        private final IHdmiControlStatusChangeListener mListener;

        HdmiControlStatusChangeListenerRecord(IHdmiControlStatusChangeListener listener) {
            this.mListener = listener;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (HdmiControlService.this.mLock) {
                HdmiControlService.this.mHdmiControlStatusChangeListenerRecords.remove(this);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof HdmiControlStatusChangeListenerRecord)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            HdmiControlStatusChangeListenerRecord other = (HdmiControlStatusChangeListenerRecord) obj;
            return other.mListener == this.mListener;
        }

        public int hashCode() {
            return this.mListener.hashCode();
        }
    }

    private final class HotplugEventListenerRecord implements IBinder.DeathRecipient {
        private final IHdmiHotplugEventListener mListener;

        public HotplugEventListenerRecord(IHdmiHotplugEventListener listener) {
            this.mListener = listener;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (HdmiControlService.this.mLock) {
                HdmiControlService.this.mHotplugEventListenerRecords.remove(this);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof HotplugEventListenerRecord)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            HotplugEventListenerRecord other = (HotplugEventListenerRecord) obj;
            return other.mListener == this.mListener;
        }

        public int hashCode() {
            return this.mListener.hashCode();
        }
    }

    private final class DeviceEventListenerRecord implements IBinder.DeathRecipient {
        private final IHdmiDeviceEventListener mListener;

        public DeviceEventListenerRecord(IHdmiDeviceEventListener listener) {
            this.mListener = listener;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (HdmiControlService.this.mLock) {
                HdmiControlService.this.mDeviceEventListenerRecords.remove(this);
            }
        }
    }

    private final class SystemAudioModeChangeListenerRecord implements IBinder.DeathRecipient {
        private final IHdmiSystemAudioModeChangeListener mListener;

        public SystemAudioModeChangeListenerRecord(IHdmiSystemAudioModeChangeListener listener) {
            this.mListener = listener;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (HdmiControlService.this.mLock) {
                HdmiControlService.this.mSystemAudioModeChangeListenerRecords.remove(this);
            }
        }
    }

    class VendorCommandListenerRecord implements IBinder.DeathRecipient {
        private final int mDeviceType;
        private final IHdmiVendorCommandListener mListener;

        public VendorCommandListenerRecord(IHdmiVendorCommandListener listener, int deviceType) {
            this.mListener = listener;
            this.mDeviceType = deviceType;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (HdmiControlService.this.mLock) {
                HdmiControlService.this.mVendorCommandListenerRecords.remove(this);
            }
        }
    }

    private class HdmiRecordListenerRecord implements IBinder.DeathRecipient {
        private final IHdmiRecordListener mListener;

        public HdmiRecordListenerRecord(IHdmiRecordListener listener) {
            this.mListener = listener;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (HdmiControlService.this.mLock) {
                if (HdmiControlService.this.mRecordListenerRecord == this) {
                    HdmiControlService.this.mRecordListenerRecord = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceAccessPermission() {
        getContext().enforceCallingOrSelfPermission(PERMISSION, TAG);
    }

    private final class BinderService extends IHdmiControlService.Stub {
        private BinderService() {
        }

        public int[] getSupportedTypes() {
            HdmiControlService.this.enforceAccessPermission();
            int[] localDevices = new int[HdmiControlService.this.mLocalDevices.size()];
            for (int i = 0; i < localDevices.length; i++) {
                localDevices[i] = ((Integer) HdmiControlService.this.mLocalDevices.get(i)).intValue();
            }
            return localDevices;
        }

        public HdmiDeviceInfo getActiveSource() {
            HdmiControlService.this.enforceAccessPermission();
            HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
            if (tv == null) {
                if (HdmiControlService.this.isTvDevice()) {
                    Slog.e(HdmiControlService.TAG, "Local tv device not available.");
                    return null;
                }
                if (!HdmiControlService.this.isPlaybackDevice()) {
                    return null;
                }
                if (HdmiControlService.this.playback() != null && HdmiControlService.this.playback().mIsActiveSource) {
                    return HdmiControlService.this.playback().getDeviceInfo();
                }
                HdmiCecLocalDevice.ActiveSource activeSource = HdmiControlService.this.getLocalActiveSource();
                if (activeSource.physicalAddress == 65535) {
                    return null;
                }
                if (HdmiControlService.this.audioSystem() != null) {
                    HdmiCecLocalDeviceAudioSystem audioSystem = HdmiControlService.this.audioSystem();
                    for (HdmiDeviceInfo info : audioSystem.getSafeCecDevicesLocked()) {
                        if (info.getPhysicalAddress() == activeSource.physicalAddress) {
                            return info;
                        }
                    }
                }
                if (HdmiUtils.isValidAddress(activeSource.logicalAddress)) {
                    return new HdmiDeviceInfo(activeSource.logicalAddress, activeSource.physicalAddress, HdmiControlService.this.pathToPortId(activeSource.physicalAddress), HdmiUtils.getTypeFromAddress(activeSource.logicalAddress), 0, HdmiUtils.getDefaultDeviceName(activeSource.logicalAddress));
                }
                return new HdmiDeviceInfo(activeSource.physicalAddress, HdmiControlService.this.pathToPortId(activeSource.physicalAddress));
            }
            HdmiCecLocalDevice.ActiveSource activeSource2 = tv.getActiveSource();
            if (activeSource2.isValid()) {
                return new HdmiDeviceInfo(activeSource2.logicalAddress, activeSource2.physicalAddress, -1, -1, 0, "");
            }
            int activePath = tv.getActivePath();
            if (activePath == 65535) {
                return null;
            }
            HdmiDeviceInfo info2 = tv.getSafeDeviceInfoByPath(activePath);
            return info2 != null ? info2 : new HdmiDeviceInfo(activePath, tv.getActivePortId());
        }

        public void deviceSelect(final int deviceId, final IHdmiControlCallback callback) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.1
                @Override // java.lang.Runnable
                public void run() {
                    if (callback == null) {
                        Slog.e(HdmiControlService.TAG, "Callback cannot be null");
                        return;
                    }
                    if (HdmiControlService.this.isPowerStandby()) {
                        Slog.e(HdmiControlService.TAG, "Device is in standby. Not handling deviceSelect");
                        HdmiControlService.this.invokeCallback(callback, 6);
                        return;
                    }
                    HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
                    if (tv == null) {
                        if (!HdmiControlService.this.mAddressAllocated) {
                            HdmiControlService.this.mSelectRequestBuffer.set(SelectRequestBuffer.newDeviceSelect(HdmiControlService.this, deviceId, callback));
                            return;
                        } else if (!HdmiControlService.this.isTvDevice()) {
                            HdmiControlService.this.invokeCallback(callback, 2);
                            return;
                        } else {
                            Slog.e(HdmiControlService.TAG, "Local tv device not available");
                            return;
                        }
                    }
                    HdmiMhlLocalDeviceStub device = HdmiControlService.this.mMhlController.getLocalDeviceById(deviceId);
                    if (device != null) {
                        if (device.getPortId() == tv.getActivePortId()) {
                            HdmiControlService.this.invokeCallback(callback, 0);
                            return;
                        } else {
                            device.turnOn(callback);
                            tv.doManualPortSwitching(device.getPortId(), null);
                            return;
                        }
                    }
                    tv.deviceSelect(deviceId, callback);
                }
            });
        }

        public void portSelect(final int portId, final IHdmiControlCallback callback) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.2
                @Override // java.lang.Runnable
                public void run() {
                    if (callback == null) {
                        Slog.e(HdmiControlService.TAG, "Callback cannot be null");
                        return;
                    }
                    if (HdmiControlService.this.isPowerStandby()) {
                        Slog.e(HdmiControlService.TAG, "Device is in standby. Not handling portSelect");
                        HdmiControlService.this.invokeCallback(callback, 6);
                        return;
                    }
                    HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
                    if (tv != null) {
                        tv.doManualPortSwitching(portId, callback);
                        return;
                    }
                    HdmiCecLocalDeviceAudioSystem audioSystem = HdmiControlService.this.audioSystem();
                    if (audioSystem == null) {
                        if (!HdmiControlService.this.mAddressAllocated) {
                            HdmiControlService.this.mSelectRequestBuffer.set(SelectRequestBuffer.newPortSelect(HdmiControlService.this, portId, callback));
                            return;
                        } else {
                            Slog.w(HdmiControlService.TAG, "Local device not available");
                            HdmiControlService.this.invokeCallback(callback, 2);
                            return;
                        }
                    }
                    audioSystem.doManualPortSwitching(portId, callback);
                }
            });
        }

        public void sendKeyEvent(final int deviceType, final int keyCode, final boolean isPressed) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.3
                @Override // java.lang.Runnable
                public void run() {
                    HdmiMhlLocalDeviceStub device = HdmiControlService.this.mMhlController.getLocalDevice(HdmiControlService.this.mActivePortId);
                    if (device == null) {
                        if (HdmiControlService.this.mCecController != null) {
                            HdmiCecLocalDevice localDevice = HdmiControlService.this.mCecController.getLocalDevice(deviceType);
                            if (localDevice == null) {
                                Slog.w(HdmiControlService.TAG, "Local device not available to send key event.");
                                return;
                            } else {
                                localDevice.sendKeyEvent(keyCode, isPressed);
                                return;
                            }
                        }
                        return;
                    }
                    device.sendKeyEvent(keyCode, isPressed);
                }
            });
        }

        public void sendVolumeKeyEvent(final int deviceType, final int keyCode, final boolean isPressed) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.4
                @Override // java.lang.Runnable
                public void run() {
                    if (HdmiControlService.this.mCecController != null) {
                        HdmiCecLocalDevice localDevice = HdmiControlService.this.mCecController.getLocalDevice(deviceType);
                        if (localDevice == null) {
                            Slog.w(HdmiControlService.TAG, "Local device " + deviceType + " not available to send volume key event.");
                            return;
                        }
                        localDevice.sendVolumeKeyEvent(keyCode, isPressed);
                        return;
                    }
                    Slog.w(HdmiControlService.TAG, "CEC controller not available to send volume key event.");
                }
            });
        }

        public void oneTouchPlay(final IHdmiControlCallback callback) {
            HdmiControlService.this.enforceAccessPermission();
            int pid = Binder.getCallingPid();
            Slog.d(HdmiControlService.TAG, "Proccess pid: " + pid + " is calling oneTouchPlay.");
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.5
                @Override // java.lang.Runnable
                public void run() {
                    HdmiControlService.this.oneTouchPlay(callback);
                }
            });
        }

        public void queryDisplayStatus(final IHdmiControlCallback callback) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.6
                @Override // java.lang.Runnable
                public void run() {
                    HdmiControlService.this.queryDisplayStatus(callback);
                }
            });
        }

        public void addHdmiControlStatusChangeListener(IHdmiControlStatusChangeListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.addHdmiControlStatusChangeListener(listener);
        }

        public void removeHdmiControlStatusChangeListener(IHdmiControlStatusChangeListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.removeHdmiControlStatusChangeListener(listener);
        }

        public void addHdmiCecVolumeControlFeatureListener(IHdmiCecVolumeControlFeatureListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.addHdmiCecVolumeControlFeatureListener(listener);
        }

        public void removeHdmiCecVolumeControlFeatureListener(IHdmiCecVolumeControlFeatureListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.removeHdmiControlVolumeControlStatusChangeListener(listener);
        }

        public void addHotplugEventListener(IHdmiHotplugEventListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.addHotplugEventListener(listener);
        }

        public void removeHotplugEventListener(IHdmiHotplugEventListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.removeHotplugEventListener(listener);
        }

        public void addDeviceEventListener(IHdmiDeviceEventListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.addDeviceEventListener(listener);
        }

        public List<HdmiPortInfo> getPortInfo() {
            HdmiControlService.this.enforceAccessPermission();
            if (HdmiControlService.this.getPortInfo() == null) {
                return Collections.emptyList();
            }
            return HdmiControlService.this.getPortInfo();
        }

        public boolean canChangeSystemAudioMode() {
            HdmiControlService.this.enforceAccessPermission();
            HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
            if (tv == null) {
                return false;
            }
            return tv.hasSystemAudioDevice();
        }

        public boolean getSystemAudioMode() {
            HdmiControlService.this.enforceAccessPermission();
            HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
            HdmiCecLocalDeviceAudioSystem audioSystem = HdmiControlService.this.audioSystem();
            return (tv != null && tv.isSystemAudioActivated()) || (audioSystem != null && audioSystem.isSystemAudioActivated());
        }

        public int getPhysicalAddress() {
            int i;
            HdmiControlService.this.enforceAccessPermission();
            synchronized (HdmiControlService.this.mLock) {
                i = HdmiControlService.this.mPhysicalAddress;
            }
            return i;
        }

        public void setSystemAudioMode(final boolean enabled, final IHdmiControlCallback callback) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.7
                @Override // java.lang.Runnable
                public void run() {
                    HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
                    if (tv == null) {
                        Slog.w(HdmiControlService.TAG, "Local tv device not available");
                        HdmiControlService.this.invokeCallback(callback, 2);
                    } else {
                        tv.changeSystemAudioMode(enabled, callback);
                    }
                }
            });
        }

        public void addSystemAudioModeChangeListener(IHdmiSystemAudioModeChangeListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.addSystemAudioModeChangeListner(listener);
        }

        public void removeSystemAudioModeChangeListener(IHdmiSystemAudioModeChangeListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.removeSystemAudioModeChangeListener(listener);
        }

        public void setInputChangeListener(IHdmiInputChangeListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.setInputChangeListener(listener);
        }

        public List<HdmiDeviceInfo> getInputDevices() {
            List<HdmiDeviceInfo> cecDevices;
            List<HdmiDeviceInfo> listMergeToUnmodifiableList;
            HdmiControlService.this.enforceAccessPermission();
            HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
            synchronized (HdmiControlService.this.mLock) {
                try {
                    if (tv == null) {
                        cecDevices = Collections.emptyList();
                    } else {
                        cecDevices = tv.getSafeExternalInputsLocked();
                    }
                    listMergeToUnmodifiableList = HdmiUtils.mergeToUnmodifiableList(cecDevices, HdmiControlService.this.getMhlDevicesLocked());
                } catch (Throwable th) {
                    throw th;
                }
            }
            return listMergeToUnmodifiableList;
        }

        public List<HdmiDeviceInfo> getDeviceList() {
            List<HdmiDeviceInfo> safeCecDevicesLocked;
            List<HdmiDeviceInfo> safeCecDevicesLocked2;
            HdmiControlService.this.enforceAccessPermission();
            HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
            if (tv != null) {
                synchronized (HdmiControlService.this.mLock) {
                    safeCecDevicesLocked2 = tv.getSafeCecDevicesLocked();
                }
                return safeCecDevicesLocked2;
            }
            HdmiCecLocalDeviceAudioSystem audioSystem = HdmiControlService.this.audioSystem();
            synchronized (HdmiControlService.this.mLock) {
                try {
                    if (audioSystem == null) {
                        safeCecDevicesLocked = Collections.emptyList();
                    } else {
                        safeCecDevicesLocked = audioSystem.getSafeCecDevicesLocked();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return safeCecDevicesLocked;
        }

        public void powerOffRemoteDevice(final int logicalAddress, final int powerStatus) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.8
                @Override // java.lang.Runnable
                public void run() {
                    Slog.w(HdmiControlService.TAG, "Device " + logicalAddress + " power status is " + powerStatus + " before standby command sent out");
                    HdmiControlService.this.sendCecCommand(HdmiCecMessageBuilder.buildStandby(HdmiControlService.this.getRemoteControlSourceAddress(), logicalAddress));
                }
            });
        }

        public void powerOnRemoteDevice(int logicalAddress, int powerStatus) {
        }

        public void askRemoteDeviceToBecomeActiveSource(final int physicalAddress) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.9
                @Override // java.lang.Runnable
                public void run() {
                    HdmiCecMessage setStreamPath = HdmiCecMessageBuilder.buildSetStreamPath(HdmiControlService.this.getRemoteControlSourceAddress(), physicalAddress);
                    if (HdmiControlService.this.pathToPortId(physicalAddress) != -1) {
                        if (HdmiControlService.this.getSwitchDevice() != null) {
                            HdmiControlService.this.getSwitchDevice().handleSetStreamPath(setStreamPath);
                        } else {
                            Slog.e(HdmiControlService.TAG, "Can't get the correct local device to handle routing.");
                        }
                    }
                    HdmiControlService.this.sendCecCommand(setStreamPath);
                }
            });
        }

        public void setSystemAudioVolume(final int oldIndex, final int newIndex, final int maxIndex) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.10
                @Override // java.lang.Runnable
                public void run() {
                    HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
                    if (tv == null) {
                        Slog.w(HdmiControlService.TAG, "Local tv device not available");
                    } else {
                        int i = oldIndex;
                        tv.changeVolume(i, newIndex - i, maxIndex);
                    }
                }
            });
        }

        public void setSystemAudioMute(final boolean mute) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.11
                @Override // java.lang.Runnable
                public void run() {
                    HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
                    if (tv == null) {
                        Slog.w(HdmiControlService.TAG, "Local tv device not available");
                    } else {
                        tv.changeMute(mute);
                    }
                }
            });
        }

        public void setArcMode(boolean enabled) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.12
                @Override // java.lang.Runnable
                public void run() {
                    HdmiCecLocalDeviceTv tv = HdmiControlService.this.tv();
                    if (tv == null) {
                        Slog.w(HdmiControlService.TAG, "Local tv device not available to change arc mode.");
                    }
                }
            });
        }

        public void setProhibitMode(boolean enabled) {
            HdmiControlService.this.enforceAccessPermission();
            if (!HdmiControlService.this.isTvDevice()) {
                return;
            }
            HdmiControlService.this.setProhibitMode(enabled);
        }

        public void addVendorCommandListener(IHdmiVendorCommandListener listener, int deviceType) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.addVendorCommandListener(listener, deviceType);
        }

        public void sendVendorCommand(final int deviceType, final int targetAddress, final byte[] params, final boolean hasVendorId) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.13
                @Override // java.lang.Runnable
                public void run() {
                    HdmiCecLocalDevice device = HdmiControlService.this.mCecController.getLocalDevice(deviceType);
                    if (device == null) {
                        Slog.w(HdmiControlService.TAG, "Local device not available");
                    } else if (hasVendorId) {
                        HdmiControlService.this.sendCecCommand(HdmiCecMessageBuilder.buildVendorCommandWithId(device.getDeviceInfo().getLogicalAddress(), targetAddress, HdmiControlService.this.getVendorId(), params));
                    } else {
                        HdmiControlService.this.sendCecCommand(HdmiCecMessageBuilder.buildVendorCommand(device.getDeviceInfo().getLogicalAddress(), targetAddress, params));
                    }
                }
            });
        }

        public void sendStandby(final int deviceType, final int deviceId) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.14
                @Override // java.lang.Runnable
                public void run() {
                    HdmiMhlLocalDeviceStub mhlDevice = HdmiControlService.this.mMhlController.getLocalDeviceById(deviceId);
                    if (mhlDevice == null) {
                        HdmiCecLocalDevice device = HdmiControlService.this.mCecController.getLocalDevice(deviceType);
                        if (device == null) {
                            device = HdmiControlService.this.audioSystem();
                        }
                        if (device == null) {
                            Slog.w(HdmiControlService.TAG, "Local device not available");
                            return;
                        } else {
                            device.sendStandby(deviceId);
                            return;
                        }
                    }
                    mhlDevice.sendStandby();
                }
            });
        }

        public void setHdmiRecordListener(IHdmiRecordListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.setHdmiRecordListener(listener);
        }

        public void startOneTouchRecord(final int recorderAddress, final byte[] recordSource) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.15
                @Override // java.lang.Runnable
                public void run() {
                    if (!HdmiControlService.this.isTvDeviceEnabled()) {
                        Slog.w(HdmiControlService.TAG, "TV device is not enabled.");
                    } else {
                        HdmiControlService.this.tv().startOneTouchRecord(recorderAddress, recordSource);
                    }
                }
            });
        }

        public void stopOneTouchRecord(final int recorderAddress) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.16
                @Override // java.lang.Runnable
                public void run() {
                    if (!HdmiControlService.this.isTvDeviceEnabled()) {
                        Slog.w(HdmiControlService.TAG, "TV device is not enabled.");
                    } else {
                        HdmiControlService.this.tv().stopOneTouchRecord(recorderAddress);
                    }
                }
            });
        }

        public void startTimerRecording(final int recorderAddress, final int sourceType, final byte[] recordSource) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.17
                @Override // java.lang.Runnable
                public void run() {
                    if (!HdmiControlService.this.isTvDeviceEnabled()) {
                        Slog.w(HdmiControlService.TAG, "TV device is not enabled.");
                    } else {
                        HdmiControlService.this.tv().startTimerRecording(recorderAddress, sourceType, recordSource);
                    }
                }
            });
        }

        public void clearTimerRecording(final int recorderAddress, final int sourceType, final byte[] recordSource) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.18
                @Override // java.lang.Runnable
                public void run() {
                    if (!HdmiControlService.this.isTvDeviceEnabled()) {
                        Slog.w(HdmiControlService.TAG, "TV device is not enabled.");
                    } else {
                        HdmiControlService.this.tv().clearTimerRecording(recorderAddress, sourceType, recordSource);
                    }
                }
            });
        }

        public void sendMhlVendorCommand(final int portId, final int offset, final int length, final byte[] data) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.19
                @Override // java.lang.Runnable
                public void run() {
                    if (HdmiControlService.this.isControlEnabled()) {
                        HdmiMhlLocalDeviceStub device = HdmiControlService.this.mMhlController.getLocalDevice(portId);
                        if (device != null) {
                            HdmiControlService.this.mMhlController.sendVendorCommand(portId, offset, length, data);
                            return;
                        }
                        Slog.w(HdmiControlService.TAG, "Invalid port id:" + portId);
                        return;
                    }
                    Slog.w(HdmiControlService.TAG, "Hdmi control is disabled.");
                }
            });
        }

        public void addHdmiMhlVendorCommandListener(IHdmiMhlVendorCommandListener listener) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.addHdmiMhlVendorCommandListener(listener);
        }

        public void setStandbyMode(final boolean isStandbyModeOn) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.20
                @Override // java.lang.Runnable
                public void run() {
                    HdmiControlService.this.setStandbyMode(isStandbyModeOn);
                }
            });
        }

        public boolean isHdmiCecVolumeControlEnabled() {
            HdmiControlService.this.enforceAccessPermission();
            return HdmiControlService.this.isHdmiCecVolumeControlEnabled();
        }

        public void setHdmiCecVolumeControlEnabled(boolean isHdmiCecVolumeControlEnabled) {
            HdmiControlService.this.enforceAccessPermission();
            long token = Binder.clearCallingIdentity();
            try {
                HdmiControlService.this.setHdmiCecVolumeControlEnabled(isHdmiCecVolumeControlEnabled);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void reportAudioStatus(final int deviceType, int volume, int maxVolume, boolean isMute) {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.21
                @Override // java.lang.Runnable
                public void run() {
                    HdmiCecLocalDevice device = HdmiControlService.this.mCecController.getLocalDevice(deviceType);
                    if (device == null) {
                        Slog.w(HdmiControlService.TAG, "Local device not available");
                        return;
                    }
                    if (HdmiControlService.this.audioSystem() == null) {
                        Slog.w(HdmiControlService.TAG, "audio system is not available");
                    } else if (!HdmiControlService.this.audioSystem().isSystemAudioActivated()) {
                        Slog.w(HdmiControlService.TAG, "audio system is not in system audio mode");
                    } else {
                        HdmiControlService.this.audioSystem().reportAudioStatus(0);
                    }
                }
            });
        }

        public void setSystemAudioModeOnForAudioOnlySource() {
            HdmiControlService.this.enforceAccessPermission();
            HdmiControlService.this.runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.BinderService.22
                @Override // java.lang.Runnable
                public void run() {
                    if (!HdmiControlService.this.isAudioSystemDevice()) {
                        Slog.e(HdmiControlService.TAG, "Not an audio system device. Won't set system audio mode on");
                        return;
                    }
                    if (HdmiControlService.this.audioSystem() == null) {
                        Slog.e(HdmiControlService.TAG, "Audio System local device is not registered");
                    } else if (!HdmiControlService.this.audioSystem().checkSupportAndSetSystemAudioMode(true)) {
                        Slog.e(HdmiControlService.TAG, "System Audio Mode is not supported.");
                    } else {
                        HdmiControlService.this.sendCecCommand(HdmiCecMessageBuilder.buildSetSystemAudioMode(HdmiControlService.this.audioSystem().mAddress, 15, true));
                    }
                }
            });
        }

        protected void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
            if (DumpUtils.checkDumpPermission(HdmiControlService.this.getContext(), HdmiControlService.TAG, writer)) {
                IndentingPrintWriter pw = new IndentingPrintWriter(writer, "  ");
                pw.println("mProhibitMode: " + HdmiControlService.this.mProhibitMode);
                pw.println("mPowerStatus: " + HdmiControlService.this.mPowerStatus);
                pw.println("System_settings:");
                pw.increaseIndent();
                pw.println("mHdmiControlEnabled: " + HdmiControlService.this.mHdmiControlEnabled);
                pw.println("mMhlInputChangeEnabled: " + HdmiControlService.this.mMhlInputChangeEnabled);
                pw.println("mSystemAudioActivated: " + HdmiControlService.this.isSystemAudioActivated());
                pw.println("mHdmiCecVolumeControlEnabled " + HdmiControlService.this.mHdmiCecVolumeControlEnabled);
                pw.decreaseIndent();
                pw.println("mMhlController: ");
                pw.increaseIndent();
                HdmiControlService.this.mMhlController.dump(pw);
                pw.decreaseIndent();
                HdmiUtils.dumpIterable(pw, "mPortInfo:", HdmiControlService.this.mPortInfo);
                if (HdmiControlService.this.mCecController != null) {
                    pw.println("mCecController: ");
                    pw.increaseIndent();
                    HdmiControlService.this.mCecController.dump(pw);
                    pw.decreaseIndent();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRemoteControlSourceAddress() {
        if (isAudioSystemDevice()) {
            return audioSystem().getDeviceInfo().getLogicalAddress();
        }
        if (isPlaybackDevice()) {
            return playback().getDeviceInfo().getLogicalAddress();
        }
        return 15;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HdmiCecLocalDeviceSource getSwitchDevice() {
        if (isAudioSystemDevice()) {
            return audioSystem();
        }
        if (isPlaybackDevice()) {
            return playback();
        }
        return null;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected void oneTouchPlay(IHdmiControlCallback callback) {
        assertRunOnServiceThread();
        if (!this.mAddressAllocated) {
            this.mOtpCallbackPendingAddressAllocation = callback;
            Slog.d(TAG, "Local device is under address allocation. Save OTP callback for later process.");
            return;
        }
        HdmiCecLocalDeviceSource source = playback();
        if (source == null) {
            source = audioSystem();
        }
        if (source == null) {
            Slog.w(TAG, "Local source device not available");
            invokeCallback(callback, 2);
        } else {
            source.oneTouchPlay(callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void queryDisplayStatus(IHdmiControlCallback callback) {
        assertRunOnServiceThread();
        if (!this.mAddressAllocated) {
            this.mDisplayStatusCallback = callback;
            Slog.d(TAG, "Local device is under address allocation. Queue display callback for later process.");
            return;
        }
        HdmiCecLocalDevicePlayback source = playback();
        if (source == null) {
            Slog.w(TAG, "Local playback device not available");
            invokeCallback(callback, 2);
        } else {
            source.queryDisplayStatus(callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addHdmiControlStatusChangeListener(final IHdmiControlStatusChangeListener listener) {
        final HdmiControlStatusChangeListenerRecord record = new HdmiControlStatusChangeListenerRecord(listener);
        try {
            listener.asBinder().linkToDeath(record, 0);
            synchronized (this.mLock) {
                this.mHdmiControlStatusChangeListenerRecords.add(record);
            }
            runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.2
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (HdmiControlService.this.mLock) {
                        if (HdmiControlService.this.mHdmiControlStatusChangeListenerRecords.contains(record)) {
                            synchronized (HdmiControlService.this.mLock) {
                                HdmiControlService.this.invokeHdmiControlStatusChangeListenerLocked(listener, HdmiControlService.this.mHdmiControlEnabled);
                            }
                        }
                    }
                }
            });
        } catch (RemoteException e) {
            Slog.w(TAG, "Listener already died");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeHdmiControlStatusChangeListener(IHdmiControlStatusChangeListener listener) {
        synchronized (this.mLock) {
            for (HdmiControlStatusChangeListenerRecord record : this.mHdmiControlStatusChangeListenerRecords) {
                if (record.mListener.asBinder() == listener.asBinder()) {
                    listener.asBinder().unlinkToDeath(record, 0);
                    this.mHdmiControlStatusChangeListenerRecords.remove(record);
                    break;
                }
            }
        }
    }

    void addHdmiCecVolumeControlFeatureListener(final IHdmiCecVolumeControlFeatureListener listener) {
        this.mHdmiCecVolumeControlFeatureListenerRecords.register(listener);
        runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (HdmiControlService.this.mLock) {
                    try {
                        listener.onHdmiCecVolumeControlFeature(HdmiControlService.this.mHdmiCecVolumeControlEnabled);
                    } catch (RemoteException e) {
                        Slog.e(HdmiControlService.TAG, "Failed to report HdmiControlVolumeControlStatusChange: " + HdmiControlService.this.mHdmiCecVolumeControlEnabled, e);
                    }
                }
            }
        });
    }

    void removeHdmiControlVolumeControlStatusChangeListener(IHdmiCecVolumeControlFeatureListener listener) {
        this.mHdmiCecVolumeControlFeatureListenerRecords.unregister(listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addHotplugEventListener(final IHdmiHotplugEventListener listener) {
        final HotplugEventListenerRecord record = new HotplugEventListenerRecord(listener);
        try {
            listener.asBinder().linkToDeath(record, 0);
            synchronized (this.mLock) {
                this.mHotplugEventListenerRecords.add(record);
            }
            runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.4
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (HdmiControlService.this.mLock) {
                        if (HdmiControlService.this.mHotplugEventListenerRecords.contains(record)) {
                            for (HdmiPortInfo port : HdmiControlService.this.getPortInfo()) {
                                HdmiHotplugEvent event = new HdmiHotplugEvent(port.getId(), HdmiControlService.this.mCecController.isConnected(port.getId()));
                                synchronized (HdmiControlService.this.mLock) {
                                    HdmiControlService.this.invokeHotplugEventListenerLocked(listener, event);
                                }
                            }
                        }
                    }
                }
            });
        } catch (RemoteException e) {
            Slog.w(TAG, "Listener already died");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeHotplugEventListener(IHdmiHotplugEventListener listener) {
        synchronized (this.mLock) {
            for (HotplugEventListenerRecord record : this.mHotplugEventListenerRecords) {
                if (record.mListener.asBinder() == listener.asBinder()) {
                    listener.asBinder().unlinkToDeath(record, 0);
                    this.mHotplugEventListenerRecords.remove(record);
                    break;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addDeviceEventListener(IHdmiDeviceEventListener listener) {
        DeviceEventListenerRecord record = new DeviceEventListenerRecord(listener);
        try {
            listener.asBinder().linkToDeath(record, 0);
            synchronized (this.mLock) {
                this.mDeviceEventListenerRecords.add(record);
            }
        } catch (RemoteException e) {
            Slog.w(TAG, "Listener already died");
        }
    }

    void invokeDeviceEventListeners(HdmiDeviceInfo device, int status) {
        synchronized (this.mLock) {
            for (DeviceEventListenerRecord record : this.mDeviceEventListenerRecords) {
                try {
                    record.mListener.onStatusChanged(device, status);
                } catch (RemoteException e) {
                    Slog.e(TAG, "Failed to report device event:" + e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSystemAudioModeChangeListner(IHdmiSystemAudioModeChangeListener listener) {
        SystemAudioModeChangeListenerRecord record = new SystemAudioModeChangeListenerRecord(listener);
        try {
            listener.asBinder().linkToDeath(record, 0);
            synchronized (this.mLock) {
                this.mSystemAudioModeChangeListenerRecords.add(record);
            }
        } catch (RemoteException e) {
            Slog.w(TAG, "Listener already died");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSystemAudioModeChangeListener(IHdmiSystemAudioModeChangeListener listener) {
        synchronized (this.mLock) {
            for (SystemAudioModeChangeListenerRecord record : this.mSystemAudioModeChangeListenerRecords) {
                if (record.mListener.asBinder() == listener) {
                    listener.asBinder().unlinkToDeath(record, 0);
                    this.mSystemAudioModeChangeListenerRecords.remove(record);
                    break;
                }
            }
        }
    }

    private final class InputChangeListenerRecord implements IBinder.DeathRecipient {
        private final IHdmiInputChangeListener mListener;

        public InputChangeListenerRecord(IHdmiInputChangeListener listener) {
            this.mListener = listener;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (HdmiControlService.this.mLock) {
                if (HdmiControlService.this.mInputChangeListenerRecord == this) {
                    HdmiControlService.this.mInputChangeListenerRecord = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInputChangeListener(IHdmiInputChangeListener listener) {
        synchronized (this.mLock) {
            this.mInputChangeListenerRecord = new InputChangeListenerRecord(listener);
            try {
                listener.asBinder().linkToDeath(this.mInputChangeListenerRecord, 0);
            } catch (RemoteException e) {
                Slog.w(TAG, "Listener already died");
            }
        }
    }

    void invokeInputChangeListener(HdmiDeviceInfo info) {
        synchronized (this.mLock) {
            if (this.mInputChangeListenerRecord != null) {
                try {
                    this.mInputChangeListenerRecord.mListener.onChanged(info);
                } catch (RemoteException e) {
                    Slog.w(TAG, "Exception thrown by IHdmiInputChangeListener: " + e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHdmiRecordListener(IHdmiRecordListener listener) {
        synchronized (this.mLock) {
            this.mRecordListenerRecord = new HdmiRecordListenerRecord(listener);
            try {
                listener.asBinder().linkToDeath(this.mRecordListenerRecord, 0);
            } catch (RemoteException e) {
                Slog.w(TAG, "Listener already died.", e);
            }
        }
    }

    byte[] invokeRecordRequestListener(int recorderAddress) {
        synchronized (this.mLock) {
            if (this.mRecordListenerRecord != null) {
                try {
                    return this.mRecordListenerRecord.mListener.getOneTouchRecordSource(recorderAddress);
                } catch (RemoteException e) {
                    Slog.w(TAG, "Failed to start record.", e);
                }
            }
            return EmptyArray.BYTE;
        }
    }

    void invokeOneTouchRecordResult(int recorderAddress, int result) {
        synchronized (this.mLock) {
            if (this.mRecordListenerRecord != null) {
                try {
                    this.mRecordListenerRecord.mListener.onOneTouchRecordResult(recorderAddress, result);
                } catch (RemoteException e) {
                    Slog.w(TAG, "Failed to call onOneTouchRecordResult.", e);
                }
            }
        }
    }

    void invokeTimerRecordingResult(int recorderAddress, int result) {
        synchronized (this.mLock) {
            if (this.mRecordListenerRecord != null) {
                try {
                    this.mRecordListenerRecord.mListener.onTimerRecordingResult(recorderAddress, result);
                } catch (RemoteException e) {
                    Slog.w(TAG, "Failed to call onTimerRecordingResult.", e);
                }
            }
        }
    }

    void invokeClearTimerRecordingResult(int recorderAddress, int result) {
        synchronized (this.mLock) {
            if (this.mRecordListenerRecord != null) {
                try {
                    this.mRecordListenerRecord.mListener.onClearTimerRecordingResult(recorderAddress, result);
                } catch (RemoteException e) {
                    Slog.w(TAG, "Failed to call onClearTimerRecordingResult.", e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeCallback(IHdmiControlCallback callback, int result) {
        try {
            callback.onComplete(result);
        } catch (RemoteException e) {
            Slog.e(TAG, "Invoking callback failed:" + e);
        }
    }

    private void invokeSystemAudioModeChangeLocked(IHdmiSystemAudioModeChangeListener listener, boolean enabled) {
        try {
            listener.onStatusChanged(enabled);
        } catch (RemoteException e) {
            Slog.e(TAG, "Invoking callback failed:" + e);
        }
    }

    private void announceHotplugEvent(int portId, boolean connected) {
        HdmiHotplugEvent event = new HdmiHotplugEvent(portId, connected);
        synchronized (this.mLock) {
            for (HotplugEventListenerRecord record : this.mHotplugEventListenerRecords) {
                invokeHotplugEventListenerLocked(record.mListener, event);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeHotplugEventListenerLocked(IHdmiHotplugEventListener listener, HdmiHotplugEvent event) {
        try {
            listener.onReceived(event);
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to report hotplug event:" + event.toString(), e);
        }
    }

    private void announceHdmiControlStatusChange(boolean isEnabled) {
        assertRunOnServiceThread();
        synchronized (this.mLock) {
            for (HdmiControlStatusChangeListenerRecord record : this.mHdmiControlStatusChangeListenerRecords) {
                invokeHdmiControlStatusChangeListenerLocked(record.mListener, isEnabled);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeHdmiControlStatusChangeListenerLocked(final IHdmiControlStatusChangeListener listener, final boolean isEnabled) {
        if (isEnabled) {
            queryDisplayStatus(new IHdmiControlCallback.Stub() { // from class: com.android.server.hdmi.HdmiControlService.5
                public void onComplete(int status) {
                    boolean isAvailable = true;
                    if (status == -1 || status == 5 || status == 2) {
                        isAvailable = false;
                    }
                    try {
                        listener.onStatusChange(isEnabled, isAvailable);
                    } catch (RemoteException e) {
                        Slog.e(HdmiControlService.TAG, "Failed to report HdmiControlStatusChange: " + isEnabled + " isAvailable: " + isAvailable, e);
                    }
                }
            });
            return;
        }
        try {
            listener.onStatusChange(isEnabled, false);
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to report HdmiControlStatusChange: " + isEnabled + " isAvailable: false", e);
        }
    }

    private void announceHdmiCecVolumeControlFeatureChange(final boolean isEnabled) {
        assertRunOnServiceThread();
        this.mHdmiCecVolumeControlFeatureListenerRecords.broadcast(new Consumer() { // from class: com.android.server.hdmi.-$$Lambda$HdmiControlService$gJ3W6c9ujoKExO828xtTtayt8kE
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HdmiControlService.lambda$announceHdmiCecVolumeControlFeatureChange$0(isEnabled, (IHdmiCecVolumeControlFeatureListener) obj);
            }
        });
    }

    static /* synthetic */ void lambda$announceHdmiCecVolumeControlFeatureChange$0(boolean isEnabled, IHdmiCecVolumeControlFeatureListener listener) {
        try {
            listener.onHdmiCecVolumeControlFeature(isEnabled);
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to report HdmiControlVolumeControlStatusChange: " + isEnabled);
        }
    }

    public HdmiCecLocalDeviceTv tv() {
        return (HdmiCecLocalDeviceTv) this.mCecController.getLocalDevice(0);
    }

    boolean isTvDevice() {
        return this.mLocalDevices.contains(0);
    }

    boolean isAudioSystemDevice() {
        return this.mLocalDevices.contains(5);
    }

    boolean isPlaybackDevice() {
        return this.mLocalDevices.contains(4);
    }

    boolean isSwitchDevice() {
        return SystemProperties.getBoolean("ro.hdmi.property_is_device_hdmi_cec_switch", false);
    }

    boolean isTvDeviceEnabled() {
        return isTvDevice() && tv() != null;
    }

    protected HdmiCecLocalDevicePlayback playback() {
        return (HdmiCecLocalDevicePlayback) this.mCecController.getLocalDevice(4);
    }

    public HdmiCecLocalDeviceAudioSystem audioSystem() {
        return (HdmiCecLocalDeviceAudioSystem) this.mCecController.getLocalDevice(5);
    }

    AudioManager getAudioManager() {
        return (AudioManager) getContext().getSystemService("audio");
    }

    boolean isControlEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mHdmiControlEnabled;
        }
        return z;
    }

    @HdmiAnnotations.ServiceThreadOnly
    int getPowerStatus() {
        assertRunOnServiceThread();
        return this.mPowerStatus;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void setPowerStatus(int powerStatus) {
        assertRunOnServiceThread();
        this.mPowerStatus = powerStatus;
    }

    @HdmiAnnotations.ServiceThreadOnly
    boolean isPowerOnOrTransient() {
        assertRunOnServiceThread();
        int i = this.mPowerStatus;
        return i == 0 || i == 2;
    }

    @HdmiAnnotations.ServiceThreadOnly
    boolean isPowerStandbyOrTransient() {
        assertRunOnServiceThread();
        int i = this.mPowerStatus;
        return i == 1 || i == 3;
    }

    @HdmiAnnotations.ServiceThreadOnly
    boolean isPowerStandby() {
        assertRunOnServiceThread();
        return this.mPowerStatus == 1;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void wakeUp() {
        assertRunOnServiceThread();
        this.mWakeUpMessageReceived = true;
        this.mPowerManager.wakeUp(SystemClock.uptimeMillis(), 8, "android.server.hdmi:WAKE");
    }

    @HdmiAnnotations.ServiceThreadOnly
    void standby() {
        assertRunOnServiceThread();
        if (!canGoToStandby()) {
            return;
        }
        this.mStandbyMessageReceived = true;
        this.mPowerManager.goToSleep(SystemClock.uptimeMillis(), 5, 0);
    }

    boolean isWakeUpMessageReceived() {
        return this.mWakeUpMessageReceived;
    }

    boolean isStandbyMessageReceived() {
        return this.mStandbyMessageReceived;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void onWakeUp() {
        assertRunOnServiceThread();
        this.mPowerStatus = 2;
        if (this.mCecController != null) {
            if (this.mHdmiControlEnabled) {
                int startReason = 2;
                if (this.mWakeUpMessageReceived) {
                    startReason = 3;
                }
                initializeCec(startReason);
                return;
            }
            return;
        }
        Slog.i(TAG, "Device does not support HDMI-CEC.");
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected void onStandby(final int standbyAction) {
        assertRunOnServiceThread();
        this.mPowerStatus = 3;
        invokeVendorCommandListenersOnControlStateChanged(false, 3);
        final List<HdmiCecLocalDevice> devices = getAllLocalDevices();
        if (!isStandbyMessageReceived() && !canGoToStandby()) {
            this.mPowerStatus = 1;
            for (HdmiCecLocalDevice device : devices) {
                device.onStandby(this.mStandbyMessageReceived, standbyAction);
            }
            return;
        }
        disableDevices(new HdmiCecLocalDevice.PendingActionClearedCallback() { // from class: com.android.server.hdmi.HdmiControlService.6
            @Override // com.android.server.hdmi.HdmiCecLocalDevice.PendingActionClearedCallback
            public void onCleared(HdmiCecLocalDevice device2) {
                Slog.v(HdmiControlService.TAG, "On standby-action cleared:" + device2.mDeviceType);
                devices.remove(device2);
                if (devices.isEmpty()) {
                    HdmiControlService.this.onStandbyCompleted(standbyAction);
                }
            }
        });
    }

    private boolean canGoToStandby() {
        for (HdmiCecLocalDevice device : this.mCecController.getLocalDeviceList()) {
            if (!device.canGoToStandby()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void onLanguageChanged(String language) {
        assertRunOnServiceThread();
        this.mMenuLanguage = language;
        if (isTvDeviceEnabled()) {
            tv().broadcastMenuLanguage(language);
            this.mCecController.setLanguage(language);
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    String getLanguage() {
        assertRunOnServiceThread();
        return this.mMenuLanguage;
    }

    private void disableDevices(HdmiCecLocalDevice.PendingActionClearedCallback callback) {
        HdmiCecController hdmiCecController = this.mCecController;
        if (hdmiCecController != null) {
            for (HdmiCecLocalDevice device : hdmiCecController.getLocalDeviceList()) {
                device.disableDevice(this.mStandbyMessageReceived, callback);
            }
        }
        this.mMhlController.clearAllLocalDevices();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void clearLocalDevices() {
        assertRunOnServiceThread();
        HdmiCecController hdmiCecController = this.mCecController;
        if (hdmiCecController == null) {
            return;
        }
        hdmiCecController.clearLogicalAddress();
        this.mCecController.clearLocalDevices();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void onStandbyCompleted(int standbyAction) {
        assertRunOnServiceThread();
        Slog.v(TAG, "onStandbyCompleted");
        if (this.mPowerStatus != 3) {
            return;
        }
        this.mPowerStatus = 1;
        for (HdmiCecLocalDevice device : this.mCecController.getLocalDeviceList()) {
            device.onStandby(this.mStandbyMessageReceived, standbyAction);
        }
        this.mStandbyMessageReceived = false;
        if (!isAudioSystemDevice()) {
            this.mCecController.setOption(3, false);
            this.mMhlController.setOption(HdmiCecKeycode.CEC_KEYCODE_SELECT_MEDIA_FUNCTION, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addVendorCommandListener(IHdmiVendorCommandListener listener, int deviceType) {
        VendorCommandListenerRecord record = new VendorCommandListenerRecord(listener, deviceType);
        try {
            listener.asBinder().linkToDeath(record, 0);
            synchronized (this.mLock) {
                this.mVendorCommandListenerRecords.add(record);
            }
        } catch (RemoteException e) {
            Slog.w(TAG, "Listener already died");
        }
    }

    boolean invokeVendorCommandListenersOnReceived(int deviceType, int srcAddress, int destAddress, byte[] params, boolean hasVendorId) {
        synchronized (this.mLock) {
            try {
                if (this.mVendorCommandListenerRecords.isEmpty()) {
                    return false;
                }
                for (VendorCommandListenerRecord record : this.mVendorCommandListenerRecords) {
                    if (record.mDeviceType == deviceType) {
                        try {
                            record.mListener.onReceived(srcAddress, destAddress, params, hasVendorId);
                        } catch (RemoteException e) {
                            Slog.e(TAG, "Failed to notify vendor command reception", e);
                        }
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean invokeVendorCommandListenersOnControlStateChanged(boolean enabled, int reason) {
        synchronized (this.mLock) {
            if (this.mVendorCommandListenerRecords.isEmpty()) {
                return false;
            }
            for (VendorCommandListenerRecord record : this.mVendorCommandListenerRecords) {
                try {
                    record.mListener.onControlStateChanged(enabled, reason);
                } catch (RemoteException e) {
                    Slog.e(TAG, "Failed to notify control-state-changed to vendor handler", e);
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addHdmiMhlVendorCommandListener(IHdmiMhlVendorCommandListener listener) {
        HdmiMhlVendorCommandListenerRecord record = new HdmiMhlVendorCommandListenerRecord(listener);
        try {
            listener.asBinder().linkToDeath(record, 0);
            synchronized (this.mLock) {
                this.mMhlVendorCommandListenerRecords.add(record);
            }
        } catch (RemoteException e) {
            Slog.w(TAG, "Listener already died.");
        }
    }

    void invokeMhlVendorCommandListeners(int portId, int offest, int length, byte[] data) {
        synchronized (this.mLock) {
            for (HdmiMhlVendorCommandListenerRecord record : this.mMhlVendorCommandListenerRecords) {
                try {
                    record.mListener.onReceived(portId, offest, length, data);
                } catch (RemoteException e) {
                    Slog.e(TAG, "Failed to notify MHL vendor command", e);
                }
            }
        }
    }

    void setStandbyMode(boolean isStandbyModeOn) {
        assertRunOnServiceThread();
        if (isPowerOnOrTransient() && isStandbyModeOn) {
            this.mPowerManager.goToSleep(SystemClock.uptimeMillis(), 5, 0);
            if (playback() != null) {
                playback().sendStandby(0);
                return;
            }
            return;
        }
        if (isPowerStandbyOrTransient() && !isStandbyModeOn) {
            this.mPowerManager.wakeUp(SystemClock.uptimeMillis(), 8, "android.server.hdmi:WAKE");
            if (playback() != null) {
                oneTouchPlay(new IHdmiControlCallback.Stub() { // from class: com.android.server.hdmi.HdmiControlService.7
                    public void onComplete(int result) {
                        if (result != 0) {
                            Slog.w(HdmiControlService.TAG, "Failed to complete 'one touch play'. result=" + result);
                        }
                    }
                });
            }
        }
    }

    void setHdmiCecVolumeControlEnabled(boolean isHdmiCecVolumeControlEnabled) {
        synchronized (this.mLock) {
            this.mHdmiCecVolumeControlEnabled = isHdmiCecVolumeControlEnabled;
            boolean storedValue = readBooleanSetting("hdmi_control_volume_control_enabled", true);
            if (storedValue != isHdmiCecVolumeControlEnabled) {
                HdmiLogger.debug("Changing HDMI CEC volume control feature state: %s", Boolean.valueOf(isHdmiCecVolumeControlEnabled));
                writeBooleanSetting("hdmi_control_volume_control_enabled", isHdmiCecVolumeControlEnabled);
            }
        }
        announceHdmiCecVolumeControlFeatureChange(isHdmiCecVolumeControlEnabled);
    }

    boolean isHdmiCecVolumeControlEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mHdmiCecVolumeControlEnabled;
        }
        return z;
    }

    boolean isProhibitMode() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mProhibitMode;
        }
        return z;
    }

    void setProhibitMode(boolean enabled) {
        synchronized (this.mLock) {
            this.mProhibitMode = enabled;
        }
    }

    boolean isSystemAudioActivated() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mSystemAudioActivated;
        }
        return z;
    }

    void setSystemAudioActivated(boolean on) {
        synchronized (this.mLock) {
            this.mSystemAudioActivated = on;
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    void setCecOption(int key, boolean value) {
        assertRunOnServiceThread();
        this.mCecController.setOption(key, value);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void setControlEnabled(boolean enabled) {
        assertRunOnServiceThread();
        synchronized (this.mLock) {
            this.mHdmiControlEnabled = enabled;
        }
        if (enabled) {
            enableHdmiControlService();
            setHdmiCecVolumeControlEnabled(readBooleanSetting("hdmi_control_volume_control_enabled", true));
        } else {
            this.mHdmiCecVolumeControlEnabled = false;
            invokeVendorCommandListenersOnControlStateChanged(false, 1);
            runOnServiceThread(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.8
                @Override // java.lang.Runnable
                public void run() {
                    HdmiControlService.this.disableHdmiControlService();
                }
            });
            announceHdmiControlStatusChange(enabled);
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    private void enableHdmiControlService() {
        this.mCecController.setOption(2, true);
        this.mCecController.setOption(3, true);
        this.mMhlController.setOption(103, 1);
        initializeCec(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void disableHdmiControlService() {
        disableDevices(new HdmiCecLocalDevice.PendingActionClearedCallback() { // from class: com.android.server.hdmi.HdmiControlService.9
            @Override // com.android.server.hdmi.HdmiCecLocalDevice.PendingActionClearedCallback
            public void onCleared(HdmiCecLocalDevice device) {
                HdmiControlService.this.assertRunOnServiceThread();
                HdmiControlService.this.mCecController.flush(new Runnable() { // from class: com.android.server.hdmi.HdmiControlService.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        HdmiControlService.this.mCecController.setOption(2, false);
                        HdmiControlService.this.mCecController.setOption(3, false);
                        HdmiControlService.this.mMhlController.setOption(103, 0);
                        HdmiControlService.this.clearLocalDevices();
                    }
                });
            }
        });
    }

    @HdmiAnnotations.ServiceThreadOnly
    void setActivePortId(int portId) {
        assertRunOnServiceThread();
        this.mActivePortId = portId;
        setLastInputForMhl(-1);
    }

    HdmiCecLocalDevice.ActiveSource getLocalActiveSource() {
        HdmiCecLocalDevice.ActiveSource activeSource;
        synchronized (this.mLock) {
            activeSource = this.mActiveSource;
        }
        return activeSource;
    }

    void setActiveSource(int logicalAddress, int physicalAddress) {
        synchronized (this.mLock) {
            this.mActiveSource.logicalAddress = logicalAddress;
            this.mActiveSource.physicalAddress = physicalAddress;
        }
        for (HdmiCecLocalDevice device : getAllLocalDevices()) {
            if (device instanceof HdmiCecLocalDeviceSource) {
                if (logicalAddress == device.getDeviceInfo().getLogicalAddress() && physicalAddress == getPhysicalAddress()) {
                    ((HdmiCecLocalDeviceSource) device).setIsActiveSource(true);
                } else {
                    ((HdmiCecLocalDeviceSource) device).setIsActiveSource(false);
                }
            }
        }
    }

    protected void setAndBroadcastActiveSource(int physicalAddress, int deviceType, int source) {
        if (deviceType == 4) {
            HdmiCecLocalDevicePlayback playback = playback();
            playback.setIsActiveSource(true);
            playback.wakeUpIfActiveSource();
            playback.maySendActiveSource(source);
            setActiveSource(playback.mAddress, physicalAddress);
        }
        if (deviceType == 5) {
            HdmiCecLocalDeviceAudioSystem audioSystem = audioSystem();
            if (playback() != null) {
                audioSystem.setIsActiveSource(false);
                return;
            }
            audioSystem.setIsActiveSource(true);
            audioSystem.wakeUpIfActiveSource();
            audioSystem.maySendActiveSource(source);
            setActiveSource(audioSystem.mAddress, physicalAddress);
        }
    }

    protected void setAndBroadcastActiveSourceFromOneDeviceType(int sourceAddress, int physicalAddress) {
        HdmiCecLocalDevicePlayback playback = playback();
        HdmiCecLocalDeviceAudioSystem audioSystem = audioSystem();
        if (playback != null) {
            playback.setIsActiveSource(true);
            playback.wakeUpIfActiveSource();
            playback.maySendActiveSource(sourceAddress);
            if (audioSystem != null) {
                audioSystem.setIsActiveSource(false);
            }
            setActiveSource(playback.mAddress, physicalAddress);
            return;
        }
        if (audioSystem != null) {
            audioSystem.setIsActiveSource(true);
            audioSystem.wakeUpIfActiveSource();
            audioSystem.maySendActiveSource(sourceAddress);
            setActiveSource(audioSystem.mAddress, physicalAddress);
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    void setLastInputForMhl(int portId) {
        assertRunOnServiceThread();
        this.mLastInputMhl = portId;
    }

    @HdmiAnnotations.ServiceThreadOnly
    int getLastInputForMhl() {
        assertRunOnServiceThread();
        return this.mLastInputMhl;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void changeInputForMhl(int portId, boolean contentOn) {
        assertRunOnServiceThread();
        if (tv() == null) {
            return;
        }
        final int lastInput = contentOn ? tv().getActivePortId() : -1;
        if (portId != -1) {
            tv().doManualPortSwitching(portId, new IHdmiControlCallback.Stub() { // from class: com.android.server.hdmi.HdmiControlService.10
                public void onComplete(int result) throws RemoteException {
                    HdmiControlService.this.setLastInputForMhl(lastInput);
                }
            });
        }
        tv().setActivePortId(portId);
        HdmiMhlLocalDeviceStub device = this.mMhlController.getLocalDevice(portId);
        HdmiDeviceInfo info = device != null ? device.getInfo() : this.mPortDeviceMap.get(portId, HdmiDeviceInfo.INACTIVE_DEVICE);
        invokeInputChangeListener(info);
    }

    void setMhlInputChangeEnabled(boolean enabled) {
        this.mMhlController.setOption(101, toInt(enabled));
        synchronized (this.mLock) {
            this.mMhlInputChangeEnabled = enabled;
        }
    }

    boolean isMhlInputChangeEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mMhlInputChangeEnabled;
        }
        return z;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void displayOsd(int messageId) {
        assertRunOnServiceThread();
        Intent intent = new Intent("android.hardware.hdmi.action.OSD_MESSAGE");
        intent.putExtra("android.hardware.hdmi.extra.MESSAGE_ID", messageId);
        getContext().sendBroadcastAsUser(intent, UserHandle.ALL, PERMISSION);
    }

    @HdmiAnnotations.ServiceThreadOnly
    void displayOsd(int messageId, int extra) {
        assertRunOnServiceThread();
        Intent intent = new Intent("android.hardware.hdmi.action.OSD_MESSAGE");
        intent.putExtra("android.hardware.hdmi.extra.MESSAGE_ID", messageId);
        intent.putExtra("android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1", extra);
        getContext().sendBroadcastAsUser(intent, UserHandle.ALL, PERMISSION);
    }
}
