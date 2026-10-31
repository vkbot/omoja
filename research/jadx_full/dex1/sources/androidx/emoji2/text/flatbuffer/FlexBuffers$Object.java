package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class FlexBuffers$Object {
    ReadBuf bb;
    int byteWidth;
    int end;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Object(ReadBuf readBuf, int i9, int i10) {
        this.bb = readBuf;
        this.end = i9;
        this.byteWidth = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return toString(new StringBuilder(128)).toString();
    }

    public abstract StringBuilder toString(StringBuilder sb);
}
