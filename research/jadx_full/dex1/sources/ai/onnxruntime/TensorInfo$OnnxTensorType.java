package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum TensorInfo$OnnxTensorType {
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED(0),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8(1),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8(2),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT16(3),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16(4),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT32(5),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32(6),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT64(7),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64(8),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16(9),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT(10),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE(11),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING(12),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL(13),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX64(14),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX128(15),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16(16),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FN(17),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FNUZ(18),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2(19),
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2FNUZ(20);

    private static final TensorInfo$OnnxTensorType[] values = new TensorInfo$OnnxTensorType[21];
    public final int value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        for (TensorInfo$OnnxTensorType tensorInfo$OnnxTensorType : values()) {
            values[tensorInfo$OnnxTensorType.value] = tensorInfo$OnnxTensorType;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    TensorInfo$OnnxTensorType(int i9) {
        this.value = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static TensorInfo$OnnxTensorType mapFromInt(int i9) {
        if (i9 > 0) {
            TensorInfo$OnnxTensorType[] tensorInfo$OnnxTensorTypeArr = values;
            if (i9 < tensorInfo$OnnxTensorTypeArr.length) {
                return tensorInfo$OnnxTensorTypeArr[i9];
            }
        }
        return ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static TensorInfo$OnnxTensorType mapFromJavaType(OnnxJavaType onnxJavaType) {
        switch (TensorInfo$1.$SwitchMap$ai$onnxruntime$OnnxJavaType[onnxJavaType.ordinal()]) {
            case 1:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT;
            case 2:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE;
            case 3:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8;
            case 4:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8;
            case 5:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16;
            case 6:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32;
            case 7:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64;
            case 8:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL;
            case 9:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING;
            case 10:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16;
            case 11:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16;
            default:
                return ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED;
        }
    }
}
