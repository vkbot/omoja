package com.google.protobuf;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p028c3.C0983i;
import p130l9.C2237i;
import p142n0.C2467b;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.protobuf.t0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1188t0 implements InterfaceC1134b1 {

    /* JADX INFO: renamed from: n */
    public static final int[] f2759n = new int[0];

    /* JADX INFO: renamed from: o */
    public static final Unsafe f2760o = AbstractC1186s1.m2115j();

    /* JADX INFO: renamed from: a */
    public final int[] f2761a;

    /* JADX INFO: renamed from: b */
    public final Object[] f2762b;

    /* JADX INFO: renamed from: c */
    public final int f2763c;

    /* JADX INFO: renamed from: d */
    public final int f2764d;

    /* JADX INFO: renamed from: e */
    public final AbstractC1128a f2765e;

    /* JADX INFO: renamed from: f */
    public final boolean f2766f;

    /* JADX INFO: renamed from: g */
    public final int[] f2767g;

    /* JADX INFO: renamed from: h */
    public final int f2768h;

    /* JADX INFO: renamed from: i */
    public final int f2769i;

    /* JADX INFO: renamed from: j */
    public final C1194v0 f2770j;

    /* JADX INFO: renamed from: k */
    public final AbstractC1158j0 f2771k;

    /* JADX INFO: renamed from: l */
    public final C1162k1 f2772l;

    /* JADX INFO: renamed from: m */
    public final C1176p0 f2773m;

    public C1188t0(int[] iArr, Object[] objArr, int i10, int i11, AbstractC1128a abstractC1128a, int[] iArr2, int i12, int i13, C1194v0 c1194v0, AbstractC1158j0 abstractC1158j0, C1162k1 c1162k1, C1181r c1181r, C1176p0 c1176p0) {
        this.f2761a = iArr;
        this.f2762b = objArr;
        this.f2763c = i10;
        this.f2764d = i11;
        this.f2766f = abstractC1128a instanceof AbstractC1202y;
        this.f2767g = iArr2;
        this.f2768h = i12;
        this.f2769i = i13;
        this.f2770j = c1194v0;
        this.f2771k = abstractC1158j0;
        this.f2772l = c1162k1;
        this.f2765e = abstractC1128a;
        this.f2773m = c1176p0;
    }

    /* JADX INFO: renamed from: A */
    public static long m2124A(Object obj, long j10) {
        return ((Long) AbstractC1186s1.f2751c.m2098i(obj, j10)).longValue();
    }

    /* JADX INFO: renamed from: F */
    public static Field m2125F(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder sbM173x = AbstractC0074a.m173x("Field ", str, " for ");
            sbM173x.append(cls.getName());
            sbM173x.append(" not found. Known fields are ");
            sbM173x.append(Arrays.toString(declaredFields));
            throw new RuntimeException(sbM173x.toString());
        }
    }

    /* JADX INFO: renamed from: K */
    public static int m2126K(int i10) {
        return (i10 & 267386880) >>> 20;
    }

    /* JADX INFO: renamed from: p */
    public static boolean m2127p(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof AbstractC1202y) {
            return ((AbstractC1202y) obj).m2175i();
        }
        return true;
    }

    /* JADX INFO: renamed from: w */
    public static C1188t0 m2128w(C1130a1 c1130a1, C1194v0 c1194v0, AbstractC1158j0 abstractC1158j0, C1162k1 c1162k1, C1181r c1181r, C1176p0 c1176p0) {
        if (c1130a1 instanceof C1130a1) {
            return m2129x(c1130a1, c1194v0, abstractC1158j0, c1162k1, c1181r, c1176p0);
        }
        c1130a1.getClass();
        C2467b.m3822a();
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x025b  */
    /* JADX WARN: Code duplicated, block: B:121:0x025e  */
    /* JADX WARN: Code duplicated, block: B:124:0x0275  */
    /* JADX WARN: Code duplicated, block: B:125:0x0278  */
    /* JADX WARN: Code duplicated, block: B:162:0x0334  */
    /* JADX WARN: Code duplicated, block: B:177:0x037e  */
    /* JADX WARN: Code duplicated, block: B:180:0x0388  */
    /* JADX WARN: Code duplicated, block: B:183:0x0398  */
    /* JADX INFO: renamed from: x */
    public static C1188t0 m2129x(C1130a1 c1130a1, C1194v0 c1194v0, AbstractC1158j0 abstractC1158j0, C1162k1 c1162k1, C1181r c1181r, C1176p0 c1176p0) {
        int i10;
        int iCharAt;
        int i11;
        int i12;
        int i13;
        int[] iArr;
        int i14;
        int i15;
        int i16;
        int i17;
        char cCharAt;
        int i18;
        char cCharAt2;
        int i19;
        char cCharAt3;
        int i20;
        char cCharAt4;
        int i21;
        char cCharAt5;
        int i22;
        char cCharAt6;
        int i23;
        char cCharAt7;
        int i24;
        char cCharAt8;
        int i25;
        int i26;
        int i27;
        int i28;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i29;
        int i30;
        int i31;
        int i32;
        Field fieldM2125F;
        char cCharAt9;
        int i33;
        int i34;
        int i35;
        Object obj;
        Field fieldM2125F2;
        int i36;
        Object obj2;
        Field fieldM2125F3;
        int i37;
        char cCharAt10;
        int i38;
        char cCharAt11;
        int i39;
        char cCharAt12;
        int i40;
        char cCharAt13;
        String str = c1130a1.f2624b;
        int length = str.length();
        int i41 = 55296;
        if (str.charAt(0) >= 55296) {
            int i42 = 1;
            while (true) {
                i10 = i42 + 1;
                if (str.charAt(i42) < 55296) {
                    break;
                }
                i42 = i10;
            }
        } else {
            i10 = 1;
        }
        int i43 = i10 + 1;
        int iCharAt2 = str.charAt(i10);
        if (iCharAt2 >= 55296) {
            int i44 = iCharAt2 & 8191;
            int i45 = 13;
            while (true) {
                i40 = i43 + 1;
                cCharAt13 = str.charAt(i43);
                if (cCharAt13 < 55296) {
                    break;
                }
                i44 |= (cCharAt13 & 8191) << i45;
                i45 += 13;
                i43 = i40;
            }
            iCharAt2 = i44 | (cCharAt13 << i45);
            i43 = i40;
        }
        if (iCharAt2 == 0) {
            i12 = 0;
            i15 = 0;
            iCharAt = 0;
            i11 = 0;
            i14 = 0;
            i16 = 0;
            iArr = f2759n;
            i13 = 0;
        } else {
            int i46 = i43 + 1;
            int iCharAt3 = str.charAt(i43);
            if (iCharAt3 >= 55296) {
                int i47 = iCharAt3 & 8191;
                int i48 = 13;
                while (true) {
                    i24 = i46 + 1;
                    cCharAt8 = str.charAt(i46);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt8 & 8191) << i48;
                    i48 += 13;
                    i46 = i24;
                }
                iCharAt3 = i47 | (cCharAt8 << i48);
                i46 = i24;
            }
            int i49 = i46 + 1;
            int iCharAt4 = str.charAt(i46);
            if (iCharAt4 >= 55296) {
                int i50 = iCharAt4 & 8191;
                int i51 = 13;
                while (true) {
                    i23 = i49 + 1;
                    cCharAt7 = str.charAt(i49);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt7 & 8191) << i51;
                    i51 += 13;
                    i49 = i23;
                }
                iCharAt4 = i50 | (cCharAt7 << i51);
                i49 = i23;
            }
            int i52 = i49 + 1;
            int iCharAt5 = str.charAt(i49);
            if (iCharAt5 >= 55296) {
                int i53 = iCharAt5 & 8191;
                int i54 = 13;
                while (true) {
                    i22 = i52 + 1;
                    cCharAt6 = str.charAt(i52);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt6 & 8191) << i54;
                    i54 += 13;
                    i52 = i22;
                }
                iCharAt5 = i53 | (cCharAt6 << i54);
                i52 = i22;
            }
            int i55 = i52 + 1;
            int iCharAt6 = str.charAt(i52);
            if (iCharAt6 >= 55296) {
                int i56 = iCharAt6 & 8191;
                int i57 = 13;
                while (true) {
                    i21 = i55 + 1;
                    cCharAt5 = str.charAt(i55);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt5 & 8191) << i57;
                    i57 += 13;
                    i55 = i21;
                }
                iCharAt6 = i56 | (cCharAt5 << i57);
                i55 = i21;
            }
            int i58 = i55 + 1;
            iCharAt = str.charAt(i55);
            if (iCharAt >= 55296) {
                int i59 = iCharAt & 8191;
                int i60 = 13;
                while (true) {
                    i20 = i58 + 1;
                    cCharAt4 = str.charAt(i58);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i59 |= (cCharAt4 & 8191) << i60;
                    i60 += 13;
                    i58 = i20;
                }
                iCharAt = i59 | (cCharAt4 << i60);
                i58 = i20;
            }
            int i61 = i58 + 1;
            int iCharAt7 = str.charAt(i58);
            if (iCharAt7 >= 55296) {
                int i62 = iCharAt7 & 8191;
                int i63 = 13;
                while (true) {
                    i19 = i61 + 1;
                    cCharAt3 = str.charAt(i61);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i62 |= (cCharAt3 & 8191) << i63;
                    i63 += 13;
                    i61 = i19;
                }
                iCharAt7 = i62 | (cCharAt3 << i63);
                i61 = i19;
            }
            int i64 = i61 + 1;
            int iCharAt8 = str.charAt(i61);
            if (iCharAt8 >= 55296) {
                int i65 = iCharAt8 & 8191;
                int i66 = 13;
                while (true) {
                    i18 = i64 + 1;
                    cCharAt2 = str.charAt(i64);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i65 |= (cCharAt2 & 8191) << i66;
                    i66 += 13;
                    i64 = i18;
                }
                iCharAt8 = i65 | (cCharAt2 << i66);
                i64 = i18;
            }
            int i67 = i64 + 1;
            int iCharAt9 = str.charAt(i64);
            if (iCharAt9 >= 55296) {
                int i68 = iCharAt9 & 8191;
                int i69 = 13;
                while (true) {
                    i17 = i67 + 1;
                    cCharAt = str.charAt(i67);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i68 |= (cCharAt & 8191) << i69;
                    i69 += 13;
                    i67 = i17;
                }
                iCharAt9 = i68 | (cCharAt << i69);
                i67 = i17;
            }
            int[] iArr2 = new int[iCharAt9 + iCharAt7 + iCharAt8];
            int i70 = (iCharAt3 * 2) + iCharAt4;
            int i71 = iCharAt7;
            i11 = iCharAt5;
            i12 = i71;
            i13 = iCharAt3;
            i43 = i67;
            iArr = iArr2;
            i14 = iCharAt6;
            i15 = i70;
            i16 = iCharAt9;
        }
        Unsafe unsafe = f2760o;
        Object[] objArr = c1130a1.f2625c;
        Class<?> cls = c1130a1.f2623a.getClass();
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr2 = new Object[iCharAt * 2];
        int i72 = i16 + i12;
        int i73 = i72;
        int i74 = i16;
        int i75 = 0;
        int i76 = 0;
        while (i43 < length) {
            int i77 = i43 + 1;
            int iCharAt10 = str.charAt(i43);
            if (iCharAt10 >= i41) {
                int i78 = iCharAt10 & 8191;
                int i79 = i77;
                int i80 = 13;
                while (true) {
                    i39 = i79 + 1;
                    cCharAt12 = str.charAt(i79);
                    i25 = length;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i78 |= (cCharAt12 & 8191) << i80;
                    i80 += 13;
                    i79 = i39;
                    length = i25;
                }
                iCharAt10 = i78 | (cCharAt12 << i80);
                i26 = i39;
            } else {
                i25 = length;
                i26 = i77;
            }
            int i81 = i26 + 1;
            int iCharAt11 = str.charAt(i26);
            Object[] objArr3 = objArr;
            char c = 55296;
            if (iCharAt11 >= 55296) {
                int i82 = iCharAt11 & 8191;
                int i83 = 13;
                while (true) {
                    i38 = i81 + 1;
                    cCharAt11 = str.charAt(i81);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i82 |= (cCharAt11 & 8191) << i83;
                    i83 += 13;
                    i81 = i38;
                    c = 55296;
                }
                iCharAt11 = i82 | (cCharAt11 << i83);
                i81 = i38;
            }
            int i84 = iCharAt11 & 255;
            int i85 = iCharAt10;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i75] = i76;
                i75++;
            }
            int[] iArr4 = iArr3;
            if (i84 >= 51) {
                int i86 = i81 + 1;
                int iCharAt12 = str.charAt(i81);
                char c10 = 55296;
                if (iCharAt12 >= 55296) {
                    int i87 = iCharAt12 & 8191;
                    int i88 = 13;
                    while (true) {
                        i37 = i86 + 1;
                        cCharAt10 = str.charAt(i86);
                        if (cCharAt10 < c10) {
                            break;
                        }
                        i87 |= (cCharAt10 & 8191) << i88;
                        i88 += 13;
                        i86 = i37;
                        c10 = 55296;
                    }
                    iCharAt12 = i87 | (cCharAt10 << i88);
                    i86 = i37;
                }
                int i89 = i84 - 51;
                int i90 = i86;
                if (i89 == 9 || i89 == 17) {
                    i34 = i15 + 1;
                    objArr2[((i76 / 3) * 2) + 1] = objArr3[i15];
                } else {
                    if (i89 == 12 && (AbstractC1034g.m1294a(c1130a1.m1897a(), 1) || (iCharAt11 & 2048) != 0)) {
                        i34 = i15 + 1;
                        objArr2[((i76 / 3) * 2) + 1] = objArr3[i15];
                    }
                    i35 = iCharAt12 * 2;
                    obj = objArr3[i35];
                    if (obj instanceof Field) {
                        fieldM2125F2 = (Field) obj;
                    } else {
                        fieldM2125F2 = m2125F(cls, (String) obj);
                        objArr3[i35] = fieldM2125F2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldM2125F2);
                    i36 = i35 + 1;
                    obj2 = objArr3[i36];
                    if (obj2 instanceof Field) {
                        fieldM2125F3 = (Field) obj2;
                    } else {
                        fieldM2125F3 = m2125F(cls, (String) obj2);
                        objArr3[i36] = fieldM2125F3;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldM2125F3);
                    int i91 = i13;
                    iObjectFieldOffset2 = iObjectFieldOffset4;
                    i32 = iObjectFieldOffset3;
                    i27 = i91;
                    i31 = i15;
                    i29 = i90;
                    i30 = 0;
                    cls = cls;
                }
                i15 = i34;
                i35 = iCharAt12 * 2;
                obj = objArr3[i35];
                if (obj instanceof Field) {
                    fieldM2125F2 = (Field) obj;
                } else {
                    fieldM2125F2 = m2125F(cls, (String) obj);
                    objArr3[i35] = fieldM2125F2;
                }
                int iObjectFieldOffset5 = (int) unsafe.objectFieldOffset(fieldM2125F2);
                i36 = i35 + 1;
                obj2 = objArr3[i36];
                if (obj2 instanceof Field) {
                    fieldM2125F3 = (Field) obj2;
                } else {
                    fieldM2125F3 = m2125F(cls, (String) obj2);
                    objArr3[i36] = fieldM2125F3;
                }
                int iObjectFieldOffset6 = (int) unsafe.objectFieldOffset(fieldM2125F3);
                int i92 = i13;
                iObjectFieldOffset2 = iObjectFieldOffset6;
                i32 = iObjectFieldOffset5;
                i27 = i92;
                i31 = i15;
                i29 = i90;
                i30 = 0;
                cls = cls;
            } else {
                int i93 = i15 + 1;
                Field fieldM2125F4 = m2125F(cls, (String) objArr3[i15]);
                if (i84 == 9 || i84 == 17) {
                    i27 = i13;
                    objArr2[((i76 / 3) * 2) + 1] = fieldM2125F4.getType();
                } else {
                    if (i84 == 27 || i84 == 49) {
                        i27 = i13;
                        i33 = i15 + 2;
                        objArr2[((i76 / 3) * 2) + 1] = objArr3[i93];
                    } else if (i84 == 12 || i84 == 30 || i84 == 44) {
                        i27 = i13;
                        if (c1130a1.m1897a() == 1 || (iCharAt11 & 2048) != 0) {
                            i33 = i15 + 2;
                            objArr2[((i76 / 3) * 2) + 1] = objArr3[i93];
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldM2125F4);
                        if ((iCharAt11 & 4096) != 0 || i84 > 17) {
                            iObjectFieldOffset2 = 1048575;
                            i29 = i81;
                            i30 = 0;
                        } else {
                            int i94 = i81 + 1;
                            int iCharAt13 = str.charAt(i81);
                            if (iCharAt13 >= 55296) {
                                int i95 = iCharAt13 & 8191;
                                int i96 = 13;
                                while (true) {
                                    i29 = i94 + 1;
                                    cCharAt9 = str.charAt(i94);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i95 |= (cCharAt9 & 8191) << i96;
                                    i96 += 13;
                                    i94 = i29;
                                }
                                iCharAt13 = i95 | (cCharAt9 << i96);
                            } else {
                                i29 = i94;
                            }
                            int i97 = (iCharAt13 / 32) + (i27 * 2);
                            Object obj3 = objArr3[i97];
                            if (obj3 instanceof Field) {
                                fieldM2125F = (Field) obj3;
                            } else {
                                fieldM2125F = m2125F(cls, (String) obj3);
                                objArr3[i97] = fieldM2125F;
                            }
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldM2125F);
                            i30 = iCharAt13 % 32;
                        }
                        if (i84 >= 18 || i84 > 49) {
                            i31 = i28;
                            i32 = iObjectFieldOffset;
                        } else {
                            iArr[i73] = iObjectFieldOffset;
                            i31 = i28;
                            i32 = iObjectFieldOffset;
                            i73++;
                        }
                    } else {
                        if (i84 == 50) {
                            int i98 = i74 + 1;
                            iArr[i74] = i76;
                            int i99 = (i76 / 3) * 2;
                            int i100 = i15 + 2;
                            objArr2[i99] = objArr3[i93];
                            if ((iCharAt11 & 2048) != 0) {
                                i28 = i15 + 3;
                                objArr2[i99 + 1] = objArr3[i100];
                                i27 = i13;
                                i74 = i98;
                            } else {
                                i28 = i100;
                                i74 = i98;
                                i27 = i13;
                            }
                        } else {
                            i27 = i13;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldM2125F4);
                        if ((iCharAt11 & 4096) != 0) {
                            iObjectFieldOffset2 = 1048575;
                            i29 = i81;
                            i30 = 0;
                        } else {
                            iObjectFieldOffset2 = 1048575;
                            i29 = i81;
                            i30 = 0;
                        }
                        if (i84 >= 18) {
                            i31 = i28;
                            i32 = iObjectFieldOffset;
                        } else {
                            i31 = i28;
                            i32 = iObjectFieldOffset;
                        }
                    }
                    i28 = i33;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldM2125F4);
                    if ((iCharAt11 & 4096) != 0) {
                        iObjectFieldOffset2 = 1048575;
                        i29 = i81;
                        i30 = 0;
                    } else {
                        iObjectFieldOffset2 = 1048575;
                        i29 = i81;
                        i30 = 0;
                    }
                    if (i84 >= 18) {
                        i31 = i28;
                        i32 = iObjectFieldOffset;
                    } else {
                        i31 = i28;
                        i32 = iObjectFieldOffset;
                    }
                }
                i28 = i93;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldM2125F4);
                if ((iCharAt11 & 4096) != 0) {
                    iObjectFieldOffset2 = 1048575;
                    i29 = i81;
                    i30 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i29 = i81;
                    i30 = 0;
                }
                if (i84 >= 18) {
                    i31 = i28;
                    i32 = iObjectFieldOffset;
                } else {
                    i31 = i28;
                    i32 = iObjectFieldOffset;
                }
            }
            int i101 = i76 + 1;
            iArr4[i76] = i85;
            int i102 = i76 + 2;
            String str2 = str;
            iArr4[i101] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0) | (i84 << 20) | i32;
            i76 += 3;
            iArr4[i102] = (i30 << 20) | iObjectFieldOffset2;
            cls = cls;
            objArr = objArr3;
            str = str2;
            length = i25;
            i13 = i27;
            i43 = i29;
            i41 = 55296;
            i15 = i31;
            iArr3 = iArr4;
        }
        return new C1188t0(iArr3, objArr2, i11, i14, c1130a1.f2623a, iArr, i16, i72, c1194v0, abstractC1158j0, c1162k1, c1181r, c1176p0);
    }

    /* JADX INFO: renamed from: y */
    public static long m2130y(int i10) {
        return i10 & 1048575;
    }

    /* JADX INFO: renamed from: z */
    public static int m2131z(Object obj, long j10) {
        return ((Integer) AbstractC1186s1.f2751c.m2098i(obj, j10)).intValue();
    }

    /* JADX INFO: renamed from: B */
    public final void m2132B(Object obj, long j10, C0983i c0983i, InterfaceC1134b1 interfaceC1134b1, C1175p c1175p) throws C1137c0 {
        int iMo1983v;
        List listMo1991c = this.f2771k.mo1991c(obj, j10);
        AbstractC1157j abstractC1157j = (AbstractC1157j) c0983i.f932d;
        int i10 = c0983i.f929a;
        if ((i10 & 7) != 3) {
            throw C1140d0.m1937b();
        }
        do {
            AbstractC1202y abstractC1202yMo1909i = interfaceC1134b1.mo1909i();
            c0983i.m1107d(abstractC1202yMo1909i, interfaceC1134b1, c1175p);
            interfaceC1134b1.mo1903c(abstractC1202yMo1909i);
            listMo1991c.add(abstractC1202yMo1909i);
            if (abstractC1157j.mo1965c() || c0983i.f931c != 0) {
                return;
            } else {
                iMo1983v = abstractC1157j.mo1983v();
            }
        } while (iMo1983v == i10);
        c0983i.f931c = iMo1983v;
    }

    /* JADX INFO: renamed from: C */
    public final void m2133C(Object obj, int i10, C0983i c0983i, InterfaceC1134b1 interfaceC1134b1, C1175p c1175p) throws C1140d0 {
        int iMo1983v;
        List listMo1991c = this.f2771k.mo1991c(obj, i10 & 1048575);
        AbstractC1157j abstractC1157j = (AbstractC1157j) c0983i.f932d;
        int i11 = c0983i.f929a;
        if ((i11 & 7) != 2) {
            throw C1140d0.m1937b();
        }
        do {
            AbstractC1202y abstractC1202yMo1909i = interfaceC1134b1.mo1909i();
            c0983i.m1108e(abstractC1202yMo1909i, interfaceC1134b1, c1175p);
            interfaceC1134b1.mo1903c(abstractC1202yMo1909i);
            listMo1991c.add(abstractC1202yMo1909i);
            if (abstractC1157j.mo1965c() || c0983i.f931c != 0) {
                return;
            } else {
                iMo1983v = abstractC1157j.mo1983v();
            }
        } while (iMo1983v == i11);
        c0983i.f931c = iMo1983v;
    }

    /* JADX INFO: renamed from: D */
    public final void m2134D(Object obj, int i10, C0983i c0983i) throws C1137c0 {
        if ((536870912 & i10) != 0) {
            c0983i.m1129z(2);
            AbstractC1186s1.m2121p(i10 & 1048575, obj, ((AbstractC1157j) c0983i.f932d).mo1982u());
        } else if (!this.f2766f) {
            AbstractC1186s1.m2121p(i10 & 1048575, obj, c0983i.m1110g());
        } else {
            c0983i.m1129z(2);
            AbstractC1186s1.m2121p(i10 & 1048575, obj, ((AbstractC1157j) c0983i.f932d).mo1981t());
        }
    }

    /* JADX INFO: renamed from: E */
    public final void m2135E(Object obj, int i10, C0983i c0983i) throws C1137c0 {
        boolean z9 = (536870912 & i10) != 0;
        AbstractC1158j0 abstractC1158j0 = this.f2771k;
        if (z9) {
            c0983i.m1124u(abstractC1158j0.mo1991c(obj, i10 & 1048575), true);
        } else {
            c0983i.m1124u(abstractC1158j0.mo1991c(obj, i10 & 1048575), false);
        }
    }

    /* JADX INFO: renamed from: G */
    public final void m2136G(int i10, Object obj) {
        int i11 = this.f2761a[i10 + 2];
        long j10 = 1048575 & i11;
        if (j10 == 1048575) {
            return;
        }
        AbstractC1186s1.m2119n((1 << (i11 >>> 20)) | AbstractC1186s1.f2751c.m2096g(obj, j10), j10, obj);
    }

    /* JADX INFO: renamed from: H */
    public final void m2137H(Object obj, int i10, int i11) {
        AbstractC1186s1.m2119n(i10, this.f2761a[i11 + 2] & 1048575, obj);
    }

    /* JADX INFO: renamed from: I */
    public final void m2138I(Object obj, int i10, AbstractC1128a abstractC1128a) {
        f2760o.putObject(obj, m2140L(i10) & 1048575, abstractC1128a);
        m2136G(i10, obj);
    }

    /* JADX INFO: renamed from: J */
    public final void m2139J(Object obj, int i10, int i11, AbstractC1128a abstractC1128a) {
        f2760o.putObject(obj, m2140L(i11) & 1048575, abstractC1128a);
        m2137H(obj, i10, i11);
    }

    /* JADX INFO: renamed from: L */
    public final int m2140L(int i10) {
        return this.f2761a[i10 + 1];
    }

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
    /* JADX INFO: renamed from: M */
    public final void m2141M(Object obj, C1164l0 c1164l0) {
        int i10;
        int i11;
        int i12;
        boolean z9;
        int iM2050e;
        int size;
        int iM2049d;
        int iMo1893a;
        int i13;
        int iM2048c;
        int iM2050e2;
        int size2;
        int iM2049d2;
        C1188t0 c1188t0 = this;
        int[] iArr = c1188t0.f2761a;
        int length = iArr.length;
        Unsafe unsafe = f2760o;
        int i14 = 1048575;
        int i15 = 1048575;
        int i16 = 0;
        int i17 = 0;
        while (i16 < length) {
            int iM2140L = c1188t0.m2140L(i16);
            int i18 = iArr[i16];
            int iM2126K = m2126K(iM2140L);
            int i19 = 1;
            if (iM2126K <= 17) {
                int i20 = iArr[i16 + 2];
                int i21 = i20 & i14;
                if (i21 != i15) {
                    i17 = i21 == i14 ? 0 : unsafe.getInt(obj, i21);
                    i15 = i21;
                }
                i10 = 1 << (i20 >>> 20);
            } else {
                i10 = 0;
            }
            long j10 = iM2140L & i14;
            switch (iM2126K) {
                case 0:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        double dMo2060e = AbstractC1186s1.f2751c.mo2060e(obj, j10);
                        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
                        abstractC1169n.getClass();
                        abstractC1169n.mo2020n(i18, Double.doubleToRawLongBits(dMo2060e));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 1:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        float fMo2061f = AbstractC1186s1.f2751c.mo2061f(obj, j10);
                        AbstractC1169n abstractC1169n2 = (AbstractC1169n) c1164l0.f2720a;
                        abstractC1169n2.getClass();
                        abstractC1169n2.mo2018l(i18, Float.floatToRawIntBits(fMo2061f));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 2:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2032z(i18, unsafe.getLong(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 3:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2032z(i18, unsafe.getLong(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 4:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2022p(i18, unsafe.getInt(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 5:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2020n(i18, unsafe.getLong(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 6:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2018l(i18, unsafe.getInt(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 7:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2014h(i18, AbstractC1186s1.f2751c.mo2058c(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 8:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        Object object = unsafe.getObject(obj, j10);
                        if (object instanceof String) {
                            ((AbstractC1169n) c1164l0.f2720a).mo2027u(i18, (String) object);
                        } else {
                            ((AbstractC1169n) c1164l0.f2720a).mo2016j(i18, (C1148g) object);
                        }
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 9:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2025s(i18, (AbstractC1128a) unsafe.getObject(obj, j10), c1188t0.m2145m(i16));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 10:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2016j(i18, (C1148g) unsafe.getObject(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 11:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2030x(i18, unsafe.getInt(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 12:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2022p(i18, unsafe.getInt(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 13:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2018l(i18, unsafe.getInt(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 14:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2020n(i18, unsafe.getLong(obj, j10));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 15:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        int i22 = unsafe.getInt(obj, j10);
                        ((AbstractC1169n) c1164l0.f2720a).mo2030x(i18, (i22 >> 31) ^ (i22 << 1));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 16:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        long j11 = unsafe.getLong(obj, j10);
                        ((AbstractC1169n) c1164l0.f2720a).mo2032z(i18, (j11 >> 63) ^ (j11 << 1));
                    }
                    c1188t0 = this;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 17:
                    if (c1188t0.m2147o(obj, i16, i15, i17, i10)) {
                        c1164l0.m2037a(i18, unsafe.getObject(obj, j10), c1188t0.m2145m(i16));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 18:
                    i15 = i15;
                    i17 = i17;
                    AbstractC1138c1.m1923m(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 19:
                    i15 = i15;
                    i17 = i17;
                    AbstractC1138c1.m1927q(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 20:
                    i15 = i15;
                    i17 = i17;
                    AbstractC1138c1.m1929s(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 21:
                    i15 = i15;
                    i17 = i17;
                    AbstractC1138c1.m1935y(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 22:
                    i15 = i15;
                    i17 = i17;
                    AbstractC1138c1.m1928r(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 23:
                    i15 = i15;
                    i17 = i17;
                    AbstractC1138c1.m1926p(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 24:
                    i15 = i15;
                    i17 = i17;
                    AbstractC1138c1.m1925o(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 25:
                    i15 = i15;
                    i17 = i17;
                    AbstractC1138c1.m1922l(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 26:
                    i11 = i15;
                    i12 = i17;
                    int i23 = iArr[i16];
                    List list = (List) unsafe.getObject(obj, j10);
                    Class cls = AbstractC1138c1.f2648a;
                    if (list != null && !list.isEmpty()) {
                        AbstractC1169n abstractC1169n3 = (AbstractC1169n) c1164l0.f2720a;
                        if (list instanceof InterfaceC1149g0) {
                            InterfaceC1149g0 interfaceC1149g0 = (InterfaceC1149g0) list;
                            for (int i24 = 0; i24 < list.size(); i24++) {
                                Object objMo1952V = interfaceC1149g0.mo1952V(i24);
                                if (objMo1952V instanceof String) {
                                    abstractC1169n3.mo2027u(i23, (String) objMo1952V);
                                } else {
                                    abstractC1169n3.mo2016j(i23, (C1148g) objMo1952V);
                                }
                            }
                        } else {
                            for (int i25 = 0; i25 < list.size(); i25++) {
                                abstractC1169n3.mo2027u(i23, (String) list.get(i25));
                            }
                        }
                    }
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 27:
                    i11 = i15;
                    i12 = i17;
                    int i26 = iArr[i16];
                    List list2 = (List) unsafe.getObject(obj, j10);
                    InterfaceC1134b1 interfaceC1134b1M2145m = c1188t0.m2145m(i16);
                    Class cls2 = AbstractC1138c1.f2648a;
                    if (list2 != null && !list2.isEmpty()) {
                        c1164l0.getClass();
                        for (int i27 = 0; i27 < list2.size(); i27++) {
                            ((AbstractC1169n) c1164l0.f2720a).mo2025s(i26, (AbstractC1128a) list2.get(i27), interfaceC1134b1M2145m);
                        }
                    }
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 28:
                    i11 = i15;
                    i12 = i17;
                    int i28 = iArr[i16];
                    List list3 = (List) unsafe.getObject(obj, j10);
                    Class cls3 = AbstractC1138c1.f2648a;
                    if (list3 != null && !list3.isEmpty()) {
                        c1164l0.getClass();
                        for (int i29 = 0; i29 < list3.size(); i29++) {
                            ((AbstractC1169n) c1164l0.f2720a).mo2016j(i28, (C1148g) list3.get(i29));
                        }
                    }
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 29:
                    z9 = false;
                    AbstractC1138c1.m1934x(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 30:
                    z9 = false;
                    AbstractC1138c1.m1924n(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 31:
                    z9 = false;
                    AbstractC1138c1.m1930t(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 32:
                    z9 = false;
                    AbstractC1138c1.m1931u(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 33:
                    z9 = false;
                    AbstractC1138c1.m1932v(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 34:
                    z9 = false;
                    AbstractC1138c1.m1933w(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, false);
                    i15 = i15;
                    i17 = i17;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 35:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1923m(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 36:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1927q(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 37:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1929s(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 38:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1935y(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 39:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1928r(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 40:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1926p(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 41:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1925o(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 42:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1922l(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 43:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1934x(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 44:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1924n(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 45:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1930t(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 46:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1931u(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 47:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1932v(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    i11 = i15;
                    i12 = i17;
                    AbstractC1138c1.m1933w(iArr[i16], (List) unsafe.getObject(obj, j10), c1164l0, true);
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    i11 = i15;
                    i12 = i17;
                    int i30 = iArr[i16];
                    List list4 = (List) unsafe.getObject(obj, j10);
                    InterfaceC1134b1 interfaceC1134b1M2145m2 = c1188t0.m2145m(i16);
                    Class cls4 = AbstractC1138c1.f2648a;
                    if (list4 != null && !list4.isEmpty()) {
                        c1164l0.getClass();
                        for (int i31 = 0; i31 < list4.size(); i31++) {
                            c1164l0.m2037a(i30, list4.get(i31), interfaceC1134b1M2145m2);
                        }
                    }
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj, j10);
                    if (object2 != null) {
                        int i32 = 2;
                        Object obj2 = c1188t0.f2762b[(i16 / 3) * 2];
                        c1188t0.f2773m.getClass();
                        C1167m0 c1167m0 = ((C1170n0) obj2).f2733a;
                        EnumC1131a2 enumC1131a2 = c1167m0.f2727b;
                        EnumC1131a2 enumC1131a3 = c1167m0.f2726a;
                        AbstractC1169n abstractC1169n4 = (AbstractC1169n) c1164l0.f2720a;
                        abstractC1169n4.getClass();
                        for (Map.Entry entry : ((C1173o0) object2).entrySet()) {
                            abstractC1169n4.mo2029w(i18, i32);
                            int i33 = i32;
                            Object key = entry.getKey();
                            int i34 = i19;
                            Object value = entry.getValue();
                            int i35 = C1187t.f2756c;
                            int iM2048c2 = AbstractC1169n.m2048c(i34);
                            int i36 = i15;
                            C1201x1 c1201x1 = EnumC1131a2.f2628e;
                            if (enumC1131a3 == c1201x1) {
                                iM2048c2 *= 2;
                            }
                            int i37 = i17;
                            switch (enumC1131a3.ordinal()) {
                                case 0:
                                    ((Double) key).getClass();
                                    iM2050e = 8;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key2 = entry.getKey();
                                            Object value2 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key2);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value2);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key3 = entry.getKey();
                                            Object value3 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key3);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value3);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key4 = entry.getKey();
                                            Object value4 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key4);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value4);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key5 = entry.getKey();
                                            Object value5 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key5);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value5);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key6 = entry.getKey();
                                            Object value6 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key6);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value6);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key7 = entry.getKey();
                                            Object value7 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key7);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value7);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key8 = entry.getKey();
                                            Object value8 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key8);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value8);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key9 = entry.getKey();
                                            Object value9 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key9);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value9);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key10 = entry.getKey();
                                            Object value10 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key10);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value10);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11 = entry.getKey();
                                            Object value11 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key12 = entry.getKey();
                                            Object value12 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key12);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value12);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key13 = entry.getKey();
                                            Object value13 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key13);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value13);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key14 = entry.getKey();
                                            Object value14 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key14);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value14);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key15 = entry.getKey();
                                            Object value15 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key15);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value15);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key16 = entry.getKey();
                                            Object value16 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key16);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value16);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key17 = entry.getKey();
                                            Object value17 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key17);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value17);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue >> 31) ^ (iIntValue << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key18 = entry.getKey();
                                            Object value18 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key18);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value18);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue << i34) ^ (jLongValue >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key19 = entry.getKey();
                                            Object value19 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key19);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value19);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 1:
                                    ((Float) key).getClass();
                                    iM2050e = 4;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key110 = entry.getKey();
                                            Object value110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111 = entry.getKey();
                                            Object value111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key112 = entry.getKey();
                                            Object value112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key113 = entry.getKey();
                                            Object value113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key114 = entry.getKey();
                                            Object value114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key115 = entry.getKey();
                                            Object value115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key116 = entry.getKey();
                                            Object value116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key117 = entry.getKey();
                                            Object value117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key118 = entry.getKey();
                                            Object value118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key119 = entry.getKey();
                                            Object value119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1110 = entry.getKey();
                                            Object value1110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111 = entry.getKey();
                                            Object value1111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1112 = entry.getKey();
                                            Object value1112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1113 = entry.getKey();
                                            Object value1113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1114 = entry.getKey();
                                            Object value1114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1115 = entry.getKey();
                                            Object value1115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue2 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue2 >> 31) ^ (iIntValue2 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1116 = entry.getKey();
                                            Object value1116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue2 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue2 << i34) ^ (jLongValue2 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1117 = entry.getKey();
                                            Object value1117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 2:
                                    iM2050e = AbstractC1169n.m2050e(((Long) key).longValue());
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1118 = entry.getKey();
                                            Object value1118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1119 = entry.getKey();
                                            Object value1119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11110 = entry.getKey();
                                            Object value11110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111 = entry.getKey();
                                            Object value11111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11112 = entry.getKey();
                                            Object value11112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11113 = entry.getKey();
                                            Object value11113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11114 = entry.getKey();
                                            Object value11114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11115 = entry.getKey();
                                            Object value11115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11116 = entry.getKey();
                                            Object value11116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11117 = entry.getKey();
                                            Object value11117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11118 = entry.getKey();
                                            Object value11118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11119 = entry.getKey();
                                            Object value11119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111110 = entry.getKey();
                                            Object value111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111 = entry.getKey();
                                            Object value111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111112 = entry.getKey();
                                            Object value111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111113 = entry.getKey();
                                            Object value111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue3 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue3 >> 31) ^ (iIntValue3 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111114 = entry.getKey();
                                            Object value111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue3 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue3 << i34) ^ (jLongValue3 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111115 = entry.getKey();
                                            Object value111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 3:
                                    iM2050e = AbstractC1169n.m2050e(((Long) key).longValue());
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111116 = entry.getKey();
                                            Object value111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111117 = entry.getKey();
                                            Object value111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111118 = entry.getKey();
                                            Object value111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111119 = entry.getKey();
                                            Object value111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111110 = entry.getKey();
                                            Object value1111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111 = entry.getKey();
                                            Object value1111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111112 = entry.getKey();
                                            Object value1111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111113 = entry.getKey();
                                            Object value1111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111114 = entry.getKey();
                                            Object value1111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111115 = entry.getKey();
                                            Object value1111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111116 = entry.getKey();
                                            Object value1111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111117 = entry.getKey();
                                            Object value1111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111118 = entry.getKey();
                                            Object value1111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111119 = entry.getKey();
                                            Object value1111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111110 = entry.getKey();
                                            Object value11111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111 = entry.getKey();
                                            Object value11111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue4 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue4 >> 31) ^ (iIntValue4 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111112 = entry.getKey();
                                            Object value11111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue4 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue4 << i34) ^ (jLongValue4 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111113 = entry.getKey();
                                            Object value11111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 4:
                                    iM2050e = AbstractC1169n.m2046a(((Integer) key).intValue());
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111114 = entry.getKey();
                                            Object value11111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111115 = entry.getKey();
                                            Object value11111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111116 = entry.getKey();
                                            Object value11111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111117 = entry.getKey();
                                            Object value11111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111118 = entry.getKey();
                                            Object value11111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111119 = entry.getKey();
                                            Object value11111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111110 = entry.getKey();
                                            Object value111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111 = entry.getKey();
                                            Object value111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111112 = entry.getKey();
                                            Object value111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111113 = entry.getKey();
                                            Object value111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111114 = entry.getKey();
                                            Object value111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111115 = entry.getKey();
                                            Object value111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111116 = entry.getKey();
                                            Object value111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111117 = entry.getKey();
                                            Object value111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111118 = entry.getKey();
                                            Object value111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111119 = entry.getKey();
                                            Object value111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue5 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue5 >> 31) ^ (iIntValue5 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111110 = entry.getKey();
                                            Object value1111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue5 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue5 << i34) ^ (jLongValue5 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111 = entry.getKey();
                                            Object value1111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 5:
                                    ((Long) key).getClass();
                                    iM2050e = 8;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111112 = entry.getKey();
                                            Object value1111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111113 = entry.getKey();
                                            Object value1111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111114 = entry.getKey();
                                            Object value1111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111115 = entry.getKey();
                                            Object value1111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111116 = entry.getKey();
                                            Object value1111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111117 = entry.getKey();
                                            Object value1111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111118 = entry.getKey();
                                            Object value1111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111119 = entry.getKey();
                                            Object value1111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111110 = entry.getKey();
                                            Object value11111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111 = entry.getKey();
                                            Object value11111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111112 = entry.getKey();
                                            Object value11111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111113 = entry.getKey();
                                            Object value11111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111114 = entry.getKey();
                                            Object value11111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111115 = entry.getKey();
                                            Object value11111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111116 = entry.getKey();
                                            Object value11111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111117 = entry.getKey();
                                            Object value11111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue6 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue6 >> 31) ^ (iIntValue6 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111118 = entry.getKey();
                                            Object value11111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue6 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue6 << i34) ^ (jLongValue6 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111119 = entry.getKey();
                                            Object value11111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 6:
                                    ((Integer) key).getClass();
                                    iM2050e = 4;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111110 = entry.getKey();
                                            Object value111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111 = entry.getKey();
                                            Object value111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111112 = entry.getKey();
                                            Object value111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111113 = entry.getKey();
                                            Object value111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111114 = entry.getKey();
                                            Object value111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111115 = entry.getKey();
                                            Object value111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111116 = entry.getKey();
                                            Object value111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111117 = entry.getKey();
                                            Object value111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111118 = entry.getKey();
                                            Object value111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111119 = entry.getKey();
                                            Object value111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111110 = entry.getKey();
                                            Object value1111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111 = entry.getKey();
                                            Object value1111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111112 = entry.getKey();
                                            Object value1111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111113 = entry.getKey();
                                            Object value1111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111114 = entry.getKey();
                                            Object value1111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111115 = entry.getKey();
                                            Object value1111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue7 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue7 >> 31) ^ (iIntValue7 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111116 = entry.getKey();
                                            Object value1111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue7 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue7 << i34) ^ (jLongValue7 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111117 = entry.getKey();
                                            Object value1111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 7:
                                    ((Boolean) key).getClass();
                                    iM2050e = i34;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111118 = entry.getKey();
                                            Object value1111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111119 = entry.getKey();
                                            Object value1111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111110 = entry.getKey();
                                            Object value11111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111 = entry.getKey();
                                            Object value11111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111112 = entry.getKey();
                                            Object value11111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111113 = entry.getKey();
                                            Object value11111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111114 = entry.getKey();
                                            Object value11111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111115 = entry.getKey();
                                            Object value11111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111116 = entry.getKey();
                                            Object value11111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111117 = entry.getKey();
                                            Object value11111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111118 = entry.getKey();
                                            Object value11111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111119 = entry.getKey();
                                            Object value11111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111110 = entry.getKey();
                                            Object value111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111 = entry.getKey();
                                            Object value111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111112 = entry.getKey();
                                            Object value111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111113 = entry.getKey();
                                            Object value111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue8 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue8 >> 31) ^ (iIntValue8 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111114 = entry.getKey();
                                            Object value111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue8 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue8 << i34) ^ (jLongValue8 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111115 = entry.getKey();
                                            Object value111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 8:
                                    if (key instanceof C1148g) {
                                        size = ((C1148g) key).size();
                                        iM2049d = AbstractC1169n.m2049d(size);
                                        iM2050e = size + iM2049d;
                                    } else {
                                        iM2050e = AbstractC1169n.m2047b((String) key);
                                    }
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111116 = entry.getKey();
                                            Object value111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111117 = entry.getKey();
                                            Object value111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111118 = entry.getKey();
                                            Object value111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111119 = entry.getKey();
                                            Object value111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111110 = entry.getKey();
                                            Object value1111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111 = entry.getKey();
                                            Object value1111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111112 = entry.getKey();
                                            Object value1111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111113 = entry.getKey();
                                            Object value1111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111114 = entry.getKey();
                                            Object value1111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111115 = entry.getKey();
                                            Object value1111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111116 = entry.getKey();
                                            Object value1111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111117 = entry.getKey();
                                            Object value1111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111118 = entry.getKey();
                                            Object value1111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111119 = entry.getKey();
                                            Object value1111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111110 = entry.getKey();
                                            Object value11111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111 = entry.getKey();
                                            Object value11111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue9 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue9 >> 31) ^ (iIntValue9 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111112 = entry.getKey();
                                            Object value11111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue9 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue9 << i34) ^ (jLongValue9 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111113 = entry.getKey();
                                            Object value11111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 9:
                                    iMo1893a = ((AbstractC1202y) ((AbstractC1128a) key)).mo1893a(null);
                                    iM2050e = iMo1893a;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111114 = entry.getKey();
                                            Object value11111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111115 = entry.getKey();
                                            Object value11111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111116 = entry.getKey();
                                            Object value11111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111117 = entry.getKey();
                                            Object value11111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111118 = entry.getKey();
                                            Object value11111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111119 = entry.getKey();
                                            Object value11111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111110 = entry.getKey();
                                            Object value111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111 = entry.getKey();
                                            Object value111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111112 = entry.getKey();
                                            Object value111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111113 = entry.getKey();
                                            Object value111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111114 = entry.getKey();
                                            Object value111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111115 = entry.getKey();
                                            Object value111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111116 = entry.getKey();
                                            Object value111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111117 = entry.getKey();
                                            Object value111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111118 = entry.getKey();
                                            Object value111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111119 = entry.getKey();
                                            Object value111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue10 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue10 >> 31) ^ (iIntValue10 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111110 = entry.getKey();
                                            Object value1111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue10 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue10 << i34) ^ (jLongValue10 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111 = entry.getKey();
                                            Object value1111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 10:
                                    int iMo1893a2 = ((AbstractC1202y) ((AbstractC1128a) key)).mo1893a(null);
                                    iMo1893a = AbstractC1169n.m2049d(iMo1893a2) + iMo1893a2;
                                    iM2050e = iMo1893a;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111112 = entry.getKey();
                                            Object value1111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111113 = entry.getKey();
                                            Object value1111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111114 = entry.getKey();
                                            Object value1111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111115 = entry.getKey();
                                            Object value1111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111116 = entry.getKey();
                                            Object value1111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111117 = entry.getKey();
                                            Object value1111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111118 = entry.getKey();
                                            Object value1111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111119 = entry.getKey();
                                            Object value1111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111110 = entry.getKey();
                                            Object value11111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111 = entry.getKey();
                                            Object value11111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111112 = entry.getKey();
                                            Object value11111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111113 = entry.getKey();
                                            Object value11111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111114 = entry.getKey();
                                            Object value11111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111115 = entry.getKey();
                                            Object value11111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111116 = entry.getKey();
                                            Object value11111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111117 = entry.getKey();
                                            Object value11111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue11 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue11 >> 31) ^ (iIntValue11 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111118 = entry.getKey();
                                            Object value11111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue11 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue11 << i34) ^ (jLongValue11 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111119 = entry.getKey();
                                            Object value11111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 11:
                                    if (key instanceof C1148g) {
                                        size = ((C1148g) key).size();
                                        iM2049d = AbstractC1169n.m2049d(size);
                                    } else {
                                        size = ((byte[]) key).length;
                                        iM2049d = AbstractC1169n.m2049d(size);
                                    }
                                    iM2050e = size + iM2049d;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111110 = entry.getKey();
                                            Object value111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111 = entry.getKey();
                                            Object value111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111112 = entry.getKey();
                                            Object value111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111113 = entry.getKey();
                                            Object value111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111114 = entry.getKey();
                                            Object value111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111115 = entry.getKey();
                                            Object value111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111116 = entry.getKey();
                                            Object value111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111117 = entry.getKey();
                                            Object value111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111118 = entry.getKey();
                                            Object value111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111119 = entry.getKey();
                                            Object value111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111110 = entry.getKey();
                                            Object value1111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111 = entry.getKey();
                                            Object value1111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111112 = entry.getKey();
                                            Object value1111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111113 = entry.getKey();
                                            Object value1111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111114 = entry.getKey();
                                            Object value1111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111115 = entry.getKey();
                                            Object value1111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue12 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue12 >> 31) ^ (iIntValue12 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111116 = entry.getKey();
                                            Object value1111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue12 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue12 << i34) ^ (jLongValue12 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111117 = entry.getKey();
                                            Object value1111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 12:
                                    iM2050e = AbstractC1169n.m2049d(((Integer) key).intValue());
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111118 = entry.getKey();
                                            Object value1111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111119 = entry.getKey();
                                            Object value1111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111110 = entry.getKey();
                                            Object value11111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111 = entry.getKey();
                                            Object value11111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111112 = entry.getKey();
                                            Object value11111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111113 = entry.getKey();
                                            Object value11111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111114 = entry.getKey();
                                            Object value11111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111115 = entry.getKey();
                                            Object value11111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111116 = entry.getKey();
                                            Object value11111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111117 = entry.getKey();
                                            Object value11111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111118 = entry.getKey();
                                            Object value11111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111119 = entry.getKey();
                                            Object value11111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111110 = entry.getKey();
                                            Object value111111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111 = entry.getKey();
                                            Object value111111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111112 = entry.getKey();
                                            Object value111111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111113 = entry.getKey();
                                            Object value111111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue13 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue13 >> 31) ^ (iIntValue13 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111114 = entry.getKey();
                                            Object value111111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue13 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue13 << i34) ^ (jLongValue13 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111115 = entry.getKey();
                                            Object value111111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 13:
                                    iM2050e = key instanceof InterfaceC1205z ? AbstractC1169n.m2046a(((InterfaceC1205z) key).mo2180a()) : AbstractC1169n.m2046a(((Integer) key).intValue());
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111116 = entry.getKey();
                                            Object value111111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111117 = entry.getKey();
                                            Object value111111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111118 = entry.getKey();
                                            Object value111111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111119 = entry.getKey();
                                            Object value111111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111110 = entry.getKey();
                                            Object value1111111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111 = entry.getKey();
                                            Object value1111111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111112 = entry.getKey();
                                            Object value1111111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111113 = entry.getKey();
                                            Object value1111111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111114 = entry.getKey();
                                            Object value1111111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111115 = entry.getKey();
                                            Object value1111111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111116 = entry.getKey();
                                            Object value1111111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111117 = entry.getKey();
                                            Object value1111111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111118 = entry.getKey();
                                            Object value1111111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111119 = entry.getKey();
                                            Object value1111111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111110 = entry.getKey();
                                            Object value11111111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111 = entry.getKey();
                                            Object value11111111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue14 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue14 >> 31) ^ (iIntValue14 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111112 = entry.getKey();
                                            Object value11111111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue14 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue14 << i34) ^ (jLongValue14 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111113 = entry.getKey();
                                            Object value11111111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 14:
                                    ((Integer) key).getClass();
                                    iM2050e = 4;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111114 = entry.getKey();
                                            Object value11111111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111115 = entry.getKey();
                                            Object value11111111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111116 = entry.getKey();
                                            Object value11111111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111117 = entry.getKey();
                                            Object value11111111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111118 = entry.getKey();
                                            Object value11111111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111119 = entry.getKey();
                                            Object value11111111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111110 = entry.getKey();
                                            Object value111111111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111 = entry.getKey();
                                            Object value111111111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111112 = entry.getKey();
                                            Object value111111111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111113 = entry.getKey();
                                            Object value111111111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111114 = entry.getKey();
                                            Object value111111111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111115 = entry.getKey();
                                            Object value111111111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111116 = entry.getKey();
                                            Object value111111111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111117 = entry.getKey();
                                            Object value111111111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111118 = entry.getKey();
                                            Object value111111111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111119 = entry.getKey();
                                            Object value111111111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue15 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue15 >> 31) ^ (iIntValue15 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111110 = entry.getKey();
                                            Object value1111111111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue15 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue15 << i34) ^ (jLongValue15 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111 = entry.getKey();
                                            Object value1111111111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 15:
                                    ((Long) key).getClass();
                                    iM2050e = 8;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111112 = entry.getKey();
                                            Object value1111111111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111113 = entry.getKey();
                                            Object value1111111111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111114 = entry.getKey();
                                            Object value1111111111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111115 = entry.getKey();
                                            Object value1111111111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111116 = entry.getKey();
                                            Object value1111111111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111117 = entry.getKey();
                                            Object value1111111111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111118 = entry.getKey();
                                            Object value1111111111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111119 = entry.getKey();
                                            Object value1111111111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111110 = entry.getKey();
                                            Object value11111111111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111 = entry.getKey();
                                            Object value11111111111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111112 = entry.getKey();
                                            Object value11111111111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111113 = entry.getKey();
                                            Object value11111111111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111114 = entry.getKey();
                                            Object value11111111111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111115 = entry.getKey();
                                            Object value11111111111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111116 = entry.getKey();
                                            Object value11111111111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111117 = entry.getKey();
                                            Object value11111111111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue16 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue16 >> 31) ^ (iIntValue16 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111118 = entry.getKey();
                                            Object value11111111111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue16 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue16 << i34) ^ (jLongValue16 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111119 = entry.getKey();
                                            Object value11111111111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 16:
                                    int iIntValue17 = ((Integer) key).intValue();
                                    iMo1893a = AbstractC1169n.m2049d((iIntValue17 << 1) ^ (iIntValue17 >> 31));
                                    iM2050e = iMo1893a;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111110 = entry.getKey();
                                            Object value111111111111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111111 = entry.getKey();
                                            Object value111111111111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111112 = entry.getKey();
                                            Object value111111111111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111113 = entry.getKey();
                                            Object value111111111111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111114 = entry.getKey();
                                            Object value111111111111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111115 = entry.getKey();
                                            Object value111111111111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111116 = entry.getKey();
                                            Object value111111111111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111117 = entry.getKey();
                                            Object value111111111111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111118 = entry.getKey();
                                            Object value111111111111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111119 = entry.getKey();
                                            Object value111111111111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111110 = entry.getKey();
                                            Object value1111111111111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111111 = entry.getKey();
                                            Object value1111111111111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111112 = entry.getKey();
                                            Object value1111111111111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111113 = entry.getKey();
                                            Object value1111111111111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111114 = entry.getKey();
                                            Object value1111111111111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111115 = entry.getKey();
                                            Object value1111111111111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue18 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue18 >> 31) ^ (iIntValue18 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111116 = entry.getKey();
                                            Object value1111111111111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue17 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue17 << i34) ^ (jLongValue17 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111117 = entry.getKey();
                                            Object value1111111111111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                case 17:
                                    long jLongValue18 = ((Long) key).longValue();
                                    iMo1893a = AbstractC1169n.m2050e((jLongValue18 << i34) ^ (jLongValue18 >> 63));
                                    iM2050e = iMo1893a;
                                    i13 = iM2050e + iM2048c2;
                                    iM2048c = AbstractC1169n.m2048c(i33);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111118 = entry.getKey();
                                            Object value1111111111111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key1111111111111111111111111111119 = entry.getKey();
                                            Object value1111111111111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key1111111111111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value1111111111111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 2:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111110 = entry.getKey();
                                            Object value11111111111111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 3:
                                            iM2050e2 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111111 = entry.getKey();
                                            Object value11111111111111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 4:
                                            iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111112 = entry.getKey();
                                            Object value11111111111111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111113 = entry.getKey();
                                            Object value11111111111111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111114 = entry.getKey();
                                            Object value11111111111111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e2 = i34;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111115 = entry.getKey();
                                            Object value11111111111111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                                iM2050e2 = size2 + iM2049d2;
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2047b((String) value);
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111116 = entry.getKey();
                                            Object value11111111111111111111111111111116 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111116);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111116);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 9:
                                            iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111117 = entry.getKey();
                                            Object value11111111111111111111111111111117 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111117);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111117);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 10:
                                            size2 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size2);
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111118 = entry.getKey();
                                            Object value11111111111111111111111111111118 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111118);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111118);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size2 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            } else {
                                                size2 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size2);
                                            }
                                            iM2050e2 = size2 + iM2049d2;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key11111111111111111111111111111119 = entry.getKey();
                                            Object value11111111111111111111111111111119 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key11111111111111111111111111111119);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value11111111111111111111111111111119);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 12:
                                            iM2050e2 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111111110 = entry.getKey();
                                            Object value111111111111111111111111111111110 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111111110);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111111110);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e2 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e2 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111111111 = entry.getKey();
                                            Object value111111111111111111111111111111111 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111111111);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111111111);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e2 = 4;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111111112 = entry.getKey();
                                            Object value111111111111111111111111111111112 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111111112);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111111112);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e2 = 8;
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111111113 = entry.getKey();
                                            Object value111111111111111111111111111111113 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111111113);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111111113);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 16:
                                            int iIntValue19 = ((Integer) value).intValue();
                                            iM2050e2 = AbstractC1169n.m2049d((iIntValue19 >> 31) ^ (iIntValue19 << 1));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111111114 = entry.getKey();
                                            Object value111111111111111111111111111111114 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111111114);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111111114);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        case 17:
                                            long jLongValue19 = ((Long) value).longValue();
                                            iM2050e2 = AbstractC1169n.m2050e((jLongValue19 << i34) ^ (jLongValue19 >> 63));
                                            abstractC1169n4.mo2031y(iM2050e2 + iM2048c + i13);
                                            Object key111111111111111111111111111111115 = entry.getKey();
                                            Object value111111111111111111111111111111115 = entry.getValue();
                                            C1187t.m2122b(abstractC1169n4, enumC1131a3, i34, key111111111111111111111111111111115);
                                            C1187t.m2122b(abstractC1169n4, enumC1131a2, i33, value111111111111111111111111111111115);
                                            i32 = i33;
                                            i15 = i36;
                                            i17 = i37;
                                            i19 = 1;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            break;
                                    }
                                    break;
                                default:
                                    C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                    break;
                            }
                        }
                    }
                    i11 = i15;
                    i12 = i17;
                    i15 = i11;
                    i17 = i12;
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        double dDoubleValue = ((Double) AbstractC1186s1.f2751c.m2098i(obj, j10)).doubleValue();
                        AbstractC1169n abstractC1169n5 = (AbstractC1169n) c1164l0.f2720a;
                        abstractC1169n5.getClass();
                        abstractC1169n5.mo2020n(i18, Double.doubleToRawLongBits(dDoubleValue));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        float fFloatValue = ((Float) AbstractC1186s1.f2751c.m2098i(obj, j10)).floatValue();
                        AbstractC1169n abstractC1169n6 = (AbstractC1169n) c1164l0.f2720a;
                        abstractC1169n6.getClass();
                        abstractC1169n6.mo2018l(i18, Float.floatToRawIntBits(fFloatValue));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2032z(i18, m2124A(obj, j10));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2032z(i18, m2124A(obj, j10));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2022p(i18, m2131z(obj, j10));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 56:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2020n(i18, m2124A(obj, j10));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 57:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2018l(i18, m2131z(obj, j10));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 58:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2014h(i18, ((Boolean) AbstractC1186s1.f2751c.m2098i(obj, j10)).booleanValue());
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 59:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        Object object3 = unsafe.getObject(obj, j10);
                        if (object3 instanceof String) {
                            ((AbstractC1169n) c1164l0.f2720a).mo2027u(i18, (String) object3);
                        } else {
                            ((AbstractC1169n) c1164l0.f2720a).mo2016j(i18, (C1148g) object3);
                        }
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 60:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2025s(i18, (AbstractC1128a) unsafe.getObject(obj, j10), c1188t0.m2145m(i16));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 61:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2016j(i18, (C1148g) unsafe.getObject(obj, j10));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 62:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2030x(i18, m2131z(obj, j10));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 63:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2022p(i18, m2131z(obj, j10));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 64:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2018l(i18, m2131z(obj, j10));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        ((AbstractC1169n) c1164l0.f2720a).mo2020n(i18, m2124A(obj, j10));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        int iM2131z = m2131z(obj, j10);
                        ((AbstractC1169n) c1164l0.f2720a).mo2030x(i18, (iM2131z >> 31) ^ (iM2131z << 1));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        long jM2124A = m2124A(obj, j10);
                        ((AbstractC1169n) c1164l0.f2720a).mo2032z(i18, (jM2124A << 1) ^ (jM2124A >> 63));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                case 68:
                    if (c1188t0.m2148q(obj, i18, i16)) {
                        c1164l0.m2037a(i18, unsafe.getObject(obj, j10), c1188t0.m2145m(i16));
                    }
                    i16 += 3;
                    i14 = 1048575;
                    break;
                default:
                    i16 += 3;
                    i14 = 1048575;
                    break;
            }
            return;
        }
        c1188t0.f2772l.getClass();
        ((AbstractC1202y) obj).unknownFields.m2009d(c1164l0);
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: a */
    public final void mo1901a(Object obj, C1164l0 c1164l0) {
        c1164l0.getClass();
        m2141M(obj, c1164l0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: b */
    public final void mo1902b(Object obj, Object obj2) {
        Object obj3;
        if (!m2127p(obj)) {
            C0674b.m853t(obj, "Mutating immutable message: ");
            return;
        }
        obj2.getClass();
        int i10 = 0;
        while (true) {
            int[] iArr = this.f2761a;
            if (i10 >= iArr.length) {
                AbstractC1138c1.m1920j(this.f2772l, obj, obj2);
                return;
            }
            int iM2140L = m2140L(i10);
            long j10 = 1048575 & iM2140L;
            int i11 = iArr[i10];
            switch (m2126K(iM2140L)) {
                case 0:
                    if (!m2146n(i10, obj2)) {
                        obj3 = obj;
                    } else {
                        AbstractC1183r1 abstractC1183r1 = AbstractC1186s1.f2751c;
                        obj3 = obj;
                        abstractC1183r1.mo2064m(obj3, j10, abstractC1183r1.mo2060e(obj2, j10));
                        m2136G(i10, obj3);
                    }
                    break;
                case 1:
                    if (m2146n(i10, obj2)) {
                        AbstractC1183r1 abstractC1183r2 = AbstractC1186s1.f2751c;
                        abstractC1183r2.mo2065n(obj, j10, abstractC1183r2.mo2061f(obj2, j10));
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2120o(obj, j10, AbstractC1186s1.f2751c.m2097h(obj2, j10));
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2120o(obj, j10, AbstractC1186s1.f2751c.m2097h(obj2, j10));
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2119n(AbstractC1186s1.f2751c.m2096g(obj2, j10), j10, obj);
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2120o(obj, j10, AbstractC1186s1.f2751c.m2097h(obj2, j10));
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2119n(AbstractC1186s1.f2751c.m2096g(obj2, j10), j10, obj);
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (m2146n(i10, obj2)) {
                        AbstractC1183r1 abstractC1183r3 = AbstractC1186s1.f2751c;
                        abstractC1183r3.mo2062k(obj, j10, abstractC1183r3.mo2058c(obj2, j10));
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2121p(j10, obj, AbstractC1186s1.f2751c.m2098i(obj2, j10));
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 9:
                    m2150s(i10, obj, obj2);
                    obj3 = obj;
                    break;
                case 10:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2121p(j10, obj, AbstractC1186s1.f2751c.m2098i(obj2, j10));
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 11:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2119n(AbstractC1186s1.f2751c.m2096g(obj2, j10), j10, obj);
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2119n(AbstractC1186s1.f2751c.m2096g(obj2, j10), j10, obj);
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2119n(AbstractC1186s1.f2751c.m2096g(obj2, j10), j10, obj);
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2120o(obj, j10, AbstractC1186s1.f2751c.m2097h(obj2, j10));
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2119n(AbstractC1186s1.f2751c.m2096g(obj2, j10), j10, obj);
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 16:
                    if (m2146n(i10, obj2)) {
                        AbstractC1186s1.m2120o(obj, j10, AbstractC1186s1.f2751c.m2097h(obj2, j10));
                        m2136G(i10, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    m2150s(i10, obj, obj2);
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
                case 29:
                case 30:
                case 31:
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
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    this.f2771k.mo1990b(j10, obj, obj2);
                    obj3 = obj;
                    break;
                case 50:
                    Class cls = AbstractC1138c1.f2648a;
                    AbstractC1183r1 abstractC1183r4 = AbstractC1186s1.f2751c;
                    Object objM2098i = abstractC1183r4.m2098i(obj, j10);
                    Object objM2098i2 = abstractC1183r4.m2098i(obj2, j10);
                    this.f2773m.getClass();
                    AbstractC1186s1.m2121p(j10, obj, C1176p0.m2057a(objM2098i, objM2098i2));
                    obj3 = obj;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (m2148q(obj2, i11, i10)) {
                        AbstractC1186s1.m2121p(j10, obj, AbstractC1186s1.f2751c.m2098i(obj2, j10));
                        m2137H(obj, i11, i10);
                    }
                    obj3 = obj;
                    break;
                case 60:
                    m2151t(i10, obj, obj2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    if (m2148q(obj2, i11, i10)) {
                        AbstractC1186s1.m2121p(j10, obj, AbstractC1186s1.f2751c.m2098i(obj2, j10));
                        m2137H(obj, i11, i10);
                    }
                    obj3 = obj;
                    break;
                case 68:
                    m2151t(i10, obj, obj2);
                    obj3 = obj;
                    break;
                default:
                    obj3 = obj;
                    break;
            }
            i10 += 3;
            obj = obj3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0070  */
    /* JADX WARN: Code duplicated, block: B:27:0x0076  */
    /* JADX WARN: Code duplicated, block: B:40:0x0083 A[SYNTHETIC] */
    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: c */
    public final void mo1903c(Object obj) {
        if (m2127p(obj)) {
            if (obj instanceof AbstractC1202y) {
                AbstractC1202y abstractC1202y = (AbstractC1202y) obj;
                abstractC1202y.m2178m(Integer.MAX_VALUE);
                abstractC1202y.memoizedHashCode = 0;
                abstractC1202y.m2176j();
            }
            int[] iArr = this.f2761a;
            int length = iArr.length;
            for (int i10 = 0; i10 < length; i10 += 3) {
                int iM2140L = m2140L(i10);
                long j10 = 1048575 & iM2140L;
                int iM2126K = m2126K(iM2140L);
                if (iM2126K != 9) {
                    if (iM2126K != 60 && iM2126K != 68) {
                        switch (iM2126K) {
                            case 17:
                                if (m2146n(i10, obj)) {
                                    m2145m(i10).mo1903c(f2760o.getObject(obj, j10));
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
                            case 29:
                            case 30:
                            case 31:
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
                            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                            case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                                this.f2771k.mo1989a(obj, j10);
                                break;
                            case 50:
                                Unsafe unsafe = f2760o;
                                Object object = unsafe.getObject(obj, j10);
                                if (object != null) {
                                    this.f2773m.getClass();
                                    ((C1173o0) object).f2738b = false;
                                    unsafe.putObject(obj, j10, object);
                                }
                                break;
                        }
                    } else if (m2148q(obj, iArr[i10], i10)) {
                        m2145m(i10).mo1903c(f2760o.getObject(obj, j10));
                    }
                } else if (m2146n(i10, obj)) {
                    m2145m(i10).mo1903c(f2760o.getObject(obj, j10));
                }
            }
            this.f2772l.getClass();
            C1159j1 c1159j1 = ((AbstractC1202y) obj).unknownFields;
            if (c1159j1.f2714e) {
                c1159j1.f2714e = false;
            }
        }
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: d */
    public final boolean mo1904d(Object obj) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.f2768h) {
            int i15 = this.f2767g[i14];
            int[] iArr = this.f2761a;
            int i16 = iArr[i15];
            int iM2140L = m2140L(i15);
            int i17 = iArr[i15 + 2];
            int i18 = i17 & 1048575;
            int i19 = 1 << (i17 >>> 20);
            if (i18 != i12) {
                if (i18 != 1048575) {
                    i13 = f2760o.getInt(obj, i18);
                }
                i11 = i13;
                i10 = i18;
            } else {
                int i20 = i13;
                i10 = i12;
                i11 = i20;
            }
            if ((268435456 & iM2140L) == 0 || m2147o(obj, i15, i10, i11, i19)) {
                int iM2126K = m2126K(iM2140L);
                if (iM2126K == 9 || iM2126K == 17) {
                    if (m2147o(obj, i15, i10, i11, i19)) {
                        if (!m2145m(i15).mo1904d(AbstractC1186s1.f2751c.m2098i(obj, iM2140L & 1048575))) {
                        }
                    } else {
                        continue;
                    }
                    i14++;
                    i12 = i10;
                    i13 = i11;
                } else {
                    if (iM2126K != 27) {
                        if (iM2126K == 60 || iM2126K == 68) {
                            if (m2148q(obj, i16, i15)) {
                                if (!m2145m(i15).mo1904d(AbstractC1186s1.f2751c.m2098i(obj, iM2140L & 1048575))) {
                                }
                            } else {
                                continue;
                            }
                            i14++;
                            i12 = i10;
                            i13 = i11;
                        } else if (iM2126K != 49) {
                            if (iM2126K != 50) {
                                continue;
                            } else {
                                Object objM2098i = AbstractC1186s1.f2751c.m2098i(obj, iM2140L & 1048575);
                                this.f2773m.getClass();
                                C1173o0 c1173o0 = (C1173o0) objM2098i;
                                if (c1173o0.isEmpty()) {
                                    continue;
                                } else {
                                    if (((C1170n0) this.f2762b[(i15 / 3) * 2]).f2733a.f2727b.f2631b != EnumC1135b2.f2644j) {
                                        continue;
                                    } else {
                                        InterfaceC1134b1 interfaceC1134b1M2179a = null;
                                        for (Object obj2 : c1173o0.values()) {
                                            if (interfaceC1134b1M2179a == null) {
                                                interfaceC1134b1M2179a = C1203y0.f2795c.m2179a(obj2.getClass());
                                            }
                                            if (!interfaceC1134b1M2179a.mo1904d(obj2)) {
                                            }
                                        }
                                    }
                                }
                            }
                            i14++;
                            i12 = i10;
                            i13 = i11;
                        }
                    }
                    List list = (List) AbstractC1186s1.f2751c.m2098i(obj, iM2140L & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        InterfaceC1134b1 interfaceC1134b1M2145m = m2145m(i15);
                        for (int i21 = 0; i21 < list.size(); i21++) {
                            if (interfaceC1134b1M2145m.mo1904d(list.get(i21))) {
                            }
                        }
                    }
                    i14++;
                    i12 = i10;
                    i13 = i11;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00e1 A[PHI: r3
  0x00e1: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:83:0x0216, B:41:0x00df] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: e */
    public final int mo1905e(AbstractC1202y abstractC1202y) {
        int i10;
        int iM1900b;
        int i11;
        int[] iArr = this.f2761a;
        int length = iArr.length;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13 += 3) {
            int iM2140L = m2140L(i13);
            int i14 = iArr[i13];
            long j10 = 1048575 & iM2140L;
            int i15 = 1237;
            int iHashCode = 37;
            switch (m2126K(iM2140L)) {
                case 0:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1133b0.m1900b(Double.doubleToLongBits(AbstractC1186s1.f2751c.mo2060e(abstractC1202y, j10)));
                    i12 = iM1900b + i10;
                    break;
                case 1:
                    i10 = i12 * 53;
                    iM1900b = Float.floatToIntBits(AbstractC1186s1.f2751c.mo2061f(abstractC1202y, j10));
                    i12 = iM1900b + i10;
                    break;
                case 2:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1133b0.m1900b(AbstractC1186s1.f2751c.m2097h(abstractC1202y, j10));
                    i12 = iM1900b + i10;
                    break;
                case 3:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1133b0.m1900b(AbstractC1186s1.f2751c.m2097h(abstractC1202y, j10));
                    i12 = iM1900b + i10;
                    break;
                case 4:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1186s1.f2751c.m2096g(abstractC1202y, j10);
                    i12 = iM1900b + i10;
                    break;
                case 5:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1133b0.m1900b(AbstractC1186s1.f2751c.m2097h(abstractC1202y, j10));
                    i12 = iM1900b + i10;
                    break;
                case 6:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1186s1.f2751c.m2096g(abstractC1202y, j10);
                    i12 = iM1900b + i10;
                    break;
                case 7:
                    i11 = i12 * 53;
                    boolean zMo2058c = AbstractC1186s1.f2751c.mo2058c(abstractC1202y, j10);
                    Charset charset = AbstractC1133b0.f2634a;
                    if (zMo2058c) {
                        i15 = 1231;
                    }
                    i12 = i15 + i11;
                    break;
                case 8:
                    i10 = i12 * 53;
                    iM1900b = ((String) AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10)).hashCode();
                    i12 = iM1900b + i10;
                    break;
                case 9:
                    Object objM2098i = AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10);
                    if (objM2098i != null) {
                        iHashCode = objM2098i.hashCode();
                    }
                    i12 = (i12 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10).hashCode();
                    i12 = iM1900b + i10;
                    break;
                case 11:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1186s1.f2751c.m2096g(abstractC1202y, j10);
                    i12 = iM1900b + i10;
                    break;
                case 12:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1186s1.f2751c.m2096g(abstractC1202y, j10);
                    i12 = iM1900b + i10;
                    break;
                case 13:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1186s1.f2751c.m2096g(abstractC1202y, j10);
                    i12 = iM1900b + i10;
                    break;
                case 14:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1133b0.m1900b(AbstractC1186s1.f2751c.m2097h(abstractC1202y, j10));
                    i12 = iM1900b + i10;
                    break;
                case 15:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1186s1.f2751c.m2096g(abstractC1202y, j10);
                    i12 = iM1900b + i10;
                    break;
                case 16:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1133b0.m1900b(AbstractC1186s1.f2751c.m2097h(abstractC1202y, j10));
                    i12 = iM1900b + i10;
                    break;
                case 17:
                    Object objM2098i2 = AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10);
                    if (objM2098i2 != null) {
                        iHashCode = objM2098i2.hashCode();
                    }
                    i12 = (i12 * 53) + iHashCode;
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
                case 29:
                case 30:
                case 31:
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
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10).hashCode();
                    i12 = iM1900b + i10;
                    break;
                case 50:
                    i10 = i12 * 53;
                    iM1900b = AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10).hashCode();
                    i12 = iM1900b + i10;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = AbstractC1133b0.m1900b(Double.doubleToLongBits(((Double) AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10)).doubleValue()));
                        i12 = iM1900b + i10;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = Float.floatToIntBits(((Float) AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10)).floatValue());
                        i12 = iM1900b + i10;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = AbstractC1133b0.m1900b(m2124A(abstractC1202y, j10));
                        i12 = iM1900b + i10;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = AbstractC1133b0.m1900b(m2124A(abstractC1202y, j10));
                        i12 = iM1900b + i10;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = m2131z(abstractC1202y, j10);
                        i12 = iM1900b + i10;
                    }
                    break;
                case 56:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = AbstractC1133b0.m1900b(m2124A(abstractC1202y, j10));
                        i12 = iM1900b + i10;
                    }
                    break;
                case 57:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = m2131z(abstractC1202y, j10);
                        i12 = iM1900b + i10;
                    }
                    break;
                case 58:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i11 = i12 * 53;
                        boolean zBooleanValue = ((Boolean) AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10)).booleanValue();
                        Charset charset2 = AbstractC1133b0.f2634a;
                        if (zBooleanValue) {
                            i15 = 1231;
                        }
                        i12 = i15 + i11;
                    }
                    break;
                case 59:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = ((String) AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10)).hashCode();
                        i12 = iM1900b + i10;
                    }
                    break;
                case 60:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10).hashCode();
                        i12 = iM1900b + i10;
                    }
                    break;
                case 61:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10).hashCode();
                        i12 = iM1900b + i10;
                    }
                    break;
                case 62:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = m2131z(abstractC1202y, j10);
                        i12 = iM1900b + i10;
                    }
                    break;
                case 63:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = m2131z(abstractC1202y, j10);
                        i12 = iM1900b + i10;
                    }
                    break;
                case 64:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = m2131z(abstractC1202y, j10);
                        i12 = iM1900b + i10;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = AbstractC1133b0.m1900b(m2124A(abstractC1202y, j10));
                        i12 = iM1900b + i10;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = m2131z(abstractC1202y, j10);
                        i12 = iM1900b + i10;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = AbstractC1133b0.m1900b(m2124A(abstractC1202y, j10));
                        i12 = iM1900b + i10;
                    }
                    break;
                case 68:
                    if (m2148q(abstractC1202y, i14, i13)) {
                        i10 = i12 * 53;
                        iM1900b = AbstractC1186s1.f2751c.m2098i(abstractC1202y, j10).hashCode();
                        i12 = iM1900b + i10;
                    }
                    break;
            }
        }
        this.f2772l.getClass();
        return abstractC1202y.unknownFields.hashCode() + (i12 * 53);
    }

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
    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: f */
    public final int mo1906f(AbstractC1202y abstractC1202y) {
        int i10;
        int iM2048c;
        int iM2048c2;
        int iM2048c3;
        int iM2050e;
        int iM2048c4;
        int iM2046a;
        int iM2048c5;
        int iM2048c6;
        int iM2047b;
        int iM1913c;
        int i11;
        int i12;
        int i13;
        int iM2048c7;
        int size;
        int iM1919i;
        int iM2048c8;
        int iM2048c9;
        int iMo1893a;
        int iM2067a;
        int iM2050e2;
        int size2;
        int iM2049d;
        int i14;
        EnumC1131a2 enumC1131a2;
        int iM2048c10;
        int iM2050e3;
        int size3;
        int iM2049d2;
        int iM2048c11;
        int iM2048c12;
        int iM2048c13;
        int iM2050e4;
        int iM2048c14;
        int iM2046a2;
        int iM2048c15;
        int iM2047b2;
        C1188t0 c1188t0 = this;
        AbstractC1202y abstractC1202y2 = abstractC1202y;
        Unsafe unsafe = f2760o;
        int i15 = 1048575;
        int i16 = 1048575;
        int i17 = 0;
        int i18 = 0;
        int iM2067a2 = 0;
        while (true) {
            int[] iArr = c1188t0.f2761a;
            if (i17 >= iArr.length) {
                c1188t0.f2772l.getClass();
                return abstractC1202y2.unknownFields.m2007b() + iM2067a2;
            }
            int iM2140L = c1188t0.m2140L(i17);
            int iM2126K = m2126K(iM2140L);
            int i19 = iArr[i17];
            int i20 = iArr[i17 + 2];
            int i21 = i20 & i15;
            int i22 = 1;
            if (iM2126K <= 17) {
                if (i21 != i16) {
                    i18 = i21 == i15 ? 0 : unsafe.getInt(abstractC1202y2, i21);
                    i16 = i21;
                }
                i10 = 1 << (i20 >>> 20);
            } else {
                i10 = 0;
            }
            long j10 = iM2140L & i15;
            if (iM2126K >= EnumC1190u.f2777c.f2782b) {
                int i23 = EnumC1190u.f2778d.f2782b;
            }
            char c = '?';
            switch (iM2126K) {
                case 0:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        iM2048c = AbstractC1169n.m2048c(i19) + 8;
                        iM2067a2 += iM2048c;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 1:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        iM2048c2 = AbstractC1169n.m2048c(i19);
                        iM2048c6 = iM2048c2 + 4;
                        iM2067a2 += iM2048c6;
                    }
                    c1188t0 = this;
                    abstractC1202y2 = abstractC1202y;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 2:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        long j11 = unsafe.getLong(abstractC1202y2, j10);
                        iM2048c3 = AbstractC1169n.m2048c(i19);
                        iM2050e = AbstractC1169n.m2050e(j11);
                        iM2067a2 += iM2050e + iM2048c3;
                    }
                    c1188t0 = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 3:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        long j12 = unsafe.getLong(abstractC1202y2, j10);
                        iM2048c3 = AbstractC1169n.m2048c(i19);
                        iM2050e = AbstractC1169n.m2050e(j12);
                        iM2067a2 += iM2050e + iM2048c3;
                    }
                    c1188t0 = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 4:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        int i24 = unsafe.getInt(abstractC1202y2, j10);
                        iM2048c4 = AbstractC1169n.m2048c(i19);
                        iM2046a = AbstractC1169n.m2046a(i24);
                        iM2067a2 += iM2046a + iM2048c4;
                    }
                    c1188t0 = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 5:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        iM2048c5 = AbstractC1169n.m2048c(i19);
                        iM2048c6 = iM2048c5 + 8;
                        iM2067a2 += iM2048c6;
                    }
                    c1188t0 = this;
                    abstractC1202y2 = abstractC1202y;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 6:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        iM2048c2 = AbstractC1169n.m2048c(i19);
                        iM2048c6 = iM2048c2 + 4;
                        iM2067a2 += iM2048c6;
                    }
                    c1188t0 = this;
                    abstractC1202y2 = abstractC1202y;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 7:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        iM2048c6 = AbstractC1169n.m2048c(i19) + 1;
                        iM2067a2 += iM2048c6;
                    }
                    c1188t0 = this;
                    abstractC1202y2 = abstractC1202y;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 8:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        Object object = unsafe.getObject(abstractC1202y2, j10);
                        if (object instanceof C1148g) {
                            int iM2048c16 = AbstractC1169n.m2048c(i19);
                            int size4 = ((C1148g) object).size();
                            iM2047b = AbstractC1178q.m2067a(size4, size4, iM2048c16, iM2067a2);
                        } else {
                            iM2047b = AbstractC1169n.m2047b((String) object) + AbstractC1169n.m2048c(i19) + iM2067a2;
                        }
                        iM2067a2 = iM2047b;
                    }
                    c1188t0 = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 9:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        Object object2 = unsafe.getObject(abstractC1202y2, j10);
                        InterfaceC1134b1 interfaceC1134b1M2145m = c1188t0.m2145m(i17);
                        Class cls = AbstractC1138c1.f2648a;
                        int iM2048c17 = AbstractC1169n.m2048c(i19);
                        int iMo1893a2 = ((AbstractC1128a) object2).mo1893a(interfaceC1134b1M2145m);
                        iM2067a2 = AbstractC1178q.m2067a(iMo1893a2, iMo1893a2, iM2048c17, iM2067a2);
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 10:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        C1148g c1148g = (C1148g) unsafe.getObject(abstractC1202y2, j10);
                        int iM2048c18 = AbstractC1169n.m2048c(i19);
                        int size5 = c1148g.size();
                        iM2067a2 = AbstractC1178q.m2067a(size5, size5, iM2048c18, iM2067a2);
                    }
                    c1188t0 = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 11:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        int i25 = unsafe.getInt(abstractC1202y2, j10);
                        iM2048c4 = AbstractC1169n.m2048c(i19);
                        iM2046a = AbstractC1169n.m2049d(i25);
                        iM2067a2 += iM2046a + iM2048c4;
                    }
                    c1188t0 = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 12:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        int i26 = unsafe.getInt(abstractC1202y2, j10);
                        iM2048c4 = AbstractC1169n.m2048c(i19);
                        iM2046a = AbstractC1169n.m2046a(i26);
                        iM2067a2 += iM2046a + iM2048c4;
                    }
                    c1188t0 = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 13:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        iM2048c2 = AbstractC1169n.m2048c(i19);
                        iM2048c6 = iM2048c2 + 4;
                        iM2067a2 += iM2048c6;
                    }
                    c1188t0 = this;
                    abstractC1202y2 = abstractC1202y;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 14:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        iM2048c5 = AbstractC1169n.m2048c(i19);
                        iM2048c6 = iM2048c5 + 8;
                        iM2067a2 += iM2048c6;
                    }
                    c1188t0 = this;
                    abstractC1202y2 = abstractC1202y;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 15:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        int i27 = unsafe.getInt(abstractC1202y2, j10);
                        iM2048c4 = AbstractC1169n.m2048c(i19);
                        iM2046a = AbstractC1169n.m2049d((i27 >> 31) ^ (i27 << 1));
                        iM2067a2 += iM2046a + iM2048c4;
                    }
                    c1188t0 = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 16:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        long j13 = unsafe.getLong(abstractC1202y2, j10);
                        iM2048c3 = AbstractC1169n.m2048c(i19);
                        iM2050e = AbstractC1169n.m2050e((j13 >> 63) ^ (j13 << 1));
                        iM2067a2 += iM2050e + iM2048c3;
                    }
                    c1188t0 = this;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 17:
                    if (c1188t0.m2147o(abstractC1202y2, i17, i16, i18, i10)) {
                        iM2048c = ((AbstractC1128a) unsafe.getObject(abstractC1202y2, j10)).mo1893a(c1188t0.m2145m(i17)) + (AbstractC1169n.m2048c(i19) * 2);
                        iM2067a2 += iM2048c;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 18:
                    iM1913c = AbstractC1138c1.m1913c(i19, (List) unsafe.getObject(abstractC1202y2, j10));
                    iM2067a2 += iM1913c;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 19:
                    iM1913c = AbstractC1138c1.m1912b(i19, (List) unsafe.getObject(abstractC1202y2, j10));
                    iM2067a2 += iM1913c;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 20:
                    i11 = i16;
                    i12 = i18;
                    i13 = 0;
                    List list = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls2 = AbstractC1138c1.f2648a;
                    if (list.size() == 0) {
                        iM2048c7 = i13;
                    } else {
                        iM2048c7 = (AbstractC1169n.m2048c(i19) * list.size()) + AbstractC1138c1.m1915e(list);
                    }
                    iM2067a2 += iM2048c7;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 21:
                    i11 = i16;
                    i12 = i18;
                    i13 = 0;
                    List list2 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls3 = AbstractC1138c1.f2648a;
                    size = list2.size();
                    if (size == 0) {
                        iM2048c7 = i13;
                    } else {
                        iM1919i = AbstractC1138c1.m1919i(list2);
                        iM2048c8 = AbstractC1169n.m2048c(i19);
                        iM2048c7 = (iM2048c8 * size) + iM1919i;
                    }
                    iM2067a2 += iM2048c7;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 22:
                    i11 = i16;
                    i12 = i18;
                    i13 = 0;
                    List list3 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls4 = AbstractC1138c1.f2648a;
                    size = list3.size();
                    if (size == 0) {
                        iM2048c7 = i13;
                    } else {
                        iM1919i = AbstractC1138c1.m1914d(list3);
                        iM2048c8 = AbstractC1169n.m2048c(i19);
                        iM2048c7 = (iM2048c8 * size) + iM1919i;
                    }
                    iM2067a2 += iM2048c7;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 23:
                    iM1913c = AbstractC1138c1.m1913c(i19, (List) unsafe.getObject(abstractC1202y2, j10));
                    iM2067a2 += iM1913c;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 24:
                    iM1913c = AbstractC1138c1.m1912b(i19, (List) unsafe.getObject(abstractC1202y2, j10));
                    iM2067a2 += iM1913c;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 25:
                    i11 = i16;
                    i12 = i18;
                    List list4 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls5 = AbstractC1138c1.f2648a;
                    int size6 = list4.size();
                    iM2067a2 += size6 == 0 ? 0 : (AbstractC1169n.m2048c(i19) + 1) * size6;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 26:
                    i11 = i16;
                    i12 = i18;
                    i13 = 0;
                    List list5 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls6 = AbstractC1138c1.f2648a;
                    int size7 = list5.size();
                    if (size7 == 0) {
                        iM2048c7 = i13;
                    } else {
                        iM2048c7 = AbstractC1169n.m2048c(i19) * size7;
                        if (list5 instanceof InterfaceC1149g0) {
                            InterfaceC1149g0 interfaceC1149g0 = (InterfaceC1149g0) list5;
                            for (int i28 = 0; i28 < size7; i28++) {
                                Object objMo1952V = interfaceC1149g0.mo1952V(i28);
                                if (objMo1952V instanceof C1148g) {
                                    int size8 = ((C1148g) objMo1952V).size();
                                    iM2048c7 = AbstractC1169n.m2049d(size8) + size8 + iM2048c7;
                                } else {
                                    iM2048c7 = AbstractC1169n.m2047b((String) objMo1952V) + iM2048c7;
                                }
                            }
                        } else {
                            for (int i29 = 0; i29 < size7; i29++) {
                                Object obj = list5.get(i29);
                                if (obj instanceof C1148g) {
                                    int size9 = ((C1148g) obj).size();
                                    iM2048c7 = AbstractC1169n.m2049d(size9) + size9 + iM2048c7;
                                } else {
                                    iM2048c7 = AbstractC1169n.m2047b((String) obj) + iM2048c7;
                                }
                            }
                        }
                    }
                    iM2067a2 += iM2048c7;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 27:
                    i11 = i16;
                    i12 = i18;
                    List list6 = (List) unsafe.getObject(abstractC1202y2, j10);
                    InterfaceC1134b1 interfaceC1134b1M2145m2 = c1188t0.m2145m(i17);
                    Class cls7 = AbstractC1138c1.f2648a;
                    int size10 = list6.size();
                    if (size10 == 0) {
                        iM2048c9 = 0;
                    } else {
                        iM2048c9 = AbstractC1169n.m2048c(i19) * size10;
                        for (int i30 = 0; i30 < size10; i30++) {
                            int iMo1893a3 = ((AbstractC1128a) list6.get(i30)).mo1893a(interfaceC1134b1M2145m2);
                            iM2048c9 += AbstractC1169n.m2049d(iMo1893a3) + iMo1893a3;
                        }
                    }
                    iM2067a2 += iM2048c9;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 28:
                    i11 = i16;
                    i12 = i18;
                    i13 = 0;
                    List list7 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls8 = AbstractC1138c1.f2648a;
                    int size11 = list7.size();
                    if (size11 == 0) {
                        iM2048c7 = i13;
                    } else {
                        iM2048c7 = AbstractC1169n.m2048c(i19) * size11;
                        for (int i31 = 0; i31 < list7.size(); i31++) {
                            int size12 = ((C1148g) list7.get(i31)).size();
                            iM2048c7 += AbstractC1169n.m2049d(size12) + size12;
                        }
                    }
                    iM2067a2 += iM2048c7;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 29:
                    i11 = i16;
                    i12 = i18;
                    i13 = 0;
                    List list8 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls9 = AbstractC1138c1.f2648a;
                    size = list8.size();
                    if (size == 0) {
                        iM2048c7 = i13;
                    } else {
                        iM1919i = AbstractC1138c1.m1918h(list8);
                        iM2048c8 = AbstractC1169n.m2048c(i19);
                        iM2048c7 = (iM2048c8 * size) + iM1919i;
                    }
                    iM2067a2 += iM2048c7;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 30:
                    i11 = i16;
                    i12 = i18;
                    i13 = 0;
                    List list9 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls10 = AbstractC1138c1.f2648a;
                    size = list9.size();
                    if (size == 0) {
                        iM2048c7 = i13;
                    } else {
                        iM1919i = AbstractC1138c1.m1911a(list9);
                        iM2048c8 = AbstractC1169n.m2048c(i19);
                        iM2048c7 = (iM2048c8 * size) + iM1919i;
                    }
                    iM2067a2 += iM2048c7;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 31:
                    iM1913c = AbstractC1138c1.m1912b(i19, (List) unsafe.getObject(abstractC1202y2, j10));
                    iM2067a2 += iM1913c;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 32:
                    iM1913c = AbstractC1138c1.m1913c(i19, (List) unsafe.getObject(abstractC1202y2, j10));
                    iM2067a2 += iM1913c;
                    i16 = i16;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 33:
                    i11 = i16;
                    i12 = i18;
                    i13 = 0;
                    List list10 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls11 = AbstractC1138c1.f2648a;
                    size = list10.size();
                    if (size == 0) {
                        iM2048c7 = i13;
                    } else {
                        iM1919i = AbstractC1138c1.m1916f(list10);
                        iM2048c8 = AbstractC1169n.m2048c(i19);
                        iM2048c7 = (iM2048c8 * size) + iM1919i;
                    }
                    iM2067a2 += iM2048c7;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 34:
                    i11 = i16;
                    i12 = i18;
                    i13 = 0;
                    List list11 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls12 = AbstractC1138c1.f2648a;
                    size = list11.size();
                    if (size == 0) {
                        iM2048c7 = i13;
                    } else {
                        iM1919i = AbstractC1138c1.m1917g(list11);
                        iM2048c8 = AbstractC1169n.m2048c(i19);
                        iM2048c7 = (iM2048c8 * size) + iM1919i;
                    }
                    iM2067a2 += iM2048c7;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 35:
                    i11 = i16;
                    i12 = i18;
                    List list12 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls13 = AbstractC1138c1.f2648a;
                    int size13 = list12.size() * 8;
                    if (size13 > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(size13, AbstractC1169n.m2048c(i19), size13, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 36:
                    i11 = i16;
                    i12 = i18;
                    List list13 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls14 = AbstractC1138c1.f2648a;
                    int size14 = list13.size() * 4;
                    if (size14 > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(size14, AbstractC1169n.m2048c(i19), size14, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 37:
                    i11 = i16;
                    i12 = i18;
                    int iM1915e = AbstractC1138c1.m1915e((List) unsafe.getObject(abstractC1202y2, j10));
                    if (iM1915e > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(iM1915e, AbstractC1169n.m2048c(i19), iM1915e, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 38:
                    i11 = i16;
                    i12 = i18;
                    int iM1919i2 = AbstractC1138c1.m1919i((List) unsafe.getObject(abstractC1202y2, j10));
                    if (iM1919i2 > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(iM1919i2, AbstractC1169n.m2048c(i19), iM1919i2, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 39:
                    i11 = i16;
                    i12 = i18;
                    int iM1914d = AbstractC1138c1.m1914d((List) unsafe.getObject(abstractC1202y2, j10));
                    if (iM1914d > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(iM1914d, AbstractC1169n.m2048c(i19), iM1914d, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 40:
                    i11 = i16;
                    i12 = i18;
                    List list14 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls15 = AbstractC1138c1.f2648a;
                    int size15 = list14.size() * 8;
                    if (size15 > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(size15, AbstractC1169n.m2048c(i19), size15, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 41:
                    i11 = i16;
                    i12 = i18;
                    List list15 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls16 = AbstractC1138c1.f2648a;
                    int size16 = list15.size() * 4;
                    if (size16 > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(size16, AbstractC1169n.m2048c(i19), size16, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 42:
                    i11 = i16;
                    i12 = i18;
                    List list16 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls17 = AbstractC1138c1.f2648a;
                    int size17 = list16.size();
                    if (size17 > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(size17, AbstractC1169n.m2048c(i19), size17, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 43:
                    i11 = i16;
                    i12 = i18;
                    int iM1918h = AbstractC1138c1.m1918h((List) unsafe.getObject(abstractC1202y2, j10));
                    if (iM1918h > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(iM1918h, AbstractC1169n.m2048c(i19), iM1918h, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 44:
                    i11 = i16;
                    i12 = i18;
                    int iM1911a = AbstractC1138c1.m1911a((List) unsafe.getObject(abstractC1202y2, j10));
                    if (iM1911a > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(iM1911a, AbstractC1169n.m2048c(i19), iM1911a, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 45:
                    i11 = i16;
                    i12 = i18;
                    List list17 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls18 = AbstractC1138c1.f2648a;
                    int size18 = list17.size() * 4;
                    if (size18 > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(size18, AbstractC1169n.m2048c(i19), size18, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 46:
                    i11 = i16;
                    i12 = i18;
                    List list18 = (List) unsafe.getObject(abstractC1202y2, j10);
                    Class cls19 = AbstractC1138c1.f2648a;
                    int size19 = list18.size() * 8;
                    if (size19 > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(size19, AbstractC1169n.m2048c(i19), size19, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 47:
                    i11 = i16;
                    i12 = i18;
                    int iM1916f = AbstractC1138c1.m1916f((List) unsafe.getObject(abstractC1202y2, j10));
                    if (iM1916f > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(iM1916f, AbstractC1169n.m2048c(i19), iM1916f, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    i11 = i16;
                    i12 = i18;
                    int iM1917g = AbstractC1138c1.m1917g((List) unsafe.getObject(abstractC1202y2, j10));
                    if (iM1917g > 0) {
                        iM2067a2 = AbstractC1178q.m2067a(iM1917g, AbstractC1169n.m2048c(i19), iM1917g, iM2067a2);
                    }
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    i11 = i16;
                    i12 = i18;
                    List list19 = (List) unsafe.getObject(abstractC1202y2, j10);
                    InterfaceC1134b1 interfaceC1134b1M2145m3 = c1188t0.m2145m(i17);
                    Class cls20 = AbstractC1138c1.f2648a;
                    int size20 = list19.size();
                    if (size20 == 0) {
                        iMo1893a = 0;
                    } else {
                        iMo1893a = 0;
                        for (int i32 = 0; i32 < size20; i32++) {
                            iMo1893a += ((AbstractC1128a) list19.get(i32)).mo1893a(interfaceC1134b1M2145m3) + (AbstractC1169n.m2048c(i19) * 2);
                        }
                    }
                    iM2067a2 += iMo1893a;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 50:
                    Object object3 = unsafe.getObject(abstractC1202y2, j10);
                    Object obj2 = c1188t0.f2762b[(i17 / 3) * 2];
                    c1188t0.f2773m.getClass();
                    C1173o0 c1173o0 = (C1173o0) object3;
                    C1170n0 c1170n0 = (C1170n0) obj2;
                    if (c1173o0.isEmpty()) {
                        iM2067a = 0;
                    } else {
                        iM2067a = 0;
                        for (Map.Entry entry : c1173o0.entrySet()) {
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            c1170n0.getClass();
                            int iM2048c19 = AbstractC1169n.m2048c(i19);
                            char c10 = c;
                            C1167m0 c1167m0 = c1170n0.f2733a;
                            int i33 = i22;
                            EnumC1131a2 enumC1131a3 = c1167m0.f2726a;
                            int i34 = C1187t.f2756c;
                            int iM2048c20 = AbstractC1169n.m2048c(i33);
                            int i35 = i16;
                            C1201x1 c1201x1 = EnumC1131a2.f2628e;
                            if (enumC1131a3 == c1201x1) {
                                iM2048c20 *= 2;
                            }
                            int i36 = i18;
                            switch (enumC1131a3.ordinal()) {
                                case 0:
                                    ((Double) key).getClass();
                                    iM2050e2 = 8;
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i37 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i37, i37, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i38 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i38, i38, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i39 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i39, i39, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i310 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i310, i310, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i311 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311, i311, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i312 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i312, i312, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i313 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i313, i313, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i314 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i314, i314, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i315 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i315, i315, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i316 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i316, i316, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i317 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i317, i317, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i318 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i318, i318, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i319 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i319, i319, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i3110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3110, i3110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111, i3111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3112, i3112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue >> 31) ^ (iIntValue << 1));
                                            int i3113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3113, i3113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue << i33) ^ (jLongValue >> c10));
                                            int i3114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3114, i3114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 1:
                                    ((Float) key).getClass();
                                    iM2050e2 = 4;
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i3115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3115, i3115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i3116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3116, i3116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3117, i3117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3118, i3118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i3119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3119, i3119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i31110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31110, i31110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111, i31111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i31112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31112, i31112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i31113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31113, i31113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i31114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31114, i31114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31115, i31115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31116, i31116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i31117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31117, i31117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i31118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31118, i31118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31119, i31119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311110, i311110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue2 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue2 >> 31) ^ (iIntValue2 << 1));
                                            int i311111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111, i311111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue2 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue2 << i33) ^ (jLongValue2 >> c10));
                                            int i311112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311112, i311112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 2:
                                    iM2050e2 = AbstractC1169n.m2050e(((Long) key).longValue());
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i311113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311113, i311113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i311114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311114, i311114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311115, i311115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311116, i311116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i311117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311117, i311117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311118, i311118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i311119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311119, i311119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i3111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111110, i3111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i3111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111, i3111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i3111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111112, i3111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111113, i3111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111114, i3111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i3111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111115, i3111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i3111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111116, i3111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111117, i3111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111118, i3111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue3 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue3 >> 31) ^ (iIntValue3 << 1));
                                            int i3111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111119, i3111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue3 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue3 << i33) ^ (jLongValue3 >> c10));
                                            int i31111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111110, i31111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 3:
                                    iM2050e2 = AbstractC1169n.m2050e(((Long) key).longValue());
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111, i31111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111112, i31111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i31111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111113, i31111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i31111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111114, i31111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i31111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111115, i31111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111116, i31111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111117, i31111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i31111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111118, i31111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i31111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111119, i31111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i311111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111110, i311111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111, i311111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111112, i311111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i311111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111113, i311111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i311111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111114, i311111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111115, i311111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111116, i311111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue4 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue4 >> 31) ^ (iIntValue4 << 1));
                                            int i311111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111117, i311111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue4 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue4 << i33) ^ (jLongValue4 >> c10));
                                            int i311111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111118, i311111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 4:
                                    iM2050e2 = AbstractC1169n.m2046a(((Integer) key).intValue());
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111119, i311111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111110, i3111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111, i3111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111112, i3111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i3111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111113, i3111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111114, i3111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111115, i3111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i3111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111116, i3111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i3111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111117, i3111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i3111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111118, i3111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111119, i3111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111110, i31111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i31111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111, i31111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i31111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111112, i31111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111113, i31111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111114, i31111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue5 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue5 >> 31) ^ (iIntValue5 << 1));
                                            int i31111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111115, i31111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue5 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue5 << i33) ^ (jLongValue5 >> c10));
                                            int i31111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111116, i31111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 5:
                                    ((Long) key).getClass();
                                    iM2050e2 = 8;
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111117, i31111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111118, i31111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i31111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111119, i31111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111110, i311111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i311111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111, i311111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111112, i311111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111113, i311111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i311111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111114, i311111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i311111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111115, i311111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i311111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111116, i311111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111117, i311111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111118, i311111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i311111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111119, i311111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i3111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111110, i3111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111, i3111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111112, i3111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue6 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue6 >> 31) ^ (iIntValue6 << 1));
                                            int i3111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111113, i3111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue6 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue6 << i33) ^ (jLongValue6 >> c10));
                                            int i3111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111114, i3111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 6:
                                    ((Integer) key).getClass();
                                    iM2050e2 = 4;
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111115, i3111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111116, i3111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111117, i3111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111118, i3111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i3111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111119, i3111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111110, i31111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111, i31111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i31111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111112, i31111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i31111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111113, i31111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i31111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111114, i31111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111115, i31111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111116, i31111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i31111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111117, i31111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i31111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111118, i31111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111119, i31111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111110, i311111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue7 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue7 >> 31) ^ (iIntValue7 << 1));
                                            int i311111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111, i311111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue7 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue7 << i33) ^ (jLongValue7 >> c10));
                                            int i311111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111112, i311111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 7:
                                    ((Boolean) key).getClass();
                                    iM2050e2 = i33;
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111113, i311111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111114, i311111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111115, i311111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111116, i311111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i311111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111117, i311111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111118, i311111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111119, i311111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i3111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111110, i3111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i3111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111, i3111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i3111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111112, i3111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111113, i3111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111114, i3111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i3111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111115, i3111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i3111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111116, i3111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111117, i3111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111118, i3111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue8 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue8 >> 31) ^ (iIntValue8 << 1));
                                            int i3111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111119, i3111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue8 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue8 << i33) ^ (jLongValue8 >> c10));
                                            int i31111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111110, i31111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 8:
                                    if (key instanceof C1148g) {
                                        size2 = ((C1148g) key).size();
                                        iM2049d = AbstractC1169n.m2049d(size2);
                                        iM2050e2 = size2 + iM2049d;
                                    } else {
                                        iM2050e2 = AbstractC1169n.m2047b((String) key);
                                    }
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111, i31111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111112, i31111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i31111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111113, i31111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i31111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111114, i31111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i31111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111115, i31111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111116, i31111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111117, i31111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i31111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111118, i31111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i31111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111119, i31111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i311111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111110, i311111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111, i311111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111112, i311111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i311111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111113, i311111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i311111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111114, i311111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111115, i311111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111116, i311111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue9 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue9 >> 31) ^ (iIntValue9 << 1));
                                            int i311111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111117, i311111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue9 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue9 << i33) ^ (jLongValue9 >> c10));
                                            int i311111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111118, i311111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 9:
                                    iM2050e2 = ((AbstractC1202y) ((AbstractC1128a) key)).mo1893a(null);
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111119, i311111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111110, i3111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111, i3111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111112, i3111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i3111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111113, i3111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111114, i3111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111115, i3111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i3111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111116, i3111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i3111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111117, i3111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i3111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111118, i3111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111119, i3111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111110, i31111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i31111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111, i31111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i31111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111112, i31111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111113, i31111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111114, i31111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue10 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue10 >> 31) ^ (iIntValue10 << 1));
                                            int i31111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111115, i31111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue10 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue10 << i33) ^ (jLongValue10 >> c10));
                                            int i31111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111116, i31111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 10:
                                    size2 = ((AbstractC1202y) ((AbstractC1128a) key)).mo1893a(null);
                                    iM2049d = AbstractC1169n.m2049d(size2);
                                    iM2050e2 = size2 + iM2049d;
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111117, i31111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111118, i31111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i31111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111119, i31111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111110, i311111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i311111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111, i311111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111112, i311111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111113, i311111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i311111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111114, i311111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i311111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111115, i311111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i311111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111116, i311111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111117, i311111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111118, i311111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i311111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111119, i311111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i3111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111110, i3111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111, i3111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111112, i3111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue11 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue11 >> 31) ^ (iIntValue11 << 1));
                                            int i3111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111113, i3111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue11 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue11 << i33) ^ (jLongValue11 >> c10));
                                            int i3111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111114, i3111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 11:
                                    if (key instanceof C1148g) {
                                        size2 = ((C1148g) key).size();
                                        iM2049d = AbstractC1169n.m2049d(size2);
                                    } else {
                                        size2 = ((byte[]) key).length;
                                        iM2049d = AbstractC1169n.m2049d(size2);
                                    }
                                    iM2050e2 = size2 + iM2049d;
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111115, i3111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111116, i3111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111117, i3111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111118, i3111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i3111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111119, i3111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111110, i31111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111, i31111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i31111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111112, i31111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i31111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111113, i31111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i31111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111114, i31111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111115, i31111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111116, i31111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i31111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111117, i31111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i31111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111118, i31111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111119, i31111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111110, i311111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue12 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue12 >> 31) ^ (iIntValue12 << 1));
                                            int i311111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111, i311111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue12 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue12 << i33) ^ (jLongValue12 >> c10));
                                            int i311111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111112, i311111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 12:
                                    iM2050e2 = AbstractC1169n.m2049d(((Integer) key).intValue());
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111113, i311111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111114, i311111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111115, i311111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111116, i311111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i311111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111117, i311111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111118, i311111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111119, i311111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i3111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111110, i3111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i3111111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111, i3111111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i3111111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111112, i3111111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111113, i3111111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111114, i3111111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i3111111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111115, i3111111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i3111111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111116, i3111111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111117, i3111111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111118, i3111111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue13 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue13 >> 31) ^ (iIntValue13 << 1));
                                            int i3111111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111119, i3111111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue13 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue13 << i33) ^ (jLongValue13 >> c10));
                                            int i31111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111110, i31111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 13:
                                    iM2050e2 = key instanceof InterfaceC1205z ? AbstractC1169n.m2046a(((InterfaceC1205z) key).mo2180a()) : AbstractC1169n.m2046a(((Integer) key).intValue());
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111, i31111111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111112, i31111111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i31111111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111113, i31111111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i31111111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111114, i31111111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i31111111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111115, i31111111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111116, i31111111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111117, i31111111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i31111111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111118, i31111111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i31111111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111119, i31111111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i311111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111110, i311111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111, i311111111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111112, i311111111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i311111111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111113, i311111111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i311111111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111114, i311111111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111115, i311111111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111116, i311111111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue14 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue14 >> 31) ^ (iIntValue14 << 1));
                                            int i311111111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111117, i311111111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue14 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue14 << i33) ^ (jLongValue14 >> c10));
                                            int i311111111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111118, i311111111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 14:
                                    ((Integer) key).getClass();
                                    iM2050e2 = 4;
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111119, i311111111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111110, i3111111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111, i3111111111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111112, i3111111111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i3111111111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111113, i3111111111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111114, i3111111111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111115, i3111111111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i3111111111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111116, i3111111111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i3111111111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111117, i3111111111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i3111111111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111118, i3111111111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111111111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111119, i3111111111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31111111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111110, i31111111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i31111111111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111, i31111111111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i31111111111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111112, i31111111111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111113, i31111111111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111114, i31111111111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue15 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue15 >> 31) ^ (iIntValue15 << 1));
                                            int i31111111111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111115, i31111111111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue15 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue15 << i33) ^ (jLongValue15 >> c10));
                                            int i31111111111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111116, i31111111111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 15:
                                    ((Long) key).getClass();
                                    iM2050e2 = 8;
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111117, i31111111111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111118, i31111111111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i31111111111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111119, i31111111111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311111111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111110, i311111111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i311111111111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111, i311111111111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111112, i311111111111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111113, i311111111111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i311111111111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111114, i311111111111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i311111111111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111115, i311111111111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i311111111111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111116, i311111111111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111117, i311111111111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i311111111111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111118, i311111111111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i311111111111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111119, i311111111111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i3111111111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111110, i3111111111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111, i3111111111111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111112, i3111111111111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue16 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue16 >> 31) ^ (iIntValue16 << 1));
                                            int i3111111111111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111113, i3111111111111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue16 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue16 << i33) ^ (jLongValue16 >> c10));
                                            int i3111111111111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111114, i3111111111111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 16:
                                    int iIntValue17 = ((Integer) key).intValue();
                                    iM2050e2 = AbstractC1169n.m2049d((iIntValue17 >> 31) ^ (iIntValue17 << 1));
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111115, i3111111111111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111116, i3111111111111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111117, i3111111111111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i3111111111111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111118, i3111111111111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i3111111111111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111119, i3111111111111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i31111111111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111110, i31111111111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111111, i31111111111111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i31111111111111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111112, i31111111111111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i31111111111111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111113, i31111111111111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i31111111111111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111114, i31111111111111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31111111111111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111115, i31111111111111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i31111111111111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111116, i31111111111111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i31111111111111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111117, i31111111111111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i31111111111111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111118, i31111111111111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i31111111111111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111119, i31111111111111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111110, i311111111111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue18 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue18 >> 31) ^ (iIntValue18 << 1));
                                            int i311111111111111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111111, i311111111111111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue17 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue17 << i33) ^ (jLongValue17 >> c10));
                                            int i311111111111111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111112, i311111111111111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                case 17:
                                    long jLongValue18 = ((Long) key).longValue();
                                    iM2050e2 = AbstractC1169n.m2050e((jLongValue18 << i33) ^ (jLongValue18 >> c10));
                                    i14 = iM2050e2 + iM2048c20;
                                    enumC1131a2 = c1167m0.f2727b;
                                    iM2048c10 = AbstractC1169n.m2048c(2);
                                    if (enumC1131a2 == c1201x1) {
                                        iM2048c10 *= 2;
                                    }
                                    switch (enumC1131a2.ordinal()) {
                                        case 0:
                                            ((Double) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111113, i311111111111111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 1:
                                            ((Float) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111111111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111114, i311111111111111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 2:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311111111111111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111115, i311111111111111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 3:
                                            iM2050e3 = AbstractC1169n.m2050e(((Long) value).longValue());
                                            int i311111111111111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111116, i311111111111111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 4:
                                            iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            int i311111111111111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111117, i311111111111111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 5:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i311111111111111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111118, i311111111111111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 6:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i311111111111111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i311111111111111111111111111111119, i311111111111111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 7:
                                            ((Boolean) value).getClass();
                                            iM2050e3 = i33;
                                            int i3111111111111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111110, i3111111111111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 8:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                                iM2050e3 = size3 + iM2049d2;
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2047b((String) value);
                                            }
                                            int i3111111111111111111111111111111111 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111111, i3111111111111111111111111111111111, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 9:
                                            iM2050e3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            int i3111111111111111111111111111111112 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111112, i3111111111111111111111111111111112, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 10:
                                            size3 = ((AbstractC1202y) ((AbstractC1128a) value)).mo1893a(null);
                                            iM2049d2 = AbstractC1169n.m2049d(size3);
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111111111111111111111111111111113 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111113, i3111111111111111111111111111111113, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 11:
                                            if (value instanceof C1148g) {
                                                size3 = ((C1148g) value).size();
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            } else {
                                                size3 = ((byte[]) value).length;
                                                iM2049d2 = AbstractC1169n.m2049d(size3);
                                            }
                                            iM2050e3 = size3 + iM2049d2;
                                            int i3111111111111111111111111111111114 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111114, i3111111111111111111111111111111114, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 12:
                                            iM2050e3 = AbstractC1169n.m2049d(((Integer) value).intValue());
                                            int i3111111111111111111111111111111115 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111115, i3111111111111111111111111111111115, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 13:
                                            if (value instanceof InterfaceC1205z) {
                                                iM2050e3 = AbstractC1169n.m2046a(((InterfaceC1205z) value).mo2180a());
                                            } else {
                                                iM2050e3 = AbstractC1169n.m2046a(((Integer) value).intValue());
                                            }
                                            int i3111111111111111111111111111111116 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111116, i3111111111111111111111111111111116, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 14:
                                            ((Integer) value).getClass();
                                            iM2050e3 = 4;
                                            int i3111111111111111111111111111111117 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111117, i3111111111111111111111111111111117, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 15:
                                            ((Long) value).getClass();
                                            iM2050e3 = 8;
                                            int i3111111111111111111111111111111118 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111118, i3111111111111111111111111111111118, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 16:
                                            int iIntValue19 = ((Integer) value).intValue();
                                            iM2050e3 = AbstractC1169n.m2049d((iIntValue19 >> 31) ^ (iIntValue19 << 1));
                                            int i3111111111111111111111111111111119 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i3111111111111111111111111111111119, i3111111111111111111111111111111119, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        case 17:
                                            long jLongValue19 = ((Long) value).longValue();
                                            iM2050e3 = AbstractC1169n.m2050e((jLongValue19 << i33) ^ (jLongValue19 >> c10));
                                            int i31111111111111111111111111111111110 = iM2050e3 + iM2048c10 + i14;
                                            iM2067a = AbstractC1178q.m2067a(i31111111111111111111111111111111110, i31111111111111111111111111111111110, iM2048c19, iM2067a);
                                            c = c10;
                                            i22 = i33;
                                            i16 = i35;
                                            i18 = i36;
                                            break;
                                        default:
                                            C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                            return 0;
                                    }
                                    break;
                                default:
                                    C0075b.m183h("There is no way to get here, but the compiler thinks otherwise.");
                                    return 0;
                            }
                        }
                    }
                    i11 = i16;
                    i12 = i18;
                    iM2067a2 += iM2067a;
                    i16 = i11;
                    i18 = i12;
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        iM2048c11 = AbstractC1169n.m2048c(i19);
                        iM2048c15 = iM2048c11 + 8;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        iM2048c12 = AbstractC1169n.m2048c(i19);
                        iM2048c15 = iM2048c12 + 4;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        long jM2124A = m2124A(abstractC1202y2, j10);
                        iM2048c13 = AbstractC1169n.m2048c(i19);
                        iM2050e4 = AbstractC1169n.m2050e(jM2124A);
                        iM2067a2 += iM2050e4 + iM2048c13;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        long jM2124A2 = m2124A(abstractC1202y2, j10);
                        iM2048c13 = AbstractC1169n.m2048c(i19);
                        iM2050e4 = AbstractC1169n.m2050e(jM2124A2);
                        iM2067a2 += iM2050e4 + iM2048c13;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        int iM2131z = m2131z(abstractC1202y2, j10);
                        iM2048c14 = AbstractC1169n.m2048c(i19);
                        iM2046a2 = AbstractC1169n.m2046a(iM2131z);
                        iM2048c15 = iM2046a2 + iM2048c14;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 56:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        iM2048c11 = AbstractC1169n.m2048c(i19);
                        iM2048c15 = iM2048c11 + 8;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 57:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        iM2048c12 = AbstractC1169n.m2048c(i19);
                        iM2048c15 = iM2048c12 + 4;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 58:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        iM2048c15 = AbstractC1169n.m2048c(i19) + 1;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 59:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        Object object4 = unsafe.getObject(abstractC1202y2, j10);
                        if (object4 instanceof C1148g) {
                            int iM2048c21 = AbstractC1169n.m2048c(i19);
                            int size21 = ((C1148g) object4).size();
                            iM2047b2 = AbstractC1178q.m2067a(size21, size21, iM2048c21, iM2067a2);
                        } else {
                            iM2047b2 = AbstractC1169n.m2047b((String) object4) + AbstractC1169n.m2048c(i19) + iM2067a2;
                        }
                        iM2067a2 = iM2047b2;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 60:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        Object object5 = unsafe.getObject(abstractC1202y2, j10);
                        InterfaceC1134b1 interfaceC1134b1M2145m4 = c1188t0.m2145m(i17);
                        Class cls21 = AbstractC1138c1.f2648a;
                        int iM2048c22 = AbstractC1169n.m2048c(i19);
                        int iMo1893a4 = ((AbstractC1128a) object5).mo1893a(interfaceC1134b1M2145m4);
                        iM2067a2 = AbstractC1178q.m2067a(iMo1893a4, iMo1893a4, iM2048c22, iM2067a2);
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 61:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        C1148g c1148g2 = (C1148g) unsafe.getObject(abstractC1202y2, j10);
                        int iM2048c23 = AbstractC1169n.m2048c(i19);
                        int size22 = c1148g2.size();
                        iM2067a2 = AbstractC1178q.m2067a(size22, size22, iM2048c23, iM2067a2);
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 62:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        int iM2131z2 = m2131z(abstractC1202y2, j10);
                        iM2048c14 = AbstractC1169n.m2048c(i19);
                        iM2046a2 = AbstractC1169n.m2049d(iM2131z2);
                        iM2048c15 = iM2046a2 + iM2048c14;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 63:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        int iM2131z3 = m2131z(abstractC1202y2, j10);
                        iM2048c14 = AbstractC1169n.m2048c(i19);
                        iM2046a2 = AbstractC1169n.m2046a(iM2131z3);
                        iM2048c15 = iM2046a2 + iM2048c14;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 64:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        iM2048c12 = AbstractC1169n.m2048c(i19);
                        iM2048c15 = iM2048c12 + 4;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        iM2048c11 = AbstractC1169n.m2048c(i19);
                        iM2048c15 = iM2048c11 + 8;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        int iM2131z4 = m2131z(abstractC1202y2, j10);
                        iM2048c14 = AbstractC1169n.m2048c(i19);
                        iM2046a2 = AbstractC1169n.m2049d((iM2131z4 >> 31) ^ (iM2131z4 << 1));
                        iM2048c15 = iM2046a2 + iM2048c14;
                        iM2067a2 += iM2048c15;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        long jM2124A3 = m2124A(abstractC1202y2, j10);
                        iM2048c13 = AbstractC1169n.m2048c(i19);
                        iM2050e4 = AbstractC1169n.m2050e((jM2124A3 << 1) ^ (jM2124A3 >> 63));
                        iM2067a2 += iM2050e4 + iM2048c13;
                    }
                    i17 += 3;
                    i15 = 1048575;
                    break;
                case 68:
                    if (c1188t0.m2148q(abstractC1202y2, i19, i17)) {
                        iM2048c15 = ((AbstractC1128a) unsafe.getObject(abstractC1202y2, j10)).mo1893a(c1188t0.m2145m(i17)) + (AbstractC1169n.m2048c(i19) * 2);
                        iM2067a2 += iM2048c15;
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

    /* JADX WARN: Code duplicated, block: B:13:0x003d  */
    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: g */
    public final boolean mo1907g(AbstractC1202y abstractC1202y, AbstractC1202y abstractC1202y2) {
        int[] iArr = this.f2761a;
        int length = iArr.length;
        int i10 = 0;
        while (true) {
            boolean zM1921k = true;
            if (i10 < length) {
                int iM2140L = m2140L(i10);
                long j10 = iM2140L & 1048575;
                switch (m2126K(iM2140L)) {
                    case 0:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r1 = AbstractC1186s1.f2751c;
                            if (Double.doubleToLongBits(abstractC1183r1.mo2060e(abstractC1202y, j10)) != Double.doubleToLongBits(abstractC1183r1.mo2060e(abstractC1202y2, j10))) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 1:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r2 = AbstractC1186s1.f2751c;
                            if (Float.floatToIntBits(abstractC1183r2.mo2061f(abstractC1202y, j10)) != Float.floatToIntBits(abstractC1183r2.mo2061f(abstractC1202y2, j10))) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 2:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r3 = AbstractC1186s1.f2751c;
                            if (abstractC1183r3.m2097h(abstractC1202y, j10) != abstractC1183r3.m2097h(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 3:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r4 = AbstractC1186s1.f2751c;
                            if (abstractC1183r4.m2097h(abstractC1202y, j10) != abstractC1183r4.m2097h(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 4:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r5 = AbstractC1186s1.f2751c;
                            if (abstractC1183r5.m2096g(abstractC1202y, j10) != abstractC1183r5.m2096g(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 5:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r6 = AbstractC1186s1.f2751c;
                            if (abstractC1183r6.m2097h(abstractC1202y, j10) != abstractC1183r6.m2097h(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 6:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r7 = AbstractC1186s1.f2751c;
                            if (abstractC1183r7.m2096g(abstractC1202y, j10) != abstractC1183r7.m2096g(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 7:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r8 = AbstractC1186s1.f2751c;
                            if (abstractC1183r8.mo2058c(abstractC1202y, j10) != abstractC1183r8.mo2058c(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 8:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r9 = AbstractC1186s1.f2751c;
                            if (!AbstractC1138c1.m1921k(abstractC1183r9.m2098i(abstractC1202y, j10), abstractC1183r9.m2098i(abstractC1202y2, j10))) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 9:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r10 = AbstractC1186s1.f2751c;
                            if (!AbstractC1138c1.m1921k(abstractC1183r10.m2098i(abstractC1202y, j10), abstractC1183r10.m2098i(abstractC1202y2, j10))) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 10:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r11 = AbstractC1186s1.f2751c;
                            if (!AbstractC1138c1.m1921k(abstractC1183r11.m2098i(abstractC1202y, j10), abstractC1183r11.m2098i(abstractC1202y2, j10))) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 11:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r12 = AbstractC1186s1.f2751c;
                            if (abstractC1183r12.m2096g(abstractC1202y, j10) != abstractC1183r12.m2096g(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 12:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r13 = AbstractC1186s1.f2751c;
                            if (abstractC1183r13.m2096g(abstractC1202y, j10) != abstractC1183r13.m2096g(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 13:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r14 = AbstractC1186s1.f2751c;
                            if (abstractC1183r14.m2096g(abstractC1202y, j10) != abstractC1183r14.m2096g(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 14:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r15 = AbstractC1186s1.f2751c;
                            if (abstractC1183r15.m2097h(abstractC1202y, j10) != abstractC1183r15.m2097h(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 15:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r16 = AbstractC1186s1.f2751c;
                            if (abstractC1183r16.m2096g(abstractC1202y, j10) != abstractC1183r16.m2096g(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 16:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r17 = AbstractC1186s1.f2751c;
                            if (abstractC1183r17.m2097h(abstractC1202y, j10) != abstractC1183r17.m2097h(abstractC1202y2, j10)) {
                                zM1921k = false;
                            }
                        }
                        break;
                    case 17:
                        if (!m2142j(abstractC1202y, abstractC1202y2, i10)) {
                            zM1921k = false;
                        } else {
                            AbstractC1183r1 abstractC1183r18 = AbstractC1186s1.f2751c;
                            if (!AbstractC1138c1.m1921k(abstractC1183r18.m2098i(abstractC1202y, j10), abstractC1183r18.m2098i(abstractC1202y2, j10))) {
                                zM1921k = false;
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
                    case 29:
                    case 30:
                    case 31:
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
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                        AbstractC1183r1 abstractC1183r19 = AbstractC1186s1.f2751c;
                        zM1921k = AbstractC1138c1.m1921k(abstractC1183r19.m2098i(abstractC1202y, j10), abstractC1183r19.m2098i(abstractC1202y2, j10));
                        break;
                    case 50:
                        AbstractC1183r1 abstractC1183r20 = AbstractC1186s1.f2751c;
                        zM1921k = AbstractC1138c1.m1921k(abstractC1183r20.m2098i(abstractC1202y, j10), abstractC1183r20.m2098i(abstractC1202y2, j10));
                        break;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                    case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    case 68:
                        long j11 = iArr[i10 + 2] & 1048575;
                        AbstractC1183r1 abstractC1183r21 = AbstractC1186s1.f2751c;
                        if (abstractC1183r21.m2096g(abstractC1202y, j11) != abstractC1183r21.m2096g(abstractC1202y2, j11) || !AbstractC1138c1.m1921k(abstractC1183r21.m2098i(abstractC1202y, j10), abstractC1183r21.m2098i(abstractC1202y2, j10))) {
                            zM1921k = false;
                        }
                        break;
                }
                if (zM1921k) {
                    i10 += 3;
                }
            } else {
                this.f2772l.getClass();
                if (abstractC1202y.unknownFields.equals(abstractC1202y2.unknownFields)) {
                    return true;
                }
            }
        }
        return false;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 18521. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: h */
    public final void mo1908h(java.lang.Object r19, p028c3.C0983i r20, com.google.protobuf.C1175p r21) {
        /*
            Method dump skipped, instruction units count: 1852
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C1188t0.mo1908h(java.lang.Object, c3.i, com.google.protobuf.p):void");
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: i */
    public final AbstractC1202y mo1909i() {
        this.f2770j.getClass();
        return ((AbstractC1202y) this.f2765e).m2177k();
    }

    /* JADX INFO: renamed from: j */
    public final boolean m2142j(AbstractC1202y abstractC1202y, AbstractC1202y abstractC1202y2, int i10) {
        return m2146n(i10, abstractC1202y) == m2146n(i10, abstractC1202y2);
    }

    /* JADX INFO: renamed from: k */
    public final void m2143k(int i10, Object obj, Object obj2) {
        int i11 = this.f2761a[i10];
        if (AbstractC1186s1.f2751c.m2098i(obj, m2140L(i10) & 1048575) == null) {
            return;
        }
        m2144l(i10);
    }

    /* JADX INFO: renamed from: l */
    public final void m2144l(int i10) {
        if (this.f2762b[((i10 / 3) * 2) + 1] == null) {
            return;
        }
        C2467b.m3822a();
    }

    /* JADX INFO: renamed from: m */
    public final InterfaceC1134b1 m2145m(int i10) {
        int i11 = (i10 / 3) * 2;
        Object[] objArr = this.f2762b;
        InterfaceC1134b1 interfaceC1134b1 = (InterfaceC1134b1) objArr[i11];
        if (interfaceC1134b1 != null) {
            return interfaceC1134b1;
        }
        InterfaceC1134b1 interfaceC1134b1M2179a = C1203y0.f2795c.m2179a((Class) objArr[i11 + 1]);
        objArr[i11] = interfaceC1134b1M2179a;
        return interfaceC1134b1M2179a;
    }

    /* JADX INFO: renamed from: n */
    public final boolean m2146n(int i10, Object obj) {
        int i11 = this.f2761a[i10 + 2];
        long j10 = i11 & 1048575;
        if (j10 == 1048575) {
            int iM2140L = m2140L(i10);
            long j11 = iM2140L & 1048575;
            switch (m2126K(iM2140L)) {
                case 0:
                    if (Double.doubleToRawLongBits(AbstractC1186s1.f2751c.mo2060e(obj, j11)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(AbstractC1186s1.f2751c.mo2061f(obj, j11)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (AbstractC1186s1.f2751c.m2097h(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (AbstractC1186s1.f2751c.m2097h(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (AbstractC1186s1.f2751c.m2096g(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (AbstractC1186s1.f2751c.m2097h(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (AbstractC1186s1.f2751c.m2096g(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return AbstractC1186s1.f2751c.mo2058c(obj, j11);
                case 8:
                    Object objM2098i = AbstractC1186s1.f2751c.m2098i(obj, j11);
                    if (objM2098i instanceof String) {
                        return !((String) objM2098i).isEmpty();
                    }
                    if (objM2098i instanceof C1148g) {
                        return !C1148g.f2677d.equals(objM2098i);
                    }
                    C2237i.m3594a();
                    return false;
                case 9:
                    if (AbstractC1186s1.f2751c.m2098i(obj, j11) == null) {
                        return false;
                    }
                    break;
                case 10:
                    return !C1148g.f2677d.equals(AbstractC1186s1.f2751c.m2098i(obj, j11));
                case 11:
                    if (AbstractC1186s1.f2751c.m2096g(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (AbstractC1186s1.f2751c.m2096g(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (AbstractC1186s1.f2751c.m2096g(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (AbstractC1186s1.f2751c.m2097h(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (AbstractC1186s1.f2751c.m2096g(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (AbstractC1186s1.f2751c.m2097h(obj, j11) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (AbstractC1186s1.f2751c.m2098i(obj, j11) == null) {
                        return false;
                    }
                    break;
                default:
                    C2237i.m3594a();
                    return false;
            }
        } else if (((1 << (i11 >>> 20)) & AbstractC1186s1.f2751c.m2096g(obj, j10)) == 0) {
            return false;
        }
        return true;
    }

    /* JADX INFO: renamed from: o */
    public final boolean m2147o(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return m2146n(i10, obj);
        }
        return (i12 & i13) != 0;
    }

    /* JADX INFO: renamed from: q */
    public final boolean m2148q(Object obj, int i10, int i11) {
        return AbstractC1186s1.f2751c.m2096g(obj, (long) (this.f2761a[i11 + 2] & 1048575)) == i10;
    }

    /* JADX INFO: renamed from: r */
    public final void m2149r(Object obj, int i10, Object obj2, C1175p c1175p, C0983i c0983i) throws C1137c0 {
        long jM2140L = m2140L(i10) & 1048575;
        Object objM2098i = AbstractC1186s1.f2751c.m2098i(obj, jM2140L);
        C1176p0 c1176p0 = this.f2773m;
        if (objM2098i == null) {
            c1176p0.getClass();
            objM2098i = C1173o0.f2737c.m2054c();
            AbstractC1186s1.m2121p(jM2140L, obj, objM2098i);
        } else {
            c1176p0.getClass();
            if (!((C1173o0) objM2098i).f2738b) {
                C1173o0 c1173o0M2054c = C1173o0.f2737c.m2054c();
                C1176p0.m2057a(c1173o0M2054c, objM2098i);
                AbstractC1186s1.m2121p(jM2140L, obj, c1173o0M2054c);
                objM2098i = c1173o0M2054c;
            }
        }
        c1176p0.getClass();
        C1173o0 c1173o0 = (C1173o0) objM2098i;
        C1167m0 c1167m0 = ((C1170n0) obj2).f2733a;
        c0983i.m1129z(2);
        AbstractC1157j abstractC1157j = (AbstractC1157j) c0983i.f932d;
        int iMo1967f = abstractC1157j.mo1967f(abstractC1157j.mo1984w());
        Object obj3 = c1167m0.f2728c;
        Object objM1114k = "";
        Object objM1114k2 = obj3;
        while (true) {
            try {
                int iM1106c = c0983i.m1106c();
                if (iM1106c == Integer.MAX_VALUE || abstractC1157j.mo1965c()) {
                    break;
                }
                if (iM1106c == 1) {
                    objM1114k = c0983i.m1114k(c1167m0.f2726a, null, null);
                } else if (iM1106c != 2) {
                    try {
                        if (!c0983i.m1103A()) {
                            throw new C1140d0("Unable to parse map entry.");
                        }
                    } catch (C1137c0 unused) {
                        if (!c0983i.m1103A()) {
                            throw new C1140d0("Unable to parse map entry.");
                        }
                    }
                } else {
                    objM1114k2 = c0983i.m1114k(c1167m0.f2727b, obj3.getClass(), c1175p);
                }
            } catch (Throwable th) {
                abstractC1157j.mo1966e(iMo1967f);
                throw th;
            }
        }
        c1173o0.put(objM1114k, objM1114k2);
        abstractC1157j.mo1966e(iMo1967f);
    }

    /* JADX INFO: renamed from: s */
    public final void m2150s(int i10, Object obj, Object obj2) {
        if (m2146n(i10, obj2)) {
            long jM2140L = m2140L(i10) & 1048575;
            Unsafe unsafe = f2760o;
            Object object = unsafe.getObject(obj2, jM2140L);
            if (object == null) {
                C0075b.m178c(this.f2761a[i10], "Source subfield ", " is present but null: ", obj2);
                return;
            }
            InterfaceC1134b1 interfaceC1134b1M2145m = m2145m(i10);
            if (!m2146n(i10, obj)) {
                if (m2127p(object)) {
                    AbstractC1202y abstractC1202yMo1909i = interfaceC1134b1M2145m.mo1909i();
                    interfaceC1134b1M2145m.mo1902b(abstractC1202yMo1909i, object);
                    unsafe.putObject(obj, jM2140L, abstractC1202yMo1909i);
                } else {
                    unsafe.putObject(obj, jM2140L, object);
                }
                m2136G(i10, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jM2140L);
            if (!m2127p(object2)) {
                AbstractC1202y abstractC1202yMo1909i2 = interfaceC1134b1M2145m.mo1909i();
                interfaceC1134b1M2145m.mo1902b(abstractC1202yMo1909i2, object2);
                unsafe.putObject(obj, jM2140L, abstractC1202yMo1909i2);
                object2 = abstractC1202yMo1909i2;
            }
            interfaceC1134b1M2145m.mo1902b(object2, object);
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m2151t(int i10, Object obj, Object obj2) {
        int[] iArr = this.f2761a;
        int i11 = iArr[i10];
        if (m2148q(obj2, i11, i10)) {
            long jM2140L = m2140L(i10) & 1048575;
            Unsafe unsafe = f2760o;
            Object object = unsafe.getObject(obj2, jM2140L);
            if (object == null) {
                C0075b.m178c(iArr[i10], "Source subfield ", " is present but null: ", obj2);
                return;
            }
            InterfaceC1134b1 interfaceC1134b1M2145m = m2145m(i10);
            if (!m2148q(obj, i11, i10)) {
                if (m2127p(object)) {
                    AbstractC1202y abstractC1202yMo1909i = interfaceC1134b1M2145m.mo1909i();
                    interfaceC1134b1M2145m.mo1902b(abstractC1202yMo1909i, object);
                    unsafe.putObject(obj, jM2140L, abstractC1202yMo1909i);
                } else {
                    unsafe.putObject(obj, jM2140L, object);
                }
                m2137H(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, jM2140L);
            if (!m2127p(object2)) {
                AbstractC1202y abstractC1202yMo1909i2 = interfaceC1134b1M2145m.mo1909i();
                interfaceC1134b1M2145m.mo1902b(abstractC1202yMo1909i2, object2);
                unsafe.putObject(obj, jM2140L, abstractC1202yMo1909i2);
                object2 = abstractC1202yMo1909i2;
            }
            interfaceC1134b1M2145m.mo1902b(object2, object);
        }
    }

    /* JADX INFO: renamed from: u */
    public final Object m2152u(int i10, Object obj) {
        InterfaceC1134b1 interfaceC1134b1M2145m = m2145m(i10);
        long jM2140L = m2140L(i10) & 1048575;
        if (!m2146n(i10, obj)) {
            return interfaceC1134b1M2145m.mo1909i();
        }
        Object object = f2760o.getObject(obj, jM2140L);
        if (m2127p(object)) {
            return object;
        }
        AbstractC1202y abstractC1202yMo1909i = interfaceC1134b1M2145m.mo1909i();
        if (object != null) {
            interfaceC1134b1M2145m.mo1902b(abstractC1202yMo1909i, object);
        }
        return abstractC1202yMo1909i;
    }

    /* JADX INFO: renamed from: v */
    public final Object m2153v(Object obj, int i10, int i11) {
        InterfaceC1134b1 interfaceC1134b1M2145m = m2145m(i11);
        if (!m2148q(obj, i10, i11)) {
            return interfaceC1134b1M2145m.mo1909i();
        }
        Object object = f2760o.getObject(obj, m2140L(i11) & 1048575);
        if (m2127p(object)) {
            return object;
        }
        AbstractC1202y abstractC1202yMo1909i = interfaceC1134b1M2145m.mo1909i();
        if (object != null) {
            interfaceC1134b1M2145m.mo1902b(abstractC1202yMo1909i, object);
        }
        return abstractC1202yMo1909i;
    }
}
