package p027c2;

import android.content.Context;
import androidx.navigation.C0674b;
import com.bumptech.glide.manager.C1074t;
import java.util.concurrent.Executor;
import p006a5.C0023h;
import p030c5.C0990e;
import p042d5.C1289j;
import p045d8.AbstractC1314b;
import p047e0.C1357g;
import p049e2.C1456d;
import p052e5.InterfaceC1495b;
import p054e8.InterfaceCallableC1502e;
import p059f2.InterfaceC1534b;
import p062f5.C1554i;
import p062f5.C1559k0;
import p062f5.C1567q;
import p062f5.C1570t;
import p072g5.C1619a;
import p082h5.C1666a;
import p085h8.C1685a0;
import p085h8.C1696g;
import p085h8.C1706l;
import p085h8.C1712o;
import p085h8.C1715p0;
import p085h8.C1717q0;
import p085h8.C1721t;
import p100j2.C1953i;
import p111k2.InterfaceC2031c;
import p111k2.InterfaceC2032d;
import p123l2.InterfaceC2199c;
import p126l5.C2209d;
import p126l5.InterfaceC2210e;
import p149n8.C2558c;
import p150n9.InterfaceC2560a;
import p157o7.C2599a;
import p204t8.InterfaceC3268a;
import p242x7.AbstractC3585b;
import p242x7.AbstractC3594k;
import p257z2.C3709e;
import p258z3.C3720f;

/* JADX INFO: renamed from: c2.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0961k implements InterfaceC1495b, InterfaceC1534b {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f871b;

    /* JADX INFO: renamed from: c */
    public Object f872c;

    /* JADX INFO: renamed from: d */
    public Object f873d;

    /* JADX INFO: renamed from: e */
    public Object f874e;

    /* JADX INFO: renamed from: f */
    public Object f875f;

    /* JADX INFO: renamed from: g */
    public Object f876g;

    /* JADX INFO: renamed from: h */
    public Object f877h;

    /* JADX INFO: renamed from: i */
    public Object f878i;

    public /* synthetic */ C0961k(InterfaceC3268a interfaceC3268a, InterfaceC3268a interfaceC3268a2, InterfaceC3268a interfaceC3268a3, InterfaceC3268a interfaceC3268a4, InterfaceC3268a interfaceC3268a5, InterfaceC3268a interfaceC3268a6, InterfaceC3268a interfaceC3268a7, int i10) {
        this.f871b = i10;
        this.f872c = interfaceC3268a;
        this.f873d = interfaceC3268a2;
        this.f874e = interfaceC3268a3;
        this.f875f = interfaceC3268a4;
        this.f876g = interfaceC3268a5;
        this.f877h = interfaceC3268a6;
        this.f878i = interfaceC3268a7;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0145  */
    /* JADX WARN: Code duplicated, block: B:18:0x014d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0150  */
    /* JADX WARN: Code duplicated, block: B:20:0x0157  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p204t8.InterfaceC3268a
    public Object get() throws Exception {
        AbstractC3585b c1696g;
        AbstractC3585b abstractC3585b;
        C1685a0 c1685a0;
        C1567q c1567q;
        AbstractC3585b c1696g2;
        Object objCall;
        switch (this.f871b) {
            case 1:
                C1570t c1570t = (C1570t) ((InterfaceC3268a) this.f872c).get();
                ((C1619a) this.f873d).get();
                ((C0023h) this.f874e).get();
                InterfaceC2210e interfaceC2210e = (InterfaceC2210e) ((C1666a) this.f875f).get();
                ((C1554i) this.f876g).get();
                ((C1619a) this.f877h).get();
                Executor executor = (Executor) ((C1619a) this.f878i).get();
                C1289j c1289j = new C1289j();
                c1289j.f3091a = executor;
                C2599a c2599aM3540c = ((C2209d) interfaceC2210e).m3540c();
                C0674b c0674b = new C0674b(25);
                c2599aM3540c.getClass();
                ((C1074t) c2599aM3540c.f7253c).m1367m(new C3709e(executor, c0674b));
                c2599aM3540c.m4084i();
                C1559k0 c1559k0 = c1570t.f3866f;
                C1715p0 c1715p0 = c1570t.f3861a;
                C1715p0 c1715p1 = c1570t.f3870j.f3792b;
                C1715p0 c1715p2 = c1570t.f3862b;
                int i10 = AbstractC3585b.f10653b;
                AbstractC1314b.m2356a(c1715p0, "source1 is null");
                AbstractC1314b.m2356a(c1715p1, "source2 is null");
                AbstractC1314b.m2356a(c1715p2, "source3 is null");
                int i11 = 1;
                C1706l c1706l = new C1706l(i11, new InterfaceC2560a[]{c1715p0, c1715p1, c1715p2});
                int i12 = AbstractC3585b.f10653b;
                AbstractC1314b.m2357b(3, "maxConcurrency");
                AbstractC1314b.m2357b(i12, "bufferSize");
                if (c1706l instanceof InterfaceCallableC1502e) {
                    Object objCall2 = ((InterfaceCallableC1502e) c1706l).call();
                    if (objCall2 == null) {
                        abstractC3585b = C1721t.f4470c;
                    } else {
                        c1696g = new C1717q0(objCall2, AbstractC1314b.f3133a);
                    }
                    C1712o c1712o = new C1712o(abstractC3585b, new C1357g(12));
                    AbstractC3594k abstractC3594k = c1559k0.f3837a;
                    AbstractC1314b.m2356a(abstractC3594k, "scheduler is null");
                    AbstractC1314b.m2357b(i12, "bufferSize");
                    c1685a0 = new C1685a0(c1712o, abstractC3594k, i12);
                    c1567q = new C1567q(c1570t, i11);
                    AbstractC1314b.m2357b(2, "prefetch");
                    if (c1685a0 instanceof InterfaceCallableC1502e) {
                        objCall = ((InterfaceCallableC1502e) c1685a0).call();
                        if (objCall == null) {
                            c1696g2 = C1721t.f4470c;
                        } else {
                            c1696g2 = new C1717q0(objCall, c1567q);
                        }
                    } else {
                        c1696g2 = new C1696g(c1685a0, c1567q);
                    }
                    AbstractC3594k abstractC3594k2 = c1559k0.f3838b;
                    AbstractC1314b.m2356a(abstractC3594k2, "scheduler is null");
                    AbstractC1314b.m2357b(i12, "bufferSize");
                    new C1685a0(c1696g2, abstractC3594k2, i12).m5714d(new C2558c(new C0674b(c1289j)));
                    return c1289j;
                }
                c1696g = new C1696g(c1706l, i12);
                abstractC3585b = c1696g;
                C1712o c1712o2 = new C1712o(abstractC3585b, new C1357g(12));
                AbstractC3594k abstractC3594k3 = c1559k0.f3837a;
                AbstractC1314b.m2356a(abstractC3594k3, "scheduler is null");
                AbstractC1314b.m2357b(i12, "bufferSize");
                c1685a0 = new C1685a0(c1712o2, abstractC3594k3, i12);
                c1567q = new C1567q(c1570t, i11);
                AbstractC1314b.m2357b(2, "prefetch");
                if (c1685a0 instanceof InterfaceCallableC1502e) {
                    objCall = ((InterfaceCallableC1502e) c1685a0).call();
                    if (objCall == null) {
                        c1696g2 = C1721t.f4470c;
                    } else {
                        c1696g2 = new C1717q0(objCall, c1567q);
                    }
                } else {
                    c1696g2 = new C1696g(c1685a0, c1567q);
                }
                AbstractC3594k abstractC3594k4 = c1559k0.f3838b;
                AbstractC1314b.m2356a(abstractC3594k4, "scheduler is null");
                AbstractC1314b.m2357b(i12, "bufferSize");
                new C1685a0(c1696g2, abstractC3594k4, i12).m5714d(new C2558c(new C0674b(c1289j)));
                return c1289j;
            default:
                return new C1953i((Context) ((InterfaceC3268a) this.f872c).get(), (C1456d) ((InterfaceC3268a) this.f873d).get(), (InterfaceC2032d) ((InterfaceC3268a) this.f874e).get(), (C0023h) ((C0023h) this.f875f).get(), (Executor) ((InterfaceC3268a) this.f876g).get(), (InterfaceC2199c) ((InterfaceC3268a) this.f877h).get(), new C0990e(15), new C3720f(14), (InterfaceC2031c) ((InterfaceC3268a) this.f878i).get());
        }
    }

    public /* synthetic */ C0961k(int i10) {
        this.f871b = i10;
    }
}
