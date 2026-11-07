package com.android.server.hdmi;

import android.hardware.hdmi.IHdmiControlCallback;
import android.os.PowerManager;
import android.os.SystemProperties;
import android.sysprop.HdmiProperties;
import android.util.Slog;
import com.android.internal.app.LocalePicker;
import com.android.internal.util.IndentingPrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class HdmiCecLocalDevicePlayback extends HdmiCecLocalDeviceSource {
    private static final boolean SET_MENU_LANGUAGE = ((Boolean) HdmiProperties.set_menu_language().orElse(false)).booleanValue();
    private static final String TAG = "HdmiCecLocalDevicePlayback";
    private boolean mAutoTvOff;
    private int mLocalActivePath;
    protected String mPlaybackDeviceActionOnRoutingControl;
    protected String mPowerStateChangeOnActiveSourceLost;
    private ActiveWakeLock mWakeLock;

    private interface ActiveWakeLock {
        void acquire();

        boolean isHeld();

        void release();
    }

    HdmiCecLocalDevicePlayback(HdmiControlService service) {
        super(service, 4);
        this.mLocalActivePath = 0;
        this.mAutoTvOff = this.mService.readBooleanSetting("hdmi_control_auto_device_off_enabled", false);
        this.mService.writeBooleanSetting("hdmi_control_auto_device_off_enabled", this.mAutoTvOff);
        this.mPlaybackDeviceActionOnRoutingControl = SystemProperties.get("ro.hdmi.cec.source.playback_device_action_on_routing_control", "none");
        this.mPowerStateChangeOnActiveSourceLost = SystemProperties.get("ro.hdmi.cec.source.power_state_change_on_active_source_lost", "none");
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected void onAddressAllocated(int logicalAddress, int reason) {
        assertRunOnServiceThread();
        HdmiControlService hdmiControlService = this.mService;
        if (reason == 0) {
            this.mService.setAndBroadcastActiveSource(this.mService.getPhysicalAddress(), getDeviceInfo().getDeviceType(), 15);
        }
        this.mService.sendCecCommand(HdmiCecMessageBuilder.buildReportPhysicalAddressCommand(this.mAddress, this.mService.getPhysicalAddress(), this.mDeviceType));
        this.mService.sendCecCommand(HdmiCecMessageBuilder.buildDeviceVendorIdCommand(this.mAddress, this.mService.getVendorId()));
        buildAndSendSetOsdName(0);
        if (this.mService.audioSystem() == null) {
            this.mService.sendCecCommand(HdmiCecMessageBuilder.buildGiveSystemAudioModeStatus(this.mAddress, 5), new HdmiControlService.SendMessageCallback() { // from class: com.android.server.hdmi.HdmiCecLocalDevicePlayback.1
                @Override // com.android.server.hdmi.HdmiControlService.SendMessageCallback
                public void onSendCompleted(int error) {
                    if (error != 0) {
                        HdmiLogger.debug("AVR did not respond to <Give System Audio Mode Status>", new Object[0]);
                        HdmiCecLocalDevicePlayback.this.mService.setSystemAudioActivated(false);
                    }
                }
            });
        }
        startQueuedActions();
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected int getPreferredAddress() {
        assertRunOnServiceThread();
        return SystemProperties.getInt("persist.sys.hdmi.addr.playback", 15);
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected void setPreferredAddress(int addr) {
        assertRunOnServiceThread();
        this.mService.writeStringSystemProperty("persist.sys.hdmi.addr.playback", String.valueOf(addr));
    }

    @HdmiAnnotations.ServiceThreadOnly
    void queryDisplayStatus(IHdmiControlCallback callback) {
        assertRunOnServiceThread();
        List<DevicePowerStatusAction> actions = getActions(DevicePowerStatusAction.class);
        if (!actions.isEmpty()) {
            Slog.i(TAG, "queryDisplayStatus already in progress");
            actions.get(0).addCallback(callback);
            return;
        }
        DevicePowerStatusAction action = DevicePowerStatusAction.create(this, 0, callback);
        if (action == null) {
            Slog.w(TAG, "Cannot initiate queryDisplayStatus");
            invokeCallback(callback, 5);
        } else {
            addAndStartAction(action);
        }
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDeviceSource, com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    void onHotplug(int portId, boolean connected) {
        assertRunOnServiceThread();
        this.mCecMessageCache.flushAll();
        if (!connected) {
            getWakeLock().release();
        }
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected void onStandby(boolean initiatedByCec, int standbyAction) {
        assertRunOnServiceThread();
        if (!this.mService.isControlEnabled()) {
            return;
        }
        if (this.mIsActiveSource) {
            this.mService.sendCecCommand(HdmiCecMessageBuilder.buildInactiveSource(this.mAddress, this.mService.getPhysicalAddress()));
        }
        boolean wasActiveSource = this.mIsActiveSource;
        this.mService.setActiveSource(-1, 65535);
        if (initiatedByCec || !this.mAutoTvOff || !wasActiveSource) {
            return;
        }
        if (standbyAction == 0) {
            this.mService.sendCecCommand(HdmiCecMessageBuilder.buildStandby(this.mAddress, 0));
        } else if (standbyAction == 1) {
            this.mService.sendCecCommand(HdmiCecMessageBuilder.buildStandby(this.mAddress, 15));
        }
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    void setAutoDeviceOff(boolean enabled) {
        assertRunOnServiceThread();
        this.mAutoTvOff = enabled;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDeviceSource
    @HdmiAnnotations.ServiceThreadOnly
    void setIsActiveSource(boolean on) {
        assertRunOnServiceThread();
        this.mIsActiveSource = on;
        if (on) {
            getWakeLock().acquire();
        } else {
            getWakeLock().release();
        }
    }

    @HdmiAnnotations.ServiceThreadOnly
    private ActiveWakeLock getWakeLock() {
        assertRunOnServiceThread();
        if (this.mWakeLock == null) {
            if (SystemProperties.getBoolean("persist.sys.hdmi.keep_awake", true)) {
                this.mWakeLock = new SystemWakeLock();
            } else {
                this.mWakeLock = new ActiveWakeLock() { // from class: com.android.server.hdmi.HdmiCecLocalDevicePlayback.2
                    @Override // com.android.server.hdmi.HdmiCecLocalDevicePlayback.ActiveWakeLock
                    public void acquire() {
                    }

                    @Override // com.android.server.hdmi.HdmiCecLocalDevicePlayback.ActiveWakeLock
                    public void release() {
                    }

                    @Override // com.android.server.hdmi.HdmiCecLocalDevicePlayback.ActiveWakeLock
                    public boolean isHeld() {
                        return false;
                    }
                };
                HdmiLogger.debug("No wakelock is used to keep the display on.", new Object[0]);
            }
        }
        return this.mWakeLock;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    protected boolean canGoToStandby() {
        return !getWakeLock().isHeld();
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDeviceSource, com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleActiveSource(HdmiCecMessage message) {
        super.handleActiveSource(message);
        if (this.mIsActiveSource) {
            return true;
        }
        String str = this.mPowerStateChangeOnActiveSourceLost;
        byte b = -1;
        int iHashCode = str.hashCode();
        if (iHashCode != -1129124284) {
            if (iHashCode == 3387192 && str.equals("none")) {
                b = 1;
            }
        } else if (str.equals("standby_now")) {
            b = 0;
        }
        if (b == 0) {
            this.mService.standby();
            return true;
        }
        if (b == 1) {
            return true;
        }
        Slog.w(TAG, "Invalid property 'ro.hdmi.cec.source.power_state_change_on_active_source_lost' value: " + this.mPowerStateChangeOnActiveSourceLost);
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleUserControlPressed(HdmiCecMessage message) {
        assertRunOnServiceThread();
        wakeUpIfActiveSource();
        return super.handleUserControlPressed(message);
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDeviceSource
    protected void wakeUpIfActiveSource() {
        if (!this.mIsActiveSource) {
            return;
        }
        if (this.mService.isPowerStandbyOrTransient() || !this.mService.getPowerManager().isScreenOn()) {
            this.mService.wakeUp();
        }
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleSetMenuLanguage(HdmiCecMessage message) {
        assertRunOnServiceThread();
        if (!SET_MENU_LANGUAGE) {
            return false;
        }
        try {
            String iso3Language = new String(message.getParams(), 0, 3, "US-ASCII");
            Locale currentLocale = this.mService.getContext().getResources().getConfiguration().locale;
            if (currentLocale.getISO3Language().equals(iso3Language)) {
                return true;
            }
            List<LocalePicker.LocaleInfo> localeInfos = LocalePicker.getAllAssetLocales(this.mService.getContext(), false);
            for (LocalePicker.LocaleInfo localeInfo : localeInfos) {
                if (localeInfo.getLocale().getISO3Language().equals(iso3Language)) {
                    LocalePicker.updateLocale(localeInfo.getLocale());
                    return true;
                }
            }
            Slog.w(TAG, "Can't handle <Set Menu Language> of " + iso3Language);
            return false;
        } catch (UnsupportedEncodingException e) {
            Slog.w(TAG, "Can't handle <Set Menu Language>", e);
            return false;
        }
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    protected boolean handleSetSystemAudioMode(HdmiCecMessage message) {
        boolean setSystemAudioModeOn;
        if (message.getDestination() == 15 && message.getSource() == 5 && this.mService.audioSystem() == null && this.mService.isSystemAudioActivated() != (setSystemAudioModeOn = HdmiUtils.parseCommandParamSystemAudioStatus(message))) {
            this.mService.setSystemAudioActivated(setSystemAudioModeOn);
        }
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    protected boolean handleSystemAudioModeStatus(HdmiCecMessage message) {
        boolean setSystemAudioModeOn;
        if (message.getDestination() == this.mAddress && message.getSource() == 5 && this.mService.isSystemAudioActivated() != (setSystemAudioModeOn = HdmiUtils.parseCommandParamSystemAudioStatus(message))) {
            this.mService.setSystemAudioActivated(setSystemAudioModeOn);
            return true;
        }
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDeviceSource, com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleRoutingChange(HdmiCecMessage message) {
        assertRunOnServiceThread();
        int physicalAddress = HdmiUtils.twoBytesToInt(message.getParams(), 2);
        handleRoutingChangeAndInformation(physicalAddress, message);
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDeviceSource, com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected boolean handleRoutingInformation(HdmiCecMessage message) {
        assertRunOnServiceThread();
        int physicalAddress = HdmiUtils.twoBytesToInt(message.getParams());
        handleRoutingChangeAndInformation(physicalAddress, message);
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDeviceSource
    protected void handleRoutingChangeAndInformation(int physicalAddress, HdmiCecMessage message) {
        if (physicalAddress != this.mService.getPhysicalAddress()) {
            return;
        }
        String str = this.mPlaybackDeviceActionOnRoutingControl;
        byte b = -1;
        int iHashCode = str.hashCode();
        if (iHashCode != 3387192) {
            if (iHashCode != 155358638) {
                if (iHashCode == 373557045 && str.equals("wake_up_only")) {
                    b = 1;
                }
            } else if (str.equals("wake_up_and_send_active_source")) {
                b = 0;
            }
        } else if (str.equals("none")) {
            b = 2;
        }
        if (b == 0) {
            setAndBroadcastActiveSource(message, physicalAddress);
            return;
        }
        if (b == 1) {
            this.mService.wakeUp();
        } else if (b != 2) {
            Slog.w(TAG, "Invalid property 'ro.hdmi.cec.source.playback_device_action_on_routing_control' value: " + this.mPlaybackDeviceActionOnRoutingControl);
        }
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    protected int findKeyReceiverAddress() {
        return 0;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    protected int findAudioReceiverAddress() {
        if (this.mService.isSystemAudioActivated()) {
            return 5;
        }
        return 0;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    @HdmiAnnotations.ServiceThreadOnly
    protected void disableDevice(boolean initiatedByCec, HdmiCecLocalDevice.PendingActionClearedCallback callback) {
        super.disableDevice(initiatedByCec, callback);
        assertRunOnServiceThread();
        checkIfPendingActionsCleared();
    }

    private void routeToPort(int portId) {
        this.mLocalActivePath = portId;
    }

    protected int getLocalActivePath() {
        return this.mLocalActivePath;
    }

    @Override // com.android.server.hdmi.HdmiCecLocalDevice
    protected void dump(IndentingPrintWriter pw) {
        super.dump(pw);
        pw.println("mIsActiveSource: " + this.mIsActiveSource);
        pw.println("mAutoTvOff:" + this.mAutoTvOff);
    }

    private class SystemWakeLock implements ActiveWakeLock {
        private final PowerManager.WakeLock mWakeLock;

        public SystemWakeLock() {
            PowerManager.WakeLock wakeLockNewWakeLock = HdmiCecLocalDevicePlayback.this.mService.getPowerManager().newWakeLock(1, HdmiCecLocalDevicePlayback.TAG);
            this.mWakeLock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
        }

        @Override // com.android.server.hdmi.HdmiCecLocalDevicePlayback.ActiveWakeLock
        public void acquire() {
            this.mWakeLock.acquire();
            HdmiLogger.debug("active source: %b. Wake lock acquired", Boolean.valueOf(HdmiCecLocalDevicePlayback.this.mIsActiveSource));
        }

        @Override // com.android.server.hdmi.HdmiCecLocalDevicePlayback.ActiveWakeLock
        public void release() {
            this.mWakeLock.release();
            HdmiLogger.debug("Wake lock released", new Object[0]);
        }

        @Override // com.android.server.hdmi.HdmiCecLocalDevicePlayback.ActiveWakeLock
        public boolean isHeld() {
            return this.mWakeLock.isHeld();
        }
    }
}
