package com.android.server.hdmi;

import android.hardware.hdmi.HdmiDeviceInfo;
import android.hardware.hdmi.IHdmiControlCallback;
import android.hardware.input.InputManager;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Slog;
import android.view.KeyEvent;
import com.android.internal.util.IndentingPrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class HdmiCecLocalDevice {
    private static final int DEVICE_CLEANUP_TIMEOUT = 5000;
    private static final int FOLLOWER_SAFETY_TIMEOUT = 550;
    private static final int MSG_DISABLE_DEVICE_TIMEOUT = 1;
    private static final int MSG_USER_CONTROL_RELEASE_TIMEOUT = 2;
    private static final String TAG = "HdmiCecLocalDevice";
    private int mActiveRoutingPath;
    protected HdmiDeviceInfo mDeviceInfo;
    protected final int mDeviceType;
    protected final Object mLock;
    protected PendingActionClearedCallback mPendingActionClearedCallback;
    protected int mPreferredAddress;
    protected final HdmiControlService mService;
    protected int mLastKeycode = -1;
    protected int mLastKeyRepeatCount = 0;
    protected final HdmiCecMessageCache mCecMessageCache = new HdmiCecMessageCache();
    final ArrayList<HdmiCecFeatureAction> mActions = new ArrayList<>();
    private final Handler mHandler = new Handler() { // from class: com.android.server.hdmi.HdmiCecLocalDevice.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                HdmiCecLocalDevice.this.handleDisableDeviceTimeout();
            } else if (i == 2) {
                HdmiCecLocalDevice.this.handleUserControlReleased();
            }
        }
    };
    protected int mAddress = 15;

    interface PendingActionClearedCallback {
        void onCleared(HdmiCecLocalDevice hdmiCecLocalDevice);
    }

    protected abstract int getPreferredAddress();

    protected abstract void onAddressAllocated(int i, int i2);

    protected abstract void setPreferredAddress(int i);

    static class ActiveSource {
        int logicalAddress;
        int physicalAddress;

        public ActiveSource() {
            invalidate();
        }

        public ActiveSource(int logical, int physical) {
            this.logicalAddress = logical;
            this.physicalAddress = physical;
        }

        public static ActiveSource of(ActiveSource source) {
            return new ActiveSource(source.logicalAddress, source.physicalAddress);
        }

        public static ActiveSource of(int logical, int physical) {
            return new ActiveSource(logical, physical);
        }

        public boolean isValid() {
            return HdmiUtils.isValidAddress(this.logicalAddress);
        }

        public void invalidate() {
            this.logicalAddress = -1;
            this.physicalAddress = 65535;
        }

        public boolean equals(int logical, int physical) {
            return this.logicalAddress == logical && this.physicalAddress == physical;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ActiveSource)) {
                return false;
            }
            ActiveSource that = (ActiveSource) obj;
            return that.logicalAddress == this.logicalAddress && that.physicalAddress == this.physicalAddress;
        }

        public int hashCode() {
            return (this.logicalAddress * 29) + this.physicalAddress;
        }

        public String toString() {
            String logicalAddressString;
            StringBuffer s = new StringBuffer();
            int i = this.logicalAddress;
            if (i == -1) {
                logicalAddressString = "invalid";
            } else {
                logicalAddressString = String.format("0x%02x", Integer.valueOf(i));
            }
            s.append("(");
            s.append(logicalAddressString);
            int i2 = this.physicalAddress;
            String physicalAddressString = i2 != 65535 ? String.format("0x%04x", Integer.valueOf(i2)) : "invalid";
            s.append(", ");
            s.append(physicalAddressString);
            s.append(")");
            return s.toString();
        }
    }

    protected HdmiCecLocalDevice(HdmiControlService service, int deviceType) {
        this.mService = service;
        this.mDeviceType = deviceType;
        this.mLock = service.getServiceLock();
    }

    static HdmiCecLocalDevice create(HdmiControlService service, int deviceType) {
        if (deviceType == 0) {
            return new HdmiCecLocalDeviceTv(service);
        }
        if (deviceType == 4) {
            return new HdmiCecLocalDevicePlayback(service);
        }
        if (deviceType == 5) {
            return new HdmiCecLocalDeviceAudioSystem(service);
        }
        return null;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void init() {
        assertRunOnServiceThread();
        this.mPreferredAddress = getPreferredAddress();
        this.mPendingActionClearedCallback = null;
    }

    protected boolean isInputReady(int deviceId) {
        return true;
    }

    protected boolean canGoToStandby() {
        return true;
    }

    @HdmiAnnotations.ServiceThreadOnly
    boolean dispatchMessage(HdmiCecMessage message) {
        assertRunOnServiceThread();
        int dest = message.getDestination();
        if (dest != this.mAddress && dest != 15) {
            return false;
        }
        this.mCecMessageCache.cacheMessage(message);
        return onMessage(message);
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected final boolean onMessage(HdmiCecMessage message) {
        assertRunOnServiceThread();
        if (dispatchMessageToAction(message)) {
            return true;
        }
        int opcode = message.getOpcode();
        if (opcode == 4) {
            return handleImageViewOn(message);
        }
        if (opcode == 10) {
            return handleRecordStatus(message);
        }
        if (opcode == 13) {
            return handleTextViewOn(message);
        }
        if (opcode == 15) {
            return handleRecordTvScreen(message);
        }
        if (opcode == 50) {
            return handleSetMenuLanguage(message);
        }
        if (opcode == 122) {
            return handleReportAudioStatus(message);
        }
        if (opcode == 137) {
            return handleVendorCommand(message);
        }
        if (opcode == 157) {
            return handleInactiveSource(message);
        }
        if (opcode == 53) {
            return handleTimerStatus(message);
        }
        if (opcode == 54) {
            return handleStandby(message);
        }
        if (opcode == 125) {
            return handleGiveSystemAudioModeStatus(message);
        }
        if (opcode == 126) {
            return handleSystemAudioModeStatus(message);
        }
        if (opcode == 159) {
            return handleGetCecVersion(message);
        }
        if (opcode == 160) {
            return handleVendorCommandWithId(message);
        }
        if (opcode == 163) {
            return handleReportShortAudioDescriptor(message);
        }
        if (opcode != 164) {
            switch (opcode) {
                case 67:
                    return handleTimerClearedStatus(message);
                case 68:
                    return handleUserControlPressed(message);
                case 69:
                    return handleUserControlReleased();
                case 70:
                    return handleGiveOsdName(message);
                case 71:
                    return handleSetOsdName(message);
                default:
                    switch (opcode) {
                        case 112:
                            return handleSystemAudioModeRequest(message);
                        case 113:
                            return handleGiveAudioStatus(message);
                        case 114:
                            return handleSetSystemAudioMode(message);
                        default:
                            switch (opcode) {
                                case 128:
                                    return handleRoutingChange(message);
                                case CecMessageType.ROUTING_INFORMATION /* 129 */:
                                    return handleRoutingInformation(message);
                                case CecMessageType.ACTIVE_SOURCE /* 130 */:
                                    return handleActiveSource(message);
                                case CecMessageType.GIVE_PHYSICAL_ADDRESS /* 131 */:
                                    return handleGivePhysicalAddress(null);
                                case CecMessageType.REPORT_PHYSICAL_ADDRESS /* 132 */:
                                    return handleReportPhysicalAddress(message);
                                case CecMessageType.REQUEST_ACTIVE_SOURCE /* 133 */:
                                    return handleRequestActiveSource(message);
                                case CecMessageType.SET_STREAM_PATH /* 134 */:
                                    return handleSetStreamPath(message);
                                default:
                                    switch (opcode) {
                                        case CecMessageType.GIVE_DEVICE_VENDOR_ID /* 140 */:
                                            return handleGiveDeviceVendorId(null);
                                        case CecMessageType.MENU_REQUEST /* 141 */:
                                            return handleMenuRequest(message);
                                        case CecMessageType.MENU_STATUS /* 142 */:
                                            return handleMenuStatus(message);
                                        case CecMessageType.GIVE_DEVICE_POWER_STATUS /* 143 */:
                                            return handleGiveDevicePowerStatus(message);
                                        case 144:
                                            return handleReportPowerStatus(message);
                                        case 145:
                                            return handleGetMenuLanguage(message);
                                        default:
                                            switch (opcode) {
                                                case CecMessageType.INITIATE_ARC /* 192 */:
                                                    return handleInitiateArc(message);
                                                case 193:
                                                    return handleReportArcInitiate(message);
                                                case 194:
                                                    return handleReportArcTermination(message);
                                                case 195:
                                                    return handleRequestArcInitiate(message);
                                                case CecMessageType.REQUEST_ARC_TERMINATION /* 196 */:
                                                    return handleRequestArcTermination(message);
                                                case CecMessageType.TERMINATE_ARC /* 197 */:
                                                    return handleTerminateArc(message);
                                                default:
                                                    return false;
                                            }
                                    }
                            }
                    }
            }
        }
        return handleRequestShortAudioDescriptor(message);
    }

    @HdmiAnnotations.ServiceThreadOnly
    private boolean dispatchMessageToAction(HdmiCecMessage message) {
        assertRunOnServiceThread();
        boolean processed = false;
        for (HdmiCecFeatureAction action : new ArrayList(this.mActions)) {
            boolean result = action.processCommand(message);
            processed = processed || result;
        }
        return processed;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleGivePhysicalAddress(HdmiControlService.SendMessageCallback callback) {
        assertRunOnServiceThread();
        int physicalAddress = this.mService.getPhysicalAddress();
        HdmiCecMessage cecMessage = HdmiCecMessageBuilder.buildReportPhysicalAddressCommand(this.mAddress, physicalAddress, this.mDeviceType);
        this.mService.sendCecCommand(cecMessage, callback);
        return true;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleGiveDeviceVendorId(HdmiControlService.SendMessageCallback callback) {
        assertRunOnServiceThread();
        int vendorId = this.mService.getVendorId();
        HdmiCecMessage cecMessage = HdmiCecMessageBuilder.buildDeviceVendorIdCommand(this.mAddress, vendorId);
        this.mService.sendCecCommand(cecMessage, callback);
        return true;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleGetCecVersion(HdmiCecMessage message) {
        assertRunOnServiceThread();
        int version = this.mService.getCecVersion();
        HdmiCecMessage cecMessage = HdmiCecMessageBuilder.buildCecVersion(message.getDestination(), message.getSource(), version);
        this.mService.sendCecCommand(cecMessage);
        return true;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleActiveSource(HdmiCecMessage message) {
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleInactiveSource(HdmiCecMessage message) {
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleRequestActiveSource(HdmiCecMessage message) {
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleGetMenuLanguage(HdmiCecMessage message) {
        assertRunOnServiceThread();
        Slog.w(TAG, "Only TV can handle <Get Menu Language>:" + message.toString());
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleSetMenuLanguage(HdmiCecMessage message) {
        assertRunOnServiceThread();
        Slog.w(TAG, "Only Playback device can handle <Set Menu Language>:" + message.toString());
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleGiveOsdName(HdmiCecMessage message) {
        assertRunOnServiceThread();
        buildAndSendSetOsdName(message.getSource());
        return true;
    }

    protected void buildAndSendSetOsdName(int dest) {
        final HdmiCecMessage cecMessage = HdmiCecMessageBuilder.buildSetOsdNameCommand(this.mAddress, dest, this.mDeviceInfo.getDisplayName());
        if (cecMessage != null) {
            this.mService.sendCecCommand(cecMessage, new HdmiControlService.SendMessageCallback() { // from class: com.android.server.hdmi.HdmiCecLocalDevice.2
                @Override // com.android.server.hdmi.HdmiControlService.SendMessageCallback
                public void onSendCompleted(int error) {
                    if (error != 0) {
                        HdmiLogger.debug("Failed to send cec command " + cecMessage, new Object[0]);
                    }
                }
            });
            return;
        }
        Slog.w(TAG, "Failed to build <Get Osd Name>:" + this.mDeviceInfo.getDisplayName());
    }

    protected boolean handleRoutingChange(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleRoutingInformation(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleReportPhysicalAddress(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleSystemAudioModeStatus(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleGiveSystemAudioModeStatus(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleSetSystemAudioMode(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleSystemAudioModeRequest(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleTerminateArc(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleInitiateArc(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleRequestArcInitiate(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleRequestArcTermination(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleReportArcInitiate(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleReportArcTermination(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleReportAudioStatus(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleGiveAudioStatus(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleRequestShortAudioDescriptor(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleReportShortAudioDescriptor(HdmiCecMessage message) {
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleStandby(HdmiCecMessage message) {
        assertRunOnServiceThread();
        if (this.mService.isControlEnabled() && !this.mService.isProhibitMode() && this.mService.isPowerOnOrTransient()) {
            this.mService.standby();
            return true;
        }
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleUserControlPressed(HdmiCecMessage message) {
        assertRunOnServiceThread();
        this.mHandler.removeMessages(2);
        if (this.mService.isPowerOnOrTransient() && isPowerOffOrToggleCommand(message)) {
            this.mService.standby();
            return true;
        }
        if (this.mService.isPowerStandbyOrTransient() && isPowerOnOrToggleCommand(message)) {
            this.mService.wakeUp();
            return true;
        }
        if (!this.mService.isHdmiCecVolumeControlEnabled() && isVolumeOrMuteCommand(message)) {
            return false;
        }
        long downTime = SystemClock.uptimeMillis();
        byte[] params = message.getParams();
        int keycode = HdmiCecKeycode.cecKeycodeAndParamsToAndroidKey(params);
        int keyRepeatCount = 0;
        int i = this.mLastKeycode;
        if (i != -1) {
            if (keycode == i) {
                keyRepeatCount = this.mLastKeyRepeatCount + 1;
            } else {
                injectKeyEvent(downTime, 1, i, 0);
            }
        }
        this.mLastKeycode = keycode;
        this.mLastKeyRepeatCount = keyRepeatCount;
        if (keycode == -1) {
            return false;
        }
        injectKeyEvent(downTime, 0, keycode, keyRepeatCount);
        Handler handler = this.mHandler;
        handler.sendMessageDelayed(Message.obtain(handler, 2), 550L);
        return true;
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleUserControlReleased() {
        assertRunOnServiceThread();
        this.mHandler.removeMessages(2);
        this.mLastKeyRepeatCount = 0;
        if (this.mLastKeycode == -1) {
            return false;
        }
        long upTime = SystemClock.uptimeMillis();
        injectKeyEvent(upTime, 1, this.mLastKeycode, 0);
        this.mLastKeycode = -1;
        return true;
    }

    static void injectKeyEvent(long time, int action, int keycode, int repeat) {
        KeyEvent keyEvent = KeyEvent.obtain(time, time, action, keycode, repeat, 0, -1, 0, 8, 33554433, null);
        InputManager.getInstance().injectInputEvent(keyEvent, 0);
        keyEvent.recycle();
    }

    static boolean isPowerOnOrToggleCommand(HdmiCecMessage message) {
        byte[] params = message.getParams();
        if (message.getOpcode() == 68) {
            return params[0] == 64 || params[0] == 109 || params[0] == 107;
        }
        return false;
    }

    static boolean isPowerOffOrToggleCommand(HdmiCecMessage message) {
        byte[] params = message.getParams();
        if (message.getOpcode() == 68) {
            return params[0] == 108 || params[0] == 107;
        }
        return false;
    }

    static boolean isVolumeOrMuteCommand(HdmiCecMessage message) {
        byte[] params = message.getParams();
        if (message.getOpcode() == 68) {
            return params[0] == 66 || params[0] == 65 || params[0] == 67 || params[0] == 101 || params[0] == 102;
        }
        return false;
    }

    protected boolean handleTextViewOn(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleImageViewOn(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleSetStreamPath(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleGiveDevicePowerStatus(HdmiCecMessage message) {
        this.mService.sendCecCommand(HdmiCecMessageBuilder.buildReportPowerStatus(this.mAddress, message.getSource(), this.mService.getPowerStatus()));
        return true;
    }

    protected boolean handleMenuRequest(HdmiCecMessage message) {
        this.mService.sendCecCommand(HdmiCecMessageBuilder.buildReportMenuStatus(this.mAddress, message.getSource(), 0));
        return true;
    }

    protected boolean handleMenuStatus(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleVendorCommand(HdmiCecMessage message) {
        if (!this.mService.invokeVendorCommandListenersOnReceived(this.mDeviceType, message.getSource(), message.getDestination(), message.getParams(), false)) {
            this.mService.maySendFeatureAbortCommand(message, 1);
        }
        return true;
    }

    protected boolean handleVendorCommandWithId(HdmiCecMessage message) {
        byte[] params = message.getParams();
        int vendorId = HdmiUtils.threeBytesToInt(params);
        if (vendorId == this.mService.getVendorId()) {
            if (!this.mService.invokeVendorCommandListenersOnReceived(this.mDeviceType, message.getSource(), message.getDestination(), params, true)) {
                this.mService.maySendFeatureAbortCommand(message, 1);
            }
        } else if (message.getDestination() != 15 && message.getSource() != 15) {
            Slog.v(TAG, "Wrong direct vendor command. Replying with <Feature Abort>");
            this.mService.maySendFeatureAbortCommand(message, 0);
        } else {
            Slog.v(TAG, "Wrong broadcast vendor command. Ignoring");
        }
        return true;
    }

    protected void sendStandby(int deviceId) {
    }

    protected boolean handleSetOsdName(HdmiCecMessage message) {
        return true;
    }

    protected boolean handleRecordTvScreen(HdmiCecMessage message) {
        this.mService.maySendFeatureAbortCommand(message, 2);
        return true;
    }

    protected boolean handleTimerClearedStatus(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleReportPowerStatus(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleTimerStatus(HdmiCecMessage message) {
        return false;
    }

    protected boolean handleRecordStatus(HdmiCecMessage message) {
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    final void handleAddressAllocated(int logicalAddress, int reason) {
        assertRunOnServiceThread();
        this.mPreferredAddress = logicalAddress;
        this.mAddress = logicalAddress;
        onAddressAllocated(logicalAddress, reason);
        setPreferredAddress(logicalAddress);
    }

    int getType() {
        return this.mDeviceType;
    }

    HdmiDeviceInfo getDeviceInfo() {
        HdmiDeviceInfo hdmiDeviceInfo;
        synchronized (this.mLock) {
            hdmiDeviceInfo = this.mDeviceInfo;
        }
        return hdmiDeviceInfo;
    }

    void setDeviceInfo(HdmiDeviceInfo info) {
        synchronized (this.mLock) {
            this.mDeviceInfo = info;
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    boolean isAddressOf(int addr) {
        assertRunOnServiceThread();
        return addr == this.mAddress;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void clearAddress() {
        assertRunOnServiceThread();
        this.mAddress = 15;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void addAndStartAction(HdmiCecFeatureAction action) {
        assertRunOnServiceThread();
        this.mActions.add(action);
        if (this.mService.isPowerStandby() || !this.mService.isAddressAllocated()) {
            Slog.i(TAG, "Not ready to start action. Queued for deferred start:" + action);
            return;
        }
        action.start();
    }

    @HdmiAnnotations.ServiceThreadOnly
    void startQueuedActions() {
        assertRunOnServiceThread();
        for (HdmiCecFeatureAction action : new ArrayList(this.mActions)) {
            if (!action.started()) {
                Slog.i(TAG, "Starting queued action:" + action);
                action.start();
            }
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    <T extends HdmiCecFeatureAction> boolean hasAction(Class<T> clazz) {
        assertRunOnServiceThread();
        for (HdmiCecFeatureAction action : this.mActions) {
            if (action.getClass().equals(clazz)) {
                return true;
            }
        }
        return false;
    }

    @HdmiAnnotations.ServiceThreadOnly
    <T extends HdmiCecFeatureAction> List<T> getActions(Class<T> cls) {
        assertRunOnServiceThread();
        ArrayList arrayList = (List<T>) Collections.emptyList();
        for (HdmiCecFeatureAction hdmiCecFeatureAction : this.mActions) {
            if (hdmiCecFeatureAction.getClass().equals(cls)) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                arrayList.add(hdmiCecFeatureAction);
            }
        }
        return (List<T>) arrayList;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void removeAction(HdmiCecFeatureAction action) {
        assertRunOnServiceThread();
        action.finish(false);
        this.mActions.remove(action);
        checkIfPendingActionsCleared();
    }

    @HdmiAnnotations.ServiceThreadOnly
    <T extends HdmiCecFeatureAction> void removeAction(Class<T> clazz) {
        assertRunOnServiceThread();
        removeActionExcept(clazz, null);
    }

    @HdmiAnnotations.ServiceThreadOnly
    <T extends HdmiCecFeatureAction> void removeActionExcept(Class<T> clazz, HdmiCecFeatureAction exception) {
        assertRunOnServiceThread();
        Iterator<HdmiCecFeatureAction> iter = this.mActions.iterator();
        while (iter.hasNext()) {
            HdmiCecFeatureAction action = iter.next();
            if (action != exception && action.getClass().equals(clazz)) {
                action.finish(false);
                iter.remove();
            }
        }
        checkIfPendingActionsCleared();
    }

    protected void checkIfPendingActionsCleared() {
        if (this.mActions.isEmpty() && this.mPendingActionClearedCallback != null) {
            PendingActionClearedCallback callback = this.mPendingActionClearedCallback;
            this.mPendingActionClearedCallback = null;
            callback.onCleared(this);
        }
    }

    protected void assertRunOnServiceThread() {
        if (Looper.myLooper() != this.mService.getServiceLooper()) {
            throw new IllegalStateException("Should run on service thread.");
        }
    }

    void setAutoDeviceOff(boolean enabled) {
    }

    void onHotplug(int portId, boolean connected) {
    }

    final HdmiControlService getService() {
        return this.mService;
    }

    @HdmiAnnotations.ServiceThreadOnly
    final boolean isConnectedToArcPort(int path) {
        assertRunOnServiceThread();
        return this.mService.isConnectedToArcPort(path);
    }

    ActiveSource getActiveSource() {
        return this.mService.getLocalActiveSource();
    }

    void setActiveSource(ActiveSource newActive) {
        setActiveSource(newActive.logicalAddress, newActive.physicalAddress);
    }

    void setActiveSource(HdmiDeviceInfo info) {
        setActiveSource(info.getLogicalAddress(), info.getPhysicalAddress());
    }

    void setActiveSource(int logicalAddress, int physicalAddress) {
        this.mService.setActiveSource(logicalAddress, physicalAddress);
        this.mService.setLastInputForMhl(-1);
    }

    int getActivePath() {
        int i;
        synchronized (this.mLock) {
            i = this.mActiveRoutingPath;
        }
        return i;
    }

    void setActivePath(int path) {
        synchronized (this.mLock) {
            this.mActiveRoutingPath = path;
        }
        this.mService.setActivePortId(pathToPortId(path));
    }

    int getActivePortId() {
        int iPathToPortId;
        synchronized (this.mLock) {
            iPathToPortId = this.mService.pathToPortId(this.mActiveRoutingPath);
        }
        return iPathToPortId;
    }

    void setActivePortId(int portId) {
        setActivePath(this.mService.portIdToPath(portId));
    }

    int getPortId(int physicalAddress) {
        return this.mService.pathToPortId(physicalAddress);
    }

    @HdmiAnnotations.ServiceThreadOnly
    HdmiCecMessageCache getCecMessageCache() {
        assertRunOnServiceThread();
        return this.mCecMessageCache;
    }

    @HdmiAnnotations.ServiceThreadOnly
    int pathToPortId(int newPath) {
        assertRunOnServiceThread();
        return this.mService.pathToPortId(newPath);
    }

    protected void onStandby(boolean initiatedByCec, int standbyAction) {
    }

    protected void disableDevice(boolean initiatedByCec, final PendingActionClearedCallback originalCallback) {
        this.mPendingActionClearedCallback = new PendingActionClearedCallback() { // from class: com.android.server.hdmi.HdmiCecLocalDevice.3
            @Override // com.android.server.hdmi.HdmiCecLocalDevice.PendingActionClearedCallback
            public void onCleared(HdmiCecLocalDevice device) {
                HdmiCecLocalDevice.this.mHandler.removeMessages(1);
                originalCallback.onCleared(device);
            }
        };
        Handler handler = this.mHandler;
        handler.sendMessageDelayed(Message.obtain(handler, 1), 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @HdmiAnnotations.ServiceThreadOnly
    public void handleDisableDeviceTimeout() {
        assertRunOnServiceThread();
        Iterator<HdmiCecFeatureAction> iter = this.mActions.iterator();
        while (iter.hasNext()) {
            HdmiCecFeatureAction action = iter.next();
            action.finish(false);
            iter.remove();
        }
        PendingActionClearedCallback pendingActionClearedCallback = this.mPendingActionClearedCallback;
        if (pendingActionClearedCallback != null) {
            pendingActionClearedCallback.onCleared(this);
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected void sendKeyEvent(int keyCode, boolean isPressed) {
        assertRunOnServiceThread();
        if (!HdmiCecKeycode.isSupportedKeycode(keyCode)) {
            Slog.w(TAG, "Unsupported key: " + keyCode);
            return;
        }
        List<SendKeyAction> action = getActions(SendKeyAction.class);
        int logicalAddress = findKeyReceiverAddress();
        if (logicalAddress == -1 || logicalAddress == this.mAddress) {
            Slog.w(TAG, "Discard key event: " + keyCode + ", pressed:" + isPressed + ", receiverAddr=" + logicalAddress);
            return;
        }
        if (!action.isEmpty()) {
            action.get(0).processKeyEvent(keyCode, isPressed);
        } else if (isPressed) {
            addAndStartAction(new SendKeyAction(this, logicalAddress, keyCode));
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    protected void sendVolumeKeyEvent(int keyCode, boolean isPressed) {
        assertRunOnServiceThread();
        if (!this.mService.isHdmiCecVolumeControlEnabled()) {
            return;
        }
        if (!HdmiCecKeycode.isVolumeKeycode(keyCode)) {
            Slog.w(TAG, "Not a volume key: " + keyCode);
            return;
        }
        List<SendKeyAction> action = getActions(SendKeyAction.class);
        int logicalAddress = findAudioReceiverAddress();
        if (logicalAddress == -1 || logicalAddress == this.mAddress) {
            Slog.w(TAG, "Discard volume key event: " + keyCode + ", pressed:" + isPressed + ", receiverAddr=" + logicalAddress);
            return;
        }
        if (!action.isEmpty()) {
            action.get(0).processKeyEvent(keyCode, isPressed);
        } else if (isPressed) {
            addAndStartAction(new SendKeyAction(this, logicalAddress, keyCode));
        }
    }

    protected int findKeyReceiverAddress() {
        Slog.w(TAG, "findKeyReceiverAddress is not implemented");
        return -1;
    }

    protected int findAudioReceiverAddress() {
        Slog.w(TAG, "findAudioReceiverAddress is not implemented");
        return -1;
    }

    @HdmiAnnotations.ServiceThreadOnly
    void invokeCallback(IHdmiControlCallback callback, int result) {
        assertRunOnServiceThread();
        if (callback == null) {
            return;
        }
        try {
            callback.onComplete(result);
        } catch (RemoteException e) {
            Slog.e(TAG, "Invoking callback failed:" + e);
        }
    }

    void sendUserControlPressedAndReleased(int targetAddress, int cecKeycode) {
        this.mService.sendCecCommand(HdmiCecMessageBuilder.buildUserControlPressed(this.mAddress, targetAddress, cecKeycode));
        this.mService.sendCecCommand(HdmiCecMessageBuilder.buildUserControlReleased(this.mAddress, targetAddress));
    }

    protected void dump(IndentingPrintWriter pw) {
        pw.println("mDeviceType: " + this.mDeviceType);
        pw.println("mAddress: " + this.mAddress);
        pw.println("mPreferredAddress: " + this.mPreferredAddress);
        pw.println("mDeviceInfo: " + this.mDeviceInfo);
        pw.println("mActiveSource: " + getActiveSource());
        pw.println(String.format("mActiveRoutingPath: 0x%04x", Integer.valueOf(this.mActiveRoutingPath)));
    }

    protected int getActivePathOnSwitchFromActivePortId(int activePortId) {
        int myPhysicalAddress = this.mService.getPhysicalAddress();
        int finalMask = activePortId << 8;
        for (int mask = 3840; mask > 15 && (myPhysicalAddress & mask) != 0; mask >>= 4) {
            finalMask >>= 4;
        }
        return finalMask | myPhysicalAddress;
    }
}
