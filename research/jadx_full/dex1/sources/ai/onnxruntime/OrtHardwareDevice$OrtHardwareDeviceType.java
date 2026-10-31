package ai.onnxruntime;

import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum OrtHardwareDevice$OrtHardwareDeviceType {
    CPU(0),
    GPU(1),
    NPU(2);

    private static final Logger logger = Logger.getLogger(OrtHardwareDevice$OrtHardwareDeviceType.class.getName());
    private static final OrtHardwareDevice$OrtHardwareDeviceType[] values = new OrtHardwareDevice$OrtHardwareDeviceType[3];
    private final int value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        for (OrtHardwareDevice$OrtHardwareDeviceType ortHardwareDevice$OrtHardwareDeviceType : values()) {
            values[ortHardwareDevice$OrtHardwareDeviceType.value] = ortHardwareDevice$OrtHardwareDeviceType;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    OrtHardwareDevice$OrtHardwareDeviceType(int i9) {
        this.value = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OrtHardwareDevice$OrtHardwareDeviceType mapFromInt(int i9) {
        if (i9 >= 0) {
            OrtHardwareDevice$OrtHardwareDeviceType[] ortHardwareDevice$OrtHardwareDeviceTypeArr = values;
            if (i9 < ortHardwareDevice$OrtHardwareDeviceTypeArr.length) {
                return ortHardwareDevice$OrtHardwareDeviceTypeArr[i9];
            }
        }
        logger.warning("Unknown device type '" + i9 + "' setting to CPU");
        return CPU;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getValue() {
        return this.value;
    }
}
