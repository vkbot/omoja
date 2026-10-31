package p178q6;

import p063f6.C1577a;
import p260z5.C3753i;

/* JADX INFO: renamed from: q6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3063a extends AbstractC3067e {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f8686d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3063a(C1577a c1577a, int i10) {
        super(c1577a);
        this.f8686d = i10;
    }

    @Override // p151o.AbstractC2563b
    /* JADX INFO: renamed from: a */
    public final String mo3997a() throws C3753i {
        if (((C1577a) this.f7088b).f3899c != 60) {
            throw C3753i.f11192d;
        }
        StringBuilder sb = new StringBuilder();
        m4903b(sb, 5);
        m4905f(sb, 45, 15);
        return sb.toString();
    }

    @Override // p178q6.AbstractC3067e
    /* JADX INFO: renamed from: d */
    public final void mo4901d(StringBuilder sb, int i10) {
        switch (this.f8686d) {
            case 0:
                sb.append("(3103)");
                break;
            default:
                if (i10 >= 10000) {
                    sb.append("(3203)");
                } else {
                    sb.append("(3202)");
                }
                break;
        }
    }

    @Override // p178q6.AbstractC3067e
    /* JADX INFO: renamed from: e */
    public final int mo4902e(int i10) {
        switch (this.f8686d) {
            case 0:
                return i10;
            default:
                return i10 < 10000 ? i10 : i10 - 10000;
        }
    }
}
