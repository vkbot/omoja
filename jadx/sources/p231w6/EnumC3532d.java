package p231w6;

/* JADX INFO: renamed from: w6.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC3532d {
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


    /* JADX INFO: renamed from: b */
    public final int[] f10497b;

    /* JADX INFO: renamed from: c */
    public final int f10498c;

    EnumC3532d(int i10, int[] iArr) {
        this.f10497b = iArr;
        this.f10498c = i10;
    }

    /* JADX INFO: renamed from: a */
    public final int m5636a(C3534f c3534f) {
        char c;
        int i10 = c3534f.f10501a;
        if (i10 <= 9) {
            c = 0;
        } else {
            c = i10 <= 26 ? (char) 1 : (char) 2;
        }
        return this.f10497b[c];
    }
}
