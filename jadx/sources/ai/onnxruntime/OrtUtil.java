package ai.onnxruntime;

import androidx.navigation.C0674b;
import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class OrtUtil {
    private static final Logger logger = Logger.getLogger(OrtUtil.class.getName());

    /* JADX INFO: renamed from: ai.onnxruntime.OrtUtil$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static /* synthetic */ class C00711 {
        static final /* synthetic */ int[] $SwitchMap$ai$onnxruntime$OnnxJavaType;

        static {
            int[] iArr = new int[OnnxJavaType.values().length];
            $SwitchMap$ai$onnxruntime$OnnxJavaType = iArr;
            try {
                iArr[OnnxJavaType.FLOAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.UINT8.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.INT8.ordinal()] = 4;
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
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.UNKNOWN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.FLOAT16.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.BFLOAT16.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class BufferTuple {
        final long byteSize;
        final Buffer data;
        final boolean isCopy;
        final int pos;
        final long size;

        public BufferTuple(Buffer buffer, int i10, long j10, long j11, boolean z9) {
            this.data = buffer;
            this.pos = i10;
            this.byteSize = j10;
            this.size = j11;
            this.isCopy = z9;
        }
    }

    private OrtUtil() {
    }

    public static int capacityFromSize(int i10) {
        return (int) ((((double) i10) / 0.75d) + 1.0d);
    }

    public static Buffer convertArrayToBuffer(TensorInfo tensorInfo, Object obj) {
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(((int) tensorInfo.numElements) * tensorInfo.type.size).order(ByteOrder.nativeOrder());
        ByteBuffer byteBufferAsFloatBuffer = byteBufferOrder;
        switch (C00711.$SwitchMap$ai$onnxruntime$OnnxJavaType[tensorInfo.type.ordinal()]) {
            case 1:
                byteBufferAsFloatBuffer = byteBufferOrder.asFloatBuffer();
                break;
            case 2:
                byteBufferAsFloatBuffer = byteBufferOrder.asDoubleBuffer();
                break;
            case 3:
            case 4:
            case 8:
                break;
            case 5:
            case 11:
            case 12:
                byteBufferAsFloatBuffer = byteBufferOrder.asShortBuffer();
                break;
            case 6:
                byteBufferAsFloatBuffer = byteBufferOrder.asIntBuffer();
                break;
            case 7:
                byteBufferAsFloatBuffer = byteBufferOrder.asLongBuffer();
                break;
            case 9:
            case 10:
            default:
                C0674b.m848o(tensorInfo.type, "Unexpected type, expected Java primitive found ");
                return null;
        }
        fillBufferFromArray(tensorInfo, obj, 0, byteBufferAsFloatBuffer);
        if (byteBufferAsFloatBuffer.remaining() == 0) {
            byteBufferAsFloatBuffer.rewind();
            return byteBufferAsFloatBuffer;
        }
        throw new IllegalArgumentException("Failed to copy all elements into the buffer, expected to copy " + tensorInfo.numElements + " into a buffer of capacity " + byteBufferAsFloatBuffer.capacity() + " but had " + byteBufferAsFloatBuffer.remaining() + " values left over.");
    }

    public static Object convertBoxedPrimitiveToArray(OnnxJavaType onnxJavaType, Object obj) {
        switch (C00711.$SwitchMap$ai$onnxruntime$OnnxJavaType[onnxJavaType.ordinal()]) {
            case 1:
                return new float[]{((Float) obj).floatValue()};
            case 2:
                return new double[]{((Double) obj).doubleValue()};
            case 3:
            case 4:
                return new byte[]{((Byte) obj).byteValue()};
            case 5:
                return new short[]{((Short) obj).shortValue()};
            case 6:
                return new int[]{((Integer) obj).intValue()};
            case 7:
                return new long[]{((Long) obj).longValue()};
            case 8:
                return new boolean[]{((Boolean) obj).booleanValue()};
            default:
                return null;
        }
    }

    public static Buffer convertBoxedPrimitiveToBuffer(OnnxJavaType onnxJavaType, Object obj) {
        switch (C00711.$SwitchMap$ai$onnxruntime$OnnxJavaType[onnxJavaType.ordinal()]) {
            case 1:
                FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(onnxJavaType.size).order(ByteOrder.nativeOrder()).asFloatBuffer();
                floatBufferAsFloatBuffer.put(0, ((Float) obj).floatValue());
                return floatBufferAsFloatBuffer;
            case 2:
                DoubleBuffer doubleBufferAsDoubleBuffer = ByteBuffer.allocateDirect(onnxJavaType.size).order(ByteOrder.nativeOrder()).asDoubleBuffer();
                doubleBufferAsDoubleBuffer.put(0, ((Double) obj).doubleValue());
                return doubleBufferAsDoubleBuffer;
            case 3:
            case 4:
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(onnxJavaType.size).order(ByteOrder.nativeOrder());
                byteBufferOrder.put(0, ((Byte) obj).byteValue());
                return byteBufferOrder;
            case 5:
            case 11:
            case 12:
                ShortBuffer shortBufferAsShortBuffer = ByteBuffer.allocateDirect(onnxJavaType.size).order(ByteOrder.nativeOrder()).asShortBuffer();
                shortBufferAsShortBuffer.put(0, ((Short) obj).shortValue());
                return shortBufferAsShortBuffer;
            case 6:
                IntBuffer intBufferAsIntBuffer = ByteBuffer.allocateDirect(onnxJavaType.size).order(ByteOrder.nativeOrder()).asIntBuffer();
                intBufferAsIntBuffer.put(0, ((Integer) obj).intValue());
                return intBufferAsIntBuffer;
            case 7:
                LongBuffer longBufferAsLongBuffer = ByteBuffer.allocateDirect(onnxJavaType.size).order(ByteOrder.nativeOrder()).asLongBuffer();
                longBufferAsLongBuffer.put(0, ((Long) obj).longValue());
                return longBufferAsLongBuffer;
            case 8:
                ByteBuffer byteBufferOrder2 = ByteBuffer.allocateDirect(onnxJavaType.size).order(ByteOrder.nativeOrder());
                byteBufferOrder2.put(0, ((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                return byteBufferOrder2;
            case 9:
            case 10:
            default:
                return null;
        }
    }

    public static Map<String, String> convertToMap(String[][] strArr) {
        if (strArr.length != 2) {
            C1929i.m3029k("Invalid zipped string, must have two arrays.");
            return null;
        }
        if (strArr[0].length != strArr[1].length) {
            C1929i.m3029k("Invalid zipped string, must have two arrays of the same length.");
            return null;
        }
        HashMap map = new HashMap(capacityFromSize(strArr[0].length));
        int i10 = 0;
        while (true) {
            String[] strArr2 = strArr[0];
            if (i10 >= strArr2.length) {
                return Collections.unmodifiableMap(map);
            }
            map.put(strArr2[i10], strArr[1][i10]);
            i10++;
        }
    }

    public static long elementCount(long[] jArr) {
        long j10 = 1;
        for (long j11 : jArr) {
            if (j11 < 0) {
                C0674b.m857x(Arrays.toString(jArr), "Received negative value in shape ", " .");
                return 0L;
            }
            j10 *= j11;
        }
        return j10;
    }

    public static void fillArrayFromBuffer(TensorInfo tensorInfo, Buffer buffer, int i10, Object obj) {
        long[] jArr = tensorInfo.shape;
        if (i10 != jArr.length - 1) {
            long j10 = jArr[i10];
            long length = Array.getLength(obj);
            if (j10 == length) {
                for (int i11 = 0; i11 < length; i11++) {
                    fillArrayFromBuffer(tensorInfo, buffer, i10 + 1, Array.get(obj, i11));
                }
                return;
            }
            throw new IllegalArgumentException("Mismatch in array sizes, expected " + j10 + " at dim " + i10 + " from shape " + Arrays.toString(tensorInfo.shape) + ", found " + length);
        }
        switch (C00711.$SwitchMap$ai$onnxruntime$OnnxJavaType[tensorInfo.type.ordinal()]) {
            case 1:
            case 11:
            case 12:
                ((FloatBuffer) buffer).get((float[]) obj);
                return;
            case 2:
                ((DoubleBuffer) buffer).get((double[]) obj);
                return;
            case 3:
            case 4:
                ((ByteBuffer) buffer).get((byte[]) obj);
                return;
            case 5:
                ((ShortBuffer) buffer).get((short[]) obj);
                return;
            case 6:
                ((IntBuffer) buffer).get((int[]) obj);
                return;
            case 7:
                ((LongBuffer) buffer).get((long[]) obj);
                return;
            case 8:
                boolean[] zArr = (boolean[]) obj;
                ByteBuffer byteBuffer = (ByteBuffer) buffer;
                for (int i12 = 0; i12 < zArr.length; i12++) {
                    zArr[i12] = byteBuffer.get() != 0;
                }
                return;
            case 9:
            case 10:
                C0674b.m848o(tensorInfo.type, "Unexpected type, expected Java primitive found ");
                return;
            default:
                return;
        }
    }

    private static void fillBufferFromArray(TensorInfo tensorInfo, Object obj, int i10, Buffer buffer) {
        long[] jArr = tensorInfo.shape;
        int i11 = 0;
        if (i10 != jArr.length - 1) {
            long j10 = jArr[i10];
            long length = Array.getLength(obj);
            if (j10 == length) {
                while (i11 < length) {
                    fillBufferFromArray(tensorInfo, Array.get(obj, i11), i10 + 1, buffer);
                    i11++;
                }
                return;
            }
            throw new IllegalArgumentException("Mismatch in array sizes, expected " + j10 + " at dim " + i10 + " from shape " + Arrays.toString(tensorInfo.shape) + ", found " + length);
        }
        switch (C00711.$SwitchMap$ai$onnxruntime$OnnxJavaType[tensorInfo.type.ordinal()]) {
            case 1:
                ((FloatBuffer) buffer).put((float[]) obj);
                return;
            case 2:
                ((DoubleBuffer) buffer).put((double[]) obj);
                return;
            case 3:
            case 4:
                ((ByteBuffer) buffer).put((byte[]) obj);
                return;
            case 5:
            case 11:
            case 12:
                ((ShortBuffer) buffer).put((short[]) obj);
                return;
            case 6:
                ((IntBuffer) buffer).put((int[]) obj);
                return;
            case 7:
                ((LongBuffer) buffer).put((long[]) obj);
                return;
            case 8:
                boolean[] zArr = (boolean[]) obj;
                ByteBuffer byteBuffer = (ByteBuffer) buffer;
                while (i11 < zArr.length) {
                    byteBuffer.put(zArr[i11] ? (byte) 1 : (byte) 0);
                    i11++;
                }
                return;
            case 9:
            case 10:
                C0674b.m848o(tensorInfo.type, "Unexpected type, expected Java primitive found ");
                return;
            default:
                return;
        }
    }

    private static void flattenString(Object[] objArr, ArrayList<String> arrayList) {
        for (Object obj : objArr) {
            Class<?> cls = obj.getClass();
            if (!cls.isArray()) {
                C1929i.m3030l(AbstractC0074a.m159j(cls, "Found an element type where there should have been an array. Class = "));
                return;
            }
            if (cls.getComponentType().isArray()) {
                flattenString((Object[]) obj, arrayList);
            } else {
                if (!cls.getComponentType().equals(String.class)) {
                    C1929i.m3030l(AbstractC0074a.m159j(cls, "Found a non-String, non-array element type, "));
                    return;
                }
                arrayList.addAll(Arrays.asList((String[]) obj));
            }
        }
    }

    public static Object newBooleanArray(long[] jArr) {
        return Array.newInstance((Class<?>) Boolean.TYPE, transformShape(jArr));
    }

    public static Object newByteArray(long[] jArr) {
        return Array.newInstance((Class<?>) Byte.TYPE, transformShape(jArr));
    }

    public static Object newDoubleArray(long[] jArr) {
        return Array.newInstance((Class<?>) Double.TYPE, transformShape(jArr));
    }

    public static Object newFloatArray(long[] jArr) {
        return Array.newInstance((Class<?>) Float.TYPE, transformShape(jArr));
    }

    public static Object newIntArray(long[] jArr) {
        return Array.newInstance((Class<?>) Integer.TYPE, transformShape(jArr));
    }

    public static Object newLongArray(long[] jArr) {
        return Array.newInstance((Class<?>) Long.TYPE, transformShape(jArr));
    }

    public static Object newShortArray(long[] jArr) {
        return Array.newInstance((Class<?>) Short.TYPE, transformShape(jArr));
    }

    public static Object newStringArray(long[] jArr) {
        return Array.newInstance((Class<?>) String.class, transformShape(jArr));
    }

    public static BufferTuple prepareBuffer(Buffer buffer, OnnxJavaType onnxJavaType) {
        Buffer bufferPut;
        Buffer buffer2;
        int iPosition;
        if (onnxJavaType == OnnxJavaType.STRING || onnxJavaType == OnnxJavaType.UNKNOWN) {
            C0075b.m182g(onnxJavaType, "Cannot create a ", " tensor from a buffer");
            return null;
        }
        int i10 = buffer instanceof ByteBuffer ? 1 : onnxJavaType.size;
        long j10 = i10;
        if (((long) buffer.remaining()) * j10 > 2147483647L - (j10 * 8)) {
            C0075b.m178c(buffer.remaining(), "Cannot allocate a direct buffer of the requested size and type, size ", ", type = ", onnxJavaType);
            return null;
        }
        int iRemaining = buffer.remaining() * i10;
        if (buffer.isDirect()) {
            buffer2 = buffer;
            iPosition = buffer.position() * i10;
        } else {
            int iPosition2 = buffer.position();
            ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iRemaining).order(ByteOrder.nativeOrder());
            switch (C00711.$SwitchMap$ai$onnxruntime$OnnxJavaType[onnxJavaType.ordinal()]) {
                case 1:
                    bufferPut = byteBufferOrder.asFloatBuffer().put((FloatBuffer) buffer);
                    break;
                case 2:
                    bufferPut = byteBufferOrder.asDoubleBuffer().put((DoubleBuffer) buffer);
                    break;
                case 3:
                case 4:
                case 8:
                    bufferPut = byteBufferOrder.put((ByteBuffer) buffer);
                    break;
                case 5:
                case 11:
                case 12:
                    bufferPut = byteBufferOrder.asShortBuffer().put((ShortBuffer) buffer);
                    break;
                case 6:
                    bufferPut = byteBufferOrder.asIntBuffer().put((IntBuffer) buffer);
                    break;
                case 7:
                    bufferPut = byteBufferOrder.asLongBuffer().put((LongBuffer) buffer);
                    break;
                case 9:
                case 10:
                default:
                    C0075b.m192q(onnxJavaType, "Impossible to reach here, managed to cast a buffer as an incorrect type, found ");
                    return null;
            }
            buffer.position(iPosition2);
            bufferPut.rewind();
            buffer2 = bufferPut;
            iPosition = 0;
        }
        return new BufferTuple(buffer2, iPosition, iRemaining, buffer.remaining(), buffer2 != buffer);
    }

    private static int reshape(Object obj, Object obj2, int i10) {
        if (!obj2.getClass().isArray()) {
            C0075b.m196u(obj2.getClass(), "Found element type when expecting an array. Class ");
            return 0;
        }
        for (Object obj3 : (Object[]) obj2) {
            Class<?> cls = obj3.getClass();
            if (!cls.isArray()) {
                C1929i.m3030l(AbstractC0074a.m159j(cls, "Found element type when expecting an array. Class "));
                return 0;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() || componentType == String.class) {
                int length = Array.getLength(obj3);
                System.arraycopy(obj, i10, obj3, 0, length);
                i10 = length + i10;
            } else {
                i10 = reshape(obj, obj3, i10);
            }
        }
        return i10;
    }

    public static int[] transformShape(long[] jArr) {
        if (jArr.length == 0 || jArr.length > 8) {
            C1929i.m3029k("Arrays with less than 1 and greater than 8 dimensions are not supported.");
            return null;
        }
        int[] iArr = new int[jArr.length];
        for (int i10 = 0; i10 < jArr.length; i10++) {
            long j10 = jArr[i10];
            if (j10 < 0 || j10 > 2147483647L) {
                C0674b.m848o(Arrays.toString(jArr), "Invalid shape for a Java array, expected non-negative entries smaller than Integer.MAX_VALUE. Found ");
                return null;
            }
            iArr[i10] = (int) j10;
        }
        return iArr;
    }

    public static String[][] unpackMap(Map<String, String> map) {
        String[] strArr = new String[map.size()];
        String[] strArr2 = new String[map.size()];
        int i10 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() == null || entry.getValue() == null) {
                C0674b.m858y("Invalid map, keys and values must not be null, found key = ", entry.getKey(), ", value = ", entry.getValue());
                return null;
            }
            strArr[i10] = entry.getKey();
            strArr2[i10] = entry.getValue();
            i10++;
        }
        return new String[][]{strArr, strArr2};
    }

    public static boolean validateShape(long[] jArr) {
        boolean z9 = true;
        for (int i10 = 0; i10 < jArr.length; i10++) {
            long j10 = jArr[i10];
            z9 = z9 & (j10 > 0) & (((long) ((int) j10)) == j10);
        }
        return z9 && jArr.length <= 8;
    }

    public static long[] transformShape(int[] iArr) {
        if (iArr.length != 0 && iArr.length <= 8) {
            long[] jArr = new long[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                long j10 = iArr[i10];
                if (j10 >= 1) {
                    jArr[i10] = j10;
                } else {
                    C0674b.m848o(Arrays.toString(iArr), "Invalid shape for a Java array, expected positive entries smaller than Integer.MAX_VALUE. Found ");
                    return null;
                }
            }
            return jArr;
        }
        C1929i.m3029k("Arrays with less than 1 and greater than 8 dimensions are not supported.");
        return null;
    }

    public static String[] flattenString(Object obj) {
        if (obj instanceof String[]) {
            return (String[]) obj;
        }
        ArrayList arrayList = new ArrayList();
        flattenString((Object[]) obj, arrayList);
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static Object reshape(byte[] bArr, long[] jArr) {
        Object objNewByteArray = newByteArray(jArr);
        reshape(bArr, objNewByteArray, 0);
        return objNewByteArray;
    }

    public static Object reshape(short[] sArr, long[] jArr) {
        Object objNewShortArray = newShortArray(jArr);
        reshape(sArr, objNewShortArray, 0);
        return objNewShortArray;
    }

    public static Object reshape(int[] iArr, long[] jArr) {
        Object objNewIntArray = newIntArray(jArr);
        reshape(iArr, objNewIntArray, 0);
        return objNewIntArray;
    }

    public static Object reshape(long[] jArr, long[] jArr2) {
        Object objNewLongArray = newLongArray(jArr2);
        reshape(jArr, objNewLongArray, 0);
        return objNewLongArray;
    }

    public static Object reshape(float[] fArr, long[] jArr) {
        Object objNewFloatArray = newFloatArray(jArr);
        reshape(fArr, objNewFloatArray, 0);
        return objNewFloatArray;
    }

    public static Object reshape(double[] dArr, long[] jArr) {
        Object objNewDoubleArray = newDoubleArray(jArr);
        reshape(dArr, objNewDoubleArray, 0);
        return objNewDoubleArray;
    }

    public static Object reshape(String[] strArr, long[] jArr) {
        Object objNewStringArray = newStringArray(jArr);
        reshape(strArr, objNewStringArray, 0);
        return objNewStringArray;
    }

    public static Object reshape(boolean[] zArr, long[] jArr) {
        Object objNewBooleanArray = newBooleanArray(jArr);
        reshape(zArr, objNewBooleanArray, 0);
        return objNewBooleanArray;
    }
}
