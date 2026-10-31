package ai.onnxruntime;

import ai.onnxruntime.platform.Fp16Conversions;
import j1.i;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OnnxSparseTensor extends OnnxTensorLike {
    private static final Logger logger = Logger.getLogger(OnnxSparseTensor.class.getName());
    private final Buffer indices;
    private final LongBuffer innerIndices;
    private final OnnxSparseTensor$SparseTensorType sparseTensorType;
    private final Buffer values;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxSparseTensor(long j9, long j10, int i9, TensorInfo tensorInfo) {
        this(j9, j10, OnnxSparseTensor$SparseTensorType.mapFromInt(i9), tensorInfo, null, null, null);
    }

    private native void close(long j9, long j10);

    private static native long createCSRCSparseTensorFromBuffer(long j9, long j10, Buffer buffer, int i9, long j11, Buffer buffer2, int i10, long j12, Buffer buffer3, int i11, long[] jArr, long[] jArr2, int i12);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends Buffer> OnnxSparseTensor createSparseTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, OnnxSparseTensor$SparseTensor<T> onnxSparseTensor$SparseTensor) throws OrtException {
        if (ortAllocator.isClosed()) {
            i.l("Trying to create an OnnxSparseTensor on a closed OrtAllocator.");
            return null;
        }
        TensorInfo tensorInfoConstructFromSparseTensor = TensorInfo.constructFromSparseTensor(onnxSparseTensor$SparseTensor);
        OnnxJavaType indicesType = onnxSparseTensor$SparseTensor.getIndicesType();
        OrtUtil$BufferTuple ortUtil$BufferTuplePrepareBuffer = OrtUtil.prepareBuffer(onnxSparseTensor$SparseTensor.getIndices(), indicesType);
        OrtUtil$BufferTuple ortUtil$BufferTuplePrepareBuffer2 = OrtUtil.prepareBuffer(onnxSparseTensor$SparseTensor.getValues(), tensorInfoConstructFromSparseTensor.type);
        Buffer buffer = ortUtil$BufferTuplePrepareBuffer.data;
        if (!(buffer instanceof LongBuffer) && !(buffer instanceof IntBuffer)) {
            n0.b.j(ortUtil$BufferTuplePrepareBuffer.data.getClass(), "Unexpected type of indices buffer, found ", ", expected IntBuffer or LongBuffer");
            return null;
        }
        int i9 = OnnxSparseTensor$1.$SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType[onnxSparseTensor$SparseTensor.getSparsityType().ordinal()];
        if (i9 == 1 || i9 == 2) {
            return new OnnxSparseTensor(createSparseTensorFromBuffer(OnnxRuntime.ortApiHandle, ortAllocator.handle, ortUtil$BufferTuplePrepareBuffer.data, ortUtil$BufferTuplePrepareBuffer.pos, ortUtil$BufferTuplePrepareBuffer.size, ortUtil$BufferTuplePrepareBuffer2.data, ortUtil$BufferTuplePrepareBuffer2.pos, tensorInfoConstructFromSparseTensor.shape, onnxSparseTensor$SparseTensor.getIndicesShape(), onnxSparseTensor$SparseTensor.getValuesShape(), tensorInfoConstructFromSparseTensor.onnxType.value, onnxSparseTensor$SparseTensor.getSparsityType().value), ortAllocator.handle, onnxSparseTensor$SparseTensor.getSparsityType(), tensorInfoConstructFromSparseTensor, ortUtil$BufferTuplePrepareBuffer.data, ortUtil$BufferTuplePrepareBuffer2.data);
        }
        if (i9 == 3) {
            OrtUtil$BufferTuple ortUtil$BufferTuplePrepareBuffer3 = OrtUtil.prepareBuffer(((OnnxSparseTensor$CSRCTensor) onnxSparseTensor$SparseTensor).getInnerIndices(), indicesType);
            return new OnnxSparseTensor(createCSRCSparseTensorFromBuffer(OnnxRuntime.ortApiHandle, ortAllocator.handle, ortUtil$BufferTuplePrepareBuffer.data, ortUtil$BufferTuplePrepareBuffer.pos, ortUtil$BufferTuplePrepareBuffer.size, ortUtil$BufferTuplePrepareBuffer3.data, ortUtil$BufferTuplePrepareBuffer3.pos, ortUtil$BufferTuplePrepareBuffer3.size, ortUtil$BufferTuplePrepareBuffer2.data, ortUtil$BufferTuplePrepareBuffer2.pos, tensorInfoConstructFromSparseTensor.shape, onnxSparseTensor$SparseTensor.getValuesShape(), tensorInfoConstructFromSparseTensor.onnxType.value), ortAllocator.handle, onnxSparseTensor$SparseTensor.getSparsityType(), tensorInfoConstructFromSparseTensor, ortUtil$BufferTuplePrepareBuffer.data, (LongBuffer) ortUtil$BufferTuplePrepareBuffer3.data, ortUtil$BufferTuplePrepareBuffer2.data);
        }
        i.k("Cannot create an UNDEFINED sparse tensor.");
        return null;
    }

    private static native long createSparseTensorFromBuffer(long j9, long j10, Buffer buffer, int i9, long j11, Buffer buffer2, int i10, long[] jArr, long[] jArr2, long[] jArr3, int i11, int i12);

    private native ByteBuffer getIndicesBuffer(long j9, long j10);

    private native long[] getIndicesShape(long j9, long j10);

    private native ByteBuffer getInnerIndicesBuffer(long j9, long j10);

    private native long[] getInnerIndicesShape(long j9, long j10);

    private native ByteBuffer getValuesBuffer(long j9, long j10);

    private native long[] getValuesShape(long j9, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.closed) {
                logger.warning("Closing an already closed OnnxSparseTensor.");
            } else {
                close(OnnxRuntime.ortApiHandle, this.nativeHandle);
                this.closed = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Buffer getIndicesBuffer() {
        checkClosed();
        int i9 = OnnxSparseTensor$1.$SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType[this.sparseTensorType.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                IntBuffer intBufferAsIntBuffer = getIndicesBuffer(OnnxRuntime.ortApiHandle, this.nativeHandle).order(ByteOrder.nativeOrder()).asIntBuffer();
                IntBuffer intBufferAllocate = IntBuffer.allocate(intBufferAsIntBuffer.capacity());
                intBufferAllocate.put(intBufferAsIntBuffer);
                intBufferAllocate.rewind();
                return intBufferAllocate;
            }
            if (i9 != 3) {
                i.l("UNDEFINED sparse tensor type.");
                return null;
            }
        }
        LongBuffer longBufferAsLongBuffer = getIndicesBuffer(OnnxRuntime.ortApiHandle, this.nativeHandle).order(ByteOrder.nativeOrder()).asLongBuffer();
        LongBuffer longBufferAllocate = LongBuffer.allocate(longBufferAsLongBuffer.capacity());
        longBufferAllocate.put(longBufferAsLongBuffer);
        longBufferAllocate.rewind();
        return longBufferAllocate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long[] getIndicesShape() {
        checkClosed();
        return getIndicesShape(OnnxRuntime.ortApiHandle, this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LongBuffer getInnerIndicesBuffer() {
        checkClosed();
        if (this.sparseTensorType != OnnxSparseTensor$SparseTensorType.CSRC) {
            b.u(this.sparseTensorType, "Inner indices are only available for CSRC sparse tensors, this sparse tensor is ");
            return null;
        }
        LongBuffer longBufferAsLongBuffer = getInnerIndicesBuffer(OnnxRuntime.ortApiHandle, this.nativeHandle).order(ByteOrder.nativeOrder()).asLongBuffer();
        LongBuffer longBufferAllocate = LongBuffer.allocate(longBufferAsLongBuffer.capacity());
        longBufferAllocate.put(longBufferAsLongBuffer);
        longBufferAllocate.rewind();
        return longBufferAllocate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long[] getInnerIndicesShape() {
        checkClosed();
        if (this.sparseTensorType == OnnxSparseTensor$SparseTensorType.CSRC) {
            return getInnerIndicesShape(OnnxRuntime.ortApiHandle, this.nativeHandle);
        }
        b.u(this.sparseTensorType, "Inner indices are only available for CSRC sparse tensors, this sparse tensor is ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxSparseTensor$SparseTensorType getSparseTensorType() {
        return this.sparseTensorType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public OnnxValue$OnnxValueType getType() {
        return OnnxValue$OnnxValueType.ONNX_TYPE_SPARSETENSOR;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public OnnxSparseTensor$SparseTensor<? extends Buffer> getValue() {
        checkClosed();
        Buffer valuesBuffer = getValuesBuffer();
        long[] indicesShape = getIndicesShape(OnnxRuntime.ortApiHandle, this.nativeHandle);
        int i9 = OnnxSparseTensor$1.$SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType[this.sparseTensorType.ordinal()];
        if (i9 == 1) {
            LongBuffer longBuffer = (LongBuffer) getIndicesBuffer();
            TensorInfo tensorInfo = this.info;
            return new OnnxSparseTensor$COOTensor(longBuffer, indicesShape, valuesBuffer, tensorInfo.shape, tensorInfo.type, valuesBuffer.remaining());
        }
        if (i9 == 2) {
            long[] valuesShape = getValuesShape(OnnxRuntime.ortApiHandle, this.nativeHandle);
            IntBuffer intBuffer = (IntBuffer) getIndicesBuffer();
            TensorInfo tensorInfo2 = this.info;
            return new OnnxSparseTensor$BlockSparseTensor(intBuffer, indicesShape, valuesBuffer, valuesShape, tensorInfo2.shape, tensorInfo2.type, valuesBuffer.remaining());
        }
        if (i9 != 3) {
            i.l("Undefined sparsity type in this sparse tensor.");
            return null;
        }
        LongBuffer longBuffer2 = (LongBuffer) getIndicesBuffer();
        LongBuffer innerIndicesBuffer = getInnerIndicesBuffer();
        TensorInfo tensorInfo3 = this.info;
        return new OnnxSparseTensor$CSRCTensor(longBuffer2, innerIndicesBuffer, valuesBuffer, tensorInfo3.shape, tensorInfo3.type, valuesBuffer.remaining());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Buffer getValuesBuffer() {
        checkClosed();
        ByteBuffer byteBufferOrder = getValuesBuffer(OnnxRuntime.ortApiHandle, this.nativeHandle).order(ByteOrder.nativeOrder());
        switch (OnnxSparseTensor$1.$SwitchMap$ai$onnxruntime$OnnxJavaType[this.info.type.ordinal()]) {
            case 1:
                FloatBuffer floatBufferAsFloatBuffer = byteBufferOrder.asFloatBuffer();
                FloatBuffer floatBufferAllocate = FloatBuffer.allocate(floatBufferAsFloatBuffer.capacity());
                floatBufferAllocate.put(floatBufferAsFloatBuffer);
                floatBufferAllocate.rewind();
                return floatBufferAllocate;
            case 2:
                return Fp16Conversions.convertFp16BufferToFloatBuffer(byteBufferOrder.asShortBuffer());
            case 3:
                return Fp16Conversions.convertBf16BufferToFloatBuffer(byteBufferOrder.asShortBuffer());
            case 4:
                DoubleBuffer doubleBufferAsDoubleBuffer = byteBufferOrder.asDoubleBuffer();
                DoubleBuffer doubleBufferAllocate = DoubleBuffer.allocate(doubleBufferAsDoubleBuffer.capacity());
                doubleBufferAllocate.put(doubleBufferAsDoubleBuffer);
                doubleBufferAllocate.rewind();
                return doubleBufferAllocate;
            case 5:
                ShortBuffer shortBufferAsShortBuffer = byteBufferOrder.asShortBuffer();
                ShortBuffer shortBufferAllocate = ShortBuffer.allocate(shortBufferAsShortBuffer.capacity());
                shortBufferAllocate.put(shortBufferAsShortBuffer);
                shortBufferAllocate.rewind();
                return shortBufferAllocate;
            case 6:
                IntBuffer intBufferAsIntBuffer = byteBufferOrder.asIntBuffer();
                IntBuffer intBufferAllocate = IntBuffer.allocate(intBufferAsIntBuffer.capacity());
                intBufferAllocate.put(intBufferAsIntBuffer);
                intBufferAllocate.rewind();
                return intBufferAllocate;
            case 7:
                LongBuffer longBufferAsLongBuffer = byteBufferOrder.asLongBuffer();
                LongBuffer longBufferAllocate = LongBuffer.allocate(longBufferAsLongBuffer.capacity());
                longBufferAllocate.put(longBufferAsLongBuffer);
                longBufferAllocate.rewind();
                return longBufferAllocate;
            case 8:
            case 9:
            case 10:
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferOrder.capacity());
                byteBufferAllocate.put(byteBufferOrder);
                byteBufferAllocate.rewind();
                return byteBufferAllocate;
            case 11:
                i.l("Unsupported data type String");
                return null;
            default:
                i.l("Unsupported data type");
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long[] getValuesShape() {
        checkClosed();
        return getValuesShape(OnnxRuntime.ortApiHandle, this.nativeHandle);
    }

    public OnnxSparseTensor(long j9, long j10, OnnxSparseTensor$SparseTensorType onnxSparseTensor$SparseTensorType, TensorInfo tensorInfo, Buffer buffer, Buffer buffer2) {
        this(j9, j10, onnxSparseTensor$SparseTensorType, tensorInfo, buffer, null, buffer2);
    }

    public OnnxSparseTensor(long j9, long j10, OnnxSparseTensor$SparseTensorType onnxSparseTensor$SparseTensorType, TensorInfo tensorInfo, Buffer buffer, LongBuffer longBuffer, Buffer buffer2) {
        super(j9, j10, tensorInfo);
        this.sparseTensorType = onnxSparseTensor$SparseTensorType;
        this.indices = buffer;
        this.innerIndices = longBuffer;
        this.values = buffer2;
    }

    @Override // ai.onnxruntime.OnnxValue
    public /* bridge */ /* synthetic */ Object getValue() {
        return getValue();
    }

    public static <T extends Buffer> OnnxSparseTensor createSparseTensor(OrtEnvironment ortEnvironment, OnnxSparseTensor$SparseTensor<T> onnxSparseTensor$SparseTensor) {
        return createSparseTensor(ortEnvironment, ortEnvironment.defaultAllocator, onnxSparseTensor$SparseTensor);
    }
}
