package androidx.emoji2.text.flatbuffer;

import j1.i;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlatBufferBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    ByteBuffer bb;
    FlatBufferBuilder$ByteBufferFactory bb_factory;
    boolean finished;
    boolean force_defaults;
    int minalign;
    boolean nested;
    int num_vtables;
    int object_start;
    int space;
    final Utf8 utf8;
    int vector_num_elems;
    int[] vtable;
    int vtable_in_use;
    int[] vtables;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlatBufferBuilder(int i9, FlatBufferBuilder$ByteBufferFactory flatBufferBuilder$ByteBufferFactory, ByteBuffer byteBuffer, Utf8 utf8) {
        this.minalign = 1;
        this.vtable = null;
        this.vtable_in_use = 0;
        this.nested = false;
        this.finished = false;
        this.vtables = new int[16];
        this.num_vtables = 0;
        this.vector_num_elems = 0;
        this.force_defaults = false;
        i9 = i9 <= 0 ? 1 : i9;
        this.bb_factory = flatBufferBuilder$ByteBufferFactory;
        if (byteBuffer != null) {
            this.bb = byteBuffer;
            byteBuffer.clear();
            this.bb.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.bb = flatBufferBuilder$ByteBufferFactory.newByteBuffer(i9);
        }
        this.utf8 = utf8;
        this.space = this.bb.capacity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    private int dataStart() {
        finished();
        return this.space;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ByteBuffer growByteBuffer(ByteBuffer byteBuffer, FlatBufferBuilder$ByteBufferFactory flatBufferBuilder$ByteBufferFactory) {
        int iCapacity = byteBuffer.capacity();
        if (((-1073741824) & iCapacity) != 0) {
            i.e("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
            return null;
        }
        int i9 = iCapacity == 0 ? 1 : iCapacity << 1;
        byteBuffer.position(0);
        ByteBuffer byteBufferNewByteBuffer = flatBufferBuilder$ByteBufferFactory.newByteBuffer(i9);
        byteBufferNewByteBuffer.position(byteBufferNewByteBuffer.clear().capacity() - iCapacity);
        byteBufferNewByteBuffer.put(byteBuffer);
        return byteBufferNewByteBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isFieldPresent(Table table, int i9) {
        return table.__offset(i9) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void Nested(int i9) {
        if (i9 == offset()) {
            return;
        }
        i.e("FlatBuffers: struct must be serialized inline.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addBoolean(int i9, boolean z8, boolean z9) {
        if (this.force_defaults || z8 != z9) {
            addBoolean(z8);
            slot(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addByte(int i9, byte b9, int i10) {
        if (this.force_defaults || b9 != i10) {
            addByte(b9);
            slot(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addDouble(int i9, double d, double d9) {
        if (this.force_defaults || d != d9) {
            addDouble(d);
            slot(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addFloat(int i9, float f8, double d) {
        if (this.force_defaults || f8 != d) {
            addFloat(f8);
            slot(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addInt(int i9, int i10, int i11) {
        if (this.force_defaults || i10 != i11) {
            addInt(i10);
            slot(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addLong(int i9, long j9, long j10) {
        if (this.force_defaults || j9 != j10) {
            addLong(j9);
            slot(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOffset(int i9) {
        prep(4, 0);
        putInt((offset() - i9) + 4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addShort(int i9, short s5, int i10) {
        if (this.force_defaults || s5 != i10) {
            addShort(s5);
            slot(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addStruct(int i9, int i10, int i11) {
        if (i10 != i11) {
            Nested(i10);
            slot(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.space = this.bb.capacity();
        this.bb.clear();
        this.minalign = 1;
        while (true) {
            int i9 = this.vtable_in_use;
            if (i9 <= 0) {
                this.vtable_in_use = 0;
                this.nested = false;
                this.finished = false;
                this.object_start = 0;
                this.num_vtables = 0;
                this.vector_num_elems = 0;
                return;
            }
            int[] iArr = this.vtable;
            int i10 = i9 - 1;
            this.vtable_in_use = i10;
            iArr[i10] = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int createByteVector(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        startVector(1, iRemaining, 1);
        ByteBuffer byteBuffer2 = this.bb;
        int i9 = this.space - iRemaining;
        this.space = i9;
        byteBuffer2.position(i9);
        this.bb.put(byteBuffer);
        return endVector();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T extends Table> int createSortedVectorOfTables(T t, int[] iArr) {
        t.sortTables(iArr, this.bb);
        return createVectorOfTables(iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int createString(CharSequence charSequence) {
        int iEncodedLength = this.utf8.encodedLength(charSequence);
        addByte((byte) 0);
        startVector(1, iEncodedLength, 1);
        ByteBuffer byteBuffer = this.bb;
        int i9 = this.space - iEncodedLength;
        this.space = i9;
        byteBuffer.position(i9);
        this.utf8.encodeUtf8(charSequence, this.bb);
        return endVector();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteBuffer createUnintializedVector(int i9, int i10, int i11) {
        int i12 = i9 * i10;
        startVector(i9, i10, i11);
        ByteBuffer byteBuffer = this.bb;
        int i13 = this.space - i12;
        this.space = i13;
        byteBuffer.position(i13);
        ByteBuffer byteBufferOrder = this.bb.slice().order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.limit(i12);
        return byteBufferOrder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int createVectorOfTables(int[] iArr) {
        notNested();
        startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            addOffset(iArr[length]);
        }
        return endVector();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteBuffer dataBuffer() {
        finished();
        return this.bb;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int endTable() {
        int i9;
        if (this.vtable == null || !this.nested) {
            i.e("FlatBuffers: endTable called without startTable");
            return 0;
        }
        addInt(0);
        int iOffset = offset();
        int i10 = this.vtable_in_use - 1;
        while (i10 >= 0 && this.vtable[i10] == 0) {
            i10--;
        }
        for (int i11 = i10; i11 >= 0; i11--) {
            int i12 = this.vtable[i11];
            addShort((short) (i12 != 0 ? iOffset - i12 : 0));
        }
        addShort((short) (iOffset - this.object_start));
        addShort((short) ((i10 + 3) * 2));
        int i13 = 0;
        loop2: while (true) {
            if (i13 >= this.num_vtables) {
                i9 = 0;
                break;
            }
            int iCapacity = this.bb.capacity() - this.vtables[i13];
            int i14 = this.space;
            short s5 = this.bb.getShort(iCapacity);
            if (s5 == this.bb.getShort(i14)) {
                int i15 = 2;
                while (true) {
                    if (i15 >= s5) {
                        i9 = this.vtables[i13];
                        break loop2;
                    }
                    if (this.bb.getShort(iCapacity + i15) != this.bb.getShort(i14 + i15)) {
                        break;
                    }
                    i15 += 2;
                }
            }
            i13++;
        }
        if (i9 != 0) {
            int iCapacity2 = this.bb.capacity() - iOffset;
            this.space = iCapacity2;
            this.bb.putInt(iCapacity2, i9 - iOffset);
        } else {
            int i16 = this.num_vtables;
            int[] iArr = this.vtables;
            if (i16 == iArr.length) {
                this.vtables = Arrays.copyOf(iArr, i16 * 2);
            }
            int[] iArr2 = this.vtables;
            int i17 = this.num_vtables;
            this.num_vtables = i17 + 1;
            iArr2[i17] = offset();
            ByteBuffer byteBuffer = this.bb;
            byteBuffer.putInt(byteBuffer.capacity() - iOffset, offset() - iOffset);
        }
        this.nested = false;
        return iOffset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int endVector() {
        if (!this.nested) {
            i.e("FlatBuffers: endVector called without startVector");
            return 0;
        }
        this.nested = false;
        putInt(this.vector_num_elems);
        return offset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void finish(int i9, String str, boolean z8) {
        prep(this.minalign, (z8 ? 4 : 0) + 8);
        if (str.length() != 4) {
            i.e("FlatBuffers: file identifier must be length 4");
            return;
        }
        for (int i10 = 3; i10 >= 0; i10--) {
            addByte((byte) str.charAt(i10));
        }
        finish(i9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void finishSizePrefixed(int i9) {
        finish(i9, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void finished() {
        if (this.finished) {
            return;
        }
        i.e("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlatBufferBuilder forceDefaults(boolean z8) {
        this.force_defaults = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlatBufferBuilder init(ByteBuffer byteBuffer, FlatBufferBuilder$ByteBufferFactory flatBufferBuilder$ByteBufferFactory) {
        this.bb_factory = flatBufferBuilder$ByteBufferFactory;
        this.bb = byteBuffer;
        byteBuffer.clear();
        this.bb.order(ByteOrder.LITTLE_ENDIAN);
        this.minalign = 1;
        this.space = this.bb.capacity();
        this.vtable_in_use = 0;
        this.nested = false;
        this.finished = false;
        this.object_start = 0;
        this.num_vtables = 0;
        this.vector_num_elems = 0;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notNested() {
        if (this.nested) {
            i.e("FlatBuffers: object serialization must not be nested.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int offset() {
        return this.bb.capacity() - this.space;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void pad(int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            ByteBuffer byteBuffer = this.bb;
            int i11 = this.space - 1;
            this.space = i11;
            byteBuffer.put(i11, (byte) 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void prep(int i9, int i10) {
        if (i9 > this.minalign) {
            this.minalign = i9;
        }
        int i11 = ((~((this.bb.capacity() - this.space) + i10)) + 1) & (i9 - 1);
        while (this.space < i11 + i9 + i10) {
            int iCapacity = this.bb.capacity();
            ByteBuffer byteBuffer = this.bb;
            ByteBuffer byteBufferGrowByteBuffer = growByteBuffer(byteBuffer, this.bb_factory);
            this.bb = byteBufferGrowByteBuffer;
            if (byteBuffer != byteBufferGrowByteBuffer) {
                this.bb_factory.releaseByteBuffer(byteBuffer);
            }
            this.space = (this.bb.capacity() - iCapacity) + this.space;
        }
        pad(i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putBoolean(boolean z8) {
        ByteBuffer byteBuffer = this.bb;
        int i9 = this.space - 1;
        this.space = i9;
        byteBuffer.put(i9, z8 ? (byte) 1 : (byte) 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putByte(byte b9) {
        ByteBuffer byteBuffer = this.bb;
        int i9 = this.space - 1;
        this.space = i9;
        byteBuffer.put(i9, b9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putDouble(double d) {
        ByteBuffer byteBuffer = this.bb;
        int i9 = this.space - 8;
        this.space = i9;
        byteBuffer.putDouble(i9, d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putFloat(float f8) {
        ByteBuffer byteBuffer = this.bb;
        int i9 = this.space - 4;
        this.space = i9;
        byteBuffer.putFloat(i9, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putInt(int i9) {
        ByteBuffer byteBuffer = this.bb;
        int i10 = this.space - 4;
        this.space = i10;
        byteBuffer.putInt(i10, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putLong(long j9) {
        ByteBuffer byteBuffer = this.bb;
        int i9 = this.space - 8;
        this.space = i9;
        byteBuffer.putLong(i9, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putShort(short s5) {
        ByteBuffer byteBuffer = this.bb;
        int i9 = this.space - 2;
        this.space = i9;
        byteBuffer.putShort(i9, s5);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void required(int i9, int i10) {
        int iCapacity = this.bb.capacity() - i9;
        if (this.bb.getShort((iCapacity - this.bb.getInt(iCapacity)) + i10) != 0) {
            return;
        }
        i.e(ai.onnxruntime.a.f(i10, "FlatBuffers: field ", " must be set"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] sizedByteArray(int i9, int i10) {
        finished();
        byte[] bArr = new byte[i10];
        this.bb.position(i9);
        this.bb.get(bArr);
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream sizedInputStream() {
        finished();
        ByteBuffer byteBufferDuplicate = this.bb.duplicate();
        byteBufferDuplicate.position(this.space);
        byteBufferDuplicate.limit(this.bb.capacity());
        return new FlatBufferBuilder$ByteBufferBackedInputStream(byteBufferDuplicate);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void slot(int i9) {
        this.vtable[i9] = offset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void startTable(int i9) {
        notNested();
        int[] iArr = this.vtable;
        if (iArr == null || iArr.length < i9) {
            this.vtable = new int[i9];
        }
        this.vtable_in_use = i9;
        Arrays.fill(this.vtable, 0, i9, 0);
        this.nested = true;
        this.object_start = offset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void startVector(int i9, int i10, int i11) {
        notNested();
        this.vector_num_elems = i10;
        int i12 = i9 * i10;
        prep(4, i12);
        prep(i11, i12);
        this.nested = true;
    }

    public void finishSizePrefixed(int i9, String str) {
        finish(i9, str, true);
    }

    public void addBoolean(boolean z8) {
        prep(1, 0);
        putBoolean(z8);
    }

    public void addByte(byte b9) {
        prep(1, 0);
        putByte(b9);
    }

    public void addInt(int i9) {
        prep(4, 0);
        putInt(i9);
    }

    public void addOffset(int i9, int i10, int i11) {
        if (this.force_defaults || i10 != i11) {
            addOffset(i10);
            slot(i9);
        }
    }

    public void addShort(short s5) {
        prep(2, 0);
        putShort(s5);
    }

    public byte[] sizedByteArray() {
        return sizedByteArray(this.space, this.bb.capacity() - this.space);
    }

    public void addDouble(double d) {
        prep(8, 0);
        putDouble(d);
    }

    public void addLong(long j9) {
        prep(8, 0);
        putLong(j9);
    }

    public void addFloat(float f8) {
        prep(4, 0);
        putFloat(f8);
    }

    public int createByteVector(byte[] bArr, int i9, int i10) {
        startVector(1, i10, 1);
        ByteBuffer byteBuffer = this.bb;
        int i11 = this.space - i10;
        this.space = i11;
        byteBuffer.position(i11);
        this.bb.put(bArr, i9, i10);
        return endVector();
    }

    public int createByteVector(byte[] bArr) {
        int length = bArr.length;
        startVector(1, length, 1);
        ByteBuffer byteBuffer = this.bb;
        int i9 = this.space - length;
        this.space = i9;
        byteBuffer.position(i9);
        this.bb.put(bArr);
        return endVector();
    }

    public int createString(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        addByte((byte) 0);
        startVector(1, iRemaining, 1);
        ByteBuffer byteBuffer2 = this.bb;
        int i9 = this.space - iRemaining;
        this.space = i9;
        byteBuffer2.position(i9);
        this.bb.put(byteBuffer);
        return endVector();
    }

    public void finish(int i9) {
        finish(i9, false);
    }

    public void finish(int i9, boolean z8) {
        prep(this.minalign, (z8 ? 4 : 0) + 4);
        addOffset(i9);
        if (z8) {
            addInt(this.bb.capacity() - this.space);
        }
        this.bb.position(this.space);
        this.finished = true;
    }

    public void finish(int i9, String str) {
        finish(i9, str, false);
    }

    public FlatBufferBuilder(int i9, FlatBufferBuilder$ByteBufferFactory flatBufferBuilder$ByteBufferFactory) {
        this(i9, flatBufferBuilder$ByteBufferFactory, null, Utf8.getDefault());
    }

    public FlatBufferBuilder(int i9) {
        this(i9, FlatBufferBuilder$HeapByteBufferFactory.INSTANCE, null, Utf8.getDefault());
    }

    public FlatBufferBuilder() {
        this(1024);
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer, FlatBufferBuilder$ByteBufferFactory flatBufferBuilder$ByteBufferFactory) {
        this(byteBuffer.capacity(), flatBufferBuilder$ByteBufferFactory, byteBuffer, Utf8.getDefault());
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, new FlatBufferBuilder$HeapByteBufferFactory());
    }
}
