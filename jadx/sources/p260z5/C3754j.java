package p260z5;

import p099j1.C1929i;

/* JADX INFO: renamed from: z5.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3754j extends AbstractC3751g {

    /* JADX INFO: renamed from: c */
    public final byte[] f11193c;

    /* JADX INFO: renamed from: d */
    public final int f11194d;

    /* JADX INFO: renamed from: e */
    public final int f11195e;

    public C3754j(int i10, int i11, int i12, int i13, byte[] bArr) {
        super(i12, i13);
        if (i12 > i10 || i13 > i11) {
            C1929i.m3029k("Crop rectangle does not fit within image data.");
            throw null;
        }
        this.f11193c = bArr;
        this.f11194d = i10;
        this.f11195e = i11;
    }

    @Override // p260z5.AbstractC3751g
    /* JADX INFO: renamed from: a */
    public final byte[] mo5981a() {
        byte[] bArr = this.f11193c;
        int i10 = this.f11187a;
        int i11 = this.f11188b;
        int i12 = this.f11194d;
        if (i10 == i12 && i11 == this.f11195e) {
            return bArr;
        }
        int i13 = i10 * i11;
        byte[] bArr2 = new byte[i13];
        if (i10 == i12) {
            System.arraycopy(bArr, 0, bArr2, 0, i13);
            return bArr2;
        }
        int i14 = 0;
        for (int i15 = 0; i15 < i11; i15++) {
            System.arraycopy(bArr, i14, bArr2, i15 * i10, i10);
            i14 += i12;
        }
        return bArr2;
    }

    @Override // p260z5.AbstractC3751g
    /* JADX INFO: renamed from: b */
    public final byte[] mo5982b(int i10, byte[] bArr) {
        if (i10 < 0 || i10 >= this.f11188b) {
            C1929i.m3029k("Requested row is outside the image: ".concat(String.valueOf(i10)));
            return null;
        }
        int i11 = this.f11187a;
        if (bArr == null || bArr.length < i11) {
            bArr = new byte[i11];
        }
        System.arraycopy(this.f11193c, i10 * this.f11194d, bArr, 0, i11);
        return bArr;
    }
}
