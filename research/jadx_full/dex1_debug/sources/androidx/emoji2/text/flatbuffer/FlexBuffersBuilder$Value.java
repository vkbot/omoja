package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffersBuilder$Value {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    final double dValue;
    long iValue;
    int key;
    final int minBitWidth;
    final int type;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffersBuilder$Value(int i9, int i10, int i11, long j9) {
        this.key = i9;
        this.type = i10;
        this.minBitWidth = i11;
        this.iValue = j9;
        this.dValue = Double.MIN_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$100(int i9, int i10) {
        return paddingBytes(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$200(FlexBuffersBuilder$Value flexBuffersBuilder$Value, int i9, int i10) {
        return flexBuffersBuilder$Value.elemWidth(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ byte access$300(FlexBuffersBuilder$Value flexBuffersBuilder$Value) {
        return flexBuffersBuilder$Value.storedPackedType();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ byte access$400(FlexBuffersBuilder$Value flexBuffersBuilder$Value, int i9) {
        return flexBuffersBuilder$Value.storedPackedType(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$500(int i9, int i10, long j9, int i11, int i12) {
        return elemWidth(i9, i10, j9, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value blob(int i9, int i10, int i11, int i12) {
        return new FlexBuffersBuilder$Value(i9, i11, i12, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value bool(int i9, boolean z8) {
        return new FlexBuffersBuilder$Value(i9, 26, 0, z8 ? 1L : 0L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int elemWidth(int i9, int i10, long j9, int i11, int i12) {
        if (FlexBuffers.isTypeInline(i9)) {
            return i10;
        }
        for (int i13 = 1; i13 <= 32; i13 *= 2) {
            int iWidthUInBits = FlexBuffersBuilder.widthUInBits((int) (((long) ((i12 * i13) + (paddingBytes(i11, i13) + i11))) - j9));
            if ((1 << iWidthUInBits) == i13) {
                return iWidthUInBits;
            }
        }
        return 3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value float32(int i9, float f8) {
        return new FlexBuffersBuilder$Value(i9, 3, 2, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value float64(int i9, double d) {
        return new FlexBuffersBuilder$Value(i9, 3, 3, d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value int16(int i9, int i10) {
        return new FlexBuffersBuilder$Value(i9, 1, 1, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value int32(int i9, int i10) {
        return new FlexBuffersBuilder$Value(i9, 1, 2, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value int64(int i9, long j9) {
        return new FlexBuffersBuilder$Value(i9, 1, 3, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value int8(int i9, int i10) {
        return new FlexBuffersBuilder$Value(i9, 1, 0, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static byte packedType(int i9, int i10) {
        return (byte) (i9 | (i10 << 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int paddingBytes(int i9, int i10) {
        return ((~i9) + 1) & (i10 - 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private byte storedPackedType(int i9) {
        return packedType(storedWidth(i9), this.type);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int storedWidth(int i9) {
        boolean zIsTypeInline = FlexBuffers.isTypeInline(this.type);
        int i10 = this.minBitWidth;
        return zIsTypeInline ? Math.max(i10, i9) : i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value uInt16(int i9, int i10) {
        return new FlexBuffersBuilder$Value(i9, 2, 1, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value uInt32(int i9, int i10) {
        return new FlexBuffersBuilder$Value(i9, 2, 2, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value uInt64(int i9, long j9) {
        return new FlexBuffersBuilder$Value(i9, 2, 3, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffersBuilder$Value uInt8(int i9, int i10) {
        return new FlexBuffersBuilder$Value(i9, 2, 0, i10);
    }

    private byte storedPackedType() {
        return storedPackedType(0);
    }

    public FlexBuffersBuilder$Value(int i9, int i10, int i11, double d) {
        this.key = i9;
        this.type = i10;
        this.minBitWidth = i11;
        this.dValue = d;
        this.iValue = Long.MIN_VALUE;
    }

    private int elemWidth(int i9, int i10) {
        return elemWidth(this.type, this.minBitWidth, this.iValue, i9, i10);
    }
}
