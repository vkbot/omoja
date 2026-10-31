package ai.onnxruntime;

import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum OrtLoggingLevel {
    ORT_LOGGING_LEVEL_VERBOSE(0),
    ORT_LOGGING_LEVEL_INFO(1),
    ORT_LOGGING_LEVEL_WARNING(2),
    ORT_LOGGING_LEVEL_ERROR(3),
    ORT_LOGGING_LEVEL_FATAL(4);

    private static final Logger logger = Logger.getLogger(OrtLoggingLevel.class.getName());
    private static final OrtLoggingLevel[] values = new OrtLoggingLevel[5];
    private final int value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        for (OrtLoggingLevel ortLoggingLevel : values()) {
            values[ortLoggingLevel.value] = ortLoggingLevel;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    OrtLoggingLevel(int i9) {
        this.value = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OrtLoggingLevel mapFromInt(int i9) {
        if (i9 >= 0) {
            OrtLoggingLevel[] ortLoggingLevelArr = values;
            if (i9 < ortLoggingLevelArr.length) {
                return ortLoggingLevelArr[i9];
            }
        }
        logger.warning("Unknown logging level " + i9 + " setting to ORT_LOGGING_LEVEL_VERBOSE");
        return ORT_LOGGING_LEVEL_VERBOSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getValue() {
        return this.value;
    }
}
