package ai.onnxruntime;

import java.lang.reflect.Array;
import java.nio.Buffer;
import java.util.Arrays;
import java.util.stream.Collectors;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TensorInfo implements ValueInfo {
    public static final int MAX_DIMENSIONS = 8;
    final String[] dimensionNames;
    private final boolean hasNames;
    final long numElements;
    public final TensorInfo$OnnxTensorType onnxType;
    final long[] shape;
    public final OnnxJavaType type;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TensorInfo(long[] jArr, String[] strArr, int i9) {
        this.shape = jArr;
        this.dimensionNames = strArr;
        boolean z8 = false;
        for (String str : strArr) {
            if (!str.isEmpty()) {
                z8 = true;
                break;
            }
        }
        this.hasNames = z8;
        TensorInfo$OnnxTensorType tensorInfo$OnnxTensorTypeMapFromInt = TensorInfo$OnnxTensorType.mapFromInt(i9);
        this.onnxType = tensorInfo$OnnxTensorTypeMapFromInt;
        this.type = OnnxJavaType.mapFromOnnxTensorType(tensorInfo$OnnxTensorTypeMapFromInt);
        this.numElements = elementCount(jArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String a(String str) {
        return lambda$toString$0(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static TensorInfo constructFromBuffer(Buffer buffer, long[] jArr, OnnxJavaType onnxJavaType) throws OrtException {
        if (onnxJavaType == OnnxJavaType.STRING || onnxJavaType == OnnxJavaType.UNKNOWN) {
            throw new OrtException("Cannot create a tensor from a string or unknown buffer.");
        }
        long jElementCount = OrtUtil.elementCount(jArr);
        long jRemaining = buffer.remaining();
        if (jElementCount == jRemaining || jElementCount == jRemaining / ((long) onnxJavaType.size)) {
            return new TensorInfo(Arrays.copyOf(jArr, jArr.length), onnxJavaType, TensorInfo$OnnxTensorType.mapFromJavaType(onnxJavaType));
        }
        throw new OrtException("Shape " + Arrays.toString(jArr) + ", requires " + jElementCount + " elements but the buffer has " + jRemaining + " elements.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static TensorInfo constructFromJavaArray(Object obj) throws OrtException {
        Class<?> componentType = obj.getClass();
        if (!componentType.isArray()) {
            OnnxJavaType onnxJavaTypeMapFromClass = OnnxJavaType.mapFromClass(componentType);
            if (onnxJavaTypeMapFromClass != OnnxJavaType.UNKNOWN) {
                return new TensorInfo(new long[0], onnxJavaTypeMapFromClass, TensorInfo$OnnxTensorType.mapFromJavaType(onnxJavaTypeMapFromClass));
            }
            throw new OrtException("Cannot convert " + componentType + " to a OnnxTensor.");
        }
        int i9 = 0;
        while (componentType.isArray()) {
            componentType = componentType.getComponentType();
            i9++;
        }
        if (!componentType.isPrimitive() && !componentType.equals(String.class)) {
            throw new OrtException(a.j(componentType, "Cannot create an OnnxTensor from a base type of "));
        }
        if (i9 > 8) {
            throw new OrtException(a.f(i9, "Cannot create an OnnxTensor with more than 8 dimensions. Found ", " dimensions."));
        }
        OnnxJavaType onnxJavaTypeMapFromClass2 = OnnxJavaType.mapFromClass(componentType);
        long[] jArr = new long[i9];
        extractShape(jArr, 0, obj);
        return new TensorInfo(jArr, onnxJavaTypeMapFromClass2, TensorInfo$OnnxTensorType.mapFromJavaType(onnxJavaTypeMapFromClass2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends Buffer> TensorInfo constructFromSparseTensor(OnnxSparseTensor$SparseTensor<T> onnxSparseTensor$SparseTensor) throws OrtException {
        long[] denseShape = onnxSparseTensor$SparseTensor.getDenseShape();
        long jElementCount = OrtUtil.elementCount(denseShape);
        long jRemaining = onnxSparseTensor$SparseTensor.getValues().remaining();
        if (jElementCount >= jRemaining) {
            return new TensorInfo(Arrays.copyOf(denseShape, denseShape.length), onnxSparseTensor$SparseTensor.getType(), TensorInfo$OnnxTensorType.mapFromJavaType(onnxSparseTensor$SparseTensor.getType()));
        }
        throw new OrtException("Shape " + Arrays.toString(denseShape) + ", has at most " + jElementCount + " elements but the buffer has " + jRemaining + " elements.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static long elementCount(long[] jArr) {
        long j9 = 1;
        for (long j10 : jArr) {
            j9 *= j10;
        }
        return j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void extractShape(long[] jArr, int i9, Object obj) throws OrtException {
        if (jArr.length != i9) {
            int length = Array.getLength(obj);
            if (length == 0) {
                throw new OrtException(a.f(i9, "Supplied array has a zero dimension at ", ", all dimensions must be positive"));
            }
            long j9 = jArr[i9];
            if (j9 == 0) {
                jArr[i9] = length;
            } else if (j9 != length) {
                throw new OrtException("Supplied array is ragged, expected " + jArr[i9] + ", found " + length);
            }
            for (int i10 = 0; i10 < length; i10++) {
                extractShape(jArr, i9 + 1, Array.get(obj, i10));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ String lambda$toString$0(String str) {
        return str.isEmpty() ? "\"\"" : str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean validateShape() {
        return OrtUtil.validateShape(this.shape);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getDimensionNames() {
        String[] strArr = this.dimensionNames;
        return (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNumElements() {
        return this.numElements;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long[] getShape() {
        long[] jArr = this.shape;
        return Arrays.copyOf(jArr, jArr.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isScalar() {
        return this.shape.length == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object makeCarrier() throws OrtException {
        if (!validateShape() && this.numElements != 0) {
            throw new OrtException("This tensor is not representable in Java, it's too big - shape = " + Arrays.toString(this.shape));
        }
        switch (TensorInfo$1.$SwitchMap$ai$onnxruntime$OnnxJavaType[this.type.ordinal()]) {
            case 1:
            case 10:
            case 11:
                return OrtUtil.newFloatArray(this.shape);
            case 2:
                return OrtUtil.newDoubleArray(this.shape);
            case 3:
            case 4:
                return OrtUtil.newByteArray(this.shape);
            case 5:
                return OrtUtil.newShortArray(this.shape);
            case 6:
                return OrtUtil.newIntArray(this.shape);
            case 7:
                return OrtUtil.newLongArray(this.shape);
            case 8:
                return OrtUtil.newBooleanArray(this.shape);
            case 9:
                return new String[(int) OrtUtil.elementCount(this.shape)];
            case 12:
                throw new OrtException("Can't construct a carrier for an invalid type.");
            default:
                throw new OrtException("Unsupported type - " + this.type);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        String strP = "TensorInfo(javaType=" + this.type.toString() + ",onnxType=" + this.onnxType.toString() + ",shape=" + Arrays.toString(this.shape);
        if (this.hasNames) {
            strP = a.p(a.w(strP, ",dimNames=["), (String) Arrays.stream(this.dimensionNames).map(new d(0)).collect(Collectors.joining(",")), "]");
        }
        return strP.concat(")");
    }

    public TensorInfo(long[] jArr, OnnxJavaType onnxJavaType, TensorInfo$OnnxTensorType tensorInfo$OnnxTensorType) {
        this.shape = jArr;
        String[] strArr = new String[jArr.length];
        this.dimensionNames = strArr;
        Arrays.fill(strArr, "");
        this.hasNames = false;
        this.type = onnxJavaType;
        this.onnxType = tensorInfo$OnnxTensorType;
        this.numElements = elementCount(jArr);
    }
}
