package androidx.emoji2.text.flatbuffer;

import j1.i;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Table {
    protected ByteBuffer bb;
    protected int bb_pos;
    Utf8 utf8 = Utf8.getDefault();
    private int vtable_size;
    private int vtable_start;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean __has_identifier(ByteBuffer byteBuffer, String str) {
        if (str.length() != 4) {
            i.e("FlatBuffers: file identifier must be length 4");
            return false;
        }
        for (int i9 = 0; i9 < 4; i9++) {
            if (str.charAt(i9) != ((char) byteBuffer.get(byteBuffer.position() + 4 + i9))) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int __offset(int i9, int i10, ByteBuffer byteBuffer) {
        int iCapacity = byteBuffer.capacity() - i10;
        return byteBuffer.getShort((i9 + iCapacity) - byteBuffer.getInt(iCapacity)) + iCapacity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String __string(int i9, ByteBuffer byteBuffer, Utf8 utf8) {
        int i10 = byteBuffer.getInt(i9) + i9;
        return utf8.decodeUtf8(byteBuffer, i10 + 4, byteBuffer.getInt(i10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Table __union(Table table, int i9, ByteBuffer byteBuffer) {
        table.__reset(__indirect(i9, byteBuffer), byteBuffer);
        return table;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int compareStrings(int i9, int i10, ByteBuffer byteBuffer) {
        int i11 = byteBuffer.getInt(i9) + i9;
        int i12 = byteBuffer.getInt(i10) + i10;
        int i13 = byteBuffer.getInt(i11);
        int i14 = byteBuffer.getInt(i12);
        int i15 = i11 + 4;
        int i16 = i12 + 4;
        int iMin = Math.min(i13, i14);
        for (int i17 = 0; i17 < iMin; i17++) {
            int i18 = i17 + i15;
            int i19 = i17 + i16;
            if (byteBuffer.get(i18) != byteBuffer.get(i19)) {
                return byteBuffer.get(i18) - byteBuffer.get(i19);
            }
        }
        return i13 - i14;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int __indirect(int i9) {
        return this.bb.getInt(i9) + i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void __reset(int i9, ByteBuffer byteBuffer) {
        this.bb = byteBuffer;
        if (byteBuffer == null) {
            this.bb_pos = 0;
            this.vtable_start = 0;
            this.vtable_size = 0;
        } else {
            this.bb_pos = i9;
            int i10 = i9 - byteBuffer.getInt(i9);
            this.vtable_start = i10;
            this.vtable_size = this.bb.getShort(i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int __vector(int i9) {
        int i10 = i9 + this.bb_pos;
        return this.bb.getInt(i10) + i10 + 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteBuffer __vector_as_bytebuffer(int i9, int i10) {
        int i__offset = __offset(i9);
        if (i__offset == 0) {
            return null;
        }
        ByteBuffer byteBufferOrder = this.bb.duplicate().order(ByteOrder.LITTLE_ENDIAN);
        int i__vector = __vector(i__offset);
        byteBufferOrder.position(i__vector);
        byteBufferOrder.limit((__vector_len(i__offset) * i10) + i__vector);
        return byteBufferOrder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteBuffer __vector_in_bytebuffer(ByteBuffer byteBuffer, int i9, int i10) {
        int i__offset = __offset(i9);
        if (i__offset == 0) {
            return null;
        }
        int i__vector = __vector(i__offset);
        byteBuffer.rewind();
        byteBuffer.limit((__vector_len(i__offset) * i10) + i__vector);
        byteBuffer.position(i__vector);
        return byteBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int __vector_len(int i9) {
        int i10 = i9 + this.bb_pos;
        return this.bb.getInt(this.bb.getInt(i10) + i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteBuffer getByteBuffer() {
        return this.bb;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int keysCompare(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sortTables(int[] iArr, ByteBuffer byteBuffer) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i9 = 0; i9 < iArr.length; i9++) {
            numArr[i9] = Integer.valueOf(iArr[i9]);
        }
        Arrays.sort(numArr, new Table$1(this, byteBuffer));
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr[i10] = numArr[i10].intValue();
        }
    }

    public static int __indirect(int i9, ByteBuffer byteBuffer) {
        return byteBuffer.getInt(i9) + i9;
    }

    public Table __union(Table table, int i9) {
        return __union(table, i9, this.bb);
    }

    public String __string(int i9) {
        return __string(i9, this.bb, this.utf8);
    }

    public int __offset(int i9) {
        if (i9 < this.vtable_size) {
            return this.bb.getShort(this.vtable_start + i9);
        }
        return 0;
    }

    public void __reset() {
        __reset(0, null);
    }

    public static int compareStrings(int i9, byte[] bArr, ByteBuffer byteBuffer) {
        int i10 = byteBuffer.getInt(i9) + i9;
        int i11 = byteBuffer.getInt(i10);
        int length = bArr.length;
        int i12 = i10 + 4;
        int iMin = Math.min(i11, length);
        for (int i13 = 0; i13 < iMin; i13++) {
            int i14 = i13 + i12;
            if (byteBuffer.get(i14) != bArr[i13]) {
                return byteBuffer.get(i14) - bArr[i13];
            }
        }
        return i11 - length;
    }
}
