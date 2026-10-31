package w5;

import j1.i;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class a implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Reader f5910b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f5915j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5916k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f5917l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f5918m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String[] f5920o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[] f5921p;
    public boolean c = false;
    public final char[] d = new char[1024];
    public int e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5911f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5912g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5913h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5914i = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5919n = 1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f5918m = iArr;
        iArr[0] = 6;
        this.f5920o = new String[32];
        this.f5921p = new int[32];
        this.f5910b = reader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:101:0x0146  */
    /* JADX WARN: Code duplicated, block: B:109:0x015e  */
    /* JADX WARN: Code duplicated, block: B:111:0x0166  */
    /* JADX WARN: Code duplicated, block: B:116:0x017b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:117:0x017c  */
    /* JADX WARN: Code duplicated, block: B:120:0x018e  */
    /* JADX WARN: Code duplicated, block: B:123:0x0194  */
    /* JADX WARN: Code duplicated, block: B:126:0x019f  */
    /* JADX WARN: Code duplicated, block: B:127:0x01a5 A[PHI: r4 r14
  0x01a5: PHI (r4v9 int) = (r4v8 int), (r4v14 int) binds: [B:119:0x018c, B:126:0x019f] A[DONT_GENERATE, DONT_INLINE]
  0x01a5: PHI (r14v3 int) = (r14v2 int), (r14v4 int) binds: [B:119:0x018c, B:126:0x019f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:129:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:131:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:169:0x0210  */
    /* JADX WARN: Code duplicated, block: B:170:0x0212  */
    /* JADX WARN: Code duplicated, block: B:182:0x0233 A[DONT_INVERT, PHI: r13
  0x0233: PHI (r13v20 int) = (r13v19 int), (r13v21 int) binds: [B:168:0x020e, B:174:0x021b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:183:0x0235  */
    /* JADX WARN: Code duplicated, block: B:196:0x0252  */
    /* JADX WARN: Code duplicated, block: B:198:0x0255  */
    /* JADX WARN: Code duplicated, block: B:201:0x025a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:205:0x0263 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:206:0x0264  */
    /* JADX WARN: Code duplicated, block: B:208:0x026e  */
    /* JADX WARN: Code duplicated, block: B:210:0x0274  */
    /* JADX WARN: Code duplicated, block: B:212:0x027a  */
    /* JADX WARN: Code duplicated, block: B:214:0x027d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:215:0x027f  */
    /* JADX WARN: Code duplicated, block: B:217:0x0283  */
    /* JADX WARN: Code duplicated, block: B:227:0x029e  */
    /* JADX WARN: Code duplicated, block: B:229:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:270:0x0191 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:271:0x0191 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x019c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:284:0x015b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:71:0x00f4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:92:0x012a  */
    /* JADX WARN: Code duplicated, block: B:96:0x013a  */
    /* JADX WARN: Code duplicated, block: B:98:0x013d  */
    public final int S() throws IOException {
        int iK0;
        int i9;
        int iK1;
        char c;
        String str;
        String str2;
        int i10;
        int length;
        int i11;
        int i12;
        int i13;
        char c9;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z8;
        char c10;
        int i18;
        int i19;
        int[] iArr = this.f5918m;
        int i20 = this.f5919n - 1;
        int i21 = iArr[i20];
        char[] cArr = this.d;
        if (i21 == 1) {
            iArr[i20] = 2;
        } else if (i21 == 2) {
            int iK2 = k0(true);
            if (iK2 != 44) {
                if (iK2 != 59) {
                    if (iK2 == 93) {
                        this.f5914i = 4;
                        return 4;
                    }
                    s0("Unterminated array");
                    throw null;
                }
                y();
            }
        } else {
            if (i21 == 3 || i21 == 5) {
                iArr[i20] = 4;
                if (i21 == 5 && (iK0 = k0(true)) != 44) {
                    if (iK0 != 59) {
                        if (iK0 == 125) {
                            this.f5914i = 2;
                            return 2;
                        }
                        s0("Unterminated object");
                        throw null;
                    }
                    y();
                }
                int iK3 = k0(true);
                if (iK3 == 34) {
                    this.f5914i = 13;
                    return 13;
                }
                if (iK3 == 39) {
                    y();
                    this.f5914i = 12;
                    return 12;
                }
                if (iK3 == 125) {
                    if (i21 != 5) {
                        this.f5914i = 2;
                        return 2;
                    }
                    s0("Expected name");
                    throw null;
                }
                y();
                this.e--;
                if (g0((char) iK3)) {
                    this.f5914i = 14;
                    return 14;
                }
                s0("Expected name");
                throw null;
            }
            if (i21 != 4) {
                if (i21 == 6) {
                    if (this.c) {
                        k0(true);
                        int i22 = this.e;
                        this.e = i22 - 1;
                        if (i22 + 4 <= this.f5911f || d0(5)) {
                            int i23 = this.e;
                            if (cArr[i23] == ')' && cArr[i23 + 1] == ']' && cArr[i23 + 2] == '}' && cArr[i23 + 3] == '\'' && cArr[i23 + 4] == '\n') {
                                this.e = i23 + 5;
                            }
                        }
                    }
                    this.f5918m[this.f5919n - 1] = 7;
                } else if (i21 == 7) {
                    i9 = 0;
                    if (k0(false) == -1) {
                        this.f5914i = 17;
                        return 17;
                    }
                    y();
                    this.e--;
                } else {
                    i9 = 0;
                    if (i21 == 8) {
                        i.l("JsonReader is closed");
                        return 0;
                    }
                }
                iK1 = k0(true);
                if (iK1 != 34) {
                    this.f5914i = 9;
                    return 9;
                }
                if (iK1 != 39) {
                    y();
                    this.f5914i = 8;
                    return 8;
                }
                if (iK1 != 44 && iK1 != 59) {
                    if (iK1 != 91) {
                        this.f5914i = 3;
                        return 3;
                    }
                    if (iK1 != 93) {
                        if (iK1 != 123) {
                            this.f5914i = 1;
                            return 1;
                        }
                        int i24 = this.e - 1;
                        this.e = i24;
                        c = cArr[i24];
                        if (c != 't' || c == 'T') {
                            str = "true";
                            str2 = "TRUE";
                            i10 = 5;
                        } else {
                            if (c != 'f' && c != 'F') {
                                if (c != 'n' && c != 'N') {
                                    i10 = i9;
                                    break;
                                }
                                str = "null";
                                str2 = "NULL";
                                i10 = 7;
                                if (i10 != 0) {
                                    return i10;
                                }
                                int i25 = this.e;
                                i14 = this.f5911f;
                                i15 = i9;
                                i16 = i15;
                                int i26 = i16;
                                i17 = i25;
                                z8 = true;
                                long j9 = 0;
                                while (true) {
                                    if (i17 + i16 != i14) {
                                        c10 = cArr[i17 + i16];
                                        if (c10 != '+') {
                                            if (c10 != 'E' || c10 == 'e') {
                                                if (i15 != 2 || i15 == 4) {
                                                    i15 = 5;
                                                    i16++;
                                                }
                                            } else if (c10 == '-') {
                                                if (i15 == 0) {
                                                    i15 = 1;
                                                    i26 = 1;
                                                } else {
                                                    if (i15 != 5) {
                                                    }
                                                    i15 = 6;
                                                }
                                                i16++;
                                            } else if (c10 != '.') {
                                                if (c10 >= '0' && c10 <= '9') {
                                                    if (i15 == 1 || i15 == 0) {
                                                        j9 = -(c10 - '0');
                                                        i15 = 2;
                                                    } else if (i15 == 2) {
                                                        if (j9 != 0) {
                                                            long j10 = (10 * j9) - ((long) (c10 - '0'));
                                                            z8 &= j9 > -922337203685477580L || (j9 == -922337203685477580L && j10 < j9);
                                                            j9 = j10;
                                                        }
                                                    } else if (i15 == 3) {
                                                        i15 = 4;
                                                    } else if (i15 == 5 || i15 == 6) {
                                                        i15 = 7;
                                                    }
                                                    i16++;
                                                } else if (!g0(c10)) {
                                                    i19 = 2;
                                                    if (i15 != 2) {
                                                        if (i15 != i19 || i15 == 4 || i15 == 7) {
                                                            this.f5916k = i16;
                                                            i18 = 16;
                                                            this.f5914i = 16;
                                                        }
                                                    } else if (z8 || ((j9 == Long.MIN_VALUE && i26 == 0) || (j9 == 0 && i26 != 0))) {
                                                        i19 = 2;
                                                        if (i15 != i19) {
                                                        }
                                                        this.f5916k = i16;
                                                        i18 = 16;
                                                        this.f5914i = 16;
                                                    } else {
                                                        if (i26 == 0) {
                                                            j9 = -j9;
                                                        }
                                                        this.f5915j = j9;
                                                        this.e += i16;
                                                        i18 = 15;
                                                        this.f5914i = 15;
                                                    }
                                                }
                                            } else if (i15 == 2) {
                                                i15 = 3;
                                                i16++;
                                            }
                                            if (i18 != 0) {
                                                return i18;
                                            }
                                            if (g0(cArr[this.e])) {
                                                s0("Expected value");
                                                throw null;
                                            }
                                            y();
                                            this.f5914i = 10;
                                            return 10;
                                        }
                                        if (i15 != 5) {
                                        }
                                        i15 = 6;
                                        i16++;
                                    } else if (i16 != cArr.length) {
                                        if (d0(i16 + 1)) {
                                            i17 = this.e;
                                            i14 = this.f5911f;
                                            c10 = cArr[i17 + i16];
                                            if (c10 != '+') {
                                                if (c10 != 'E') {
                                                    if (i15 != 2) {
                                                    }
                                                    i15 = 5;
                                                    i16++;
                                                } else {
                                                    if (i15 != 2) {
                                                    }
                                                    i15 = 5;
                                                    i16++;
                                                }
                                                if (i18 != 0) {
                                                    return i18;
                                                }
                                                if (g0(cArr[this.e])) {
                                                    s0("Expected value");
                                                    throw null;
                                                }
                                                y();
                                                this.f5914i = 10;
                                                return 10;
                                            }
                                            if (i15 != 5) {
                                            }
                                            i15 = 6;
                                            i16++;
                                        }
                                        i19 = 2;
                                        if (i15 != 2) {
                                            if (i15 != i19) {
                                            }
                                            this.f5916k = i16;
                                            i18 = 16;
                                            this.f5914i = 16;
                                        } else {
                                            if (z8) {
                                            }
                                            i19 = 2;
                                            if (i15 != i19) {
                                            }
                                            this.f5916k = i16;
                                            i18 = 16;
                                            this.f5914i = 16;
                                        }
                                        if (i18 != 0) {
                                            return i18;
                                        }
                                        if (g0(cArr[this.e])) {
                                            s0("Expected value");
                                            throw null;
                                        }
                                        y();
                                        this.f5914i = 10;
                                        return 10;
                                    }
                                    i18 = 0;
                                    if (i18 != 0) {
                                        return i18;
                                    }
                                    if (g0(cArr[this.e])) {
                                        s0("Expected value");
                                        throw null;
                                    }
                                    y();
                                    this.f5914i = 10;
                                    return 10;
                                }
                            }
                            str = "false";
                            str2 = "FALSE";
                            i10 = 6;
                        }
                        length = str.length();
                        i11 = 1;
                        while (true) {
                            i12 = this.e;
                            i13 = this.f5911f;
                            if (i11 >= length) {
                                if ((i12 + length < i13 && !d0(length + 1)) || !g0(cArr[this.e + length])) {
                                    this.e += length;
                                    this.f5914i = i10;
                                    break;
                                }
                                break;
                            }
                            if ((i12 + i11 >= i13 || d0(i11 + 1)) && ((c9 = cArr[this.e + i11]) == str.charAt(i11) || c9 == str2.charAt(i11))) {
                            }
                            i10 = i9;
                            break;
                        }
                        if (i10 != 0) {
                            return i10;
                        }
                        int i27 = this.e;
                        i14 = this.f5911f;
                        i15 = i9;
                        i16 = i15;
                        int i28 = i16;
                        i17 = i27;
                        z8 = true;
                        long j11 = 0;
                        while (true) {
                            if (i17 + i16 != i14) {
                                c10 = cArr[i17 + i16];
                                if (c10 != '+') {
                                    if (c10 != 'E') {
                                        if (i15 != 2) {
                                        }
                                        i15 = 5;
                                        i16++;
                                    } else {
                                        if (i15 != 2) {
                                        }
                                        i15 = 5;
                                        i16++;
                                    }
                                    if (i18 != 0) {
                                        return i18;
                                    }
                                    if (g0(cArr[this.e])) {
                                        s0("Expected value");
                                        throw null;
                                    }
                                    y();
                                    this.f5914i = 10;
                                    return 10;
                                }
                                if (i15 != 5) {
                                }
                                i15 = 6;
                                i16++;
                            } else if (i16 != cArr.length) {
                                if (d0(i16 + 1)) {
                                    i17 = this.e;
                                    i14 = this.f5911f;
                                    c10 = cArr[i17 + i16];
                                    if (c10 != '+') {
                                        if (c10 != 'E') {
                                            if (i15 != 2) {
                                            }
                                            i15 = 5;
                                            i16++;
                                        } else {
                                            if (i15 != 2) {
                                            }
                                            i15 = 5;
                                            i16++;
                                        }
                                        if (i18 != 0) {
                                            return i18;
                                        }
                                        if (g0(cArr[this.e])) {
                                            s0("Expected value");
                                            throw null;
                                        }
                                        y();
                                        this.f5914i = 10;
                                        return 10;
                                    }
                                    if (i15 != 5) {
                                    }
                                    i15 = 6;
                                    i16++;
                                }
                                i19 = 2;
                                if (i15 != 2) {
                                    if (i15 != i19) {
                                    }
                                    this.f5916k = i16;
                                    i18 = 16;
                                    this.f5914i = 16;
                                } else {
                                    if (z8) {
                                    }
                                    i19 = 2;
                                    if (i15 != i19) {
                                    }
                                    this.f5916k = i16;
                                    i18 = 16;
                                    this.f5914i = 16;
                                }
                                if (i18 != 0) {
                                    return i18;
                                }
                                if (g0(cArr[this.e])) {
                                    s0("Expected value");
                                    throw null;
                                }
                                y();
                                this.f5914i = 10;
                                return 10;
                            }
                            i18 = 0;
                            if (i18 != 0) {
                                return i18;
                            }
                            if (g0(cArr[this.e])) {
                                s0("Expected value");
                                throw null;
                            }
                            y();
                            this.f5914i = 10;
                            return 10;
                        }
                    }
                    if (i21 == 1) {
                        this.f5914i = 4;
                        return 4;
                    }
                }
                if (i21 == 1 && i21 != 2) {
                    s0("Unexpected value");
                    throw null;
                }
                y();
                this.e--;
                this.f5914i = 7;
                return 7;
            }
            iArr[i20] = 5;
            int iK4 = k0(true);
            if (iK4 != 58) {
                if (iK4 != 61) {
                    s0("Expected ':'");
                    throw null;
                }
                y();
                if (this.e < this.f5911f || d0(1)) {
                    int i29 = this.e;
                    if (cArr[i29] == '>') {
                        this.e = i29 + 1;
                    }
                }
            }
        }
        i9 = 0;
        iK1 = k0(true);
        if (iK1 != 34) {
            this.f5914i = 9;
            return 9;
        }
        if (iK1 != 39) {
            y();
            this.f5914i = 8;
            return 8;
        }
        if (iK1 != 44) {
            if (iK1 != 91) {
                this.f5914i = 3;
                return 3;
            }
            if (iK1 != 93) {
                if (iK1 != 123) {
                    this.f5914i = 1;
                    return 1;
                }
                int i210 = this.e - 1;
                this.e = i210;
                c = cArr[i210];
                if (c != 't') {
                    str = "true";
                    str2 = "TRUE";
                    i10 = 5;
                    length = str.length();
                    i11 = 1;
                    while (true) {
                        i12 = this.e;
                        i13 = this.f5911f;
                        if (i11 >= length) {
                            if (i12 + length < i13) {
                            }
                            this.e += length;
                            this.f5914i = i10;
                            break;
                        }
                        i11 = i12 + i11 >= i13 ? i11 + 1 : i11 + 1;
                    }
                    if (i10 != 0) {
                        return i10;
                    }
                    int i211 = this.e;
                    i14 = this.f5911f;
                    i15 = i9;
                    i16 = i15;
                    int i212 = i16;
                    i17 = i211;
                    z8 = true;
                    long j12 = 0;
                    while (true) {
                        if (i17 + i16 != i14) {
                            c10 = cArr[i17 + i16];
                            if (c10 != '+') {
                                if (c10 != 'E') {
                                    if (i15 != 2) {
                                    }
                                    i15 = 5;
                                    i16++;
                                } else {
                                    if (i15 != 2) {
                                    }
                                    i15 = 5;
                                    i16++;
                                }
                                if (i18 != 0) {
                                    return i18;
                                }
                                if (g0(cArr[this.e])) {
                                    s0("Expected value");
                                    throw null;
                                }
                                y();
                                this.f5914i = 10;
                                return 10;
                            }
                            if (i15 != 5) {
                            }
                            i15 = 6;
                            i16++;
                        } else if (i16 != cArr.length) {
                            if (d0(i16 + 1)) {
                                i17 = this.e;
                                i14 = this.f5911f;
                                c10 = cArr[i17 + i16];
                                if (c10 != '+') {
                                    if (c10 != 'E') {
                                        if (i15 != 2) {
                                        }
                                        i15 = 5;
                                        i16++;
                                    } else {
                                        if (i15 != 2) {
                                        }
                                        i15 = 5;
                                        i16++;
                                    }
                                    if (i18 != 0) {
                                        return i18;
                                    }
                                    if (g0(cArr[this.e])) {
                                        s0("Expected value");
                                        throw null;
                                    }
                                    y();
                                    this.f5914i = 10;
                                    return 10;
                                }
                                if (i15 != 5) {
                                }
                                i15 = 6;
                                i16++;
                            }
                            i19 = 2;
                            if (i15 != 2) {
                                if (i15 != i19) {
                                }
                                this.f5916k = i16;
                                i18 = 16;
                                this.f5914i = 16;
                            } else {
                                if (z8) {
                                }
                                i19 = 2;
                                if (i15 != i19) {
                                }
                                this.f5916k = i16;
                                i18 = 16;
                                this.f5914i = 16;
                            }
                            if (i18 != 0) {
                                return i18;
                            }
                            if (g0(cArr[this.e])) {
                                s0("Expected value");
                                throw null;
                            }
                            y();
                            this.f5914i = 10;
                            return 10;
                        }
                        i18 = 0;
                        if (i18 != 0) {
                            return i18;
                        }
                        if (g0(cArr[this.e])) {
                            s0("Expected value");
                            throw null;
                        }
                        y();
                        this.f5914i = 10;
                        return 10;
                    }
                }
                str = "true";
                str2 = "TRUE";
                i10 = 5;
                length = str.length();
                i11 = 1;
                while (true) {
                    i12 = this.e;
                    i13 = this.f5911f;
                    if (i11 >= length) {
                        if (i12 + length < i13) {
                        }
                        this.e += length;
                        this.f5914i = i10;
                        break;
                    }
                    if (i12 + i11 >= i13) {
                    }
                }
                if (i10 != 0) {
                    return i10;
                }
                int i213 = this.e;
                i14 = this.f5911f;
                i15 = i9;
                i16 = i15;
                int i214 = i16;
                i17 = i213;
                z8 = true;
                long j13 = 0;
                while (true) {
                    if (i17 + i16 != i14) {
                        c10 = cArr[i17 + i16];
                        if (c10 != '+') {
                            if (c10 != 'E') {
                                if (i15 != 2) {
                                }
                                i15 = 5;
                                i16++;
                            } else {
                                if (i15 != 2) {
                                }
                                i15 = 5;
                                i16++;
                            }
                            if (i18 != 0) {
                                return i18;
                            }
                            if (g0(cArr[this.e])) {
                                s0("Expected value");
                                throw null;
                            }
                            y();
                            this.f5914i = 10;
                            return 10;
                        }
                        if (i15 != 5) {
                        }
                        i15 = 6;
                        i16++;
                    } else if (i16 != cArr.length) {
                        if (d0(i16 + 1)) {
                            i17 = this.e;
                            i14 = this.f5911f;
                            c10 = cArr[i17 + i16];
                            if (c10 != '+') {
                                if (c10 != 'E') {
                                    if (i15 != 2) {
                                    }
                                    i15 = 5;
                                    i16++;
                                } else {
                                    if (i15 != 2) {
                                    }
                                    i15 = 5;
                                    i16++;
                                }
                                if (i18 != 0) {
                                    return i18;
                                }
                                if (g0(cArr[this.e])) {
                                    s0("Expected value");
                                    throw null;
                                }
                                y();
                                this.f5914i = 10;
                                return 10;
                            }
                            if (i15 != 5) {
                            }
                            i15 = 6;
                            i16++;
                        }
                        i19 = 2;
                        if (i15 != 2) {
                            if (i15 != i19) {
                            }
                            this.f5916k = i16;
                            i18 = 16;
                            this.f5914i = 16;
                        } else {
                            if (z8) {
                            }
                            i19 = 2;
                            if (i15 != i19) {
                            }
                            this.f5916k = i16;
                            i18 = 16;
                            this.f5914i = 16;
                        }
                        if (i18 != 0) {
                            return i18;
                        }
                        if (g0(cArr[this.e])) {
                            s0("Expected value");
                            throw null;
                        }
                        y();
                        this.f5914i = 10;
                        return 10;
                    }
                    i18 = 0;
                    if (i18 != 0) {
                        return i18;
                    }
                    if (g0(cArr[this.e])) {
                        s0("Expected value");
                        throw null;
                    }
                    y();
                    this.f5914i = 10;
                    return 10;
                }
                i10 = i9;
                if (i10 != 0) {
                    return i10;
                }
                int i215 = this.e;
                i14 = this.f5911f;
                i15 = i9;
                i16 = i15;
                int i216 = i16;
                i17 = i215;
                z8 = true;
                long j14 = 0;
                while (true) {
                    if (i17 + i16 != i14) {
                        c10 = cArr[i17 + i16];
                        if (c10 != '+') {
                            if (c10 != 'E') {
                                if (i15 != 2) {
                                }
                                i15 = 5;
                                i16++;
                            } else {
                                if (i15 != 2) {
                                }
                                i15 = 5;
                                i16++;
                            }
                            if (i18 != 0) {
                                return i18;
                            }
                            if (g0(cArr[this.e])) {
                                s0("Expected value");
                                throw null;
                            }
                            y();
                            this.f5914i = 10;
                            return 10;
                        }
                        if (i15 != 5) {
                        }
                        i15 = 6;
                        i16++;
                    } else if (i16 != cArr.length) {
                        if (d0(i16 + 1)) {
                            i17 = this.e;
                            i14 = this.f5911f;
                            c10 = cArr[i17 + i16];
                            if (c10 != '+') {
                                if (c10 != 'E') {
                                    if (i15 != 2) {
                                    }
                                    i15 = 5;
                                    i16++;
                                } else {
                                    if (i15 != 2) {
                                    }
                                    i15 = 5;
                                    i16++;
                                }
                                if (i18 != 0) {
                                    return i18;
                                }
                                if (g0(cArr[this.e])) {
                                    s0("Expected value");
                                    throw null;
                                }
                                y();
                                this.f5914i = 10;
                                return 10;
                            }
                            if (i15 != 5) {
                            }
                            i15 = 6;
                            i16++;
                        }
                        i19 = 2;
                        if (i15 != 2) {
                            if (i15 != i19) {
                            }
                            this.f5916k = i16;
                            i18 = 16;
                            this.f5914i = 16;
                        } else {
                            if (z8) {
                            }
                            i19 = 2;
                            if (i15 != i19) {
                            }
                            this.f5916k = i16;
                            i18 = 16;
                            this.f5914i = 16;
                        }
                        if (i18 != 0) {
                            return i18;
                        }
                        if (g0(cArr[this.e])) {
                            s0("Expected value");
                            throw null;
                        }
                        y();
                        this.f5914i = 10;
                        return 10;
                    }
                    i18 = 0;
                    if (i18 != 0) {
                        return i18;
                    }
                    if (g0(cArr[this.e])) {
                        s0("Expected value");
                        throw null;
                    }
                    y();
                    this.f5914i = 10;
                    return 10;
                }
            }
            if (i21 == 1) {
                this.f5914i = 4;
                return 4;
            }
        }
        if (i21 == 1) {
        }
        y();
        this.e--;
        this.f5914i = 7;
        return 7;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void V() {
        int iS = this.f5914i;
        if (iS == 0) {
            iS = S();
        }
        if (iS != 4) {
            n0.b.j(kotlin.collections.unsigned.a.j(p0()), "Expected END_ARRAY but was ", h0());
            return;
        }
        int i9 = this.f5919n;
        this.f5919n = i9 - 1;
        int[] iArr = this.f5921p;
        int i10 = i9 - 2;
        iArr[i10] = iArr[i10] + 1;
        this.f5914i = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        int iS = this.f5914i;
        if (iS == 0) {
            iS = S();
        }
        if (iS != 3) {
            n0.b.j(kotlin.collections.unsigned.a.j(p0()), "Expected BEGIN_ARRAY but was ", h0());
            return;
        }
        q0(1);
        this.f5921p[this.f5919n - 1] = 0;
        this.f5914i = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        int iS = this.f5914i;
        if (iS == 0) {
            iS = S();
        }
        if (iS != 1) {
            n0.b.j(kotlin.collections.unsigned.a.j(p0()), "Expected BEGIN_OBJECT but was ", h0());
        } else {
            q0(3);
            this.f5914i = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c0() {
        int iS = this.f5914i;
        if (iS == 0) {
            iS = S();
        }
        if (iS != 2) {
            n0.b.j(kotlin.collections.unsigned.a.j(p0()), "Expected END_OBJECT but was ", h0());
            return;
        }
        int i9 = this.f5919n;
        int i10 = i9 - 1;
        this.f5919n = i10;
        this.f5920o[i10] = null;
        int[] iArr = this.f5921p;
        int i11 = i9 - 2;
        iArr[i11] = iArr[i11] + 1;
        this.f5914i = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5914i = 0;
        this.f5918m[0] = 8;
        this.f5919n = 1;
        this.f5910b.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d0(int i9) throws IOException {
        int i10;
        int i11;
        int i12 = this.f5913h;
        int i13 = this.e;
        this.f5913h = i12 - i13;
        int i14 = this.f5911f;
        char[] cArr = this.d;
        if (i14 != i13) {
            int i15 = i14 - i13;
            this.f5911f = i15;
            System.arraycopy(cArr, i13, cArr, 0, i15);
        } else {
            this.f5911f = 0;
        }
        this.e = 0;
        do {
            int i16 = this.f5911f;
            int i17 = this.f5910b.read(cArr, i16, cArr.length - i16);
            if (i17 == -1) {
                return false;
            }
            i10 = this.f5911f + i17;
            this.f5911f = i10;
            if (this.f5912g == 0 && (i11 = this.f5913h) == 0 && i10 > 0 && cArr[0] == 65279) {
                this.e++;
                this.f5913h = i11 + 1;
                i9++;
            }
        } while (i10 < i9);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String e0(boolean z8) {
        StringBuilder sb = new StringBuilder("$");
        int i9 = 0;
        while (true) {
            int i10 = this.f5919n;
            if (i9 >= i10) {
                return sb.toString();
            }
            int i11 = this.f5918m[i9];
            if (i11 == 1 || i11 == 2) {
                int i12 = this.f5921p[i9];
                if (z8 && i12 > 0 && i9 == i10 - 1) {
                    i12--;
                }
                sb.append('[');
                sb.append(i12);
                sb.append(']');
            } else if (i11 == 3 || i11 == 4 || i11 == 5) {
                sb.append('.');
                String str = this.f5920o[i9];
                if (str != null) {
                    sb.append(str);
                }
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean f0() throws IOException {
        int iS = this.f5914i;
        if (iS == 0) {
            iS = S();
        }
        return (iS == 2 || iS == 4 || iS == 17) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean g0(char c) throws c {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        y();
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String h0() {
        StringBuilder sbV = ai.onnxruntime.a.v(" at line ", this.f5912g + 1, (this.e - this.f5913h) + 1, " column ", " path ");
        sbV.append(e0(false));
        return sbV.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean i0() throws IOException {
        int iS = this.f5914i;
        if (iS == 0) {
            iS = S();
        }
        if (iS == 5) {
            this.f5914i = 0;
            int[] iArr = this.f5921p;
            int i9 = this.f5919n - 1;
            iArr[i9] = iArr[i9] + 1;
            return true;
        }
        if (iS != 6) {
            n0.b.j(kotlin.collections.unsigned.a.j(p0()), "Expected a boolean but was ", h0());
            return false;
        }
        this.f5914i = 0;
        int[] iArr2 = this.f5921p;
        int i10 = this.f5919n - 1;
        iArr2[i10] = iArr2[i10] + 1;
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String j0() throws IOException {
        String strM0;
        int iS = this.f5914i;
        if (iS == 0) {
            iS = S();
        }
        if (iS == 14) {
            strM0 = o0();
        } else if (iS == 12) {
            strM0 = m0('\'');
        } else {
            if (iS != 13) {
                n0.b.j(kotlin.collections.unsigned.a.j(p0()), "Expected a name but was ", h0());
                return null;
            }
            strM0 = m0('\"');
        }
        this.f5914i = 0;
        this.f5920o[this.f5919n - 1] = strM0;
        return strM0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int k0(boolean z8) throws IOException {
        int i9 = this.e;
        int i10 = this.f5911f;
        while (true) {
            if (i9 == i10) {
                this.e = i9;
                if (!d0(1)) {
                    if (z8) {
                        throw new EOFException("End of input".concat(h0()));
                    }
                    return -1;
                }
                i9 = this.e;
                i10 = this.f5911f;
            }
            int i11 = i9 + 1;
            char[] cArr = this.d;
            char c = cArr[i9];
            if (c == '\n') {
                this.f5912g++;
                this.f5913h = i11;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.e = i11;
                    if (i11 == i10) {
                        this.e = i9;
                        boolean zD0 = d0(2);
                        this.e++;
                        if (!zD0) {
                        }
                        return c;
                    }
                    y();
                    int i12 = this.e;
                    char c9 = cArr[i12];
                    if (c9 == '*') {
                        this.e = i12 + 1;
                        while (true) {
                            if (this.e + 2 > this.f5911f && !d0(2)) {
                                s0("Unterminated comment");
                                throw null;
                            }
                            int i13 = this.e;
                            if (cArr[i13] != '\n') {
                                int i14 = 0;
                                while (true) {
                                    int i15 = this.e;
                                    if (i14 >= 2) {
                                        i9 = i15 + 2;
                                        i10 = this.f5911f;
                                        break;
                                    }
                                    if (cArr[i15 + i14] != "*/".charAt(i14)) {
                                        break;
                                    }
                                    i14++;
                                }
                            } else {
                                this.f5912g++;
                                this.f5913h = i13 + 1;
                            }
                            this.e++;
                        }
                    } else {
                        if (c9 != '/') {
                            return c;
                        }
                        this.e = i12 + 1;
                        r0();
                        i9 = this.e;
                        i10 = this.f5911f;
                    }
                } else {
                    if (c != '#') {
                        this.e = i11;
                        return c;
                    }
                    this.e = i11;
                    y();
                    r0();
                    i9 = this.e;
                    i10 = this.f5911f;
                }
            }
            i9 = i11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l0() {
        int iS = this.f5914i;
        if (iS == 0) {
            iS = S();
        }
        if (iS != 7) {
            n0.b.j(kotlin.collections.unsigned.a.j(p0()), "Expected null but was ", h0());
            return;
        }
        this.f5914i = 0;
        int[] iArr = this.f5921p;
        int i9 = this.f5919n - 1;
        iArr[i9] = iArr[i9] + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String m0(char c) throws c {
        int i9;
        char[] cArr;
        int i10;
        StringBuilder sb = null;
        do {
            int i11 = this.e;
            int i12 = this.f5911f;
            while (true) {
                int i13 = i12;
                i9 = i11;
                while (true) {
                    cArr = this.d;
                    if (i11 < i13) {
                        int i14 = i11 + 1;
                        char c9 = cArr[i11];
                        if (c9 == c) {
                            this.e = i14;
                            int i15 = (i14 - i9) - 1;
                            if (sb == null) {
                                return new String(cArr, i9, i15);
                            }
                            sb.append(cArr, i9, i15);
                            return sb.toString();
                        }
                        char c10 = '\n';
                        if (c9 == '\\') {
                            this.e = i14;
                            int i16 = i14 - i9;
                            int i17 = i16 - 1;
                            if (sb == null) {
                                sb = new StringBuilder(Math.max(i16 * 2, 16));
                            }
                            sb.append(cArr, i9, i17);
                            if (this.e == this.f5911f && !d0(1)) {
                                s0("Unterminated escape sequence");
                                throw null;
                            }
                            int i18 = this.e;
                            int i19 = i18 + 1;
                            this.e = i19;
                            char c11 = cArr[i18];
                            if (c11 != '\n') {
                                if (c11 != '\"' && c11 != '\'' && c11 != '/' && c11 != '\\') {
                                    if (c11 == 'b') {
                                        c10 = '\b';
                                    } else if (c11 == 'f') {
                                        c10 = '\f';
                                    } else if (c11 == 'n') {
                                        continue;
                                    } else if (c11 == 'r') {
                                        c10 = '\r';
                                    } else if (c11 == 't') {
                                        c10 = '\t';
                                    } else {
                                        if (c11 != 'u') {
                                            s0("Invalid escape sequence");
                                            throw null;
                                        }
                                        if (i18 + 5 > this.f5911f && !d0(4)) {
                                            s0("Unterminated escape sequence");
                                            throw null;
                                        }
                                        int i20 = this.e;
                                        int i21 = i20 + 4;
                                        c10 = 0;
                                        while (i20 < i21) {
                                            char c12 = cArr[i20];
                                            char c13 = (char) (c10 << 4);
                                            if (c12 >= '0' && c12 <= '9') {
                                                i10 = c12 - '0';
                                            } else if (c12 >= 'a' && c12 <= 'f') {
                                                i10 = c12 - 'W';
                                            } else {
                                                if (c12 < 'A' || c12 > 'F') {
                                                    throw new NumberFormatException("\\u".concat(new String(cArr, this.e, 4)));
                                                }
                                                i10 = c12 - '7';
                                            }
                                            c10 = (char) (i10 + c13);
                                            i20++;
                                        }
                                        this.e += 4;
                                    }
                                }
                                sb.append(c10);
                                i11 = this.e;
                                i12 = this.f5911f;
                            } else {
                                this.f5912g++;
                                this.f5913h = i19;
                            }
                            c10 = c11;
                            sb.append(c10);
                            i11 = this.e;
                            i12 = this.f5911f;
                        } else {
                            if (c9 == '\n') {
                                this.f5912g++;
                                this.f5913h = i14;
                            }
                            i11 = i14;
                        }
                    }
                }
            }
            if (sb == null) {
                sb = new StringBuilder(Math.max((i11 - i9) * 2, 16));
            }
            sb.append(cArr, i9, i11 - i9);
            this.e = i11;
        } while (d0(1));
        s0("Unterminated string");
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String n0() throws IOException {
        String str;
        int iS = this.f5914i;
        if (iS == 0) {
            iS = S();
        }
        if (iS == 10) {
            str = o0();
        } else if (iS == 8) {
            str = m0('\'');
        } else if (iS == 9) {
            str = m0('\"');
        } else if (iS == 11) {
            str = this.f5917l;
            this.f5917l = null;
        } else if (iS == 15) {
            str = Long.toString(this.f5915j);
        } else {
            if (iS != 16) {
                n0.b.j(kotlin.collections.unsigned.a.j(p0()), "Expected a string but was ", h0());
                return null;
            }
            str = new String(this.d, this.e, this.f5916k);
            this.e += this.f5916k;
        }
        this.f5914i = 0;
        int[] iArr = this.f5921p;
        int i9 = this.f5919n - 1;
        iArr[i9] = iArr[i9] + 1;
        return str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0042. Please report as an issue. */
    public final String o0() throws c {
        String string;
        StringBuilder sb = null;
        int i9 = 0;
        while (true) {
            int i10 = 0;
            while (true) {
                int i11 = this.e + i10;
                int i12 = this.f5911f;
                char[] cArr = this.d;
                if (i11 < i12) {
                    char c = cArr[i11];
                    if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                        if (c != '#') {
                            if (c != ',') {
                                if (c != '/' && c != '=') {
                                    if (c != '{' && c != '}' && c != ':') {
                                        if (c != ';') {
                                            switch (c) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i10++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        y();
                    }
                    i9 = i10;
                } else if (i10 >= cArr.length) {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max(i10, 16));
                    }
                    sb.append(cArr, this.e, i10);
                    this.e += i10;
                    if (!d0(1)) {
                    }
                } else if (!d0(i10 + 1)) {
                    i9 = i10;
                }
                int i13 = this.e;
                if (sb == null) {
                    string = new String(cArr, i13, i9);
                } else {
                    sb.append(cArr, i13, i9);
                    string = sb.toString();
                }
                this.e += i9;
                return string;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int p0() {
        int iS = this.f5914i;
        if (iS == 0) {
            iS = S();
        }
        switch (iS) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void q0(int i9) {
        int i10 = this.f5919n;
        int[] iArr = this.f5918m;
        if (i10 == iArr.length) {
            int i11 = i10 * 2;
            this.f5918m = Arrays.copyOf(iArr, i11);
            this.f5921p = Arrays.copyOf(this.f5921p, i11);
            this.f5920o = (String[]) Arrays.copyOf(this.f5920o, i11);
        }
        int[] iArr2 = this.f5918m;
        int i12 = this.f5919n;
        this.f5919n = i12 + 1;
        iArr2[i12] = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r0() {
        char c;
        do {
            if (this.e >= this.f5911f && !d0(1)) {
                return;
            }
            int i9 = this.e;
            int i10 = i9 + 1;
            this.e = i10;
            c = this.d[i9];
            if (c == '\n') {
                this.f5912g++;
                this.f5913h = i10;
                return;
            }
        } while (c != '\r');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s0(String str) throws c {
        throw new c(str.concat(h0()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return a.class.getSimpleName().concat(h0());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y() throws c {
        if (this.c) {
            return;
        }
        s0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }
}
