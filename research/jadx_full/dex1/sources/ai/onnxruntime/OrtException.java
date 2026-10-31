package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OrtException extends Exception {
    private static final long serialVersionUID = 1;
    private final OrtException$OrtErrorCode errorCode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtException(OrtException$OrtErrorCode ortException$OrtErrorCode, String str) {
        super("Error code - " + ortException$OrtErrorCode + " - message: " + str);
        this.errorCode = ortException$OrtErrorCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtException$OrtErrorCode getCode() {
        return this.errorCode;
    }

    public OrtException(int i9, String str) {
        this(OrtException$OrtErrorCode.mapFromInt(i9), str);
    }

    public OrtException(String str) {
        super(str);
        this.errorCode = OrtException$OrtErrorCode.ORT_JAVA_UNKNOWN;
    }
}
