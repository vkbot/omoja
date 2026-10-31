package androidx.emoji2.text.flatbuffer;

import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffers$Map extends FlexBuffers$Vector {
    private static final FlexBuffers$Map EMPTY_MAP = new FlexBuffers$Map(FlexBuffers.access$000(), 1, 1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Map(ReadBuf readBuf, int i9, int i10) {
        super(readBuf, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int binarySearch(FlexBuffers$KeyVector flexBuffers$KeyVector, byte[] bArr) {
        int size = flexBuffers$KeyVector.size() - 1;
        int i9 = 0;
        while (i9 <= size) {
            int i10 = (i9 + size) >>> 1;
            int iCompareTo = flexBuffers$KeyVector.get(i10).compareTo(bArr);
            if (iCompareTo < 0) {
                i9 = i10 + 1;
            } else {
                if (iCompareTo <= 0) {
                    return i10;
                }
                size = i10 - 1;
            }
        }
        return -(i9 + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffers$Map empty() {
        return EMPTY_MAP;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Reference get(byte[] bArr) {
        FlexBuffers$KeyVector flexBuffers$KeyVectorKeys = keys();
        int size = flexBuffers$KeyVectorKeys.size();
        int iBinarySearch = binarySearch(flexBuffers$KeyVectorKeys, bArr);
        return (iBinarySearch < 0 || iBinarySearch >= size) ? FlexBuffers$Reference.access$600() : get(iBinarySearch);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$KeyVector keys() {
        int i9 = this.end - (this.byteWidth * 3);
        ReadBuf readBuf = this.bb;
        int iAccess$200 = FlexBuffers.access$200(readBuf, i9, this.byteWidth);
        ReadBuf readBuf2 = this.bb;
        int i10 = this.byteWidth;
        return new FlexBuffers$KeyVector(new FlexBuffers$TypedVector(readBuf, iAccess$200, FlexBuffers.access$100(readBuf2, i9 + i10, i10), 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.FlexBuffers$Vector, androidx.emoji2.text.flatbuffer.FlexBuffers$Object
    public StringBuilder toString(StringBuilder sb) {
        sb.append("{ ");
        FlexBuffers$KeyVector flexBuffers$KeyVectorKeys = keys();
        int size = size();
        FlexBuffers$Vector flexBuffers$VectorValues = values();
        for (int i9 = 0; i9 < size; i9++) {
            sb.append('\"');
            sb.append(flexBuffers$KeyVectorKeys.get(i9).toString());
            sb.append("\" : ");
            sb.append(flexBuffers$VectorValues.get(i9).toString());
            if (i9 != size - 1) {
                sb.append(", ");
            }
        }
        sb.append(" }");
        return sb;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Vector values() {
        return new FlexBuffers$Vector(this.bb, this.end, this.byteWidth);
    }

    public FlexBuffers$Reference get(String str) {
        return get(str.getBytes(StandardCharsets.UTF_8));
    }
}
