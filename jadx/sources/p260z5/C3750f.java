package p260z5;

import kotlin.UByte;

/* JADX INFO: renamed from: z5.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3750f extends AbstractC3751g {

    /* JADX INFO: renamed from: c */
    public final AbstractC3751g f11186c;

    public C3750f(AbstractC3751g abstractC3751g) {
        super(abstractC3751g.f11187a, abstractC3751g.f11188b);
        this.f11186c = abstractC3751g;
    }

    @Override // p260z5.AbstractC3751g
    /* JADX INFO: renamed from: a */
    public final byte[] mo5981a() {
        byte[] bArrMo5981a = this.f11186c.mo5981a();
        int i10 = this.f11187a * this.f11188b;
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = (byte) (255 - (bArrMo5981a[i11] & UByte.MAX_VALUE));
        }
        return bArr;
    }

    @Override // p260z5.AbstractC3751g
    /* JADX INFO: renamed from: b */
    public final byte[] mo5982b(int i10, byte[] bArr) {
        byte[] bArrMo5982b = this.f11186c.mo5982b(i10, bArr);
        for (int i11 = 0; i11 < this.f11187a; i11++) {
            bArrMo5982b[i11] = (byte) (255 - (bArrMo5982b[i11] & UByte.MAX_VALUE));
        }
        return bArrMo5982b;
    }

    @Override // p260z5.AbstractC3751g
    /* JADX INFO: renamed from: c */
    public final boolean mo5983c() {
        return this.f11186c.mo5983c();
    }

    @Override // p260z5.AbstractC3751g
    /* JADX INFO: renamed from: d */
    public final AbstractC3751g mo5984d() {
        return new C3750f(this.f11186c.mo5984d());
    }
}
