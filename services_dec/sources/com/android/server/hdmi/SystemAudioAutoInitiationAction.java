package com.android.server.hdmi;

/* JADX INFO: loaded from: classes.dex */
final class SystemAudioAutoInitiationAction extends HdmiCecFeatureAction {
    private static final int STATE_WAITING_FOR_SYSTEM_AUDIO_MODE_STATUS = 1;
    private final int mAvrAddress;

    SystemAudioAutoInitiationAction(HdmiCecLocalDevice source, int avrAddress) {
        super(source);
        this.mAvrAddress = avrAddress;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean start() {
        this.mState = 1;
        addTimer(this.mState, 2000);
        sendGiveSystemAudioModeStatus();
        return true;
    }

    private void sendGiveSystemAudioModeStatus() {
        sendCommand(HdmiCecMessageBuilder.buildGiveSystemAudioModeStatus(getSourceAddress(), this.mAvrAddress), new HdmiControlService.SendMessageCallback() { // from class: com.android.server.hdmi.SystemAudioAutoInitiationAction.1
            @Override // com.android.server.hdmi.HdmiControlService.SendMessageCallback
            public void onSendCompleted(int error) {
                if (error != 0) {
                    SystemAudioAutoInitiationAction.this.handleSystemAudioModeStatusTimeout();
                }
            }
        });
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean processCommand(HdmiCecMessage cmd) {
        if (this.mState != 1 || this.mAvrAddress != cmd.getSource() || cmd.getOpcode() != 126) {
            return false;
        }
        handleSystemAudioModeStatusMessage(HdmiUtils.parseCommandParamSystemAudioStatus(cmd));
        return true;
    }

    private void handleSystemAudioModeStatusMessage(boolean currentSystemAudioMode) {
        if (!canChangeSystemAudio()) {
            HdmiLogger.debug("Cannot change system audio mode in auto initiation action.", new Object[0]);
            finish();
            return;
        }
        boolean targetSystemAudioMode = tv().isSystemAudioControlFeatureEnabled();
        if (currentSystemAudioMode != targetSystemAudioMode) {
            addAndStartAction(new SystemAudioActionFromTv(tv(), this.mAvrAddress, targetSystemAudioMode, null));
        } else {
            tv().setSystemAudioMode(targetSystemAudioMode);
        }
        finish();
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    void handleTimerEvent(int state) {
        if (this.mState == state && this.mState == 1) {
            handleSystemAudioModeStatusTimeout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSystemAudioModeStatusTimeout() {
        if (!canChangeSystemAudio()) {
            HdmiLogger.debug("Cannot change system audio mode in auto initiation action.", new Object[0]);
            finish();
        } else {
            addAndStartAction(new SystemAudioActionFromTv(tv(), this.mAvrAddress, tv().isSystemAudioControlFeatureEnabled(), null));
            finish();
        }
    }

    private boolean canChangeSystemAudio() {
        return (tv().hasAction(SystemAudioActionFromTv.class) || tv().hasAction(SystemAudioActionFromAvr.class)) ? false : true;
    }
}
