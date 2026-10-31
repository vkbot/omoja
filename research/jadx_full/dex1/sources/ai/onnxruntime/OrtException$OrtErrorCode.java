package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum OrtException$OrtErrorCode {
    ORT_JAVA_UNKNOWN(-1),
    ORT_OK(0),
    ORT_FAIL(1),
    ORT_INVALID_ARGUMENT(2),
    ORT_NO_SUCHFILE(3),
    ORT_NO_MODEL(4),
    ORT_ENGINE_ERROR(5),
    ORT_RUNTIME_EXCEPTION(6),
    ORT_INVALID_PROTOBUF(7),
    ORT_MODEL_LOADED(8),
    ORT_NOT_IMPLEMENTED(9),
    ORT_INVALID_GRAPH(10),
    ORT_EP_FAIL(11),
    ORT_MODEL_LOAD_CANCELED(12),
    ORT_MODEL_REQUIRES_COMPILATION(13),
    ORT_NOT_FOUND(14),
    ORT_DEVICE_RESET(15);

    private static final OrtException$OrtErrorCode[] values = new OrtException$OrtErrorCode[values().length - 1];
    private final int value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        for (OrtException$OrtErrorCode ortException$OrtErrorCode : values()) {
            if (ortException$OrtErrorCode != ORT_JAVA_UNKNOWN) {
                values[ortException$OrtErrorCode.value] = ortException$OrtErrorCode;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    OrtException$OrtErrorCode(int i9) {
        this.value = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OrtException$OrtErrorCode mapFromInt(int i9) {
        if (i9 >= 0) {
            OrtException$OrtErrorCode[] ortException$OrtErrorCodeArr = values;
            if (i9 < ortException$OrtErrorCodeArr.length) {
                return ortException$OrtErrorCodeArr[i9];
            }
        }
        return ORT_JAVA_UNKNOWN;
    }
}
