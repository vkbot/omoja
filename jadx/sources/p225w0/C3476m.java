package p225w0;

import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: w0.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3476m {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f10102a;

    /* JADX INFO: renamed from: b */
    public final HashMap f10103b;

    /* JADX INFO: renamed from: c */
    public final int f10104c;

    public /* synthetic */ C3476m(HashMap map, int i10, int i11) {
        this.f10102a = i11;
        this.f10103b = map;
        this.f10104c = i10;
    }

    /* JADX INFO: renamed from: a */
    public final int[] m5454a(String str) {
        int i10;
        double[] dArr;
        double[] dArr2;
        int i11;
        int i12;
        int i13 = this.f10102a;
        HashMap map = this.f10103b;
        int i14 = this.f10104c;
        int i15 = 0;
        double d = Double.NEGATIVE_INFINITY;
        switch (i13) {
            case 0:
                String str2 = AbstractC1387m.m2421h(new byte[]{89, -114, -66}, new byte[]{-69, 24, 63, Base64.padSymbol, -4, 40, 102, -56}) + Normalizer.normalize(str, Normalizer.Form.NFKC).trim().replaceAll(AbstractC1387m.m2421h(new byte[]{-57, -111, -83}, new byte[]{-101, -30, -122, 20, -83, 103, 85, -96}), " ").replace(' ', (char) 9601);
                int length = str2.length();
                int i16 = length + 1;
                double[] dArr3 = new double[i16];
                int[] iArr = new int[i16];
                int[] iArr2 = new int[i16];
                double d10 = Double.NEGATIVE_INFINITY;
                Arrays.fill(dArr3, Double.NEGATIVE_INFINITY);
                Arrays.fill(iArr, -1);
                dArr3[0] = 0.0d;
                int i17 = 0;
                while (i17 < length) {
                    if (dArr3[i17] == d10) {
                        i10 = i15;
                        dArr = dArr3;
                    } else {
                        int iMin = Math.min(length, i17 + i14);
                        int i18 = i17 + 1;
                        int i19 = i15;
                        while (i18 <= iMin) {
                            C3478n c3478n = (C3478n) map.get(str2.substring(i17, i18));
                            if (c3478n == null) {
                                dArr2 = dArr3;
                            } else {
                                dArr2 = dArr3;
                                double d11 = dArr3[i17] + ((double) c3478n.f10120b);
                                if (d11 > dArr2[i18]) {
                                    dArr2[i18] = d11;
                                    iArr[i18] = i17;
                                    iArr2[i18] = c3478n.f10119a;
                                }
                                i19 = 1;
                            }
                            i18++;
                            dArr3 = dArr2;
                            i15 = i15;
                        }
                        i10 = i15;
                        dArr = dArr3;
                        if (i19 == 0) {
                            int iCharCount = Character.charCount(str2.codePointAt(i17)) + i17;
                            double d12 = dArr[i17] - 100.0d;
                            if (d12 >= dArr[iCharCount]) {
                                dArr[iCharCount] = d12;
                                iArr[iCharCount] = i17;
                                iArr2[iCharCount] = 3;
                            }
                        }
                    }
                    i17++;
                    dArr3 = dArr;
                    i15 = i10;
                    d10 = Double.NEGATIVE_INFINITY;
                }
                int i20 = i15;
                ArrayList arrayList = new ArrayList();
                while (length > 0 && iArr[length] >= 0) {
                    arrayList.add(Integer.valueOf(iArr2[length]));
                    length = iArr[length];
                }
                Collections.reverse(arrayList);
                int iMin2 = Math.min(64, arrayList.size() + 2);
                int[] iArr3 = new int[iMin2];
                iArr3[i20] = i20;
                int i21 = i20;
                int iMax = Math.max(i21, iMin2 - 2);
                while (true) {
                    int i22 = i21;
                    if (i22 >= iMax) {
                        if (iMin2 > 1) {
                            iArr3[iMin2 - 1] = 2;
                        }
                        return iArr3;
                    }
                    i21 = i22 + 1;
                    iArr3[i21] = ((Integer) arrayList.get(i22)).intValue();
                }
                break;
            default:
                String str3 = AbstractC1387m.m2421h(new byte[]{48, 95, -90}, new byte[]{-46, -55, 39, 78, 66, -108, -27, -49}) + Normalizer.normalize(str, Normalizer.Form.NFKC).trim().replaceAll(AbstractC1387m.m2421h(new byte[]{110, -31, 124}, new byte[]{50, -110, 87, 72, 16, 119, 95, -1}), " ").replace(' ', (char) 9601);
                int length2 = str3.length();
                int i23 = length2 + 1;
                double[] dArr4 = new double[i23];
                int[] iArr4 = new int[i23];
                int[] iArr5 = new int[i23];
                Arrays.fill(dArr4, Double.NEGATIVE_INFINITY);
                Arrays.fill(iArr4, -1);
                dArr4[0] = 0.0d;
                int i24 = 0;
                while (i24 < length2) {
                    if (dArr4[i24] == d) {
                        i11 = i24;
                    } else {
                        int iMin3 = Math.min(length2, i24 + i14);
                        int i25 = i24 + 1;
                        boolean z9 = false;
                        while (i25 <= iMin3) {
                            C3496w c3496w = (C3496w) map.get(str3.substring(i24, i25));
                            if (c3496w == null) {
                                i12 = i24;
                            } else {
                                i12 = i24;
                                double d13 = dArr4[i24] + ((double) c3496w.f10245b);
                                if (d13 > dArr4[i25]) {
                                    dArr4[i25] = d13;
                                    iArr4[i25] = i12;
                                    iArr5[i25] = c3496w.f10244a;
                                }
                                z9 = true;
                            }
                            i25++;
                            i24 = i12;
                        }
                        i11 = i24;
                        if (!z9) {
                            int iCharCount2 = Character.charCount(str3.codePointAt(i11)) + i11;
                            double d14 = dArr4[i11] - 100.0d;
                            if (d14 >= dArr4[iCharCount2]) {
                                dArr4[iCharCount2] = d14;
                                iArr4[iCharCount2] = i11;
                                iArr5[iCharCount2] = 3;
                            }
                        }
                    }
                    i24 = i11 + 1;
                    d = Double.NEGATIVE_INFINITY;
                }
                ArrayList arrayList2 = new ArrayList();
                while (length2 > 0 && iArr4[length2] >= 0) {
                    arrayList2.add(Integer.valueOf(iArr5[length2]));
                    length2 = iArr4[length2];
                }
                Collections.reverse(arrayList2);
                int iMin4 = Math.min(64, arrayList2.size() + 2);
                int[] iArr6 = new int[iMin4];
                iArr6[0] = 0;
                int iMax2 = Math.max(0, iMin4 - 2);
                while (i15 < iMax2) {
                    int i26 = i15 + 1;
                    iArr6[i26] = ((Integer) arrayList2.get(i15)).intValue();
                    i15 = i26;
                }
                if (iMin4 > 1) {
                    iArr6[iMin4 - 1] = 2;
                }
                return iArr6;
        }
    }
}
