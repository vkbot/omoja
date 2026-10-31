package androidx.emoji2.text;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface MetadataListReader$OpenTypeReader {
    public static final int UINT16_BYTE_COUNT = 2;
    public static final int UINT32_BYTE_COUNT = 4;

    long getPosition();

    int readTag();

    long readUnsignedInt();

    int readUnsignedShort();

    void skip(int i9);
}
