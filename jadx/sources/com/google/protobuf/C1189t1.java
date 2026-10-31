package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.Arrays;
import org.apache.commons.net.bsd.RCommandClient;
import org.apache.commons.net.nntp.NNTPReply;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: renamed from: com.google.protobuf.t1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1189t1 {

    /* JADX INFO: renamed from: b */
    public static final C1144e1 f2774b = new C1144e1();

    /* JADX INFO: renamed from: c */
    public static final C1147f1 f2775c = new C1147f1();

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f2776a;

    /* JADX INFO: renamed from: c */
    public static String m2154c(C1148g c1148g) {
        StringBuilder sb = new StringBuilder(c1148g.size());
        for (int i10 = 0; i10 < c1148g.size(); i10++) {
            byte bMo1948a = c1148g.mo1948a(i10);
            if (bMo1948a == 34) {
                sb.append("\\\"");
            } else if (bMo1948a == 39) {
                sb.append("\\'");
            } else if (bMo1948a != 92) {
                switch (bMo1948a) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bMo1948a < 32 || bMo1948a > 126) {
                            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb.append((char) (((bMo1948a >>> 6) & 3) + 48));
                            sb.append((char) (((bMo1948a >>> 3) & 7) + 48));
                            sb.append((char) ((bMo1948a & 7) + 48));
                        } else {
                            sb.append((char) bMo1948a);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: d */
    public static boolean m2155d(byte b10) {
        return b10 > -65;
    }

    /* JADX INFO: renamed from: f */
    public static int m2156f(int i10, int i11, long j10, byte[] bArr) {
        if (i11 == 0) {
            C1189t1 c1189t1 = AbstractC1195v1.f2788a;
            if (i10 > -12) {
                return -1;
            }
            return i10;
        }
        if (i11 == 1) {
            return AbstractC1195v1.m2162c(i10, AbstractC1186s1.m2112g(bArr, j10));
        }
        if (i11 == 2) {
            return AbstractC1195v1.m2163d(i10, AbstractC1186s1.m2112g(bArr, j10), AbstractC1186s1.m2112g(bArr, j10 + 1));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x0049  */
    /* JADX WARN: Code duplicated, block: B:24:0x0056  */
    /* JADX WARN: Code duplicated, block: B:26:0x005a A[LOOP:2: B:23:0x0054->B:26:0x005a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x006c  */
    /* JADX WARN: Code duplicated, block: B:44:0x009a  */
    /* JADX WARN: Code duplicated, block: B:61:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:81:0x0066 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x004f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x008d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x006a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0096 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0131 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x012c A[SYNTHETIC] */
    /* JADX INFO: renamed from: a */
    public final String m2157a(byte[] bArr, int i10, int i11) throws C1140d0 {
        int i12;
        byte b10;
        int i13;
        byte b11;
        byte b12;
        byte b13;
        switch (this.f2776a) {
            case 0:
                if ((i10 | i11 | ((bArr.length - i10) - i11)) < 0) {
                    throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
                }
                int i14 = i10 + i11;
                char[] cArr = new char[i11];
                int i15 = 0;
                while (i10 < i14) {
                    byte b14 = bArr[i10];
                    if (b14 < 0) {
                        while (i10 < i14) {
                            i12 = i10 + 1;
                            b10 = bArr[i10];
                            if (b10 < 0) {
                                i13 = i15 + 1;
                                cArr[i15] = (char) b10;
                                while (i12 < i14) {
                                    b11 = bArr[i12];
                                    if (b11 >= 0) {
                                        i12++;
                                        cArr[i13] = (char) b11;
                                        i13++;
                                    } else {
                                        i15 = i13;
                                        i10 = i12;
                                    }
                                }
                                i15 = i13;
                                i10 = i12;
                            } else if (b10 < -32) {
                                if (i12 < i14) {
                                    throw C1140d0.m1936a();
                                }
                                i10 += 2;
                                byte b15 = bArr[i12];
                                int i16 = i15 + 1;
                                if (b10 >= -62 || m2155d(b15)) {
                                    throw C1140d0.m1936a();
                                }
                                cArr[i15] = (char) ((b15 & 63) | ((b10 & 31) << 6));
                                i15 = i16;
                            } else {
                                if (b10 >= -16) {
                                    if (i12 < i14 - 2) {
                                        throw C1140d0.m1936a();
                                    }
                                    b13 = bArr[i12];
                                    int i17 = i10 + 3;
                                    byte b16 = bArr[i10 + 2];
                                    i10 += 4;
                                    byte b17 = bArr[i17];
                                    int i18 = i15 + 1;
                                    if (!m2155d(b13)) {
                                        if ((((b13 + 112) + (b10 << 28)) >> 30) != 0 && !m2155d(b16) && !m2155d(b17)) {
                                            int i19 = ((b13 & 63) << 12) | ((b10 & 7) << 18) | ((b16 & 63) << 6) | (b17 & 63);
                                            cArr[i15] = (char) ((i19 >>> 10) + 55232);
                                            cArr[i18] = (char) ((i19 & RCommandClient.MAX_CLIENT_PORT) + 56320);
                                            i15 += 2;
                                        }
                                    }
                                    throw C1140d0.m1936a();
                                }
                                if (i12 < i14 - 1) {
                                    throw C1140d0.m1936a();
                                }
                                int i20 = i10 + 2;
                                b12 = bArr[i12];
                                i10 += 3;
                                byte b18 = bArr[i20];
                                int i21 = i15 + 1;
                                if (!m2155d(b12) || ((b10 == -32 && b12 < -96) || ((b10 == -19 && b12 >= -96) || m2155d(b18)))) {
                                    throw C1140d0.m1936a();
                                }
                                cArr[i15] = (char) (((b12 & 63) << 6) | ((b10 & 15) << 12) | (b18 & 63));
                                i15 = i21;
                            }
                        }
                        return new String(cArr, 0, i15);
                    }
                    i10++;
                    cArr[i15] = (char) b14;
                    i15++;
                }
                while (i10 < i14) {
                    i12 = i10 + 1;
                    b10 = bArr[i10];
                    if (b10 < 0) {
                        if (b10 < -32) {
                            if (i12 < i14) {
                                throw C1140d0.m1936a();
                            }
                            i10 += 2;
                            byte b19 = bArr[i12];
                            int i110 = i15 + 1;
                            if (b10 >= -62) {
                            }
                            throw C1140d0.m1936a();
                        }
                        if (b10 >= -16) {
                            if (i12 < i14 - 1) {
                                throw C1140d0.m1936a();
                            }
                            int i22 = i10 + 2;
                            b12 = bArr[i12];
                            i10 += 3;
                            byte b110 = bArr[i22];
                            int i23 = i15 + 1;
                            if (m2155d(b12)) {
                            }
                            throw C1140d0.m1936a();
                        }
                        if (i12 < i14 - 2) {
                            throw C1140d0.m1936a();
                        }
                        b13 = bArr[i12];
                        int i111 = i10 + 3;
                        byte b111 = bArr[i10 + 2];
                        i10 += 4;
                        byte b112 = bArr[i111];
                        int i112 = i15 + 1;
                        if (!m2155d(b13)) {
                            if ((((b13 + 112) + (b10 << 28)) >> 30) != 0) {
                            }
                        }
                        throw C1140d0.m1936a();
                    }
                    i13 = i15 + 1;
                    cArr[i15] = (char) b10;
                    while (i12 < i14) {
                        b11 = bArr[i12];
                        if (b11 >= 0) {
                            i12++;
                            cArr[i13] = (char) b11;
                            i13++;
                        } else {
                            i15 = i13;
                            i10 = i12;
                        }
                    }
                    i15 = i13;
                    i10 = i12;
                }
                return new String(cArr, 0, i15);
            default:
                Charset charset = AbstractC1133b0.f2634a;
                String str = new String(bArr, i10, i11, charset);
                if (str.contains("�") && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i10, i11 + i10))) {
                    throw C1140d0.m1936a();
                }
                return str;
        }
    }

    /* JADX INFO: renamed from: b */
    public final int m2158b(String str, byte[] bArr, int i10, int i11) {
        int i12;
        int i13;
        char cCharAt;
        long j10;
        char c;
        long j11;
        long j12;
        char c10;
        int i14;
        char cCharAt2;
        switch (this.f2776a) {
            case 0:
                int length = str.length();
                int i15 = i11 + i10;
                int i16 = 0;
                while (i16 < length && (i13 = i16 + i10) < i15 && (cCharAt = str.charAt(i16)) < 128) {
                    bArr[i13] = (byte) cCharAt;
                    i16++;
                }
                if (i16 == length) {
                    return i10 + length;
                }
                int i17 = i10 + i16;
                while (i16 < length) {
                    char cCharAt3 = str.charAt(i16);
                    if (cCharAt3 < 128 && i17 < i15) {
                        bArr[i17] = (byte) cCharAt3;
                        i17++;
                    } else if (cCharAt3 < 2048 && i17 <= i15 - 2) {
                        int i18 = i17 + 1;
                        bArr[i17] = (byte) ((cCharAt3 >>> 6) | 960);
                        i17 += 2;
                        bArr[i18] = (byte) ((cCharAt3 & '?') | 128);
                    } else {
                        if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || i17 > i15 - 3) {
                            if (i17 > i15 - 4) {
                                if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i12 = i16 + 1) == str.length() || !Character.isSurrogatePair(cCharAt3, str.charAt(i12)))) {
                                    throw new C1192u1(i16, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt3 + " at index " + i17);
                            }
                            int i19 = i16 + 1;
                            if (i19 != str.length()) {
                                char cCharAt4 = str.charAt(i19);
                                if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                    int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                    bArr[i17] = (byte) ((codePoint >>> 18) | 240);
                                    bArr[i17 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                    int i20 = i17 + 3;
                                    bArr[i17 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                    i17 += 4;
                                    bArr[i20] = (byte) ((codePoint & 63) | 128);
                                    i16 = i19;
                                } else {
                                    i16 = i19;
                                }
                            }
                            throw new C1192u1(i16 - 1, length);
                        }
                        bArr[i17] = (byte) ((cCharAt3 >>> '\f') | NNTPReply.AUTHENTICATION_REQUIRED);
                        int i21 = i17 + 2;
                        bArr[i17 + 1] = (byte) (((cCharAt3 >>> 6) & 63) | 128);
                        i17 += 3;
                        bArr[i21] = (byte) ((cCharAt3 & '?') | 128);
                    }
                    i16++;
                }
                return i17;
            default:
                long j13 = i10;
                long j14 = ((long) i11) + j13;
                int length2 = str.length();
                if (length2 > i11 || bArr.length - i11 < i10) {
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + str.charAt(length2 - 1) + " at index " + (i10 + i11));
                }
                int i22 = 0;
                while (true) {
                    j10 = 1;
                    c = 128;
                    if (i22 < length2 && (cCharAt2 = str.charAt(i22)) < 128) {
                        AbstractC1186s1.m2116k(bArr, j13, (byte) cCharAt2);
                        i22++;
                        j13 = 1 + j13;
                    }
                }
                if (i22 == length2) {
                    return (int) j13;
                }
                while (i22 < length2) {
                    char cCharAt5 = str.charAt(i22);
                    if (cCharAt5 < c && j13 < j14) {
                        AbstractC1186s1.m2116k(bArr, j13, (byte) cCharAt5);
                        c10 = c;
                        j11 = j10;
                        j12 = j13 + j10;
                    } else if (cCharAt5 >= 2048 || j13 > j14 - 2) {
                        j11 = j10;
                        if ((cCharAt5 >= 55296 && 57343 >= cCharAt5) || j13 > j14 - 3) {
                            long j15 = j13;
                            if (j15 > j14 - 4) {
                                if (55296 <= cCharAt5 && cCharAt5 <= 57343 && ((i14 = i22 + 1) == length2 || !Character.isSurrogatePair(cCharAt5, str.charAt(i14)))) {
                                    throw new C1192u1(i22, length2);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt5 + " at index " + j15);
                            }
                            int i23 = i22 + 1;
                            if (i23 != length2) {
                                char cCharAt6 = str.charAt(i23);
                                if (Character.isSurrogatePair(cCharAt5, cCharAt6)) {
                                    int codePoint2 = Character.toCodePoint(cCharAt5, cCharAt6);
                                    AbstractC1186s1.m2116k(bArr, j15, (byte) ((codePoint2 >>> 18) | 240));
                                    c10 = 128;
                                    AbstractC1186s1.m2116k(bArr, j15 + j11, (byte) (((codePoint2 >>> 12) & 63) | 128));
                                    AbstractC1186s1.m2116k(bArr, j15 + 2, (byte) (((codePoint2 >>> 6) & 63) | 128));
                                    AbstractC1186s1.m2116k(bArr, j15 + 3, (byte) ((codePoint2 & 63) | 128));
                                    j12 = j15 + 4;
                                    i22 = i23;
                                } else {
                                    i22 = i23;
                                }
                            }
                            throw new C1192u1(i22 - 1, length2);
                        }
                        AbstractC1186s1.m2116k(bArr, j13, (byte) ((cCharAt5 >>> '\f') | NNTPReply.AUTHENTICATION_REQUIRED));
                        long j16 = j13;
                        AbstractC1186s1.m2116k(bArr, j13 + j11, (byte) (((cCharAt5 >>> 6) & 63) | 128));
                        j12 = j16 + 3;
                        AbstractC1186s1.m2116k(bArr, j16 + 2, (byte) ((cCharAt5 & '?') | 128));
                        c10 = 128;
                    } else {
                        j11 = j10;
                        AbstractC1186s1.m2116k(bArr, j13, (byte) ((cCharAt5 >>> 6) | 960));
                        AbstractC1186s1.m2116k(bArr, j13 + j11, (byte) ((cCharAt5 & '?') | c));
                        j12 = j13 + 2;
                        c10 = c;
                    }
                    i22++;
                    c = c10;
                    j13 = j12;
                    j10 = j11;
                }
                return (int) j13;
        }
    }

    /* JADX WARN: Code duplicated, block: B:128:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:0x00f7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x007d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x008a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0090  */
    /* JADX WARN: Code duplicated, block: B:45:0x009a  */
    /* JADX WARN: Code duplicated, block: B:46:0x009d  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:67:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ed  */
    /* JADX INFO: renamed from: e */
    public final int m2159e(byte[] bArr, int i10, int i11) {
        int i12;
        int i13;
        long j10;
        long j11;
        byte bM2112g;
        long j12;
        byte bM2112g2;
        long j13;
        int i14 = i10;
        switch (this.f2776a) {
            case 0:
                break;
            default:
                if ((i14 | i11 | (bArr.length - i11)) < 0) {
                    throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i14), Integer.valueOf(i11)));
                }
                long j14 = i14;
                int i15 = (int) (((long) i11) - j14);
                long j15 = 1;
                if (i15 < 16) {
                    i12 = 0;
                } else {
                    int i16 = 8 - (((int) j14) & 7);
                    long j16 = j14;
                    i12 = 0;
                    while (true) {
                        if (i12 < i16) {
                            long j17 = j16 + 1;
                            if (AbstractC1186s1.m2112g(bArr, j16) >= 0) {
                                i12++;
                                j16 = j17;
                            }
                        } else {
                            while (true) {
                                int i17 = i12 + 8;
                                if (i17 <= i15) {
                                    if ((AbstractC1186s1.f2751c.m2097h(bArr, AbstractC1186s1.f2754f + j16) & (-9187201950435737472L)) == 0) {
                                        j16 += 8;
                                        i12 = i17;
                                    }
                                }
                            }
                            while (true) {
                                if (i12 < i15) {
                                    long j18 = j16 + 1;
                                    if (AbstractC1186s1.m2112g(bArr, j16) >= 0) {
                                        i12++;
                                        j16 = j18;
                                    }
                                } else {
                                    i12 = i15;
                                }
                            }
                        }
                    }
                }
                int i18 = i15 - i12;
                long j19 = j14 + ((long) i12);
                while (true) {
                    byte bM2112g3 = 0;
                    while (i18 > 0) {
                        long j20 = j19 + j15;
                        bM2112g3 = AbstractC1186s1.m2112g(bArr, j19);
                        if (bM2112g3 >= 0) {
                            i18--;
                            j19 = j20;
                        } else {
                            j19 = j20;
                            if (i18 == 0) {
                                return 0;
                            }
                            i13 = i18 - 1;
                            if (bM2112g3 < -32) {
                                if (i13 == 0) {
                                    return bM2112g3;
                                }
                                i18 -= 2;
                                if (bM2112g3 >= -62) {
                                    j13 = j19 + j15;
                                    if (AbstractC1186s1.m2112g(bArr, j19) > -65) {
                                        j10 = j15;
                                        j19 = j13;
                                        j15 = j10;
                                    }
                                }
                            } else if (bM2112g3 < -16) {
                                j10 = j15;
                                if (i13 < 3) {
                                    return m2156f(bM2112g3, i13, j19, bArr);
                                }
                                i18 -= 4;
                                j11 = j19 + j10;
                                bM2112g = AbstractC1186s1.m2112g(bArr, j19);
                                if (bM2112g <= -65) {
                                    if ((((bM2112g + 112) + (bM2112g3 << 28)) >> 30) == 0) {
                                        j12 = 2 + j19;
                                        if (AbstractC1186s1.m2112g(bArr, j11) <= -65) {
                                            j19 += 3;
                                            if (AbstractC1186s1.m2112g(bArr, j12) > -65) {
                                                j15 = j10;
                                            }
                                        }
                                    }
                                }
                            } else {
                                if (i13 < 2) {
                                    return m2156f(bM2112g3, i13, j19, bArr);
                                }
                                i18 -= 3;
                                j10 = j15;
                                long j21 = j19 + j10;
                                bM2112g2 = AbstractC1186s1.m2112g(bArr, j19);
                                if (bM2112g2 > -65 && ((bM2112g3 != -32 || bM2112g2 >= -96) && (bM2112g3 != -19 || bM2112g2 < -96))) {
                                    j19 += 2;
                                    if (AbstractC1186s1.m2112g(bArr, j21) <= -65) {
                                        j15 = j10;
                                    }
                                }
                            }
                        }
                    }
                    if (i18 == 0) {
                        return 0;
                    }
                    i13 = i18 - 1;
                    if (bM2112g3 < -32) {
                        if (i13 == 0) {
                            return bM2112g3;
                        }
                        i18 -= 2;
                        if (bM2112g3 >= -62) {
                            j13 = j19 + j15;
                            if (AbstractC1186s1.m2112g(bArr, j19) > -65) {
                                j10 = j15;
                                j19 = j13;
                                j15 = j10;
                            }
                        }
                    } else if (bM2112g3 < -16) {
                        j10 = j15;
                        if (i13 < 3) {
                            return m2156f(bM2112g3, i13, j19, bArr);
                        }
                        i18 -= 4;
                        j11 = j19 + j10;
                        bM2112g = AbstractC1186s1.m2112g(bArr, j19);
                        if (bM2112g <= -65) {
                            if ((((bM2112g + 112) + (bM2112g3 << 28)) >> 30) == 0) {
                                j12 = 2 + j19;
                                if (AbstractC1186s1.m2112g(bArr, j11) <= -65) {
                                    j19 += 3;
                                    if (AbstractC1186s1.m2112g(bArr, j12) > -65) {
                                        j15 = j10;
                                    }
                                }
                            }
                        }
                    } else {
                        if (i13 < 2) {
                            return m2156f(bM2112g3, i13, j19, bArr);
                        }
                        i18 -= 3;
                        j10 = j15;
                        long j22 = j19 + j10;
                        bM2112g2 = AbstractC1186s1.m2112g(bArr, j19);
                        if (bM2112g2 > -65) {
                        }
                    }
                }
                return -1;
        }
        while (i14 < i11 && bArr[i14] >= 0) {
            i14++;
        }
        if (i14 < i11) {
            while (i14 < i11) {
                int i19 = i14 + 1;
                byte b10 = bArr[i14];
                if (b10 < 0) {
                    if (b10 < -32) {
                        if (i19 >= i11) {
                            return b10;
                        }
                        if (b10 >= -62) {
                            i14 += 2;
                            if (bArr[i19] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (b10 < -16) {
                        if (i19 >= i11 - 1) {
                            return AbstractC1195v1.m2160a(bArr, i19, i11);
                        }
                        int i20 = i14 + 2;
                        byte b11 = bArr[i19];
                        if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                            i14 += 3;
                            if (bArr[i20] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (i19 >= i11 - 2) {
                        return AbstractC1195v1.m2160a(bArr, i19, i11);
                    }
                    int i21 = i14 + 2;
                    byte b12 = bArr[i19];
                    if (b12 <= -65) {
                        if ((((b12 + 112) + (b10 << 28)) >> 30) == 0) {
                            int i22 = i14 + 3;
                            if (bArr[i21] <= -65) {
                                i14 += 4;
                                if (bArr[i22] > -65) {
                                }
                            }
                        }
                    }
                    return -1;
                }
                i14 = i19;
            }
        }
        return 0;
    }
}
