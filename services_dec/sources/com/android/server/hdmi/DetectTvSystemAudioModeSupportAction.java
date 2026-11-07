package com.android.server.hdmi;

import com.android.server.display.color.DisplayTransformManager;

/* JADX INFO: loaded from: classes.dex */
public class DetectTvSystemAudioModeSupportAction extends HdmiCecFeatureAction {
    static final int MAX_RETRY_COUNT = 5;
    private static final int STATE_WAITING_FOR_FEATURE_ABORT = 1;
    private static final int STATE_WAITING_FOR_SET_SAM = 2;
    private HdmiCecLocalDeviceAudioSystem.TvSystemAudioModeSupportedCallback mCallback;
    private int mSendSetSystemAudioModeRetryCount;

    DetectTvSystemAudioModeSupportAction(HdmiCecLocalDevice source, HdmiCecLocalDeviceAudioSystem.TvSystemAudioModeSupportedCallback callback) {
        super(source);
        this.mSendSetSystemAudioModeRetryCount = 0;
        this.mCallback = callback;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean start() {
        this.mState = 1;
        addTimer(this.mState, 2000);
        sendSetSystemAudioMode();
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    boolean processCommand(HdmiCecMessage cmd) {
        if (cmd.getOpcode() != 0 || this.mState != 1 || HdmiUtils.getAbortFeatureOpcode(cmd) != 114) {
            return false;
        }
        if (HdmiUtils.getAbortReason(cmd) == 1) {
            this.mActionTimer.clearTimerMessage();
            this.mState = 2;
            addTimer(this.mState, DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR);
        } else {
            finishAction(false);
        }
        return true;
    }

    @Override // com.android.server.hdmi.HdmiCecFeatureAction
    void handleTimerEvent(int state) {
        if (this.mState != state) {
            return;
        }
        int i = this.mState;
        if (i == 1) {
            finishAction(true);
            return;
        }
        if (i == 2) {
            int i2 = this.mSendSetSystemAudioModeRetryCount + 1;
            this.mSendSetSystemAudioModeRetryCount = i2;
            if (i2 < 5) {
                this.mState = 1;
                addTimer(this.mState, 2000);
                sendSetSystemAudioMode();
                return;
            }
            finishAction(false);
        }
    }

    protected void sendSetSystemAudioMode() {
        sendCommand(HdmiCecMessageBuilder.buildSetSystemAudioMode(getSourceAddress(), 0, true), new HdmiControlService.SendMessageCallback() { // from class: com.android.server.hdmi.-$$Lambda$DetectTvSystemAudioModeSupportAction$9ZB9uijssEfI695RNRL5G3nnAaM
            @Override // com.android.server.hdmi.HdmiControlService.SendMessageCallback
            public final void onSendCompleted(int i) {
                this.f$0.lambda$sendSetSystemAudioMode$0$DetectTvSystemAudioModeSupportAction(i);
            }
        });
    }

    public /* synthetic */ void lambda$sendSetSystemAudioMode$0$DetectTvSystemAudioModeSupportAction(int result) {
        if (result != 0) {
            finishAction(false);
        }
    }

    private void finishAction(boolean supported) {
        this.mCallback.onResult(supported);
        audioSystem().setTvSystemAudioModeSupport(supported);
        finish();
    }
}
