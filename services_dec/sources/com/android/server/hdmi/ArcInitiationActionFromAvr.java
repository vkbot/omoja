package com.android.server.hdmi;

/* JADX INFO: loaded from: classes.dex */
public class ArcInitiationActionFromAvr extends HdmiCecFeatureAction {
    private static final int STATE_ARC_INITIATED = 2;
    private static final int STATE_WAITING_FOR_INITIATE_ARC_RESPONSE = 1;
    private static final int TIMEOUT_MS = 1000;

    ArcInitiationActionFromAvr(HdmiCecLocalDevice source) {
        super(source);
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean start() {
        audioSystem().setArcStatus(true);
        this.mState = 1;
        addTimer(this.mState, 1000);
        sendInitiateArc();
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean processCommand(HdmiCecMessage cmd) {
        if (this.mState != 1) {
            return false;
        }
        int opcode = cmd.getOpcode();
        if (opcode == 0) {
            if ((cmd.getParams()[0] & 255) != 192) {
                return false;
            }
            audioSystem().setArcStatus(false);
            finish();
            return true;
        }
        if (opcode == 193) {
            this.mState = 2;
            finish();
            return true;
        }
        if (opcode != 194) {
            return false;
        }
        audioSystem().setArcStatus(false);
        finish();
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    void handleTimerEvent(int state) {
        if (this.mState == state && this.mState == 1) {
            handleInitiateArcTimeout();
        }
    }

    protected void sendInitiateArc() {
        sendCommand(HdmiCecMessageBuilder.buildInitiateArc(getSourceAddress(), 0), new HdmiControlService.SendMessageCallback() { // from class: com.android.server.hdmi.-$$Lambda$ArcInitiationActionFromAvr$qaL9xTkYpCTx60O4hdKmzJ-IE6k
            @Override // com.android.server.hdmi.HdmiControlService.SendMessageCallback
            public final void onSendCompleted(int i) {
                this.f$0.lambda$sendInitiateArc$0$ArcInitiationActionFromAvr(i);
            }
        });
    }

    public /* synthetic */ void lambda$sendInitiateArc$0$ArcInitiationActionFromAvr(int result) {
        if (result != 0) {
            audioSystem().setArcStatus(false);
            finish();
        }
    }

    private void handleInitiateArcTimeout() {
        HdmiLogger.debug("handleInitiateArcTimeout", new Object[0]);
        finish();
    }
}
