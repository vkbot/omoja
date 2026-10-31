package z5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j extends g {
    public final byte[] c;
    public final int d;
    public final int e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(int i9, int i10, int i11, int i12, byte[] bArr) {
        super(i11, i12);
        if (i11 > i9 || i12 > i10) {
            j1.i.k("Crop rectangle does not fit within image data.");
            throw null;
        }
        this.c = bArr;
        this.d = i9;
        this.e = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.g
    public final byte[] a() {
        byte[] bArr = this.c;
        int i9 = this.f6324a;
        int i10 = this.f6325b;
        int i11 = this.d;
        if (i9 == i11 && i10 == this.e) {
            return bArr;
        }
        int i12 = i9 * i10;
        byte[] bArr2 = new byte[i12];
        if (i9 == i11) {
            System.arraycopy(bArr, 0, bArr2, 0, i12);
            return bArr2;
        }
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            System.arraycopy(bArr, i13, bArr2, i14 * i9, i9);
            i13 += i11;
        }
        return bArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.g
    public final byte[] b(int i9, byte[] bArr) {
        if (i9 < 0 || i9 >= this.f6325b) {
            j1.i.k("Requested row is outside the image: ".concat(String.valueOf(i9)));
            return null;
        }
        int i10 = this.f6324a;
        if (bArr == null || bArr.length < i10) {
            bArr = new byte[i10];
        }
        System.arraycopy(this.c, i9 * this.d, bArr, 0, i10);
        return bArr;
    }
}
