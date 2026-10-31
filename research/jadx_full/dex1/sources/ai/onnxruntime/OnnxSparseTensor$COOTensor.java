package ai.onnxruntime;

import java.nio.Buffer;
import java.nio.LongBuffer;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OnnxSparseTensor$COOTensor extends OnnxSparseTensor$SparseTensor<LongBuffer> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxSparseTensor$COOTensor(LongBuffer longBuffer, long[] jArr, Buffer buffer, long[] jArr2, OnnxJavaType onnxJavaType, long j9) {
        super(longBuffer, jArr, buffer, new long[]{j9}, jArr2, onnxJavaType, j9);
        if (jArr.length > 2 || jArr.length == 0 || jArr[0] != j9) {
            androidx.navigation.b.o(Arrays.toString(jArr), "Invalid indices shape, expected [numNonZero, dimension] or [numNonZero] found ");
            throw null;
        }
        long jElementCount = OrtUtil.elementCount(jArr);
        if (jElementCount != longBuffer.remaining()) {
            b.l("Unexpected number of indices found in buffer, expected ", jElementCount, " found ", longBuffer.remaining());
            throw null;
        }
        if (buffer.remaining() == j9) {
            return;
        }
        b.k("Expected data.remaining() - ", buffer.remaining(), " to equal numNonZero - ", j9);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxSparseTensor$SparseTensor
    public OnnxJavaType getIndicesType() {
        return OnnxJavaType.INT64;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxSparseTensor$SparseTensor
    public OnnxSparseTensor$SparseTensorType getSparsityType() {
        return OnnxSparseTensor$SparseTensorType.COO;
    }
}
