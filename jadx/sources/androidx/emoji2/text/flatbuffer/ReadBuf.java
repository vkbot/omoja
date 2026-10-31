package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
interface ReadBuf {
    byte[] data();

    byte get(int i10);

    boolean getBoolean(int i10);

    double getDouble(int i10);

    float getFloat(int i10);

    int getInt(int i10);

    long getLong(int i10);

    short getShort(int i10);

    String getString(int i10, int i11);

    int limit();
}
