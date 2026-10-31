package com.google.protobuf;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Map$Entry;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t0 implements b1 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f1556n = new int[0];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Unsafe f1557o = s1.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f1558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f1559b;
    public final int c;
    public final int d;
    public final a e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f1560f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f1561g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1562h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1563i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final v0 f1564j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final j0 f1565k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final k1 f1566l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final p0 f1567m;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t0(int[] iArr, Object[] objArr, int i9, int i10, a aVar, int[] iArr2, int i11, int i12, v0 v0Var, j0 j0Var, k1 k1Var, r rVar, p0 p0Var) {
        this.f1558a = iArr;
        this.f1559b = objArr;
        this.c = i9;
        this.d = i10;
        this.f1560f = aVar instanceof y;
        this.f1561g = iArr2;
        this.f1562h = i11;
        this.f1563i = i12;
        this.f1564j = v0Var;
        this.f1565k = j0Var;
        this.f1566l = k1Var;
        this.e = aVar;
        this.f1567m = p0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long A(Object obj, long j9) {
        return ((Long) s1.c.i(obj, j9)).longValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Field F(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder sbX = ai.onnxruntime.a.x("Field ", str, " for ");
            sbX.append(cls.getName());
            sbX.append(" not found. Known fields are ");
            sbX.append(Arrays.toString(declaredFields));
            throw new RuntimeException(sbX.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int K(int i9) {
        return (i9 & 267386880) >>> 20;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean p(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof y) {
            return ((y) obj).i();
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static t0 w(a1 a1Var, v0 v0Var, j0 j0Var, k1 k1Var, r rVar, p0 p0Var) {
        if (a1Var instanceof a1) {
            return x(a1Var, v0Var, j0Var, k1Var, rVar, p0Var);
        }
        a1Var.getClass();
        n0.b.a();
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:120:0x025b  */
    /* JADX WARN: Code duplicated, block: B:121:0x025e  */
    /* JADX WARN: Code duplicated, block: B:124:0x0275  */
    /* JADX WARN: Code duplicated, block: B:125:0x0278  */
    /* JADX WARN: Code duplicated, block: B:162:0x0334  */
    /* JADX WARN: Code duplicated, block: B:177:0x037e  */
    /* JADX WARN: Code duplicated, block: B:180:0x0388  */
    /* JADX WARN: Code duplicated, block: B:183:0x0398  */
    public static t0 x(a1 a1Var, v0 v0Var, j0 j0Var, k1 k1Var, r rVar, p0 p0Var) {
        int i9;
        int iCharAt;
        int i10;
        int i11;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        int i15;
        int i16;
        char cCharAt;
        int i17;
        char cCharAt2;
        int i18;
        char cCharAt3;
        int i19;
        char cCharAt4;
        int i20;
        char cCharAt5;
        int i21;
        char cCharAt6;
        int i22;
        char cCharAt7;
        int i23;
        char cCharAt8;
        int i24;
        int i25;
        int i26;
        int i27;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i28;
        int i29;
        int i30;
        int i31;
        Field fieldF;
        char cCharAt9;
        int i32;
        int i33;
        int i34;
        Object obj;
        Field fieldF2;
        int i35;
        Object obj2;
        Field fieldF3;
        int i36;
        char cCharAt10;
        int i37;
        char cCharAt11;
        int i38;
        char cCharAt12;
        int i39;
        char cCharAt13;
        String str = a1Var.f1468b;
        int length = str.length();
        int i40 = 55296;
        if (str.charAt(0) >= 55296) {
            int i41 = 1;
            while (true) {
                i9 = i41 + 1;
                if (str.charAt(i41) < 55296) {
                    break;
                }
                i41 = i9;
            }
        } else {
            i9 = 1;
        }
        int i42 = i9 + 1;
        int iCharAt2 = str.charAt(i9);
        if (iCharAt2 >= 55296) {
            int i43 = iCharAt2 & 8191;
            int i44 = 13;
            while (true) {
                i39 = i42 + 1;
                cCharAt13 = str.charAt(i42);
                if (cCharAt13 < 55296) {
                    break;
                }
                i43 |= (cCharAt13 & 8191) << i44;
                i44 += 13;
                i42 = i39;
            }
            iCharAt2 = i43 | (cCharAt13 << i44);
            i42 = i39;
        }
        if (iCharAt2 == 0) {
            i11 = 0;
            i14 = 0;
            iCharAt = 0;
            i10 = 0;
            i13 = 0;
            i15 = 0;
            iArr = f1556n;
            i12 = 0;
        } else {
            int i45 = i42 + 1;
            int iCharAt3 = str.charAt(i42);
            if (iCharAt3 >= 55296) {
                int i46 = iCharAt3 & 8191;
                int i47 = 13;
                while (true) {
                    i23 = i45 + 1;
                    cCharAt8 = str.charAt(i45);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt8 & 8191) << i47;
                    i47 += 13;
                    i45 = i23;
                }
                iCharAt3 = i46 | (cCharAt8 << i47);
                i45 = i23;
            }
            int i48 = i45 + 1;
            int iCharAt4 = str.charAt(i45);
            if (iCharAt4 >= 55296) {
                int i49 = iCharAt4 & 8191;
                int i50 = 13;
                while (true) {
                    i22 = i48 + 1;
                    cCharAt7 = str.charAt(i48);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt7 & 8191) << i50;
                    i50 += 13;
                    i48 = i22;
                }
                iCharAt4 = i49 | (cCharAt7 << i50);
                i48 = i22;
            }
            int i51 = i48 + 1;
            int iCharAt5 = str.charAt(i48);
            if (iCharAt5 >= 55296) {
                int i52 = iCharAt5 & 8191;
                int i53 = 13;
                while (true) {
                    i21 = i51 + 1;
                    cCharAt6 = str.charAt(i51);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt6 & 8191) << i53;
                    i53 += 13;
                    i51 = i21;
                }
                iCharAt5 = i52 | (cCharAt6 << i53);
                i51 = i21;
            }
            int i54 = i51 + 1;
            int iCharAt6 = str.charAt(i51);
            if (iCharAt6 >= 55296) {
                int i55 = iCharAt6 & 8191;
                int i56 = 13;
                while (true) {
                    i20 = i54 + 1;
                    cCharAt5 = str.charAt(i54);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i55 |= (cCharAt5 & 8191) << i56;
                    i56 += 13;
                    i54 = i20;
                }
                iCharAt6 = i55 | (cCharAt5 << i56);
                i54 = i20;
            }
            int i57 = i54 + 1;
            iCharAt = str.charAt(i54);
            if (iCharAt >= 55296) {
                int i58 = iCharAt & 8191;
                int i59 = 13;
                while (true) {
                    i19 = i57 + 1;
                    cCharAt4 = str.charAt(i57);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i58 |= (cCharAt4 & 8191) << i59;
                    i59 += 13;
                    i57 = i19;
                }
                iCharAt = i58 | (cCharAt4 << i59);
                i57 = i19;
            }
            int i60 = i57 + 1;
            int iCharAt7 = str.charAt(i57);
            if (iCharAt7 >= 55296) {
                int i61 = iCharAt7 & 8191;
                int i62 = 13;
                while (true) {
                    i18 = i60 + 1;
                    cCharAt3 = str.charAt(i60);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i61 |= (cCharAt3 & 8191) << i62;
                    i62 += 13;
                    i60 = i18;
                }
                iCharAt7 = i61 | (cCharAt3 << i62);
                i60 = i18;
            }
            int i63 = i60 + 1;
            int iCharAt8 = str.charAt(i60);
            if (iCharAt8 >= 55296) {
                int i64 = iCharAt8 & 8191;
                int i65 = 13;
                while (true) {
                    i17 = i63 + 1;
                    cCharAt2 = str.charAt(i63);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i64 |= (cCharAt2 & 8191) << i65;
                    i65 += 13;
                    i63 = i17;
                }
                iCharAt8 = i64 | (cCharAt2 << i65);
                i63 = i17;
            }
            int i66 = i63 + 1;
            int iCharAt9 = str.charAt(i63);
            if (iCharAt9 >= 55296) {
                int i67 = iCharAt9 & 8191;
                int i68 = 13;
                while (true) {
                    i16 = i66 + 1;
                    cCharAt = str.charAt(i66);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i67 |= (cCharAt & 8191) << i68;
                    i68 += 13;
                    i66 = i16;
                }
                iCharAt9 = i67 | (cCharAt << i68);
                i66 = i16;
            }
            int[] iArr2 = new int[iCharAt9 + iCharAt7 + iCharAt8];
            int i69 = (iCharAt3 * 2) + iCharAt4;
            int i70 = iCharAt7;
            i10 = iCharAt5;
            i11 = i70;
            i12 = iCharAt3;
            i42 = i66;
            iArr = iArr2;
            i13 = iCharAt6;
            i14 = i69;
            i15 = iCharAt9;
        }
        Unsafe unsafe = f1557o;
        Object[] objArr = a1Var.c;
        Class<?> cls = a1Var.f1467a.getClass();
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr2 = new Object[iCharAt * 2];
        int i71 = i15 + i11;
        int i72 = i71;
        int i73 = i15;
        int i74 = 0;
        int i75 = 0;
        while (i42 < length) {
            int i76 = i42 + 1;
            int iCharAt10 = str.charAt(i42);
            if (iCharAt10 >= i40) {
                int i77 = iCharAt10 & 8191;
                int i78 = i76;
                int i79 = 13;
                while (true) {
                    i38 = i78 + 1;
                    cCharAt12 = str.charAt(i78);
                    i24 = length;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i77 |= (cCharAt12 & 8191) << i79;
                    i79 += 13;
                    i78 = i38;
                    length = i24;
                }
                iCharAt10 = i77 | (cCharAt12 << i79);
                i25 = i38;
            } else {
                i24 = length;
                i25 = i76;
            }
            int i80 = i25 + 1;
            int iCharAt11 = str.charAt(i25);
            Object[] objArr3 = objArr;
            char c = 55296;
            if (iCharAt11 >= 55296) {
                int i81 = iCharAt11 & 8191;
                int i82 = 13;
                while (true) {
                    i37 = i80 + 1;
                    cCharAt11 = str.charAt(i80);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i81 |= (cCharAt11 & 8191) << i82;
                    i82 += 13;
                    i80 = i37;
                    c = 55296;
                }
                iCharAt11 = i81 | (cCharAt11 << i82);
                i80 = i37;
            }
            int i83 = iCharAt11 & 255;
            int i84 = iCharAt10;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i74] = i75;
                i74++;
            }
            int[] iArr4 = iArr3;
            if (i83 >= 51) {
                int i85 = i80 + 1;
                int iCharAt12 = str.charAt(i80);
                char c9 = 55296;
                if (iCharAt12 >= 55296) {
                    int i86 = iCharAt12 & 8191;
                    int i87 = 13;
                    while (true) {
                        i36 = i85 + 1;
                        cCharAt10 = str.charAt(i85);
                        if (cCharAt10 < c9) {
                            break;
                        }
                        i86 |= (cCharAt10 & 8191) << i87;
                        i87 += 13;
                        i85 = i36;
                        c9 = 55296;
                    }
                    iCharAt12 = i86 | (cCharAt10 << i87);
                    i85 = i36;
                }
                int i88 = i83 - 51;
                int i89 = i85;
                if (i88 == 9 || i88 == 17) {
                    i33 = i14 + 1;
                    objArr2[((i75 / 3) * 2) + 1] = objArr3[i14];
                } else {
                    if (i88 == 12 && (com.bumptech.glide.g.a(a1Var.a(), 1) || (iCharAt11 & 2048) != 0)) {
                        i33 = i14 + 1;
                        objArr2[((i75 / 3) * 2) + 1] = objArr3[i14];
                    }
                    i34 = iCharAt12 * 2;
                    obj = objArr3[i34];
                    if (obj instanceof Field) {
                        fieldF2 = (Field) obj;
                    } else {
                        fieldF2 = F(cls, (String) obj);
                        objArr3[i34] = fieldF2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldF2);
                    i35 = i34 + 1;
                    obj2 = objArr3[i35];
                    if (obj2 instanceof Field) {
                        fieldF3 = (Field) obj2;
                    } else {
                        fieldF3 = F(cls, (String) obj2);
                        objArr3[i35] = fieldF3;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldF3);
                    int i90 = i12;
                    iObjectFieldOffset2 = iObjectFieldOffset4;
                    i31 = iObjectFieldOffset3;
                    i26 = i90;
                    i30 = i14;
                    i28 = i89;
                    i29 = 0;
                    cls = cls;
                }
                i14 = i33;
                i34 = iCharAt12 * 2;
                obj = objArr3[i34];
                if (obj instanceof Field) {
                    fieldF2 = (Field) obj;
                } else {
                    fieldF2 = F(cls, (String) obj);
                    objArr3[i34] = fieldF2;
                }
                int iObjectFieldOffset5 = (int) unsafe.objectFieldOffset(fieldF2);
                i35 = i34 + 1;
                obj2 = objArr3[i35];
                if (obj2 instanceof Field) {
                    fieldF3 = (Field) obj2;
                } else {
                    fieldF3 = F(cls, (String) obj2);
                    objArr3[i35] = fieldF3;
                }
                int iObjectFieldOffset6 = (int) unsafe.objectFieldOffset(fieldF3);
                int i91 = i12;
                iObjectFieldOffset2 = iObjectFieldOffset6;
                i31 = iObjectFieldOffset5;
                i26 = i91;
                i30 = i14;
                i28 = i89;
                i29 = 0;
                cls = cls;
            } else {
                int i92 = i14 + 1;
                Field fieldF4 = F(cls, (String) objArr3[i14]);
                if (i83 == 9 || i83 == 17) {
                    i26 = i12;
                    objArr2[((i75 / 3) * 2) + 1] = fieldF4.getType();
                } else {
                    if (i83 == 27 || i83 == 49) {
                        i26 = i12;
                        i32 = i14 + 2;
                        objArr2[((i75 / 3) * 2) + 1] = objArr3[i92];
                    } else if (i83 == 12 || i83 == 30 || i83 == 44) {
                        i26 = i12;
                        if (a1Var.a() == 1 || (iCharAt11 & 2048) != 0) {
                            i32 = i14 + 2;
                            objArr2[((i75 / 3) * 2) + 1] = objArr3[i92];
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                        if ((iCharAt11 & 4096) != 0 || i83 > 17) {
                            iObjectFieldOffset2 = 1048575;
                            i28 = i80;
                            i29 = 0;
                        } else {
                            int i93 = i80 + 1;
                            int iCharAt13 = str.charAt(i80);
                            if (iCharAt13 >= 55296) {
                                int i94 = iCharAt13 & 8191;
                                int i95 = 13;
                                while (true) {
                                    i28 = i93 + 1;
                                    cCharAt9 = str.charAt(i93);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i94 |= (cCharAt9 & 8191) << i95;
                                    i95 += 13;
                                    i93 = i28;
                                }
                                iCharAt13 = i94 | (cCharAt9 << i95);
                            } else {
                                i28 = i93;
                            }
                            int i96 = (iCharAt13 / 32) + (i26 * 2);
                            Object obj3 = objArr3[i96];
                            if (obj3 instanceof Field) {
                                fieldF = (Field) obj3;
                            } else {
                                fieldF = F(cls, (String) obj3);
                                objArr3[i96] = fieldF;
                            }
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldF);
                            i29 = iCharAt13 % 32;
                        }
                        if (i83 >= 18 || i83 > 49) {
                            i30 = i27;
                            i31 = iObjectFieldOffset;
                        } else {
                            iArr[i72] = iObjectFieldOffset;
                            i30 = i27;
                            i31 = iObjectFieldOffset;
                            i72++;
                        }
                    } else {
                        if (i83 == 50) {
                            int i97 = i73 + 1;
                            iArr[i73] = i75;
                            int i98 = (i75 / 3) * 2;
                            int i99 = i14 + 2;
                            objArr2[i98] = objArr3[i92];
                            if ((iCharAt11 & 2048) != 0) {
                                i27 = i14 + 3;
                                objArr2[i98 + 1] = objArr3[i99];
                                i26 = i12;
                                i73 = i97;
                            } else {
                                i27 = i99;
                                i73 = i97;
                                i26 = i12;
                            }
                        } else {
                            i26 = i12;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                        if ((iCharAt11 & 4096) != 0) {
                            iObjectFieldOffset2 = 1048575;
                            i28 = i80;
                            i29 = 0;
                        } else {
                            iObjectFieldOffset2 = 1048575;
                            i28 = i80;
                            i29 = 0;
                        }
                        if (i83 >= 18) {
                            i30 = i27;
                            i31 = iObjectFieldOffset;
                        } else {
                            i30 = i27;
                            i31 = iObjectFieldOffset;
                        }
                    }
                    i27 = i32;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                    if ((iCharAt11 & 4096) != 0) {
                        iObjectFieldOffset2 = 1048575;
                        i28 = i80;
                        i29 = 0;
                    } else {
                        iObjectFieldOffset2 = 1048575;
                        i28 = i80;
                        i29 = 0;
                    }
                    if (i83 >= 18) {
                        i30 = i27;
                        i31 = iObjectFieldOffset;
                    } else {
                        i30 = i27;
                        i31 = iObjectFieldOffset;
                    }
                }
                i27 = i92;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldF4);
                if ((iCharAt11 & 4096) != 0) {
                    iObjectFieldOffset2 = 1048575;
                    i28 = i80;
                    i29 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i28 = i80;
                    i29 = 0;
                }
                if (i83 >= 18) {
                    i30 = i27;
                    i31 = iObjectFieldOffset;
                } else {
                    i30 = i27;
                    i31 = iObjectFieldOffset;
                }
            }
            int i100 = i75 + 1;
            iArr4[i75] = i84;
            int i101 = i75 + 2;
            String str2 = str;
            iArr4[i100] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0) | (i83 << 20) | i31;
            i75 += 3;
            iArr4[i101] = (i29 << 20) | iObjectFieldOffset2;
            cls = cls;
            objArr = objArr3;
            str = str2;
            length = i24;
            i12 = i26;
            i42 = i28;
            i40 = 55296;
            i14 = i30;
            iArr3 = iArr4;
        }
        return new t0(iArr3, objArr2, i10, i13, a1Var.f1467a, iArr, i15, i71, v0Var, j0Var, k1Var, rVar, p0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long y(int i9) {
        return i9 & 1048575;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int z(Object obj, long j9) {
        return ((Integer) s1.c.i(obj, j9)).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void B(Object obj, long j9, c3.i iVar, b1 b1Var, p pVar) throws c0 {
        int iV;
        List listC = this.f1565k.c(obj, j9);
        j jVar = (j) iVar.d;
        int i9 = iVar.f487a;
        if ((i9 & 7) != 3) {
            throw d0.b();
        }
        do {
            y yVarI = b1Var.i();
            iVar.d(yVarI, b1Var, pVar);
            b1Var.c(yVarI);
            listC.add(yVarI);
            if (jVar.c() || iVar.c != 0) {
                return;
            } else {
                iV = jVar.v();
            }
        } while (iV == i9);
        iVar.c = iV;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void C(Object obj, int i9, c3.i iVar, b1 b1Var, p pVar) throws d0 {
        int iV;
        List listC = this.f1565k.c(obj, i9 & 1048575);
        j jVar = (j) iVar.d;
        int i10 = iVar.f487a;
        if ((i10 & 7) != 2) {
            throw d0.b();
        }
        do {
            y yVarI = b1Var.i();
            iVar.e(yVarI, b1Var, pVar);
            b1Var.c(yVarI);
            listC.add(yVarI);
            if (jVar.c() || iVar.c != 0) {
                return;
            } else {
                iV = jVar.v();
            }
        } while (iV == i10);
        iVar.c = iV;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void D(Object obj, int i9, c3.i iVar) throws c0 {
        if ((536870912 & i9) != 0) {
            iVar.z(2);
            s1.p(i9 & 1048575, obj, ((j) iVar.d).u());
        } else if (!this.f1560f) {
            s1.p(i9 & 1048575, obj, iVar.g());
        } else {
            iVar.z(2);
            s1.p(i9 & 1048575, obj, ((j) iVar.d).t());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void E(Object obj, int i9, c3.i iVar) throws c0 {
        boolean z8 = (536870912 & i9) != 0;
        j0 j0Var = this.f1565k;
        if (z8) {
            iVar.u(j0Var.c(obj, i9 & 1048575), true);
        } else {
            iVar.u(j0Var.c(obj, i9 & 1048575), false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void G(int i9, Object obj) {
        int i10 = this.f1558a[i9 + 2];
        long j9 = 1048575 & i10;
        if (j9 == 1048575) {
            return;
        }
        s1.n((1 << (i10 >>> 20)) | s1.c.g(obj, j9), j9, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void H(Object obj, int i9, int i10) {
        s1.n(i9, this.f1558a[i10 + 2] & 1048575, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void I(Object obj, int i9, a aVar) {
        f1557o.putObject(obj, L(i9) & 1048575, aVar);
        G(i9, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void J(Object obj, int i9, int i10, a aVar) {
        f1557o.putObject(obj, L(i10) & 1048575, aVar);
        H(obj, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int L(int i9) {
        return this.f1558a[i9 + 1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:119:0x0342  */
    /* JADX WARN: Code duplicated, block: B:124:0x034f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0361  */
    /* JADX WARN: Code duplicated, block: B:126:0x0372  */
    /* JADX WARN: Code duplicated, block: B:128:0x037b  */
    /* JADX WARN: Code duplicated, block: B:130:0x0384  */
    /* JADX WARN: Code duplicated, block: B:132:0x0388  */
    /* JADX WARN: Code duplicated, block: B:133:0x0394  */
    /* JADX WARN: Code duplicated, block: B:134:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:135:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:137:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:139:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:140:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:141:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:142:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:144:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:145:0x03ec  */
    /* JADX WARN: Code duplicated, block: B:146:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:147:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:148:0x0402  */
    /* JADX WARN: Code duplicated, block: B:149:0x0409  */
    /* JADX WARN: Code duplicated, block: B:150:0x0414  */
    /* JADX WARN: Code duplicated, block: B:151:0x041f  */
    /* JADX WARN: Code duplicated, block: B:152:0x042a  */
    /* JADX WARN: Code duplicated, block: B:153:0x0431  */
    /* JADX WARN: Code duplicated, block: B:292:0x034b A[SYNTHETIC] */
    public final void M(Object obj, l0 l0Var) {
        int i9;
        int i10;
        int i11;
        boolean z8;
        int iE;
        int size;
        int iD;
        int iA;
        int i12;
        int iC;
        int iE2;
        int size2;
        int iD2;
        t0 t0Var = this;
        int[] iArr = t0Var.f1558a;
        int length = iArr.length;
        Unsafe unsafe = f1557o;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        while (i15 < length) {
            int iL = t0Var.L(i15);
            int i17 = iArr[i15];
            int iK = K(iL);
            int i18 = 1;
            if (iK <= 17) {
                int i19 = iArr[i15 + 2];
                int i20 = i19 & i13;
                if (i20 != i14) {
                    i16 = i20 == i13 ? 0 : unsafe.getInt(obj, i20);
                    i14 = i20;
                }
                i9 = 1 << (i19 >>> 20);
            } else {
                i9 = 0;
            }
            long j9 = iL & i13;
            switch (iK) {
                case 0:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        double dE = s1.c.e(obj, j9);
                        n nVar = (n) l0Var.f1527a;
                        nVar.getClass();
                        nVar.n(i17, Double.doubleToRawLongBits(dE));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 1:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        float f8 = s1.c.f(obj, j9);
                        n nVar2 = (n) l0Var.f1527a;
                        nVar2.getClass();
                        nVar2.l(i17, Float.floatToRawIntBits(f8));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 2:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).z(i17, unsafe.getLong(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 3:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).z(i17, unsafe.getLong(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 4:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).p(i17, unsafe.getInt(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 5:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).n(i17, unsafe.getLong(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 6:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).l(i17, unsafe.getInt(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 7:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).h(i17, s1.c.c(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 8:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        Object object = unsafe.getObject(obj, j9);
                        if (object instanceof String) {
                            ((n) l0Var.f1527a).u(i17, (String) object);
                        } else {
                            ((n) l0Var.f1527a).j(i17, (g) object);
                        }
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 9:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).s(i17, (a) unsafe.getObject(obj, j9), t0Var.m(i15));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 10:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).j(i17, (g) unsafe.getObject(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 11:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).x(i17, unsafe.getInt(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 12:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).p(i17, unsafe.getInt(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 13:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).l(i17, unsafe.getInt(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 14:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        ((n) l0Var.f1527a).n(i17, unsafe.getLong(obj, j9));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 15:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        int i21 = unsafe.getInt(obj, j9);
                        ((n) l0Var.f1527a).x(i17, (i21 >> 31) ^ (i21 << 1));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 16:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        long j10 = unsafe.getLong(obj, j9);
                        ((n) l0Var.f1527a).z(i17, (j10 >> 63) ^ (j10 << 1));
                    }
                    t0Var = this;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 17:
                    if (t0Var.o(obj, i15, i14, i16, i9)) {
                        l0Var.a(i17, unsafe.getObject(obj, j9), t0Var.m(i15));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 18:
                    i14 = i14;
                    i16 = i16;
                    c1.m(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 19:
                    i14 = i14;
                    i16 = i16;
                    c1.q(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 20:
                    i14 = i14;
                    i16 = i16;
                    c1.s(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 21:
                    i14 = i14;
                    i16 = i16;
                    c1.y(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 22:
                    i14 = i14;
                    i16 = i16;
                    c1.r(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 23:
                    i14 = i14;
                    i16 = i16;
                    c1.p(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 24:
                    i14 = i14;
                    i16 = i16;
                    c1.o(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 25:
                    i14 = i14;
                    i16 = i16;
                    c1.l(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 26:
                    i10 = i14;
                    i11 = i16;
                    int i22 = iArr[i15];
                    List list = (List) unsafe.getObject(obj, j9);
                    Class cls = c1.f1484a;
                    if (list != null && !list.isEmpty()) {
                        n nVar3 = (n) l0Var.f1527a;
                        if (list instanceof g0) {
                            g0 g0Var = (g0) list;
                            for (int i23 = 0; i23 < list.size(); i23++) {
                                Object objV = g0Var.V(i23);
                                if (objV instanceof String) {
                                    nVar3.u(i22, (String) objV);
                                } else {
                                    nVar3.j(i22, (g) objV);
                                }
                            }
                        } else {
                            for (int i24 = 0; i24 < list.size(); i24++) {
                                nVar3.u(i22, (String) list.get(i24));
                            }
                        }
                    }
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 27:
                    i10 = i14;
                    i11 = i16;
                    int i25 = iArr[i15];
                    List list2 = (List) unsafe.getObject(obj, j9);
                    b1 b1VarM = t0Var.m(i15);
                    Class cls2 = c1.f1484a;
                    if (list2 != null && !list2.isEmpty()) {
                        l0Var.getClass();
                        for (int i26 = 0; i26 < list2.size(); i26++) {
                            ((n) l0Var.f1527a).s(i25, (a) list2.get(i26), b1VarM);
                        }
                    }
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 28:
                    i10 = i14;
                    i11 = i16;
                    int i27 = iArr[i15];
                    List list3 = (List) unsafe.getObject(obj, j9);
                    Class cls3 = c1.f1484a;
                    if (list3 != null && !list3.isEmpty()) {
                        l0Var.getClass();
                        for (int i28 = 0; i28 < list3.size(); i28++) {
                            ((n) l0Var.f1527a).j(i27, (g) list3.get(i28));
                        }
                    }
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                    z8 = false;
                    c1.x(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS /* 30 */:
                    z8 = false;
                    c1.n(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                    z8 = false;
                    c1.t(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 32:
                    z8 = false;
                    c1.u(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 33:
                    z8 = false;
                    c1.v(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 34:
                    z8 = false;
                    c1.w(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, false);
                    i14 = i14;
                    i16 = i16;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 35:
                    i10 = i14;
                    i11 = i16;
                    c1.m(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 36:
                    i10 = i14;
                    i11 = i16;
                    c1.q(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 37:
                    i10 = i14;
                    i11 = i16;
                    c1.s(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 38:
                    i10 = i14;
                    i11 = i16;
                    c1.y(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 39:
                    i10 = i14;
                    i11 = i16;
                    c1.r(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 40:
                    i10 = i14;
                    i11 = i16;
                    c1.p(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 41:
                    i10 = i14;
                    i11 = i16;
                    c1.o(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 42:
                    i10 = i14;
                    i11 = i16;
                    c1.l(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 43:
                    i10 = i14;
                    i11 = i16;
                    c1.x(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 44:
                    i10 = i14;
                    i11 = i16;
                    c1.n(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 45:
                    i10 = i14;
                    i11 = i16;
                    c1.t(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 46:
                    i10 = i14;
                    i11 = i16;
                    c1.u(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 47:
                    i10 = i14;
                    i11 = i16;
                    c1.v(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    i10 = i14;
                    i11 = i16;
                    c1.w(iArr[i15], (List) unsafe.getObject(obj, j9), l0Var, true);
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    i10 = i14;
                    i11 = i16;
                    int i29 = iArr[i15];
                    List list4 = (List) unsafe.getObject(obj, j9);
                    b1 b1VarM2 = t0Var.m(i15);
                    Class cls4 = c1.f1484a;
                    if (list4 != null && !list4.isEmpty()) {
                        l0Var.getClass();
                        for (int i30 = 0; i30 < list4.size(); i30++) {
                            l0Var.a(i29, list4.get(i30), b1VarM2);
                        }
                    }
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj, j9);
                    if (object2 != null) {
                        int i31 = 2;
                        Object obj2 = t0Var.f1559b[(i15 / 3) * 2];
                        t0Var.f1567m.getClass();
                        m0 m0Var = ((n0) obj2).f1536a;
                        a2 a2Var = m0Var.f1532b;
                        a2 a2Var2 = m0Var.f1531a;
                        n nVar4 = (n) l0Var.f1527a;
                        nVar4.getClass();
                        for (Map$Entry map$Entry : ((o0) object2).entrySet()) {
                            nVar4.w(i17, i31);
                            int i32 = i31;
                            Object key = map$Entry.getKey();
                            int i33 = i18;
                            Object value = map$Entry.getValue();
                            int i34 = t.c;
                            int iC2 = n.c(i33);
                            int i35 = i14;
                            x1 x1Var = a2.e;
                            if (a2Var2 == x1Var) {
                                iC2 *= 2;
                            }
                            int i36 = i16;
                            switch (a2Var2.ordinal()) {
                                case 0:
                                    ((Double) key).getClass();
                                    iE = 8;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key2 = map$Entry.getKey();
                                            Object value2 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key2);
                                            t.b(nVar4, a2Var, i32, value2);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key3 = map$Entry.getKey();
                                            Object value3 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key3);
                                            t.b(nVar4, a2Var, i32, value3);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key4 = map$Entry.getKey();
                                            Object value4 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key4);
                                            t.b(nVar4, a2Var, i32, value4);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key5 = map$Entry.getKey();
                                            Object value5 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key5);
                                            t.b(nVar4, a2Var, i32, value5);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key6 = map$Entry.getKey();
                                            Object value6 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key6);
                                            t.b(nVar4, a2Var, i32, value6);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key7 = map$Entry.getKey();
                                            Object value7 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key7);
                                            t.b(nVar4, a2Var, i32, value7);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key8 = map$Entry.getKey();
                                            Object value8 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key8);
                                            t.b(nVar4, a2Var, i32, value8);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key9 = map$Entry.getKey();
                                            Object value9 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key9);
                                            t.b(nVar4, a2Var, i32, value9);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key10 = map$Entry.getKey();
                                            Object value10 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key10);
                                            t.b(nVar4, a2Var, i32, value10);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11 = map$Entry.getKey();
                                            Object value11 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11);
                                            t.b(nVar4, a2Var, i32, value11);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key12 = map$Entry.getKey();
                                            Object value12 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key12);
                                            t.b(nVar4, a2Var, i32, value12);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key13 = map$Entry.getKey();
                                            Object value13 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key13);
                                            t.b(nVar4, a2Var, i32, value13);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key14 = map$Entry.getKey();
                                            Object value14 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key14);
                                            t.b(nVar4, a2Var, i32, value14);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key15 = map$Entry.getKey();
                                            Object value15 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key15);
                                            t.b(nVar4, a2Var, i32, value15);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key16 = map$Entry.getKey();
                                            Object value16 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key16);
                                            t.b(nVar4, a2Var, i32, value16);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key17 = map$Entry.getKey();
                                            Object value17 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key17);
                                            t.b(nVar4, a2Var, i32, value17);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue >> 31) ^ (iIntValue << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key18 = map$Entry.getKey();
                                            Object value18 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key18);
                                            t.b(nVar4, a2Var, i32, value18);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue << i33) ^ (jLongValue >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key19 = map$Entry.getKey();
                                            Object value19 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key19);
                                            t.b(nVar4, a2Var, i32, value19);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 1:
                                    ((Float) key).getClass();
                                    iE = 4;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key110 = map$Entry.getKey();
                                            Object value110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key110);
                                            t.b(nVar4, a2Var, i32, value110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111 = map$Entry.getKey();
                                            Object value111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111);
                                            t.b(nVar4, a2Var, i32, value111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key112 = map$Entry.getKey();
                                            Object value112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key112);
                                            t.b(nVar4, a2Var, i32, value112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key113 = map$Entry.getKey();
                                            Object value113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key113);
                                            t.b(nVar4, a2Var, i32, value113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key114 = map$Entry.getKey();
                                            Object value114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key114);
                                            t.b(nVar4, a2Var, i32, value114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key115 = map$Entry.getKey();
                                            Object value115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key115);
                                            t.b(nVar4, a2Var, i32, value115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key116 = map$Entry.getKey();
                                            Object value116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key116);
                                            t.b(nVar4, a2Var, i32, value116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key117 = map$Entry.getKey();
                                            Object value117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key117);
                                            t.b(nVar4, a2Var, i32, value117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key118 = map$Entry.getKey();
                                            Object value118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key118);
                                            t.b(nVar4, a2Var, i32, value118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key119 = map$Entry.getKey();
                                            Object value119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key119);
                                            t.b(nVar4, a2Var, i32, value119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1110 = map$Entry.getKey();
                                            Object value1110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1110);
                                            t.b(nVar4, a2Var, i32, value1110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111 = map$Entry.getKey();
                                            Object value1111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111);
                                            t.b(nVar4, a2Var, i32, value1111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1112 = map$Entry.getKey();
                                            Object value1112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1112);
                                            t.b(nVar4, a2Var, i32, value1112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1113 = map$Entry.getKey();
                                            Object value1113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1113);
                                            t.b(nVar4, a2Var, i32, value1113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1114 = map$Entry.getKey();
                                            Object value1114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1114);
                                            t.b(nVar4, a2Var, i32, value1114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1115 = map$Entry.getKey();
                                            Object value1115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1115);
                                            t.b(nVar4, a2Var, i32, value1115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue2 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue2 >> 31) ^ (iIntValue2 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1116 = map$Entry.getKey();
                                            Object value1116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1116);
                                            t.b(nVar4, a2Var, i32, value1116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue2 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue2 << i33) ^ (jLongValue2 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1117 = map$Entry.getKey();
                                            Object value1117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1117);
                                            t.b(nVar4, a2Var, i32, value1117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 2:
                                    iE = n.e(((Long) key).longValue());
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1118 = map$Entry.getKey();
                                            Object value1118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1118);
                                            t.b(nVar4, a2Var, i32, value1118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1119 = map$Entry.getKey();
                                            Object value1119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1119);
                                            t.b(nVar4, a2Var, i32, value1119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11110 = map$Entry.getKey();
                                            Object value11110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11110);
                                            t.b(nVar4, a2Var, i32, value11110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111 = map$Entry.getKey();
                                            Object value11111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111);
                                            t.b(nVar4, a2Var, i32, value11111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11112 = map$Entry.getKey();
                                            Object value11112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11112);
                                            t.b(nVar4, a2Var, i32, value11112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11113 = map$Entry.getKey();
                                            Object value11113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11113);
                                            t.b(nVar4, a2Var, i32, value11113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11114 = map$Entry.getKey();
                                            Object value11114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11114);
                                            t.b(nVar4, a2Var, i32, value11114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11115 = map$Entry.getKey();
                                            Object value11115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11115);
                                            t.b(nVar4, a2Var, i32, value11115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11116 = map$Entry.getKey();
                                            Object value11116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11116);
                                            t.b(nVar4, a2Var, i32, value11116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11117 = map$Entry.getKey();
                                            Object value11117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11117);
                                            t.b(nVar4, a2Var, i32, value11117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11118 = map$Entry.getKey();
                                            Object value11118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11118);
                                            t.b(nVar4, a2Var, i32, value11118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11119 = map$Entry.getKey();
                                            Object value11119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11119);
                                            t.b(nVar4, a2Var, i32, value11119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111110 = map$Entry.getKey();
                                            Object value111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111110);
                                            t.b(nVar4, a2Var, i32, value111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111 = map$Entry.getKey();
                                            Object value111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111);
                                            t.b(nVar4, a2Var, i32, value111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111112 = map$Entry.getKey();
                                            Object value111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111112);
                                            t.b(nVar4, a2Var, i32, value111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111113 = map$Entry.getKey();
                                            Object value111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111113);
                                            t.b(nVar4, a2Var, i32, value111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue3 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue3 >> 31) ^ (iIntValue3 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111114 = map$Entry.getKey();
                                            Object value111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111114);
                                            t.b(nVar4, a2Var, i32, value111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue3 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue3 << i33) ^ (jLongValue3 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111115 = map$Entry.getKey();
                                            Object value111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111115);
                                            t.b(nVar4, a2Var, i32, value111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 3:
                                    iE = n.e(((Long) key).longValue());
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111116 = map$Entry.getKey();
                                            Object value111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111116);
                                            t.b(nVar4, a2Var, i32, value111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111117 = map$Entry.getKey();
                                            Object value111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111117);
                                            t.b(nVar4, a2Var, i32, value111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111118 = map$Entry.getKey();
                                            Object value111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111118);
                                            t.b(nVar4, a2Var, i32, value111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111119 = map$Entry.getKey();
                                            Object value111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111119);
                                            t.b(nVar4, a2Var, i32, value111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111110 = map$Entry.getKey();
                                            Object value1111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111110);
                                            t.b(nVar4, a2Var, i32, value1111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111 = map$Entry.getKey();
                                            Object value1111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111);
                                            t.b(nVar4, a2Var, i32, value1111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111112 = map$Entry.getKey();
                                            Object value1111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111112);
                                            t.b(nVar4, a2Var, i32, value1111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111113 = map$Entry.getKey();
                                            Object value1111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111113);
                                            t.b(nVar4, a2Var, i32, value1111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111114 = map$Entry.getKey();
                                            Object value1111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111114);
                                            t.b(nVar4, a2Var, i32, value1111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111115 = map$Entry.getKey();
                                            Object value1111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111115);
                                            t.b(nVar4, a2Var, i32, value1111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111116 = map$Entry.getKey();
                                            Object value1111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111116);
                                            t.b(nVar4, a2Var, i32, value1111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111117 = map$Entry.getKey();
                                            Object value1111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111117);
                                            t.b(nVar4, a2Var, i32, value1111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111118 = map$Entry.getKey();
                                            Object value1111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111118);
                                            t.b(nVar4, a2Var, i32, value1111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111119 = map$Entry.getKey();
                                            Object value1111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111119);
                                            t.b(nVar4, a2Var, i32, value1111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111110 = map$Entry.getKey();
                                            Object value11111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111110);
                                            t.b(nVar4, a2Var, i32, value11111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111 = map$Entry.getKey();
                                            Object value11111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111);
                                            t.b(nVar4, a2Var, i32, value11111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue4 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue4 >> 31) ^ (iIntValue4 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111112 = map$Entry.getKey();
                                            Object value11111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111112);
                                            t.b(nVar4, a2Var, i32, value11111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue4 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue4 << i33) ^ (jLongValue4 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111113 = map$Entry.getKey();
                                            Object value11111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111113);
                                            t.b(nVar4, a2Var, i32, value11111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 4:
                                    iE = n.a(((Integer) key).intValue());
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111114 = map$Entry.getKey();
                                            Object value11111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111114);
                                            t.b(nVar4, a2Var, i32, value11111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111115 = map$Entry.getKey();
                                            Object value11111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111115);
                                            t.b(nVar4, a2Var, i32, value11111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111116 = map$Entry.getKey();
                                            Object value11111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111116);
                                            t.b(nVar4, a2Var, i32, value11111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111117 = map$Entry.getKey();
                                            Object value11111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111117);
                                            t.b(nVar4, a2Var, i32, value11111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111118 = map$Entry.getKey();
                                            Object value11111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111118);
                                            t.b(nVar4, a2Var, i32, value11111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111119 = map$Entry.getKey();
                                            Object value11111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111119);
                                            t.b(nVar4, a2Var, i32, value11111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111110 = map$Entry.getKey();
                                            Object value111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111110);
                                            t.b(nVar4, a2Var, i32, value111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111 = map$Entry.getKey();
                                            Object value111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111);
                                            t.b(nVar4, a2Var, i32, value111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111112 = map$Entry.getKey();
                                            Object value111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111112);
                                            t.b(nVar4, a2Var, i32, value111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111113 = map$Entry.getKey();
                                            Object value111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111113);
                                            t.b(nVar4, a2Var, i32, value111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111114 = map$Entry.getKey();
                                            Object value111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111114);
                                            t.b(nVar4, a2Var, i32, value111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111115 = map$Entry.getKey();
                                            Object value111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111115);
                                            t.b(nVar4, a2Var, i32, value111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111116 = map$Entry.getKey();
                                            Object value111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111116);
                                            t.b(nVar4, a2Var, i32, value111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111117 = map$Entry.getKey();
                                            Object value111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111117);
                                            t.b(nVar4, a2Var, i32, value111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111118 = map$Entry.getKey();
                                            Object value111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111118);
                                            t.b(nVar4, a2Var, i32, value111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111119 = map$Entry.getKey();
                                            Object value111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111119);
                                            t.b(nVar4, a2Var, i32, value111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue5 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue5 >> 31) ^ (iIntValue5 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111110 = map$Entry.getKey();
                                            Object value1111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111110);
                                            t.b(nVar4, a2Var, i32, value1111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue5 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue5 << i33) ^ (jLongValue5 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111 = map$Entry.getKey();
                                            Object value1111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111);
                                            t.b(nVar4, a2Var, i32, value1111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 5:
                                    ((Long) key).getClass();
                                    iE = 8;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111112 = map$Entry.getKey();
                                            Object value1111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111112);
                                            t.b(nVar4, a2Var, i32, value1111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111113 = map$Entry.getKey();
                                            Object value1111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111113);
                                            t.b(nVar4, a2Var, i32, value1111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111114 = map$Entry.getKey();
                                            Object value1111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111114);
                                            t.b(nVar4, a2Var, i32, value1111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111115 = map$Entry.getKey();
                                            Object value1111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111115);
                                            t.b(nVar4, a2Var, i32, value1111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111116 = map$Entry.getKey();
                                            Object value1111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111116);
                                            t.b(nVar4, a2Var, i32, value1111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111117 = map$Entry.getKey();
                                            Object value1111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111117);
                                            t.b(nVar4, a2Var, i32, value1111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111118 = map$Entry.getKey();
                                            Object value1111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111118);
                                            t.b(nVar4, a2Var, i32, value1111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111119 = map$Entry.getKey();
                                            Object value1111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111119);
                                            t.b(nVar4, a2Var, i32, value1111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111110 = map$Entry.getKey();
                                            Object value11111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111110);
                                            t.b(nVar4, a2Var, i32, value11111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111 = map$Entry.getKey();
                                            Object value11111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111);
                                            t.b(nVar4, a2Var, i32, value11111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111112 = map$Entry.getKey();
                                            Object value11111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111112);
                                            t.b(nVar4, a2Var, i32, value11111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111113 = map$Entry.getKey();
                                            Object value11111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111113);
                                            t.b(nVar4, a2Var, i32, value11111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111114 = map$Entry.getKey();
                                            Object value11111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111114);
                                            t.b(nVar4, a2Var, i32, value11111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111115 = map$Entry.getKey();
                                            Object value11111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111115);
                                            t.b(nVar4, a2Var, i32, value11111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111116 = map$Entry.getKey();
                                            Object value11111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111116);
                                            t.b(nVar4, a2Var, i32, value11111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111117 = map$Entry.getKey();
                                            Object value11111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111117);
                                            t.b(nVar4, a2Var, i32, value11111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue6 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue6 >> 31) ^ (iIntValue6 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111118 = map$Entry.getKey();
                                            Object value11111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111118);
                                            t.b(nVar4, a2Var, i32, value11111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue6 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue6 << i33) ^ (jLongValue6 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111119 = map$Entry.getKey();
                                            Object value11111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111119);
                                            t.b(nVar4, a2Var, i32, value11111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 6:
                                    ((Integer) key).getClass();
                                    iE = 4;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111110 = map$Entry.getKey();
                                            Object value111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111110);
                                            t.b(nVar4, a2Var, i32, value111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111 = map$Entry.getKey();
                                            Object value111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111);
                                            t.b(nVar4, a2Var, i32, value111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111112 = map$Entry.getKey();
                                            Object value111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111112);
                                            t.b(nVar4, a2Var, i32, value111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111113 = map$Entry.getKey();
                                            Object value111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111113);
                                            t.b(nVar4, a2Var, i32, value111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111114 = map$Entry.getKey();
                                            Object value111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111114);
                                            t.b(nVar4, a2Var, i32, value111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111115 = map$Entry.getKey();
                                            Object value111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111115);
                                            t.b(nVar4, a2Var, i32, value111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111116 = map$Entry.getKey();
                                            Object value111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111116);
                                            t.b(nVar4, a2Var, i32, value111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111117 = map$Entry.getKey();
                                            Object value111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111117);
                                            t.b(nVar4, a2Var, i32, value111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111118 = map$Entry.getKey();
                                            Object value111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111118);
                                            t.b(nVar4, a2Var, i32, value111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111119 = map$Entry.getKey();
                                            Object value111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111119);
                                            t.b(nVar4, a2Var, i32, value111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111110 = map$Entry.getKey();
                                            Object value1111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111110);
                                            t.b(nVar4, a2Var, i32, value1111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111 = map$Entry.getKey();
                                            Object value1111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111);
                                            t.b(nVar4, a2Var, i32, value1111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111112 = map$Entry.getKey();
                                            Object value1111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111112);
                                            t.b(nVar4, a2Var, i32, value1111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111113 = map$Entry.getKey();
                                            Object value1111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111113);
                                            t.b(nVar4, a2Var, i32, value1111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111114 = map$Entry.getKey();
                                            Object value1111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111114);
                                            t.b(nVar4, a2Var, i32, value1111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111115 = map$Entry.getKey();
                                            Object value1111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111115);
                                            t.b(nVar4, a2Var, i32, value1111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue7 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue7 >> 31) ^ (iIntValue7 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111116 = map$Entry.getKey();
                                            Object value1111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111116);
                                            t.b(nVar4, a2Var, i32, value1111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue7 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue7 << i33) ^ (jLongValue7 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111117 = map$Entry.getKey();
                                            Object value1111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111117);
                                            t.b(nVar4, a2Var, i32, value1111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 7:
                                    ((Boolean) key).getClass();
                                    iE = i33;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111118 = map$Entry.getKey();
                                            Object value1111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111118);
                                            t.b(nVar4, a2Var, i32, value1111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111119 = map$Entry.getKey();
                                            Object value1111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111119);
                                            t.b(nVar4, a2Var, i32, value1111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111110 = map$Entry.getKey();
                                            Object value11111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111110);
                                            t.b(nVar4, a2Var, i32, value11111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111 = map$Entry.getKey();
                                            Object value11111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111);
                                            t.b(nVar4, a2Var, i32, value11111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111112 = map$Entry.getKey();
                                            Object value11111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111112);
                                            t.b(nVar4, a2Var, i32, value11111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111113 = map$Entry.getKey();
                                            Object value11111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111113);
                                            t.b(nVar4, a2Var, i32, value11111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111114 = map$Entry.getKey();
                                            Object value11111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111114);
                                            t.b(nVar4, a2Var, i32, value11111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111115 = map$Entry.getKey();
                                            Object value11111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111115);
                                            t.b(nVar4, a2Var, i32, value11111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111116 = map$Entry.getKey();
                                            Object value11111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111116);
                                            t.b(nVar4, a2Var, i32, value11111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111117 = map$Entry.getKey();
                                            Object value11111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111117);
                                            t.b(nVar4, a2Var, i32, value11111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111118 = map$Entry.getKey();
                                            Object value11111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111118);
                                            t.b(nVar4, a2Var, i32, value11111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111119 = map$Entry.getKey();
                                            Object value11111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111119);
                                            t.b(nVar4, a2Var, i32, value11111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111110 = map$Entry.getKey();
                                            Object value111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111110);
                                            t.b(nVar4, a2Var, i32, value111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111 = map$Entry.getKey();
                                            Object value111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111);
                                            t.b(nVar4, a2Var, i32, value111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111112 = map$Entry.getKey();
                                            Object value111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111112);
                                            t.b(nVar4, a2Var, i32, value111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111113 = map$Entry.getKey();
                                            Object value111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111113);
                                            t.b(nVar4, a2Var, i32, value111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue8 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue8 >> 31) ^ (iIntValue8 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111114 = map$Entry.getKey();
                                            Object value111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111114);
                                            t.b(nVar4, a2Var, i32, value111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue8 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue8 << i33) ^ (jLongValue8 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111115 = map$Entry.getKey();
                                            Object value111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111115);
                                            t.b(nVar4, a2Var, i32, value111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 8:
                                    if (key instanceof g) {
                                        size = ((g) key).size();
                                        iD = n.d(size);
                                        iE = size + iD;
                                    } else {
                                        iE = n.b((String) key);
                                    }
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111116 = map$Entry.getKey();
                                            Object value111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111116);
                                            t.b(nVar4, a2Var, i32, value111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111117 = map$Entry.getKey();
                                            Object value111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111117);
                                            t.b(nVar4, a2Var, i32, value111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111118 = map$Entry.getKey();
                                            Object value111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111118);
                                            t.b(nVar4, a2Var, i32, value111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111119 = map$Entry.getKey();
                                            Object value111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111119);
                                            t.b(nVar4, a2Var, i32, value111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111110 = map$Entry.getKey();
                                            Object value1111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111110);
                                            t.b(nVar4, a2Var, i32, value1111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111 = map$Entry.getKey();
                                            Object value1111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111);
                                            t.b(nVar4, a2Var, i32, value1111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111112 = map$Entry.getKey();
                                            Object value1111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111112);
                                            t.b(nVar4, a2Var, i32, value1111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111113 = map$Entry.getKey();
                                            Object value1111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111113);
                                            t.b(nVar4, a2Var, i32, value1111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111114 = map$Entry.getKey();
                                            Object value1111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111114);
                                            t.b(nVar4, a2Var, i32, value1111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111115 = map$Entry.getKey();
                                            Object value1111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111115);
                                            t.b(nVar4, a2Var, i32, value1111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111116 = map$Entry.getKey();
                                            Object value1111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111116);
                                            t.b(nVar4, a2Var, i32, value1111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111117 = map$Entry.getKey();
                                            Object value1111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111117);
                                            t.b(nVar4, a2Var, i32, value1111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111118 = map$Entry.getKey();
                                            Object value1111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111118);
                                            t.b(nVar4, a2Var, i32, value1111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111119 = map$Entry.getKey();
                                            Object value1111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111119);
                                            t.b(nVar4, a2Var, i32, value1111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111110 = map$Entry.getKey();
                                            Object value11111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111110);
                                            t.b(nVar4, a2Var, i32, value11111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111 = map$Entry.getKey();
                                            Object value11111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111);
                                            t.b(nVar4, a2Var, i32, value11111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue9 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue9 >> 31) ^ (iIntValue9 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111112 = map$Entry.getKey();
                                            Object value11111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111112);
                                            t.b(nVar4, a2Var, i32, value11111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue9 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue9 << i33) ^ (jLongValue9 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111113 = map$Entry.getKey();
                                            Object value11111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111113);
                                            t.b(nVar4, a2Var, i32, value11111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 9:
                                    iA = ((y) ((a) key)).a(null);
                                    iE = iA;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111114 = map$Entry.getKey();
                                            Object value11111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111114);
                                            t.b(nVar4, a2Var, i32, value11111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111115 = map$Entry.getKey();
                                            Object value11111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111115);
                                            t.b(nVar4, a2Var, i32, value11111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111116 = map$Entry.getKey();
                                            Object value11111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111116);
                                            t.b(nVar4, a2Var, i32, value11111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111117 = map$Entry.getKey();
                                            Object value11111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111117);
                                            t.b(nVar4, a2Var, i32, value11111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111118 = map$Entry.getKey();
                                            Object value11111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111118);
                                            t.b(nVar4, a2Var, i32, value11111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111119 = map$Entry.getKey();
                                            Object value11111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111119);
                                            t.b(nVar4, a2Var, i32, value11111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111110 = map$Entry.getKey();
                                            Object value111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111110);
                                            t.b(nVar4, a2Var, i32, value111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111 = map$Entry.getKey();
                                            Object value111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111);
                                            t.b(nVar4, a2Var, i32, value111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111112 = map$Entry.getKey();
                                            Object value111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111112);
                                            t.b(nVar4, a2Var, i32, value111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111113 = map$Entry.getKey();
                                            Object value111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111113);
                                            t.b(nVar4, a2Var, i32, value111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111114 = map$Entry.getKey();
                                            Object value111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111114);
                                            t.b(nVar4, a2Var, i32, value111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111115 = map$Entry.getKey();
                                            Object value111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111115);
                                            t.b(nVar4, a2Var, i32, value111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111116 = map$Entry.getKey();
                                            Object value111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111116);
                                            t.b(nVar4, a2Var, i32, value111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111117 = map$Entry.getKey();
                                            Object value111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111117);
                                            t.b(nVar4, a2Var, i32, value111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111118 = map$Entry.getKey();
                                            Object value111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111118);
                                            t.b(nVar4, a2Var, i32, value111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111119 = map$Entry.getKey();
                                            Object value111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111119);
                                            t.b(nVar4, a2Var, i32, value111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue10 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue10 >> 31) ^ (iIntValue10 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111110 = map$Entry.getKey();
                                            Object value1111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111110);
                                            t.b(nVar4, a2Var, i32, value1111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue10 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue10 << i33) ^ (jLongValue10 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111 = map$Entry.getKey();
                                            Object value1111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 10:
                                    int iA2 = ((y) ((a) key)).a(null);
                                    iA = n.d(iA2) + iA2;
                                    iE = iA;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111112 = map$Entry.getKey();
                                            Object value1111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111112);
                                            t.b(nVar4, a2Var, i32, value1111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111113 = map$Entry.getKey();
                                            Object value1111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111113);
                                            t.b(nVar4, a2Var, i32, value1111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111114 = map$Entry.getKey();
                                            Object value1111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111114);
                                            t.b(nVar4, a2Var, i32, value1111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111115 = map$Entry.getKey();
                                            Object value1111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111115);
                                            t.b(nVar4, a2Var, i32, value1111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111116 = map$Entry.getKey();
                                            Object value1111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111116);
                                            t.b(nVar4, a2Var, i32, value1111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111117 = map$Entry.getKey();
                                            Object value1111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111117);
                                            t.b(nVar4, a2Var, i32, value1111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111118 = map$Entry.getKey();
                                            Object value1111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111118);
                                            t.b(nVar4, a2Var, i32, value1111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111119 = map$Entry.getKey();
                                            Object value1111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111119);
                                            t.b(nVar4, a2Var, i32, value1111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111110 = map$Entry.getKey();
                                            Object value11111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111110);
                                            t.b(nVar4, a2Var, i32, value11111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111 = map$Entry.getKey();
                                            Object value11111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111112 = map$Entry.getKey();
                                            Object value11111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111112);
                                            t.b(nVar4, a2Var, i32, value11111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111113 = map$Entry.getKey();
                                            Object value11111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111113);
                                            t.b(nVar4, a2Var, i32, value11111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111114 = map$Entry.getKey();
                                            Object value11111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111114);
                                            t.b(nVar4, a2Var, i32, value11111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111115 = map$Entry.getKey();
                                            Object value11111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111115);
                                            t.b(nVar4, a2Var, i32, value11111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111116 = map$Entry.getKey();
                                            Object value11111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111116);
                                            t.b(nVar4, a2Var, i32, value11111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111117 = map$Entry.getKey();
                                            Object value11111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111117);
                                            t.b(nVar4, a2Var, i32, value11111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue11 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue11 >> 31) ^ (iIntValue11 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111118 = map$Entry.getKey();
                                            Object value11111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111118);
                                            t.b(nVar4, a2Var, i32, value11111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue11 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue11 << i33) ^ (jLongValue11 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111119 = map$Entry.getKey();
                                            Object value11111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111119);
                                            t.b(nVar4, a2Var, i32, value11111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 11:
                                    if (key instanceof g) {
                                        size = ((g) key).size();
                                        iD = n.d(size);
                                    } else {
                                        size = ((byte[]) key).length;
                                        iD = n.d(size);
                                    }
                                    iE = size + iD;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111110 = map$Entry.getKey();
                                            Object value111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111 = map$Entry.getKey();
                                            Object value111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111112 = map$Entry.getKey();
                                            Object value111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111113 = map$Entry.getKey();
                                            Object value111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111114 = map$Entry.getKey();
                                            Object value111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111115 = map$Entry.getKey();
                                            Object value111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111116 = map$Entry.getKey();
                                            Object value111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111117 = map$Entry.getKey();
                                            Object value111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111118 = map$Entry.getKey();
                                            Object value111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111119 = map$Entry.getKey();
                                            Object value111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111110 = map$Entry.getKey();
                                            Object value1111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111 = map$Entry.getKey();
                                            Object value1111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111112 = map$Entry.getKey();
                                            Object value1111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111113 = map$Entry.getKey();
                                            Object value1111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111114 = map$Entry.getKey();
                                            Object value1111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111115 = map$Entry.getKey();
                                            Object value1111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue12 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue12 >> 31) ^ (iIntValue12 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111116 = map$Entry.getKey();
                                            Object value1111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue12 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue12 << i33) ^ (jLongValue12 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111117 = map$Entry.getKey();
                                            Object value1111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 12:
                                    iE = n.d(((Integer) key).intValue());
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111118 = map$Entry.getKey();
                                            Object value1111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111119 = map$Entry.getKey();
                                            Object value1111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111110 = map$Entry.getKey();
                                            Object value11111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111 = map$Entry.getKey();
                                            Object value11111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111112 = map$Entry.getKey();
                                            Object value11111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111113 = map$Entry.getKey();
                                            Object value11111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111114 = map$Entry.getKey();
                                            Object value11111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111115 = map$Entry.getKey();
                                            Object value11111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111116 = map$Entry.getKey();
                                            Object value11111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111117 = map$Entry.getKey();
                                            Object value11111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111118 = map$Entry.getKey();
                                            Object value11111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111119 = map$Entry.getKey();
                                            Object value11111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111110 = map$Entry.getKey();
                                            Object value111111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111 = map$Entry.getKey();
                                            Object value111111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111112 = map$Entry.getKey();
                                            Object value111111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111113 = map$Entry.getKey();
                                            Object value111111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue13 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue13 >> 31) ^ (iIntValue13 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111114 = map$Entry.getKey();
                                            Object value111111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue13 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue13 << i33) ^ (jLongValue13 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111115 = map$Entry.getKey();
                                            Object value111111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 13:
                                    iE = key instanceof z ? n.a(((z) key).a()) : n.a(((Integer) key).intValue());
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111116 = map$Entry.getKey();
                                            Object value111111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111117 = map$Entry.getKey();
                                            Object value111111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111118 = map$Entry.getKey();
                                            Object value111111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111119 = map$Entry.getKey();
                                            Object value111111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111110 = map$Entry.getKey();
                                            Object value1111111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111 = map$Entry.getKey();
                                            Object value1111111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111112 = map$Entry.getKey();
                                            Object value1111111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111113 = map$Entry.getKey();
                                            Object value1111111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111114 = map$Entry.getKey();
                                            Object value1111111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111115 = map$Entry.getKey();
                                            Object value1111111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111116 = map$Entry.getKey();
                                            Object value1111111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111117 = map$Entry.getKey();
                                            Object value1111111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111118 = map$Entry.getKey();
                                            Object value1111111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111119 = map$Entry.getKey();
                                            Object value1111111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111110 = map$Entry.getKey();
                                            Object value11111111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111 = map$Entry.getKey();
                                            Object value11111111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue14 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue14 >> 31) ^ (iIntValue14 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111112 = map$Entry.getKey();
                                            Object value11111111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue14 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue14 << i33) ^ (jLongValue14 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111113 = map$Entry.getKey();
                                            Object value11111111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 14:
                                    ((Integer) key).getClass();
                                    iE = 4;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111114 = map$Entry.getKey();
                                            Object value11111111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111115 = map$Entry.getKey();
                                            Object value11111111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111116 = map$Entry.getKey();
                                            Object value11111111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111117 = map$Entry.getKey();
                                            Object value11111111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111118 = map$Entry.getKey();
                                            Object value11111111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111119 = map$Entry.getKey();
                                            Object value11111111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111110 = map$Entry.getKey();
                                            Object value111111111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111 = map$Entry.getKey();
                                            Object value111111111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111112 = map$Entry.getKey();
                                            Object value111111111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111113 = map$Entry.getKey();
                                            Object value111111111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111114 = map$Entry.getKey();
                                            Object value111111111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111115 = map$Entry.getKey();
                                            Object value111111111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111116 = map$Entry.getKey();
                                            Object value111111111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111117 = map$Entry.getKey();
                                            Object value111111111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111118 = map$Entry.getKey();
                                            Object value111111111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111119 = map$Entry.getKey();
                                            Object value111111111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue15 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue15 >> 31) ^ (iIntValue15 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111110 = map$Entry.getKey();
                                            Object value1111111111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue15 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue15 << i33) ^ (jLongValue15 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111 = map$Entry.getKey();
                                            Object value1111111111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 15:
                                    ((Long) key).getClass();
                                    iE = 8;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111112 = map$Entry.getKey();
                                            Object value1111111111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111113 = map$Entry.getKey();
                                            Object value1111111111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111114 = map$Entry.getKey();
                                            Object value1111111111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111115 = map$Entry.getKey();
                                            Object value1111111111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111116 = map$Entry.getKey();
                                            Object value1111111111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111117 = map$Entry.getKey();
                                            Object value1111111111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111118 = map$Entry.getKey();
                                            Object value1111111111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111119 = map$Entry.getKey();
                                            Object value1111111111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111110 = map$Entry.getKey();
                                            Object value11111111111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111 = map$Entry.getKey();
                                            Object value11111111111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111112 = map$Entry.getKey();
                                            Object value11111111111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111113 = map$Entry.getKey();
                                            Object value11111111111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111114 = map$Entry.getKey();
                                            Object value11111111111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111115 = map$Entry.getKey();
                                            Object value11111111111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111116 = map$Entry.getKey();
                                            Object value11111111111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111117 = map$Entry.getKey();
                                            Object value11111111111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue16 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue16 >> 31) ^ (iIntValue16 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111118 = map$Entry.getKey();
                                            Object value11111111111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue16 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue16 << i33) ^ (jLongValue16 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111119 = map$Entry.getKey();
                                            Object value11111111111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 16:
                                    int iIntValue17 = ((Integer) key).intValue();
                                    iA = n.d((iIntValue17 << 1) ^ (iIntValue17 >> 31));
                                    iE = iA;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111110 = map$Entry.getKey();
                                            Object value111111111111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111111 = map$Entry.getKey();
                                            Object value111111111111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111112 = map$Entry.getKey();
                                            Object value111111111111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111113 = map$Entry.getKey();
                                            Object value111111111111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111114 = map$Entry.getKey();
                                            Object value111111111111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111115 = map$Entry.getKey();
                                            Object value111111111111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111116 = map$Entry.getKey();
                                            Object value111111111111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111117 = map$Entry.getKey();
                                            Object value111111111111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111118 = map$Entry.getKey();
                                            Object value111111111111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111119 = map$Entry.getKey();
                                            Object value111111111111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111110 = map$Entry.getKey();
                                            Object value1111111111111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111111 = map$Entry.getKey();
                                            Object value1111111111111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111112 = map$Entry.getKey();
                                            Object value1111111111111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111113 = map$Entry.getKey();
                                            Object value1111111111111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111114 = map$Entry.getKey();
                                            Object value1111111111111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111115 = map$Entry.getKey();
                                            Object value1111111111111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue18 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue18 >> 31) ^ (iIntValue18 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111116 = map$Entry.getKey();
                                            Object value1111111111111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue17 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue17 << i33) ^ (jLongValue17 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111117 = map$Entry.getKey();
                                            Object value1111111111111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 17:
                                    long jLongValue18 = ((Long) key).longValue();
                                    iA = n.e((jLongValue18 << i33) ^ (jLongValue18 >> 63));
                                    iE = iA;
                                    i12 = iE + iC2;
                                    iC = n.c(i32);
                                    if (a2Var == x1Var) {
                                        iC *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111118 = map$Entry.getKey();
                                            Object value1111111111111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key1111111111111111111111111111119 = map$Entry.getKey();
                                            Object value1111111111111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key1111111111111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value1111111111111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 2:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111110 = map$Entry.getKey();
                                            Object value11111111111111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 3:
                                            iE2 = n.e(((Long) value).longValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111111 = map$Entry.getKey();
                                            Object value11111111111111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 4:
                                            iE2 = n.a(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111112 = map$Entry.getKey();
                                            Object value11111111111111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111113 = map$Entry.getKey();
                                            Object value11111111111111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111114 = map$Entry.getKey();
                                            Object value11111111111111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE2 = i33;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111115 = map$Entry.getKey();
                                            Object value11111111111111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                                iE2 = size2 + iD2;
                                            } else {
                                                iE2 = n.b((String) value);
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111116 = map$Entry.getKey();
                                            Object value11111111111111111111111111111116 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111116);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111116);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 9:
                                            iE2 = ((y) ((a) value)).a(null);
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111117 = map$Entry.getKey();
                                            Object value11111111111111111111111111111117 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111117);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111117);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 10:
                                            size2 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size2);
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111118 = map$Entry.getKey();
                                            Object value11111111111111111111111111111118 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111118);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111118);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size2 = ((g) value).size();
                                                iD2 = n.d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iD2 = n.d(size2);
                                            }
                                            iE2 = size2 + iD2;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key11111111111111111111111111111119 = map$Entry.getKey();
                                            Object value11111111111111111111111111111119 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key11111111111111111111111111111119);
                                            t.b(nVar4, a2Var, i32, value11111111111111111111111111111119);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 12:
                                            iE2 = n.d(((Integer) value).intValue());
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111111110 = map$Entry.getKey();
                                            Object value111111111111111111111111111111110 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111111110);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111111110);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE2 = n.a(((z) value).a());
                                            } else {
                                                iE2 = n.a(((Integer) value).intValue());
                                            }
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111111111 = map$Entry.getKey();
                                            Object value111111111111111111111111111111111 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111111111);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111111111);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE2 = 4;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111111112 = map$Entry.getKey();
                                            Object value111111111111111111111111111111112 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111111112);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111111112);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE2 = 8;
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111111113 = map$Entry.getKey();
                                            Object value111111111111111111111111111111113 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111111113);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111111113);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 16:
                                            int iIntValue19 = ((Integer) value).intValue();
                                            iE2 = n.d((iIntValue19 >> 31) ^ (iIntValue19 << 1));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111111114 = map$Entry.getKey();
                                            Object value111111111111111111111111111111114 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111111114);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111111114);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        case 17:
                                            long jLongValue19 = ((Long) value).longValue();
                                            iE2 = n.e((jLongValue19 << i33) ^ (jLongValue19 >> 63));
                                            nVar4.y(iE2 + iC + i12);
                                            Object key111111111111111111111111111111115 = map$Entry.getKey();
                                            Object value111111111111111111111111111111115 = map$Entry.getValue();
                                            t.b(nVar4, a2Var2, i33, key111111111111111111111111111111115);
                                            t.b(nVar4, a2Var, i32, value111111111111111111111111111111115);
                                            i31 = i32;
                                            i14 = i35;
                                            i16 = i36;
                                            i18 = 1;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                default:
                                    ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                    break;
                            }
                        }
                    }
                    i10 = i14;
                    i11 = i16;
                    i14 = i10;
                    i16 = i11;
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (t0Var.q(obj, i17, i15)) {
                        double dDoubleValue = ((Double) s1.c.i(obj, j9)).doubleValue();
                        n nVar5 = (n) l0Var.f1527a;
                        nVar5.getClass();
                        nVar5.n(i17, Double.doubleToRawLongBits(dDoubleValue));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                    if (t0Var.q(obj, i17, i15)) {
                        float fFloatValue = ((Float) s1.c.i(obj, j9)).floatValue();
                        n nVar6 = (n) l0Var.f1527a;
                        nVar6.getClass();
                        nVar6.l(i17, Float.floatToRawIntBits(fFloatValue));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).z(i17, A(obj, j9));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).z(i17, A(obj, j9));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).p(i17, z(obj, j9));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 56:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).n(i17, A(obj, j9));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 57:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).l(i17, z(obj, j9));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 58:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).h(i17, ((Boolean) s1.c.i(obj, j9)).booleanValue());
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 59:
                    if (t0Var.q(obj, i17, i15)) {
                        Object object3 = unsafe.getObject(obj, j9);
                        if (object3 instanceof String) {
                            ((n) l0Var.f1527a).u(i17, (String) object3);
                        } else {
                            ((n) l0Var.f1527a).j(i17, (g) object3);
                        }
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 60:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).s(i17, (a) unsafe.getObject(obj, j9), t0Var.m(i15));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 61:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).j(i17, (g) unsafe.getObject(obj, j9));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 62:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).x(i17, z(obj, j9));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 63:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).p(i17, z(obj, j9));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 64:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).l(i17, z(obj, j9));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (t0Var.q(obj, i17, i15)) {
                        ((n) l0Var.f1527a).n(i17, A(obj, j9));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (t0Var.q(obj, i17, i15)) {
                        int iZ = z(obj, j9);
                        ((n) l0Var.f1527a).x(i17, (iZ >> 31) ^ (iZ << 1));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.GUIDELINE_USE_RTL /* 67 */:
                    if (t0Var.q(obj, i17, i15)) {
                        long jA = A(obj, j9);
                        ((n) l0Var.f1527a).z(i17, (jA << 1) ^ (jA >> 63));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                case 68:
                    if (t0Var.q(obj, i17, i15)) {
                        l0Var.a(i17, unsafe.getObject(obj, j9), t0Var.m(i15));
                    }
                    i15 += 3;
                    i13 = 1048575;
                    break;
                default:
                    i15 += 3;
                    i13 = 1048575;
                    break;
            }
            return;
        }
        t0Var.f1566l.getClass();
        ((y) obj).unknownFields.d(l0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final void a(Object obj, l0 l0Var) {
        l0Var.getClass();
        M(obj, l0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    @Override // com.google.protobuf.b1
    public final void b(Object obj, Object obj2) {
        Object obj3;
        if (!p(obj)) {
            androidx.navigation.b.t(obj, "Mutating immutable message: ");
            return;
        }
        obj2.getClass();
        int i9 = 0;
        while (true) {
            int[] iArr = this.f1558a;
            if (i9 >= iArr.length) {
                c1.j(this.f1566l, obj, obj2);
                return;
            }
            int iL = L(i9);
            long j9 = 1048575 & iL;
            int i10 = iArr[i9];
            switch (K(iL)) {
                case 0:
                    if (!n(i9, obj2)) {
                        obj3 = obj;
                    } else {
                        r1 r1Var = s1.c;
                        obj3 = obj;
                        r1Var.m(obj3, j9, r1Var.e(obj2, j9));
                        G(i9, obj3);
                    }
                    break;
                case 1:
                    if (n(i9, obj2)) {
                        r1 r1Var2 = s1.c;
                        r1Var2.n(obj, j9, r1Var2.f(obj2, j9));
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (n(i9, obj2)) {
                        s1.o(obj, j9, s1.c.h(obj2, j9));
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (n(i9, obj2)) {
                        s1.o(obj, j9, s1.c.h(obj2, j9));
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (n(i9, obj2)) {
                        s1.n(s1.c.g(obj2, j9), j9, obj);
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (n(i9, obj2)) {
                        s1.o(obj, j9, s1.c.h(obj2, j9));
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (n(i9, obj2)) {
                        s1.n(s1.c.g(obj2, j9), j9, obj);
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (n(i9, obj2)) {
                        r1 r1Var3 = s1.c;
                        r1Var3.k(obj, j9, r1Var3.c(obj2, j9));
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (n(i9, obj2)) {
                        s1.p(j9, obj, s1.c.i(obj2, j9));
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 9:
                    s(i9, obj, obj2);
                    obj3 = obj;
                    break;
                case 10:
                    if (n(i9, obj2)) {
                        s1.p(j9, obj, s1.c.i(obj2, j9));
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 11:
                    if (n(i9, obj2)) {
                        s1.n(s1.c.g(obj2, j9), j9, obj);
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (n(i9, obj2)) {
                        s1.n(s1.c.g(obj2, j9), j9, obj);
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (n(i9, obj2)) {
                        s1.n(s1.c.g(obj2, j9), j9, obj);
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (n(i9, obj2)) {
                        s1.o(obj, j9, s1.c.h(obj2, j9));
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (n(i9, obj2)) {
                        s1.n(s1.c.g(obj2, j9), j9, obj);
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 16:
                    if (n(i9, obj2)) {
                        s1.o(obj, j9, s1.c.h(obj2, j9));
                        G(i9, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    s(i9, obj, obj2);
                    obj3 = obj;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS /* 30 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    this.f1565k.b(j9, obj, obj2);
                    obj3 = obj;
                    break;
                case 50:
                    Class cls = c1.f1484a;
                    r1 r1Var4 = s1.c;
                    Object objI = r1Var4.i(obj, j9);
                    Object objI2 = r1Var4.i(obj2, j9);
                    this.f1567m.getClass();
                    s1.p(j9, obj, p0.a(objI, objI2));
                    obj3 = obj;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (q(obj2, i10, i9)) {
                        s1.p(j9, obj, s1.c.i(obj2, j9));
                        H(obj, i10, i9);
                    }
                    obj3 = obj;
                    break;
                case 60:
                    t(i9, obj, obj2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                case ConstraintLayout$LayoutParams$Table.GUIDELINE_USE_RTL /* 67 */:
                    if (q(obj2, i10, i9)) {
                        s1.p(j9, obj, s1.c.i(obj2, j9));
                        H(obj, i10, i9);
                    }
                    obj3 = obj;
                    break;
                case 68:
                    t(i9, obj, obj2);
                    obj3 = obj;
                    break;
                default:
                    obj3 = obj;
                    break;
            }
            i9 += 3;
            obj = obj3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:25:0x0070  */
    /* JADX WARN: Code duplicated, block: B:27:0x0076  */
    /* JADX WARN: Code duplicated, block: B:40:0x0083 A[SYNTHETIC] */
    @Override // com.google.protobuf.b1
    public final void c(Object obj) {
        if (p(obj)) {
            if (obj instanceof y) {
                y yVar = (y) obj;
                yVar.m(Integer.MAX_VALUE);
                yVar.memoizedHashCode = 0;
                yVar.j();
            }
            int[] iArr = this.f1558a;
            int length = iArr.length;
            for (int i9 = 0; i9 < length; i9 += 3) {
                int iL = L(i9);
                long j9 = 1048575 & iL;
                int iK = K(iL);
                if (iK != 9) {
                    if (iK != 60 && iK != 68) {
                        switch (iK) {
                            case 17:
                                if (n(i9, obj)) {
                                    m(i9).c(f1557o.getObject(obj, j9));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS /* 30 */:
                            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                            case ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                                this.f1565k.a(obj, j9);
                                break;
                            case 50:
                                Unsafe unsafe = f1557o;
                                Object object = unsafe.getObject(obj, j9);
                                if (object != null) {
                                    this.f1567m.getClass();
                                    ((o0) object).f1540b = false;
                                    unsafe.putObject(obj, j9, object);
                                }
                                break;
                        }
                    } else if (q(obj, iArr[i9], i9)) {
                        m(i9).c(f1557o.getObject(obj, j9));
                    }
                } else if (n(i9, obj)) {
                    m(i9).c(f1557o.getObject(obj, j9));
                }
            }
            this.f1566l.getClass();
            j1 j1Var = ((y) obj).unknownFields;
            if (j1Var.e) {
                j1Var.e = false;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final boolean d(Object obj) {
        int i9;
        int i10;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.f1562h) {
            int i14 = this.f1561g[i13];
            int[] iArr = this.f1558a;
            int i15 = iArr[i14];
            int iL = L(i14);
            int i16 = iArr[i14 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i11) {
                if (i17 != 1048575) {
                    i12 = f1557o.getInt(obj, i17);
                }
                i10 = i12;
                i9 = i17;
            } else {
                int i19 = i12;
                i9 = i11;
                i10 = i19;
            }
            if ((268435456 & iL) == 0 || o(obj, i14, i9, i10, i18)) {
                int iK = K(iL);
                if (iK == 9 || iK == 17) {
                    if (o(obj, i14, i9, i10, i18)) {
                        if (!m(i14).d(s1.c.i(obj, iL & 1048575))) {
                        }
                    } else {
                        continue;
                    }
                    i13++;
                    i11 = i9;
                    i12 = i10;
                } else {
                    if (iK != 27) {
                        if (iK == 60 || iK == 68) {
                            if (q(obj, i15, i14)) {
                                if (!m(i14).d(s1.c.i(obj, iL & 1048575))) {
                                }
                            } else {
                                continue;
                            }
                            i13++;
                            i11 = i9;
                            i12 = i10;
                        } else if (iK != 49) {
                            if (iK != 50) {
                                continue;
                            } else {
                                Object objI = s1.c.i(obj, iL & 1048575);
                                this.f1567m.getClass();
                                o0 o0Var = (o0) objI;
                                if (o0Var.isEmpty()) {
                                    continue;
                                } else {
                                    if (((n0) this.f1559b[(i14 / 3) * 2]).f1536a.f1532b.f1471b != b2.f1480j) {
                                        continue;
                                    } else {
                                        b1 b1VarA = null;
                                        for (Object obj2 : o0Var.values()) {
                                            if (b1VarA == null) {
                                                b1VarA = y0.c.a(obj2.getClass());
                                            }
                                            if (!b1VarA.d(obj2)) {
                                            }
                                        }
                                    }
                                }
                            }
                            i13++;
                            i11 = i9;
                            i12 = i10;
                        }
                    }
                    List list = (List) s1.c.i(obj, iL & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        b1 b1VarM = m(i14);
                        for (int i20 = 0; i20 < list.size(); i20++) {
                            if (b1VarM.d(list.get(i20))) {
                            }
                        }
                    }
                    i13++;
                    i11 = i9;
                    i12 = i10;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:42:0x00e1 A[PHI: r3
  0x00e1: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:83:0x0216, B:41:0x00df] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.protobuf.b1
    public final int e(y yVar) {
        int i9;
        int iB;
        int i10;
        int[] iArr = this.f1558a;
        int length = iArr.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iL = L(i12);
            int i13 = iArr[i12];
            long j9 = 1048575 & iL;
            int i14 = 1237;
            int iHashCode = 37;
            switch (K(iL)) {
                case 0:
                    i9 = i11 * 53;
                    iB = b0.b(Double.doubleToLongBits(s1.c.e(yVar, j9)));
                    i11 = iB + i9;
                    break;
                case 1:
                    i9 = i11 * 53;
                    iB = Float.floatToIntBits(s1.c.f(yVar, j9));
                    i11 = iB + i9;
                    break;
                case 2:
                    i9 = i11 * 53;
                    iB = b0.b(s1.c.h(yVar, j9));
                    i11 = iB + i9;
                    break;
                case 3:
                    i9 = i11 * 53;
                    iB = b0.b(s1.c.h(yVar, j9));
                    i11 = iB + i9;
                    break;
                case 4:
                    i9 = i11 * 53;
                    iB = s1.c.g(yVar, j9);
                    i11 = iB + i9;
                    break;
                case 5:
                    i9 = i11 * 53;
                    iB = b0.b(s1.c.h(yVar, j9));
                    i11 = iB + i9;
                    break;
                case 6:
                    i9 = i11 * 53;
                    iB = s1.c.g(yVar, j9);
                    i11 = iB + i9;
                    break;
                case 7:
                    i10 = i11 * 53;
                    boolean zC = s1.c.c(yVar, j9);
                    Charset charset = b0.f1473a;
                    if (zC) {
                        i14 = 1231;
                    }
                    i11 = i14 + i10;
                    break;
                case 8:
                    i9 = i11 * 53;
                    iB = ((String) s1.c.i(yVar, j9)).hashCode();
                    i11 = iB + i9;
                    break;
                case 9:
                    Object objI = s1.c.i(yVar, j9);
                    if (objI != null) {
                        iHashCode = objI.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i9 = i11 * 53;
                    iB = s1.c.i(yVar, j9).hashCode();
                    i11 = iB + i9;
                    break;
                case 11:
                    i9 = i11 * 53;
                    iB = s1.c.g(yVar, j9);
                    i11 = iB + i9;
                    break;
                case 12:
                    i9 = i11 * 53;
                    iB = s1.c.g(yVar, j9);
                    i11 = iB + i9;
                    break;
                case 13:
                    i9 = i11 * 53;
                    iB = s1.c.g(yVar, j9);
                    i11 = iB + i9;
                    break;
                case 14:
                    i9 = i11 * 53;
                    iB = b0.b(s1.c.h(yVar, j9));
                    i11 = iB + i9;
                    break;
                case 15:
                    i9 = i11 * 53;
                    iB = s1.c.g(yVar, j9);
                    i11 = iB + i9;
                    break;
                case 16:
                    i9 = i11 * 53;
                    iB = b0.b(s1.c.h(yVar, j9));
                    i11 = iB + i9;
                    break;
                case 17:
                    Object objI2 = s1.c.i(yVar, j9);
                    if (objI2 != null) {
                        iHashCode = objI2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS /* 30 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                case ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    i9 = i11 * 53;
                    iB = s1.c.i(yVar, j9).hashCode();
                    i11 = iB + i9;
                    break;
                case 50:
                    i9 = i11 * 53;
                    iB = s1.c.i(yVar, j9).hashCode();
                    i11 = iB + i9;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = b0.b(Double.doubleToLongBits(((Double) s1.c.i(yVar, j9)).doubleValue()));
                        i11 = iB + i9;
                    }
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = Float.floatToIntBits(((Float) s1.c.i(yVar, j9)).floatValue());
                        i11 = iB + i9;
                    }
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = b0.b(A(yVar, j9));
                        i11 = iB + i9;
                    }
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = b0.b(A(yVar, j9));
                        i11 = iB + i9;
                    }
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = z(yVar, j9);
                        i11 = iB + i9;
                    }
                    break;
                case 56:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = b0.b(A(yVar, j9));
                        i11 = iB + i9;
                    }
                    break;
                case 57:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = z(yVar, j9);
                        i11 = iB + i9;
                    }
                    break;
                case 58:
                    if (q(yVar, i13, i12)) {
                        i10 = i11 * 53;
                        boolean zBooleanValue = ((Boolean) s1.c.i(yVar, j9)).booleanValue();
                        Charset charset2 = b0.f1473a;
                        if (zBooleanValue) {
                            i14 = 1231;
                        }
                        i11 = i14 + i10;
                    }
                    break;
                case 59:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = ((String) s1.c.i(yVar, j9)).hashCode();
                        i11 = iB + i9;
                    }
                    break;
                case 60:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = s1.c.i(yVar, j9).hashCode();
                        i11 = iB + i9;
                    }
                    break;
                case 61:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = s1.c.i(yVar, j9).hashCode();
                        i11 = iB + i9;
                    }
                    break;
                case 62:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = z(yVar, j9);
                        i11 = iB + i9;
                    }
                    break;
                case 63:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = z(yVar, j9);
                        i11 = iB + i9;
                    }
                    break;
                case 64:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = z(yVar, j9);
                        i11 = iB + i9;
                    }
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = b0.b(A(yVar, j9));
                        i11 = iB + i9;
                    }
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = z(yVar, j9);
                        i11 = iB + i9;
                    }
                    break;
                case ConstraintLayout$LayoutParams$Table.GUIDELINE_USE_RTL /* 67 */:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = b0.b(A(yVar, j9));
                        i11 = iB + i9;
                    }
                    break;
                case 68:
                    if (q(yVar, i13, i12)) {
                        i9 = i11 * 53;
                        iB = s1.c.i(yVar, j9).hashCode();
                        i11 = iB + i9;
                    }
                    break;
            }
        }
        this.f1566l.getClass();
        return yVar.unknownFields.hashCode() + (i11 * 53);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:130:0x0324  */
    /* JADX WARN: Code duplicated, block: B:135:0x0331  */
    /* JADX WARN: Code duplicated, block: B:136:0x0343  */
    /* JADX WARN: Code duplicated, block: B:137:0x0354  */
    /* JADX WARN: Code duplicated, block: B:139:0x035d  */
    /* JADX WARN: Code duplicated, block: B:141:0x0366  */
    /* JADX WARN: Code duplicated, block: B:143:0x036a  */
    /* JADX WARN: Code duplicated, block: B:144:0x0376  */
    /* JADX WARN: Code duplicated, block: B:145:0x0382  */
    /* JADX WARN: Code duplicated, block: B:146:0x038e  */
    /* JADX WARN: Code duplicated, block: B:148:0x0392  */
    /* JADX WARN: Code duplicated, block: B:150:0x039f  */
    /* JADX WARN: Code duplicated, block: B:151:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:152:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:153:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:155:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:156:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:157:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:158:0x03db  */
    /* JADX WARN: Code duplicated, block: B:159:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:160:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:161:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:162:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:163:0x0409  */
    /* JADX WARN: Code duplicated, block: B:164:0x0410  */
    /* JADX WARN: Code duplicated, block: B:219:0x061c A[PHI: r19 r23 r25
  0x061c: PHI (r19v35 int) = 
  (r19v21 int)
  (r19v22 int)
  (r19v23 int)
  (r19v27 int)
  (r19v29 int)
  (r19v30 int)
  (r19v31 int)
  (r19v34 int)
  (r19v36 int)
 binds: [B:287:0x0822, B:283:0x0802, B:279:0x07e2, B:253:0x0730, B:239:0x06c0, B:235:0x06a0, B:231:0x0682, B:224:0x063e, B:218:0x061a] A[DONT_GENERATE, DONT_INLINE]
  0x061c: PHI (r23v19 int) = 
  (r23v2 int)
  (r23v3 int)
  (r23v4 int)
  (r23v8 int)
  (r23v10 int)
  (r23v11 int)
  (r23v12 int)
  (r23v16 int)
  (r23v20 int)
 binds: [B:287:0x0822, B:283:0x0802, B:279:0x07e2, B:253:0x0730, B:239:0x06c0, B:235:0x06a0, B:231:0x0682, B:224:0x063e, B:218:0x061a] A[DONT_GENERATE, DONT_INLINE]
  0x061c: PHI (r25v18 int) = 
  (r25v2 int)
  (r25v3 int)
  (r25v4 int)
  (r25v8 int)
  (r25v10 int)
  (r25v11 int)
  (r25v12 int)
  (r25v15 int)
  (r25v19 int)
 binds: [B:287:0x0822, B:283:0x0802, B:279:0x07e2, B:253:0x0730, B:239:0x06c0, B:235:0x06a0, B:231:0x0682, B:224:0x063e, B:218:0x061a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:363:0x032d A[SYNTHETIC] */
    @Override // com.google.protobuf.b1
    public final int f(y yVar) {
        int i9;
        int iC;
        int iC2;
        int iC3;
        int iE;
        int iC4;
        int iA;
        int iC5;
        int iC6;
        int iB;
        int iC7;
        int i10;
        int i11;
        int i12;
        int iC8;
        int size;
        int i13;
        int iC9;
        int iC10;
        int iA2;
        int iA3;
        int iE2;
        int size2;
        int iD;
        int i14;
        a2 a2Var;
        int iC11;
        int iE3;
        int size3;
        int iD2;
        int iC12;
        int iC13;
        int iC14;
        int iE4;
        int iC15;
        int iA4;
        int iC16;
        int iB2;
        t0 t0Var = this;
        y yVar2 = yVar;
        Unsafe unsafe = f1557o;
        int i15 = 1048575;
        int i16 = 1048575;
        int i17 = 0;
        int i18 = 0;
        int iA5 = 0;
        while (true) {
            int[] iArr = t0Var.f1558a;
            if (i17 >= iArr.length) {
                t0Var.f1566l.getClass();
                return yVar2.unknownFields.b() + iA5;
            }
            int iL = t0Var.L(i17);
            int iK = K(iL);
            int i19 = iArr[i17];
            int i20 = iArr[i17 + 2];
            int i21 = i20 & i15;
            int i22 = 1;
            if (iK <= 17) {
                if (i21 != i16) {
                    i18 = i21 == i15 ? 0 : unsafe.getInt(yVar2, i21);
                    i16 = i21;
                }
                i9 = 1 << (i20 >>> 20);
            } else {
                i9 = 0;
            }
            long j9 = iL & i15;
            if (iK >= u.c.f1572b) {
                int i23 = u.d.f1572b;
            }
            char c = '?';
            switch (iK) {
                case 0:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        iC = n.c(i19) + 8;
                        iA5 += iC;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 1:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        iC2 = n.c(i19);
                        iC6 = iC2 + 4;
                        iA5 += iC6;
                    }
                    t0Var = this;
                    yVar2 = yVar;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 2:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        long j10 = unsafe.getLong(yVar2, j9);
                        iC3 = n.c(i19);
                        iE = n.e(j10);
                        iA5 += iE + iC3;
                    }
                    t0Var = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 3:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        long j11 = unsafe.getLong(yVar2, j9);
                        iC3 = n.c(i19);
                        iE = n.e(j11);
                        iA5 += iE + iC3;
                    }
                    t0Var = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 4:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        int i24 = unsafe.getInt(yVar2, j9);
                        iC4 = n.c(i19);
                        iA = n.a(i24);
                        iA5 += iA + iC4;
                    }
                    t0Var = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 5:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        iC5 = n.c(i19);
                        iC6 = iC5 + 8;
                        iA5 += iC6;
                    }
                    t0Var = this;
                    yVar2 = yVar;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 6:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        iC2 = n.c(i19);
                        iC6 = iC2 + 4;
                        iA5 += iC6;
                    }
                    t0Var = this;
                    yVar2 = yVar;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 7:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        iC6 = n.c(i19) + 1;
                        iA5 += iC6;
                    }
                    t0Var = this;
                    yVar2 = yVar;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 8:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        Object object = unsafe.getObject(yVar2, j9);
                        if (object instanceof g) {
                            int iC17 = n.c(i19);
                            int size4 = ((g) object).size();
                            iB = q.a(size4, size4, iC17, iA5);
                        } else {
                            iB = n.b((String) object) + n.c(i19) + iA5;
                        }
                        iA5 = iB;
                    }
                    t0Var = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 9:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        Object object2 = unsafe.getObject(yVar2, j9);
                        b1 b1VarM = t0Var.m(i17);
                        Class cls = c1.f1484a;
                        int iC18 = n.c(i19);
                        int iA6 = ((a) object2).a(b1VarM);
                        iA5 = q.a(iA6, iA6, iC18, iA5);
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 10:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        g gVar = (g) unsafe.getObject(yVar2, j9);
                        int iC19 = n.c(i19);
                        int size5 = gVar.size();
                        iA5 = q.a(size5, size5, iC19, iA5);
                    }
                    t0Var = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 11:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        int i25 = unsafe.getInt(yVar2, j9);
                        iC4 = n.c(i19);
                        iA = n.d(i25);
                        iA5 += iA + iC4;
                    }
                    t0Var = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 12:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        int i26 = unsafe.getInt(yVar2, j9);
                        iC4 = n.c(i19);
                        iA = n.a(i26);
                        iA5 += iA + iC4;
                    }
                    t0Var = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 13:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        iC2 = n.c(i19);
                        iC6 = iC2 + 4;
                        iA5 += iC6;
                    }
                    t0Var = this;
                    yVar2 = yVar;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 14:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        iC5 = n.c(i19);
                        iC6 = iC5 + 8;
                        iA5 += iC6;
                    }
                    t0Var = this;
                    yVar2 = yVar;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 15:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        int i27 = unsafe.getInt(yVar2, j9);
                        iC4 = n.c(i19);
                        iA = n.d((i27 >> 31) ^ (i27 << 1));
                        iA5 += iA + iC4;
                    }
                    t0Var = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 16:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        long j12 = unsafe.getLong(yVar2, j9);
                        iC3 = n.c(i19);
                        iE = n.e((j12 >> 63) ^ (j12 << 1));
                        iA5 += iE + iC3;
                    }
                    t0Var = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 17:
                    if (t0Var.o(yVar2, i17, i16, i18, i9)) {
                        iC = ((a) unsafe.getObject(yVar2, j9)).a(t0Var.m(i17)) + (n.c(i19) * 2);
                        iA5 += iC;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 18:
                    iC7 = c1.c(i19, (List) unsafe.getObject(yVar2, j9));
                    iA5 += iC7;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 19:
                    iC7 = c1.b(i19, (List) unsafe.getObject(yVar2, j9));
                    iA5 += iC7;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 20:
                    i10 = i16;
                    i11 = i18;
                    i12 = 0;
                    List list = (List) unsafe.getObject(yVar2, j9);
                    Class cls2 = c1.f1484a;
                    if (list.size() == 0) {
                        iC8 = i12;
                    } else {
                        iC8 = (n.c(i19) * list.size()) + c1.e(list);
                    }
                    iA5 += iC8;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 21:
                    i10 = i16;
                    i11 = i18;
                    i12 = 0;
                    List list2 = (List) unsafe.getObject(yVar2, j9);
                    Class cls3 = c1.f1484a;
                    size = list2.size();
                    if (size == 0) {
                        iC8 = i12;
                    } else {
                        i13 = c1.i(list2);
                        iC9 = n.c(i19);
                        iC8 = (iC9 * size) + i13;
                    }
                    iA5 += iC8;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 22:
                    i10 = i16;
                    i11 = i18;
                    i12 = 0;
                    List list3 = (List) unsafe.getObject(yVar2, j9);
                    Class cls4 = c1.f1484a;
                    size = list3.size();
                    if (size == 0) {
                        iC8 = i12;
                    } else {
                        i13 = c1.d(list3);
                        iC9 = n.c(i19);
                        iC8 = (iC9 * size) + i13;
                    }
                    iA5 += iC8;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 23:
                    iC7 = c1.c(i19, (List) unsafe.getObject(yVar2, j9));
                    iA5 += iC7;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 24:
                    iC7 = c1.b(i19, (List) unsafe.getObject(yVar2, j9));
                    iA5 += iC7;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 25:
                    i10 = i16;
                    i11 = i18;
                    List list4 = (List) unsafe.getObject(yVar2, j9);
                    Class cls5 = c1.f1484a;
                    int size6 = list4.size();
                    iA5 += size6 == 0 ? 0 : (n.c(i19) + 1) * size6;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 26:
                    i10 = i16;
                    i11 = i18;
                    i12 = 0;
                    List list5 = (List) unsafe.getObject(yVar2, j9);
                    Class cls6 = c1.f1484a;
                    int size7 = list5.size();
                    if (size7 == 0) {
                        iC8 = i12;
                    } else {
                        iC8 = n.c(i19) * size7;
                        if (list5 instanceof g0) {
                            g0 g0Var = (g0) list5;
                            for (int i28 = 0; i28 < size7; i28++) {
                                Object objV = g0Var.V(i28);
                                if (objV instanceof g) {
                                    int size8 = ((g) objV).size();
                                    iC8 = n.d(size8) + size8 + iC8;
                                } else {
                                    iC8 = n.b((String) objV) + iC8;
                                }
                            }
                        } else {
                            for (int i29 = 0; i29 < size7; i29++) {
                                Object obj = list5.get(i29);
                                if (obj instanceof g) {
                                    int size9 = ((g) obj).size();
                                    iC8 = n.d(size9) + size9 + iC8;
                                } else {
                                    iC8 = n.b((String) obj) + iC8;
                                }
                            }
                        }
                    }
                    iA5 += iC8;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 27:
                    i10 = i16;
                    i11 = i18;
                    List list6 = (List) unsafe.getObject(yVar2, j9);
                    b1 b1VarM2 = t0Var.m(i17);
                    Class cls7 = c1.f1484a;
                    int size10 = list6.size();
                    if (size10 == 0) {
                        iC10 = 0;
                    } else {
                        iC10 = n.c(i19) * size10;
                        for (int i30 = 0; i30 < size10; i30++) {
                            int iA7 = ((a) list6.get(i30)).a(b1VarM2);
                            iC10 += n.d(iA7) + iA7;
                        }
                    }
                    iA5 += iC10;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 28:
                    i10 = i16;
                    i11 = i18;
                    i12 = 0;
                    List list7 = (List) unsafe.getObject(yVar2, j9);
                    Class cls8 = c1.f1484a;
                    int size11 = list7.size();
                    if (size11 == 0) {
                        iC8 = i12;
                    } else {
                        iC8 = n.c(i19) * size11;
                        for (int i31 = 0; i31 < list7.size(); i31++) {
                            int size12 = ((g) list7.get(i31)).size();
                            iC8 += n.d(size12) + size12;
                        }
                    }
                    iA5 += iC8;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                    i10 = i16;
                    i11 = i18;
                    i12 = 0;
                    List list8 = (List) unsafe.getObject(yVar2, j9);
                    Class cls9 = c1.f1484a;
                    size = list8.size();
                    if (size == 0) {
                        iC8 = i12;
                    } else {
                        i13 = c1.h(list8);
                        iC9 = n.c(i19);
                        iC8 = (iC9 * size) + i13;
                    }
                    iA5 += iC8;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS /* 30 */:
                    i10 = i16;
                    i11 = i18;
                    i12 = 0;
                    List list9 = (List) unsafe.getObject(yVar2, j9);
                    Class cls10 = c1.f1484a;
                    size = list9.size();
                    if (size == 0) {
                        iC8 = i12;
                    } else {
                        i13 = c1.a(list9);
                        iC9 = n.c(i19);
                        iC8 = (iC9 * size) + i13;
                    }
                    iA5 += iC8;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                    iC7 = c1.b(i19, (List) unsafe.getObject(yVar2, j9));
                    iA5 += iC7;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 32:
                    iC7 = c1.c(i19, (List) unsafe.getObject(yVar2, j9));
                    iA5 += iC7;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 33:
                    i10 = i16;
                    i11 = i18;
                    i12 = 0;
                    List list10 = (List) unsafe.getObject(yVar2, j9);
                    Class cls11 = c1.f1484a;
                    size = list10.size();
                    if (size == 0) {
                        iC8 = i12;
                    } else {
                        i13 = c1.f(list10);
                        iC9 = n.c(i19);
                        iC8 = (iC9 * size) + i13;
                    }
                    iA5 += iC8;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 34:
                    i10 = i16;
                    i11 = i18;
                    i12 = 0;
                    List list11 = (List) unsafe.getObject(yVar2, j9);
                    Class cls12 = c1.f1484a;
                    size = list11.size();
                    if (size == 0) {
                        iC8 = i12;
                    } else {
                        i13 = c1.g(list11);
                        iC9 = n.c(i19);
                        iC8 = (iC9 * size) + i13;
                    }
                    iA5 += iC8;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 35:
                    i10 = i16;
                    i11 = i18;
                    List list12 = (List) unsafe.getObject(yVar2, j9);
                    Class cls13 = c1.f1484a;
                    int size13 = list12.size() * 8;
                    if (size13 > 0) {
                        iA5 = q.a(size13, n.c(i19), size13, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 36:
                    i10 = i16;
                    i11 = i18;
                    List list13 = (List) unsafe.getObject(yVar2, j9);
                    Class cls14 = c1.f1484a;
                    int size14 = list13.size() * 4;
                    if (size14 > 0) {
                        iA5 = q.a(size14, n.c(i19), size14, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 37:
                    i10 = i16;
                    i11 = i18;
                    int iE5 = c1.e((List) unsafe.getObject(yVar2, j9));
                    if (iE5 > 0) {
                        iA5 = q.a(iE5, n.c(i19), iE5, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 38:
                    i10 = i16;
                    i11 = i18;
                    int i32 = c1.i((List) unsafe.getObject(yVar2, j9));
                    if (i32 > 0) {
                        iA5 = q.a(i32, n.c(i19), i32, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 39:
                    i10 = i16;
                    i11 = i18;
                    int iD3 = c1.d((List) unsafe.getObject(yVar2, j9));
                    if (iD3 > 0) {
                        iA5 = q.a(iD3, n.c(i19), iD3, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 40:
                    i10 = i16;
                    i11 = i18;
                    List list14 = (List) unsafe.getObject(yVar2, j9);
                    Class cls15 = c1.f1484a;
                    int size15 = list14.size() * 8;
                    if (size15 > 0) {
                        iA5 = q.a(size15, n.c(i19), size15, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 41:
                    i10 = i16;
                    i11 = i18;
                    List list15 = (List) unsafe.getObject(yVar2, j9);
                    Class cls16 = c1.f1484a;
                    int size16 = list15.size() * 4;
                    if (size16 > 0) {
                        iA5 = q.a(size16, n.c(i19), size16, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 42:
                    i10 = i16;
                    i11 = i18;
                    List list16 = (List) unsafe.getObject(yVar2, j9);
                    Class cls17 = c1.f1484a;
                    int size17 = list16.size();
                    if (size17 > 0) {
                        iA5 = q.a(size17, n.c(i19), size17, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 43:
                    i10 = i16;
                    i11 = i18;
                    int iH = c1.h((List) unsafe.getObject(yVar2, j9));
                    if (iH > 0) {
                        iA5 = q.a(iH, n.c(i19), iH, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 44:
                    i10 = i16;
                    i11 = i18;
                    int iA8 = c1.a((List) unsafe.getObject(yVar2, j9));
                    if (iA8 > 0) {
                        iA5 = q.a(iA8, n.c(i19), iA8, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 45:
                    i10 = i16;
                    i11 = i18;
                    List list17 = (List) unsafe.getObject(yVar2, j9);
                    Class cls18 = c1.f1484a;
                    int size18 = list17.size() * 4;
                    if (size18 > 0) {
                        iA5 = q.a(size18, n.c(i19), size18, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 46:
                    i10 = i16;
                    i11 = i18;
                    List list18 = (List) unsafe.getObject(yVar2, j9);
                    Class cls19 = c1.f1484a;
                    int size19 = list18.size() * 8;
                    if (size19 > 0) {
                        iA5 = q.a(size19, n.c(i19), size19, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 47:
                    i10 = i16;
                    i11 = i18;
                    int iF = c1.f((List) unsafe.getObject(yVar2, j9));
                    if (iF > 0) {
                        iA5 = q.a(iF, n.c(i19), iF, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    i10 = i16;
                    i11 = i18;
                    int iG = c1.g((List) unsafe.getObject(yVar2, j9));
                    if (iG > 0) {
                        iA5 = q.a(iG, n.c(i19), iG, iA5);
                    }
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    i10 = i16;
                    i11 = i18;
                    List list19 = (List) unsafe.getObject(yVar2, j9);
                    b1 b1VarM3 = t0Var.m(i17);
                    Class cls20 = c1.f1484a;
                    int size20 = list19.size();
                    if (size20 == 0) {
                        iA2 = 0;
                    } else {
                        iA2 = 0;
                        for (int i33 = 0; i33 < size20; i33++) {
                            iA2 += ((a) list19.get(i33)).a(b1VarM3) + (n.c(i19) * 2);
                        }
                    }
                    iA5 += iA2;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 50:
                    Object object3 = unsafe.getObject(yVar2, j9);
                    Object obj2 = t0Var.f1559b[(i17 / 3) * 2];
                    t0Var.f1567m.getClass();
                    o0 o0Var = (o0) object3;
                    n0 n0Var = (n0) obj2;
                    if (o0Var.isEmpty()) {
                        iA3 = 0;
                    } else {
                        iA3 = 0;
                        for (Map$Entry map$Entry : o0Var.entrySet()) {
                            Object key = map$Entry.getKey();
                            Object value = map$Entry.getValue();
                            n0Var.getClass();
                            int iC20 = n.c(i19);
                            char c9 = c;
                            m0 m0Var = n0Var.f1536a;
                            int i34 = i22;
                            a2 a2Var2 = m0Var.f1531a;
                            int i35 = t.c;
                            int iC21 = n.c(i34);
                            int i36 = i16;
                            x1 x1Var = a2.e;
                            if (a2Var2 == x1Var) {
                                iC21 *= 2;
                            }
                            int i37 = i18;
                            switch (a2Var2.ordinal()) {
                                case 0:
                                    ((Double) key).getClass();
                                    iE2 = 8;
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i38 = iE3 + iC11 + i14;
                                            iA3 = q.a(i38, i38, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i39 = iE3 + iC11 + i14;
                                            iA3 = q.a(i39, i39, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i310 = iE3 + iC11 + i14;
                                            iA3 = q.a(i310, i310, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311, i311, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i312 = iE3 + iC11 + i14;
                                            iA3 = q.a(i312, i312, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i313 = iE3 + iC11 + i14;
                                            iA3 = q.a(i313, i313, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i314 = iE3 + iC11 + i14;
                                            iA3 = q.a(i314, i314, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i315 = iE3 + iC11 + i14;
                                            iA3 = q.a(i315, i315, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i316 = iE3 + iC11 + i14;
                                            iA3 = q.a(i316, i316, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i317 = iE3 + iC11 + i14;
                                            iA3 = q.a(i317, i317, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i318 = iE3 + iC11 + i14;
                                            iA3 = q.a(i318, i318, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i319 = iE3 + iC11 + i14;
                                            iA3 = q.a(i319, i319, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i3110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3110, i3110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i3111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111, i3111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3112, i3112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3113, i3113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue >> 31) ^ (iIntValue << 1));
                                            int i3114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3114, i3114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue << i34) ^ (jLongValue >> c9));
                                            int i3115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3115, i3115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 1:
                                    ((Float) key).getClass();
                                    iE2 = 4;
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i3116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3116, i3116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i3117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3117, i3117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3118, i3118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3119, i3119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i31110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31110, i31110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i31111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111, i31111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i31112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31112, i31112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i31113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31113, i31113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i31114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31114, i31114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i31115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31115, i31115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i31116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31116, i31116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i31117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31117, i31117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i31118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31118, i31118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i31119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31119, i31119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i311110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311110, i311110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111, i311111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue2 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue2 >> 31) ^ (iIntValue2 << 1));
                                            int i311112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311112, i311112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue2 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue2 << i34) ^ (jLongValue2 >> c9));
                                            int i311113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311113, i311113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 2:
                                    iE2 = n.e(((Long) key).longValue());
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i311114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311114, i311114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i311115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311115, i311115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311116, i311116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311117, i311117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i311118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311118, i311118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311119, i311119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111110, i3111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i3111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111, i3111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i3111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111112, i3111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i3111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111113, i3111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i3111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111114, i3111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i3111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111115, i3111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i3111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111116, i3111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i3111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111117, i3111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111118, i3111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111119, i3111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue3 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue3 >> 31) ^ (iIntValue3 << 1));
                                            int i31111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111110, i31111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue3 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue3 << i34) ^ (jLongValue3 >> c9));
                                            int i31111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111, i31111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 3:
                                    iE2 = n.e(((Long) key).longValue());
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i31111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111112, i31111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i31111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111113, i31111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i31111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111114, i31111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i31111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111115, i31111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i31111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111116, i31111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i31111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111117, i31111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i31111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111118, i31111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i31111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111119, i31111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i311111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111110, i311111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i311111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111, i311111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i311111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111112, i311111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i311111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111113, i311111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i311111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111114, i311111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i311111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111115, i311111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i311111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111116, i311111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111117, i311111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue4 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue4 >> 31) ^ (iIntValue4 << 1));
                                            int i311111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111118, i311111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue4 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue4 << i34) ^ (jLongValue4 >> c9));
                                            int i311111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111119, i311111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 4:
                                    iE2 = n.a(((Integer) key).intValue());
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i3111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111110, i3111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i3111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111, i3111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111112, i3111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111113, i3111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i3111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111114, i3111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111115, i3111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111116, i3111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i3111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111117, i3111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i3111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111118, i3111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i3111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111119, i3111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i31111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111110, i31111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i31111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111, i31111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i31111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111112, i31111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i31111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111113, i31111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i31111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111114, i31111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i31111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111115, i31111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue5 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue5 >> 31) ^ (iIntValue5 << 1));
                                            int i31111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111116, i31111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue5 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue5 << i34) ^ (jLongValue5 >> c9));
                                            int i31111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111117, i31111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 5:
                                    ((Long) key).getClass();
                                    iE2 = 8;
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i31111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111118, i31111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i31111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111119, i31111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111110, i311111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111, i311111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i311111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111112, i311111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111113, i311111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i311111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111114, i311111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i311111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111115, i311111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i311111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111116, i311111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i311111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111117, i311111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i311111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111118, i311111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i311111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111119, i311111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i3111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111110, i3111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i3111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111, i3111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111112, i3111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111113, i3111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue6 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue6 >> 31) ^ (iIntValue6 << 1));
                                            int i3111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111114, i3111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue6 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue6 << i34) ^ (jLongValue6 >> c9));
                                            int i3111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111115, i3111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 6:
                                    ((Integer) key).getClass();
                                    iE2 = 4;
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i3111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111116, i3111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i3111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111117, i3111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111118, i3111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111119, i3111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i31111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111110, i31111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111, i31111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i31111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111112, i31111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i31111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111113, i31111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i31111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111114, i31111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i31111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111115, i31111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i31111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111116, i31111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i31111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111117, i31111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i31111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111118, i31111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i31111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111119, i31111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i311111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111110, i311111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111, i311111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue7 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue7 >> 31) ^ (iIntValue7 << 1));
                                            int i311111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111112, i311111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue7 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue7 << i34) ^ (jLongValue7 >> c9));
                                            int i311111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111113, i311111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 7:
                                    ((Boolean) key).getClass();
                                    iE2 = i34;
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i311111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111114, i311111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i311111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111115, i311111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111116, i311111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111117, i311111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i311111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111118, i311111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111119, i311111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111110, i3111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i3111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111, i3111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i3111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111112, i3111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i3111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111113, i3111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i3111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111114, i3111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i3111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111115, i3111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i3111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111116, i3111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i3111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111117, i3111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111118, i3111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111119, i3111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue8 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue8 >> 31) ^ (iIntValue8 << 1));
                                            int i31111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111110, i31111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue8 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue8 << i34) ^ (jLongValue8 >> c9));
                                            int i31111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111, i31111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 8:
                                    if (key instanceof g) {
                                        size2 = ((g) key).size();
                                        iD = n.d(size2);
                                        iE2 = size2 + iD;
                                    } else {
                                        iE2 = n.b((String) key);
                                    }
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111112, i31111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i31111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111113, i31111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i31111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111114, i31111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i31111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111115, i31111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i31111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111116, i31111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111117, i31111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i31111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111118, i31111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i31111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111119, i31111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i311111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111110, i311111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i311111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111, i311111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i311111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111112, i311111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i311111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111113, i311111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i311111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111114, i311111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i311111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111115, i311111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i311111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111116, i311111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111117, i311111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue9 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue9 >> 31) ^ (iIntValue9 << 1));
                                            int i311111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111118, i311111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue9 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue9 << i34) ^ (jLongValue9 >> c9));
                                            int i311111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111119, i311111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 9:
                                    iE2 = ((y) ((a) key)).a(null);
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111110, i3111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111, i3111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111112, i3111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111113, i3111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i3111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111114, i3111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111115, i3111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111116, i3111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i3111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111117, i3111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i3111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111118, i3111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i3111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111119, i3111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i31111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111110, i31111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i31111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111, i31111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i31111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111112, i31111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i31111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111113, i31111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i31111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111114, i31111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111115, i31111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue10 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue10 >> 31) ^ (iIntValue10 << 1));
                                            int i31111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111116, i31111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue10 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue10 << i34) ^ (jLongValue10 >> c9));
                                            int i31111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111117, i31111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 10:
                                    size2 = ((y) ((a) key)).a(null);
                                    iD = n.d(size2);
                                    iE2 = size2 + iD;
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111118, i31111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i31111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111119, i31111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111110, i311111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111, i311111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i311111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111112, i311111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111113, i311111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i311111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111114, i311111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i311111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111115, i311111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i311111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111116, i311111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i311111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111117, i311111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i311111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111118, i311111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i311111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111119, i311111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i3111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111110, i3111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i3111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111, i3111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111112, i3111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111113, i3111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue11 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue11 >> 31) ^ (iIntValue11 << 1));
                                            int i3111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111114, i3111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue11 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue11 << i34) ^ (jLongValue11 >> c9));
                                            int i3111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111115, i3111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 11:
                                    if (key instanceof g) {
                                        size2 = ((g) key).size();
                                        iD = n.d(size2);
                                    } else {
                                        size2 = ((byte[]) key).length;
                                        iD = n.d(size2);
                                    }
                                    iE2 = size2 + iD;
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111116, i3111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111117, i3111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111118, i3111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111119, i3111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i31111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111110, i31111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111, i31111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i31111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111112, i31111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i31111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111113, i31111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i31111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111114, i31111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i31111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111115, i31111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i31111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111116, i31111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i31111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111117, i31111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i31111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111118, i31111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i31111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111119, i31111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i311111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111110, i311111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111, i311111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue12 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue12 >> 31) ^ (iIntValue12 << 1));
                                            int i311111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111112, i311111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue12 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue12 << i34) ^ (jLongValue12 >> c9));
                                            int i311111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111113, i311111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 12:
                                    iE2 = n.d(((Integer) key).intValue());
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111114, i311111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i311111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111115, i311111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111116, i311111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111117, i311111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i311111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111118, i311111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111119, i311111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111110, i3111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i3111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111, i3111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i3111111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111112, i3111111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i3111111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111113, i3111111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i3111111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111114, i3111111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i3111111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111115, i3111111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i3111111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111116, i3111111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i3111111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111117, i3111111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111118, i3111111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111119, i3111111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue13 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue13 >> 31) ^ (iIntValue13 << 1));
                                            int i31111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111110, i31111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue13 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue13 << i34) ^ (jLongValue13 >> c9));
                                            int i31111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111, i31111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 13:
                                    iE2 = key instanceof z ? n.a(((z) key).a()) : n.a(((Integer) key).intValue());
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111112, i31111111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i31111111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111113, i31111111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i31111111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111114, i31111111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i31111111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111115, i31111111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i31111111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111116, i31111111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111117, i31111111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i31111111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111118, i31111111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i31111111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111119, i31111111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i311111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111110, i311111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i311111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111, i311111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i311111111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111112, i311111111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i311111111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111113, i311111111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i311111111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111114, i311111111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i311111111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111115, i311111111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i311111111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111116, i311111111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111117, i311111111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue14 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue14 >> 31) ^ (iIntValue14 << 1));
                                            int i311111111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111118, i311111111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue14 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue14 << i34) ^ (jLongValue14 >> c9));
                                            int i311111111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111119, i311111111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 14:
                                    ((Integer) key).getClass();
                                    iE2 = 4;
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111110, i3111111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111, i3111111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111112, i3111111111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111113, i3111111111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i3111111111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111114, i3111111111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111115, i3111111111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111116, i3111111111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i3111111111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111117, i3111111111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i3111111111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111118, i3111111111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i3111111111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111119, i3111111111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i31111111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111110, i31111111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i31111111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111, i31111111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i31111111111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111112, i31111111111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i31111111111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111113, i31111111111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i31111111111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111114, i31111111111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111115, i31111111111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue15 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue15 >> 31) ^ (iIntValue15 << 1));
                                            int i31111111111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111116, i31111111111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue15 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue15 << i34) ^ (jLongValue15 >> c9));
                                            int i31111111111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111117, i31111111111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 15:
                                    ((Long) key).getClass();
                                    iE2 = 8;
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111118, i31111111111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i31111111111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111119, i31111111111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111110, i311111111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111, i311111111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i311111111111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111112, i311111111111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111113, i311111111111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i311111111111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111114, i311111111111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i311111111111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111115, i311111111111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i311111111111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111116, i311111111111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i311111111111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111117, i311111111111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i311111111111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111118, i311111111111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i311111111111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111119, i311111111111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i3111111111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111110, i3111111111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i3111111111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111, i3111111111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111112, i3111111111111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111113, i3111111111111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue16 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue16 >> 31) ^ (iIntValue16 << 1));
                                            int i3111111111111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111114, i3111111111111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue16 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue16 << i34) ^ (jLongValue16 >> c9));
                                            int i3111111111111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111115, i3111111111111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 16:
                                    int iIntValue17 = ((Integer) key).intValue();
                                    iE2 = n.d((iIntValue17 >> 31) ^ (iIntValue17 << 1));
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111116, i3111111111111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111117, i3111111111111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111111111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111118, i3111111111111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i3111111111111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111119, i3111111111111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i31111111111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111110, i31111111111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i31111111111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111111, i31111111111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i31111111111111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111112, i31111111111111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i31111111111111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111113, i31111111111111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i31111111111111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111114, i31111111111111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i31111111111111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111115, i31111111111111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i31111111111111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111116, i31111111111111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i31111111111111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111117, i31111111111111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i31111111111111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111118, i31111111111111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i31111111111111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111119, i31111111111111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i311111111111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111110, i311111111111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111111, i311111111111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue18 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue18 >> 31) ^ (iIntValue18 << 1));
                                            int i311111111111111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111112, i311111111111111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue17 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue17 << i34) ^ (jLongValue17 >> c9));
                                            int i311111111111111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111113, i311111111111111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 17:
                                    long jLongValue18 = ((Long) key).longValue();
                                    iE2 = n.e((jLongValue18 << i34) ^ (jLongValue18 >> c9));
                                    i14 = iE2 + iC21;
                                    a2Var = m0Var.f1532b;
                                    iC11 = n.c(2);
                                    if (a2Var == x1Var) {
                                        iC11 *= 2;
                                    }
                                    switch (a2Var.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111114, i311111111111111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iE3 = 4;
                                            int i311111111111111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111115, i311111111111111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 2:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111116, i311111111111111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 3:
                                            iE3 = n.e(((Long) value).longValue());
                                            int i311111111111111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111117, i311111111111111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 4:
                                            iE3 = n.a(((Integer) value).intValue());
                                            int i311111111111111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111118, i311111111111111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i311111111111111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i311111111111111111111111111111119, i311111111111111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111110, i3111111111111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iE3 = i34;
                                            int i3111111111111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111111, i3111111111111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 8:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                                iE3 = size3 + iD2;
                                            } else {
                                                iE3 = n.b((String) value);
                                            }
                                            int i3111111111111111111111111111111112 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111112, i3111111111111111111111111111111112, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 9:
                                            iE3 = ((y) ((a) value)).a(null);
                                            int i3111111111111111111111111111111113 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111113, i3111111111111111111111111111111113, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 10:
                                            size3 = ((y) ((a) value)).a(null);
                                            iD2 = n.d(size3);
                                            iE3 = size3 + iD2;
                                            int i3111111111111111111111111111111114 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111114, i3111111111111111111111111111111114, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 11:
                                            if (value instanceof g) {
                                                size3 = ((g) value).size();
                                                iD2 = n.d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iD2 = n.d(size3);
                                            }
                                            iE3 = size3 + iD2;
                                            int i3111111111111111111111111111111115 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111115, i3111111111111111111111111111111115, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 12:
                                            iE3 = n.d(((Integer) value).intValue());
                                            int i3111111111111111111111111111111116 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111116, i3111111111111111111111111111111116, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 13:
                                            if (value instanceof z) {
                                                iE3 = n.a(((z) value).a());
                                            } else {
                                                iE3 = n.a(((Integer) value).intValue());
                                            }
                                            int i3111111111111111111111111111111117 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111117, i3111111111111111111111111111111117, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iE3 = 4;
                                            int i3111111111111111111111111111111118 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111118, i3111111111111111111111111111111118, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iE3 = 8;
                                            int i3111111111111111111111111111111119 = iE3 + iC11 + i14;
                                            iA3 = q.a(i3111111111111111111111111111111119, i3111111111111111111111111111111119, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 16:
                                            int iIntValue19 = ((Integer) value).intValue();
                                            iE3 = n.d((iIntValue19 >> 31) ^ (iIntValue19 << 1));
                                            int i31111111111111111111111111111111110 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111111110, i31111111111111111111111111111111110, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        case 17:
                                            long jLongValue19 = ((Long) value).longValue();
                                            iE3 = n.e((jLongValue19 << i34) ^ (jLongValue19 >> c9));
                                            int i31111111111111111111111111111111111 = iE3 + iC11 + i14;
                                            iA3 = q.a(i31111111111111111111111111111111111, i31111111111111111111111111111111111, iC20, iA3);
                                            c = c9;
                                            i22 = i34;
                                            i16 = i36;
                                            i18 = i37;
                                            break;
                                        default:
                                            ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                default:
                                    ai.onnxruntime.b.h("There is no way to get here, but the compiler thinks otherwise.");
                                    return 0;
                            }
                        }
                    }
                    i10 = i16;
                    i11 = i18;
                    iA5 += iA3;
                    i16 = i10;
                    i18 = i11;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (t0Var.q(yVar2, i19, i17)) {
                        iC12 = n.c(i19);
                        iC16 = iC12 + 8;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                    if (t0Var.q(yVar2, i19, i17)) {
                        iC13 = n.c(i19);
                        iC16 = iC13 + 4;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (t0Var.q(yVar2, i19, i17)) {
                        long jA = A(yVar2, j9);
                        iC14 = n.c(i19);
                        iE4 = n.e(jA);
                        iA5 += iE4 + iC14;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                    if (t0Var.q(yVar2, i19, i17)) {
                        long jA2 = A(yVar2, j9);
                        iC14 = n.c(i19);
                        iE4 = n.e(jA2);
                        iA5 += iE4 + iC14;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (t0Var.q(yVar2, i19, i17)) {
                        int iZ = z(yVar2, j9);
                        iC15 = n.c(i19);
                        iA4 = n.a(iZ);
                        iC16 = iA4 + iC15;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 56:
                    if (t0Var.q(yVar2, i19, i17)) {
                        iC12 = n.c(i19);
                        iC16 = iC12 + 8;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 57:
                    if (t0Var.q(yVar2, i19, i17)) {
                        iC13 = n.c(i19);
                        iC16 = iC13 + 4;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 58:
                    if (t0Var.q(yVar2, i19, i17)) {
                        iC16 = n.c(i19) + 1;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 59:
                    if (t0Var.q(yVar2, i19, i17)) {
                        Object object4 = unsafe.getObject(yVar2, j9);
                        if (object4 instanceof g) {
                            int iC22 = n.c(i19);
                            int size21 = ((g) object4).size();
                            iB2 = q.a(size21, size21, iC22, iA5);
                        } else {
                            iB2 = n.b((String) object4) + n.c(i19) + iA5;
                        }
                        iA5 = iB2;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 60:
                    if (t0Var.q(yVar2, i19, i17)) {
                        Object object5 = unsafe.getObject(yVar2, j9);
                        b1 b1VarM4 = t0Var.m(i17);
                        Class cls21 = c1.f1484a;
                        int iC23 = n.c(i19);
                        int iA9 = ((a) object5).a(b1VarM4);
                        iA5 = q.a(iA9, iA9, iC23, iA5);
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 61:
                    if (t0Var.q(yVar2, i19, i17)) {
                        g gVar2 = (g) unsafe.getObject(yVar2, j9);
                        int iC24 = n.c(i19);
                        int size22 = gVar2.size();
                        iA5 = q.a(size22, size22, iC24, iA5);
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 62:
                    if (t0Var.q(yVar2, i19, i17)) {
                        int iZ2 = z(yVar2, j9);
                        iC15 = n.c(i19);
                        iA4 = n.d(iZ2);
                        iC16 = iA4 + iC15;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 63:
                    if (t0Var.q(yVar2, i19, i17)) {
                        int iZ3 = z(yVar2, j9);
                        iC15 = n.c(i19);
                        iA4 = n.a(iZ3);
                        iC16 = iA4 + iC15;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 64:
                    if (t0Var.q(yVar2, i19, i17)) {
                        iC13 = n.c(i19);
                        iC16 = iC13 + 4;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (t0Var.q(yVar2, i19, i17)) {
                        iC12 = n.c(i19);
                        iC16 = iC12 + 8;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (t0Var.q(yVar2, i19, i17)) {
                        int iZ4 = z(yVar2, j9);
                        iC15 = n.c(i19);
                        iA4 = n.d((iZ4 >> 31) ^ (iZ4 << 1));
                        iC16 = iA4 + iC15;
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout$LayoutParams$Table.GUIDELINE_USE_RTL /* 67 */:
                    if (t0Var.q(yVar2, i19, i17)) {
                        long jA3 = A(yVar2, j9);
                        iC14 = n.c(i19);
                        iE4 = n.e((jA3 << 1) ^ (jA3 >> 63));
                        iA5 += iE4 + iC14;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 68:
                    if (t0Var.q(yVar2, i19, i17)) {
                        iC16 = ((a) unsafe.getObject(yVar2, j9)).a(t0Var.m(i17)) + (n.c(i19) * 2);
                        iA5 += iC16;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                default:
                    i17 += 3;
                    i15 = 1048575;
                    break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:13:0x003d  */
    @Override // com.google.protobuf.b1
    public final boolean g(y yVar, y yVar2) {
        int[] iArr = this.f1558a;
        int length = iArr.length;
        int i9 = 0;
        while (true) {
            boolean zK = true;
            if (i9 < length) {
                int iL = L(i9);
                long j9 = iL & 1048575;
                switch (K(iL)) {
                    case 0:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var = s1.c;
                            if (Double.doubleToLongBits(r1Var.e(yVar, j9)) != Double.doubleToLongBits(r1Var.e(yVar2, j9))) {
                                zK = false;
                            }
                        }
                        break;
                    case 1:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var2 = s1.c;
                            if (Float.floatToIntBits(r1Var2.f(yVar, j9)) != Float.floatToIntBits(r1Var2.f(yVar2, j9))) {
                                zK = false;
                            }
                        }
                        break;
                    case 2:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var3 = s1.c;
                            if (r1Var3.h(yVar, j9) != r1Var3.h(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 3:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var4 = s1.c;
                            if (r1Var4.h(yVar, j9) != r1Var4.h(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 4:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var5 = s1.c;
                            if (r1Var5.g(yVar, j9) != r1Var5.g(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 5:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var6 = s1.c;
                            if (r1Var6.h(yVar, j9) != r1Var6.h(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 6:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var7 = s1.c;
                            if (r1Var7.g(yVar, j9) != r1Var7.g(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 7:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var8 = s1.c;
                            if (r1Var8.c(yVar, j9) != r1Var8.c(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 8:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var9 = s1.c;
                            if (!c1.k(r1Var9.i(yVar, j9), r1Var9.i(yVar2, j9))) {
                                zK = false;
                            }
                        }
                        break;
                    case 9:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var10 = s1.c;
                            if (!c1.k(r1Var10.i(yVar, j9), r1Var10.i(yVar2, j9))) {
                                zK = false;
                            }
                        }
                        break;
                    case 10:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var11 = s1.c;
                            if (!c1.k(r1Var11.i(yVar, j9), r1Var11.i(yVar2, j9))) {
                                zK = false;
                            }
                        }
                        break;
                    case 11:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var12 = s1.c;
                            if (r1Var12.g(yVar, j9) != r1Var12.g(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 12:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var13 = s1.c;
                            if (r1Var13.g(yVar, j9) != r1Var13.g(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 13:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var14 = s1.c;
                            if (r1Var14.g(yVar, j9) != r1Var14.g(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 14:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var15 = s1.c;
                            if (r1Var15.h(yVar, j9) != r1Var15.h(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 15:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var16 = s1.c;
                            if (r1Var16.g(yVar, j9) != r1Var16.g(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 16:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var17 = s1.c;
                            if (r1Var17.h(yVar, j9) != r1Var17.h(yVar2, j9)) {
                                zK = false;
                            }
                        }
                        break;
                    case 17:
                        if (!j(yVar, yVar2, i9)) {
                            zK = false;
                        } else {
                            r1 r1Var18 = s1.c;
                            if (!c1.k(r1Var18.i(yVar, j9), r1Var18.i(yVar2, j9))) {
                                zK = false;
                            }
                        }
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS /* 30 */:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                        r1 r1Var19 = s1.c;
                        zK = c1.k(r1Var19.i(yVar, j9), r1Var19.i(yVar2, j9));
                        break;
                    case 50:
                        r1 r1Var20 = s1.c;
                        zK = c1.k(r1Var20.i(yVar, j9), r1Var20.i(yVar2, j9));
                        break;
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    case ConstraintLayout$LayoutParams$Table.GUIDELINE_USE_RTL /* 67 */:
                    case 68:
                        long j10 = iArr[i9 + 2] & 1048575;
                        r1 r1Var21 = s1.c;
                        if (r1Var21.g(yVar, j10) != r1Var21.g(yVar2, j10) || !c1.k(r1Var21.i(yVar, j9), r1Var21.i(yVar2, j9))) {
                            zK = false;
                        }
                        break;
                }
                if (zK) {
                    i9 += 3;
                }
            } else {
                this.f1566l.getClass();
                if (yVar.unknownFields.equals(yVar2.unknownFields)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 18521. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // com.google.protobuf.b1
    public final void h(java.lang.Object r19, c3.i r20, com.google.protobuf.p r21) {
        /*
            r18 = this;
            r1 = r18
            r2 = r19
            r4 = r20
            r5 = r21
            r5.getClass()
            boolean r0 = p(r2)
            if (r0 == 0) goto L6a6
            com.google.protobuf.k1 r8 = r1.f1566l
            int[] r9 = r1.f1561g
            int r10 = r1.f1563i
            int r11 = r1.f1562h
            r0 = 0
            r12 = r0
        L1b:
            int r0 = r4.c()     // Catch: java.lang.Throwable -> L68e
            int r3 = r1.c     // Catch: java.lang.Throwable -> L68e
            r6 = 3
            r7 = 1
            r13 = 0
            if (r0 < r3) goto L4d
            int r3 = r1.d     // Catch: java.lang.Throwable -> L68e
            if (r0 > r3) goto L4d
            int[] r3 = r1.f1558a     // Catch: java.lang.Throwable -> L68e
            int r14 = r3.length     // Catch: java.lang.Throwable -> L68e
            int r14 = r14 / r6
            int r14 = r14 - r7
            r15 = r13
        L30:
            if (r15 > r14) goto L4d
            int r16 = r14 + r15
            int r16 = r16 >>> 1
            int r17 = r16 * 3
            r7 = r3[r17]     // Catch: java.lang.Throwable -> L68e
            if (r0 != r7) goto L3f
        L3c:
            r3 = r17
            goto L50
        L3f:
            if (r0 >= r7) goto L46
            int r16 = r16 + (-1)
            r14 = r16
            goto L48
        L46:
            int r15 = r16 + 1
        L48:
            r7 = 1
            goto L30
        L4a:
            r7 = r1
            goto L691
        L4d:
            r17 = -1
            goto L3c
        L50:
            if (r3 >= 0) goto L8c
            r3 = 2147483647(0x7fffffff, float:NaN)
            if (r0 != r3) goto L6e
        L57:
            if (r11 >= r10) goto L61
            r0 = r9[r11]
            r1.k(r0, r2, r12)
            int r11 = r11 + 1
            goto L57
        L61:
            if (r12 == 0) goto L6b
            r8.getClass()
        L66:
            r0 = r2
            com.google.protobuf.y r0 = (com.google.protobuf.y) r0
            r0.unknownFields = r12
        L6b:
            r7 = r1
            goto L687
        L6e:
            r8.getClass()     // Catch: java.lang.Throwable -> L68e
            if (r12 != 0) goto L78
            com.google.protobuf.j1 r0 = com.google.protobuf.k1.a(r2)     // Catch: java.lang.Throwable -> L68e
            r12 = r0
        L78:
            boolean r0 = com.google.protobuf.k1.b(r12, r4)     // Catch: java.lang.Throwable -> L68e
            if (r0 == 0) goto L7f
            goto L1b
        L7f:
            if (r11 >= r10) goto L89
            r0 = r9[r11]
            r1.k(r0, r2, r12)
            int r11 = r11 + 1
            goto L7f
        L89:
            if (r12 == 0) goto L6b
        L8b:
            goto L66
        L8c:
            int r7 = r1.L(r3)     // Catch: java.lang.Throwable -> L68e
            int r14 = K(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r17 = 1048575(0xfffff, float:1.469367E-39)
            com.google.protobuf.j0 r15 = r1.f1565k
            switch(r14) {
                case 0: goto L63b;
                case 1: goto L61c;
                case 2: goto L600;
                case 3: goto L5e4;
                case 4: goto L5c8;
                case 5: goto L5ab;
                case 6: goto L58e;
                case 7: goto L570;
                case 8: goto L563;
                case 9: goto L549;
                case 10: goto L534;
                case 11: goto L518;
                case 12: goto L4f9;
                case 13: goto L4dc;
                case 14: goto L4bf;
                case 15: goto L4a3;
                case 16: goto L487;
                case 17: goto L46b;
                case 18: goto L45a;
                case 19: goto L449;
                case 20: goto L439;
                case 21: goto L429;
                case 22: goto L419;
                case 23: goto L409;
                case 24: goto L3f9;
                case 25: goto L3e9;
                case 26: goto L3de;
                case 27: goto L3c4;
                case 28: goto L3b7;
                case 29: goto L3aa;
                case 30: goto L397;
                case 31: goto L38a;
                case 32: goto L37d;
                case 33: goto L370;
                case 34: goto L363;
                case 35: goto L356;
                case 36: goto L349;
                case 37: goto L33c;
                case 38: goto L32f;
                case 39: goto L322;
                case 40: goto L315;
                case 41: goto L309;
                case 42: goto L2fd;
                case 43: goto L2f1;
                case 44: goto L2df;
                case 45: goto L2d3;
                case 46: goto L2c7;
                case 47: goto L2bb;
                case 48: goto L2af;
                case 49: goto L297;
                case 50: goto L275;
                case 51: goto L25a;
                case 52: goto L23f;
                case 53: goto L225;
                case 54: goto L20b;
                case 55: goto L1f1;
                case 56: goto L1d6;
                case 57: goto L1bb;
                case 58: goto L1a1;
                case 59: goto L199;
                case 60: goto L183;
                case 61: goto L174;
                case 62: goto L15a;
                case 63: goto L13d;
                case 64: goto L123;
                case 65: goto L109;
                case 66: goto Lf0;
                case 67: goto Ld7;
                case 68: goto Lc0;
                default: goto L9c;
            }
        L9c:
            if (r12 != 0) goto Laa
            r8.getClass()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j1 r12 = com.google.protobuf.k1.a(r2)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Laa
        La6:
            r7 = r1
        La7:
            r6 = r4
            goto L666
        Laa:
            r8.getClass()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            boolean r0 = com.google.protobuf.k1.b(r12, r4)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            if (r0 != 0) goto Ld3
        Lb3:
            if (r11 >= r10) goto Lbd
            r0 = r9[r11]
            r1.k(r0, r2, r12)
            int r11 = r11 + 1
            goto Lb3
        Lbd:
            if (r12 == 0) goto L6b
            goto L8b
        Lc0:
            java.lang.Object r7 = r1.v(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.a r7 = (com.google.protobuf.a) r7     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.b1 r13 = r1.m(r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.z(r6)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.d(r7, r13, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.J(r2, r0, r3, r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
        Ld3:
            r7 = r1
            r6 = r4
            goto L688
        Ld7:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            long r13 = r13.s()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Long r13 = java.lang.Long.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        Lf0:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            int r13 = r13.r()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L109:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r13 = 1
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            long r13 = r13.q()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Long r13 = java.lang.Long.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L123:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r13 = 5
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            int r13 = r13.p()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L13d:
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r6 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r6 = (com.google.protobuf.j) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            int r6 = r6.j()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.l(r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r7 = r7 & r17
            long r13 = (long) r7     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r13, r2, r6)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L15a:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            int r13 = r13.w()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L174:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.g r13 = r4.g()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L183:
            java.lang.Object r6 = r1.v(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.a r6 = (com.google.protobuf.a) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.b1 r7 = r1.m(r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r13 = 2
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.e(r6, r7, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.J(r2, r0, r3, r6)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L199:
            r1.D(r2, r7, r4)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L1a1:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            boolean r13 = r13.g()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Boolean r13 = java.lang.Boolean.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L1bb:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r13 = 5
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            int r13 = r13.k()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L1d6:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r13 = 1
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            long r13 = r13.l()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Long r13 = java.lang.Long.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L1f1:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            int r13 = r13.n()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L20b:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            long r13 = r13.x()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Long r13 = java.lang.Long.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L225:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            long r13 = r13.o()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Long r13 = java.lang.Long.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L23f:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r13 = 5
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            float r13 = r13.m()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Float r13 = java.lang.Float.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L25a:
            r6 = r7 & r17
            long r6 = (long) r6     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r13 = 1
            r4.z(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Object r13 = r4.d     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.j r13 = (com.google.protobuf.j) r13     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            double r13 = r13.i()     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Double r13 = java.lang.Double.valueOf(r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            com.google.protobuf.s1.p(r6, r2, r13)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.H(r2, r0, r3)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L275:
            java.lang.Object[] r0 = r1.f1559b     // Catch: java.lang.Throwable -> L28b com.google.protobuf.c0 -> L290
            int r6 = r3 / 3
            r16 = 2
            int r6 = r6 * 2
            r0 = r0[r6]     // Catch: java.lang.Throwable -> L28b com.google.protobuf.c0 -> L290
            r6 = r4
            r4 = r0
            r1.r(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L28b com.google.protobuf.c0 -> L290
            r2 = r19
            r6 = r20
            r7 = r1
            goto L688
        L28b:
            r0 = move-exception
            r2 = r19
            goto L4a
        L290:
            r2 = r19
            r6 = r20
            r7 = r1
            goto L666
        L297:
            r14 = r3
            r0 = r7 & r17
            long r3 = (long) r0     // Catch: java.lang.Throwable -> L28b com.google.protobuf.c0 -> L290
            com.google.protobuf.b1 r6 = r1.m(r14)     // Catch: java.lang.Throwable -> L28b com.google.protobuf.c0 -> L290
            r2 = r19
            r5 = r20
            r7 = r21
            r1.B(r2, r3, r5, r6, r7)     // Catch: com.google.protobuf.c0 -> L2ab java.lang.Throwable -> L68e
            r4 = r5
            goto Ld3
        L2ab:
            r7 = r1
            r6 = r5
            goto L666
        L2af:
            r0 = r7 & r17
            long r5 = (long) r0
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.t(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L2bb:
            r0 = r7 & r17
            long r5 = (long) r0     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.s(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L2c7:
            r0 = r7 & r17
            long r5 = (long) r0     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.r(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L2d3:
            r0 = r7 & r17
            long r5 = (long) r0     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.q(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L2df:
            r14 = r3
            r0 = r7 & r17
            long r5 = (long) r0     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.j(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.l(r14)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Class r0 = com.google.protobuf.c1.f1484a     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L2f1:
            r0 = r7 & r17
            long r5 = (long) r0     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.v(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L2fd:
            r0 = r7 & r17
            long r5 = (long) r0     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.f(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L309:
            r0 = r7 & r17
            long r5 = (long) r0     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.l(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L315:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.m(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L322:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.o(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L32f:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.w(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L33c:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.p(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L349:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.n(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L356:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.i(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L363:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.t(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L370:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.s(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L37d:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.r(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L38a:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.q(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L397:
            r14 = r3
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.j(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r1.l(r14)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.lang.Class r0 = com.google.protobuf.c1.f1484a     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L3aa:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.v(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L3b7:
            long r5 = y(r7)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            java.util.List r0 = r15.c(r2, r5)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            r4.h(r0)     // Catch: com.google.protobuf.c0 -> La6 java.lang.Throwable -> L68e
            goto Ld3
        L3c4:
            r14 = r3
            com.google.protobuf.b1 r5 = r1.m(r14)     // Catch: com.google.protobuf.c0 -> L3d9 java.lang.Throwable -> L68e
            r6 = r21
            r3 = r7
            r1.C(r2, r3, r4, r5, r6)     // Catch: com.google.protobuf.c0 -> L3d5 java.lang.Throwable -> L68e
            r7 = r1
            r0 = r4
            r1 = r6
        L3d2:
            r6 = r0
            goto L688
        L3d5:
            r7 = r1
            r1 = r6
            goto La7
        L3d9:
            r7 = r1
            r1 = r21
            goto La7
        L3de:
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            r7.E(r2, r3, r0)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L3e6:
            r6 = r0
            goto L666
        L3e9:
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.util.List r3 = r15.c(r2, r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.f(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L3f9:
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.util.List r3 = r15.c(r2, r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.l(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L409:
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.util.List r3 = r15.c(r2, r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.m(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L419:
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.util.List r3 = r15.c(r2, r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.o(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L429:
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.util.List r3 = r15.c(r2, r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.w(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L439:
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.util.List r3 = r15.c(r2, r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.p(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L449:
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.util.List r3 = r15.c(r2, r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.n(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L45a:
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.util.List r3 = r15.c(r2, r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.i(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L46b:
            r7 = r1
            r14 = r3
            r0 = r4
            r1 = r5
            java.lang.Object r3 = r7.u(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.a r3 = (com.google.protobuf.a) r3     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.b1 r4 = r7.m(r14)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.z(r6)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.d(r3, r4, r1)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.I(r2, r14, r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L484:
            r0 = move-exception
            goto L691
        L487:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            long r5 = r5.s()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.o(r2, r3, r5)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L4a3:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            int r5 = r5.r()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.n(r5, r3, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L4bf:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r13 = 1
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            long r5 = r5.q()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.o(r2, r3, r5)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L4dc:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r13 = 5
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            int r5 = r5.p()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.n(r5, r3, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L4f9:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r4 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r4 = (com.google.protobuf.j) r4     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            int r4 = r4.j()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.l(r14)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            long r5 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.n(r4, r5, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L518:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            int r5 = r5.w()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.n(r5, r3, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L534:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.g r5 = r0.g()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.p(r3, r2, r5)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L549:
            r7 = r1
            r14 = r3
            r0 = r4
            r1 = r5
            java.lang.Object r3 = r7.u(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.a r3 = (com.google.protobuf.a) r3     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.b1 r4 = r7.m(r14)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r13 = 2
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.e(r3, r4, r1)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.I(r2, r14, r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L563:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            r7.D(r2, r3, r0)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L570:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            boolean r5 = r5.g()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.r1 r6 = com.google.protobuf.s1.c     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r6.k(r2, r3, r5)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L58e:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r13 = 5
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            int r5 = r5.k()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.n(r5, r3, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L5ab:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r13 = 1
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            long r5 = r5.l()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.o(r2, r3, r5)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L5c8:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            int r5 = r5.n()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.n(r5, r3, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L5e4:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            long r5 = r5.x()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.o(r2, r3, r5)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L600:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            long r5 = r5.o()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.s1.o(r2, r3, r5)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L61c:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r13 = 5
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            float r5 = r5.m()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.r1 r6 = com.google.protobuf.s1.c     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r6.n(r2, r3, r5)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r7.G(r14, r2)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            goto L3d2
        L63b:
            r14 = r3
            r0 = r4
            r3 = r7
            r7 = r1
            r1 = r5
            long r3 = y(r3)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            r13 = 1
            r0.z(r13)     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            java.lang.Object r5 = r0.d     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.j r5 = (com.google.protobuf.j) r5     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            double r5 = r5.i()     // Catch: com.google.protobuf.c0 -> L3e6 java.lang.Throwable -> L484
            com.google.protobuf.r1 r0 = com.google.protobuf.s1.c     // Catch: java.lang.Throwable -> L484 com.google.protobuf.c0 -> L664
            r1 = r2
            r2 = r3
            r4 = r5
            r6 = r20
            r0.m(r1, r2, r4)     // Catch: java.lang.Throwable -> L65f com.google.protobuf.c0 -> L662
            r2 = r1
            r7.G(r14, r2)     // Catch: java.lang.Throwable -> L484 com.google.protobuf.c0 -> L666
            goto L688
        L65f:
            r0 = move-exception
            r2 = r1
            goto L691
        L662:
            r2 = r1
            goto L666
        L664:
            r6 = r20
        L666:
            r8.getClass()     // Catch: java.lang.Throwable -> L484
            if (r12 != 0) goto L670
            com.google.protobuf.j1 r0 = com.google.protobuf.k1.a(r2)     // Catch: java.lang.Throwable -> L484
            r12 = r0
        L670:
            boolean r0 = com.google.protobuf.k1.b(r12, r6)     // Catch: java.lang.Throwable -> L484
            if (r0 != 0) goto L688
        L676:
            if (r11 >= r10) goto L680
            r0 = r9[r11]
            r7.k(r0, r2, r12)
            int r11 = r11 + 1
            goto L676
        L680:
            if (r12 == 0) goto L687
            r0 = r2
            com.google.protobuf.y r0 = (com.google.protobuf.y) r0
            r0.unknownFields = r12
        L687:
            return
        L688:
            r5 = r21
            r4 = r6
            r1 = r7
            goto L1b
        L68e:
            r0 = move-exception
            goto L4a
        L691:
            if (r11 >= r10) goto L69b
            r1 = r9[r11]
            r7.k(r1, r2, r12)
            int r11 = r11 + 1
            goto L691
        L69b:
            if (r12 == 0) goto L6a5
            r8.getClass()
            r1 = r2
            com.google.protobuf.y r1 = (com.google.protobuf.y) r1
            r1.unknownFields = r12
        L6a5:
            throw r0
        L6a6:
            r7 = r1
            java.lang.String r0 = "Mutating immutable message: "
            androidx.navigation.b.t(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.t0.h(java.lang.Object, c3.i, com.google.protobuf.p):void");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final y i() {
        this.f1564j.getClass();
        return ((y) this.e).k();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean j(y yVar, y yVar2, int i9) {
        return n(i9, yVar) == n(i9, yVar2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(int i9, Object obj, Object obj2) {
        int i10 = this.f1558a[i9];
        if (s1.c.i(obj, L(i9) & 1048575) == null) {
            return;
        }
        l(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(int i9) {
        if (this.f1559b[((i9 / 3) * 2) + 1] == null) {
            return;
        }
        n0.b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b1 m(int i9) {
        int i10 = (i9 / 3) * 2;
        Object[] objArr = this.f1559b;
        b1 b1Var = (b1) objArr[i10];
        if (b1Var != null) {
            return b1Var;
        }
        b1 b1VarA = y0.c.a((Class) objArr[i10 + 1]);
        objArr[i10] = b1VarA;
        return b1VarA;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean n(int i9, Object obj) {
        int i10 = this.f1558a[i9 + 2];
        long j9 = i10 & 1048575;
        if (j9 == 1048575) {
            int iL = L(i9);
            long j10 = iL & 1048575;
            switch (K(iL)) {
                case 0:
                    if (Double.doubleToRawLongBits(s1.c.e(obj, j10)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(s1.c.f(obj, j10)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (s1.c.h(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (s1.c.h(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (s1.c.g(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (s1.c.h(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (s1.c.g(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return s1.c.c(obj, j10);
                case 8:
                    Object objI = s1.c.i(obj, j10);
                    if (objI instanceof String) {
                        return !((String) objI).isEmpty();
                    }
                    if (objI instanceof g) {
                        return !g.d.equals(objI);
                    }
                    l9.i.a();
                    return false;
                case 9:
                    if (s1.c.i(obj, j10) == null) {
                        return false;
                    }
                    break;
                case 10:
                    return !g.d.equals(s1.c.i(obj, j10));
                case 11:
                    if (s1.c.g(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (s1.c.g(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (s1.c.g(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (s1.c.h(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (s1.c.g(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (s1.c.h(obj, j10) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (s1.c.i(obj, j10) == null) {
                        return false;
                    }
                    break;
                default:
                    l9.i.a();
                    return false;
            }
        } else if (((1 << (i10 >>> 20)) & s1.c.g(obj, j9)) == 0) {
            return false;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean o(Object obj, int i9, int i10, int i11, int i12) {
        if (i10 == 1048575) {
            return n(i9, obj);
        }
        return (i11 & i12) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean q(Object obj, int i9, int i10) {
        return s1.c.g(obj, (long) (this.f1558a[i10 + 2] & 1048575)) == i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r(Object obj, int i9, Object obj2, p pVar, c3.i iVar) throws c0 {
        long jL = L(i9) & 1048575;
        Object objI = s1.c.i(obj, jL);
        p0 p0Var = this.f1567m;
        if (objI == null) {
            p0Var.getClass();
            objI = o0.c.c();
            s1.p(jL, obj, objI);
        } else {
            p0Var.getClass();
            if (!((o0) objI).f1540b) {
                o0 o0VarC = o0.c.c();
                p0.a(o0VarC, objI);
                s1.p(jL, obj, o0VarC);
                objI = o0VarC;
            }
        }
        p0Var.getClass();
        o0 o0Var = (o0) objI;
        m0 m0Var = ((n0) obj2).f1536a;
        iVar.z(2);
        j jVar = (j) iVar.d;
        int iF = jVar.f(jVar.w());
        Object obj3 = m0Var.c;
        Object objK = "";
        Object objK2 = obj3;
        while (true) {
            try {
                int iC = iVar.c();
                if (iC == Integer.MAX_VALUE || jVar.c()) {
                    break;
                }
                if (iC == 1) {
                    objK = iVar.k(m0Var.f1531a, null, null);
                } else if (iC != 2) {
                    try {
                        if (!iVar.A()) {
                            throw new d0("Unable to parse map entry.");
                        }
                    } catch (c0 unused) {
                        if (!iVar.A()) {
                            throw new d0("Unable to parse map entry.");
                        }
                    }
                } else {
                    objK2 = iVar.k(m0Var.f1532b, obj3.getClass(), pVar);
                }
            } catch (Throwable th) {
                jVar.e(iF);
                throw th;
            }
        }
        o0Var.put(objK, objK2);
        jVar.e(iF);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s(int i9, Object obj, Object obj2) {
        if (n(i9, obj2)) {
            long jL = L(i9) & 1048575;
            Unsafe unsafe = f1557o;
            Object object = unsafe.getObject(obj2, jL);
            if (object == null) {
                ai.onnxruntime.b.c(this.f1558a[i9], "Source subfield ", " is present but null: ", obj2);
                return;
            }
            b1 b1VarM = m(i9);
            if (!n(i9, obj)) {
                if (p(object)) {
                    y yVarI = b1VarM.i();
                    b1VarM.b(yVarI, object);
                    unsafe.putObject(obj, jL, yVarI);
                } else {
                    unsafe.putObject(obj, jL, object);
                }
                G(i9, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jL);
            if (!p(object2)) {
                y yVarI2 = b1VarM.i();
                b1VarM.b(yVarI2, object2);
                unsafe.putObject(obj, jL, yVarI2);
                object2 = yVarI2;
            }
            b1VarM.b(object2, object);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(int i9, Object obj, Object obj2) {
        int[] iArr = this.f1558a;
        int i10 = iArr[i9];
        if (q(obj2, i10, i9)) {
            long jL = L(i9) & 1048575;
            Unsafe unsafe = f1557o;
            Object object = unsafe.getObject(obj2, jL);
            if (object == null) {
                ai.onnxruntime.b.c(iArr[i9], "Source subfield ", " is present but null: ", obj2);
                return;
            }
            b1 b1VarM = m(i9);
            if (!q(obj, i10, i9)) {
                if (p(object)) {
                    y yVarI = b1VarM.i();
                    b1VarM.b(yVarI, object);
                    unsafe.putObject(obj, jL, yVarI);
                } else {
                    unsafe.putObject(obj, jL, object);
                }
                H(obj, i10, i9);
                return;
            }
            Object object2 = unsafe.getObject(obj, jL);
            if (!p(object2)) {
                y yVarI2 = b1VarM.i();
                b1VarM.b(yVarI2, object2);
                unsafe.putObject(obj, jL, yVarI2);
                object2 = yVarI2;
            }
            b1VarM.b(object2, object);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object u(int i9, Object obj) {
        b1 b1VarM = m(i9);
        long jL = L(i9) & 1048575;
        if (!n(i9, obj)) {
            return b1VarM.i();
        }
        Object object = f1557o.getObject(obj, jL);
        if (p(object)) {
            return object;
        }
        y yVarI = b1VarM.i();
        if (object != null) {
            b1VarM.b(yVarI, object);
        }
        return yVarI;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object v(Object obj, int i9, int i10) {
        b1 b1VarM = m(i10);
        if (!q(obj, i9, i10)) {
            return b1VarM.i();
        }
        Object object = f1557o.getObject(obj, L(i10) & 1048575);
        if (p(object)) {
            return object;
        }
        y yVarI = b1VarM.i();
        if (object != null) {
            b1VarM.b(yVarI, object);
        }
        return yVarI;
    }
}
