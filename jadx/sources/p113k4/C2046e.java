package p113k4;

import ai.onnxruntime.AbstractC0074a;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;
import kotlin.UByte;
import p000a.AbstractC0000a;
import p050e3.C1461d;
import p099j1.C1929i;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: k4.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2046e {

    /* JADX INFO: renamed from: d */
    public static final C2044c f5600d = new C2044c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");

    /* JADX INFO: renamed from: e */
    public static final C2043b f5601e;

    /* JADX INFO: renamed from: a */
    public final C2042a f5602a;

    /* JADX INFO: renamed from: b */
    public final Character f5603b;

    /* JADX INFO: renamed from: c */
    public volatile C2046e f5604c;

    static {
        new C2044c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new C2046e("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new C2046e("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        f5601e = new C2043b(new C2042a("base16()", "0123456789ABCDEF".toCharArray()));
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001a  */
    public C2046e(C2042a c2042a, Character ch) {
        boolean z9;
        c2042a.getClass();
        this.f5602a = c2042a;
        if (ch != null) {
            char cCharValue = ch.charValue();
            byte[] bArr = c2042a.f5596g;
            if (cCharValue >= bArr.length || bArr[cCharValue] == -1) {
                z9 = true;
            } else {
                z9 = false;
            }
        } else {
            z9 = true;
        }
        AbstractC2587b.m4038e("Padding character %s was already in alphabet", z9, ch);
        this.f5603b = ch;
    }

    /* JADX INFO: renamed from: a */
    public final byte[] m3144a(String str) {
        try {
            CharSequence charSequenceM3147g = m3147g(str);
            int length = (int) (((((long) this.f5602a.f5593d) * ((long) charSequenceM3147g.length())) + 7) / 8);
            byte[] bArr = new byte[length];
            int iMo3141b = mo3141b(bArr, charSequenceM3147g);
            if (iMo3141b == length) {
                return bArr;
            }
            byte[] bArr2 = new byte[iMo3141b];
            System.arraycopy(bArr, 0, bArr2, 0, iMo3141b);
            return bArr2;
        } catch (C2045d e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* JADX INFO: renamed from: b */
    public int mo3141b(byte[] bArr, CharSequence charSequence) throws C2045d {
        CharSequence charSequenceM3147g = m3147g(charSequence);
        int length = charSequenceM3147g.length();
        C2042a c2042a = this.f5602a;
        boolean[] zArr = c2042a.f5597h;
        int i10 = c2042a.f5593d;
        int i11 = c2042a.f5594e;
        if (!zArr[length % i11]) {
            throw new C2045d("Invalid input length " + charSequenceM3147g.length());
        }
        int i12 = 0;
        for (int i13 = 0; i13 < charSequenceM3147g.length(); i13 += i11) {
            long jM3140a = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < i11; i15++) {
                jM3140a <<= i10;
                if (i13 + i15 < charSequenceM3147g.length()) {
                    jM3140a |= (long) c2042a.m3140a(charSequenceM3147g.charAt(i14 + i13));
                    i14++;
                }
            }
            int i16 = c2042a.f5595f;
            int i17 = (i16 * 8) - (i14 * i10);
            int i18 = (i16 - 1) * 8;
            while (i18 >= i17) {
                bArr[i12] = (byte) ((jM3140a >>> i18) & 255);
                i18 -= 8;
                i12++;
            }
        }
        return i12;
    }

    /* JADX INFO: renamed from: c */
    public final String m3145c(byte[] bArr) {
        int length = bArr.length;
        AbstractC2587b.m4044k(0, length, bArr.length);
        C2042a c2042a = this.f5602a;
        int i10 = c2042a.f5594e;
        int i11 = c2042a.f5595f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        StringBuilder sb = new StringBuilder(AbstractC0000a.m9i(length, i11) * i10);
        try {
            mo3142e(sb, bArr, length);
            return sb.toString();
        } catch (IOException e) {
            C1929i.m3023e(e);
            return null;
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m3146d(StringBuilder sb, byte[] bArr, int i10, int i11) {
        AbstractC2587b.m4044k(i10, i10 + i11, bArr.length);
        C2042a c2042a = this.f5602a;
        int i12 = c2042a.f5595f;
        int i13 = c2042a.f5593d;
        int i14 = 0;
        AbstractC2587b.m4039f(i11 <= i12);
        long j10 = 0;
        for (int i15 = 0; i15 < i11; i15++) {
            j10 = (j10 | ((long) (bArr[i10 + i15] & UByte.MAX_VALUE))) << 8;
        }
        int i16 = ((i11 + 1) * 8) - i13;
        while (i14 < i11 * 8) {
            sb.append(c2042a.f5591b[((int) (j10 >>> (i16 - i14))) & c2042a.f5592c]);
            i14 += i13;
        }
        Character ch = this.f5603b;
        if (ch != null) {
            while (i14 < c2042a.f5595f * 8) {
                sb.append(ch.charValue());
                i14 += i13;
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public void mo3142e(StringBuilder sb, byte[] bArr, int i10) {
        int i11 = 0;
        AbstractC2587b.m4044k(0, i10, bArr.length);
        while (i11 < i10) {
            C2042a c2042a = this.f5602a;
            m3146d(sb, bArr, i11, Math.min(c2042a.f5595f, i10 - i11));
            i11 += c2042a.f5595f;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2046e) {
            C2046e c2046e = (C2046e) obj;
            if (this.f5602a.equals(c2046e.f5602a) && Objects.equals(this.f5603b, c2046e.f5603b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public C2046e mo3143f(C2042a c2042a, Character ch) {
        return new C2046e(c2042a, ch);
    }

    /* JADX INFO: renamed from: g */
    public final CharSequence m3147g(CharSequence charSequence) {
        Character ch = this.f5603b;
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

    /* JADX WARN: Code duplicated, block: B:47:0x00b1 A[EDGE_INSN: B:47:0x00b1->B:49:0x00b7 BREAK  A[LOOP:0: B:5:0x000b->B:48:0x00b3]] */
    /* JADX INFO: renamed from: h */
    public final C2046e m3148h() {
        int i10;
        boolean z9;
        C2046e c2046eMo3143f = this.f5604c;
        if (c2046eMo3143f == null) {
            C2042a c2042a = this.f5602a;
            char[] cArr = c2042a.f5591b;
            for (char c : cArr) {
                if (c >= 'a' && c <= 'z') {
                    int length = cArr.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length) {
                            z9 = false;
                            break;
                        }
                        char c10 = cArr[i11];
                        if (c10 >= 'A' && c10 <= 'Z') {
                            z9 = true;
                            break;
                        }
                        i11++;
                    }
                    AbstractC2587b.m4046m(!z9, "Cannot call upperCase() on a mixed-case alphabet");
                    char[] cArr2 = new char[cArr.length];
                    for (int i12 = 0; i12 < cArr.length; i12++) {
                        char c11 = cArr[i12];
                        if (c11 >= 'a' && c11 <= 'z') {
                            c11 = (char) (c11 ^ ' ');
                        }
                        cArr2[i12] = c11;
                    }
                    C2042a c2042a2 = new C2042a(AbstractC0074a.m165p(new StringBuilder(), c2042a.f5590a, ".upperCase()"), cArr2);
                    if (!c2042a.f5598i) {
                        c2042a = c2042a2;
                        break;
                    }
                    byte[] bArr = c2042a2.f5596g;
                    if (!c2042a2.f5598i) {
                        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                        for (i10 = 65; i10 <= 90; i10++) {
                            int i13 = i10 | 32;
                            byte b10 = bArr[i10];
                            byte b11 = bArr[i13];
                            if (b10 == -1) {
                                bArrCopyOf[i10] = b11;
                            } else {
                                char c12 = (char) i10;
                                char c13 = (char) i13;
                                if (!(b11 == -1)) {
                                    C1929i.m3030l(C1461d.m2512l("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c12), Character.valueOf(c13)));
                                    return null;
                                }
                                bArrCopyOf[i13] = b10;
                            }
                        }
                        c2042a = new C2042a(AbstractC0074a.m165p(new StringBuilder(), c2042a2.f5590a, ".ignoreCase()"), c2042a2.f5591b, bArrCopyOf, true);
                        break;
                    }
                    c2042a = c2042a2;
                    break;
                }
            }
            c2046eMo3143f = c2042a == this.f5602a ? this : mo3143f(c2042a, this.f5603b);
            this.f5604c = c2046eMo3143f;
        }
        return c2046eMo3143f;
    }

    public final int hashCode() {
        return this.f5602a.hashCode() ^ Objects.hashCode(this.f5603b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        C2042a c2042a = this.f5602a;
        sb.append(c2042a);
        if (8 % c2042a.f5593d != 0) {
            Character ch = this.f5603b;
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

    public C2046e(String str, String str2) {
        this(new C2042a(str, str2.toCharArray()), (Character) '=');
    }
}
