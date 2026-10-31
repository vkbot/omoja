package androidx.exifinterface.media;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExifInterface$ByteOrderedDataInputStream extends InputStream implements DataInput {
    private ByteOrder mByteOrder;
    final DataInputStream mDataInputStream;
    int mPosition;
    private byte[] mSkipBuffer;
    private static final ByteOrder LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;
    private static final ByteOrder BIG_ENDIAN = ByteOrder.BIG_ENDIAN;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExifInterface$ByteOrderedDataInputStream(InputStream inputStream, ByteOrder byteOrder) {
        this.mByteOrder = ByteOrder.BIG_ENDIAN;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.mDataInputStream = dataInputStream;
        dataInputStream.mark(0);
        this.mPosition = 0;
        this.mByteOrder = byteOrder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int available() {
        return this.mDataInputStream.available();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public void mark(int i9) {
        throw new UnsupportedOperationException("Mark is currently unsupported");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int position() {
        return this.mPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read() {
        this.mPosition++;
        return this.mDataInputStream.read();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public boolean readBoolean() {
        this.mPosition++;
        return this.mDataInputStream.readBoolean();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        this.mPosition++;
        int i9 = this.mDataInputStream.read();
        if (i9 >= 0) {
            return (byte) i9;
        }
        throw new EOFException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public char readChar() {
        this.mPosition += 2;
        return this.mDataInputStream.readChar();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        this.mPosition += bArr.length;
        this.mDataInputStream.readFully(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public int readInt() throws IOException {
        this.mPosition += 4;
        int i9 = this.mDataInputStream.read();
        int i10 = this.mDataInputStream.read();
        int i11 = this.mDataInputStream.read();
        int i12 = this.mDataInputStream.read();
        if ((i9 | i10 | i11 | i12) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == LITTLE_ENDIAN) {
            return (i12 << 24) + (i11 << 16) + (i10 << 8) + i9;
        }
        if (byteOrder == BIG_ENDIAN) {
            return (i9 << 24) + (i10 << 16) + (i11 << 8) + i12;
        }
        b.w(this.mByteOrder, "Invalid byte order: ");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public String readLine() {
        Log.d("ExifInterface", "Currently unsupported");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public long readLong() throws IOException {
        this.mPosition += 8;
        int i9 = this.mDataInputStream.read();
        int i10 = this.mDataInputStream.read();
        int i11 = this.mDataInputStream.read();
        int i12 = this.mDataInputStream.read();
        int i13 = this.mDataInputStream.read();
        int i14 = this.mDataInputStream.read();
        int i15 = this.mDataInputStream.read();
        int i16 = this.mDataInputStream.read();
        if ((i9 | i10 | i11 | i12 | i13 | i14 | i15 | i16) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == LITTLE_ENDIAN) {
            return (((long) i16) << 56) + (((long) i15) << 48) + (((long) i14) << 40) + (((long) i13) << 32) + (((long) i12) << 24) + (((long) i11) << 16) + (((long) i10) << 8) + ((long) i9);
        }
        if (byteOrder == BIG_ENDIAN) {
            return (((long) i9) << 56) + (((long) i10) << 48) + (((long) i11) << 40) + (((long) i12) << 32) + (((long) i13) << 24) + (((long) i14) << 16) + (((long) i15) << 8) + ((long) i16);
        }
        b.w(this.mByteOrder, "Invalid byte order: ");
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public short readShort() throws IOException {
        this.mPosition += 2;
        int i9 = this.mDataInputStream.read();
        int i10 = this.mDataInputStream.read();
        if ((i9 | i10) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == LITTLE_ENDIAN) {
            return (short) ((i10 << 8) + i9);
        }
        if (byteOrder == BIG_ENDIAN) {
            return (short) ((i9 << 8) + i10);
        }
        b.w(this.mByteOrder, "Invalid byte order: ");
        return (short) 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public String readUTF() {
        this.mPosition += 2;
        return this.mDataInputStream.readUTF();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public int readUnsignedByte() {
        this.mPosition++;
        return this.mDataInputStream.readUnsignedByte();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long readUnsignedInt() {
        return ((long) readInt()) & 4294967295L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        this.mPosition += 2;
        int i9 = this.mDataInputStream.read();
        int i10 = this.mDataInputStream.read();
        if ((i9 | i10) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == LITTLE_ENDIAN) {
            return (i10 << 8) + i9;
        }
        if (byteOrder == BIG_ENDIAN) {
            return (i9 << 8) + i10;
        }
        b.w(this.mByteOrder, "Invalid byte order: ");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public void reset() {
        throw new UnsupportedOperationException("Reset is currently unsupported");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setByteOrder(ByteOrder byteOrder) {
        this.mByteOrder = byteOrder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public int skipBytes(int i9) {
        throw new UnsupportedOperationException("skipBytes is currently unsupported");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void skipFully(int i9) throws IOException {
        int i10 = 0;
        while (i10 < i9) {
            int i11 = i9 - i10;
            int iSkip = (int) this.mDataInputStream.skip(i11);
            if (iSkip <= 0) {
                if (this.mSkipBuffer == null) {
                    this.mSkipBuffer = new byte[8192];
                }
                iSkip = this.mDataInputStream.read(this.mSkipBuffer, 0, Math.min(8192, i11));
                if (iSkip == -1) {
                    throw new EOFException(a.f(i9, "Reached EOF while skipping ", " bytes."));
                }
            }
            i10 += iSkip;
        }
        this.mPosition += i10;
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i9, int i10) throws IOException {
        this.mPosition += i10;
        this.mDataInputStream.readFully(bArr, i9, i10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        int i11 = this.mDataInputStream.read(bArr, i9, i10);
        this.mPosition += i11;
        return i11;
    }

    public ExifInterface$ByteOrderedDataInputStream(InputStream inputStream) {
        this(inputStream, ByteOrder.BIG_ENDIAN);
    }

    public ExifInterface$ByteOrderedDataInputStream(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
    }
}
