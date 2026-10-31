package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffers$KeyVector {
    private final FlexBuffers$TypedVector vec;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$KeyVector(FlexBuffers$TypedVector flexBuffers$TypedVector) {
        this.vec = flexBuffers$TypedVector;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Key get(int i9) {
        if (i9 >= size()) {
            return FlexBuffers$Key.access$700();
        }
        FlexBuffers$TypedVector flexBuffers$TypedVector = this.vec;
        int i10 = (i9 * flexBuffers$TypedVector.byteWidth) + flexBuffers$TypedVector.end;
        FlexBuffers$TypedVector flexBuffers$TypedVector2 = this.vec;
        ReadBuf readBuf = flexBuffers$TypedVector2.bb;
        return new FlexBuffers$Key(readBuf, FlexBuffers.access$200(readBuf, i10, flexBuffers$TypedVector2.byteWidth), 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        return this.vec.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        for (int i9 = 0; i9 < this.vec.size(); i9++) {
            this.vec.get(i9).toString(sb);
            if (i9 != this.vec.size() - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
