package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
interface ReadBuf {
    byte[] data();

    byte get(int i9);

    boolean getBoolean(int i9);

    double getDouble(int i9);

    float getFloat(int i9);

    int getInt(int i9);

    long getLong(int i9);

    short getShort(int i9);

    String getString(int i9, int i10);

    int limit();
}
