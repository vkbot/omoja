package p230w5;

import ai.onnxruntime.AbstractC0074a;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import kotlin.collections.unsigned.AbstractC2082a;
import kotlin.text.Typography;
import org.apache.commons.p161io.FilenameUtils;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: renamed from: w5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3526a implements Closeable {

    /* JADX INFO: renamed from: b */
    public final Reader f10457b;

    /* JADX INFO: renamed from: j */
    public long f10465j;

    /* JADX INFO: renamed from: k */
    public int f10466k;

    /* JADX INFO: renamed from: l */
    public String f10467l;

    /* JADX INFO: renamed from: m */
    public int[] f10468m;

    /* JADX INFO: renamed from: o */
    public String[] f10470o;

    /* JADX INFO: renamed from: p */
    public int[] f10471p;

    /* JADX INFO: renamed from: c */
    public boolean f10458c = false;

    /* JADX INFO: renamed from: d */
    public final char[] f10459d = new char[1024];

    /* JADX INFO: renamed from: e */
    public int f10460e = 0;

    /* JADX INFO: renamed from: f */
    public int f10461f = 0;

    /* JADX INFO: renamed from: g */
    public int f10462g = 0;

    /* JADX INFO: renamed from: h */
    public int f10463h = 0;

    /* JADX INFO: renamed from: i */
    public int f10464i = 0;

    /* JADX INFO: renamed from: n */
    public int f10469n = 1;

    public C3526a(Reader reader) {
        int[] iArr = new int[32];
        this.f10468m = iArr;
        iArr[0] = 6;
        this.f10470o = new String[32];
        this.f10471p = new int[32];
        this.f10457b = reader;
    }

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
    /* JADX INFO: renamed from: S */
    public final int m5600S() throws IOException {
        int iM5612k0;
        int i10;
        int iM5612k1;
        char c;
        String str;
        String str2;
        int i11;
        int length;
        int i12;
        int i13;
        int i14;
        char c10;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z9;
        char c11;
        int i19;
        int i20;
        int[] iArr = this.f10468m;
        int i21 = this.f10469n - 1;
        int i22 = iArr[i21];
        char[] cArr = this.f10459d;
        if (i22 == 1) {
            iArr[i21] = 2;
        } else if (i22 == 2) {
            int iM5612k2 = m5612k0(true);
            if (iM5612k2 != 44) {
                if (iM5612k2 != 59) {
                    if (iM5612k2 == 93) {
                        this.f10464i = 4;
                        return 4;
                    }
                    m5620s0("Unterminated array");
                    throw null;
                }
                m5621y();
            }
        } else {
            if (i22 == 3 || i22 == 5) {
                iArr[i21] = 4;
                if (i22 == 5 && (iM5612k0 = m5612k0(true)) != 44) {
                    if (iM5612k0 != 59) {
                        if (iM5612k0 == 125) {
                            this.f10464i = 2;
                            return 2;
                        }
                        m5620s0("Unterminated object");
                        throw null;
                    }
                    m5621y();
                }
                int iM5612k3 = m5612k0(true);
                if (iM5612k3 == 34) {
                    this.f10464i = 13;
                    return 13;
                }
                if (iM5612k3 == 39) {
                    m5621y();
                    this.f10464i = 12;
                    return 12;
                }
                if (iM5612k3 == 125) {
                    if (i22 != 5) {
                        this.f10464i = 2;
                        return 2;
                    }
                    m5620s0("Expected name");
                    throw null;
                }
                m5621y();
                this.f10460e--;
                if (m5608g0((char) iM5612k3)) {
                    this.f10464i = 14;
                    return 14;
                }
                m5620s0("Expected name");
                throw null;
            }
            if (i22 != 4) {
                if (i22 == 6) {
                    if (this.f10458c) {
                        m5612k0(true);
                        int i23 = this.f10460e;
                        this.f10460e = i23 - 1;
                        if (i23 + 4 <= this.f10461f || m5605d0(5)) {
                            int i24 = this.f10460e;
                            if (cArr[i24] == ')' && cArr[i24 + 1] == ']' && cArr[i24 + 2] == '}' && cArr[i24 + 3] == '\'' && cArr[i24 + 4] == '\n') {
                                this.f10460e = i24 + 5;
                            }
                        }
                    }
                    this.f10468m[this.f10469n - 1] = 7;
                } else if (i22 == 7) {
                    i10 = 0;
                    if (m5612k0(false) == -1) {
                        this.f10464i = 17;
                        return 17;
                    }
                    m5621y();
                    this.f10460e--;
                } else {
                    i10 = 0;
                    if (i22 == 8) {
                        C1929i.m3030l("JsonReader is closed");
                        return 0;
                    }
                }
                iM5612k1 = m5612k0(true);
                if (iM5612k1 != 34) {
                    this.f10464i = 9;
                    return 9;
                }
                if (iM5612k1 != 39) {
                    m5621y();
                    this.f10464i = 8;
                    return 8;
                }
                if (iM5612k1 != 44 && iM5612k1 != 59) {
                    if (iM5612k1 != 91) {
                        this.f10464i = 3;
                        return 3;
                    }
                    if (iM5612k1 != 93) {
                        if (iM5612k1 != 123) {
                            this.f10464i = 1;
                            return 1;
                        }
                        int i25 = this.f10460e - 1;
                        this.f10460e = i25;
                        c = cArr[i25];
                        if (c != 't' || c == 'T') {
                            str = "true";
                            str2 = "TRUE";
                            i11 = 5;
                        } else {
                            if (c != 'f' && c != 'F') {
                                if (c != 'n' && c != 'N') {
                                    i11 = i10;
                                    break;
                                }
                                str = "null";
                                str2 = "NULL";
                                i11 = 7;
                                if (i11 != 0) {
                                    return i11;
                                }
                                int i26 = this.f10460e;
                                i15 = this.f10461f;
                                i16 = i10;
                                i17 = i16;
                                int i27 = i17;
                                i18 = i26;
                                z9 = true;
                                long j10 = 0;
                                while (true) {
                                    if (i18 + i17 != i15) {
                                        c11 = cArr[i18 + i17];
                                        if (c11 != '+') {
                                            if (c11 != 'E' || c11 == 'e') {
                                                if (i16 != 2 || i16 == 4) {
                                                    i16 = 5;
                                                    i17++;
                                                }
                                            } else if (c11 == '-') {
                                                if (i16 == 0) {
                                                    i16 = 1;
                                                    i27 = 1;
                                                } else {
                                                    if (i16 != 5) {
                                                    }
                                                    i16 = 6;
                                                }
                                                i17++;
                                            } else if (c11 != '.') {
                                                if (c11 >= '0' && c11 <= '9') {
                                                    if (i16 == 1 || i16 == 0) {
                                                        j10 = -(c11 - '0');
                                                        i16 = 2;
                                                    } else if (i16 == 2) {
                                                        if (j10 != 0) {
                                                            long j11 = (10 * j10) - ((long) (c11 - '0'));
                                                            z9 &= j10 > -922337203685477580L || (j10 == -922337203685477580L && j11 < j10);
                                                            j10 = j11;
                                                        }
                                                    } else if (i16 == 3) {
                                                        i16 = 4;
                                                    } else if (i16 == 5 || i16 == 6) {
                                                        i16 = 7;
                                                    }
                                                    i17++;
                                                } else if (!m5608g0(c11)) {
                                                    i20 = 2;
                                                    if (i16 != 2) {
                                                        if (i16 != i20 || i16 == 4 || i16 == 7) {
                                                            this.f10466k = i17;
                                                            i19 = 16;
                                                            this.f10464i = 16;
                                                        }
                                                    } else if (z9 || ((j10 == Long.MIN_VALUE && i27 == 0) || (j10 == 0 && i27 != 0))) {
                                                        i20 = 2;
                                                        if (i16 != i20) {
                                                        }
                                                        this.f10466k = i17;
                                                        i19 = 16;
                                                        this.f10464i = 16;
                                                    } else {
                                                        if (i27 == 0) {
                                                            j10 = -j10;
                                                        }
                                                        this.f10465j = j10;
                                                        this.f10460e += i17;
                                                        i19 = 15;
                                                        this.f10464i = 15;
                                                    }
                                                }
                                            } else if (i16 == 2) {
                                                i16 = 3;
                                                i17++;
                                            }
                                            if (i19 != 0) {
                                                return i19;
                                            }
                                            if (m5608g0(cArr[this.f10460e])) {
                                                m5620s0("Expected value");
                                                throw null;
                                            }
                                            m5621y();
                                            this.f10464i = 10;
                                            return 10;
                                        }
                                        if (i16 != 5) {
                                        }
                                        i16 = 6;
                                        i17++;
                                    } else if (i17 != cArr.length) {
                                        if (m5605d0(i17 + 1)) {
                                            i18 = this.f10460e;
                                            i15 = this.f10461f;
                                            c11 = cArr[i18 + i17];
                                            if (c11 != '+') {
                                                if (c11 != 'E') {
                                                    if (i16 != 2) {
                                                    }
                                                    i16 = 5;
                                                    i17++;
                                                } else {
                                                    if (i16 != 2) {
                                                    }
                                                    i16 = 5;
                                                    i17++;
                                                }
                                                if (i19 != 0) {
                                                    return i19;
                                                }
                                                if (m5608g0(cArr[this.f10460e])) {
                                                    m5620s0("Expected value");
                                                    throw null;
                                                }
                                                m5621y();
                                                this.f10464i = 10;
                                                return 10;
                                            }
                                            if (i16 != 5) {
                                            }
                                            i16 = 6;
                                            i17++;
                                        }
                                        i20 = 2;
                                        if (i16 != 2) {
                                            if (i16 != i20) {
                                            }
                                            this.f10466k = i17;
                                            i19 = 16;
                                            this.f10464i = 16;
                                        } else {
                                            if (z9) {
                                            }
                                            i20 = 2;
                                            if (i16 != i20) {
                                            }
                                            this.f10466k = i17;
                                            i19 = 16;
                                            this.f10464i = 16;
                                        }
                                        if (i19 != 0) {
                                            return i19;
                                        }
                                        if (m5608g0(cArr[this.f10460e])) {
                                            m5620s0("Expected value");
                                            throw null;
                                        }
                                        m5621y();
                                        this.f10464i = 10;
                                        return 10;
                                    }
                                    i19 = 0;
                                    if (i19 != 0) {
                                        return i19;
                                    }
                                    if (m5608g0(cArr[this.f10460e])) {
                                        m5620s0("Expected value");
                                        throw null;
                                    }
                                    m5621y();
                                    this.f10464i = 10;
                                    return 10;
                                }
                            }
                            str = "false";
                            str2 = "FALSE";
                            i11 = 6;
                        }
                        length = str.length();
                        i12 = 1;
                        while (true) {
                            i13 = this.f10460e;
                            i14 = this.f10461f;
                            if (i12 >= length) {
                                if ((i13 + length < i14 && !m5605d0(length + 1)) || !m5608g0(cArr[this.f10460e + length])) {
                                    this.f10460e += length;
                                    this.f10464i = i11;
                                    break;
                                }
                                break;
                            }
                            if ((i13 + i12 >= i14 || m5605d0(i12 + 1)) && ((c10 = cArr[this.f10460e + i12]) == str.charAt(i12) || c10 == str2.charAt(i12))) {
                            }
                            i11 = i10;
                            break;
                        }
                        if (i11 != 0) {
                            return i11;
                        }
                        int i28 = this.f10460e;
                        i15 = this.f10461f;
                        i16 = i10;
                        i17 = i16;
                        int i29 = i17;
                        i18 = i28;
                        z9 = true;
                        long j12 = 0;
                        while (true) {
                            if (i18 + i17 != i15) {
                                c11 = cArr[i18 + i17];
                                if (c11 != '+') {
                                    if (c11 != 'E') {
                                        if (i16 != 2) {
                                        }
                                        i16 = 5;
                                        i17++;
                                    } else {
                                        if (i16 != 2) {
                                        }
                                        i16 = 5;
                                        i17++;
                                    }
                                    if (i19 != 0) {
                                        return i19;
                                    }
                                    if (m5608g0(cArr[this.f10460e])) {
                                        m5620s0("Expected value");
                                        throw null;
                                    }
                                    m5621y();
                                    this.f10464i = 10;
                                    return 10;
                                }
                                if (i16 != 5) {
                                }
                                i16 = 6;
                                i17++;
                            } else if (i17 != cArr.length) {
                                if (m5605d0(i17 + 1)) {
                                    i18 = this.f10460e;
                                    i15 = this.f10461f;
                                    c11 = cArr[i18 + i17];
                                    if (c11 != '+') {
                                        if (c11 != 'E') {
                                            if (i16 != 2) {
                                            }
                                            i16 = 5;
                                            i17++;
                                        } else {
                                            if (i16 != 2) {
                                            }
                                            i16 = 5;
                                            i17++;
                                        }
                                        if (i19 != 0) {
                                            return i19;
                                        }
                                        if (m5608g0(cArr[this.f10460e])) {
                                            m5620s0("Expected value");
                                            throw null;
                                        }
                                        m5621y();
                                        this.f10464i = 10;
                                        return 10;
                                    }
                                    if (i16 != 5) {
                                    }
                                    i16 = 6;
                                    i17++;
                                }
                                i20 = 2;
                                if (i16 != 2) {
                                    if (i16 != i20) {
                                    }
                                    this.f10466k = i17;
                                    i19 = 16;
                                    this.f10464i = 16;
                                } else {
                                    if (z9) {
                                    }
                                    i20 = 2;
                                    if (i16 != i20) {
                                    }
                                    this.f10466k = i17;
                                    i19 = 16;
                                    this.f10464i = 16;
                                }
                                if (i19 != 0) {
                                    return i19;
                                }
                                if (m5608g0(cArr[this.f10460e])) {
                                    m5620s0("Expected value");
                                    throw null;
                                }
                                m5621y();
                                this.f10464i = 10;
                                return 10;
                            }
                            i19 = 0;
                            if (i19 != 0) {
                                return i19;
                            }
                            if (m5608g0(cArr[this.f10460e])) {
                                m5620s0("Expected value");
                                throw null;
                            }
                            m5621y();
                            this.f10464i = 10;
                            return 10;
                        }
                    }
                    if (i22 == 1) {
                        this.f10464i = 4;
                        return 4;
                    }
                }
                if (i22 == 1 && i22 != 2) {
                    m5620s0("Unexpected value");
                    throw null;
                }
                m5621y();
                this.f10460e--;
                this.f10464i = 7;
                return 7;
            }
            iArr[i21] = 5;
            int iM5612k4 = m5612k0(true);
            if (iM5612k4 != 58) {
                if (iM5612k4 != 61) {
                    m5620s0("Expected ':'");
                    throw null;
                }
                m5621y();
                if (this.f10460e < this.f10461f || m5605d0(1)) {
                    int i30 = this.f10460e;
                    if (cArr[i30] == '>') {
                        this.f10460e = i30 + 1;
                    }
                }
            }
        }
        i10 = 0;
        iM5612k1 = m5612k0(true);
        if (iM5612k1 != 34) {
            this.f10464i = 9;
            return 9;
        }
        if (iM5612k1 != 39) {
            m5621y();
            this.f10464i = 8;
            return 8;
        }
        if (iM5612k1 != 44) {
            if (iM5612k1 != 91) {
                this.f10464i = 3;
                return 3;
            }
            if (iM5612k1 != 93) {
                if (iM5612k1 != 123) {
                    this.f10464i = 1;
                    return 1;
                }
                int i210 = this.f10460e - 1;
                this.f10460e = i210;
                c = cArr[i210];
                if (c != 't') {
                    str = "true";
                    str2 = "TRUE";
                    i11 = 5;
                    length = str.length();
                    i12 = 1;
                    while (true) {
                        i13 = this.f10460e;
                        i14 = this.f10461f;
                        if (i12 >= length) {
                            if (i13 + length < i14) {
                            }
                            this.f10460e += length;
                            this.f10464i = i11;
                            break;
                        }
                        i12 = i13 + i12 >= i14 ? i12 + 1 : i12 + 1;
                    }
                    if (i11 != 0) {
                        return i11;
                    }
                    int i211 = this.f10460e;
                    i15 = this.f10461f;
                    i16 = i10;
                    i17 = i16;
                    int i212 = i17;
                    i18 = i211;
                    z9 = true;
                    long j13 = 0;
                    while (true) {
                        if (i18 + i17 != i15) {
                            c11 = cArr[i18 + i17];
                            if (c11 != '+') {
                                if (c11 != 'E') {
                                    if (i16 != 2) {
                                    }
                                    i16 = 5;
                                    i17++;
                                } else {
                                    if (i16 != 2) {
                                    }
                                    i16 = 5;
                                    i17++;
                                }
                                if (i19 != 0) {
                                    return i19;
                                }
                                if (m5608g0(cArr[this.f10460e])) {
                                    m5620s0("Expected value");
                                    throw null;
                                }
                                m5621y();
                                this.f10464i = 10;
                                return 10;
                            }
                            if (i16 != 5) {
                            }
                            i16 = 6;
                            i17++;
                        } else if (i17 != cArr.length) {
                            if (m5605d0(i17 + 1)) {
                                i18 = this.f10460e;
                                i15 = this.f10461f;
                                c11 = cArr[i18 + i17];
                                if (c11 != '+') {
                                    if (c11 != 'E') {
                                        if (i16 != 2) {
                                        }
                                        i16 = 5;
                                        i17++;
                                    } else {
                                        if (i16 != 2) {
                                        }
                                        i16 = 5;
                                        i17++;
                                    }
                                    if (i19 != 0) {
                                        return i19;
                                    }
                                    if (m5608g0(cArr[this.f10460e])) {
                                        m5620s0("Expected value");
                                        throw null;
                                    }
                                    m5621y();
                                    this.f10464i = 10;
                                    return 10;
                                }
                                if (i16 != 5) {
                                }
                                i16 = 6;
                                i17++;
                            }
                            i20 = 2;
                            if (i16 != 2) {
                                if (i16 != i20) {
                                }
                                this.f10466k = i17;
                                i19 = 16;
                                this.f10464i = 16;
                            } else {
                                if (z9) {
                                }
                                i20 = 2;
                                if (i16 != i20) {
                                }
                                this.f10466k = i17;
                                i19 = 16;
                                this.f10464i = 16;
                            }
                            if (i19 != 0) {
                                return i19;
                            }
                            if (m5608g0(cArr[this.f10460e])) {
                                m5620s0("Expected value");
                                throw null;
                            }
                            m5621y();
                            this.f10464i = 10;
                            return 10;
                        }
                        i19 = 0;
                        if (i19 != 0) {
                            return i19;
                        }
                        if (m5608g0(cArr[this.f10460e])) {
                            m5620s0("Expected value");
                            throw null;
                        }
                        m5621y();
                        this.f10464i = 10;
                        return 10;
                    }
                }
                str = "true";
                str2 = "TRUE";
                i11 = 5;
                length = str.length();
                i12 = 1;
                while (true) {
                    i13 = this.f10460e;
                    i14 = this.f10461f;
                    if (i12 >= length) {
                        if (i13 + length < i14) {
                        }
                        this.f10460e += length;
                        this.f10464i = i11;
                        break;
                    }
                    if (i13 + i12 >= i14) {
                    }
                }
                if (i11 != 0) {
                    return i11;
                }
                int i213 = this.f10460e;
                i15 = this.f10461f;
                i16 = i10;
                i17 = i16;
                int i214 = i17;
                i18 = i213;
                z9 = true;
                long j14 = 0;
                while (true) {
                    if (i18 + i17 != i15) {
                        c11 = cArr[i18 + i17];
                        if (c11 != '+') {
                            if (c11 != 'E') {
                                if (i16 != 2) {
                                }
                                i16 = 5;
                                i17++;
                            } else {
                                if (i16 != 2) {
                                }
                                i16 = 5;
                                i17++;
                            }
                            if (i19 != 0) {
                                return i19;
                            }
                            if (m5608g0(cArr[this.f10460e])) {
                                m5620s0("Expected value");
                                throw null;
                            }
                            m5621y();
                            this.f10464i = 10;
                            return 10;
                        }
                        if (i16 != 5) {
                        }
                        i16 = 6;
                        i17++;
                    } else if (i17 != cArr.length) {
                        if (m5605d0(i17 + 1)) {
                            i18 = this.f10460e;
                            i15 = this.f10461f;
                            c11 = cArr[i18 + i17];
                            if (c11 != '+') {
                                if (c11 != 'E') {
                                    if (i16 != 2) {
                                    }
                                    i16 = 5;
                                    i17++;
                                } else {
                                    if (i16 != 2) {
                                    }
                                    i16 = 5;
                                    i17++;
                                }
                                if (i19 != 0) {
                                    return i19;
                                }
                                if (m5608g0(cArr[this.f10460e])) {
                                    m5620s0("Expected value");
                                    throw null;
                                }
                                m5621y();
                                this.f10464i = 10;
                                return 10;
                            }
                            if (i16 != 5) {
                            }
                            i16 = 6;
                            i17++;
                        }
                        i20 = 2;
                        if (i16 != 2) {
                            if (i16 != i20) {
                            }
                            this.f10466k = i17;
                            i19 = 16;
                            this.f10464i = 16;
                        } else {
                            if (z9) {
                            }
                            i20 = 2;
                            if (i16 != i20) {
                            }
                            this.f10466k = i17;
                            i19 = 16;
                            this.f10464i = 16;
                        }
                        if (i19 != 0) {
                            return i19;
                        }
                        if (m5608g0(cArr[this.f10460e])) {
                            m5620s0("Expected value");
                            throw null;
                        }
                        m5621y();
                        this.f10464i = 10;
                        return 10;
                    }
                    i19 = 0;
                    if (i19 != 0) {
                        return i19;
                    }
                    if (m5608g0(cArr[this.f10460e])) {
                        m5620s0("Expected value");
                        throw null;
                    }
                    m5621y();
                    this.f10464i = 10;
                    return 10;
                }
                i11 = i10;
                if (i11 != 0) {
                    return i11;
                }
                int i215 = this.f10460e;
                i15 = this.f10461f;
                i16 = i10;
                i17 = i16;
                int i216 = i17;
                i18 = i215;
                z9 = true;
                long j15 = 0;
                while (true) {
                    if (i18 + i17 != i15) {
                        c11 = cArr[i18 + i17];
                        if (c11 != '+') {
                            if (c11 != 'E') {
                                if (i16 != 2) {
                                }
                                i16 = 5;
                                i17++;
                            } else {
                                if (i16 != 2) {
                                }
                                i16 = 5;
                                i17++;
                            }
                            if (i19 != 0) {
                                return i19;
                            }
                            if (m5608g0(cArr[this.f10460e])) {
                                m5620s0("Expected value");
                                throw null;
                            }
                            m5621y();
                            this.f10464i = 10;
                            return 10;
                        }
                        if (i16 != 5) {
                        }
                        i16 = 6;
                        i17++;
                    } else if (i17 != cArr.length) {
                        if (m5605d0(i17 + 1)) {
                            i18 = this.f10460e;
                            i15 = this.f10461f;
                            c11 = cArr[i18 + i17];
                            if (c11 != '+') {
                                if (c11 != 'E') {
                                    if (i16 != 2) {
                                    }
                                    i16 = 5;
                                    i17++;
                                } else {
                                    if (i16 != 2) {
                                    }
                                    i16 = 5;
                                    i17++;
                                }
                                if (i19 != 0) {
                                    return i19;
                                }
                                if (m5608g0(cArr[this.f10460e])) {
                                    m5620s0("Expected value");
                                    throw null;
                                }
                                m5621y();
                                this.f10464i = 10;
                                return 10;
                            }
                            if (i16 != 5) {
                            }
                            i16 = 6;
                            i17++;
                        }
                        i20 = 2;
                        if (i16 != 2) {
                            if (i16 != i20) {
                            }
                            this.f10466k = i17;
                            i19 = 16;
                            this.f10464i = 16;
                        } else {
                            if (z9) {
                            }
                            i20 = 2;
                            if (i16 != i20) {
                            }
                            this.f10466k = i17;
                            i19 = 16;
                            this.f10464i = 16;
                        }
                        if (i19 != 0) {
                            return i19;
                        }
                        if (m5608g0(cArr[this.f10460e])) {
                            m5620s0("Expected value");
                            throw null;
                        }
                        m5621y();
                        this.f10464i = 10;
                        return 10;
                    }
                    i19 = 0;
                    if (i19 != 0) {
                        return i19;
                    }
                    if (m5608g0(cArr[this.f10460e])) {
                        m5620s0("Expected value");
                        throw null;
                    }
                    m5621y();
                    this.f10464i = 10;
                    return 10;
                }
            }
            if (i22 == 1) {
                this.f10464i = 4;
                return 4;
            }
        }
        if (i22 == 1) {
        }
        m5621y();
        this.f10460e--;
        this.f10464i = 7;
        return 7;
    }

    /* JADX INFO: renamed from: V */
    public final void m5601V() {
        int iM5600S = this.f10464i;
        if (iM5600S == 0) {
            iM5600S = m5600S();
        }
        if (iM5600S != 4) {
            C2467b.m3827j(AbstractC2082a.m3244j(m5617p0()), "Expected END_ARRAY but was ", m5609h0());
            return;
        }
        int i10 = this.f10469n;
        this.f10469n = i10 - 1;
        int[] iArr = this.f10471p;
        int i11 = i10 - 2;
        iArr[i11] = iArr[i11] + 1;
        this.f10464i = 0;
    }

    /* JADX INFO: renamed from: b */
    public final void m5602b() {
        int iM5600S = this.f10464i;
        if (iM5600S == 0) {
            iM5600S = m5600S();
        }
        if (iM5600S != 3) {
            C2467b.m3827j(AbstractC2082a.m3244j(m5617p0()), "Expected BEGIN_ARRAY but was ", m5609h0());
            return;
        }
        m5618q0(1);
        this.f10471p[this.f10469n - 1] = 0;
        this.f10464i = 0;
    }

    /* JADX INFO: renamed from: c */
    public final void m5603c() {
        int iM5600S = this.f10464i;
        if (iM5600S == 0) {
            iM5600S = m5600S();
        }
        if (iM5600S != 1) {
            C2467b.m3827j(AbstractC2082a.m3244j(m5617p0()), "Expected BEGIN_OBJECT but was ", m5609h0());
        } else {
            m5618q0(3);
            this.f10464i = 0;
        }
    }

    /* JADX INFO: renamed from: c0 */
    public final void m5604c0() {
        int iM5600S = this.f10464i;
        if (iM5600S == 0) {
            iM5600S = m5600S();
        }
        if (iM5600S != 2) {
            C2467b.m3827j(AbstractC2082a.m3244j(m5617p0()), "Expected END_OBJECT but was ", m5609h0());
            return;
        }
        int i10 = this.f10469n;
        int i11 = i10 - 1;
        this.f10469n = i11;
        this.f10470o[i11] = null;
        int[] iArr = this.f10471p;
        int i12 = i10 - 2;
        iArr[i12] = iArr[i12] + 1;
        this.f10464i = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f10464i = 0;
        this.f10468m[0] = 8;
        this.f10469n = 1;
        this.f10457b.close();
    }

    /* JADX INFO: renamed from: d0 */
    public final boolean m5605d0(int i10) throws IOException {
        int i11;
        int i12;
        int i13 = this.f10463h;
        int i14 = this.f10460e;
        this.f10463h = i13 - i14;
        int i15 = this.f10461f;
        char[] cArr = this.f10459d;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.f10461f = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.f10461f = 0;
        }
        this.f10460e = 0;
        do {
            int i17 = this.f10461f;
            int i18 = this.f10457b.read(cArr, i17, cArr.length - i17);
            if (i18 == -1) {
                return false;
            }
            i11 = this.f10461f + i18;
            this.f10461f = i11;
            if (this.f10462g == 0 && (i12 = this.f10463h) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.f10460e++;
                this.f10463h = i12 + 1;
                i10++;
            }
        } while (i11 < i10);
        return true;
    }

    /* JADX INFO: renamed from: e0 */
    public final String m5606e0(boolean z9) {
        StringBuilder sb = new StringBuilder("$");
        int i10 = 0;
        while (true) {
            int i11 = this.f10469n;
            if (i10 >= i11) {
                return sb.toString();
            }
            int i12 = this.f10468m[i10];
            if (i12 == 1 || i12 == 2) {
                int i13 = this.f10471p[i10];
                if (z9 && i13 > 0 && i10 == i11 - 1) {
                    i13--;
                }
                sb.append('[');
                sb.append(i13);
                sb.append(']');
            } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                String str = this.f10470o[i10];
                if (str != null) {
                    sb.append(str);
                }
            }
            i10++;
        }
    }

    /* JADX INFO: renamed from: f0 */
    public final boolean m5607f0() throws IOException {
        int iM5600S = this.f10464i;
        if (iM5600S == 0) {
            iM5600S = m5600S();
        }
        return (iM5600S == 2 || iM5600S == 4 || iM5600S == 17) ? false : true;
    }

    /* JADX INFO: renamed from: g0 */
    public final boolean m5608g0(char c) throws C3528c {
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
        m5621y();
        return false;
    }

    /* JADX INFO: renamed from: h0 */
    public final String m5609h0() {
        StringBuilder sbM171v = AbstractC0074a.m171v(" at line ", this.f10462g + 1, (this.f10460e - this.f10463h) + 1, " column ", " path ");
        sbM171v.append(m5606e0(false));
        return sbM171v.toString();
    }

    /* JADX INFO: renamed from: i0 */
    public final boolean m5610i0() throws IOException {
        int iM5600S = this.f10464i;
        if (iM5600S == 0) {
            iM5600S = m5600S();
        }
        if (iM5600S == 5) {
            this.f10464i = 0;
            int[] iArr = this.f10471p;
            int i10 = this.f10469n - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (iM5600S != 6) {
            C2467b.m3827j(AbstractC2082a.m3244j(m5617p0()), "Expected a boolean but was ", m5609h0());
            return false;
        }
        this.f10464i = 0;
        int[] iArr2 = this.f10471p;
        int i11 = this.f10469n - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return false;
    }

    /* JADX INFO: renamed from: j0 */
    public final String m5611j0() throws IOException {
        String strM5614m0;
        int iM5600S = this.f10464i;
        if (iM5600S == 0) {
            iM5600S = m5600S();
        }
        if (iM5600S == 14) {
            strM5614m0 = m5616o0();
        } else if (iM5600S == 12) {
            strM5614m0 = m5614m0('\'');
        } else {
            if (iM5600S != 13) {
                C2467b.m3827j(AbstractC2082a.m3244j(m5617p0()), "Expected a name but was ", m5609h0());
                return null;
            }
            strM5614m0 = m5614m0(Typography.quote);
        }
        this.f10464i = 0;
        this.f10470o[this.f10469n - 1] = strM5614m0;
        return strM5614m0;
    }

    /* JADX INFO: renamed from: k0 */
    public final int m5612k0(boolean z9) throws IOException {
        int i10 = this.f10460e;
        int i11 = this.f10461f;
        while (true) {
            if (i10 == i11) {
                this.f10460e = i10;
                if (!m5605d0(1)) {
                    if (z9) {
                        throw new EOFException("End of input".concat(m5609h0()));
                    }
                    return -1;
                }
                i10 = this.f10460e;
                i11 = this.f10461f;
            }
            int i12 = i10 + 1;
            char[] cArr = this.f10459d;
            char c = cArr[i10];
            if (c == '\n') {
                this.f10462g++;
                this.f10463h = i12;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.f10460e = i12;
                    if (i12 == i11) {
                        this.f10460e = i10;
                        boolean zM5605d0 = m5605d0(2);
                        this.f10460e++;
                        if (!zM5605d0) {
                        }
                        return c;
                    }
                    m5621y();
                    int i13 = this.f10460e;
                    char c10 = cArr[i13];
                    if (c10 == '*') {
                        this.f10460e = i13 + 1;
                        while (true) {
                            if (this.f10460e + 2 > this.f10461f && !m5605d0(2)) {
                                m5620s0("Unterminated comment");
                                throw null;
                            }
                            int i14 = this.f10460e;
                            if (cArr[i14] != '\n') {
                                int i15 = 0;
                                while (true) {
                                    int i16 = this.f10460e;
                                    if (i15 >= 2) {
                                        i10 = i16 + 2;
                                        i11 = this.f10461f;
                                        break;
                                    }
                                    if (cArr[i16 + i15] != "*/".charAt(i15)) {
                                        break;
                                    }
                                    i15++;
                                }
                            } else {
                                this.f10462g++;
                                this.f10463h = i14 + 1;
                            }
                            this.f10460e++;
                        }
                    } else {
                        if (c10 != '/') {
                            return c;
                        }
                        this.f10460e = i13 + 1;
                        m5619r0();
                        i10 = this.f10460e;
                        i11 = this.f10461f;
                    }
                } else {
                    if (c != '#') {
                        this.f10460e = i12;
                        return c;
                    }
                    this.f10460e = i12;
                    m5621y();
                    m5619r0();
                    i10 = this.f10460e;
                    i11 = this.f10461f;
                }
            }
            i10 = i12;
        }
    }

    /* JADX INFO: renamed from: l0 */
    public final void m5613l0() {
        int iM5600S = this.f10464i;
        if (iM5600S == 0) {
            iM5600S = m5600S();
        }
        if (iM5600S != 7) {
            C2467b.m3827j(AbstractC2082a.m3244j(m5617p0()), "Expected null but was ", m5609h0());
            return;
        }
        this.f10464i = 0;
        int[] iArr = this.f10471p;
        int i10 = this.f10469n - 1;
        iArr[i10] = iArr[i10] + 1;
    }

    /* JADX INFO: renamed from: m0 */
    public final String m5614m0(char c) throws C3528c {
        int i10;
        char[] cArr;
        int i11;
        StringBuilder sb = null;
        do {
            int i12 = this.f10460e;
            int i13 = this.f10461f;
            while (true) {
                int i14 = i13;
                i10 = i12;
                while (true) {
                    cArr = this.f10459d;
                    if (i12 < i14) {
                        int i15 = i12 + 1;
                        char c10 = cArr[i12];
                        if (c10 == c) {
                            this.f10460e = i15;
                            int i16 = (i15 - i10) - 1;
                            if (sb == null) {
                                return new String(cArr, i10, i16);
                            }
                            sb.append(cArr, i10, i16);
                            return sb.toString();
                        }
                        char c11 = '\n';
                        if (c10 == '\\') {
                            this.f10460e = i15;
                            int i17 = i15 - i10;
                            int i18 = i17 - 1;
                            if (sb == null) {
                                sb = new StringBuilder(Math.max(i17 * 2, 16));
                            }
                            sb.append(cArr, i10, i18);
                            if (this.f10460e == this.f10461f && !m5605d0(1)) {
                                m5620s0("Unterminated escape sequence");
                                throw null;
                            }
                            int i19 = this.f10460e;
                            int i20 = i19 + 1;
                            this.f10460e = i20;
                            char c12 = cArr[i19];
                            if (c12 != '\n') {
                                if (c12 != '\"' && c12 != '\'' && c12 != '/' && c12 != '\\') {
                                    if (c12 == 'b') {
                                        c11 = '\b';
                                    } else if (c12 == 'f') {
                                        c11 = '\f';
                                    } else if (c12 == 'n') {
                                        continue;
                                    } else if (c12 == 'r') {
                                        c11 = '\r';
                                    } else if (c12 == 't') {
                                        c11 = '\t';
                                    } else {
                                        if (c12 != 'u') {
                                            m5620s0("Invalid escape sequence");
                                            throw null;
                                        }
                                        if (i19 + 5 > this.f10461f && !m5605d0(4)) {
                                            m5620s0("Unterminated escape sequence");
                                            throw null;
                                        }
                                        int i21 = this.f10460e;
                                        int i22 = i21 + 4;
                                        c11 = 0;
                                        while (i21 < i22) {
                                            char c13 = cArr[i21];
                                            char c14 = (char) (c11 << 4);
                                            if (c13 >= '0' && c13 <= '9') {
                                                i11 = c13 - '0';
                                            } else if (c13 >= 'a' && c13 <= 'f') {
                                                i11 = c13 - 'W';
                                            } else {
                                                if (c13 < 'A' || c13 > 'F') {
                                                    throw new NumberFormatException("\\u".concat(new String(cArr, this.f10460e, 4)));
                                                }
                                                i11 = c13 - '7';
                                            }
                                            c11 = (char) (i11 + c14);
                                            i21++;
                                        }
                                        this.f10460e += 4;
                                    }
                                }
                                sb.append(c11);
                                i12 = this.f10460e;
                                i13 = this.f10461f;
                            } else {
                                this.f10462g++;
                                this.f10463h = i20;
                            }
                            c11 = c12;
                            sb.append(c11);
                            i12 = this.f10460e;
                            i13 = this.f10461f;
                        } else {
                            if (c10 == '\n') {
                                this.f10462g++;
                                this.f10463h = i15;
                            }
                            i12 = i15;
                        }
                    }
                }
            }
            if (sb == null) {
                sb = new StringBuilder(Math.max((i12 - i10) * 2, 16));
            }
            sb.append(cArr, i10, i12 - i10);
            this.f10460e = i12;
        } while (m5605d0(1));
        m5620s0("Unterminated string");
        throw null;
    }

    /* JADX INFO: renamed from: n0 */
    public final String m5615n0() throws IOException {
        String str;
        int iM5600S = this.f10464i;
        if (iM5600S == 0) {
            iM5600S = m5600S();
        }
        if (iM5600S == 10) {
            str = m5616o0();
        } else if (iM5600S == 8) {
            str = m5614m0('\'');
        } else if (iM5600S == 9) {
            str = m5614m0(Typography.quote);
        } else if (iM5600S == 11) {
            str = this.f10467l;
            this.f10467l = null;
        } else if (iM5600S == 15) {
            str = Long.toString(this.f10465j);
        } else {
            if (iM5600S != 16) {
                C2467b.m3827j(AbstractC2082a.m3244j(m5617p0()), "Expected a string but was ", m5609h0());
                return null;
            }
            str = new String(this.f10459d, this.f10460e, this.f10466k);
            this.f10460e += this.f10466k;
        }
        this.f10464i = 0;
        int[] iArr = this.f10471p;
        int i10 = this.f10469n - 1;
        iArr[i10] = iArr[i10] + 1;
        return str;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0042. Please report as an issue. */
    /* JADX INFO: renamed from: o0 */
    public final String m5616o0() throws C3528c {
        String string;
        StringBuilder sb = null;
        int i10 = 0;
        while (true) {
            int i11 = 0;
            while (true) {
                int i12 = this.f10460e + i11;
                int i13 = this.f10461f;
                char[] cArr = this.f10459d;
                if (i12 < i13) {
                    char c = cArr[i12];
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
                                                    i11++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        m5621y();
                    }
                    i10 = i11;
                } else if (i11 >= cArr.length) {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max(i11, 16));
                    }
                    sb.append(cArr, this.f10460e, i11);
                    this.f10460e += i11;
                    if (!m5605d0(1)) {
                    }
                } else if (!m5605d0(i11 + 1)) {
                    i10 = i11;
                }
                int i14 = this.f10460e;
                if (sb == null) {
                    string = new String(cArr, i14, i10);
                } else {
                    sb.append(cArr, i14, i10);
                    string = sb.toString();
                }
                this.f10460e += i10;
                return string;
            }
        }
    }

    /* JADX INFO: renamed from: p0 */
    public final int m5617p0() {
        int iM5600S = this.f10464i;
        if (iM5600S == 0) {
            iM5600S = m5600S();
        }
        switch (iM5600S) {
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

    /* JADX INFO: renamed from: q0 */
    public final void m5618q0(int i10) {
        int i11 = this.f10469n;
        int[] iArr = this.f10468m;
        if (i11 == iArr.length) {
            int i12 = i11 * 2;
            this.f10468m = Arrays.copyOf(iArr, i12);
            this.f10471p = Arrays.copyOf(this.f10471p, i12);
            this.f10470o = (String[]) Arrays.copyOf(this.f10470o, i12);
        }
        int[] iArr2 = this.f10468m;
        int i13 = this.f10469n;
        this.f10469n = i13 + 1;
        iArr2[i13] = i10;
    }

    /* JADX INFO: renamed from: r0 */
    public final void m5619r0() {
        char c;
        do {
            if (this.f10460e >= this.f10461f && !m5605d0(1)) {
                return;
            }
            int i10 = this.f10460e;
            int i11 = i10 + 1;
            this.f10460e = i11;
            c = this.f10459d[i10];
            if (c == '\n') {
                this.f10462g++;
                this.f10463h = i11;
                return;
            }
        } while (c != '\r');
    }

    /* JADX INFO: renamed from: s0 */
    public final void m5620s0(String str) throws C3528c {
        throw new C3528c(str.concat(m5609h0()));
    }

    public final String toString() {
        return C3526a.class.getSimpleName().concat(m5609h0());
    }

    /* JADX INFO: renamed from: y */
    public final void m5621y() throws C3528c {
        if (this.f10458c) {
            return;
        }
        m5620s0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }
}
