package p178q6;

import p006a5.C0023h;
import p063f6.C1577a;

/* JADX INFO: renamed from: q6.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3067e extends AbstractC3066d {
    /* JADX INFO: renamed from: d */
    public abstract void mo4901d(StringBuilder sb, int i10);

    /* JADX INFO: renamed from: e */
    public abstract int mo4902e(int i10);

    /* JADX INFO: renamed from: f */
    public final void m4905f(StringBuilder sb, int i10, int i11) {
        int iM63h = C0023h.m63h(i10, i11, (C1577a) ((C0023h) this.f7089c).f81c);
        mo4901d(sb, iM63h);
        int iMo4902e = mo4902e(iM63h);
        int i12 = 100000;
        for (int i13 = 0; i13 < 5; i13++) {
            if (iMo4902e / i12 == 0) {
                sb.append('0');
            }
            i12 /= 10;
        }
        sb.append(iMo4902e);
    }
}
