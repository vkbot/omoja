package ai.onnxruntime;

import ai.onnxruntime.platform.Fp16Conversions;
import androidx.navigation.C0674b;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;
import java.util.logging.Logger;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class OnnxSparseTensor extends OnnxTensorLike {
    private static final Logger logger = Logger.getLogger(OnnxSparseTensor.class.getName());
    private final Buffer indices;
    private final LongBuffer innerIndices;
    private final SparseTensorType sparseTensorType;
    private final Buffer values;

    /* JADX INFO: renamed from: ai.onnxruntime.OnnxSparseTensor$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static /* synthetic */ class C00681 {
        static final /* synthetic */ int[] $SwitchMap$ai$onnxruntime$OnnxJavaType;
        static final /* synthetic */ int[] $SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType;

        static {
            int[] iArr = new int[OnnxJavaType.values().length];
            $SwitchMap$ai$onnxruntime$OnnxJavaType = iArr;
            try {
                iArr[OnnxJavaType.FLOAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.FLOAT16.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.BFLOAT16.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.INT16.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.INT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.INT64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.INT8.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.UINT8.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.UNKNOWN.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr2 = new int[SparseTensorType.values().length];
            $SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType = iArr2;
            try {
                iArr2[SparseTensorType.COO.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType[SparseTensorType.BLOCK_SPARSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType[SparseTensorType.CSRC.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType[SparseTensorType.UNDEFINED.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class BlockSparseTensor extends SparseTensor<IntBuffer> {
        public BlockSparseTensor(IntBuffer intBuffer, long[] jArr, Buffer buffer, long[] jArr2, long[] jArr3, OnnxJavaType onnxJavaType, long j10) {
            super(intBuffer, jArr, buffer, jArr2, jArr3, onnxJavaType, j10);
            if (OrtUtil.elementCount(jArr2) != j10) {
                throw new IllegalArgumentException("Expected " + j10 + " entries in the data shape, found " + Arrays.toString(jArr2));
            }
            if (j10 != buffer.remaining()) {
                C0075b.m187l("Expected ", j10, " elements in the data buffer, found ", buffer.remaining());
                throw null;
            }
            if (OrtUtil.elementCount(jArr) != intBuffer.remaining()) {
                C0075b.m187l("Expected ", OrtUtil.elementCount(jArr), " elements in the indices buffer, found ", intBuffer.remaining());
                throw null;
            }
            if (jArr2.length < 3) {
                C0674b.m848o(Arrays.toString(jArr2), "Expected [numBlocks, blockSize, blockSize] or larger, but data shape was ");
                throw null;
            }
            if (jArr.length >= 2) {
                return;
            }
            C0674b.m848o(Arrays.toString(jArr), "Expected [numBlocks, coordinates] or larger, but indices shape was ");
            throw null;
        }

        @Override // ai.onnxruntime.OnnxSparseTensor.SparseTensor
        public OnnxJavaType getIndicesType() {
            return OnnxJavaType.INT32;
        }

        @Override // ai.onnxruntime.OnnxSparseTensor.SparseTensor
        public SparseTensorType getSparsityType() {
            return SparseTensorType.BLOCK_SPARSE;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class COOTensor extends SparseTensor<LongBuffer> {
        public COOTensor(LongBuffer longBuffer, long[] jArr, Buffer buffer, long[] jArr2, OnnxJavaType onnxJavaType, long j10) {
            super(longBuffer, jArr, buffer, new long[]{j10}, jArr2, onnxJavaType, j10);
            if (jArr.length > 2 || jArr.length == 0 || jArr[0] != j10) {
                C0674b.m848o(Arrays.toString(jArr), "Invalid indices shape, expected [numNonZero, dimension] or [numNonZero] found ");
                throw null;
            }
            long jElementCount = OrtUtil.elementCount(jArr);
            if (jElementCount != longBuffer.remaining()) {
                C0075b.m187l("Unexpected number of indices found in buffer, expected ", jElementCount, " found ", longBuffer.remaining());
                throw null;
            }
            if (buffer.remaining() == j10) {
                return;
            }
            C0075b.m186k("Expected data.remaining() - ", buffer.remaining(), " to equal numNonZero - ", j10);
            throw null;
        }

        @Override // ai.onnxruntime.OnnxSparseTensor.SparseTensor
        public OnnxJavaType getIndicesType() {
            return OnnxJavaType.INT64;
        }

        @Override // ai.onnxruntime.OnnxSparseTensor.SparseTensor
        public SparseTensorType getSparsityType() {
            return SparseTensorType.COO;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class CSRCTensor extends SparseTensor<LongBuffer> {
        private final LongBuffer innerIndices;

        public CSRCTensor(LongBuffer longBuffer, LongBuffer longBuffer2, Buffer buffer, long[] jArr, OnnxJavaType onnxJavaType, long j10) {
            super(longBuffer, new long[]{longBuffer.remaining()}, buffer, new long[]{j10}, jArr, onnxJavaType, j10);
            this.innerIndices = longBuffer2;
            long j11 = jArr[0] + 1;
            if (longBuffer.remaining() != j11) {
                C0075b.m186k("Outer indices should be equal to the number of rows + 1 in the dense shape, found ", longBuffer.remaining(), ", expected ", j11);
                throw null;
            }
            if (longBuffer2.remaining() == j10) {
                return;
            }
            C0075b.m186k("Inner indices should be equal to the number of non-zero elements, found ", longBuffer2.remaining(), ", expected ", j10);
            throw null;
        }

        @Override // ai.onnxruntime.OnnxSparseTensor.SparseTensor
        public OnnxJavaType getIndicesType() {
            return OnnxJavaType.INT64;
        }

        public LongBuffer getInnerIndices() {
            return this.innerIndices;
        }

        public long[] getInnerIndicesShape() {
            return new long[]{this.innerIndices.remaining()};
        }

        @Override // ai.onnxruntime.OnnxSparseTensor.SparseTensor
        public SparseTensorType getSparsityType() {
            return SparseTensorType.CSRC;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static abstract class SparseTensor<T extends Buffer> {
        private final long[] denseShape;
        final T indices;
        private final long[] indicesShape;
        private final long numNonZero;
        private final OnnxJavaType type;
        final Buffer values;
        private final long[] valuesShape;

        public SparseTensor(T t, long[] jArr, Buffer buffer, long[] jArr2, long[] jArr3, OnnxJavaType onnxJavaType, long j10) {
            this.indices = t;
            this.indicesShape = jArr;
            this.values = buffer;
            this.valuesShape = jArr2;
            this.denseShape = jArr3;
            this.type = onnxJavaType;
            this.numNonZero = j10;
            if (buffer.remaining() == j10) {
                if (onnxJavaType != OnnxJavaType.STRING) {
                    return;
                }
                C1929i.m3029k("String SparseTensors are not supported.");
                throw null;
            }
            throw new IllegalArgumentException("Expected numNonZero and data.remaining to be equal, found " + j10 + " and " + buffer.remaining() + " respectively");
        }

        public long[] getDenseShape() {
            return this.denseShape;
        }

        public T getIndices() {
            return this.indices;
        }

        public long[] getIndicesShape() {
            return this.indicesShape;
        }

        public abstract OnnxJavaType getIndicesType();

        public long getNumNonZeroElements() {
            return this.numNonZero;
        }

        public abstract SparseTensorType getSparsityType();

        public OnnxJavaType getType() {
            return this.type;
        }

        public Buffer getValues() {
            return this.values;
        }

        public long[] getValuesShape() {
            return this.valuesShape;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v1 ai.onnxruntime.OnnxSparseTensor$SparseTensorType, still in use, count: 1, list:
  (r1v1 ai.onnxruntime.OnnxSparseTensor$SparseTensorType) from 0x0030: FILLED_NEW_ARRAY 
  (r0v0 ai.onnxruntime.OnnxSparseTensor$SparseTensorType)
  (r1v1 ai.onnxruntime.OnnxSparseTensor$SparseTensorType)
  (r3v1 ai.onnxruntime.OnnxSparseTensor$SparseTensorType)
  (r0v0 ai.onnxruntime.OnnxSparseTensor$SparseTensorType)
  (r5v1 ai.onnxruntime.OnnxSparseTensor$SparseTensorType)
 A[WRAPPED] (LINE:49) elemType: ai.onnxruntime.OnnxSparseTensor$SparseTensorType
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class SparseTensorType {
        UNDEFINED(0),
        COO(1),
        CSRC(2),
        BLOCK_SPARSE(4);

        private static final SparseTensorType[] values;
        public final int value;

        static {
            SparseTensorType sparseTensorType = UNDEFINED;
            values = new SparseTensorType[]{sparseTensorType, sparseTensorType, sparseTensorType, sparseTensorType, sparseTensorType};
        }

        private SparseTensorType(int i10) {
            super(str, i);
            this.value = i10;
        }

        public static SparseTensorType mapFromInt(int i10) {
            if (i10 > 0) {
                SparseTensorType[] sparseTensorTypeArr = values;
                if (i10 < sparseTensorTypeArr.length) {
                    return sparseTensorTypeArr[i10];
                }
            }
            return UNDEFINED;
        }

        public static SparseTensorType valueOf(String str) {
            return (SparseTensorType) Enum.valueOf(SparseTensorType.class, str);
        }

        public static SparseTensorType[] values() {
            return (SparseTensorType[]) $VALUES.clone();
        }
    }

    public OnnxSparseTensor(long j10, long j11, int i10, TensorInfo tensorInfo) {
        this(j10, j11, SparseTensorType.mapFromInt(i10), tensorInfo, null, null, null);
    }

    private native void close(long j10, long j11);

    private static native long createCSRCSparseTensorFromBuffer(long j10, long j11, Buffer buffer, int i10, long j12, Buffer buffer2, int i11, long j13, Buffer buffer3, int i12, long[] jArr, long[] jArr2, int i13);

    public static <T extends Buffer> OnnxSparseTensor createSparseTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, SparseTensor<T> sparseTensor) {
        if (ortAllocator.isClosed()) {
            C1929i.m3030l("Trying to create an OnnxSparseTensor on a closed OrtAllocator.");
            return null;
        }
        TensorInfo tensorInfoConstructFromSparseTensor = TensorInfo.constructFromSparseTensor(sparseTensor);
        OnnxJavaType indicesType = sparseTensor.getIndicesType();
        OrtUtil.BufferTuple bufferTuplePrepareBuffer = OrtUtil.prepareBuffer(sparseTensor.getIndices(), indicesType);
        OrtUtil.BufferTuple bufferTuplePrepareBuffer2 = OrtUtil.prepareBuffer(sparseTensor.getValues(), tensorInfoConstructFromSparseTensor.type);
        Buffer buffer = bufferTuplePrepareBuffer.data;
        if (!(buffer instanceof LongBuffer) && !(buffer instanceof IntBuffer)) {
            C2467b.m3827j(bufferTuplePrepareBuffer.data.getClass(), "Unexpected type of indices buffer, found ", ", expected IntBuffer or LongBuffer");
            return null;
        }
        int i10 = C00681.$SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType[sparseTensor.getSparsityType().ordinal()];
        if (i10 == 1 || i10 == 2) {
            return new OnnxSparseTensor(createSparseTensorFromBuffer(OnnxRuntime.ortApiHandle, ortAllocator.handle, bufferTuplePrepareBuffer.data, bufferTuplePrepareBuffer.pos, bufferTuplePrepareBuffer.size, bufferTuplePrepareBuffer2.data, bufferTuplePrepareBuffer2.pos, tensorInfoConstructFromSparseTensor.shape, sparseTensor.getIndicesShape(), sparseTensor.getValuesShape(), tensorInfoConstructFromSparseTensor.onnxType.value, sparseTensor.getSparsityType().value), ortAllocator.handle, sparseTensor.getSparsityType(), tensorInfoConstructFromSparseTensor, bufferTuplePrepareBuffer.data, bufferTuplePrepareBuffer2.data);
        }
        if (i10 == 3) {
            OrtUtil.BufferTuple bufferTuplePrepareBuffer3 = OrtUtil.prepareBuffer(((CSRCTensor) sparseTensor).getInnerIndices(), indicesType);
            return new OnnxSparseTensor(createCSRCSparseTensorFromBuffer(OnnxRuntime.ortApiHandle, ortAllocator.handle, bufferTuplePrepareBuffer.data, bufferTuplePrepareBuffer.pos, bufferTuplePrepareBuffer.size, bufferTuplePrepareBuffer3.data, bufferTuplePrepareBuffer3.pos, bufferTuplePrepareBuffer3.size, bufferTuplePrepareBuffer2.data, bufferTuplePrepareBuffer2.pos, tensorInfoConstructFromSparseTensor.shape, sparseTensor.getValuesShape(), tensorInfoConstructFromSparseTensor.onnxType.value), ortAllocator.handle, sparseTensor.getSparsityType(), tensorInfoConstructFromSparseTensor, bufferTuplePrepareBuffer.data, (LongBuffer) bufferTuplePrepareBuffer3.data, bufferTuplePrepareBuffer2.data);
        }
        C1929i.m3029k("Cannot create an UNDEFINED sparse tensor.");
        return null;
    }

    private static native long createSparseTensorFromBuffer(long j10, long j11, Buffer buffer, int i10, long j12, Buffer buffer2, int i11, long[] jArr, long[] jArr2, long[] jArr3, int i12, int i13);

    private native ByteBuffer getIndicesBuffer(long j10, long j11);

    private native long[] getIndicesShape(long j10, long j11);

    private native ByteBuffer getInnerIndicesBuffer(long j10, long j11);

    private native long[] getInnerIndicesShape(long j10, long j11);

    private native ByteBuffer getValuesBuffer(long j10, long j11);

    private native long[] getValuesShape(long j10, long j11);

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

    public Buffer getIndicesBuffer() {
        checkClosed();
        int i10 = C00681.$SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType[this.sparseTensorType.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                IntBuffer intBufferAsIntBuffer = getIndicesBuffer(OnnxRuntime.ortApiHandle, this.nativeHandle).order(ByteOrder.nativeOrder()).asIntBuffer();
                IntBuffer intBufferAllocate = IntBuffer.allocate(intBufferAsIntBuffer.capacity());
                intBufferAllocate.put(intBufferAsIntBuffer);
                intBufferAllocate.rewind();
                return intBufferAllocate;
            }
            if (i10 != 3) {
                C1929i.m3030l("UNDEFINED sparse tensor type.");
                return null;
            }
        }
        LongBuffer longBufferAsLongBuffer = getIndicesBuffer(OnnxRuntime.ortApiHandle, this.nativeHandle).order(ByteOrder.nativeOrder()).asLongBuffer();
        LongBuffer longBufferAllocate = LongBuffer.allocate(longBufferAsLongBuffer.capacity());
        longBufferAllocate.put(longBufferAsLongBuffer);
        longBufferAllocate.rewind();
        return longBufferAllocate;
    }

    public long[] getIndicesShape() {
        checkClosed();
        return getIndicesShape(OnnxRuntime.ortApiHandle, this.nativeHandle);
    }

    public LongBuffer getInnerIndicesBuffer() {
        checkClosed();
        if (this.sparseTensorType != SparseTensorType.CSRC) {
            C0075b.m196u(this.sparseTensorType, "Inner indices are only available for CSRC sparse tensors, this sparse tensor is ");
            return null;
        }
        LongBuffer longBufferAsLongBuffer = getInnerIndicesBuffer(OnnxRuntime.ortApiHandle, this.nativeHandle).order(ByteOrder.nativeOrder()).asLongBuffer();
        LongBuffer longBufferAllocate = LongBuffer.allocate(longBufferAsLongBuffer.capacity());
        longBufferAllocate.put(longBufferAsLongBuffer);
        longBufferAllocate.rewind();
        return longBufferAllocate;
    }

    public long[] getInnerIndicesShape() {
        checkClosed();
        if (this.sparseTensorType == SparseTensorType.CSRC) {
            return getInnerIndicesShape(OnnxRuntime.ortApiHandle, this.nativeHandle);
        }
        C0075b.m196u(this.sparseTensorType, "Inner indices are only available for CSRC sparse tensors, this sparse tensor is ");
        return null;
    }

    public SparseTensorType getSparseTensorType() {
        return this.sparseTensorType;
    }

    @Override // ai.onnxruntime.OnnxValue
    public OnnxValue.OnnxValueType getType() {
        return OnnxValue.OnnxValueType.ONNX_TYPE_SPARSETENSOR;
    }

    @Override // ai.onnxruntime.OnnxValue
    public SparseTensor<? extends Buffer> getValue() {
        checkClosed();
        Buffer valuesBuffer = getValuesBuffer();
        long[] indicesShape = getIndicesShape(OnnxRuntime.ortApiHandle, this.nativeHandle);
        int i10 = C00681.$SwitchMap$ai$onnxruntime$OnnxSparseTensor$SparseTensorType[this.sparseTensorType.ordinal()];
        if (i10 == 1) {
            LongBuffer longBuffer = (LongBuffer) getIndicesBuffer();
            TensorInfo tensorInfo = this.info;
            return new COOTensor(longBuffer, indicesShape, valuesBuffer, tensorInfo.shape, tensorInfo.type, valuesBuffer.remaining());
        }
        if (i10 == 2) {
            long[] valuesShape = getValuesShape(OnnxRuntime.ortApiHandle, this.nativeHandle);
            IntBuffer intBuffer = (IntBuffer) getIndicesBuffer();
            TensorInfo tensorInfo2 = this.info;
            return new BlockSparseTensor(intBuffer, indicesShape, valuesBuffer, valuesShape, tensorInfo2.shape, tensorInfo2.type, valuesBuffer.remaining());
        }
        if (i10 != 3) {
            C1929i.m3030l("Undefined sparsity type in this sparse tensor.");
            return null;
        }
        LongBuffer longBuffer2 = (LongBuffer) getIndicesBuffer();
        LongBuffer innerIndicesBuffer = getInnerIndicesBuffer();
        TensorInfo tensorInfo3 = this.info;
        return new CSRCTensor(longBuffer2, innerIndicesBuffer, valuesBuffer, tensorInfo3.shape, tensorInfo3.type, valuesBuffer.remaining());
    }

    public Buffer getValuesBuffer() {
        checkClosed();
        ByteBuffer byteBufferOrder = getValuesBuffer(OnnxRuntime.ortApiHandle, this.nativeHandle).order(ByteOrder.nativeOrder());
        switch (C00681.$SwitchMap$ai$onnxruntime$OnnxJavaType[this.info.type.ordinal()]) {
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
                C1929i.m3030l("Unsupported data type String");
                return null;
            default:
                C1929i.m3030l("Unsupported data type");
                return null;
        }
    }

    public long[] getValuesShape() {
        checkClosed();
        return getValuesShape(OnnxRuntime.ortApiHandle, this.nativeHandle);
    }

    public OnnxSparseTensor(long j10, long j11, SparseTensorType sparseTensorType, TensorInfo tensorInfo, Buffer buffer, Buffer buffer2) {
        this(j10, j11, sparseTensorType, tensorInfo, buffer, null, buffer2);
    }

    public OnnxSparseTensor(long j10, long j11, SparseTensorType sparseTensorType, TensorInfo tensorInfo, Buffer buffer, LongBuffer longBuffer, Buffer buffer2) {
        super(j10, j11, tensorInfo);
        this.sparseTensorType = sparseTensorType;
        this.indices = buffer;
        this.innerIndices = longBuffer;
        this.values = buffer2;
    }

    public static <T extends Buffer> OnnxSparseTensor createSparseTensor(OrtEnvironment ortEnvironment, SparseTensor<T> sparseTensor) {
        return createSparseTensor(ortEnvironment, ortEnvironment.defaultAllocator, sparseTensor);
    }
}
