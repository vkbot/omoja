package p157o7;

import p108k.AbstractC2013a;
import p148n7.InterfaceC2554z;
import p170p7.C2989n;

/* JADX INFO: renamed from: o7.e1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2625e1 extends AbstractC2013a {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f7364c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ InterfaceC2554z f7365d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2625e1(InterfaceC2554z interfaceC2554z, int i10) {
        super(2);
        this.f7364c = i10;
        this.f7365d = interfaceC2554z;
    }

    @Override // p108k.AbstractC2013a
    /* JADX INFO: renamed from: a */
    public final void mo3095a() {
        switch (this.f7364c) {
            case 0:
                C2661k1 c2661k1 = (C2661k1) this.f7365d;
                ((C2626e2) c2661k1.f7571d.f7860d).f7375m.f7421Y.m3098d(c2661k1, true);
                break;
            case 1:
                ((C2632f2) this.f7365d).m4139h();
                break;
            default:
                ((C2989n) this.f7365d).f8394h.m1364j(true);
                break;
        }
    }

    @Override // p108k.AbstractC2013a
    /* JADX INFO: renamed from: b */
    public final void mo3096b() {
        switch (this.f7364c) {
            case 0:
                C2661k1 c2661k1 = (C2661k1) this.f7365d;
                ((C2626e2) c2661k1.f7571d.f7860d).f7375m.f7421Y.m3098d(c2661k1, false);
                break;
            case 1:
                C2632f2 c2632f2 = (C2632f2) this.f7365d;
                if (!c2632f2.f7403G.get()) {
                    c2632f2.m4140j();
                    break;
                }
                break;
            default:
                ((C2989n) this.f7365d).f8394h.m1364j(false);
                break;
        }
    }
}
