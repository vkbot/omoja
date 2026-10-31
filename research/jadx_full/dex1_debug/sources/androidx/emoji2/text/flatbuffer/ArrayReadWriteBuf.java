package androidx.emoji2.text.flatbuffer;

import java.util.Arrays;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ArrayReadWriteBuf implements ReadWriteBuf {
    private byte[] buffer;
    private int writePos;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayReadWriteBuf(byte[] bArr) {
        this.buffer = bArr;
        this.writePos = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte[] data() {
        return this.buffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int i9) {
        return this.buffer[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public boolean getBoolean(int i9) {
        return this.buffer[i9] != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int i9) {
        return Double.longBitsToDouble(getLong(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int i9) {
        return Float.intBitsToFloat(getInt(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int i9) {
        byte[] bArr = this.buffer;
        return (bArr[i9] & UByte.MAX_VALUE) | (bArr[i9 + 3] << 24) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int i9) {
        byte[] bArr = this.buffer;
        int i10 = i9 + 6;
        return (((long) bArr[i9]) & 255) | ((((long) bArr[i9 + 1]) & 255) << 8) | ((((long) bArr[i9 + 2]) & 255) << 16) | ((((long) bArr[i9 + 3]) & 255) << 24) | ((((long) bArr[i9 + 4]) & 255) << 32) | ((((long) bArr[i9 + 5]) & 255) << 40) | ((((long) bArr[i10]) & 255) << 48) | (((long) bArr[i9 + 7]) << 56);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int i9) {
        byte[] bArr = this.buffer;
        return (short) ((bArr[i9] & UByte.MAX_VALUE) | (bArr[i9 + 1] << 8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String getString(int i9, int i10) {
        return Utf8Safe.decodeUtf8Array(this.buffer, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf, androidx.emoji2.text.flatbuffer.ReadBuf
    public int limit() {
        return this.writePos;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte b9) {
        set(this.writePos, b9);
        this.writePos++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putBoolean(boolean z8) {
        setBoolean(this.writePos, z8);
        this.writePos++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putDouble(double d) {
        setDouble(this.writePos, d);
        this.writePos += 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putFloat(float f8) {
        setFloat(this.writePos, f8);
        this.writePos += 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putInt(int i9) {
        setInt(this.writePos, i9);
        this.writePos += 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putLong(long j9) {
        setLong(this.writePos, j9);
        this.writePos += 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putShort(short s5) {
        setShort(this.writePos, s5);
        this.writePos += 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public boolean requestCapacity(int i9) {
        byte[] bArr = this.buffer;
        if (bArr.length > i9) {
            return true;
        }
        int length = bArr.length;
        this.buffer = Arrays.copyOf(bArr, length + (length >> 1));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i9, byte[] bArr, int i10, int i11) {
        requestCapacity((i11 - i10) + i9);
        System.arraycopy(bArr, i10, this.buffer, i9, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setBoolean(int i9, boolean z8) {
        set(i9, z8 ? (byte) 1 : (byte) 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setDouble(int i9, double d) {
        requestCapacity(i9 + 8);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d);
        int i10 = (int) jDoubleToRawLongBits;
        byte[] bArr = this.buffer;
        bArr[i9] = (byte) (i10 & 255);
        bArr[i9 + 1] = (byte) ((i10 >> 8) & 255);
        bArr[i9 + 2] = (byte) ((i10 >> 16) & 255);
        bArr[i9 + 3] = (byte) ((i10 >> 24) & 255);
        int i11 = (int) (jDoubleToRawLongBits >> 32);
        bArr[i9 + 4] = (byte) (i11 & 255);
        bArr[i9 + 5] = (byte) ((i11 >> 8) & 255);
        bArr[i9 + 6] = (byte) ((i11 >> 16) & 255);
        bArr[i9 + 7] = (byte) ((i11 >> 24) & 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setFloat(int i9, float f8) {
        requestCapacity(i9 + 4);
        int iFloatToRawIntBits = Float.floatToRawIntBits(f8);
        byte[] bArr = this.buffer;
        bArr[i9] = (byte) (iFloatToRawIntBits & 255);
        bArr[i9 + 1] = (byte) ((iFloatToRawIntBits >> 8) & 255);
        bArr[i9 + 2] = (byte) ((iFloatToRawIntBits >> 16) & 255);
        bArr[i9 + 3] = (byte) ((iFloatToRawIntBits >> 24) & 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setInt(int i9, int i10) {
        requestCapacity(i9 + 4);
        byte[] bArr = this.buffer;
        bArr[i9] = (byte) (i10 & 255);
        bArr[i9 + 1] = (byte) ((i10 >> 8) & 255);
        bArr[i9 + 2] = (byte) ((i10 >> 16) & 255);
        bArr[i9 + 3] = (byte) ((i10 >> 24) & 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setLong(int i9, long j9) {
        requestCapacity(i9 + 8);
        int i10 = (int) j9;
        byte[] bArr = this.buffer;
        bArr[i9] = (byte) (i10 & 255);
        bArr[i9 + 1] = (byte) ((i10 >> 8) & 255);
        bArr[i9 + 2] = (byte) ((i10 >> 16) & 255);
        bArr[i9 + 3] = (byte) ((i10 >> 24) & 255);
        int i11 = (int) (j9 >> 32);
        bArr[i9 + 4] = (byte) (i11 & 255);
        bArr[i9 + 5] = (byte) ((i11 >> 8) & 255);
        bArr[i9 + 6] = (byte) ((i11 >> 16) & 255);
        bArr[i9 + 7] = (byte) ((i11 >> 24) & 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setShort(int i9, short s5) {
        requestCapacity(i9 + 2);
        byte[] bArr = this.buffer;
        bArr[i9] = (byte) (s5 & 255);
        bArr[i9 + 1] = (byte) ((s5 >> 8) & 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public int writePosition() {
        return this.writePos;
    }

    public ArrayReadWriteBuf(int i9) {
        this(new byte[i9]);
    }

    public ArrayReadWriteBuf() {
        this(10);
    }

    public ArrayReadWriteBuf(byte[] bArr, int i9) {
        this.buffer = bArr;
        this.writePos = i9;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte[] bArr, int i9, int i10) {
        set(this.writePos, bArr, i9, i10);
        this.writePos += i10;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i9, byte b9) {
        requestCapacity(i9 + 1);
        this.buffer[i9] = b9;
    }
}
