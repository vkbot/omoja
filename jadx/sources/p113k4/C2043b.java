package p113k4;

import kotlin.UByte;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: k4.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2043b extends C2046e {

    /* JADX INFO: renamed from: f */
    public final char[] f5599f;

    public C2043b(C2042a c2042a) {
        super(c2042a, (Character) null);
        this.f5599f = new char[512];
        char[] cArr = c2042a.f5591b;
        AbstractC2587b.m4039f(cArr.length == 16);
        for (int i10 = 0; i10 < 256; i10++) {
            char[] cArr2 = this.f5599f;
            cArr2[i10] = cArr[i10 >>> 4];
            cArr2[i10 | 256] = cArr[i10 & 15];
        }
    }

    @Override // p113k4.C2046e
    /* JADX INFO: renamed from: b */
    public final int mo3141b(byte[] bArr, CharSequence charSequence) throws C2045d {
        if (charSequence.length() % 2 == 1) {
            throw new C2045d("Invalid input length " + charSequence.length());
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            char cCharAt = charSequence.charAt(i10);
            C2042a c2042a = this.f5602a;
            bArr[i11] = (byte) ((c2042a.m3140a(cCharAt) << 4) | c2042a.m3140a(charSequence.charAt(i10 + 1)));
            i10 += 2;
            i11++;
        }
        return i11;
    }

    @Override // p113k4.C2046e
    /* JADX INFO: renamed from: e */
    public final void mo3142e(StringBuilder sb, byte[] bArr, int i10) {
        AbstractC2587b.m4044k(0, i10, bArr.length);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = bArr[i11] & UByte.MAX_VALUE;
            char[] cArr = this.f5599f;
            sb.append(cArr[i12]);
            sb.append(cArr[i12 | 256]);
        }
    }

    @Override // p113k4.C2046e
    /* JADX INFO: renamed from: f */
    public final C2046e mo3143f(C2042a c2042a, Character ch) {
        return new C2043b(c2042a);
    }
}
