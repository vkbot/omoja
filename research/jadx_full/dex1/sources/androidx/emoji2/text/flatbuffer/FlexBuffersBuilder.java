package androidx.emoji2.text.flatbuffer;

import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffersBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int BUILDER_FLAG_NONE = 0;
    public static final int BUILDER_FLAG_SHARE_ALL = 7;
    public static final int BUILDER_FLAG_SHARE_KEYS = 1;
    public static final int BUILDER_FLAG_SHARE_KEYS_AND_STRINGS = 3;
    public static final int BUILDER_FLAG_SHARE_KEY_VECTORS = 4;
    public static final int BUILDER_FLAG_SHARE_STRINGS = 2;
    private static final int WIDTH_16 = 1;
    private static final int WIDTH_32 = 2;
    private static final int WIDTH_64 = 3;
    private static final int WIDTH_8 = 0;
    private final ReadWriteBuf bb;
    private boolean finished;
    private final int flags;
    private Comparator<FlexBuffersBuilder$Value> keyComparator;
    private final HashMap<String, Integer> keyPool;
    private final ArrayList<FlexBuffersBuilder$Value> stack;
    private final HashMap<String, Integer> stringPool;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffersBuilder(ReadWriteBuf readWriteBuf, int i9) {
        this.stack = new ArrayList<>();
        this.keyPool = new HashMap<>();
        this.stringPool = new HashMap<>();
        this.finished = false;
        this.keyComparator = new FlexBuffersBuilder$1(this);
        this.bb = readWriteBuf;
        this.flags = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ReadWriteBuf access$000(FlexBuffersBuilder flexBuffersBuilder) {
        return flexBuffersBuilder.bb;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int align(int i9) {
        int i10 = 1 << i9;
        int iAccess$100 = FlexBuffersBuilder$Value.access$100(this.bb.writePosition(), i10);
        while (true) {
            int i11 = iAccess$100 - 1;
            if (iAccess$100 == 0) {
                return i10;
            }
            this.bb.put((byte) 0);
            iAccess$100 = i11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FlexBuffersBuilder$Value createKeyVector(int i9, int i10) {
        long j9 = i10;
        int iMax = Math.max(0, widthUInBits(j9));
        int i11 = i9;
        while (i11 < this.stack.size()) {
            int i12 = i11 + 1;
            iMax = Math.max(iMax, FlexBuffersBuilder$Value.access$500(4, 0, this.stack.get(i11).key, this.bb.writePosition(), i12));
            i11 = i12;
        }
        int iAlign = align(iMax);
        writeInt(j9, iAlign);
        int iWritePosition = this.bb.writePosition();
        while (i9 < this.stack.size()) {
            int i13 = this.stack.get(i9).key;
            writeOffset(this.stack.get(i9).key, iAlign);
            i9++;
        }
        return new FlexBuffersBuilder$Value(-1, FlexBuffers.toTypedVector(4, 0), iMax, iWritePosition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FlexBuffersBuilder$Value createVector(int i9, int i10, int i11, boolean z8, boolean z9, FlexBuffersBuilder$Value flexBuffersBuilder$Value) {
        int i12;
        int typedVector;
        int i13 = i11;
        long j9 = i13;
        int iMax = Math.max(0, widthUInBits(j9));
        if (flexBuffersBuilder$Value != null) {
            iMax = Math.max(iMax, FlexBuffersBuilder$Value.access$200(flexBuffersBuilder$Value, this.bb.writePosition(), 0));
            i12 = 3;
        } else {
            i12 = 1;
        }
        int i14 = 4;
        int iMax2 = iMax;
        for (int i15 = i10; i15 < this.stack.size(); i15++) {
            iMax2 = Math.max(iMax2, FlexBuffersBuilder$Value.access$200(this.stack.get(i15), this.bb.writePosition(), i15 + i12));
            if (z8 && i15 == i10) {
                i14 = this.stack.get(i15).type;
                if (!FlexBuffers.isTypedVectorElementType(i14)) {
                    throw new FlexBuffers$FlexBufferException("TypedVector does not support this element type");
                }
            }
        }
        int i16 = i10;
        int iAlign = align(iMax2);
        if (flexBuffersBuilder$Value != null) {
            writeOffset(flexBuffersBuilder$Value.iValue, iAlign);
            writeInt(1 << flexBuffersBuilder$Value.minBitWidth, iAlign);
        }
        if (!z9) {
            writeInt(j9, iAlign);
        }
        int iWritePosition = this.bb.writePosition();
        for (int i17 = i16; i17 < this.stack.size(); i17++) {
            writeAny(this.stack.get(i17), iAlign);
        }
        if (!z8) {
            while (i16 < this.stack.size()) {
                this.bb.put(FlexBuffersBuilder$Value.access$400(this.stack.get(i16), iMax2));
                i16++;
            }
        }
        if (flexBuffersBuilder$Value != null) {
            typedVector = 9;
        } else if (z8) {
            if (!z9) {
                i13 = 0;
            }
            typedVector = FlexBuffers.toTypedVector(i14, i13);
        } else {
            typedVector = 10;
        }
        return new FlexBuffersBuilder$Value(i9, typedVector, iMax2, iWritePosition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int putKey(String str) {
        if (str == null) {
            return -1;
        }
        int iWritePosition = this.bb.writePosition();
        if ((this.flags & 1) == 0) {
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            this.bb.put(bytes, 0, bytes.length);
            this.bb.put((byte) 0);
            this.keyPool.put(str, Integer.valueOf(iWritePosition));
            return iWritePosition;
        }
        Integer num = this.keyPool.get(str);
        if (num != null) {
            return num.intValue();
        }
        byte[] bytes2 = str.getBytes(StandardCharsets.UTF_8);
        this.bb.put(bytes2, 0, bytes2.length);
        this.bb.put((byte) 0);
        this.keyPool.put(str, Integer.valueOf(iWritePosition));
        return iWritePosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void putUInt(String str, long j9) {
        FlexBuffersBuilder$Value flexBuffersBuilder$ValueUInt32;
        int iPutKey = putKey(str);
        int iWidthUInBits = widthUInBits(j9);
        if (iWidthUInBits == 0) {
            flexBuffersBuilder$ValueUInt32 = FlexBuffersBuilder$Value.uInt8(iPutKey, (int) j9);
        } else if (iWidthUInBits == 1) {
            flexBuffersBuilder$ValueUInt32 = FlexBuffersBuilder$Value.uInt16(iPutKey, (int) j9);
        } else {
            flexBuffersBuilder$ValueUInt32 = iWidthUInBits == 2 ? FlexBuffersBuilder$Value.uInt32(iPutKey, (int) j9) : FlexBuffersBuilder$Value.uInt64(iPutKey, j9);
        }
        this.stack.add(flexBuffersBuilder$ValueUInt32);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void putUInt64(String str, long j9) {
        this.stack.add(FlexBuffersBuilder$Value.uInt64(putKey(str), j9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int widthUInBits(long j9) {
        if (j9 <= FlexBuffers$Unsigned.byteToUnsignedInt((byte) -1)) {
            return 0;
        }
        if (j9 <= FlexBuffers$Unsigned.shortToUnsignedInt((short) -1)) {
            return 1;
        }
        return j9 <= FlexBuffers$Unsigned.intToUnsignedLong(-1) ? 2 : 3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeAny(FlexBuffersBuilder$Value flexBuffersBuilder$Value, int i9) {
        int i10 = flexBuffersBuilder$Value.type;
        if (i10 != 0 && i10 != 1 && i10 != 2) {
            if (i10 == 3) {
                writeDouble(flexBuffersBuilder$Value.dValue, i9);
                return;
            } else if (i10 != 26) {
                writeOffset(flexBuffersBuilder$Value.iValue, i9);
                return;
            }
        }
        writeInt(flexBuffersBuilder$Value.iValue, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FlexBuffersBuilder$Value writeBlob(int i9, byte[] bArr, int i10, boolean z8) {
        int iWidthUInBits = widthUInBits(bArr.length);
        writeInt(bArr.length, align(iWidthUInBits));
        int iWritePosition = this.bb.writePosition();
        this.bb.put(bArr, 0, bArr.length);
        if (z8) {
            this.bb.put((byte) 0);
        }
        return FlexBuffersBuilder$Value.blob(i9, iWritePosition, i10, iWidthUInBits);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeDouble(double d, int i9) {
        if (i9 == 4) {
            this.bb.putFloat((float) d);
        } else if (i9 == 8) {
            this.bb.putDouble(d);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeInt(long j9, int i9) {
        if (i9 == 1) {
            this.bb.put((byte) j9);
            return;
        }
        if (i9 == 2) {
            this.bb.putShort((short) j9);
        } else if (i9 == 4) {
            this.bb.putInt((int) j9);
        } else {
            if (i9 != 8) {
                return;
            }
            this.bb.putLong(j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeOffset(long j9, int i9) {
        writeInt((int) (((long) this.bb.writePosition()) - j9), i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FlexBuffersBuilder$Value writeString(int i9, String str) {
        return writeBlob(i9, str.getBytes(StandardCharsets.UTF_8), 5, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int endMap(String str, int i9) {
        int iPutKey = putKey(str);
        ArrayList<FlexBuffersBuilder$Value> arrayList = this.stack;
        Collections.sort(arrayList.subList(i9, arrayList.size()), this.keyComparator);
        FlexBuffersBuilder$Value flexBuffersBuilder$ValueCreateVector = createVector(iPutKey, i9, this.stack.size() - i9, false, false, createKeyVector(i9, this.stack.size() - i9));
        while (true) {
            int size = this.stack.size();
            ArrayList<FlexBuffersBuilder$Value> arrayList2 = this.stack;
            if (size <= i9) {
                arrayList2.add(flexBuffersBuilder$ValueCreateVector);
                return (int) flexBuffersBuilder$ValueCreateVector.iValue;
            }
            arrayList2.remove(arrayList2.size() - 1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int endVector(String str, int i9, boolean z8, boolean z9) {
        FlexBuffersBuilder$Value flexBuffersBuilder$ValueCreateVector = createVector(putKey(str), i9, this.stack.size() - i9, z8, z9, null);
        while (true) {
            int size = this.stack.size();
            ArrayList<FlexBuffersBuilder$Value> arrayList = this.stack;
            if (size <= i9) {
                arrayList.add(flexBuffersBuilder$ValueCreateVector);
                return (int) flexBuffersBuilder$ValueCreateVector.iValue;
            }
            arrayList.remove(arrayList.size() - 1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteBuffer finish() {
        int iAlign = align(FlexBuffersBuilder$Value.access$200(this.stack.get(0), this.bb.writePosition(), 0));
        writeAny(this.stack.get(0), iAlign);
        this.bb.put(FlexBuffersBuilder$Value.access$300(this.stack.get(0)));
        this.bb.put((byte) iAlign);
        this.finished = true;
        return ByteBuffer.wrap(this.bb.data(), 0, this.bb.writePosition());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ReadWriteBuf getBuffer() {
        return this.bb;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int putBlob(String str, byte[] bArr) {
        FlexBuffersBuilder$Value flexBuffersBuilder$ValueWriteBlob = writeBlob(putKey(str), bArr, 25, false);
        this.stack.add(flexBuffersBuilder$ValueWriteBlob);
        return (int) flexBuffersBuilder$ValueWriteBlob.iValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putBoolean(String str, boolean z8) {
        this.stack.add(FlexBuffersBuilder$Value.bool(putKey(str), z8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putFloat(String str, float f8) {
        this.stack.add(FlexBuffersBuilder$Value.float32(putKey(str), f8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putInt(String str, long j9) {
        int iPutKey = putKey(str);
        if (-128 <= j9 && j9 <= 127) {
            this.stack.add(FlexBuffersBuilder$Value.int8(iPutKey, (int) j9));
            return;
        }
        if (-32768 <= j9 && j9 <= 32767) {
            this.stack.add(FlexBuffersBuilder$Value.int16(iPutKey, (int) j9));
        } else if (-2147483648L > j9 || j9 > 2147483647L) {
            this.stack.add(FlexBuffersBuilder$Value.int64(iPutKey, j9));
        } else {
            this.stack.add(FlexBuffersBuilder$Value.int32(iPutKey, (int) j9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int putString(String str, String str2) {
        int iPutKey = putKey(str);
        if ((this.flags & 2) == 0) {
            FlexBuffersBuilder$Value flexBuffersBuilder$ValueWriteString = writeString(iPutKey, str2);
            this.stack.add(flexBuffersBuilder$ValueWriteString);
            return (int) flexBuffersBuilder$ValueWriteString.iValue;
        }
        Integer num = this.stringPool.get(str2);
        if (num != null) {
            this.stack.add(FlexBuffersBuilder$Value.blob(iPutKey, num.intValue(), 5, widthUInBits(str2.length())));
            return num.intValue();
        }
        FlexBuffersBuilder$Value flexBuffersBuilder$ValueWriteString2 = writeString(iPutKey, str2);
        this.stringPool.put(str2, Integer.valueOf((int) flexBuffersBuilder$ValueWriteString2.iValue));
        this.stack.add(flexBuffersBuilder$ValueWriteString2);
        return (int) flexBuffersBuilder$ValueWriteString2.iValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int startMap() {
        return this.stack.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int startVector() {
        return this.stack.size();
    }

    public void putBoolean(boolean z8) {
        putBoolean(null, z8);
    }

    public void putFloat(float f8) {
        putFloat((String) null, f8);
    }

    public void putUInt64(BigInteger bigInteger) {
        putUInt64(null, bigInteger.longValue());
    }

    public void putFloat(double d) {
        putFloat((String) null, d);
    }

    public void putFloat(String str, double d) {
        this.stack.add(FlexBuffersBuilder$Value.float64(putKey(str), d));
    }

    public int putBlob(byte[] bArr) {
        return putBlob(null, bArr);
    }

    public FlexBuffersBuilder() {
        this(256);
    }

    @Deprecated
    public FlexBuffersBuilder(ByteBuffer byteBuffer, int i9) {
        this(new ArrayReadWriteBuf(byteBuffer.array()), i9);
    }

    public FlexBuffersBuilder(int i9) {
        this(new ArrayReadWriteBuf(i9), 1);
    }

    public FlexBuffersBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, 1);
    }

    public void putUInt(long j9) {
        putUInt(null, j9);
    }

    public void putUInt(int i9) {
        putUInt(null, i9);
    }

    public void putInt(String str, int i9) {
        putInt(str, i9);
    }

    public void putInt(int i9) {
        putInt((String) null, i9);
    }

    public int putString(String str) {
        return putString(null, str);
    }

    public void putInt(long j9) {
        putInt((String) null, j9);
    }
}
