package com.android.server.hdmi;

/* JADX INFO: loaded from: classes.dex */
final class RequestArcInitiationAction extends RequestArcAction {
    private static final String TAG = "RequestArcInitiationAction";

    RequestArcInitiationAction(HdmiCecLocalDevice source, int avrAddress) {
        super(source, avrAddress);
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean start() {
        this.mState = 1;
        addTimer(this.mState, 2000);
        HdmiCecMessage command = HdmiCecMessageBuilder.buildRequestArcInitiation(getSourceAddress(), this.mAvrAddress);
        sendCommand(command, new HdmiControlService.SendMessageCallback() { // from class: com.android.server.hdmi.RequestArcInitiationAction.1
            @Override // com.android.server.hdmi.HdmiControlService.SendMessageCallback
            public void onSendCompleted(int error) {
                if (error != 0) {
                    RequestArcInitiationAction.this.tv().setArcStatus(false);
                    RequestArcInitiationAction.this.finish();
                }
            }
        });
        return true;
    }
}
