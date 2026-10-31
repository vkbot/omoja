package ai.onnxruntime;

import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum OrtLoggingLevel {
    ORT_LOGGING_LEVEL_VERBOSE(0),
    ORT_LOGGING_LEVEL_INFO(1),
    ORT_LOGGING_LEVEL_WARNING(2),
    ORT_LOGGING_LEVEL_ERROR(3),
    ORT_LOGGING_LEVEL_FATAL(4);

    private static final Logger logger = Logger.getLogger(OrtLoggingLevel.class.getName());
    private static final OrtLoggingLevel[] values = new OrtLoggingLevel[5];
    private final int value;

    static {
        for (OrtLoggingLevel ortLoggingLevel : values()) {
            values[ortLoggingLevel.value] = ortLoggingLevel;
        }
    }

    OrtLoggingLevel(int i10) {
        this.value = i10;
    }

    public static OrtLoggingLevel mapFromInt(int i10) {
        if (i10 >= 0) {
            OrtLoggingLevel[] ortLoggingLevelArr = values;
            if (i10 < ortLoggingLevelArr.length) {
                return ortLoggingLevelArr[i10];
            }
        }
        logger.warning("Unknown logging level " + i10 + " setting to ORT_LOGGING_LEVEL_VERBOSE");
        return ORT_LOGGING_LEVEL_VERBOSE;
    }

    public int getValue() {
        return this.value;
    }
}
