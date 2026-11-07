package com.android.server.hdmi;

/* JADX INFO: loaded from: classes.dex */
public class ActiveSourceAction extends HdmiCecFeatureAction {
    private static final int STATE_FINISHED = 2;
    private static final int STATE_STARTED = 1;
    private final int mDestination;

    ActiveSourceAction(HdmiCecLocalDevice source, int destination) {
        super(source);
        this.mDestination = destination;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean start() {
        this.mState = 1;
        sendCommand(HdmiCecMessageBuilder.buildActiveSource(getSourceAddress(), source().mService.getPhysicalAddress()));
        if (source().getType() == 4) {
            sendCommand(HdmiCecMessageBuilder.buildReportMenuStatus(getSourceAddress(), this.mDestination, 0));
        }
        this.mState = 2;
        finish();
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean processCommand(HdmiCecMessage cmd) {
        return false;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    void handleTimerEvent(int state) {
    }
}
