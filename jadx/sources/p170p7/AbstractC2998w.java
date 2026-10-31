package p170p7;

import java.util.ArrayList;
import java.util.logging.Logger;
import p091i4.AbstractC1744b;
import p113k4.C2046e;
import p157o7.AbstractC2730v4;
import p186r7.C3110b;

/* JADX INFO: renamed from: p7.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2998w {
    static {
        Logger.getLogger(AbstractC2998w.class.getName());
    }

    /* JADX INFO: renamed from: a */
    public static byte[][] m4812a(ArrayList arrayList) {
        int size = arrayList.size() * 2;
        byte[][] bArr = new byte[size][];
        int size2 = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size2) {
            Object obj = arrayList.get(i11);
            i11++;
            C3110b c3110b = (C3110b) obj;
            int i12 = i10 + 1;
            bArr[i10] = c3110b.f8892a.mo3592k();
            i10 += 2;
            bArr[i12] = c3110b.f8893b.mo3592k();
        }
        byte[] bArr2 = AbstractC2730v4.f7843b;
        int i13 = 0;
        while (i13 < size) {
            byte[] bArr3 = bArr[i13];
            int i14 = i13 + 1;
            byte[] bArr4 = bArr[i14];
            if (AbstractC2730v4.m4256a(bArr3, bArr2)) {
                for (byte b10 : bArr4) {
                    if (b10 == 44) {
                        ArrayList arrayList2 = new ArrayList(size + 10);
                        for (int i15 = 0; i15 < i13; i15++) {
                            arrayList2.add(bArr[i15]);
                        }
                        while (i13 < size) {
                            byte[] bArr5 = bArr[i13];
                            byte[] bArr6 = bArr[i13 + 1];
                            if (AbstractC2730v4.m4256a(bArr5, bArr2)) {
                                int i16 = 0;
                                for (int i17 = 0; i17 <= bArr6.length; i17++) {
                                    if (i17 == bArr6.length || bArr6[i17] == 44) {
                                        byte[] bArrM3144a = C2046e.f5600d.m3144a(new String(bArr6, i16, i17 - i16, AbstractC1744b.f4558a));
                                        arrayList2.add(bArr5);
                                        arrayList2.add(bArrM3144a);
                                        i16 = i17 + 1;
                                    }
                                }
                            } else {
                                arrayList2.add(bArr5);
                                arrayList2.add(bArr6);
                            }
                            i13 += 2;
                        }
                        return (byte[][]) arrayList2.toArray(new byte[0][]);
                    }
                }
                bArr[i14] = C2046e.f5600d.m3144a(new String(bArr4, AbstractC1744b.f4558a));
            }
            i13 += 2;
        }
        return bArr;
    }
}
