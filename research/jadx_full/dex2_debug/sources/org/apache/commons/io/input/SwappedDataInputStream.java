package org.apache.commons.io.input;

import java.io.DataInput;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.InputStream;
import org.apache.commons.io.EndianUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class SwappedDataInputStream extends ProxyInputStream implements DataInput {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SwappedDataInputStream(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public boolean readBoolean() {
        return readByte() != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public byte readByte() {
        return (byte) ((FilterInputStream) this).in.read();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public char readChar() {
        return (char) readShort();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public double readDouble() {
        return EndianUtils.readSwappedDouble(((FilterInputStream) this).in);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public float readFloat() {
        return EndianUtils.readSwappedFloat(((FilterInputStream) this).in);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i, int i2) throws EOFException {
        int i3 = i2;
        while (i3 > 0) {
            int i4 = read(bArr, (i + i2) - i3, i3);
            if (-1 == i4) {
                throw new EOFException();
            }
            i3 -= i4;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public int readInt() {
        return EndianUtils.readSwappedInteger(((FilterInputStream) this).in);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public String readLine() {
        throw UnsupportedOperationExceptions.method("readLine");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public long readLong() {
        return EndianUtils.readSwappedLong(((FilterInputStream) this).in);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public short readShort() {
        return EndianUtils.readSwappedShort(((FilterInputStream) this).in);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public String readUTF() {
        throw UnsupportedOperationExceptions.method("readUTF");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public int readUnsignedByte() {
        return ((FilterInputStream) this).in.read();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public int readUnsignedShort() {
        return EndianUtils.readSwappedUnsignedShort(((FilterInputStream) this).in);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.DataInput
    public int skipBytes(int i) {
        return (int) ((FilterInputStream) this).in.skip(i);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws EOFException {
        readFully(bArr, 0, bArr.length);
    }
}
