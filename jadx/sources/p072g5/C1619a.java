package p072g5;

import android.app.Application;
import java.util.concurrent.Executor;
import p000a.AbstractC0000a;
import p020b5.InterfaceC0903b;
import p062f5.C1540b;
import p062f5.C1541b0;
import p062f5.C1550g;
import p062f5.C1552h;
import p062f5.C1555i0;
import p062f5.C1559k0;
import p062f5.C1565o;
import p062f5.C1573w;
import p062f5.C1576z;
import p085h8.C1715p0;
import p148n7.AbstractC2500d;
import p204t8.InterfaceC3268a;

/* JADX INFO: renamed from: g5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1619a implements InterfaceC3268a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4074b;

    /* JADX INFO: renamed from: c */
    public final C1620b f4075c;

    public /* synthetic */ C1619a(C1620b c1620b, int i10) {
        this.f4074b = i10;
        this.f4075c = c1620b;
    }

    @Override // p204t8.InterfaceC3268a
    public final Object get() {
        switch (this.f4074b) {
            case 0:
                C1541b0 c1541b0 = (C1541b0) this.f4075c.f4085j.get();
                AbstractC0000a.m4d(c1541b0);
                return c1541b0;
            case 1:
                C1540b c1540b = (C1540b) this.f4075c.f4086k.get();
                AbstractC0000a.m4d(c1540b);
                return c1540b;
            case 2:
                C1715p0 c1715p0 = (C1715p0) this.f4075c.f4082g.get();
                AbstractC0000a.m4d(c1715p0);
                return c1715p0;
            case 3:
                Application application = (Application) this.f4075c.f4076a.get();
                AbstractC0000a.m4d(application);
                return application;
            case 4:
                Executor executor = (Executor) this.f4075c.f4094s.get();
                AbstractC0000a.m4d(executor);
                return executor;
            case 5:
                C1550g c1550g = (C1550g) this.f4075c.f4089n.get();
                AbstractC0000a.m4d(c1550g);
                return c1550g;
            case 6:
                C1552h c1552h = (C1552h) this.f4075c.f4092q.get();
                AbstractC0000a.m4d(c1552h);
                return c1552h;
            case 7:
                InterfaceC0903b interfaceC0903b = (InterfaceC0903b) this.f4075c.f4087l.get();
                AbstractC0000a.m4d(interfaceC0903b);
                return interfaceC0903b;
            case 8:
                AbstractC2500d abstractC2500d = (AbstractC2500d) this.f4075c.f4078c.get();
                AbstractC0000a.m4d(abstractC2500d);
                return abstractC2500d;
            case 9:
                C1565o c1565o = (C1565o) this.f4075c.f4090o.get();
                AbstractC0000a.m4d(c1565o);
                return c1565o;
            case 10:
                Executor executor2 = (Executor) this.f4075c.f4093r.get();
                AbstractC0000a.m4d(executor2);
                return executor2;
            case 11:
                C1715p0 c1715p1 = (C1715p0) this.f4075c.f4083h.get();
                AbstractC0000a.m4d(c1715p1);
                return c1715p1;
            case 12:
                C1573w c1573w = (C1573w) this.f4075c.f4084i.get();
                AbstractC0000a.m4d(c1573w);
                return c1573w;
            case 13:
                C1576z c1576z = (C1576z) this.f4075c.f4077b.get();
                AbstractC0000a.m4d(c1576z);
                return c1576z;
            case 14:
                C1555i0 c1555i0 = (C1555i0) this.f4075c.f4091p.get();
                AbstractC0000a.m4d(c1555i0);
                return c1555i0;
            default:
                C1559k0 c1559k0 = (C1559k0) this.f4075c.f4081f.get();
                AbstractC0000a.m4d(c1559k0);
                return c1559k0;
        }
    }
}
