package com.android.server.hdmi;

import android.hardware.hdmi.IHdmiControlCallback;
import android.os.RemoteException;
import android.util.Slog;

/* JADX INFO: loaded from: classes.dex */
final class SystemAudioStatusAction extends HdmiCecFeatureAction {
    private static final int STATE_WAIT_FOR_REPORT_AUDIO_STATUS = 1;
    private static final String TAG = "SystemAudioStatusAction";
    private final int mAvrAddress;
    private final IHdmiControlCallback mCallback;

    SystemAudioStatusAction(HdmiCecLocalDevice source, int avrAddress, IHdmiControlCallback callback) {
        super(source);
        this.mAvrAddress = avrAddress;
        this.mCallback = callback;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean start() {
        this.mState = 1;
        addTimer(this.mState, 2000);
        sendGiveAudioStatus();
        return true;
    }

    private void sendGiveAudioStatus() {
        sendCommand(HdmiCecMessageBuilder.buildGiveAudioStatus(getSourceAddress(), this.mAvrAddress), new HdmiControlService.SendMessageCallback() { // from class: com.android.server.hdmi.SystemAudioStatusAction.1
            @Override // com.android.server.hdmi.HdmiControlService.SendMessageCallback
            public void onSendCompleted(int error) {
                if (error != 0) {
                    SystemAudioStatusAction.this.handleSendGiveAudioStatusFailure();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSendGiveAudioStatusFailure() {
        finishWithCallback(0);
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean processCommand(HdmiCecMessage cmd) {
        if (this.mState != 1 || this.mAvrAddress != cmd.getSource() || cmd.getOpcode() != 122) {
            return false;
        }
        handleReportAudioStatus(cmd);
        return true;
    }

    private void handleReportAudioStatus(HdmiCecMessage cmd) {
        cmd.getParams();
        boolean mute = HdmiUtils.isAudioStatusMute(cmd);
        int volume = HdmiUtils.getAudioStatusVolume(cmd);
        tv().setAudioStatus(mute, volume);
        if (!(tv().isSystemAudioActivated() ^ mute)) {
            sendUserControlPressedAndReleased(this.mAvrAddress, 67);
        }
        finishWithCallback(0);
    }

    private void finishWithCallback(int returnCode) {
        IHdmiControlCallback iHdmiControlCallback = this.mCallback;
        if (iHdmiControlCallback != null) {
            try {
                iHdmiControlCallback.onComplete(returnCode);
            } catch (RemoteException e) {
                Slog.e(TAG, "Failed to invoke callback.", e);
            }
        }
        finish();
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    void handleTimerEvent(int state) {
        if (this.mState != state) {
            return;
        }
        handleSendGiveAudioStatusFailure();
    }
}
