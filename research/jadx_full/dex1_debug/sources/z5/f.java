package z5;

import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends g {
    public final g c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(g gVar) {
        super(gVar.f6324a, gVar.f6325b);
        this.c = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.g
    public final byte[] a() {
        byte[] bArrA = this.c.a();
        int i9 = this.f6324a * this.f6325b;
        byte[] bArr = new byte[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            bArr[i10] = (byte) (255 - (bArrA[i10] & UByte.MAX_VALUE));
        }
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.g
    public final byte[] b(int i9, byte[] bArr) {
        byte[] bArrB = this.c.b(i9, bArr);
        for (int i10 = 0; i10 < this.f6324a; i10++) {
            bArrB[i10] = (byte) (255 - (bArrB[i10] & UByte.MAX_VALUE));
        }
        return bArrB;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.g
    public final boolean c() {
        return this.c.c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.g
    public final g d() {
        return new f(this.c.d());
    }
}
