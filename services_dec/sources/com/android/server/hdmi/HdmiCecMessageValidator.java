package com.android.server.hdmi;

import android.hardware.tv.cec.V1_0.CecMessageType;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public class HdmiCecMessageValidator {
    private static final int DEST_ALL = 3;
    private static final int DEST_BROADCAST = 2;
    private static final int DEST_DIRECT = 1;
    static final int ERROR_DESTINATION = 2;
    static final int ERROR_PARAMETER = 3;
    static final int ERROR_PARAMETER_SHORT = 4;
    static final int ERROR_SOURCE = 1;
    static final int OK = 0;
    private static final int SRC_UNREGISTERED = 4;
    private static final String TAG = "HdmiCecMessageValidator";
    private final HdmiControlService mService;
    final SparseArray<ValidationInfo> mValidationInfo = new SparseArray<>();

    interface ParameterValidator {
        int isValid(byte[] bArr);
    }

    private static class ValidationInfo {
        public final int addressType;
        public final ParameterValidator parameterValidator;

        public ValidationInfo(ParameterValidator validator, int type) {
            this.parameterValidator = validator;
            this.addressType = type;
        }
    }

    public HdmiCecMessageValidator(HdmiControlService service) {
        this.mService = service;
        PhysicalAddressValidator physicalAddressValidator = new PhysicalAddressValidator();
        addValidationInfo(CecMessageType.ACTIVE_SOURCE, physicalAddressValidator, 6);
        addValidationInfo(CecMessageType.INACTIVE_SOURCE, physicalAddressValidator, 1);
        addValidationInfo(CecMessageType.REPORT_PHYSICAL_ADDRESS, new ReportPhysicalAddressValidator(), 6);
        addValidationInfo(128, new RoutingChangeValidator(), 6);
        addValidationInfo(CecMessageType.ROUTING_INFORMATION, physicalAddressValidator, 6);
        addValidationInfo(CecMessageType.SET_STREAM_PATH, physicalAddressValidator, 2);
        addValidationInfo(112, new SystemAudioModeRequestValidator(), 1);
        FixedLengthValidator noneValidator = new FixedLengthValidator(0);
        addValidationInfo(255, noneValidator, 1);
        addValidationInfo(CecMessageType.GET_CEC_VERSION, noneValidator, 1);
        addValidationInfo(145, noneValidator, 5);
        addValidationInfo(113, noneValidator, 1);
        addValidationInfo(CecMessageType.GIVE_DEVICE_POWER_STATUS, noneValidator, 1);
        addValidationInfo(CecMessageType.GIVE_DEVICE_VENDOR_ID, noneValidator, 5);
        addValidationInfo(70, noneValidator, 1);
        addValidationInfo(CecMessageType.GIVE_PHYSICAL_ADDRESS, noneValidator, 5);
        addValidationInfo(125, noneValidator, 1);
        addValidationInfo(4, noneValidator, 1);
        addValidationInfo(CecMessageType.INITIATE_ARC, noneValidator, 1);
        addValidationInfo(11, noneValidator, 1);
        addValidationInfo(15, noneValidator, 1);
        addValidationInfo(193, noneValidator, 1);
        addValidationInfo(194, noneValidator, 1);
        addValidationInfo(195, noneValidator, 1);
        addValidationInfo(CecMessageType.REQUEST_ARC_TERMINATION, noneValidator, 1);
        addValidationInfo(CecMessageType.REQUEST_ACTIVE_SOURCE, noneValidator, 6);
        addValidationInfo(54, noneValidator, 7);
        addValidationInfo(CecMessageType.TERMINATE_ARC, noneValidator, 1);
        addValidationInfo(13, noneValidator, 1);
        addValidationInfo(6, noneValidator, 1);
        addValidationInfo(5, noneValidator, 1);
        addValidationInfo(69, noneValidator, 1);
        addValidationInfo(CecMessageType.VENDOR_REMOTE_BUTTON_UP, noneValidator, 3);
        FixedLengthValidator oneByteValidator = new FixedLengthValidator(1);
        addValidationInfo(9, new VariableLengthValidator(1, 8), 1);
        addValidationInfo(10, oneByteValidator, 1);
        addValidationInfo(CecMessageType.CEC_VERSION, oneByteValidator, 1);
        addValidationInfo(50, new FixedLengthValidator(3), 2);
        VariableLengthValidator maxLengthValidator = new VariableLengthValidator(0, 14);
        addValidationInfo(CecMessageType.DEVICE_VENDOR_ID, new FixedLengthValidator(3), 2);
        addValidationInfo(CecMessageType.VENDOR_COMMAND, new VariableLengthValidator(1, 14), 5);
        addValidationInfo(160, new VariableLengthValidator(4, 14), 7);
        addValidationInfo(CecMessageType.VENDOR_REMOTE_BUTTON_DOWN, maxLengthValidator, 7);
        addValidationInfo(100, maxLengthValidator, 1);
        addValidationInfo(71, maxLengthValidator, 1);
        addValidationInfo(CecMessageType.MENU_REQUEST, oneByteValidator, 1);
        addValidationInfo(CecMessageType.MENU_STATUS, oneByteValidator, 1);
        addValidationInfo(68, new VariableLengthValidator(1, 2), 1);
        addValidationInfo(144, oneByteValidator, 1);
        addValidationInfo(0, new FixedLengthValidator(2), 1);
        addValidationInfo(CecMessageType.REPORT_AUDIO_STATUS, oneByteValidator, 1);
        addValidationInfo(CecMessageType.REPORT_SHORT_AUDIO_DESCRIPTOR, new FixedLengthValidator(3), 1);
        addValidationInfo(CecMessageType.REQUEST_SHORT_AUDIO_DESCRIPTOR, oneByteValidator, 1);
        addValidationInfo(114, oneByteValidator, 3);
        addValidationInfo(CecMessageType.SYSTEM_AUDIO_MODE_STATUS, oneByteValidator, 1);
        addValidationInfo(CecMessageType.SET_AUDIO_RATE, oneByteValidator, 1);
        addValidationInfo(248, maxLengthValidator, 6);
    }

    private void addValidationInfo(int opcode, ParameterValidator validator, int addrType) {
        this.mValidationInfo.append(opcode, new ValidationInfo(validator, addrType));
    }

    int isValid(HdmiCecMessage message) {
        int opcode = message.getOpcode();
        ValidationInfo info = this.mValidationInfo.get(opcode);
        if (info == null) {
            HdmiLogger.warning("No validation information for the message: " + message, new Object[0]);
            return 0;
        }
        if (message.getSource() == 15 && (info.addressType & 4) == 0) {
            HdmiLogger.warning("Unexpected source: " + message, new Object[0]);
            return 1;
        }
        if (message.getDestination() == 15) {
            if ((info.addressType & 2) == 0) {
                HdmiLogger.warning("Unexpected broadcast message: " + message, new Object[0]);
                return 2;
            }
        } else if ((info.addressType & 1) == 0) {
            HdmiLogger.warning("Unexpected direct message: " + message, new Object[0]);
            return 2;
        }
        int errorCode = info.parameterValidator.isValid(message.getParams());
        if (errorCode == 0) {
            return 0;
        }
        HdmiLogger.warning("Unexpected parameters: " + message, new Object[0]);
        return errorCode;
    }

    private static class FixedLengthValidator implements ParameterValidator {
        private final int mLength;

        public FixedLengthValidator(int length) {
            this.mLength = length;
        }

        @Override // com.android.server.hdmi.HdmiCecMessageValidator.ParameterValidator
        public int isValid(byte[] params) {
            return params.length < this.mLength ? 4 : 0;
        }
    }

    private static class VariableLengthValidator implements ParameterValidator {
        private final int mMaxLength;
        private final int mMinLength;

        public VariableLengthValidator(int minLength, int maxLength) {
            this.mMinLength = minLength;
            this.mMaxLength = maxLength;
        }

        @Override // com.android.server.hdmi.HdmiCecMessageValidator.ParameterValidator
        public int isValid(byte[] params) {
            return params.length < this.mMinLength ? 4 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidPhysicalAddress(byte[] params, int offset) {
        if (!this.mService.isTvDevice()) {
            return true;
        }
        int path = HdmiUtils.twoBytesToInt(params, offset);
        if (path != 65535 && path == this.mService.getPhysicalAddress()) {
            return true;
        }
        int portId = this.mService.pathToPortId(path);
        return portId != -1;
    }

    static boolean isValidType(int type) {
        return type >= 0 && type <= 7 && type != 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int toErrorCode(boolean success) {
        return success ? 0 : 3;
    }

    private class PhysicalAddressValidator implements ParameterValidator {
        private PhysicalAddressValidator() {
        }

        @Override // com.android.server.hdmi.HdmiCecMessageValidator.ParameterValidator
        public int isValid(byte[] params) {
            if (params.length >= 2) {
                return HdmiCecMessageValidator.toErrorCode(HdmiCecMessageValidator.this.isValidPhysicalAddress(params, 0));
            }
            return 4;
        }
    }

    private class SystemAudioModeRequestValidator extends PhysicalAddressValidator {
        private SystemAudioModeRequestValidator() {
            super();
        }

        @Override // com.android.server.hdmi.HdmiCecMessageValidator.PhysicalAddressValidator, com.android.server.hdmi.HdmiCecMessageValidator.ParameterValidator
        public int isValid(byte[] params) {
            if (params.length == 0) {
                return 0;
            }
            return super.isValid(params);
        }
    }

    private class ReportPhysicalAddressValidator implements ParameterValidator {
        private ReportPhysicalAddressValidator() {
        }

        @Override // com.android.server.hdmi.HdmiCecMessageValidator.ParameterValidator
        public int isValid(byte[] params) {
            if (params.length >= 3) {
                boolean z = false;
                if (HdmiCecMessageValidator.this.isValidPhysicalAddress(params, 0) && HdmiCecMessageValidator.isValidType(params[2])) {
                    z = true;
                }
                return HdmiCecMessageValidator.toErrorCode(z);
            }
            return 4;
        }
    }

    private class RoutingChangeValidator implements ParameterValidator {
        private RoutingChangeValidator() {
        }

        @Override // com.android.server.hdmi.HdmiCecMessageValidator.ParameterValidator
        public int isValid(byte[] params) {
            if (params.length < 4) {
                return 4;
            }
            boolean z = false;
            if (HdmiCecMessageValidator.this.isValidPhysicalAddress(params, 0) && HdmiCecMessageValidator.this.isValidPhysicalAddress(params, 2)) {
                z = true;
            }
            return HdmiCecMessageValidator.toErrorCode(z);
        }
    }
}
