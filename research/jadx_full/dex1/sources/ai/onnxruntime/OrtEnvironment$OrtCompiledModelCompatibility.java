package ai.onnxruntime;

import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum OrtEnvironment$OrtCompiledModelCompatibility {
    EP_NOT_APPLICABLE(0),
    EP_SUPPORTED_OPTIMAL(1),
    EP_SUPPORTED_PREFER_RECOMPILATION(2),
    EP_UNSUPPORTED(3);

    private static final Logger logger = Logger.getLogger(OrtEnvironment$OrtCompiledModelCompatibility.class.getName());
    private static final OrtEnvironment$OrtCompiledModelCompatibility[] values = new OrtEnvironment$OrtCompiledModelCompatibility[4];
    private final int value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        for (OrtEnvironment$OrtCompiledModelCompatibility ortEnvironment$OrtCompiledModelCompatibility : values()) {
            values[ortEnvironment$OrtCompiledModelCompatibility.value] = ortEnvironment$OrtCompiledModelCompatibility;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    OrtEnvironment$OrtCompiledModelCompatibility(int i9) {
        this.value = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OrtEnvironment$OrtCompiledModelCompatibility mapFromInt(int i9) {
        if (i9 >= 0) {
            OrtEnvironment$OrtCompiledModelCompatibility[] ortEnvironment$OrtCompiledModelCompatibilityArr = values;
            if (i9 < ortEnvironment$OrtCompiledModelCompatibilityArr.length) {
                return ortEnvironment$OrtCompiledModelCompatibilityArr[i9];
            }
        }
        logger.warning("Unknown model compatibility " + i9 + " setting to EP_UNSUPPORTED");
        return EP_UNSUPPORTED;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getValue() {
        return this.value;
    }
}
