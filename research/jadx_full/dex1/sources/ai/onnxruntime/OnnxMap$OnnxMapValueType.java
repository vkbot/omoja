package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum OnnxMap$OnnxMapValueType {
    INVALID(0),
    STRING(1),
    LONG(2),
    FLOAT(3),
    DOUBLE(4);

    private static final OnnxMap$OnnxMapValueType[] values = new OnnxMap$OnnxMapValueType[5];
    final int value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        for (OnnxMap$OnnxMapValueType onnxMap$OnnxMapValueType : values()) {
            values[onnxMap$OnnxMapValueType.value] = onnxMap$OnnxMapValueType;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    OnnxMap$OnnxMapValueType(int i9) {
        this.value = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxMap$OnnxMapValueType mapFromInt(int i9) {
        if (i9 > 0) {
            OnnxMap$OnnxMapValueType[] onnxMap$OnnxMapValueTypeArr = values;
            if (i9 < onnxMap$OnnxMapValueTypeArr.length) {
                return onnxMap$OnnxMapValueTypeArr[i9];
            }
        }
        return INVALID;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxMap$OnnxMapValueType mapFromOnnxJavaType(OnnxJavaType onnxJavaType) {
        int i9 = OnnxMap$1.$SwitchMap$ai$onnxruntime$OnnxJavaType[onnxJavaType.ordinal()];
        if (i9 == 1) {
            return FLOAT;
        }
        if (i9 == 2) {
            return DOUBLE;
        }
        if (i9 != 3) {
            return i9 != 4 ? INVALID : STRING;
        }
        return LONG;
    }
}
