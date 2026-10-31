package m0;

import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3481b;
    public final /* synthetic */ k1 c;
    public final /* synthetic */ String d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j1(k1 k1Var, String str, int i9) {
        this.f3481b = i9;
        this.c = k1Var;
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f3481b;
        String str = this.d;
        k1 k1Var = this.c;
        switch (i9) {
            case 0:
                if (!k1Var.a()) {
                    h0.b.a().j().sv(e0.m.h(new byte[]{-56, 53, 68, 94, 117, -5, -52, 38, -53, 52, 74}, new byte[]{-94, 90, 45, 48, 56, -98, -87, 82}), str);
                    break;
                }
                break;
            case 1:
                k1Var.f3491a.c.getUrl();
                if (!k1Var.a()) {
                    h0.b.a().j().sv(e0.m.h(new byte[]{21, -43, 28, -116, -48, 102, -95, -67, 15, -36, 23}, new byte[]{102, -80, 114, -24, ByteCompanionObject.MIN_VALUE, 20, -50, -37}), str);
                    break;
                }
                break;
            case 2:
                if (!k1Var.a()) {
                    h0.b.a().j().sv(e0.m.h(new byte[]{-80, 2, -125, 53, -17, -12, -60, 20, -74, 4, -113, 58, -4}, new byte[]{-45, 112, -26, 84, -101, -111, -119, 113}), str);
                    break;
                }
                break;
            default:
                k1Var.f3491a.c.evaluateJavascript(e0.m.h(new byte[]{32, -73, -23, 22, -101, 58, -109, -77, 63, -73, -75, 97}, new byte[]{83, -46, -99, 70, -23, 85, -11, -38}) + str.replace(e0.m.h(new byte[]{-112}, new byte[]{-52, -95, -23, -107, -89, -12, 83, -86}), e0.m.h(new byte[]{112, 23}, new byte[]{44, 75, -45, -7, 18, -111, -101, 76})).replace(e0.m.h(new byte[]{3}, new byte[]{36, 0, 119, -56, 45, -25, -18, 14}), e0.m.h(new byte[]{-121, 118}, new byte[]{-37, 81, 39, 79, -64, -15, 121, 3})).replace("\n", "").replace("\r", "") + e0.m.h(new byte[]{96, -21}, new byte[]{71, -62, 56, 30, 72, 83, -31, 28}), null);
                break;
        }
    }
}
