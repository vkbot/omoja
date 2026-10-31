package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffers$TypedVector extends FlexBuffers$Vector {
    private static final FlexBuffers$TypedVector EMPTY_VECTOR = new FlexBuffers$TypedVector(FlexBuffers.access$000(), 1, 1, 1);
    private final int elemType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$TypedVector(ReadBuf readBuf, int i9, int i10, int i11) {
        super(readBuf, i9, i10);
        this.elemType = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffers$TypedVector empty() {
        return EMPTY_VECTOR;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.FlexBuffers$Vector
    public FlexBuffers$Reference get(int i9) {
        if (i9 >= size()) {
            return FlexBuffers$Reference.access$600();
        }
        return new FlexBuffers$Reference(this.bb, (i9 * this.byteWidth) + this.end, this.byteWidth, 1, this.elemType);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getElemType() {
        return this.elemType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isEmptyVector() {
        return this == EMPTY_VECTOR;
    }
}
