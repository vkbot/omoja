package com.android.server.hdmi;

import android.hardware.hdmi.IHdmiControlCallback;

/* JADX INFO: loaded from: classes.dex */
final class SystemAudioActionFromTv extends SystemAudioAction {
    SystemAudioActionFromTv(HdmiCecLocalDevice sourceAddress, int avrAddress, boolean targetStatus, IHdmiControlCallback callback) {
        super(sourceAddress, avrAddress, targetStatus, callback);
        HdmiUtils.verifyAddressType(getSourceAddress(), 0);
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean start() {
        removeSystemAudioActionInProgress();
        sendSystemAudioModeRequest();
        return true;
    }
}
