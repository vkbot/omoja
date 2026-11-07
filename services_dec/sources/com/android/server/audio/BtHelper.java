package com.android.server.audio;

import android.R;
import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothCodecConfig;
import android.bluetooth.BluetoothCodecStatus;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothHearingAid;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.MegaBluetoothAdapter;
import android.content.Intent;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.media.AudioSystem;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class BtHelper {
    private static final int BT_HEARING_AID_GAIN_MIN = -128;
    static final int EVENT_ACTIVE_DEVICE_CHANGE = 1;
    static final int EVENT_DEVICE_CONFIG_CHANGE = 0;
    private static final int SCO_MODE_MAX = 2;
    private static final int SCO_MODE_RAW = 1;
    static final int SCO_MODE_UNDEFINED = -1;
    static final int SCO_MODE_VIRTUAL_CALL = 0;
    private static final int SCO_MODE_VR = 2;
    private static final int SCO_STATE_ACTIVATE_REQ = 1;
    private static final int SCO_STATE_ACTIVE_EXTERNAL = 2;
    private static final int SCO_STATE_ACTIVE_INTERNAL = 3;
    private static final int SCO_STATE_DEACTIVATE_REQ = 4;
    private static final int SCO_STATE_DEACTIVATING = 5;
    private static final int SCO_STATE_INACTIVE = 0;
    private static final String TAG = "AS.BtHelper";
    private BluetoothA2dp mA2dp;
    private BluetoothHeadset mBluetoothHeadset;
    private BluetoothDevice mBluetoothHeadsetDevice;
    private final AudioDeviceBroker mDeviceBroker;
    private BluetoothHearingAid mHearingAid;
    private int mScoAudioMode;
    private int mScoAudioState;
    private int mScoConnectionState;
    private final ArrayList<ScoClient> mScoClients = new ArrayList<>();
    private boolean mAvrcpAbsVolSupported = false;
    private boolean mA2dpViaSecondBluetooth = false;
    private BluetoothProfile.ServiceListener mBluetoothProfileServiceListener = new BluetoothProfile.ServiceListener() { // from class: com.android.server.audio.BtHelper.1
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int profile, BluetoothProfile proxy) {
            Log.i(BtHelper.TAG, "onServiceConnected profile: " + profile + " proxy: " + proxy);
            if (profile == 1) {
                AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("BT profile service: connecting HEADSET profile"));
                BtHelper.this.mDeviceBroker.postBtHeasetProfileConnected((BluetoothHeadset) proxy);
                return;
            }
            if (profile == 2) {
                AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("BT profile service: connecting A2DP profile"));
                BtHelper.this.mDeviceBroker.postBtA2dpProfileConnected((BluetoothA2dp) proxy);
            } else if (profile == 11) {
                AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("BT profile service: connecting A2DP_SINK profile"));
                BtHelper.this.mDeviceBroker.postBtA2dpSinkProfileConnected(proxy);
            } else if (profile == 21) {
                AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("BT profile service: connecting HEARING_AID profile"));
                BtHelper.this.mDeviceBroker.postBtHearingAidProfileConnected((BluetoothHearingAid) proxy);
            }
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int profile) {
            Log.i(BtHelper.TAG, "onServiceDisconnected profile: " + profile);
            if (profile == 1) {
                BtHelper.this.mDeviceBroker.postDisconnectHeadset();
                return;
            }
            if (profile == 2) {
                BtHelper.this.mDeviceBroker.postDisconnectA2dp();
            } else if (profile == 11) {
                BtHelper.this.mDeviceBroker.postDisconnectA2dpSink();
            } else if (profile == 21) {
                BtHelper.this.mDeviceBroker.postDisconnectHearingAid();
            }
        }
    };

    BtHelper(AudioDeviceBroker broker) {
        this.mDeviceBroker = broker;
    }

    public static String scoAudioModeToString(int scoAudioMode) {
        if (scoAudioMode == -1) {
            return "SCO_MODE_UNDEFINED";
        }
        if (scoAudioMode == 0) {
            return "SCO_MODE_VIRTUAL_CALL";
        }
        if (scoAudioMode == 1) {
            return "SCO_MODE_RAW";
        }
        if (scoAudioMode == 2) {
            return "SCO_MODE_VR";
        }
        return "SCO_MODE_(" + scoAudioMode + ")";
    }

    public static String scoAudioStateToString(int scoAudioState) {
        if (scoAudioState == 0) {
            return "SCO_STATE_INACTIVE";
        }
        if (scoAudioState == 1) {
            return "SCO_STATE_ACTIVATE_REQ";
        }
        if (scoAudioState == 2) {
            return "SCO_STATE_ACTIVE_EXTERNAL";
        }
        if (scoAudioState == 3) {
            return "SCO_STATE_ACTIVE_INTERNAL";
        }
        if (scoAudioState == 5) {
            return "SCO_STATE_DEACTIVATING";
        }
        return "SCO_STATE_(" + scoAudioState + ")";
    }

    static class BluetoothA2dpDeviceInfo {
        private final BluetoothDevice mBtDevice;
        private final int mCodec;
        private final int mVolume;

        BluetoothA2dpDeviceInfo(BluetoothDevice btDevice) {
            this(btDevice, -1, 0);
        }

        BluetoothA2dpDeviceInfo(BluetoothDevice btDevice, int volume, int codec) {
            this.mBtDevice = btDevice;
            this.mVolume = volume;
            this.mCodec = codec;
        }

        public BluetoothDevice getBtDevice() {
            return this.mBtDevice;
        }

        public int getVolume() {
            return this.mVolume;
        }

        public int getCodec() {
            return this.mCodec;
        }

        public boolean equals(Object o) {
            if (o == null) {
                return false;
            }
            if (this == o) {
                return true;
            }
            if (!(o instanceof BluetoothA2dpDeviceInfo)) {
                return false;
            }
            return this.mBtDevice.equals(((BluetoothA2dpDeviceInfo) o).getBtDevice());
        }
    }

    static String a2dpDeviceEventToString(int event) {
        if (event == 0) {
            return "DEVICE_CONFIG_CHANGE";
        }
        if (event == 1) {
            return "ACTIVE_DEVICE_CHANGE";
        }
        return new String("invalid event:" + event);
    }

    static String getName(BluetoothDevice device) {
        String deviceName = device.getName();
        if (deviceName == null) {
            return "";
        }
        return deviceName;
    }

    synchronized void onSystemReady() {
        this.mScoConnectionState = -1;
        resetBluetoothSco();
        getBluetoothHeadset();
        Intent newIntent = new Intent("android.media.SCO_AUDIO_STATE_CHANGED");
        newIntent.putExtra("android.media.extra.SCO_AUDIO_STATE", 0);
        sendStickyBroadcastToAll(newIntent);
        this.mA2dpViaSecondBluetooth = this.mDeviceBroker.getContext().getResources().getBoolean(R.bool.config_allowDockBeforeProvision);
        Log.i(TAG, "config mA2dpViaSecondBluetooth: " + this.mA2dpViaSecondBluetooth);
        if (!this.mA2dpViaSecondBluetooth) {
            BluetoothAdapter adapter = BluetoothAdapter.getDefaultAdapter();
            if (adapter != null) {
                adapter.getProfileProxy(this.mDeviceBroker.getContext(), this.mBluetoothProfileServiceListener, 2);
                adapter.getProfileProxy(this.mDeviceBroker.getContext(), this.mBluetoothProfileServiceListener, 21);
            }
        } else {
            MegaBluetoothAdapter adapter2 = MegaBluetoothAdapter.getDefaultAdapter();
            if (adapter2 != null) {
                adapter2.getProfileProxy(this.mDeviceBroker.getContext(), this.mBluetoothProfileServiceListener, 2);
                adapter2.getProfileProxy(this.mDeviceBroker.getContext(), this.mBluetoothProfileServiceListener, 21);
            }
        }
    }

    synchronized void onAudioServerDiedRestoreA2dp() {
        int forMed = this.mDeviceBroker.getBluetoothA2dpEnabled() ? 0 : 10;
        this.mDeviceBroker.setForceUse_Async(1, forMed, "onAudioServerDied()");
    }

    synchronized boolean isAvrcpAbsoluteVolumeSupported() {
        return this.mA2dp != null && this.mAvrcpAbsVolSupported;
    }

    synchronized void setAvrcpAbsoluteVolumeSupported(boolean supported) {
        this.mAvrcpAbsVolSupported = supported;
        Log.i(TAG, "setAvrcpAbsoluteVolumeSupported supported=" + supported);
    }

    synchronized void setAvrcpAbsoluteVolumeIndex(int index) {
        if (!this.mAvrcpAbsVolSupported) {
            AudioService.sVolumeLogger.log(new AudioEventLogger.StringEvent("setAvrcpAbsoluteVolumeIndex: abs vol not supported ").printLog(TAG));
        } else {
            AudioService.sVolumeLogger.log(new AudioServiceEvents.VolumeEvent(4, index));
            this.mA2dp.setAvrcpAbsoluteVolume(index);
        }
    }

    synchronized int getA2dpCodec(BluetoothDevice device) {
        if (this.mA2dp == null) {
            return 0;
        }
        BluetoothCodecStatus btCodecStatus = this.mA2dp.getCodecStatus(device);
        if (btCodecStatus == null) {
            return 0;
        }
        BluetoothCodecConfig btCodecConfig = btCodecStatus.getCodecConfig();
        if (btCodecConfig == null) {
            return 0;
        }
        return AudioSystem.bluetoothCodecToAudioFormat(btCodecConfig.getCodecType());
    }

    synchronized void receiveBtEvent(Intent intent) {
        String action = intent.getAction();
        if (action.equals("android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED")) {
            BluetoothDevice btDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            setBtScoActiveDevice(btDevice);
        } else if (action.equals("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED")) {
            boolean broadcast = false;
            int scoAudioState = -1;
            int btState = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1);
            if (!this.mScoClients.isEmpty() && (this.mScoAudioState == 3 || this.mScoAudioState == 1 || this.mScoAudioState == 4 || this.mScoAudioState == 5)) {
                broadcast = true;
            }
            switch (btState) {
                case 10:
                    this.mDeviceBroker.setBluetoothScoOn(false, "BtHelper.receiveBtEvent");
                    scoAudioState = 0;
                    if ((this.mScoAudioState == 1 || (this.mScoAudioState == 2 && !this.mScoClients.isEmpty())) && this.mBluetoothHeadset != null && this.mBluetoothHeadsetDevice != null && connectBluetoothScoAudioHelper(this.mBluetoothHeadset, this.mBluetoothHeadsetDevice, this.mScoAudioMode)) {
                        this.mScoAudioState = 3;
                        broadcast = false;
                    } else {
                        if (this.mScoAudioState == 5) {
                            clearAllScoClients(0, false);
                        }
                        this.mScoAudioState = 0;
                    }
                    break;
                case 11:
                    if (this.mScoAudioState != 3 && this.mScoAudioState != 4) {
                        this.mScoAudioState = 2;
                    }
                    broadcast = false;
                    break;
                case 12:
                    scoAudioState = 1;
                    if (this.mScoAudioState != 3 && this.mScoAudioState != 4) {
                        this.mScoAudioState = 2;
                    }
                    this.mDeviceBroker.setBluetoothScoOn(true, "BtHelper.receiveBtEvent");
                    break;
                default:
                    broadcast = false;
                    break;
            }
            if (broadcast) {
                broadcastScoConnectionState(scoAudioState);
                Intent newIntent = new Intent("android.media.SCO_AUDIO_STATE_CHANGED");
                newIntent.putExtra("android.media.extra.SCO_AUDIO_STATE", scoAudioState);
                sendStickyBroadcastToAll(newIntent);
            }
        }
    }

    synchronized boolean isBluetoothScoOn() {
        if (this.mBluetoothHeadset == null) {
            return false;
        }
        return this.mBluetoothHeadset.getAudioState(this.mBluetoothHeadsetDevice) == 12;
    }

    synchronized void disconnectBluetoothSco(int exceptPid) {
        checkScoAudioState();
        if (this.mScoAudioState == 2) {
            return;
        }
        clearAllScoClients(exceptPid, true);
    }

    synchronized void startBluetoothScoForClient(IBinder cb, int scoAudioMode, String eventSource) {
        ScoClient client = getScoClient(cb, true);
        long ident = Binder.clearCallingIdentity();
        try {
            AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent(eventSource));
            client.requestScoState(12, scoAudioMode);
        } catch (NullPointerException e) {
            Log.e(TAG, "Null ScoClient", e);
        }
        Binder.restoreCallingIdentity(ident);
    }

    synchronized void stopBluetoothScoForClient(IBinder cb, String eventSource) {
        ScoClient client = getScoClient(cb, false);
        long ident = Binder.clearCallingIdentity();
        if (client != null) {
            stopAndRemoveClient(client, eventSource);
        }
        Binder.restoreCallingIdentity(ident);
    }

    synchronized void stopBluetoothScoForPid(int pid) {
        ScoClient client = getScoClientForPid(pid);
        if (client == null) {
            return;
        }
        String eventSource = "stopBluetoothScoForPid(" + pid + ")";
        stopAndRemoveClient(client, eventSource);
    }

    private void stopAndRemoveClient(ScoClient client, String eventSource) {
        AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent(eventSource));
        client.requestScoState(10, 0);
        int i = this.mScoAudioState;
        if (i != 4 && i != 5) {
            client.remove(false, true);
        }
    }

    synchronized void setHearingAidVolume(int index, int streamType) {
        if (this.mHearingAid == null) {
            return;
        }
        int gainDB = (int) AudioSystem.getStreamVolumeDB(streamType, index / 10, AudioFormat.OPUS);
        if (gainDB < -128) {
            gainDB = -128;
        }
        AudioService.sVolumeLogger.log(new AudioServiceEvents.VolumeEvent(3, index, gainDB));
        this.mHearingAid.setVolume(gainDB);
    }

    synchronized void onBroadcastScoConnectionState(int state) {
        if (state == this.mScoConnectionState) {
            return;
        }
        Intent newIntent = new Intent("android.media.ACTION_SCO_AUDIO_STATE_UPDATED");
        newIntent.putExtra("android.media.extra.SCO_AUDIO_STATE", state);
        newIntent.putExtra("android.media.extra.SCO_AUDIO_PREVIOUS_STATE", this.mScoConnectionState);
        sendStickyBroadcastToAll(newIntent);
        this.mScoConnectionState = state;
    }

    synchronized void disconnectAllBluetoothProfiles() {
        Log.i(TAG, "disconnectAllBluetoothProfiles");
        this.mDeviceBroker.postDisconnectA2dp();
        this.mDeviceBroker.postDisconnectA2dpSink();
        this.mDeviceBroker.postDisconnectHeadset();
        this.mDeviceBroker.postDisconnectHearingAid();
    }

    synchronized void resetBluetoothSco() {
        clearAllScoClients(0, false);
        this.mScoAudioState = 0;
        broadcastScoConnectionState(0);
        AudioSystem.setParameters("A2dpSuspended=false");
        this.mDeviceBroker.setBluetoothScoOn(false, "resetBluetoothSco");
    }

    synchronized void disconnectHeadset() {
        setBtScoActiveDevice(null);
        this.mBluetoothHeadset = null;
    }

    synchronized void onA2dpProfileConnected(BluetoothA2dp a2dp) {
        this.mA2dp = a2dp;
        List<BluetoothDevice> deviceList = a2dp.getConnectedDevices();
        if (deviceList.isEmpty()) {
            return;
        }
        BluetoothDevice btDevice = deviceList.get(0);
        this.mDeviceBroker.postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(btDevice, 2, 11, true, -1);
    }

    synchronized void onA2dpSinkProfileConnected(BluetoothProfile profile) {
        List<BluetoothDevice> deviceList = profile.getConnectedDevices();
        if (deviceList.isEmpty()) {
            return;
        }
        BluetoothDevice btDevice = deviceList.get(0);
        int state = profile.getConnectionState(btDevice);
        this.mDeviceBroker.postSetA2dpSourceConnectionState(state, new BluetoothA2dpDeviceInfo(btDevice));
    }

    synchronized void onHearingAidProfileConnected(BluetoothHearingAid hearingAid) {
        this.mHearingAid = hearingAid;
        List<BluetoothDevice> deviceList = hearingAid.getConnectedDevices();
        if (deviceList.isEmpty()) {
            return;
        }
        BluetoothDevice btDevice = deviceList.get(0);
        int state = this.mHearingAid.getConnectionState(btDevice);
        this.mDeviceBroker.postBluetoothHearingAidDeviceConnectionState(btDevice, state, false, 0, "mBluetoothProfileServiceListener");
    }

    synchronized void onHeadsetProfileConnected(BluetoothHeadset headset) {
        this.mDeviceBroker.handleCancelFailureToConnectToBtHeadsetService();
        this.mBluetoothHeadset = headset;
        setBtScoActiveDevice(headset.getActiveDevice());
        checkScoAudioState();
        if (this.mScoAudioState == 1 || this.mScoAudioState == 4) {
            boolean status = false;
            if (this.mBluetoothHeadsetDevice != null) {
                int i = this.mScoAudioState;
                if (i == 1) {
                    status = connectBluetoothScoAudioHelper(this.mBluetoothHeadset, this.mBluetoothHeadsetDevice, this.mScoAudioMode);
                    if (status) {
                        this.mScoAudioState = 3;
                    }
                } else if (i == 4 && (status = disconnectBluetoothScoAudioHelper(this.mBluetoothHeadset, this.mBluetoothHeadsetDevice, this.mScoAudioMode))) {
                    this.mScoAudioState = 5;
                }
            }
            if (!status) {
                this.mScoAudioState = 0;
                broadcastScoConnectionState(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void broadcastScoConnectionState(int state) {
        this.mDeviceBroker.postBroadcastScoConnectionState(state);
    }

    private boolean handleBtScoActiveDeviceChange(BluetoothDevice btDevice, boolean isActive) {
        if (btDevice == null) {
            return true;
        }
        String address = btDevice.getAddress();
        BluetoothClass btClass = btDevice.getBluetoothClass();
        int[] outDeviceTypes = {16, 32, 64};
        if (btClass != null) {
            int deviceClass = btClass.getDeviceClass();
            if (deviceClass == 1028 || deviceClass == 1032) {
                outDeviceTypes = new int[]{32};
            } else if (deviceClass == 1056) {
                outDeviceTypes = new int[]{64};
            }
        }
        if (!BluetoothAdapter.checkBluetoothAddress(address)) {
            address = "";
        }
        String btDeviceName = getName(btDevice);
        boolean result = false;
        if (!isActive) {
            for (int outDeviceType : outDeviceTypes) {
                result |= this.mDeviceBroker.handleDeviceConnection(isActive, outDeviceType, address, btDeviceName);
            }
        } else {
            result = false | this.mDeviceBroker.handleDeviceConnection(isActive, outDeviceTypes[0], address, btDeviceName);
        }
        if (this.mDeviceBroker.handleDeviceConnection(isActive, -2147483640, address, btDeviceName) && result) {
            return true;
        }
        return false;
    }

    private void setBtScoActiveDevice(BluetoothDevice btDevice) {
        Log.i(TAG, "setBtScoActiveDevice: " + this.mBluetoothHeadsetDevice + " -> " + btDevice);
        BluetoothDevice previousActiveDevice = this.mBluetoothHeadsetDevice;
        if (Objects.equals(btDevice, previousActiveDevice)) {
            return;
        }
        if (!handleBtScoActiveDeviceChange(previousActiveDevice, false)) {
            Log.w(TAG, "setBtScoActiveDevice() failed to remove previous device " + previousActiveDevice);
        }
        if (!handleBtScoActiveDeviceChange(btDevice, true)) {
            Log.e(TAG, "setBtScoActiveDevice() failed to add new device " + btDevice);
            btDevice = null;
        }
        this.mBluetoothHeadsetDevice = btDevice;
        if (btDevice == null) {
            resetBluetoothSco();
        }
    }

    synchronized void scoClientDied(Object obj) {
        ScoClient client = (ScoClient) obj;
        client.remove(true, false);
        Log.w(TAG, "SCO client died");
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ScoClient implements IBinder.DeathRecipient {
        private IBinder mCb;
        private int mCreatorPid = Binder.getCallingPid();

        ScoClient(IBinder cb) {
            this.mCb = cb;
        }

        public void registerDeathRecipient() {
            try {
                this.mCb.linkToDeath(this, 0);
            } catch (RemoteException e) {
                Log.w(BtHelper.TAG, "ScoClient could not link to " + this.mCb + " binder death");
            }
        }

        public void unregisterDeathRecipient() {
            try {
                this.mCb.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
                Log.w(BtHelper.TAG, "ScoClient could not not unregistered to binder");
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            BtHelper.this.mDeviceBroker.postScoClientDied(this);
        }

        IBinder getBinder() {
            return this.mCb;
        }

        int getPid() {
            return this.mCreatorPid;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean requestScoState(int state, int scoAudioMode) {
            BtHelper.this.checkScoAudioState();
            if (BtHelper.this.mScoClients.size() != 1) {
                Log.i(BtHelper.TAG, "requestScoState: state=" + state + ", scoAudioMode=" + scoAudioMode + ", num SCO clients=" + BtHelper.this.mScoClients.size());
                return true;
            }
            if (state == 12) {
                BtHelper.this.broadcastScoConnectionState(2);
                int modeOwnerPid = BtHelper.this.mDeviceBroker.getModeOwnerPid();
                if (modeOwnerPid == 0 || modeOwnerPid == this.mCreatorPid) {
                    int i = BtHelper.this.mScoAudioState;
                    if (i == 0) {
                        BtHelper.this.mScoAudioMode = scoAudioMode;
                        if (scoAudioMode == -1) {
                            BtHelper.this.mScoAudioMode = 0;
                            if (BtHelper.this.mBluetoothHeadsetDevice != null) {
                                BtHelper btHelper = BtHelper.this;
                                btHelper.mScoAudioMode = Settings.Global.getInt(btHelper.mDeviceBroker.getContentResolver(), "bluetooth_sco_channel_" + BtHelper.this.mBluetoothHeadsetDevice.getAddress(), 0);
                                if (BtHelper.this.mScoAudioMode > 2 || BtHelper.this.mScoAudioMode < 0) {
                                    BtHelper.this.mScoAudioMode = 0;
                                }
                            }
                        }
                        if (BtHelper.this.mBluetoothHeadset == null) {
                            if (BtHelper.this.getBluetoothHeadset()) {
                                BtHelper.this.mScoAudioState = 1;
                            } else {
                                Log.w(BtHelper.TAG, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode=" + BtHelper.this.mScoAudioMode);
                                BtHelper.this.broadcastScoConnectionState(0);
                                return false;
                            }
                        } else if (BtHelper.this.mBluetoothHeadsetDevice != null) {
                            if (BtHelper.connectBluetoothScoAudioHelper(BtHelper.this.mBluetoothHeadset, BtHelper.this.mBluetoothHeadsetDevice, BtHelper.this.mScoAudioMode)) {
                                BtHelper.this.mScoAudioState = 3;
                            } else {
                                Log.w(BtHelper.TAG, "requestScoState: connect to " + BtHelper.this.mBluetoothHeadsetDevice + " failed, mScoAudioMode=" + BtHelper.this.mScoAudioMode);
                                BtHelper.this.broadcastScoConnectionState(0);
                                return false;
                            }
                        } else {
                            Log.w(BtHelper.TAG, "requestScoState: no active device while connecting, mScoAudioMode=" + BtHelper.this.mScoAudioMode);
                            BtHelper.this.broadcastScoConnectionState(0);
                            return false;
                        }
                    } else if (i == 3) {
                        Log.w(BtHelper.TAG, "requestScoState: already in ACTIVE mode, simply return");
                    } else if (i == 4) {
                        BtHelper.this.mScoAudioState = 3;
                        BtHelper.this.broadcastScoConnectionState(1);
                    } else if (i == 5) {
                        BtHelper.this.mScoAudioState = 1;
                    } else {
                        Log.w(BtHelper.TAG, "requestScoState: failed to connect in state " + BtHelper.this.mScoAudioState + ", scoAudioMode=" + scoAudioMode);
                        BtHelper.this.broadcastScoConnectionState(0);
                        return false;
                    }
                } else {
                    Log.w(BtHelper.TAG, "requestScoState: audio mode is not NORMAL and modeOwnerPid " + modeOwnerPid + " != creatorPid " + this.mCreatorPid);
                    BtHelper.this.broadcastScoConnectionState(0);
                    return false;
                }
            } else if (state == 10) {
                int i2 = BtHelper.this.mScoAudioState;
                if (i2 == 1) {
                    BtHelper.this.mScoAudioState = 0;
                    BtHelper.this.broadcastScoConnectionState(0);
                } else if (i2 == 3) {
                    if (BtHelper.this.mBluetoothHeadset == null) {
                        if (BtHelper.this.getBluetoothHeadset()) {
                            BtHelper.this.mScoAudioState = 4;
                        } else {
                            Log.w(BtHelper.TAG, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode=" + BtHelper.this.mScoAudioMode);
                            BtHelper.this.mScoAudioState = 0;
                            BtHelper.this.broadcastScoConnectionState(0);
                            return false;
                        }
                    } else if (BtHelper.this.mBluetoothHeadsetDevice != null && BtHelper.disconnectBluetoothScoAudioHelper(BtHelper.this.mBluetoothHeadset, BtHelper.this.mBluetoothHeadsetDevice, BtHelper.this.mScoAudioMode)) {
                        BtHelper.this.mScoAudioState = 5;
                    } else {
                        BtHelper.this.mScoAudioState = 0;
                        BtHelper.this.broadcastScoConnectionState(0);
                    }
                } else {
                    Log.w(BtHelper.TAG, "requestScoState: failed to disconnect in state " + BtHelper.this.mScoAudioState + ", scoAudioMode=" + scoAudioMode);
                    BtHelper.this.broadcastScoConnectionState(0);
                    return false;
                }
            }
            return true;
        }

        void remove(boolean stop, boolean unregister) {
            if (unregister) {
                unregisterDeathRecipient();
            }
            if (stop) {
                requestScoState(10, 0);
            }
            BtHelper.this.mScoClients.remove(this);
        }
    }

    private void sendStickyBroadcastToAll(Intent intent) {
        intent.addFlags(AudioFormat.EVRC);
        long ident = Binder.clearCallingIdentity();
        try {
            this.mDeviceBroker.getContext().sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean disconnectBluetoothScoAudioHelper(BluetoothHeadset bluetoothHeadset, BluetoothDevice device, int scoAudioMode) {
        if (scoAudioMode == 0) {
            return bluetoothHeadset.stopScoUsingVirtualVoiceCall();
        }
        if (scoAudioMode == 1) {
            return bluetoothHeadset.disconnectAudio();
        }
        if (scoAudioMode == 2) {
            return bluetoothHeadset.stopVoiceRecognition(device);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean connectBluetoothScoAudioHelper(BluetoothHeadset bluetoothHeadset, BluetoothDevice device, int scoAudioMode) {
        if (scoAudioMode == 0) {
            return bluetoothHeadset.startScoUsingVirtualVoiceCall();
        }
        if (scoAudioMode == 1) {
            return bluetoothHeadset.connectAudio();
        }
        if (scoAudioMode == 2) {
            return bluetoothHeadset.startVoiceRecognition(device);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkScoAudioState() {
        BluetoothDevice bluetoothDevice;
        BluetoothHeadset bluetoothHeadset = this.mBluetoothHeadset;
        if (bluetoothHeadset != null && (bluetoothDevice = this.mBluetoothHeadsetDevice) != null && this.mScoAudioState == 0 && bluetoothHeadset.getAudioState(bluetoothDevice) != 10) {
            this.mScoAudioState = 2;
        }
    }

    private ScoClient getScoClient(IBinder cb, boolean create) {
        for (ScoClient existingClient : this.mScoClients) {
            if (existingClient.getBinder() == cb) {
                return existingClient;
            }
        }
        if (create) {
            ScoClient newClient = new ScoClient(cb);
            newClient.registerDeathRecipient();
            this.mScoClients.add(newClient);
            return newClient;
        }
        return null;
    }

    private ScoClient getScoClientForPid(int pid) {
        for (ScoClient cl : this.mScoClients) {
            if (cl.getPid() == pid) {
                return cl;
            }
        }
        return null;
    }

    private void clearAllScoClients(int exceptPid, boolean stopSco) {
        ArrayList<ScoClient> clients = new ArrayList<>();
        for (ScoClient cl : this.mScoClients) {
            if (cl.getPid() != exceptPid) {
                clients.add(cl);
            }
        }
        Iterator<ScoClient> it = clients.iterator();
        while (it.hasNext()) {
            it.next().remove(stopSco, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getBluetoothHeadset() {
        boolean result = false;
        if (!this.mA2dpViaSecondBluetooth) {
            BluetoothAdapter adapter = BluetoothAdapter.getDefaultAdapter();
            if (adapter != null) {
                result = adapter.getProfileProxy(this.mDeviceBroker.getContext(), this.mBluetoothProfileServiceListener, 1);
            }
        } else {
            MegaBluetoothAdapter adapter2 = MegaBluetoothAdapter.getDefaultAdapter();
            if (adapter2 != null) {
                result = adapter2.getProfileProxy(this.mDeviceBroker.getContext(), this.mBluetoothProfileServiceListener, 1);
            }
        }
        this.mDeviceBroker.handleFailureToConnectToBtHeadsetService(result ? 3000 : 0);
        return result;
    }

    public static String bluetoothCodecToEncodingString(int btCodecType) {
        if (btCodecType == 0) {
            return "ENCODING_SBC";
        }
        if (btCodecType == 1) {
            return "ENCODING_AAC";
        }
        if (btCodecType == 2) {
            return "ENCODING_APTX";
        }
        if (btCodecType == 3) {
            return "ENCODING_APTX_HD";
        }
        if (btCodecType == 4) {
            return "ENCODING_LDAC";
        }
        return "ENCODING_BT_CODEC_TYPE(" + btCodecType + ")";
    }

    void dump(final PrintWriter pw, final String prefix) {
        pw.println("\n" + prefix + "mBluetoothHeadset: " + this.mBluetoothHeadset);
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        sb.append("mBluetoothHeadsetDevice: ");
        sb.append(this.mBluetoothHeadsetDevice);
        pw.println(sb.toString());
        pw.println(prefix + "mScoAudioState: " + scoAudioStateToString(this.mScoAudioState));
        pw.println(prefix + "mScoAudioMode: " + scoAudioModeToString(this.mScoAudioMode));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        sb2.append("Sco clients:");
        pw.println(sb2.toString());
        this.mScoClients.forEach(new Consumer() { // from class: com.android.server.audio.-$$Lambda$BtHelper$fwiXt4KEc-qkQ-STMxaJwMNGOl0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BtHelper.ScoClient scoClient = (BtHelper.ScoClient) obj;
                pw.println("  " + prefix + "pid: " + scoClient.getPid() + " cb: " + scoClient.getBinder());
            }
        });
        pw.println("\n" + prefix + "mHearingAid: " + this.mHearingAid);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(prefix);
        sb3.append("mA2dp: ");
        sb3.append(this.mA2dp);
        pw.println(sb3.toString());
        pw.println(prefix + "mAvrcpAbsVolSupported: " + this.mAvrcpAbsVolSupported);
    }
}
