package ai.onnxruntime;

import j1.i;
import java.nio.Buffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class OnnxSparseTensor$SparseTensor<T extends Buffer> {
    private final long[] denseShape;
    final T indices;
    private final long[] indicesShape;
    private final long numNonZero;
    private final OnnxJavaType type;
    final Buffer values;
    private final long[] valuesShape;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxSparseTensor$SparseTensor(T t, long[] jArr, Buffer buffer, long[] jArr2, long[] jArr3, OnnxJavaType onnxJavaType, long j9) {
        this.indices = t;
        this.indicesShape = jArr;
        this.values = buffer;
        this.valuesShape = jArr2;
        this.denseShape = jArr3;
        this.type = onnxJavaType;
        this.numNonZero = j9;
        if (buffer.remaining() == j9) {
            if (onnxJavaType != OnnxJavaType.STRING) {
                return;
            }
            i.k("String SparseTensors are not supported.");
            throw null;
        }
        throw new IllegalArgumentException("Expected numNonZero and data.remaining to be equal, found " + j9 + " and " + buffer.remaining() + " respectively");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long[] getDenseShape() {
        return this.denseShape;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T getIndices() {
        return this.indices;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long[] getIndicesShape() {
        return this.indicesShape;
    }

    public abstract OnnxJavaType getIndicesType();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNumNonZeroElements() {
        return this.numNonZero;
    }

    public abstract OnnxSparseTensor$SparseTensorType getSparsityType();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxJavaType getType() {
        return this.type;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Buffer getValues() {
        return this.values;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long[] getValuesShape() {
        return this.valuesShape;
    }
}
