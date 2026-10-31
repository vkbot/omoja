package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
interface ReadWriteBuf extends ReadBuf {
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    int limit();

    void put(byte b10);

    void put(byte[] bArr, int i10, int i11);

    void putBoolean(boolean z9);

    void putDouble(double d);

    void putFloat(float f8);

    void putInt(int i10);

    void putLong(long j10);

    void putShort(short s5);

    boolean requestCapacity(int i10);

    void set(int i10, byte b10);

    void set(int i10, byte[] bArr, int i11, int i12);

    void setBoolean(int i10, boolean z9);

    void setDouble(int i10, double d);

    void setFloat(int i10, float f8);

    void setInt(int i10, int i11);

    void setLong(int i10, long j10);

    void setShort(int i10, short s5);

    int writePosition();
}
