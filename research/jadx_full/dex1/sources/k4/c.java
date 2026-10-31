package k4;

import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends e {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(String str, String str2) {
        this(new a(str, str2.toCharArray()), (Character) '=');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k4.e
    public final int b(byte[] bArr, CharSequence charSequence) throws d {
        CharSequence charSequenceG = g(charSequence);
        int length = charSequenceG.length();
        a aVar = this.f3198a;
        if (!aVar.f3195h[length % aVar.e]) {
            throw new d("Invalid input length " + charSequenceG.length());
        }
        int i9 = 0;
        int i10 = 0;
        while (i9 < charSequenceG.length()) {
            int i11 = i9 + 2;
            int iA = (aVar.a(charSequenceG.charAt(i9 + 1)) << 12) | (aVar.a(charSequenceG.charAt(i9)) << 18);
            int i12 = i10 + 1;
            bArr[i10] = (byte) (iA >>> 16);
            if (i11 < charSequenceG.length()) {
                int i13 = i9 + 3;
                int iA2 = iA | (aVar.a(charSequenceG.charAt(i11)) << 6);
                int i14 = i10 + 2;
                bArr[i12] = (byte) ((iA2 >>> 8) & 255);
                if (i13 < charSequenceG.length()) {
                    i9 += 4;
                    i10 += 3;
                    bArr[i14] = (byte) ((iA2 | aVar.a(charSequenceG.charAt(i13))) & 255);
                } else {
                    i10 = i14;
                    i9 = i13;
                }
            } else {
                i10 = i12;
                i9 = i11;
            }
        }
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k4.e
    public final void e(StringBuilder sb, byte[] bArr, int i9) {
        int i10 = 0;
        o4.b.k(0, i9, bArr.length);
        for (int i11 = i9; i11 >= 3; i11 -= 3) {
            int i12 = i10 + 2;
            int i13 = ((bArr[i10 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i10] & UByte.MAX_VALUE) << 16);
            i10 += 3;
            int i14 = i13 | (bArr[i12] & UByte.MAX_VALUE);
            a aVar = this.f3198a;
            char[] cArr = aVar.f3192b;
            char[] cArr2 = aVar.f3192b;
            sb.append(cArr[i14 >>> 18]);
            sb.append(cArr2[(i14 >>> 12) & 63]);
            sb.append(cArr2[(i14 >>> 6) & 63]);
            sb.append(cArr2[i14 & 63]);
        }
        if (i10 < i9) {
            d(sb, bArr, i10, i9 - i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k4.e
    public final e f(a aVar, Character ch) {
        return new c(aVar, ch);
    }

    public c(a aVar, Character ch) {
        super(aVar, ch);
        o4.b.f(aVar.f3192b.length == 64);
    }
}
