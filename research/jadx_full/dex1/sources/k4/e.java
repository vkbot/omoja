package k4;

import j1.i;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class e {
    public static final c d = new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
    public static final b e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f3198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Character f3199b;
    public volatile e c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new e("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new e("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        e = new b(new a("base16()", "0123456789ABCDEF".toCharArray()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x001a  */
    public e(a aVar, Character ch) {
        boolean z8;
        aVar.getClass();
        this.f3198a = aVar;
        if (ch != null) {
            char cCharValue = ch.charValue();
            byte[] bArr = aVar.f3194g;
            if (cCharValue >= bArr.length || bArr[cCharValue] == -1) {
                z8 = true;
            } else {
                z8 = false;
            }
        } else {
            z8 = true;
        }
        o4.b.e("Padding character %s was already in alphabet", z8, ch);
        this.f3199b = ch;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final byte[] a(String str) {
        try {
            CharSequence charSequenceG = g(str);
            int length = (int) (((((long) this.f3198a.d) * ((long) charSequenceG.length())) + 7) / 8);
            byte[] bArr = new byte[length];
            int iB = b(bArr, charSequenceG);
            if (iB == length) {
                return bArr;
            }
            byte[] bArr2 = new byte[iB];
            System.arraycopy(bArr, 0, bArr2, 0, iB);
            return bArr2;
        } catch (d e6) {
            throw new IllegalArgumentException(e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int b(byte[] bArr, CharSequence charSequence) throws d {
        CharSequence charSequenceG = g(charSequence);
        int length = charSequenceG.length();
        a aVar = this.f3198a;
        boolean[] zArr = aVar.f3195h;
        int i9 = aVar.d;
        int i10 = aVar.e;
        if (!zArr[length % i10]) {
            throw new d("Invalid input length " + charSequenceG.length());
        }
        int i11 = 0;
        for (int i12 = 0; i12 < charSequenceG.length(); i12 += i10) {
            long jA = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < i10; i14++) {
                jA <<= i9;
                if (i12 + i14 < charSequenceG.length()) {
                    jA |= (long) aVar.a(charSequenceG.charAt(i13 + i12));
                    i13++;
                }
            }
            int i15 = aVar.f3193f;
            int i16 = (i15 * 8) - (i13 * i9);
            int i17 = (i15 - 1) * 8;
            while (i17 >= i16) {
                bArr[i11] = (byte) ((jA >>> i17) & 255);
                i17 -= 8;
                i11++;
            }
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String c(byte[] bArr) {
        int length = bArr.length;
        o4.b.k(0, length, bArr.length);
        a aVar = this.f3198a;
        int i9 = aVar.e;
        int i10 = aVar.f3193f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        StringBuilder sb = new StringBuilder(a.a.i(length, i10) * i9);
        try {
            e(sb, bArr, length);
            return sb.toString();
        } catch (IOException e6) {
            i.e(e6);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(StringBuilder sb, byte[] bArr, int i9, int i10) {
        o4.b.k(i9, i9 + i10, bArr.length);
        a aVar = this.f3198a;
        int i11 = aVar.f3193f;
        int i12 = aVar.d;
        int i13 = 0;
        o4.b.f(i10 <= i11);
        long j9 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            j9 = (j9 | ((long) (bArr[i9 + i14] & UByte.MAX_VALUE))) << 8;
        }
        int i15 = ((i10 + 1) * 8) - i12;
        while (i13 < i10 * 8) {
            sb.append(aVar.f3192b[((int) (j9 >>> (i15 - i13))) & aVar.c]);
            i13 += i12;
        }
        Character ch = this.f3199b;
        if (ch != null) {
            while (i13 < aVar.f3193f * 8) {
                sb.append(ch.charValue());
                i13 += i12;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void e(StringBuilder sb, byte[] bArr, int i9) {
        int i10 = 0;
        o4.b.k(0, i9, bArr.length);
        while (i10 < i9) {
            a aVar = this.f3198a;
            d(sb, bArr, i10, Math.min(aVar.f3193f, i9 - i10));
            i10 += aVar.f3193f;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (this.f3198a.equals(eVar.f3198a) && Objects.equals(this.f3199b, eVar.f3199b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e f(a aVar, Character ch) {
        return new e(aVar, ch);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CharSequence g(CharSequence charSequence) {
        Character ch = this.f3199b;
        if (ch == null) {
            return charSequence;
        }
        char cCharValue = ch.charValue();
        int length = charSequence.length() - 1;
        while (length >= 0 && charSequence.charAt(length) == cCharValue) {
            length--;
        }
        return charSequence.subSequence(0, length + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:47:0x00b1 A[EDGE_INSN: B:47:0x00b1->B:49:0x00b7 BREAK  A[LOOP:0: B:5:0x000b->B:48:0x00b3]] */
    public final e h() {
        int i9;
        boolean z8;
        e eVarF = this.c;
        if (eVarF == null) {
            a aVar = this.f3198a;
            char[] cArr = aVar.f3192b;
            for (char c : cArr) {
                if (c >= 'a' && c <= 'z') {
                    int length = cArr.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= length) {
                            z8 = false;
                            break;
                        }
                        char c9 = cArr[i10];
                        if (c9 >= 'A' && c9 <= 'Z') {
                            z8 = true;
                            break;
                        }
                        i10++;
                    }
                    o4.b.m(!z8, "Cannot call upperCase() on a mixed-case alphabet");
                    char[] cArr2 = new char[cArr.length];
                    for (int i11 = 0; i11 < cArr.length; i11++) {
                        char c10 = cArr[i11];
                        if (c10 >= 'a' && c10 <= 'z') {
                            c10 = (char) (c10 ^ ' ');
                        }
                        cArr2[i11] = c10;
                    }
                    a aVar2 = new a(ai.onnxruntime.a.p(new StringBuilder(), aVar.f3191a, ".upperCase()"), cArr2);
                    if (!aVar.f3196i) {
                        aVar = aVar2;
                        break;
                    }
                    byte[] bArr = aVar2.f3194g;
                    if (!aVar2.f3196i) {
                        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                        for (i9 = 65; i9 <= 90; i9++) {
                            int i12 = i9 | 32;
                            byte b9 = bArr[i9];
                            byte b10 = bArr[i12];
                            if (b9 == -1) {
                                bArrCopyOf[i9] = b10;
                            } else {
                                char c11 = (char) i9;
                                char c12 = (char) i12;
                                if (!(b10 == -1)) {
                                    i.l(e3.d.l("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c11), Character.valueOf(c12)));
                                    return null;
                                }
                                bArrCopyOf[i12] = b9;
                            }
                        }
                        aVar = new a(ai.onnxruntime.a.p(new StringBuilder(), aVar2.f3191a, ".ignoreCase()"), aVar2.f3192b, bArrCopyOf, true);
                        break;
                    }
                    aVar = aVar2;
                    break;
                }
            }
            eVarF = aVar == this.f3198a ? this : f(aVar, this.f3199b);
            this.c = eVarF;
        }
        return eVarF;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f3198a.hashCode() ^ Objects.hashCode(this.f3199b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        a aVar = this.f3198a;
        sb.append(aVar);
        if (8 % aVar.d != 0) {
            Character ch = this.f3199b;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public e(String str, String str2) {
        this(new a(str, str2.toCharArray()), (Character) '=');
    }
}
