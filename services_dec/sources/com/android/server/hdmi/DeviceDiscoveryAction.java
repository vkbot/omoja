package com.android.server.hdmi;

import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.hdmi.HdmiDeviceInfo;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.util.Slog;
import com.android.internal.util.Preconditions;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class DeviceDiscoveryAction extends HdmiCecFeatureAction {
    private static final int STATE_WAITING_FOR_DEVICES = 5;
    private static final int STATE_WAITING_FOR_DEVICE_POLLING = 1;
    private static final int STATE_WAITING_FOR_OSD_NAME = 3;
    private static final int STATE_WAITING_FOR_PHYSICAL_ADDRESS = 2;
    private static final int STATE_WAITING_FOR_POWER = 6;
    private static final int STATE_WAITING_FOR_VENDOR_ID = 4;
    private static final String TAG = "DeviceDiscoveryAction";
    private final DeviceDiscoveryCallback mCallback;
    private final int mDelayPeriod;
    private final ArrayList<DeviceInfo> mDevices;
    private boolean mIsTvDevice;
    private int mProcessedDeviceCount;
    private int mTimeoutRetry;

    interface DeviceDiscoveryCallback {
        void onDeviceDiscoveryDone(List<HdmiDeviceInfo> list);
    }

    private static final class DeviceInfo {
        private int mDeviceType;
        private String mDisplayName;
        private final int mLogicalAddress;
        private int mPhysicalAddress;
        private int mPortId;
        private int mPowerStatus;
        private int mVendorId;

        private DeviceInfo(int logicalAddress) {
            this.mPhysicalAddress = 65535;
            this.mPortId = -1;
            this.mVendorId = AudioFormat.SUB_MASK;
            this.mPowerStatus = -1;
            this.mDisplayName = "";
            this.mDeviceType = -1;
            this.mLogicalAddress = logicalAddress;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public HdmiDeviceInfo toHdmiDeviceInfo() {
            return new HdmiDeviceInfo(this.mLogicalAddress, this.mPhysicalAddress, this.mPortId, this.mDeviceType, this.mVendorId, this.mDisplayName, this.mPowerStatus);
        }
    }

    DeviceDiscoveryAction(HdmiCecLocalDevice source, DeviceDiscoveryCallback callback, int delay) {
        super(source);
        this.mDevices = new ArrayList<>();
        this.mProcessedDeviceCount = 0;
        this.mTimeoutRetry = 0;
        this.mIsTvDevice = localDevice().mService.isTvDevice();
        Objects.requireNonNull(callback);
        this.mCallback = callback;
        this.mDelayPeriod = delay;
    }

    DeviceDiscoveryAction(HdmiCecLocalDevice source, DeviceDiscoveryCallback callback) {
        this(source, callback, 0);
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean start() {
        this.mDevices.clear();
        this.mState = 1;
        pollDevices(new HdmiControlService.DevicePollingCallback() { // from class: com.android.server.hdmi.DeviceDiscoveryAction.1
            @Override // com.android.server.hdmi.HdmiControlService.DevicePollingCallback
            public void onPollingFinished(List<Integer> ackedAddress) {
                if (ackedAddress.isEmpty()) {
                    Slog.v(DeviceDiscoveryAction.TAG, "No device is detected.");
                    DeviceDiscoveryAction.this.wrapUpAndFinish();
                    return;
                }
                Slog.v(DeviceDiscoveryAction.TAG, "Device detected: " + ackedAddress);
                DeviceDiscoveryAction.this.allocateDevices(ackedAddress);
                if (DeviceDiscoveryAction.this.mDelayPeriod > 0) {
                    DeviceDiscoveryAction.this.startToDelayAction();
                } else {
                    DeviceDiscoveryAction.this.startPhysicalAddressStage();
                }
            }
        }, 131073, 1);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void allocateDevices(List<Integer> addresses) {
        for (Integer i : addresses) {
            DeviceInfo info = new DeviceInfo(i.intValue());
            this.mDevices.add(info);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startToDelayAction() {
        Slog.v(TAG, "Waiting for connected devices to be ready");
        this.mState = 5;
        checkAndProceedStage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPhysicalAddressStage() {
        Slog.v(TAG, "Start [Physical Address Stage]:" + this.mDevices.size());
        this.mProcessedDeviceCount = 0;
        this.mState = 2;
        checkAndProceedStage();
    }

    private boolean verifyValidLogicalAddress(int address) {
        return address >= 0 && address < 15;
    }

    private void queryPhysicalAddress(int address) {
        if (!verifyValidLogicalAddress(address)) {
            checkAndProceedStage();
            return;
        }
        this.mActionTimer.clearTimerMessage();
        if (mayProcessMessageIfCached(address, CecMessageType.REPORT_PHYSICAL_ADDRESS)) {
            return;
        }
        sendCommand(HdmiCecMessageBuilder.buildGivePhysicalAddress(getSourceAddress(), address));
        addTimer(this.mState, 2000);
    }

    private void delayActionWithTimePeriod(int timeDelay) {
        this.mActionTimer.clearTimerMessage();
        addTimer(this.mState, timeDelay);
    }

    private void startOsdNameStage() {
        Slog.v(TAG, "Start [Osd Name Stage]:" + this.mDevices.size());
        this.mProcessedDeviceCount = 0;
        this.mState = 3;
        checkAndProceedStage();
    }

    private void queryOsdName(int address) {
        if (!verifyValidLogicalAddress(address)) {
            checkAndProceedStage();
            return;
        }
        this.mActionTimer.clearTimerMessage();
        if (mayProcessMessageIfCached(address, 71)) {
            return;
        }
        sendCommand(HdmiCecMessageBuilder.buildGiveOsdNameCommand(getSourceAddress(), address));
        addTimer(this.mState, 2000);
    }

    private void startVendorIdStage() {
        Slog.v(TAG, "Start [Vendor Id Stage]:" + this.mDevices.size());
        this.mProcessedDeviceCount = 0;
        this.mState = 4;
        checkAndProceedStage();
    }

    private void queryVendorId(int address) {
        if (!verifyValidLogicalAddress(address)) {
            checkAndProceedStage();
            return;
        }
        this.mActionTimer.clearTimerMessage();
        if (mayProcessMessageIfCached(address, CecMessageType.DEVICE_VENDOR_ID)) {
            return;
        }
        sendCommand(HdmiCecMessageBuilder.buildGiveDeviceVendorIdCommand(getSourceAddress(), address));
        addTimer(this.mState, 2000);
    }

    private void startPowerStatusStage() {
        Slog.v(TAG, "Start [Power Status Stage]:" + this.mDevices.size());
        this.mProcessedDeviceCount = 0;
        this.mState = 6;
        checkAndProceedStage();
    }

    private void queryPowerStatus(int address) {
        if (!verifyValidLogicalAddress(address)) {
            checkAndProceedStage();
            return;
        }
        this.mActionTimer.clearTimerMessage();
        if (mayProcessMessageIfCached(address, 144)) {
            return;
        }
        sendCommand(HdmiCecMessageBuilder.buildGiveDevicePowerStatus(getSourceAddress(), address));
        addTimer(this.mState, 2000);
    }

    private boolean mayProcessMessageIfCached(int address, int opcode) {
        HdmiCecMessage message = getCecMessageCache().getMessage(address, opcode);
        if (message != null) {
            processCommand(message);
            return true;
        }
        return false;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean processCommand(HdmiCecMessage cmd) {
        int i = this.mState;
        if (i == 2) {
            if (cmd.getOpcode() != 132) {
                return false;
            }
            handleReportPhysicalAddress(cmd);
            return true;
        }
        if (i == 3) {
            if (cmd.getOpcode() == 71) {
                handleSetOsdName(cmd);
                return true;
            }
            if (cmd.getOpcode() != 0 || (cmd.getParams()[0] & 255) != 70) {
                return false;
            }
            handleSetOsdName(cmd);
            return true;
        }
        if (i == 4) {
            if (cmd.getOpcode() == 135) {
                handleVendorId(cmd);
                return true;
            }
            if (cmd.getOpcode() != 0 || (cmd.getParams()[0] & 255) != 140) {
                return false;
            }
            handleVendorId(cmd);
            return true;
        }
        if (i != 6) {
            return false;
        }
        if (cmd.getOpcode() == 144) {
            handleReportPowerStatus(cmd);
            return true;
        }
        if (cmd.getOpcode() != 0 || (cmd.getParams()[0] & 255) != 144) {
            return false;
        }
        handleReportPowerStatus(cmd);
        return true;
    }

    private void handleReportPhysicalAddress(HdmiCecMessage cmd) {
        Preconditions.checkState(this.mProcessedDeviceCount < this.mDevices.size());
        DeviceInfo current = this.mDevices.get(this.mProcessedDeviceCount);
        if (current.mLogicalAddress != cmd.getSource()) {
            Slog.w(TAG, "Unmatched address[expected:" + current.mLogicalAddress + ", actual:" + cmd.getSource());
            return;
        }
        byte[] params = cmd.getParams();
        current.mPhysicalAddress = HdmiUtils.twoBytesToInt(params);
        current.mPortId = getPortId(current.mPhysicalAddress);
        current.mDeviceType = params[2] & 255;
        current.mDisplayName = "";
        if (this.mIsTvDevice) {
            tv().updateCecSwitchInfo(current.mLogicalAddress, current.mDeviceType, current.mPhysicalAddress);
        }
        increaseProcessedDeviceCount();
        checkAndProceedStage();
    }

    private int getPortId(int physicalAddress) {
        return this.mIsTvDevice ? tv().getPortId(physicalAddress) : source().getPortId(physicalAddress);
    }

    private void handleSetOsdName(HdmiCecMessage cmd) {
        Preconditions.checkState(this.mProcessedDeviceCount < this.mDevices.size());
        DeviceInfo current = this.mDevices.get(this.mProcessedDeviceCount);
        if (current.mLogicalAddress != cmd.getSource()) {
            Slog.w(TAG, "Unmatched address[expected:" + current.mLogicalAddress + ", actual:" + cmd.getSource());
            return;
        }
        String displayName = "";
        try {
            if (cmd.getOpcode() != 0) {
                displayName = new String(cmd.getParams(), "US-ASCII");
            }
        } catch (UnsupportedEncodingException e) {
            Slog.w(TAG, "Failed to decode display name: " + cmd.toString());
        }
        current.mDisplayName = displayName;
        increaseProcessedDeviceCount();
        checkAndProceedStage();
    }

    private void handleVendorId(HdmiCecMessage cmd) {
        Preconditions.checkState(this.mProcessedDeviceCount < this.mDevices.size());
        DeviceInfo current = this.mDevices.get(this.mProcessedDeviceCount);
        if (current.mLogicalAddress != cmd.getSource()) {
            Slog.w(TAG, "Unmatched address[expected:" + current.mLogicalAddress + ", actual:" + cmd.getSource());
            return;
        }
        if (cmd.getOpcode() != 0) {
            byte[] params = cmd.getParams();
            int vendorId = HdmiUtils.threeBytesToInt(params);
            current.mVendorId = vendorId;
        }
        increaseProcessedDeviceCount();
        checkAndProceedStage();
    }

    private void handleReportPowerStatus(HdmiCecMessage cmd) {
        Preconditions.checkState(this.mProcessedDeviceCount < this.mDevices.size());
        DeviceInfo current = this.mDevices.get(this.mProcessedDeviceCount);
        if (current.mLogicalAddress != cmd.getSource()) {
            Slog.w(TAG, "Unmatched address[expected:" + current.mLogicalAddress + ", actual:" + cmd.getSource());
            return;
        }
        if (cmd.getOpcode() != 0) {
            byte[] params = cmd.getParams();
            int powerStatus = params[0] & 255;
            current.mPowerStatus = powerStatus;
        }
        increaseProcessedDeviceCount();
        checkAndProceedStage();
    }

    private void increaseProcessedDeviceCount() {
        this.mProcessedDeviceCount++;
        this.mTimeoutRetry = 0;
    }

    private void removeDevice(int index) {
        this.mDevices.remove(index);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wrapUpAndFinish() {
        Slog.v(TAG, "---------Wrap up Device Discovery:[" + this.mDevices.size() + "]---------");
        ArrayList<HdmiDeviceInfo> result = new ArrayList<>();
        for (DeviceInfo info : this.mDevices) {
            HdmiDeviceInfo cecDeviceInfo = info.toHdmiDeviceInfo();
            Slog.v(TAG, " DeviceInfo: " + cecDeviceInfo);
            result.add(cecDeviceInfo);
        }
        Slog.v(TAG, "--------------------------------------------");
        this.mCallback.onDeviceDiscoveryDone(result);
        finish();
        if (this.mIsTvDevice) {
            tv().processAllDelayedMessages();
        }
    }

    private void checkAndProceedStage() {
        if (this.mDevices.isEmpty()) {
            wrapUpAndFinish();
            return;
        }
        if (this.mProcessedDeviceCount == this.mDevices.size()) {
            this.mProcessedDeviceCount = 0;
            int i = this.mState;
            if (i == 2) {
                startOsdNameStage();
                return;
            }
            if (i == 3) {
                startVendorIdStage();
                return;
            } else if (i == 4) {
                startPowerStatusStage();
                return;
            } else {
                if (i == 6) {
                    wrapUpAndFinish();
                    return;
                }
                return;
            }
        }
        sendQueryCommand();
    }

    private void sendQueryCommand() {
        int address = this.mDevices.get(this.mProcessedDeviceCount).mLogicalAddress;
        int i = this.mState;
        if (i == 2) {
            queryPhysicalAddress(address);
            return;
        }
        if (i == 3) {
            queryOsdName(address);
            return;
        }
        if (i == 4) {
            queryVendorId(address);
        } else if (i == 5) {
            delayActionWithTimePeriod(this.mDelayPeriod);
        } else if (i == 6) {
            queryPowerStatus(address);
        }
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    void handleTimerEvent(int state) {
        if (this.mState == 0 || this.mState != state) {
            return;
        }
        if (this.mState == 5) {
            startPhysicalAddressStage();
            return;
        }
        int i = this.mTimeoutRetry + 1;
        this.mTimeoutRetry = i;
        if (i < 5) {
            sendQueryCommand();
            return;
        }
        this.mTimeoutRetry = 0;
        Slog.v(TAG, "Timeout[State=" + this.mState + ", Processed=" + this.mProcessedDeviceCount);
        if (this.mState != 6 && this.mState != 3) {
            removeDevice(this.mProcessedDeviceCount);
        } else {
            increaseProcessedDeviceCount();
        }
        checkAndProceedStage();
    }
}
