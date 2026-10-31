package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffers$Vector extends FlexBuffers$Sized {
    private static final FlexBuffers$Vector EMPTY_VECTOR = new FlexBuffers$Vector(FlexBuffers.access$000(), 1, 1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Vector(ReadBuf readBuf, int i9, int i10) {
        super(readBuf, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffers$Vector empty() {
        return EMPTY_VECTOR;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Reference get(int i9) {
        long size = size();
        long j9 = i9;
        if (j9 >= size) {
            return FlexBuffers$Reference.access$600();
        }
        return new FlexBuffers$Reference(this.bb, (i9 * this.byteWidth) + this.end, this.byteWidth, FlexBuffers$Unsigned.byteToUnsignedInt(this.bb.get((int) ((size * ((long) this.byteWidth)) + ((long) this.end) + j9))));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isEmpty() {
        return this == EMPTY_VECTOR;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.FlexBuffers$Sized
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.FlexBuffers$Object
    public StringBuilder toString(StringBuilder sb) {
        sb.append("[ ");
        int size = size();
        for (int i9 = 0; i9 < size; i9++) {
            get(i9).toString(sb);
            if (i9 != size - 1) {
                sb.append(", ");
            }
        }
        sb.append(" ]");
        return sb;
    }

    @Override // androidx.emoji2.text.flatbuffer.FlexBuffers$Object
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
