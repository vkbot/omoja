package p021b6;

import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.AbstractC1034g;
import java.util.Arrays;
import org.apache.commons.net.SocketClient;
import p007a6.C0025a;
import p063f6.C1578b;
import p063f6.C1580d;
import p083h6.C1670a;
import p083h6.C1672c;
import p099j1.C1929i;
import p184r5.C3105c;
import p260z5.AbstractC3756l;
import p260z5.C3749e;

/* JADX INFO: renamed from: b6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0904a {

    /* JADX INFO: renamed from: b */
    public static final String[] f694b = {"CTRL_PS", " ", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* JADX INFO: renamed from: c */
    public static final String[] f695c = {"CTRL_PS", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* JADX INFO: renamed from: d */
    public static final String[] f696d = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};

    /* JADX INFO: renamed from: e */
    public static final String[] f697e = {"", "\r", SocketClient.NETASCII_EOL, ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};

    /* JADX INFO: renamed from: f */
    public static final String[] f698f = {"CTRL_PS", " ", "0", "1", ExifInterface.GPS_MEASUREMENT_2D, ExifInterface.GPS_MEASUREMENT_3D, "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* JADX INFO: renamed from: a */
    public C0025a f699a;

    /* JADX INFO: renamed from: b */
    public static int m1031b(boolean[] zArr, int i10, int i11) {
        int i12 = 0;
        for (int i13 = i10; i13 < i10 + i11; i13++) {
            i12 <<= 1;
            if (zArr[i13]) {
                i12 |= 1;
            }
        }
        return i12;
    }

    /* JADX INFO: renamed from: a */
    public final C1580d m1032a(C0025a c0025a) throws C3749e {
        int i10;
        C1670a c1670a;
        int i11;
        String str;
        this.f699a = c0025a;
        C1578b c1578b = (C1578b) c0025a.f91d;
        boolean z9 = c0025a.f88a;
        int i12 = c0025a.f90c;
        int i13 = (z9 ? 11 : 14) + (i12 << 2);
        int[] iArr = new int[i13];
        int i14 = ((z9 ? 88 : 112) + (i12 << 4)) * i12;
        boolean[] zArr = new boolean[i14];
        int i15 = 2;
        int i16 = 1;
        if (z9) {
            for (int i17 = 0; i17 < i13; i17++) {
                iArr[i17] = i17;
            }
        } else {
            int i18 = i13 / 2;
            int i19 = ((((i18 - 1) / 15) * 2) + (i13 + 1)) / 2;
            for (int i20 = 0; i20 < i18; i20++) {
                int i21 = (i20 / 15) + i20;
                iArr[(i18 - i20) - 1] = (i19 - i21) - 1;
                iArr[i18 + i20] = i21 + i19 + 1;
            }
        }
        int i22 = 0;
        int i23 = 0;
        while (true) {
            i10 = 12;
            if (i22 >= i12) {
                break;
            }
            int i24 = ((i12 - i22) << i15) + (z9 ? 9 : 12);
            int i25 = i22 << 1;
            int i26 = (i13 - 1) - i25;
            int i27 = 0;
            while (i27 < i24) {
                int i28 = i27 << 1;
                int i29 = 0;
                while (i29 < i15) {
                    int i30 = i25 + i29;
                    int i31 = i16;
                    int i32 = i25 + i27;
                    zArr[i23 + i28 + i29] = c1578b.m2658b(iArr[i30], iArr[i32]);
                    int i33 = i26 - i29;
                    zArr[(i24 * 2) + i23 + i28 + i29] = c1578b.m2658b(iArr[i32], iArr[i33]);
                    int i34 = i26 - i27;
                    zArr[(i24 * 4) + i23 + i28 + i29] = c1578b.m2658b(iArr[i33], iArr[i34]);
                    zArr[(i24 * 6) + i23 + i28 + i29] = c1578b.m2658b(iArr[i34], iArr[i30]);
                    i29++;
                    i16 = i31;
                    i12 = i12;
                    i15 = 2;
                }
                i27++;
                i15 = 2;
            }
            i23 += i24 << 3;
            i22++;
            i12 = i12;
            i15 = 2;
        }
        int i35 = i16;
        C0025a c0025a2 = this.f699a;
        int i36 = c0025a2.f90c;
        int i37 = 8;
        if (i36 <= 2) {
            c1670a = C1670a.f4275j;
            i10 = 6;
        } else if (i36 <= 8) {
            c1670a = C1670a.f4279n;
            i10 = 8;
        } else if (i36 <= 22) {
            c1670a = C1670a.f4274i;
            i10 = 10;
        } else {
            c1670a = C1670a.f4273h;
        }
        int i38 = c0025a2.f89b;
        int i39 = i14 / i10;
        if (i39 < i38) {
            throw C3749e.m5980a();
        }
        int i40 = i14 % i10;
        int[] iArr2 = new int[i39];
        int i41 = 0;
        while (i41 < i39) {
            iArr2[i41] = m1031b(zArr, i40, i10);
            i41++;
            i40 += i10;
        }
        try {
            new C3105c(19, c1670a).m4941f(iArr2, i39 - i38);
            int i42 = i35 << i10;
            int i43 = i42 - 1;
            int i44 = 0;
            int i45 = 0;
            while (i44 < i38) {
                int i46 = iArr2[i44];
                if (i46 == 0 || i46 == i43) {
                    throw C3749e.m5980a();
                }
                if (i46 == i35 || i46 == i42 - 2) {
                    i45++;
                }
                i44++;
                i35 = 1;
            }
            int i47 = (i38 * i10) - i45;
            boolean[] zArr2 = new boolean[i47];
            int i48 = 0;
            for (int i49 = 0; i49 < i38; i49++) {
                int i50 = iArr2[i49];
                int i51 = 1;
                if (i50 == 1 || i50 == i42 - 2) {
                    Arrays.fill(zArr2, i48, (i48 + i10) - 1, i50 > 1);
                    i48 = (i10 - 1) + i48;
                } else {
                    int i52 = i10 - 1;
                    while (i52 >= 0) {
                        int i53 = i48 + 1;
                        zArr2[i48] = (i50 & (i51 << i52)) != 0;
                        i52--;
                        i48 = i53;
                        i51 = 1;
                    }
                }
            }
            int i54 = (i47 + 7) / 8;
            byte[] bArr = new byte[i54];
            for (int i55 = 0; i55 < i54; i55++) {
                int i56 = i55 << 3;
                int i57 = i47 - i56;
                bArr[i55] = (byte) (i57 >= 8 ? m1031b(zArr2, i56, 8) : m1031b(zArr2, i56, i57) << (8 - i57));
            }
            StringBuilder sb = new StringBuilder(20);
            int i58 = 1;
            int i59 = 0;
            int i60 = 1;
            while (i59 < i47) {
                if (i60 != 6) {
                    int i61 = i60 == 4 ? 4 : 5;
                    if (i47 - i59 < i61) {
                        break;
                    }
                    int iM1031b = m1031b(zArr2, i59, i61);
                    i59 += i61;
                    int iM1296c = AbstractC1034g.m1296c(i60);
                    if (iM1296c == 0) {
                        i11 = 2;
                        str = f694b[iM1031b];
                    } else if (iM1296c != 1) {
                        i11 = 2;
                        if (iM1296c == 2) {
                            str = f696d[iM1031b];
                        } else if (iM1296c == 3) {
                            str = f698f[iM1031b];
                        } else {
                            if (iM1296c != 4) {
                                C1929i.m3030l("Bad table");
                                return null;
                            }
                            str = f697e[iM1031b];
                        }
                    } else {
                        i11 = 2;
                        str = f695c[iM1031b];
                    }
                    if (str.startsWith("CTRL_")) {
                        char cCharAt = str.charAt(5);
                        if (cCharAt == 'B') {
                            i58 = 6;
                        } else if (cCharAt == 'D') {
                            i58 = 4;
                        } else if (cCharAt == 'P') {
                            i58 = 5;
                        } else if (cCharAt != 'L') {
                            i58 = cCharAt != 'M' ? 1 : 3;
                        } else {
                            i58 = i11;
                        }
                        if (str.charAt(6) != 'L') {
                            int i62 = i60;
                            i60 = i58;
                            i58 = i62;
                        }
                        i37 = 8;
                    } else {
                        sb.append(str);
                    }
                    i60 = i58;
                    i37 = 8;
                } else {
                    if (i47 - i59 < 5) {
                        break;
                    }
                    int iM1031b2 = m1031b(zArr2, i59, 5);
                    int i63 = i59 + 5;
                    if (iM1031b2 == 0) {
                        if (i47 - i63 < 11) {
                            break;
                        }
                        iM1031b2 = m1031b(zArr2, i63, 11) + 31;
                        i63 = i59 + 16;
                    }
                    int i64 = 0;
                    while (true) {
                        if (i64 >= iM1031b2) {
                            i59 = i63;
                            break;
                        }
                        if (i47 - i63 < i37) {
                            i59 = i47;
                            break;
                        }
                        sb.append((char) m1031b(zArr2, i63, i37));
                        i63 += 8;
                        i64++;
                    }
                    i60 = i58;
                }
            }
            return new C1580d(bArr, sb.toString(), null, null);
        } catch (C1672c e) {
            C3749e c3749e = C3749e.f11185d;
            if (AbstractC3756l.f11196b) {
                throw new C3749e(e);
            }
            throw C3749e.f11185d;
        }
    }
}
