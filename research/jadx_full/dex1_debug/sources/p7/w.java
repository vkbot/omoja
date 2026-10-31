package p7;

import java.util.ArrayList;
import java.util.logging.Logger;
import o7.v4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class w {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Logger.getLogger(w.class.getName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[][] a(ArrayList arrayList) {
        int size = arrayList.size() * 2;
        byte[][] bArr = new byte[size][];
        int size2 = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        while (i10 < size2) {
            Object obj = arrayList.get(i10);
            i10++;
            r7.b bVar = (r7.b) obj;
            int i11 = i9 + 1;
            bArr[i9] = bVar.f5006a.k();
            i9 += 2;
            bArr[i11] = bVar.f5007b.k();
        }
        byte[] bArr2 = v4.f4486b;
        int i12 = 0;
        while (i12 < size) {
            byte[] bArr3 = bArr[i12];
            int i13 = i12 + 1;
            byte[] bArr4 = bArr[i13];
            if (v4.a(bArr3, bArr2)) {
                for (byte b9 : bArr4) {
                    if (b9 == 44) {
                        ArrayList arrayList2 = new ArrayList(size + 10);
                        for (int i14 = 0; i14 < i12; i14++) {
                            arrayList2.add(bArr[i14]);
                        }
                        while (i12 < size) {
                            byte[] bArr5 = bArr[i12];
                            byte[] bArr6 = bArr[i12 + 1];
                            if (v4.a(bArr5, bArr2)) {
                                int i15 = 0;
                                for (int i16 = 0; i16 <= bArr6.length; i16++) {
                                    if (i16 == bArr6.length || bArr6[i16] == 44) {
                                        byte[] bArrA = k4.e.d.a(new String(bArr6, i15, i16 - i15, i4.b.f2657a));
                                        arrayList2.add(bArr5);
                                        arrayList2.add(bArrA);
                                        i15 = i16 + 1;
                                    }
                                }
                            } else {
                                arrayList2.add(bArr5);
                                arrayList2.add(bArr6);
                            }
                            i12 += 2;
                        }
                        return (byte[][]) arrayList2.toArray(new byte[0][]);
                    }
                }
                bArr[i13] = k4.e.d.a(new String(bArr4, i4.b.f2657a));
            }
            i12 += 2;
        }
        return bArr;
    }
}
