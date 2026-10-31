package s6;

import androidx.constraintlayout.core.motion.utils.TypedValues$Custom;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f5310a = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final char[] f5311b = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();
    public static final BigInteger[] c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        c = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = bigIntegerValueOf;
        int i9 = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = c;
            if (i9 >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i9] = bigIntegerArr2[i9 - 1].multiply(bigIntegerValueOf);
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a(int[] iArr, int i9) throws z5.e {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i10 = 0; i10 < i9; i10++) {
            bigIntegerAdd = bigIntegerAdd.add(c[(i9 - i10) - 1].multiply(BigInteger.valueOf(iArr[i10])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) == '1') {
            return string.substring(1);
        }
        throw z5.e.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:34:0x003a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0007 A[SYNTHETIC] */
    public static int b(int[] iArr, int i9, StringBuilder sb) {
        int[] iArr2 = new int[15];
        boolean z8 = false;
        int i10 = 0;
        while (true) {
            int i11 = iArr[0];
            if (i9 < i11 && !z8) {
                int i12 = i9 + 1;
                int i13 = iArr[i9];
                if (i12 == i11) {
                    z8 = true;
                }
                if (i13 < 900) {
                    iArr2[i10] = i13;
                    i10++;
                } else {
                    if (i13 != 900 && i13 != 901 && i13 != 928) {
                        switch (i13) {
                            case 922:
                            case 923:
                            case 924:
                                z8 = true;
                                break;
                        }
                    } else {
                        z8 = true;
                    }
                    if (i10 % 15 != 0 || i13 == 902 || z8) {
                        if (i10 > 0) {
                            sb.append(a(iArr2, i10));
                            i10 = 0;
                        }
                    }
                }
                i9 = i12;
                if (i10 % 15 != 0) {
                }
                if (i10 > 0) {
                    sb.append(a(iArr2, i10));
                    i10 = 0;
                }
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:46:0x0093  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d2  */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0035. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0038. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:81:0x00f0. Please report as an issue. */
    public static int c(int[] iArr, int i9, StringBuilder sb) {
        char c9;
        char c10;
        int i10;
        int i11 = 1;
        int i12 = (iArr[0] - i9) << 1;
        int[] iArr2 = new int[i12];
        int[] iArr3 = new int[i12];
        int i13 = i9;
        boolean z8 = false;
        int i14 = 0;
        while (i13 < iArr[0] && !z8) {
            int i15 = i13 + 1;
            int i16 = iArr[i13];
            if (i16 < 900) {
                iArr2[i14] = i16 / 30;
                iArr2[i14 + 1] = i16 % 30;
                i14 += 2;
            } else if (i16 != 913) {
                if (i16 != 928) {
                    switch (i16) {
                        case TypedValues$Custom.TYPE_INT /* 900 */:
                            iArr2[i14] = 900;
                            i14++;
                            break;
                        case TypedValues$Custom.TYPE_FLOAT /* 901 */:
                        case TypedValues$Custom.TYPE_COLOR /* 902 */:
                            break;
                        default:
                            switch (i16) {
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
                z8 = true;
            } else {
                iArr2[i14] = 913;
                i13 += 2;
                iArr3[i14] = iArr[i15];
                i14++;
            }
            i13 = i15;
        }
        int i17 = 0;
        int i18 = 1;
        int i19 = 1;
        while (i17 < i14) {
            int i20 = iArr2[i17];
            int iC = com.bumptech.glide.g.c(i18);
            char c11 = ' ';
            if (iC != 0) {
                if (iC == i11) {
                    if (i20 < 26) {
                        i10 = i20 + 97;
                        c10 = (char) i10;
                    } else {
                        if (i20 == 900) {
                            i18 = 1;
                        } else if (i20 != 913) {
                            switch (i20) {
                                case 26:
                                    c10 = c11;
                                    break;
                                case 27:
                                    i19 = i18;
                                    c10 = 0;
                                    i18 = 5;
                                    break;
                                case 28:
                                    i18 = 3;
                                    break;
                                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                                    i19 = i18;
                                    i18 = 6;
                                    break;
                            }
                        } else {
                            sb.append((char) iArr3[i17]);
                        }
                        c9 = 913;
                        c10 = 0;
                    }
                    c9 = 913;
                } else if (iC != 2) {
                    char[] cArr = f5310a;
                    if (iC != 3) {
                        if (iC != 4) {
                            if (iC == 5) {
                                if (i20 < 29) {
                                    c11 = cArr[i20];
                                    i18 = i19;
                                    c10 = c11;
                                    c9 = 913;
                                } else if (i20 == 29 || i20 == 900) {
                                    c9 = 913;
                                    c10 = 0;
                                    i18 = 1;
                                } else {
                                    if (i20 == 913) {
                                        sb.append((char) iArr3[i17]);
                                    }
                                    i18 = i19;
                                }
                            }
                            c9 = 913;
                            c10 = 0;
                        } else {
                            if (i20 < 26) {
                                c10 = (char) (i20 + 65);
                                i18 = i19;
                            } else {
                                if (i20 != 26) {
                                    if (i20 != 900) {
                                        i18 = i19;
                                    } else {
                                        i18 = 1;
                                    }
                                    c9 = 913;
                                    c10 = 0;
                                }
                                i18 = i19;
                                c10 = c11;
                            }
                            c9 = 913;
                        }
                    } else if (i20 < 29) {
                        c11 = cArr[i20];
                        c10 = c11;
                        c9 = 913;
                    } else if (i20 == 29 || i20 == 900) {
                        c9 = 913;
                        c10 = 0;
                        i18 = 1;
                    } else {
                        if (i20 == 913) {
                            sb.append((char) iArr3[i17]);
                        }
                        c9 = 913;
                        c10 = 0;
                    }
                } else {
                    if (i20 < 25) {
                        c11 = f5311b[i20];
                    } else {
                        if (i20 != 900) {
                            if (i20 != 913) {
                                switch (i20) {
                                    case 25:
                                        i18 = 4;
                                        break;
                                    case 27:
                                        i18 = 2;
                                        break;
                                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                                        i19 = i18;
                                        i18 = 6;
                                        break;
                                }
                            } else {
                                sb.append((char) iArr3[i17]);
                            }
                            c9 = 913;
                            c10 = 0;
                        }
                        c9 = 913;
                        c10 = 0;
                        i18 = 1;
                    }
                    c10 = c11;
                    c9 = 913;
                }
            } else if (i20 < 26) {
                i10 = i20 + 65;
                c10 = (char) i10;
                c9 = 913;
            } else {
                if (i20 != 900) {
                    c9 = 913;
                    if (i20 != 913) {
                        switch (i20) {
                            case 26:
                                c10 = ' ';
                                break;
                            case 27:
                                i18 = 2;
                                break;
                            case 28:
                                i18 = 3;
                                break;
                            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                                i19 = i18;
                                i18 = 6;
                                break;
                        }
                    } else {
                        sb.append((char) iArr3[i17]);
                    }
                } else {
                    c9 = 913;
                    i18 = 1;
                }
                c10 = 0;
            }
            if (c10 != 0) {
                sb.append(c10);
            }
            i17++;
            i11 = 1;
        }
        return i13;
    }
}
