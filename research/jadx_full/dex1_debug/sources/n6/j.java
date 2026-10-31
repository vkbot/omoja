package n6;

import java.util.ArrayList;
import java.util.EnumMap;
import z5.l;
import z5.m;
import z5.n;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {
    public static final int[] c = {1, 1, 2};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3878b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(int i9) {
        switch (i9) {
            case 1:
                this.f3877a = new ArrayList();
                this.f3878b = new ArrayList();
                break;
            default:
                this.f3877a = new i(1);
                this.f3878b = new i(0);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(String str, int[] iArr) {
        ((ArrayList) this.f3877a).add(iArr);
        ((ArrayList) this.f3878b).add(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m b(int i9, int i10, f6.a aVar) throws z5.i {
        EnumMap enumMap;
        int[] iArrL = k.l(aVar, i10, false, c, new int[3]);
        try {
            return ((i) this.f3878b).a(i9, aVar, iArrL);
        } catch (l unused) {
            i iVar = (i) this.f3877a;
            StringBuilder sb = iVar.f3876b;
            sb.setLength(0);
            int[] iArr = iVar.f3875a;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            int i11 = aVar.c;
            int iF = iArrL[1];
            int i12 = 0;
            for (int i13 = 0; i13 < 2 && iF < i11; i13++) {
                int iH = k.h(aVar, iArr, iF, k.f3880g);
                sb.append((char) ((iH % 10) + 48));
                for (int i14 : iArr) {
                    iF += i14;
                }
                if (iH >= 10) {
                    i12 |= 1 << (1 - i13);
                }
                if (i13 != 1) {
                    iF = aVar.f(aVar.e(iF));
                }
            }
            if (sb.length() != 2) {
                throw z5.i.d;
            }
            if (Integer.parseInt(sb.toString()) % 4 != i12) {
                throw z5.i.d;
            }
            String string = sb.toString();
            if (string.length() != 2) {
                enumMap = null;
            } else {
                enumMap = new EnumMap(n.class);
                enumMap.put(n.e, Integer.valueOf(string));
            }
            float f8 = i9;
            m mVar = new m(string, null, new o[]{new o((iArrL[0] + iArrL[1]) / 2.0f, f8), new o(iF, f8)}, z5.a.r);
            if (enumMap != null) {
                mVar.a(enumMap);
            }
            return mVar;
        }
    }
}
