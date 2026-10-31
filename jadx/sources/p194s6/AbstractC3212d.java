package p194s6;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bumptech.glide.AbstractC1034g;
import java.math.BigInteger;
import p260z5.C3749e;

/* JADX INFO: renamed from: s6.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3212d {

    /* JADX INFO: renamed from: a */
    public static final char[] f9392a = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();

    /* JADX INFO: renamed from: b */
    public static final char[] f9393b = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    /* JADX INFO: renamed from: c */
    public static final BigInteger[] f9394c;

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        f9394c = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = bigIntegerValueOf;
        int i10 = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = f9394c;
            if (i10 >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i10] = bigIntegerArr2[i10 - 1].multiply(bigIntegerValueOf);
            i10++;
        }
    }

    /* JADX INFO: renamed from: a */
    public static String m5145a(int[] iArr, int i10) throws C3749e {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i11 = 0; i11 < i10; i11++) {
            bigIntegerAdd = bigIntegerAdd.add(f9394c[(i10 - i11) - 1].multiply(BigInteger.valueOf(iArr[i11])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) == '1') {
            return string.substring(1);
        }
        throw C3749e.m5980a();
    }

    /* JADX WARN: Code duplicated, block: B:34:0x003a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0007 A[SYNTHETIC] */
    /* JADX INFO: renamed from: b */
    public static int m5146b(int[] iArr, int i10, StringBuilder sb) {
        int[] iArr2 = new int[15];
        boolean z9 = false;
        int i11 = 0;
        while (true) {
            int i12 = iArr[0];
            if (i10 < i12 && !z9) {
                int i13 = i10 + 1;
                int i14 = iArr[i10];
                if (i13 == i12) {
                    z9 = true;
                }
                if (i14 < 900) {
                    iArr2[i11] = i14;
                    i11++;
                } else {
                    if (i14 != 900 && i14 != 901 && i14 != 928) {
                        switch (i14) {
                            case 922:
                            case 923:
                            case 924:
                                z9 = true;
                                break;
                        }
                    } else {
                        z9 = true;
                    }
                    if (i11 % 15 != 0 || i14 == 902 || z9) {
                        if (i11 > 0) {
                            sb.append(m5145a(iArr2, i11));
                            i11 = 0;
                        }
                    }
                }
                i10 = i13;
                if (i11 % 15 != 0) {
                }
                if (i11 > 0) {
                    sb.append(m5145a(iArr2, i11));
                    i11 = 0;
                }
            }
        }
        return i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:46:0x0093  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d2  */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0035. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0038. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:81:0x00f0. Please report as an issue. */
    /* JADX INFO: renamed from: c */
    public static int m5147c(int[] iArr, int i10, StringBuilder sb) {
        char c;
        char c10;
        int i11;
        int i12 = 1;
        int i13 = (iArr[0] - i10) << 1;
        int[] iArr2 = new int[i13];
        int[] iArr3 = new int[i13];
        int i14 = i10;
        boolean z9 = false;
        int i15 = 0;
        while (i14 < iArr[0] && !z9) {
            int i16 = i14 + 1;
            int i17 = iArr[i14];
            if (i17 < 900) {
                iArr2[i15] = i17 / 30;
                iArr2[i15 + 1] = i17 % 30;
                i15 += 2;
            } else if (i17 != 913) {
                if (i17 != 928) {
                    switch (i17) {
                        case TypedValues.Custom.TYPE_INT /* 900 */:
                            iArr2[i15] = 900;
                            i15++;
                            break;
                        case TypedValues.Custom.TYPE_FLOAT /* 901 */:
                        case TypedValues.Custom.TYPE_COLOR /* 902 */:
                            break;
                        default:
                            switch (i17) {
                                case 922:
                                case 923:
                                case 924:
                                    break;
                                default:
                                    break;
                            }
                            break;
                    }
                }
                z9 = true;
            } else {
                iArr2[i15] = 913;
                i14 += 2;
                iArr3[i15] = iArr[i16];
                i15++;
            }
            i14 = i16;
        }
        int i18 = 0;
        int i19 = 1;
        int i20 = 1;
        while (i18 < i15) {
            int i21 = iArr2[i18];
            int iM1296c = AbstractC1034g.m1296c(i19);
            char c11 = ' ';
            if (iM1296c != 0) {
                if (iM1296c == i12) {
                    if (i21 < 26) {
                        i11 = i21 + 97;
                        c10 = (char) i11;
                    } else {
                        if (i21 == 900) {
                            i19 = 1;
                        } else if (i21 != 913) {
                            switch (i21) {
                                case 26:
                                    c10 = c11;
                                    break;
                                case 27:
                                    i20 = i19;
                                    c10 = 0;
                                    i19 = 5;
                                    break;
                                case 28:
                                    i19 = 3;
                                    break;
                                case 29:
                                    i20 = i19;
                                    i19 = 6;
                                    break;
                            }
                        } else {
                            sb.append((char) iArr3[i18]);
                        }
                        c = 913;
                        c10 = 0;
                    }
                    c = 913;
                } else if (iM1296c != 2) {
                    char[] cArr = f9392a;
                    if (iM1296c != 3) {
                        if (iM1296c != 4) {
                            if (iM1296c == 5) {
                                if (i21 < 29) {
                                    c11 = cArr[i21];
                                    i19 = i20;
                                    c10 = c11;
                                    c = 913;
                                } else if (i21 == 29 || i21 == 900) {
                                    c = 913;
                                    c10 = 0;
                                    i19 = 1;
                                } else {
                                    if (i21 == 913) {
                                        sb.append((char) iArr3[i18]);
                                    }
                                    i19 = i20;
                                }
                            }
                            c = 913;
                            c10 = 0;
                        } else {
                            if (i21 < 26) {
                                c10 = (char) (i21 + 65);
                                i19 = i20;
                            } else {
                                if (i21 != 26) {
                                    if (i21 != 900) {
                                        i19 = i20;
                                    } else {
                                        i19 = 1;
                                    }
                                    c = 913;
                                    c10 = 0;
                                }
                                i19 = i20;
                                c10 = c11;
                            }
                            c = 913;
                        }
                    } else if (i21 < 29) {
                        c11 = cArr[i21];
                        c10 = c11;
                        c = 913;
                    } else if (i21 == 29 || i21 == 900) {
                        c = 913;
                        c10 = 0;
                        i19 = 1;
                    } else {
                        if (i21 == 913) {
                            sb.append((char) iArr3[i18]);
                        }
                        c = 913;
                        c10 = 0;
                    }
                } else {
                    if (i21 < 25) {
                        c11 = f9393b[i21];
                    } else {
                        if (i21 != 900) {
                            if (i21 != 913) {
                                switch (i21) {
                                    case 25:
                                        i19 = 4;
                                        break;
                                    case 27:
                                        i19 = 2;
                                        break;
                                    case 29:
                                        i20 = i19;
                                        i19 = 6;
                                        break;
                                }
                            } else {
                                sb.append((char) iArr3[i18]);
                            }
                            c = 913;
                            c10 = 0;
                        }
                        c = 913;
                        c10 = 0;
                        i19 = 1;
                    }
                    c10 = c11;
                    c = 913;
                }
            } else if (i21 < 26) {
                i11 = i21 + 65;
                c10 = (char) i11;
                c = 913;
            } else {
                if (i21 != 900) {
                    c = 913;
                    if (i21 != 913) {
                        switch (i21) {
                            case 26:
                                c10 = ' ';
                                break;
                            case 27:
                                i19 = 2;
                                break;
                            case 28:
                                i19 = 3;
                                break;
                            case 29:
                                i20 = i19;
                                i19 = 6;
                                break;
                        }
                    } else {
                        sb.append((char) iArr3[i18]);
                    }
                } else {
                    c = 913;
                    i19 = 1;
                }
                c10 = 0;
            }
            if (c10 != 0) {
                sb.append(c10);
            }
            i18++;
            i12 = 1;
        }
        return i14;
    }
}
