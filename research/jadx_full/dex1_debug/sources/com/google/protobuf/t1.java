package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e1 f1568b = new e1();
    public static final f1 c = new f1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1569a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t1(int i9) {
        this.f1569a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String c(g gVar) {
        StringBuilder sb = new StringBuilder(gVar.size());
        for (int i9 = 0; i9 < gVar.size(); i9++) {
            byte bA = gVar.a(i9);
            if (bA == 34) {
                sb.append("\\\"");
            } else if (bA == 39) {
                sb.append("\\'");
            } else if (bA != 92) {
                switch (bA) {
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
                        if (bA < 32 || bA > 126) {
                            sb.append('\\');
                            sb.append((char) (((bA >>> 6) & 3) + 48));
                            sb.append((char) (((bA >>> 3) & 7) + 48));
                            sb.append((char) ((bA & 7) + 48));
                        } else {
                            sb.append((char) bA);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean d(byte b9) {
        return b9 > -65;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int f(int i9, int i10, long j9, byte[] bArr) {
        if (i10 == 0) {
            t1 t1Var = v1.f1577a;
            if (i9 > -12) {
                return -1;
            }
            return i9;
        }
        if (i10 == 1) {
            return v1.c(i9, s1.g(bArr, j9));
        }
        if (i10 == 2) {
            return v1.d(i9, s1.g(bArr, j9), s1.g(bArr, j9 + 1));
        }
        throw new AssertionError();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public final String a(byte[] bArr, int i9, int i10) throws d0 {
        int i11;
        byte b9;
        int i12;
        byte b10;
        byte b11;
        byte b12;
        switch (this.f1569a) {
            case 0:
                if ((i9 | i10 | ((bArr.length - i9) - i10)) < 0) {
                    throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i9), Integer.valueOf(i10)));
                }
                int i13 = i9 + i10;
                char[] cArr = new char[i10];
                int i14 = 0;
                while (i9 < i13) {
                    byte b13 = bArr[i9];
                    if (b13 < 0) {
                        while (i9 < i13) {
                            i11 = i9 + 1;
                            b9 = bArr[i9];
                            if (b9 < 0) {
                                i12 = i14 + 1;
                                cArr[i14] = (char) b9;
                                while (i11 < i13) {
                                    b10 = bArr[i11];
                                    if (b10 >= 0) {
                                        i11++;
                                        cArr[i12] = (char) b10;
                                        i12++;
                                    } else {
                                        i14 = i12;
                                        i9 = i11;
                                    }
                                }
                                i14 = i12;
                                i9 = i11;
                            } else if (b9 < -32) {
                                if (i11 < i13) {
                                    throw d0.a();
                                }
                                i9 += 2;
                                byte b14 = bArr[i11];
                                int i15 = i14 + 1;
                                if (b9 >= -62 || d(b14)) {
                                    throw d0.a();
                                }
                                cArr[i14] = (char) ((b14 & 63) | ((b9 & 31) << 6));
                                i14 = i15;
                            } else {
                                if (b9 >= -16) {
                                    if (i11 < i13 - 2) {
                                        throw d0.a();
                                    }
                                    b12 = bArr[i11];
                                    int i16 = i9 + 3;
                                    byte b15 = bArr[i9 + 2];
                                    i9 += 4;
                                    byte b16 = bArr[i16];
                                    int i17 = i14 + 1;
                                    if (!d(b12)) {
                                        if ((((b12 + 112) + (b9 << 28)) >> 30) != 0 && !d(b15) && !d(b16)) {
                                            int i18 = ((b12 & 63) << 12) | ((b9 & 7) << 18) | ((b15 & 63) << 6) | (b16 & 63);
                                            cArr[i14] = (char) ((i18 >>> 10) + 55232);
                                            cArr[i17] = (char) ((i18 & 1023) + 56320);
                                            i14 += 2;
                                        }
                                    }
                                    throw d0.a();
                                }
                                if (i11 < i13 - 1) {
                                    throw d0.a();
                                }
                                int i19 = i9 + 2;
                                b11 = bArr[i11];
                                i9 += 3;
                                byte b17 = bArr[i19];
                                int i20 = i14 + 1;
                                if (!d(b11) || ((b9 == -32 && b11 < -96) || ((b9 == -19 && b11 >= -96) || d(b17)))) {
                                    throw d0.a();
                                }
                                cArr[i14] = (char) (((b11 & 63) << 6) | ((b9 & 15) << 12) | (b17 & 63));
                                i14 = i20;
                            }
                        }
                        return new String(cArr, 0, i14);
                    }
                    i9++;
                    cArr[i14] = (char) b13;
                    i14++;
                }
                while (i9 < i13) {
                    i11 = i9 + 1;
                    b9 = bArr[i9];
                    if (b9 < 0) {
                        if (b9 < -32) {
                            if (i11 < i13) {
                                throw d0.a();
                            }
                            i9 += 2;
                            byte b18 = bArr[i11];
                            int i110 = i14 + 1;
                            if (b9 >= -62) {
                            }
                            throw d0.a();
                        }
                        if (b9 >= -16) {
                            if (i11 < i13 - 1) {
                                throw d0.a();
                            }
                            int i111 = i9 + 2;
                            b11 = bArr[i11];
                            i9 += 3;
                            byte b19 = bArr[i111];
                            int i21 = i14 + 1;
                            if (d(b11)) {
                            }
                            throw d0.a();
                        }
                        if (i11 < i13 - 2) {
                            throw d0.a();
                        }
                        b12 = bArr[i11];
                        int i112 = i9 + 3;
                        byte b110 = bArr[i9 + 2];
                        i9 += 4;
                        byte b111 = bArr[i112];
                        int i113 = i14 + 1;
                        if (!d(b12)) {
                            if ((((b12 + 112) + (b9 << 28)) >> 30) != 0) {
                            }
                        }
                        throw d0.a();
                    }
                    i12 = i14 + 1;
                    cArr[i14] = (char) b9;
                    while (i11 < i13) {
                        b10 = bArr[i11];
                        if (b10 >= 0) {
                            i11++;
                            cArr[i12] = (char) b10;
                            i12++;
                        } else {
                            i14 = i12;
                            i9 = i11;
                        }
                    }
                    i14 = i12;
                    i9 = i11;
                }
                return new String(cArr, 0, i14);
            default:
                Charset charset = b0.f1473a;
                String str = new String(bArr, i9, i10, charset);
                if (str.contains("�") && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i9, i10 + i9))) {
                    throw d0.a();
                }
                return str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b(String str, byte[] bArr, int i9, int i10) {
        int i11;
        int i12;
        char cCharAt;
        long j9;
        char c9;
        long j10;
        long j11;
        char c10;
        int i13;
        char cCharAt2;
        switch (this.f1569a) {
            case 0:
                int length = str.length();
                int i14 = i10 + i9;
                int i15 = 0;
                while (i15 < length && (i12 = i15 + i9) < i14 && (cCharAt = str.charAt(i15)) < 128) {
                    bArr[i12] = (byte) cCharAt;
                    i15++;
                }
                if (i15 == length) {
                    return i9 + length;
                }
                int i16 = i9 + i15;
                while (i15 < length) {
                    char cCharAt3 = str.charAt(i15);
                    if (cCharAt3 < 128 && i16 < i14) {
                        bArr[i16] = (byte) cCharAt3;
                        i16++;
                    } else if (cCharAt3 < 2048 && i16 <= i14 - 2) {
                        int i17 = i16 + 1;
                        bArr[i16] = (byte) ((cCharAt3 >>> 6) | 960);
                        i16 += 2;
                        bArr[i17] = (byte) ((cCharAt3 & '?') | 128);
                    } else {
                        if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || i16 > i14 - 3) {
                            if (i16 > i14 - 4) {
                                if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i11 = i15 + 1) == str.length() || !Character.isSurrogatePair(cCharAt3, str.charAt(i11)))) {
                                    throw new u1(i15, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt3 + " at index " + i16);
                            }
                            int i18 = i15 + 1;
                            if (i18 != str.length()) {
                                char cCharAt4 = str.charAt(i18);
                                if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                    int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                    bArr[i16] = (byte) ((codePoint >>> 18) | 240);
                                    bArr[i16 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                    int i19 = i16 + 3;
                                    bArr[i16 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                    i16 += 4;
                                    bArr[i19] = (byte) ((codePoint & 63) | 128);
                                    i15 = i18;
                                } else {
                                    i15 = i18;
                                }
                            }
                            throw new u1(i15 - 1, length);
                        }
                        bArr[i16] = (byte) ((cCharAt3 >>> '\f') | 480);
                        int i20 = i16 + 2;
                        bArr[i16 + 1] = (byte) (((cCharAt3 >>> 6) & 63) | 128);
                        i16 += 3;
                        bArr[i20] = (byte) ((cCharAt3 & '?') | 128);
                    }
                    i15++;
                }
                return i16;
            default:
                long j12 = i9;
                long j13 = ((long) i10) + j12;
                int length2 = str.length();
                if (length2 > i10 || bArr.length - i10 < i9) {
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + str.charAt(length2 - 1) + " at index " + (i9 + i10));
                }
                int i21 = 0;
                while (true) {
                    j9 = 1;
                    c9 = 128;
                    if (i21 < length2 && (cCharAt2 = str.charAt(i21)) < 128) {
                        s1.k(bArr, j12, (byte) cCharAt2);
                        i21++;
                        j12 = 1 + j12;
                    }
                }
                if (i21 == length2) {
                    return (int) j12;
                }
                while (i21 < length2) {
                    char cCharAt5 = str.charAt(i21);
                    if (cCharAt5 < c9 && j12 < j13) {
                        s1.k(bArr, j12, (byte) cCharAt5);
                        c10 = c9;
                        j10 = j9;
                        j11 = j12 + j9;
                    } else if (cCharAt5 >= 2048 || j12 > j13 - 2) {
                        j10 = j9;
                        if ((cCharAt5 >= 55296 && 57343 >= cCharAt5) || j12 > j13 - 3) {
                            long j14 = j12;
                            if (j14 > j13 - 4) {
                                if (55296 <= cCharAt5 && cCharAt5 <= 57343 && ((i13 = i21 + 1) == length2 || !Character.isSurrogatePair(cCharAt5, str.charAt(i13)))) {
                                    throw new u1(i21, length2);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt5 + " at index " + j14);
                            }
                            int i22 = i21 + 1;
                            if (i22 != length2) {
                                char cCharAt6 = str.charAt(i22);
                                if (Character.isSurrogatePair(cCharAt5, cCharAt6)) {
                                    int codePoint2 = Character.toCodePoint(cCharAt5, cCharAt6);
                                    s1.k(bArr, j14, (byte) ((codePoint2 >>> 18) | 240));
                                    c10 = 128;
                                    s1.k(bArr, j14 + j10, (byte) (((codePoint2 >>> 12) & 63) | 128));
                                    s1.k(bArr, j14 + 2, (byte) (((codePoint2 >>> 6) & 63) | 128));
                                    s1.k(bArr, j14 + 3, (byte) ((codePoint2 & 63) | 128));
                                    j11 = j14 + 4;
                                    i21 = i22;
                                } else {
                                    i21 = i22;
                                }
                            }
                            throw new u1(i21 - 1, length2);
                        }
                        s1.k(bArr, j12, (byte) ((cCharAt5 >>> '\f') | 480));
                        long j15 = j12;
                        s1.k(bArr, j12 + j10, (byte) (((cCharAt5 >>> 6) & 63) | 128));
                        j11 = j15 + 3;
                        s1.k(bArr, j15 + 2, (byte) ((cCharAt5 & '?') | 128));
                        c10 = 128;
                    } else {
                        j10 = j9;
                        s1.k(bArr, j12, (byte) ((cCharAt5 >>> 6) | 960));
                        s1.k(bArr, j12 + j10, (byte) ((cCharAt5 & '?') | c9));
                        j11 = j12 + 2;
                        c10 = c9;
                    }
                    i21++;
                    c9 = c10;
                    j12 = j11;
                    j9 = j10;
                }
                return (int) j12;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public final int e(byte[] bArr, int i9, int i10) {
        int i11;
        int i12;
        long j9;
        long j10;
        byte bG;
        long j11;
        byte bG2;
        long j12;
        int i13 = i9;
        switch (this.f1569a) {
            case 0:
                break;
            default:
                if ((i13 | i10 | (bArr.length - i10)) < 0) {
                    throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i13), Integer.valueOf(i10)));
                }
                long j13 = i13;
                int i14 = (int) (((long) i10) - j13);
                long j14 = 1;
                if (i14 < 16) {
                    i11 = 0;
                } else {
                    int i15 = 8 - (((int) j13) & 7);
                    long j15 = j13;
                    i11 = 0;
                    while (true) {
                        if (i11 < i15) {
                            long j16 = j15 + 1;
                            if (s1.g(bArr, j15) >= 0) {
                                i11++;
                                j15 = j16;
                            }
                        } else {
                            while (true) {
                                int i16 = i11 + 8;
                                if (i16 <= i14) {
                                    if ((s1.c.h(bArr, s1.f1552f + j15) & (-9187201950435737472L)) == 0) {
                                        j15 += 8;
                                        i11 = i16;
                                    }
                                }
                            }
                            while (true) {
                                if (i11 < i14) {
                                    long j17 = j15 + 1;
                                    if (s1.g(bArr, j15) >= 0) {
                                        i11++;
                                        j15 = j17;
                                    }
                                } else {
                                    i11 = i14;
                                }
                            }
                        }
                    }
                }
                int i17 = i14 - i11;
                long j18 = j13 + ((long) i11);
                while (true) {
                    byte bG3 = 0;
                    while (i17 > 0) {
                        long j19 = j18 + j14;
                        bG3 = s1.g(bArr, j18);
                        if (bG3 >= 0) {
                            i17--;
                            j18 = j19;
                        } else {
                            j18 = j19;
                            if (i17 == 0) {
                                return 0;
                            }
                            i12 = i17 - 1;
                            if (bG3 < -32) {
                                if (i12 == 0) {
                                    return bG3;
                                }
                                i17 -= 2;
                                if (bG3 >= -62) {
                                    j12 = j18 + j14;
                                    if (s1.g(bArr, j18) > -65) {
                                        j9 = j14;
                                        j18 = j12;
                                        j14 = j9;
                                    }
                                }
                            } else if (bG3 < -16) {
                                j9 = j14;
                                if (i12 < 3) {
                                    return f(bG3, i12, j18, bArr);
                                }
                                i17 -= 4;
                                j10 = j18 + j9;
                                bG = s1.g(bArr, j18);
                                if (bG <= -65) {
                                    if ((((bG + 112) + (bG3 << 28)) >> 30) == 0) {
                                        j11 = 2 + j18;
                                        if (s1.g(bArr, j10) <= -65) {
                                            j18 += 3;
                                            if (s1.g(bArr, j11) > -65) {
                                                j14 = j9;
                                            }
                                        }
                                    }
                                }
                            } else {
                                if (i12 < 2) {
                                    return f(bG3, i12, j18, bArr);
                                }
                                i17 -= 3;
                                j9 = j14;
                                long j20 = j18 + j9;
                                bG2 = s1.g(bArr, j18);
                                if (bG2 > -65 && ((bG3 != -32 || bG2 >= -96) && (bG3 != -19 || bG2 < -96))) {
                                    j18 += 2;
                                    if (s1.g(bArr, j20) <= -65) {
                                        j14 = j9;
                                    }
                                }
                            }
                        }
                    }
                    if (i17 == 0) {
                        return 0;
                    }
                    i12 = i17 - 1;
                    if (bG3 < -32) {
                        if (i12 == 0) {
                            return bG3;
                        }
                        i17 -= 2;
                        if (bG3 >= -62) {
                            j12 = j18 + j14;
                            if (s1.g(bArr, j18) > -65) {
                                j9 = j14;
                                j18 = j12;
                                j14 = j9;
                            }
                        }
                    } else if (bG3 < -16) {
                        j9 = j14;
                        if (i12 < 3) {
                            return f(bG3, i12, j18, bArr);
                        }
                        i17 -= 4;
                        j10 = j18 + j9;
                        bG = s1.g(bArr, j18);
                        if (bG <= -65) {
                            if ((((bG + 112) + (bG3 << 28)) >> 30) == 0) {
                                j11 = 2 + j18;
                                if (s1.g(bArr, j10) <= -65) {
                                    j18 += 3;
                                    if (s1.g(bArr, j11) > -65) {
                                        j14 = j9;
                                    }
                                }
                            }
                        }
                    } else {
                        if (i12 < 2) {
                            return f(bG3, i12, j18, bArr);
                        }
                        i17 -= 3;
                        j9 = j14;
                        long j21 = j18 + j9;
                        bG2 = s1.g(bArr, j18);
                        if (bG2 > -65) {
                        }
                    }
                }
                return -1;
        }
        while (i13 < i10 && bArr[i13] >= 0) {
            i13++;
        }
        if (i13 < i10) {
            while (i13 < i10) {
                int i18 = i13 + 1;
                byte b9 = bArr[i13];
                if (b9 < 0) {
                    if (b9 < -32) {
                        if (i18 >= i10) {
                            return b9;
                        }
                        if (b9 >= -62) {
                            i13 += 2;
                            if (bArr[i18] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (b9 < -16) {
                        if (i18 >= i10 - 1) {
                            return v1.a(bArr, i18, i10);
                        }
                        int i19 = i13 + 2;
                        byte b10 = bArr[i18];
                        if (b10 <= -65 && ((b9 != -32 || b10 >= -96) && (b9 != -19 || b10 < -96))) {
                            i13 += 3;
                            if (bArr[i19] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (i18 >= i10 - 2) {
                        return v1.a(bArr, i18, i10);
                    }
                    int i20 = i13 + 2;
                    byte b11 = bArr[i18];
                    if (b11 <= -65) {
                        if ((((b11 + 112) + (b9 << 28)) >> 30) == 0) {
                            int i21 = i13 + 3;
                            if (bArr[i20] <= -65) {
                                i13 += 4;
                                if (bArr[i21] > -65) {
                                }
                            }
                        }
                    }
                    return -1;
                }
                i13 = i18;
            }
        }
        return 0;
    }
}
