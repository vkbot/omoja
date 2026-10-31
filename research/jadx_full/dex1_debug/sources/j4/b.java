package j4;

import com.bumptech.glide.manager.s;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3046b;
    public boolean c;
    public Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(n7.c cVar, int i9, boolean z8) {
        this.f3045a = 1;
        o4.b.i(cVar, "callOptions");
        this.d = cVar;
        this.f3046b = i9;
        this.c = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(int i9, int i10) {
        if (i10 < 0) {
            j1.i.e("cannot store more than MAX_VALUE elements");
            return 0;
        }
        int iHighestOneBit = i9 + (i9 >> 1) + 1;
        if (iHighestOneBit < i10) {
            iHighestOneBit = Integer.highestOneBit(i10 - 1) << 1;
        }
        if (iHighestOneBit < 0) {
            return Integer.MAX_VALUE;
        }
        return iHighestOneBit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b c(byte[] bArr) throws IOException {
        b bVar = new b(2);
        j6.a aVar = new j6.a(bArr);
        while (aVar.f3088b < aVar.f3087a.length) {
            long jE = aVar.e();
            if (jE <= 0 || jE > 2147483647L) {
                throw j6.a.a();
            }
            int i9 = (int) jE;
            int i10 = i9 >>> 3;
            int i11 = i9 & 7;
            if (i10 == 1 && i11 == 2) {
                new String(aVar.b(), StandardCharsets.UTF_8);
                bVar.c = true;
            } else if (i10 == 2 && i11 == 0) {
                bVar.f3046b = (int) aVar.e();
                bVar.c = true;
            } else if (i10 == 3 && i11 == 2) {
                byte[] bArrB = aVar.b();
                q0.b bVar2 = new q0.b();
                bVar2.f4758h = e0.m.h(new byte[]{-99, 96, -121, 60, 22, 41, -17, 73, -97, 98, -85, 10, 10, 63}, new byte[]{-6, 16, -12, 99, 101, 76, -99, 63});
                j6.a aVar2 = new j6.a(bArrB);
                while (aVar2.f3088b < aVar2.f3087a.length) {
                    long jE2 = aVar2.e();
                    if (jE2 <= 0 || jE2 > 2147483647L) {
                        throw j6.a.a();
                    }
                    int i12 = (int) jE2;
                    int i13 = i12 >>> 3;
                    int i14 = i12 & 7;
                    if (i13 == 1 && i14 == 0) {
                        bVar2.f4754a = aVar2.e();
                    } else if (i13 == 2 && i14 == 1) {
                        bVar2.f4755b = Double.longBitsToDouble(aVar2.d());
                    } else if (i13 == 3 && i14 == 1) {
                        bVar2.c = Double.longBitsToDouble(aVar2.d());
                    } else if (i13 == 4 && i14 == 1) {
                        bVar2.d = Double.longBitsToDouble(aVar2.d());
                        bVar2.f4759i = true;
                    } else if (i13 == 5 && i14 == 5) {
                        bVar2.e = Float.intBitsToFloat(aVar2.c());
                        bVar2.f4760j = true;
                    } else if (i13 == 6 && i14 == 5) {
                        bVar2.f4756f = Float.intBitsToFloat(aVar2.c());
                        bVar2.f4761k = true;
                    } else if (i13 == 7 && i14 == 5) {
                        bVar2.f4757g = Float.intBitsToFloat(aVar2.c());
                        bVar2.f4762l = true;
                    } else if (i13 == 9 && i14 == 2) {
                        bVar2.f4758h = new String(aVar2.b(), StandardCharsets.UTF_8);
                    } else {
                        aVar2.g(i14);
                    }
                }
                bVar.d = bVar2;
                bVar.c = true;
            } else {
                aVar.g(i11);
            }
        }
        return bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(Object obj) {
        obj.getClass();
        int i9 = this.f3046b + 1;
        Object[] objArr = (Object[]) this.d;
        if (objArr.length < i9) {
            this.d = Arrays.copyOf(objArr, b(objArr.length, i9));
            this.c = false;
        } else if (this.c) {
            this.d = (Object[]) objArr.clone();
            this.c = false;
        }
        Object[] objArr2 = (Object[]) this.d;
        int i10 = this.f3046b;
        this.f3046b = i10 + 1;
        objArr2[i10] = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f3045a) {
            case 1:
                s sVarT = com.bumptech.glide.c.t(this);
                sVarT.c((n7.c) this.d, "callOptions");
                sVarT.e("previousAttempts", String.valueOf(this.f3046b));
                sVarT.d("isTransparentRetry", this.c);
                return sVarT.toString();
            default:
                return super.toString();
        }
    }

    public b(FloatingActionButton floatingActionButton) {
        this.f3045a = 3;
        this.c = false;
        this.f3046b = 0;
        this.d = floatingActionButton;
    }

    public /* synthetic */ b(int i9) {
        this.f3045a = i9;
    }
}
