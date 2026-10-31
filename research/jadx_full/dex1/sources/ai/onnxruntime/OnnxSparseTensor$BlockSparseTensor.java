package ai.onnxruntime;

import java.nio.Buffer;
import java.nio.IntBuffer;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OnnxSparseTensor$BlockSparseTensor extends OnnxSparseTensor$SparseTensor<IntBuffer> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxSparseTensor$BlockSparseTensor(IntBuffer intBuffer, long[] jArr, Buffer buffer, long[] jArr2, long[] jArr3, OnnxJavaType onnxJavaType, long j9) {
        super(intBuffer, jArr, buffer, jArr2, jArr3, onnxJavaType, j9);
        if (OrtUtil.elementCount(jArr2) != j9) {
            throw new IllegalArgumentException("Expected " + j9 + " entries in the data shape, found " + Arrays.toString(jArr2));
        }
        if (j9 != buffer.remaining()) {
            b.l("Expected ", j9, " elements in the data buffer, found ", buffer.remaining());
            throw null;
        }
        if (OrtUtil.elementCount(jArr) != intBuffer.remaining()) {
            b.l("Expected ", OrtUtil.elementCount(jArr), " elements in the indices buffer, found ", intBuffer.remaining());
            throw null;
        }
        if (jArr2.length < 3) {
            androidx.navigation.b.o(Arrays.toString(jArr2), "Expected [numBlocks, blockSize, blockSize] or larger, but data shape was ");
            throw null;
        }
        if (jArr.length >= 2) {
            return;
        }
        androidx.navigation.b.o(Arrays.toString(jArr), "Expected [numBlocks, coordinates] or larger, but indices shape was ");
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxSparseTensor$SparseTensor
    public OnnxJavaType getIndicesType() {
        return OnnxJavaType.INT32;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxSparseTensor$SparseTensor
    public OnnxSparseTensor$SparseTensorType getSparsityType() {
        return OnnxSparseTensor$SparseTensorType.BLOCK_SPARSE;
    }
}
