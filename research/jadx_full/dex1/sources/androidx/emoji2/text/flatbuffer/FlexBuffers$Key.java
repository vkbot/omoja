package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffers$Key extends FlexBuffers$Object {
    private static final FlexBuffers$Key EMPTY = new FlexBuffers$Key(FlexBuffers.access$000(), 0, 0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Key(ReadBuf readBuf, int i9, int i10) {
        super(readBuf, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FlexBuffers$Key access$700() {
        return EMPTY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffers$Key empty() {
        return EMPTY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int compareTo(byte[] bArr) {
        byte b9;
        byte b10;
        int i9 = this.end;
        int i10 = 0;
        do {
            b9 = this.bb.get(i9);
            b10 = bArr[i10];
            if (b9 == 0) {
                return b9 - b10;
            }
            i9++;
            i10++;
            if (i10 == bArr.length) {
                return b9 - b10;
            }
        } while (b9 == b10);
        return b9 - b10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (!(obj instanceof FlexBuffers$Key)) {
            return false;
        }
        FlexBuffers$Key flexBuffers$Key = (FlexBuffers$Key) obj;
        return flexBuffers$Key.end == this.end && flexBuffers$Key.byteWidth == this.byteWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.end ^ this.byteWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.FlexBuffers$Object
    public String toString() {
        int i9 = this.end;
        while (this.bb.get(i9) != 0) {
            i9++;
        }
        int i10 = this.end;
        return this.bb.getString(i10, i9 - i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.FlexBuffers$Object
    public StringBuilder toString(StringBuilder sb) {
        sb.append(toString());
        return sb;
    }
}
