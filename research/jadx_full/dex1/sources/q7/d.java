package q7;

import javax.security.auth.x500.X500Principal;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4899b;
    public int c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4900f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public char[] f4901g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f4898a = name;
        this.f4899b = name.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a(int i9) {
        int i10;
        int i11;
        int i12 = i9 + 1;
        int i13 = this.f4899b;
        String str = this.f4898a;
        if (i12 >= i13) {
            ai.onnxruntime.b.q(str, "Malformed DN: ");
            return 0;
        }
        char[] cArr = this.f4901g;
        char c = cArr[i9];
        if (c >= '0' && c <= '9') {
            i10 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i10 = c - 'W';
        } else {
            if (c < 'A' || c > 'F') {
                ai.onnxruntime.b.q(str, "Malformed DN: ");
                return 0;
            }
            i10 = c - '7';
        }
        char c9 = cArr[i12];
        if (c9 >= '0' && c9 <= '9') {
            i11 = c9 - '0';
        } else if (c9 >= 'a' && c9 <= 'f') {
            i11 = c9 - 'W';
        } else {
            if (c9 < 'A' || c9 > 'F') {
                ai.onnxruntime.b.q(str, "Malformed DN: ");
                return 0;
            }
            i11 = c9 - '7';
        }
        return (i10 << 4) + i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final char b() {
        int i9;
        int i10;
        int i11 = this.c + 1;
        this.c = i11;
        int i12 = this.f4899b;
        if (i11 == i12) {
            ai.onnxruntime.b.u(this.f4898a, "Unexpected end of DN: ");
            return (char) 0;
        }
        char c = this.f4901g[i11];
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
                            int iA = a(i11);
                            this.c++;
                            if (iA < 128) {
                                return (char) iA;
                            }
                            if (iA < 192 || iA > 247) {
                                return '?';
                            }
                            if (iA <= 223) {
                                i9 = iA & 31;
                                i10 = 1;
                            } else if (iA <= 239) {
                                i9 = iA & 15;
                                i10 = 2;
                            } else {
                                i9 = iA & 7;
                                i10 = 3;
                            }
                            for (int i13 = 0; i13 < i10; i13++) {
                                int i14 = this.c;
                                int i15 = i14 + 1;
                                this.c = i15;
                                if (i15 == i12 || this.f4901g[i15] != '\\') {
                                    return '?';
                                }
                                int i16 = i14 + 2;
                                this.c = i16;
                                int iA2 = a(i16);
                                this.c++;
                                if ((iA2 & 192) != 128) {
                                    return '?';
                                }
                                i9 = (i9 << 6) + (iA2 & 63);
                            }
                            return (char) i9;
                    }
                case '*':
                case '+':
                case ',':
                    return c;
            }
        }
        return c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String c() {
        int i9;
        int i10;
        int i11;
        char c;
        int i12;
        char c9;
        char c10;
        while (true) {
            i9 = this.c;
            i10 = this.f4899b;
            if (i9 >= i10 || this.f4901g[i9] != ' ') {
                break;
            }
            this.c = i9 + 1;
        }
        if (i9 == i10) {
            return null;
        }
        this.d = i9;
        this.c = i9 + 1;
        while (true) {
            i11 = this.c;
            if (i11 >= i10 || (c10 = this.f4901g[i11]) == '=' || c10 == ' ') {
                break;
            }
            this.c = i11 + 1;
        }
        String str = this.f4898a;
        if (i11 >= i10) {
            ai.onnxruntime.b.q(str, "Unexpected end of DN: ");
            return null;
        }
        this.e = i11;
        if (this.f4901g[i11] == ' ') {
            while (true) {
                i12 = this.c;
                if (i12 >= i10 || (c9 = this.f4901g[i12]) == '=' || c9 != ' ') {
                    break;
                }
                this.c = i12 + 1;
            }
            if (this.f4901g[i12] != '=' || i12 == i10) {
                ai.onnxruntime.b.q(str, "Unexpected end of DN: ");
                return null;
            }
        }
        this.c++;
        while (true) {
            int i13 = this.c;
            if (i13 >= i10 || this.f4901g[i13] != ' ') {
                break;
            }
            this.c = i13 + 1;
        }
        int i14 = this.e;
        int i15 = this.d;
        if (i14 - i15 > 4) {
            char[] cArr = this.f4901g;
            if (cArr[i15 + 3] == '.' && (((c = cArr[i15]) == 'O' || c == 'o') && ((cArr[i15 + 1] == 'I' || cArr[i15 + 1] == 'i') && (cArr[i15 + 2] == 'D' || cArr[i15 + 2] == 'd')))) {
                this.d = i15 + 4;
            }
        }
        char[] cArr2 = this.f4901g;
        int i16 = this.d;
        return new String(cArr2, i16, i14 - i16);
    }
}
