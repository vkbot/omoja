package p132m0;

import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: m0.j1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2309j1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6168b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2314k1 f6169c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ String f6170d;

    public /* synthetic */ RunnableC2309j1(C2314k1 c2314k1, String str, int i10) {
        this.f6168b = i10;
        this.f6169c = c2314k1;
        this.f6170d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f6168b;
        String str = this.f6170d;
        C2314k1 c2314k1 = this.f6169c;
        switch (i10) {
            case 0:
                if (!c2314k1.m3700a()) {
                    C1652b.m2734a().m2755j().m1639sv(AbstractC1387m.m2421h(new byte[]{-56, 53, 68, 94, 117, -5, -52, 38, -53, 52, 74}, new byte[]{-94, 90, 45, 48, 56, -98, -87, 82}), str);
                    break;
                }
                break;
            case 1:
                c2314k1.f6186a.f6211c.getUrl();
                if (!c2314k1.m3700a()) {
                    C1652b.m2734a().m2755j().m1639sv(AbstractC1387m.m2421h(new byte[]{21, -43, 28, -116, -48, 102, -95, -67, 15, -36, 23}, new byte[]{102, -80, 114, -24, ByteCompanionObject.MIN_VALUE, 20, -50, -37}), str);
                    break;
                }
                break;
            case 2:
                if (!c2314k1.m3700a()) {
                    C1652b.m2734a().m2755j().m1639sv(AbstractC1387m.m2421h(new byte[]{-80, 2, -125, 53, -17, -12, -60, 20, -74, 4, -113, 58, -4}, new byte[]{-45, 112, -26, 84, -101, -111, -119, 113}), str);
                    break;
                }
                break;
            default:
                c2314k1.f6186a.f6211c.evaluateJavascript(AbstractC1387m.m2421h(new byte[]{32, -73, -23, 22, -101, 58, -109, -77, 63, -73, -75, 97}, new byte[]{83, -46, -99, 70, -23, 85, -11, -38}) + str.replace(AbstractC1387m.m2421h(new byte[]{-112}, new byte[]{-52, -95, -23, -107, -89, -12, 83, -86}), AbstractC1387m.m2421h(new byte[]{112, 23}, new byte[]{44, 75, -45, -7, 18, -111, -101, 76})).replace(AbstractC1387m.m2421h(new byte[]{3}, new byte[]{36, 0, 119, -56, 45, -25, -18, 14}), AbstractC1387m.m2421h(new byte[]{-121, 118}, new byte[]{-37, 81, 39, 79, -64, -15, 121, 3})).replace("\n", "").replace("\r", "") + AbstractC1387m.m2421h(new byte[]{96, -21}, new byte[]{71, -62, 56, 30, 72, 83, -31, 28}), null);
                break;
        }
    }
}
