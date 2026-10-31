package p102j4;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import p047e0.AbstractC1387m;
import p099j1.C1929i;
import p104j6.C1992a;
import p148n7.C2497c;
import p155o4.AbstractC2587b;
import p173q0.C3038b;

/* JADX INFO: renamed from: j4.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1963b {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f5344a;

    /* JADX INFO: renamed from: b */
    public int f5345b;

    /* JADX INFO: renamed from: c */
    public boolean f5346c;

    /* JADX INFO: renamed from: d */
    public Object f5347d;

    public C1963b(C2497c c2497c, int i10, boolean z9) {
        this.f5344a = 1;
        AbstractC2587b.m4042i(c2497c, "callOptions");
        this.f5347d = c2497c;
        this.f5345b = i10;
        this.f5346c = z9;
    }

    /* JADX INFO: renamed from: b */
    public static int m3063b(int i10, int i11) {
        if (i11 < 0) {
            C1929i.m3023e("cannot store more than MAX_VALUE elements");
            return 0;
        }
        int iHighestOneBit = i10 + (i10 >> 1) + 1;
        if (iHighestOneBit < i11) {
            iHighestOneBit = Integer.highestOneBit(i11 - 1) << 1;
        }
        if (iHighestOneBit < 0) {
            return Integer.MAX_VALUE;
        }
        return iHighestOneBit;
    }

    /* JADX INFO: renamed from: c */
    public static C1963b m3064c(byte[] bArr) throws IOException {
        C1963b c1963b = new C1963b(2);
        C1992a c1992a = new C1992a(bArr);
        while (c1992a.f5421b < c1992a.f5420a.length) {
            long jM3078e = c1992a.m3078e();
            if (jM3078e <= 0 || jM3078e > 2147483647L) {
                throw C1992a.m3074a();
            }
            int i10 = (int) jM3078e;
            int i11 = i10 >>> 3;
            int i12 = i10 & 7;
            if (i11 == 1 && i12 == 2) {
                new String(c1992a.m3075b(), StandardCharsets.UTF_8);
                c1963b.f5346c = true;
            } else if (i11 == 2 && i12 == 0) {
                c1963b.f5345b = (int) c1992a.m3078e();
                c1963b.f5346c = true;
            } else if (i11 == 3 && i12 == 2) {
                byte[] bArrM3075b = c1992a.m3075b();
                C3038b c3038b = new C3038b();
                c3038b.f8529h = AbstractC1387m.m2421h(new byte[]{-99, 96, -121, 60, 22, 41, -17, 73, -97, 98, -85, 10, 10, 63}, new byte[]{-6, 16, -12, 99, 101, 76, -99, 63});
                C1992a c1992a2 = new C1992a(bArrM3075b);
                while (c1992a2.f5421b < c1992a2.f5420a.length) {
                    long jM3078e2 = c1992a2.m3078e();
                    if (jM3078e2 <= 0 || jM3078e2 > 2147483647L) {
                        throw C1992a.m3074a();
                    }
                    int i13 = (int) jM3078e2;
                    int i14 = i13 >>> 3;
                    int i15 = i13 & 7;
                    if (i14 == 1 && i15 == 0) {
                        c3038b.f8522a = c1992a2.m3078e();
                    } else if (i14 == 2 && i15 == 1) {
                        c3038b.f8523b = Double.longBitsToDouble(c1992a2.m3077d());
                    } else if (i14 == 3 && i15 == 1) {
                        c3038b.f8524c = Double.longBitsToDouble(c1992a2.m3077d());
                    } else if (i14 == 4 && i15 == 1) {
                        c3038b.f8525d = Double.longBitsToDouble(c1992a2.m3077d());
                        c3038b.f8530i = true;
                    } else if (i14 == 5 && i15 == 5) {
                        c3038b.f8526e = Float.intBitsToFloat(c1992a2.m3076c());
                        c3038b.f8531j = true;
                    } else if (i14 == 6 && i15 == 5) {
                        c3038b.f8527f = Float.intBitsToFloat(c1992a2.m3076c());
                        c3038b.f8532k = true;
                    } else if (i14 == 7 && i15 == 5) {
                        c3038b.f8528g = Float.intBitsToFloat(c1992a2.m3076c());
                        c3038b.f8533l = true;
                    } else if (i14 == 9 && i15 == 2) {
                        c3038b.f8529h = new String(c1992a2.m3075b(), StandardCharsets.UTF_8);
                    } else {
                        c1992a2.m3080g(i15);
                    }
                }
                c1963b.f5347d = c3038b;
                c1963b.f5346c = true;
            } else {
                c1992a.m3080g(i12);
            }
        }
        return c1963b;
    }

    /* JADX INFO: renamed from: a */
    public void m3065a(Object obj) {
        obj.getClass();
        int i10 = this.f5345b + 1;
        Object[] objArr = (Object[]) this.f5347d;
        if (objArr.length < i10) {
            this.f5347d = Arrays.copyOf(objArr, m3063b(objArr.length, i10));
            this.f5346c = false;
        } else if (this.f5346c) {
            this.f5347d = (Object[]) objArr.clone();
            this.f5346c = false;
        }
        Object[] objArr2 = (Object[]) this.f5347d;
        int i11 = this.f5345b;
        this.f5345b = i11 + 1;
        objArr2[i11] = obj;
    }

    public String toString() {
        switch (this.f5344a) {
            case 1:
                C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
                c1073sM1263t.m1347c((C2497c) this.f5347d, "callOptions");
                c1073sM1263t.m1349e("previousAttempts", String.valueOf(this.f5345b));
                c1073sM1263t.m1348d("isTransparentRetry", this.f5346c);
                return c1073sM1263t.toString();
            default:
                return super.toString();
        }
    }

    public C1963b(FloatingActionButton floatingActionButton) {
        this.f5344a = 3;
        this.f5346c = false;
        this.f5345b = 0;
        this.f5347d = floatingActionButton;
    }

    public /* synthetic */ C1963b(int i10) {
        this.f5344a = i10;
    }
}
