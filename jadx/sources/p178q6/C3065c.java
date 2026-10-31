package p178q6;

import p006a5.C0023h;
import p063f6.C1577a;
import p260z5.C3753i;

/* JADX INFO: renamed from: q6.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3065c extends AbstractC3067e {

    /* JADX INFO: renamed from: d */
    public final String f8688d;

    /* JADX INFO: renamed from: e */
    public final String f8689e;

    public C3065c(C1577a c1577a, String str, String str2) {
        super(c1577a);
        this.f8688d = str2;
        this.f8689e = str;
    }

    @Override // p151o.AbstractC2563b
    /* JADX INFO: renamed from: a */
    public final String mo3997a() throws C3753i {
        if (((C1577a) this.f7088b).f3899c != 84) {
            throw C3753i.f11192d;
        }
        StringBuilder sb = new StringBuilder();
        m4903b(sb, 8);
        m4905f(sb, 48, 20);
        int iM63h = C0023h.m63h(68, 16, (C1577a) ((C0023h) this.f7089c).f81c);
        if (iM63h != 38400) {
            sb.append('(');
            sb.append(this.f8688d);
            sb.append(')');
            int i10 = iM63h % 32;
            int i11 = iM63h / 32;
            int i12 = (i11 % 12) + 1;
            int i13 = i11 / 12;
            if (i13 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i13);
            if (i12 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i12);
            if (i10 / 10 == 0) {
                sb.append('0');
            }
            sb.append(i10);
        }
        return sb.toString();
    }

    @Override // p178q6.AbstractC3067e
    /* JADX INFO: renamed from: d */
    public final void mo4901d(StringBuilder sb, int i10) {
        sb.append('(');
        sb.append(this.f8689e);
        sb.append(i10 / 100000);
        sb.append(')');
    }

    @Override // p178q6.AbstractC3067e
    /* JADX INFO: renamed from: e */
    public final int mo4902e(int i10) {
        return i10 % 100000;
    }
}
