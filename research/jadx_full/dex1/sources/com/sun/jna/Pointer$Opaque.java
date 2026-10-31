package com.sun.jna;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Pointer$Opaque extends Pointer {
    private final String MSG;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Pointer$Opaque(long j9) {
        super(j9);
        this.MSG = "This pointer is opaque: " + this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void clear(long j9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public String dump(long j9, int i9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public byte getByte(long j9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public ByteBuffer getByteBuffer(long j9, long j10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public char getChar(long j9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public double getDouble(long j9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public float getFloat(long j9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public int getInt(long j9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public long getLong(long j9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public Pointer getPointer(long j9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public short getShort(long j9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public String getString(long j9, String str) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public String getWideString(long j9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public long indexOf(long j9, byte b9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void read(long j9, byte[] bArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setByte(long j9, byte b9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setChar(long j9, char c) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setDouble(long j9, double d) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setFloat(long j9, float f8) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setInt(long j9, int i9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setLong(long j9, long j10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setMemory(long j9, long j10, byte b9) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setPointer(long j9, Pointer pointer) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setShort(long j9, short s5) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setString(long j9, String str, String str2) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void setWideString(long j9, String str) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public Pointer share(long j9, long j10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public String toString() {
        return "const@0x" + Long.toHexString(this.peer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public void write(long j9, byte[] bArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, char[] cArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, char[] cArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, short[] sArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, short[] sArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, int[] iArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, int[] iArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, long[] jArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, long[] jArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, float[] fArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, float[] fArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, double[] dArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, double[] dArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void read(long j9, Pointer[] pointerArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    @Override // com.sun.jna.Pointer
    public void write(long j9, Pointer[] pointerArr, int i9, int i10) {
        throw new UnsupportedOperationException(this.MSG);
    }

    public /* synthetic */ Pointer$Opaque(long j9, Pointer$1 pointer$1) {
        this(j9);
    }
}
