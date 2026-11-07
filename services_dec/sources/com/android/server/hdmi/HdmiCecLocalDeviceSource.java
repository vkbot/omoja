package com.android.server.hdmi;

import android.hardware.hdmi.IHdmiControlCallback;
import android.os.SystemProperties;
import android.util.Slog;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class HdmiCecLocalDeviceSource extends HdmiCecLocalDevice {
    private static final String TAG = "HdmiCecLocalDeviceSource";
    protected boolean mIsActiveSource;
    protected boolean mIsSwitchDevice;
    protected int mLocalActivePort;
    protected boolean mRoutingControlFeatureEnabled;
    private int mRoutingPort;

    protected HdmiCecLocalDeviceSource(HdmiControlService service, int deviceType) {
        super(service, deviceType);
        this.mIsActiveSource = false;
        this.mIsSwitchDevice = SystemProperties.getBoolean("ro.hdmi.property_is_device_hdmi_cec_switch", false);
        this.mRoutingPort = 0;
        this.mLocalActivePort = 0;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    void onHotplug(int portId, boolean connected) {
        assertRunOnServiceThread();
        if (this.mService.getPortInfo(portId).getType() == 1) {
            this.mCecMessageCache.flushAll();
        }
        if (connected) {
            this.mService.wakeUp();
        }
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected void sendStandby(int deviceId) {
        assertRunOnServiceThread();
        this.mService.sendCecCommand(HdmiCecMessageBuilder.buildStandby(this.mAddress, 0));
    }

    @HdmiAnnotations.ServiceThreadOnly
    void oneTouchPlay(IHdmiControlCallback callback) {
        assertRunOnServiceThread();
        List<OneTouchPlayAction> actions = getActions(OneTouchPlayAction.class);
        if (!actions.isEmpty()) {
            Slog.i(TAG, "oneTouchPlay already in progress");
            actions.get(0).addCallback(callback);
            return;
        }
        OneTouchPlayAction action = OneTouchPlayAction.create(this, 0, callback);
        if (action == null) {
            Slog.w(TAG, "Cannot initiate oneTouchPlay");
            invokeCallback(callback, 5);
        } else {
            addAndStartAction(action);
        }
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleActiveSource(HdmiCecMessage message) {
        assertRunOnServiceThread();
        int logicalAddress = message.getSource();
        int physicalAddress = HdmiUtils.twoBytesToInt(message.getParams());
        HdmiCecLocalDevice.ActiveSource activeSource = HdmiCecLocalDevice.ActiveSource.of(logicalAddress, physicalAddress);
        if (!getActiveSource().equals(activeSource)) {
            setActiveSource(activeSource);
        }
        setIsActiveSource(physicalAddress == this.mService.getPhysicalAddress());
        updateDevicePowerStatus(logicalAddress, 0);
        if (isRoutingControlFeatureEnabled()) {
            switchInputOnReceivingNewActivePath(physicalAddress);
        }
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleRequestActiveSource(HdmiCecMessage message) {
        assertRunOnServiceThread();
        maySendActiveSource(message.getSource());
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleSetStreamPath(HdmiCecMessage message) {
        assertRunOnServiceThread();
        int physicalAddress = HdmiUtils.twoBytesToInt(message.getParams());
        if (physicalAddress == this.mService.getPhysicalAddress() && this.mService.isPlaybackDevice()) {
            setAndBroadcastActiveSource(message, physicalAddress);
        }
        switchInputOnReceivingNewActivePath(physicalAddress);
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleRoutingChange(HdmiCecMessage message) {
        assertRunOnServiceThread();
        if (!isRoutingControlFeatureEnabled()) {
            this.mService.maySendFeatureAbortCommand(message, 4);
            return true;
        }
        int newPath = HdmiUtils.twoBytesToInt(message.getParams(), 2);
        if (!this.mIsSwitchDevice && newPath == this.mService.getPhysicalAddress() && this.mService.isPlaybackDevice()) {
            setAndBroadcastActiveSource(message, newPath);
        }
        handleRoutingChangeAndInformation(newPath, message);
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleRoutingInformation(HdmiCecMessage message) {
        assertRunOnServiceThread();
        if (!isRoutingControlFeatureEnabled()) {
            this.mService.maySendFeatureAbortCommand(message, 4);
            return true;
        }
        int physicalAddress = HdmiUtils.twoBytesToInt(message.getParams());
        if (!this.mIsSwitchDevice && physicalAddress == this.mService.getPhysicalAddress() && this.mService.isPlaybackDevice()) {
            setAndBroadcastActiveSource(message, physicalAddress);
        }
        handleRoutingChangeAndInformation(physicalAddress, message);
        return true;
    }

    protected void switchInputOnReceivingNewActivePath(int physicalAddress) {
    }

    protected void handleRoutingChangeAndInformation(int physicalAddress, HdmiCecMessage message) {
    }

    protected void updateDevicePowerStatus(int logicalAddress, int newPowerStatus) {
    }

    protected void setAndBroadcastActiveSource(HdmiCecMessage message, int physicalAddress) {
        this.mService.setAndBroadcastActiveSource(physicalAddress, getDeviceInfo().getDeviceType(), message.getSource());
    }

    @HdmiAnnotations.ServiceThreadOnly
    void setIsActiveSource(boolean on) {
        assertRunOnServiceThread();
        this.mIsActiveSource = on;
    }

    protected void wakeUpIfActiveSource() {
        if (!this.mIsActiveSource) {
            return;
        }
        this.mService.wakeUp();
    }

    protected void maySendActiveSource(int dest) {
        if (!this.mIsActiveSource) {
            return;
        }
        addAndStartAction(new ActiveSourceAction(this, dest));
    }

    protected void setRoutingPort(int portId) {
        synchronized (this.mLock) {
            this.mRoutingPort = portId;
        }
    }

    protected int getRoutingPort() {
        int i;
        synchronized (this.mLock) {
            i = this.mRoutingPort;
        }
        return i;
    }

    protected int getLocalActivePort() {
        int i;
        synchronized (this.mLock) {
            i = this.mLocalActivePort;
        }
        return i;
    }

    protected void setLocalActivePort(int activePort) {
        synchronized (this.mLock) {
            this.mLocalActivePort = activePort;
        }
    }

    boolean isRoutingControlFeatureEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mRoutingControlFeatureEnabled;
        }
        return z;
    }

    protected boolean isSwitchingToTheSameInput(int activePort) {
        return activePort == getLocalActivePort();
    }
}
