package w0;

import java.text.Normalizer;
import java.text.Normalizer$Form;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f5711b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ m(HashMap map, int i9, int i10) {
        this.f5710a = i10;
        this.f5711b = map;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int[] a(String str) {
        int i9;
        double[] dArr;
        double[] dArr2;
        int i10;
        int i11;
        int i12 = this.f5710a;
        HashMap map = this.f5711b;
        int i13 = this.c;
        int i14 = 0;
        double d = Double.NEGATIVE_INFINITY;
        switch (i12) {
            case 0:
                String str2 = e0.m.h(new byte[]{89, -114, -66}, new byte[]{-69, 24, 63, Base64.padSymbol, -4, 40, 102, -56}) + Normalizer.normalize(str, Normalizer$Form.NFKC).trim().replaceAll(e0.m.h(new byte[]{-57, -111, -83}, new byte[]{-101, -30, -122, 20, -83, 103, 85, -96}), " ").replace(' ', (char) 9601);
                int length = str2.length();
                int i15 = length + 1;
                double[] dArr3 = new double[i15];
                int[] iArr = new int[i15];
                int[] iArr2 = new int[i15];
                double d9 = Double.NEGATIVE_INFINITY;
                Arrays.fill(dArr3, Double.NEGATIVE_INFINITY);
                Arrays.fill(iArr, -1);
                dArr3[0] = 0.0d;
                int i16 = 0;
                while (i16 < length) {
                    if (dArr3[i16] == d9) {
                        i9 = i14;
                        dArr = dArr3;
                    } else {
                        int iMin = Math.min(length, i16 + i13);
                        int i17 = i16 + 1;
                        int i18 = i14;
                        while (i17 <= iMin) {
                            n nVar = (n) map.get(str2.substring(i16, i17));
                            if (nVar == null) {
                                dArr2 = dArr3;
                            } else {
                                dArr2 = dArr3;
                                double d10 = dArr3[i16] + ((double) nVar.f5724b);
                                if (d10 > dArr2[i17]) {
                                    dArr2[i17] = d10;
                                    iArr[i17] = i16;
                                    iArr2[i17] = nVar.f5723a;
                                }
                                i18 = 1;
                            }
                            i17++;
                            dArr3 = dArr2;
                            i14 = i14;
                        }
                        i9 = i14;
                        dArr = dArr3;
                        if (i18 == 0) {
                            int iCharCount = Character.charCount(str2.codePointAt(i16)) + i16;
                            double d11 = dArr[i16] - 100.0d;
                            if (d11 >= dArr[iCharCount]) {
                                dArr[iCharCount] = d11;
                                iArr[iCharCount] = i16;
                                iArr2[iCharCount] = 3;
                            }
                        }
                    }
                    i16++;
                    dArr3 = dArr;
                    i14 = i9;
                    d9 = Double.NEGATIVE_INFINITY;
                }
                int i19 = i14;
                ArrayList arrayList = new ArrayList();
                while (length > 0 && iArr[length] >= 0) {
                    arrayList.add(Integer.valueOf(iArr2[length]));
                    length = iArr[length];
                }
                Collections.reverse(arrayList);
                int iMin2 = Math.min(64, arrayList.size() + 2);
                int[] iArr3 = new int[iMin2];
                iArr3[i19] = i19;
                int i20 = i19;
                int iMax = Math.max(i20, iMin2 - 2);
                while (true) {
                    int i21 = i20;
                    if (i21 >= iMax) {
                        if (iMin2 > 1) {
                            iArr3[iMin2 - 1] = 2;
                        }
                        return iArr3;
                    }
                    i20 = i21 + 1;
                    iArr3[i20] = ((Integer) arrayList.get(i21)).intValue();
                }
                break;
            default:
                String str3 = e0.m.h(new byte[]{48, 95, -90}, new byte[]{-46, -55, 39, 78, 66, -108, -27, -49}) + Normalizer.normalize(str, Normalizer$Form.NFKC).trim().replaceAll(e0.m.h(new byte[]{110, -31, 124}, new byte[]{50, -110, 87, 72, 16, 119, 95, -1}), " ").replace(' ', (char) 9601);
                int length2 = str3.length();
                int i22 = length2 + 1;
                double[] dArr4 = new double[i22];
                int[] iArr4 = new int[i22];
                int[] iArr5 = new int[i22];
                Arrays.fill(dArr4, Double.NEGATIVE_INFINITY);
                Arrays.fill(iArr4, -1);
                dArr4[0] = 0.0d;
                int i23 = 0;
                while (i23 < length2) {
                    if (dArr4[i23] == d) {
                        i10 = i23;
                    } else {
                        int iMin3 = Math.min(length2, i23 + i13);
                        int i24 = i23 + 1;
                        boolean z8 = false;
                        while (i24 <= iMin3) {
                            w wVar = (w) map.get(str3.substring(i23, i24));
                            if (wVar == null) {
                                i11 = i23;
                            } else {
                                i11 = i23;
                                double d12 = dArr4[i23] + ((double) wVar.f5789b);
                                if (d12 > dArr4[i24]) {
                                    dArr4[i24] = d12;
                                    iArr4[i24] = i11;
                                    iArr5[i24] = wVar.f5788a;
                                }
                                z8 = true;
                            }
                            i24++;
                            i23 = i11;
                        }
                        i10 = i23;
                        if (!z8) {
                            int iCharCount2 = Character.charCount(str3.codePointAt(i10)) + i10;
                            double d13 = dArr4[i10] - 100.0d;
                            if (d13 >= dArr4[iCharCount2]) {
                                dArr4[iCharCount2] = d13;
                                iArr4[iCharCount2] = i10;
                                iArr5[iCharCount2] = 3;
                            }
                        }
                    }
                    i23 = i10 + 1;
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
                while (i14 < iMax2) {
                    int i25 = i14 + 1;
                    iArr6[i25] = ((Integer) arrayList2.get(i14)).intValue();
                    i14 = i25;
                }
                if (iMin4 > 1) {
                    iArr6[iMin4 - 1] = 2;
                }
                return iArr6;
        }
    }
}
