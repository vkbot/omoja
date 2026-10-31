package w6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum d {
    TERMINATOR(0, new int[]{0, 0, 0}),
    NUMERIC(1, new int[]{10, 12, 14}),
    ALPHANUMERIC(2, new int[]{9, 11, 13}),
    STRUCTURED_APPEND(3, new int[]{0, 0, 0}),
    BYTE(4, new int[]{8, 16, 16}),
    ECI(7, new int[]{0, 0, 0}),
    KANJI(8, new int[]{8, 10, 12}),
    FNC1_FIRST_POSITION(5, new int[]{0, 0, 0}),
    FNC1_SECOND_POSITION(9, new int[]{0, 0, 0}),
    HANZI(13, new int[]{8, 10, 12});


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f5941b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    d(int i9, int[] iArr) {
        this.f5941b = iArr;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a(f fVar) {
        char c;
        int i9 = fVar.f5943a;
        if (i9 <= 9) {
            c = 0;
        } else {
            c = i9 <= 26 ? (char) 1 : (char) 2;
        }
        return this.f5941b[c];
    }
}
