package com.android.server.hdmi;

import android.hardware.tv.cec.V1_0.CecMessageType;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class HdmiCecStandbyModeHandler {
    private final CecMessageHandler mAutoOnHandler;
    private final CecMessageHandler mBypasser;
    private final CecMessageHandler mBystander;
    private final HdmiControlService mService;
    private final HdmiCecLocalDeviceTv mTv;
    private final UserControlProcessedHandler mUserControlProcessedHandler;
    private final SparseArray<CecMessageHandler> mCecMessageHandlers = new SparseArray<>();
    private final CecMessageHandler mDefaultHandler = new Aborter(0);
    private final CecMessageHandler mAborterIncorrectMode = new Aborter(1);
    private final CecMessageHandler mAborterRefused = new Aborter(4);

    private interface CecMessageHandler {
        boolean handle(HdmiCecMessage hdmiCecMessage);
    }

    private static final class Bystander implements CecMessageHandler {
        private Bystander() {
        }

        @Override // com.android.server.hdmi.HdmiCecStandbyModeHandler.CecMessageHandler
        public boolean handle(HdmiCecMessage message) {
            return true;
        }
    }

    private static final class Bypasser implements CecMessageHandler {
        private Bypasser() {
        }

        @Override // com.android.server.hdmi.HdmiCecStandbyModeHandler.CecMessageHandler
        public boolean handle(HdmiCecMessage message) {
            return false;
        }
    }

    private final class Aborter implements CecMessageHandler {
        private final int mReason;

        public Aborter(int reason) {
            this.mReason = reason;
        }

        @Override // com.android.server.hdmi.HdmiCecStandbyModeHandler.CecMessageHandler
        public boolean handle(HdmiCecMessage message) {
            HdmiCecStandbyModeHandler.this.mService.maySendFeatureAbortCommand(message, this.mReason);
            return true;
        }
    }

    private final class AutoOnHandler implements CecMessageHandler {
        private AutoOnHandler() {
        }

        @Override // com.android.server.hdmi.HdmiCecStandbyModeHandler.CecMessageHandler
        public boolean handle(HdmiCecMessage message) {
            if (!HdmiCecStandbyModeHandler.this.mTv.getAutoWakeup()) {
                HdmiCecStandbyModeHandler.this.mAborterRefused.handle(message);
                return true;
            }
            return false;
        }
    }

    private final class UserControlProcessedHandler implements CecMessageHandler {
        private UserControlProcessedHandler() {
        }

        @Override // com.android.server.hdmi.HdmiCecStandbyModeHandler.CecMessageHandler
        public boolean handle(HdmiCecMessage message) {
            if (HdmiCecLocalDevice.isPowerOnOrToggleCommand(message)) {
                return false;
            }
            if (!HdmiCecLocalDevice.isPowerOffOrToggleCommand(message)) {
                return HdmiCecStandbyModeHandler.this.mAborterIncorrectMode.handle(message);
            }
            return true;
        }
    }

    public HdmiCecStandbyModeHandler(HdmiControlService service, HdmiCecLocalDeviceTv tv) {
        this.mAutoOnHandler = new AutoOnHandler();
        this.mBypasser = new Bypasser();
        this.mBystander = new Bystander();
        this.mUserControlProcessedHandler = new UserControlProcessedHandler();
        this.mService = service;
        this.mTv = tv;
        addHandler(4, this.mAutoOnHandler);
        addHandler(13, this.mAutoOnHandler);
        addHandler(CecMessageType.ACTIVE_SOURCE, this.mBystander);
        addHandler(CecMessageType.REQUEST_ACTIVE_SOURCE, this.mBystander);
        addHandler(128, this.mBystander);
        addHandler(CecMessageType.ROUTING_INFORMATION, this.mBystander);
        addHandler(CecMessageType.SET_STREAM_PATH, this.mBystander);
        addHandler(54, this.mBystander);
        addHandler(50, this.mBystander);
        addHandler(CecMessageType.DEVICE_VENDOR_ID, this.mBystander);
        addHandler(69, this.mBystander);
        addHandler(144, this.mBystander);
        addHandler(0, this.mBystander);
        addHandler(CecMessageType.INACTIVE_SOURCE, this.mBystander);
        addHandler(CecMessageType.SYSTEM_AUDIO_MODE_STATUS, this.mBystander);
        addHandler(CecMessageType.REPORT_AUDIO_STATUS, this.mBystander);
        addHandler(10, this.mBystander);
        addHandler(15, this.mAborterIncorrectMode);
        addHandler(CecMessageType.INITIATE_ARC, this.mAborterIncorrectMode);
        addHandler(CecMessageType.TERMINATE_ARC, this.mAborterIncorrectMode);
        addHandler(CecMessageType.GIVE_PHYSICAL_ADDRESS, this.mBypasser);
        addHandler(145, this.mBypasser);
        addHandler(CecMessageType.REPORT_PHYSICAL_ADDRESS, this.mBypasser);
        addHandler(CecMessageType.GIVE_DEVICE_VENDOR_ID, this.mBypasser);
        addHandler(70, this.mBypasser);
        addHandler(71, this.mBypasser);
        addHandler(68, this.mUserControlProcessedHandler);
        addHandler(CecMessageType.GIVE_DEVICE_POWER_STATUS, this.mBypasser);
        addHandler(255, this.mBypasser);
        addHandler(CecMessageType.GET_CEC_VERSION, this.mBypasser);
        addHandler(160, this.mAborterIncorrectMode);
        addHandler(114, this.mAborterIncorrectMode);
    }

    private void addHandler(int opcode, CecMessageHandler handler) {
        this.mCecMessageHandlers.put(opcode, handler);
    }

    boolean handleCommand(HdmiCecMessage message) {
        CecMessageHandler handler = this.mCecMessageHandlers.get(message.getOpcode());
        if (handler != null) {
            return handler.handle(message);
        }
        return this.mDefaultHandler.handle(message);
    }
}
