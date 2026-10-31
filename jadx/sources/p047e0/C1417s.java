package p047e0;

import android.os.Build;

/* JADX INFO: renamed from: e0.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1417s {

    /* JADX INFO: renamed from: a */
    public final boolean f3399a;

    /* JADX INFO: renamed from: b */
    public final boolean f3400b;

    /* JADX INFO: renamed from: c */
    public final int f3401c = Build.VERSION.SDK_INT;

    /* JADX INFO: renamed from: d */
    public final String f3402d = Build.FINGERPRINT;

    /* JADX INFO: renamed from: e */
    public final String f3403e;

    /* JADX INFO: renamed from: f */
    public final String f3404f;

    public C1417s(boolean z9, boolean z10, String str, String str2) {
        this.f3399a = z9;
        this.f3400b = z10;
        this.f3403e = str;
        this.f3404f = str2;
    }

    /* JADX INFO: renamed from: a */
    public final String m2451a() {
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{110, 124, -28, 62, -92, 64}, new byte[]{1, 11, -118, 91, -42, 125, 103, -48}));
        sb.append(this.f3399a);
        sb.append(AbstractC1387m.m2421h(new byte[]{-30, -28, 47, -7, 57, 92, 99, -68, -83, -80, 39, -21, 49, 8}, new byte[]{-50, -60, 78, -99, 84, 53, 13, -3}));
        sb.append(this.f3400b);
        sb.append(AbstractC1387m.m2421h(new byte[]{122, 75, 126, 106, 89, -83}, new byte[]{86, 107, 13, 14, 50, -112, 58, -47}));
        sb.append(this.f3401c);
        sb.append(AbstractC1387m.m2421h(new byte[]{-124, -117, 109, -126, -56, -108, -94, 71, -40, -39, 98, -123, -46, -50}, new byte[]{-88, -85, 11, -21, -90, -13, -57, 53}));
        sb.append(this.f3402d);
        sb.append(AbstractC1387m.m2421h(new byte[]{119, 102, 120, -70, -18, 50, 14, -44, 26, 34, 116, -80, -12, 40, 69}, new byte[]{91, 70, 25, -39, -102, 91, 120, -79}));
        sb.append(this.f3403e);
        String str = this.f3404f;
        sb.append(str == null ? "" : AbstractC1387m.m2421h(new byte[]{-45, -1, 111, -113, -115, -33, 59, -99}, new byte[]{-1, -33, 10, -3, -1, -80, 73, -96}).concat(str));
        return sb.toString();
    }
}
