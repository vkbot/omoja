package b6;

import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.g;
import f6.b;
import f6.d;
import j1.i;
import java.util.Arrays;
import r5.c;
import z5.e;
import z5.l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f329b = {"CTRL_PS", " ", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    public static final String[] c = {"CTRL_PS", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    public static final String[] d = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    public static final String[] e = {"", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f330f = {"CTRL_PS", " ", "0", "1", ExifInterface.GPS_MEASUREMENT_2D, ExifInterface.GPS_MEASUREMENT_3D, "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a6.a f331a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(boolean[] zArr, int i9, int i10) {
        int i11 = 0;
        for (int i12 = i9; i12 < i9 + i10; i12++) {
            i11 <<= 1;
            if (zArr[i12]) {
                i11 |= 1;
            }
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d a(a6.a aVar) throws e {
        int i9;
        h6.a aVar2;
        int i10;
        String str;
        this.f331a = aVar;
        b bVar = (b) aVar.d;
        boolean z8 = aVar.f51a;
        int i11 = aVar.c;
        int i12 = (z8 ? 11 : 14) + (i11 << 2);
        int[] iArr = new int[i12];
        int i13 = ((z8 ? 88 : 112) + (i11 << 4)) * i11;
        boolean[] zArr = new boolean[i13];
        int i14 = 2;
        int i15 = 1;
        if (z8) {
            for (int i16 = 0; i16 < i12; i16++) {
                iArr[i16] = i16;
            }
        } else {
            int i17 = i12 / 2;
            int i18 = ((((i17 - 1) / 15) * 2) + (i12 + 1)) / 2;
            for (int i19 = 0; i19 < i17; i19++) {
                int i20 = (i19 / 15) + i19;
                iArr[(i17 - i19) - 1] = (i18 - i20) - 1;
                iArr[i17 + i19] = i20 + i18 + 1;
            }
        }
        int i21 = 0;
        int i22 = 0;
        while (true) {
            i9 = 12;
            if (i21 >= i11) {
                break;
            }
            int i23 = ((i11 - i21) << i14) + (z8 ? 9 : 12);
            int i24 = i21 << 1;
            int i25 = (i12 - 1) - i24;
            int i26 = 0;
            while (i26 < i23) {
                int i27 = i26 << 1;
                int i28 = 0;
                while (i28 < i14) {
                    int i29 = i24 + i28;
                    int i30 = i15;
                    int i31 = i24 + i26;
                    zArr[i22 + i27 + i28] = bVar.b(iArr[i29], iArr[i31]);
                    int i32 = i25 - i28;
                    zArr[(i23 * 2) + i22 + i27 + i28] = bVar.b(iArr[i31], iArr[i32]);
                    int i33 = i25 - i26;
                    zArr[(i23 * 4) + i22 + i27 + i28] = bVar.b(iArr[i32], iArr[i33]);
                    zArr[(i23 * 6) + i22 + i27 + i28] = bVar.b(iArr[i33], iArr[i29]);
                    i28++;
                    i15 = i30;
                    i11 = i11;
                    i14 = 2;
                }
                i26++;
                i14 = 2;
            }
            i22 += i23 << 3;
            i21++;
            i11 = i11;
            i14 = 2;
        }
        int i34 = i15;
        a6.a aVar3 = this.f331a;
        int i35 = aVar3.c;
        int i36 = 8;
        if (i35 <= 2) {
            aVar2 = h6.a.f2476j;
            i9 = 6;
        } else if (i35 <= 8) {
            aVar2 = h6.a.f2480n;
            i9 = 8;
        } else if (i35 <= 22) {
            aVar2 = h6.a.f2475i;
            i9 = 10;
        } else {
            aVar2 = h6.a.f2474h;
        }
        int i37 = aVar3.f52b;
        int i38 = i13 / i9;
        if (i38 < i37) {
            throw e.a();
        }
        int i39 = i13 % i9;
        int[] iArr2 = new int[i38];
        int i40 = 0;
        while (i40 < i38) {
            iArr2[i40] = b(zArr, i39, i9);
            i40++;
            i39 += i9;
        }
        try {
            new c(19, aVar2).f(iArr2, i38 - i37);
            int i41 = i34 << i9;
            int i42 = i41 - 1;
            int i43 = 0;
            int i44 = 0;
            while (i43 < i37) {
                int i45 = iArr2[i43];
                if (i45 == 0 || i45 == i42) {
                    throw e.a();
                }
                if (i45 == i34 || i45 == i41 - 2) {
                    i44++;
                }
                i43++;
                i34 = 1;
            }
            int i46 = (i37 * i9) - i44;
            boolean[] zArr2 = new boolean[i46];
            int i47 = 0;
            for (int i48 = 0; i48 < i37; i48++) {
                int i49 = iArr2[i48];
                int i50 = 1;
                if (i49 == 1 || i49 == i41 - 2) {
                    Arrays.fill(zArr2, i47, (i47 + i9) - 1, i49 > 1);
                    i47 = (i9 - 1) + i47;
                } else {
                    int i51 = i9 - 1;
                    while (i51 >= 0) {
                        int i52 = i47 + 1;
                        zArr2[i47] = (i49 & (i50 << i51)) != 0;
                        i51--;
                        i47 = i52;
                        i50 = 1;
                    }
                }
            }
            int i53 = (i46 + 7) / 8;
            byte[] bArr = new byte[i53];
            for (int i54 = 0; i54 < i53; i54++) {
                int i55 = i54 << 3;
                int i56 = i46 - i55;
                bArr[i54] = (byte) (i56 >= 8 ? b(zArr2, i55, 8) : b(zArr2, i55, i56) << (8 - i56));
            }
            StringBuilder sb = new StringBuilder(20);
            int i57 = 1;
            int i58 = 0;
            int i59 = 1;
            while (i58 < i46) {
                if (i59 != 6) {
                    int i60 = i59 == 4 ? 4 : 5;
                    if (i46 - i58 < i60) {
                        break;
                    }
                    int iB = b(zArr2, i58, i60);
                    i58 += i60;
                    int iC = g.c(i59);
                    if (iC == 0) {
                        i10 = 2;
                        str = f329b[iB];
                    } else if (iC != 1) {
                        i10 = 2;
                        if (iC == 2) {
                            str = d[iB];
                        } else if (iC == 3) {
                            str = f330f[iB];
                        } else {
                            if (iC != 4) {
                                i.l("Bad table");
                                return null;
                            }
                            str = e[iB];
                        }
                    } else {
                        i10 = 2;
                        str = c[iB];
                    }
                    if (str.startsWith("CTRL_")) {
                        char cCharAt = str.charAt(5);
                        if (cCharAt == 'B') {
                            i57 = 6;
                        } else if (cCharAt == 'D') {
                            i57 = 4;
                        } else if (cCharAt == 'P') {
                            i57 = 5;
                        } else if (cCharAt != 'L') {
                            i57 = cCharAt != 'M' ? 1 : 3;
                        } else {
                            i57 = i10;
                        }
                        if (str.charAt(6) != 'L') {
                            int i61 = i59;
                            i59 = i57;
                            i57 = i61;
                        }
                        i36 = 8;
                    } else {
                        sb.append(str);
                    }
                    i59 = i57;
                    i36 = 8;
                } else {
                    if (i46 - i58 < 5) {
                        break;
                    }
                    int iB2 = b(zArr2, i58, 5);
                    int i62 = i58 + 5;
                    if (iB2 == 0) {
                        if (i46 - i62 < 11) {
                            break;
                        }
                        iB2 = b(zArr2, i62, 11) + 31;
                        i62 = i58 + 16;
                    }
                    int i63 = 0;
                    while (true) {
                        if (i63 >= iB2) {
                            i58 = i62;
                            break;
                        }
                        if (i46 - i62 < i36) {
                            i58 = i46;
                            break;
                        }
                        sb.append((char) b(zArr2, i62, i36));
                        i62 += 8;
                        i63++;
                    }
                    i59 = i57;
                }
            }
            return new d(bArr, sb.toString(), null, null);
        } catch (h6.c e6) {
            e eVar = e.d;
            if (l.f6328b) {
                throw new e(e6);
            }
            throw e.d;
        }
    }
}
