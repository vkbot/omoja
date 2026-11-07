package com.android.server.audio;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothHearingAid;
import android.bluetooth.BluetoothProfile;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioDeviceAttributes;
import android.media.AudioRoutesInfo;
import android.media.AudioSystem;
import android.media.IAudioRoutesObserver;
import android.media.IStrategyPreferredDeviceDispatcher;
import android.media.MediaMetrics;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import android.util.PrintWriterPrinter;
import com.android.server.slice.SliceClientPermissions;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
final class AudioDeviceBroker {
    private static final long BROKER_WAKELOCK_TIMEOUT_MS = 5000;
    static final int BTA2DP_DOCK_TIMEOUT_MS = 8000;
    private static final int BTA2DP_MUTE_CHECK_DELAY_MS = 100;
    static final int BT_HEADSET_CNCT_TIMEOUT_MS = 3000;
    private static final Set<Integer> MESSAGES_MUTE_MUSIC;
    private static final int MSG_BROADCAST_AUDIO_BECOMING_NOISY = 12;
    private static final int MSG_BT_HEADSET_CNCT_FAILED = 9;
    private static final int MSG_CHECK_MUTE_MUSIC = 36;
    private static final int MSG_DISCONNECT_A2DP = 19;
    private static final int MSG_DISCONNECT_A2DP_SINK = 20;
    private static final int MSG_DISCONNECT_BT_HEADSET = 22;
    private static final int MSG_DISCONNECT_BT_HEARING_AID = 21;
    private static final int MSG_IIL_SET_FORCE_BT_A2DP_USE = 5;
    private static final int MSG_IIL_SET_FORCE_USE = 4;
    private static final int MSG_II_SET_HEARING_AID_VOLUME = 14;
    private static final int MSG_IL_BTA2DP_TIMEOUT = 10;
    private static final int MSG_IL_SAVE_PREF_DEVICE_FOR_STRATEGY = 33;
    private static final int MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_CONNECTED = 27;
    private static final int MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED = 28;
    private static final int MSG_IL_SET_A2DP_SOURCE_CONNECTION_STATE = 7;
    private static final int MSG_IL_SET_HEARING_AID_CONNECTION_STATE = 8;
    private static final int MSG_I_BROADCAST_BT_CONNECTION_STATE = 3;
    private static final int MSG_I_SAVE_REMOVE_PREF_DEVICE_FOR_STRATEGY = 34;
    private static final int MSG_I_SET_AVRCP_ABSOLUTE_VOLUME = 15;
    private static final int MSG_I_SET_MODE_OWNER_PID = 16;
    private static final int MSG_L_A2DP_ACTIVE_DEVICE_CHANGE = 18;
    private static final int MSG_L_A2DP_DEVICE_CONFIG_CHANGE = 11;
    private static final int MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT_CONNECTION = 29;
    private static final int MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT_DISCONNECTION = 30;
    private static final int MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP = 23;
    private static final int MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP_SINK = 24;
    private static final int MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEADSET = 26;
    private static final int MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEARING_AID = 25;
    private static final int MSG_L_HEARING_AID_DEVICE_CONNECTION_CHANGE_EXT = 31;
    private static final int MSG_L_SCOCLIENT_DIED = 32;
    private static final int MSG_L_SET_WIRED_DEVICE_CONNECTION_STATE = 2;
    private static final int MSG_L_SPEAKERPHONE_CLIENT_DIED = 35;
    private static final int MSG_REPORT_NEW_ROUTES = 13;
    private static final int MSG_REPORT_NEW_ROUTES_A2DP = 37;
    private static final int MSG_RESTORE_DEVICES = 1;
    private static final int MSG_TOGGLE_HDMI = 6;
    private static final int SENDMSG_NOOP = 1;
    private static final int SENDMSG_QUEUE = 2;
    private static final int SENDMSG_REPLACE = 0;
    private static final String TAG = "AS.AudioDeviceBroker";
    private final AudioService mAudioService;
    private boolean mBluetoothA2dpEnabled;
    private boolean mBluetoothA2dpUsingZone;
    private PowerManager.WakeLock mBrokerEventWakeLock;
    private BrokerHandler mBrokerHandler;
    private BrokerThread mBrokerThread;
    private final BtHelper mBtHelper;
    private final Context mContext;
    private final AudioDeviceInventory mDeviceInventory;
    private final Object mDeviceStateLock;
    private int mForcedUseForComm;
    private int mForcedUseForCommExt;
    private int mModeOwnerPid;
    private AtomicBoolean mMusicMuted;
    final Object mSetModeLock;
    private final ArrayList<SpeakerphoneClient> mSpeakerphoneClients;
    private final SystemServerAdapter mSystemServer;
    private static final Object sLastDeviceConnectionMsgTimeLock = new Object();
    private static long sLastDeviceConnectMsgTime = 0;

    static {
        HashSet hashSet = new HashSet();
        MESSAGES_MUTE_MUSIC = hashSet;
        hashSet.add(27);
        MESSAGES_MUTE_MUSIC.add(Integer.valueOf(MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED));
        MESSAGES_MUTE_MUSIC.add(11);
        MESSAGES_MUTE_MUSIC.add(18);
        MESSAGES_MUTE_MUSIC.add(29);
        MESSAGES_MUTE_MUSIC.add(30);
        MESSAGES_MUTE_MUSIC.add(5);
        MESSAGES_MUTE_MUSIC.add(37);
    }

    AudioDeviceBroker(Context context, AudioService service) {
        this.mDeviceStateLock = new Object();
        this.mSetModeLock = new Object();
        this.mModeOwnerPid = 0;
        this.mBluetoothA2dpUsingZone = false;
        this.mMusicMuted = new AtomicBoolean(false);
        this.mSpeakerphoneClients = new ArrayList<>();
        this.mContext = context;
        this.mAudioService = service;
        this.mBtHelper = new BtHelper(this);
        this.mDeviceInventory = new AudioDeviceInventory(this);
        this.mSystemServer = SystemServerAdapter.getDefaultAdapter(this.mContext);
        init();
    }

    AudioDeviceBroker(Context context, AudioService service, AudioDeviceInventory mockDeviceInventory, SystemServerAdapter mockSystemServer) {
        this.mDeviceStateLock = new Object();
        this.mSetModeLock = new Object();
        this.mModeOwnerPid = 0;
        this.mBluetoothA2dpUsingZone = false;
        this.mMusicMuted = new AtomicBoolean(false);
        this.mSpeakerphoneClients = new ArrayList<>();
        this.mContext = context;
        this.mAudioService = service;
        this.mBtHelper = new BtHelper(this);
        this.mDeviceInventory = mockDeviceInventory;
        this.mSystemServer = mockSystemServer;
        init();
    }

    private void checkBluetoothA2dpUsingZone() {
        boolean a2dpzone = SystemProperties.getBoolean("ro.system.audio.bluetoothA2dpUsingZone", false);
        this.mBluetoothA2dpUsingZone = a2dpzone;
    }

    private void init() {
        setupMessaging(this.mContext);
        this.mForcedUseForComm = 0;
        this.mForcedUseForCommExt = 0;
        checkBluetoothA2dpUsingZone();
    }

    Context getContext() {
        return this.mContext;
    }

    void onSystemReady() {
        synchronized (this.mSetModeLock) {
            synchronized (this.mDeviceStateLock) {
                this.mModeOwnerPid = this.mAudioService.getModeOwnerPid();
                this.mBtHelper.onSystemReady();
            }
        }
    }

    void onAudioServerDied() {
        synchronized (this.mDeviceStateLock) {
            StringBuilder sb = new StringBuilder();
            sb.append("BT_SCO=");
            sb.append(this.mForcedUseForComm == 3 ? "on" : "off");
            AudioSystem.setParameters(sb.toString());
            onSetForceUse(0, this.mForcedUseForComm, false, "onAudioServerDied");
            onSetForceUse(2, this.mForcedUseForComm, false, "onAudioServerDied");
        }
        sendMsgNoDelay(1, 0);
    }

    void setForceUse_Async(int useCase, int config, String eventSource) {
        sendIILMsgNoDelay(4, 2, useCase, config, eventSource);
    }

    void toggleHdmiIfConnected_Async() {
        sendMsgNoDelay(6, 2);
    }

    void disconnectAllBluetoothProfiles() {
        synchronized (this.mDeviceStateLock) {
            this.mBtHelper.disconnectAllBluetoothProfiles();
        }
    }

    void receiveBtEvent(Intent intent) {
        synchronized (this.mSetModeLock) {
            synchronized (this.mDeviceStateLock) {
                this.mBtHelper.receiveBtEvent(intent);
            }
        }
    }

    void setBluetoothA2dpOn_Async(boolean on, String source) {
        synchronized (this.mDeviceStateLock) {
            if (this.mBluetoothA2dpEnabled == on) {
                return;
            }
            this.mBluetoothA2dpEnabled = on;
            this.mBrokerHandler.removeMessages(5);
            sendIILMsgNoDelay(5, 2, 1, this.mBluetoothA2dpEnabled ? 0 : 10, source);
        }
    }

    boolean setSpeakerphoneOn(IBinder cb, int pid, boolean on, String eventSource) {
        synchronized (this.mDeviceStateLock) {
            if (!addSpeakerphoneClient(cb, pid, on)) {
                return false;
            }
            if (on) {
                this.mBtHelper.stopBluetoothScoForPid(pid);
            }
            boolean wasOn = isSpeakerphoneOn();
            updateSpeakerphoneOn(eventSource);
            return wasOn != isSpeakerphoneOn();
        }
    }

    private void setSpeakerphoneOffForPid(int pid) {
        SpeakerphoneClient client = getSpeakerphoneClientForPid(pid);
        if (client == null) {
            return;
        }
        client.unregisterDeathRecipient();
        this.mSpeakerphoneClients.remove(client);
        String eventSource = "setSpeakerphoneOffForPid(" + pid + ")";
        updateSpeakerphoneOn(eventSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpeakerphoneOn(String eventSource) {
        if (isSpeakerphoneOnRequested()) {
            if (this.mForcedUseForComm == 3) {
                setForceUse_Async(2, 0, eventSource);
            }
            this.mForcedUseForComm = 1;
        } else if (this.mForcedUseForComm == 1) {
            if (this.mBtHelper.isBluetoothScoOn()) {
                this.mForcedUseForComm = 3;
                setForceUse_Async(2, 3, eventSource);
            } else {
                this.mForcedUseForComm = 0;
            }
        }
        int i = this.mForcedUseForComm;
        this.mForcedUseForCommExt = i;
        setForceUse_Async(0, i, eventSource);
    }

    private boolean isSpeakerphoneOnRequested() {
        if (this.mSpeakerphoneClients.isEmpty()) {
            return false;
        }
        for (SpeakerphoneClient cl : this.mSpeakerphoneClients) {
            if (cl.getPid() == this.mModeOwnerPid) {
                return cl.isOn();
            }
        }
        return this.mSpeakerphoneClients.get(0).isOn();
    }

    boolean isSpeakerphoneOn() {
        boolean z;
        synchronized (this.mDeviceStateLock) {
            z = true;
            if (this.mForcedUseForCommExt != 1) {
                z = false;
            }
        }
        return z;
    }

    void setWiredDeviceConnectionState(int type, int state, String address, String name, String caller) {
        synchronized (this.mDeviceStateLock) {
            this.mDeviceInventory.setWiredDeviceConnectionState(type, state, address, name, caller);
        }
    }

    private static final class BtDeviceConnectionInfo {
        final BluetoothDevice mDevice;
        final int mProfile;
        final int mState;
        final boolean mSupprNoisy;
        final int mVolume;

        BtDeviceConnectionInfo(BluetoothDevice device, int state, int profile, boolean suppressNoisyIntent, int vol) {
            this.mDevice = device;
            this.mState = state;
            this.mProfile = profile;
            this.mSupprNoisy = suppressNoisyIntent;
            this.mVolume = vol;
        }

        public boolean equals(Object o) {
            if (o == null) {
                return false;
            }
            if (this == o) {
                return true;
            }
            if (!(o instanceof BtDeviceConnectionInfo)) {
                return false;
            }
            return this.mDevice.equals(((BtDeviceConnectionInfo) o).mDevice);
        }

        public String toString() {
            return "BtDeviceConnectionInfo dev=" + this.mDevice.toString();
        }
    }

    void postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(BluetoothDevice device, int state, int profile, boolean suppressNoisyIntent, int a2dpVolume) {
        int i;
        BtDeviceConnectionInfo info = new BtDeviceConnectionInfo(device, state, profile, suppressNoisyIntent, a2dpVolume);
        String name = TextUtils.emptyIfNull(device.getName());
        new MediaMetrics.Item("audio.device.postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent").set(MediaMetrics.Property.STATE, state == 2 ? "connected" : "disconnected").set(MediaMetrics.Property.INDEX, Integer.valueOf(a2dpVolume)).set(MediaMetrics.Property.NAME, name).record();
        synchronized (this.mDeviceStateLock) {
            removeScheduledA2dpEvents(device);
            if (state == 2) {
                i = 29;
            } else {
                i = 30;
            }
            sendLMsgNoDelay(i, 2, info);
        }
    }

    private void removeScheduledA2dpEvents(BluetoothDevice device) {
        this.mBrokerHandler.removeEqualMessages(11, device);
        BtDeviceConnectionInfo connectionInfoToRemove = new BtDeviceConnectionInfo(device, 2, 0, false, -1);
        this.mBrokerHandler.removeEqualMessages(30, connectionInfoToRemove);
        this.mBrokerHandler.removeEqualMessages(29, connectionInfoToRemove);
        BtHelper.BluetoothA2dpDeviceInfo devInfoToRemove = new BtHelper.BluetoothA2dpDeviceInfo(device);
        this.mBrokerHandler.removeEqualMessages(27, devInfoToRemove);
        this.mBrokerHandler.removeEqualMessages(MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED, devInfoToRemove);
        this.mBrokerHandler.removeEqualMessages(18, devInfoToRemove);
    }

    private static final class HearingAidDeviceConnectionInfo {
        final BluetoothDevice mDevice;
        final String mEventSource;
        final int mMusicDevice;
        final int mState;
        final boolean mSupprNoisy;

        HearingAidDeviceConnectionInfo(BluetoothDevice device, int state, boolean suppressNoisyIntent, int musicDevice, String eventSource) {
            this.mDevice = device;
            this.mState = state;
            this.mSupprNoisy = suppressNoisyIntent;
            this.mMusicDevice = musicDevice;
            this.mEventSource = eventSource;
        }
    }

    void postBluetoothHearingAidDeviceConnectionState(BluetoothDevice device, int state, boolean suppressNoisyIntent, int musicDevice, String eventSource) {
        HearingAidDeviceConnectionInfo info = new HearingAidDeviceConnectionInfo(device, state, suppressNoisyIntent, musicDevice, eventSource);
        sendLMsgNoDelay(31, 2, info);
    }

    void setBluetoothScoOnByApp(boolean on) {
        synchronized (this.mDeviceStateLock) {
            this.mForcedUseForCommExt = on ? 3 : 0;
        }
    }

    boolean isBluetoothScoOnForApp() {
        boolean z;
        synchronized (this.mDeviceStateLock) {
            z = this.mForcedUseForCommExt == 3;
        }
        return z;
    }

    void setBluetoothScoOn(boolean on, String eventSource) {
        synchronized (this.mDeviceStateLock) {
            try {
                if (!on) {
                    if (this.mForcedUseForComm == 3) {
                        this.mForcedUseForComm = isSpeakerphoneOnRequested() ? 1 : 0;
                    }
                } else {
                    if (!this.mBtHelper.isBluetoothScoOn()) {
                        this.mForcedUseForCommExt = 3;
                        return;
                    }
                    this.mForcedUseForComm = 3;
                }
                this.mForcedUseForCommExt = this.mForcedUseForComm;
                StringBuilder sb = new StringBuilder();
                sb.append("BT_SCO=");
                sb.append(on ? "on" : "off");
                AudioSystem.setParameters(sb.toString());
                sendIILMsgNoDelay(4, 2, 0, this.mForcedUseForComm, eventSource);
                sendIILMsgNoDelay(4, 2, 2, this.mForcedUseForComm, eventSource);
                this.mAudioService.postUpdateRingerModeServiceInt();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    AudioRoutesInfo startWatchingRoutes(IAudioRoutesObserver observer) {
        AudioRoutesInfo audioRoutesInfoStartWatchingRoutes;
        synchronized (this.mDeviceStateLock) {
            audioRoutesInfoStartWatchingRoutes = this.mDeviceInventory.startWatchingRoutes(observer);
        }
        return audioRoutesInfoStartWatchingRoutes;
    }

    AudioRoutesInfo getCurAudioRoutes() {
        AudioRoutesInfo curAudioRoutes;
        synchronized (this.mDeviceStateLock) {
            curAudioRoutes = this.mDeviceInventory.getCurAudioRoutes();
        }
        return curAudioRoutes;
    }

    boolean isAvrcpAbsoluteVolumeSupported() {
        boolean zIsAvrcpAbsoluteVolumeSupported;
        synchronized (this.mDeviceStateLock) {
            zIsAvrcpAbsoluteVolumeSupported = this.mBtHelper.isAvrcpAbsoluteVolumeSupported();
        }
        return zIsAvrcpAbsoluteVolumeSupported;
    }

    boolean isBluetoothA2dpOn() {
        boolean z;
        synchronized (this.mDeviceStateLock) {
            z = this.mBluetoothA2dpEnabled;
        }
        return z;
    }

    void postSetAvrcpAbsoluteVolumeIndex(int index) {
        sendIMsgNoDelay(15, 0, index);
    }

    void postSetHearingAidVolumeIndex(int index, int streamType) {
        sendIIMsgNoDelay(14, 0, index, streamType);
    }

    void postSetModeOwnerPid(int pid, int mode) {
        sendIIMsgNoDelay(16, 0, pid, mode);
    }

    void postBluetoothA2dpDeviceConfigChange(BluetoothDevice device) {
        sendLMsgNoDelay(11, 2, device);
    }

    void startBluetoothScoForClient_Sync(IBinder cb, int scoAudioMode, String eventSource) {
        synchronized (this.mDeviceStateLock) {
            setSpeakerphoneOffForPid(Binder.getCallingPid());
            this.mBtHelper.startBluetoothScoForClient(cb, scoAudioMode, eventSource);
        }
    }

    void stopBluetoothScoForClient_Sync(IBinder cb, String eventSource) {
        synchronized (this.mDeviceStateLock) {
            this.mBtHelper.stopBluetoothScoForClient(cb, eventSource);
        }
    }

    int setPreferredDeviceForStrategySync(int strategy, AudioDeviceAttributes device) {
        return this.mDeviceInventory.setPreferredDeviceForStrategySync(strategy, device);
    }

    int removePreferredDeviceForStrategySync(int strategy) {
        return this.mDeviceInventory.removePreferredDeviceForStrategySync(strategy);
    }

    void registerStrategyPreferredDeviceDispatcher(IStrategyPreferredDeviceDispatcher dispatcher) {
        this.mDeviceInventory.registerStrategyPreferredDeviceDispatcher(dispatcher);
    }

    void unregisterStrategyPreferredDeviceDispatcher(IStrategyPreferredDeviceDispatcher dispatcher) {
        this.mDeviceInventory.unregisterStrategyPreferredDeviceDispatcher(dispatcher);
    }

    void postAccessoryPlugMediaUnmute(int device) {
        this.mAudioService.postAccessoryPlugMediaUnmute(device);
    }

    int getVssVolumeForDevice(int streamType, int device) {
        return this.mAudioService.getVssVolumeForDevice(streamType, device);
    }

    int getModeOwnerPid() {
        return this.mModeOwnerPid;
    }

    int getDeviceForStream(int streamType) {
        return this.mAudioService.getDeviceForStream(streamType);
    }

    void postApplyVolumeOnDevice(int streamType, int device, String caller) {
        this.mAudioService.postApplyVolumeOnDevice(streamType, device, caller);
    }

    void postSetVolumeIndexOnDevice(int streamType, int vssVolIndex, int device, String caller) {
        this.mAudioService.postSetVolumeIndexOnDevice(streamType, vssVolIndex, device, caller);
    }

    void postObserveDevicesForAllStreams() {
        this.mAudioService.postObserveDevicesForAllStreams();
    }

    boolean isInCommunication() {
        return this.mAudioService.isInCommunication();
    }

    boolean hasMediaDynamicPolicy() {
        return this.mAudioService.hasMediaDynamicPolicy();
    }

    ContentResolver getContentResolver() {
        return this.mAudioService.getContentResolver();
    }

    void checkMusicActive(int deviceType, String caller) {
        this.mAudioService.checkMusicActive(deviceType, caller);
    }

    void checkVolumeCecOnHdmiConnection(int state, String caller) {
        this.mAudioService.postCheckVolumeCecOnHdmiConnection(state, caller);
    }

    boolean hasAudioFocusUsers() {
        return this.mAudioService.hasAudioFocusUsers();
    }

    void postBroadcastScoConnectionState(int state) {
        sendIMsgNoDelay(3, 2, state);
    }

    void postBroadcastBecomingNoisy() {
        sendMsgNoDelay(12, 0);
    }

    void postA2dpSinkConnection(int state, BtHelper.BluetoothA2dpDeviceInfo btDeviceInfo, int delay) {
        int i;
        if (state == 2) {
            i = 27;
        } else {
            i = MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED;
        }
        sendILMsg(i, 2, state, btDeviceInfo, delay);
    }

    void postA2dpSourceConnection(int state, BtHelper.BluetoothA2dpDeviceInfo btDeviceInfo, int delay) {
        sendILMsg(7, 2, state, btDeviceInfo, delay);
    }

    void postSetWiredDeviceConnectionState(AudioDeviceInventory.WiredDeviceConnectionState connectionState, int delay) {
        sendLMsg(2, 2, connectionState, delay);
    }

    void postSetHearingAidConnectionState(int state, BluetoothDevice device, int delay) {
        sendILMsg(8, 2, state, device, delay);
    }

    void postDisconnectA2dp() {
        sendMsgNoDelay(19, 2);
    }

    void postDisconnectA2dpSink() {
        sendMsgNoDelay(20, 2);
    }

    void postDisconnectHearingAid() {
        sendMsgNoDelay(21, 2);
    }

    void postDisconnectHeadset() {
        sendMsgNoDelay(22, 2);
    }

    void postBtA2dpProfileConnected(BluetoothA2dp a2dpProfile) {
        sendLMsgNoDelay(23, 2, a2dpProfile);
    }

    void postBtA2dpSinkProfileConnected(BluetoothProfile profile) {
        sendLMsgNoDelay(24, 2, profile);
    }

    void postBtHeasetProfileConnected(BluetoothHeadset headsetProfile) {
        sendLMsgNoDelay(26, 2, headsetProfile);
    }

    void postBtHearingAidProfileConnected(BluetoothHearingAid hearingAidProfile) {
        sendLMsgNoDelay(25, 2, hearingAidProfile);
    }

    void postScoClientDied(Object obj) {
        sendLMsgNoDelay(32, 2, obj);
    }

    void postSpeakerphoneClientDied(Object obj) {
        sendLMsgNoDelay(35, 2, obj);
    }

    void postSaveSetPreferredDeviceForStrategy(int strategy, AudioDeviceAttributes device) {
        sendILMsgNoDelay(33, 2, strategy, device);
    }

    void postSaveRemovePreferredDeviceForStrategy(int strategy) {
        sendIMsgNoDelay(34, 2, strategy);
    }

    void setBluetoothA2dpOnInt(boolean on, boolean fromA2dp, String source) {
        String eventSource = "setBluetoothA2dpOn(" + on + ") from u/pid:" + Binder.getCallingUid() + SliceClientPermissions.SliceAuthority.DELIMITER + Binder.getCallingPid() + " src:" + source;
        synchronized (this.mDeviceStateLock) {
            this.mBluetoothA2dpEnabled = on;
            this.mBrokerHandler.removeMessages(5);
            onSetForceUse(1, this.mBluetoothA2dpEnabled ? 0 : 10, fromA2dp, eventSource);
        }
    }

    boolean handleDeviceConnection(boolean connect, int device, String address, String deviceName) {
        boolean zHandleDeviceConnection;
        synchronized (this.mDeviceStateLock) {
            zHandleDeviceConnection = this.mDeviceInventory.handleDeviceConnection(connect, device, address, deviceName);
        }
        return zHandleDeviceConnection;
    }

    void postSetA2dpSourceConnectionState(int state, BtHelper.BluetoothA2dpDeviceInfo btDeviceInfo) {
        if (state == 2) {
        }
        sendILMsgNoDelay(7, 2, state, btDeviceInfo);
    }

    void handleFailureToConnectToBtHeadsetService(int delay) {
        sendMsg(9, 0, delay);
    }

    void handleCancelFailureToConnectToBtHeadsetService() {
        this.mBrokerHandler.removeMessages(9);
    }

    void postReportNewRoutes(boolean fromA2dp) {
        sendMsgNoDelay(fromA2dp ? 37 : 13, 1);
    }

    void postA2dpActiveDeviceChange(BtHelper.BluetoothA2dpDeviceInfo btDeviceInfo) {
        sendLMsgNoDelay(18, 2, btDeviceInfo);
    }

    boolean hasScheduledA2dpSinkConnectionState(BluetoothDevice btDevice) {
        BtHelper.BluetoothA2dpDeviceInfo devInfoToCheck = new BtHelper.BluetoothA2dpDeviceInfo(btDevice);
        return this.mBrokerHandler.hasEqualMessages(27, devInfoToCheck) || this.mBrokerHandler.hasEqualMessages(MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED, devInfoToCheck);
    }

    void setA2dpTimeout(String address, int a2dpCodec, int delayMs) {
        sendILMsg(10, 2, a2dpCodec, address, delayMs);
    }

    void setAvrcpAbsoluteVolumeSupported(boolean supported) {
        synchronized (this.mDeviceStateLock) {
            this.mBtHelper.setAvrcpAbsoluteVolumeSupported(supported);
        }
    }

    boolean getBluetoothA2dpEnabled() {
        boolean z;
        synchronized (this.mDeviceStateLock) {
            z = this.mBluetoothA2dpEnabled;
        }
        return z;
    }

    int getA2dpCodec(BluetoothDevice device) {
        int a2dpCodec;
        synchronized (this.mDeviceStateLock) {
            a2dpCodec = this.mBtHelper.getA2dpCodec(device);
        }
        return a2dpCodec;
    }

    void dump(final PrintWriter pw, final String prefix) {
        if (this.mBrokerHandler != null) {
            pw.println(prefix + "Message handler (watch for unhandled messages):");
            this.mBrokerHandler.dump(new PrintWriterPrinter(pw), prefix + "  ");
        } else {
            pw.println("Message handler is null");
        }
        this.mDeviceInventory.dump(pw, prefix);
        pw.println("\n" + prefix + "mForcedUseForComm: " + AudioSystem.forceUseConfigToString(this.mForcedUseForComm));
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        sb.append("mForcedUseForCommExt: ");
        sb.append(AudioSystem.forceUseConfigToString(this.mForcedUseForCommExt));
        pw.println(sb.toString());
        pw.println(prefix + "mModeOwnerPid: " + this.mModeOwnerPid);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        sb2.append("Speakerphone clients:");
        pw.println(sb2.toString());
        this.mSpeakerphoneClients.forEach(new Consumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceBroker$_5btcnib9oYo5NJB53NumoDVd6c
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AudioDeviceBroker.SpeakerphoneClient speakerphoneClient = (AudioDeviceBroker.SpeakerphoneClient) obj;
                pw.println("  " + prefix + "pid: " + speakerphoneClient.getPid() + " on: " + speakerphoneClient.isOn() + " cb: " + speakerphoneClient.getBinder());
            }
        });
        this.mBtHelper.dump(pw, prefix);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetForceUse(int useCase, int config, boolean fromA2dp, String eventSource) {
        if (useCase == 1) {
            postReportNewRoutes(fromA2dp);
        }
        AudioService.sForceUseLogger.log(new AudioServiceEvents.ForceUseEvent(useCase, config, eventSource));
        new MediaMetrics.Item("audio.forceUse." + AudioSystem.forceUseUsageToString(useCase)).set(MediaMetrics.Property.EVENT, "onSetForceUse").set(MediaMetrics.Property.FORCE_USE_DUE_TO, eventSource).set(MediaMetrics.Property.FORCE_USE_MODE, AudioSystem.forceUseConfigToString(config)).record();
        AudioSystem.setForceUse(useCase, config);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSendBecomingNoisyIntent() {
        AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("broadcast ACTION_AUDIO_BECOMING_NOISY").printLog(TAG));
        this.mSystemServer.sendDeviceBecomingNoisyIntent();
    }

    private void setupMessaging(Context ctxt) {
        PowerManager pm = (PowerManager) ctxt.getSystemService("power");
        this.mBrokerEventWakeLock = pm.newWakeLock(1, "handleAudioDeviceEvent");
        BrokerThread brokerThread = new BrokerThread();
        this.mBrokerThread = brokerThread;
        brokerThread.start();
        waitForBrokerHandlerCreation();
    }

    private void waitForBrokerHandlerCreation() {
        synchronized (this) {
            while (this.mBrokerHandler == null) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Log.e(TAG, "Interruption while waiting on BrokerHandler");
                }
            }
        }
    }

    private class BrokerThread extends Thread {
        BrokerThread() {
            super("AudioDeviceBroker");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            synchronized (AudioDeviceBroker.this) {
                AudioDeviceBroker.this.mBrokerHandler = new BrokerHandler();
                AudioDeviceBroker.this.notify();
            }
            Looper.loop();
        }
    }

    private class BrokerHandler extends Handler {
        private BrokerHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.onRestoreDevices();
                        AudioDeviceBroker.this.mBtHelper.onAudioServerDiedRestoreA2dp();
                        break;
                    }
                    break;
                case 2:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.onSetWiredDeviceConnectionState((AudioDeviceInventory.WiredDeviceConnectionState) msg.obj);
                        break;
                    }
                    break;
                case 3:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mBtHelper.onBroadcastScoConnectionState(msg.arg1);
                        break;
                    }
                    break;
                case 4:
                case 5:
                    AudioDeviceBroker.this.onSetForceUse(msg.arg1, msg.arg2, msg.what == 5, (String) msg.obj);
                    break;
                case 6:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.onToggleHdmi();
                        break;
                    }
                    break;
                case 7:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.onSetA2dpSourceConnectionState((BtHelper.BluetoothA2dpDeviceInfo) msg.obj, msg.arg1);
                        break;
                    }
                    break;
                case 8:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.onSetHearingAidConnectionState((BluetoothDevice) msg.obj, msg.arg1, AudioDeviceBroker.this.mAudioService.getHearingAidStreamType());
                        break;
                    }
                    break;
                case 9:
                    synchronized (AudioDeviceBroker.this.mSetModeLock) {
                        synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                            AudioDeviceBroker.this.mBtHelper.resetBluetoothSco();
                            break;
                        }
                        break;
                    }
                    break;
                case 10:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.onMakeA2dpDeviceUnavailableNow((String) msg.obj, msg.arg1);
                        break;
                    }
                    break;
                case 11:
                    BluetoothDevice btDevice = (BluetoothDevice) msg.obj;
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        int a2dpCodec = AudioDeviceBroker.this.mBtHelper.getA2dpCodec(btDevice);
                        AudioDeviceBroker.this.mDeviceInventory.onBluetoothA2dpActiveDeviceChange(new BtHelper.BluetoothA2dpDeviceInfo(btDevice, -1, a2dpCodec), 0);
                        break;
                    }
                    break;
                case 12:
                    AudioDeviceBroker.this.onSendBecomingNoisyIntent();
                    break;
                case 13:
                case 37:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.onReportNewRoutes();
                        break;
                    }
                    break;
                case 14:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mBtHelper.setHearingAidVolume(msg.arg1, msg.arg2);
                        break;
                    }
                    break;
                case 15:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mBtHelper.setAvrcpAbsoluteVolumeIndex(msg.arg1);
                        break;
                    }
                    break;
                case 16:
                    synchronized (AudioDeviceBroker.this.mSetModeLock) {
                        synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                            if (AudioDeviceBroker.this.mModeOwnerPid != msg.arg1) {
                                AudioDeviceBroker.this.mModeOwnerPid = msg.arg1;
                                if (msg.arg2 != 1) {
                                    AudioDeviceBroker.this.updateSpeakerphoneOn("setNewModeOwner");
                                }
                                if (AudioDeviceBroker.this.mModeOwnerPid != 0) {
                                    AudioDeviceBroker.this.mBtHelper.disconnectBluetoothSco(AudioDeviceBroker.this.mModeOwnerPid);
                                }
                            }
                            break;
                        }
                        break;
                    }
                    break;
                case 17:
                default:
                    Log.wtf(AudioDeviceBroker.TAG, "Invalid message " + msg.what);
                    break;
                case 18:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.onBluetoothA2dpActiveDeviceChange((BtHelper.BluetoothA2dpDeviceInfo) msg.obj, 1);
                        break;
                    }
                    break;
                case 19:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.disconnectA2dp();
                        break;
                    }
                    break;
                case 20:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.disconnectA2dpSink();
                        break;
                    }
                    break;
                case 21:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.disconnectHearingAid();
                        break;
                    }
                    break;
                case 22:
                    synchronized (AudioDeviceBroker.this.mSetModeLock) {
                        synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                            AudioDeviceBroker.this.mBtHelper.disconnectHeadset();
                            break;
                        }
                        break;
                    }
                    break;
                case 23:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mBtHelper.onA2dpProfileConnected((BluetoothA2dp) msg.obj);
                        break;
                    }
                    break;
                case 24:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mBtHelper.onA2dpSinkProfileConnected((BluetoothProfile) msg.obj);
                        break;
                    }
                    break;
                case 25:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mBtHelper.onHearingAidProfileConnected((BluetoothHearingAid) msg.obj);
                        break;
                    }
                    break;
                case 26:
                    synchronized (AudioDeviceBroker.this.mSetModeLock) {
                        synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                            AudioDeviceBroker.this.mBtHelper.onHeadsetProfileConnected((BluetoothHeadset) msg.obj);
                            break;
                        }
                        break;
                    }
                    break;
                case 27:
                case AudioDeviceBroker.MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED /* 28 */:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.onSetA2dpSinkConnectionState((BtHelper.BluetoothA2dpDeviceInfo) msg.obj, msg.arg1);
                        break;
                    }
                    break;
                case 29:
                case 30:
                    BtDeviceConnectionInfo info = (BtDeviceConnectionInfo) msg.obj;
                    AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("msg: setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent  state=" + info.mState + " addr=" + info.mDevice.getAddress() + " prof=" + info.mProfile + " supprNoisy=" + info.mSupprNoisy + " vol=" + info.mVolume).printLog(AudioDeviceBroker.TAG));
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.setBluetoothA2dpDeviceConnectionState(info.mDevice, info.mState, info.mProfile, info.mSupprNoisy, 0, info.mVolume);
                        break;
                    }
                    break;
                case 31:
                    HearingAidDeviceConnectionInfo info2 = (HearingAidDeviceConnectionInfo) msg.obj;
                    AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("msg: setHearingAidDeviceConnectionState state=" + info2.mState + " addr=" + info2.mDevice.getAddress() + " supprNoisy=" + info2.mSupprNoisy + " src=" + info2.mEventSource).printLog(AudioDeviceBroker.TAG));
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.mDeviceInventory.setBluetoothHearingAidDeviceConnectionState(info2.mDevice, info2.mState, info2.mSupprNoisy, info2.mMusicDevice);
                        break;
                    }
                    break;
                case 32:
                    synchronized (AudioDeviceBroker.this.mSetModeLock) {
                        synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                            AudioDeviceBroker.this.mBtHelper.scoClientDied(msg.obj);
                            break;
                        }
                        break;
                    }
                    break;
                case 33:
                    int strategy = msg.arg1;
                    AudioDeviceAttributes device = (AudioDeviceAttributes) msg.obj;
                    AudioDeviceBroker.this.mDeviceInventory.onSaveSetPreferredDevice(strategy, device);
                    break;
                case 34:
                    int strategy2 = msg.arg1;
                    AudioDeviceBroker.this.mDeviceInventory.onSaveRemovePreferredDevice(strategy2);
                    break;
                case 35:
                    synchronized (AudioDeviceBroker.this.mDeviceStateLock) {
                        AudioDeviceBroker.this.speakerphoneClientDied(msg.obj);
                        break;
                    }
                    break;
                case 36:
                    AudioDeviceBroker.this.checkMessagesMuteMusic(0);
                    break;
            }
            if (!AudioDeviceBroker.this.mBluetoothA2dpUsingZone && AudioDeviceBroker.MESSAGES_MUTE_MUSIC.contains(Integer.valueOf(msg.what))) {
                AudioDeviceBroker.this.sendMsg(36, 0, 100);
            }
            if (AudioDeviceBroker.isMessageHandledUnderWakelock(msg.what)) {
                try {
                    AudioDeviceBroker.this.mBrokerEventWakeLock.release();
                } catch (Exception e) {
                    Log.e(AudioDeviceBroker.TAG, "Exception releasing wakelock", e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isMessageHandledUnderWakelock(int msgId) {
        if (msgId == 2 || msgId == 18 || msgId == 36 || msgId == 6 || msgId == 7 || msgId == 8 || msgId == 10 || msgId == 11) {
            return true;
        }
        switch (msgId) {
            case 27:
            case MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED /* 28 */:
            case 29:
            case 30:
            case 31:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMsg(int msg, int existingMsgPolicy, int delay) {
        sendIILMsg(msg, existingMsgPolicy, 0, 0, null, delay);
    }

    private void sendILMsg(int msg, int existingMsgPolicy, int arg, Object obj, int delay) {
        sendIILMsg(msg, existingMsgPolicy, arg, 0, obj, delay);
    }

    private void sendLMsg(int msg, int existingMsgPolicy, Object obj, int delay) {
        sendIILMsg(msg, existingMsgPolicy, 0, 0, obj, delay);
    }

    private void sendIMsg(int msg, int existingMsgPolicy, int arg, int delay) {
        sendIILMsg(msg, existingMsgPolicy, arg, 0, null, delay);
    }

    private void sendMsgNoDelay(int msg, int existingMsgPolicy) {
        sendIILMsg(msg, existingMsgPolicy, 0, 0, null, 0);
    }

    private void sendIMsgNoDelay(int msg, int existingMsgPolicy, int arg) {
        sendIILMsg(msg, existingMsgPolicy, arg, 0, null, 0);
    }

    private void sendIIMsgNoDelay(int msg, int existingMsgPolicy, int arg1, int arg2) {
        sendIILMsg(msg, existingMsgPolicy, arg1, arg2, null, 0);
    }

    private void sendILMsgNoDelay(int msg, int existingMsgPolicy, int arg, Object obj) {
        sendIILMsg(msg, existingMsgPolicy, arg, 0, obj, 0);
    }

    private void sendLMsgNoDelay(int msg, int existingMsgPolicy, Object obj) {
        sendIILMsg(msg, existingMsgPolicy, 0, 0, obj, 0);
    }

    private void sendIILMsgNoDelay(int msg, int existingMsgPolicy, int arg1, int arg2, Object obj) {
        sendIILMsg(msg, existingMsgPolicy, arg1, arg2, obj, 0);
    }

    private void sendIILMsg(int msg, int existingMsgPolicy, int arg1, int arg2, Object obj, int delay) {
        if (existingMsgPolicy == 0) {
            this.mBrokerHandler.removeMessages(msg);
        } else if (existingMsgPolicy == 1 && this.mBrokerHandler.hasMessages(msg)) {
            return;
        }
        if (isMessageHandledUnderWakelock(msg)) {
            long identity = Binder.clearCallingIdentity();
            try {
                this.mBrokerEventWakeLock.acquire(BROKER_WAKELOCK_TIMEOUT_MS);
            } catch (Exception e) {
                Log.e(TAG, "Exception acquiring wakelock", e);
            }
            Binder.restoreCallingIdentity(identity);
        }
        if (!this.mBluetoothA2dpUsingZone && MESSAGES_MUTE_MUSIC.contains(Integer.valueOf(msg))) {
            checkMessagesMuteMusic(msg);
        }
        synchronized (sLastDeviceConnectionMsgTimeLock) {
            long time = SystemClock.uptimeMillis() + ((long) delay);
            if (msg == 2 || msg == 18 || msg == 7 || msg == 8 || msg == 10 || msg == 11 || msg == 27 || msg == MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED) {
                if (sLastDeviceConnectMsgTime >= time) {
                    time = sLastDeviceConnectMsgTime + 30;
                }
                sLastDeviceConnectMsgTime = time;
            }
            this.mBrokerHandler.sendMessageAtTime(this.mBrokerHandler.obtainMessage(msg, arg1, arg2, obj), time);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkMessagesMuteMusic(int message) {
        boolean mute = message != 0;
        if (!mute) {
            Iterator<Integer> it = MESSAGES_MUTE_MUSIC.iterator();
            while (it.hasNext()) {
                int msg = it.next().intValue();
                if (this.mBrokerHandler.hasMessages(msg)) {
                    mute = true;
                    break;
                }
            }
        }
        if (mute != this.mMusicMuted.getAndSet(mute)) {
            this.mAudioService.setMusicMute(mute);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SpeakerphoneClient implements IBinder.DeathRecipient {
        private final IBinder mCb;
        private final boolean mOn;
        private final int mPid;

        SpeakerphoneClient(IBinder cb, int pid, boolean on) {
            this.mCb = cb;
            this.mPid = pid;
            this.mOn = on;
        }

        public boolean registerDeathRecipient() {
            try {
                this.mCb.linkToDeath(this, 0);
                return true;
            } catch (RemoteException e) {
                Log.w(AudioDeviceBroker.TAG, "SpeakerphoneClient could not link to " + this.mCb + " binder death");
                return false;
            }
        }

        public void unregisterDeathRecipient() {
            try {
                this.mCb.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
                Log.w(AudioDeviceBroker.TAG, "SpeakerphoneClient could not not unregistered to binder");
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            AudioDeviceBroker.this.postSpeakerphoneClientDied(this);
        }

        IBinder getBinder() {
            return this.mCb;
        }

        int getPid() {
            return this.mPid;
        }

        boolean isOn() {
            return this.mOn;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void speakerphoneClientDied(Object obj) {
        if (obj == null) {
            return;
        }
        Log.w(TAG, "Speaker client died");
        if (removeSpeakerphoneClient(((SpeakerphoneClient) obj).getBinder(), false) != null) {
            updateSpeakerphoneOn("speakerphoneClientDied");
        }
    }

    private SpeakerphoneClient removeSpeakerphoneClient(IBinder cb, boolean unregister) {
        for (SpeakerphoneClient cl : this.mSpeakerphoneClients) {
            if (cl.getBinder() == cb) {
                if (unregister) {
                    cl.unregisterDeathRecipient();
                }
                this.mSpeakerphoneClients.remove(cl);
                return cl;
            }
        }
        return null;
    }

    private boolean addSpeakerphoneClient(IBinder cb, int pid, boolean on) {
        removeSpeakerphoneClient(cb, true);
        SpeakerphoneClient client = new SpeakerphoneClient(cb, pid, on);
        if (!client.registerDeathRecipient()) {
            return false;
        }
        this.mSpeakerphoneClients.add(0, client);
        return true;
    }

    private SpeakerphoneClient getSpeakerphoneClientForPid(int pid) {
        for (SpeakerphoneClient cl : this.mSpeakerphoneClients) {
            if (cl.getPid() == pid) {
                return cl;
            }
        }
        return null;
    }
}
