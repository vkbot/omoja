package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
interface ReadWriteBuf extends ReadBuf {
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    int limit();

    void put(byte b9);

    void put(byte[] bArr, int i9, int i10);

    void putBoolean(boolean z8);

    void putDouble(double d);

    void putFloat(float f8);

    void putInt(int i9);

    void putLong(long j9);

    void putShort(short s5);

    boolean requestCapacity(int i9);

    void set(int i9, byte b9);

    void set(int i9, byte[] bArr, int i10, int i11);

    void setBoolean(int i9, boolean z8);

    void setDouble(int i9, double d);

    void setFloat(int i9, float f8);

    void setInt(int i9, int i10);

    void setLong(int i9, long j9);

    void setShort(int i9, short s5);

    int writePosition();
}
