package ai.onnxruntime;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INT8' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OnnxJavaType {
    private static final /* synthetic */ OnnxJavaType[] $VALUES;
    public static final OnnxJavaType BFLOAT16;
    public static final OnnxJavaType BOOL;
    public static final OnnxJavaType FLOAT16;
    public static final OnnxJavaType INT16;
    public static final OnnxJavaType INT32;
    public static final OnnxJavaType INT64;
    public static final OnnxJavaType INT8;
    public static final OnnxJavaType STRING;
    public static final OnnxJavaType UINT8;
    public static final OnnxJavaType UNKNOWN;
    private static final OnnxJavaType[] values;
    public final Class<?> clazz;
    public final int size;
    public final int value;
    public static final OnnxJavaType FLOAT = new OnnxJavaType("FLOAT", 0, 1, Float.TYPE, 4);
    public static final OnnxJavaType DOUBLE = new OnnxJavaType("DOUBLE", 1, 2, Double.TYPE, 8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ OnnxJavaType[] $values() {
        return new OnnxJavaType[]{FLOAT, DOUBLE, INT8, INT16, INT32, INT64, BOOL, STRING, UINT8, FLOAT16, BFLOAT16, UNKNOWN};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Class cls = Byte.TYPE;
        INT8 = new OnnxJavaType("INT8", 2, 3, cls, 1);
        Class cls2 = Short.TYPE;
        INT16 = new OnnxJavaType("INT16", 3, 4, cls2, 2);
        INT32 = new OnnxJavaType("INT32", 4, 5, Integer.TYPE, 4);
        INT64 = new OnnxJavaType("INT64", 5, 6, Long.TYPE, 8);
        BOOL = new OnnxJavaType("BOOL", 6, 7, Boolean.TYPE, 1);
        STRING = new OnnxJavaType("STRING", 7, 8, String.class, 4);
        UINT8 = new OnnxJavaType("UINT8", 8, 9, cls, 1);
        FLOAT16 = new OnnxJavaType("FLOAT16", 9, 10, cls2, 2);
        BFLOAT16 = new OnnxJavaType("BFLOAT16", 10, 11, cls2, 2);
        UNKNOWN = new OnnxJavaType("UNKNOWN", 11, 0, Object.class, 0);
        $VALUES = $values();
        OnnxJavaType[] onnxJavaTypeArrValues = values();
        values = new OnnxJavaType[onnxJavaTypeArrValues.length];
        for (OnnxJavaType onnxJavaType : onnxJavaTypeArrValues) {
            values[onnxJavaType.value] = onnxJavaType;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private OnnxJavaType(String str, int i9, int i10, Class cls, int i11) {
        super(str, i9);
        this.value = i10;
        this.clazz = cls;
        this.size = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxJavaType mapFromClass(Class<?> cls) {
        if (cls.equals(Byte.TYPE) || cls.equals(Byte.class)) {
            return INT8;
        }
        if (cls.equals(Short.TYPE) || cls.equals(Short.class)) {
            return INT16;
        }
        if (cls.equals(Integer.TYPE) || cls.equals(Integer.class)) {
            return INT32;
        }
        if (cls.equals(Long.TYPE) || cls.equals(Long.class)) {
            return INT64;
        }
        if (cls.equals(Float.TYPE) || cls.equals(Float.class)) {
            return FLOAT;
        }
        if (cls.equals(Double.TYPE) || cls.equals(Double.class)) {
            return DOUBLE;
        }
        if (cls.equals(Boolean.TYPE) || cls.equals(Boolean.class)) {
            return BOOL;
        }
        return cls.equals(String.class) ? STRING : UNKNOWN;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxJavaType mapFromInt(int i9) {
        if (i9 > 0) {
            OnnxJavaType[] onnxJavaTypeArr = values;
            if (i9 < onnxJavaTypeArr.length) {
                return onnxJavaTypeArr[i9];
            }
        }
        return UNKNOWN;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxJavaType mapFromOnnxTensorType(TensorInfo$OnnxTensorType tensorInfo$OnnxTensorType) {
        switch (OnnxJavaType$1.$SwitchMap$ai$onnxruntime$TensorInfo$OnnxTensorType[tensorInfo$OnnxTensorType.ordinal()]) {
            case 1:
                return UINT8;
            case 2:
                return INT8;
            case 3:
            case 4:
                return INT16;
            case 5:
            case 6:
                return INT32;
            case 7:
            case 8:
                return INT64;
            case 9:
                return FLOAT16;
            case 10:
                return BFLOAT16;
            case 11:
                return FLOAT;
            case 12:
                return DOUBLE;
            case 13:
                return STRING;
            case 14:
                return BOOL;
            default:
                return UNKNOWN;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxJavaType valueOf(String str) {
        return (OnnxJavaType) Enum.valueOf(OnnxJavaType.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxJavaType[] values() {
        return (OnnxJavaType[]) $VALUES.clone();
    }
}
