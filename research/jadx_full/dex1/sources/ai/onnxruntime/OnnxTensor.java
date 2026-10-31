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
import java.util.Optional;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OnnxTensor extends OnnxTensorLike {
    private static final Logger logger = Logger.getLogger(OnnxTensor.class.getName());
    private final Buffer buffer;
    private final boolean ownsBuffer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxTensor(long j9, long j10, TensorInfo tensorInfo) {
        this(j9, j10, tensorInfo, null, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Buffer castBuffer(Buffer buffer) {
        switch (OnnxTensor$1.$SwitchMap$ai$onnxruntime$OnnxJavaType[this.info.type.ordinal()]) {
            case 1:
                if (buffer instanceof FloatBuffer) {
                    return buffer;
                }
                if (buffer instanceof ByteBuffer) {
                    return ((ByteBuffer) buffer).asFloatBuffer();
                }
                break;
            case 2:
                if (buffer instanceof DoubleBuffer) {
                    return buffer;
                }
                if (buffer instanceof ByteBuffer) {
                    return ((ByteBuffer) buffer).asDoubleBuffer();
                }
                break;
            case 3:
            case 4:
            case 5:
                if (buffer instanceof ByteBuffer) {
                    return buffer;
                }
                break;
            case 6:
                if (buffer instanceof ShortBuffer) {
                    return Fp16Conversions.convertBf16BufferToFloatBuffer((ShortBuffer) buffer);
                }
                if (buffer instanceof ByteBuffer) {
                    return Fp16Conversions.convertBf16BufferToFloatBuffer(((ByteBuffer) buffer).asShortBuffer());
                }
                break;
            case 7:
                if (buffer instanceof ShortBuffer) {
                    return Fp16Conversions.convertFp16BufferToFloatBuffer((ShortBuffer) buffer);
                }
                if (buffer instanceof ByteBuffer) {
                    return Fp16Conversions.convertFp16BufferToFloatBuffer(((ByteBuffer) buffer).asShortBuffer());
                }
                break;
            case 8:
                if (buffer instanceof ShortBuffer) {
                    return buffer;
                }
                if (buffer instanceof ByteBuffer) {
                    return ((ByteBuffer) buffer).asShortBuffer();
                }
                break;
            case 9:
                if (buffer instanceof IntBuffer) {
                    return buffer;
                }
                if (buffer instanceof ByteBuffer) {
                    return ((ByteBuffer) buffer).asIntBuffer();
                }
                break;
            case 10:
                if (buffer instanceof LongBuffer) {
                    return buffer;
                }
                if (buffer instanceof ByteBuffer) {
                    return ((ByteBuffer) buffer).asLongBuffer();
                }
                break;
        }
        StringBuilder sb = new StringBuilder("Invalid buffer type for cast operation, found ");
        sb.append(buffer.getClass());
        b.p(sb, " expected something convertible to ", this.info.type);
        return null;
    }

    private native void close(long j9, long j10);

    private static native long createString(long j9, long j10, String str);

    private static native long createStringTensor(long j9, long j10, Object[] objArr, long[] jArr);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, Object obj) throws OrtException {
        Buffer bufferConvertArrayToBuffer;
        if (ortAllocator.isClosed()) {
            i.l("Trying to create an OnnxTensor with a closed OrtAllocator.");
            return null;
        }
        TensorInfo tensorInfoConstructFromJavaArray = TensorInfo.constructFromJavaArray(obj);
        OnnxJavaType onnxJavaType = tensorInfoConstructFromJavaArray.type;
        OnnxJavaType onnxJavaType2 = OnnxJavaType.STRING;
        long[] jArr = tensorInfoConstructFromJavaArray.shape;
        if (onnxJavaType == onnxJavaType2) {
            return jArr.length == 0 ? new OnnxTensor(createString(OnnxRuntime.ortApiHandle, ortAllocator.handle, (String) obj), ortAllocator.handle, tensorInfoConstructFromJavaArray) : new OnnxTensor(createStringTensor(OnnxRuntime.ortApiHandle, ortAllocator.handle, OrtUtil.flattenString(obj), tensorInfoConstructFromJavaArray.shape), ortAllocator.handle, tensorInfoConstructFromJavaArray);
        }
        if (jArr.length == 0) {
            bufferConvertArrayToBuffer = OrtUtil.convertBoxedPrimitiveToBuffer(onnxJavaType, obj);
            if (bufferConvertArrayToBuffer == null) {
                throw new OrtException("Failed to convert a boxed primitive to an array, this is an error with the ORT Java API, please report this message & stack trace. JavaType = " + tensorInfoConstructFromJavaArray.type + ", object = " + obj);
            }
        } else {
            bufferConvertArrayToBuffer = OrtUtil.convertArrayToBuffer(tensorInfoConstructFromJavaArray, obj);
        }
        Buffer buffer = bufferConvertArrayToBuffer;
        return new OnnxTensor(createTensorFromBuffer(OnnxRuntime.ortApiHandle, ortAllocator.handle, buffer, 0, ((long) tensorInfoConstructFromJavaArray.type.size) * tensorInfoConstructFromJavaArray.numElements, tensorInfoConstructFromJavaArray.shape, tensorInfoConstructFromJavaArray.onnxType.value), ortAllocator.handle, tensorInfoConstructFromJavaArray, buffer, true);
    }

    private static native long createTensorFromBuffer(long j9, long j10, Buffer buffer, int i9, long j11, long[] jArr, int i10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Buffer duplicate(Buffer buffer) {
        if (buffer instanceof ByteBuffer) {
            return ((ByteBuffer) buffer).duplicate().order(ByteOrder.nativeOrder());
        }
        if (buffer instanceof ShortBuffer) {
            return ((ShortBuffer) buffer).duplicate();
        }
        if (buffer instanceof IntBuffer) {
            return ((IntBuffer) buffer).duplicate();
        }
        if (buffer instanceof LongBuffer) {
            return ((LongBuffer) buffer).duplicate();
        }
        if (buffer instanceof FloatBuffer) {
            return ((FloatBuffer) buffer).duplicate();
        }
        if (buffer instanceof DoubleBuffer) {
            return ((DoubleBuffer) buffer).duplicate();
        }
        b.u(buffer.getClass(), "Unknown buffer type ");
        return null;
    }

    private native boolean getBool(long j9, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ByteBuffer getBuffer() {
        return getBuffer(OnnxRuntime.ortApiHandle, this.nativeHandle).order(ByteOrder.nativeOrder());
    }

    private native ByteBuffer getBuffer(long j9, long j10);

    private native byte getByte(long j9, long j10, int i9);

    private native double getDouble(long j9, long j10);

    private native float getFloat(long j9, long j10, int i9);

    private native int getInt(long j9, long j10, int i9);

    private native long getLong(long j9, long j10, int i9);

    private native short getShort(long j9, long j10, int i9);

    private native String getString(long j9, long j10);

    private native void getStringArray(long j9, long j10, String[] strArr);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.closed) {
                logger.warning("Closing an already closed tensor.");
            } else {
                close(OnnxRuntime.ortApiHandle, this.nativeHandle);
                this.closed = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Optional<Buffer> getBufferRef() {
        return Optional.ofNullable(duplicate(this.buffer));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteBuffer getByteBuffer() {
        checkClosed();
        if (this.info.type == OnnxJavaType.STRING) {
            return null;
        }
        ByteBuffer buffer = getBuffer();
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(buffer.capacity()).order(ByteOrder.nativeOrder());
        byteBufferOrder.put(buffer);
        byteBufferOrder.rewind();
        return byteBufferOrder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DoubleBuffer getDoubleBuffer() {
        checkClosed();
        if (this.info.type != OnnxJavaType.DOUBLE) {
            return null;
        }
        DoubleBuffer doubleBufferAsDoubleBuffer = getBuffer().asDoubleBuffer();
        DoubleBuffer doubleBufferAllocate = DoubleBuffer.allocate(doubleBufferAsDoubleBuffer.capacity());
        doubleBufferAllocate.put(doubleBufferAsDoubleBuffer);
        doubleBufferAllocate.rewind();
        return doubleBufferAllocate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FloatBuffer getFloatBuffer() {
        checkClosed();
        OnnxJavaType onnxJavaType = this.info.type;
        if (onnxJavaType == OnnxJavaType.FLOAT) {
            FloatBuffer floatBufferAsFloatBuffer = getBuffer().asFloatBuffer();
            FloatBuffer floatBufferAllocate = FloatBuffer.allocate(floatBufferAsFloatBuffer.capacity());
            floatBufferAllocate.put(floatBufferAsFloatBuffer);
            floatBufferAllocate.rewind();
            return floatBufferAllocate;
        }
        if (onnxJavaType == OnnxJavaType.FLOAT16) {
            return Fp16Conversions.convertFp16BufferToFloatBuffer(getBuffer().asShortBuffer());
        }
        if (onnxJavaType == OnnxJavaType.BFLOAT16) {
            return Fp16Conversions.convertBf16BufferToFloatBuffer(getBuffer().asShortBuffer());
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IntBuffer getIntBuffer() {
        checkClosed();
        if (this.info.type != OnnxJavaType.INT32) {
            return null;
        }
        IntBuffer intBufferAsIntBuffer = getBuffer().asIntBuffer();
        IntBuffer intBufferAllocate = IntBuffer.allocate(intBufferAsIntBuffer.capacity());
        intBufferAllocate.put(intBufferAsIntBuffer);
        intBufferAllocate.rewind();
        return intBufferAllocate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LongBuffer getLongBuffer() {
        checkClosed();
        if (this.info.type != OnnxJavaType.INT64) {
            return null;
        }
        LongBuffer longBufferAsLongBuffer = getBuffer().asLongBuffer();
        LongBuffer longBufferAllocate = LongBuffer.allocate(longBufferAsLongBuffer.capacity());
        longBufferAllocate.put(longBufferAsLongBuffer);
        longBufferAllocate.rewind();
        return longBufferAllocate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ShortBuffer getShortBuffer() {
        checkClosed();
        OnnxJavaType onnxJavaType = this.info.type;
        if (onnxJavaType != OnnxJavaType.INT16 && onnxJavaType != OnnxJavaType.FLOAT16 && onnxJavaType != OnnxJavaType.BFLOAT16) {
            return null;
        }
        ShortBuffer shortBufferAsShortBuffer = getBuffer().asShortBuffer();
        ShortBuffer shortBufferAllocate = ShortBuffer.allocate(shortBufferAsShortBuffer.capacity());
        shortBufferAllocate.put(shortBufferAsShortBuffer);
        shortBufferAllocate.rewind();
        return shortBufferAllocate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public OnnxValue$OnnxValueType getType() {
        return OnnxValue$OnnxValueType.ONNX_TYPE_TENSOR;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public Object getValue() throws OrtException {
        checkClosed();
        if (!this.info.isScalar()) {
            Object objMakeCarrier = this.info.makeCarrier();
            if (this.info.getNumElements() > 0) {
                if (this.info.type == OnnxJavaType.STRING) {
                    String[] strArr = (String[]) objMakeCarrier;
                    getStringArray(OnnxRuntime.ortApiHandle, this.nativeHandle, strArr);
                    long[] jArr = this.info.shape;
                    if (jArr.length != 1) {
                        return OrtUtil.reshape(strArr, jArr);
                    }
                } else {
                    Buffer buffer = this.buffer;
                    OrtUtil.fillArrayFromBuffer(this.info, buffer == null ? castBuffer(getBuffer()) : castBuffer(duplicate(buffer)), 0, objMakeCarrier);
                }
            }
            return objMakeCarrier;
        }
        switch (OnnxTensor$1.$SwitchMap$ai$onnxruntime$OnnxJavaType[this.info.type.ordinal()]) {
            case 1:
                return Float.valueOf(getFloat(OnnxRuntime.ortApiHandle, this.nativeHandle, this.info.onnxType.value));
            case 2:
                return Double.valueOf(getDouble(OnnxRuntime.ortApiHandle, this.nativeHandle));
            case 3:
                return Boolean.valueOf(getBool(OnnxRuntime.ortApiHandle, this.nativeHandle));
            case 4:
            case 5:
                return Byte.valueOf(getByte(OnnxRuntime.ortApiHandle, this.nativeHandle, this.info.onnxType.value));
            case 6:
                return Float.valueOf(Fp16Conversions.bf16ToFloat(getShort(OnnxRuntime.ortApiHandle, this.nativeHandle, this.info.onnxType.value)));
            case 7:
                return Float.valueOf(Fp16Conversions.fp16ToFloat(getShort(OnnxRuntime.ortApiHandle, this.nativeHandle, this.info.onnxType.value)));
            case 8:
                return Short.valueOf(getShort(OnnxRuntime.ortApiHandle, this.nativeHandle, this.info.onnxType.value));
            case 9:
                return Integer.valueOf(getInt(OnnxRuntime.ortApiHandle, this.nativeHandle, this.info.onnxType.value));
            case 10:
                return Long.valueOf(getLong(OnnxRuntime.ortApiHandle, this.nativeHandle, this.info.onnxType.value));
            case 11:
                return getString(OnnxRuntime.ortApiHandle, this.nativeHandle);
            default:
                throw new OrtException("Extracting the value of an invalid Tensor.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean ownsBuffer() {
        return this.ownsBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "OnnxTensor(info=" + this.info.toString() + ",closed=" + this.closed + ")";
    }

    public OnnxTensor(long j9, long j10, TensorInfo tensorInfo, Buffer buffer, boolean z8) {
        super(j9, j10, tensorInfo);
        this.buffer = buffer;
        this.ownsBuffer = z8;
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, Object obj) {
        return createTensor(ortEnvironment, ortEnvironment.defaultAllocator, obj);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, String[] strArr, long[] jArr) {
        return createTensor(ortEnvironment, ortEnvironment.defaultAllocator, strArr, jArr);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, String[] strArr, long[] jArr) {
        if (!ortAllocator.isClosed()) {
            return new OnnxTensor(createStringTensor(OnnxRuntime.ortApiHandle, ortAllocator.handle, strArr, jArr), ortAllocator.handle, new TensorInfo(jArr, OnnxJavaType.STRING, TensorInfo$OnnxTensorType.ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING));
        }
        i.l("Trying to create an OnnxTensor on a closed OrtAllocator.");
        return null;
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, FloatBuffer floatBuffer, long[] jArr) {
        return createTensor(ortEnvironment, ortEnvironment.defaultAllocator, floatBuffer, jArr);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, FloatBuffer floatBuffer, long[] jArr) {
        if (!ortAllocator.isClosed()) {
            return createTensor(OnnxJavaType.FLOAT, ortAllocator, floatBuffer, jArr);
        }
        i.l("Trying to create an OnnxTensor on a closed OrtAllocator.");
        return null;
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, DoubleBuffer doubleBuffer, long[] jArr) {
        return createTensor(ortEnvironment, ortEnvironment.defaultAllocator, doubleBuffer, jArr);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, DoubleBuffer doubleBuffer, long[] jArr) {
        if (!ortAllocator.isClosed()) {
            return createTensor(OnnxJavaType.DOUBLE, ortAllocator, doubleBuffer, jArr);
        }
        i.l("Trying to create an OnnxTensor on a closed OrtAllocator.");
        return null;
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, ByteBuffer byteBuffer, long[] jArr) {
        return createTensor(ortEnvironment, ortEnvironment.defaultAllocator, byteBuffer, jArr);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, ByteBuffer byteBuffer, long[] jArr) {
        return createTensor(ortEnvironment, ortAllocator, byteBuffer, jArr, OnnxJavaType.INT8);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, ByteBuffer byteBuffer, long[] jArr, OnnxJavaType onnxJavaType) {
        return createTensor(ortEnvironment, ortEnvironment.defaultAllocator, byteBuffer, jArr, onnxJavaType);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, ByteBuffer byteBuffer, long[] jArr, OnnxJavaType onnxJavaType) {
        if (!ortAllocator.isClosed()) {
            return createTensor(onnxJavaType, ortAllocator, byteBuffer, jArr);
        }
        i.l("Trying to create an OnnxTensor on a closed OrtAllocator.");
        return null;
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, ShortBuffer shortBuffer, long[] jArr) {
        return createTensor(ortEnvironment, ortEnvironment.defaultAllocator, shortBuffer, jArr, OnnxJavaType.INT16);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, ShortBuffer shortBuffer, long[] jArr, OnnxJavaType onnxJavaType) {
        return createTensor(ortEnvironment, ortEnvironment.defaultAllocator, shortBuffer, jArr, onnxJavaType);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, ShortBuffer shortBuffer, long[] jArr, OnnxJavaType onnxJavaType) {
        if (!ortAllocator.isClosed()) {
            if (onnxJavaType != OnnxJavaType.BFLOAT16 && onnxJavaType != OnnxJavaType.FLOAT16 && onnxJavaType != OnnxJavaType.INT16) {
                i.k("Only int16, float16 or bfloat16 tensors can be created from ShortBuffer.");
                return null;
            }
            return createTensor(onnxJavaType, ortAllocator, shortBuffer, jArr);
        }
        i.l("Trying to create an OnnxTensor on a closed OrtAllocator.");
        return null;
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, IntBuffer intBuffer, long[] jArr) {
        return createTensor(ortEnvironment, ortEnvironment.defaultAllocator, intBuffer, jArr);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, IntBuffer intBuffer, long[] jArr) {
        if (!ortAllocator.isClosed()) {
            return createTensor(OnnxJavaType.INT32, ortAllocator, intBuffer, jArr);
        }
        i.l("Trying to create an OnnxTensor on a closed OrtAllocator.");
        return null;
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, LongBuffer longBuffer, long[] jArr) {
        return createTensor(ortEnvironment, ortEnvironment.defaultAllocator, longBuffer, jArr);
    }

    public static OnnxTensor createTensor(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, LongBuffer longBuffer, long[] jArr) {
        if (!ortAllocator.isClosed()) {
            return createTensor(OnnxJavaType.INT64, ortAllocator, longBuffer, jArr);
        }
        i.l("Trying to create an OnnxTensor on a closed OrtAllocator.");
        return null;
    }

    private static OnnxTensor createTensor(OnnxJavaType onnxJavaType, OrtAllocator ortAllocator, Buffer buffer, long[] jArr) throws OrtException {
        OrtUtil$BufferTuple ortUtil$BufferTuplePrepareBuffer = OrtUtil.prepareBuffer(buffer, onnxJavaType);
        TensorInfo tensorInfoConstructFromBuffer = TensorInfo.constructFromBuffer(ortUtil$BufferTuplePrepareBuffer.data, jArr, onnxJavaType);
        return new OnnxTensor(createTensorFromBuffer(OnnxRuntime.ortApiHandle, ortAllocator.handle, ortUtil$BufferTuplePrepareBuffer.data, ortUtil$BufferTuplePrepareBuffer.pos, ortUtil$BufferTuplePrepareBuffer.byteSize, jArr, tensorInfoConstructFromBuffer.onnxType.value), ortAllocator.handle, tensorInfoConstructFromBuffer, ortUtil$BufferTuplePrepareBuffer.data, ortUtil$BufferTuplePrepareBuffer.isCopy);
    }
}
