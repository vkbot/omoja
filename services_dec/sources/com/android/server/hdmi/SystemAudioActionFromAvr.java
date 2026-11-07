package com.android.server.hdmi;

import android.hardware.hdmi.IHdmiControlCallback;

/* JADX INFO: loaded from: classes.dex */
final class SystemAudioActionFromAvr extends SystemAudioAction {
    SystemAudioActionFromAvr(HdmiCecLocalDevice source, int avrAddress, boolean targetStatus, IHdmiControlCallback callback) {
        super(source, avrAddress, targetStatus, callback);
        HdmiUtils.verifyAddressType(getSourceAddress(), 0);
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean start() {
        removeSystemAudioActionInProgress();
        handleSystemAudioActionFromAvr();
        return true;
    }

    private void handleSystemAudioActionFromAvr() {
        if (this.mTargetAudioStatus == tv().isSystemAudioActivated()) {
            finishWithCallback(0);
            return;
        }
        if (tv().isProhibitMode()) {
            sendCommand(HdmiCecMessageBuilder.buildFeatureAbortCommand(getSourceAddress(), this.mAvrLogicalAddress, 114, 4));
            this.mTargetAudioStatus = false;
            sendSystemAudioModeRequest();
            return;
        }
        removeAction(SystemAudioAutoInitiationAction.class);
        if (this.mTargetAudioStatus) {
            setSystemAudioMode(true);
            startAudioStatusAction();
        } else {
            setSystemAudioMode(false);
            finishWithCallback(0);
        }
    }
}
