package p132m0;

import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: m0.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2273c0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5950b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2283e0 f5951c;

    public /* synthetic */ RunnableC2273c0(C2283e0 c2283e0, int i10) {
        this.f5950b = i10;
        this.f5951c = c2283e0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f5950b;
        C2283e0 c2283e0 = this.f5951c;
        switch (i10) {
            case 0:
                if (c2283e0.getView() != null) {
                    String strM2421h = AbstractC1387m.m2421h(new byte[]{99, 67, -62, 0, -60, 91, -39, 18, 103, 87, -40}, new byte[]{19, 34, -85, 114, -101, 40, -83, 115});
                    String str = C2283e0.f6014A;
                    boolean zM3673B = c2283e0.m3673B(strM2421h, false);
                    int i11 = c2283e0.f6032r + 1;
                    c2283e0.f6032r = i11;
                    if (zM3673B && i11 < 50) {
                        c2283e0.f6029o.postDelayed(this, 1500L);
                        break;
                    }
                }
                break;
            default:
                if (c2283e0.getView() != null) {
                    String str2 = C2283e0.f6014A;
                    c2283e0.m3681y();
                    c2283e0.f6029o.postDelayed(this, 1000L);
                    break;
                }
                break;
        }
    }
}
