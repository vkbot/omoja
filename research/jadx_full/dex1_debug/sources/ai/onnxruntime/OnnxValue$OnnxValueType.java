package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum OnnxValue$OnnxValueType {
    ONNX_TYPE_UNKNOWN(0),
    ONNX_TYPE_TENSOR(1),
    ONNX_TYPE_SEQUENCE(2),
    ONNX_TYPE_MAP(3),
    ONNX_TYPE_OPAQUE(4),
    ONNX_TYPE_SPARSETENSOR(5),
    ONNX_TYPE_OPTIONAL(6);

    public final int value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    OnnxValue$OnnxValueType(int i9) {
        this.value = i9;
    }
}
