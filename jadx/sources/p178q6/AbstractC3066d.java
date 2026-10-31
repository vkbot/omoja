package p178q6;

import p006a5.C0023h;
import p063f6.C1577a;
import p151o.AbstractC2563b;

/* JADX INFO: renamed from: q6.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3066d extends AbstractC2563b {
    /* JADX INFO: renamed from: b */
    public final void m4903b(StringBuilder sb, int i10) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        m4904c(sb, i10, length);
    }

    /* JADX INFO: renamed from: c */
    public final void m4904c(StringBuilder sb, int i10, int i11) {
        for (int i12 = 0; i12 < 4; i12++) {
            int iM63h = C0023h.m63h((i12 * 10) + i10, 10, (C1577a) ((C0023h) this.f7089c).f81c);
            if (iM63h / 100 == 0) {
                sb.append('0');
            }
            if (iM63h / 10 == 0) {
                sb.append('0');
            }
            sb.append(iM63h);
        }
        int i13 = 0;
        for (int i14 = 0; i14 < 13; i14++) {
            int iCharAt = sb.charAt(i14 + i11) - '0';
            if ((i14 & 1) == 0) {
                iCharAt *= 3;
            }
            i13 += iCharAt;
        }
        int i15 = 10 - (i13 % 10);
        sb.append(i15 != 10 ? i15 : 0);
    }
}
