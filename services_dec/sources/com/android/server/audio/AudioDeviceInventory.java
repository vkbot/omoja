package com.android.server.audio;

import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.hardware.audio.common.V2_0.AudioDevice;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.media.AudioDeviceAttributes;
import android.media.AudioDevicePort;
import android.media.AudioPort;
import android.media.AudioRoutesInfo;
import android.media.AudioSystem;
import android.media.IAudioRoutesObserver;
import android.media.IStrategyPreferredDeviceDispatcher;
import android.media.MediaMetrics;
import android.os.Binder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.Slog;
import com.android.server.pm.PackageManagerService;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes.dex */
public class AudioDeviceInventory {
    private static final Set<Integer> BECOMING_NOISY_INTENT_DEVICES_SET;
    private static final String CONNECT_INTENT_KEY_ADDRESS = "address";
    private static final String CONNECT_INTENT_KEY_DEVICE_CLASS = "class";
    private static final String CONNECT_INTENT_KEY_HAS_CAPTURE = "hasCapture";
    private static final String CONNECT_INTENT_KEY_HAS_MIDI = "hasMIDI";
    private static final String CONNECT_INTENT_KEY_HAS_PLAYBACK = "hasPlayback";
    private static final String CONNECT_INTENT_KEY_PORT_NAME = "portName";
    private static final String CONNECT_INTENT_KEY_STATE = "state";
    private static final Set<Integer> DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET;
    private static final String TAG = "AS.AudioDeviceInventory";
    private static final String mMetricsId = "audio.device.";
    private final ArrayMap<Integer, String> mApmConnectedDevices;
    private final AudioSystemAdapter mAudioSystem;
    private final LinkedHashMap<String, DeviceInfo> mConnectedDevices;
    final AudioRoutesInfo mCurAudioRoutes;
    private AudioDeviceBroker mDeviceBroker;
    private final Object mDevicesLock;
    final RemoteCallbackList<IStrategyPreferredDeviceDispatcher> mPrefDevDispatchers;
    private final ArrayMap<Integer, AudioDeviceAttributes> mPreferredDevices;
    final RemoteCallbackList<IAudioRoutesObserver> mRoutesObservers;

    AudioDeviceInventory(AudioDeviceBroker broker) {
        this.mDevicesLock = new Object();
        this.mConnectedDevices = new LinkedHashMap<String, DeviceInfo>() { // from class: com.android.server.audio.AudioDeviceInventory.1
            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            public DeviceInfo put(String key, DeviceInfo value) {
                DeviceInfo result = (DeviceInfo) super.put(key, value);
                record("put", true, key, value);
                return result;
            }

            @Override // java.util.HashMap, java.util.Map
            public DeviceInfo putIfAbsent(String key, DeviceInfo value) {
                DeviceInfo result = (DeviceInfo) super.putIfAbsent(key, value);
                if (result == null) {
                    record("putIfAbsent", true, key, value);
                }
                return result;
            }

            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            public DeviceInfo remove(Object key) {
                DeviceInfo result = (DeviceInfo) super.remove(key);
                if (result != null) {
                    record("remove", false, (String) key, result);
                }
                return result;
            }

            @Override // java.util.HashMap, java.util.Map
            public boolean remove(Object key, Object value) {
                boolean result = super.remove(key, value);
                if (result) {
                    record("remove", false, (String) key, (DeviceInfo) value);
                }
                return result;
            }

            private void record(String event, boolean connected, String key, DeviceInfo value) {
                new MediaMetrics.Item(AudioDeviceInventory.mMetricsId + AudioSystem.getDeviceName(value.mDeviceType)).set(MediaMetrics.Property.ADDRESS, value.mDeviceAddress).set(MediaMetrics.Property.EVENT, event).set(MediaMetrics.Property.NAME, value.mDeviceName).set(MediaMetrics.Property.STATE, connected ? "connected" : "disconnected").record();
            }
        };
        this.mApmConnectedDevices = new ArrayMap<>();
        this.mPreferredDevices = new ArrayMap<>();
        this.mCurAudioRoutes = new AudioRoutesInfo();
        this.mRoutesObservers = new RemoteCallbackList<>();
        this.mPrefDevDispatchers = new RemoteCallbackList<>();
        this.mDeviceBroker = broker;
        this.mAudioSystem = AudioSystemAdapter.getDefaultAdapter();
    }

    AudioDeviceInventory(AudioSystemAdapter audioSystem) {
        this.mDevicesLock = new Object();
        this.mConnectedDevices = new LinkedHashMap<String, DeviceInfo>() { // from class: com.android.server.audio.AudioDeviceInventory.1
            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            public DeviceInfo put(String key, DeviceInfo value) {
                DeviceInfo result = (DeviceInfo) super.put(key, value);
                record("put", true, key, value);
                return result;
            }

            @Override // java.util.HashMap, java.util.Map
            public DeviceInfo putIfAbsent(String key, DeviceInfo value) {
                DeviceInfo result = (DeviceInfo) super.putIfAbsent(key, value);
                if (result == null) {
                    record("putIfAbsent", true, key, value);
                }
                return result;
            }

            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            public DeviceInfo remove(Object key) {
                DeviceInfo result = (DeviceInfo) super.remove(key);
                if (result != null) {
                    record("remove", false, (String) key, result);
                }
                return result;
            }

            @Override // java.util.HashMap, java.util.Map
            public boolean remove(Object key, Object value) {
                boolean result = super.remove(key, value);
                if (result) {
                    record("remove", false, (String) key, (DeviceInfo) value);
                }
                return result;
            }

            private void record(String event, boolean connected, String key, DeviceInfo value) {
                new MediaMetrics.Item(AudioDeviceInventory.mMetricsId + AudioSystem.getDeviceName(value.mDeviceType)).set(MediaMetrics.Property.ADDRESS, value.mDeviceAddress).set(MediaMetrics.Property.EVENT, event).set(MediaMetrics.Property.NAME, value.mDeviceName).set(MediaMetrics.Property.STATE, connected ? "connected" : "disconnected").record();
            }
        };
        this.mApmConnectedDevices = new ArrayMap<>();
        this.mPreferredDevices = new ArrayMap<>();
        this.mCurAudioRoutes = new AudioRoutesInfo();
        this.mRoutesObservers = new RemoteCallbackList<>();
        this.mPrefDevDispatchers = new RemoteCallbackList<>();
        this.mDeviceBroker = null;
        this.mAudioSystem = audioSystem;
    }

    void setDeviceBroker(AudioDeviceBroker broker) {
        this.mDeviceBroker = broker;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class DeviceInfo {
        final String mDeviceAddress;
        int mDeviceCodecFormat;
        final String mDeviceName;
        final int mDeviceType;

        DeviceInfo(int deviceType, String deviceName, String deviceAddress, int deviceCodecFormat) {
            this.mDeviceType = deviceType;
            this.mDeviceName = deviceName == null ? "" : deviceName;
            this.mDeviceAddress = deviceAddress != null ? deviceAddress : "";
            this.mDeviceCodecFormat = deviceCodecFormat;
        }

        public String toString() {
            return "[DeviceInfo: type:0x" + Integer.toHexString(this.mDeviceType) + " (" + AudioSystem.getDeviceName(this.mDeviceType) + ") name:" + this.mDeviceName + " addr:" + this.mDeviceAddress + " codec: " + Integer.toHexString(this.mDeviceCodecFormat) + "]";
        }

        String getKey() {
            return makeDeviceListKey(this.mDeviceType, this.mDeviceAddress);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String makeDeviceListKey(int device, String deviceAddress) {
            return "0x" + Integer.toHexString(device) + ":" + deviceAddress;
        }
    }

    class WiredDeviceConnectionState {
        public final String mAddress;
        public final String mCaller;
        public final String mName;
        public final int mState;
        public final int mType;

        WiredDeviceConnectionState(int type, int state, String address, String name, String caller) {
            this.mType = type;
            this.mState = state;
            this.mAddress = address;
            this.mName = name;
            this.mCaller = caller;
        }
    }

    void dump(final PrintWriter pw, final String prefix) {
        pw.println("\n" + prefix + "Preferred devices for strategy:");
        this.mPreferredDevices.forEach(new BiConsumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$X6RLjT4CIM4r8i0wBWo1TE_1qak
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                pw.println("  " + prefix + "strategy:" + ((Integer) obj) + " device:" + ((AudioDeviceAttributes) obj2));
            }
        });
        pw.println("\n" + prefix + "Connected devices:");
        this.mConnectedDevices.forEach(new BiConsumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$YxgcWZ4jspoxzltUgvW9l8k40io
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                pw.println("  " + prefix + ((AudioDeviceInventory.DeviceInfo) obj2).toString());
            }
        });
        pw.println("\n" + prefix + "APM Connected device (A2DP sink only):");
        this.mApmConnectedDevices.forEach(new BiConsumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$7CtpUHI2aS8Sdar40vc2ScvU1zA
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Integer num = (Integer) obj;
                pw.println("  " + prefix + " type:0x" + Integer.toHexString(num.intValue()) + " (" + AudioSystem.getDeviceName(num.intValue()) + ") addr:" + ((String) obj2));
            }
        });
    }

    void onRestoreDevices() {
        synchronized (this.mDevicesLock) {
            for (DeviceInfo di : this.mConnectedDevices.values()) {
                this.mAudioSystem.setDeviceConnectionState(di.mDeviceType, 1, di.mDeviceAddress, di.mDeviceName, di.mDeviceCodecFormat);
            }
        }
        synchronized (this.mPreferredDevices) {
            this.mPreferredDevices.forEach(new BiConsumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$rVjCbPoeHeOpk1Tf1e7TcZZH4rw
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    this.f$0.lambda$onRestoreDevices$3$AudioDeviceInventory((Integer) obj, (AudioDeviceAttributes) obj2);
                }
            });
        }
    }

    public /* synthetic */ void lambda$onRestoreDevices$3$AudioDeviceInventory(Integer strategy, AudioDeviceAttributes device) {
        this.mAudioSystem.setPreferredDeviceForStrategy(strategy.intValue(), device);
    }

    public void onSetA2dpSinkConnectionState(BtHelper.BluetoothA2dpDeviceInfo btInfo, int state) {
        BluetoothDevice btDevice = btInfo.getBtDevice();
        int a2dpVolume = btInfo.getVolume();
        String address = btDevice.getAddress();
        if (address == null) {
            address = "";
        }
        if (!BluetoothAdapter.checkBluetoothAddress(address)) {
            address = "";
        }
        int a2dpCodec = btInfo.getCodec();
        AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("A2DP sink connected: device addr=" + address + " state=" + state + " codec=" + AudioSystem.audioFormatToString(a2dpCodec) + " vol=" + a2dpVolume));
        new MediaMetrics.Item("audio.device.a2dp").set(MediaMetrics.Property.ADDRESS, address).set(MediaMetrics.Property.ENCODING, AudioSystem.audioFormatToString(a2dpCodec)).set(MediaMetrics.Property.EVENT, "onSetA2dpSinkConnectionState").set(MediaMetrics.Property.INDEX, Integer.valueOf(a2dpVolume)).set(MediaMetrics.Property.STATE, state == 2 ? "connected" : "disconnected").record();
        synchronized (this.mDevicesLock) {
            String key = DeviceInfo.makeDeviceListKey(128, btDevice.getAddress());
            DeviceInfo di = this.mConnectedDevices.get(key);
            boolean isConnected = di != null;
            if (isConnected) {
                if (state == 2) {
                    if (a2dpCodec != di.mDeviceCodecFormat) {
                        this.mDeviceBroker.postBluetoothA2dpDeviceConfigChange(btDevice);
                    }
                } else {
                    makeA2dpDeviceUnavailableNow(address, di.mDeviceCodecFormat);
                }
            } else if (state == 2) {
                if (a2dpVolume != -1) {
                    this.mDeviceBroker.postSetVolumeIndexOnDevice(3, a2dpVolume * 10, 128, "onSetA2dpSinkConnectionState");
                }
                makeA2dpDeviceAvailable(address, BtHelper.getName(btDevice), "onSetA2dpSinkConnectionState", a2dpCodec);
            }
        }
    }

    void onSetA2dpSourceConnectionState(BtHelper.BluetoothA2dpDeviceInfo btInfo, int state) {
        BluetoothDevice btDevice = btInfo.getBtDevice();
        String address = btDevice.getAddress();
        if (!BluetoothAdapter.checkBluetoothAddress(address)) {
            address = "";
        }
        synchronized (this.mDevicesLock) {
            String key = DeviceInfo.makeDeviceListKey(AudioDevice.IN_BLUETOOTH_A2DP, address);
            DeviceInfo di = this.mConnectedDevices.get(key);
            boolean isConnected = di != null;
            new MediaMetrics.Item("audio.device.onSetA2dpSourceConnectionState").set(MediaMetrics.Property.ADDRESS, address).set(MediaMetrics.Property.DEVICE, AudioSystem.getDeviceName(AudioDevice.IN_BLUETOOTH_A2DP)).set(MediaMetrics.Property.STATE, state == 2 ? "connected" : "disconnected").record();
            if (isConnected && state != 2) {
                lambda$disconnectA2dpSink$7$AudioDeviceInventory(address);
            } else if (!isConnected && state == 2) {
                makeA2dpSrcAvailable(address);
            }
        }
    }

    void onSetHearingAidConnectionState(BluetoothDevice btDevice, int state, int streamType) {
        String address = btDevice.getAddress();
        if (!BluetoothAdapter.checkBluetoothAddress(address)) {
            address = "";
        }
        AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("onSetHearingAidConnectionState addr=" + address));
        new MediaMetrics.Item("audio.device.onSetHearingAidConnectionState").set(MediaMetrics.Property.ADDRESS, address).set(MediaMetrics.Property.DEVICE, AudioSystem.getDeviceName(AudioDevice.IN_BLUETOOTH_A2DP)).set(MediaMetrics.Property.STATE, state == 2 ? "connected" : "disconnected").set(MediaMetrics.Property.STREAM_TYPE, AudioSystem.streamToString(streamType)).record();
        synchronized (this.mDevicesLock) {
            String key = DeviceInfo.makeDeviceListKey(AudioFormat.OPUS, btDevice.getAddress());
            DeviceInfo di = this.mConnectedDevices.get(key);
            boolean isConnected = di != null;
            if (isConnected && state != 2) {
                lambda$disconnectHearingAid$9$AudioDeviceInventory(address);
            } else if (!isConnected && state == 2) {
                makeHearingAidDeviceAvailable(address, BtHelper.getName(btDevice), streamType, "onSetHearingAidConnectionState");
            }
        }
    }

    void onBluetoothA2dpActiveDeviceChange(BtHelper.BluetoothA2dpDeviceInfo btInfo, int event) {
        String address;
        MediaMetrics.Item mmi = new MediaMetrics.Item("audio.device.onBluetoothA2dpActiveDeviceChange").set(MediaMetrics.Property.EVENT, BtHelper.a2dpDeviceEventToString(event));
        BluetoothDevice btDevice = btInfo.getBtDevice();
        if (btDevice == null) {
            mmi.set(MediaMetrics.Property.EARLY_RETURN, "btDevice null").record();
            return;
        }
        int a2dpVolume = btInfo.getVolume();
        int a2dpCodec = btInfo.getCodec();
        String address2 = btDevice.getAddress();
        if (BluetoothAdapter.checkBluetoothAddress(address2)) {
            address = address2;
        } else {
            address = "";
        }
        AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("onBluetoothA2dpActiveDeviceChange addr=" + address + " event=" + BtHelper.a2dpDeviceEventToString(event)));
        synchronized (this.mDevicesLock) {
            if (!this.mDeviceBroker.hasScheduledA2dpSinkConnectionState(btDevice)) {
                String key = DeviceInfo.makeDeviceListKey(128, address);
                DeviceInfo di = this.mConnectedDevices.get(key);
                if (di == null) {
                    Log.e(TAG, "invalid null DeviceInfo in onBluetoothA2dpActiveDeviceChange");
                    mmi.set(MediaMetrics.Property.EARLY_RETURN, "null DeviceInfo").record();
                    return;
                }
                mmi.set(MediaMetrics.Property.ADDRESS, address).set(MediaMetrics.Property.ENCODING, AudioSystem.audioFormatToString(a2dpCodec)).set(MediaMetrics.Property.INDEX, Integer.valueOf(a2dpVolume)).set(MediaMetrics.Property.NAME, di.mDeviceName);
                if (event == 1) {
                    if (a2dpVolume != -1) {
                        this.mDeviceBroker.postSetVolumeIndexOnDevice(3, a2dpVolume * 10, 128, "onBluetoothA2dpActiveDeviceChange");
                    }
                } else if (event == 0 && di.mDeviceCodecFormat != a2dpCodec) {
                    di.mDeviceCodecFormat = a2dpCodec;
                    this.mConnectedDevices.replace(key, di);
                }
                int res = this.mAudioSystem.handleDeviceConfigChange(128, address, BtHelper.getName(btDevice), a2dpCodec);
                if (res != 0) {
                    AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("APM handleDeviceConfigChange failed for A2DP device addr=" + address + " codec=" + AudioSystem.audioFormatToString(a2dpCodec)).printLog(TAG));
                    int musicDevice = this.mDeviceBroker.getDeviceForStream(3);
                    setBluetoothA2dpDeviceConnectionState(btDevice, 0, 2, false, musicDevice, -1);
                } else {
                    AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("APM handleDeviceConfigChange success for A2DP device addr=" + address + " codec=" + AudioSystem.audioFormatToString(a2dpCodec)).printLog(TAG));
                }
                mmi.record();
                return;
            }
            AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("A2dp config change ignored (scheduled connection change)").printLog(TAG));
            mmi.set(MediaMetrics.Property.EARLY_RETURN, "A2dp config change ignored").record();
        }
    }

    void onMakeA2dpDeviceUnavailableNow(String address, int a2dpCodec) {
        synchronized (this.mDevicesLock) {
            makeA2dpDeviceUnavailableNow(address, a2dpCodec);
        }
    }

    void onReportNewRoutes() {
        AudioRoutesInfo routes;
        int n = this.mRoutesObservers.beginBroadcast();
        if (n > 0) {
            new MediaMetrics.Item("audio.device.onReportNewRoutes").set(MediaMetrics.Property.OBSERVERS, Integer.valueOf(n)).record();
            synchronized (this.mCurAudioRoutes) {
                routes = new AudioRoutesInfo(this.mCurAudioRoutes);
            }
            while (n > 0) {
                n--;
                IAudioRoutesObserver obs = this.mRoutesObservers.getBroadcastItem(n);
                try {
                    obs.dispatchAudioRoutesChanged(routes);
                } catch (RemoteException e) {
                }
            }
        }
        this.mRoutesObservers.finishBroadcast();
        this.mDeviceBroker.postObserveDevicesForAllStreams();
    }

    static {
        HashSet hashSet = new HashSet();
        DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET = hashSet;
        hashSet.add(4);
        DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET.add(8);
        DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET.add(131072);
        DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET.addAll(AudioSystem.DEVICE_OUT_ALL_USB_SET);
        HashSet hashSet2 = new HashSet();
        BECOMING_NOISY_INTENT_DEVICES_SET = hashSet2;
        hashSet2.add(4);
        BECOMING_NOISY_INTENT_DEVICES_SET.add(8);
        BECOMING_NOISY_INTENT_DEVICES_SET.add(1024);
        BECOMING_NOISY_INTENT_DEVICES_SET.add(2048);
        BECOMING_NOISY_INTENT_DEVICES_SET.add(4096);
        BECOMING_NOISY_INTENT_DEVICES_SET.add(131072);
        BECOMING_NOISY_INTENT_DEVICES_SET.add(Integer.valueOf(AudioFormat.OPUS));
        BECOMING_NOISY_INTENT_DEVICES_SET.addAll(AudioSystem.DEVICE_OUT_ALL_A2DP_SET);
        BECOMING_NOISY_INTENT_DEVICES_SET.addAll(AudioSystem.DEVICE_OUT_ALL_USB_SET);
    }

    void onSetWiredDeviceConnectionState(WiredDeviceConnectionState wdcs) {
        AudioService.sDeviceLogger.log(new AudioServiceEvents.WiredDevConnectEvent(wdcs));
        MediaMetrics.Item mmi = new MediaMetrics.Item("audio.device.onSetWiredDeviceConnectionState").set(MediaMetrics.Property.ADDRESS, wdcs.mAddress).set(MediaMetrics.Property.DEVICE, AudioSystem.getDeviceName(wdcs.mType)).set(MediaMetrics.Property.STATE, wdcs.mState == 0 ? "disconnected" : "connected");
        synchronized (this.mDevicesLock) {
            boolean z = true;
            if (wdcs.mState == 0 && DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET.contains(Integer.valueOf(wdcs.mType))) {
                this.mDeviceBroker.setBluetoothA2dpOnInt(true, false, "onSetWiredDeviceConnectionState state DISCONNECTED");
            }
            if (wdcs.mState != 1) {
                z = false;
            }
            if (!handleDeviceConnection(z, wdcs.mType, wdcs.mAddress, wdcs.mName)) {
                mmi.set(MediaMetrics.Property.EARLY_RETURN, "change of connection state failed").record();
                return;
            }
            if (wdcs.mState != 0) {
                if (DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET.contains(Integer.valueOf(wdcs.mType))) {
                    this.mDeviceBroker.setBluetoothA2dpOnInt(false, false, "onSetWiredDeviceConnectionState state not DISCONNECTED");
                }
                this.mDeviceBroker.checkMusicActive(wdcs.mType, wdcs.mCaller);
            }
            if (wdcs.mType == 1024) {
                this.mDeviceBroker.checkVolumeCecOnHdmiConnection(wdcs.mState, wdcs.mCaller);
            }
            sendDeviceConnectionIntent(wdcs.mType, wdcs.mState, wdcs.mAddress, wdcs.mName);
            updateAudioRoutes(wdcs.mType, wdcs.mState);
            mmi.record();
        }
    }

    void onToggleHdmi() {
        MediaMetrics.Item mmi = new MediaMetrics.Item("audio.device.onToggleHdmi").set(MediaMetrics.Property.DEVICE, AudioSystem.getDeviceName(1024));
        synchronized (this.mDevicesLock) {
            String key = DeviceInfo.makeDeviceListKey(1024, "");
            DeviceInfo di = this.mConnectedDevices.get(key);
            if (di == null) {
                Log.e(TAG, "invalid null DeviceInfo in onToggleHdmi");
                mmi.set(MediaMetrics.Property.EARLY_RETURN, "invalid null DeviceInfo").record();
            } else {
                setWiredDeviceConnectionState(1024, 0, "", "", PackageManagerService.PLATFORM_PACKAGE_NAME);
                setWiredDeviceConnectionState(1024, 1, "", "", PackageManagerService.PLATFORM_PACKAGE_NAME);
                mmi.record();
            }
        }
    }

    void onSaveSetPreferredDevice(int strategy, AudioDeviceAttributes device) {
        this.mPreferredDevices.put(Integer.valueOf(strategy), device);
        dispatchPreferredDevice(strategy, device);
    }

    void onSaveRemovePreferredDevice(int strategy) {
        this.mPreferredDevices.remove(Integer.valueOf(strategy));
        dispatchPreferredDevice(strategy, null);
    }

    int setPreferredDeviceForStrategySync(int strategy, AudioDeviceAttributes device) {
        long identity = Binder.clearCallingIdentity();
        int status = this.mAudioSystem.setPreferredDeviceForStrategy(strategy, device);
        Binder.restoreCallingIdentity(identity);
        if (status == 0) {
            this.mDeviceBroker.postSaveSetPreferredDeviceForStrategy(strategy, device);
        }
        return status;
    }

    int removePreferredDeviceForStrategySync(int strategy) {
        long identity = Binder.clearCallingIdentity();
        int status = this.mAudioSystem.removePreferredDeviceForStrategy(strategy);
        Binder.restoreCallingIdentity(identity);
        if (status == 0) {
            this.mDeviceBroker.postSaveRemovePreferredDeviceForStrategy(strategy);
        }
        return status;
    }

    void registerStrategyPreferredDeviceDispatcher(IStrategyPreferredDeviceDispatcher dispatcher) {
        this.mPrefDevDispatchers.register(dispatcher);
    }

    void unregisterStrategyPreferredDeviceDispatcher(IStrategyPreferredDeviceDispatcher dispatcher) {
        this.mPrefDevDispatchers.unregister(dispatcher);
    }

    boolean handleDeviceConnection(boolean connect, int device, String address, String deviceName) {
        MediaMetrics.Item mmi = new MediaMetrics.Item("audio.device.handleDeviceConnection").set(MediaMetrics.Property.ADDRESS, address).set(MediaMetrics.Property.DEVICE, AudioSystem.getDeviceName(device)).set(MediaMetrics.Property.MODE, connect ? "connect" : "disconnect").set(MediaMetrics.Property.NAME, deviceName);
        synchronized (this.mDevicesLock) {
            String deviceKey = DeviceInfo.makeDeviceListKey(device, address);
            DeviceInfo di = this.mConnectedDevices.get(deviceKey);
            boolean isConnected = di != null;
            if (connect && !isConnected) {
                int res = this.mAudioSystem.setDeviceConnectionState(device, 1, address, deviceName, 0);
                if (res == 0) {
                    this.mConnectedDevices.put(deviceKey, new DeviceInfo(device, deviceName, address, 0));
                    this.mDeviceBroker.postAccessoryPlugMediaUnmute(device);
                    mmi.set(MediaMetrics.Property.STATE, "connected").record();
                    return true;
                }
                String reason = "not connecting device 0x" + Integer.toHexString(device) + " due to command error " + res;
                Slog.e(TAG, reason);
                mmi.set(MediaMetrics.Property.EARLY_RETURN, reason).set(MediaMetrics.Property.STATE, "disconnected").record();
                return false;
            }
            if (!connect && isConnected) {
                this.mAudioSystem.setDeviceConnectionState(device, 0, address, deviceName, 0);
                this.mConnectedDevices.remove(deviceKey);
                mmi.set(MediaMetrics.Property.STATE, "connected").record();
                return true;
            }
            Log.w(TAG, "handleDeviceConnection() failed, deviceKey=" + deviceKey + ", deviceSpec=" + di + ", connect=" + connect);
            mmi.set(MediaMetrics.Property.STATE, "disconnected").record();
            return false;
        }
    }

    void disconnectA2dp() {
        synchronized (this.mDevicesLock) {
            final ArraySet<String> toRemove = new ArraySet<>();
            this.mConnectedDevices.values().forEach(new Consumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$BMFj2tw2PdB9dFQB6gMjDjefzwg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AudioDeviceInventory.lambda$disconnectA2dp$4(toRemove, (AudioDeviceInventory.DeviceInfo) obj);
                }
            });
            new MediaMetrics.Item("audio.device.disconnectA2dp").record();
            if (toRemove.size() > 0) {
                final int delay = checkSendBecomingNoisyIntentInt(128, 0, 0);
                toRemove.stream().forEach(new Consumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$Jg62meZgoWI_a0zxOvpWdJWRPfI
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$disconnectA2dp$5$AudioDeviceInventory(delay, (String) obj);
                    }
                });
            }
        }
    }

    static /* synthetic */ void lambda$disconnectA2dp$4(ArraySet toRemove, DeviceInfo deviceInfo) {
        if (deviceInfo.mDeviceType == 128) {
            toRemove.add(deviceInfo.mDeviceAddress);
        }
    }

    void disconnectA2dpSink() {
        synchronized (this.mDevicesLock) {
            final ArraySet<String> toRemove = new ArraySet<>();
            this.mConnectedDevices.values().forEach(new Consumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$Kq15BolmuFXaWWabjDNQiScRxjo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AudioDeviceInventory.lambda$disconnectA2dpSink$6(toRemove, (AudioDeviceInventory.DeviceInfo) obj);
                }
            });
            new MediaMetrics.Item("audio.device.disconnectA2dpSink").record();
            toRemove.stream().forEach(new Consumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$A06w_GDNkrLVK3IhlqiuSJkZdos
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$disconnectA2dpSink$7$AudioDeviceInventory((String) obj);
                }
            });
        }
    }

    static /* synthetic */ void lambda$disconnectA2dpSink$6(ArraySet toRemove, DeviceInfo deviceInfo) {
        if (deviceInfo.mDeviceType == -2147352576) {
            toRemove.add(deviceInfo.mDeviceAddress);
        }
    }

    void disconnectHearingAid() {
        synchronized (this.mDevicesLock) {
            final ArraySet<String> toRemove = new ArraySet<>();
            this.mConnectedDevices.values().forEach(new Consumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$2HRlO1Fuzgf97A2Y249yqOtNAlc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AudioDeviceInventory.lambda$disconnectHearingAid$8(toRemove, (AudioDeviceInventory.DeviceInfo) obj);
                }
            });
            new MediaMetrics.Item("audio.device.disconnectHearingAid").record();
            if (toRemove.size() > 0) {
                checkSendBecomingNoisyIntentInt(AudioFormat.OPUS, 0, 0);
                toRemove.stream().forEach(new Consumer() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$7s2_dtMUrYgHtM2Mpc1sS0XgWCw
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$disconnectHearingAid$9$AudioDeviceInventory((String) obj);
                    }
                });
            }
        }
    }

    static /* synthetic */ void lambda$disconnectHearingAid$8(ArraySet toRemove, DeviceInfo deviceInfo) {
        if (deviceInfo.mDeviceType == 134217728) {
            toRemove.add(deviceInfo.mDeviceAddress);
        }
    }

    int checkSendBecomingNoisyIntent(int device, int state, int musicDevice) {
        int iCheckSendBecomingNoisyIntentInt;
        synchronized (this.mDevicesLock) {
            iCheckSendBecomingNoisyIntentInt = checkSendBecomingNoisyIntentInt(device, state, musicDevice);
        }
        return iCheckSendBecomingNoisyIntentInt;
    }

    AudioRoutesInfo startWatchingRoutes(IAudioRoutesObserver observer) {
        AudioRoutesInfo routes;
        synchronized (this.mCurAudioRoutes) {
            routes = new AudioRoutesInfo(this.mCurAudioRoutes);
            this.mRoutesObservers.register(observer);
        }
        return routes;
    }

    AudioRoutesInfo getCurAudioRoutes() {
        return this.mCurAudioRoutes;
    }

    public void setBluetoothA2dpDeviceConnectionState(BluetoothDevice device, int state, int profile, boolean suppressNoisyIntent, int musicDevice, int a2dpVolume) {
        int asState;
        int asState2;
        if (profile != 2 && profile != 11) {
            throw new IllegalArgumentException("invalid profile " + profile);
        }
        synchronized (this.mDevicesLock) {
            if (profile == 2 && !suppressNoisyIntent) {
                if (state == 2) {
                    asState2 = 1;
                } else {
                    asState2 = 0;
                }
                asState = checkSendBecomingNoisyIntentInt(128, asState2, musicDevice);
            } else {
                asState = 0;
            }
            int a2dpCodec = this.mDeviceBroker.getA2dpCodec(device);
            BtHelper.BluetoothA2dpDeviceInfo a2dpDeviceInfo = new BtHelper.BluetoothA2dpDeviceInfo(device, a2dpVolume, a2dpCodec);
            if (profile == 2) {
                this.mDeviceBroker.postA2dpSinkConnection(state, a2dpDeviceInfo, asState);
            } else {
                this.mDeviceBroker.postA2dpSourceConnection(state, a2dpDeviceInfo, asState);
            }
        }
    }

    int setWiredDeviceConnectionState(int type, int state, String address, String name, String caller) {
        int delay;
        synchronized (this.mDevicesLock) {
            delay = checkSendBecomingNoisyIntentInt(type, state, 0);
            this.mDeviceBroker.postSetWiredDeviceConnectionState(new WiredDeviceConnectionState(type, state, address, name, caller), delay);
        }
        return delay;
    }

    int setBluetoothHearingAidDeviceConnectionState(BluetoothDevice device, int state, boolean suppressNoisyIntent, int musicDevice) {
        int intState;
        synchronized (this.mDevicesLock) {
            if (!suppressNoisyIntent) {
                int intState2 = state == 2 ? 1 : 0;
                intState = checkSendBecomingNoisyIntentInt(AudioFormat.OPUS, intState2, musicDevice);
            } else {
                intState = 0;
            }
            this.mDeviceBroker.postSetHearingAidConnectionState(state, device, intState);
            if (state == 2) {
                this.mDeviceBroker.setForceUse_Async(1, 0, "HEARING_AID set to CONNECTED");
            }
        }
        return intState;
    }

    private void makeA2dpDeviceAvailable(String address, String name, String eventSource, int a2dpCodec) {
        this.mDeviceBroker.setBluetoothA2dpOnInt(true, true, eventSource);
        int res = this.mAudioSystem.setDeviceConnectionState(128, 1, address, name, a2dpCodec);
        if (res != 0) {
            AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("APM failed to make available A2DP device addr=" + address + " error=" + res).printLog(TAG));
        } else {
            AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("A2DP device addr=" + address + " now available").printLog(TAG));
        }
        this.mAudioSystem.setParameters("A2dpSuspended=false");
        DeviceInfo di = new DeviceInfo(128, name, address, a2dpCodec);
        String diKey = di.getKey();
        this.mConnectedDevices.put(diKey, di);
        this.mApmConnectedDevices.put(128, diKey);
        this.mDeviceBroker.postAccessoryPlugMediaUnmute(128);
        setCurrentAudioRouteNameIfPossible(name, true);
    }

    private void makeA2dpDeviceUnavailableNow(String address, int a2dpCodec) {
        MediaMetrics.Item mmi = new MediaMetrics.Item("audio.device.a2dp." + address).set(MediaMetrics.Property.ENCODING, AudioSystem.audioFormatToString(a2dpCodec)).set(MediaMetrics.Property.EVENT, "makeA2dpDeviceUnavailableNow");
        if (address != null) {
            String deviceToRemoveKey = DeviceInfo.makeDeviceListKey(128, address);
            this.mConnectedDevices.remove(deviceToRemoveKey);
            if (!deviceToRemoveKey.equals(this.mApmConnectedDevices.get(128))) {
                AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("A2DP device " + address + " made unavailable, was not used").printLog(TAG));
                mmi.set(MediaMetrics.Property.EARLY_RETURN, "A2DP device made unavailable, was not used").record();
                return;
            }
            this.mDeviceBroker.setAvrcpAbsoluteVolumeSupported(false);
            int res = this.mAudioSystem.setDeviceConnectionState(128, 0, address, "", a2dpCodec);
            if (res != 0) {
                AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("APM failed to make unavailable A2DP device addr=" + address + " error=" + res).printLog(TAG));
            } else {
                AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("A2DP device addr=" + address + " made unavailable").printLog(TAG));
            }
            this.mApmConnectedDevices.remove(128);
            setCurrentAudioRouteNameIfPossible(null, true);
            mmi.record();
            return;
        }
        mmi.set(MediaMetrics.Property.EARLY_RETURN, "address null").record();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: makeA2dpDeviceUnavailableLater, reason: merged with bridge method [inline-methods] */
    public void lambda$disconnectA2dp$5$AudioDeviceInventory(String address, int delayMs) {
        this.mAudioSystem.setParameters("A2dpSuspended=true");
        String deviceKey = DeviceInfo.makeDeviceListKey(128, address);
        DeviceInfo deviceInfo = this.mConnectedDevices.get(deviceKey);
        int a2dpCodec = deviceInfo != null ? deviceInfo.mDeviceCodecFormat : 0;
        this.mConnectedDevices.remove(deviceKey);
        this.mDeviceBroker.setA2dpTimeout(address, a2dpCodec, delayMs);
    }

    private void makeA2dpSrcAvailable(String address) {
        this.mAudioSystem.setDeviceConnectionState(AudioDevice.IN_BLUETOOTH_A2DP, 1, address, "", 0);
        this.mConnectedDevices.put(DeviceInfo.makeDeviceListKey(AudioDevice.IN_BLUETOOTH_A2DP, address), new DeviceInfo(AudioDevice.IN_BLUETOOTH_A2DP, "", address, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: makeA2dpSrcUnavailable, reason: merged with bridge method [inline-methods] */
    public void lambda$disconnectA2dpSink$7$AudioDeviceInventory(String address) {
        this.mAudioSystem.setDeviceConnectionState(AudioDevice.IN_BLUETOOTH_A2DP, 0, address, "", 0);
        this.mConnectedDevices.remove(DeviceInfo.makeDeviceListKey(AudioDevice.IN_BLUETOOTH_A2DP, address));
    }

    private void makeHearingAidDeviceAvailable(String address, String name, int streamType, String eventSource) {
        int hearingAidVolIndex = this.mDeviceBroker.getVssVolumeForDevice(streamType, AudioFormat.OPUS);
        this.mDeviceBroker.postSetHearingAidVolumeIndex(hearingAidVolIndex, streamType);
        this.mAudioSystem.setDeviceConnectionState(AudioFormat.OPUS, 1, address, name, 0);
        this.mConnectedDevices.put(DeviceInfo.makeDeviceListKey(AudioFormat.OPUS, address), new DeviceInfo(AudioFormat.OPUS, name, address, 0));
        this.mDeviceBroker.postAccessoryPlugMediaUnmute(AudioFormat.OPUS);
        this.mDeviceBroker.postApplyVolumeOnDevice(streamType, AudioFormat.OPUS, "makeHearingAidDeviceAvailable");
        setCurrentAudioRouteNameIfPossible(name, false);
        new MediaMetrics.Item("audio.device.makeHearingAidDeviceAvailable").set(MediaMetrics.Property.ADDRESS, address != null ? address : "").set(MediaMetrics.Property.DEVICE, AudioSystem.getDeviceName(AudioFormat.OPUS)).set(MediaMetrics.Property.NAME, name).set(MediaMetrics.Property.STREAM_TYPE, AudioSystem.streamToString(streamType)).record();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: makeHearingAidDeviceUnavailable, reason: merged with bridge method [inline-methods] */
    public void lambda$disconnectHearingAid$9$AudioDeviceInventory(String address) {
        this.mAudioSystem.setDeviceConnectionState(AudioFormat.OPUS, 0, address, "", 0);
        this.mConnectedDevices.remove(DeviceInfo.makeDeviceListKey(AudioFormat.OPUS, address));
        setCurrentAudioRouteNameIfPossible(null, false);
        new MediaMetrics.Item("audio.device.makeHearingAidDeviceUnavailable").set(MediaMetrics.Property.ADDRESS, address != null ? address : "").set(MediaMetrics.Property.DEVICE, AudioSystem.getDeviceName(AudioFormat.OPUS)).record();
    }

    private void setCurrentAudioRouteNameIfPossible(String name, boolean fromA2dp) {
        synchronized (this.mCurAudioRoutes) {
            if (TextUtils.equals(this.mCurAudioRoutes.bluetoothName, name)) {
                return;
            }
            if (name != null || !isCurrentDeviceConnected()) {
                this.mCurAudioRoutes.bluetoothName = name;
                this.mDeviceBroker.postReportNewRoutes(fromA2dp);
            }
        }
    }

    private boolean isCurrentDeviceConnected() {
        return this.mConnectedDevices.values().stream().anyMatch(new Predicate() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$_CdHBhvBDErZWSm39GafCXJiOqQ
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$isCurrentDeviceConnected$10$AudioDeviceInventory((AudioDeviceInventory.DeviceInfo) obj);
            }
        });
    }

    public /* synthetic */ boolean lambda$isCurrentDeviceConnected$10$AudioDeviceInventory(DeviceInfo deviceInfo) {
        return TextUtils.equals(deviceInfo.mDeviceName, this.mCurAudioRoutes.bluetoothName);
    }

    private int checkSendBecomingNoisyIntentInt(int device, int state, int musicDevice) {
        MediaMetrics.Item mmi = new MediaMetrics.Item("audio.device.checkSendBecomingNoisyIntentInt").set(MediaMetrics.Property.DEVICE, AudioSystem.getDeviceName(device)).set(MediaMetrics.Property.STATE, state == 1 ? "connected" : "disconnected");
        if (state != 0) {
            mmi.set(MediaMetrics.Property.DELAY_MS, 0).record();
            return 0;
        }
        if (!BECOMING_NOISY_INTENT_DEVICES_SET.contains(Integer.valueOf(device))) {
            mmi.set(MediaMetrics.Property.DELAY_MS, 0).record();
            return 0;
        }
        int delay = 0;
        Set<Integer> devices = new HashSet<>();
        for (DeviceInfo di : this.mConnectedDevices.values()) {
            if ((di.mDeviceType & Integer.MIN_VALUE) == 0 && BECOMING_NOISY_INTENT_DEVICES_SET.contains(Integer.valueOf(di.mDeviceType))) {
                devices.add(Integer.valueOf(di.mDeviceType));
            }
        }
        if (musicDevice == 0) {
            musicDevice = this.mDeviceBroker.getDeviceForStream(3);
        }
        if ((device == musicDevice || this.mDeviceBroker.isInCommunication()) && AudioSystem.isSingleAudioDeviceType(devices, device) && !this.mDeviceBroker.hasMediaDynamicPolicy() && musicDevice != 32768) {
            if (!this.mAudioSystem.isStreamActive(3, 0) && !this.mDeviceBroker.hasAudioFocusUsers()) {
                AudioService.sDeviceLogger.log(new AudioEventLogger.StringEvent("dropping ACTION_AUDIO_BECOMING_NOISY").printLog(TAG));
                mmi.set(MediaMetrics.Property.DELAY_MS, 0).record();
                return 0;
            }
            this.mDeviceBroker.postBroadcastBecomingNoisy();
            delay = 1000;
        }
        mmi.set(MediaMetrics.Property.DELAY_MS, Integer.valueOf(delay)).record();
        return delay;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003b  */
    /* JADX WARN: Code duplicated, block: B:22:0x003f  */
    private void sendDeviceConnectionIntent(int device, int state, String address, String deviceName) {
        Intent intent = new Intent();
        if (device != -2113929216) {
            if (device == 4) {
                intent.setAction("android.intent.action.HEADSET_PLUG");
                intent.putExtra("microphone", 1);
            } else if (device == 8) {
                intent.setAction("android.intent.action.HEADSET_PLUG");
                intent.putExtra("microphone", 0);
            } else if (device == 1024) {
                configureHdmiPlugIntent(intent, state);
            } else if (device == 131072) {
                intent.setAction("android.intent.action.HEADSET_PLUG");
                intent.putExtra("microphone", 0);
            } else if (device == 262144) {
                configureHdmiPlugIntent(intent, state);
            } else if (device == 67108864) {
                intent.setAction("android.intent.action.HEADSET_PLUG");
                intent.putExtra("microphone", AudioSystem.getDeviceConnectionState(AudioDevice.IN_USB_HEADSET, "") != 1 ? 0 : 1);
            }
        } else if (AudioSystem.getDeviceConnectionState(67108864, "") == 1) {
            intent.setAction("android.intent.action.HEADSET_PLUG");
            intent.putExtra("microphone", 1);
        } else {
            return;
        }
        if (intent.getAction() == null) {
            return;
        }
        intent.putExtra(CONNECT_INTENT_KEY_STATE, state);
        intent.putExtra(CONNECT_INTENT_KEY_ADDRESS, address);
        intent.putExtra(CONNECT_INTENT_KEY_PORT_NAME, deviceName);
        intent.addFlags(1073741824);
        long ident = Binder.clearCallingIdentity();
        try {
            ActivityManager.broadcastStickyIntent(intent, -2);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x001d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0020  */
    /* JADX WARN: Code duplicated, block: B:19:0x0023  */
    private void updateAudioRoutes(int device, int state) {
        int newConn;
        int connType = 0;
        if (device == 4) {
            connType = 1;
        } else if (device == 8) {
            connType = 2;
        } else if (device == 1024) {
            connType = 8;
        } else if (device == 16384) {
            connType = 16;
        } else if (device == 131072) {
            connType = 2;
        } else if (device == 262144) {
            connType = 8;
        } else if (device == 67108864) {
            connType = 16;
        }
        synchronized (this.mCurAudioRoutes) {
            try {
                if (connType == 0) {
                    return;
                }
                int newConn2 = this.mCurAudioRoutes.mainType;
                if (state != 0) {
                    newConn = newConn2 | connType;
                } else {
                    newConn = newConn2 & (~connType);
                }
                if (newConn != this.mCurAudioRoutes.mainType) {
                    this.mCurAudioRoutes.mainType = newConn;
                    this.mDeviceBroker.postReportNewRoutes(false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void configureHdmiPlugIntent(Intent intent, int state) {
        intent.setAction("android.media.action.HDMI_AUDIO_PLUG");
        intent.putExtra("android.media.extra.AUDIO_PLUG_STATE", state);
        if (state != 1) {
            return;
        }
        ArrayList<AudioPort> ports = new ArrayList<>();
        int[] portGeneration = new int[1];
        int status = AudioSystem.listAudioPorts(ports, portGeneration);
        if (status != 0) {
            Log.e(TAG, "listAudioPorts error " + status + " in configureHdmiPlugIntent");
            return;
        }
        for (AudioPort audioPort : ports) {
            if (audioPort instanceof AudioDevicePort) {
                AudioDevicePort devicePort = (AudioDevicePort) audioPort;
                if (devicePort.type() == 1024 || devicePort.type() == 262144) {
                    int[] formats = android.media.AudioFormat.filterPublicFormats(devicePort.formats());
                    if (formats.length > 0) {
                        ArrayList<Integer> encodingList = new ArrayList<>(1);
                        for (int format : formats) {
                            if (format != 0) {
                                encodingList.add(Integer.valueOf(format));
                            }
                        }
                        int[] encodingArray = encodingList.stream().mapToInt(new ToIntFunction() { // from class: com.android.server.audio.-$$Lambda$AudioDeviceInventory$BF-h0pJdMg-xR5-FyHERBLWDjA0
                            @Override // java.util.function.ToIntFunction
                            public final int applyAsInt(Object obj) {
                                return ((Integer) obj).intValue();
                            }
                        }).toArray();
                        intent.putExtra("android.media.extra.ENCODINGS", encodingArray);
                    }
                    int maxChannels = 0;
                    for (int mask : devicePort.channelMasks()) {
                        int channelCount = android.media.AudioFormat.channelCountFromOutChannelMask(mask);
                        if (channelCount > maxChannels) {
                            maxChannels = channelCount;
                        }
                    }
                    intent.putExtra("android.media.extra.MAX_CHANNEL_COUNT", maxChannels);
                }
            }
        }
    }

    private void dispatchPreferredDevice(int strategy, AudioDeviceAttributes device) {
        int nbDispatchers = this.mPrefDevDispatchers.beginBroadcast();
        for (int i = 0; i < nbDispatchers; i++) {
            try {
                this.mPrefDevDispatchers.getBroadcastItem(i).dispatchPrefDeviceChanged(strategy, device);
            } catch (RemoteException e) {
            }
        }
        this.mPrefDevDispatchers.finishBroadcast();
    }

    public boolean isA2dpDeviceConnected(BluetoothDevice device) {
        boolean z;
        String key = DeviceInfo.makeDeviceListKey(128, device.getAddress());
        synchronized (this.mDevicesLock) {
            z = this.mConnectedDevices.get(key) != null;
        }
        return z;
    }
}
