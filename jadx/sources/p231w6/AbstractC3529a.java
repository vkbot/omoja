package p231w6;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Map;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import p022b7.C0923s;
import p063f6.AbstractC1583g;
import p063f6.EnumC1579c;
import p260z5.C3749e;
import p260z5.EnumC3748d;

/* JADX INFO: renamed from: w6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3529a {

    /* JADX INFO: renamed from: a */
    public static final char[] f10481a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX INFO: renamed from: a */
    public static void m5628a(C0923s c0923s, StringBuilder sb, int i10, boolean z9) throws C3749e {
        while (i10 > 1) {
            if (c0923s.m1060a() < 11) {
                throw C3749e.m5980a();
            }
            int iM1061b = c0923s.m1061b(11);
            sb.append(m5633f(iM1061b / 45));
            sb.append(m5633f(iM1061b % 45));
            i10 -= 2;
        }
        if (i10 == 1) {
            if (c0923s.m1060a() < 6) {
                throw C3749e.m5980a();
            }
            sb.append(m5633f(c0923s.m1061b(6)));
        }
        if (z9) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i11 = length + 1;
                        if (sb.charAt(i11) == '%') {
                            sb.deleteCharAt(i11);
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
    /* JADX INFO: renamed from: b */
    public static void m5629b(C0923s c0923s, StringBuilder sb, int i10, EnumC1579c enumC1579c, ArrayList arrayList, Map map) throws C3749e {
        String strName;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z13;
        boolean z14;
        byte b10;
        boolean z15;
        int i18;
        boolean z16;
        boolean z17;
        boolean z18;
        int i19;
        if ((i10 << 3) > c0923s.m1060a()) {
            throw C3749e.m5980a();
        }
        byte[] bArr = new byte[i10];
        int i20 = 0;
        for (int i21 = 0; i21 < i10; i21++) {
            bArr[i21] = (byte) c0923s.m1061b(8);
        }
        if (enumC1579c == null) {
            String str = AbstractC1583g.f3930a;
            if (map != null) {
                EnumC3748d enumC3748d = EnumC3748d.f11176f;
                if (map.containsKey(enumC3748d)) {
                    strName = map.get(enumC3748d).toString();
                } else {
                    z9 = true;
                    if (i10 <= 3 && bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = true;
                    z12 = true;
                    int i22 = 0;
                    i11 = 0;
                    i12 = 0;
                    i13 = 0;
                    i14 = 0;
                    i15 = 0;
                    i16 = 0;
                    int i23 = 0;
                    i17 = 0;
                    int i24 = 0;
                    int i25 = 0;
                    while (i11 < i10 && (z9 || z11 || z12)) {
                        b10 = bArr[i11];
                        z15 = z9;
                        i18 = b10 & UByte.MAX_VALUE;
                        if (z12) {
                            if (i12 > 0) {
                                z16 = z10;
                                if ((b10 & ByteCompanionObject.MIN_VALUE) != 0) {
                                    if ((b10 & 64) != 0) {
                                        i19 = i12 + 1;
                                        if ((b10 & 32) == 0) {
                                            i14++;
                                        } else {
                                            i19 = i12 + 2;
                                            if ((b10 & 16) == 0) {
                                                i15++;
                                            } else {
                                                i12 += 3;
                                                if ((b10 & 8) == 0) {
                                                    i16++;
                                                }
                                            }
                                        }
                                        i12 = i19;
                                    }
                                }
                            } else if ((b10 & ByteCompanionObject.MIN_VALUE) != 0) {
                                i12--;
                                z16 = z10;
                            } else {
                                z16 = z10;
                            }
                            z12 = false;
                        } else {
                            z16 = z10;
                        }
                        if (!z15) {
                            z17 = z15;
                        } else if (i18 > 127 || i18 >= 160) {
                            if (i18 > 159 && (i18 < 192 || i18 == 215 || i18 == 247)) {
                                i17++;
                            }
                            z17 = z15;
                        } else {
                            z17 = false;
                        }
                        if (z11) {
                            z18 = z17;
                        } else if (i13 > 0) {
                            z18 = z17;
                            if (i18 >= 64 || i18 == 127 || i18 > 252) {
                                z11 = false;
                            } else {
                                i13--;
                            }
                        } else {
                            z18 = z17;
                            if (i18 != 128 || i18 == 160 || i18 > 239) {
                                z11 = false;
                            } else if (i18 <= 160 || i18 >= 224) {
                                if (i18 > 127) {
                                    i13++;
                                    int i26 = i24 + 1;
                                    if (i26 > i20) {
                                        i20 = i26;
                                        i24 = i20;
                                    } else {
                                        i24 = i26;
                                    }
                                } else {
                                    i24 = 0;
                                }
                                i25 = 0;
                            } else {
                                i22++;
                                int i27 = i25 + 1;
                                if (i27 > i23) {
                                    i23 = i27;
                                    i25 = i23;
                                } else {
                                    i25 = i27;
                                }
                                i24 = 0;
                            }
                        }
                        i11++;
                        z9 = z18;
                        z10 = z16;
                    }
                    z13 = z9;
                    boolean z19 = z10;
                    if (z12 && i12 > 0) {
                        z12 = false;
                    }
                    if (z11 || i13 <= 0) {
                        z14 = z11;
                    } else {
                        z14 = false;
                    }
                    if (!z12 && (z19 || i14 + i15 + i16 > 0)) {
                        strName = "UTF8";
                    } else if (!z14 && (AbstractC1583g.f3931b || i23 >= 3 || i20 >= 3)) {
                        strName = "SJIS";
                    } else if (z13 || !z14) {
                        if (z13) {
                            strName = "ISO8859_1";
                        } else if (z14) {
                            strName = "SJIS";
                        } else if (z12) {
                            strName = "UTF8";
                        } else {
                            strName = AbstractC1583g.f3930a;
                        }
                    } else if (!(i23 == 2 && i22 == 2) && i17 * 10 < i10) {
                        strName = "ISO8859_1";
                    } else {
                        strName = "SJIS";
                    }
                }
            } else {
                z9 = true;
                if (i10 <= 3) {
                    z10 = false;
                } else {
                    z10 = false;
                }
                z11 = true;
                z12 = true;
                int i28 = 0;
                i11 = 0;
                i12 = 0;
                i13 = 0;
                i14 = 0;
                i15 = 0;
                i16 = 0;
                int i29 = 0;
                i17 = 0;
                int i210 = 0;
                int i211 = 0;
                while (i11 < i10) {
                    b10 = bArr[i11];
                    z15 = z9;
                    i18 = b10 & UByte.MAX_VALUE;
                    if (z12) {
                        z16 = z10;
                    } else {
                        if (i12 > 0) {
                            z16 = z10;
                            if ((b10 & ByteCompanionObject.MIN_VALUE) != 0) {
                                if ((b10 & 64) != 0) {
                                    i19 = i12 + 1;
                                    if ((b10 & 32) == 0) {
                                        i14++;
                                    } else {
                                        i19 = i12 + 2;
                                        if ((b10 & 16) == 0) {
                                            i15++;
                                        } else {
                                            i12 += 3;
                                            if ((b10 & 8) == 0) {
                                                i16++;
                                            }
                                        }
                                    }
                                    i12 = i19;
                                }
                            }
                        } else if ((b10 & ByteCompanionObject.MIN_VALUE) != 0) {
                            i12--;
                            z16 = z10;
                        } else {
                            z16 = z10;
                        }
                        z12 = false;
                    }
                    if (!z15) {
                        z17 = z15;
                    } else {
                        if (i18 > 127) {
                        }
                        if (i18 > 159) {
                            i17++;
                        }
                        z17 = z15;
                    }
                    if (z11) {
                        z18 = z17;
                    } else if (i13 > 0) {
                        z18 = z17;
                        if (i18 >= 64) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                    } else {
                        z18 = z17;
                        if (i18 != 128) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                    }
                    i11++;
                    z9 = z18;
                    z10 = z16;
                }
                z13 = z9;
                boolean z110 = z10;
                if (z12) {
                    z12 = false;
                }
                if (z11) {
                    z14 = z11;
                } else {
                    z14 = z11;
                }
                if (!z12) {
                    if (!z14) {
                        if (z13) {
                            if (z13) {
                                strName = "ISO8859_1";
                            } else if (z14) {
                                strName = "SJIS";
                            } else if (z12) {
                                strName = "UTF8";
                            } else {
                                strName = AbstractC1583g.f3930a;
                            }
                        } else if (z13) {
                            strName = "ISO8859_1";
                        } else if (z14) {
                            strName = "SJIS";
                        } else if (z12) {
                            strName = "UTF8";
                        } else {
                            strName = AbstractC1583g.f3930a;
                        }
                    } else if (z13) {
                        if (z13) {
                            strName = "ISO8859_1";
                        } else if (z14) {
                            strName = "SJIS";
                        } else if (z12) {
                            strName = "UTF8";
                        } else {
                            strName = AbstractC1583g.f3930a;
                        }
                    } else if (z13) {
                        strName = "ISO8859_1";
                    } else if (z14) {
                        strName = "SJIS";
                    } else if (z12) {
                        strName = "UTF8";
                    } else {
                        strName = AbstractC1583g.f3930a;
                    }
                } else if (!z14) {
                    if (z13) {
                        if (z13) {
                            strName = "ISO8859_1";
                        } else if (z14) {
                            strName = "SJIS";
                        } else if (z12) {
                            strName = "UTF8";
                        } else {
                            strName = AbstractC1583g.f3930a;
                        }
                    } else if (z13) {
                        strName = "ISO8859_1";
                    } else if (z14) {
                        strName = "SJIS";
                    } else if (z12) {
                        strName = "UTF8";
                    } else {
                        strName = AbstractC1583g.f3930a;
                    }
                } else if (z13) {
                    if (z13) {
                        strName = "ISO8859_1";
                    } else if (z14) {
                        strName = "SJIS";
                    } else if (z12) {
                        strName = "UTF8";
                    } else {
                        strName = AbstractC1583g.f3930a;
                    }
                } else if (z13) {
                    strName = "ISO8859_1";
                } else if (z14) {
                    strName = "SJIS";
                } else if (z12) {
                    strName = "UTF8";
                } else {
                    strName = AbstractC1583g.f3930a;
                }
            }
        } else {
            strName = enumC1579c.name();
        }
        try {
            sb.append(new String(bArr, strName));
            arrayList.add(bArr);
        } catch (UnsupportedEncodingException unused) {
            throw C3749e.m5980a();
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m5630c(C0923s c0923s, StringBuilder sb, int i10) throws C3749e {
        if (i10 * 13 > c0923s.m1060a()) {
            throw C3749e.m5980a();
        }
        byte[] bArr = new byte[i10 * 2];
        int i11 = 0;
        while (i10 > 0) {
            int iM1061b = c0923s.m1061b(13);
            int i12 = (iM1061b % 96) | ((iM1061b / 96) << 8);
            int i13 = i12 + (i12 < 2560 ? 41377 : 42657);
            bArr[i11] = (byte) (i13 >> 8);
            bArr[i11 + 1] = (byte) i13;
            i11 += 2;
            i10--;
        }
        try {
            sb.append(new String(bArr, "GB2312"));
        } catch (UnsupportedEncodingException unused) {
            throw C3749e.m5980a();
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m5631d(C0923s c0923s, StringBuilder sb, int i10) throws C3749e {
        if (i10 * 13 > c0923s.m1060a()) {
            throw C3749e.m5980a();
        }
        byte[] bArr = new byte[i10 * 2];
        int i11 = 0;
        while (i10 > 0) {
            int iM1061b = c0923s.m1061b(13);
            int i12 = (iM1061b % 192) | ((iM1061b / 192) << 8);
            int i13 = i12 + (i12 < 7936 ? 33088 : 49472);
            bArr[i11] = (byte) (i13 >> 8);
            bArr[i11 + 1] = (byte) i13;
            i11 += 2;
            i10--;
        }
        try {
            sb.append(new String(bArr, "SJIS"));
        } catch (UnsupportedEncodingException unused) {
            throw C3749e.m5980a();
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m5632e(C0923s c0923s, StringBuilder sb, int i10) throws C3749e {
        while (i10 >= 3) {
            if (c0923s.m1060a() < 10) {
                throw C3749e.m5980a();
            }
            int iM1061b = c0923s.m1061b(10);
            if (iM1061b >= 1000) {
                throw C3749e.m5980a();
            }
            sb.append(m5633f(iM1061b / 100));
            sb.append(m5633f((iM1061b / 10) % 10));
            sb.append(m5633f(iM1061b % 10));
            i10 -= 3;
        }
        if (i10 == 2) {
            if (c0923s.m1060a() < 7) {
                throw C3749e.m5980a();
            }
            int iM1061b2 = c0923s.m1061b(7);
            if (iM1061b2 >= 100) {
                throw C3749e.m5980a();
            }
            sb.append(m5633f(iM1061b2 / 10));
            sb.append(m5633f(iM1061b2 % 10));
            return;
        }
        if (i10 == 1) {
            if (c0923s.m1060a() < 4) {
                throw C3749e.m5980a();
            }
            int iM1061b3 = c0923s.m1061b(4);
            if (iM1061b3 >= 10) {
                throw C3749e.m5980a();
            }
            sb.append(m5633f(iM1061b3));
        }
    }

    /* JADX INFO: renamed from: f */
    public static char m5633f(int i10) throws C3749e {
        char[] cArr = f10481a;
        if (i10 < cArr.length) {
            return cArr[i10];
        }
        throw C3749e.m5980a();
    }
}
