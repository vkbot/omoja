package p178q6;

import ai.onnxruntime.AbstractC0074a;
import p006a5.C0023h;
import p063f6.C1577a;
import p260z5.C3753i;

/* JADX INFO: renamed from: q6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3064b extends AbstractC3066d {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f8687d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3064b(C1577a c1577a, int i10) {
        super(c1577a);
        this.f8687d = i10;
    }

    @Override // p151o.AbstractC2563b
    /* JADX INFO: renamed from: a */
    public final String mo3997a() throws C3753i {
        switch (this.f8687d) {
            case 0:
                C0023h c0023h = (C0023h) this.f7089c;
                if (((C1577a) this.f7088b).f3899c < 48) {
                    throw C3753i.f11192d;
                }
                StringBuilder sb = new StringBuilder();
                m4903b(sb, 8);
                int iM63h = C0023h.m63h(48, 2, (C1577a) c0023h.f81c);
                sb.append("(392");
                sb.append(iM63h);
                sb.append(')');
                sb.append(c0023h.m72f(50, null).f8691b);
                return sb.toString();
            case 1:
                C0023h c0023h2 = (C0023h) this.f7089c;
                if (((C1577a) this.f7088b).f3899c < 48) {
                    throw C3753i.f11192d;
                }
                StringBuilder sb2 = new StringBuilder();
                m4903b(sb2, 8);
                int iM63h2 = C0023h.m63h(48, 2, (C1577a) c0023h2.f81c);
                sb2.append("(393");
                sb2.append(iM63h2);
                sb2.append(')');
                int iM63h3 = C0023h.m63h(50, 10, (C1577a) c0023h2.f81c);
                if (iM63h3 / 100 == 0) {
                    sb2.append('0');
                }
                if (iM63h3 / 10 == 0) {
                    sb2.append('0');
                }
                sb2.append(iM63h3);
                sb2.append(c0023h2.m72f(60, null).f8691b);
                return sb2.toString();
            default:
                StringBuilder sbM170u = AbstractC0074a.m170u("(01)");
                int length = sbM170u.length();
                C0023h c0023h3 = (C0023h) this.f7089c;
                sbM170u.append(C0023h.m63h(4, 4, (C1577a) c0023h3.f81c));
                m4904c(sbM170u, 8, length);
                return c0023h3.m70d(sbM170u, 48);
        }
    }
}
