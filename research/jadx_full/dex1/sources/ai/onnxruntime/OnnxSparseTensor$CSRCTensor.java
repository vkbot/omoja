package ai.onnxruntime;

import java.nio.Buffer;
import java.nio.LongBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OnnxSparseTensor$CSRCTensor extends OnnxSparseTensor$SparseTensor<LongBuffer> {
    private final LongBuffer innerIndices;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxSparseTensor$CSRCTensor(LongBuffer longBuffer, LongBuffer longBuffer2, Buffer buffer, long[] jArr, OnnxJavaType onnxJavaType, long j9) {
        super(longBuffer, new long[]{longBuffer.remaining()}, buffer, new long[]{j9}, jArr, onnxJavaType, j9);
        this.innerIndices = longBuffer2;
        long j10 = jArr[0] + 1;
        if (longBuffer.remaining() != j10) {
            b.k("Outer indices should be equal to the number of rows + 1 in the dense shape, found ", longBuffer.remaining(), ", expected ", j10);
            throw null;
        }
        if (longBuffer2.remaining() == j9) {
            return;
        }
        b.k("Inner indices should be equal to the number of non-zero elements, found ", longBuffer2.remaining(), ", expected ", j9);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxSparseTensor$SparseTensor
    public OnnxJavaType getIndicesType() {
        return OnnxJavaType.INT64;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LongBuffer getInnerIndices() {
        return this.innerIndices;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long[] getInnerIndicesShape() {
        return new long[]{this.innerIndices.remaining()};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxSparseTensor$SparseTensor
    public OnnxSparseTensor$SparseTensorType getSparsityType() {
        return OnnxSparseTensor$SparseTensorType.CSRC;
    }
}
