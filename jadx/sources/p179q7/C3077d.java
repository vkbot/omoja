package p179q7;

import ai.onnxruntime.C0075b;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: renamed from: q7.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3077d {

    /* JADX INFO: renamed from: a */
    public final String f8729a;

    /* JADX INFO: renamed from: b */
    public final int f8730b;

    /* JADX INFO: renamed from: c */
    public int f8731c;

    /* JADX INFO: renamed from: d */
    public int f8732d;

    /* JADX INFO: renamed from: e */
    public int f8733e;

    /* JADX INFO: renamed from: f */
    public int f8734f;

    /* JADX INFO: renamed from: g */
    public char[] f8735g;

    public C3077d(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f8729a = name;
        this.f8730b = name.length();
    }

    /* JADX INFO: renamed from: a */
    public final int m4911a(int i10) {
        int i11;
        int i12;
        int i13 = i10 + 1;
        int i14 = this.f8730b;
        String str = this.f8729a;
        if (i13 >= i14) {
            C0075b.m192q(str, "Malformed DN: ");
            return 0;
        }
        char[] cArr = this.f8735g;
        char c = cArr[i10];
        if (c >= '0' && c <= '9') {
            i11 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i11 = c - 'W';
        } else {
            if (c < 'A' || c > 'F') {
                C0075b.m192q(str, "Malformed DN: ");
                return 0;
            }
            i11 = c - '7';
        }
        char c10 = cArr[i13];
        if (c10 >= '0' && c10 <= '9') {
            i12 = c10 - '0';
        } else if (c10 >= 'a' && c10 <= 'f') {
            i12 = c10 - 'W';
        } else {
            if (c10 < 'A' || c10 > 'F') {
                C0075b.m192q(str, "Malformed DN: ");
                return 0;
            }
            i12 = c10 - '7';
        }
        return (i11 << 4) + i12;
    }

    /* JADX INFO: renamed from: b */
    public final char m4912b() {
        int i10;
        int i11;
        int i12 = this.f8731c + 1;
        this.f8731c = i12;
        int i13 = this.f8730b;
        if (i12 == i13) {
            C0075b.m196u(this.f8729a, "Unexpected end of DN: ");
            return (char) 0;
        }
        char c = this.f8735g[i12];
        if (c != ' ' && c != '%' && c != '\\' && c != '_' && c != '\"' && c != '#') {
            switch (c) {
                default:
                    switch (c) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            int iM4911a = m4911a(i12);
                            this.f8731c++;
                            if (iM4911a < 128) {
                                return (char) iM4911a;
                            }
                            if (iM4911a < 192 || iM4911a > 247) {
                                return '?';
                            }
                            if (iM4911a <= 223) {
                                i10 = iM4911a & 31;
                                i11 = 1;
                            } else if (iM4911a <= 239) {
                                i10 = iM4911a & 15;
                                i11 = 2;
                            } else {
                                i10 = iM4911a & 7;
                                i11 = 3;
                            }
                            for (int i14 = 0; i14 < i11; i14++) {
                                int i15 = this.f8731c;
                                int i16 = i15 + 1;
                                this.f8731c = i16;
                                if (i16 == i13 || this.f8735g[i16] != '\\') {
                                    return '?';
                                }
                                int i17 = i15 + 2;
                                this.f8731c = i17;
                                int iM4911a2 = m4911a(i17);
                                this.f8731c++;
                                if ((iM4911a2 & 192) != 128) {
                                    return '?';
                                }
                                i10 = (i10 << 6) + (iM4911a2 & 63);
                            }
                            return (char) i10;
                    }
                case '*':
                case '+':
                case ',':
                    return c;
            }
        }
        return c;
    }

    /* JADX INFO: renamed from: c */
    public final String m4913c() {
        int i10;
        int i11;
        int i12;
        char c;
        int i13;
        char c10;
        char c11;
        while (true) {
            i10 = this.f8731c;
            i11 = this.f8730b;
            if (i10 >= i11 || this.f8735g[i10] != ' ') {
                break;
            }
            this.f8731c = i10 + 1;
        }
        if (i10 == i11) {
            return null;
        }
        this.f8732d = i10;
        this.f8731c = i10 + 1;
        while (true) {
            i12 = this.f8731c;
            if (i12 >= i11 || (c11 = this.f8735g[i12]) == '=' || c11 == ' ') {
                break;
            }
            this.f8731c = i12 + 1;
        }
        String str = this.f8729a;
        if (i12 >= i11) {
            C0075b.m192q(str, "Unexpected end of DN: ");
            return null;
        }
        this.f8733e = i12;
        if (this.f8735g[i12] == ' ') {
            while (true) {
                i13 = this.f8731c;
                if (i13 >= i11 || (c10 = this.f8735g[i13]) == '=' || c10 != ' ') {
                    break;
                }
                this.f8731c = i13 + 1;
            }
            if (this.f8735g[i13] != '=' || i13 == i11) {
                C0075b.m192q(str, "Unexpected end of DN: ");
                return null;
            }
        }
        this.f8731c++;
        while (true) {
            int i14 = this.f8731c;
            if (i14 >= i11 || this.f8735g[i14] != ' ') {
                break;
            }
            this.f8731c = i14 + 1;
        }
        int i15 = this.f8733e;
        int i16 = this.f8732d;
        if (i15 - i16 > 4) {
            char[] cArr = this.f8735g;
            if (cArr[i16 + 3] == '.' && (((c = cArr[i16]) == 'O' || c == 'o') && ((cArr[i16 + 1] == 'I' || cArr[i16 + 1] == 'i') && (cArr[i16 + 2] == 'D' || cArr[i16 + 2] == 'd')))) {
                this.f8732d = i16 + 4;
            }
        }
        char[] cArr2 = this.f8735g;
        int i17 = this.f8732d;
        return new String(cArr2, i17, i15 - i17);
    }
}
