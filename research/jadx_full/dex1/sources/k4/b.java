package k4;

import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final char[] f3197f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(a aVar) {
        super(aVar, (Character) null);
        this.f3197f = new char[512];
        char[] cArr = aVar.f3192b;
        o4.b.f(cArr.length == 16);
        for (int i9 = 0; i9 < 256; i9++) {
            char[] cArr2 = this.f3197f;
            cArr2[i9] = cArr[i9 >>> 4];
            cArr2[i9 | 256] = cArr[i9 & 15];
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k4.e
    public final int b(byte[] bArr, CharSequence charSequence) throws d {
        if (charSequence.length() % 2 == 1) {
            throw new d("Invalid input length " + charSequence.length());
        }
        int i9 = 0;
        int i10 = 0;
        while (i9 < charSequence.length()) {
            char cCharAt = charSequence.charAt(i9);
            a aVar = this.f3198a;
            bArr[i10] = (byte) ((aVar.a(cCharAt) << 4) | aVar.a(charSequence.charAt(i9 + 1)));
            i9 += 2;
            i10++;
        }
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k4.e
    public final void e(StringBuilder sb, byte[] bArr, int i9) {
        o4.b.k(0, i9, bArr.length);
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = bArr[i10] & UByte.MAX_VALUE;
            char[] cArr = this.f3197f;
            sb.append(cArr[i11]);
            sb.append(cArr[i11 | 256]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k4.e
    public final e f(a aVar, Character ch) {
        return new b(aVar);
    }
}
