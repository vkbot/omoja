package w6;

import b7.s;
import f6.g;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Map;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f5928a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    public static void a(s sVar, StringBuilder sb, int i9, boolean z8) throws z5.e {
        while (i9 > 1) {
            if (sVar.a() < 11) {
                throw z5.e.a();
            }
            int iB = sVar.b(11);
            sb.append(f(iB / 45));
            sb.append(f(iB % 45));
            i9 -= 2;
        }
        if (i9 == 1) {
            if (sVar.a() < 6) {
                throw z5.e.a();
            }
            sb.append(f(sVar.b(6)));
        }
        if (z8) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i10 = length + 1;
                        if (sb.charAt(i10) == '%') {
                            sb.deleteCharAt(i10);
                        } else {
                            sb.setCharAt(length, (char) 29);
                        }
                    } else {
                        sb.setCharAt(length, (char) 29);
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:101:0x011e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0135  */
    /* JADX WARN: Code duplicated, block: B:115:0x0141  */
    /* JADX WARN: Code duplicated, block: B:116:0x0143  */
    /* JADX WARN: Code duplicated, block: B:118:0x0147  */
    /* JADX WARN: Code duplicated, block: B:123:0x0150  */
    /* JADX WARN: Code duplicated, block: B:124:0x0152  */
    /* JADX WARN: Code duplicated, block: B:126:0x0156 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:133:0x0162  */
    /* JADX WARN: Code duplicated, block: B:134:0x0164 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:136:0x0167 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:138:0x016a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x0038  */
    /* JADX WARN: Code duplicated, block: B:140:0x016d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x007b  */
    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0081 A[PHI: r10
  0x0081: PHI (r10v2 int) = (r10v1 int), (r10v7 int) binds: [B:31:0x0077, B:35:0x007f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x0084  */
    /* JADX WARN: Code duplicated, block: B:38:0x0087  */
    /* JADX WARN: Code duplicated, block: B:40:0x008d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0091  */
    /* JADX WARN: Code duplicated, block: B:44:0x0097  */
    /* JADX WARN: Code duplicated, block: B:46:0x009b  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:51:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00cc A[PHI: r17
  0x00cc: PHI (r17v2 int) = (r17v1 int), (r17v1 int), (r17v4 int), (r17v1 int) binds: [B:54:0x00b2, B:59:0x00bc, B:66:0x00ca, B:65:0x00c8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:69:0x00d0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e2 A[PHI: r27
  0x00e2: PHI (r27v6 boolean) = (r27v5 boolean), (r27v5 boolean), (r27v5 boolean), (r27v7 boolean), (r27v7 boolean), (r27v7 boolean) binds: [B:79:0x00e8, B:81:0x00ec, B:83:0x00f0, B:71:0x00d6, B:72:0x00d8, B:74:0x00dc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:78:0x00e4  */
    public static void b(s sVar, StringBuilder sb, int i9, f6.c cVar, ArrayList arrayList, Map map) throws z5.e {
        String strName;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z12;
        boolean z13;
        byte b9;
        boolean z14;
        int i17;
        boolean z15;
        boolean z16;
        boolean z17;
        int i18;
        if ((i9 << 3) > sVar.a()) {
            throw z5.e.a();
        }
        byte[] bArr = new byte[i9];
        int i19 = 0;
        for (int i20 = 0; i20 < i9; i20++) {
            bArr[i20] = (byte) sVar.b(8);
        }
        if (cVar == null) {
            String str = g.f2273a;
            if (map != null) {
                z5.d dVar = z5.d.f6315f;
                if (map.containsKey(dVar)) {
                    strName = map.get(dVar).toString();
                } else {
                    z8 = true;
                    if (i9 <= 3 && bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    z10 = true;
                    z11 = true;
                    int i21 = 0;
                    i10 = 0;
                    i11 = 0;
                    i12 = 0;
                    i13 = 0;
                    i14 = 0;
                    i15 = 0;
                    int i22 = 0;
                    i16 = 0;
                    int i23 = 0;
                    int i24 = 0;
                    while (i10 < i9 && (z8 || z10 || z11)) {
                        b9 = bArr[i10];
                        z14 = z8;
                        i17 = b9 & UByte.MAX_VALUE;
                        if (z11) {
                            if (i11 > 0) {
                                z15 = z9;
                                if ((b9 & ByteCompanionObject.MIN_VALUE) != 0) {
                                    if ((b9 & 64) != 0) {
                                        i18 = i11 + 1;
                                        if ((b9 & 32) == 0) {
                                            i13++;
                                        } else {
                                            i18 = i11 + 2;
                                            if ((b9 & 16) == 0) {
                                                i14++;
                                            } else {
                                                i11 += 3;
                                                if ((b9 & 8) == 0) {
                                                    i15++;
                                                }
                                            }
                                        }
                                        i11 = i18;
                                    }
                                }
                            } else if ((b9 & ByteCompanionObject.MIN_VALUE) != 0) {
                                i11--;
                                z15 = z9;
                            } else {
                                z15 = z9;
                            }
                            z11 = false;
                        } else {
                            z15 = z9;
                        }
                        if (!z14) {
                            z16 = z14;
                        } else if (i17 > 127 || i17 >= 160) {
                            if (i17 > 159 && (i17 < 192 || i17 == 215 || i17 == 247)) {
                                i16++;
                            }
                            z16 = z14;
                        } else {
                            z16 = false;
                        }
                        if (z10) {
                            z17 = z16;
                        } else if (i12 > 0) {
                            z17 = z16;
                            if (i17 >= 64 || i17 == 127 || i17 > 252) {
                                z10 = false;
                            } else {
                                i12--;
                            }
                        } else {
                            z17 = z16;
                            if (i17 != 128 || i17 == 160 || i17 > 239) {
                                z10 = false;
                            } else if (i17 <= 160 || i17 >= 224) {
                                if (i17 > 127) {
                                    i12++;
                                    int i25 = i23 + 1;
                                    if (i25 > i19) {
                                        i19 = i25;
                                        i23 = i19;
                                    } else {
                                        i23 = i25;
                                    }
                                } else {
                                    i23 = 0;
                                }
                                i24 = 0;
                            } else {
                                i21++;
                                int i26 = i24 + 1;
                                if (i26 > i22) {
                                    i22 = i26;
                                    i24 = i22;
                                } else {
                                    i24 = i26;
                                }
                                i23 = 0;
                            }
                        }
                        i10++;
                        z8 = z17;
                        z9 = z15;
                    }
                    z12 = z8;
                    boolean z18 = z9;
                    if (z11 && i11 > 0) {
                        z11 = false;
                    }
                    if (z10 || i12 <= 0) {
                        z13 = z10;
                    } else {
                        z13 = false;
                    }
                    if (!z11 && (z18 || i13 + i14 + i15 > 0)) {
                        strName = "UTF8";
                    } else if (!z13 && (g.f2274b || i22 >= 3 || i19 >= 3)) {
                        strName = "SJIS";
                    } else if (z12 || !z13) {
                        if (z12) {
                            strName = "ISO8859_1";
                        } else if (z13) {
                            strName = "SJIS";
                        } else if (z11) {
                            strName = "UTF8";
                        } else {
                            strName = g.f2273a;
                        }
                    } else if (!(i22 == 2 && i21 == 2) && i16 * 10 < i9) {
                        strName = "ISO8859_1";
                    } else {
                        strName = "SJIS";
                    }
                }
            } else {
                z8 = true;
                if (i9 <= 3) {
                    z9 = false;
                } else {
                    z9 = false;
                }
                z10 = true;
                z11 = true;
                int i27 = 0;
                i10 = 0;
                i11 = 0;
                i12 = 0;
                i13 = 0;
                i14 = 0;
                i15 = 0;
                int i28 = 0;
                i16 = 0;
                int i29 = 0;
                int i210 = 0;
                while (i10 < i9) {
                    b9 = bArr[i10];
                    z14 = z8;
                    i17 = b9 & UByte.MAX_VALUE;
                    if (z11) {
                        z15 = z9;
                    } else {
                        if (i11 > 0) {
                            z15 = z9;
                            if ((b9 & ByteCompanionObject.MIN_VALUE) != 0) {
                                if ((b9 & 64) != 0) {
                                    i18 = i11 + 1;
                                    if ((b9 & 32) == 0) {
                                        i13++;
                                    } else {
                                        i18 = i11 + 2;
                                        if ((b9 & 16) == 0) {
                                            i14++;
                                        } else {
                                            i11 += 3;
                                            if ((b9 & 8) == 0) {
                                                i15++;
                                            }
                                        }
                                    }
                                    i11 = i18;
                                }
                            }
                        } else if ((b9 & ByteCompanionObject.MIN_VALUE) != 0) {
                            i11--;
                            z15 = z9;
                        } else {
                            z15 = z9;
                        }
                        z11 = false;
                    }
                    if (!z14) {
                        z16 = z14;
                    } else {
                        if (i17 > 127) {
                        }
                        if (i17 > 159) {
                            i16++;
                        }
                        z16 = z14;
                    }
                    if (z10) {
                        z17 = z16;
                    } else if (i12 > 0) {
                        z17 = z16;
                        if (i17 >= 64) {
                            z10 = false;
                        } else {
                            z10 = false;
                        }
                    } else {
                        z17 = z16;
                        if (i17 != 128) {
                            z10 = false;
                        } else {
                            z10 = false;
                        }
                    }
                    i10++;
                    z8 = z17;
                    z9 = z15;
                }
                z12 = z8;
                boolean z19 = z9;
                if (z11) {
                    z11 = false;
                }
                if (z10) {
                    z13 = z10;
                } else {
                    z13 = z10;
                }
                if (!z11) {
                    if (!z13) {
                        if (z12) {
                            if (z12) {
                                strName = "ISO8859_1";
                            } else if (z13) {
                                strName = "SJIS";
                            } else if (z11) {
                                strName = "UTF8";
                            } else {
                                strName = g.f2273a;
                            }
                        } else if (z12) {
                            strName = "ISO8859_1";
                        } else if (z13) {
                            strName = "SJIS";
                        } else if (z11) {
                            strName = "UTF8";
                        } else {
                            strName = g.f2273a;
                        }
                    } else if (z12) {
                        if (z12) {
                            strName = "ISO8859_1";
                        } else if (z13) {
                            strName = "SJIS";
                        } else if (z11) {
                            strName = "UTF8";
                        } else {
                            strName = g.f2273a;
                        }
                    } else if (z12) {
                        strName = "ISO8859_1";
                    } else if (z13) {
                        strName = "SJIS";
                    } else if (z11) {
                        strName = "UTF8";
                    } else {
                        strName = g.f2273a;
                    }
                } else if (!z13) {
                    if (z12) {
                        if (z12) {
                            strName = "ISO8859_1";
                        } else if (z13) {
                            strName = "SJIS";
                        } else if (z11) {
                            strName = "UTF8";
                        } else {
                            strName = g.f2273a;
                        }
                    } else if (z12) {
                        strName = "ISO8859_1";
                    } else if (z13) {
                        strName = "SJIS";
                    } else if (z11) {
                        strName = "UTF8";
                    } else {
                        strName = g.f2273a;
                    }
                } else if (z12) {
                    if (z12) {
                        strName = "ISO8859_1";
                    } else if (z13) {
                        strName = "SJIS";
                    } else if (z11) {
                        strName = "UTF8";
                    } else {
                        strName = g.f2273a;
                    }
                } else if (z12) {
                    strName = "ISO8859_1";
                } else if (z13) {
                    strName = "SJIS";
                } else if (z11) {
                    strName = "UTF8";
                } else {
                    strName = g.f2273a;
                }
            }
        } else {
            strName = cVar.name();
        }
        try {
            sb.append(new String(bArr, strName));
            arrayList.add(bArr);
        } catch (UnsupportedEncodingException unused) {
            throw z5.e.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(s sVar, StringBuilder sb, int i9) throws z5.e {
        if (i9 * 13 > sVar.a()) {
            throw z5.e.a();
        }
        byte[] bArr = new byte[i9 * 2];
        int i10 = 0;
        while (i9 > 0) {
            int iB = sVar.b(13);
            int i11 = (iB % 96) | ((iB / 96) << 8);
            int i12 = i11 + (i11 < 2560 ? 41377 : 42657);
            bArr[i10] = (byte) (i12 >> 8);
            bArr[i10 + 1] = (byte) i12;
            i10 += 2;
            i9--;
        }
        try {
            sb.append(new String(bArr, "GB2312"));
        } catch (UnsupportedEncodingException unused) {
            throw z5.e.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(s sVar, StringBuilder sb, int i9) throws z5.e {
        if (i9 * 13 > sVar.a()) {
            throw z5.e.a();
        }
        byte[] bArr = new byte[i9 * 2];
        int i10 = 0;
        while (i9 > 0) {
            int iB = sVar.b(13);
            int i11 = (iB % 192) | ((iB / 192) << 8);
            int i12 = i11 + (i11 < 7936 ? 33088 : 49472);
            bArr[i10] = (byte) (i12 >> 8);
            bArr[i10 + 1] = (byte) i12;
            i10 += 2;
            i9--;
        }
        try {
            sb.append(new String(bArr, "SJIS"));
        } catch (UnsupportedEncodingException unused) {
            throw z5.e.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(s sVar, StringBuilder sb, int i9) throws z5.e {
        while (i9 >= 3) {
            if (sVar.a() < 10) {
                throw z5.e.a();
            }
            int iB = sVar.b(10);
            if (iB >= 1000) {
                throw z5.e.a();
            }
            sb.append(f(iB / 100));
            sb.append(f((iB / 10) % 10));
            sb.append(f(iB % 10));
            i9 -= 3;
        }
        if (i9 == 2) {
            if (sVar.a() < 7) {
                throw z5.e.a();
            }
            int iB2 = sVar.b(7);
            if (iB2 >= 100) {
                throw z5.e.a();
            }
            sb.append(f(iB2 / 10));
            sb.append(f(iB2 % 10));
            return;
        }
        if (i9 == 1) {
            if (sVar.a() < 4) {
                throw z5.e.a();
            }
            int iB3 = sVar.b(4);
            if (iB3 >= 10) {
                throw z5.e.a();
            }
            sb.append(f(iB3));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static char f(int i9) throws z5.e {
        char[] cArr = f5928a;
        if (i9 < cArr.length) {
            return cArr[i9];
        }
        throw z5.e.a();
    }
}
