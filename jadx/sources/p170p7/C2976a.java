package p170p7;

import p130l9.C2242l;
import p157o7.AbstractRunnableC2618d0;
import p232w7.AbstractC3536b;
import p232w7.C3535a;

/* JADX INFO: renamed from: p7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2976a extends AbstractRunnableC2618d0 {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f8284d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2978c f8285e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2976a(C2978c c2978c, int i10) {
        super(1, c2978c);
        this.f8284d = i10;
        switch (i10) {
            case 1:
                this.f8285e = c2978c;
                super(1, c2978c);
                AbstractC3536b.m5641b();
                break;
            default:
                this.f8285e = c2978c;
                AbstractC3536b.m5641b();
                break;
        }
    }

    @Override // p157o7.AbstractRunnableC2618d0
    /* JADX INFO: renamed from: a */
    public final void mo4132a() {
        C2978c c2978c;
        int i10;
        C2978c c2978c2;
        switch (this.f8284d) {
            case 0:
                C2242l c2242l = new C2242l();
                AbstractC3536b.m5642c();
                try {
                    C3535a c3535a = AbstractC3536b.f10507a;
                    c3535a.getClass();
                    synchronized (this.f8285e.f8288b) {
                        C2242l c2242l2 = this.f8285e.f8289c;
                        c2242l.write(c2242l2, c2242l2.m3633y());
                        c2978c = this.f8285e;
                        c2978c.f8293g = false;
                        i10 = c2978c.f8300n;
                        break;
                    }
                    c2978c.f8296j.write(c2242l, c2242l.f5878c);
                    synchronized (this.f8285e.f8288b) {
                        this.f8285e.f8300n -= i10;
                        break;
                    }
                    c3535a.getClass();
                    return;
                } catch (Throwable th) {
                    try {
                        AbstractC3536b.f10507a.getClass();
                        break;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            default:
                C2242l c2242l3 = new C2242l();
                AbstractC3536b.m5642c();
                try {
                    C3535a c3535a2 = AbstractC3536b.f10507a;
                    c3535a2.getClass();
                    synchronized (this.f8285e.f8288b) {
                        C2242l c2242l4 = this.f8285e.f8289c;
                        c2242l3.write(c2242l4, c2242l4.f5878c);
                        c2978c2 = this.f8285e;
                        c2978c2.f8294h = false;
                        break;
                    }
                    c2978c2.f8296j.write(c2242l3, c2242l3.f5878c);
                    this.f8285e.f8296j.flush();
                    c3535a2.getClass();
                    return;
                } catch (Throwable th3) {
                    try {
                        AbstractC3536b.f10507a.getClass();
                        break;
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
        }
    }
}
