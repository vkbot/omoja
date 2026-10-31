package p113k4;

import kotlin.UByte;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: k4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2044c extends C2046e {
    public C2044c(String str, String str2) {
        this(new C2042a(str, str2.toCharArray()), (Character) '=');
    }

    @Override // p113k4.C2046e
    /* JADX INFO: renamed from: b */
    public final int mo3141b(byte[] bArr, CharSequence charSequence) throws C2045d {
        CharSequence charSequenceM3147g = m3147g(charSequence);
        int length = charSequenceM3147g.length();
        C2042a c2042a = this.f5602a;
        if (!c2042a.f5597h[length % c2042a.f5594e]) {
            throw new C2045d("Invalid input length " + charSequenceM3147g.length());
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequenceM3147g.length()) {
            int i12 = i10 + 2;
            int iM3140a = (c2042a.m3140a(charSequenceM3147g.charAt(i10 + 1)) << 12) | (c2042a.m3140a(charSequenceM3147g.charAt(i10)) << 18);
            int i13 = i11 + 1;
            bArr[i11] = (byte) (iM3140a >>> 16);
            if (i12 < charSequenceM3147g.length()) {
                int i14 = i10 + 3;
                int iM3140a2 = iM3140a | (c2042a.m3140a(charSequenceM3147g.charAt(i12)) << 6);
                int i15 = i11 + 2;
                bArr[i13] = (byte) ((iM3140a2 >>> 8) & 255);
                if (i14 < charSequenceM3147g.length()) {
                    i10 += 4;
                    i11 += 3;
                    bArr[i15] = (byte) ((iM3140a2 | c2042a.m3140a(charSequenceM3147g.charAt(i14))) & 255);
                } else {
                    i11 = i15;
                    i10 = i14;
                }
            } else {
                i11 = i13;
                i10 = i12;
            }
        }
        return i11;
    }

    @Override // p113k4.C2046e
    /* JADX INFO: renamed from: e */
    public final void mo3142e(StringBuilder sb, byte[] bArr, int i10) {
        int i11 = 0;
        AbstractC2587b.m4044k(0, i10, bArr.length);
        for (int i12 = i10; i12 >= 3; i12 -= 3) {
            int i13 = i11 + 2;
            int i14 = ((bArr[i11 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i11] & UByte.MAX_VALUE) << 16);
            i11 += 3;
            int i15 = i14 | (bArr[i13] & UByte.MAX_VALUE);
            C2042a c2042a = this.f5602a;
            char[] cArr = c2042a.f5591b;
            char[] cArr2 = c2042a.f5591b;
            sb.append(cArr[i15 >>> 18]);
            sb.append(cArr2[(i15 >>> 12) & 63]);
            sb.append(cArr2[(i15 >>> 6) & 63]);
            sb.append(cArr2[i15 & 63]);
        }
        if (i11 < i10) {
            m3146d(sb, bArr, i11, i10 - i11);
        }
    }

    @Override // p113k4.C2046e
    /* JADX INFO: renamed from: f */
    public final C2046e mo3143f(C2042a c2042a, Character ch) {
        return new C2044c(c2042a, ch);
    }

    public C2044c(C2042a c2042a, Character ch) {
        super(c2042a, ch);
        AbstractC2587b.m4039f(c2042a.f5591b.length == 64);
    }
}
